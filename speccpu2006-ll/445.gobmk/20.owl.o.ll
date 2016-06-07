; ModuleID = 'engine/owl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.local_owl_data = type { [400 x i8], [400 x i8], [400 x i8], i32, [400 x %struct.eye_data], [400 x %struct.half_eye_data], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [400 x i8], i32, [400 x i8], i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.owl_move_data = type { i32, i32, i8*, i32, i32, i32 }
%struct.matched_patterns_list_data = type { i32, i32, i32, i32, i32, %struct.matched_pattern_data* }
%struct.matched_pattern_data = type { i32, i32, %struct.pattern* }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }

@board = external global [421 x i8], align 16
@.str = private unnamed_addr constant [13 x i8] c"engine/owl.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"board[apos] == (1+2-(board[bpos]))\00", align 1
@count_variations = external global i32, align 4
@verbose = external global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"owl_analyze_semeai: %1m vs. %1m\0A\00", align 1
@local_owl_node_counter = internal global i32 0, align 4
@stackp = external global i32, align 4
@dragon = external global [400 x %struct.dragon_data], align 16
@result_certain = internal global i32 0, align 4
@worm = external global [400 x %struct.worm_data], align 16
@debug = external global i32, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"owl_attack %1m\0A\00", align 1
@owl_goal_worm = internal global [15 x i32] zeroinitializer, align 16
@goal_worms_computed = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"owl_attack %1m, result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"owl_threaten_attack %1m\0A\00", align 1
@owl_attackpat_db = external global %struct.pattern_db, align 8
@current_owl_data = internal global %struct.local_owl_data* null, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"owl_threaten_attack %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@owl_defend.owl = internal global %struct.local_owl_data* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"owl_defend %1m\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"owl_defend %1m, result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"owl_threaten_defense %1m\0A\00", align 1
@owl_defendpat_db = external global %struct.pattern_db, align 8
@.str.11 = private unnamed_addr constant [72 x i8] c"owl_threaten_defense %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"%oList size %d. %d Patterns in list, %d have been used, ordered up to %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"%o  Pattern %s (orient. %d) at %1m, value %f.\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%o%1m (%d)  \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"owl: %1m defends %1m with loss at move %d\0A\00", align 1
@movenum = external global i32, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"owl: %1m defends %1m at move %d\0A\00", align 1
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.18 = private unnamed_addr constant [57 x i8] c"owl: %1m attacks %1m at move %d, but the attacker dies.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"owl: %1m attacks %1m with gain at move %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"owl: %1m attacks %1m at move %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"owl: %1m threatens to defend %1m at move %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"owl: %1m prevents a threat against %1m at move %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"owl: %1m threatens %1m at move %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"owl: %1m defends %1m against possible loss at move %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"owl: %1m defends the uncertain dragon at %1m at move %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"owl: %1m might defend the uncertain dragon at %1m at move %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"owl_does_defend %1m %1m(%1m)\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"owl_does_defend\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"owl_does_defend %1m %1m(%1m), result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"owl_confirm_safety %1m %1m(%1m)\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"owl_confirm_safety\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"owl_confirm_safety %1m %1m(%1m), result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"owl_does_attack %1m %1m(%1m)\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"owl_does_attack\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"owl_does_attack %1m %1m(%1m), result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"board[target2] == color\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"owl_connection_defends %1m %1m %1m\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"owl_connection_defends\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"owl_conn_defends %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@other_owl_data = internal global %struct.local_owl_data* null, align 8
@board_size = external global i32, align 4
@level = external global i32, align 4
@.str.41 = private unnamed_addr constant [59 x i8] c"owl_substantial %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@deltai = external global [8 x i32], align 16
@deltaj = external global [8 x i32], align 16
@delta = external global [8 x i32], align 16
@.str.42 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@global_owl_node_counter = internal global i32 0, align 4
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.43 = private unnamed_addr constant [22 x i8] c"do_owl_analyze_semeai\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"board[apos] == owla->color\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"board[bpos] == owlb->color\00", align 1
@owl_branch_depth = external global i32, align 4
@hashflags = external global i32, align 4
@.str.46 = private unnamed_addr constant [36 x i8] c"%oVariation %d: %1m ALIVE (cached)\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"%oVariation %d: %1m DEAD (cached)\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%oVariation %d: %1m ALIVE_IN_SEKI (cached)\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"other == board[bpos]\00", align 1
@matches_found = internal global i32 0, align 4
@found_matches = internal global [400 x i8] zeroinitializer, align 16
@owl_vital_apat_db = external global %struct.pattern_db, align 8
@.str.51 = private unnamed_addr constant [21 x i8] c"Two eyes versus none\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Two eyes versus one\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Two eyes or escape versus none\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Two eyes or escape versus one\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Both live\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"You live, I die\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"vital defensive move\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"tactical win found\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"safe outside liberty\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"backfilling move\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"safe common liberty\00", align 1
@semeai_variations = external global i32, align 4
@.str.62 = private unnamed_addr constant [5 x i8] c"Seki\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"No move found\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Inessential string found at %1m.\0A\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"vital move\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"marginal eye space\00", align 1
@.str.68 = private unnamed_addr constant [64 x i8] c"%s at %1m, score %d (eye at %1m, value %s, pessimistic_min %d)\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"vital point looked stupid, moved it to %1m\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"ne < num_eyes - num_lunch\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"save lunch at %1m with %1m, score %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"save lunch\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"eat lunch at %1m with %1m, score %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"eat lunch\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Moved defense of lunch %1m from %1m to %1m.\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"Moved attack of lunch %1m from %1m to %1m.\0A\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@allpats = external global i32, align 4
@.str.77 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"  asking helper to consider '%s'+%d at %1m\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"helper likes pattern '%s' value %d at %1m\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"  helper does not like pattern '%s' at %1m\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Pattern %s found at %1m with value %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"owl_safe_move\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"board[move] == 0\00", align 1
@backfill_depth = external global i32, align 4
@.str.84 = private unnamed_addr constant [29 x i8] c"find_semeai_backfilling_move\00", align 1
@owl_stack_pointer = internal global i32 0, align 4
@owl_stack_size = internal global i32 0, align 4
@owl_stack = internal global %struct.local_owl_data* null, align 8
@.str.85 = private unnamed_addr constant [29 x i8] c"*owla == &(owl_stack[num_a])\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"*owlb == &(owl_stack[num_b])\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"owl_stack != ((void*)0)\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"&owl_stack[(*owl)->number_in_stack] == *owl\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"owl_attack\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"%oVariation %d: DEAD (cached)\0A\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"%oVariation %d: ALIVE (cached)\0A\00", align 1
@experimental_owl_ext = external global i32, align 4
@.str.92 = private unnamed_addr constant [28 x i8] c"%oVariation %d: ALIVE (%s)\0A\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"%oVariation %d: DEAD (Winning owl_attackpat)\0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"winning attack pattern\00", align 1
@owl_distrust_depth = external global i32, align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"tactical attack\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"%oVariation %d: DEAD (no defense)\0A\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"no defense\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"defense move\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"defense move (backfill)\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"k == 0\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"%oVariation %d: ALIVE (multiple forced moves)\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"multiple forced moves\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(mpos)\00", align 1
@white_captured = external global i32, align 4
@black_captured = external global i32, align 4
@.str.104 = private unnamed_addr constant [44 x i8] c"Trying %C %1m. Escape = %d. Current stack: \00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"all original stones captured\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"attack effective\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"%s)\0A  (%d variations\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"all original stones captured with ko\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"attack effective - ko\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"attack effective (gain) - E\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"attack effective (ko) - E\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"attack failed)\0A  (%d variations\00", align 1
@owl_reading_depth = external global i32, align 4
@.str.113 = private unnamed_addr constant [55 x i8] c"%oVariation %d: ALIVE (maximum reading depth reached)\0A\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"max reading depth reached\00", align 1
@owl_node_limit = external global i32, align 4
@.str.115 = private unnamed_addr constant [48 x i8] c"%oVariation %d: ALIVE (owl node limit reached)\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"owl node limit reached\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"owl: eyemin=%d matches_found=%d\0A\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"2 or more secure eyes\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"1 secure eye, likely >= 4\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"getting deep, looks lively\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"owl_defend\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"%oVariation %d: ALIVE (escaped)\0A\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"escaped\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"%oVariation %d: ALIVE (Winning owl_defendpat)\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"winning defense pattern\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"Found tactical defense for %1m at %1m.\0A\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"tactical_defense\00", align 1
@.str.128 = private unnamed_addr constant [36 x i8] c"defense effective)\0A  (%d variations\00", align 1
@.str.129 = private unnamed_addr constant [29 x i8] c"defense effective (loss) - B\00", align 1
@.str.130 = private unnamed_addr constant [27 x i8] c"defense effective (ko) - B\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"genus probably >= 2\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c"defense failed - genus %d)\0A  (%d variations\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"!list->initialized\00", align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"list->pattern_list != ((void*)0)\00", align 1
@.str.135 = private unnamed_addr constant [49 x i8] c"Remaining valid (but unused) patterns at stack: \00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"k < 3\00", align 1
@.str.138 = private unnamed_addr constant [38 x i8] c"Additionally pattern %s found at %1m\0A\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c"bpos == NO_MOVE || board[bpos] == color\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"owla->color == (1+2-(owlb->color))\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"IS_STONE(board[lunch])\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"Owl escape values:\0A\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%o%d\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@experimental_semeai = external global i32, align 4
@.str.145 = private unnamed_addr constant [19 x i8] c"flag != ((void*)0)\00", align 1
@dragon_goal_worms = internal global [240 x [15 x i32]] zeroinitializer, align 16
@.str.146 = private unnamed_addr constant [19 x i8] c"wpos != ((void*)0)\00", align 1

; Function Attrs: nounwind uwtable
define void @owl_analyze_semeai(i32 %apos, i32 %bpos, i32* %resulta, i32* %resultb, i32* %move, i32 %owl) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %resulta.addr = alloca i32*, align 8
  %resultb.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %owl.addr = alloca i32, align 4
  %semeai_focus = alloca i32, align 4
  %owla = alloca %struct.local_owl_data*, align 8
  %owlb = alloca %struct.local_owl_data*, align 8
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32* %resulta, i32** %resulta.addr, align 8
  store i32* %resultb, i32** %resultb.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %owl, i32* %owl.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %bpos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %sub = sub nsw i32 3, %conv3
  %cmp = icmp eq i32 %conv, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @count_variations, align 4
  %4 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i32, i32* %apos.addr, align 4
  %6 = load i32, i32* %bpos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %5, i32 %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = load i32, i32* %owl.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %cond.end
  %8 = load i32, i32* %apos.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owla, i32 %8, i32 0, i32 0, i32 1)
  %9 = load i32, i32* %bpos.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owlb, i32 %9, i32 0, i32 0, i32 0)
  %10 = load %struct.local_owl_data*, %struct.local_owl_data** %owla, align 8
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb, align 8
  call void @owl_make_domains(%struct.local_owl_data* %10, %struct.local_owl_data* %11)
  br label %if.end.8

if.else.7:                                        ; preds = %cond.end
  call void @reduced_init_owl(%struct.local_owl_data** %owla, i32 1)
  call void @reduced_init_owl(%struct.local_owl_data** %owlb, i32 0)
  store i32 0, i32* @local_owl_node_counter, align 4
  %12 = load i32, i32* %apos.addr, align 4
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owla, align 8
  call void @owl_mark_worm(i32 %12, i32 0, %struct.local_owl_data* %13)
  %14 = load i32, i32* %bpos.addr, align 4
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb, align 8
  call void @owl_mark_worm(i32 %14, i32 0, %struct.local_owl_data* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %16 = load i32, i32* @stackp, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %semeai_focus, align 4
  br label %if.end.28

if.else.12:                                       ; preds = %if.end.8
  %17 = load i32, i32* %bpos.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 16
  %18 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %18, 2
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.12
  %19 = load i32, i32* %bpos.addr, align 4
  store i32 %19, i32* %semeai_focus, align 4
  br label %if.end.27

if.else.18:                                       ; preds = %if.else.12
  %20 = load i32, i32* %apos.addr, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom19
  %status21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx20, i32 0, i32 16
  %21 = load i32, i32* %status21, align 4
  %cmp22 = icmp eq i32 %21, 2
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else.18
  %22 = load i32, i32* %apos.addr, align 4
  store i32 %22, i32* %semeai_focus, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %if.else.18
  store i32 0, i32* %semeai_focus, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.11
  %23 = load i32, i32* %apos.addr, align 4
  %24 = load i32, i32* %bpos.addr, align 4
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** %owla, align 8
  %26 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb, align 8
  %27 = load i32*, i32** %resulta.addr, align 8
  %28 = load i32*, i32** %resultb.addr, align 8
  %29 = load i32*, i32** %move.addr, align 8
  %30 = load i32, i32* %owl.addr, align 4
  call void @do_owl_analyze_semeai(i32 %23, i32 %24, %struct.local_owl_data* %25, %struct.local_owl_data* %26, i32 0, i32* %27, i32* %28, i32* %29, i32 0, i32 %30)
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @init_owl(%struct.local_owl_data** %owl, i32 %target1, i32 %target2, i32 %move, i32 %at_bottom_of_stack) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data**, align 8
  %target1.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %at_bottom_of_stack.addr = alloca i32, align 4
  store %struct.local_owl_data** %owl, %struct.local_owl_data*** %owl.addr, align 8
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %at_bottom_of_stack, i32* %at_bottom_of_stack.addr, align 4
  %0 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %1 = load i32, i32* %at_bottom_of_stack.addr, align 4
  call void @reduced_init_owl(%struct.local_owl_data** %0, i32 %1)
  store i32 0, i32* @local_owl_node_counter, align 4
  %2 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %4 = load i32, i32* %target1.addr, align 4
  %5 = load i32, i32* %target2.addr, align 4
  %6 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  call void @owl_mark_dragon(i32 %4, i32 %5, %struct.local_owl_data* %7)
  %8 = load i32, i32* %move.addr, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %move.addr, align 4
  %10 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  call void @owl_update_goal(i32 %9, i32 1, %struct.local_owl_data* %11, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @compute_owl_escape_values(%struct.local_owl_data* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @owl_make_domains(%struct.local_owl_data* %owla, %struct.local_owl_data* %owlb) #0 {
entry:
  %owla.addr = alloca %struct.local_owl_data*, align 8
  %owlb.addr = alloca %struct.local_owl_data*, align 8
  %black_eye = alloca %struct.eye_data*, align 8
  %white_eye = alloca %struct.eye_data*, align 8
  store %struct.local_owl_data* %owla, %struct.local_owl_data** %owla.addr, align 8
  store %struct.local_owl_data* %owlb, %struct.local_owl_data** %owlb.addr, align 8
  store %struct.eye_data* null, %struct.eye_data** %black_eye, align 8
  store %struct.eye_data* null, %struct.eye_data** %white_eye, align 8
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  store %struct.local_owl_data* %0, %struct.local_owl_data** @current_owl_data, align 8
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  store %struct.local_owl_data* %1, %struct.local_owl_data** @other_owl_data, align 8
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 12
  %3 = load i32, i32* %lunches_are_current, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %5, i32 0, i32 3
  %6 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 4
  %arraydecay = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i32 0
  store %struct.eye_data* %arraydecay, %struct.eye_data** %black_eye, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %my_eye2 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %8, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye2, i32 0, i32 0
  store %struct.eye_data* %arraydecay3, %struct.eye_data** %white_eye, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %tobool5 = icmp ne %struct.local_owl_data* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.26

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %color7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %10, i32 0, i32 3
  %11 = load i32, i32* %color7, align 4
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %color8 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 3
  %13 = load i32, i32* %color8, align 4
  %sub = sub nsw i32 3, %13
  %cmp9 = icmp eq i32 %11, %sub
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.then.6
  br label %if.end.12

if.else.11:                                       ; preds = %if.then.6
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4368, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %lunches_are_current13 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 12
  %15 = load i32, i32* %lunches_are_current13, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %16)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %color17 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %17, i32 0, i32 3
  %18 = load i32, i32* %color17, align 4
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.end.16
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %my_eye20 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 4
  %arraydecay21 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye20, i32 0, i32 0
  store %struct.eye_data* %arraydecay21, %struct.eye_data** %black_eye, align 8
  br label %if.end.25

if.else.22:                                       ; preds = %if.end.16
  %20 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %my_eye23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %20, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye23, i32 0, i32 0
  store %struct.eye_data* %arraydecay24, %struct.eye_data** %white_eye, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.4
  %21 = load %struct.eye_data*, %struct.eye_data** %black_eye, align 8
  %22 = load %struct.eye_data*, %struct.eye_data** %white_eye, align 8
  call void @make_domains(%struct.eye_data* %21, %struct.eye_data* %22, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reduced_init_owl(%struct.local_owl_data** %owl, i32 %at_bottom_of_stack) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data**, align 8
  %at_bottom_of_stack.addr = alloca i32, align 4
  store %struct.local_owl_data** %owl, %struct.local_owl_data*** %owl.addr, align 8
  store i32 %at_bottom_of_stack, i32* %at_bottom_of_stack.addr, align 4
  %0 = load i32, i32* @owl_stack_size, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @experimental_semeai, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* @owl_reading_depth, align 4
  %add = add nsw i32 %2, 2
  %cmp2 = icmp slt i32 %add, 28
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %3 = load i32, i32* @owl_reading_depth, align 4
  %add3 = add nsw i32 %3, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 28, %cond.true ], [ %add3, %cond.false ]
  store i32 %cond, i32* @owl_stack_size, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* @owl_reading_depth, align 4
  %add4 = add nsw i32 %4, 2
  store i32 %add4, i32* @owl_stack_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %5 = load i32, i32* @owl_stack_size, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 35816
  %call = call noalias i8* @malloc(i64 %mul) #2
  %6 = bitcast i8* %call to %struct.local_owl_data*
  store %struct.local_owl_data* %6, %struct.local_owl_data** @owl_stack, align 8
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %cmp5 = icmp ne %struct.local_owl_data* %7, null
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end
  br label %if.end.9

if.else.8:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4991, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %8 = load i32, i32* %at_bottom_of_stack.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.10
  store i32 0, i32* @owl_stack_pointer, align 4
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i64 0
  %10 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  store %struct.local_owl_data* %arrayidx, %struct.local_owl_data** %10, align 8
  br label %if.end.15

if.else.13:                                       ; preds = %if.end.10
  %11 = load i32, i32* @owl_stack_pointer, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @owl_stack_pointer, align 4
  %12 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i64 %idxprom
  %14 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  store %struct.local_owl_data* %arrayidx14, %struct.local_owl_data** %14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  %15 = load i32, i32* @owl_stack_pointer, align 4
  %16 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx17 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %17, i64 %idxprom16
  %number_in_stack = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %arrayidx17, i32 0, i32 15
  store i32 %15, i32* %number_in_stack, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @owl_mark_worm(i32 %apos, i32 %bpos, %struct.local_owl_data* %owl) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %pos = alloca i32, align 4
  %color = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %bpos.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %bpos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color, align 4
  %cmp5 = icmp eq i32 %conv4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %bpos.addr, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32, i32* %bpos.addr, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 3355, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.139, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %pos, align 4
  %cmp8 = icmp slt i32 %8, 400
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %for.body
  %11 = load i32, i32* %pos, align 4
  %12 = load i32, i32* %apos.addr, align 4
  %call = call i32 @is_same_worm(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.15
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %bpos.addr, align 4
  %call17 = call i32 @is_same_worm(i32 %13, i32 %14)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.then.15
  %15 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom20
  store i8 1, i8* %arrayidx21, align 1
  br label %if.end.26

if.else.22:                                       ; preds = %lor.lhs.false.16
  %17 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal24 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [400 x i8], [400 x i8]* %goal24, i32 0, i64 %idxprom23
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %19 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %color, align 4
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color28 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 3
  store i32 %20, i32* %color28, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_owl_analyze_semeai(i32 %apos, i32 %bpos, %struct.local_owl_data* %owla, %struct.local_owl_data* %owlb, i32 %komaster, i32* %resulta, i32* %resultb, i32* %move, i32 %pass, i32 %owl_phase) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %owla.addr = alloca %struct.local_owl_data*, align 8
  %owlb.addr = alloca %struct.local_owl_data*, align 8
  %komaster.addr = alloca i32, align 4
  %resulta.addr = alloca i32*, align 8
  %resultb.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %pass.addr = alloca i32, align 4
  %owl_phase.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %vital_defensive_moves = alloca [3 x %struct.owl_move_data], align 16
  %vital_offensive_moves = alloca [3 x %struct.owl_move_data], align 16
  %shape_defensive_moves = alloca [3 x %struct.owl_move_data], align 16
  %shape_offensive_moves = alloca [3 x %struct.owl_move_data], align 16
  %shape_offensive_patterns = alloca %struct.matched_patterns_list_data, align 8
  %shape_defensive_patterns = alloca %struct.matched_patterns_list_data, align 8
  %moves = alloca [6 x %struct.owl_move_data], align 16
  %outside_liberty = alloca %struct.owl_move_data, align 8
  %common_liberty = alloca %struct.owl_move_data, align 8
  %backfilling_move = alloca %struct.owl_move_data, align 8
  %saved_goal = alloca [400 x i8], align 16
  %safe_outside_liberty_found = alloca i32, align 4
  %unsafe_outside_liberty_found = alloca i32, align 4
  %safe_common_liberty_found = alloca i32, align 4
  %unsafe_common_liberty_found = alloca i32, align 4
  %backfilling_move_found = alloca i32, align 4
  %mw = alloca [400 x i8], align 16
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %same_dragon = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %move_value = alloca i32, align 4
  %best_resulta = alloca i32, align 4
  %best_resultb = alloca i32, align 4
  %best_move = alloca i32, align 4
  %this_resulta = alloca i32, align 4
  %this_resultb = alloca i32, align 4
  %best_move_k = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %this_variation_number = alloca i32, align 4
  %dummy_move = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %probable_eyes_a = alloca %struct.eyevalue, align 1
  %probable_eyes_b = alloca %struct.eyevalue, align 1
  %pos787 = alloca i32, align 4
  %ma = alloca [400 x i32], align 16
  %origin = alloca i32, align 4
  %upos = alloca i32, align 4
  %pos848 = alloca i32, align 4
  %mpos = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store %struct.local_owl_data* %owla, %struct.local_owl_data** %owla.addr, align 8
  store %struct.local_owl_data* %owlb, %struct.local_owl_data** %owlb.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32* %resulta, i32** %resulta.addr, align 8
  store i32* %resultb, i32** %resultb.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %pass, i32* %pass.addr, align 4
  store i32 %owl_phase, i32* %owl_phase.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %safe_outside_liberty_found, align 4
  store i32 0, i32* %unsafe_outside_liberty_found, align 4
  store i32 0, i32* %safe_common_liberty_found, align 4
  store i32 0, i32* %unsafe_common_liberty_found, align 4
  store i32 0, i32* %backfilling_move_found, align 4
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %3, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %4 = load i32, i32* @count_variations, align 4
  store i32 %4, i32* %save_count_variations, align 4
  store i32 3, i32* %best_resulta, align 4
  store i32 3, i32* %best_resultb, align 4
  store i32 0, i32* %best_move, align 4
  store i32 3, i32* %this_resulta, align 4
  store i32 3, i32* %this_resultb, align 4
  store i32 -1, i32* %best_move_k, align 4
  %5 = load i32, i32* @count_variations, align 4
  %sub1 = sub nsw i32 %5, 1
  store i32 %sub1, i32* %this_variation_number, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8** %read_function_name, align 8
  %6 = load i32, i32* %apos.addr, align 4
  store i32 %6, i32* %q1, align 4
  %7 = load i32, i32* %bpos.addr, align 4
  store i32 %7, i32* %q2, align 4
  %8 = load i32*, i32** %move.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %dummy_move, i32** %move.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_offensive_patterns, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  %initialized2 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_defensive_patterns, i32 0, i32 0
  store i32 0, i32* %initialized2, align 4
  %9 = load i32, i32* @global_owl_node_counter, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @global_owl_node_counter, align 4
  %10 = load i32, i32* @local_owl_node_counter, align 4
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, i32* @local_owl_node_counter, align 4
  %11 = load i32, i32* %apos.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %color7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 3
  %14 = load i32, i32* %color7, align 4
  %cmp = icmp eq i32 %conv6, %14
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  br label %if.end.10

if.else:                                          ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %15 = load i32, i32* %bpos.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %16 to i32
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %color14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %17, i32 0, i32 3
  %18 = load i32, i32* %color14, align 4
  %cmp15 = icmp eq i32 %conv13, %18
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.10
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.10
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 357, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %19 = load i32, i32* @stackp, align 4
  %20 = load i32, i32* @owl_branch_depth, align 4
  %cmp20 = icmp sle i32 %19, %20
  br i1 %cmp20, label %land.lhs.true, label %if.else.127

land.lhs.true:                                    ; preds = %if.end.19
  %21 = load i32, i32* @hashflags, align 4
  %and = and i32 %21, 1024
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.127

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %pass.addr, align 4
  %tobool24 = icmp ne i32 %22, 0
  br i1 %tobool24, label %if.else.127, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %23 = load i32, i32* %owl_phase.addr, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.else.127

if.then.27:                                       ; preds = %land.lhs.true.25
  %call = call i32 @get_read_result2(i32 2, i32 0, i32 0, i32* %apos.addr, i32* %bpos.addr, %struct.read_result_t** %read_result)
  %tobool28 = icmp ne i32 %call, 0
  br i1 %tobool28, label %if.then.29, label %if.end.126

if.then.29:                                       ; preds = %if.then.27
  %24 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %24, i32 0, i32 1
  %25 = load i32, i32* %data2, align 4
  %shr = lshr i32 %25, 24
  %and30 = and i32 %shr, 15
  %cmp31 = icmp ne i32 %and30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.29
  %26 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data234 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %26, i32 0, i32 1
  %27 = load i32, i32* %data234, align 4
  %shr35 = lshr i32 %27, 10
  %and36 = and i32 %shr35, 1023
  %28 = load i32*, i32** %move.addr, align 8
  store i32 %and36, i32* %28, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.then.29
  %29 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data238 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %29, i32 0, i32 1
  %30 = load i32, i32* %data238, align 4
  %shr39 = lshr i32 %30, 24
  %and40 = and i32 %shr39, 15
  %cmp41 = icmp eq i32 %and40, 1
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.end.37
  %31 = load i32, i32* @verbose, align 4
  %tobool44 = icmp ne i32 %31, 0
  br i1 %tobool44, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.43
  br label %cond.end

cond.false:                                       ; preds = %if.then.43
  %32 = load i32, i32* %this_variation_number, align 4
  %33 = load i32, i32* %apos.addr, align 4
  %call45 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i32 %32, i32 %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.72

if.else.46:                                       ; preds = %if.end.37
  %34 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data247 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %34, i32 0, i32 1
  %35 = load i32, i32* %data247, align 4
  %shr48 = lshr i32 %35, 24
  %and49 = and i32 %shr48, 15
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %if.else.46
  %36 = load i32, i32* @verbose, align 4
  %tobool53 = icmp ne i32 %36, 0
  br i1 %tobool53, label %cond.false.55, label %cond.true.54

cond.true.54:                                     ; preds = %if.then.52
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.then.52
  %37 = load i32, i32* %this_variation_number, align 4
  %38 = load i32, i32* %apos.addr, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i32 %37, i32 %38)
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.54
  br label %if.end.71

if.else.58:                                       ; preds = %if.else.46
  %39 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data259 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %39, i32 0, i32 1
  %40 = load i32, i32* %data259, align 4
  %shr60 = lshr i32 %40, 24
  %and61 = and i32 %shr60, 15
  %cmp62 = icmp eq i32 %and61, 7
  br i1 %cmp62, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %if.else.58
  %41 = load i32, i32* @verbose, align 4
  %tobool65 = icmp ne i32 %41, 0
  br i1 %tobool65, label %cond.false.67, label %cond.true.66

cond.true.66:                                     ; preds = %if.then.64
  br label %cond.end.69

cond.false.67:                                    ; preds = %if.then.64
  %42 = load i32, i32* %this_variation_number, align 4
  %43 = load i32, i32* %apos.addr, align 4
  %call68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0), i32 %42, i32 %43)
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.67, %cond.true.66
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.69, %if.else.58
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %cond.end.57
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %cond.end
  %44 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data273 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %44, i32 0, i32 1
  %45 = load i32, i32* %data273, align 4
  %shr74 = lshr i32 %45, 20
  %and75 = and i32 %shr74, 15
  %cmp76 = icmp eq i32 %and75, 1
  br i1 %cmp76, label %if.then.78, label %if.else.84

if.then.78:                                       ; preds = %if.end.72
  %46 = load i32, i32* @verbose, align 4
  %tobool79 = icmp ne i32 %46, 0
  br i1 %tobool79, label %cond.false.81, label %cond.true.80

cond.true.80:                                     ; preds = %if.then.78
  br label %cond.end.83

cond.false.81:                                    ; preds = %if.then.78
  %47 = load i32, i32* %this_variation_number, align 4
  %48 = load i32, i32* %bpos.addr, align 4
  %call82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i32 %47, i32 %48)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  br label %if.end.110

if.else.84:                                       ; preds = %if.end.72
  %49 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data285 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %49, i32 0, i32 1
  %50 = load i32, i32* %data285, align 4
  %shr86 = lshr i32 %50, 20
  %and87 = and i32 %shr86, 15
  %cmp88 = icmp eq i32 %and87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.96

if.then.90:                                       ; preds = %if.else.84
  %51 = load i32, i32* @verbose, align 4
  %tobool91 = icmp ne i32 %51, 0
  br i1 %tobool91, label %cond.false.93, label %cond.true.92

cond.true.92:                                     ; preds = %if.then.90
  br label %cond.end.95

cond.false.93:                                    ; preds = %if.then.90
  %52 = load i32, i32* %this_variation_number, align 4
  %53 = load i32, i32* %bpos.addr, align 4
  %call94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i32 %52, i32 %53)
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.92
  br label %if.end.109

if.else.96:                                       ; preds = %if.else.84
  %54 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data297 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %54, i32 0, i32 1
  %55 = load i32, i32* %data297, align 4
  %shr98 = lshr i32 %55, 20
  %and99 = and i32 %shr98, 15
  %cmp100 = icmp eq i32 %and99, 7
  br i1 %cmp100, label %if.then.102, label %if.end.108

if.then.102:                                      ; preds = %if.else.96
  %56 = load i32, i32* @verbose, align 4
  %tobool103 = icmp ne i32 %56, 0
  br i1 %tobool103, label %cond.false.105, label %cond.true.104

cond.true.104:                                    ; preds = %if.then.102
  br label %cond.end.107

cond.false.105:                                   ; preds = %if.then.102
  %57 = load i32, i32* %this_variation_number, align 4
  %58 = load i32, i32* %bpos.addr, align 4
  %call106 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0), i32 %57, i32 %58)
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.107, %if.else.96
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %cond.end.95
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %cond.end.83
  %59 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool111 = icmp ne %struct.SGFTree_t* %59, null
  br i1 %tobool111, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %if.end.110
  %60 = load i8*, i8** %read_function_name, align 8
  %61 = load i32, i32* %q1, align 4
  %62 = load i32, i32* %q2, align 4
  %63 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2113 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %63, i32 0, i32 1
  %64 = load i32, i32* %data2113, align 4
  %shr114 = lshr i32 %64, 10
  %and115 = and i32 %shr114, 1023
  %65 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2116 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %65, i32 0, i32 1
  %66 = load i32, i32* %data2116, align 4
  %shr117 = lshr i32 %66, 24
  %and118 = and i32 %shr117, 15
  call void @sgf_trace2(i8* %60, i32 %61, i32 %62, i32 %and115, i32 %and118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.112, %if.end.110
  %67 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2120 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %67, i32 0, i32 1
  %68 = load i32, i32* %data2120, align 4
  %shr121 = lshr i32 %68, 24
  %and122 = and i32 %shr121, 15
  %69 = load i32*, i32** %resulta.addr, align 8
  store i32 %and122, i32* %69, align 4
  %70 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2123 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %70, i32 0, i32 1
  %71 = load i32, i32* %data2123, align 4
  %shr124 = lshr i32 %71, 20
  %and125 = and i32 %shr124, 15
  %72 = load i32*, i32** %resultb.addr, align 8
  store i32 %and125, i32* %72, align 4
  br label %do.end.1215

if.end.126:                                       ; preds = %if.then.27
  br label %if.end.128

if.else.127:                                      ; preds = %land.lhs.true.25, %land.lhs.true.23, %land.lhs.true, %if.end.19
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.end.126
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %outside_liberty, i32 0, i32 0
  store i32 0, i32* %pos, align 4
  %pos129 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %common_liberty, i32 0, i32 0
  store i32 0, i32* %pos129, align 4
  %pos130 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  store i32 0, i32* %pos130, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.128
  %73 = load i32, i32* %k, align 4
  %cmp131 = icmp slt i32 %73, 6
  br i1 %cmp131, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %74 to i64
  %arrayidx134 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom133
  %pos135 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx134, i32 0, i32 0
  store i32 0, i32* %pos135, align 4
  %75 = load i32, i32* %k, align 4
  %idxprom136 = sext i32 %75 to i64
  %arrayidx137 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom136
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx137, i32 0, i32 1
  store i32 -1, i32* %value, align 4
  %76 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %76 to i64
  %arrayidx139 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom138
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx139, i32 0, i32 2
  store i8* null, i8** %name, align 8
  %77 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %77 to i64
  %arrayidx141 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom140
  %same_dragon142 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx141, i32 0, i32 3
  store i32 2, i32* %same_dragon142, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i32, i32* %k, align 4
  %inc143 = add nsw i32 %78, 1
  store i32 %inc143, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i32, i32* %other, align 4
  %80 = load i32, i32* %bpos.addr, align 4
  %idxprom144 = sext i32 %80 to i64
  %arrayidx145 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom144
  %81 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %81 to i32
  %cmp147 = icmp eq i32 %79, %conv146
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %for.end
  br label %if.end.151

if.else.150:                                      ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.150, %if.then.149
  %82 = bitcast [400 x i8]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 400, i32 16, i1 false)
  %83 = load i32, i32* %owl_phase.addr, align 4
  %tobool152 = icmp ne i32 %83, 0
  br i1 %tobool152, label %if.then.153, label %if.end.765

if.then.153:                                      ; preds = %if.end.151
  %84 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %84)
  %85 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %85)
  store i32 0, i32* %k, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.175, %if.then.153
  %86 = load i32, i32* %k, align 4
  %cmp155 = icmp slt i32 %86, 10
  br i1 %cmp155, label %for.body.157, label %for.end.177

for.body.157:                                     ; preds = %for.cond.154
  %87 = load i32, i32* %k, align 4
  %idxprom158 = sext i32 %87 to i64
  %88 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %lunch = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %88, i32 0, i32 6
  %arrayidx159 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch, i32 0, i64 %idxprom158
  %89 = load i32, i32* %arrayidx159, align 4
  %cmp160 = icmp ne i32 %89, 0
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.174

land.lhs.true.162:                                ; preds = %for.body.157
  %90 = load i32, i32* %k, align 4
  %idxprom163 = sext i32 %90 to i64
  %91 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %lunch164 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %91, i32 0, i32 6
  %arrayidx165 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch164, i32 0, i64 %idxprom163
  %92 = load i32, i32* %arrayidx165, align 4
  %idxprom166 = sext i32 %92 to i64
  %93 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %93, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom166
  %94 = load i8, i8* %arrayidx167, align 1
  %conv168 = sext i8 %94 to i32
  %tobool169 = icmp ne i32 %conv168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.174

if.then.170:                                      ; preds = %land.lhs.true.162
  %95 = load i32, i32* %k, align 4
  %idxprom171 = sext i32 %95 to i64
  %96 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %lunch172 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %96, i32 0, i32 6
  %arrayidx173 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch172, i32 0, i64 %idxprom171
  store i32 0, i32* %arrayidx173, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.170, %land.lhs.true.162, %for.body.157
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.174
  %97 = load i32, i32* %k, align 4
  %inc176 = add nsw i32 %97, 1
  store i32 %inc176, i32* %k, align 4
  br label %for.cond.154

for.end.177:                                      ; preds = %for.cond.154
  %98 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %99 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %100 = load i32, i32* %komaster.addr, align 4
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i32 0
  call void @owl_determine_life(%struct.local_owl_data* %98, %struct.local_owl_data* %99, i32 %100, i32 1, %struct.owl_move_data* %arraydecay, %struct.eyevalue* %probable_eyes_a, i32* null, i32* null)
  %101 = load i32, i32* @level, align 4
  %cmp178 = icmp sge i32 %101, 9
  br i1 %cmp178, label %if.then.180, label %if.end.198

if.then.180:                                      ; preds = %for.end.177
  %102 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  store %struct.local_owl_data* %102, %struct.local_owl_data** @current_owl_data, align 8
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  %103 = load i32, i32* %other, align 4
  %arraydecay181 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i32 0
  %104 = bitcast %struct.owl_move_data* %arraydecay181 to i8*
  %105 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal182 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %105, i32 0, i32 0
  %arraydecay183 = getelementptr inbounds [400 x i8], [400 x i8]* %goal182, i32 0, i32 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %103, %struct.pattern_db* @owl_vital_apat_db, i8* %104, i8* %arraydecay183)
  %b = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_a, i32 0, i32 1
  %106 = load i8, i8* %b, align 1
  %conv184 = zext i8 %106 to i32
  %107 = load i32, i32* @matches_found, align 4
  %cmp185 = icmp sgt i32 %conv184, %107
  br i1 %cmp185, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %if.then.180
  %108 = load i32, i32* @matches_found, align 4
  %b188 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_a, i32 0, i32 1
  %109 = load i8, i8* %b188, align 1
  %conv189 = zext i8 %109 to i32
  %sub190 = sub nsw i32 %conv189, %108
  %conv191 = trunc i32 %sub190 to i8
  store i8 %conv191, i8* %b188, align 1
  br label %if.end.197

if.else.192:                                      ; preds = %if.then.180
  %b193 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_a, i32 0, i32 1
  %110 = load i8, i8* %b193, align 1
  %conv194 = zext i8 %110 to i32
  %sub195 = sub nsw i32 %conv194, 0
  %conv196 = trunc i32 %sub195 to i8
  store i8 %conv196, i8* %b193, align 1
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.192, %if.then.187
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %for.end.177
  %111 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %112 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %113 = load i32, i32* %komaster.addr, align 4
  %arraydecay199 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i32 0
  call void @owl_determine_life(%struct.local_owl_data* %111, %struct.local_owl_data* %112, i32 %113, i32 1, %struct.owl_move_data* %arraydecay199, %struct.eyevalue* %probable_eyes_b, i32* null, i32* null)
  %114 = load i32, i32* @level, align 4
  %cmp200 = icmp sge i32 %114, 9
  br i1 %cmp200, label %if.then.202, label %if.end.218

if.then.202:                                      ; preds = %if.end.198
  %115 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  store %struct.local_owl_data* %115, %struct.local_owl_data** @current_owl_data, align 8
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  %116 = load i32, i32* %other, align 4
  %arraydecay203 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i32 0
  %117 = bitcast %struct.owl_move_data* %arraydecay203 to i8*
  %118 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal204 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %118, i32 0, i32 0
  %arraydecay205 = getelementptr inbounds [400 x i8], [400 x i8]* %goal204, i32 0, i32 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %116, %struct.pattern_db* @owl_vital_apat_db, i8* %117, i8* %arraydecay205)
  %b206 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_b, i32 0, i32 1
  %119 = load i8, i8* %b206, align 1
  %conv207 = zext i8 %119 to i32
  %120 = load i32, i32* @matches_found, align 4
  %cmp208 = icmp sgt i32 %conv207, %120
  br i1 %cmp208, label %if.then.210, label %if.else.215

if.then.210:                                      ; preds = %if.then.202
  %121 = load i32, i32* @matches_found, align 4
  %b211 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_b, i32 0, i32 1
  %122 = load i8, i8* %b211, align 1
  %conv212 = zext i8 %122 to i32
  %sub213 = sub nsw i32 %conv212, %121
  %conv214 = trunc i32 %sub213 to i8
  store i8 %conv214, i8* %b211, align 1
  br label %if.end.217

if.else.215:                                      ; preds = %if.then.202
  %b216 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %probable_eyes_b, i32 0, i32 1
  store i8 0, i8* %b216, align 1
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.215, %if.then.210
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.198
  %call219 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_a)
  %cmp220 = icmp sge i32 %call219, 2
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.250

land.lhs.true.222:                                ; preds = %if.end.218
  %call223 = call i32 @max_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp224 = icmp slt i32 %call223, 2
  br i1 %cmp224, label %if.then.226, label %if.end.250

if.then.226:                                      ; preds = %land.lhs.true.222
  %123 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %123, align 4
  %124 = load i32*, i32** %resultb.addr, align 8
  store i32 0, i32* %124, align 4
  %125 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %125, align 4
  %126 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %126, %struct.SGFTree_t** @sgf_dumptree, align 8
  %127 = load i32, i32* %save_count_variations, align 4
  store i32 %127, i32* @count_variations, align 4
  %call227 = call i32 @max_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp228 = icmp eq i32 %call227, 0
  br i1 %cmp228, label %if.then.230, label %if.else.234

if.then.230:                                      ; preds = %if.then.226
  %128 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool231 = icmp ne %struct.SGFTree_t* %128, null
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.then.230
  %129 = load i8*, i8** %read_function_name, align 8
  %130 = load i32, i32* %q1, align 4
  %131 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %129, i32 %130, i32 %131, i32 0, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %if.then.230
  br label %if.end.238

if.else.234:                                      ; preds = %if.then.226
  %132 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool235 = icmp ne %struct.SGFTree_t* %132, null
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.else.234
  %133 = load i8*, i8** %read_function_name, align 8
  %134 = load i32, i32* %q1, align 4
  %135 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %133, i32 %134, i32 %135, i32 0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.else.234
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.233
  br label %do.body

do.body:                                          ; preds = %if.end.238
  %136 = load i32*, i32** %move.addr, align 8
  %cmp239 = icmp ne i32* %136, null
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %do.body
  %137 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %137, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %do.body
  %138 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool243 = icmp ne %struct.read_result_t* %138, null
  br i1 %tobool243, label %if.then.244, label %if.end.249

if.then.244:                                      ; preds = %if.end.242
  %139 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2245 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %139, i32 0, i32 1
  %140 = load i32, i32* %data2245, align 4
  %and246 = and i32 %140, 1023
  %or = or i32 %and246, 536870912
  %or247 = or i32 %or, 16777216
  %141 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2248 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %141, i32 0, i32 1
  store i32 %or247, i32* %data2248, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.244, %if.end.242
  br label %do.end.1215

do.end:                                           ; No predecessors!
  br label %if.end.250

if.end.250:                                       ; preds = %do.end, %land.lhs.true.222, %if.end.218
  %call251 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_a)
  %cmp252 = icmp sge i32 %call251, 2
  br i1 %cmp252, label %if.then.260, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.250
  %142 = load i32, i32* @stackp, align 4
  %cmp254 = icmp sgt i32 %142, 2
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.361

land.lhs.true.256:                                ; preds = %lor.lhs.false
  %143 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call257 = call i32 @owl_escape_route(%struct.local_owl_data* %143)
  %cmp258 = icmp sge i32 %call257, 5
  br i1 %cmp258, label %if.then.260, label %if.end.361

if.then.260:                                      ; preds = %land.lhs.true.256, %if.end.250
  %call261 = call i32 @max_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp262 = icmp slt i32 %call261, 2
  br i1 %cmp262, label %if.then.264, label %if.else.291

if.then.264:                                      ; preds = %if.then.260
  %144 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %144, align 4
  %145 = load i32*, i32** %resultb.addr, align 8
  store i32 0, i32* %145, align 4
  %146 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %146, align 4
  %147 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %147, %struct.SGFTree_t** @sgf_dumptree, align 8
  %148 = load i32, i32* %save_count_variations, align 4
  store i32 %148, i32* @count_variations, align 4
  %call265 = call i32 @max_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %if.then.268, label %if.else.272

if.then.268:                                      ; preds = %if.then.264
  %149 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool269 = icmp ne %struct.SGFTree_t* %149, null
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.then.268
  %150 = load i8*, i8** %read_function_name, align 8
  %151 = load i32, i32* %q1, align 4
  %152 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %150, i32 %151, i32 %152, i32 0, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %if.then.268
  br label %if.end.276

if.else.272:                                      ; preds = %if.then.264
  %153 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool273 = icmp ne %struct.SGFTree_t* %153, null
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.else.272
  %154 = load i8*, i8** %read_function_name, align 8
  %155 = load i32, i32* %q1, align 4
  %156 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %154, i32 %155, i32 %156, i32 0, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.else.272
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.271
  br label %do.body.277

do.body.277:                                      ; preds = %if.end.276
  %157 = load i32*, i32** %move.addr, align 8
  %cmp278 = icmp ne i32* %157, null
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %do.body.277
  %158 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %158, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %do.body.277
  %159 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool282 = icmp ne %struct.read_result_t* %159, null
  br i1 %tobool282, label %if.then.283, label %if.end.289

if.then.283:                                      ; preds = %if.end.281
  %160 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2284 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %160, i32 0, i32 1
  %161 = load i32, i32* %data2284, align 4
  %and285 = and i32 %161, 1023
  %or286 = or i32 %and285, 536870912
  %or287 = or i32 %or286, 16777216
  %162 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2288 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %162, i32 0, i32 1
  store i32 %or287, i32* %data2288, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.283, %if.end.281
  br label %do.end.1215

do.end.290:                                       ; No predecessors!
  br label %if.end.360

if.else.291:                                      ; preds = %if.then.260
  %call292 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp293 = icmp sge i32 %call292, 2
  br i1 %cmp293, label %if.then.295, label %if.else.314

if.then.295:                                      ; preds = %if.else.291
  %163 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %163, align 4
  %164 = load i32*, i32** %resultb.addr, align 8
  store i32 1, i32* %164, align 4
  %165 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %165, align 4
  %166 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %166, %struct.SGFTree_t** @sgf_dumptree, align 8
  %167 = load i32, i32* %save_count_variations, align 4
  store i32 %167, i32* @count_variations, align 4
  %168 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool296 = icmp ne %struct.SGFTree_t* %168, null
  br i1 %tobool296, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.then.295
  %169 = load i8*, i8** %read_function_name, align 8
  %170 = load i32, i32* %q1, align 4
  %171 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %169, i32 %170, i32 %171, i32 0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %if.then.295
  br label %do.body.299

do.body.299:                                      ; preds = %if.end.298
  %172 = load i32*, i32** %move.addr, align 8
  %cmp300 = icmp ne i32* %172, null
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %do.body.299
  %173 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %173, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %do.body.299
  %174 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool304 = icmp ne %struct.read_result_t* %174, null
  br i1 %tobool304, label %if.then.305, label %if.end.312

if.then.305:                                      ; preds = %if.end.303
  %175 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2306 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %175, i32 0, i32 1
  %176 = load i32, i32* %data2306, align 4
  %and307 = and i32 %176, 1023
  %or308 = or i32 %and307, 536870912
  %or309 = or i32 %or308, 16777216
  %or310 = or i32 %or309, 1048576
  %177 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2311 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %177, i32 0, i32 1
  store i32 %or310, i32* %data2311, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.305, %if.end.303
  br label %do.end.1215

do.end.313:                                       ; No predecessors!
  br label %if.end.359

if.else.314:                                      ; preds = %if.else.291
  %arrayidx315 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos316 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx315, i32 0, i32 0
  %178 = load i32, i32* %pos316, align 4
  %cmp317 = icmp ne i32 %178, 0
  br i1 %cmp317, label %if.then.319, label %if.end.358

if.then.319:                                      ; preds = %if.else.314
  %179 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %179, align 4
  %180 = load i32*, i32** %resultb.addr, align 8
  store i32 0, i32* %180, align 4
  %arrayidx320 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos321 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx320, i32 0, i32 0
  %181 = load i32, i32* %pos321, align 4
  %182 = load i32*, i32** %move.addr, align 8
  store i32 %181, i32* %182, align 4
  %183 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %183, %struct.SGFTree_t** @sgf_dumptree, align 8
  %184 = load i32, i32* %save_count_variations, align 4
  store i32 %184, i32* @count_variations, align 4
  %call322 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp323 = icmp eq i32 %call322, 0
  br i1 %cmp323, label %if.then.325, label %if.else.331

if.then.325:                                      ; preds = %if.then.319
  %185 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool326 = icmp ne %struct.SGFTree_t* %185, null
  br i1 %tobool326, label %if.then.327, label %if.end.330

if.then.327:                                      ; preds = %if.then.325
  %186 = load i8*, i8** %read_function_name, align 8
  %187 = load i32, i32* %q1, align 4
  %188 = load i32, i32* %q2, align 4
  %arrayidx328 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos329 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx328, i32 0, i32 0
  %189 = load i32, i32* %pos329, align 4
  call void @sgf_trace2(i8* %186, i32 %187, i32 %188, i32 %189, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.327, %if.then.325
  br label %if.end.337

if.else.331:                                      ; preds = %if.then.319
  %190 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool332 = icmp ne %struct.SGFTree_t* %190, null
  br i1 %tobool332, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %if.else.331
  %191 = load i8*, i8** %read_function_name, align 8
  %192 = load i32, i32* %q1, align 4
  %193 = load i32, i32* %q2, align 4
  %arrayidx334 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos335 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx334, i32 0, i32 0
  %194 = load i32, i32* %pos335, align 4
  call void @sgf_trace2(i8* %191, i32 %192, i32 %193, i32 %194, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.333, %if.else.331
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.end.330
  br label %do.body.338

do.body.338:                                      ; preds = %if.end.337
  %195 = load i32*, i32** %move.addr, align 8
  %cmp339 = icmp ne i32* %195, null
  br i1 %cmp339, label %if.then.341, label %if.end.344

if.then.341:                                      ; preds = %do.body.338
  %arrayidx342 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos343 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx342, i32 0, i32 0
  %196 = load i32, i32* %pos343, align 4
  %197 = load i32*, i32** %move.addr, align 8
  store i32 %196, i32* %197, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.341, %do.body.338
  %198 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool345 = icmp ne %struct.read_result_t* %198, null
  br i1 %tobool345, label %if.then.346, label %if.end.356

if.then.346:                                      ; preds = %if.end.344
  %199 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2347 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %199, i32 0, i32 1
  %200 = load i32, i32* %data2347, align 4
  %and348 = and i32 %200, 1023
  %or349 = or i32 %and348, 536870912
  %or350 = or i32 %or349, 16777216
  %arrayidx351 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 0
  %pos352 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx351, i32 0, i32 0
  %201 = load i32, i32* %pos352, align 4
  %and353 = and i32 %201, 1023
  %shl = shl i32 %and353, 10
  %or354 = or i32 %or350, %shl
  %202 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2355 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %202, i32 0, i32 1
  store i32 %or354, i32* %data2355, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.346, %if.end.344
  br label %do.end.1215

do.end.357:                                       ; No predecessors!
  br label %if.end.358

if.end.358:                                       ; preds = %do.end.357, %if.else.314
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %do.end.313
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %do.end.290
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %land.lhs.true.256, %lor.lhs.false
  %call362 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_b)
  %cmp363 = icmp sge i32 %call362, 2
  br i1 %cmp363, label %if.then.369, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %if.end.361
  %203 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call366 = call i32 @owl_escape_route(%struct.local_owl_data* %203)
  %cmp367 = icmp sge i32 %call366, 5
  br i1 %cmp367, label %if.then.369, label %if.end.448

if.then.369:                                      ; preds = %lor.lhs.false.365, %if.end.361
  %call370 = call i32 @max_eyes(%struct.eyevalue* %probable_eyes_a)
  %cmp371 = icmp slt i32 %call370, 2
  br i1 %cmp371, label %if.then.373, label %if.else.387

if.then.373:                                      ; preds = %if.then.369
  %204 = load i32*, i32** %resulta.addr, align 8
  store i32 0, i32* %204, align 4
  %205 = load i32*, i32** %resultb.addr, align 8
  store i32 1, i32* %205, align 4
  %206 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %206, align 4
  %207 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %207, %struct.SGFTree_t** @sgf_dumptree, align 8
  %208 = load i32, i32* %save_count_variations, align 4
  store i32 %208, i32* @count_variations, align 4
  %209 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool374 = icmp ne %struct.SGFTree_t* %209, null
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.then.373
  %210 = load i8*, i8** %read_function_name, align 8
  %211 = load i32, i32* %q1, align 4
  %212 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %210, i32 %211, i32 %212, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.then.373
  br label %do.body.377

do.body.377:                                      ; preds = %if.end.376
  %213 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool378 = icmp ne %struct.read_result_t* %213, null
  br i1 %tobool378, label %if.then.379, label %if.end.385

if.then.379:                                      ; preds = %do.body.377
  %214 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2380 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %214, i32 0, i32 1
  %215 = load i32, i32* %data2380, align 4
  %and381 = and i32 %215, 1023
  %or382 = or i32 %and381, 536870912
  %or383 = or i32 %or382, 1048576
  %216 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2384 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %216, i32 0, i32 1
  store i32 %or383, i32* %data2384, align 4
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.379, %do.body.377
  br label %do.end.1215

do.end.386:                                       ; No predecessors!
  br label %if.end.447

if.else.387:                                      ; preds = %if.then.369
  %call388 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes_a)
  %cmp389 = icmp sge i32 %call388, 2
  br i1 %cmp389, label %if.then.391, label %if.else.410

if.then.391:                                      ; preds = %if.else.387
  %217 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %217, align 4
  %218 = load i32*, i32** %resultb.addr, align 8
  store i32 1, i32* %218, align 4
  %219 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %219, align 4
  %220 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %220, %struct.SGFTree_t** @sgf_dumptree, align 8
  %221 = load i32, i32* %save_count_variations, align 4
  store i32 %221, i32* @count_variations, align 4
  %222 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool392 = icmp ne %struct.SGFTree_t* %222, null
  br i1 %tobool392, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.then.391
  %223 = load i8*, i8** %read_function_name, align 8
  %224 = load i32, i32* %q1, align 4
  %225 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %223, i32 %224, i32 %225, i32 0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.393, %if.then.391
  br label %do.body.395

do.body.395:                                      ; preds = %if.end.394
  %226 = load i32*, i32** %move.addr, align 8
  %cmp396 = icmp ne i32* %226, null
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %do.body.395
  %227 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %227, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %do.body.395
  %228 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool400 = icmp ne %struct.read_result_t* %228, null
  br i1 %tobool400, label %if.then.401, label %if.end.408

if.then.401:                                      ; preds = %if.end.399
  %229 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2402 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %229, i32 0, i32 1
  %230 = load i32, i32* %data2402, align 4
  %and403 = and i32 %230, 1023
  %or404 = or i32 %and403, 536870912
  %or405 = or i32 %or404, 16777216
  %or406 = or i32 %or405, 1048576
  %231 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2407 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %231, i32 0, i32 1
  store i32 %or406, i32* %data2407, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.401, %if.end.399
  br label %do.end.1215

do.end.409:                                       ; No predecessors!
  br label %if.end.446

if.else.410:                                      ; preds = %if.else.387
  %arrayidx411 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 0
  %pos412 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx411, i32 0, i32 0
  %232 = load i32, i32* %pos412, align 4
  %cmp413 = icmp ne i32 %232, 0
  br i1 %cmp413, label %if.then.415, label %if.end.445

if.then.415:                                      ; preds = %if.else.410
  %233 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %233, align 4
  %234 = load i32*, i32** %resultb.addr, align 8
  store i32 1, i32* %234, align 4
  %arrayidx416 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 0
  %pos417 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx416, i32 0, i32 0
  %235 = load i32, i32* %pos417, align 4
  %236 = load i32*, i32** %move.addr, align 8
  store i32 %235, i32* %236, align 4
  %237 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %237, %struct.SGFTree_t** @sgf_dumptree, align 8
  %238 = load i32, i32* %save_count_variations, align 4
  store i32 %238, i32* @count_variations, align 4
  %239 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool418 = icmp ne %struct.SGFTree_t* %239, null
  br i1 %tobool418, label %if.then.419, label %if.end.422

if.then.419:                                      ; preds = %if.then.415
  %240 = load i8*, i8** %read_function_name, align 8
  %241 = load i32, i32* %q1, align 4
  %242 = load i32, i32* %q2, align 4
  %arrayidx420 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 0
  %pos421 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx420, i32 0, i32 0
  %243 = load i32, i32* %pos421, align 4
  call void @sgf_trace2(i8* %240, i32 %241, i32 %242, i32 %243, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.419, %if.then.415
  br label %do.body.423

do.body.423:                                      ; preds = %if.end.422
  %244 = load i32*, i32** %move.addr, align 8
  %cmp424 = icmp ne i32* %244, null
  br i1 %cmp424, label %if.then.426, label %if.end.429

if.then.426:                                      ; preds = %do.body.423
  %arrayidx427 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 0
  %pos428 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx427, i32 0, i32 0
  %245 = load i32, i32* %pos428, align 4
  %246 = load i32*, i32** %move.addr, align 8
  store i32 %245, i32* %246, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.426, %do.body.423
  %247 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool430 = icmp ne %struct.read_result_t* %247, null
  br i1 %tobool430, label %if.then.431, label %if.end.443

if.then.431:                                      ; preds = %if.end.429
  %248 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2432 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %248, i32 0, i32 1
  %249 = load i32, i32* %data2432, align 4
  %and433 = and i32 %249, 1023
  %or434 = or i32 %and433, 536870912
  %or435 = or i32 %or434, 16777216
  %or436 = or i32 %or435, 1048576
  %arrayidx437 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 0
  %pos438 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx437, i32 0, i32 0
  %250 = load i32, i32* %pos438, align 4
  %and439 = and i32 %250, 1023
  %shl440 = shl i32 %and439, 10
  %or441 = or i32 %or436, %shl440
  %251 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2442 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %251, i32 0, i32 1
  store i32 %or441, i32* %data2442, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.431, %if.end.429
  br label %do.end.1215

do.end.444:                                       ; No predecessors!
  br label %if.end.445

if.end.445:                                       ; preds = %do.end.444, %if.else.410
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %do.end.409
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %do.end.386
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %lor.lhs.false.365
  %arraydecay449 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i32 0
  %252 = load i32, i32* %color, align 4
  %253 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_defensive_patterns, %struct.owl_move_data* %arraydecay449, i32 %252, %struct.local_owl_data* %253, %struct.pattern_db* @owl_defendpat_db)
  store i32 0, i32* %k, align 4
  br label %for.cond.450

for.cond.450:                                     ; preds = %for.inc.459, %if.end.448
  %254 = load i32, i32* %k, align 4
  %cmp451 = icmp slt i32 %254, 2
  br i1 %cmp451, label %for.body.453, label %for.end.461

for.body.453:                                     ; preds = %for.cond.450
  %255 = load i32, i32* %color, align 4
  %arraydecay454 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i32 0
  %call455 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_defensive_patterns, i32 %255, %struct.owl_move_data* %arraydecay454, i32 1)
  %tobool456 = icmp ne i32 %call455, 0
  br i1 %tobool456, label %if.end.458, label %if.then.457

if.then.457:                                      ; preds = %for.body.453
  br label %for.end.461

if.end.458:                                       ; preds = %for.body.453
  br label %for.inc.459

for.inc.459:                                      ; preds = %if.end.458
  %256 = load i32, i32* %k, align 4
  %inc460 = add nsw i32 %256, 1
  store i32 %inc460, i32* %k, align 4
  br label %for.cond.450

for.end.461:                                      ; preds = %if.then.457, %for.cond.450
  %arraydecay462 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i32 0
  %257 = load i32, i32* %color, align 4
  %258 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_offensive_patterns, %struct.owl_move_data* %arraydecay462, i32 %257, %struct.local_owl_data* %258, %struct.pattern_db* @owl_attackpat_db)
  store i32 0, i32* %k, align 4
  br label %for.cond.463

for.cond.463:                                     ; preds = %for.inc.472, %for.end.461
  %259 = load i32, i32* %k, align 4
  %cmp464 = icmp slt i32 %259, 2
  br i1 %cmp464, label %for.body.466, label %for.end.474

for.body.466:                                     ; preds = %for.cond.463
  %260 = load i32, i32* %color, align 4
  %arraydecay467 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i32 0
  %call468 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_offensive_patterns, i32 %260, %struct.owl_move_data* %arraydecay467, i32 1)
  %tobool469 = icmp ne i32 %call468, 0
  br i1 %tobool469, label %if.end.471, label %if.then.470

if.then.470:                                      ; preds = %for.body.466
  br label %for.end.474

if.end.471:                                       ; preds = %for.body.466
  br label %for.inc.472

for.inc.472:                                      ; preds = %if.end.471
  %261 = load i32, i32* %k, align 4
  %inc473 = add nsw i32 %261, 1
  store i32 %inc473, i32* %k, align 4
  br label %for.cond.463

for.end.474:                                      ; preds = %if.then.470, %for.cond.463
  store i32 0, i32* %k, align 4
  br label %for.cond.475

for.cond.475:                                     ; preds = %for.inc.536, %for.end.474
  %262 = load i32, i32* %k, align 4
  %cmp476 = icmp slt i32 %262, 2
  br i1 %cmp476, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.475
  %263 = load i32, i32* %k, align 4
  %idxprom478 = sext i32 %263 to i64
  %arrayidx479 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom478
  %pos480 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx479, i32 0, i32 0
  %264 = load i32, i32* %pos480, align 4
  %cmp481 = icmp ne i32 %264, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.475
  %265 = phi i1 [ false, %for.cond.475 ], [ %cmp481, %land.rhs ]
  br i1 %265, label %for.body.483, label %for.end.538

for.body.483:                                     ; preds = %land.end
  %266 = load i32, i32* %k, align 4
  %idxprom484 = sext i32 %266 to i64
  %arrayidx485 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom484
  %pos486 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx485, i32 0, i32 0
  %267 = load i32, i32* %pos486, align 4
  %268 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call487 = call i32 @liberty_of_goal(i32 %267, %struct.local_owl_data* %268)
  %tobool488 = icmp ne i32 %call487, 0
  br i1 %tobool488, label %if.then.489, label %if.end.514

if.then.489:                                      ; preds = %for.body.483
  %269 = load i32, i32* %k, align 4
  %idxprom490 = sext i32 %269 to i64
  %arrayidx491 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom490
  %pos492 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx491, i32 0, i32 0
  %270 = load i32, i32* %pos492, align 4
  %271 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call493 = call i32 @liberty_of_goal(i32 %270, %struct.local_owl_data* %271)
  %tobool494 = icmp ne i32 %call493, 0
  br i1 %tobool494, label %if.else.504, label %if.then.495

if.then.495:                                      ; preds = %if.then.489
  %272 = load i32, i32* %k, align 4
  %idxprom496 = sext i32 %272 to i64
  %arrayidx497 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom496
  %pos498 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx497, i32 0, i32 0
  %273 = load i32, i32* %pos498, align 4
  %274 = load i32, i32* %color, align 4
  %call499 = call i32 @safe_move(i32 %273, i32 %274)
  %tobool500 = icmp ne i32 %call499, 0
  br i1 %tobool500, label %if.then.501, label %if.else.502

if.then.501:                                      ; preds = %if.then.495
  store i32 1, i32* %safe_outside_liberty_found, align 4
  br label %if.end.503

if.else.502:                                      ; preds = %if.then.495
  store i32 1, i32* %unsafe_outside_liberty_found, align 4
  br label %if.end.503

if.end.503:                                       ; preds = %if.else.502, %if.then.501
  br label %if.end.513

if.else.504:                                      ; preds = %if.then.489
  %275 = load i32, i32* %k, align 4
  %idxprom505 = sext i32 %275 to i64
  %arrayidx506 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom505
  %pos507 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx506, i32 0, i32 0
  %276 = load i32, i32* %pos507, align 4
  %277 = load i32, i32* %color, align 4
  %call508 = call i32 @safe_move(i32 %276, i32 %277)
  %tobool509 = icmp ne i32 %call508, 0
  br i1 %tobool509, label %if.then.510, label %if.else.511

if.then.510:                                      ; preds = %if.else.504
  store i32 1, i32* %safe_common_liberty_found, align 4
  br label %if.end.512

if.else.511:                                      ; preds = %if.else.504
  store i32 1, i32* %unsafe_common_liberty_found, align 4
  br label %if.end.512

if.end.512:                                       ; preds = %if.else.511, %if.then.510
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %if.end.503
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %for.body.483
  %278 = load i32, i32* %k, align 4
  %idxprom515 = sext i32 %278 to i64
  %arrayidx516 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom515
  %pos517 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx516, i32 0, i32 0
  %279 = load i32, i32* %pos517, align 4
  %idxprom518 = sext i32 %279 to i64
  %arrayidx519 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom518
  store i8 1, i8* %arrayidx519, align 1
  %280 = load i32, i32* %k, align 4
  %idxprom520 = sext i32 %280 to i64
  %arrayidx521 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom520
  %pos522 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx521, i32 0, i32 0
  %281 = load i32, i32* %pos522, align 4
  %282 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %283 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %284 = load i32, i32* %k, align 4
  %idxprom523 = sext i32 %284 to i64
  %arrayidx524 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom523
  %value525 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx524, i32 0, i32 1
  %285 = load i32, i32* %value525, align 4
  %call526 = call i32 @semeai_move_value(i32 %281, %struct.local_owl_data* %282, %struct.local_owl_data* %283, i32 %285)
  store i32 %call526, i32* %move_value, align 4
  %arraydecay527 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %286 = load i32, i32* %k, align 4
  %idxprom528 = sext i32 %286 to i64
  %arrayidx529 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom528
  %pos530 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx529, i32 0, i32 0
  %287 = load i32, i32* %pos530, align 4
  %288 = load i32, i32* %move_value, align 4
  %289 = load i32, i32* %k, align 4
  %idxprom531 = sext i32 %289 to i64
  %arrayidx532 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom531
  %same_dragon533 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx532, i32 0, i32 3
  %290 = load i32, i32* %same_dragon533, align 4
  %291 = load i32, i32* %k, align 4
  %idxprom534 = sext i32 %291 to i64
  %arrayidx535 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_defensive_moves, i32 0, i64 %idxprom534
  %escape = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx535, i32 0, i32 4
  %292 = load i32, i32* %escape, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay527, i32 %287, i32 %288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i32 %290, i32 %292, i32 0)
  br label %for.inc.536

for.inc.536:                                      ; preds = %if.end.514
  %293 = load i32, i32* %k, align 4
  %inc537 = add nsw i32 %293, 1
  store i32 %inc537, i32* %k, align 4
  br label %for.cond.475

for.end.538:                                      ; preds = %land.end
  store i32 0, i32* %k, align 4
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.611, %for.end.538
  %294 = load i32, i32* %k, align 4
  %cmp540 = icmp slt i32 %294, 2
  br i1 %cmp540, label %land.rhs.542, label %land.end.548

land.rhs.542:                                     ; preds = %for.cond.539
  %295 = load i32, i32* %k, align 4
  %idxprom543 = sext i32 %295 to i64
  %arrayidx544 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom543
  %pos545 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx544, i32 0, i32 0
  %296 = load i32, i32* %pos545, align 4
  %cmp546 = icmp ne i32 %296, 0
  br label %land.end.548

land.end.548:                                     ; preds = %land.rhs.542, %for.cond.539
  %297 = phi i1 [ false, %for.cond.539 ], [ %cmp546, %land.rhs.542 ]
  br i1 %297, label %for.body.549, label %for.end.613

for.body.549:                                     ; preds = %land.end.548
  %298 = load i32, i32* %k, align 4
  %idxprom550 = sext i32 %298 to i64
  %arrayidx551 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom550
  %pos552 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx551, i32 0, i32 0
  %299 = load i32, i32* %pos552, align 4
  %300 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call553 = call i32 @liberty_of_goal(i32 %299, %struct.local_owl_data* %300)
  %tobool554 = icmp ne i32 %call553, 0
  br i1 %tobool554, label %if.then.555, label %if.end.580

if.then.555:                                      ; preds = %for.body.549
  %301 = load i32, i32* %k, align 4
  %idxprom556 = sext i32 %301 to i64
  %arrayidx557 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom556
  %pos558 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx557, i32 0, i32 0
  %302 = load i32, i32* %pos558, align 4
  %303 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call559 = call i32 @liberty_of_goal(i32 %302, %struct.local_owl_data* %303)
  %tobool560 = icmp ne i32 %call559, 0
  br i1 %tobool560, label %if.else.570, label %if.then.561

if.then.561:                                      ; preds = %if.then.555
  %304 = load i32, i32* %k, align 4
  %idxprom562 = sext i32 %304 to i64
  %arrayidx563 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom562
  %pos564 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx563, i32 0, i32 0
  %305 = load i32, i32* %pos564, align 4
  %306 = load i32, i32* %color, align 4
  %call565 = call i32 @safe_move(i32 %305, i32 %306)
  %tobool566 = icmp ne i32 %call565, 0
  br i1 %tobool566, label %if.then.567, label %if.else.568

if.then.567:                                      ; preds = %if.then.561
  store i32 1, i32* %safe_outside_liberty_found, align 4
  br label %if.end.569

if.else.568:                                      ; preds = %if.then.561
  store i32 1, i32* %unsafe_outside_liberty_found, align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.568, %if.then.567
  br label %if.end.579

if.else.570:                                      ; preds = %if.then.555
  %307 = load i32, i32* %k, align 4
  %idxprom571 = sext i32 %307 to i64
  %arrayidx572 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom571
  %pos573 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx572, i32 0, i32 0
  %308 = load i32, i32* %pos573, align 4
  %309 = load i32, i32* %color, align 4
  %call574 = call i32 @safe_move(i32 %308, i32 %309)
  %tobool575 = icmp ne i32 %call574, 0
  br i1 %tobool575, label %if.then.576, label %if.else.577

if.then.576:                                      ; preds = %if.else.570
  store i32 1, i32* %safe_common_liberty_found, align 4
  br label %if.end.578

if.else.577:                                      ; preds = %if.else.570
  store i32 1, i32* %unsafe_common_liberty_found, align 4
  br label %if.end.578

if.end.578:                                       ; preds = %if.else.577, %if.then.576
  br label %if.end.579

if.end.579:                                       ; preds = %if.end.578, %if.end.569
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %for.body.549
  %310 = load i32, i32* %k, align 4
  %idxprom581 = sext i32 %310 to i64
  %arrayidx582 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom581
  %pos583 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx582, i32 0, i32 0
  %311 = load i32, i32* %pos583, align 4
  %idxprom584 = sext i32 %311 to i64
  %arrayidx585 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom584
  store i8 1, i8* %arrayidx585, align 1
  %312 = load i32, i32* %k, align 4
  %idxprom586 = sext i32 %312 to i64
  %arrayidx587 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom586
  %pos588 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx587, i32 0, i32 0
  %313 = load i32, i32* %pos588, align 4
  %314 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call589 = call i32 @liberty_of_goal(i32 %313, %struct.local_owl_data* %314)
  %tobool590 = icmp ne i32 %call589, 0
  br i1 %tobool590, label %if.then.591, label %if.else.592

if.then.591:                                      ; preds = %if.end.580
  store i32 2, i32* %same_dragon, align 4
  br label %if.end.593

if.else.592:                                      ; preds = %if.end.580
  store i32 0, i32* %same_dragon, align 4
  br label %if.end.593

if.end.593:                                       ; preds = %if.else.592, %if.then.591
  %315 = load i32, i32* %k, align 4
  %idxprom594 = sext i32 %315 to i64
  %arrayidx595 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom594
  %pos596 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx595, i32 0, i32 0
  %316 = load i32, i32* %pos596, align 4
  %317 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %318 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %319 = load i32, i32* %k, align 4
  %idxprom597 = sext i32 %319 to i64
  %arrayidx598 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom597
  %value599 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx598, i32 0, i32 1
  %320 = load i32, i32* %value599, align 4
  %call600 = call i32 @semeai_move_value(i32 %316, %struct.local_owl_data* %317, %struct.local_owl_data* %318, i32 %320)
  store i32 %call600, i32* %move_value, align 4
  %arraydecay601 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %321 = load i32, i32* %k, align 4
  %idxprom602 = sext i32 %321 to i64
  %arrayidx603 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom602
  %pos604 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx603, i32 0, i32 0
  %322 = load i32, i32* %pos604, align 4
  %323 = load i32, i32* %move_value, align 4
  %324 = load i32, i32* %k, align 4
  %idxprom605 = sext i32 %324 to i64
  %arrayidx606 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom605
  %name607 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx606, i32 0, i32 2
  %325 = load i8*, i8** %name607, align 8
  %326 = load i32, i32* %same_dragon, align 4
  %327 = load i32, i32* %k, align 4
  %idxprom608 = sext i32 %327 to i64
  %arrayidx609 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_offensive_moves, i32 0, i64 %idxprom608
  %escape610 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx609, i32 0, i32 4
  %328 = load i32, i32* %escape610, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay601, i32 %322, i32 %323, i8* %325, i32 %326, i32 %328, i32 0)
  br label %for.inc.611

for.inc.611:                                      ; preds = %if.end.593
  %329 = load i32, i32* %k, align 4
  %inc612 = add nsw i32 %329, 1
  store i32 %inc612, i32* %k, align 4
  br label %for.cond.539

for.end.613:                                      ; preds = %land.end.548
  store i32 0, i32* %k, align 4
  br label %for.cond.614

for.cond.614:                                     ; preds = %for.inc.681, %for.end.613
  %330 = load i32, i32* %k, align 4
  %cmp615 = icmp slt i32 %330, 2
  br i1 %cmp615, label %land.rhs.617, label %land.end.623

land.rhs.617:                                     ; preds = %for.cond.614
  %331 = load i32, i32* %k, align 4
  %idxprom618 = sext i32 %331 to i64
  %arrayidx619 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom618
  %pos620 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx619, i32 0, i32 0
  %332 = load i32, i32* %pos620, align 4
  %cmp621 = icmp ne i32 %332, 0
  br label %land.end.623

land.end.623:                                     ; preds = %land.rhs.617, %for.cond.614
  %333 = phi i1 [ false, %for.cond.614 ], [ %cmp621, %land.rhs.617 ]
  br i1 %333, label %for.body.624, label %for.end.683

for.body.624:                                     ; preds = %land.end.623
  %334 = load i32, i32* %k, align 4
  %idxprom625 = sext i32 %334 to i64
  %arrayidx626 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom625
  %pos627 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx626, i32 0, i32 0
  %335 = load i32, i32* %pos627, align 4
  %336 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call628 = call i32 @liberty_of_goal(i32 %335, %struct.local_owl_data* %336)
  %tobool629 = icmp ne i32 %call628, 0
  br i1 %tobool629, label %if.then.630, label %if.end.655

if.then.630:                                      ; preds = %for.body.624
  %337 = load i32, i32* %k, align 4
  %idxprom631 = sext i32 %337 to i64
  %arrayidx632 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom631
  %pos633 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx632, i32 0, i32 0
  %338 = load i32, i32* %pos633, align 4
  %339 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call634 = call i32 @liberty_of_goal(i32 %338, %struct.local_owl_data* %339)
  %tobool635 = icmp ne i32 %call634, 0
  br i1 %tobool635, label %if.else.645, label %if.then.636

if.then.636:                                      ; preds = %if.then.630
  %340 = load i32, i32* %k, align 4
  %idxprom637 = sext i32 %340 to i64
  %arrayidx638 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom637
  %pos639 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx638, i32 0, i32 0
  %341 = load i32, i32* %pos639, align 4
  %342 = load i32, i32* %color, align 4
  %call640 = call i32 @safe_move(i32 %341, i32 %342)
  %tobool641 = icmp ne i32 %call640, 0
  br i1 %tobool641, label %if.then.642, label %if.else.643

if.then.642:                                      ; preds = %if.then.636
  store i32 1, i32* %safe_outside_liberty_found, align 4
  br label %if.end.644

if.else.643:                                      ; preds = %if.then.636
  store i32 1, i32* %unsafe_outside_liberty_found, align 4
  br label %if.end.644

if.end.644:                                       ; preds = %if.else.643, %if.then.642
  br label %if.end.654

if.else.645:                                      ; preds = %if.then.630
  %343 = load i32, i32* %k, align 4
  %idxprom646 = sext i32 %343 to i64
  %arrayidx647 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom646
  %pos648 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx647, i32 0, i32 0
  %344 = load i32, i32* %pos648, align 4
  %345 = load i32, i32* %color, align 4
  %call649 = call i32 @safe_move(i32 %344, i32 %345)
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.then.651, label %if.else.652

if.then.651:                                      ; preds = %if.else.645
  store i32 1, i32* %safe_common_liberty_found, align 4
  br label %if.end.653

if.else.652:                                      ; preds = %if.else.645
  store i32 1, i32* %unsafe_common_liberty_found, align 4
  br label %if.end.653

if.end.653:                                       ; preds = %if.else.652, %if.then.651
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.end.644
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %for.body.624
  %346 = load i32, i32* %k, align 4
  %idxprom656 = sext i32 %346 to i64
  %arrayidx657 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom656
  %pos658 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx657, i32 0, i32 0
  %347 = load i32, i32* %pos658, align 4
  %idxprom659 = sext i32 %347 to i64
  %arrayidx660 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom659
  store i8 1, i8* %arrayidx660, align 1
  %348 = load i32, i32* %k, align 4
  %idxprom661 = sext i32 %348 to i64
  %arrayidx662 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom661
  %pos663 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx662, i32 0, i32 0
  %349 = load i32, i32* %pos663, align 4
  %350 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %351 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %352 = load i32, i32* %k, align 4
  %idxprom664 = sext i32 %352 to i64
  %arrayidx665 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom664
  %value666 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx665, i32 0, i32 1
  %353 = load i32, i32* %value666, align 4
  %call667 = call i32 @semeai_move_value(i32 %349, %struct.local_owl_data* %350, %struct.local_owl_data* %351, i32 %353)
  store i32 %call667, i32* %move_value, align 4
  %arraydecay668 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %354 = load i32, i32* %k, align 4
  %idxprom669 = sext i32 %354 to i64
  %arrayidx670 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom669
  %pos671 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx670, i32 0, i32 0
  %355 = load i32, i32* %pos671, align 4
  %356 = load i32, i32* %move_value, align 4
  %357 = load i32, i32* %k, align 4
  %idxprom672 = sext i32 %357 to i64
  %arrayidx673 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom672
  %name674 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx673, i32 0, i32 2
  %358 = load i8*, i8** %name674, align 8
  %359 = load i32, i32* %k, align 4
  %idxprom675 = sext i32 %359 to i64
  %arrayidx676 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom675
  %same_dragon677 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx676, i32 0, i32 3
  %360 = load i32, i32* %same_dragon677, align 4
  %361 = load i32, i32* %k, align 4
  %idxprom678 = sext i32 %361 to i64
  %arrayidx679 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_defensive_moves, i32 0, i64 %idxprom678
  %escape680 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx679, i32 0, i32 4
  %362 = load i32, i32* %escape680, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay668, i32 %355, i32 %356, i8* %358, i32 %360, i32 %362, i32 0)
  br label %for.inc.681

for.inc.681:                                      ; preds = %if.end.655
  %363 = load i32, i32* %k, align 4
  %inc682 = add nsw i32 %363, 1
  store i32 %inc682, i32* %k, align 4
  br label %for.cond.614

for.end.683:                                      ; preds = %land.end.623
  store i32 0, i32* %k, align 4
  br label %for.cond.684

for.cond.684:                                     ; preds = %for.inc.756, %for.end.683
  %364 = load i32, i32* %k, align 4
  %cmp685 = icmp slt i32 %364, 2
  br i1 %cmp685, label %land.rhs.687, label %land.end.693

land.rhs.687:                                     ; preds = %for.cond.684
  %365 = load i32, i32* %k, align 4
  %idxprom688 = sext i32 %365 to i64
  %arrayidx689 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom688
  %pos690 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx689, i32 0, i32 0
  %366 = load i32, i32* %pos690, align 4
  %cmp691 = icmp ne i32 %366, 0
  br label %land.end.693

land.end.693:                                     ; preds = %land.rhs.687, %for.cond.684
  %367 = phi i1 [ false, %for.cond.684 ], [ %cmp691, %land.rhs.687 ]
  br i1 %367, label %for.body.694, label %for.end.758

for.body.694:                                     ; preds = %land.end.693
  %368 = load i32, i32* %k, align 4
  %idxprom695 = sext i32 %368 to i64
  %arrayidx696 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom695
  %pos697 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx696, i32 0, i32 0
  %369 = load i32, i32* %pos697, align 4
  %370 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call698 = call i32 @liberty_of_goal(i32 %369, %struct.local_owl_data* %370)
  %tobool699 = icmp ne i32 %call698, 0
  br i1 %tobool699, label %if.then.700, label %if.end.725

if.then.700:                                      ; preds = %for.body.694
  %371 = load i32, i32* %k, align 4
  %idxprom701 = sext i32 %371 to i64
  %arrayidx702 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom701
  %pos703 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx702, i32 0, i32 0
  %372 = load i32, i32* %pos703, align 4
  %373 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call704 = call i32 @liberty_of_goal(i32 %372, %struct.local_owl_data* %373)
  %tobool705 = icmp ne i32 %call704, 0
  br i1 %tobool705, label %if.else.715, label %if.then.706

if.then.706:                                      ; preds = %if.then.700
  %374 = load i32, i32* %k, align 4
  %idxprom707 = sext i32 %374 to i64
  %arrayidx708 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom707
  %pos709 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx708, i32 0, i32 0
  %375 = load i32, i32* %pos709, align 4
  %376 = load i32, i32* %color, align 4
  %call710 = call i32 @safe_move(i32 %375, i32 %376)
  %tobool711 = icmp ne i32 %call710, 0
  br i1 %tobool711, label %if.then.712, label %if.else.713

if.then.712:                                      ; preds = %if.then.706
  store i32 1, i32* %safe_outside_liberty_found, align 4
  br label %if.end.714

if.else.713:                                      ; preds = %if.then.706
  store i32 1, i32* %unsafe_outside_liberty_found, align 4
  br label %if.end.714

if.end.714:                                       ; preds = %if.else.713, %if.then.712
  br label %if.end.724

if.else.715:                                      ; preds = %if.then.700
  %377 = load i32, i32* %k, align 4
  %idxprom716 = sext i32 %377 to i64
  %arrayidx717 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom716
  %pos718 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx717, i32 0, i32 0
  %378 = load i32, i32* %pos718, align 4
  %379 = load i32, i32* %color, align 4
  %call719 = call i32 @safe_move(i32 %378, i32 %379)
  %tobool720 = icmp ne i32 %call719, 0
  br i1 %tobool720, label %if.then.721, label %if.else.722

if.then.721:                                      ; preds = %if.else.715
  store i32 1, i32* %safe_common_liberty_found, align 4
  br label %if.end.723

if.else.722:                                      ; preds = %if.else.715
  store i32 1, i32* %unsafe_common_liberty_found, align 4
  br label %if.end.723

if.end.723:                                       ; preds = %if.else.722, %if.then.721
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %if.end.714
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %for.body.694
  %380 = load i32, i32* %k, align 4
  %idxprom726 = sext i32 %380 to i64
  %arrayidx727 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom726
  %pos728 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx727, i32 0, i32 0
  %381 = load i32, i32* %pos728, align 4
  %idxprom729 = sext i32 %381 to i64
  %arrayidx730 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom729
  store i8 1, i8* %arrayidx730, align 1
  %382 = load i32, i32* %k, align 4
  %idxprom731 = sext i32 %382 to i64
  %arrayidx732 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom731
  %pos733 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx732, i32 0, i32 0
  %383 = load i32, i32* %pos733, align 4
  %384 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call734 = call i32 @liberty_of_goal(i32 %383, %struct.local_owl_data* %384)
  %tobool735 = icmp ne i32 %call734, 0
  br i1 %tobool735, label %if.then.736, label %if.else.737

if.then.736:                                      ; preds = %if.end.725
  store i32 2, i32* %same_dragon, align 4
  br label %if.end.738

if.else.737:                                      ; preds = %if.end.725
  store i32 0, i32* %same_dragon, align 4
  br label %if.end.738

if.end.738:                                       ; preds = %if.else.737, %if.then.736
  %385 = load i32, i32* %k, align 4
  %idxprom739 = sext i32 %385 to i64
  %arrayidx740 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom739
  %pos741 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx740, i32 0, i32 0
  %386 = load i32, i32* %pos741, align 4
  %387 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %388 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %389 = load i32, i32* %k, align 4
  %idxprom742 = sext i32 %389 to i64
  %arrayidx743 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom742
  %value744 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx743, i32 0, i32 1
  %390 = load i32, i32* %value744, align 4
  %call745 = call i32 @semeai_move_value(i32 %386, %struct.local_owl_data* %387, %struct.local_owl_data* %388, i32 %390)
  store i32 %call745, i32* %move_value, align 4
  %arraydecay746 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %391 = load i32, i32* %k, align 4
  %idxprom747 = sext i32 %391 to i64
  %arrayidx748 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom747
  %pos749 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx748, i32 0, i32 0
  %392 = load i32, i32* %pos749, align 4
  %393 = load i32, i32* %move_value, align 4
  %394 = load i32, i32* %k, align 4
  %idxprom750 = sext i32 %394 to i64
  %arrayidx751 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom750
  %name752 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx751, i32 0, i32 2
  %395 = load i8*, i8** %name752, align 8
  %396 = load i32, i32* %same_dragon, align 4
  %397 = load i32, i32* %k, align 4
  %idxprom753 = sext i32 %397 to i64
  %arrayidx754 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_offensive_moves, i32 0, i64 %idxprom753
  %escape755 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx754, i32 0, i32 4
  %398 = load i32, i32* %escape755, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay746, i32 %392, i32 %393, i8* %395, i32 %396, i32 %398, i32 0)
  br label %for.inc.756

for.inc.756:                                      ; preds = %if.end.738
  %399 = load i32, i32* %k, align 4
  %inc757 = add nsw i32 %399, 1
  store i32 %inc757, i32* %k, align 4
  br label %for.cond.684

for.end.758:                                      ; preds = %land.end.693
  %arrayidx759 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 0
  %pos760 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx759, i32 0, i32 0
  %400 = load i32, i32* %pos760, align 4
  %cmp761 = icmp eq i32 %400, 0
  br i1 %cmp761, label %if.then.763, label %if.end.764

if.then.763:                                      ; preds = %for.end.758
  store i32 0, i32* %owl_phase.addr, align 4
  br label %if.end.764

if.end.764:                                       ; preds = %if.then.763, %for.end.758
  br label %if.end.765

if.end.765:                                       ; preds = %if.end.764, %if.end.151
  %401 = load i32, i32* %safe_outside_liberty_found, align 4
  %tobool766 = icmp ne i32 %401, 0
  br i1 %tobool766, label %if.end.839, label %land.lhs.true.767

land.lhs.true.767:                                ; preds = %if.end.765
  %arrayidx768 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 0
  %value769 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx768, i32 0, i32 1
  %402 = load i32, i32* %value769, align 4
  %cmp770 = icmp slt i32 %402, 100
  br i1 %cmp770, label %if.then.772, label %if.end.839

if.then.772:                                      ; preds = %land.lhs.true.767
  store i32 0, i32* %m, align 4
  br label %for.cond.773

for.cond.773:                                     ; preds = %for.inc.836, %if.then.772
  %403 = load i32, i32* %safe_outside_liberty_found, align 4
  %tobool774 = icmp ne i32 %403, 0
  br i1 %tobool774, label %land.end.778, label %land.rhs.775

land.rhs.775:                                     ; preds = %for.cond.773
  %404 = load i32, i32* %m, align 4
  %405 = load i32, i32* @board_size, align 4
  %cmp776 = icmp slt i32 %404, %405
  br label %land.end.778

land.end.778:                                     ; preds = %land.rhs.775, %for.cond.773
  %406 = phi i1 [ false, %for.cond.773 ], [ %cmp776, %land.rhs.775 ]
  br i1 %406, label %for.body.779, label %for.end.838

for.body.779:                                     ; preds = %land.end.778
  store i32 0, i32* %n, align 4
  br label %for.cond.780

for.cond.780:                                     ; preds = %for.inc.833, %for.body.779
  %407 = load i32, i32* %safe_outside_liberty_found, align 4
  %tobool781 = icmp ne i32 %407, 0
  br i1 %tobool781, label %land.end.785, label %land.rhs.782

land.rhs.782:                                     ; preds = %for.cond.780
  %408 = load i32, i32* %n, align 4
  %409 = load i32, i32* @board_size, align 4
  %cmp783 = icmp slt i32 %408, %409
  br label %land.end.785

land.end.785:                                     ; preds = %land.rhs.782, %for.cond.780
  %410 = phi i1 [ false, %for.cond.780 ], [ %cmp783, %land.rhs.782 ]
  br i1 %410, label %for.body.786, label %for.end.835

for.body.786:                                     ; preds = %land.end.785
  %411 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %411, 20
  %add = add nsw i32 21, %mul
  %412 = load i32, i32* %n, align 4
  %add788 = add nsw i32 %add, %412
  store i32 %add788, i32* %pos787, align 4
  %413 = load i32, i32* %pos787, align 4
  %idxprom789 = sext i32 %413 to i64
  %arrayidx790 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom789
  %414 = load i8, i8* %arrayidx790, align 1
  %conv791 = zext i8 %414 to i32
  %cmp792 = icmp eq i32 %conv791, 0
  br i1 %cmp792, label %land.lhs.true.794, label %if.end.832

land.lhs.true.794:                                ; preds = %for.body.786
  %415 = load i32, i32* %pos787, align 4
  %idxprom795 = sext i32 %415 to i64
  %arrayidx796 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom795
  %416 = load i8, i8* %arrayidx796, align 1
  %tobool797 = icmp ne i8 %416, 0
  br i1 %tobool797, label %if.end.832, label %if.then.798

if.then.798:                                      ; preds = %land.lhs.true.794
  %417 = load i32, i32* %pos787, align 4
  %418 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call799 = call i32 @liberty_of_goal(i32 %417, %struct.local_owl_data* %418)
  %tobool800 = icmp ne i32 %call799, 0
  br i1 %tobool800, label %if.then.801, label %if.end.831

if.then.801:                                      ; preds = %if.then.798
  %419 = load i32, i32* %pos787, align 4
  %420 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call802 = call i32 @liberty_of_goal(i32 %419, %struct.local_owl_data* %420)
  %tobool803 = icmp ne i32 %call802, 0
  br i1 %tobool803, label %if.else.823, label %if.then.804

if.then.804:                                      ; preds = %if.then.801
  %421 = load i32, i32* %pos787, align 4
  %422 = load i32, i32* %color, align 4
  %call805 = call i32 @safe_move(i32 %421, i32 %422)
  %tobool806 = icmp ne i32 %call805, 0
  br i1 %tobool806, label %if.then.807, label %if.else.809

if.then.807:                                      ; preds = %if.then.804
  store i32 1, i32* %safe_outside_liberty_found, align 4
  %423 = load i32, i32* %pos787, align 4
  %pos808 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %outside_liberty, i32 0, i32 0
  store i32 %423, i32* %pos808, align 4
  br label %if.end.822

if.else.809:                                      ; preds = %if.then.804
  %424 = load i32, i32* %safe_outside_liberty_found, align 4
  %tobool810 = icmp ne i32 %424, 0
  br i1 %tobool810, label %if.end.821, label %if.then.811

if.then.811:                                      ; preds = %if.else.809
  %425 = load i32, i32* %backfilling_move_found, align 4
  %tobool812 = icmp ne i32 %425, 0
  br i1 %tobool812, label %if.end.820, label %if.then.813

if.then.813:                                      ; preds = %if.then.811
  %426 = load i32, i32* %bpos.addr, align 4
  %427 = load i32, i32* %pos787, align 4
  %call814 = call i32 @find_semeai_backfilling_move(i32 %426, i32 %427)
  %pos815 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  store i32 %call814, i32* %pos815, align 4
  %pos816 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  %428 = load i32, i32* %pos816, align 4
  %tobool817 = icmp ne i32 %428, 0
  br i1 %tobool817, label %if.then.818, label %if.end.819

if.then.818:                                      ; preds = %if.then.813
  store i32 1, i32* %backfilling_move_found, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.818, %if.then.813
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %if.then.811
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.else.809
  br label %if.end.822

if.end.822:                                       ; preds = %if.end.821, %if.then.807
  br label %if.end.830

if.else.823:                                      ; preds = %if.then.801
  %429 = load i32, i32* %pos787, align 4
  %430 = load i32, i32* %color, align 4
  %call824 = call i32 @safe_move(i32 %429, i32 %430)
  %tobool825 = icmp ne i32 %call824, 0
  br i1 %tobool825, label %if.then.826, label %if.else.828

if.then.826:                                      ; preds = %if.else.823
  store i32 1, i32* %safe_common_liberty_found, align 4
  %431 = load i32, i32* %pos787, align 4
  %pos827 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %common_liberty, i32 0, i32 0
  store i32 %431, i32* %pos827, align 4
  br label %if.end.829

if.else.828:                                      ; preds = %if.else.823
  store i32 1, i32* %unsafe_common_liberty_found, align 4
  br label %if.end.829

if.end.829:                                       ; preds = %if.else.828, %if.then.826
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.end.822
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %if.then.798
  br label %if.end.832

if.end.832:                                       ; preds = %if.end.831, %land.lhs.true.794, %for.body.786
  br label %for.inc.833

for.inc.833:                                      ; preds = %if.end.832
  %432 = load i32, i32* %n, align 4
  %inc834 = add nsw i32 %432, 1
  store i32 %inc834, i32* %n, align 4
  br label %for.cond.780

for.end.835:                                      ; preds = %land.end.785
  br label %for.inc.836

for.inc.836:                                      ; preds = %for.end.835
  %433 = load i32, i32* %m, align 4
  %inc837 = add nsw i32 %433, 1
  store i32 %inc837, i32* %m, align 4
  br label %for.cond.773

for.end.838:                                      ; preds = %land.end.778
  br label %if.end.839

if.end.839:                                       ; preds = %for.end.838, %land.lhs.true.767, %if.end.765
  %434 = bitcast [400 x i32]* %ma to i8*
  call void @llvm.memset.p0i8.i64(i8* %434, i8 0, i64 1600, i32 16, i1 false)
  store i32 0, i32* %m, align 4
  br label %for.cond.840

for.cond.840:                                     ; preds = %for.inc.961, %if.end.839
  %435 = load i32, i32* %m, align 4
  %436 = load i32, i32* @board_size, align 4
  %cmp841 = icmp slt i32 %435, %436
  br i1 %cmp841, label %for.body.843, label %for.end.963

for.body.843:                                     ; preds = %for.cond.840
  store i32 0, i32* %n, align 4
  br label %for.cond.844

for.cond.844:                                     ; preds = %for.inc.958, %for.body.843
  %437 = load i32, i32* %n, align 4
  %438 = load i32, i32* @board_size, align 4
  %cmp845 = icmp slt i32 %437, %438
  br i1 %cmp845, label %for.body.847, label %for.end.960

for.body.847:                                     ; preds = %for.cond.844
  %439 = load i32, i32* %m, align 4
  %mul849 = mul nsw i32 %439, 20
  %add850 = add nsw i32 21, %mul849
  %440 = load i32, i32* %n, align 4
  %add851 = add nsw i32 %add850, %440
  store i32 %add851, i32* %pos848, align 4
  %441 = load i32, i32* %pos848, align 4
  %idxprom852 = sext i32 %441 to i64
  %442 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %goal853 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %442, i32 0, i32 0
  %arrayidx854 = getelementptr inbounds [400 x i8], [400 x i8]* %goal853, i32 0, i64 %idxprom852
  %443 = load i8, i8* %arrayidx854, align 1
  %conv855 = sext i8 %443 to i32
  %tobool856 = icmp ne i32 %conv855, 0
  br i1 %tobool856, label %land.lhs.true.857, label %if.end.957

land.lhs.true.857:                                ; preds = %for.body.847
  %444 = load i32, i32* %pos848, align 4
  %idxprom858 = sext i32 %444 to i64
  %arrayidx859 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom858
  %445 = load i8, i8* %arrayidx859, align 1
  %conv860 = zext i8 %445 to i32
  %446 = load i32, i32* %other, align 4
  %cmp861 = icmp eq i32 %conv860, %446
  br i1 %cmp861, label %if.then.863, label %if.end.957

if.then.863:                                      ; preds = %land.lhs.true.857
  %447 = load i32, i32* %pos848, align 4
  %call864 = call i32 @find_origin(i32 %447)
  store i32 %call864, i32* %origin, align 4
  %448 = load i32, i32* %origin, align 4
  %idxprom865 = sext i32 %448 to i64
  %arrayidx866 = getelementptr inbounds [400 x i32], [400 x i32]* %ma, i32 0, i64 %idxprom865
  %449 = load i32, i32* %arrayidx866, align 4
  %tobool867 = icmp ne i32 %449, 0
  br i1 %tobool867, label %if.end.956, label %land.lhs.true.868

land.lhs.true.868:                                ; preds = %if.then.863
  %450 = load i32, i32* %pos848, align 4
  %add869 = add nsw i32 %450, 20
  %idxprom870 = sext i32 %add869 to i64
  %arrayidx871 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom870
  %451 = load i8, i8* %arrayidx871, align 1
  %conv872 = zext i8 %451 to i32
  %cmp873 = icmp ne i32 %conv872, 3
  br i1 %cmp873, label %land.lhs.true.875, label %lor.lhs.false.882

land.lhs.true.875:                                ; preds = %land.lhs.true.868
  %452 = load i32, i32* %pos848, align 4
  %add876 = add nsw i32 %452, 20
  %idxprom877 = sext i32 %add876 to i64
  %453 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal878 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %453, i32 0, i32 0
  %arrayidx879 = getelementptr inbounds [400 x i8], [400 x i8]* %goal878, i32 0, i64 %idxprom877
  %454 = load i8, i8* %arrayidx879, align 1
  %conv880 = sext i8 %454 to i32
  %tobool881 = icmp ne i32 %conv880, 0
  br i1 %tobool881, label %if.then.924, label %lor.lhs.false.882

lor.lhs.false.882:                                ; preds = %land.lhs.true.875, %land.lhs.true.868
  %455 = load i32, i32* %pos848, align 4
  %sub883 = sub nsw i32 %455, 1
  %idxprom884 = sext i32 %sub883 to i64
  %arrayidx885 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom884
  %456 = load i8, i8* %arrayidx885, align 1
  %conv886 = zext i8 %456 to i32
  %cmp887 = icmp ne i32 %conv886, 3
  br i1 %cmp887, label %land.lhs.true.889, label %lor.lhs.false.896

land.lhs.true.889:                                ; preds = %lor.lhs.false.882
  %457 = load i32, i32* %pos848, align 4
  %sub890 = sub nsw i32 %457, 1
  %idxprom891 = sext i32 %sub890 to i64
  %458 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal892 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %458, i32 0, i32 0
  %arrayidx893 = getelementptr inbounds [400 x i8], [400 x i8]* %goal892, i32 0, i64 %idxprom891
  %459 = load i8, i8* %arrayidx893, align 1
  %conv894 = sext i8 %459 to i32
  %tobool895 = icmp ne i32 %conv894, 0
  br i1 %tobool895, label %if.then.924, label %lor.lhs.false.896

lor.lhs.false.896:                                ; preds = %land.lhs.true.889, %lor.lhs.false.882
  %460 = load i32, i32* %pos848, align 4
  %sub897 = sub nsw i32 %460, 20
  %idxprom898 = sext i32 %sub897 to i64
  %arrayidx899 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom898
  %461 = load i8, i8* %arrayidx899, align 1
  %conv900 = zext i8 %461 to i32
  %cmp901 = icmp ne i32 %conv900, 3
  br i1 %cmp901, label %land.lhs.true.903, label %lor.lhs.false.910

land.lhs.true.903:                                ; preds = %lor.lhs.false.896
  %462 = load i32, i32* %pos848, align 4
  %sub904 = sub nsw i32 %462, 20
  %idxprom905 = sext i32 %sub904 to i64
  %463 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal906 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %463, i32 0, i32 0
  %arrayidx907 = getelementptr inbounds [400 x i8], [400 x i8]* %goal906, i32 0, i64 %idxprom905
  %464 = load i8, i8* %arrayidx907, align 1
  %conv908 = sext i8 %464 to i32
  %tobool909 = icmp ne i32 %conv908, 0
  br i1 %tobool909, label %if.then.924, label %lor.lhs.false.910

lor.lhs.false.910:                                ; preds = %land.lhs.true.903, %lor.lhs.false.896
  %465 = load i32, i32* %pos848, align 4
  %add911 = add nsw i32 %465, 1
  %idxprom912 = sext i32 %add911 to i64
  %arrayidx913 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom912
  %466 = load i8, i8* %arrayidx913, align 1
  %conv914 = zext i8 %466 to i32
  %cmp915 = icmp ne i32 %conv914, 3
  br i1 %cmp915, label %land.lhs.true.917, label %if.end.956

land.lhs.true.917:                                ; preds = %lor.lhs.false.910
  %467 = load i32, i32* %pos848, align 4
  %add918 = add nsw i32 %467, 1
  %idxprom919 = sext i32 %add918 to i64
  %468 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal920 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %468, i32 0, i32 0
  %arrayidx921 = getelementptr inbounds [400 x i8], [400 x i8]* %goal920, i32 0, i64 %idxprom919
  %469 = load i8, i8* %arrayidx921, align 1
  %conv922 = sext i8 %469 to i32
  %tobool923 = icmp ne i32 %conv922, 0
  br i1 %tobool923, label %if.then.924, label %if.end.956

if.then.924:                                      ; preds = %land.lhs.true.917, %land.lhs.true.903, %land.lhs.true.889, %land.lhs.true.875
  %470 = load i32, i32* %origin, align 4
  %call925 = call i32 @countlib(i32 %470)
  %cmp926 = icmp slt i32 %call925, 3
  br i1 %cmp926, label %land.lhs.true.928, label %if.else.952

land.lhs.true.928:                                ; preds = %if.then.924
  %471 = load i32, i32* %origin, align 4
  %call929 = call i32 @attack(i32 %471, i32* %upos)
  %tobool930 = icmp ne i32 %call929, 0
  br i1 %tobool930, label %if.then.931, label %if.else.952

if.then.931:                                      ; preds = %land.lhs.true.928
  %472 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %472, align 4
  %473 = load i32*, i32** %resultb.addr, align 8
  store i32 0, i32* %473, align 4
  %474 = load i32, i32* %upos, align 4
  %475 = load i32*, i32** %move.addr, align 8
  store i32 %474, i32* %475, align 4
  %476 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %476, %struct.SGFTree_t** @sgf_dumptree, align 8
  %477 = load i32, i32* %save_count_variations, align 4
  store i32 %477, i32* @count_variations, align 4
  %478 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool932 = icmp ne %struct.SGFTree_t* %478, null
  br i1 %tobool932, label %if.then.933, label %if.end.934

if.then.933:                                      ; preds = %if.then.931
  %479 = load i8*, i8** %read_function_name, align 8
  %480 = load i32, i32* %q1, align 4
  %481 = load i32, i32* %q2, align 4
  %482 = load i32, i32* %upos, align 4
  call void @sgf_trace2(i8* %479, i32 %480, i32 %481, i32 %482, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.934

if.end.934:                                       ; preds = %if.then.933, %if.then.931
  %483 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %483, %struct.matched_patterns_list_data* %shape_defensive_patterns)
  %484 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %484, %struct.matched_patterns_list_data* %shape_offensive_patterns)
  br label %do.body.935

do.body.935:                                      ; preds = %if.end.934
  %485 = load i32*, i32** %move.addr, align 8
  %cmp936 = icmp ne i32* %485, null
  br i1 %cmp936, label %if.then.938, label %if.end.939

if.then.938:                                      ; preds = %do.body.935
  %486 = load i32, i32* %upos, align 4
  %487 = load i32*, i32** %move.addr, align 8
  store i32 %486, i32* %487, align 4
  br label %if.end.939

if.end.939:                                       ; preds = %if.then.938, %do.body.935
  %488 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool940 = icmp ne %struct.read_result_t* %488, null
  br i1 %tobool940, label %if.then.941, label %if.end.950

if.then.941:                                      ; preds = %if.end.939
  %489 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2942 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %489, i32 0, i32 1
  %490 = load i32, i32* %data2942, align 4
  %and943 = and i32 %490, 1023
  %or944 = or i32 %and943, 536870912
  %or945 = or i32 %or944, 16777216
  %491 = load i32, i32* %upos, align 4
  %and946 = and i32 %491, 1023
  %shl947 = shl i32 %and946, 10
  %or948 = or i32 %or945, %shl947
  %492 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2949 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %492, i32 0, i32 1
  store i32 %or948, i32* %data2949, align 4
  br label %if.end.950

if.end.950:                                       ; preds = %if.then.941, %if.end.939
  br label %do.end.1215

do.end.951:                                       ; No predecessors!
  br label %if.end.955

if.else.952:                                      ; preds = %land.lhs.true.928, %if.then.924
  %493 = load i32, i32* %origin, align 4
  %idxprom953 = sext i32 %493 to i64
  %arrayidx954 = getelementptr inbounds [400 x i32], [400 x i32]* %ma, i32 0, i64 %idxprom953
  store i32 1, i32* %arrayidx954, align 4
  br label %if.end.955

if.end.955:                                       ; preds = %if.else.952, %do.end.951
  br label %if.end.956

if.end.956:                                       ; preds = %if.end.955, %land.lhs.true.917, %lor.lhs.false.910, %if.then.863
  br label %if.end.957

if.end.957:                                       ; preds = %if.end.956, %land.lhs.true.857, %for.body.847
  br label %for.inc.958

for.inc.958:                                      ; preds = %if.end.957
  %494 = load i32, i32* %n, align 4
  %inc959 = add nsw i32 %494, 1
  store i32 %inc959, i32* %n, align 4
  br label %for.cond.844

for.end.960:                                      ; preds = %for.cond.844
  br label %for.inc.961

for.inc.961:                                      ; preds = %for.end.960
  %495 = load i32, i32* %m, align 4
  %inc962 = add nsw i32 %495, 1
  store i32 %inc962, i32* %m, align 4
  br label %for.cond.840

for.end.963:                                      ; preds = %for.cond.840
  %496 = load i32, i32* %safe_outside_liberty_found, align 4
  %tobool964 = icmp ne i32 %496, 0
  br i1 %tobool964, label %land.lhs.true.965, label %if.else.974

land.lhs.true.965:                                ; preds = %for.end.963
  %pos966 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %outside_liberty, i32 0, i32 0
  %497 = load i32, i32* %pos966, align 4
  %cmp967 = icmp ne i32 %497, 0
  br i1 %cmp967, label %if.then.969, label %if.else.974

if.then.969:                                      ; preds = %land.lhs.true.965
  %pos970 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %outside_liberty, i32 0, i32 0
  %498 = load i32, i32* %pos970, align 4
  %499 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %500 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call971 = call i32 @semeai_move_value(i32 %498, %struct.local_owl_data* %499, %struct.local_owl_data* %500, i32 50)
  store i32 %call971, i32* %move_value, align 4
  %arraydecay972 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %pos973 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %outside_liberty, i32 0, i32 0
  %501 = load i32, i32* %pos973, align 4
  %502 = load i32, i32* %move_value, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay972, i32 %501, i32 %502, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 0)
  br label %if.end.998

if.else.974:                                      ; preds = %land.lhs.true.965, %for.end.963
  %503 = load i32, i32* %backfilling_move_found, align 4
  %tobool975 = icmp ne i32 %503, 0
  br i1 %tobool975, label %land.lhs.true.976, label %if.else.985

land.lhs.true.976:                                ; preds = %if.else.974
  %pos977 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  %504 = load i32, i32* %pos977, align 4
  %cmp978 = icmp ne i32 %504, 0
  br i1 %cmp978, label %if.then.980, label %if.else.985

if.then.980:                                      ; preds = %land.lhs.true.976
  %pos981 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  %505 = load i32, i32* %pos981, align 4
  %506 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %507 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call982 = call i32 @semeai_move_value(i32 %505, %struct.local_owl_data* %506, %struct.local_owl_data* %507, i32 50)
  store i32 %call982, i32* %move_value, align 4
  %arraydecay983 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %pos984 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %backfilling_move, i32 0, i32 0
  %508 = load i32, i32* %pos984, align 4
  %509 = load i32, i32* %move_value, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay983, i32 %508, i32 %509, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 0, i32 0)
  br label %if.end.997

if.else.985:                                      ; preds = %land.lhs.true.976, %if.else.974
  %510 = load i32, i32* %safe_common_liberty_found, align 4
  %tobool986 = icmp ne i32 %510, 0
  br i1 %tobool986, label %land.lhs.true.987, label %if.end.996

land.lhs.true.987:                                ; preds = %if.else.985
  %pos988 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %common_liberty, i32 0, i32 0
  %511 = load i32, i32* %pos988, align 4
  %cmp989 = icmp ne i32 %511, 0
  br i1 %cmp989, label %if.then.991, label %if.end.996

if.then.991:                                      ; preds = %land.lhs.true.987
  %pos992 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %common_liberty, i32 0, i32 0
  %512 = load i32, i32* %pos992, align 4
  %513 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %514 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %call993 = call i32 @semeai_move_value(i32 %512, %struct.local_owl_data* %513, %struct.local_owl_data* %514, i32 10)
  store i32 %call993, i32* %move_value, align 4
  %arraydecay994 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %pos995 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %common_liberty, i32 0, i32 0
  %515 = load i32, i32* %pos995, align 4
  %516 = load i32, i32* %move_value, align 4
  call void @owl_add_move(%struct.owl_move_data* %arraydecay994, i32 %515, i32 %516, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0), i32 1, i32 0, i32 0)
  br label %if.end.996

if.end.996:                                       ; preds = %if.then.991, %land.lhs.true.987, %if.else.985
  br label %if.end.997

if.end.997:                                       ; preds = %if.end.996, %if.then.980
  br label %if.end.998

if.end.998:                                       ; preds = %if.end.997, %if.then.969
  %517 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %517, %struct.SGFTree_t** @sgf_dumptree, align 8
  %518 = load i32, i32* %save_count_variations, align 4
  store i32 %518, i32* @count_variations, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.999

for.cond.999:                                     ; preds = %for.inc.1124, %if.end.998
  %519 = load i32, i32* %k, align 4
  %cmp1000 = icmp slt i32 %519, 6
  br i1 %cmp1000, label %for.body.1002, label %for.end.1126

for.body.1002:                                    ; preds = %for.cond.999
  %520 = load i32, i32* %k, align 4
  %idxprom1003 = sext i32 %520 to i64
  %arrayidx1004 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1003
  %pos1005 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1004, i32 0, i32 0
  %521 = load i32, i32* %pos1005, align 4
  store i32 %521, i32* %mpos, align 4
  %522 = load i32, i32* %k, align 4
  %cmp1006 = icmp sgt i32 %522, 2
  br i1 %cmp1006, label %if.then.1020, label %lor.lhs.false.1008

lor.lhs.false.1008:                               ; preds = %for.body.1002
  %523 = load i32, i32* @stackp, align 4
  %cmp1009 = icmp sgt i32 %523, 6
  br i1 %cmp1009, label %land.lhs.true.1011, label %lor.lhs.false.1014

land.lhs.true.1011:                               ; preds = %lor.lhs.false.1008
  %524 = load i32, i32* %k, align 4
  %cmp1012 = icmp sgt i32 %524, 1
  br i1 %cmp1012, label %if.then.1020, label %lor.lhs.false.1014

lor.lhs.false.1014:                               ; preds = %land.lhs.true.1011, %lor.lhs.false.1008
  %525 = load i32, i32* @stackp, align 4
  %cmp1015 = icmp sgt i32 %525, 12
  br i1 %cmp1015, label %land.lhs.true.1017, label %if.end.1021

land.lhs.true.1017:                               ; preds = %lor.lhs.false.1014
  %526 = load i32, i32* %k, align 4
  %cmp1018 = icmp sgt i32 %526, 0
  br i1 %cmp1018, label %if.then.1020, label %if.end.1021

if.then.1020:                                     ; preds = %land.lhs.true.1017, %land.lhs.true.1011, %for.body.1002
  br label %for.inc.1124

if.end.1021:                                      ; preds = %land.lhs.true.1017, %lor.lhs.false.1014
  %527 = load i32, i32* %mpos, align 4
  %cmp1022 = icmp ne i32 %527, 0
  br i1 %cmp1022, label %land.lhs.true.1024, label %if.end.1123

land.lhs.true.1024:                               ; preds = %if.end.1021
  %528 = load i32, i32* @count_variations, align 4
  %529 = load i32, i32* @semeai_variations, align 4
  %cmp1025 = icmp slt i32 %528, %529
  br i1 %cmp1025, label %land.lhs.true.1027, label %if.end.1123

land.lhs.true.1027:                               ; preds = %land.lhs.true.1024
  %530 = load i32, i32* @stackp, align 4
  %cmp1028 = icmp slt i32 %530, 100
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.end.1123

land.lhs.true.1030:                               ; preds = %land.lhs.true.1027
  %531 = load i32, i32* %mpos, align 4
  %532 = load i32, i32* %color, align 4
  %533 = load i32, i32* %k, align 4
  %idxprom1031 = sext i32 %533 to i64
  %arrayidx1032 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1031
  %name1033 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1032, i32 0, i32 2
  %534 = load i8*, i8** %name1033, align 8
  %535 = load i32, i32* %apos.addr, align 4
  %536 = load i32, i32* %bpos.addr, align 4
  %537 = load i32, i32* %owl_phase.addr, align 4
  %538 = load i32, i32* %k, align 4
  %idxprom1034 = sext i32 %538 to i64
  %arrayidx1035 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1034
  %value1036 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1035, i32 0, i32 1
  %539 = load i32, i32* %value1036, align 4
  %call1037 = call i32 @semeai_trymove(i32 %531, i32 %532, i8* %534, i32 %535, i32 %536, i32 %537, i32 %539)
  %tobool1038 = icmp ne i32 %call1037, 0
  br i1 %tobool1038, label %if.then.1039, label %if.end.1123

if.then.1039:                                     ; preds = %land.lhs.true.1030
  %540 = load i32, i32* @debug, align 4
  %and1040 = and i32 %540, 64
  %tobool1041 = icmp ne i32 %and1040, 0
  br i1 %tobool1041, label %land.lhs.true.1042, label %if.end.1045

land.lhs.true.1042:                               ; preds = %if.then.1039
  %541 = load i32, i32* @verbose, align 4
  %tobool1043 = icmp ne i32 %541, 0
  br i1 %tobool1043, label %if.then.1044, label %if.end.1045

if.then.1044:                                     ; preds = %land.lhs.true.1042
  call void @dump_stack()
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.then.1044, %land.lhs.true.1042, %if.then.1039
  %542 = load i32, i32* %bpos.addr, align 4
  %idxprom1046 = sext i32 %542 to i64
  %arrayidx1047 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1046
  %543 = load i8, i8* %arrayidx1047, align 1
  %conv1048 = zext i8 %543 to i32
  %cmp1049 = icmp eq i32 %conv1048, 0
  br i1 %cmp1049, label %if.then.1051, label %if.else.1052

if.then.1051:                                     ; preds = %if.end.1045
  store i32 0, i32* %this_resultb, align 4
  store i32 1, i32* %this_resulta, align 4
  br label %if.end.1072

if.else.1052:                                     ; preds = %if.end.1045
  %544 = load i32, i32* %owl_phase.addr, align 4
  %tobool1053 = icmp ne i32 %544, 0
  br i1 %tobool1053, label %land.lhs.true.1054, label %if.else.1058

land.lhs.true.1054:                               ; preds = %if.else.1052
  %545 = load i32, i32* @stackp, align 4
  %cmp1055 = icmp sle i32 %545, 13
  br i1 %cmp1055, label %if.then.1057, label %if.else.1058

if.then.1057:                                     ; preds = %land.lhs.true.1054
  call void @push_owl(%struct.local_owl_data** %owla.addr, %struct.local_owl_data** %owlb.addr)
  br label %if.end.1060

if.else.1058:                                     ; preds = %land.lhs.true.1054, %if.else.1052
  %546 = bitcast [400 x i8]* %saved_goal to i8*
  %547 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal1059 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %547, i32 0, i32 0
  %548 = bitcast [400 x i8]* %goal1059 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %546, i8* %548, i64 400, i32 4, i1 false)
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.else.1058, %if.then.1057
  %549 = load i32, i32* %mpos, align 4
  %550 = load i32, i32* %k, align 4
  %idxprom1061 = sext i32 %550 to i64
  %arrayidx1062 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1061
  %same_dragon1063 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1062, i32 0, i32 3
  %551 = load i32, i32* %same_dragon1063, align 4
  %552 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  call void @owl_update_goal(i32 %549, i32 %551, %struct.local_owl_data* %552, i32 1)
  %553 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %553, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %554 = load i32, i32* %mpos, align 4
  %555 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  call void @owl_update_boundary_marks(i32 %554, %struct.local_owl_data* %555)
  %556 = load i32, i32* %bpos.addr, align 4
  %557 = load i32, i32* %apos.addr, align 4
  %558 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %559 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %560 = load i32, i32* %komaster.addr, align 4
  %561 = load i32, i32* %owl_phase.addr, align 4
  call void @do_owl_analyze_semeai(i32 %556, i32 %557, %struct.local_owl_data* %558, %struct.local_owl_data* %559, i32 %560, i32* %this_resultb, i32* %this_resulta, i32* null, i32 0, i32 %561)
  %562 = load i32, i32* %owl_phase.addr, align 4
  %tobool1064 = icmp ne i32 %562, 0
  br i1 %tobool1064, label %land.lhs.true.1065, label %if.else.1069

land.lhs.true.1065:                               ; preds = %if.end.1060
  %563 = load i32, i32* @stackp, align 4
  %cmp1066 = icmp sle i32 %563, 13
  br i1 %cmp1066, label %if.then.1068, label %if.else.1069

if.then.1068:                                     ; preds = %land.lhs.true.1065
  call void @pop_owl(%struct.local_owl_data** %owlb.addr)
  call void @pop_owl(%struct.local_owl_data** %owla.addr)
  br label %if.end.1071

if.else.1069:                                     ; preds = %land.lhs.true.1065, %if.end.1060
  %564 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal1070 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %564, i32 0, i32 0
  %565 = bitcast [400 x i8]* %goal1070 to i8*
  %566 = bitcast [400 x i8]* %saved_goal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %565, i8* %566, i64 400, i32 4, i1 false)
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.else.1069, %if.then.1068
  br label %if.end.1072

if.end.1072:                                      ; preds = %if.end.1071, %if.then.1051
  call void @popgo()
  %567 = load i32, i32* %this_resultb, align 4
  %cmp1073 = icmp eq i32 %567, 0
  br i1 %cmp1073, label %land.lhs.true.1075, label %if.end.1102

land.lhs.true.1075:                               ; preds = %if.end.1072
  %568 = load i32, i32* %this_resulta, align 4
  %cmp1076 = icmp eq i32 %568, 1
  br i1 %cmp1076, label %if.then.1078, label %if.end.1102

if.then.1078:                                     ; preds = %land.lhs.true.1075
  %569 = load i32*, i32** %resulta.addr, align 8
  store i32 1, i32* %569, align 4
  %570 = load i32*, i32** %resultb.addr, align 8
  store i32 0, i32* %570, align 4
  %571 = load i32, i32* %mpos, align 4
  %572 = load i32*, i32** %move.addr, align 8
  store i32 %571, i32* %572, align 4
  %573 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1079 = icmp ne %struct.SGFTree_t* %573, null
  br i1 %tobool1079, label %if.then.1080, label %if.end.1084

if.then.1080:                                     ; preds = %if.then.1078
  %574 = load i8*, i8** %read_function_name, align 8
  %575 = load i32, i32* %q1, align 4
  %576 = load i32, i32* %q2, align 4
  %577 = load i32, i32* %mpos, align 4
  %578 = load i32, i32* %k, align 4
  %idxprom1081 = sext i32 %578 to i64
  %arrayidx1082 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1081
  %name1083 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1082, i32 0, i32 2
  %579 = load i8*, i8** %name1083, align 8
  call void @sgf_trace2(i8* %574, i32 %575, i32 %576, i32 %577, i32 1, i8* %579)
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1080, %if.then.1078
  %580 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %580, %struct.matched_patterns_list_data* %shape_defensive_patterns)
  %581 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %581, %struct.matched_patterns_list_data* %shape_offensive_patterns)
  br label %do.body.1085

do.body.1085:                                     ; preds = %if.end.1084
  %582 = load i32*, i32** %move.addr, align 8
  %cmp1086 = icmp ne i32* %582, null
  br i1 %cmp1086, label %if.then.1088, label %if.end.1089

if.then.1088:                                     ; preds = %do.body.1085
  %583 = load i32, i32* %mpos, align 4
  %584 = load i32*, i32** %move.addr, align 8
  store i32 %583, i32* %584, align 4
  br label %if.end.1089

if.end.1089:                                      ; preds = %if.then.1088, %do.body.1085
  %585 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool1090 = icmp ne %struct.read_result_t* %585, null
  br i1 %tobool1090, label %if.then.1091, label %if.end.1100

if.then.1091:                                     ; preds = %if.end.1089
  %586 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21092 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %586, i32 0, i32 1
  %587 = load i32, i32* %data21092, align 4
  %and1093 = and i32 %587, 1023
  %or1094 = or i32 %and1093, 536870912
  %or1095 = or i32 %or1094, 16777216
  %588 = load i32, i32* %mpos, align 4
  %and1096 = and i32 %588, 1023
  %shl1097 = shl i32 %and1096, 10
  %or1098 = or i32 %or1095, %shl1097
  %589 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21099 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %589, i32 0, i32 1
  store i32 %or1098, i32* %data21099, align 4
  br label %if.end.1100

if.end.1100:                                      ; preds = %if.then.1091, %if.end.1089
  br label %do.end.1215

do.end.1101:                                      ; No predecessors!
  br label %if.end.1102

if.end.1102:                                      ; preds = %do.end.1101, %land.lhs.true.1075, %if.end.1072
  %590 = load i32, i32* %this_resulta, align 4
  %cmp1103 = icmp eq i32 %590, 7
  br i1 %cmp1103, label %land.lhs.true.1105, label %if.end.1112

land.lhs.true.1105:                               ; preds = %if.end.1102
  %591 = load i32, i32* %this_resultb, align 4
  %cmp1106 = icmp eq i32 %591, 7
  br i1 %cmp1106, label %land.lhs.true.1108, label %if.end.1112

land.lhs.true.1108:                               ; preds = %land.lhs.true.1105
  %592 = load i32, i32* %best_resulta, align 4
  %cmp1109 = icmp ne i32 %592, 1
  br i1 %cmp1109, label %if.then.1111, label %if.end.1112

if.then.1111:                                     ; preds = %land.lhs.true.1108
  store i32 7, i32* %best_resulta, align 4
  store i32 7, i32* %best_resultb, align 4
  %593 = load i32, i32* %mpos, align 4
  store i32 %593, i32* %best_move, align 4
  %594 = load i32, i32* %k, align 4
  store i32 %594, i32* %best_move_k, align 4
  br label %if.end.1112

if.end.1112:                                      ; preds = %if.then.1111, %land.lhs.true.1108, %land.lhs.true.1105, %if.end.1102
  %595 = load i32, i32* %this_resulta, align 4
  %cmp1113 = icmp eq i32 %595, 0
  br i1 %cmp1113, label %land.lhs.true.1115, label %if.end.1122

land.lhs.true.1115:                               ; preds = %if.end.1112
  %596 = load i32, i32* %this_resultb, align 4
  %cmp1116 = icmp eq i32 %596, 1
  br i1 %cmp1116, label %land.lhs.true.1118, label %if.end.1122

land.lhs.true.1118:                               ; preds = %land.lhs.true.1115
  %597 = load i32, i32* %best_resulta, align 4
  %cmp1119 = icmp eq i32 %597, 3
  br i1 %cmp1119, label %if.then.1121, label %if.end.1122

if.then.1121:                                     ; preds = %land.lhs.true.1118
  store i32 0, i32* %best_resulta, align 4
  store i32 1, i32* %best_resultb, align 4
  %598 = load i32, i32* %mpos, align 4
  store i32 %598, i32* %best_move, align 4
  %599 = load i32, i32* %k, align 4
  store i32 %599, i32* %best_move_k, align 4
  br label %if.end.1122

if.end.1122:                                      ; preds = %if.then.1121, %land.lhs.true.1118, %land.lhs.true.1115, %if.end.1112
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.end.1122, %land.lhs.true.1030, %land.lhs.true.1027, %land.lhs.true.1024, %if.end.1021
  br label %for.inc.1124

for.inc.1124:                                     ; preds = %if.end.1123, %if.then.1020
  %600 = load i32, i32* %k, align 4
  %inc1125 = add nsw i32 %600, 1
  store i32 %inc1125, i32* %k, align 4
  br label %for.cond.999

for.end.1126:                                     ; preds = %for.cond.999
  %601 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %601, %struct.matched_patterns_list_data* %shape_defensive_patterns)
  %602 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %602, %struct.matched_patterns_list_data* %shape_offensive_patterns)
  %603 = load i32, i32* %best_resulta, align 4
  %cmp1127 = icmp eq i32 %603, 3
  br i1 %cmp1127, label %land.lhs.true.1129, label %if.end.1151

land.lhs.true.1129:                               ; preds = %for.end.1126
  %604 = load i32, i32* %pass.addr, align 4
  %cmp1130 = icmp eq i32 %604, 1
  br i1 %cmp1130, label %if.then.1132, label %if.end.1151

if.then.1132:                                     ; preds = %land.lhs.true.1129
  %605 = load i32*, i32** %resulta.addr, align 8
  store i32 7, i32* %605, align 4
  %606 = load i32*, i32** %resultb.addr, align 8
  store i32 7, i32* %606, align 4
  %607 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %607, align 4
  %608 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1133 = icmp ne %struct.SGFTree_t* %608, null
  br i1 %tobool1133, label %if.then.1134, label %if.end.1135

if.then.1134:                                     ; preds = %if.then.1132
  %609 = load i8*, i8** %read_function_name, align 8
  %610 = load i32, i32* %q1, align 4
  %611 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %609, i32 %610, i32 %611, i32 0, i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.1135

if.end.1135:                                      ; preds = %if.then.1134, %if.then.1132
  br label %do.body.1136

do.body.1136:                                     ; preds = %if.end.1135
  %612 = load i32*, i32** %move.addr, align 8
  %cmp1137 = icmp ne i32* %612, null
  br i1 %cmp1137, label %if.then.1139, label %if.end.1140

if.then.1139:                                     ; preds = %do.body.1136
  %613 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %613, align 4
  br label %if.end.1140

if.end.1140:                                      ; preds = %if.then.1139, %do.body.1136
  %614 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool1141 = icmp ne %struct.read_result_t* %614, null
  br i1 %tobool1141, label %if.then.1142, label %if.end.1149

if.then.1142:                                     ; preds = %if.end.1140
  %615 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21143 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %615, i32 0, i32 1
  %616 = load i32, i32* %data21143, align 4
  %and1144 = and i32 %616, 1023
  %or1145 = or i32 %and1144, 536870912
  %or1146 = or i32 %or1145, 117440512
  %or1147 = or i32 %or1146, 7340032
  %617 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21148 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %617, i32 0, i32 1
  store i32 %or1147, i32* %data21148, align 4
  br label %if.end.1149

if.end.1149:                                      ; preds = %if.then.1142, %if.end.1140
  br label %do.end.1215

do.end.1150:                                      ; No predecessors!
  br label %if.end.1151

if.end.1151:                                      ; preds = %do.end.1150, %land.lhs.true.1129, %for.end.1126
  %618 = load i32, i32* %best_resulta, align 4
  %cmp1152 = icmp eq i32 %618, 3
  br i1 %cmp1152, label %if.then.1154, label %if.end.1180

if.then.1154:                                     ; preds = %if.end.1151
  %619 = load i32, i32* %bpos.addr, align 4
  %620 = load i32, i32* %apos.addr, align 4
  %621 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %622 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %623 = load i32, i32* %komaster.addr, align 4
  %624 = load i32*, i32** %resultb.addr, align 8
  %625 = load i32*, i32** %resulta.addr, align 8
  %626 = load i32, i32* %owl_phase.addr, align 4
  call void @do_owl_analyze_semeai(i32 %619, i32 %620, %struct.local_owl_data* %621, %struct.local_owl_data* %622, i32 %623, i32* %624, i32* %625, i32* null, i32 1, i32 %626)
  %627 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1155 = icmp ne %struct.SGFTree_t* %627, null
  br i1 %tobool1155, label %if.then.1156, label %if.end.1157

if.then.1156:                                     ; preds = %if.then.1154
  %628 = load i8*, i8** %read_function_name, align 8
  %629 = load i32, i32* %q1, align 4
  %630 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %628, i32 %629, i32 %630, i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.then.1156, %if.then.1154
  %631 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %631, align 4
  br label %do.body.1158

do.body.1158:                                     ; preds = %if.end.1157
  %632 = load i32*, i32** %resulta.addr, align 8
  %633 = load i32, i32* %632, align 4
  %cmp1159 = icmp ne i32 %633, 0
  br i1 %cmp1159, label %land.lhs.true.1161, label %if.end.1165

land.lhs.true.1161:                               ; preds = %do.body.1158
  %634 = load i32*, i32** %move.addr, align 8
  %cmp1162 = icmp ne i32* %634, null
  br i1 %cmp1162, label %if.then.1164, label %if.end.1165

if.then.1164:                                     ; preds = %land.lhs.true.1161
  %635 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %635, align 4
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.then.1164, %land.lhs.true.1161, %do.body.1158
  %636 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool1166 = icmp ne %struct.read_result_t* %636, null
  br i1 %tobool1166, label %if.then.1167, label %if.end.1178

if.then.1167:                                     ; preds = %if.end.1165
  %637 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21168 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %637, i32 0, i32 1
  %638 = load i32, i32* %data21168, align 4
  %and1169 = and i32 %638, 1023
  %or1170 = or i32 %and1169, 536870912
  %639 = load i32*, i32** %resulta.addr, align 8
  %640 = load i32, i32* %639, align 4
  %and1171 = and i32 %640, 15
  %shl1172 = shl i32 %and1171, 24
  %or1173 = or i32 %or1170, %shl1172
  %641 = load i32*, i32** %resultb.addr, align 8
  %642 = load i32, i32* %641, align 4
  %and1174 = and i32 %642, 15
  %shl1175 = shl i32 %and1174, 20
  %or1176 = or i32 %or1173, %shl1175
  %643 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21177 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %643, i32 0, i32 1
  store i32 %or1176, i32* %data21177, align 4
  br label %if.end.1178

if.end.1178:                                      ; preds = %if.then.1167, %if.end.1165
  br label %do.end.1215

do.end.1179:                                      ; No predecessors!
  br label %if.end.1180

if.end.1180:                                      ; preds = %do.end.1179, %if.end.1151
  %644 = load i32, i32* %best_resulta, align 4
  %645 = load i32*, i32** %resulta.addr, align 8
  store i32 %644, i32* %645, align 4
  %646 = load i32, i32* %best_resultb, align 4
  %647 = load i32*, i32** %resultb.addr, align 8
  store i32 %646, i32* %647, align 4
  %648 = load i32, i32* %best_resulta, align 4
  %cmp1181 = icmp eq i32 %648, 0
  br i1 %cmp1181, label %if.then.1183, label %if.end.1184

if.then.1183:                                     ; preds = %if.end.1180
  store i32 0, i32* %best_move, align 4
  br label %if.end.1184

if.end.1184:                                      ; preds = %if.then.1183, %if.end.1180
  %649 = load i32, i32* %best_move, align 4
  %650 = load i32*, i32** %move.addr, align 8
  store i32 %649, i32* %650, align 4
  %651 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1185 = icmp ne %struct.SGFTree_t* %651, null
  br i1 %tobool1185, label %if.then.1186, label %if.end.1190

if.then.1186:                                     ; preds = %if.end.1184
  %652 = load i8*, i8** %read_function_name, align 8
  %653 = load i32, i32* %q1, align 4
  %654 = load i32, i32* %q2, align 4
  %655 = load i32, i32* %best_move, align 4
  %656 = load i32, i32* %best_resulta, align 4
  %657 = load i32, i32* %best_move_k, align 4
  %idxprom1187 = sext i32 %657 to i64
  %arrayidx1188 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom1187
  %name1189 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx1188, i32 0, i32 2
  %658 = load i8*, i8** %name1189, align 8
  call void @sgf_trace2(i8* %652, i32 %653, i32 %654, i32 %655, i32 %656, i8* %658)
  br label %if.end.1190

if.end.1190:                                      ; preds = %if.then.1186, %if.end.1184
  br label %do.body.1191

do.body.1191:                                     ; preds = %if.end.1190
  %659 = load i32, i32* %best_resulta, align 4
  %cmp1192 = icmp ne i32 %659, 0
  br i1 %cmp1192, label %land.lhs.true.1194, label %if.end.1198

land.lhs.true.1194:                               ; preds = %do.body.1191
  %660 = load i32*, i32** %move.addr, align 8
  %cmp1195 = icmp ne i32* %660, null
  br i1 %cmp1195, label %if.then.1197, label %if.end.1198

if.then.1197:                                     ; preds = %land.lhs.true.1194
  %661 = load i32, i32* %best_move, align 4
  %662 = load i32*, i32** %move.addr, align 8
  store i32 %661, i32* %662, align 4
  br label %if.end.1198

if.end.1198:                                      ; preds = %if.then.1197, %land.lhs.true.1194, %do.body.1191
  %663 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool1199 = icmp ne %struct.read_result_t* %663, null
  br i1 %tobool1199, label %if.then.1200, label %if.end.1214

if.then.1200:                                     ; preds = %if.end.1198
  %664 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21201 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %664, i32 0, i32 1
  %665 = load i32, i32* %data21201, align 4
  %and1202 = and i32 %665, 1023
  %or1203 = or i32 %and1202, 536870912
  %666 = load i32, i32* %best_resulta, align 4
  %and1204 = and i32 %666, 15
  %shl1205 = shl i32 %and1204, 24
  %or1206 = or i32 %or1203, %shl1205
  %667 = load i32, i32* %best_resultb, align 4
  %and1207 = and i32 %667, 15
  %shl1208 = shl i32 %and1207, 20
  %or1209 = or i32 %or1206, %shl1208
  %668 = load i32, i32* %best_move, align 4
  %and1210 = and i32 %668, 1023
  %shl1211 = shl i32 %and1210, 10
  %or1212 = or i32 %or1209, %shl1211
  %669 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data21213 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %669, i32 0, i32 1
  store i32 %or1212, i32* %data21213, align 4
  br label %if.end.1214

if.end.1214:                                      ; preds = %if.then.1200, %if.end.1198
  br label %do.end.1215

do.end.1215:                                      ; preds = %if.end.119, %if.end.249, %if.end.289, %if.end.312, %if.end.356, %if.end.385, %if.end.408, %if.end.443, %if.end.950, %if.end.1100, %if.end.1149, %if.end.1178, %if.end.1214
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @owl_attack(i32 %target, i32* %attack_point, i32* %certain, i32* %kworm) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %certain.addr = alloca i32*, align 8
  %kworm.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %reading_nodes_when_called = alloca i32, align 4
  %start = alloca double, align 8
  %tactical_nodes = alloca i32, align 4
  %move = alloca i32, align 4
  %wpos = alloca i32, align 4
  %wid = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %certain, i32** %certain.addr, align 8
  store i32* %kworm, i32** %kworm.addr, align 8
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  store i32 0, i32* %move, align 4
  store i32 0, i32* %wpos, align 4
  store i32 15, i32* %wid, align 4
  store i32 1, i32* @result_certain, align 4
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 14
  %1 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %attack_point.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load i32*, i32** %attack_point.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i32*, i32** %kworm.addr, align 8
  %tobool2 = icmp ne i32* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i32*, i32** %kworm.addr, align 8
  store i32 0, i32* %5, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %6 = load i32*, i32** %certain.addr, align 8
  %tobool5 = icmp ne i32* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %7 = load i32*, i32** %certain.addr, align 8
  store i32 1, i32* %7, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  %8 = load i32, i32* %target.addr, align 4
  %9 = load i32*, i32** %attack_point.addr, align 8
  %10 = load i32*, i32** %kworm.addr, align 8
  %11 = load i32*, i32** %certain.addr, align 8
  %call9 = call i32 @search_persistent_owl_cache(i32 0, i32 %8, i32 0, i32 0, i32* %result, i32* %9, i32* %10, i32* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %12 = load i32, i32* %result, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %13 = load i32, i32* @debug, align 4
  %and = and i32 %13, 4096
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %call15 = call double @gg_cputime()
  store double %call15, double* %start, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %14 = load i32, i32* @verbose, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.16
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %15 = load i32, i32* %target.addr, align 4
  %call18 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = load i32, i32* %target.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %16, i32 0, i32 0, i32 1)
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_make_domains(%struct.local_owl_data* %17, %struct.local_owl_data* null)
  %18 = load i32, i32* %target.addr, align 4
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %20 = load i32*, i32** %kworm.addr, align 8
  call void @prepare_goal_list(i32 %18, %struct.local_owl_data* %19, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32* @goal_worms_computed, i32* %20, i32 1)
  %21 = load i32, i32* %target.addr, align 4
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call19 = call i32 @do_owl_attack(i32 %21, i32* %move, i32* %wid, %struct.local_owl_data* %22, i32 0, i32 0, i32 0)
  store i32 %call19, i32* %result, align 4
  %23 = load i32, i32* %wid, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %wpos, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32 %23)
  %call20 = call i32 @get_reading_node_counter()
  %24 = load i32, i32* %reading_nodes_when_called, align 4
  %sub = sub nsw i32 %call20, %24
  store i32 %sub, i32* %tactical_nodes, align 4
  %25 = load i32, i32* @debug, align 4
  %and21 = and i32 %25, 4096
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.false.24, label %cond.true.23

cond.true.23:                                     ; preds = %cond.end
  br label %cond.end.28

cond.false.24:                                    ; preds = %cond.end
  %26 = load i32, i32* %target.addr, align 4
  %27 = load i32, i32* %result, align 4
  %28 = load i32, i32* %move, align 4
  %29 = load i32, i32* @local_owl_node_counter, align 4
  %30 = load i32, i32* %tactical_nodes, align 4
  %call25 = call double @gg_cputime()
  %31 = load double, double* %start, align 8
  %sub26 = fsub double %call25, %31
  %call27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, double %sub26)
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.24, %cond.true.23
  %32 = load i32, i32* %target.addr, align 4
  %33 = load i32, i32* %result, align 4
  %34 = load i32, i32* %move, align 4
  %35 = load i32, i32* %wpos, align 4
  %36 = load i32, i32* @result_certain, align 4
  %37 = load i32, i32* %tactical_nodes, align 4
  %38 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %38, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %39 = load i32, i32* %target.addr, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %40 = load i8, i8* %arrayidx30, align 1
  %conv = zext i8 %40 to i32
  call void @store_persistent_owl_cache(i32 0, i32 %32, i32 0, i32 0, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i8* %arraydecay, i32 %conv)
  %41 = load i32*, i32** %attack_point.addr, align 8
  %tobool31 = icmp ne i32* %41, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end.28
  %42 = load i32, i32* %move, align 4
  %43 = load i32*, i32** %attack_point.addr, align 8
  store i32 %42, i32* %43, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %cond.end.28
  %44 = load i32*, i32** %kworm.addr, align 8
  %tobool34 = icmp ne i32* %44, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %45 = load i32, i32* %wpos, align 4
  %46 = load i32*, i32** %kworm.addr, align 8
  store i32 %45, i32* %46, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  %47 = load i32*, i32** %certain.addr, align 8
  %tobool37 = icmp ne i32* %47, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %48 = load i32, i32* @result_certain, align 4
  %49 = load i32*, i32** %certain.addr, align 8
  store i32 %48, i32* %49, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %50 = load i32, i32* %result, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.11, %if.end.7
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @get_reading_node_counter() #1

declare i32 @search_persistent_owl_cache(i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare double @gg_cputime() #1

; Function Attrs: nounwind uwtable
define internal void @prepare_goal_list(i32 %str, %struct.local_owl_data* %owl, i32* %list, i32* %flag, i32* %kworm, i32 %do_list) #0 {
entry:
  %str.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %list.addr = alloca i32*, align 8
  %flag.addr = alloca i32*, align 8
  %kworm.addr = alloca i32*, align 8
  %do_list.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32* %list, i32** %list.addr, align 8
  store i32* %flag, i32** %flag.addr, align 8
  store i32* %kworm, i32** %kworm.addr, align 8
  store i32 %do_list, i32* %do_list.addr, align 4
  %0 = load i32*, i32** %flag.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32*, i32** %kworm.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then.1, label %if.else.7

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* %do_list.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %4 = load i32*, i32** %list.addr, align 8
  %call = call i32 @list_goal_worms(%struct.local_owl_data* %3, i32* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.1
  %5 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %id, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [240 x [15 x i32]], [240 x [15 x i32]]* @dragon_goal_worms, i32 0, i64 %idxprom5
  %7 = bitcast [15 x i32]* %arrayidx6 to i8*
  %8 = load i32*, i32** %list.addr, align 8
  %9 = bitcast i32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 60, i32 4, i1 false)
  %10 = load i32*, i32** %flag.addr, align 8
  store i32 1, i32* %10, align 4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  %11 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @do_owl_attack(i32 %str, i32* %move, i32* %wormid, %struct.local_owl_data* %owl, i32 %komaster, i32 %kom_pos, i32 %escape) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %wormid.addr = alloca i32*, align 8
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %escape.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %vital_moves = alloca [3 x %struct.owl_move_data], align 16
  %shape_moves = alloca [3 x %struct.owl_move_data], align 16
  %moves = alloca %struct.owl_move_data*, align 8
  %shape_patterns = alloca %struct.matched_patterns_list_data, align 8
  %mw = alloca [400 x i8], align 16
  %number_tried_moves = alloca i32, align 4
  %pass = alloca i32, align 4
  %k = alloca i32, align 4
  %savemove = alloca i32, align 4
  %saveworm = alloca i32, align 4
  %savecode = alloca i32, align 4
  %eyemin = alloca i32, align 4
  %eyemax = alloca i32, align 4
  %probable_eyes = alloca %struct.eyevalue, align 1
  %live_reason = alloca i8*, align 8
  %move_cutoff = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %this_variation_number = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %acode = alloca i32, align 4
  %mpos = alloca i32, align 4
  %size = alloca i32, align 4
  %apos = alloca i32, align 4
  %result = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %dpos = alloca i32, align 4
  %dcode = alloca i32, align 4
  %name316 = alloca i8*, align 8
  %dpos2 = alloca i32, align 4
  %mpos359 = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %origin360 = alloca i32, align 4
  %captured = alloca i32, align 4
  %wid = alloca i32, align 4
  %dcode361 = alloca i32, align 4
  %pos485 = alloca i32, align 4
  %wintxt = alloca i8*, align 8
  %winstr = alloca [192 x i8], align 16
  %w = alloca i32, align 4
  %size582 = alloca i32, align 4
  %l = alloca i32, align 4
  %wpos = alloca i32, align 4
  %winstr745 = alloca [128 x i8], align 16
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32* %wormid, i32** %wormid.addr, align 8
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %escape, i32* %escape.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %number_tried_moves, align 4
  store i32 0, i32* %savemove, align 4
  store i32 15, i32* %saveworm, align 4
  store i32 0, i32* %savecode, align 4
  store i32 -1, i32* %eyemin, align 4
  store i32 -1, i32* %eyemax, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  %3 = load i32, i32* @count_variations, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %this_variation_number, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8** %read_function_name, align 8
  %4 = load i32, i32* %str.addr, align 4
  store i32 %4, i32* %q, align 4
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_patterns, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  %5 = load i32, i32* @stackp, align 4
  %6 = load i32, i32* @owl_branch_depth, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* @hashflags, align 4
  %and = and i32 %7, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.59

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %komaster.addr, align 4
  %9 = load i32, i32* %kom_pos.addr, align 4
  %call = call i32 @get_read_result(i32 0, i32 %8, i32 %9, i32* %str.addr, %struct.read_result_t** %read_result)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.end.58

if.then.4:                                        ; preds = %if.then
  %10 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %10, i32 0, i32 1
  %11 = load i32, i32* %data2, align 4
  %shr = lshr i32 %11, 24
  %and5 = and i32 %shr, 15
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.4
  %12 = load i32*, i32** %move.addr, align 8
  %tobool9 = icmp ne i32* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  %13 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data211 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %13, i32 0, i32 1
  %14 = load i32, i32* %data211, align 4
  %shr12 = lshr i32 %14, 10
  %and13 = and i32 %shr12, 1023
  %15 = load i32*, i32** %move.addr, align 8
  store i32 %and13, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.4
  %16 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data215 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %16, i32 0, i32 1
  %17 = load i32, i32* %data215, align 4
  %shr16 = lshr i32 %17, 24
  %and17 = and i32 %shr16, 15
  %cmp18 = icmp eq i32 %and17, 3
  br i1 %cmp18, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.14
  %18 = load i32*, i32** %wormid.addr, align 8
  %tobool21 = icmp ne i32* %18, null
  br i1 %tobool21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.then.20
  %19 = load i32, i32* @goal_worms_computed, align 4
  %tobool23 = icmp ne i32 %19, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.22
  %20 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data225 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %20, i32 0, i32 1
  %21 = load i32, i32* %data225, align 4
  %shr26 = lshr i32 %21, 20
  %and27 = and i32 %shr26, 15
  %22 = load i32*, i32** %wormid.addr, align 8
  store i32 %and27, i32* %22, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.then.22
  %23 = load i32*, i32** %wormid.addr, align 8
  store i32 15, i32* %23, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.14
  %24 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data231 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %24, i32 0, i32 1
  %25 = load i32, i32* %data231, align 4
  %shr32 = lshr i32 %25, 24
  %and33 = and i32 %shr32, 15
  %cmp34 = icmp eq i32 %and33, 5
  br i1 %cmp34, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.end.30
  %26 = load i32, i32* @verbose, align 4
  %tobool37 = icmp ne i32 %26, 0
  br i1 %tobool37, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.36
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  %27 = load i32, i32* %this_variation_number, align 4
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i32 0, i32 0), i32 %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.45

if.else.39:                                       ; preds = %if.end.30
  %28 = load i32, i32* @verbose, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %cond.false.42, label %cond.true.41

cond.true.41:                                     ; preds = %if.else.39
  br label %cond.end.44

cond.false.42:                                    ; preds = %if.else.39
  %29 = load i32, i32* %this_variation_number, align 4
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 %29)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.41
  br label %if.end.45

if.end.45:                                        ; preds = %cond.end.44, %cond.end
  %30 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool46 = icmp ne %struct.SGFTree_t* %30, null
  br i1 %tobool46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end.45
  %31 = load i8*, i8** %read_function_name, align 8
  %32 = load i32, i32* %q, align 4
  %33 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data248 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %33, i32 0, i32 1
  %34 = load i32, i32* %data248, align 4
  %shr49 = lshr i32 %34, 10
  %and50 = and i32 %shr49, 1023
  %35 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data251 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %35, i32 0, i32 1
  %36 = load i32, i32* %data251, align 4
  %shr52 = lshr i32 %36, 24
  %and53 = and i32 %shr52, 15
  call void @sgf_trace(i8* %31, i32 %32, i32 %and50, i32 %and53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.end.45
  %37 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data255 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %37, i32 0, i32 1
  %38 = load i32, i32* %data255, align 4
  %shr56 = lshr i32 %38, 24
  %and57 = and i32 %shr56, 15
  store i32 %and57, i32* %retval
  br label %do.end.762

if.end.58:                                        ; preds = %if.then
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true, %entry
  %39 = load i32, i32* %this_variation_number, align 4
  %call60 = call i32 @reading_limit_reached(i8** %live_reason, i32 %39)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end.59
  %40 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool63 = icmp ne %struct.SGFTree_t* %40, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.62
  %41 = load i8*, i8** %read_function_name, align 8
  %42 = load i32, i32* %q, align 4
  %43 = load i8*, i8** %live_reason, align 8
  call void @sgf_trace(i8* %41, i32 %42, i32 0, i32 0, i8* %43)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.then.62
  br label %do.body

do.body:                                          ; preds = %if.end.65
  %44 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool66 = icmp ne %struct.read_result_t* %44, null
  br i1 %tobool66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %do.body
  %45 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data268 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %45, i32 0, i32 1
  %46 = load i32, i32* %data268, align 4
  %and69 = and i32 %46, 1023
  %or = or i32 %and69, 536870912
  %47 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data270 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %47, i32 0, i32 1
  store i32 %or, i32* %data270, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %do.body
  store i32 0, i32* %retval
  br label %do.end.762

do.end:                                           ; No predecessors!
  br label %if.end.72

if.end.72:                                        ; preds = %do.end, %if.end.59
  %48 = bitcast [400 x i8]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 400, i32 16, i1 false)
  %49 = load i32, i32* @global_owl_node_counter, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* @global_owl_node_counter, align 4
  %50 = load i32, i32* @local_owl_node_counter, align 4
  %inc73 = add nsw i32 %50, 1
  store i32 %inc73, i32* @local_owl_node_counter, align 4
  %51 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %51, %struct.local_owl_data** @current_owl_data, align 8
  %52 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %safe_move_cache = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %52, i32 0, i32 13
  %53 = bitcast [400 x i8]* %safe_move_cache to i8*
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 400, i32 4, i1 false)
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i32 0
  %55 = load i32, i32* %komaster.addr, align 4
  %call74 = call i32 @owl_estimate_life(%struct.local_owl_data* %54, %struct.owl_move_data* %arraydecay, i8** %live_reason, i32 %55, i32 1, %struct.eyevalue* %probable_eyes, i32* %eyemin, i32* %eyemax)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.180

if.then.76:                                       ; preds = %if.end.72
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %mpos, align 4
  %56 = load i32, i32* @experimental_owl_ext, align 4
  %tobool77 = icmp ne i32 %56, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.130

land.lhs.true.78:                                 ; preds = %if.then.76
  %57 = load i32, i32* @goal_worms_computed, align 4
  %tobool79 = icmp ne i32 %57, 0
  br i1 %tobool79, label %if.then.80, label %if.end.130

if.then.80:                                       ; preds = %land.lhs.true.78
  store i32 0, i32* %size, align 4
  store i32 15, i32* %saveworm, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.80
  %58 = load i32, i32* %k, align 4
  %cmp81 = icmp slt i32 %58, 15
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom83
  %60 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp eq i32 %60, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body
  br label %for.end

if.end.88:                                        ; preds = %for.body
  %61 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %61 to i64
  %arrayidx90 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom89
  %62 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = sext i32 %62 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %63 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %63 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.88
  %64 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %64 to i64
  %arrayidx97 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom96
  %65 = load i32, i32* %arrayidx97, align 4
  %call98 = call i32 @countlib(i32 %65)
  %cmp99 = icmp sgt i32 %call98, 1
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %lor.lhs.false, %if.end.88
  br label %for.inc

if.end.102:                                       ; preds = %lor.lhs.false
  %66 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %66 to i64
  %arrayidx104 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom103
  %67 = load i32, i32* %arrayidx104, align 4
  %idxprom105 = sext i32 %67 to i64
  %arrayidx106 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom105
  %size107 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx106, i32 0, i32 1
  %68 = load i32, i32* %size107, align 4
  %69 = load i32, i32* %size, align 4
  %cmp108 = icmp sgt i32 %68, %69
  br i1 %cmp108, label %if.then.110, label %if.end.116

if.then.110:                                      ; preds = %if.end.102
  %70 = load i32, i32* %k, align 4
  store i32 %70, i32* %saveworm, align 4
  %71 = load i32, i32* %k, align 4
  %idxprom111 = sext i32 %71 to i64
  %arrayidx112 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom111
  %72 = load i32, i32* %arrayidx112, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom113
  %size115 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx114, i32 0, i32 1
  %73 = load i32, i32* %size115, align 4
  store i32 %73, i32* %size, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.110, %if.end.102
  br label %for.inc

for.inc:                                          ; preds = %if.end.116, %if.then.101
  %74 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %74, 1
  store i32 %inc117, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.87, %for.cond
  %75 = load i32, i32* %saveworm, align 4
  %cmp118 = icmp ne i32 %75, 15
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.129

land.lhs.true.120:                                ; preds = %for.end
  %76 = load i32, i32* %size, align 4
  %cmp121 = icmp sge i32 %76, 3
  br i1 %cmp121, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %land.lhs.true.120
  store i32 3, i32* %acode, align 4
  %77 = load i32, i32* %saveworm, align 4
  %idxprom124 = sext i32 %77 to i64
  %arrayidx125 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom124
  %78 = load i32, i32* %arrayidx125, align 4
  %idxprom126 = sext i32 %78 to i64
  %arrayidx127 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom126
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx127, i32 0, i32 3
  %79 = load i32, i32* %origin, align 4
  %call128 = call i32 @findlib(i32 %79, i32 1, i32* %mpos)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.123, %land.lhs.true.120, %for.end
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %land.lhs.true.78, %if.then.76
  %80 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool131 = icmp ne %struct.SGFTree_t* %80, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.130
  %81 = load i8*, i8** %read_function_name, align 8
  %82 = load i32, i32* %q, align 4
  %83 = load i32, i32* %acode, align 4
  %84 = load i8*, i8** %live_reason, align 8
  call void @sgf_trace(i8* %81, i32 %82, i32 0, i32 %83, i8* %84)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.130
  %85 = load i32, i32* @verbose, align 4
  %tobool134 = icmp ne i32 %85, 0
  br i1 %tobool134, label %cond.false.136, label %cond.true.135

cond.true.135:                                    ; preds = %if.end.133
  br label %cond.end.138

cond.false.136:                                   ; preds = %if.end.133
  %86 = load i32, i32* %this_variation_number, align 4
  %87 = load i8*, i8** %live_reason, align 8
  %call137 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0), i32 %86, i8* %87)
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.136, %cond.true.135
  %88 = load i32, i32* %acode, align 4
  %cmp139 = icmp eq i32 %88, 0
  br i1 %cmp139, label %if.then.141, label %if.else.151

if.then.141:                                      ; preds = %cond.end.138
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %89 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool143 = icmp ne %struct.read_result_t* %89, null
  br i1 %tobool143, label %if.then.144, label %if.end.149

if.then.144:                                      ; preds = %do.body.142
  %90 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2145 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %90, i32 0, i32 1
  %91 = load i32, i32* %data2145, align 4
  %and146 = and i32 %91, 1023
  %or147 = or i32 %and146, 536870912
  %92 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2148 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %92, i32 0, i32 1
  store i32 %or147, i32* %data2148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %do.body.142
  store i32 0, i32* %retval
  br label %do.end.762

do.end.150:                                       ; No predecessors!
  br label %if.end.179

if.else.151:                                      ; preds = %cond.end.138
  %93 = load i32*, i32** %wormid.addr, align 8
  %tobool152 = icmp ne i32* %93, null
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.else.151
  %94 = load i32, i32* %saveworm, align 4
  %95 = load i32*, i32** %wormid.addr, align 8
  store i32 %94, i32* %95, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.else.151
  br label %do.body.155

do.body.155:                                      ; preds = %if.end.154
  %96 = load i32, i32* %acode, align 4
  %cmp156 = icmp ne i32 %96, 0
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.162

land.lhs.true.158:                                ; preds = %do.body.155
  %97 = load i32*, i32** %move.addr, align 8
  %cmp159 = icmp ne i32* %97, null
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %land.lhs.true.158
  %98 = load i32, i32* %mpos, align 4
  %99 = load i32*, i32** %move.addr, align 8
  store i32 %98, i32* %99, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %land.lhs.true.158, %do.body.155
  %100 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool163 = icmp ne %struct.read_result_t* %100, null
  br i1 %tobool163, label %if.then.164, label %if.end.177

if.then.164:                                      ; preds = %if.end.162
  %101 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2165 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %101, i32 0, i32 1
  %102 = load i32, i32* %data2165, align 4
  %and166 = and i32 %102, 1023
  %or167 = or i32 %and166, 536870912
  %103 = load i32, i32* %acode, align 4
  %and168 = and i32 %103, 15
  %shl = shl i32 %and168, 24
  %or169 = or i32 %or167, %shl
  %104 = load i32, i32* %saveworm, align 4
  %and170 = and i32 %104, 15
  %shl171 = shl i32 %and170, 20
  %or172 = or i32 %or169, %shl171
  %105 = load i32, i32* %mpos, align 4
  %and173 = and i32 %105, 1023
  %shl174 = shl i32 %and173, 10
  %or175 = or i32 %or172, %shl174
  %106 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2176 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %106, i32 0, i32 1
  store i32 %or175, i32* %data2176, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.164, %if.end.162
  %107 = load i32, i32* %acode, align 4
  store i32 %107, i32* %retval
  br label %do.end.762

do.end.178:                                       ; No predecessors!
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178, %do.end.150
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.72
  store i32 0, i32* %pass, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.676, %if.end.180
  %108 = load i32, i32* %pass, align 4
  %cmp182 = icmp slt i32 %108, 6
  br i1 %cmp182, label %for.body.184, label %for.end.678

for.body.184:                                     ; preds = %for.cond.181
  store %struct.owl_move_data* null, %struct.owl_move_data** %moves, align 8
  store i32 1, i32* %move_cutoff, align 4
  %109 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %109, %struct.local_owl_data** @current_owl_data, align 8
  %110 = load i32, i32* %pass, align 4
  switch i32 %110, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.236
    i32 2, label %sw.bb.236
    i32 3, label %sw.bb.264
    i32 5, label %sw.bb.264
    i32 4, label %sw.bb.282
  ]

sw.bb:                                            ; preds = %for.body.184
  %111 = load i32, i32* @stackp, align 4
  %112 = load i32, i32* @owl_branch_depth, align 4
  %cmp185 = icmp sgt i32 %111, %112
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.191

land.lhs.true.187:                                ; preds = %sw.bb
  %113 = load i32, i32* %number_tried_moves, align 4
  %cmp188 = icmp sgt i32 %113, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %land.lhs.true.187
  br label %for.inc.676

if.end.191:                                       ; preds = %land.lhs.true.187, %sw.bb
  %arraydecay192 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %114 = load i32, i32* %other, align 4
  %115 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_patterns, %struct.owl_move_data* %arraydecay192, i32 %114, %struct.local_owl_data* %115, %struct.pattern_db* @owl_attackpat_db)
  %116 = load i32, i32* %other, align 4
  %arraydecay193 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %call194 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %116, %struct.owl_move_data* %arraydecay193, i32 100)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.234

if.then.196:                                      ; preds = %if.end.191
  %arrayidx197 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx197, i32 0, i32 0
  %117 = load i32, i32* %pos, align 4
  %118 = load i32, i32* %other, align 4
  %arrayidx198 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx198, i32 0, i32 2
  %119 = load i8*, i8** %name, align 8
  %120 = load i32, i32* %str.addr, align 4
  %121 = load i32, i32* %komaster.addr, align 4
  %122 = load i32, i32* %kom_pos.addr, align 4
  %call199 = call i32 @trymove(i32 %117, i32 %118, i8* %119, i32 %120, i32 %121, i32 %122)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.then.196
  call void @popgo()
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.then.196
  %123 = load i32, i32* @verbose, align 4
  %tobool203 = icmp ne i32 %123, 0
  br i1 %tobool203, label %cond.false.205, label %cond.true.204

cond.true.204:                                    ; preds = %if.end.202
  br label %cond.end.207

cond.false.205:                                   ; preds = %if.end.202
  %124 = load i32, i32* %this_variation_number, align 4
  %call206 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.93, i32 0, i32 0), i32 %124)
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.205, %cond.true.204
  %125 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool208 = icmp ne %struct.SGFTree_t* %125, null
  br i1 %tobool208, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %cond.end.207
  %126 = load i8*, i8** %read_function_name, align 8
  %127 = load i32, i32* %q, align 4
  %arrayidx210 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos211 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx210, i32 0, i32 0
  %128 = load i32, i32* %pos211, align 4
  call void @sgf_trace(i8* %126, i32 %127, i32 %128, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %cond.end.207
  %129 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %129, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.213

do.body.213:                                      ; preds = %if.end.212
  %130 = load i32*, i32** %move.addr, align 8
  %cmp214 = icmp ne i32* %130, null
  br i1 %cmp214, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %do.body.213
  %arrayidx217 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos218 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx217, i32 0, i32 0
  %131 = load i32, i32* %pos218, align 4
  %132 = load i32*, i32** %move.addr, align 8
  store i32 %131, i32* %132, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %do.body.213
  %133 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool220 = icmp ne %struct.read_result_t* %133, null
  br i1 %tobool220, label %if.then.221, label %if.end.232

if.then.221:                                      ; preds = %if.end.219
  %134 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2222 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %134, i32 0, i32 1
  %135 = load i32, i32* %data2222, align 4
  %and223 = and i32 %135, 1023
  %or224 = or i32 %and223, 536870912
  %or225 = or i32 %or224, 83886080
  %arrayidx226 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos227 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx226, i32 0, i32 0
  %136 = load i32, i32* %pos227, align 4
  %and228 = and i32 %136, 1023
  %shl229 = shl i32 %and228, 10
  %or230 = or i32 %or225, %shl229
  %137 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2231 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %137, i32 0, i32 1
  store i32 %or230, i32* %data2231, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.221, %if.end.219
  store i32 5, i32* %retval
  br label %do.end.762

do.end.233:                                       ; No predecessors!
  br label %if.end.234

if.end.234:                                       ; preds = %do.end.233, %if.end.191
  %arraydecay235 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay235, %struct.owl_move_data** %moves, align 8
  br label %sw.epilog

sw.bb.236:                                        ; preds = %for.body.184, %for.body.184
  %138 = load i32, i32* @stackp, align 4
  %139 = load i32, i32* @owl_branch_depth, align 4
  %cmp237 = icmp sgt i32 %138, %139
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.243

land.lhs.true.239:                                ; preds = %sw.bb.236
  %140 = load i32, i32* %number_tried_moves, align 4
  %cmp240 = icmp sgt i32 %140, 0
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %land.lhs.true.239
  br label %for.inc.676

if.end.243:                                       ; preds = %land.lhs.true.239, %sw.bb.236
  %arraydecay244 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay244, %struct.owl_move_data** %moves, align 8
  %141 = load i32, i32* %pass, align 4
  %cmp245 = icmp eq i32 %141, 0
  br i1 %cmp245, label %if.then.250, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %if.end.243
  %142 = load i32, i32* @stackp, align 4
  %143 = load i32, i32* @owl_distrust_depth, align 4
  %cmp248 = icmp sgt i32 %142, %143
  br i1 %cmp248, label %if.then.250, label %if.end.256

if.then.250:                                      ; preds = %lor.lhs.false.247, %if.end.243
  %144 = load i32, i32* @stackp, align 4
  %cmp251 = icmp eq i32 %144, 0
  br i1 %cmp251, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %if.then.250
  store i32 70, i32* %move_cutoff, align 4
  br label %if.end.255

if.else.254:                                      ; preds = %if.then.250
  store i32 45, i32* %move_cutoff, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.254, %if.then.253
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %lor.lhs.false.247
  %145 = load i32, i32* %eyemax, align 4
  %cmp257 = icmp slt i32 %145, 2
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.263

land.lhs.true.259:                                ; preds = %if.end.256
  %146 = load i32, i32* @stackp, align 4
  %cmp260 = icmp sgt i32 %146, 2
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %land.lhs.true.259
  store i32 99, i32* %move_cutoff, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %land.lhs.true.259, %if.end.256
  br label %sw.epilog

sw.bb.264:                                        ; preds = %for.body.184, %for.body.184
  %147 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %147, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %148 = load i32, i32* @count_variations, align 4
  store i32 %148, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %149 = load i32, i32* %str.addr, align 4
  %call265 = call i32 @attack(i32 %149, i32* %apos)
  store i32 %call265, i32* %result, align 4
  %150 = load i32, i32* %result, align 4
  %cmp266 = icmp eq i32 %150, 5
  br i1 %cmp266, label %if.then.278, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %sw.bb.264
  %151 = load i32, i32* %result, align 4
  %cmp269 = icmp ne i32 %151, 0
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.281

land.lhs.true.271:                                ; preds = %lor.lhs.false.268
  %call272 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes)
  %cmp273 = icmp sge i32 %call272, 2
  br i1 %cmp273, label %if.then.278, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %land.lhs.true.271
  %152 = load i32, i32* %pass, align 4
  %cmp276 = icmp eq i32 %152, 5
  br i1 %cmp276, label %if.then.278, label %if.end.281

if.then.278:                                      ; preds = %lor.lhs.false.275, %land.lhs.true.271, %sw.bb.264
  %arraydecay279 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %153 = load i32, i32* %apos, align 4
  call void @set_single_owl_move(%struct.owl_move_data* %arraydecay279, i32 %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i32 0, i32 0))
  %arraydecay280 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay280, %struct.owl_move_data** %moves, align 8
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.278, %lor.lhs.false.275, %lor.lhs.false.268
  %154 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %154, %struct.SGFTree_t** @sgf_dumptree, align 8
  %155 = load i32, i32* %save_count_variations, align 4
  store i32 %155, i32* @count_variations, align 4
  br label %sw.epilog

sw.bb.282:                                        ; preds = %for.body.184
  %156 = load i32, i32* %number_tried_moves, align 4
  %cmp283 = icmp eq i32 %156, 0
  br i1 %cmp283, label %if.then.285, label %if.end.351

if.then.285:                                      ; preds = %sw.bb.282
  %157 = load i32, i32* %str.addr, align 4
  %158 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %159 = load i32, i32* %komaster.addr, align 4
  %160 = load i32, i32* %kom_pos.addr, align 4
  %161 = load i32, i32* %escape.addr, align 4
  %call286 = call i32 @do_owl_defend(i32 %157, i32* %dpos, i32* null, %struct.local_owl_data* %158, i32 %159, i32 %160, i32 %161)
  store i32 %call286, i32* %dcode, align 4
  %162 = load i32, i32* %dcode, align 4
  %cmp287 = icmp eq i32 %162, 0
  br i1 %cmp287, label %if.then.289, label %if.else.312

if.then.289:                                      ; preds = %if.then.285
  %163 = load i32, i32* @verbose, align 4
  %tobool290 = icmp ne i32 %163, 0
  br i1 %tobool290, label %cond.false.292, label %cond.true.291

cond.true.291:                                    ; preds = %if.then.289
  br label %cond.end.294

cond.false.292:                                   ; preds = %if.then.289
  %164 = load i32, i32* %this_variation_number, align 4
  %call293 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.96, i32 0, i32 0), i32 %164)
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.292, %cond.true.291
  %165 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool295 = icmp ne %struct.SGFTree_t* %165, null
  br i1 %tobool295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %cond.end.294
  %166 = load i8*, i8** %read_function_name, align 8
  %167 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %166, i32 %167, i32 0, i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0))
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %cond.end.294
  %168 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %168, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.298

do.body.298:                                      ; preds = %if.end.297
  %169 = load i32*, i32** %move.addr, align 8
  %cmp299 = icmp ne i32* %169, null
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %do.body.298
  %170 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %170, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.301, %do.body.298
  %171 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool303 = icmp ne %struct.read_result_t* %171, null
  br i1 %tobool303, label %if.then.304, label %if.end.310

if.then.304:                                      ; preds = %if.end.302
  %172 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2305 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %172, i32 0, i32 1
  %173 = load i32, i32* %data2305, align 4
  %and306 = and i32 %173, 1023
  %or307 = or i32 %and306, 536870912
  %or308 = or i32 %or307, 83886080
  %174 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2309 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %174, i32 0, i32 1
  store i32 %or308, i32* %data2309, align 4
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.304, %if.end.302
  store i32 5, i32* %retval
  br label %do.end.762

do.end.311:                                       ; No predecessors!
  br label %if.end.350

if.else.312:                                      ; preds = %if.then.285
  %175 = load i32, i32* %dpos, align 4
  %cmp313 = icmp ne i32 %175, 0
  br i1 %cmp313, label %if.then.315, label %if.end.349

if.then.315:                                      ; preds = %if.else.312
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8** %name316, align 8
  %176 = load i32, i32* %dpos, align 4
  %177 = load i32, i32* %other, align 4
  %call317 = call i32 @is_suicide(i32 %176, i32 %177)
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.342

if.then.319:                                      ; preds = %if.then.315
  store i32 0, i32* %k, align 4
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.339, %if.then.319
  %178 = load i32, i32* %k, align 4
  %cmp321 = icmp slt i32 %178, 4
  br i1 %cmp321, label %for.body.323, label %for.end.341

for.body.323:                                     ; preds = %for.cond.320
  %179 = load i32, i32* %dpos, align 4
  %180 = load i32, i32* %k, align 4
  %idxprom324 = sext i32 %180 to i64
  %arrayidx325 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom324
  %181 = load i32, i32* %arrayidx325, align 4
  %add = add nsw i32 %179, %181
  %idxprom326 = sext i32 %add to i64
  %arrayidx327 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom326
  %182 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %182 to i32
  %183 = load i32, i32* %other, align 4
  %cmp329 = icmp eq i32 %conv328, %183
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.338

land.lhs.true.331:                                ; preds = %for.body.323
  %184 = load i32, i32* %dpos, align 4
  %185 = load i32, i32* %k, align 4
  %idxprom332 = sext i32 %185 to i64
  %arrayidx333 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom332
  %186 = load i32, i32* %arrayidx333, align 4
  %add334 = add nsw i32 %184, %186
  %call335 = call i32 @find_defense(i32 %add334, i32* %dpos2)
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %land.lhs.true.331
  %187 = load i32, i32* %dpos2, align 4
  store i32 %187, i32* %dpos, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i32 0, i32 0), i8** %name316, align 8
  br label %for.end.341

if.end.338:                                       ; preds = %land.lhs.true.331, %for.body.323
  br label %for.inc.339

for.inc.339:                                      ; preds = %if.end.338
  %188 = load i32, i32* %k, align 4
  %inc340 = add nsw i32 %188, 1
  store i32 %inc340, i32* %k, align 4
  br label %for.cond.320

for.end.341:                                      ; preds = %if.then.337, %for.cond.320
  br label %if.end.342

if.end.342:                                       ; preds = %for.end.341, %if.then.315
  %189 = load i32, i32* %dpos, align 4
  %cmp343 = icmp ne i32 %189, 0
  br i1 %cmp343, label %if.then.345, label %if.end.348

if.then.345:                                      ; preds = %if.end.342
  %arraydecay346 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %190 = load i32, i32* %dpos, align 4
  %191 = load i8*, i8** %name316, align 8
  call void @set_single_owl_move(%struct.owl_move_data* %arraydecay346, i32 %190, i8* %191)
  %arraydecay347 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay347, %struct.owl_move_data** %moves, align 8
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.345, %if.end.342
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.else.312
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %do.end.311
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %sw.bb.282
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.184, %if.end.351, %if.end.281, %if.end.263, %if.end.234
  %192 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %tobool352 = icmp ne %struct.owl_move_data* %192, null
  br i1 %tobool352, label %if.end.354, label %if.then.353

if.then.353:                                      ; preds = %sw.epilog
  br label %for.inc.676

if.end.354:                                       ; preds = %sw.epilog
  store i32 0, i32* %k, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.673, %if.end.354
  %193 = load i32, i32* %k, align 4
  %cmp356 = icmp slt i32 %193, 3
  br i1 %cmp356, label %for.body.358, label %for.end.675

for.body.358:                                     ; preds = %for.cond.355
  store i32 -1, i32* %ko_move, align 4
  store i32 0, i32* %origin360, align 4
  store i32 15, i32* %wid, align 4
  %194 = load i32, i32* @stackp, align 4
  %195 = load i32, i32* @owl_branch_depth, align 4
  %cmp362 = icmp sgt i32 %194, %195
  br i1 %cmp362, label %land.lhs.true.364, label %if.end.368

land.lhs.true.364:                                ; preds = %for.body.358
  %196 = load i32, i32* %k, align 4
  %cmp365 = icmp sgt i32 %196, 0
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %land.lhs.true.364
  br label %for.end.675

if.end.368:                                       ; preds = %land.lhs.true.364, %for.body.358
  %197 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %197, %struct.local_owl_data** @current_owl_data, align 8
  %198 = load i32, i32* %pass, align 4
  %cmp369 = icmp eq i32 %198, 1
  br i1 %cmp369, label %if.then.371, label %if.else.410

if.then.371:                                      ; preds = %if.end.368
  %199 = load i32, i32* %other, align 4
  %arraydecay372 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %200 = load i32, i32* %move_cutoff, align 4
  %call373 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %199, %struct.owl_move_data* %arraydecay372, i32 %200)
  %tobool374 = icmp ne i32 %call373, 0
  br i1 %tobool374, label %if.end.376, label %if.then.375

if.then.375:                                      ; preds = %if.then.371
  br label %for.end.675

if.end.376:                                       ; preds = %if.then.371
  %201 = load i32, i32* %k, align 4
  %idxprom377 = sext i32 %201 to i64
  %202 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx378 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %202, i64 %idxprom377
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx378, i32 0, i32 1
  %203 = load i32, i32* %value, align 4
  %cmp379 = icmp eq i32 %203, 99
  br i1 %cmp379, label %if.then.381, label %if.end.409

if.then.381:                                      ; preds = %if.end.376
  %204 = load i32, i32* %k, align 4
  %cmp382 = icmp eq i32 %204, 0
  br i1 %cmp382, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %if.then.381
  br label %if.end.386

if.else.385:                                      ; preds = %if.then.381
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.385, %if.then.384
  %205 = load i32, i32* %other, align 4
  %arraydecay387 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %call388 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %205, %struct.owl_move_data* %arraydecay387, i32 99)
  %tobool389 = icmp ne i32 %call388, 0
  br i1 %tobool389, label %if.then.390, label %if.end.408

if.then.390:                                      ; preds = %if.end.386
  %206 = load i32, i32* @verbose, align 4
  %tobool391 = icmp ne i32 %206, 0
  br i1 %tobool391, label %cond.false.393, label %cond.true.392

cond.true.392:                                    ; preds = %if.then.390
  br label %cond.end.395

cond.false.393:                                   ; preds = %if.then.390
  %207 = load i32, i32* %this_variation_number, align 4
  %call394 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.101, i32 0, i32 0), i32 %207)
  br label %cond.end.395

cond.end.395:                                     ; preds = %cond.false.393, %cond.true.392
  %208 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool396 = icmp ne %struct.SGFTree_t* %208, null
  br i1 %tobool396, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %cond.end.395
  %209 = load i8*, i8** %read_function_name, align 8
  %210 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %209, i32 %210, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.397, %cond.end.395
  %211 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %211, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.399

do.body.399:                                      ; preds = %if.end.398
  %212 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool400 = icmp ne %struct.read_result_t* %212, null
  br i1 %tobool400, label %if.then.401, label %if.end.406

if.then.401:                                      ; preds = %do.body.399
  %213 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2402 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %213, i32 0, i32 1
  %214 = load i32, i32* %data2402, align 4
  %and403 = and i32 %214, 1023
  %or404 = or i32 %and403, 536870912
  %215 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2405 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %215, i32 0, i32 1
  store i32 %or404, i32* %data2405, align 4
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.401, %do.body.399
  store i32 0, i32* %retval
  br label %do.end.762

do.end.407:                                       ; No predecessors!
  br label %if.end.408

if.end.408:                                       ; preds = %do.end.407, %if.end.386
  store i32 99, i32* %move_cutoff, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.376
  br label %if.end.418

if.else.410:                                      ; preds = %if.end.368
  %216 = load i32, i32* %k, align 4
  %idxprom411 = sext i32 %216 to i64
  %217 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx412 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %217, i64 %idxprom411
  %value413 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx412, i32 0, i32 1
  %218 = load i32, i32* %value413, align 4
  %219 = load i32, i32* %move_cutoff, align 4
  %cmp414 = icmp slt i32 %218, %219
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.else.410
  br label %for.end.675

if.end.417:                                       ; preds = %if.else.410
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.end.409
  %220 = load i32, i32* %k, align 4
  %idxprom419 = sext i32 %220 to i64
  %221 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx420 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %221, i64 %idxprom419
  %pos421 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx420, i32 0, i32 0
  %222 = load i32, i32* %pos421, align 4
  store i32 %222, i32* %mpos359, align 4
  %223 = load i32, i32* %mpos359, align 4
  %cmp422 = icmp ult i32 %223, 421
  br i1 %cmp422, label %land.lhs.true.424, label %if.else.431

land.lhs.true.424:                                ; preds = %if.end.418
  %224 = load i32, i32* %mpos359, align 4
  %idxprom425 = sext i32 %224 to i64
  %arrayidx426 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom425
  %225 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %225 to i32
  %cmp428 = icmp ne i32 %conv427, 3
  br i1 %cmp428, label %if.then.430, label %if.else.431

if.then.430:                                      ; preds = %land.lhs.true.424
  br label %if.end.434

if.else.431:                                      ; preds = %land.lhs.true.424, %if.end.418
  %226 = load i32, i32* %mpos359, align 4
  %div = sdiv i32 %226, 20
  %sub432 = sub nsw i32 %div, 1
  %227 = load i32, i32* %mpos359, align 4
  %rem = srem i32 %227, 20
  %sub433 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1467, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i32 %sub432, i32 %sub433)
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.430
  %228 = load i32, i32* %mpos359, align 4
  %idxprom435 = sext i32 %228 to i64
  %arrayidx436 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom435
  %229 = load i8, i8* %arrayidx436, align 1
  %tobool437 = icmp ne i8 %229, 0
  br i1 %tobool437, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.434
  br label %for.inc.673

if.end.439:                                       ; preds = %if.end.434
  %230 = load i32, i32* %color, align 4
  %cmp440 = icmp eq i32 %230, 1
  br i1 %cmp440, label %cond.true.442, label %cond.false.443

cond.true.442:                                    ; preds = %if.end.439
  %231 = load i32, i32* @white_captured, align 4
  br label %cond.end.444

cond.false.443:                                   ; preds = %if.end.439
  %232 = load i32, i32* @black_captured, align 4
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.false.443, %cond.true.442
  %cond = phi i32 [ %231, %cond.true.442 ], [ %232, %cond.false.443 ]
  store i32 %cond, i32* %captured, align 4
  %233 = load i32, i32* %mpos359, align 4
  %234 = load i32, i32* %other, align 4
  %235 = load i32, i32* %k, align 4
  %idxprom445 = sext i32 %235 to i64
  %236 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx446 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %236, i64 %idxprom445
  %name447 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx446, i32 0, i32 2
  %237 = load i8*, i8** %name447, align 8
  %238 = load i32, i32* %str.addr, align 4
  %239 = load i32, i32* %komaster.addr, align 4
  %240 = load i32, i32* %kom_pos.addr, align 4
  %241 = load i32, i32* %savecode, align 4
  %cmp448 = icmp eq i32 %241, 0
  %conv449 = zext i1 %cmp448 to i32
  %call450 = call i32 @komaster_trymove(i32 %233, i32 %234, i8* %237, i32 %238, i32 %239, i32 %240, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %conv449)
  %tobool451 = icmp ne i32 %call450, 0
  br i1 %tobool451, label %if.end.453, label %if.then.452

if.then.452:                                      ; preds = %cond.end.444
  br label %for.inc.673

if.end.453:                                       ; preds = %cond.end.444
  %242 = load i32, i32* %color, align 4
  %cmp454 = icmp eq i32 %242, 1
  br i1 %cmp454, label %cond.true.456, label %cond.false.457

cond.true.456:                                    ; preds = %if.end.453
  %243 = load i32, i32* @white_captured, align 4
  br label %cond.end.458

cond.false.457:                                   ; preds = %if.end.453
  %244 = load i32, i32* @black_captured, align 4
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.457, %cond.true.456
  %cond459 = phi i32 [ %243, %cond.true.456 ], [ %244, %cond.false.457 ]
  %245 = load i32, i32* %captured, align 4
  %sub460 = sub nsw i32 %cond459, %245
  store i32 %sub460, i32* %captured, align 4
  %246 = load i32, i32* @verbose, align 4
  %tobool461 = icmp ne i32 %246, 0
  br i1 %tobool461, label %cond.false.463, label %cond.true.462

cond.true.462:                                    ; preds = %cond.end.458
  br label %cond.end.465

cond.false.463:                                   ; preds = %cond.end.458
  %247 = load i32, i32* %other, align 4
  %248 = load i32, i32* %mpos359, align 4
  %249 = load i32, i32* %escape.addr, align 4
  %call464 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i32 0, i32 0), i32 %247, i32 %248, i32 %249)
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.463, %cond.true.462
  %250 = load i32, i32* @verbose, align 4
  %tobool466 = icmp ne i32 %250, 0
  br i1 %tobool466, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %cond.end.465
  call void @dump_stack()
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.467, %cond.end.465
  call void @push_owl(%struct.local_owl_data** %owl.addr, %struct.local_owl_data** null)
  %251 = load i32, i32* %mpos359, align 4
  %idxprom469 = sext i32 %251 to i64
  %arrayidx470 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom469
  store i8 1, i8* %arrayidx470, align 1
  %252 = load i32, i32* %number_tried_moves, align 4
  %inc471 = add nsw i32 %252, 1
  store i32 %inc471, i32* %number_tried_moves, align 4
  %253 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %253, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %254 = load i32, i32* %mpos359, align 4
  %255 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_update_boundary_marks(i32 %254, %struct.local_owl_data* %255)
  %256 = load i32, i32* %str.addr, align 4
  %idxprom472 = sext i32 %256 to i64
  %arrayidx473 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom472
  %257 = load i8, i8* %arrayidx473, align 1
  %conv474 = zext i8 %257 to i32
  %cmp475 = icmp eq i32 %conv474, 1
  br i1 %cmp475, label %if.then.483, label %lor.lhs.false.477

lor.lhs.false.477:                                ; preds = %if.end.468
  %258 = load i32, i32* %str.addr, align 4
  %idxprom478 = sext i32 %258 to i64
  %arrayidx479 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom478
  %259 = load i8, i8* %arrayidx479, align 1
  %conv480 = zext i8 %259 to i32
  %cmp481 = icmp eq i32 %conv480, 2
  br i1 %cmp481, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %lor.lhs.false.477, %if.end.468
  %260 = load i32, i32* %str.addr, align 4
  store i32 %260, i32* %origin360, align 4
  br label %if.end.507

if.else.484:                                      ; preds = %lor.lhs.false.477
  store i32 0, i32* %origin360, align 4
  store i32 21, i32* %pos485, align 4
  br label %for.cond.486

for.cond.486:                                     ; preds = %for.inc.504, %if.else.484
  %261 = load i32, i32* %pos485, align 4
  %cmp487 = icmp slt i32 %261, 400
  br i1 %cmp487, label %for.body.489, label %for.end.506

for.body.489:                                     ; preds = %for.cond.486
  %262 = load i32, i32* %pos485, align 4
  %idxprom490 = sext i32 %262 to i64
  %arrayidx491 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom490
  %263 = load i8, i8* %arrayidx491, align 1
  %conv492 = zext i8 %263 to i32
  %264 = load i32, i32* %color, align 4
  %cmp493 = icmp eq i32 %conv492, %264
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.503

land.lhs.true.495:                                ; preds = %for.body.489
  %265 = load i32, i32* %pos485, align 4
  %idxprom496 = sext i32 %265 to i64
  %266 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %266, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom496
  %267 = load i8, i8* %arrayidx497, align 1
  %conv498 = sext i8 %267 to i32
  %cmp499 = icmp eq i32 %conv498, 1
  br i1 %cmp499, label %if.then.501, label %if.end.503

if.then.501:                                      ; preds = %land.lhs.true.495
  %268 = load i32, i32* %pos485, align 4
  %call502 = call i32 @find_origin(i32 %268)
  store i32 %call502, i32* %origin360, align 4
  br label %for.end.506

if.end.503:                                       ; preds = %land.lhs.true.495, %for.body.489
  br label %for.inc.504

for.inc.504:                                      ; preds = %if.end.503
  %269 = load i32, i32* %pos485, align 4
  %inc505 = add nsw i32 %269, 1
  store i32 %inc505, i32* %pos485, align 4
  br label %for.cond.486

for.end.506:                                      ; preds = %if.then.501, %for.cond.486
  br label %if.end.507

if.end.507:                                       ; preds = %for.end.506, %if.then.483
  %270 = load i32, i32* %origin360, align 4
  %cmp508 = icmp eq i32 %270, 0
  br i1 %cmp508, label %if.then.510, label %if.else.511

if.then.510:                                      ; preds = %if.end.507
  store i32 0, i32* %dcode361, align 4
  br label %if.end.513

if.else.511:                                      ; preds = %if.end.507
  %271 = load i32, i32* %origin360, align 4
  %272 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %273 = load i32, i32* %new_komaster, align 4
  %274 = load i32, i32* %new_kom_pos, align 4
  %275 = load i32, i32* %escape.addr, align 4
  %call512 = call i32 @do_owl_defend(i32 %271, i32* null, i32* %wid, %struct.local_owl_data* %272, i32 %273, i32 %274, i32 %275)
  store i32 %call512, i32* %dcode361, align 4
  br label %if.end.513

if.end.513:                                       ; preds = %if.else.511, %if.then.510
  %276 = load i32, i32* %ko_move, align 4
  %tobool514 = icmp ne i32 %276, 0
  br i1 %tobool514, label %if.else.656, label %if.then.515

if.then.515:                                      ; preds = %if.end.513
  %277 = load i32, i32* %dcode361, align 4
  %cmp516 = icmp eq i32 %277, 0
  br i1 %cmp516, label %if.then.518, label %if.else.551

if.then.518:                                      ; preds = %if.then.515
  call void @pop_owl(%struct.local_owl_data** %owl.addr)
  call void @popgo()
  %278 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool519 = icmp ne %struct.SGFTree_t* %278, null
  br i1 %tobool519, label %if.then.520, label %if.end.533

if.then.520:                                      ; preds = %if.then.518
  %279 = load i32, i32* %origin360, align 4
  %cmp521 = icmp eq i32 %279, 0
  br i1 %cmp521, label %if.then.523, label %if.else.524

if.then.523:                                      ; preds = %if.then.520
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0), i8** %wintxt, align 8
  br label %if.end.525

if.else.524:                                      ; preds = %if.then.520
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8** %wintxt, align 8
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.524, %if.then.523
  %arraydecay526 = getelementptr inbounds [192 x i8], [192 x i8]* %winstr, i32 0, i32 0
  %280 = load i8*, i8** %wintxt, align 8
  %281 = load i32, i32* @count_variations, align 4
  %282 = load i32, i32* %this_variation_number, align 4
  %sub527 = sub nsw i32 %281, %282
  %call528 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay526, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i32 0, i32 0), i8* %280, i32 %sub527) #2
  %283 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool529 = icmp ne %struct.SGFTree_t* %283, null
  br i1 %tobool529, label %if.then.530, label %if.end.532

if.then.530:                                      ; preds = %if.end.525
  %284 = load i8*, i8** %read_function_name, align 8
  %285 = load i32, i32* %q, align 4
  %286 = load i32, i32* %mpos359, align 4
  %arraydecay531 = getelementptr inbounds [192 x i8], [192 x i8]* %winstr, i32 0, i32 0
  call void @sgf_trace(i8* %284, i32 %285, i32 %286, i32 5, i8* %arraydecay531)
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.530, %if.end.525
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %if.then.518
  %287 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %287, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.534

do.body.534:                                      ; preds = %if.end.533
  %288 = load i32*, i32** %move.addr, align 8
  %cmp535 = icmp ne i32* %288, null
  br i1 %cmp535, label %if.then.537, label %if.end.538

if.then.537:                                      ; preds = %do.body.534
  %289 = load i32, i32* %mpos359, align 4
  %290 = load i32*, i32** %move.addr, align 8
  store i32 %289, i32* %290, align 4
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.537, %do.body.534
  %291 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool539 = icmp ne %struct.read_result_t* %291, null
  br i1 %tobool539, label %if.then.540, label %if.end.549

if.then.540:                                      ; preds = %if.end.538
  %292 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2541 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %292, i32 0, i32 1
  %293 = load i32, i32* %data2541, align 4
  %and542 = and i32 %293, 1023
  %or543 = or i32 %and542, 536870912
  %or544 = or i32 %or543, 83886080
  %294 = load i32, i32* %mpos359, align 4
  %and545 = and i32 %294, 1023
  %shl546 = shl i32 %and545, 10
  %or547 = or i32 %or544, %shl546
  %295 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2548 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %295, i32 0, i32 1
  store i32 %or547, i32* %data2548, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.540, %if.end.538
  store i32 5, i32* %retval
  br label %do.end.762

do.end.550:                                       ; No predecessors!
  br label %if.end.646

if.else.551:                                      ; preds = %if.then.515
  %296 = load i32, i32* @experimental_owl_ext, align 4
  %tobool552 = icmp ne i32 %296, 0
  br i1 %tobool552, label %land.lhs.true.553, label %if.else.574

land.lhs.true.553:                                ; preds = %if.else.551
  %297 = load i32, i32* %dcode361, align 4
  %cmp554 = icmp eq i32 %297, 2
  br i1 %cmp554, label %if.then.556, label %if.else.574

if.then.556:                                      ; preds = %land.lhs.true.553
  %298 = load i32, i32* %saveworm, align 4
  %cmp557 = icmp eq i32 %298, 15
  br i1 %cmp557, label %if.then.572, label %lor.lhs.false.559

lor.lhs.false.559:                                ; preds = %if.then.556
  %299 = load i32, i32* %wid, align 4
  %idxprom560 = sext i32 %299 to i64
  %arrayidx561 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom560
  %300 = load i32, i32* %arrayidx561, align 4
  %idxprom562 = sext i32 %300 to i64
  %arrayidx563 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom562
  %size564 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx563, i32 0, i32 1
  %301 = load i32, i32* %size564, align 4
  %302 = load i32, i32* %saveworm, align 4
  %idxprom565 = sext i32 %302 to i64
  %arrayidx566 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom565
  %303 = load i32, i32* %arrayidx566, align 4
  %idxprom567 = sext i32 %303 to i64
  %arrayidx568 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom567
  %size569 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx568, i32 0, i32 1
  %304 = load i32, i32* %size569, align 4
  %cmp570 = icmp sgt i32 %301, %304
  br i1 %cmp570, label %if.then.572, label %if.end.573

if.then.572:                                      ; preds = %lor.lhs.false.559, %if.then.556
  %305 = load i32, i32* %wid, align 4
  store i32 %305, i32* %saveworm, align 4
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.572, %lor.lhs.false.559
  br label %if.end.645

if.else.574:                                      ; preds = %land.lhs.true.553, %if.else.551
  %306 = load i32, i32* @experimental_owl_ext, align 4
  %tobool575 = icmp ne i32 %306, 0
  br i1 %tobool575, label %land.lhs.true.576, label %if.end.644

land.lhs.true.576:                                ; preds = %if.else.574
  %307 = load i32, i32* @goal_worms_computed, align 4
  %tobool577 = icmp ne i32 %307, 0
  br i1 %tobool577, label %land.lhs.true.578, label %if.end.644

land.lhs.true.578:                                ; preds = %land.lhs.true.576
  %308 = load i32, i32* %captured, align 4
  %cmp579 = icmp sge i32 %308, 3
  br i1 %cmp579, label %if.then.581, label %if.end.644

if.then.581:                                      ; preds = %land.lhs.true.578
  store i32 15, i32* %w, align 4
  store i32 0, i32* %size582, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.583

for.cond.583:                                     ; preds = %for.inc.619, %if.then.581
  %309 = load i32, i32* %l, align 4
  %cmp584 = icmp slt i32 %309, 15
  br i1 %cmp584, label %for.body.586, label %for.end.621

for.body.586:                                     ; preds = %for.cond.583
  %310 = load i32, i32* %l, align 4
  %idxprom587 = sext i32 %310 to i64
  %arrayidx588 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom587
  %311 = load i32, i32* %arrayidx588, align 4
  %cmp589 = icmp eq i32 %311, 0
  br i1 %cmp589, label %if.then.591, label %if.end.592

if.then.591:                                      ; preds = %for.body.586
  br label %for.end.621

if.end.592:                                       ; preds = %for.body.586
  %312 = load i32, i32* %l, align 4
  %idxprom593 = sext i32 %312 to i64
  %arrayidx594 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom593
  %313 = load i32, i32* %arrayidx594, align 4
  %idxprom595 = sext i32 %313 to i64
  %arrayidx596 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom595
  %314 = load i8, i8* %arrayidx596, align 1
  %conv597 = zext i8 %314 to i32
  %cmp598 = icmp eq i32 %conv597, 0
  br i1 %cmp598, label %if.then.600, label %if.end.618

if.then.600:                                      ; preds = %if.end.592
  %315 = load i32, i32* %size582, align 4
  %cmp601 = icmp eq i32 %315, 0
  br i1 %cmp601, label %if.then.611, label %lor.lhs.false.603

lor.lhs.false.603:                                ; preds = %if.then.600
  %316 = load i32, i32* %l, align 4
  %idxprom604 = sext i32 %316 to i64
  %arrayidx605 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom604
  %317 = load i32, i32* %arrayidx605, align 4
  %idxprom606 = sext i32 %317 to i64
  %arrayidx607 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom606
  %size608 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx607, i32 0, i32 1
  %318 = load i32, i32* %size608, align 4
  %319 = load i32, i32* %size582, align 4
  %cmp609 = icmp sgt i32 %318, %319
  br i1 %cmp609, label %if.then.611, label %if.end.617

if.then.611:                                      ; preds = %lor.lhs.false.603, %if.then.600
  %320 = load i32, i32* %l, align 4
  store i32 %320, i32* %w, align 4
  %321 = load i32, i32* %l, align 4
  %idxprom612 = sext i32 %321 to i64
  %arrayidx613 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom612
  %322 = load i32, i32* %arrayidx613, align 4
  %idxprom614 = sext i32 %322 to i64
  %arrayidx615 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom614
  %size616 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx615, i32 0, i32 1
  %323 = load i32, i32* %size616, align 4
  store i32 %323, i32* %size582, align 4
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.611, %lor.lhs.false.603
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.617, %if.end.592
  br label %for.inc.619

for.inc.619:                                      ; preds = %if.end.618
  %324 = load i32, i32* %l, align 4
  %inc620 = add nsw i32 %324, 1
  store i32 %inc620, i32* %l, align 4
  br label %for.cond.583

for.end.621:                                      ; preds = %if.then.591, %for.cond.583
  %325 = load i32, i32* %w, align 4
  %cmp622 = icmp ne i32 %325, 15
  br i1 %cmp622, label %if.then.624, label %if.end.643

if.then.624:                                      ; preds = %for.end.621
  %326 = load i32, i32* %savecode, align 4
  %cmp625 = icmp sgt i32 3, %326
  br i1 %cmp625, label %if.then.627, label %if.else.628

if.then.627:                                      ; preds = %if.then.624
  store i32 2, i32* %dcode361, align 4
  %327 = load i32, i32* %w, align 4
  store i32 %327, i32* %saveworm, align 4
  br label %if.end.642

if.else.628:                                      ; preds = %if.then.624
  %328 = load i32, i32* %savecode, align 4
  %cmp629 = icmp eq i32 3, %328
  br i1 %cmp629, label %if.then.631, label %if.end.641

if.then.631:                                      ; preds = %if.else.628
  %329 = load i32, i32* %saveworm, align 4
  %idxprom632 = sext i32 %329 to i64
  %arrayidx633 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i64 %idxprom632
  %330 = load i32, i32* %arrayidx633, align 4
  store i32 %330, i32* %wpos, align 4
  %331 = load i32, i32* %size582, align 4
  %332 = load i32, i32* %wpos, align 4
  %idxprom634 = sext i32 %332 to i64
  %arrayidx635 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom634
  %size636 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx635, i32 0, i32 1
  %333 = load i32, i32* %size636, align 4
  %cmp637 = icmp sgt i32 %331, %333
  br i1 %cmp637, label %if.then.639, label %if.end.640

if.then.639:                                      ; preds = %if.then.631
  %334 = load i32, i32* %w, align 4
  store i32 %334, i32* %saveworm, align 4
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.639, %if.then.631
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.else.628
  br label %if.end.642

if.end.642:                                       ; preds = %if.end.641, %if.then.627
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.642, %for.end.621
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.643, %land.lhs.true.578, %land.lhs.true.576, %if.else.574
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %if.end.573
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %do.end.550
  %335 = load i32, i32* %dcode361, align 4
  %cmp647 = icmp ne i32 %335, 0
  br i1 %cmp647, label %land.lhs.true.649, label %if.end.655

land.lhs.true.649:                                ; preds = %if.end.646
  %336 = load i32, i32* %dcode361, align 4
  %sub650 = sub nsw i32 5, %336
  %337 = load i32, i32* %savecode, align 4
  %cmp651 = icmp sgt i32 %sub650, %337
  br i1 %cmp651, label %if.then.653, label %if.end.655

if.then.653:                                      ; preds = %land.lhs.true.649
  %338 = load i32, i32* %mpos359, align 4
  store i32 %338, i32* %savemove, align 4
  %339 = load i32, i32* %dcode361, align 4
  %sub654 = sub nsw i32 5, %339
  store i32 %sub654, i32* %savecode, align 4
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.653, %land.lhs.true.649, %if.end.646
  br label %if.end.672

if.else.656:                                      ; preds = %if.end.513
  %340 = load i32, i32* %dcode361, align 4
  %cmp657 = icmp ne i32 %340, 5
  br i1 %cmp657, label %if.then.659, label %if.end.671

if.then.659:                                      ; preds = %if.else.656
  %341 = load i32, i32* %mpos359, align 4
  %cmp660 = icmp eq i32 %341, 0
  br i1 %cmp660, label %if.then.662, label %if.else.666

if.then.662:                                      ; preds = %if.then.659
  %342 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool663 = icmp ne %struct.SGFTree_t* %342, null
  br i1 %tobool663, label %if.then.664, label %if.end.665

if.then.664:                                      ; preds = %if.then.662
  %343 = load i8*, i8** %read_function_name, align 8
  %344 = load i32, i32* %q, align 4
  %345 = load i32, i32* %mpos359, align 4
  call void @sgf_trace(i8* %343, i32 %344, i32 %345, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.108, i32 0, i32 0))
  br label %if.end.665

if.end.665:                                       ; preds = %if.then.664, %if.then.662
  br label %if.end.670

if.else.666:                                      ; preds = %if.then.659
  %346 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool667 = icmp ne %struct.SGFTree_t* %346, null
  br i1 %tobool667, label %if.then.668, label %if.end.669

if.then.668:                                      ; preds = %if.else.666
  %347 = load i8*, i8** %read_function_name, align 8
  %348 = load i32, i32* %q, align 4
  %349 = load i32, i32* %mpos359, align 4
  call void @sgf_trace(i8* %347, i32 %348, i32 %349, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i32 0, i32 0))
  br label %if.end.669

if.end.669:                                       ; preds = %if.then.668, %if.else.666
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %if.end.665
  %350 = load i32, i32* %mpos359, align 4
  store i32 %350, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  %351 = load i32, i32* %number_tried_moves, align 4
  %dec = add nsw i32 %351, -1
  store i32 %dec, i32* %number_tried_moves, align 4
  br label %if.end.671

if.end.671:                                       ; preds = %if.end.670, %if.else.656
  br label %if.end.672

if.end.672:                                       ; preds = %if.end.671, %if.end.655
  call void @pop_owl(%struct.local_owl_data** %owl.addr)
  call void @popgo()
  br label %for.inc.673

for.inc.673:                                      ; preds = %if.end.672, %if.then.452, %if.then.438
  %352 = load i32, i32* %k, align 4
  %inc674 = add nsw i32 %352, 1
  store i32 %inc674, i32* %k, align 4
  br label %for.cond.355

for.end.675:                                      ; preds = %if.then.416, %if.then.375, %if.then.367, %for.cond.355
  br label %for.inc.676

for.inc.676:                                      ; preds = %for.end.675, %if.then.353, %if.then.242, %if.then.190
  %353 = load i32, i32* %pass, align 4
  %inc677 = add nsw i32 %353, 1
  store i32 %inc677, i32* %pass, align 4
  br label %for.cond.181

for.end.678:                                      ; preds = %for.cond.181
  %354 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %354, %struct.matched_patterns_list_data* %shape_patterns)
  %355 = load i32, i32* %savecode, align 4
  %tobool679 = icmp ne i32 %355, 0
  br i1 %tobool679, label %if.then.680, label %if.end.742

if.then.680:                                      ; preds = %for.end.678
  %356 = load i32, i32* %savecode, align 4
  %cmp681 = icmp eq i32 %356, 3
  br i1 %cmp681, label %if.then.683, label %if.else.715

if.then.683:                                      ; preds = %if.then.680
  %357 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool684 = icmp ne %struct.SGFTree_t* %357, null
  br i1 %tobool684, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %if.then.683
  %358 = load i8*, i8** %read_function_name, align 8
  %359 = load i32, i32* %q, align 4
  %360 = load i32, i32* %savemove, align 4
  %361 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %358, i32 %359, i32 %360, i32 %361, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i32 0, i32 0))
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.685, %if.then.683
  %362 = load i32*, i32** %wormid.addr, align 8
  %tobool687 = icmp ne i32* %362, null
  br i1 %tobool687, label %if.then.688, label %if.end.689

if.then.688:                                      ; preds = %if.end.686
  %363 = load i32, i32* %saveworm, align 4
  %364 = load i32*, i32** %wormid.addr, align 8
  store i32 %363, i32* %364, align 4
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.688, %if.end.686
  br label %do.body.690

do.body.690:                                      ; preds = %if.end.689
  %365 = load i32, i32* %savecode, align 4
  %cmp691 = icmp ne i32 %365, 0
  br i1 %cmp691, label %land.lhs.true.693, label %if.end.697

land.lhs.true.693:                                ; preds = %do.body.690
  %366 = load i32*, i32** %move.addr, align 8
  %cmp694 = icmp ne i32* %366, null
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %land.lhs.true.693
  %367 = load i32, i32* %savemove, align 4
  %368 = load i32*, i32** %move.addr, align 8
  store i32 %367, i32* %368, align 4
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.696, %land.lhs.true.693, %do.body.690
  %369 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool698 = icmp ne %struct.read_result_t* %369, null
  br i1 %tobool698, label %if.then.699, label %if.end.713

if.then.699:                                      ; preds = %if.end.697
  %370 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2700 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %370, i32 0, i32 1
  %371 = load i32, i32* %data2700, align 4
  %and701 = and i32 %371, 1023
  %or702 = or i32 %and701, 536870912
  %372 = load i32, i32* %savecode, align 4
  %and703 = and i32 %372, 15
  %shl704 = shl i32 %and703, 24
  %or705 = or i32 %or702, %shl704
  %373 = load i32, i32* %saveworm, align 4
  %and706 = and i32 %373, 15
  %shl707 = shl i32 %and706, 20
  %or708 = or i32 %or705, %shl707
  %374 = load i32, i32* %savemove, align 4
  %and709 = and i32 %374, 1023
  %shl710 = shl i32 %and709, 10
  %or711 = or i32 %or708, %shl710
  %375 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2712 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %375, i32 0, i32 1
  store i32 %or711, i32* %data2712, align 4
  br label %if.end.713

if.end.713:                                       ; preds = %if.then.699, %if.end.697
  %376 = load i32, i32* %savecode, align 4
  store i32 %376, i32* %retval
  br label %do.end.762

do.end.714:                                       ; No predecessors!
  br label %if.end.741

if.else.715:                                      ; preds = %if.then.680
  %377 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool716 = icmp ne %struct.SGFTree_t* %377, null
  br i1 %tobool716, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %if.else.715
  %378 = load i8*, i8** %read_function_name, align 8
  %379 = load i32, i32* %q, align 4
  %380 = load i32, i32* %savemove, align 4
  %381 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %378, i32 %379, i32 %380, i32 %381, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end.718

if.end.718:                                       ; preds = %if.then.717, %if.else.715
  br label %do.body.719

do.body.719:                                      ; preds = %if.end.718
  %382 = load i32, i32* %savecode, align 4
  %cmp720 = icmp ne i32 %382, 0
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.726

land.lhs.true.722:                                ; preds = %do.body.719
  %383 = load i32*, i32** %move.addr, align 8
  %cmp723 = icmp ne i32* %383, null
  br i1 %cmp723, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %land.lhs.true.722
  %384 = load i32, i32* %savemove, align 4
  %385 = load i32*, i32** %move.addr, align 8
  store i32 %384, i32* %385, align 4
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.725, %land.lhs.true.722, %do.body.719
  %386 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool727 = icmp ne %struct.read_result_t* %386, null
  br i1 %tobool727, label %if.then.728, label %if.end.739

if.then.728:                                      ; preds = %if.end.726
  %387 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2729 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %387, i32 0, i32 1
  %388 = load i32, i32* %data2729, align 4
  %and730 = and i32 %388, 1023
  %or731 = or i32 %and730, 536870912
  %389 = load i32, i32* %savecode, align 4
  %and732 = and i32 %389, 15
  %shl733 = shl i32 %and732, 24
  %or734 = or i32 %or731, %shl733
  %390 = load i32, i32* %savemove, align 4
  %and735 = and i32 %390, 1023
  %shl736 = shl i32 %and735, 10
  %or737 = or i32 %or734, %shl736
  %391 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2738 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %391, i32 0, i32 1
  store i32 %or737, i32* %data2738, align 4
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.728, %if.end.726
  %392 = load i32, i32* %savecode, align 4
  store i32 %392, i32* %retval
  br label %do.end.762

do.end.740:                                       ; No predecessors!
  br label %if.end.741

if.end.741:                                       ; preds = %do.end.740, %do.end.714
  br label %if.end.742

if.end.742:                                       ; preds = %if.end.741, %for.end.678
  %393 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool743 = icmp ne %struct.SGFTree_t* %393, null
  br i1 %tobool743, label %if.then.744, label %if.end.753

if.then.744:                                      ; preds = %if.end.742
  %arraydecay746 = getelementptr inbounds [128 x i8], [128 x i8]* %winstr745, i32 0, i32 0
  %394 = load i32, i32* @count_variations, align 4
  %395 = load i32, i32* %this_variation_number, align 4
  %sub747 = sub nsw i32 %394, %395
  %call748 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay746, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i32 0, i32 0), i32 %sub747) #2
  %396 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool749 = icmp ne %struct.SGFTree_t* %396, null
  br i1 %tobool749, label %if.then.750, label %if.end.752

if.then.750:                                      ; preds = %if.then.744
  %397 = load i8*, i8** %read_function_name, align 8
  %398 = load i32, i32* %q, align 4
  %arraydecay751 = getelementptr inbounds [128 x i8], [128 x i8]* %winstr745, i32 0, i32 0
  call void @sgf_trace(i8* %397, i32 %398, i32 0, i32 0, i8* %arraydecay751)
  br label %if.end.752

if.end.752:                                       ; preds = %if.then.750, %if.then.744
  br label %if.end.753

if.end.753:                                       ; preds = %if.end.752, %if.end.742
  br label %do.body.754

do.body.754:                                      ; preds = %if.end.753
  %399 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool755 = icmp ne %struct.read_result_t* %399, null
  br i1 %tobool755, label %if.then.756, label %if.end.761

if.then.756:                                      ; preds = %do.body.754
  %400 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2757 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %400, i32 0, i32 1
  %401 = load i32, i32* %data2757, align 4
  %and758 = and i32 %401, 1023
  %or759 = or i32 %and758, 536870912
  %402 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2760 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %402, i32 0, i32 1
  store i32 %or759, i32* %data2760, align 4
  br label %if.end.761

if.end.761:                                       ; preds = %if.then.756, %do.body.754
  store i32 0, i32* %retval
  br label %do.end.762

do.end.762:                                       ; preds = %if.end.54, %if.end.71, %if.end.149, %if.end.177, %if.end.232, %if.end.310, %if.end.406, %if.end.549, %if.end.713, %if.end.739, %if.end.761
  %403 = load i32, i32* %retval
  ret i32 %403
}

; Function Attrs: nounwind uwtable
define internal void @finish_goal_list(i32* %flag, i32* %wpos, i32* %list, i32 %index) #0 {
entry:
  %flag.addr = alloca i32*, align 8
  %wpos.addr = alloca i32*, align 8
  %list.addr = alloca i32*, align 8
  %index.addr = alloca i32, align 4
  store i32* %flag, i32** %flag.addr, align 8
  store i32* %wpos, i32** %wpos.addr, align 8
  store i32* %list, i32** %list.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32*, i32** %flag.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32*, i32** %wpos.addr, align 8
  %cmp1 = icmp ne i32* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %2 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* %index.addr, align 4
  %cmp5 = icmp eq i32 %3, 15
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  %4 = load i32*, i32** %wpos.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  %5 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %list.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %wpos.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  ret void
}

declare void @store_persistent_owl_cache(i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @owl_threaten_attack(i32 %target, i32* %attack1, i32* %attack2) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %attack1.addr = alloca i32*, align 8
  %attack2.addr = alloca i32*, align 8
  %moves = alloca [3 x %struct.owl_move_data], align 16
  %k = alloca i32, align 4
  %other = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %result = alloca i32, align 4
  %reading_nodes_when_called = alloca i32, align 4
  %saved_boundary = alloca [400 x i8], align 16
  %start = alloca double, align 8
  %tactical_nodes = alloca i32, align 4
  %move = alloca i32, align 4
  %move2 = alloca i32, align 4
  %shape_patterns = alloca %struct.matched_patterns_list_data, align 8
  %mpos = alloca i32, align 4
  %pos32 = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %attack1, i32** %attack1.addr, align 8
  store i32* %attack2, i32** %attack2.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 3, %conv
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  store i32 0, i32* %move, align 4
  store i32 0, i32* %move2, align 4
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_patterns, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  store i32 1, i32* @result_certain, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load i32*, i32** %attack1.addr, align 8
  %4 = load i32*, i32** %attack2.addr, align 8
  %call1 = call i32 @search_persistent_owl_cache(i32 2, i32 %2, i32 0, i32 0, i32* %result, i32* %3, i32* %4, i32* null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %result, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @debug, align 4
  %and = and i32 %6, 4096
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call double @gg_cputime()
  store double %call4, double* %start, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  br label %if.end.8

if.else:                                          ; preds = %if.end.5
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1658, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %8 = load i32, i32* @verbose, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %9 = load i32, i32* %target.addr, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load i32, i32* %target.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %10, i32 0, i32 0, i32 1)
  %11 = bitcast [400 x i8]* %saved_boundary to i8*
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %boundary = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 1
  %13 = bitcast [400 x i8]* %boundary to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %13, i64 400, i32 4, i1 false)
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_make_domains(%struct.local_owl_data* %14, %struct.local_owl_data* null)
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %15 = load i32, i32* %other, align 4
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_patterns, %struct.owl_move_data* %arraydecay, i32 %15, %struct.local_owl_data* %16, %struct.pattern_db* @owl_attackpat_db)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %cond.end
  %17 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %17, 3
  br i1 %cmp11, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  store %struct.local_owl_data* %18, %struct.local_owl_data** @current_owl_data, align 8
  %19 = load i32, i32* %other, align 4
  %arraydecay13 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %call14 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %19, %struct.owl_move_data* %arraydecay13, i32 1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  br label %for.end.95

if.else.17:                                       ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom18
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx19, i32 0, i32 0
  %21 = load i32, i32* %pos, align 4
  store i32 %21, i32* %mpos, align 4
  %22 = load i32, i32* %mpos, align 4
  %cmp20 = icmp ne i32 %22, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.else.17
  %23 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom22
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx23, i32 0, i32 1
  %24 = load i32, i32* %value, align 4
  %cmp24 = icmp sgt i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.end.91

if.then.26:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %mpos, align 4
  %26 = load i32, i32* %other, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom27
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx28, i32 0, i32 2
  %28 = load i8*, i8** %name, align 8
  %29 = load i32, i32* %target.addr, align 4
  %call29 = call i32 @trymove(i32 %25, i32 %26, i8* %28, i32 %29, i32 0, i32 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.90

if.then.31:                                       ; preds = %if.then.26
  store i32 0, i32* %origin, align 4
  %30 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %30, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %31 = load i32, i32* %mpos, align 4
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_update_boundary_marks(i32 %31, %struct.local_owl_data* %32)
  %33 = load i32, i32* %target.addr, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.else.74

if.then.38:                                       ; preds = %if.then.31
  store i32 21, i32* %pos32, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %if.then.38
  %35 = load i32, i32* %pos32, align 4
  %cmp40 = icmp slt i32 %35, 400
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %36 = load i32, i32* %pos32, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom43
  %37 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %37 to i32
  %cmp46 = icmp eq i32 %conv45, 1
  br i1 %cmp46, label %land.lhs.true.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.42
  %38 = load i32, i32* %pos32, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %39 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %39 to i32
  %cmp51 = icmp eq i32 %conv50, 2
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %lor.lhs.false, %for.body.42
  %40 = load i32, i32* %pos32, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %41, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom54
  %42 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %42 to i32
  %cmp57 = icmp eq i32 %conv56, 1
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.53
  %43 = load i32, i32* %pos32, align 4
  %call60 = call i32 @find_origin(i32 %43)
  store i32 %call60, i32* %origin, align 4
  br label %for.end

if.end.61:                                        ; preds = %land.lhs.true.53, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %44 = load i32, i32* %pos32, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %pos32, align 4
  br label %for.cond.39

for.end:                                          ; preds = %if.then.59, %for.cond.39
  %45 = load i32, i32* %origin, align 4
  %cmp62 = icmp eq i32 %45, 0
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %for.end
  %46 = load i32, i32* %origin, align 4
  %47 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call65 = call i32 @do_owl_attack(i32 %46, i32* null, i32* null, %struct.local_owl_data* %47, i32 0, i32 0, i32 0)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %lor.lhs.false.64, %for.end
  call void @popgo()
  %48 = load i32, i32* @stackp, align 4
  %cmp68 = icmp eq i32 %48, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.then.67
  br label %if.end.72

if.else.71:                                       ; preds = %if.then.67
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  store i32 1, i32* %result, align 4
  br label %for.end.95

if.end.73:                                        ; preds = %lor.lhs.false.64
  br label %if.end.88

if.else.74:                                       ; preds = %if.then.31
  %49 = load i32, i32* %target.addr, align 4
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call75 = call i32 @do_owl_attack(i32 %49, i32* %move2, i32* null, %struct.local_owl_data* %50, i32 0, i32 0, i32 0)
  %cmp76 = icmp eq i32 %call75, 5
  br i1 %cmp76, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %if.else.74
  %51 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom79
  %pos81 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx80, i32 0, i32 0
  %52 = load i32, i32* %pos81, align 4
  store i32 %52, i32* %move, align 4
  call void @popgo()
  %53 = load i32, i32* @stackp, align 4
  %cmp82 = icmp eq i32 %53, 0
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.then.78
  br label %if.end.86

if.else.85:                                       ; preds = %if.then.78
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1705, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.84
  store i32 1, i32* %result, align 4
  br label %for.end.95

if.end.87:                                        ; preds = %if.else.74
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.73
  call void @popgo()
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %boundary89 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %54, i32 0, i32 1
  %55 = bitcast [400 x i8]* %boundary89 to i8*
  %56 = bitcast [400 x i8]* %saved_boundary to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 400, i32 4, i1 false)
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.88, %if.then.26
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true, %if.else.17
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %57 = load i32, i32* %k, align 4
  %inc94 = add nsw i32 %57, 1
  store i32 %inc94, i32* %k, align 4
  br label %for.cond

for.end.95:                                       ; preds = %if.end.86, %if.end.72, %if.then.16, %for.cond
  %call96 = call i32 @get_reading_node_counter()
  %58 = load i32, i32* %reading_nodes_when_called, align 4
  %sub97 = sub nsw i32 %call96, %58
  store i32 %sub97, i32* %tactical_nodes, align 4
  %59 = load i32, i32* @stackp, align 4
  %cmp98 = icmp eq i32 %59, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %for.end.95
  br label %if.end.102

if.else.101:                                      ; preds = %for.end.95
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 1715, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.100
  %60 = load i32, i32* @debug, align 4
  %and103 = and i32 %60, 4096
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %cond.false.106, label %cond.true.105

cond.true.105:                                    ; preds = %if.end.102
  br label %cond.end.110

cond.false.106:                                   ; preds = %if.end.102
  %61 = load i32, i32* %target.addr, align 4
  %62 = load i32, i32* %move, align 4
  %63 = load i32, i32* %move2, align 4
  %64 = load i32, i32* %result, align 4
  %65 = load i32, i32* @local_owl_node_counter, align 4
  %66 = load i32, i32* %tactical_nodes, align 4
  %call107 = call double @gg_cputime()
  %67 = load double, double* %start, align 8
  %sub108 = fsub double %call107, %67
  %call109 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i32 0, i32 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, double %sub108)
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.106, %cond.true.105
  %68 = load i32, i32* %target.addr, align 4
  %69 = load i32, i32* %result, align 4
  %70 = load i32, i32* %move, align 4
  %71 = load i32, i32* %move2, align 4
  %72 = load i32, i32* %tactical_nodes, align 4
  %73 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal111 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %73, i32 0, i32 0
  %arraydecay112 = getelementptr inbounds [400 x i8], [400 x i8]* %goal111, i32 0, i32 0
  %74 = load i32, i32* %target.addr, align 4
  %idxprom113 = sext i32 %74 to i64
  %arrayidx114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom113
  %75 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %75 to i32
  call void @store_persistent_owl_cache(i32 2, i32 %68, i32 0, i32 0, i32 %69, i32 %70, i32 %71, i32 0, i32 %72, i8* %arraydecay112, i32 %conv115)
  %76 = load i32*, i32** %attack1.addr, align 8
  %tobool116 = icmp ne i32* %76, null
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %cond.end.110
  %77 = load i32, i32* %move, align 4
  %78 = load i32*, i32** %attack1.addr, align 8
  store i32 %77, i32* %78, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %cond.end.110
  %79 = load i32*, i32** %attack2.addr, align 8
  %tobool119 = icmp ne i32* %79, null
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.118
  %80 = load i32, i32* %move2, align 4
  %81 = load i32*, i32** %attack2.addr, align 8
  store i32 %80, i32* %81, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.end.118
  %82 = load i32, i32* %other, align 4
  call void @close_pattern_list(i32 %82, %struct.matched_patterns_list_data* %shape_patterns)
  %83 = load i32, i32* %result, align 4
  store i32 %83, i32* %retval
  br label %return

return:                                           ; preds = %if.end.121, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @owl_shapes(%struct.matched_patterns_list_data* %pattern_list, %struct.owl_move_data* %moves, i32 %color, %struct.local_owl_data* %owl, %struct.pattern_db* %type) #0 {
entry:
  %pattern_list.addr = alloca %struct.matched_patterns_list_data*, align 8
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %color.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %type.addr = alloca %struct.pattern_db*, align 8
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  store %struct.matched_patterns_list_data* %pattern_list, %struct.matched_patterns_list_data** %pattern_list.addr, align 8
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store %struct.pattern_db* %type, %struct.pattern_db** %type.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %2, %struct.local_owl_data** @current_owl_data, align 8
  %3 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  call void @clear_owl_move_data(%struct.owl_move_data* %3)
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %safe_move_cache = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %4, i32 0, i32 13
  %5 = bitcast [400 x i8]* %safe_move_cache to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 400, i32 4, i1 false)
  %6 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %pattern_list.addr, align 8
  call void @init_pattern_list(%struct.matched_patterns_list_data* %6)
  %7 = load i32, i32* %color.addr, align 4
  %8 = load %struct.pattern_db*, %struct.pattern_db** %type.addr, align 8
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %pattern_list.addr, align 8
  %10 = bitcast %struct.matched_patterns_list_data* %9 to i8*
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @collect_owl_shapes_callbacks, i32 %7, %struct.pattern_db* %8, i8* %10, i8* %arraydecay)
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %12, %struct.SGFTree_t** @sgf_dumptree, align 8
  %13 = load i32, i32* %save_count_variations, align 4
  store i32 %13, i32* @count_variations, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %list, i32 %color, %struct.owl_move_data* %moves, i32 %cutoff) #0 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.matched_patterns_list_data*, align 8
  %color.addr = alloca i32, align 4
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %cutoff.addr = alloca i32, align 4
  %top = alloca i32, align 4
  %bottom = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %move = alloca i32, align 4
  %matched_pattern = alloca %struct.matched_pattern_data, align 8
  %move_found = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %top_val = alloca float, align 4
  %top_pattern = alloca %struct.pattern*, align 8
  %top_move = alloca i32, align 4
  %bot_val = alloca float, align 4
  %bot_pattern = alloca %struct.pattern*, align 8
  %bot_move = alloca i32, align 4
  %same_dragon138 = alloca i32, align 4
  store %struct.matched_patterns_list_data* %list, %struct.matched_patterns_list_data** %list.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store i32 %cutoff, i32* %cutoff.addr, align 4
  store i32 0, i32* %move_found, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %2 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %2, i32 0, i32 2
  %3 = load i32, i32* %used, align 4
  store i32 %3, i32* %top, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.225, %entry
  %4 = load i32, i32* %top, align 4
  %5 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %5, i32 0, i32 1
  %6 = load i32, i32* %counter, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.227

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %top, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %8, i32 0, i32 5
  %9 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list, align 8
  %arrayidx = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %9, i64 %idxprom
  %pattern = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx, i32 0, i32 2
  %10 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 15
  %11 = load float, float* %value, align 4
  store float %11, float* %top_val, align 4
  %12 = load i32, i32* %top, align 4
  %idxprom1 = sext i32 %12 to i64
  %13 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list2 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %13, i32 0, i32 5
  %14 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list2, align 8
  %arrayidx3 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %14, i64 %idxprom1
  %pattern4 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx3, i32 0, i32 2
  %15 = load %struct.pattern*, %struct.pattern** %pattern4, align 8
  store %struct.pattern* %15, %struct.pattern** %top_pattern, align 8
  %16 = load i32, i32* %top, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list6 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %17, i32 0, i32 5
  %18 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list6, align 8
  %arrayidx7 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %18, i64 %idxprom5
  %move8 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx7, i32 0, i32 0
  %19 = load i32, i32* %move8, align 4
  store i32 %19, i32* %top_move, align 4
  %20 = load i32, i32* %top, align 4
  %21 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %21, i32 0, i32 3
  %22 = load i32, i32* %ordered_up_to, align 4
  %cmp9 = icmp sge i32 %20, %22
  br i1 %cmp9, label %if.then, label %if.end.53

if.then:                                          ; preds = %for.body
  %23 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter10 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %23, i32 0, i32 1
  %24 = load i32, i32* %counter10, align 4
  %sub = sub nsw i32 %24, 1
  store i32 %sub, i32* %bottom, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %25 = load i32, i32* %bottom, align 4
  %26 = load i32, i32* %top, align 4
  %cmp12 = icmp sgt i32 %25, %26
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %27 = load i32, i32* %bottom, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list15 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %28, i32 0, i32 5
  %29 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list15, align 8
  %arrayidx16 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %29, i64 %idxprom14
  %pattern17 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx16, i32 0, i32 2
  %30 = load %struct.pattern*, %struct.pattern** %pattern17, align 8
  %value18 = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 15
  %31 = load float, float* %value18, align 4
  store float %31, float* %bot_val, align 4
  store %struct.pattern* null, %struct.pattern** %bot_pattern, align 8
  store i32 0, i32* %bot_move, align 4
  %32 = load float, float* %bot_val, align 4
  %33 = load float, float* %top_val, align 4
  %cmp19 = fcmp oge float %32, %33
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %for.body.13
  %34 = load i32, i32* %bottom, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list22 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %35, i32 0, i32 5
  %36 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list22, align 8
  %arrayidx23 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %36, i64 %idxprom21
  %pattern24 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx23, i32 0, i32 2
  %37 = load %struct.pattern*, %struct.pattern** %pattern24, align 8
  store %struct.pattern* %37, %struct.pattern** %bot_pattern, align 8
  %38 = load i32, i32* %bottom, align 4
  %idxprom25 = sext i32 %38 to i64
  %39 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list26 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %39, i32 0, i32 5
  %40 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list26, align 8
  %arrayidx27 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %40, i64 %idxprom25
  %move28 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx27, i32 0, i32 0
  %41 = load i32, i32* %move28, align 4
  store i32 %41, i32* %bot_move, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %for.body.13
  %42 = load float, float* %bot_val, align 4
  %43 = load float, float* %top_val, align 4
  %cmp29 = fcmp ogt float %42, %43
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %44 = load float, float* %bot_val, align 4
  %45 = load float, float* %top_val, align 4
  %cmp30 = fcmp oeq float %44, %45
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false.32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %46 = load %struct.pattern*, %struct.pattern** %bot_pattern, align 8
  %47 = load %struct.pattern*, %struct.pattern** %top_pattern, align 8
  %cmp31 = icmp ult %struct.pattern* %46, %47
  br i1 %cmp31, label %if.then.38, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %48 = load float, float* %bot_val, align 4
  %49 = load float, float* %top_val, align 4
  %cmp33 = fcmp oeq float %48, %49
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.51

land.lhs.true.34:                                 ; preds = %lor.lhs.false.32
  %50 = load %struct.pattern*, %struct.pattern** %bot_pattern, align 8
  %51 = load %struct.pattern*, %struct.pattern** %top_pattern, align 8
  %cmp35 = icmp eq %struct.pattern* %50, %51
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.51

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %52 = load i32, i32* %bot_move, align 4
  %53 = load i32, i32* %top_move, align 4
  %cmp37 = icmp slt i32 %52, %53
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %land.lhs.true.36, %land.lhs.true, %if.end
  %54 = load i32, i32* %bottom, align 4
  %idxprom39 = sext i32 %54 to i64
  %55 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list40 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %55, i32 0, i32 5
  %56 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list40, align 8
  %arrayidx41 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %56, i64 %idxprom39
  %57 = bitcast %struct.matched_pattern_data* %matched_pattern to i8*
  %58 = bitcast %struct.matched_pattern_data* %arrayidx41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false)
  %59 = load i32, i32* %bottom, align 4
  %idxprom42 = sext i32 %59 to i64
  %60 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list43 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %60, i32 0, i32 5
  %61 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list43, align 8
  %arrayidx44 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %61, i64 %idxprom42
  %62 = load i32, i32* %top, align 4
  %idxprom45 = sext i32 %62 to i64
  %63 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list46 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %63, i32 0, i32 5
  %64 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list46, align 8
  %arrayidx47 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %64, i64 %idxprom45
  %65 = bitcast %struct.matched_pattern_data* %arrayidx44 to i8*
  %66 = bitcast %struct.matched_pattern_data* %arrayidx47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false)
  %67 = load i32, i32* %top, align 4
  %idxprom48 = sext i32 %67 to i64
  %68 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list49 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %68, i32 0, i32 5
  %69 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list49, align 8
  %arrayidx50 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %69, i64 %idxprom48
  %70 = bitcast %struct.matched_pattern_data* %arrayidx50 to i8*
  %71 = bitcast %struct.matched_pattern_data* %matched_pattern to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false)
  %72 = load float, float* %bot_val, align 4
  store float %72, float* %top_val, align 4
  %73 = load %struct.pattern*, %struct.pattern** %bot_pattern, align 8
  store %struct.pattern* %73, %struct.pattern** %top_pattern, align 8
  %74 = load i32, i32* %bot_move, align 4
  store i32 %74, i32* %top_move, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.38, %land.lhs.true.36, %land.lhs.true.34, %lor.lhs.false.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %75 = load i32, i32* %bottom, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %bottom, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %76 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to52 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %76, i32 0, i32 3
  %77 = load i32, i32* %ordered_up_to52, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %ordered_up_to52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %for.body
  %78 = load i32, i32* %top, align 4
  %idxprom54 = sext i32 %78 to i64
  %79 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list55 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %79, i32 0, i32 5
  %80 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list55, align 8
  %arrayidx56 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %80, i64 %idxprom54
  %81 = bitcast %struct.matched_pattern_data* %matched_pattern to i8*
  %82 = bitcast %struct.matched_pattern_data* %arrayidx56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false)
  %83 = load float, float* %top_val, align 4
  %84 = load i32, i32* %cutoff.addr, align 4
  %conv = sitofp i32 %84 to float
  %cmp57 = fcmp olt float %83, %conv
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.53
  %85 = load i32, i32* %top, align 4
  %add = add nsw i32 %85, 1
  %86 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to60 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %86, i32 0, i32 3
  store i32 %add, i32* %ordered_up_to60, align 4
  %87 = load i32, i32* %top, align 4
  %88 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used61 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %88, i32 0, i32 2
  store i32 %87, i32* %used61, align 4
  %89 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %89, %struct.SGFTree_t** @sgf_dumptree, align 8
  %90 = load i32, i32* %save_count_variations, align 4
  store i32 %90, i32* @count_variations, align 4
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.53
  %move63 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 0
  %91 = load i32, i32* %move63, align 4
  store i32 %91, i32* %move, align 4
  %92 = load i32, i32* %move, align 4
  %cmp64 = icmp ult i32 %92, 421
  br i1 %cmp64, label %land.lhs.true.66, label %if.else

land.lhs.true.66:                                 ; preds = %if.end.62
  %93 = load i32, i32* %move, align 4
  %idxprom67 = sext i32 %93 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %94 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %94 to i32
  %cmp70 = icmp ne i32 %conv69, 3
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %land.lhs.true.66
  br label %if.end.75

if.else:                                          ; preds = %land.lhs.true.66, %if.end.62
  %95 = load i32, i32* %move, align 4
  %div = sdiv i32 %95, 20
  %sub73 = sub nsw i32 %div, 1
  %96 = load i32, i32* %move, align 4
  %rem = srem i32 %96, 20
  %sub74 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 3098, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i32 %sub73, i32 %sub74)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.72
  store i32 0, i32* %k, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %if.end.75
  %97 = load i32, i32* %k, align 4
  %cmp77 = icmp slt i32 %97, 3
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %98 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %98 to i64
  %99 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %99, i64 %idxprom80
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx81, i32 0, i32 0
  %100 = load i32, i32* %pos, align 4
  %101 = load i32, i32* %move, align 4
  %cmp82 = icmp eq i32 %100, %101
  br i1 %cmp82, label %if.then.90, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %for.body.79
  %102 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %102 to i64
  %103 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %103, i64 %idxprom85
  %value87 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx86, i32 0, i32 1
  %104 = load i32, i32* %value87, align 4
  %cmp88 = icmp sle i32 %104, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.lhs.false.84, %for.body.79
  br label %for.end.94

if.end.91:                                        ; preds = %lor.lhs.false.84
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %105 = load i32, i32* %k, align 4
  %inc93 = add nsw i32 %105, 1
  store i32 %inc93, i32* %k, align 4
  br label %for.cond.76

for.end.94:                                       ; preds = %if.then.90, %for.cond.76
  %106 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %106 to i64
  %107 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %107, i64 %idxprom95
  %pos97 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx96, i32 0, i32 0
  %108 = load i32, i32* %pos97, align 4
  %109 = load i32, i32* %move, align 4
  %cmp98 = icmp eq i32 %108, %109
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.end.94
  br label %for.inc.225

if.end.101:                                       ; preds = %for.end.94
  %110 = load i32, i32* %k, align 4
  %cmp102 = icmp slt i32 %110, 3
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.end.101
  br label %if.end.106

if.else.105:                                      ; preds = %if.end.101
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 3105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.104
  %111 = load i32, i32* %move, align 4
  %112 = load i32, i32* %color.addr, align 4
  %pattern107 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %113 = load %struct.pattern*, %struct.pattern** %pattern107, align 8
  %ll = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 1
  %114 = load i32, i32* %ll, align 4
  %call = call i32 @check_pattern_hard(i32 %111, i32 %112, %struct.pattern* %113, i32 %114)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.108, label %if.end.224

if.then.108:                                      ; preds = %if.end.106
  %115 = load i32, i32* %move, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %116 to i64
  %117 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %117, i64 %idxprom109
  %pos111 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx110, i32 0, i32 0
  store i32 %115, i32* %pos111, align 4
  %118 = load float, float* %top_val, align 4
  %conv112 = fptosi float %118 to i32
  %119 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %119 to i64
  %120 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %120, i64 %idxprom113
  %value115 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx114, i32 0, i32 1
  store i32 %conv112, i32* %value115, align 4
  %pattern116 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %121 = load %struct.pattern*, %struct.pattern** %pattern116, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %121, i32 0, i32 3
  %122 = load i8*, i8** %name, align 8
  %123 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %123 to i64
  %124 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %124, i64 %idxprom117
  %name119 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx118, i32 0, i32 2
  store i8* %122, i8** %name119, align 8
  store i32 1, i32* %move_found, align 4
  %125 = load i32, i32* @verbose, align 4
  %tobool120 = icmp ne i32 %125, 0
  br i1 %tobool120, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.108
  br label %cond.end

cond.false:                                       ; preds = %if.then.108
  %pattern121 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %126 = load %struct.pattern*, %struct.pattern** %pattern121, align 8
  %name122 = getelementptr inbounds %struct.pattern, %struct.pattern* %126, i32 0, i32 3
  %127 = load i8*, i8** %name122, align 8
  %128 = load i32, i32* %move, align 4
  %129 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %129 to i64
  %130 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %130, i64 %idxprom123
  %value125 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx124, i32 0, i32 1
  %131 = load i32, i32* %value125, align 4
  %call126 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), i8* %127, i32 %128, i32 %131)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %pattern127 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %132 = load %struct.pattern*, %struct.pattern** %pattern127, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %132, i32 0, i32 14
  %133 = load i32, i32* %class, align 4
  %and = and i32 %133, 512
  %tobool128 = icmp ne i32 %and, 0
  br i1 %tobool128, label %if.then.129, label %if.else.132

if.then.129:                                      ; preds = %cond.end
  %134 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %134 to i64
  %135 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %135, i64 %idxprom130
  %same_dragon = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx131, i32 0, i32 3
  store i32 0, i32* %same_dragon, align 4
  br label %if.end.211

if.else.132:                                      ; preds = %cond.end
  %pattern133 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %136 = load %struct.pattern*, %struct.pattern** %pattern133, align 8
  %class134 = getelementptr inbounds %struct.pattern, %struct.pattern* %136, i32 0, i32 14
  %137 = load i32, i32* %class134, align 4
  %and135 = and i32 %137, 2048
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.else.206

if.then.137:                                      ; preds = %if.else.132
  store i32 1, i32* %same_dragon138, align 4
  %138 = load i32, i32* %top, align 4
  %add139 = add nsw i32 %138, 1
  store i32 %add139, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.200, %if.then.137
  %139 = load i32, i32* %i, align 4
  %140 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter141 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %140, i32 0, i32 1
  %141 = load i32, i32* %counter141, align 4
  %cmp142 = icmp slt i32 %139, %141
  br i1 %cmp142, label %for.body.144, label %for.end.202

for.body.144:                                     ; preds = %for.cond.140
  %142 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %142 to i64
  %143 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list146 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %143, i32 0, i32 5
  %144 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list146, align 8
  %arrayidx147 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %144, i64 %idxprom145
  %move148 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx147, i32 0, i32 0
  %145 = load i32, i32* %move148, align 4
  %146 = load i32, i32* %move, align 4
  %cmp149 = icmp eq i32 %145, %146
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.199

land.lhs.true.151:                                ; preds = %for.body.144
  %147 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %147 to i64
  %148 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list153 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %148, i32 0, i32 5
  %149 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list153, align 8
  %arrayidx154 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %149, i64 %idxprom152
  %pattern155 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx154, i32 0, i32 2
  %150 = load %struct.pattern*, %struct.pattern** %pattern155, align 8
  %class156 = getelementptr inbounds %struct.pattern, %struct.pattern* %150, i32 0, i32 14
  %151 = load i32, i32* %class156, align 4
  %and157 = and i32 %151, 512
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %land.lhs.true.167, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.151
  %152 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %152 to i64
  %153 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list161 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %153, i32 0, i32 5
  %154 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list161, align 8
  %arrayidx162 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %154, i64 %idxprom160
  %pattern163 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx162, i32 0, i32 2
  %155 = load %struct.pattern*, %struct.pattern** %pattern163, align 8
  %class164 = getelementptr inbounds %struct.pattern, %struct.pattern* %155, i32 0, i32 14
  %156 = load i32, i32* %class164, align 4
  %and165 = and i32 %156, 2048
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.end.199, label %land.lhs.true.167

land.lhs.true.167:                                ; preds = %lor.lhs.false.159, %land.lhs.true.151
  %157 = load i32, i32* %move, align 4
  %158 = load i32, i32* %color.addr, align 4
  %159 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %159 to i64
  %160 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list169 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %160, i32 0, i32 5
  %161 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list169, align 8
  %arrayidx170 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %161, i64 %idxprom168
  %pattern171 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx170, i32 0, i32 2
  %162 = load %struct.pattern*, %struct.pattern** %pattern171, align 8
  %163 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %163 to i64
  %164 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list173 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %164, i32 0, i32 5
  %165 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list173, align 8
  %arrayidx174 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %165, i64 %idxprom172
  %ll175 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx174, i32 0, i32 1
  %166 = load i32, i32* %ll175, align 4
  %call176 = call i32 @check_pattern_hard(i32 %157, i32 %158, %struct.pattern* %162, i32 %166)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.199

if.then.178:                                      ; preds = %land.lhs.true.167
  %167 = load i32, i32* @verbose, align 4
  %tobool179 = icmp ne i32 %167, 0
  br i1 %tobool179, label %cond.false.181, label %cond.true.180

cond.true.180:                                    ; preds = %if.then.178
  br label %cond.end.188

cond.false.181:                                   ; preds = %if.then.178
  %168 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %168 to i64
  %169 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list183 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %169, i32 0, i32 5
  %170 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list183, align 8
  %arrayidx184 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %170, i64 %idxprom182
  %pattern185 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx184, i32 0, i32 2
  %171 = load %struct.pattern*, %struct.pattern** %pattern185, align 8
  %name186 = getelementptr inbounds %struct.pattern, %struct.pattern* %171, i32 0, i32 3
  %172 = load i8*, i8** %name186, align 8
  %173 = load i32, i32* %move, align 4
  %call187 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0), i8* %172, i32 %173)
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.181, %cond.true.180
  %174 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %174 to i64
  %175 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list190 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %175, i32 0, i32 5
  %176 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list190, align 8
  %arrayidx191 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %176, i64 %idxprom189
  %pattern192 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx191, i32 0, i32 2
  %177 = load %struct.pattern*, %struct.pattern** %pattern192, align 8
  %class193 = getelementptr inbounds %struct.pattern, %struct.pattern* %177, i32 0, i32 14
  %178 = load i32, i32* %class193, align 4
  %and194 = and i32 %178, 512
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %cond.end.188
  store i32 0, i32* %same_dragon138, align 4
  br label %if.end.198

if.else.197:                                      ; preds = %cond.end.188
  store i32 2, i32* %same_dragon138, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.197, %if.then.196
  br label %for.end.202

if.end.199:                                       ; preds = %land.lhs.true.167, %lor.lhs.false.159, %for.body.144
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.199
  %179 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %179, 1
  store i32 %inc201, i32* %i, align 4
  br label %for.cond.140

for.end.202:                                      ; preds = %if.end.198, %for.cond.140
  %180 = load i32, i32* %same_dragon138, align 4
  %181 = load i32, i32* %k, align 4
  %idxprom203 = sext i32 %181 to i64
  %182 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx204 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %182, i64 %idxprom203
  %same_dragon205 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx204, i32 0, i32 3
  store i32 %180, i32* %same_dragon205, align 4
  br label %if.end.210

if.else.206:                                      ; preds = %if.else.132
  %183 = load i32, i32* %k, align 4
  %idxprom207 = sext i32 %183 to i64
  %184 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %184, i64 %idxprom207
  %same_dragon209 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx208, i32 0, i32 3
  store i32 2, i32* %same_dragon209, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.206, %for.end.202
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.129
  %pattern212 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %matched_pattern, i32 0, i32 2
  %185 = load %struct.pattern*, %struct.pattern** %pattern212, align 8
  %class213 = getelementptr inbounds %struct.pattern, %struct.pattern* %185, i32 0, i32 14
  %186 = load i32, i32* %class213, align 4
  %and214 = and i32 %186, 8192
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.219

if.then.216:                                      ; preds = %if.end.211
  %187 = load i32, i32* %k, align 4
  %idxprom217 = sext i32 %187 to i64
  %188 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx218 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %188, i64 %idxprom217
  %escape = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx218, i32 0, i32 4
  store i32 1, i32* %escape, align 4
  br label %if.end.223

if.else.219:                                      ; preds = %if.end.211
  %189 = load i32, i32* %k, align 4
  %idxprom220 = sext i32 %189 to i64
  %190 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx221 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %190, i64 %idxprom220
  %escape222 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx221, i32 0, i32 4
  store i32 0, i32* %escape222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.219, %if.then.216
  br label %for.end.227

if.end.224:                                       ; preds = %if.end.106
  br label %for.inc.225

for.inc.225:                                      ; preds = %if.end.224, %if.then.100
  %191 = load i32, i32* %top, align 4
  %inc226 = add nsw i32 %191, 1
  store i32 %inc226, i32* %top, align 4
  br label %for.cond

for.end.227:                                      ; preds = %if.end.223, %for.cond
  %192 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %192, %struct.SGFTree_t** @sgf_dumptree, align 8
  %193 = load i32, i32* %save_count_variations, align 4
  store i32 %193, i32* @count_variations, align 4
  %194 = load i32, i32* %top, align 4
  %add228 = add nsw i32 %194, 1
  %195 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to229 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %195, i32 0, i32 3
  store i32 %add228, i32* %ordered_up_to229, align 4
  %196 = load i32, i32* %top, align 4
  %add230 = add nsw i32 %196, 1
  %197 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used231 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %197, i32 0, i32 2
  store i32 %add230, i32* %used231, align 4
  %198 = load i32, i32* %move_found, align 4
  store i32 %198, i32* %retval
  br label %return

return:                                           ; preds = %for.end.227, %if.then.59
  %199 = load i32, i32* %retval
  ret i32 %199
}

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @owl_update_boundary_marks(i32 %pos, %struct.local_owl_data* %owl) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %boundary_mark = alloca i8, align 1
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos243 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i8 0, i8* %boundary_mark, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos.addr, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %pos2, align 4
  %4 = load i32, i32* %pos2, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %pos2, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %9 = load i8, i8* %boundary_mark, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp sgt i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %pos2, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary12 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary12, i32 0, i64 %idxprom11
  %12 = load i8, i8* %arrayidx13, align 1
  store i8 %12, i8* %boundary_mark, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %13 = load i32, i32* %pos2, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i32 0, i32 3
  %16 = load i32, i32* %color, align 4
  %cmp17 = icmp eq i32 %conv16, %16
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.35

land.lhs.true.19:                                 ; preds = %if.end
  %17 = load i32, i32* %pos2, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom20
  %color22 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx21, i32 0, i32 0
  %18 = load i32, i32* %color22, align 4
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 3
  %20 = load i32, i32* %color23, align 4
  %cmp24 = icmp eq i32 %18, %20
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.35

land.lhs.true.26:                                 ; preds = %land.lhs.true.19
  %21 = load i32, i32* %pos2, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 16
  %22 = load i32, i32* %status, align 4
  %cmp29 = icmp eq i32 %22, 1
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %23 = load i32, i32* %pos2, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %24, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom32
  %25 = load i8, i8* %arrayidx33, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31
  store i8 2, i8* %boundary_mark, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i8, i8* %boundary_mark, align 1
  %28 = load i32, i32* %pos.addr, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary37 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %29, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary37, i32 0, i64 %idxprom36
  store i8 %27, i8* %arrayidx38, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.66, %for.end
  %30 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %30, 4
  br i1 %cmp40, label %for.body.42, label %for.end.68

for.body.42:                                      ; preds = %for.cond.39
  %31 = load i32, i32* %pos.addr, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom44
  %33 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %31, %33
  store i32 %add46, i32* %pos243, align 4
  %34 = load i32, i32* %pos243, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %35 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %36 = load i32, i32* %pos.addr, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %37 to i32
  %cmp53 = icmp eq i32 %conv49, %conv52
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.65

land.lhs.true.55:                                 ; preds = %for.body.42
  %38 = load i32, i32* %pos243, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary57 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %39, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary57, i32 0, i64 %idxprom56
  %40 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %40 to i32
  %41 = load i8, i8* %boundary_mark, align 1
  %conv60 = sext i8 %41 to i32
  %cmp61 = icmp slt i32 %conv59, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.55
  %42 = load i32, i32* %pos243, align 4
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary64 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %boundary64, i32 0, i32 0
  %44 = load i8, i8* %boundary_mark, align 1
  call void @mark_string(i32 %42, i8* %arraydecay, i8 signext %44)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %land.lhs.true.55, %for.body.42
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %45 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %45, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.39

for.end.68:                                       ; preds = %for.cond.39
  ret void
}

declare i32 @find_origin(i32) #1

declare void @popgo() #1

; Function Attrs: nounwind uwtable
define internal void @close_pattern_list(i32 %color, %struct.matched_patterns_list_data* %list) #0 {
entry:
  %color.addr = alloca i32, align 4
  %list.addr = alloca %struct.matched_patterns_list_data*, align 8
  %i = alloca i32, align 4
  %found_one = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.matched_patterns_list_data* %list, %struct.matched_patterns_list_data** %list.addr, align 8
  %0 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %0, i32 0, i32 0
  %1 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @allpats, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* @verbose, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.34

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %found_one, align 4
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %4, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %5 = load i32, i32* @count_variations, align 4
  store i32 %5, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %6 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %6, i32 0, i32 2
  %7 = load i32, i32* %used, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %9, i32 0, i32 1
  %10 = load i32, i32* %counter, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %12, i32 0, i32 5
  %13 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list, align 8
  %arrayidx = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %13, i64 %idxprom
  %move = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %move, align 4
  %15 = load i32, i32* %color.addr, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %16 to i64
  %17 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list5 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %17, i32 0, i32 5
  %18 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list5, align 8
  %arrayidx6 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %18, i64 %idxprom4
  %pattern = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx6, i32 0, i32 2
  %19 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list8 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %21, i32 0, i32 5
  %22 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list8, align 8
  %arrayidx9 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %22, i64 %idxprom7
  %ll = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx9, i32 0, i32 1
  %23 = load i32, i32* %ll, align 4
  %call = call i32 @check_pattern_hard(i32 %14, i32 %15, %struct.pattern* %19, i32 %23)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.33

if.then.11:                                       ; preds = %for.body
  %24 = load i32, i32* %found_one, align 4
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %25 = load i32, i32* @verbose, align 4
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.13
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  %call15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.135, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  call void @dump_stack()
  store i32 1, i32* %found_one, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.11
  %26 = load i32, i32* @verbose, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %cond.false.18, label %cond.true.17

cond.true.17:                                     ; preds = %if.end
  br label %cond.end.32

cond.false.18:                                    ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list20 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %28, i32 0, i32 5
  %29 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list20, align 8
  %arrayidx21 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %29, i64 %idxprom19
  %pattern22 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx21, i32 0, i32 2
  %30 = load %struct.pattern*, %struct.pattern** %pattern22, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 3
  %31 = load i8*, i8** %name, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list24 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %33, i32 0, i32 5
  %34 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list24, align 8
  %arrayidx25 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %34, i64 %idxprom23
  %move26 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx25, i32 0, i32 0
  %35 = load i32, i32* %move26, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list28 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %37, i32 0, i32 5
  %38 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list28, align 8
  %arrayidx29 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %38, i64 %idxprom27
  %pattern30 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %arrayidx29, i32 0, i32 2
  %39 = load %struct.pattern*, %struct.pattern** %pattern30, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 15
  %40 = load float, float* %value, align 4
  %conv = fptosi float %40 to i32
  %call31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), i8* %31, i32 %35, i32 %conv)
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.18, %cond.true.17
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %42, %struct.SGFTree_t** @sgf_dumptree, align 8
  %43 = load i32, i32* %save_count_variations, align 4
  store i32 %43, i32* @count_variations, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %land.lhs.true, %if.then
  %44 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list35 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %44, i32 0, i32 5
  %45 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list35, align 8
  %46 = bitcast %struct.matched_pattern_data* %45 to i8*
  call void @free(i8* %46) #2
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %entry
  %47 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter37 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %47, i32 0, i32 1
  store i32 -1, i32* %counter37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @owl_defend(i32 %target, i32* %defense_point, i32* %certain, i32* %kworm) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %certain.addr = alloca i32*, align 8
  %kworm.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %reading_nodes_when_called = alloca i32, align 4
  %start = alloca double, align 8
  %tactical_nodes = alloca i32, align 4
  %move = alloca i32, align 4
  %wpos = alloca i32, align 4
  %wid = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i32* %certain, i32** %certain.addr, align 8
  store i32* %kworm, i32** %kworm.addr, align 8
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  store i32 0, i32* %move, align 4
  store i32 0, i32* %wpos, align 4
  store i32 15, i32* %wid, align 4
  store i32 1, i32* @result_certain, align 4
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 14
  %1 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %target.addr, align 4
  %3 = load i32*, i32** %defense_point.addr, align 8
  %4 = load i32*, i32** %kworm.addr, align 8
  %5 = load i32*, i32** %certain.addr, align 8
  %call1 = call i32 @search_persistent_owl_cache(i32 1, i32 %2, i32 0, i32 0, i32* %result, i32* %3, i32* %4, i32* %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %result, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* @debug, align 4
  %and = and i32 %7, 4096
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %call6 = call double @gg_cputime()
  store double %call6, double* %start, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i32, i32* @verbose, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.7
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %9 = load i32, i32* %target.addr, align 4
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load i32, i32* %target.addr, align 4
  call void @init_owl(%struct.local_owl_data** @owl_defend.owl, i32 %10, i32 0, i32 0, i32 1)
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  call void @owl_make_domains(%struct.local_owl_data* %11, %struct.local_owl_data* null)
  %12 = load i32, i32* %target.addr, align 4
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %14 = load i32*, i32** %kworm.addr, align 8
  call void @prepare_goal_list(i32 %12, %struct.local_owl_data* %13, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32* @goal_worms_computed, i32* %14, i32 1)
  %15 = load i32, i32* %target.addr, align 4
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %call10 = call i32 @do_owl_defend(i32 %15, i32* %move, i32* %wid, %struct.local_owl_data* %16, i32 0, i32 0, i32 0)
  store i32 %call10, i32* %result, align 4
  %17 = load i32, i32* %wid, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %wpos, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32 %17)
  %call11 = call i32 @get_reading_node_counter()
  %18 = load i32, i32* %reading_nodes_when_called, align 4
  %sub = sub nsw i32 %call11, %18
  store i32 %sub, i32* %tactical_nodes, align 4
  %19 = load i32, i32* @debug, align 4
  %and12 = and i32 %19, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.false.15, label %cond.true.14

cond.true.14:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.15:                                    ; preds = %cond.end
  %20 = load i32, i32* %target.addr, align 4
  %21 = load i32, i32* %result, align 4
  %22 = load i32, i32* %move, align 4
  %23 = load i32, i32* @local_owl_node_counter, align 4
  %24 = load i32, i32* %tactical_nodes, align 4
  %call16 = call double @gg_cputime()
  %25 = load double, double* %start, align 8
  %sub17 = fsub double %call16, %25
  %call18 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0), i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, double %sub17)
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.15, %cond.true.14
  %26 = load i32, i32* %target.addr, align 4
  %27 = load i32, i32* %result, align 4
  %28 = load i32, i32* %move, align 4
  %29 = load i32, i32* %wpos, align 4
  %30 = load i32, i32* @result_certain, align 4
  %31 = load i32, i32* %tactical_nodes, align 4
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %33 = load i32, i32* %target.addr, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %34 = load i8, i8* %arrayidx21, align 1
  %conv = zext i8 %34 to i32
  call void @store_persistent_owl_cache(i32 1, i32 %26, i32 0, i32 0, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i8* %arraydecay, i32 %conv)
  %35 = load i32*, i32** %defense_point.addr, align 8
  %tobool22 = icmp ne i32* %35, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.end.19
  %36 = load i32, i32* %move, align 4
  %37 = load i32*, i32** %defense_point.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %cond.end.19
  %38 = load i32*, i32** %kworm.addr, align 8
  %tobool25 = icmp ne i32* %38, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %39 = load i32, i32* %wpos, align 4
  %40 = load i32*, i32** %kworm.addr, align 8
  store i32 %39, i32* %40, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %41 = load i32*, i32** %certain.addr, align 8
  %tobool28 = icmp ne i32* %41, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %42 = load i32, i32* @result_certain, align 4
  %43 = load i32*, i32** %certain.addr, align 8
  store i32 %42, i32* %43, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %44 = load i32, i32* %result, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.2, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @do_owl_defend(i32 %str, i32* %move, i32* %wormid, %struct.local_owl_data* %owl, i32 %komaster, i32 %kom_pos, i32 %escape) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %wormid.addr = alloca i32*, align 8
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %escape.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %shape_moves = alloca [3 x %struct.owl_move_data], align 16
  %vital_moves = alloca [3 x %struct.owl_move_data], align 16
  %moves = alloca %struct.owl_move_data*, align 8
  %shape_patterns = alloca %struct.matched_patterns_list_data, align 8
  %mw = alloca [400 x i8], align 16
  %number_tried_moves = alloca i32, align 4
  %pass = alloca i32, align 4
  %k = alloca i32, align 4
  %savemove = alloca i32, align 4
  %saveworm = alloca i32, align 4
  %savecode = alloca i32, align 4
  %eyemin = alloca i32, align 4
  %eyemax = alloca i32, align 4
  %probable_eyes = alloca %struct.eyevalue, align 1
  %escape_route = alloca i32, align 4
  %live_reason = alloca i8*, align 8
  %move_cutoff = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %this_variation_number = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %goalcount = alloca i32, align 4
  %dpos = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %mpos = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %new_escape = alloca i32, align 4
  %wid = alloca i32, align 4
  %acode = alloca i32, align 4
  %winstr = alloca [192 x i8], align 16
  %winstr510 = alloca [196 x i8], align 16
  %print_genus = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32* %wormid, i32** %wormid.addr, align 8
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %escape, i32* %escape.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %number_tried_moves, align 4
  store i32 0, i32* %savemove, align 4
  store i32 15, i32* %saveworm, align 4
  store i32 0, i32* %savecode, align 4
  store i32 -1, i32* %eyemin, align 4
  store i32 -1, i32* %eyemax, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  %2 = load i32, i32* @count_variations, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %this_variation_number, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_patterns, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  %4 = load i32, i32* @stackp, align 4
  %5 = load i32, i32* @owl_branch_depth, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* @hashflags, align 4
  %and = and i32 %6, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.63

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %komaster.addr, align 4
  %8 = load i32, i32* %kom_pos.addr, align 4
  %call = call i32 @get_read_result(i32 1, i32 %7, i32 %8, i32* %str.addr, %struct.read_result_t** %read_result)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end.62

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %9, i32 0, i32 1
  %10 = load i32, i32* %data2, align 4
  %shr = lshr i32 %10, 24
  %and4 = and i32 %shr, 15
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.then.3
  %11 = load i32*, i32** %move.addr, align 8
  %tobool8 = icmp ne i32* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data210 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %12, i32 0, i32 1
  %13 = load i32, i32* %data210, align 4
  %shr11 = lshr i32 %13, 10
  %and12 = and i32 %shr11, 1023
  %14 = load i32*, i32** %move.addr, align 8
  store i32 %and12, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.3
  %15 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data214 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %15, i32 0, i32 1
  %16 = load i32, i32* %data214, align 4
  %shr15 = lshr i32 %16, 24
  %and16 = and i32 %shr15, 15
  %cmp17 = icmp eq i32 %and16, 2
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.end.13
  %17 = load i32*, i32** %wormid.addr, align 8
  %tobool20 = icmp ne i32* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.then.19
  %18 = load i32, i32* @goal_worms_computed, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.21
  %19 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data224 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %19, i32 0, i32 1
  %20 = load i32, i32* %data224, align 4
  %shr25 = lshr i32 %20, 20
  %and26 = and i32 %shr25, 15
  %21 = load i32*, i32** %wormid.addr, align 8
  store i32 %and26, i32* %21, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.then.21
  %22 = load i32*, i32** %wormid.addr, align 8
  store i32 15, i32* %22, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.13
  %23 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data230 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %23, i32 0, i32 1
  %24 = load i32, i32* %data230, align 4
  %shr31 = lshr i32 %24, 24
  %and32 = and i32 %shr31, 15
  %cmp33 = icmp eq i32 %and32, 5
  br i1 %cmp33, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %25 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data235 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %25, i32 0, i32 1
  %26 = load i32, i32* %data235, align 4
  %shr36 = lshr i32 %26, 24
  %and37 = and i32 %shr36, 15
  %cmp38 = icmp eq i32 %and37, 2
  br i1 %cmp38, label %if.then.40, label %if.else.43

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.29
  %27 = load i32, i32* @verbose, align 4
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.40
  br label %cond.end

cond.false:                                       ; preds = %if.then.40
  %28 = load i32, i32* %this_variation_number, align 4
  %call42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i32 0, i32 0), i32 %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.49

if.else.43:                                       ; preds = %lor.lhs.false
  %29 = load i32, i32* @verbose, align 4
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %cond.false.46, label %cond.true.45

cond.true.45:                                     ; preds = %if.else.43
  br label %cond.end.48

cond.false.46:                                    ; preds = %if.else.43
  %30 = load i32, i32* %this_variation_number, align 4
  %call47 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i32 0, i32 0), i32 %30)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.48, %cond.end
  %31 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool50 = icmp ne %struct.SGFTree_t* %31, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %if.end.49
  %32 = load i8*, i8** %read_function_name, align 8
  %33 = load i32, i32* %q, align 4
  %34 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data252 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %34, i32 0, i32 1
  %35 = load i32, i32* %data252, align 4
  %shr53 = lshr i32 %35, 10
  %and54 = and i32 %shr53, 1023
  %36 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data255 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %36, i32 0, i32 1
  %37 = load i32, i32* %data255, align 4
  %shr56 = lshr i32 %37, 24
  %and57 = and i32 %shr56, 15
  call void @sgf_trace(i8* %32, i32 %33, i32 %and54, i32 %and57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.51, %if.end.49
  %38 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data259 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %38, i32 0, i32 1
  %39 = load i32, i32* %data259, align 4
  %shr60 = lshr i32 %39, 24
  %and61 = and i32 %shr60, 15
  store i32 %and61, i32* %retval
  br label %do.end.529

if.end.62:                                        ; preds = %if.then
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true, %entry
  %40 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %call64 = call i32 @owl_escape_route(%struct.local_owl_data* %40)
  store i32 %call64, i32* %escape_route, align 4
  %41 = load i32, i32* @stackp, align 4
  %cmp65 = icmp sgt i32 %41, 2
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.90

land.lhs.true.67:                                 ; preds = %if.end.63
  %42 = load i32, i32* %escape_route, align 4
  %cmp68 = icmp sge i32 %42, 5
  br i1 %cmp68, label %if.then.70, label %if.end.90

if.then.70:                                       ; preds = %land.lhs.true.67
  %43 = load i32, i32* @verbose, align 4
  %tobool71 = icmp ne i32 %43, 0
  br i1 %tobool71, label %cond.false.73, label %cond.true.72

cond.true.72:                                     ; preds = %if.then.70
  br label %cond.end.75

cond.false.73:                                    ; preds = %if.then.70
  %44 = load i32, i32* %this_variation_number, align 4
  %call74 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.122, i32 0, i32 0), i32 %44)
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.72
  %45 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool76 = icmp ne %struct.SGFTree_t* %45, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %cond.end.75
  %46 = load i8*, i8** %read_function_name, align 8
  %47 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %46, i32 %47, i32 0, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %cond.end.75
  br label %do.body

do.body:                                          ; preds = %if.end.78
  %48 = load i32*, i32** %move.addr, align 8
  %cmp79 = icmp ne i32* %48, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.body
  %49 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %49, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %do.body
  %50 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool83 = icmp ne %struct.read_result_t* %50, null
  br i1 %tobool83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.end.82
  %51 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data285 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %51, i32 0, i32 1
  %52 = load i32, i32* %data285, align 4
  %and86 = and i32 %52, 1023
  %or = or i32 %and86, 536870912
  %or87 = or i32 %or, 83886080
  %53 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data288 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %53, i32 0, i32 1
  store i32 %or87, i32* %data288, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.end.82
  store i32 5, i32* %retval
  br label %do.end.529

do.end:                                           ; No predecessors!
  br label %if.end.90

if.end.90:                                        ; preds = %do.end, %land.lhs.true.67, %if.end.63
  %54 = load i32, i32* %this_variation_number, align 4
  %call91 = call i32 @reading_limit_reached(i8** %live_reason, i32 %54)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.111

if.then.93:                                       ; preds = %if.end.90
  %55 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool94 = icmp ne %struct.SGFTree_t* %55, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.93
  %56 = load i8*, i8** %read_function_name, align 8
  %57 = load i32, i32* %q, align 4
  %58 = load i8*, i8** %live_reason, align 8
  call void @sgf_trace(i8* %56, i32 %57, i32 0, i32 5, i8* %58)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.then.93
  br label %do.body.97

do.body.97:                                       ; preds = %if.end.96
  %59 = load i32*, i32** %move.addr, align 8
  %cmp98 = icmp ne i32* %59, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %do.body.97
  %60 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %60, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %do.body.97
  %61 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool102 = icmp ne %struct.read_result_t* %61, null
  br i1 %tobool102, label %if.then.103, label %if.end.109

if.then.103:                                      ; preds = %if.end.101
  %62 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2104 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %62, i32 0, i32 1
  %63 = load i32, i32* %data2104, align 4
  %and105 = and i32 %63, 1023
  %or106 = or i32 %and105, 536870912
  %or107 = or i32 %or106, 83886080
  %64 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2108 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %64, i32 0, i32 1
  store i32 %or107, i32* %data2108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.103, %if.end.101
  store i32 5, i32* %retval
  br label %do.end.529

do.end.110:                                       ; No predecessors!
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.110, %if.end.90
  %65 = bitcast [400 x i8]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 400, i32 16, i1 false)
  %66 = load i32, i32* @local_owl_node_counter, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* @local_owl_node_counter, align 4
  %67 = load i32, i32* @global_owl_node_counter, align 4
  %inc112 = add nsw i32 %67, 1
  store i32 %inc112, i32* @global_owl_node_counter, align 4
  %68 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %68, %struct.local_owl_data** @current_owl_data, align 8
  %69 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %safe_move_cache = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %69, i32 0, i32 13
  %70 = bitcast [400 x i8]* %safe_move_cache to i8*
  call void @llvm.memset.p0i8.i64(i8* %70, i8 0, i64 400, i32 4, i1 false)
  %71 = load i32, i32* %escape.addr, align 4
  %cmp113 = icmp slt i32 %71, 3
  br i1 %cmp113, label %if.then.115, label %if.else.142

if.then.115:                                      ; preds = %if.end.111
  %72 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i32 0
  %73 = load i32, i32* %komaster.addr, align 4
  %call116 = call i32 @owl_estimate_life(%struct.local_owl_data* %72, %struct.owl_move_data* %arraydecay, i8** %live_reason, i32 %73, i32 0, %struct.eyevalue* %probable_eyes, i32* %eyemin, i32* %eyemax)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.141

if.then.118:                                      ; preds = %if.then.115
  %74 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool119 = icmp ne %struct.SGFTree_t* %74, null
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.118
  %75 = load i8*, i8** %read_function_name, align 8
  %76 = load i32, i32* %q, align 4
  %77 = load i8*, i8** %live_reason, align 8
  call void @sgf_trace(i8* %75, i32 %76, i32 0, i32 5, i8* %77)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %if.then.118
  %78 = load i32, i32* @verbose, align 4
  %tobool122 = icmp ne i32 %78, 0
  br i1 %tobool122, label %cond.false.124, label %cond.true.123

cond.true.123:                                    ; preds = %if.end.121
  br label %cond.end.126

cond.false.124:                                   ; preds = %if.end.121
  %79 = load i32, i32* %this_variation_number, align 4
  %80 = load i8*, i8** %live_reason, align 8
  %call125 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0), i32 %79, i8* %80)
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.124, %cond.true.123
  br label %do.body.127

do.body.127:                                      ; preds = %cond.end.126
  %81 = load i32*, i32** %move.addr, align 8
  %cmp128 = icmp ne i32* %81, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %do.body.127
  %82 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %82, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %do.body.127
  %83 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool132 = icmp ne %struct.read_result_t* %83, null
  br i1 %tobool132, label %if.then.133, label %if.end.139

if.then.133:                                      ; preds = %if.end.131
  %84 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2134 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %84, i32 0, i32 1
  %85 = load i32, i32* %data2134, align 4
  %and135 = and i32 %85, 1023
  %or136 = or i32 %and135, 536870912
  %or137 = or i32 %or136, 83886080
  %86 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2138 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %86, i32 0, i32 1
  store i32 %or137, i32* %data2138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.133, %if.end.131
  store i32 5, i32* %retval
  br label %do.end.529

do.end.140:                                       ; No predecessors!
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %if.then.115
  br label %if.end.145

if.else.142:                                      ; preds = %if.end.111
  %arrayidx143 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i64 0
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx143, i32 0, i32 0
  store i32 0, i32* %pos, align 4
  %arrayidx144 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i64 0
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx144, i32 0, i32 1
  store i32 -1, i32* %value, align 4
  call void @set_eyevalue(%struct.eyevalue* %probable_eyes, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.end.141
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.416, %if.end.145
  %87 = load i32, i32* %pass, align 4
  %cmp146 = icmp slt i32 %87, 4
  br i1 %cmp146, label %for.body, label %for.end.418

for.body:                                         ; preds = %for.cond
  store %struct.owl_move_data* null, %struct.owl_move_data** %moves, align 8
  store i32 1, i32* %move_cutoff, align 4
  %88 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %88, %struct.local_owl_data** @current_owl_data, align 8
  %89 = load i32, i32* %pass, align 4
  switch i32 %89, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.199
    i32 2, label %sw.bb.199
    i32 3, label %sw.bb.240
  ]

sw.bb:                                            ; preds = %for.body
  %90 = load i32, i32* @stackp, align 4
  %91 = load i32, i32* @owl_branch_depth, align 4
  %cmp148 = icmp sgt i32 %90, %91
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.154

land.lhs.true.150:                                ; preds = %sw.bb
  %92 = load i32, i32* %number_tried_moves, align 4
  %cmp151 = icmp sgt i32 %92, 0
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %land.lhs.true.150
  br label %for.inc.416

if.end.154:                                       ; preds = %land.lhs.true.150, %sw.bb
  %arraydecay155 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %93 = load i32, i32* %color, align 4
  %94 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_patterns, %struct.owl_move_data* %arraydecay155, i32 %93, %struct.local_owl_data* %94, %struct.pattern_db* @owl_defendpat_db)
  %95 = load i32, i32* %color, align 4
  %arraydecay156 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %call157 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %95, %struct.owl_move_data* %arraydecay156, i32 100)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.197

if.then.159:                                      ; preds = %if.end.154
  %arrayidx160 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos161 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx160, i32 0, i32 0
  %96 = load i32, i32* %pos161, align 4
  %97 = load i32, i32* %color, align 4
  %arrayidx162 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx162, i32 0, i32 2
  %98 = load i8*, i8** %name, align 8
  %99 = load i32, i32* %str.addr, align 4
  %100 = load i32, i32* %komaster.addr, align 4
  %101 = load i32, i32* %kom_pos.addr, align 4
  %call163 = call i32 @trymove(i32 %96, i32 %97, i8* %98, i32 %99, i32 %100, i32 %101)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.159
  call void @popgo()
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.159
  %102 = load i32, i32* @verbose, align 4
  %tobool167 = icmp ne i32 %102, 0
  br i1 %tobool167, label %cond.false.169, label %cond.true.168

cond.true.168:                                    ; preds = %if.end.166
  br label %cond.end.171

cond.false.169:                                   ; preds = %if.end.166
  %103 = load i32, i32* %this_variation_number, align 4
  %call170 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.124, i32 0, i32 0), i32 %103)
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.168
  %104 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool172 = icmp ne %struct.SGFTree_t* %104, null
  br i1 %tobool172, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %cond.end.171
  %105 = load i8*, i8** %read_function_name, align 8
  %106 = load i32, i32* %q, align 4
  %arrayidx174 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos175 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx174, i32 0, i32 0
  %107 = load i32, i32* %pos175, align 4
  call void @sgf_trace(i8* %105, i32 %106, i32 %107, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.173, %cond.end.171
  %108 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %108, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.177

do.body.177:                                      ; preds = %if.end.176
  %109 = load i32*, i32** %move.addr, align 8
  %cmp178 = icmp ne i32* %109, null
  br i1 %cmp178, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %do.body.177
  %arrayidx181 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos182 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx181, i32 0, i32 0
  %110 = load i32, i32* %pos182, align 4
  %111 = load i32*, i32** %move.addr, align 8
  store i32 %110, i32* %111, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %do.body.177
  %112 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool184 = icmp ne %struct.read_result_t* %112, null
  br i1 %tobool184, label %if.then.185, label %if.end.195

if.then.185:                                      ; preds = %if.end.183
  %113 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2186 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %113, i32 0, i32 1
  %114 = load i32, i32* %data2186, align 4
  %and187 = and i32 %114, 1023
  %or188 = or i32 %and187, 536870912
  %or189 = or i32 %or188, 83886080
  %arrayidx190 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i64 0
  %pos191 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx190, i32 0, i32 0
  %115 = load i32, i32* %pos191, align 4
  %and192 = and i32 %115, 1023
  %shl = shl i32 %and192, 10
  %or193 = or i32 %or189, %shl
  %116 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2194 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %116, i32 0, i32 1
  store i32 %or193, i32* %data2194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.185, %if.end.183
  store i32 5, i32* %retval
  br label %do.end.529

do.end.196:                                       ; No predecessors!
  br label %if.end.197

if.end.197:                                       ; preds = %do.end.196, %if.end.154
  %arraydecay198 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay198, %struct.owl_move_data** %moves, align 8
  br label %sw.epilog

sw.bb.199:                                        ; preds = %for.body, %for.body
  %117 = load i32, i32* @stackp, align 4
  %118 = load i32, i32* @owl_branch_depth, align 4
  %cmp200 = icmp sgt i32 %117, %118
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.206

land.lhs.true.202:                                ; preds = %sw.bb.199
  %119 = load i32, i32* %number_tried_moves, align 4
  %cmp203 = icmp sgt i32 %119, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %land.lhs.true.202
  br label %for.inc.416

if.end.206:                                       ; preds = %land.lhs.true.202, %sw.bb.199
  %arraydecay207 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %vital_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay207, %struct.owl_move_data** %moves, align 8
  %120 = load i32, i32* %pass, align 4
  %cmp208 = icmp eq i32 %120, 0
  br i1 %cmp208, label %if.then.213, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %if.end.206
  %121 = load i32, i32* @stackp, align 4
  %122 = load i32, i32* @owl_distrust_depth, align 4
  %cmp211 = icmp sgt i32 %121, %122
  br i1 %cmp211, label %if.then.213, label %if.end.232

if.then.213:                                      ; preds = %lor.lhs.false.210, %if.end.206
  %123 = load i32, i32* @stackp, align 4
  %cmp214 = icmp eq i32 %123, 0
  br i1 %cmp214, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %if.then.213
  store i32 70, i32* %move_cutoff, align 4
  br label %if.end.231

if.else.217:                                      ; preds = %if.then.213
  %124 = load i32, i32* %eyemin, align 4
  %call218 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes)
  %add = add nsw i32 %124, %call218
  %cmp219 = icmp sgt i32 %add, 3
  br i1 %cmp219, label %if.then.221, label %if.else.222

if.then.221:                                      ; preds = %if.else.217
  store i32 25, i32* %move_cutoff, align 4
  br label %if.end.230

if.else.222:                                      ; preds = %if.else.217
  %125 = load i32, i32* %eyemin, align 4
  %call223 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes)
  %add224 = add nsw i32 %125, %call223
  %cmp225 = icmp sge i32 %add224, 3
  br i1 %cmp225, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %if.else.222
  store i32 35, i32* %move_cutoff, align 4
  br label %if.end.229

if.else.228:                                      ; preds = %if.else.222
  store i32 45, i32* %move_cutoff, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.227
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.221
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.216
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %lor.lhs.false.210
  %126 = load i32, i32* %eyemax, align 4
  %cmp233 = icmp slt i32 %126, 2
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.239

land.lhs.true.235:                                ; preds = %if.end.232
  %127 = load i32, i32* @stackp, align 4
  %cmp236 = icmp sgt i32 %127, 2
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %land.lhs.true.235
  store i32 99, i32* %move_cutoff, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %land.lhs.true.235, %if.end.232
  br label %sw.epilog

sw.bb.240:                                        ; preds = %for.body
  store i32 0, i32* %goalcount, align 4
  store i32 21, i32* %k, align 4
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc, %sw.bb.240
  %128 = load i32, i32* %k, align 4
  %cmp242 = icmp slt i32 %128, 400
  br i1 %cmp242, label %for.body.244, label %for.end

for.body.244:                                     ; preds = %for.cond.241
  %129 = load i32, i32* %k, align 4
  %idxprom245 = sext i32 %129 to i64
  %arrayidx246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom245
  %130 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %130 to i32
  %cmp248 = icmp ne i32 %conv247, 3
  br i1 %cmp248, label %if.then.250, label %if.end.255

if.then.250:                                      ; preds = %for.body.244
  %131 = load i32, i32* %k, align 4
  %idxprom251 = sext i32 %131 to i64
  %132 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %132, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom251
  %133 = load i8, i8* %arrayidx252, align 1
  %conv253 = sext i8 %133 to i32
  %134 = load i32, i32* %goalcount, align 4
  %add254 = add nsw i32 %134, %conv253
  store i32 %add254, i32* %goalcount, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.250, %for.body.244
  br label %for.inc

for.inc:                                          ; preds = %if.end.255
  %135 = load i32, i32* %k, align 4
  %inc256 = add nsw i32 %135, 1
  store i32 %inc256, i32* %k, align 4
  br label %for.cond.241

for.end:                                          ; preds = %for.cond.241
  %136 = load i32, i32* %goalcount, align 4
  %cmp257 = icmp slt i32 %136, 5
  br i1 %cmp257, label %if.then.259, label %if.end.278

if.then.259:                                      ; preds = %for.end
  %137 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %137, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %138 = load i32, i32* @count_variations, align 4
  store i32 %138, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %139 = load i32, i32* %str.addr, align 4
  %call260 = call i32 @attack_and_defend(i32 %139, i32* null, i32* null, i32* null, i32* %dpos)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %land.lhs.true.262, label %if.end.277

land.lhs.true.262:                                ; preds = %if.then.259
  %140 = load i32, i32* %dpos, align 4
  %141 = load i32, i32* %color, align 4
  %call263 = call i32 @approxlib(i32 %140, i32 %141, i32 2, i32* null)
  %cmp264 = icmp sgt i32 %call263, 1
  br i1 %cmp264, label %if.then.269, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %land.lhs.true.262
  %142 = load i32, i32* %dpos, align 4
  %143 = load i32, i32* %color, align 4
  %call267 = call i32 @does_capture_something(i32 %142, i32 %143)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.277

if.then.269:                                      ; preds = %lor.lhs.false.266, %land.lhs.true.262
  %144 = load i32, i32* @verbose, align 4
  %tobool270 = icmp ne i32 %144, 0
  br i1 %tobool270, label %cond.false.272, label %cond.true.271

cond.true.271:                                    ; preds = %if.then.269
  br label %cond.end.274

cond.false.272:                                   ; preds = %if.then.269
  %145 = load i32, i32* %str.addr, align 4
  %146 = load i32, i32* %dpos, align 4
  %call273 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i32 0, i32 0), i32 %145, i32 %146)
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.272, %cond.true.271
  %arraydecay275 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %147 = load i32, i32* %dpos, align 4
  call void @set_single_owl_move(%struct.owl_move_data* %arraydecay275, i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i32 0, i32 0))
  %arraydecay276 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  store %struct.owl_move_data* %arraydecay276, %struct.owl_move_data** %moves, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %cond.end.274, %lor.lhs.false.266, %if.then.259
  %148 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %148, %struct.SGFTree_t** @sgf_dumptree, align 8
  %149 = load i32, i32* %save_count_variations, align 4
  store i32 %149, i32* @count_variations, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %for.end
  %150 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %tobool279 = icmp ne %struct.owl_move_data* %150, null
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %if.end.278
  br label %for.inc.416

if.end.281:                                       ; preds = %if.end.278
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.281, %for.body, %if.end.239, %if.end.197
  store i32 0, i32* %k, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.413, %sw.epilog
  %151 = load i32, i32* %k, align 4
  %cmp283 = icmp slt i32 %151, 3
  br i1 %cmp283, label %for.body.285, label %for.end.415

for.body.285:                                     ; preds = %for.cond.282
  store i32 -1, i32* %ko_move, align 4
  store i32 15, i32* %wid, align 4
  %152 = load i32, i32* @stackp, align 4
  %153 = load i32, i32* @owl_branch_depth, align 4
  %cmp286 = icmp sgt i32 %152, %153
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.292

land.lhs.true.288:                                ; preds = %for.body.285
  %154 = load i32, i32* %k, align 4
  %cmp289 = icmp sgt i32 %154, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %land.lhs.true.288
  br label %for.end.415

if.end.292:                                       ; preds = %land.lhs.true.288, %for.body.285
  %155 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %155, %struct.local_owl_data** @current_owl_data, align 8
  %156 = load i32, i32* %pass, align 4
  %cmp293 = icmp eq i32 %156, 1
  br i1 %cmp293, label %if.then.295, label %if.else.301

if.then.295:                                      ; preds = %if.end.292
  %157 = load i32, i32* %color, align 4
  %arraydecay296 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %shape_moves, i32 0, i32 0
  %158 = load i32, i32* %move_cutoff, align 4
  %call297 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %157, %struct.owl_move_data* %arraydecay296, i32 %158)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.end.300, label %if.then.299

if.then.299:                                      ; preds = %if.then.295
  br label %for.end.415

if.end.300:                                       ; preds = %if.then.295
  br label %if.end.309

if.else.301:                                      ; preds = %if.end.292
  %159 = load i32, i32* %k, align 4
  %idxprom302 = sext i32 %159 to i64
  %160 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx303 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %160, i64 %idxprom302
  %value304 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx303, i32 0, i32 1
  %161 = load i32, i32* %value304, align 4
  %162 = load i32, i32* %move_cutoff, align 4
  %cmp305 = icmp slt i32 %161, %162
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.else.301
  br label %for.end.415

if.end.308:                                       ; preds = %if.else.301
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.300
  %163 = load i32, i32* %k, align 4
  %idxprom310 = sext i32 %163 to i64
  %164 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx311 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %164, i64 %idxprom310
  %pos312 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx311, i32 0, i32 0
  %165 = load i32, i32* %pos312, align 4
  store i32 %165, i32* %mpos, align 4
  %166 = load i32, i32* %mpos, align 4
  %cmp313 = icmp ult i32 %166, 421
  br i1 %cmp313, label %land.lhs.true.315, label %if.else.322

land.lhs.true.315:                                ; preds = %if.end.309
  %167 = load i32, i32* %mpos, align 4
  %idxprom316 = sext i32 %167 to i64
  %arrayidx317 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom316
  %168 = load i8, i8* %arrayidx317, align 1
  %conv318 = zext i8 %168 to i32
  %cmp319 = icmp ne i32 %conv318, 3
  br i1 %cmp319, label %if.then.321, label %if.else.322

if.then.321:                                      ; preds = %land.lhs.true.315
  br label %if.end.325

if.else.322:                                      ; preds = %land.lhs.true.315, %if.end.309
  %169 = load i32, i32* %mpos, align 4
  %div = sdiv i32 %169, 20
  %sub323 = sub nsw i32 %div, 1
  %170 = load i32, i32* %mpos, align 4
  %rem = srem i32 %170, 20
  %sub324 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2044, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i32 %sub323, i32 %sub324)
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.322, %if.then.321
  %171 = load i32, i32* %mpos, align 4
  %idxprom326 = sext i32 %171 to i64
  %arrayidx327 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom326
  %172 = load i8, i8* %arrayidx327, align 1
  %tobool328 = icmp ne i8 %172, 0
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.end.325
  br label %for.inc.413

if.end.330:                                       ; preds = %if.end.325
  %173 = load i32, i32* %mpos, align 4
  %174 = load i32, i32* %color, align 4
  %175 = load i32, i32* %k, align 4
  %idxprom331 = sext i32 %175 to i64
  %176 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx332 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %176, i64 %idxprom331
  %name333 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx332, i32 0, i32 2
  %177 = load i8*, i8** %name333, align 8
  %178 = load i32, i32* %str.addr, align 4
  %179 = load i32, i32* %komaster.addr, align 4
  %180 = load i32, i32* %kom_pos.addr, align 4
  %181 = load i32, i32* %savecode, align 4
  %cmp334 = icmp eq i32 %181, 0
  %conv335 = zext i1 %cmp334 to i32
  %call336 = call i32 @komaster_trymove(i32 %173, i32 %174, i8* %177, i32 %178, i32 %179, i32 %180, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %conv335)
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %if.end.339, label %if.then.338

if.then.338:                                      ; preds = %if.end.330
  br label %for.inc.413

if.end.339:                                       ; preds = %if.end.330
  %182 = load i32, i32* %escape.addr, align 4
  store i32 %182, i32* %new_escape, align 4
  %183 = load i32, i32* %k, align 4
  %idxprom340 = sext i32 %183 to i64
  %184 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx341 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %184, i64 %idxprom340
  %escape342 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx341, i32 0, i32 4
  %185 = load i32, i32* %escape342, align 4
  %tobool343 = icmp ne i32 %185, 0
  br i1 %tobool343, label %if.then.344, label %if.end.346

if.then.344:                                      ; preds = %if.end.339
  %186 = load i32, i32* %new_escape, align 4
  %inc345 = add nsw i32 %186, 1
  store i32 %inc345, i32* %new_escape, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.344, %if.end.339
  %187 = load i32, i32* @verbose, align 4
  %tobool347 = icmp ne i32 %187, 0
  br i1 %tobool347, label %cond.false.349, label %cond.true.348

cond.true.348:                                    ; preds = %if.end.346
  br label %cond.end.351

cond.false.349:                                   ; preds = %if.end.346
  %188 = load i32, i32* %color, align 4
  %189 = load i32, i32* %mpos, align 4
  %190 = load i32, i32* %escape.addr, align 4
  %call350 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i32 0, i32 0), i32 %188, i32 %189, i32 %190)
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.false.349, %cond.true.348
  %191 = load i32, i32* @verbose, align 4
  %tobool352 = icmp ne i32 %191, 0
  br i1 %tobool352, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %cond.end.351
  call void @dump_stack()
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %cond.end.351
  call void @push_owl(%struct.local_owl_data** %owl.addr, %struct.local_owl_data** null)
  %192 = load i32, i32* %mpos, align 4
  %idxprom355 = sext i32 %192 to i64
  %arrayidx356 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom355
  store i8 1, i8* %arrayidx356, align 1
  %193 = load i32, i32* %number_tried_moves, align 4
  %inc357 = add nsw i32 %193, 1
  store i32 %inc357, i32* %number_tried_moves, align 4
  %194 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %194, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %195 = load i32, i32* %mpos, align 4
  %196 = load i32, i32* %k, align 4
  %idxprom358 = sext i32 %196 to i64
  %197 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx359 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %197, i64 %idxprom358
  %same_dragon = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx359, i32 0, i32 3
  %198 = load i32, i32* %same_dragon, align 4
  %199 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_update_goal(i32 %195, i32 %198, %struct.local_owl_data* %199, i32 0)
  %200 = load i32, i32* %ko_move, align 4
  %tobool360 = icmp ne i32 %200, 0
  br i1 %tobool360, label %if.else.406, label %if.then.361

if.then.361:                                      ; preds = %if.end.354
  %201 = load i32, i32* %str.addr, align 4
  %202 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %203 = load i32, i32* %new_komaster, align 4
  %204 = load i32, i32* %new_kom_pos, align 4
  %205 = load i32, i32* %new_escape, align 4
  %call362 = call i32 @do_owl_attack(i32 %201, i32* null, i32* %wid, %struct.local_owl_data* %202, i32 %203, i32 %204, i32 %205)
  store i32 %call362, i32* %acode, align 4
  %206 = load i32, i32* %acode, align 4
  %tobool363 = icmp ne i32 %206, 0
  br i1 %tobool363, label %if.end.392, label %if.then.364

if.then.364:                                      ; preds = %if.then.361
  call void @pop_owl(%struct.local_owl_data** %owl.addr)
  call void @popgo()
  %207 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool365 = icmp ne %struct.SGFTree_t* %207, null
  br i1 %tobool365, label %if.then.366, label %if.end.374

if.then.366:                                      ; preds = %if.then.364
  %arraydecay367 = getelementptr inbounds [192 x i8], [192 x i8]* %winstr, i32 0, i32 0
  %208 = load i32, i32* @count_variations, align 4
  %209 = load i32, i32* %this_variation_number, align 4
  %sub368 = sub nsw i32 %208, %209
  %call369 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay367, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.128, i32 0, i32 0), i32 %sub368) #2
  %210 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool370 = icmp ne %struct.SGFTree_t* %210, null
  br i1 %tobool370, label %if.then.371, label %if.end.373

if.then.371:                                      ; preds = %if.then.366
  %211 = load i8*, i8** %read_function_name, align 8
  %212 = load i32, i32* %q, align 4
  %213 = load i32, i32* %mpos, align 4
  %arraydecay372 = getelementptr inbounds [192 x i8], [192 x i8]* %winstr, i32 0, i32 0
  call void @sgf_trace(i8* %211, i32 %212, i32 %213, i32 5, i8* %arraydecay372)
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.371, %if.then.366
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.364
  %214 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %214, %struct.matched_patterns_list_data* %shape_patterns)
  br label %do.body.375

do.body.375:                                      ; preds = %if.end.374
  %215 = load i32*, i32** %move.addr, align 8
  %cmp376 = icmp ne i32* %215, null
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %do.body.375
  %216 = load i32, i32* %mpos, align 4
  %217 = load i32*, i32** %move.addr, align 8
  store i32 %216, i32* %217, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %do.body.375
  %218 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool380 = icmp ne %struct.read_result_t* %218, null
  br i1 %tobool380, label %if.then.381, label %if.end.390

if.then.381:                                      ; preds = %if.end.379
  %219 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2382 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %219, i32 0, i32 1
  %220 = load i32, i32* %data2382, align 4
  %and383 = and i32 %220, 1023
  %or384 = or i32 %and383, 536870912
  %or385 = or i32 %or384, 83886080
  %221 = load i32, i32* %mpos, align 4
  %and386 = and i32 %221, 1023
  %shl387 = shl i32 %and386, 10
  %or388 = or i32 %or385, %shl387
  %222 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2389 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %222, i32 0, i32 1
  store i32 %or388, i32* %data2389, align 4
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.381, %if.end.379
  store i32 5, i32* %retval
  br label %do.end.529

do.end.391:                                       ; No predecessors!
  br label %if.end.392

if.end.392:                                       ; preds = %do.end.391, %if.then.361
  %223 = load i32, i32* %acode, align 4
  %cmp393 = icmp eq i32 %223, 3
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.end.392
  %224 = load i32, i32* %wid, align 4
  store i32 %224, i32* %saveworm, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %if.end.392
  %225 = load i32, i32* %acode, align 4
  %cmp397 = icmp ne i32 %225, 0
  br i1 %cmp397, label %land.lhs.true.399, label %if.end.405

land.lhs.true.399:                                ; preds = %if.end.396
  %226 = load i32, i32* %acode, align 4
  %sub400 = sub nsw i32 5, %226
  %227 = load i32, i32* %savecode, align 4
  %cmp401 = icmp sgt i32 %sub400, %227
  br i1 %cmp401, label %if.then.403, label %if.end.405

if.then.403:                                      ; preds = %land.lhs.true.399
  %228 = load i32, i32* %mpos, align 4
  store i32 %228, i32* %savemove, align 4
  %229 = load i32, i32* %acode, align 4
  %sub404 = sub nsw i32 5, %229
  store i32 %sub404, i32* %savecode, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.403, %land.lhs.true.399, %if.end.396
  br label %if.end.412

if.else.406:                                      ; preds = %if.end.354
  %230 = load i32, i32* %str.addr, align 4
  %231 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %232 = load i32, i32* %new_komaster, align 4
  %233 = load i32, i32* %new_kom_pos, align 4
  %234 = load i32, i32* %new_escape, align 4
  %call407 = call i32 @do_owl_attack(i32 %230, i32* null, i32* null, %struct.local_owl_data* %231, i32 %232, i32 %233, i32 %234)
  %cmp408 = icmp ne i32 %call407, 5
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.else.406
  %235 = load i32, i32* %mpos, align 4
  store i32 %235, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %if.else.406
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %if.end.405
  call void @pop_owl(%struct.local_owl_data** %owl.addr)
  call void @popgo()
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412, %if.then.338, %if.then.329
  %236 = load i32, i32* %k, align 4
  %inc414 = add nsw i32 %236, 1
  store i32 %inc414, i32* %k, align 4
  br label %for.cond.282

for.end.415:                                      ; preds = %if.then.307, %if.then.299, %if.then.291, %for.cond.282
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.end.415, %if.then.280, %if.then.205, %if.then.153
  %237 = load i32, i32* %pass, align 4
  %inc417 = add nsw i32 %237, 1
  store i32 %inc417, i32* %pass, align 4
  br label %for.cond

for.end.418:                                      ; preds = %for.cond
  %238 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %238, %struct.matched_patterns_list_data* %shape_patterns)
  %239 = load i32, i32* %savecode, align 4
  %tobool419 = icmp ne i32 %239, 0
  br i1 %tobool419, label %if.then.420, label %if.end.482

if.then.420:                                      ; preds = %for.end.418
  %240 = load i32, i32* %savecode, align 4
  %cmp421 = icmp eq i32 %240, 2
  br i1 %cmp421, label %if.then.423, label %if.else.455

if.then.423:                                      ; preds = %if.then.420
  %241 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool424 = icmp ne %struct.SGFTree_t* %241, null
  br i1 %tobool424, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.then.423
  %242 = load i8*, i8** %read_function_name, align 8
  %243 = load i32, i32* %q, align 4
  %244 = load i32, i32* %savemove, align 4
  %245 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %242, i32 %243, i32 %244, i32 %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.129, i32 0, i32 0))
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.then.423
  %246 = load i32*, i32** %wormid.addr, align 8
  %tobool427 = icmp ne i32* %246, null
  br i1 %tobool427, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.426
  %247 = load i32, i32* %saveworm, align 4
  %248 = load i32*, i32** %wormid.addr, align 8
  store i32 %247, i32* %248, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.428, %if.end.426
  br label %do.body.430

do.body.430:                                      ; preds = %if.end.429
  %249 = load i32, i32* %savecode, align 4
  %cmp431 = icmp ne i32 %249, 0
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.437

land.lhs.true.433:                                ; preds = %do.body.430
  %250 = load i32*, i32** %move.addr, align 8
  %cmp434 = icmp ne i32* %250, null
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %land.lhs.true.433
  %251 = load i32, i32* %savemove, align 4
  %252 = load i32*, i32** %move.addr, align 8
  store i32 %251, i32* %252, align 4
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.436, %land.lhs.true.433, %do.body.430
  %253 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool438 = icmp ne %struct.read_result_t* %253, null
  br i1 %tobool438, label %if.then.439, label %if.end.453

if.then.439:                                      ; preds = %if.end.437
  %254 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2440 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %254, i32 0, i32 1
  %255 = load i32, i32* %data2440, align 4
  %and441 = and i32 %255, 1023
  %or442 = or i32 %and441, 536870912
  %256 = load i32, i32* %savecode, align 4
  %and443 = and i32 %256, 15
  %shl444 = shl i32 %and443, 24
  %or445 = or i32 %or442, %shl444
  %257 = load i32, i32* %saveworm, align 4
  %and446 = and i32 %257, 15
  %shl447 = shl i32 %and446, 20
  %or448 = or i32 %or445, %shl447
  %258 = load i32, i32* %savemove, align 4
  %and449 = and i32 %258, 1023
  %shl450 = shl i32 %and449, 10
  %or451 = or i32 %or448, %shl450
  %259 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2452 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %259, i32 0, i32 1
  store i32 %or451, i32* %data2452, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.439, %if.end.437
  %260 = load i32, i32* %savecode, align 4
  store i32 %260, i32* %retval
  br label %do.end.529

do.end.454:                                       ; No predecessors!
  br label %if.end.481

if.else.455:                                      ; preds = %if.then.420
  %261 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool456 = icmp ne %struct.SGFTree_t* %261, null
  br i1 %tobool456, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.else.455
  %262 = load i8*, i8** %read_function_name, align 8
  %263 = load i32, i32* %q, align 4
  %264 = load i32, i32* %savemove, align 4
  %265 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %262, i32 %263, i32 %264, i32 %265, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.457, %if.else.455
  br label %do.body.459

do.body.459:                                      ; preds = %if.end.458
  %266 = load i32, i32* %savecode, align 4
  %cmp460 = icmp ne i32 %266, 0
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.466

land.lhs.true.462:                                ; preds = %do.body.459
  %267 = load i32*, i32** %move.addr, align 8
  %cmp463 = icmp ne i32* %267, null
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %land.lhs.true.462
  %268 = load i32, i32* %savemove, align 4
  %269 = load i32*, i32** %move.addr, align 8
  store i32 %268, i32* %269, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.465, %land.lhs.true.462, %do.body.459
  %270 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool467 = icmp ne %struct.read_result_t* %270, null
  br i1 %tobool467, label %if.then.468, label %if.end.479

if.then.468:                                      ; preds = %if.end.466
  %271 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2469 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %271, i32 0, i32 1
  %272 = load i32, i32* %data2469, align 4
  %and470 = and i32 %272, 1023
  %or471 = or i32 %and470, 536870912
  %273 = load i32, i32* %savecode, align 4
  %and472 = and i32 %273, 15
  %shl473 = shl i32 %and472, 24
  %or474 = or i32 %or471, %shl473
  %274 = load i32, i32* %savemove, align 4
  %and475 = and i32 %274, 1023
  %shl476 = shl i32 %and475, 10
  %or477 = or i32 %or474, %shl476
  %275 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2478 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %275, i32 0, i32 1
  store i32 %or477, i32* %data2478, align 4
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.468, %if.end.466
  %276 = load i32, i32* %savecode, align 4
  store i32 %276, i32* %retval
  br label %do.end.529

do.end.480:                                       ; No predecessors!
  br label %if.end.481

if.end.481:                                       ; preds = %do.end.480, %do.end.454
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %for.end.418
  %277 = load i32, i32* %number_tried_moves, align 4
  %cmp483 = icmp eq i32 %277, 0
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.507

land.lhs.true.485:                                ; preds = %if.end.482
  %call486 = call i32 @min_eyes(%struct.eyevalue* %probable_eyes)
  %cmp487 = icmp sge i32 %call486, 2
  br i1 %cmp487, label %if.then.489, label %if.end.507

if.then.489:                                      ; preds = %land.lhs.true.485
  %278 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool490 = icmp ne %struct.SGFTree_t* %278, null
  br i1 %tobool490, label %if.then.491, label %if.end.492

if.then.491:                                      ; preds = %if.then.489
  %279 = load i8*, i8** %read_function_name, align 8
  %280 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %279, i32 %280, i32 0, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0))
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.491, %if.then.489
  br label %do.body.493

do.body.493:                                      ; preds = %if.end.492
  %281 = load i32*, i32** %move.addr, align 8
  %cmp494 = icmp ne i32* %281, null
  br i1 %cmp494, label %if.then.496, label %if.end.497

if.then.496:                                      ; preds = %do.body.493
  %282 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %282, align 4
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.496, %do.body.493
  %283 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool498 = icmp ne %struct.read_result_t* %283, null
  br i1 %tobool498, label %if.then.499, label %if.end.505

if.then.499:                                      ; preds = %if.end.497
  %284 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2500 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %284, i32 0, i32 1
  %285 = load i32, i32* %data2500, align 4
  %and501 = and i32 %285, 1023
  %or502 = or i32 %and501, 536870912
  %or503 = or i32 %or502, 83886080
  %286 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2504 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %286, i32 0, i32 1
  store i32 %or503, i32* %data2504, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.499, %if.end.497
  store i32 5, i32* %retval
  br label %do.end.529

do.end.506:                                       ; No predecessors!
  br label %if.end.507

if.end.507:                                       ; preds = %do.end.506, %land.lhs.true.485, %if.end.482
  %287 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool508 = icmp ne %struct.SGFTree_t* %287, null
  br i1 %tobool508, label %if.then.509, label %if.end.520

if.then.509:                                      ; preds = %if.end.507
  %288 = load i32, i32* %eyemin, align 4
  %cmp511 = icmp eq i32 %288, 1
  %cond = select i1 %cmp511, i32 1, i32 0
  store i32 %cond, i32* %print_genus, align 4
  %arraydecay513 = getelementptr inbounds [196 x i8], [196 x i8]* %winstr510, i32 0, i32 0
  %289 = load i32, i32* %print_genus, align 4
  %290 = load i32, i32* @count_variations, align 4
  %291 = load i32, i32* %this_variation_number, align 4
  %sub514 = sub nsw i32 %290, %291
  %call515 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay513, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.132, i32 0, i32 0), i32 %289, i32 %sub514) #2
  %292 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool516 = icmp ne %struct.SGFTree_t* %292, null
  br i1 %tobool516, label %if.then.517, label %if.end.519

if.then.517:                                      ; preds = %if.then.509
  %293 = load i8*, i8** %read_function_name, align 8
  %294 = load i32, i32* %q, align 4
  %arraydecay518 = getelementptr inbounds [196 x i8], [196 x i8]* %winstr510, i32 0, i32 0
  call void @sgf_trace(i8* %293, i32 %294, i32 0, i32 0, i8* %arraydecay518)
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.517, %if.then.509
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %if.end.507
  br label %do.body.521

do.body.521:                                      ; preds = %if.end.520
  %295 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool522 = icmp ne %struct.read_result_t* %295, null
  br i1 %tobool522, label %if.then.523, label %if.end.528

if.then.523:                                      ; preds = %do.body.521
  %296 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2524 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %296, i32 0, i32 1
  %297 = load i32, i32* %data2524, align 4
  %and525 = and i32 %297, 1023
  %or526 = or i32 %and525, 536870912
  %298 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2527 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %298, i32 0, i32 1
  store i32 %or526, i32* %data2527, align 4
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.523, %do.body.521
  store i32 0, i32* %retval
  br label %do.end.529

do.end.529:                                       ; preds = %if.end.58, %if.end.89, %if.end.109, %if.end.139, %if.end.195, %if.end.390, %if.end.453, %if.end.479, %if.end.505, %if.end.528
  %299 = load i32, i32* %retval
  ret i32 %299
}

; Function Attrs: nounwind uwtable
define i32 @owl_threaten_defense(i32 %target, i32* %defend1, i32* %defend2) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %defend1.addr = alloca i32*, align 8
  %defend2.addr = alloca i32*, align 8
  %moves = alloca [3 x %struct.owl_move_data], align 16
  %k = alloca i32, align 4
  %color = alloca i32, align 4
  %result = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %reading_nodes_when_called = alloca i32, align 4
  %saved_goal = alloca [400 x i8], align 16
  %start = alloca double, align 8
  %tactical_nodes = alloca i32, align 4
  %move = alloca i32, align 4
  %move2 = alloca i32, align 4
  %shape_patterns = alloca %struct.matched_patterns_list_data, align 8
  store i32 %target, i32* %target.addr, align 4
  store i32* %defend1, i32** %defend1.addr, align 8
  store i32* %defend2, i32** %defend2.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  store i32 0, i32* %move, align 4
  store i32 0, i32* %move2, align 4
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %shape_patterns, i32 0, i32 0
  store i32 0, i32* %initialized, align 4
  store i32 1, i32* @result_certain, align 4
  %2 = load i32, i32* %target.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 14
  %3 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %target.addr, align 4
  %5 = load i32*, i32** %defend1.addr, align 8
  %6 = load i32*, i32** %defend2.addr, align 8
  %call4 = call i32 @search_persistent_owl_cache(i32 3, i32 %4, i32 0, i32 0, i32* %result, i32* %5, i32* %6, i32* null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i32, i32* @debug, align 4
  %and = and i32 %8, 4096
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call double @gg_cputime()
  store double %call9, double* %start, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %9 = load i32, i32* @verbose, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.10
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %10 = load i32, i32* %target.addr, align 4
  %call12 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i32 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = load i32, i32* %target.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %11, i32 0, i32 0, i32 1)
  %12 = bitcast [400 x i8]* %saved_goal to i8*
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 0
  %14 = bitcast [400 x i8]* %goal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 400, i32 4, i1 false)
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_make_domains(%struct.local_owl_data* %15, %struct.local_owl_data* null)
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %16 = load i32, i32* %color, align 4
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %shape_patterns, %struct.owl_move_data* %arraydecay, i32 %16, %struct.local_owl_data* %17, %struct.pattern_db* @owl_defendpat_db)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %18, 3
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  store %struct.local_owl_data* %19, %struct.local_owl_data** @current_owl_data, align 8
  %20 = load i32, i32* %color, align 4
  %arraydecay15 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i32 0
  %call16 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %shape_patterns, i32 %20, %struct.owl_move_data* %arraydecay15, i32 1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom19
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx20, i32 0, i32 0
  %22 = load i32, i32* %pos, align 4
  %cmp21 = icmp ne i32 %22, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.else
  %23 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom23
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx24, i32 0, i32 1
  %24 = load i32, i32* %value, align 4
  %cmp25 = icmp sgt i32 %24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.67

if.then.27:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom28
  %pos30 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx29, i32 0, i32 0
  %26 = load i32, i32* %pos30, align 4
  %27 = load i32, i32* %color, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom31
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx32, i32 0, i32 2
  %29 = load i8*, i8** %name, align 8
  %30 = load i32, i32* %target.addr, align 4
  %call33 = call i32 @trymove(i32 %26, i32 %27, i8* %29, i32 %30, i32 0, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.66

if.then.35:                                       ; preds = %if.then.27
  %31 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %31, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom36
  %pos38 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx37, i32 0, i32 0
  %33 = load i32, i32* %pos38, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom39
  %same_dragon = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx40, i32 0, i32 3
  %35 = load i32, i32* %same_dragon, align 4
  %36 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_update_goal(i32 %33, i32 %35, %struct.local_owl_data* %36, i32 0)
  %37 = load i32, i32* %target.addr, align 4
  %38 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call41 = call i32 @do_owl_defend(i32 %37, i32* %move2, i32* null, %struct.local_owl_data* %38, i32 0, i32 0, i32 0)
  %cmp42 = icmp eq i32 %call41, 5
  br i1 %cmp42, label %if.then.44, label %if.else.63

if.then.44:                                       ; preds = %if.then.35
  %39 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %moves, i32 0, i64 %idxprom45
  %pos47 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx46, i32 0, i32 0
  %40 = load i32, i32* %pos47, align 4
  store i32 %40, i32* %move, align 4
  call void @popgo()
  %41 = load i32, i32* %move2, align 4
  %cmp48 = icmp ne i32 %41, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.62

land.lhs.true.50:                                 ; preds = %if.then.44
  %42 = load i32, i32* %move2, align 4
  %idxprom51 = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %43 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %43 to i32
  %cmp54 = icmp eq i32 %conv53, 1
  br i1 %cmp54, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.50
  %44 = load i32, i32* %move2, align 4
  %idxprom56 = sext i32 %44 to i64
  %arrayidx57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom56
  %45 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %45 to i32
  %cmp59 = icmp eq i32 %conv58, 2
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %land.lhs.true.50
  store i32 0, i32* %move2, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %lor.lhs.false, %if.then.44
  store i32 5, i32* %result, align 4
  br label %for.end

if.else.63:                                       ; preds = %if.then.35
  call void @popgo()
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63
  %46 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal65 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %46, i32 0, i32 0
  %47 = bitcast [400 x i8]* %goal65 to i8*
  %48 = bitcast [400 x i8]* %saved_goal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 400, i32 4, i1 false)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %if.then.27
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %49 = load i32, i32* %k, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.62, %if.then.18, %for.cond
  %call69 = call i32 @get_reading_node_counter()
  %50 = load i32, i32* %reading_nodes_when_called, align 4
  %sub = sub nsw i32 %call69, %50
  store i32 %sub, i32* %tactical_nodes, align 4
  %51 = load i32, i32* @stackp, align 4
  %cmp70 = icmp eq i32 %51, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %for.end
  br label %if.end.74

if.else.73:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.then.72
  %52 = load i32, i32* @debug, align 4
  %and75 = and i32 %52, 4096
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %cond.false.78, label %cond.true.77

cond.true.77:                                     ; preds = %if.end.74
  br label %cond.end.82

cond.false.78:                                    ; preds = %if.end.74
  %53 = load i32, i32* %target.addr, align 4
  %54 = load i32, i32* %move, align 4
  %55 = load i32, i32* %move2, align 4
  %56 = load i32, i32* %result, align 4
  %57 = load i32, i32* @local_owl_node_counter, align 4
  %58 = load i32, i32* %tactical_nodes, align 4
  %call79 = call double @gg_cputime()
  %59 = load double, double* %start, align 8
  %sub80 = fsub double %call79, %59
  %call81 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i32 0, i32 0), i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, double %sub80)
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.78, %cond.true.77
  %60 = load i32, i32* %target.addr, align 4
  %61 = load i32, i32* %result, align 4
  %62 = load i32, i32* %move, align 4
  %63 = load i32, i32* %move2, align 4
  %64 = load i32, i32* %tactical_nodes, align 4
  %65 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal83 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %65, i32 0, i32 0
  %arraydecay84 = getelementptr inbounds [400 x i8], [400 x i8]* %goal83, i32 0, i32 0
  %66 = load i32, i32* %target.addr, align 4
  %idxprom85 = sext i32 %66 to i64
  %arrayidx86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom85
  %67 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %67 to i32
  call void @store_persistent_owl_cache(i32 3, i32 %60, i32 0, i32 0, i32 %61, i32 %62, i32 %63, i32 0, i32 %64, i8* %arraydecay84, i32 %conv87)
  %68 = load i32*, i32** %defend1.addr, align 8
  %tobool88 = icmp ne i32* %68, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.end.82
  %69 = load i32, i32* %move, align 4
  %70 = load i32*, i32** %defend1.addr, align 8
  store i32 %69, i32* %70, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %cond.end.82
  %71 = load i32*, i32** %defend2.addr, align 8
  %tobool91 = icmp ne i32* %71, null
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.90
  %72 = load i32, i32* %move2, align 4
  %73 = load i32*, i32** %defend2.addr, align 8
  store i32 %72, i32* %73, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.90
  %74 = load i32, i32* %color, align 4
  call void @close_pattern_list(i32 %74, %struct.matched_patterns_list_data* %shape_patterns)
  %75 = load i32, i32* %result, align 4
  store i32 %75, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.5, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal void @owl_update_goal(i32 %pos, i32 %same_dragon, %struct.local_owl_data* %owl, i32 %semeai_call) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %same_dragon.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %semeai_call.addr = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %num_stones = alloca i32, align 4
  %k = alloca i32, align 4
  %do_add = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %same_dragon, i32* %same_dragon.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32 %semeai_call, i32* %semeai_call.addr, align 4
  store i32 1, i32* %do_add, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  %2 = load i32, i32* %same_dragon.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.38

if.end:                                           ; preds = %entry
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %3 = load i32, i32* %semeai_call.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  call void @find_superstring_conservative(i32 %4, i32* %num_stones, i32* %arraydecay)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %pos.addr, align 4
  %arraydecay2 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  call void @find_superstring(i32 %5, i32* %num_stones, i32* %arraydecay2)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %6, %struct.SGFTree_t** @sgf_dumptree, align 8
  %7 = load i32, i32* %save_count_variations, align 4
  store i32 %7, i32* @count_variations, align 4
  %8 = load i32, i32* %same_dragon.addr, align 4
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* %do_add, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %num_stones, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom7
  %14 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %14 to i32
  %cmp9 = icmp ne i32 %conv, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 1, i32* %do_add, align 4
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.end.3
  %16 = load i32, i32* %do_add, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.38

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* %k, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.35, %if.then.15
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %num_stones, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [400 x i8], [400 x i8]* %goal23, i32 0, i64 %idxprom22
  %22 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %22 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %for.body.19
  %23 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom29
  %24 = load i32, i32* %arrayidx30, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal32 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %25, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [400 x i8], [400 x i8]* %goal32, i32 0, i64 %idxprom31
  store i8 2, i8* %arrayidx33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %for.body.19
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %26 = load i32, i32* %k, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, i32* %k, align 4
  br label %for.cond.16

for.end.37:                                       ; preds = %for.cond.16
  br label %if.end.38

if.end.38:                                        ; preds = %if.then, %for.end.37, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_pattern_list(%struct.matched_patterns_list_data* %list) #0 {
entry:
  %list.addr = alloca %struct.matched_patterns_list_data*, align 8
  %i = alloca i32, align 4
  %matched_pattern = alloca %struct.matched_pattern_data*, align 8
  store %struct.matched_patterns_list_data* %list, %struct.matched_patterns_list_data** %list.addr, align 8
  %0 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %0, i32 0, i32 0
  %1 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %list_size = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %2, i32 0, i32 4
  %3 = load i32, i32* %list_size, align 4
  %4 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %4, i32 0, i32 1
  %5 = load i32, i32* %counter, align 4
  %6 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %6, i32 0, i32 2
  %7 = load i32, i32* %used, align 4
  %8 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %8, i32 0, i32 3
  %9 = load i32, i32* %ordered_up_to, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i32 0, i32 0), i32 %3, i32 %5, i32 %7, i32 %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter1 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %11, i32 0, i32 1
  %12 = load i32, i32* %counter1, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %14, i32 0, i32 5
  %15 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list, align 8
  %arrayidx = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i64 %idxprom
  store %struct.matched_pattern_data* %arrayidx, %struct.matched_pattern_data** %matched_pattern, align 8
  %16 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %matched_pattern, align 8
  %pattern = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %16, i32 0, i32 2
  %17 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 3
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %matched_pattern, align 8
  %ll = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %19, i32 0, i32 1
  %20 = load i32, i32* %ll, align 4
  %21 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %matched_pattern, align 8
  %move = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %21, i32 0, i32 0
  %22 = load i32, i32* %move, align 4
  %23 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %matched_pattern, align 8
  %pattern2 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %23, i32 0, i32 2
  %24 = load %struct.pattern*, %struct.pattern** %pattern2, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %24, i32 0, i32 15
  %25 = load float, float* %value, align 4
  %conv = fpext float %25 to double
  %call3 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i8* %18, i32 %20, i32 %22, double %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @goaldump(i8* %goal) #0 {
entry:
  %goal.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i8* %goal, i8** %goal.addr, align 8
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i8*, i8** %goal.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %goal.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %6, i32 %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @owl_reasons(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %move = alloca i32, align 4
  %largest = alloca i32, align 4
  %k = alloca i32, align 4
  %bpos = alloca i32, align 4
  %kworm = alloca i32, align 4
  %safe = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.547, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.549

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 2
  %6 = load i32, i32* %origin, align 4
  %7 = load i32, i32* %pos, align 4
  %cmp11 = icmp ne i32 %6, %7
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %for.body
  br label %for.inc.547

if.end:                                           ; preds = %lor.lhs.false.8
  %8 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 16
  %9 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %9, 2
  br i1 %cmp15, label %land.lhs.true, label %if.else.177

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom17
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx18, i32 0, i32 8
  %11 = load i32, i32* %owl_attack_point, align 4
  %cmp19 = icmp ne i32 %11, 0
  br i1 %cmp19, label %if.then.21, label %if.else.177

if.then.21:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %14 = load i32, i32* %color.addr, align 4
  %cmp25 = icmp eq i32 %conv24, %14
  br i1 %cmp25, label %if.then.27, label %if.else.64

if.then.27:                                       ; preds = %if.then.21
  %15 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom28
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx29, i32 0, i32 12
  %16 = load i32, i32* %owl_defense_point, align 4
  %cmp30 = icmp ne i32 %16, 0
  br i1 %cmp30, label %if.then.32, label %if.end.63

if.then.32:                                       ; preds = %if.then.27
  %17 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %17 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom33
  %owl_defense_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx34, i32 0, i32 13
  %18 = load i32, i32* %owl_defense_code, align 4
  %cmp35 = icmp eq i32 %18, 2
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.32
  %19 = load i32, i32* %pos, align 4
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom38
  %owl_defense_point40 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx39, i32 0, i32 12
  %20 = load i32, i32* %owl_defense_point40, align 4
  %21 = load i32, i32* %pos, align 4
  %22 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %22 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom41
  %owl_defense_kworm = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx42, i32 0, i32 18
  %23 = load i32, i32* %owl_defense_kworm, align 4
  call void @add_loss_move(i32 %20, i32 %21, i32 %23)
  %24 = load i32, i32* @debug, align 4
  %and = and i32 %24, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.37
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  %25 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom43
  %owl_defense_point45 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx44, i32 0, i32 12
  %26 = load i32, i32* %owl_defense_point45, align 4
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* @movenum, align 4
  %add = add nsw i32 %28, 1
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i32 %26, i32 %27, i32 %add)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.62

if.else:                                          ; preds = %if.then.32
  %29 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom46
  %owl_defense_point48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx47, i32 0, i32 12
  %30 = load i32, i32* %owl_defense_point48, align 4
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom49
  %owl_defense_code51 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx50, i32 0, i32 13
  %33 = load i32, i32* %owl_defense_code51, align 4
  call void @add_owl_defense_move(i32 %30, i32 %31, i32 %33)
  %34 = load i32, i32* @debug, align 4
  %and52 = and i32 %34, 4
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.false.55, label %cond.true.54

cond.true.54:                                     ; preds = %if.else
  br label %cond.end.61

cond.false.55:                                    ; preds = %if.else
  %35 = load i32, i32* %pos, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom56
  %owl_defense_point58 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx57, i32 0, i32 12
  %36 = load i32, i32* %owl_defense_point58, align 4
  %37 = load i32, i32* %pos, align 4
  %38 = load i32, i32* @movenum, align 4
  %add59 = add nsw i32 %38, 1
  %call60 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 %36, i32 %37, i32 %add59)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.55, %cond.true.54
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end.61, %cond.end
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.27
  br label %if.end.176

if.else.64:                                       ; preds = %if.then.21
  %39 = load i32, i32* %pos, align 4
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom65
  %owl_attack_point67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx66, i32 0, i32 8
  %40 = load i32, i32* %owl_attack_point67, align 4
  store i32 %40, i32* %move, align 4
  %41 = load i32, i32* %pos, align 4
  %idxprom68 = sext i32 %41 to i64
  %arrayidx69 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom68
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx69, i32 0, i32 4
  %42 = load float, float* %effective_size, align 4
  %cmp70 = fcmp olt float %42, 8.000000e+00
  br i1 %cmp70, label %if.then.72, label %if.end.149

if.then.72:                                       ; preds = %if.else.64
  store i32 0, i32* %largest, align 4
  store i32 0, i32* %bpos, align 4
  store i32 0, i32* %kworm, align 4
  store i32 0, i32* %safe, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.then.72
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %pos, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom74
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx75, i32 0, i32 1
  %45 = load i32, i32* %id, align 4
  %idxprom76 = sext i32 %45 to i64
  %46 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx77 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %46, i64 %idxprom76
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx77, i32 0, i32 2
  %47 = load i32, i32* %neighbors, align 4
  %cmp78 = icmp slt i32 %43, %47
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.73
  %48 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %48 to i64
  %49 = load i32, i32* %pos, align 4
  %idxprom82 = sext i32 %49 to i64
  %arrayidx83 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom82
  %id84 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx83, i32 0, i32 1
  %50 = load i32, i32* %id84, align 4
  %idxprom85 = sext i32 %50 to i64
  %51 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i64 %idxprom85
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx86, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom81
  %52 = load i32, i32* %arrayidx87, align 4
  store i32 %52, i32* %d, align 4
  %53 = load i32, i32* %d, align 4
  %idxprom88 = sext i32 %53 to i64
  %54 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx89 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %54, i64 %idxprom88
  %origin90 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx89, i32 0, i32 0
  %55 = load i32, i32* %origin90, align 4
  %idxprom91 = sext i32 %55 to i64
  %arrayidx92 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom91
  %color93 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx92, i32 0, i32 0
  %56 = load i32, i32* %color93, align 4
  %57 = load i32, i32* %color.addr, align 4
  %cmp94 = icmp eq i32 %56, %57
  br i1 %cmp94, label %if.then.96, label %if.end.125

if.then.96:                                       ; preds = %for.body.80
  %58 = load i32, i32* %d, align 4
  %idxprom97 = sext i32 %58 to i64
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx98 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i64 %idxprom97
  %origin99 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx98, i32 0, i32 0
  %60 = load i32, i32* %origin99, align 4
  %idxprom100 = sext i32 %60 to i64
  %arrayidx101 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom100
  %status102 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx101, i32 0, i32 16
  %61 = load i32, i32* %status102, align 4
  %cmp103 = icmp eq i32 %61, 1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.96
  store i32 1, i32* %safe, align 4
  br label %for.end

if.end.106:                                       ; preds = %if.then.96
  %62 = load i32, i32* %d, align 4
  %idxprom107 = sext i32 %62 to i64
  %63 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx108 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %63, i64 %idxprom107
  %origin109 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx108, i32 0, i32 0
  %64 = load i32, i32* %origin109, align 4
  %idxprom110 = sext i32 %64 to i64
  %arrayidx111 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom110
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx111, i32 0, i32 3
  %65 = load i32, i32* %size, align 4
  %66 = load i32, i32* %largest, align 4
  %cmp112 = icmp sgt i32 %65, %66
  br i1 %cmp112, label %if.then.114, label %if.end.124

if.then.114:                                      ; preds = %if.end.106
  %67 = load i32, i32* %d, align 4
  %idxprom115 = sext i32 %67 to i64
  %68 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx116 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %68, i64 %idxprom115
  %origin117 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx116, i32 0, i32 0
  %69 = load i32, i32* %origin117, align 4
  store i32 %69, i32* %bpos, align 4
  %70 = load i32, i32* %d, align 4
  %idxprom118 = sext i32 %70 to i64
  %71 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx119 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %71, i64 %idxprom118
  %origin120 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx119, i32 0, i32 0
  %72 = load i32, i32* %origin120, align 4
  %idxprom121 = sext i32 %72 to i64
  %arrayidx122 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom121
  %size123 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx122, i32 0, i32 3
  %73 = load i32, i32* %size123, align 4
  store i32 %73, i32* %largest, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.114, %if.end.106
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %for.body.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.125
  %74 = load i32, i32* %k, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.73

for.end:                                          ; preds = %if.then.105, %for.cond.73
  %75 = load i32, i32* %bpos, align 4
  %cmp126 = icmp eq i32 %75, 0
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %for.end
  store i32 1, i32* %safe, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %for.end
  %76 = load i32, i32* %safe, align 4
  %tobool130 = icmp ne i32 %76, 0
  br i1 %tobool130, label %if.end.148, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %if.end.129
  %77 = load i32, i32* %move, align 4
  %78 = load i32, i32* %bpos, align 4
  %call132 = call i32 @owl_does_defend(i32 %77, i32 %78, i32* %kworm)
  %cmp133 = icmp ne i32 %call132, 5
  br i1 %cmp133, label %if.then.135, label %if.end.148

if.then.135:                                      ; preds = %land.lhs.true.131
  %79 = load i32, i32* @debug, align 4
  %and136 = and i32 %79, 4
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %cond.false.139, label %cond.true.138

cond.true.138:                                    ; preds = %if.then.135
  br label %cond.end.142

cond.false.139:                                   ; preds = %if.then.135
  %80 = load i32, i32* %move, align 4
  %81 = load i32, i32* %pos, align 4
  %82 = load i32, i32* @movenum, align 4
  %add140 = add nsw i32 %82, 1
  %call141 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i32 0, i32 0), i32 %80, i32 %81, i32 %add140)
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.138
  %83 = load i32, i32* %pos, align 4
  %idxprom143 = sext i32 %83 to i64
  %arrayidx144 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom143
  %id145 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx144, i32 0, i32 1
  %84 = load i32, i32* %id145, align 4
  %idxprom146 = sext i32 %84 to i64
  %85 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx147 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %85, i64 %idxprom146
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx147, i32 0, i32 6
  store i32 5, i32* %safety, align 4
  br label %for.inc.547

if.end.148:                                       ; preds = %land.lhs.true.131, %if.end.129
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.else.64
  %86 = load i32, i32* %pos, align 4
  %idxprom150 = sext i32 %86 to i64
  %arrayidx151 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom150
  %owl_attack_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx151, i32 0, i32 9
  %87 = load i32, i32* %owl_attack_code, align 4
  %cmp152 = icmp eq i32 %87, 3
  br i1 %cmp152, label %if.then.154, label %if.else.164

if.then.154:                                      ; preds = %if.end.149
  %88 = load i32, i32* %move, align 4
  %89 = load i32, i32* %pos, align 4
  %90 = load i32, i32* %pos, align 4
  %idxprom155 = sext i32 %90 to i64
  %arrayidx156 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom155
  %owl_attack_kworm = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx156, i32 0, i32 17
  %91 = load i32, i32* %owl_attack_kworm, align 4
  call void @add_gain_move(i32 %88, i32 %89, i32 %91)
  %92 = load i32, i32* @debug, align 4
  %and157 = and i32 %92, 4
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %cond.false.160, label %cond.true.159

cond.true.159:                                    ; preds = %if.then.154
  br label %cond.end.163

cond.false.160:                                   ; preds = %if.then.154
  %93 = load i32, i32* %move, align 4
  %94 = load i32, i32* %pos, align 4
  %95 = load i32, i32* @movenum, align 4
  %add161 = add nsw i32 %95, 1
  %call162 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i32 %93, i32 %94, i32 %add161)
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.160, %cond.true.159
  br label %if.end.175

if.else.164:                                      ; preds = %if.end.149
  %96 = load i32, i32* %move, align 4
  %97 = load i32, i32* %pos, align 4
  %98 = load i32, i32* %pos, align 4
  %idxprom165 = sext i32 %98 to i64
  %arrayidx166 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom165
  %owl_attack_code167 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx166, i32 0, i32 9
  %99 = load i32, i32* %owl_attack_code167, align 4
  call void @add_owl_attack_move(i32 %96, i32 %97, i32 %99)
  %100 = load i32, i32* @debug, align 4
  %and168 = and i32 %100, 4
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %cond.false.171, label %cond.true.170

cond.true.170:                                    ; preds = %if.else.164
  br label %cond.end.174

cond.false.171:                                   ; preds = %if.else.164
  %101 = load i32, i32* %move, align 4
  %102 = load i32, i32* %pos, align 4
  %103 = load i32, i32* @movenum, align 4
  %add172 = add nsw i32 %103, 1
  %call173 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i32 %101, i32 %102, i32 %add172)
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.171, %cond.true.170
  br label %if.end.175

if.end.175:                                       ; preds = %cond.end.174, %cond.end.163
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.63
  br label %if.end.546

if.else.177:                                      ; preds = %land.lhs.true, %if.end
  %104 = load i32, i32* %pos, align 4
  %idxprom178 = sext i32 %104 to i64
  %arrayidx179 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom178
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx179, i32 0, i32 7
  %105 = load i32, i32* %owl_status, align 4
  %cmp180 = icmp eq i32 %105, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.else.277

land.lhs.true.182:                                ; preds = %if.else.177
  %106 = load i32, i32* %pos, align 4
  %idxprom183 = sext i32 %106 to i64
  %arrayidx184 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom183
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx184, i32 0, i32 6
  %107 = load i32, i32* %owl_threat_status, align 4
  %cmp185 = icmp eq i32 %107, 12
  br i1 %cmp185, label %if.then.187, label %if.else.277

if.then.187:                                      ; preds = %land.lhs.true.182
  %108 = load i32, i32* %pos, align 4
  %idxprom188 = sext i32 %108 to i64
  %arrayidx189 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom188
  %109 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %109 to i32
  %110 = load i32, i32* %color.addr, align 4
  %cmp191 = icmp eq i32 %conv190, %110
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.213

land.lhs.true.193:                                ; preds = %if.then.187
  %111 = load i32, i32* %pos, align 4
  %idxprom194 = sext i32 %111 to i64
  %arrayidx195 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom194
  %owl_defense_point196 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx195, i32 0, i32 12
  %112 = load i32, i32* %owl_defense_point196, align 4
  %cmp197 = icmp ne i32 %112, 0
  br i1 %cmp197, label %if.then.199, label %if.end.213

if.then.199:                                      ; preds = %land.lhs.true.193
  %113 = load i32, i32* %pos, align 4
  %idxprom200 = sext i32 %113 to i64
  %arrayidx201 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom200
  %owl_defense_point202 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx201, i32 0, i32 12
  %114 = load i32, i32* %owl_defense_point202, align 4
  %115 = load i32, i32* %pos, align 4
  call void @add_owl_defense_threat_move(i32 %114, i32 %115, i32 5)
  %116 = load i32, i32* @debug, align 4
  %and203 = and i32 %116, 4
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %cond.false.206, label %cond.true.205

cond.true.205:                                    ; preds = %if.then.199
  br label %cond.end.212

cond.false.206:                                   ; preds = %if.then.199
  %117 = load i32, i32* %pos, align 4
  %idxprom207 = sext i32 %117 to i64
  %arrayidx208 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom207
  %owl_defense_point209 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx208, i32 0, i32 12
  %118 = load i32, i32* %owl_defense_point209, align 4
  %119 = load i32, i32* %pos, align 4
  %120 = load i32, i32* @movenum, align 4
  %add210 = add nsw i32 %120, 1
  %call211 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i32 %118, i32 %119, i32 %add210)
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.206, %cond.true.205
  br label %if.end.213

if.end.213:                                       ; preds = %cond.end.212, %land.lhs.true.193, %if.then.187
  %121 = load i32, i32* %pos, align 4
  %idxprom214 = sext i32 %121 to i64
  %arrayidx215 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom214
  %122 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %122 to i32
  %123 = load i32, i32* %color.addr, align 4
  %cmp217 = icmp eq i32 %conv216, %123
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.244

land.lhs.true.219:                                ; preds = %if.end.213
  %124 = load i32, i32* %pos, align 4
  %idxprom220 = sext i32 %124 to i64
  %arrayidx221 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom220
  %owl_second_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx221, i32 0, i32 15
  %125 = load i32, i32* %owl_second_defense_point, align 4
  %cmp222 = icmp ne i32 %125, 0
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.244

land.lhs.true.224:                                ; preds = %land.lhs.true.219
  %126 = load i32, i32* %pos, align 4
  %idxprom225 = sext i32 %126 to i64
  %arrayidx226 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom225
  %owl_second_defense_point227 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx226, i32 0, i32 15
  %127 = load i32, i32* %owl_second_defense_point227, align 4
  %128 = load i32, i32* %color.addr, align 4
  %call228 = call i32 @is_legal(i32 %127, i32 %128)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.244

if.then.230:                                      ; preds = %land.lhs.true.224
  %129 = load i32, i32* %pos, align 4
  %idxprom231 = sext i32 %129 to i64
  %arrayidx232 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom231
  %owl_second_defense_point233 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx232, i32 0, i32 15
  %130 = load i32, i32* %owl_second_defense_point233, align 4
  %131 = load i32, i32* %pos, align 4
  call void @add_owl_defense_threat_move(i32 %130, i32 %131, i32 5)
  %132 = load i32, i32* @debug, align 4
  %and234 = and i32 %132, 4
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %cond.false.237, label %cond.true.236

cond.true.236:                                    ; preds = %if.then.230
  br label %cond.end.243

cond.false.237:                                   ; preds = %if.then.230
  %133 = load i32, i32* %pos, align 4
  %idxprom238 = sext i32 %133 to i64
  %arrayidx239 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom238
  %owl_second_defense_point240 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx239, i32 0, i32 15
  %134 = load i32, i32* %owl_second_defense_point240, align 4
  %135 = load i32, i32* %pos, align 4
  %136 = load i32, i32* @movenum, align 4
  %add241 = add nsw i32 %136, 1
  %call242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i32 %134, i32 %135, i32 %add241)
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.237, %cond.true.236
  br label %if.end.244

if.end.244:                                       ; preds = %cond.end.243, %land.lhs.true.224, %land.lhs.true.219, %if.end.213
  %137 = load i32, i32* %pos, align 4
  %idxprom245 = sext i32 %137 to i64
  %arrayidx246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom245
  %138 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %138 to i32
  %139 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %139
  %cmp248 = icmp eq i32 %conv247, %sub
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.276

land.lhs.true.250:                                ; preds = %if.end.244
  %140 = load i32, i32* %pos, align 4
  %idxprom251 = sext i32 %140 to i64
  %arrayidx252 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom251
  %owl_threat_status253 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx252, i32 0, i32 6
  %141 = load i32, i32* %owl_threat_status253, align 4
  %cmp254 = icmp eq i32 %141, 12
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.276

land.lhs.true.256:                                ; preds = %land.lhs.true.250
  %142 = load i32, i32* %pos, align 4
  %idxprom257 = sext i32 %142 to i64
  %arrayidx258 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom257
  %owl_attack_point259 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx258, i32 0, i32 8
  %143 = load i32, i32* %owl_attack_point259, align 4
  %cmp260 = icmp ne i32 %143, 0
  br i1 %cmp260, label %if.then.262, label %if.end.276

if.then.262:                                      ; preds = %land.lhs.true.256
  %144 = load i32, i32* %pos, align 4
  %idxprom263 = sext i32 %144 to i64
  %arrayidx264 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom263
  %owl_attack_point265 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx264, i32 0, i32 8
  %145 = load i32, i32* %owl_attack_point265, align 4
  %146 = load i32, i32* %pos, align 4
  call void @add_owl_prevent_threat_move(i32 %145, i32 %146)
  %147 = load i32, i32* @debug, align 4
  %and266 = and i32 %147, 4
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %cond.false.269, label %cond.true.268

cond.true.268:                                    ; preds = %if.then.262
  br label %cond.end.275

cond.false.269:                                   ; preds = %if.then.262
  %148 = load i32, i32* %pos, align 4
  %idxprom270 = sext i32 %148 to i64
  %arrayidx271 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom270
  %owl_attack_point272 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx271, i32 0, i32 8
  %149 = load i32, i32* %owl_attack_point272, align 4
  %150 = load i32, i32* %pos, align 4
  %151 = load i32, i32* @movenum, align 4
  %add273 = add nsw i32 %151, 1
  %call274 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 %149, i32 %150, i32 %add273)
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.269, %cond.true.268
  br label %if.end.276

if.end.276:                                       ; preds = %cond.end.275, %land.lhs.true.256, %land.lhs.true.250, %if.end.244
  br label %if.end.545

if.else.277:                                      ; preds = %land.lhs.true.182, %if.else.177
  %152 = load i32, i32* %pos, align 4
  %idxprom278 = sext i32 %152 to i64
  %arrayidx279 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom278
  %owl_status280 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx279, i32 0, i32 7
  %153 = load i32, i32* %owl_status280, align 4
  %cmp281 = icmp eq i32 %153, 1
  br i1 %cmp281, label %if.then.283, label %if.else.502

if.then.283:                                      ; preds = %if.else.277
  %154 = load i32, i32* %pos, align 4
  %idxprom284 = sext i32 %154 to i64
  %arrayidx285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom284
  %155 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %155 to i32
  %156 = load i32, i32* %color.addr, align 4
  %sub287 = sub nsw i32 3, %156
  %cmp288 = icmp eq i32 %conv286, %sub287
  br i1 %cmp288, label %land.lhs.true.290, label %if.else.342

land.lhs.true.290:                                ; preds = %if.then.283
  %157 = load i32, i32* %pos, align 4
  %idxprom291 = sext i32 %157 to i64
  %arrayidx292 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom291
  %owl_threat_status293 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx292, i32 0, i32 6
  %158 = load i32, i32* %owl_threat_status293, align 4
  %cmp294 = icmp eq i32 %158, 11
  br i1 %cmp294, label %if.then.296, label %if.else.342

if.then.296:                                      ; preds = %land.lhs.true.290
  %159 = load i32, i32* %pos, align 4
  %idxprom297 = sext i32 %159 to i64
  %arrayidx298 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom297
  %owl_attack_point299 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx298, i32 0, i32 8
  %160 = load i32, i32* %owl_attack_point299, align 4
  %cmp300 = icmp ne i32 %160, 0
  br i1 %cmp300, label %if.then.302, label %if.end.316

if.then.302:                                      ; preds = %if.then.296
  %161 = load i32, i32* %pos, align 4
  %idxprom303 = sext i32 %161 to i64
  %arrayidx304 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom303
  %owl_attack_point305 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx304, i32 0, i32 8
  %162 = load i32, i32* %owl_attack_point305, align 4
  %163 = load i32, i32* %pos, align 4
  call void @add_owl_attack_threat_move(i32 %162, i32 %163, i32 5)
  %164 = load i32, i32* @debug, align 4
  %and306 = and i32 %164, 4
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %cond.false.309, label %cond.true.308

cond.true.308:                                    ; preds = %if.then.302
  br label %cond.end.315

cond.false.309:                                   ; preds = %if.then.302
  %165 = load i32, i32* %pos, align 4
  %idxprom310 = sext i32 %165 to i64
  %arrayidx311 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom310
  %owl_attack_point312 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx311, i32 0, i32 8
  %166 = load i32, i32* %owl_attack_point312, align 4
  %167 = load i32, i32* %pos, align 4
  %168 = load i32, i32* @movenum, align 4
  %add313 = add nsw i32 %168, 1
  %call314 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 %166, i32 %167, i32 %add313)
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.309, %cond.true.308
  br label %if.end.316

if.end.316:                                       ; preds = %cond.end.315, %if.then.296
  %169 = load i32, i32* %pos, align 4
  %idxprom317 = sext i32 %169 to i64
  %arrayidx318 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom317
  %owl_second_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx318, i32 0, i32 11
  %170 = load i32, i32* %owl_second_attack_point, align 4
  %cmp319 = icmp ne i32 %170, 0
  br i1 %cmp319, label %land.lhs.true.321, label %if.end.341

land.lhs.true.321:                                ; preds = %if.end.316
  %171 = load i32, i32* %pos, align 4
  %idxprom322 = sext i32 %171 to i64
  %arrayidx323 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom322
  %owl_second_attack_point324 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx323, i32 0, i32 11
  %172 = load i32, i32* %owl_second_attack_point324, align 4
  %173 = load i32, i32* %color.addr, align 4
  %call325 = call i32 @is_legal(i32 %172, i32 %173)
  %tobool326 = icmp ne i32 %call325, 0
  br i1 %tobool326, label %if.then.327, label %if.end.341

if.then.327:                                      ; preds = %land.lhs.true.321
  %174 = load i32, i32* %pos, align 4
  %idxprom328 = sext i32 %174 to i64
  %arrayidx329 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom328
  %owl_second_attack_point330 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx329, i32 0, i32 11
  %175 = load i32, i32* %owl_second_attack_point330, align 4
  %176 = load i32, i32* %pos, align 4
  call void @add_owl_attack_threat_move(i32 %175, i32 %176, i32 5)
  %177 = load i32, i32* @debug, align 4
  %and331 = and i32 %177, 4
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %cond.false.334, label %cond.true.333

cond.true.333:                                    ; preds = %if.then.327
  br label %cond.end.340

cond.false.334:                                   ; preds = %if.then.327
  %178 = load i32, i32* %pos, align 4
  %idxprom335 = sext i32 %178 to i64
  %arrayidx336 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom335
  %owl_second_attack_point337 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx336, i32 0, i32 11
  %179 = load i32, i32* %owl_second_attack_point337, align 4
  %180 = load i32, i32* %pos, align 4
  %181 = load i32, i32* @movenum, align 4
  %add338 = add nsw i32 %181, 1
  %call339 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 %179, i32 %180, i32 %add338)
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.false.334, %cond.true.333
  br label %if.end.341

if.end.341:                                       ; preds = %cond.end.340, %land.lhs.true.321, %if.end.316
  br label %if.end.501

if.else.342:                                      ; preds = %land.lhs.true.290, %if.then.283
  %182 = load i32, i32* %pos, align 4
  %idxprom343 = sext i32 %182 to i64
  %arrayidx344 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom343
  %183 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %183 to i32
  %184 = load i32, i32* %color.addr, align 4
  %sub346 = sub nsw i32 3, %184
  %cmp347 = icmp eq i32 %conv345, %sub346
  br i1 %cmp347, label %land.lhs.true.349, label %if.else.378

land.lhs.true.349:                                ; preds = %if.else.342
  %185 = load i32, i32* %pos, align 4
  %idxprom350 = sext i32 %185 to i64
  %arrayidx351 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom350
  %owl_attack_point352 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx351, i32 0, i32 8
  %186 = load i32, i32* %owl_attack_point352, align 4
  %cmp353 = icmp ne i32 %186, 0
  br i1 %cmp353, label %land.lhs.true.355, label %if.else.378

land.lhs.true.355:                                ; preds = %land.lhs.true.349
  %187 = load i32, i32* %pos, align 4
  %idxprom356 = sext i32 %187 to i64
  %arrayidx357 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom356
  %owl_attack_code358 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx357, i32 0, i32 9
  %188 = load i32, i32* %owl_attack_code358, align 4
  %cmp359 = icmp eq i32 %188, 3
  br i1 %cmp359, label %if.then.361, label %if.else.378

if.then.361:                                      ; preds = %land.lhs.true.355
  %189 = load i32, i32* %pos, align 4
  %idxprom362 = sext i32 %189 to i64
  %arrayidx363 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom362
  %owl_attack_point364 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx363, i32 0, i32 8
  %190 = load i32, i32* %owl_attack_point364, align 4
  %191 = load i32, i32* %pos, align 4
  %192 = load i32, i32* %pos, align 4
  %idxprom365 = sext i32 %192 to i64
  %arrayidx366 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom365
  %owl_attack_kworm367 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx366, i32 0, i32 17
  %193 = load i32, i32* %owl_attack_kworm367, align 4
  call void @add_gain_move(i32 %190, i32 %191, i32 %193)
  %194 = load i32, i32* @debug, align 4
  %and368 = and i32 %194, 4
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %cond.false.371, label %cond.true.370

cond.true.370:                                    ; preds = %if.then.361
  br label %cond.end.377

cond.false.371:                                   ; preds = %if.then.361
  %195 = load i32, i32* %pos, align 4
  %idxprom372 = sext i32 %195 to i64
  %arrayidx373 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom372
  %owl_attack_point374 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx373, i32 0, i32 8
  %196 = load i32, i32* %owl_attack_point374, align 4
  %197 = load i32, i32* %pos, align 4
  %198 = load i32, i32* @movenum, align 4
  %add375 = add nsw i32 %198, 1
  %call376 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i32 %196, i32 %197, i32 %add375)
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.371, %cond.true.370
  br label %if.end.500

if.else.378:                                      ; preds = %land.lhs.true.355, %land.lhs.true.349, %if.else.342
  %199 = load i32, i32* %pos, align 4
  %idxprom379 = sext i32 %199 to i64
  %arrayidx380 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom379
  %200 = load i8, i8* %arrayidx380, align 1
  %conv381 = zext i8 %200 to i32
  %201 = load i32, i32* %color.addr, align 4
  %cmp382 = icmp eq i32 %conv381, %201
  br i1 %cmp382, label %land.lhs.true.384, label %if.else.413

land.lhs.true.384:                                ; preds = %if.else.378
  %202 = load i32, i32* %pos, align 4
  %idxprom385 = sext i32 %202 to i64
  %arrayidx386 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom385
  %owl_defense_point387 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx386, i32 0, i32 12
  %203 = load i32, i32* %owl_defense_point387, align 4
  %cmp388 = icmp ne i32 %203, 0
  br i1 %cmp388, label %land.lhs.true.390, label %if.else.413

land.lhs.true.390:                                ; preds = %land.lhs.true.384
  %204 = load i32, i32* %pos, align 4
  %idxprom391 = sext i32 %204 to i64
  %arrayidx392 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom391
  %owl_defense_code393 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx392, i32 0, i32 13
  %205 = load i32, i32* %owl_defense_code393, align 4
  %cmp394 = icmp eq i32 %205, 2
  br i1 %cmp394, label %if.then.396, label %if.else.413

if.then.396:                                      ; preds = %land.lhs.true.390
  %206 = load i32, i32* %pos, align 4
  %idxprom397 = sext i32 %206 to i64
  %arrayidx398 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom397
  %owl_defense_point399 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx398, i32 0, i32 12
  %207 = load i32, i32* %owl_defense_point399, align 4
  %208 = load i32, i32* %pos, align 4
  %209 = load i32, i32* %pos, align 4
  %idxprom400 = sext i32 %209 to i64
  %arrayidx401 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom400
  %owl_defense_kworm402 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx401, i32 0, i32 18
  %210 = load i32, i32* %owl_defense_kworm402, align 4
  call void @add_loss_move(i32 %207, i32 %208, i32 %210)
  %211 = load i32, i32* @debug, align 4
  %and403 = and i32 %211, 4
  %tobool404 = icmp ne i32 %and403, 0
  br i1 %tobool404, label %cond.false.406, label %cond.true.405

cond.true.405:                                    ; preds = %if.then.396
  br label %cond.end.412

cond.false.406:                                   ; preds = %if.then.396
  %212 = load i32, i32* %pos, align 4
  %idxprom407 = sext i32 %212 to i64
  %arrayidx408 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom407
  %owl_defense_point409 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx408, i32 0, i32 12
  %213 = load i32, i32* %owl_defense_point409, align 4
  %214 = load i32, i32* %pos, align 4
  %215 = load i32, i32* @movenum, align 4
  %add410 = add nsw i32 %215, 1
  %call411 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i32 %213, i32 %214, i32 %add410)
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.406, %cond.true.405
  br label %if.end.499

if.else.413:                                      ; preds = %land.lhs.true.390, %land.lhs.true.384, %if.else.378
  %216 = load i32, i32* %pos, align 4
  %idxprom414 = sext i32 %216 to i64
  %arrayidx415 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom414
  %217 = load i8, i8* %arrayidx415, align 1
  %conv416 = zext i8 %217 to i32
  %218 = load i32, i32* %color.addr, align 4
  %cmp417 = icmp eq i32 %conv416, %218
  br i1 %cmp417, label %land.lhs.true.419, label %if.else.460

land.lhs.true.419:                                ; preds = %if.else.413
  %219 = load i32, i32* %pos, align 4
  %idxprom420 = sext i32 %219 to i64
  %arrayidx421 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom420
  %owl_attack_point422 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx421, i32 0, i32 8
  %220 = load i32, i32* %owl_attack_point422, align 4
  %cmp423 = icmp ne i32 %220, 0
  br i1 %cmp423, label %land.lhs.true.425, label %if.else.460

land.lhs.true.425:                                ; preds = %land.lhs.true.419
  %221 = load i32, i32* %pos, align 4
  %idxprom426 = sext i32 %221 to i64
  %arrayidx427 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom426
  %owl_attack_code428 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx427, i32 0, i32 9
  %222 = load i32, i32* %owl_attack_code428, align 4
  %cmp429 = icmp eq i32 %222, 3
  br i1 %cmp429, label %land.lhs.true.431, label %if.else.460

land.lhs.true.431:                                ; preds = %land.lhs.true.425
  %223 = load i32, i32* %pos, align 4
  %idxprom432 = sext i32 %223 to i64
  %arrayidx433 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom432
  %owl_defense_code434 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx433, i32 0, i32 13
  %224 = load i32, i32* %owl_defense_code434, align 4
  %cmp435 = icmp eq i32 %224, 5
  br i1 %cmp435, label %land.lhs.true.437, label %if.else.460

land.lhs.true.437:                                ; preds = %land.lhs.true.431
  %225 = load i32, i32* %pos, align 4
  %idxprom438 = sext i32 %225 to i64
  %arrayidx439 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom438
  %owl_defense_point440 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx439, i32 0, i32 12
  %226 = load i32, i32* %owl_defense_point440, align 4
  %cmp441 = icmp ne i32 %226, 0
  br i1 %cmp441, label %if.then.443, label %if.else.460

if.then.443:                                      ; preds = %land.lhs.true.437
  %227 = load i32, i32* %pos, align 4
  %idxprom444 = sext i32 %227 to i64
  %arrayidx445 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom444
  %owl_defense_point446 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx445, i32 0, i32 12
  %228 = load i32, i32* %owl_defense_point446, align 4
  %229 = load i32, i32* %pos, align 4
  %230 = load i32, i32* %pos, align 4
  %idxprom447 = sext i32 %230 to i64
  %arrayidx448 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom447
  %owl_defense_code449 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx448, i32 0, i32 13
  %231 = load i32, i32* %owl_defense_code449, align 4
  call void @add_owl_defense_move(i32 %228, i32 %229, i32 %231)
  %232 = load i32, i32* @debug, align 4
  %and450 = and i32 %232, 4
  %tobool451 = icmp ne i32 %and450, 0
  br i1 %tobool451, label %cond.false.453, label %cond.true.452

cond.true.452:                                    ; preds = %if.then.443
  br label %cond.end.459

cond.false.453:                                   ; preds = %if.then.443
  %233 = load i32, i32* %pos, align 4
  %idxprom454 = sext i32 %233 to i64
  %arrayidx455 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom454
  %owl_defense_point456 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx455, i32 0, i32 12
  %234 = load i32, i32* %owl_defense_point456, align 4
  %235 = load i32, i32* %pos, align 4
  %236 = load i32, i32* @movenum, align 4
  %add457 = add nsw i32 %236, 1
  %call458 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0), i32 %234, i32 %235, i32 %add457)
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.453, %cond.true.452
  br label %if.end.498

if.else.460:                                      ; preds = %land.lhs.true.437, %land.lhs.true.431, %land.lhs.true.425, %land.lhs.true.419, %if.else.413
  %237 = load i32, i32* %pos, align 4
  %idxprom461 = sext i32 %237 to i64
  %arrayidx462 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom461
  %238 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %238 to i32
  %239 = load i32, i32* %color.addr, align 4
  %cmp464 = icmp eq i32 %conv463, %239
  br i1 %cmp464, label %land.lhs.true.466, label %if.end.497

land.lhs.true.466:                                ; preds = %if.else.460
  %240 = load i32, i32* %pos, align 4
  %idxprom467 = sext i32 %240 to i64
  %arrayidx468 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom467
  %owl_attack_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx468, i32 0, i32 10
  %241 = load i32, i32* %owl_attack_certain, align 4
  %tobool469 = icmp ne i32 %241, 0
  br i1 %tobool469, label %if.end.497, label %land.lhs.true.470

land.lhs.true.470:                                ; preds = %land.lhs.true.466
  %242 = load i32, i32* %pos, align 4
  %idxprom471 = sext i32 %242 to i64
  %arrayidx472 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom471
  %owl_defense_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx472, i32 0, i32 14
  %243 = load i32, i32* %owl_defense_certain, align 4
  %tobool473 = icmp ne i32 %243, 0
  br i1 %tobool473, label %land.lhs.true.474, label %if.end.497

land.lhs.true.474:                                ; preds = %land.lhs.true.470
  %244 = load i32, i32* %pos, align 4
  %idxprom475 = sext i32 %244 to i64
  %arrayidx476 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom475
  %owl_defense_point477 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx476, i32 0, i32 12
  %245 = load i32, i32* %owl_defense_point477, align 4
  %idxprom478 = sext i32 %245 to i64
  %arrayidx479 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom478
  %246 = load i8, i8* %arrayidx479, align 1
  %conv480 = zext i8 %246 to i32
  %cmp481 = icmp ne i32 %conv480, 3
  br i1 %cmp481, label %if.then.483, label %if.end.497

if.then.483:                                      ; preds = %land.lhs.true.474
  %247 = load i32, i32* %pos, align 4
  %idxprom484 = sext i32 %247 to i64
  %arrayidx485 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom484
  %owl_defense_point486 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx485, i32 0, i32 12
  %248 = load i32, i32* %owl_defense_point486, align 4
  %249 = load i32, i32* %pos, align 4
  call void @add_owl_uncertain_defense_move(i32 %248, i32 %249)
  %250 = load i32, i32* @debug, align 4
  %and487 = and i32 %250, 4
  %tobool488 = icmp ne i32 %and487, 0
  br i1 %tobool488, label %cond.false.490, label %cond.true.489

cond.true.489:                                    ; preds = %if.then.483
  br label %cond.end.496

cond.false.490:                                   ; preds = %if.then.483
  %251 = load i32, i32* %pos, align 4
  %idxprom491 = sext i32 %251 to i64
  %arrayidx492 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom491
  %owl_defense_point493 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx492, i32 0, i32 12
  %252 = load i32, i32* %owl_defense_point493, align 4
  %253 = load i32, i32* %pos, align 4
  %254 = load i32, i32* @movenum, align 4
  %add494 = add nsw i32 %254, 1
  %call495 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0), i32 %252, i32 %253, i32 %add494)
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.490, %cond.true.489
  br label %if.end.497

if.end.497:                                       ; preds = %cond.end.496, %land.lhs.true.474, %land.lhs.true.470, %land.lhs.true.466, %if.else.460
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %cond.end.459
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %cond.end.412
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %cond.end.377
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %if.end.341
  br label %if.end.544

if.else.502:                                      ; preds = %if.else.277
  %255 = load i32, i32* %pos, align 4
  %idxprom503 = sext i32 %255 to i64
  %arrayidx504 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom503
  %owl_status505 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx504, i32 0, i32 7
  %256 = load i32, i32* %owl_status505, align 4
  %cmp506 = icmp eq i32 %256, 0
  br i1 %cmp506, label %land.lhs.true.508, label %if.end.543

land.lhs.true.508:                                ; preds = %if.else.502
  %257 = load i32, i32* %pos, align 4
  %idxprom509 = sext i32 %257 to i64
  %arrayidx510 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom509
  %258 = load i8, i8* %arrayidx510, align 1
  %conv511 = zext i8 %258 to i32
  %259 = load i32, i32* %color.addr, align 4
  %sub512 = sub nsw i32 3, %259
  %cmp513 = icmp eq i32 %conv511, %sub512
  br i1 %cmp513, label %land.lhs.true.515, label %if.end.543

land.lhs.true.515:                                ; preds = %land.lhs.true.508
  %260 = load i32, i32* %pos, align 4
  %idxprom516 = sext i32 %260 to i64
  %arrayidx517 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom516
  %owl_attack_certain518 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx517, i32 0, i32 10
  %261 = load i32, i32* %owl_attack_certain518, align 4
  %tobool519 = icmp ne i32 %261, 0
  br i1 %tobool519, label %if.end.543, label %land.lhs.true.520

land.lhs.true.520:                                ; preds = %land.lhs.true.515
  %262 = load i32, i32* %pos, align 4
  %idxprom521 = sext i32 %262 to i64
  %arrayidx522 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom521
  %owl_attack_point523 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx522, i32 0, i32 8
  %263 = load i32, i32* %owl_attack_point523, align 4
  %idxprom524 = sext i32 %263 to i64
  %arrayidx525 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom524
  %264 = load i8, i8* %arrayidx525, align 1
  %conv526 = zext i8 %264 to i32
  %cmp527 = icmp ne i32 %conv526, 3
  br i1 %cmp527, label %if.then.529, label %if.end.543

if.then.529:                                      ; preds = %land.lhs.true.520
  %265 = load i32, i32* %pos, align 4
  %idxprom530 = sext i32 %265 to i64
  %arrayidx531 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom530
  %owl_attack_point532 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx531, i32 0, i32 8
  %266 = load i32, i32* %owl_attack_point532, align 4
  %267 = load i32, i32* %pos, align 4
  call void @add_owl_uncertain_defense_move(i32 %266, i32 %267)
  %268 = load i32, i32* @debug, align 4
  %and533 = and i32 %268, 4
  %tobool534 = icmp ne i32 %and533, 0
  br i1 %tobool534, label %cond.false.536, label %cond.true.535

cond.true.535:                                    ; preds = %if.then.529
  br label %cond.end.542

cond.false.536:                                   ; preds = %if.then.529
  %269 = load i32, i32* %pos, align 4
  %idxprom537 = sext i32 %269 to i64
  %arrayidx538 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom537
  %owl_attack_point539 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx538, i32 0, i32 8
  %270 = load i32, i32* %owl_attack_point539, align 4
  %271 = load i32, i32* %pos, align 4
  %272 = load i32, i32* @movenum, align 4
  %add540 = add nsw i32 %272, 1
  %call541 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i32 0, i32 0), i32 %270, i32 %271, i32 %add540)
  br label %cond.end.542

cond.end.542:                                     ; preds = %cond.false.536, %cond.true.535
  br label %if.end.543

if.end.543:                                       ; preds = %cond.end.542, %land.lhs.true.520, %land.lhs.true.515, %land.lhs.true.508, %if.else.502
  br label %if.end.544

if.end.544:                                       ; preds = %if.end.543, %if.end.501
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %if.end.276
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %if.end.176
  br label %for.inc.547

for.inc.547:                                      ; preds = %if.end.546, %cond.end.142, %if.then
  %273 = load i32, i32* %pos, align 4
  %inc548 = add nsw i32 %273, 1
  store i32 %inc548, i32* %pos, align 4
  br label %for.cond

for.end.549:                                      ; preds = %for.cond
  ret void
}

declare void @add_loss_move(i32, i32, i32) #1

declare void @add_owl_defense_move(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @owl_does_defend(i32 %move, i32 %target, i32* %kworm) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %kworm.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %result = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %reading_nodes_when_called = alloca i32, align 4
  %tactical_nodes = alloca i32, align 4
  %origin = alloca i32, align 4
  %acode = alloca i32, align 4
  %wpos = alloca i32, align 4
  %wid = alloca i32, align 4
  %start = alloca double, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %kworm, i32** %kworm.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store i32 0, i32* %wpos, align 4
  store i32 15, i32* %wid, align 4
  store double 0.000000e+00, double* %start, align 8
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call double @gg_cputime()
  store double %call1, double* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %target.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 14
  %4 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %target.addr, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %origin9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 2
  %6 = load i32, i32* %origin9, align 4
  store i32 %6, i32* %origin, align 4
  %7 = load i32, i32* @verbose, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %8 = load i32, i32* %move.addr, align 4
  %9 = load i32, i32* %target.addr, align 4
  %10 = load i32, i32* %origin, align 4
  %call11 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %8, i32 %9, i32 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %target.addr, align 4
  %13 = load i32*, i32** %kworm.addr, align 8
  %call12 = call i32 @search_persistent_owl_cache(i32 4, i32 %11, i32 %12, i32 0, i32* %result, i32* %13, i32* null, i32* null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  %14 = load i32, i32* %result, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %cond.end
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %color, align 4
  %17 = load i32, i32* %target.addr, align 4
  %call16 = call i32 @trymove(i32 %15, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %17, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.15
  %18 = load i32, i32* %origin, align 4
  %19 = load i32*, i32** %kworm.addr, align 8
  %call19 = call i32 @search_persistent_owl_cache(i32 0, i32 %18, i32 0, i32 0, i32* %result, i32* null, i32* %19, i32* null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  call void @popgo()
  %20 = load i32, i32* %result, align 4
  %sub = sub nsw i32 5, %20
  store i32 %sub, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.18
  %21 = load i32, i32* %target.addr, align 4
  %22 = load i32, i32* %move.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %21, i32 0, i32 %22, i32 1)
  %23 = load i32, i32* %target.addr, align 4
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %25 = load i32*, i32** %kworm.addr, align 8
  call void @prepare_goal_list(i32 %23, %struct.local_owl_data* %24, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32* @goal_worms_computed, i32* %25, i32 0)
  %26 = load i32, i32* %target.addr, align 4
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call23 = call i32 @do_owl_attack(i32 %26, i32* null, i32* %wid, %struct.local_owl_data* %27, i32 0, i32 0, i32 0)
  store i32 %call23, i32* %acode, align 4
  %28 = load i32, i32* %wid, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %wpos, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32 %28)
  %29 = load i32, i32* %acode, align 4
  %sub24 = sub nsw i32 5, %29
  store i32 %sub24, i32* %result, align 4
  call void @popgo()
  br label %if.end.25

if.else:                                          ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.22
  %call26 = call i32 @get_reading_node_counter()
  %30 = load i32, i32* %reading_nodes_when_called, align 4
  %sub27 = sub nsw i32 %call26, %30
  store i32 %sub27, i32* %tactical_nodes, align 4
  %31 = load i32, i32* @debug, align 4
  %and28 = and i32 %31, 4096
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.false.31, label %cond.true.30

cond.true.30:                                     ; preds = %if.end.25
  br label %cond.end.35

cond.false.31:                                    ; preds = %if.end.25
  %32 = load i32, i32* %move.addr, align 4
  %33 = load i32, i32* %target.addr, align 4
  %34 = load i32, i32* %origin, align 4
  %35 = load i32, i32* %result, align 4
  %36 = load i32, i32* @local_owl_node_counter, align 4
  %37 = load i32, i32* %tactical_nodes, align 4
  %call32 = call double @gg_cputime()
  %38 = load double, double* %start, align 8
  %sub33 = fsub double %call32, %38
  %call34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i32 0, i32 0), i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, double %sub33)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.31, %cond.true.30
  %39 = load i32, i32* %move.addr, align 4
  %40 = load i32, i32* %target.addr, align 4
  %41 = load i32, i32* %result, align 4
  %42 = load i32, i32* %wpos, align 4
  %43 = load i32, i32* %tactical_nodes, align 4
  %44 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %44, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %45 = load i32, i32* %target.addr, align 4
  %idxprom36 = sext i32 %45 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %46 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %46 to i32
  call void @store_persistent_owl_cache(i32 4, i32 %39, i32 %40, i32 0, i32 %41, i32 %42, i32 0, i32 0, i32 %43, i8* %arraydecay, i32 %conv38)
  %47 = load i32*, i32** %kworm.addr, align 8
  %tobool39 = icmp ne i32* %47, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %cond.end.35
  %48 = load i32, i32* %wpos, align 4
  %49 = load i32*, i32** %kworm.addr, align 8
  store i32 %48, i32* %49, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %cond.end.35
  %50 = load i32, i32* %result, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.else, %if.then.21, %if.then.14, %if.then.5
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @add_gain_move(i32, i32, i32) #1

declare void @add_owl_attack_move(i32, i32, i32) #1

declare void @add_owl_defense_threat_move(i32, i32, i32) #1

declare i32 @is_legal(i32, i32) #1

declare void @add_owl_prevent_threat_move(i32, i32) #1

declare void @add_owl_attack_threat_move(i32, i32, i32) #1

declare void @add_owl_uncertain_defense_move(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @owl_confirm_safety(i32 %move, i32 %target, i32* %defense_point, i32* %kworm) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %kworm.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %result = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %reading_nodes_when_called = alloca i32, align 4
  %tactical_nodes = alloca i32, align 4
  %origin = alloca i32, align 4
  %defense = alloca i32, align 4
  %start = alloca double, align 8
  %acode = alloca i32, align 4
  %wpos = alloca i32, align 4
  %wid = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i32* %kworm, i32** %kworm.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store i32 0, i32* %defense, align 4
  store double 0.000000e+00, double* %start, align 8
  store i32 0, i32* %wpos, align 4
  store i32 15, i32* %wid, align 4
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call double @gg_cputime()
  store double %call1, double* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %target.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 14
  %4 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %target.addr, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %origin9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 2
  %6 = load i32, i32* %origin9, align 4
  store i32 %6, i32* %origin, align 4
  %7 = load i32, i32* @verbose, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %8 = load i32, i32* %move.addr, align 4
  %9 = load i32, i32* %target.addr, align 4
  %10 = load i32, i32* %origin, align 4
  %call11 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 %8, i32 %9, i32 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %target.addr, align 4
  %13 = load i32*, i32** %defense_point.addr, align 8
  %14 = load i32*, i32** %kworm.addr, align 8
  %call12 = call i32 @search_persistent_owl_cache(i32 8, i32 %11, i32 %12, i32 0, i32* %result, i32* %13, i32* %14, i32* null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  %15 = load i32, i32* %result, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.15:                                        ; preds = %cond.end
  %16 = load i32, i32* %move.addr, align 4
  %17 = load i32, i32* %color, align 4
  %18 = load i32, i32* %target.addr, align 4
  %call16 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 %18, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.40

if.then.18:                                       ; preds = %if.end.15
  %19 = load i32, i32* %origin, align 4
  %20 = load i32*, i32** %defense_point.addr, align 8
  %21 = load i32*, i32** %kworm.addr, align 8
  %call19 = call i32 @search_persistent_owl_cache(i32 0, i32 %19, i32 0, i32 0, i32* %result, i32* %20, i32* %21, i32* null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.then.18
  call void @popgo()
  %22 = load i32, i32* %result, align 4
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.21
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.21
  %23 = load i32, i32* %result, align 4
  %cmp25 = icmp eq i32 %23, 3
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.18
  %24 = load i32, i32* %target.addr, align 4
  %25 = load i32, i32* %move.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %24, i32 0, i32 %25, i32 1)
  %26 = load i32, i32* %target.addr, align 4
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %28 = load i32*, i32** %kworm.addr, align 8
  call void @prepare_goal_list(i32 %26, %struct.local_owl_data* %27, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32* @goal_worms_computed, i32* %28, i32 0)
  %29 = load i32, i32* %target.addr, align 4
  %30 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call30 = call i32 @do_owl_attack(i32 %29, i32* %defense, i32* %wid, %struct.local_owl_data* %30, i32 0, i32 0, i32 0)
  store i32 %call30, i32* %acode, align 4
  %31 = load i32, i32* %wid, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %wpos, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32 %31)
  %32 = load i32, i32* %acode, align 4
  %cmp31 = icmp eq i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.29
  store i32 5, i32* %result, align 4
  br label %if.end.39

if.else.34:                                       ; preds = %if.end.29
  %33 = load i32, i32* %acode, align 4
  %cmp35 = icmp eq i32 %33, 3
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.34
  store i32 2, i32* %result, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.33
  call void @popgo()
  br label %if.end.41

if.else.40:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.39
  %call42 = call i32 @get_reading_node_counter()
  %34 = load i32, i32* %reading_nodes_when_called, align 4
  %sub = sub nsw i32 %call42, %34
  store i32 %sub, i32* %tactical_nodes, align 4
  %35 = load i32, i32* @debug, align 4
  %and43 = and i32 %35, 4096
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.false.46, label %cond.true.45

cond.true.45:                                     ; preds = %if.end.41
  br label %cond.end.50

cond.false.46:                                    ; preds = %if.end.41
  %36 = load i32, i32* %move.addr, align 4
  %37 = load i32, i32* %target.addr, align 4
  %38 = load i32, i32* %origin, align 4
  %39 = load i32, i32* %result, align 4
  %40 = load i32, i32* %defense, align 4
  %41 = load i32, i32* @local_owl_node_counter, align 4
  %42 = load i32, i32* %tactical_nodes, align 4
  %call47 = call double @gg_cputime()
  %43 = load double, double* %start, align 8
  %sub48 = fsub double %call47, %43
  %call49 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i32 0, i32 0), i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, double %sub48)
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.46, %cond.true.45
  %44 = load i32, i32* %move.addr, align 4
  %45 = load i32, i32* %target.addr, align 4
  %46 = load i32, i32* %result, align 4
  %47 = load i32, i32* %defense, align 4
  %48 = load i32, i32* %wpos, align 4
  %49 = load i32, i32* %tactical_nodes, align 4
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %51 = load i32, i32* %target.addr, align 4
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %52 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %52 to i32
  call void @store_persistent_owl_cache(i32 8, i32 %44, i32 %45, i32 0, i32 %46, i32 %47, i32 %48, i32 0, i32 %49, i8* %arraydecay, i32 %conv53)
  %53 = load i32*, i32** %defense_point.addr, align 8
  %tobool54 = icmp ne i32* %53, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %cond.end.50
  %54 = load i32, i32* %defense, align 4
  %55 = load i32*, i32** %defense_point.addr, align 8
  store i32 %54, i32* %55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %cond.end.50
  %56 = load i32*, i32** %kworm.addr, align 8
  %tobool57 = icmp ne i32* %56, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %57 = load i32, i32* %wpos, align 4
  %58 = load i32*, i32** %kworm.addr, align 8
  store i32 %57, i32* %58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  %59 = load i32, i32* %result, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.else.40, %if.else.28, %if.then.27, %if.then.24, %if.then.14, %if.then.5
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @owl_does_attack(i32 %move, i32 %target, i32* %kworm) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %kworm.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %result = alloca i32, align 4
  %owl = alloca %struct.local_owl_data*, align 8
  %reading_nodes_when_called = alloca i32, align 4
  %tactical_nodes = alloca i32, align 4
  %origin = alloca i32, align 4
  %dcode = alloca i32, align 4
  %wpos = alloca i32, align 4
  %wid = alloca i32, align 4
  %start = alloca double, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %kworm, i32** %kworm.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store i32 0, i32* %wpos, align 4
  store i32 15, i32* %wid, align 4
  store double 0.000000e+00, double* %start, align 8
  %3 = load i32, i32* @debug, align 4
  %and = and i32 %3, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call double @gg_cputime()
  store double %call1, double* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %target.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 14
  %5 = load i32, i32* %unconditional_status, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i32, i32* %target.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %origin9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 2
  %7 = load i32, i32* %origin9, align 4
  store i32 %7, i32* %origin, align 4
  %8 = load i32, i32* @verbose, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %target.addr, align 4
  %11 = load i32, i32* %origin, align 4
  %call11 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %target.addr, align 4
  %14 = load i32*, i32** %kworm.addr, align 8
  %call12 = call i32 @search_persistent_owl_cache(i32 5, i32 %12, i32 %13, i32 0, i32* %result, i32* %14, i32* null, i32* null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  %15 = load i32, i32* %result, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.15:                                        ; preds = %cond.end
  %16 = load i32, i32* %target.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %16, i32 0, i32 0, i32 1)
  %17 = load i32, i32* %move.addr, align 4
  %18 = load i32, i32* %other, align 4
  %19 = load i32, i32* %target.addr, align 4
  %call16 = call i32 @trymove(i32 %17, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %19, i32 0, i32 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.33

if.then.18:                                       ; preds = %if.end.15
  %20 = load i32, i32* %origin, align 4
  %21 = load i32*, i32** %kworm.addr, align 8
  %call19 = call i32 @search_persistent_owl_cache(i32 1, i32 %20, i32 0, i32 0, i32* %result, i32* null, i32* %21, i32* null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  call void @popgo()
  %22 = load i32, i32* %result, align 4
  %sub22 = sub nsw i32 5, %22
  store i32 %sub22, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.18
  %23 = load i32, i32* %move.addr, align 4
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_update_boundary_marks(i32 %23, %struct.local_owl_data* %24)
  %25 = load i32, i32* %target.addr, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %26 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.23
  store i32 0, i32* %dcode, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.23
  %27 = load i32, i32* %target.addr, align 4
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %29 = load i32*, i32** %kworm.addr, align 8
  call void @prepare_goal_list(i32 %27, %struct.local_owl_data* %28, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32* @goal_worms_computed, i32* %29, i32 0)
  %30 = load i32, i32* %target.addr, align 4
  %31 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call30 = call i32 @do_owl_defend(i32 %30, i32* null, i32* %wid, %struct.local_owl_data* %31, i32 0, i32 0, i32 0)
  store i32 %call30, i32* %dcode, align 4
  %32 = load i32, i32* %wid, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %wpos, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i32 0, i32 0), i32 %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  %33 = load i32, i32* %dcode, align 4
  %sub32 = sub nsw i32 5, %33
  store i32 %sub32, i32* %result, align 4
  %34 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %34, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  call void @popgo()
  br label %if.end.34

if.else.33:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.31
  %call35 = call i32 @get_reading_node_counter()
  %35 = load i32, i32* %reading_nodes_when_called, align 4
  %sub36 = sub nsw i32 %call35, %35
  store i32 %sub36, i32* %tactical_nodes, align 4
  %36 = load i32, i32* @debug, align 4
  %and37 = and i32 %36, 4096
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %cond.false.40, label %cond.true.39

cond.true.39:                                     ; preds = %if.end.34
  br label %cond.end.44

cond.false.40:                                    ; preds = %if.end.34
  %37 = load i32, i32* %move.addr, align 4
  %38 = load i32, i32* %target.addr, align 4
  %39 = load i32, i32* %origin, align 4
  %40 = load i32, i32* %result, align 4
  %41 = load i32, i32* @local_owl_node_counter, align 4
  %42 = load i32, i32* %tactical_nodes, align 4
  %call41 = call double @gg_cputime()
  %43 = load double, double* %start, align 8
  %sub42 = fsub double %call41, %43
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i32 0, i32 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, double %sub42)
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.40, %cond.true.39
  %44 = load i32, i32* %move.addr, align 4
  %45 = load i32, i32* %target.addr, align 4
  %46 = load i32, i32* %result, align 4
  %47 = load i32, i32* %wpos, align 4
  %48 = load i32, i32* %tactical_nodes, align 4
  %49 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %49, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %50 = load i32, i32* %target.addr, align 4
  %idxprom45 = sext i32 %50 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %51 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %51 to i32
  call void @store_persistent_owl_cache(i32 5, i32 %44, i32 %45, i32 0, i32 %46, i32 %47, i32 0, i32 0, i32 %48, i8* %arraydecay, i32 %conv47)
  %52 = load i32*, i32** %kworm.addr, align 8
  %tobool48 = icmp ne i32* %52, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %cond.end.44
  %53 = load i32, i32* %wpos, align 4
  %54 = load i32*, i32** %kworm.addr, align 8
  store i32 %53, i32* %54, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %cond.end.44
  %55 = load i32, i32* %result, align 4
  store i32 %55, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.else.33, %if.then.21, %if.then.14, %if.then.5
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define i32 @owl_connection_defends(i32 %move, i32 %target1, i32 %target2) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %target1.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %result = alloca i32, align 4
  %reading_nodes_when_called = alloca i32, align 4
  %tactical_nodes = alloca i32, align 4
  %start = alloca double, align 8
  %owl = alloca %struct.local_owl_data*, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  %0 = load i32, i32* %target1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %result, align 4
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call double @gg_cputime()
  store double %call1, double* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %target2.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %conv4, %5
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  br label %if.end.7

if.else:                                          ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4006, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %6 = load i32, i32* @verbose, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.7
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %target1.addr, align 4
  %9 = load i32, i32* %target2.addr, align 4
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0), i32 %7, i32 %8, i32 %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load i32, i32* %target1.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 14
  %11 = load i32, i32* %unconditional_status, align 4
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %cond.end
  %12 = load i32, i32* %target2.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %unconditional_status18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 14
  %13 = load i32, i32* %unconditional_status18, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %target1.addr, align 4
  %16 = load i32, i32* %target2.addr, align 4
  %call23 = call i32 @search_persistent_owl_cache(i32 6, i32 %14, i32 %15, i32 %16, i32* %result, i32* null, i32* null, i32* null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %17 = load i32, i32* %result, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %18 = load i32, i32* %target1.addr, align 4
  %19 = load i32, i32* %target2.addr, align 4
  call void @init_owl(%struct.local_owl_data** %owl, i32 %18, i32 %19, i32 0, i32 1)
  %20 = load i32, i32* %move.addr, align 4
  %21 = load i32, i32* %color, align 4
  %22 = load i32, i32* %target1.addr, align 4
  %call27 = call i32 @trymove(i32 %20, i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i32 %22, i32 0, i32 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end.26
  %23 = load i32, i32* %move.addr, align 4
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_update_goal(i32 %23, i32 1, %struct.local_owl_data* %24, i32 0)
  %25 = load i32, i32* %move.addr, align 4
  %26 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call30 = call i32 @do_owl_attack(i32 %25, i32* null, i32* null, %struct.local_owl_data* %26, i32 0, i32 0, i32 0)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.29
  store i32 5, i32* %result, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.29
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %27, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  call void @popgo()
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.26
  %call35 = call i32 @get_reading_node_counter()
  %28 = load i32, i32* %reading_nodes_when_called, align 4
  %sub = sub nsw i32 %call35, %28
  store i32 %sub, i32* %tactical_nodes, align 4
  %29 = load i32, i32* @debug, align 4
  %and36 = and i32 %29, 4096
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.false.39, label %cond.true.38

cond.true.38:                                     ; preds = %if.end.34
  br label %cond.end.43

cond.false.39:                                    ; preds = %if.end.34
  %30 = load i32, i32* %move.addr, align 4
  %31 = load i32, i32* %target1.addr, align 4
  %32 = load i32, i32* %target2.addr, align 4
  %33 = load i32, i32* %result, align 4
  %34 = load i32, i32* @local_owl_node_counter, align 4
  %35 = load i32, i32* %tactical_nodes, align 4
  %call40 = call double @gg_cputime()
  %36 = load double, double* %start, align 8
  %sub41 = fsub double %call40, %36
  %call42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, double %sub41)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.39, %cond.true.38
  %37 = load i32, i32* %move.addr, align 4
  %38 = load i32, i32* %target1.addr, align 4
  %39 = load i32, i32* %target2.addr, align 4
  %40 = load i32, i32* %result, align 4
  %41 = load i32, i32* %tactical_nodes, align 4
  %42 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %42, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %43 = load i32, i32* %color, align 4
  call void @store_persistent_owl_cache(i32 6, i32 %37, i32 %38, i32 %39, i32 %40, i32 0, i32 0, i32 0, i32 %41, i8* %arraydecay, i32 %43)
  %44 = load i32, i32* %result, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.43, %if.then.25, %if.then.21, %if.then.14
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @owl_lively(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %origin = alloca i32, align 4
  %lunch = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4390, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @find_origin(i32 %7)
  store i32 %call, i32* %origin, align 4
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %tobool = icmp ne %struct.local_owl_data* %8, null
  br i1 %tobool, label %if.then.11, label %if.end.31

if.then.11:                                       ; preds = %if.end.10
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %10, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %11, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  store i32 0, i32* %lunch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %12 = load i32, i32* %lunch, align 4
  %cmp17 = icmp slt i32 %12, 10
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %lunch, align 4
  %idxprom19 = sext i32 %13 to i64
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %lunch20 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch20, i32 0, i64 %idxprom19
  %15 = load i32, i32* %arrayidx21, align 4
  %16 = load i32, i32* %origin, align 4
  %cmp22 = icmp eq i32 %15, %16
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %for.body
  %17 = load i32, i32* %lunch, align 4
  %idxprom25 = sext i32 %17 to i64
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %lunch_defense_point = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 10
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point, i32 0, i64 %idxprom25
  %19 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %19, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.24
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %20 = load i32, i32* %lunch, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %lunch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.end.10
  store i32 0, i32* %lunch, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.49, %if.end.31
  %21 = load i32, i32* %lunch, align 4
  %cmp33 = icmp slt i32 %21, 10
  br i1 %cmp33, label %for.body.35, label %for.end.51

for.body.35:                                      ; preds = %for.cond.32
  %22 = load i32, i32* %lunch, align 4
  %idxprom36 = sext i32 %22 to i64
  %23 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %lunch37 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %23, i32 0, i32 6
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch37, i32 0, i64 %idxprom36
  %24 = load i32, i32* %arrayidx38, align 4
  %25 = load i32, i32* %origin, align 4
  %cmp39 = icmp eq i32 %24, %25
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.48

land.lhs.true.41:                                 ; preds = %for.body.35
  %26 = load i32, i32* %lunch, align 4
  %idxprom42 = sext i32 %26 to i64
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %lunch_defense_point43 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %27, i32 0, i32 10
  %arrayidx44 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point43, i32 0, i64 %idxprom42
  %28 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %28, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.41
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.41, %for.body.35
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %29 = load i32, i32* %lunch, align 4
  %inc50 = add nsw i32 %29, 1
  store i32 %inc50, i32* %lunch, align 4
  br label %for.cond.32

for.end.51:                                       ; preds = %for.cond.32
  %30 = load i32, i32* %origin, align 4
  %idxprom52 = sext i32 %30 to i64
  %31 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %inessential = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %31, i32 0, i32 11
  %arrayidx53 = getelementptr inbounds [400 x i8], [400 x i8]* %inessential, i32 0, i64 %idxprom52
  %32 = load i8, i8* %arrayidx53, align 1
  %tobool54 = icmp ne i8 %32, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.51
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %for.end.51
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.55, %if.then.47, %if.then.29, %if.then.15, %if.then.9
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @owl_substantial(i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %libs = alloca [11 x i32], align 16
  %liberties = alloca i32, align 4
  %reading_nodes_when_called = alloca i32, align 4
  %tactical_nodes = alloca i32, align 4
  %result = alloca i32, align 4
  %start = alloca double, align 8
  %owl = alloca %struct.local_owl_data*, align 8
  %adjs = alloca [160 x i32], align 16
  %adj = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %0, i32 11, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  %call1 = call i32 @get_reading_node_counter()
  store i32 %call1, i32* %reading_nodes_when_called, align 4
  store double 0.000000e+00, double* %start, align 8
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call double @gg_cputime()
  store double %call2, double* %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @reduced_init_owl(%struct.local_owl_data** %owl, i32 1)
  %2 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 3, %conv
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %4, i32 0, i32 3
  store i32 %sub, i32* %color, align 4
  store i32 0, i32* @local_owl_node_counter, align 4
  %5 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  br label %if.end.5

if.else:                                          ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4484, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %6 = load i32, i32* %str.addr, align 4
  %call6 = call i32 @countstones(i32 %6)
  %cmp7 = icmp sgt i32 %call6, 6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %7 = load i32, i32* %liberties, align 4
  %cmp11 = icmp sgt i32 %7, 10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.end.14
  %8 = load i32, i32* %m, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp15 = icmp slt i32 %8, %9
  br i1 %cmp15, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* @board_size, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %12 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %12, 20
  %add = add nsw i32 21, %mul
  %13 = load i32, i32* %n, align 4
  %add21 = add nsw i32 %add, %13
  %idxprom22 = sext i32 %add21 to i64
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom22
  store i8 0, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %15 = load i32, i32* %n, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %16 = load i32, i32* %m, align 4
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, i32* %m, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %17 = load i32, i32* %str.addr, align 4
  %arraydecay27 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call28 = call i32 @chainlinks(i32 %17, i32* %arraydecay27)
  store i32 %call28, i32* %adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.70, %for.end.26
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %adj, align 4
  %cmp30 = icmp slt i32 %18, %19
  br i1 %cmp30, label %for.body.32, label %for.end.72

for.body.32:                                      ; preds = %for.cond.29
  %20 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom33
  %21 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom35
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx36, i32 0, i32 16
  %22 = load i32, i32* %status, align 4
  %cmp37 = icmp eq i32 %22, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.32
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.body.32
  store i32 0, i32* %m, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.67, %if.end.40
  %23 = load i32, i32* %m, align 4
  %24 = load i32, i32* @board_size, align 4
  %cmp42 = icmp slt i32 %23, %24
  br i1 %cmp42, label %for.body.44, label %for.end.69

for.body.44:                                      ; preds = %for.cond.41
  store i32 0, i32* %n, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.64, %for.body.44
  %25 = load i32, i32* %n, align 4
  %26 = load i32, i32* @board_size, align 4
  %cmp46 = icmp slt i32 %25, %26
  br i1 %cmp46, label %for.body.48, label %for.end.66

for.body.48:                                      ; preds = %for.cond.45
  %27 = load i32, i32* %m, align 4
  %mul49 = mul nsw i32 %27, 20
  %add50 = add nsw i32 21, %mul49
  %28 = load i32, i32* %n, align 4
  %add51 = add nsw i32 %add50, %28
  %29 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %29 to i64
  %arrayidx53 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom52
  %30 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 @is_same_dragon(i32 %add51, i32 %30)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %for.body.48
  %31 = load i32, i32* %m, align 4
  %mul57 = mul nsw i32 %31, 20
  %add58 = add nsw i32 21, %mul57
  %32 = load i32, i32* %n, align 4
  %add59 = add nsw i32 %add58, %32
  %idxprom60 = sext i32 %add59 to i64
  %33 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal61 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %33, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [400 x i8], [400 x i8]* %goal61, i32 0, i64 %idxprom60
  store i8 1, i8* %arrayidx62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %for.body.48
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %34 = load i32, i32* %n, align 4
  %inc65 = add nsw i32 %34, 1
  store i32 %inc65, i32* %n, align 4
  br label %for.cond.45

for.end.66:                                       ; preds = %for.cond.45
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %35 = load i32, i32* %m, align 4
  %inc68 = add nsw i32 %35, 1
  store i32 %inc68, i32* %m, align 4
  br label %for.cond.41

for.end.69:                                       ; preds = %for.cond.41
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %36 = load i32, i32* %k, align 4
  %inc71 = add nsw i32 %36, 1
  store i32 %inc71, i32* %k, align 4
  br label %for.cond.29

for.end.72:                                       ; preds = %for.cond.29
  %37 = load i32, i32* %str.addr, align 4
  %call73 = call i32 @search_persistent_owl_cache(i32 7, i32 %37, i32 0, i32 0, i32* %result, i32* null, i32* null, i32* null)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end.72
  %38 = load i32, i32* %result, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end.72
  store i32 0, i32* %k, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.130, %if.end.76
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %liberties, align 4
  %cmp78 = icmp slt i32 %39, %40
  br i1 %cmp78, label %for.body.80, label %for.end.132

for.body.80:                                      ; preds = %for.cond.77
  %41 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %41 to i64
  %arrayidx82 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom81
  %42 = load i32, i32* %arrayidx82, align 4
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %color83 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 3
  %44 = load i32, i32* %color83, align 4
  %call84 = call i32 @trymove(i32 %42, i32 %44, i8* null, i32 0, i32 0, i32 0)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.96

if.then.86:                                       ; preds = %for.body.80
  %45 = load i32, i32* @level, align 4
  %cmp87 = icmp sge i32 %45, 10
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.86
  call void @increase_depth_values()
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.then.86
  %46 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %46 to i64
  %arrayidx92 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom91
  %47 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %47 to i64
  %48 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal94 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %48, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [400 x i8], [400 x i8]* %goal94, i32 0, i64 %idxprom93
  store i8 1, i8* %arrayidx95, align 1
  br label %if.end.129

if.else.96:                                       ; preds = %for.body.80
  %49 = load i32, i32* %k, align 4
  %50 = load i32, i32* %liberties, align 4
  %sub97 = sub nsw i32 %50, 1
  %cmp98 = icmp slt i32 %49, %sub97
  br i1 %cmp98, label %land.lhs.true, label %if.else.121

land.lhs.true:                                    ; preds = %if.else.96
  %51 = load i32, i32* %k, align 4
  %add100 = add nsw i32 %51, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom101
  %52 = load i32, i32* %arrayidx102, align 4
  %53 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %color103 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %53, i32 0, i32 3
  %54 = load i32, i32* %color103, align 4
  %call104 = call i32 @trymove(i32 %52, i32 %54, i8* null, i32 0, i32 0, i32 0)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.else.121

if.then.106:                                      ; preds = %land.lhs.true
  %55 = load i32, i32* @level, align 4
  %cmp107 = icmp sge i32 %55, 10
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.106
  call void @increase_depth_values()
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.then.106
  %56 = load i32, i32* %k, align 4
  %idxprom111 = sext i32 %56 to i64
  %arrayidx112 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom111
  %57 = load i32, i32* %arrayidx112, align 4
  %idxprom113 = sext i32 %57 to i64
  %58 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal114 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %58, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [400 x i8], [400 x i8]* %goal114, i32 0, i64 %idxprom113
  store i8 1, i8* %arrayidx115, align 1
  %59 = load i32, i32* %k, align 4
  %idxprom116 = sext i32 %59 to i64
  %arrayidx117 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom116
  %60 = load i32, i32* %arrayidx117, align 4
  %61 = load i32, i32* %k, align 4
  %add118 = add nsw i32 %61, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 %idxprom119
  store i32 %60, i32* %arrayidx120, align 4
  br label %if.end.128

if.else.121:                                      ; preds = %land.lhs.true, %if.else.96
  br label %while.cond

while.cond:                                       ; preds = %if.end.127, %if.else.121
  %62 = load i32, i32* @stackp, align 4
  %cmp122 = icmp sgt i32 %62, 0
  br i1 %cmp122, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %63 = load i32, i32* @level, align 4
  %cmp124 = icmp sge i32 %63, 10
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %while.body
  call void @decrease_depth_values()
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %while.body
  call void @popgo()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.110
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.90
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %64 = load i32, i32* %k, align 4
  %inc131 = add nsw i32 %64, 1
  store i32 %inc131, i32* %k, align 4
  br label %for.cond.77

for.end.132:                                      ; preds = %for.cond.77
  %65 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @compute_owl_escape_values(%struct.local_owl_data* %65)
  %66 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  call void @owl_mark_boundary(%struct.local_owl_data* %66)
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %67, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  %arrayidx133 = getelementptr inbounds [11 x i32], [11 x i32]* %libs, i32 0, i64 0
  %68 = load i32, i32* %arrayidx133, align 4
  %69 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %call134 = call i32 @do_owl_attack(i32 %68, i32* null, i32* null, %struct.local_owl_data* %69, i32 0, i32 0, i32 0)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %for.end.132
  store i32 0, i32* %result, align 4
  br label %if.end.138

if.else.137:                                      ; preds = %for.end.132
  store i32 1, i32* %result, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.then.136
  br label %while.cond.139

while.cond.139:                                   ; preds = %if.end.146, %if.end.138
  %70 = load i32, i32* @stackp, align 4
  %cmp140 = icmp sgt i32 %70, 0
  br i1 %cmp140, label %while.body.142, label %while.end.147

while.body.142:                                   ; preds = %while.cond.139
  %71 = load i32, i32* @level, align 4
  %cmp143 = icmp sge i32 %71, 10
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %while.body.142
  call void @decrease_depth_values()
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %while.body.142
  call void @popgo()
  br label %while.cond.139

while.end.147:                                    ; preds = %while.cond.139
  %call148 = call i32 @get_reading_node_counter()
  %72 = load i32, i32* %reading_nodes_when_called, align 4
  %sub149 = sub nsw i32 %call148, %72
  store i32 %sub149, i32* %tactical_nodes, align 4
  %73 = load i32, i32* @debug, align 4
  %and150 = and i32 %73, 4096
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.end.147
  br label %cond.end

cond.false:                                       ; preds = %while.end.147
  %74 = load i32, i32* %str.addr, align 4
  %75 = load i32, i32* %result, align 4
  %76 = load i32, i32* @local_owl_node_counter, align 4
  %77 = load i32, i32* %tactical_nodes, align 4
  %call152 = call double @gg_cputime()
  %78 = load double, double* %start, align 8
  %sub153 = fsub double %call152, %78
  %call154 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i32 0, i32 0), i32 %74, i32 %75, i32 %76, i32 %77, double %sub153)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %79 = load i32, i32* %str.addr, align 4
  %80 = load i32, i32* %result, align 4
  %81 = load i32, i32* %tactical_nodes, align 4
  %82 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %goal155 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %82, i32 0, i32 0
  %arraydecay156 = getelementptr inbounds [400 x i8], [400 x i8]* %goal155, i32 0, i32 0
  %83 = load %struct.local_owl_data*, %struct.local_owl_data** %owl, align 8
  %color157 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %83, i32 0, i32 3
  %84 = load i32, i32* %color157, align 4
  call void @store_persistent_owl_cache(i32 7, i32 %79, i32 0, i32 0, i32 %80, i32 0, i32 0, i32 0, i32 %81, i8* %arraydecay156, i32 %84)
  %85 = load i32, i32* %result, align 4
  store i32 %85, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %while.end, %if.then.75, %if.then.39, %if.then.13, %if.then.9
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i32 @findlib(i32, i32, i32*) #1

declare i32 @countstones(i32) #1

declare i32 @chainlinks(i32, i32*) #1

declare i32 @is_same_dragon(i32, i32) #1

declare void @increase_depth_values() #1

declare void @decrease_depth_values() #1

; Function Attrs: nounwind uwtable
define internal void @compute_owl_escape_values(%struct.local_owl_data* %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %pos = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %safe_stones = alloca [400 x i8], align 16
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 3
  %1 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @get_lively_stones(i32 %sub, i8* %arraydecay)
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color1 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 3
  %3 = load i32, i32* %color1, align 4
  %arraydecay2 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %4, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values, i32 0, i32 0
  call void @compute_escape_influence(i32 %3, i8* %arraydecay2, float* null, i8* %arraydecay3)
  %5 = load i32, i32* @debug, align 4
  %and = and i32 %5, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %cond.end
  %6 = load i32, i32* %m, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %n, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %10, 20
  %add = add nsw i32 21, %mul
  %11 = load i32, i32* %n, align 4
  %add7 = add nsw i32 %add, %11
  store i32 %add7, i32* %pos, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %color8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 0
  %13 = load i32, i32* %color8, align 4
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color9 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 3
  %15 = load i32, i32* %color9, align 4
  %cmp10 = icmp eq i32 %13, %15
  br i1 %cmp10, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body.6
  %16 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 5
  %17 = load i32, i32* %crude_status, align 4
  %cmp13 = icmp eq i32 %17, 1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %18 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values16 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values16, i32 0, i64 %idxprom15
  store i8 6, i8* %arrayidx17, align 1
  br label %if.end.37

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %crude_status20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 5
  %21 = load i32, i32* %crude_status20, align 4
  %cmp21 = icmp eq i32 %21, 3
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %22 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom22
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx23, i32 0, i32 1
  %23 = load i32, i32* %id, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx25 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %idxprom24
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx25, i32 0, i32 9
  %25 = load i32, i32* %escape_route, align 4
  %cmp26 = icmp sgt i32 %25, 5
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %26 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %id29 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 1
  %27 = load i32, i32* %id29, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i64 %idxprom30
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx31, i32 0, i32 4
  %29 = load i32, i32* %moyo_size, align 4
  %cmp32 = icmp sgt i32 %29, 5
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %30 = load i32, i32* %pos, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values35 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %31, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values35, i32 0, i64 %idxprom34
  store i8 4, i8* %arrayidx36, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.33, %lor.lhs.false, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.14
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body.6
  %32 = load i32, i32* @debug, align 4
  %and39 = and i32 %32, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %cond.false.42, label %cond.true.41

cond.true.41:                                     ; preds = %if.end.38
  br label %cond.end.47

cond.false.42:                                    ; preds = %if.end.38
  %33 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %34, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values44, i32 0, i64 %idxprom43
  %35 = load i8, i8* %arrayidx45, align 1
  %conv = sext i8 %35 to i32
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), i32 %conv)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.42, %cond.true.41
  br label %for.inc

for.inc:                                          ; preds = %cond.end.47
  %36 = load i32, i32* %n, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %37 = load i32, i32* @debug, align 4
  %and48 = and i32 %37, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.false.51, label %cond.true.50

cond.true.50:                                     ; preds = %for.end
  br label %cond.end.53

cond.false.51:                                    ; preds = %for.end
  %call52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0))
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  br label %for.inc.54

for.inc.54:                                       ; preds = %cond.end.53
  %38 = load i32, i32* %m, align 4
  %inc55 = add nsw i32 %38, 1
  store i32 %inc55, i32* %m, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @owl_mark_boundary(%struct.local_owl_data* %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %pos = alloca i32, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %d = alloca i32, align 4
  %apos = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 3
  %1 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, i32* %other, align 4
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 1
  %3 = bitcast [400 x i8]* %boundary to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 400, i32 4, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %4 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %4, 400
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %other, align 4
  %cmp1 = icmp eq i32 %conv, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary4 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary4, i32 0, i64 %idxprom3
  %10 = load i8, i8* %arrayidx5, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end.27, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %11 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %11, 8
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %pos, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %12, %14
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp ne i32 %conv14, 3
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %for.body.9
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %16, %18
  %idxprom21 = sext i32 %add20 to i64
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom21
  %20 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %20 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %land.lhs.true.17
  %21 = load i32, i32* %pos, align 4
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary26 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %boundary26, i32 0, i32 0
  call void @mark_string(i32 %21, i8* %arraydecay, i8 signext 1)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.17, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %if.then.25, %for.cond.6
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %24 = load i32, i32* %pos, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, i32* %pos, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.87, %for.end.30
  %25 = load i32, i32* %pos, align 4
  %cmp32 = icmp slt i32 %25, 400
  br i1 %cmp32, label %for.body.34, label %for.end.89

for.body.34:                                      ; preds = %for.cond.31
  %26 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %28 = load i32, i32* %other, align 4
  %cmp38 = icmp eq i32 %conv37, %28
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.86

land.lhs.true.40:                                 ; preds = %for.body.34
  %29 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %29 to i64
  %30 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary42 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary42, i32 0, i64 %idxprom41
  %31 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %31 to i32
  %cmp45 = icmp eq i32 %conv44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.86

if.then.47:                                       ; preds = %land.lhs.true.40
  store i32 0, i32* %k, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.83, %if.then.47
  %32 = load i32, i32* %k, align 4
  %cmp49 = icmp slt i32 %32, 4
  br i1 %cmp49, label %for.body.51, label %for.end.85

for.body.51:                                      ; preds = %for.cond.48
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom52
  %35 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %33, %35
  store i32 %add54, i32* %pos2, align 4
  %36 = load i32, i32* %pos2, align 4
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %37 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %37 to i32
  %38 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color58 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %38, i32 0, i32 3
  %39 = load i32, i32* %color58, align 4
  %cmp59 = icmp eq i32 %conv57, %39
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.82

land.lhs.true.61:                                 ; preds = %for.body.51
  %40 = load i32, i32* %pos2, align 4
  %idxprom62 = sext i32 %40 to i64
  %41 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal63 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %41, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [400 x i8], [400 x i8]* %goal63, i32 0, i64 %idxprom62
  %42 = load i8, i8* %arrayidx64, align 1
  %tobool65 = icmp ne i8 %42, 0
  br i1 %tobool65, label %if.end.82, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %land.lhs.true.61
  %43 = load i32, i32* %pos2, align 4
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom67
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx68, i32 0, i32 5
  %44 = load i32, i32* %crude_status, align 4
  %cmp69 = icmp ne i32 %44, 0
  br i1 %cmp69, label %land.lhs.true.71, label %lor.lhs.false

land.lhs.true.71:                                 ; preds = %land.lhs.true.66
  %45 = load i32, i32* %pos2, align 4
  %call = call i32 @countstones(i32 %45)
  %cmp72 = icmp sgt i32 %call, 2
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.71, %land.lhs.true.66
  %46 = load i32, i32* %pos2, align 4
  %idxprom74 = sext i32 %46 to i64
  %arrayidx75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom74
  %crude_status76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx75, i32 0, i32 5
  %47 = load i32, i32* %crude_status76, align 4
  %cmp77 = icmp eq i32 %47, 1
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %lor.lhs.false, %land.lhs.true.71
  %48 = load i32, i32* %pos, align 4
  %49 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary80 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %49, i32 0, i32 1
  %arraydecay81 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary80, i32 0, i32 0
  call void @mark_string(i32 %48, i8* %arraydecay81, i8 signext 2)
  br label %for.end.85

if.end.82:                                        ; preds = %lor.lhs.false, %land.lhs.true.61, %for.body.51
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %50 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %50, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.48

for.end.85:                                       ; preds = %if.then.79, %for.cond.48
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.85, %land.lhs.true.40, %for.body.34
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %51 = load i32, i32* %pos, align 4
  %inc88 = add nsw i32 %51, 1
  store i32 %inc88, i32* %pos, align 4
  br label %for.cond.31

for.end.89:                                       ; preds = %for.cond.31
  store i32 21, i32* %pos, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.166, %for.end.89
  %52 = load i32, i32* %pos, align 4
  %cmp91 = icmp slt i32 %52, 400
  br i1 %cmp91, label %for.body.93, label %for.end.168

for.body.93:                                      ; preds = %for.cond.90
  %53 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %53 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %54 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %54 to i32
  %55 = load i32, i32* %other, align 4
  %cmp97 = icmp eq i32 %conv96, %55
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.165

land.lhs.true.99:                                 ; preds = %for.body.93
  %56 = load i32, i32* %pos, align 4
  %idxprom100 = sext i32 %56 to i64
  %57 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary101 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %57, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary101, i32 0, i64 %idxprom100
  %58 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %58 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.165

if.then.106:                                      ; preds = %land.lhs.true.99
  %59 = load i32, i32* %pos, align 4
  %idxprom107 = sext i32 %59 to i64
  %arrayidx108 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom107
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx108, i32 0, i32 16
  %arrayidx109 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %60 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp ne i32 %60, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.121

land.lhs.true.112:                                ; preds = %if.then.106
  %61 = load i32, i32* %pos, align 4
  %idxprom113 = sext i32 %61 to i64
  %arrayidx114 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom113
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx114, i32 0, i32 1
  %62 = load i32, i32* %size, align 4
  %63 = load i32, i32* %pos, align 4
  %idxprom115 = sext i32 %63 to i64
  %arrayidx116 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom115
  %size117 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx116, i32 0, i32 3
  %64 = load i32, i32* %size117, align 4
  %cmp118 = icmp ne i32 %62, %64
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.112
  br label %for.inc.166

if.end.121:                                       ; preds = %land.lhs.true.112, %if.then.106
  %65 = load i32, i32* %pos, align 4
  %idxprom122 = sext i32 %65 to i64
  %arrayidx123 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom122
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx123, i32 0, i32 1
  %66 = load i32, i32* %id, align 4
  %cmp124 = icmp eq i32 %66, -1
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  br label %for.inc.166

if.end.127:                                       ; preds = %if.end.121
  store i32 0, i32* %k, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.162, %if.end.127
  %67 = load i32, i32* %k, align 4
  %68 = load i32, i32* %pos, align 4
  %idxprom129 = sext i32 %68 to i64
  %arrayidx130 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom129
  %id131 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx130, i32 0, i32 1
  %69 = load i32, i32* %id131, align 4
  %idxprom132 = sext i32 %69 to i64
  %70 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx133 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %70, i64 %idxprom132
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx133, i32 0, i32 2
  %71 = load i32, i32* %neighbors, align 4
  %cmp134 = icmp slt i32 %67, %71
  br i1 %cmp134, label %for.body.136, label %for.end.164

for.body.136:                                     ; preds = %for.cond.128
  %72 = load i32, i32* %k, align 4
  %idxprom137 = sext i32 %72 to i64
  %73 = load i32, i32* %pos, align 4
  %idxprom138 = sext i32 %73 to i64
  %arrayidx139 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom138
  %id140 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx139, i32 0, i32 1
  %74 = load i32, i32* %id140, align 4
  %idxprom141 = sext i32 %74 to i64
  %75 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx142 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %75, i64 %idxprom141
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx142, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom137
  %76 = load i32, i32* %arrayidx143, align 4
  store i32 %76, i32* %d, align 4
  %77 = load i32, i32* %d, align 4
  %idxprom144 = sext i32 %77 to i64
  %78 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx145 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %78, i64 %idxprom144
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx145, i32 0, i32 0
  %79 = load i32, i32* %origin, align 4
  store i32 %79, i32* %apos, align 4
  %80 = load i32, i32* %apos, align 4
  %idxprom146 = sext i32 %80 to i64
  %arrayidx147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom146
  %81 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %81 to i32
  %82 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color149 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %82, i32 0, i32 3
  %83 = load i32, i32* %color149, align 4
  %cmp150 = icmp eq i32 %conv148, %83
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.161

land.lhs.true.152:                                ; preds = %for.body.136
  %84 = load i32, i32* %apos, align 4
  %idxprom153 = sext i32 %84 to i64
  %85 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal154 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %85, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [400 x i8], [400 x i8]* %goal154, i32 0, i64 %idxprom153
  %86 = load i8, i8* %arrayidx155, align 1
  %tobool156 = icmp ne i8 %86, 0
  br i1 %tobool156, label %if.end.161, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.152
  %87 = load i32, i32* %pos, align 4
  %idxprom158 = sext i32 %87 to i64
  %88 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary159 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %88, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary159, i32 0, i64 %idxprom158
  store i8 2, i8* %arrayidx160, align 1
  br label %for.end.164

if.end.161:                                       ; preds = %land.lhs.true.152, %for.body.136
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %89 = load i32, i32* %k, align 4
  %inc163 = add nsw i32 %89, 1
  store i32 %inc163, i32* %k, align 4
  br label %for.cond.128

for.end.164:                                      ; preds = %if.then.157, %for.cond.128
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.164, %land.lhs.true.99, %for.body.93
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165, %if.then.126, %if.then.120
  %90 = load i32, i32* %pos, align 4
  %inc167 = add nsw i32 %90, 1
  store i32 %inc167, i32* %pos, align 4
  br label %for.cond.90

for.end.168:                                      ; preds = %for.cond.90
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @obvious_false_eye(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %diagonal_sum = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %i, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %j, align 4
  store i32 0, i32* %diagonal_sum, align 4
  store i32 4, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %di, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %dj, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %di, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* @board_size, align 4
  %cmp4 = icmp ult i32 %add, %9
  br i1 %cmp4, label %land.lhs.true, label %land.lhs.true.6

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* @board_size, align 4
  %cmp5 = icmp ult i32 %10, %11
  br i1 %cmp5, label %if.end, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true, %for.body
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @board_size, align 4
  %cmp7 = icmp ult i32 %12, %13
  br i1 %cmp7, label %land.lhs.true.8, label %if.then

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %dj, align 4
  %add9 = add nsw i32 %14, %15
  %16 = load i32, i32* @board_size, align 4
  %cmp10 = icmp ult i32 %add9, %16
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8, %land.lhs.true.6
  %17 = load i32, i32* %diagonal_sum, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %diagonal_sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.8, %land.lhs.true
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %di, align 4
  %add11 = add nsw i32 %18, %19
  %20 = load i32, i32* @board_size, align 4
  %cmp12 = icmp ult i32 %add11, %20
  br i1 %cmp12, label %land.lhs.true.13, label %if.then.16

land.lhs.true.13:                                 ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %dj, align 4
  %add14 = add nsw i32 %21, %22
  %23 = load i32, i32* @board_size, align 4
  %cmp15 = icmp ult i32 %add14, %23
  br i1 %cmp15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.13, %if.end
  %24 = load i32, i32* %diagonal_sum, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %diagonal_sum, align 4
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true.13
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %di, align 4
  %add17 = add nsw i32 %25, %26
  %mul = mul nsw i32 %add17, 20
  %add18 = add nsw i32 21, %mul
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %dj, align 4
  %add19 = add nsw i32 %27, %28
  %add20 = add nsw i32 %add18, %add19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %29 to i32
  %30 = load i32, i32* %color.addr, align 4
  %sub23 = sub nsw i32 3, %30
  %cmp24 = icmp eq i32 %conv, %sub23
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.else
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %di, align 4
  %add27 = add nsw i32 %31, %32
  %mul28 = mul nsw i32 %add27, 20
  %add29 = add nsw i32 21, %mul28
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %dj, align 4
  %add30 = add nsw i32 %33, %34
  %add31 = add nsw i32 %add29, %add30
  %call = call i32 @attack(i32 %add31, i32* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.26
  %35 = load i32, i32* %diagonal_sum, align 4
  %add33 = add nsw i32 %35, 2
  store i32 %add33, i32* %diagonal_sum, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.26, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %36 = load i32, i32* %k, align 4
  %inc36 = add nsw i32 %36, 1
  store i32 %inc36, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %diagonal_sum, align 4
  %cmp37 = icmp sge i32 %37, 4
  %conv38 = zext i1 %cmp37 to i32
  ret i32 %conv38
}

declare i32 @attack(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @owl_topological_eye(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %value = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %half_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 5
  %arrayidx = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %half_eye, i32 0, i64 %idxprom
  %value1 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx, i32 0, i32 0
  %3 = load float, float* %value1, align 4
  store float %3, float* %value, align 4
  %4 = load float, float* %value, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 2.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load float, float* %value, align 4
  %conv3 = fpext float %5 to double
  %cmp4 = fcmp olt double %conv3, 4.000000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load float, float* %value, align 4
  %conv6 = fpext float %6 to double
  %cmp7 = fcmp ole double %conv6, 2.000000e+00
  br i1 %cmp7, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %7 = load float, float* %value, align 4
  %conv10 = fpext float %7 to double
  %add = fadd double %conv10, 9.900000e-01
  %conv11 = fptosi double %add to i32
  store i32 %conv11, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %8 = load float, float* %value, align 4
  %conv13 = fptosi float %8 to i32
  store i32 %conv13, i32* %retval
  br label %return

return:                                           ; preds = %if.else.12, %if.then.9, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @vital_chain(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %probable = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  call void @sniff_lunch(i32 %0, i32* %min, i32* %probable, i32* %max, %struct.local_owl_data* %1)
  %2 = load i32, i32* %max, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal void @sniff_lunch(i32 %lunch, i32* %min, i32* %probable, i32* %max, %struct.local_owl_data* %owl) #0 {
entry:
  %lunch.addr = alloca i32, align 4
  %min.addr = alloca i32*, align 8
  %probable.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %other = alloca i32, align 4
  %size = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %stones = alloca [2 x i32], align 4
  store i32 %lunch, i32* %lunch.addr, align 4
  store i32* %min, i32** %min.addr, align 8
  store i32* %probable, i32** %probable.addr, align 8
  store i32* %max, i32** %max.addr, align 8
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load i32, i32* %lunch.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 3, %conv
  store i32 %sub, i32* %other, align 4
  %2 = load i32, i32* %lunch.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %lunch.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %lunch.addr, align 4
  %div = sdiv i32 %6, 20
  %sub10 = sub nsw i32 %div, 1
  %7 = load i32, i32* %lunch.addr, align 4
  %rem = srem i32 %7, 20
  %sub11 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4615, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0), i32 %sub10, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %lunch.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %boundary = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [400 x i8], [400 x i8]* %boundary, i32 0, i64 %idxprom12
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %11 = load i32*, i32** %min.addr, align 8
  store i32 2, i32* %11, align 4
  %12 = load i32*, i32** %probable.addr, align 8
  store i32 2, i32* %12, align 4
  %13 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %13, align 4
  br label %return

if.end.18:                                        ; preds = %if.end
  %14 = load i32, i32* %lunch.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %14, i32 241, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %if.end.18
  %15 = load i32, i32* %r, align 4
  %16 = load i32, i32* %liberties, align 4
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values, i32 0, i64 %idxprom23
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp sgt i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %for.body
  %21 = load i32, i32* %r, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx29, align 4
  %23 = load i32, i32* %other, align 4
  %call30 = call i32 @is_self_atari(i32 %22, i32 %23)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end.61, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.31
  %24 = load i32, i32* %k, align 4
  %cmp33 = icmp slt i32 %24, 8
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %25 = load i32, i32* %r, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom36
  %26 = load i32, i32* %arrayidx37, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom38
  %28 = load i32, i32* %arrayidx39, align 4
  %add = add nsw i32 %26, %28
  %idxprom40 = sext i32 %add to i64
  %arrayidx41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom40
  %29 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %29 to i32
  %cmp43 = icmp ne i32 %conv42, 3
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.56

land.lhs.true.45:                                 ; preds = %for.body.35
  %30 = load i32, i32* %r, align 4
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom46
  %31 = load i32, i32* %arrayidx47, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom48
  %33 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %31, %33
  %idxprom51 = sext i32 %add50 to i64
  %34 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %34, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom51
  %35 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %35 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.45
  br label %for.end

if.end.56:                                        ; preds = %land.lhs.true.45, %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %36 = load i32, i32* %k, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.32

for.end:                                          ; preds = %if.then.55, %for.cond.32
  %37 = load i32, i32* %k, align 4
  %cmp57 = icmp eq i32 %37, 8
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  %38 = load i32*, i32** %min.addr, align 8
  store i32 2, i32* %38, align 4
  %39 = load i32*, i32** %probable.addr, align 8
  store i32 2, i32* %39, align 4
  %40 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %40, align 4
  br label %return

if.end.60:                                        ; preds = %for.end
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true, %for.body
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %41 = load i32, i32* %r, align 4
  %inc63 = add nsw i32 %41, 1
  store i32 %inc63, i32* %r, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %42 = load i32, i32* %lunch.addr, align 4
  %call65 = call i32 @countstones(i32 %42)
  store i32 %call65, i32* %size, align 4
  %43 = load i32, i32* %size, align 4
  %cmp66 = icmp sgt i32 %43, 6
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %for.end.64
  %44 = load i32*, i32** %min.addr, align 8
  store i32 2, i32* %44, align 4
  %45 = load i32*, i32** %probable.addr, align 8
  store i32 2, i32* %45, align 4
  %46 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %46, align 4
  br label %return

if.else.69:                                       ; preds = %for.end.64
  %47 = load i32, i32* %size, align 4
  %cmp70 = icmp sgt i32 %47, 4
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.else.69
  %48 = load i32*, i32** %min.addr, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32*, i32** %probable.addr, align 8
  store i32 2, i32* %49, align 4
  %50 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %50, align 4
  br label %return

if.else.73:                                       ; preds = %if.else.69
  %51 = load i32, i32* %size, align 4
  %cmp74 = icmp sgt i32 %51, 2
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.else.73
  %52 = load i32*, i32** %min.addr, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32*, i32** %probable.addr, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %54, align 4
  br label %if.end.112

if.else.77:                                       ; preds = %if.else.73
  %55 = load i32, i32* %size, align 4
  %cmp78 = icmp eq i32 %55, 2
  br i1 %cmp78, label %if.then.80, label %if.else.101

if.then.80:                                       ; preds = %if.else.77
  %56 = load i32, i32* %lunch.addr, align 4
  %arraydecay81 = getelementptr inbounds [2 x i32], [2 x i32]* %stones, i32 0, i32 0
  %call82 = call i32 @findstones(i32 %56, i32 2, i32* %arraydecay81)
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %stones, i32 0, i64 0
  %57 = load i32, i32* %arrayidx83, align 4
  %58 = load i32, i32* %other, align 4
  %call84 = call i32 @obvious_false_eye(i32 %57, i32 %58)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.lhs.true.90, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.then.80
  %arrayidx87 = getelementptr inbounds [2 x i32], [2 x i32]* %stones, i32 0, i64 1
  %59 = load i32, i32* %arrayidx87, align 4
  %60 = load i32, i32* %other, align 4
  %call88 = call i32 @obvious_false_eye(i32 %59, i32 %60)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.else.99

land.lhs.true.90:                                 ; preds = %lor.lhs.false.86, %if.then.80
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %stones, i32 0, i64 0
  %61 = load i32, i32* %arrayidx91, align 4
  %call92 = call i32 @one_two_point(i32 %61)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.else.99, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %land.lhs.true.90
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %stones, i32 0, i64 1
  %62 = load i32, i32* %arrayidx95, align 4
  %call96 = call i32 @one_two_point(i32 %62)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.else.99, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.94
  %63 = load i32*, i32** %min.addr, align 8
  store i32 0, i32* %63, align 4
  %64 = load i32*, i32** %probable.addr, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %max.addr, align 8
  store i32 0, i32* %65, align 4
  br label %if.end.100

if.else.99:                                       ; preds = %lor.lhs.false.94, %land.lhs.true.90, %lor.lhs.false.86
  %66 = load i32*, i32** %min.addr, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %probable.addr, align 8
  store i32 1, i32* %67, align 4
  %68 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %68, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.98
  br label %if.end.111

if.else.101:                                      ; preds = %if.else.77
  %69 = load i32, i32* %size, align 4
  %cmp102 = icmp eq i32 %69, 1
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.else.101
  %70 = load i32, i32* %lunch.addr, align 4
  %71 = load i32, i32* %other, align 4
  %call105 = call i32 @obvious_false_eye(i32 %70, i32 %71)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else.108, label %if.then.107

if.then.107:                                      ; preds = %if.then.104
  %72 = load i32*, i32** %min.addr, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %probable.addr, align 8
  store i32 1, i32* %73, align 4
  %74 = load i32*, i32** %max.addr, align 8
  store i32 1, i32* %74, align 4
  br label %if.end.109

if.else.108:                                      ; preds = %if.then.104
  %75 = load i32*, i32** %min.addr, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32*, i32** %probable.addr, align 8
  store i32 0, i32* %76, align 4
  %77 = load i32*, i32** %max.addr, align 8
  store i32 0, i32* %77, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.107
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.else.101
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.100
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.76
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113
  %78 = load i32, i32* %lunch.addr, align 4
  %79 = load i32*, i32** %min.addr, align 8
  %80 = load i32*, i32** %probable.addr, align 8
  %81 = load i32*, i32** %max.addr, align 8
  %82 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @eat_lunch_escape_bonus(i32 %78, i32* %79, i32* %80, i32* %81, %struct.local_owl_data* %82)
  br label %return

return:                                           ; preds = %if.end.114, %if.then.72, %if.then.68, %if.then.59, %if.then.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @owl_escape_value(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4858, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -10, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.34

if.then.13:                                       ; preds = %if.end.7
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %10 = load i32, i32* %k, align 4
  %cmp14 = icmp slt i32 %10, 8
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %add = add nsw i32 %11, %13
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %14 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %cmp21 = icmp ne i32 %conv20, 3
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.33

land.lhs.true.23:                                 ; preds = %for.body
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom24
  %17 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %15, %17
  %idxprom27 = sext i32 %add26 to i64
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %goal28 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [400 x i8], [400 x i8]* %goal28, i32 0, i64 %idxprom27
  %19 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %19 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.23
  store i32 -10, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end.7
  %21 = load i32, i32* %pos.addr, align 4
  %idxprom35 = sext i32 %21 to i64
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %escape_values = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values, i32 0, i64 %idxprom35
  %23 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %23 to i32
  store i32 %conv37, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.32, %if.then.6
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @owl_goal_dragon(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @owl_eyespace(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4886, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i64 %idxprom4
  %origin6 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %origin6, align 4
  store i32 %7, i32* %origin, align 4
  %8 = load i32, i32* %origin, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %if.end
  %10 = load i32, i32* %origin, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %11, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye14, i32 0, i64 %idxprom13
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx15, i32 0, i32 0
  %12 = load i32, i32* %color, align 4
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %color16 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 3
  %14 = load i32, i32* %color16, align 4
  %add = add nsw i32 %14, 4
  %sub17 = sub nsw i32 %add, 1
  %cmp18 = icmp eq i32 %12, %sub17
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %15 = load i32, i32* %origin, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye21 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye21, i32 0, i64 %idxprom20
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx22, i32 0, i32 4
  %call = call i32 @max_eyes(%struct.eyevalue* %value)
  %cmp23 = icmp sgt i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.12, %if.end
  %17 = phi i1 [ false, %land.lhs.true.12 ], [ false, %if.end ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  ret i32 %land.ext
}

declare i32 @max_eyes(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define i32 @owl_big_eyespace(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i64 %idxprom4
  %origin6 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %origin6, align 4
  store i32 %7, i32* %origin, align 4
  %8 = load i32, i32* %origin, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %if.end
  %10 = load i32, i32* %origin, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %11, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye14, i32 0, i64 %idxprom13
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx15, i32 0, i32 0
  %12 = load i32, i32* %color, align 4
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %color16 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 3
  %14 = load i32, i32* %color16, align 4
  %add = add nsw i32 %14, 4
  %sub17 = sub nsw i32 %add, 1
  %cmp18 = icmp eq i32 %12, %sub17
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %15 = load i32, i32* %origin, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye21 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye21, i32 0, i64 %idxprom20
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx22, i32 0, i32 4
  %call = call i32 @max_eyes(%struct.eyevalue* %value)
  %cmp23 = icmp sge i32 %call, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.12, %if.end
  %17 = phi i1 [ false, %land.lhs.true.12 ], [ false, %if.end ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @owl_proper_eye(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4921, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i64 %idxprom4
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %color, align 4
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %color6 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %8, i32 0, i32 3
  %9 = load i32, i32* %color6, align 4
  %add = add nsw i32 %9, 4
  %sub7 = sub nsw i32 %add, 1
  %cmp8 = icmp eq i32 %7, %sub7
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye11 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %11, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye11, i32 0, i64 %idxprom10
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 7
  %12 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %12, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %13 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @owl_eye_size(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 4
  %arrayidx5 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i64 %idxprom4
  %origin6 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %origin6, align 4
  store i32 %7, i32* %origin, align 4
  %8 = load i32, i32* %origin, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye8 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye8, i32 0, i64 %idxprom7
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx9, i32 0, i32 1
  %10 = load i32, i32* %esize, align 4
  %11 = load i32, i32* %origin, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %my_eye11 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye11, i32 0, i64 %idxprom10
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 2
  %13 = load i32, i32* %msize, align 4
  %sub13 = sub nsw i32 %10, %13
  ret i32 %sub13
}

; Function Attrs: nounwind uwtable
define i32 @owl_strong_dragon(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4958, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.20

if.else.15:                                       ; preds = %lor.lhs.false
  %9 = load i32, i32* %pos.addr, align 4
  %div16 = sdiv i32 %9, 20
  %sub17 = sub nsw i32 %div16, 1
  %10 = load i32, i32* %pos.addr, align 4
  %rem18 = srem i32 %10, 20
  %sub19 = sub nsw i32 %rem18, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 4959, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i32 %sub17, i32 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom21 = sext i32 %11 to i64
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom21
  %13 = load i8, i8* %arrayidx22, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %land.end, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end.20
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom24
  %color = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx25, i32 0, i32 0
  %15 = load i32, i32* %color, align 4
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %17 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %17 to i32
  %cmp29 = icmp eq i32 %15, %conv28
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.23
  %18 = load i32, i32* %pos.addr, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom31
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx32, i32 0, i32 1
  %19 = load i32, i32* %id, align 4
  %idxprom33 = sext i32 %19 to i64
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %20, i64 %idxprom33
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx34, i32 0, i32 10
  %call = call i32 @min_eyes(%struct.eyevalue* %genus)
  %cmp35 = icmp sge i32 %call, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %if.end.20
  %21 = phi i1 [ false, %land.lhs.true.23 ], [ false, %if.end.20 ], [ %cmp35, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

declare i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define void @reset_owl_node_counter() #0 {
entry:
  store i32 0, i32* @global_owl_node_counter, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_owl_node_counter() #0 {
entry:
  %0 = load i32, i32* @global_owl_node_counter, align 4
  ret i32 %0
}

declare i32 @get_read_result2(i32, i32, i32, i32*, i32*, %struct.read_result_t**) #1

declare void @sgf_trace2(i8*, i32, i32, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @owl_find_lunches(%struct.local_owl_data* %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %lunches = alloca i32, align 4
  %prevlunch = alloca i32, align 4
  %lunch = alloca i32, align 4
  %acode = alloca i32, align 4
  %apos = alloca i32, align 4
  %dcode = alloca i32, align 4
  %dpos = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %already_checked = alloca [400 x i8], align 16
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %pos = alloca i32, align 4
  %d = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %num_stones = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %liberties = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %r = alloca i32, align 4
  %essential = alloca i32, align 4
  %superstring = alloca [400 x i32], align 16
  %bpos = alloca i32, align 4
  %goal_found = alloca i32, align 4
  %s = alloca i32, align 4
  %cpos = alloca i32, align 4
  %off_board = alloca i32, align 4
  %diagonal_goal = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32 0, i32* %lunches, align 4
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color1 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 3
  %1 = load i32, i32* %color1, align 4
  store i32 %1, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %3, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %4 = load i32, i32* @count_variations, align 4
  store i32 %4, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %prevlunch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %prevlunch, align 4
  %cmp = icmp slt i32 %5, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %prevlunch, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch2 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %lunch2, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %prevlunch, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %prevlunch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %inessential = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 11
  %10 = bitcast [400 x i8]* %inessential to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 400, i32 4, i1 false)
  %11 = bitcast [400 x i8]* %already_checked to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 400, i32 16, i1 false)
  store i32 0, i32* %m, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.246, %for.end
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* @board_size, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body.5, label %for.end.248

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %n, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.243, %for.body.5
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %for.body.8, label %for.end.245

for.body.8:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %16, 20
  %add = add nsw i32 21, %mul
  %17 = load i32, i32* %n, align 4
  %add9 = add nsw i32 %add, %17
  store i32 %add9, i32* %pos, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %19 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* %color, align 4
  %cmp12 = icmp eq i32 %conv, %20
  br i1 %cmp12, label %land.lhs.true, label %if.end.242

land.lhs.true:                                    ; preds = %for.body.8
  %21 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom14
  %23 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %23 to i32
  %tobool = icmp ne i32 %conv16, 0
  br i1 %tobool, label %if.then, label %if.end.242

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.239, %if.then
  %24 = load i32, i32* %k, align 4
  %cmp18 = icmp slt i32 %24, 8
  br i1 %cmp18, label %for.body.20, label %for.end.241

for.body.20:                                      ; preds = %for.cond.17
  %25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom21
  %26 = load i32, i32* %arrayidx22, align 4
  store i32 %26, i32* %d, align 4
  %27 = load i32, i32* %k, align 4
  %cmp23 = icmp slt i32 %27, 4
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %for.body.20
  %28 = load i32, i32* %pos, align 4
  %29 = load i32, i32* %d, align 4
  %add26 = add nsw i32 %28, %29
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %30 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %land.lhs.true.25
  %31 = load i32, i32* %d, align 4
  %mul33 = mul nsw i32 %31, 2
  store i32 %mul33, i32* %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %land.lhs.true.25, %for.body.20
  %32 = load i32, i32* %pos, align 4
  %33 = load i32, i32* %d, align 4
  %add34 = add nsw i32 %32, %33
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %34 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %35 = load i32, i32* %other, align 4
  %cmp38 = icmp ne i32 %conv37, %35
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  br label %for.inc.239

if.end.41:                                        ; preds = %if.end
  %36 = load i32, i32* %pos, align 4
  %37 = load i32, i32* %d, align 4
  %add42 = add nsw i32 %36, %37
  %call = call i32 @find_origin(i32 %add42)
  store i32 %call, i32* %lunch, align 4
  %38 = load i32, i32* %lunch, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [400 x i8], [400 x i8]* %already_checked, i32 0, i64 %idxprom43
  %39 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %39, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  br label %for.inc.239

if.end.47:                                        ; preds = %if.end.41
  %40 = load i32, i32* %lunch, align 4
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds [400 x i8], [400 x i8]* %already_checked, i32 0, i64 %idxprom48
  store i8 1, i8* %arrayidx49, align 1
  %41 = load i32, i32* %lunch, align 4
  %call50 = call i32 @attack_and_defend(i32 %41, i32* %acode, i32* %apos, i32* %dcode, i32* %dpos)
  %42 = load i32, i32* %acode, align 4
  %cmp51 = icmp ne i32 %42, 0
  br i1 %cmp51, label %if.then.53, label %if.else.77

if.then.53:                                       ; preds = %if.end.47
  %43 = load i32, i32* %lunch, align 4
  %44 = load i32, i32* %lunches, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch55 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %45, i32 0, i32 6
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch55, i32 0, i64 %idxprom54
  store i32 %43, i32* %arrayidx56, align 4
  %46 = load i32, i32* %acode, align 4
  %47 = load i32, i32* %lunches, align 4
  %idxprom57 = sext i32 %47 to i64
  %48 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_attack_code = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %48, i32 0, i32 7
  %arrayidx58 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_attack_code, i32 0, i64 %idxprom57
  store i32 %46, i32* %arrayidx58, align 4
  %49 = load i32, i32* %apos, align 4
  %50 = load i32, i32* %lunches, align 4
  %idxprom59 = sext i32 %50 to i64
  %51 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_attack_point = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %51, i32 0, i32 8
  %arrayidx60 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_attack_point, i32 0, i64 %idxprom59
  store i32 %49, i32* %arrayidx60, align 4
  %52 = load i32, i32* %dcode, align 4
  %53 = load i32, i32* %lunches, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_defend_code = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %54, i32 0, i32 9
  %arrayidx62 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defend_code, i32 0, i64 %idxprom61
  store i32 %52, i32* %arrayidx62, align 4
  %55 = load i32, i32* %dcode, align 4
  %cmp63 = icmp ne i32 %55, 0
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.then.53
  %56 = load i32, i32* %dpos, align 4
  %57 = load i32, i32* %lunches, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_defense_point = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %58, i32 0, i32 10
  %arrayidx67 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point, i32 0, i64 %idxprom66
  store i32 %56, i32* %arrayidx67, align 4
  br label %if.end.71

if.else:                                          ; preds = %if.then.53
  %59 = load i32, i32* %lunches, align 4
  %idxprom68 = sext i32 %59 to i64
  %60 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_defense_point69 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %60, i32 0, i32 10
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point69, i32 0, i64 %idxprom68
  store i32 0, i32* %arrayidx70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.65
  %61 = load i32, i32* %lunches, align 4
  %inc72 = add nsw i32 %61, 1
  store i32 %inc72, i32* %lunches, align 4
  %62 = load i32, i32* %lunches, align 4
  %cmp73 = icmp eq i32 %62, 10
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  %63 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %63, %struct.SGFTree_t** @sgf_dumptree, align 8
  %64 = load i32, i32* %save_count_variations, align 4
  store i32 %64, i32* @count_variations, align 4
  %65 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %65, i32 0, i32 12
  store i32 1, i32* %lunches_are_current, align 4
  br label %return

if.end.76:                                        ; preds = %if.end.71
  br label %if.end.238

if.else.77:                                       ; preds = %if.end.47
  %66 = load i32, i32* %lunch, align 4
  %idxprom78 = sext i32 %66 to i64
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %inessential79 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %67, i32 0, i32 11
  %arrayidx80 = getelementptr inbounds [400 x i8], [400 x i8]* %inessential79, i32 0, i64 %idxprom78
  %68 = load i8, i8* %arrayidx80, align 1
  %tobool81 = icmp ne i8 %68, 0
  br i1 %tobool81, label %if.end.237, label %if.then.82

if.then.82:                                       ; preds = %if.else.77
  store i32 0, i32* %essential, align 4
  %69 = load i32, i32* %lunch, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call83 = call i32 @chainlinks(i32 %69, i32* %arraydecay)
  store i32 %call83, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.101, %if.then.82
  %70 = load i32, i32* %r, align 4
  %71 = load i32, i32* %adj, align 4
  %cmp85 = icmp slt i32 %70, %71
  br i1 %cmp85, label %for.body.87, label %for.end.103

for.body.87:                                      ; preds = %for.cond.84
  %72 = load i32, i32* %r, align 4
  %idxprom88 = sext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom88
  %73 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %73 to i64
  %74 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal91 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %74, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [400 x i8], [400 x i8]* %goal91, i32 0, i64 %idxprom90
  %75 = load i8, i8* %arrayidx92, align 1
  %tobool93 = icmp ne i8 %75, 0
  br i1 %tobool93, label %lor.lhs.false, label %if.then.99

lor.lhs.false:                                    ; preds = %for.body.87
  %76 = load i32, i32* %r, align 4
  %idxprom94 = sext i32 %76 to i64
  %arrayidx95 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom94
  %77 = load i32, i32* %arrayidx95, align 4
  %call96 = call i32 @attack(i32 %77, i32* null)
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false, %for.body.87
  store i32 1, i32* %essential, align 4
  br label %for.end.103

if.end.100:                                       ; preds = %lor.lhs.false
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %78 = load i32, i32* %r, align 4
  %inc102 = add nsw i32 %78, 1
  store i32 %inc102, i32* %r, align 4
  br label %for.cond.84

for.end.103:                                      ; preds = %if.then.99, %for.cond.84
  %79 = load i32, i32* %essential, align 4
  %tobool104 = icmp ne i32 %79, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.end.103
  br label %for.inc.239

if.end.106:                                       ; preds = %for.end.103
  %80 = load i32, i32* %lunch, align 4
  %arraydecay107 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %arraydecay108 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  call void @find_superstring_stones_and_liberties(i32 %80, i32* %num_stones, i32* %arraydecay107, i32* %liberties, i32* %arraydecay108, i32 0)
  %81 = bitcast [400 x i32]* %superstring to i8*
  call void @llvm.memset.p0i8.i64(i8* %81, i8 0, i64 1600, i32 16, i1 false)
  store i32 0, i32* %r, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.117, %if.end.106
  %82 = load i32, i32* %r, align 4
  %83 = load i32, i32* %num_stones, align 4
  %cmp110 = icmp slt i32 %82, %83
  br i1 %cmp110, label %for.body.112, label %for.end.119

for.body.112:                                     ; preds = %for.cond.109
  %84 = load i32, i32* %r, align 4
  %idxprom113 = sext i32 %84 to i64
  %arrayidx114 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom113
  %85 = load i32, i32* %arrayidx114, align 4
  %idxprom115 = sext i32 %85 to i64
  %arrayidx116 = getelementptr inbounds [400 x i32], [400 x i32]* %superstring, i32 0, i64 %idxprom115
  store i32 1, i32* %arrayidx116, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.112
  %86 = load i32, i32* %r, align 4
  %inc118 = add nsw i32 %86, 1
  store i32 %inc118, i32* %r, align 4
  br label %for.cond.109

for.end.119:                                      ; preds = %for.cond.109
  store i32 0, i32* %r, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.217, %for.end.119
  %87 = load i32, i32* %r, align 4
  %88 = load i32, i32* %liberties, align 4
  %cmp121 = icmp slt i32 %87, %88
  br i1 %cmp121, label %for.body.123, label %for.end.219

for.body.123:                                     ; preds = %for.cond.120
  %89 = load i32, i32* %r, align 4
  %idxprom124 = sext i32 %89 to i64
  %arrayidx125 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom124
  %90 = load i32, i32* %arrayidx125, align 4
  store i32 %90, i32* %bpos, align 4
  store i32 0, i32* %goal_found, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.172, %for.body.123
  %91 = load i32, i32* %s, align 4
  %cmp127 = icmp slt i32 %91, 4
  br i1 %cmp127, label %for.body.129, label %for.end.174

for.body.129:                                     ; preds = %for.cond.126
  %92 = load i32, i32* %bpos, align 4
  %93 = load i32, i32* %s, align 4
  %idxprom130 = sext i32 %93 to i64
  %arrayidx131 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom130
  %94 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %92, %94
  store i32 %add132, i32* %cpos, align 4
  %95 = load i32, i32* %cpos, align 4
  %idxprom133 = sext i32 %95 to i64
  %arrayidx134 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom133
  %96 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %96 to i32
  %cmp136 = icmp ne i32 %conv135, 3
  br i1 %cmp136, label %if.end.139, label %if.then.138

if.then.138:                                      ; preds = %for.body.129
  br label %for.inc.172

if.end.139:                                       ; preds = %for.body.129
  %97 = load i32, i32* %cpos, align 4
  %idxprom140 = sext i32 %97 to i64
  %arrayidx141 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom140
  %98 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %98 to i32
  %99 = load i32, i32* %color, align 4
  %cmp143 = icmp eq i32 %conv142, %99
  br i1 %cmp143, label %if.then.145, label %if.else.159

if.then.145:                                      ; preds = %if.end.139
  %100 = load i32, i32* %cpos, align 4
  %call146 = call i32 @attack(i32 %100, i32* null)
  %cmp147 = icmp ne i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.then.145
  store i32 1, i32* %essential, align 4
  br label %for.end.174

if.else.150:                                      ; preds = %if.then.145
  %101 = load i32, i32* %cpos, align 4
  %idxprom151 = sext i32 %101 to i64
  %102 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal152 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %102, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [400 x i8], [400 x i8]* %goal152, i32 0, i64 %idxprom151
  %103 = load i8, i8* %arrayidx153, align 1
  %tobool154 = icmp ne i8 %103, 0
  br i1 %tobool154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.else.150
  store i32 1, i32* %goal_found, align 4
  br label %if.end.157

if.else.156:                                      ; preds = %if.else.150
  store i32 1, i32* %essential, align 4
  br label %for.end.174

if.end.157:                                       ; preds = %if.then.155
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157
  br label %if.end.171

if.else.159:                                      ; preds = %if.end.139
  %104 = load i32, i32* %cpos, align 4
  %idxprom160 = sext i32 %104 to i64
  %arrayidx161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom160
  %105 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %105 to i32
  %106 = load i32, i32* %other, align 4
  %cmp163 = icmp eq i32 %conv162, %106
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.170

land.lhs.true.165:                                ; preds = %if.else.159
  %107 = load i32, i32* %cpos, align 4
  %idxprom166 = sext i32 %107 to i64
  %arrayidx167 = getelementptr inbounds [400 x i32], [400 x i32]* %superstring, i32 0, i64 %idxprom166
  %108 = load i32, i32* %arrayidx167, align 4
  %tobool168 = icmp ne i32 %108, 0
  br i1 %tobool168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.165
  store i32 1, i32* %essential, align 4
  br label %for.end.174

if.end.170:                                       ; preds = %land.lhs.true.165, %if.else.159
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.158
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171, %if.then.138
  %109 = load i32, i32* %s, align 4
  %inc173 = add nsw i32 %109, 1
  store i32 %inc173, i32* %s, align 4
  br label %for.cond.126

for.end.174:                                      ; preds = %if.then.169, %if.else.156, %if.then.149, %for.cond.126
  %110 = load i32, i32* %goal_found, align 4
  %tobool175 = icmp ne i32 %110, 0
  br i1 %tobool175, label %if.end.213, label %if.then.176

if.then.176:                                      ; preds = %for.end.174
  store i32 0, i32* %off_board, align 4
  store i32 0, i32* %diagonal_goal, align 4
  store i32 4, i32* %s, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.203, %if.then.176
  %111 = load i32, i32* %s, align 4
  %cmp178 = icmp slt i32 %111, 8
  br i1 %cmp178, label %for.body.180, label %for.end.205

for.body.180:                                     ; preds = %for.cond.177
  %112 = load i32, i32* %bpos, align 4
  %113 = load i32, i32* %s, align 4
  %idxprom181 = sext i32 %113 to i64
  %arrayidx182 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom181
  %114 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %112, %114
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom184
  %115 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %115 to i32
  %cmp187 = icmp ne i32 %conv186, 3
  br i1 %cmp187, label %if.else.191, label %if.then.189

if.then.189:                                      ; preds = %for.body.180
  %116 = load i32, i32* %off_board, align 4
  %inc190 = add nsw i32 %116, 1
  store i32 %inc190, i32* %off_board, align 4
  br label %if.end.202

if.else.191:                                      ; preds = %for.body.180
  %117 = load i32, i32* %bpos, align 4
  %118 = load i32, i32* %s, align 4
  %idxprom192 = sext i32 %118 to i64
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom192
  %119 = load i32, i32* %arrayidx193, align 4
  %add194 = add nsw i32 %117, %119
  %idxprom195 = sext i32 %add194 to i64
  %120 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal196 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %120, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [400 x i8], [400 x i8]* %goal196, i32 0, i64 %idxprom195
  %121 = load i8, i8* %arrayidx197, align 1
  %tobool198 = icmp ne i8 %121, 0
  br i1 %tobool198, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %if.else.191
  %122 = load i32, i32* %diagonal_goal, align 4
  %inc200 = add nsw i32 %122, 1
  store i32 %inc200, i32* %diagonal_goal, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %if.else.191
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.189
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %123 = load i32, i32* %s, align 4
  %inc204 = add nsw i32 %123, 1
  store i32 %inc204, i32* %s, align 4
  br label %for.cond.177

for.end.205:                                      ; preds = %for.cond.177
  %124 = load i32, i32* %diagonal_goal, align 4
  %125 = load i32, i32* %off_board, align 4
  %cmp206 = icmp sge i32 %125, 2
  %conv207 = zext i1 %cmp206 to i32
  %add208 = add nsw i32 %124, %conv207
  %cmp209 = icmp slt i32 %add208, 2
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %for.end.205
  store i32 1, i32* %essential, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %for.end.205
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %for.end.174
  %126 = load i32, i32* %essential, align 4
  %tobool214 = icmp ne i32 %126, 0
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.213
  br label %for.end.219

if.end.216:                                       ; preds = %if.end.213
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %127 = load i32, i32* %r, align 4
  %inc218 = add nsw i32 %127, 1
  store i32 %inc218, i32* %r, align 4
  br label %for.cond.120

for.end.219:                                      ; preds = %if.then.215, %for.cond.120
  %128 = load i32, i32* %essential, align 4
  %tobool220 = icmp ne i32 %128, 0
  br i1 %tobool220, label %if.end.236, label %if.then.221

if.then.221:                                      ; preds = %for.end.219
  %129 = load i32, i32* @verbose, align 4
  %tobool222 = icmp ne i32 %129, 0
  br i1 %tobool222, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.221
  br label %cond.end

cond.false:                                       ; preds = %if.then.221
  %130 = load i32, i32* %lunch, align 4
  %call223 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i32 0, i32 0), i32 %130)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %r, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.233, %cond.end
  %131 = load i32, i32* %r, align 4
  %132 = load i32, i32* %num_stones, align 4
  %cmp225 = icmp slt i32 %131, %132
  br i1 %cmp225, label %for.body.227, label %for.end.235

for.body.227:                                     ; preds = %for.cond.224
  %133 = load i32, i32* %r, align 4
  %idxprom228 = sext i32 %133 to i64
  %arrayidx229 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom228
  %134 = load i32, i32* %arrayidx229, align 4
  %idxprom230 = sext i32 %134 to i64
  %135 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %inessential231 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %135, i32 0, i32 11
  %arrayidx232 = getelementptr inbounds [400 x i8], [400 x i8]* %inessential231, i32 0, i64 %idxprom230
  store i8 1, i8* %arrayidx232, align 1
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.227
  %136 = load i32, i32* %r, align 4
  %inc234 = add nsw i32 %136, 1
  store i32 %inc234, i32* %r, align 4
  br label %for.cond.224

for.end.235:                                      ; preds = %for.cond.224
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.end.219
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.else.77
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.76
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238, %if.then.105, %if.then.46, %if.then.40
  %137 = load i32, i32* %k, align 4
  %inc240 = add nsw i32 %137, 1
  store i32 %inc240, i32* %k, align 4
  br label %for.cond.17

for.end.241:                                      ; preds = %for.cond.17
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.241, %land.lhs.true, %for.body.8
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %138 = load i32, i32* %n, align 4
  %inc244 = add nsw i32 %138, 1
  store i32 %inc244, i32* %n, align 4
  br label %for.cond.6

for.end.245:                                      ; preds = %for.cond.6
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.end.245
  %139 = load i32, i32* %m, align 4
  %inc247 = add nsw i32 %139, 1
  store i32 %inc247, i32* %m, align 4
  br label %for.cond.3

for.end.248:                                      ; preds = %for.cond.3
  %140 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunches_are_current249 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %140, i32 0, i32 12
  store i32 1, i32* %lunches_are_current249, align 4
  %141 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %141, %struct.SGFTree_t** @sgf_dumptree, align 8
  %142 = load i32, i32* %save_count_variations, align 4
  store i32 %142, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %for.end.248, %if.then.75
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @owl_determine_life(%struct.local_owl_data* %owl, %struct.local_owl_data* %second_owl, i32 %komaster, i32 %does_attack, %struct.owl_move_data* %moves, %struct.eyevalue* %probable_eyes, i32* %eyemin, i32* %eyemax) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %second_owl.addr = alloca %struct.local_owl_data*, align 8
  %komaster.addr = alloca i32, align 4
  %does_attack.addr = alloca i32, align 4
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %probable_eyes.addr = alloca %struct.eyevalue*, align 8
  %eyemin.addr = alloca i32*, align 8
  %eyemax.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %eye = alloca %struct.eye_data*, align 8
  %mw = alloca [400 x i8], align 16
  %mz = alloca [400 x i8], align 16
  %vital_values = alloca [400 x i32], align 16
  %dummy_eyemin = alloca i32, align 4
  %dummy_eyemax = alloca i32, align 4
  %eyevalue = alloca %struct.eyevalue, align 1
  %eyevalue_list = alloca [200 x %struct.eyevalue], align 16
  %eyes_attack_points = alloca [200 x i32], align 16
  %pessimistic_min = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %lunch = alloca i32, align 4
  %eye_color = alloca i32, align 4
  %num_eyes = alloca i32, align 4
  %num_lunch = alloca i32, align 4
  %save_debug = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos111 = alloca i32, align 4
  %value127 = alloca i32, align 4
  %reason = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %value407 = alloca i32, align 4
  %lunch_min = alloca i32, align 4
  %lunch_probable = alloca i32, align 4
  %lunch_max = alloca i32, align 4
  %e = alloca %struct.eyevalue, align 1
  %ne = alloca i32, align 4
  %ne549 = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store %struct.local_owl_data* %second_owl, %struct.local_owl_data** %second_owl.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %does_attack, i32* %does_attack.addr, align 4
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store %struct.eyevalue* %probable_eyes, %struct.eyevalue** %probable_eyes.addr, align 8
  store i32* %eyemin, i32** %eyemin.addr, align 8
  store i32* %eyemax, i32** %eyemax.addr, align 8
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color1 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 3
  %1 = load i32, i32* %color1, align 4
  store i32 %1, i32* %color, align 4
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %my_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %my_eye, i32 0, i32 0
  store %struct.eye_data* %arraydecay, %struct.eye_data** %eye, align 8
  store i32 0, i32* %dummy_eyemin, align 4
  store i32 0, i32* %dummy_eyemax, align 4
  store i32 0, i32* %num_eyes, align 4
  store i32 0, i32* %num_lunch, align 4
  %3 = load i32, i32* @debug, align 4
  store i32 %3, i32* %save_debug, align 4
  %4 = bitcast [400 x i8]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 400, i32 16, i1 false)
  %5 = bitcast [400 x i8]* %mz to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 400, i32 16, i1 false)
  %6 = bitcast [400 x i32]* %vital_values to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1600, i32 16, i1 false)
  %7 = load i32, i32* %komaster.addr, align 4
  %8 = load i32*, i32** %eyemin.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %dummy_eyemin, i32** %eyemin.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32*, i32** %eyemax.addr, align 8
  %tobool2 = icmp ne i32* %9, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32* %dummy_eyemax, i32** %eyemax.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %10 = load i32*, i32** %eyemin.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %eyemax.addr, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @debug, align 4
  %and = and i32 %12, 4
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %13 = load i32, i32* @debug, align 4
  %and7 = and i32 %13, -3
  store i32 %and7, i32* @debug, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %14 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  call void @clear_owl_move_data(%struct.owl_move_data* %14)
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i32 0, i32 12
  %16 = load i32, i32* %lunches_are_current, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %second_owl.addr, align 8
  call void @owl_make_domains(%struct.local_owl_data* %18, %struct.local_owl_data* %19)
  %20 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.11
  store i32 4, i32* %eye_color, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end.11
  store i32 5, i32* %eye_color, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %if.end.13
  %21 = load i32, i32* %m, align 4
  %22 = load i32, i32* @board_size, align 4
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.69, %for.body
  %23 = load i32, i32* %n, align 4
  %24 = load i32, i32* @board_size, align 4
  %cmp16 = icmp slt i32 %23, %24
  br i1 %cmp16, label %for.body.17, label %for.end.71

for.body.17:                                      ; preds = %for.cond.15
  %25 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %25, 20
  %add = add nsw i32 21, %mul
  %26 = load i32, i32* %n, align 4
  %add18 = add nsw i32 %add, %26
  store i32 %add18, i32* %pos, align 4
  %27 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %color, align 4
  %cmp19 = icmp eq i32 %conv, %29
  br i1 %cmp19, label %if.then.21, label %if.end.68

if.then.21:                                       ; preds = %for.body.17
  store i32 0, i32* %k, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.21
  %30 = load i32, i32* %k, align 4
  %cmp23 = icmp slt i32 %30, 8
  br i1 %cmp23, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom26
  %33 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %31, %33
  store i32 %add28, i32* %pos2, align 4
  %34 = load i32, i32* %pos2, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %35 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %35 to i32
  %cmp32 = icmp ne i32 %conv31, 3
  br i1 %cmp32, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %for.body.25
  %36 = load i32, i32* %pos2, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx35 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %37, i64 %idxprom34
  %color36 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx35, i32 0, i32 0
  %38 = load i32, i32* %color36, align 4
  %39 = load i32, i32* %eye_color, align 4
  %cmp37 = icmp eq i32 %38, %39
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.66

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %40 = load i32, i32* %pos2, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %41, i64 %idxprom40
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx41, i32 0, i32 3
  %42 = load i32, i32* %origin, align 4
  %cmp42 = icmp ne i32 %42, 0
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.66

land.lhs.true.44:                                 ; preds = %land.lhs.true.39
  %43 = load i32, i32* %pos2, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx46 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %44, i64 %idxprom45
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx46, i32 0, i32 7
  %45 = load i8, i8* %marginal, align 1
  %tobool47 = icmp ne i8 %45, 0
  br i1 %tobool47, label %if.end.66, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.44
  %46 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %47, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom49
  %48 = load i8, i8* %arrayidx50, align 1
  %tobool51 = icmp ne i8 %48, 0
  br i1 %tobool51, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %if.then.48
  %49 = load i32, i32* %pos2, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx54 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %50, i64 %idxprom53
  %origin55 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx54, i32 0, i32 3
  %51 = load i32, i32* %origin55, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom56
  %52 = load i8, i8* %arrayidx57, align 1
  %inc = add i8 %52, 1
  store i8 %inc, i8* %arrayidx57, align 1
  br label %if.end.65

if.else.58:                                       ; preds = %if.then.48
  %53 = load i32, i32* %pos2, align 4
  %idxprom59 = sext i32 %53 to i64
  %54 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx60 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %54, i64 %idxprom59
  %origin61 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx60, i32 0, i32 3
  %55 = load i32, i32* %origin61, align 4
  %idxprom62 = sext i32 %55 to i64
  %arrayidx63 = getelementptr inbounds [400 x i8], [400 x i8]* %mz, i32 0, i64 %idxprom62
  %56 = load i8, i8* %arrayidx63, align 1
  %inc64 = add i8 %56, 1
  store i8 %inc64, i8* %arrayidx63, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.58, %if.then.52
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.44, %land.lhs.true.39, %land.lhs.true, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %57 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %57, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %for.body.17
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %58 = load i32, i32* %n, align 4
  %inc70 = add nsw i32 %58, 1
  store i32 %inc70, i32* %n, align 4
  br label %for.cond.15

for.end.71:                                       ; preds = %for.cond.15
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %59 = load i32, i32* %m, align 4
  %inc73 = add nsw i32 %59, 1
  store i32 %inc73, i32* %m, align 4
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  store i32 0, i32* %m, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.97, %for.end.74
  %60 = load i32, i32* %m, align 4
  %61 = load i32, i32* @board_size, align 4
  %cmp76 = icmp slt i32 %60, %61
  br i1 %cmp76, label %for.body.78, label %for.end.99

for.body.78:                                      ; preds = %for.cond.75
  store i32 0, i32* %n, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.94, %for.body.78
  %62 = load i32, i32* %n, align 4
  %63 = load i32, i32* @board_size, align 4
  %cmp80 = icmp slt i32 %62, %63
  br i1 %cmp80, label %for.body.82, label %for.end.96

for.body.82:                                      ; preds = %for.cond.79
  %64 = load i32, i32* %m, align 4
  %mul83 = mul nsw i32 %64, 20
  %add84 = add nsw i32 21, %mul83
  %65 = load i32, i32* %n, align 4
  %add85 = add nsw i32 %add84, %65
  %idxprom86 = sext i32 %add85 to i64
  %66 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %half_eye = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %66, i32 0, i32 5
  %arrayidx87 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %half_eye, i32 0, i64 %idxprom86
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx87, i32 0, i32 1
  store i8 0, i8* %type, align 1
  %67 = load i32, i32* %m, align 4
  %mul88 = mul nsw i32 %67, 20
  %add89 = add nsw i32 21, %mul88
  %68 = load i32, i32* %n, align 4
  %add90 = add nsw i32 %add89, %68
  %idxprom91 = sext i32 %add90 to i64
  %69 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %half_eye92 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %69, i32 0, i32 5
  %arrayidx93 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %half_eye92, i32 0, i64 %idxprom91
  %value = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx93, i32 0, i32 0
  store float 1.000000e+01, float* %value, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.82
  %70 = load i32, i32* %n, align 4
  %inc95 = add nsw i32 %70, 1
  store i32 %inc95, i32* %n, align 4
  br label %for.cond.79

for.end.96:                                       ; preds = %for.cond.79
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %71 = load i32, i32* %m, align 4
  %inc98 = add nsw i32 %71, 1
  store i32 %inc98, i32* %m, align 4
  br label %for.cond.75

for.end.99:                                       ; preds = %for.cond.75
  %72 = load i32, i32* %color, align 4
  %73 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %74 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %half_eye100 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %74, i32 0, i32 5
  %arraydecay101 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %half_eye100, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i32 0
  call void @find_half_and_false_eyes(i32 %72, %struct.eye_data* %73, %struct.half_eye_data* %arraydecay101, i8* %arraydecay102)
  %75 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %75, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.389, %for.end.99
  %76 = load i32, i32* %m, align 4
  %77 = load i32, i32* @board_size, align 4
  %cmp104 = icmp slt i32 %76, %77
  br i1 %cmp104, label %for.body.106, label %for.end.391

for.body.106:                                     ; preds = %for.cond.103
  store i32 0, i32* %n, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.386, %for.body.106
  %78 = load i32, i32* %n, align 4
  %79 = load i32, i32* @board_size, align 4
  %cmp108 = icmp slt i32 %78, %79
  br i1 %cmp108, label %for.body.110, label %for.end.388

for.body.110:                                     ; preds = %for.cond.107
  %80 = load i32, i32* %m, align 4
  %mul112 = mul nsw i32 %80, 20
  %add113 = add nsw i32 21, %mul112
  %81 = load i32, i32* %n, align 4
  %add114 = add nsw i32 %add113, %81
  store i32 %add114, i32* %pos111, align 4
  %82 = load i32, i32* %pos111, align 4
  %idxprom115 = sext i32 %82 to i64
  %arrayidx116 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom115
  %83 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %83 to i32
  %cmp118 = icmp sgt i32 %conv117, 1
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.385

land.lhs.true.120:                                ; preds = %for.body.110
  %84 = load i32, i32* %pos111, align 4
  %idxprom121 = sext i32 %84 to i64
  %85 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx122 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %85, i64 %idxprom121
  %origin123 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx122, i32 0, i32 3
  %86 = load i32, i32* %origin123, align 4
  %87 = load i32, i32* %pos111, align 4
  %cmp124 = icmp eq i32 %86, %87
  br i1 %cmp124, label %if.then.126, label %if.end.385

if.then.126:                                      ; preds = %land.lhs.true.120
  store i32 0, i32* %value127, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i32 0, i32 0), i8** %reason, align 8
  %88 = load i32, i32* %pos111, align 4
  %89 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %90 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %half_eye128 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %90, i32 0, i32 5
  %arraydecay129 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %half_eye128, i32 0, i32 0
  call void @compute_eyes_pessimistic(i32 %88, %struct.eyevalue* %eyevalue, i32* %pessimistic_min, i32* %attack_point, i32* %defense_point, %struct.eye_data* %89, %struct.half_eye_data* %arraydecay129)
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.168, %if.then.126
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* @board_size, align 4
  %cmp131 = icmp slt i32 %91, %92
  br i1 %cmp131, label %for.body.133, label %for.end.170

for.body.133:                                     ; preds = %for.cond.130
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.165, %for.body.133
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* @board_size, align 4
  %cmp135 = icmp slt i32 %93, %94
  br i1 %cmp135, label %for.body.137, label %for.end.167

for.body.137:                                     ; preds = %for.cond.134
  %95 = load i32, i32* %i, align 4
  %mul138 = mul nsw i32 %95, 20
  %add139 = add nsw i32 21, %mul138
  %96 = load i32, i32* %j, align 4
  %add140 = add nsw i32 %add139, %96
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom141
  %97 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %97 to i32
  %cmp144 = icmp sgt i32 %conv143, 1
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.164

land.lhs.true.146:                                ; preds = %for.body.137
  %98 = load i32, i32* %i, align 4
  %mul147 = mul nsw i32 %98, 20
  %add148 = add nsw i32 21, %mul147
  %99 = load i32, i32* %j, align 4
  %add149 = add nsw i32 %add148, %99
  %idxprom150 = sext i32 %add149 to i64
  %100 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx151 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %100, i64 %idxprom150
  %origin152 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx151, i32 0, i32 3
  %101 = load i32, i32* %origin152, align 4
  %102 = load i32, i32* %pos111, align 4
  %cmp153 = icmp eq i32 %101, %102
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.164

land.lhs.true.155:                                ; preds = %land.lhs.true.146
  %103 = load i32, i32* %i, align 4
  %mul156 = mul nsw i32 %103, 20
  %add157 = add nsw i32 21, %mul156
  %104 = load i32, i32* %j, align 4
  %add158 = add nsw i32 %add157, %104
  %idxprom159 = sext i32 %add158 to i64
  %105 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %inessential = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %105, i32 0, i32 11
  %arrayidx160 = getelementptr inbounds [400 x i8], [400 x i8]* %inessential, i32 0, i64 %idxprom159
  %106 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %106 to i32
  %tobool162 = icmp ne i32 %conv161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true.155
  store i32 0, i32* %pessimistic_min, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %land.lhs.true.155, %land.lhs.true.146, %for.body.137
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %107 = load i32, i32* %j, align 4
  %inc166 = add nsw i32 %107, 1
  store i32 %inc166, i32* %j, align 4
  br label %for.cond.134

for.end.167:                                      ; preds = %for.cond.134
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %108 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %108, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.130

for.end.170:                                      ; preds = %for.cond.130
  store i32 0, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.231, %for.end.170
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* @board_size, align 4
  %cmp172 = icmp slt i32 %109, %110
  br i1 %cmp172, label %for.body.174, label %for.end.233

for.body.174:                                     ; preds = %for.cond.171
  store i32 0, i32* %j, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.228, %for.body.174
  %111 = load i32, i32* %j, align 4
  %112 = load i32, i32* @board_size, align 4
  %cmp176 = icmp slt i32 %111, %112
  br i1 %cmp176, label %for.body.178, label %for.end.230

for.body.178:                                     ; preds = %for.cond.175
  %113 = load i32, i32* %i, align 4
  %mul179 = mul nsw i32 %113, 20
  %add180 = add nsw i32 21, %mul179
  %114 = load i32, i32* %j, align 4
  %add181 = add nsw i32 %add180, %114
  %idxprom182 = sext i32 %add181 to i64
  %115 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx183 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %115, i64 %idxprom182
  %origin184 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx183, i32 0, i32 3
  %116 = load i32, i32* %origin184, align 4
  %117 = load i32, i32* %pos111, align 4
  %cmp185 = icmp eq i32 %116, %117
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.227

land.lhs.true.187:                                ; preds = %for.body.178
  %118 = load i32, i32* %i, align 4
  %mul188 = mul nsw i32 %118, 20
  %add189 = add nsw i32 21, %mul188
  %119 = load i32, i32* %j, align 4
  %add190 = add nsw i32 %add189, %119
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom191
  %120 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %120 to i32
  %121 = load i32, i32* %i, align 4
  %mul194 = mul nsw i32 %121, 20
  %add195 = add nsw i32 21, %mul194
  %122 = load i32, i32* %j, align 4
  %add196 = add nsw i32 %add195, %122
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds [400 x i8], [400 x i8]* %mz, i32 0, i64 %idxprom197
  %123 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %123 to i32
  %cmp200 = icmp slt i32 %conv193, %conv199
  br i1 %cmp200, label %if.then.226, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.187
  %124 = load i32, i32* %i, align 4
  %mul202 = mul nsw i32 %124, 20
  %add203 = add nsw i32 21, %mul202
  %125 = load i32, i32* %j, align 4
  %add204 = add nsw i32 %add203, %125
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds [400 x i8], [400 x i8]* %mw, i32 0, i64 %idxprom205
  %126 = load i8, i8* %arrayidx206, align 1
  %conv207 = sext i8 %126 to i32
  %127 = load i32, i32* %i, align 4
  %mul208 = mul nsw i32 %127, 20
  %add209 = add nsw i32 21, %mul208
  %128 = load i32, i32* %j, align 4
  %add210 = add nsw i32 %add209, %128
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [400 x i8], [400 x i8]* %mz, i32 0, i64 %idxprom211
  %129 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %129 to i32
  %mul214 = mul nsw i32 3, %conv213
  %cmp215 = icmp slt i32 %conv207, %mul214
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.227

land.lhs.true.217:                                ; preds = %lor.lhs.false
  %130 = load i32, i32* %i, align 4
  %mul218 = mul nsw i32 %130, 20
  %add219 = add nsw i32 21, %mul218
  %131 = load i32, i32* %j, align 4
  %add220 = add nsw i32 %add219, %131
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds [400 x i8], [400 x i8]* %mz, i32 0, i64 %idxprom221
  %132 = load i8, i8* %arrayidx222, align 1
  %conv223 = sext i8 %132 to i32
  %cmp224 = icmp sgt i32 %conv223, 5
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %land.lhs.true.217, %land.lhs.true.187
  store i32 0, i32* %pessimistic_min, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %land.lhs.true.217, %lor.lhs.false, %for.body.178
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %133 = load i32, i32* %j, align 4
  %inc229 = add nsw i32 %133, 1
  store i32 %inc229, i32* %j, align 4
  br label %for.cond.175

for.end.230:                                      ; preds = %for.cond.175
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end.230
  %134 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %134, 1
  store i32 %inc232, i32* %i, align 4
  br label %for.cond.171

for.end.233:                                      ; preds = %for.cond.171
  %135 = load i32, i32* %num_eyes, align 4
  %idxprom234 = sext i32 %135 to i64
  %arrayidx235 = getelementptr inbounds [200 x i32], [200 x i32]* %eyes_attack_points, i32 0, i64 %idxprom234
  store i32 0, i32* %arrayidx235, align 4
  %136 = load i32, i32* %num_eyes, align 4
  %idxprom236 = sext i32 %136 to i64
  %arrayidx237 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom236
  %137 = bitcast %struct.eyevalue* %arrayidx237 to i8*
  %138 = bitcast %struct.eyevalue* %eyevalue to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 4, i32 1, i1 false)
  %139 = load i32, i32* %pessimistic_min, align 4
  %140 = load i32*, i32** %eyemin.addr, align 8
  %141 = load i32, i32* %140, align 4
  %add238 = add nsw i32 %141, %139
  store i32 %add238, i32* %140, align 4
  %142 = load i32, i32* %pos111, align 4
  %idxprom239 = sext i32 %142 to i64
  %143 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx240 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %143, i64 %idxprom239
  %value241 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx240, i32 0, i32 4
  %144 = bitcast %struct.eyevalue* %value241 to i8*
  %145 = bitcast %struct.eyevalue* %eyevalue to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 4, i32 1, i1 false)
  %call = call i32 @eye_move_urgency(%struct.eyevalue* %eyevalue)
  %tobool242 = icmp ne i32 %call, 0
  br i1 %tobool242, label %if.then.243, label %if.else.257

if.then.243:                                      ; preds = %for.end.233
  store i32 50, i32* %value127, align 4
  %call244 = call i32 @max_eyes(%struct.eyevalue* %eyevalue)
  %call245 = call i32 @min_eyes(%struct.eyevalue* %eyevalue)
  %sub = sub nsw i32 %call244, %call245
  %cmp246 = icmp eq i32 %sub, 2
  br i1 %cmp246, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %if.then.243
  store i32 70, i32* %value127, align 4
  br label %if.end.256

if.else.249:                                      ; preds = %if.then.243
  %call250 = call i32 @max_eyes(%struct.eyevalue* %eyevalue)
  %146 = load i32, i32* %pessimistic_min, align 4
  %sub251 = sub nsw i32 %call250, %146
  %cmp252 = icmp eq i32 %sub251, 2
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.else.249
  store i32 60, i32* %value127, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %if.else.249
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.248
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8** %reason, align 8
  br label %if.end.270

if.else.257:                                      ; preds = %for.end.233
  %call258 = call i32 @max_eyes(%struct.eyevalue* %eyevalue)
  %147 = load i32, i32* %pessimistic_min, align 4
  %cmp259 = icmp ne i32 %call258, %147
  br i1 %cmp259, label %if.then.261, label %if.end.269

if.then.261:                                      ; preds = %if.else.257
  %call262 = call i32 @max_eyes(%struct.eyevalue* %eyevalue)
  %148 = load i32, i32* %pessimistic_min, align 4
  %sub263 = sub nsw i32 %call262, %148
  %cmp264 = icmp eq i32 %sub263, 2
  br i1 %cmp264, label %if.then.266, label %if.else.267

if.then.266:                                      ; preds = %if.then.261
  store i32 40, i32* %value127, align 4
  br label %if.end.268

if.else.267:                                      ; preds = %if.then.261
  store i32 30, i32* %value127, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.267, %if.then.266
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0), i8** %reason, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.else.257
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.256
  %149 = load i32, i32* %value127, align 4
  %cmp271 = icmp sgt i32 %149, 0
  br i1 %cmp271, label %if.then.273, label %if.end.383

if.then.273:                                      ; preds = %if.end.270
  %150 = load i32, i32* %does_attack.addr, align 4
  %tobool274 = icmp ne i32 %150, 0
  br i1 %tobool274, label %land.lhs.true.275, label %if.else.314

land.lhs.true.275:                                ; preds = %if.then.273
  %151 = load i32, i32* %attack_point, align 4
  %cmp276 = icmp ne i32 %151, 0
  br i1 %cmp276, label %if.then.278, label %if.else.314

if.then.278:                                      ; preds = %land.lhs.true.275
  %152 = load i32, i32* %attack_point, align 4
  %idxprom279 = sext i32 %152 to i64
  %arrayidx280 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom279
  %153 = load i32, i32* %arrayidx280, align 4
  %cmp281 = icmp sgt i32 %153, 0
  br i1 %cmp281, label %if.then.283, label %if.end.291

if.then.283:                                      ; preds = %if.then.278
  %154 = load i32, i32* %attack_point, align 4
  %idxprom284 = sext i32 %154 to i64
  %arrayidx285 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom284
  %155 = load i32, i32* %arrayidx285, align 4
  %156 = load i32, i32* %value127, align 4
  %add286 = add nsw i32 %156, %155
  store i32 %add286, i32* %value127, align 4
  %157 = load i32, i32* %value127, align 4
  %cmp287 = icmp sgt i32 %157, 98
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.then.283
  store i32 98, i32* %value127, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %if.then.283
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.278
  %158 = load i32, i32* @verbose, align 4
  %tobool292 = icmp ne i32 %158, 0
  br i1 %tobool292, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.291
  br label %cond.end

cond.false:                                       ; preds = %if.end.291
  %159 = load i8*, i8** %reason, align 8
  %160 = load i32, i32* %attack_point, align 4
  %161 = load i32, i32* %value127, align 4
  %162 = load i32, i32* %pos111, align 4
  %call293 = call i8* @eyevalue_to_string(%struct.eyevalue* %eyevalue)
  %163 = load i32, i32* %pessimistic_min, align 4
  %call294 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.68, i32 0, i32 0), i8* %159, i32 %160, i32 %161, i32 %162, i8* %call293, i32 %163)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %164 = load i32, i32* %attack_point, align 4
  %idxprom295 = sext i32 %164 to i64
  %165 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx296 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %165, i64 %idxprom295
  %marginal297 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx296, i32 0, i32 7
  %166 = load i8, i8* %marginal297, align 1
  %conv298 = sext i8 %166 to i32
  %tobool299 = icmp ne i32 %conv298, 0
  br i1 %tobool299, label %land.lhs.true.300, label %if.end.309

land.lhs.true.300:                                ; preds = %cond.end
  %167 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %call301 = call i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %167, i32* %attack_point, i32 1)
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.then.303, label %if.end.309

if.then.303:                                      ; preds = %land.lhs.true.300
  %168 = load i32, i32* @verbose, align 4
  %tobool304 = icmp ne i32 %168, 0
  br i1 %tobool304, label %cond.false.306, label %cond.true.305

cond.true.305:                                    ; preds = %if.then.303
  br label %cond.end.308

cond.false.306:                                   ; preds = %if.then.303
  %169 = load i32, i32* %attack_point, align 4
  %call307 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), i32 %169)
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.306, %cond.true.305
  br label %if.end.309

if.end.309:                                       ; preds = %cond.end.308, %land.lhs.true.300, %cond.end
  %170 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %171 = load i32, i32* %attack_point, align 4
  %172 = load i32, i32* %value127, align 4
  %173 = load i8*, i8** %reason, align 8
  call void @owl_add_move(%struct.owl_move_data* %170, i32 %171, i32 %172, i8* %173, i32 1, i32 0, i32 0)
  %174 = load i32, i32* %value127, align 4
  %175 = load i32, i32* %attack_point, align 4
  %idxprom310 = sext i32 %175 to i64
  %arrayidx311 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom310
  store i32 %174, i32* %arrayidx311, align 4
  %176 = load i32, i32* %attack_point, align 4
  %177 = load i32, i32* %num_eyes, align 4
  %idxprom312 = sext i32 %177 to i64
  %arrayidx313 = getelementptr inbounds [200 x i32], [200 x i32]* %eyes_attack_points, i32 0, i64 %idxprom312
  store i32 %176, i32* %arrayidx313, align 4
  br label %if.end.382

if.else.314:                                      ; preds = %land.lhs.true.275, %if.then.273
  %178 = load i32, i32* %does_attack.addr, align 4
  %tobool315 = icmp ne i32 %178, 0
  br i1 %tobool315, label %if.end.381, label %land.lhs.true.316

land.lhs.true.316:                                ; preds = %if.else.314
  %179 = load i32, i32* %defense_point, align 4
  %cmp317 = icmp ne i32 %179, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.381

land.lhs.true.319:                                ; preds = %land.lhs.true.316
  %180 = load i32, i32* %defense_point, align 4
  %idxprom320 = sext i32 %180 to i64
  %arrayidx321 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom320
  %181 = load i8, i8* %arrayidx321, align 1
  %conv322 = zext i8 %181 to i32
  %cmp323 = icmp eq i32 %conv322, 0
  br i1 %cmp323, label %land.lhs.true.325, label %if.end.381

land.lhs.true.325:                                ; preds = %land.lhs.true.319
  %182 = load i32, i32* %defense_point, align 4
  %183 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %call326 = call i32 @liberty_of_goal(i32 %182, %struct.local_owl_data* %183)
  %tobool327 = icmp ne i32 %call326, 0
  br i1 %tobool327, label %lor.lhs.false.328, label %if.then.338

lor.lhs.false.328:                                ; preds = %land.lhs.true.325
  %184 = load i32, i32* %defense_point, align 4
  %185 = load i32, i32* %color, align 4
  %call329 = call i32 @is_self_atari(i32 %184, i32 %185)
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %lor.lhs.false.331, label %if.then.338

lor.lhs.false.331:                                ; preds = %lor.lhs.false.328
  %186 = load i32, i32* %defense_point, align 4
  %187 = load i32, i32* %color, align 4
  %call332 = call i32 @is_ko(i32 %186, i32 %187, i32* null)
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.338, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %lor.lhs.false.331
  %188 = load i32, i32* %defense_point, align 4
  %189 = load i32, i32* %color, align 4
  %call335 = call i32 @safe_move(i32 %188, i32 %189)
  %cmp336 = icmp ne i32 %call335, 0
  br i1 %cmp336, label %if.then.338, label %if.end.381

if.then.338:                                      ; preds = %lor.lhs.false.334, %lor.lhs.false.331, %lor.lhs.false.328, %land.lhs.true.325
  %190 = load i32, i32* %defense_point, align 4
  %idxprom339 = sext i32 %190 to i64
  %arrayidx340 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom339
  %191 = load i32, i32* %arrayidx340, align 4
  %cmp341 = icmp sgt i32 %191, 0
  br i1 %cmp341, label %if.then.343, label %if.end.351

if.then.343:                                      ; preds = %if.then.338
  %192 = load i32, i32* %defense_point, align 4
  %idxprom344 = sext i32 %192 to i64
  %arrayidx345 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom344
  %193 = load i32, i32* %arrayidx345, align 4
  %194 = load i32, i32* %value127, align 4
  %add346 = add nsw i32 %194, %193
  store i32 %add346, i32* %value127, align 4
  %195 = load i32, i32* %value127, align 4
  %cmp347 = icmp sgt i32 %195, 98
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.then.343
  store i32 98, i32* %value127, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.then.343
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.then.338
  %196 = load i32, i32* @verbose, align 4
  %tobool352 = icmp ne i32 %196, 0
  br i1 %tobool352, label %cond.false.354, label %cond.true.353

cond.true.353:                                    ; preds = %if.end.351
  br label %cond.end.357

cond.false.354:                                   ; preds = %if.end.351
  %197 = load i8*, i8** %reason, align 8
  %198 = load i32, i32* %defense_point, align 4
  %199 = load i32, i32* %value127, align 4
  %200 = load i32, i32* %pos111, align 4
  %call355 = call i8* @eyevalue_to_string(%struct.eyevalue* %eyevalue)
  %201 = load i32, i32* %pessimistic_min, align 4
  %call356 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.68, i32 0, i32 0), i8* %197, i32 %198, i32 %199, i32 %200, i8* %call355, i32 %201)
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.354, %cond.true.353
  %202 = load i32, i32* %defense_point, align 4
  %idxprom358 = sext i32 %202 to i64
  %203 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx359 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %203, i64 %idxprom358
  %marginal360 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx359, i32 0, i32 7
  %204 = load i8, i8* %marginal360, align 1
  %conv361 = sext i8 %204 to i32
  %tobool362 = icmp ne i32 %conv361, 0
  br i1 %tobool362, label %land.lhs.true.369, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %cond.end.357
  %205 = load i32, i32* %defense_point, align 4
  %idxprom364 = sext i32 %205 to i64
  %206 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx365 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %206, i64 %idxprom364
  %origin366 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx365, i32 0, i32 3
  %207 = load i32, i32* %origin366, align 4
  %208 = load i32, i32* %pos111, align 4
  %cmp367 = icmp ne i32 %207, %208
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.378

land.lhs.true.369:                                ; preds = %lor.lhs.false.363, %cond.end.357
  %209 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %call370 = call i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %209, i32* %defense_point, i32 0)
  %tobool371 = icmp ne i32 %call370, 0
  br i1 %tobool371, label %if.then.372, label %if.end.378

if.then.372:                                      ; preds = %land.lhs.true.369
  %210 = load i32, i32* @verbose, align 4
  %tobool373 = icmp ne i32 %210, 0
  br i1 %tobool373, label %cond.false.375, label %cond.true.374

cond.true.374:                                    ; preds = %if.then.372
  br label %cond.end.377

cond.false.375:                                   ; preds = %if.then.372
  %211 = load i32, i32* %defense_point, align 4
  %call376 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i32 0, i32 0), i32 %211)
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.375, %cond.true.374
  br label %if.end.378

if.end.378:                                       ; preds = %cond.end.377, %land.lhs.true.369, %lor.lhs.false.363
  %212 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %213 = load i32, i32* %defense_point, align 4
  %214 = load i32, i32* %value127, align 4
  %215 = load i8*, i8** %reason, align 8
  call void @owl_add_move(%struct.owl_move_data* %212, i32 %213, i32 %214, i8* %215, i32 1, i32 0, i32 0)
  %216 = load i32, i32* %value127, align 4
  %217 = load i32, i32* %defense_point, align 4
  %idxprom379 = sext i32 %217 to i64
  %arrayidx380 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom379
  store i32 %216, i32* %arrayidx380, align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.378, %lor.lhs.false.334, %land.lhs.true.319, %land.lhs.true.316, %if.else.314
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.end.309
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.end.270
  %218 = load i32, i32* %num_eyes, align 4
  %inc384 = add nsw i32 %218, 1
  store i32 %inc384, i32* %num_eyes, align 4
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.383, %land.lhs.true.120, %for.body.110
  br label %for.inc.386

for.inc.386:                                      ; preds = %if.end.385
  %219 = load i32, i32* %n, align 4
  %inc387 = add nsw i32 %219, 1
  store i32 %inc387, i32* %n, align 4
  br label %for.cond.107

for.end.388:                                      ; preds = %for.cond.107
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.end.388
  %220 = load i32, i32* %m, align 4
  %inc390 = add nsw i32 %220, 1
  store i32 %inc390, i32* %m, align 4
  br label %for.cond.103

for.end.391:                                      ; preds = %for.cond.103
  store i32 0, i32* %lunch, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.546, %for.end.391
  %221 = load i32, i32* %lunch, align 4
  %cmp393 = icmp slt i32 %221, 10
  br i1 %cmp393, label %for.body.395, label %for.end.548

for.body.395:                                     ; preds = %for.cond.392
  %222 = load i32, i32* %lunch, align 4
  %idxprom396 = sext i32 %222 to i64
  %223 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch397 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %223, i32 0, i32 6
  %arrayidx398 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch397, i32 0, i64 %idxprom396
  %224 = load i32, i32* %arrayidx398, align 4
  %cmp399 = icmp ne i32 %224, 0
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.545

land.lhs.true.401:                                ; preds = %for.body.395
  %225 = load i32, i32* %lunch, align 4
  %idxprom402 = sext i32 %225 to i64
  %226 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_defense_point = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %226, i32 0, i32 10
  %arrayidx403 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point, i32 0, i64 %idxprom402
  %227 = load i32, i32* %arrayidx403, align 4
  %cmp404 = icmp ne i32 %227, 0
  br i1 %cmp404, label %if.then.406, label %if.end.545

if.then.406:                                      ; preds = %land.lhs.true.401
  store i32 0, i32* %value407, align 4
  %228 = load i32, i32* %lunch, align 4
  %idxprom408 = sext i32 %228 to i64
  %229 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch409 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %229, i32 0, i32 6
  %arrayidx410 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch409, i32 0, i64 %idxprom408
  %230 = load i32, i32* %arrayidx410, align 4
  %231 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @sniff_lunch(i32 %230, i32* %lunch_min, i32* %lunch_probable, i32* %lunch_max, %struct.local_owl_data* %231)
  %232 = load i32, i32* %lunch_probable, align 4
  %233 = load i32, i32* %lunch_probable, align 4
  call void @set_eyevalue(%struct.eyevalue* %e, i32 0, i32 0, i32 %232, i32 %233)
  %234 = load i32, i32* %lunch_max, align 4
  %235 = load i32*, i32** %eyemax.addr, align 8
  %236 = load i32, i32* %235, align 4
  %add411 = add nsw i32 %236, %234
  store i32 %add411, i32* %235, align 4
  %237 = load i32, i32* %lunch_probable, align 4
  %cmp412 = icmp eq i32 %237, 0
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %if.then.406
  store i32 20, i32* %value407, align 4
  br label %if.end.447

if.else.415:                                      ; preds = %if.then.406
  %238 = load i32, i32* %lunch_probable, align 4
  %cmp416 = icmp eq i32 %238, 1
  br i1 %cmp416, label %land.lhs.true.418, label %if.else.427

land.lhs.true.418:                                ; preds = %if.else.415
  %239 = load i32, i32* %lunch_max, align 4
  %cmp419 = icmp eq i32 %239, 1
  br i1 %cmp419, label %if.then.421, label %if.else.427

if.then.421:                                      ; preds = %land.lhs.true.418
  %240 = load i32, i32* %lunch, align 4
  %idxprom422 = sext i32 %240 to i64
  %241 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch423 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %241, i32 0, i32 6
  %arrayidx424 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch423, i32 0, i64 %idxprom422
  %242 = load i32, i32* %arrayidx424, align 4
  %call425 = call i32 @countstones(i32 %242)
  %add426 = add nsw i32 60, %call425
  store i32 %add426, i32* %value407, align 4
  br label %if.end.446

if.else.427:                                      ; preds = %land.lhs.true.418, %if.else.415
  %243 = load i32, i32* %lunch_probable, align 4
  %cmp428 = icmp eq i32 %243, 1
  br i1 %cmp428, label %land.lhs.true.430, label %if.else.439

land.lhs.true.430:                                ; preds = %if.else.427
  %244 = load i32, i32* %lunch_max, align 4
  %cmp431 = icmp eq i32 %244, 2
  br i1 %cmp431, label %if.then.433, label %if.else.439

if.then.433:                                      ; preds = %land.lhs.true.430
  %245 = load i32, i32* %lunch, align 4
  %idxprom434 = sext i32 %245 to i64
  %246 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch435 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %246, i32 0, i32 6
  %arrayidx436 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch435, i32 0, i64 %idxprom434
  %247 = load i32, i32* %arrayidx436, align 4
  %call437 = call i32 @countstones(i32 %247)
  %add438 = add nsw i32 70, %call437
  store i32 %add438, i32* %value407, align 4
  br label %if.end.445

if.else.439:                                      ; preds = %land.lhs.true.430, %if.else.427
  %248 = load i32, i32* %lunch, align 4
  %idxprom440 = sext i32 %248 to i64
  %249 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch441 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %249, i32 0, i32 6
  %arrayidx442 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch441, i32 0, i64 %idxprom440
  %250 = load i32, i32* %arrayidx442, align 4
  %call443 = call i32 @countstones(i32 %250)
  %add444 = add nsw i32 75, %call443
  store i32 %add444, i32* %value407, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.else.439, %if.then.433
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.then.421
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.then.414
  %251 = load i32, i32* %lunch, align 4
  %idxprom448 = sext i32 %251 to i64
  %252 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_attack_code = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %252, i32 0, i32 7
  %arrayidx449 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_attack_code, i32 0, i64 %idxprom448
  %253 = load i32, i32* %arrayidx449, align 4
  %cmp450 = icmp ne i32 %253, 5
  br i1 %cmp450, label %if.then.452, label %if.end.454

if.then.452:                                      ; preds = %if.end.447
  %254 = load i32, i32* %value407, align 4
  %sub453 = sub nsw i32 %254, 10
  store i32 %sub453, i32* %value407, align 4
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.452, %if.end.447
  %255 = load i32, i32* %value407, align 4
  %cmp455 = icmp slt i32 %255, 21
  br i1 %cmp455, label %land.lhs.true.457, label %if.end.469

land.lhs.true.457:                                ; preds = %if.end.454
  %256 = load i32, i32* %lunch, align 4
  %idxprom458 = sext i32 %256 to i64
  %257 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch459 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %257, i32 0, i32 6
  %arrayidx460 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch459, i32 0, i64 %idxprom458
  %258 = load i32, i32* %arrayidx460, align 4
  %call461 = call i32 @countstones(i32 %258)
  %cmp462 = icmp eq i32 %call461, 1
  br i1 %cmp462, label %if.then.464, label %if.end.469

if.then.464:                                      ; preds = %land.lhs.true.457
  %259 = load i32, i32* %num_lunch, align 4
  %inc465 = add nsw i32 %259, 1
  store i32 %inc465, i32* %num_lunch, align 4
  %260 = load i32, i32* %num_eyes, align 4
  %inc466 = add nsw i32 %260, 1
  store i32 %inc466, i32* %num_eyes, align 4
  %idxprom467 = sext i32 %260 to i64
  %arrayidx468 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom467
  %261 = bitcast %struct.eyevalue* %arrayidx468 to i8*
  %262 = bitcast %struct.eyevalue* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %261, i8* %262, i64 4, i32 1, i1 false)
  br label %for.inc.546

if.end.469:                                       ; preds = %land.lhs.true.457, %if.end.454
  %263 = load i32, i32* %does_attack.addr, align 4
  %tobool470 = icmp ne i32 %263, 0
  br i1 %tobool470, label %if.then.471, label %if.else.525

if.then.471:                                      ; preds = %if.end.469
  %264 = load i32, i32* %lunch, align 4
  %idxprom472 = sext i32 %264 to i64
  %265 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch473 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %265, i32 0, i32 6
  %arrayidx474 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch473, i32 0, i64 %idxprom472
  %266 = load i32, i32* %arrayidx474, align 4
  %267 = load i32, i32* %lunch, align 4
  %idxprom475 = sext i32 %267 to i64
  %268 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_defense_point476 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %268, i32 0, i32 10
  %arrayidx477 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_defense_point476, i32 0, i64 %idxprom475
  %269 = load i32, i32* %arrayidx477, align 4
  %call478 = call i32 @improve_lunch_defense(i32 %266, i32 %269)
  store i32 %call478, i32* %defense_point, align 4
  %270 = load i32, i32* %defense_point, align 4
  %idxprom479 = sext i32 %270 to i64
  %arrayidx480 = getelementptr inbounds [400 x i32], [400 x i32]* %vital_values, i32 0, i64 %idxprom479
  %271 = load i32, i32* %arrayidx480, align 4
  %tobool481 = icmp ne i32 %271, 0
  br i1 %tobool481, label %if.then.482, label %if.else.511

if.then.482:                                      ; preds = %if.then.471
  store i32 0, i32* %ne, align 4
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.494, %if.then.482
  %272 = load i32, i32* %ne, align 4
  %273 = load i32, i32* %num_eyes, align 4
  %274 = load i32, i32* %num_lunch, align 4
  %sub484 = sub nsw i32 %273, %274
  %cmp485 = icmp slt i32 %272, %sub484
  br i1 %cmp485, label %for.body.487, label %for.end.496

for.body.487:                                     ; preds = %for.cond.483
  %275 = load i32, i32* %ne, align 4
  %idxprom488 = sext i32 %275 to i64
  %arrayidx489 = getelementptr inbounds [200 x i32], [200 x i32]* %eyes_attack_points, i32 0, i64 %idxprom488
  %276 = load i32, i32* %arrayidx489, align 4
  %277 = load i32, i32* %defense_point, align 4
  %cmp490 = icmp eq i32 %276, %277
  br i1 %cmp490, label %if.then.492, label %if.end.493

if.then.492:                                      ; preds = %for.body.487
  br label %for.end.496

if.end.493:                                       ; preds = %for.body.487
  br label %for.inc.494

for.inc.494:                                      ; preds = %if.end.493
  %278 = load i32, i32* %ne, align 4
  %inc495 = add nsw i32 %278, 1
  store i32 %inc495, i32* %ne, align 4
  br label %for.cond.483

for.end.496:                                      ; preds = %if.then.492, %for.cond.483
  %279 = load i32, i32* %ne, align 4
  %280 = load i32, i32* %num_eyes, align 4
  %281 = load i32, i32* %num_lunch, align 4
  %sub497 = sub nsw i32 %280, %281
  %cmp498 = icmp slt i32 %279, %sub497
  br i1 %cmp498, label %if.then.500, label %if.else.501

if.then.500:                                      ; preds = %for.end.496
  br label %if.end.502

if.else.501:                                      ; preds = %for.end.496
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2659, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.502

if.end.502:                                       ; preds = %if.else.501, %if.then.500
  %282 = load i32, i32* %ne, align 4
  %idxprom503 = sext i32 %282 to i64
  %arrayidx504 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom503
  %283 = load i32, i32* %ne, align 4
  %idxprom505 = sext i32 %283 to i64
  %arrayidx506 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom505
  call void @add_eyevalues(%struct.eyevalue* %arrayidx504, %struct.eyevalue* %e, %struct.eyevalue* %arrayidx506)
  %284 = load i32, i32* %ne, align 4
  %idxprom507 = sext i32 %284 to i64
  %arrayidx508 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom507
  %a = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %arrayidx508, i32 0, i32 0
  store i8 0, i8* %a, align 1
  %285 = load i32, i32* %ne, align 4
  %idxprom509 = sext i32 %285 to i64
  %arrayidx510 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom509
  %b = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %arrayidx510, i32 0, i32 1
  store i8 0, i8* %b, align 1
  br label %if.end.516

if.else.511:                                      ; preds = %if.then.471
  %286 = load i32, i32* %num_lunch, align 4
  %inc512 = add nsw i32 %286, 1
  store i32 %inc512, i32* %num_lunch, align 4
  %287 = load i32, i32* %num_eyes, align 4
  %inc513 = add nsw i32 %287, 1
  store i32 %inc513, i32* %num_eyes, align 4
  %idxprom514 = sext i32 %287 to i64
  %arrayidx515 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom514
  %288 = bitcast %struct.eyevalue* %arrayidx515 to i8*
  %289 = bitcast %struct.eyevalue* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %289, i64 4, i32 1, i1 false)
  br label %if.end.516

if.end.516:                                       ; preds = %if.else.511, %if.end.502
  %290 = load i32, i32* @verbose, align 4
  %tobool517 = icmp ne i32 %290, 0
  br i1 %tobool517, label %cond.false.519, label %cond.true.518

cond.true.518:                                    ; preds = %if.end.516
  br label %cond.end.524

cond.false.519:                                   ; preds = %if.end.516
  %291 = load i32, i32* %lunch, align 4
  %idxprom520 = sext i32 %291 to i64
  %292 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch521 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %292, i32 0, i32 6
  %arrayidx522 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch521, i32 0, i64 %idxprom520
  %293 = load i32, i32* %arrayidx522, align 4
  %294 = load i32, i32* %defense_point, align 4
  %295 = load i32, i32* %value407, align 4
  %call523 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i32 0, i32 0), i32 %293, i32 %294, i32 %295)
  br label %cond.end.524

cond.end.524:                                     ; preds = %cond.false.519, %cond.true.518
  %296 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %297 = load i32, i32* %defense_point, align 4
  %298 = load i32, i32* %value407, align 4
  call void @owl_add_move(%struct.owl_move_data* %296, i32 %297, i32 %298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i32 1, i32 0, i32 0)
  br label %if.end.544

if.else.525:                                      ; preds = %if.end.469
  %299 = load i32, i32* %lunch, align 4
  %idxprom526 = sext i32 %299 to i64
  %300 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch527 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %300, i32 0, i32 6
  %arrayidx528 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch527, i32 0, i64 %idxprom526
  %301 = load i32, i32* %arrayidx528, align 4
  %302 = load i32, i32* %lunch, align 4
  %idxprom529 = sext i32 %302 to i64
  %303 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch_attack_point = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %303, i32 0, i32 8
  %arrayidx530 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch_attack_point, i32 0, i64 %idxprom529
  %304 = load i32, i32* %arrayidx530, align 4
  %call531 = call i32 @improve_lunch_attack(i32 %301, i32 %304)
  store i32 %call531, i32* %attack_point, align 4
  %305 = load i32, i32* @verbose, align 4
  %tobool532 = icmp ne i32 %305, 0
  br i1 %tobool532, label %cond.false.534, label %cond.true.533

cond.true.533:                                    ; preds = %if.else.525
  br label %cond.end.539

cond.false.534:                                   ; preds = %if.else.525
  %306 = load i32, i32* %lunch, align 4
  %idxprom535 = sext i32 %306 to i64
  %307 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %lunch536 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %307, i32 0, i32 6
  %arrayidx537 = getelementptr inbounds [10 x i32], [10 x i32]* %lunch536, i32 0, i64 %idxprom535
  %308 = load i32, i32* %arrayidx537, align 4
  %309 = load i32, i32* %attack_point, align 4
  %310 = load i32, i32* %value407, align 4
  %call538 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i32 0, i32 0), i32 %308, i32 %309, i32 %310)
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.false.534, %cond.true.533
  %311 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %312 = load i32, i32* %attack_point, align 4
  %313 = load i32, i32* %value407, align 4
  call void @owl_add_move(%struct.owl_move_data* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 1, i32 0, i32 0)
  %314 = load i32, i32* %num_lunch, align 4
  %inc540 = add nsw i32 %314, 1
  store i32 %inc540, i32* %num_lunch, align 4
  %315 = load i32, i32* %num_eyes, align 4
  %inc541 = add nsw i32 %315, 1
  store i32 %inc541, i32* %num_eyes, align 4
  %idxprom542 = sext i32 %315 to i64
  %arrayidx543 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom542
  %316 = bitcast %struct.eyevalue* %arrayidx543 to i8*
  %317 = bitcast %struct.eyevalue* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %316, i8* %317, i64 4, i32 1, i1 false)
  br label %if.end.544

if.end.544:                                       ; preds = %cond.end.539, %cond.end.524
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %land.lhs.true.401, %for.body.395
  br label %for.inc.546

for.inc.546:                                      ; preds = %if.end.545, %if.then.464
  %318 = load i32, i32* %lunch, align 4
  %inc547 = add nsw i32 %318, 1
  store i32 %inc547, i32* %lunch, align 4
  br label %for.cond.392

for.end.548:                                      ; preds = %for.cond.392
  store i32 0, i32* %ne549, align 4
  br label %for.cond.550

for.cond.550:                                     ; preds = %for.inc.557, %for.end.548
  %319 = load i32, i32* %ne549, align 4
  %320 = load i32, i32* %num_eyes, align 4
  %321 = load i32, i32* %num_lunch, align 4
  %sub551 = sub nsw i32 %320, %321
  %cmp552 = icmp slt i32 %319, %sub551
  br i1 %cmp552, label %for.body.554, label %for.end.559

for.body.554:                                     ; preds = %for.cond.550
  %322 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %323 = load i32, i32* %ne549, align 4
  %idxprom555 = sext i32 %323 to i64
  %arrayidx556 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom555
  %324 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  call void @add_eyevalues(%struct.eyevalue* %322, %struct.eyevalue* %arrayidx556, %struct.eyevalue* %324)
  br label %for.inc.557

for.inc.557:                                      ; preds = %for.body.554
  %325 = load i32, i32* %ne549, align 4
  %inc558 = add nsw i32 %325, 1
  store i32 %inc558, i32* %ne549, align 4
  br label %for.cond.550

for.end.559:                                      ; preds = %for.cond.550
  %326 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call560 = call i32 @max_eyes(%struct.eyevalue* %326)
  %327 = load i32*, i32** %eyemax.addr, align 8
  %328 = load i32, i32* %327, align 4
  %add561 = add nsw i32 %328, %call560
  store i32 %add561, i32* %327, align 4
  %329 = load i32, i32* %num_eyes, align 4
  %330 = load i32, i32* %num_lunch, align 4
  %sub562 = sub nsw i32 %329, %330
  %cmp563 = icmp sgt i32 %sub562, 1
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.571

land.lhs.true.565:                                ; preds = %for.end.559
  %331 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call566 = call i32 @max_eye_threat(%struct.eyevalue* %331)
  %cmp567 = icmp sgt i32 %call566, 1
  br i1 %cmp567, label %if.then.569, label %if.end.571

if.then.569:                                      ; preds = %land.lhs.true.565
  %332 = load i32*, i32** %eyemax.addr, align 8
  %333 = load i32, i32* %332, align 4
  %add570 = add nsw i32 %333, 1
  store i32 %add570, i32* %332, align 4
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.569, %land.lhs.true.565, %for.end.559
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.578, %if.end.571
  %334 = load i32, i32* %ne549, align 4
  %335 = load i32, i32* %num_eyes, align 4
  %cmp573 = icmp slt i32 %334, %335
  br i1 %cmp573, label %for.body.575, label %for.end.580

for.body.575:                                     ; preds = %for.cond.572
  %336 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %337 = load i32, i32* %ne549, align 4
  %idxprom576 = sext i32 %337 to i64
  %arrayidx577 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %eyevalue_list, i32 0, i64 %idxprom576
  %338 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  call void @add_eyevalues(%struct.eyevalue* %336, %struct.eyevalue* %arrayidx577, %struct.eyevalue* %338)
  br label %for.inc.578

for.inc.578:                                      ; preds = %for.body.575
  %339 = load i32, i32* %ne549, align 4
  %inc579 = add nsw i32 %339, 1
  store i32 %inc579, i32* %ne549, align 4
  br label %for.cond.572

for.end.580:                                      ; preds = %for.cond.572
  %340 = load i32, i32* %save_debug, align 4
  store i32 %340, i32* @debug, align 4
  ret void
}

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @owl_shapes_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %tval = alloca i32, align 4
  %move = alloca i32, align 4
  %moves = alloca %struct.owl_move_data*, align 8
  %same_dragon = alloca i32, align 4
  %escape = alloca i32, align 4
  %defense_pos = alloca i32, align 4
  %k = alloca i32, align 4
  %k85 = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.owl_move_data*
  store %struct.owl_move_data* %1, %struct.owl_move_data** %moves, align 8
  store i32 1, i32* %same_dragon, align 4
  store i32 0, i32* %escape, align 4
  %2 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %3, i32 0, i32 11
  %4 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %move, align 4
  %7 = load i32, i32* @allpats, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.29, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx4 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %10, i64 %idxprom3
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx4, i32 0, i32 1
  %11 = load i32, i32* %value, align 4
  %cmp5 = icmp eq i32 %11, -1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx8 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %13, i64 %idxprom7
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %pos, align 4
  %15 = load i32, i32* %move, align 4
  %cmp9 = icmp eq i32 %14, %15
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end
  %16 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx12 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %17, i64 %idxprom11
  %value13 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx12, i32 0, i32 1
  %18 = load i32, i32* %value13, align 4
  %conv = sitofp i32 %18 to float
  %19 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value14 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 15
  %20 = load float, float* %value14, align 4
  %cmp15 = fcmp oge float %conv, %20
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.10
  br label %return

if.else:                                          ; preds = %if.then.10
  br label %for.end

if.end.18:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.then.6, %for.cond
  %22 = load i32, i32* %k, align 4
  %cmp19 = icmp eq i32 %22, 3
  br i1 %cmp19, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.end
  %23 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %arrayidx21 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %23, i64 2
  %value22 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx21, i32 0, i32 1
  %24 = load i32, i32* %value22, align 4
  %conv23 = sitofp i32 %24 to float
  %25 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value24 = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 15
  %26 = load float, float* %value24, align 4
  %cmp25 = fcmp oge float %conv23, %26
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %for.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %entry
  %27 = load i32, i32* %move, align 4
  %28 = load i32, i32* %color.addr, align 4
  %29 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %30 = load i32, i32* %ll.addr, align 4
  %call = call i32 @check_pattern_hard(i32 %27, i32 %28, %struct.pattern* %29, i32 %30)
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %31 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 23
  %32 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool33 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %32, null
  br i1 %tobool33, label %if.then.34, label %if.else.58

if.then.34:                                       ; preds = %if.end.32
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 3200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i32 -1, i32 -1)
  %33 = load i32, i32* @debug, align 4
  %and = and i32 %33, 256
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.34
  br label %cond.end

cond.false:                                       ; preds = %if.then.34
  %34 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 3
  %35 = load i8*, i8** %name, align 8
  %36 = load i32, i32* %ll.addr, align 4
  %37 = load i32, i32* %move, align 4
  %call36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i32 0, i32 0), i8* %35, i32 %36, i32 %37)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %38 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper37 = getelementptr inbounds %struct.pattern, %struct.pattern* %38, i32 0, i32 23
  %39 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper37, align 8
  %40 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %41 = load i32, i32* %ll.addr, align 4
  %42 = load i32, i32* %move, align 4
  %43 = load i32, i32* %color.addr, align 4
  %call38 = call i32 %39(%struct.pattern* %40, i32 %41, i32 %42, i32 %43)
  store i32 %call38, i32* %tval, align 4
  %44 = load i32, i32* %tval, align 4
  %cmp39 = icmp sgt i32 %44, 0
  br i1 %cmp39, label %if.then.41, label %if.else.49

if.then.41:                                       ; preds = %cond.end
  %45 = load i32, i32* @debug, align 4
  %and42 = and i32 %45, 256
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %cond.false.45, label %cond.true.44

cond.true.44:                                     ; preds = %if.then.41
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.41
  %46 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name46 = getelementptr inbounds %struct.pattern, %struct.pattern* %46, i32 0, i32 3
  %47 = load i8*, i8** %name46, align 8
  %48 = load i32, i32* %tval, align 4
  %49 = load i32, i32* %move, align 4
  %call47 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i32 0, i32 0), i8* %47, i32 %48, i32 %49)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  br label %if.end.57

if.else.49:                                       ; preds = %cond.end
  %50 = load i32, i32* @debug, align 4
  %and50 = and i32 %50, 256
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %cond.false.53, label %cond.true.52

cond.true.52:                                     ; preds = %if.else.49
  br label %cond.end.56

cond.false.53:                                    ; preds = %if.else.49
  %51 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name54 = getelementptr inbounds %struct.pattern, %struct.pattern* %51, i32 0, i32 3
  %52 = load i8*, i8** %name54, align 8
  %53 = load i32, i32* %move, align 4
  %call55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i32 0, i32 0), i8* %52, i32 %53)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.53, %cond.true.52
  br label %return

if.end.57:                                        ; preds = %cond.end.48
  br label %if.end.61

if.else.58:                                       ; preds = %if.end.32
  %54 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value59 = getelementptr inbounds %struct.pattern, %struct.pattern* %54, i32 0, i32 15
  %55 = load float, float* %value59, align 4
  %conv60 = fptosi float %55 to i32
  store i32 %conv60, i32* %tval, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.end.57
  %56 = load i32, i32* @verbose, align 4
  %tobool62 = icmp ne i32 %56, 0
  br i1 %tobool62, label %cond.false.64, label %cond.true.63

cond.true.63:                                     ; preds = %if.end.61
  br label %cond.end.67

cond.false.64:                                    ; preds = %if.end.61
  %57 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name65 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 3
  %58 = load i8*, i8** %name65, align 8
  %59 = load i32, i32* %move, align 4
  %60 = load i32, i32* %tval, align 4
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), i8* %58, i32 %59, i32 %60)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.63
  %61 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %61, i32 0, i32 14
  %62 = load i32, i32* %class, align 4
  %and68 = and i32 %62, 512
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %cond.end.67
  store i32 0, i32* %same_dragon, align 4
  br label %if.end.78

if.else.71:                                       ; preds = %cond.end.67
  %63 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class72 = getelementptr inbounds %struct.pattern, %struct.pattern* %63, i32 0, i32 14
  %64 = load i32, i32* %class72, align 4
  %and73 = and i32 %64, 2048
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.71
  store i32 1, i32* %same_dragon, align 4
  br label %if.end.77

if.else.76:                                       ; preds = %if.else.71
  store i32 2, i32* %same_dragon, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.70
  %65 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class79 = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 14
  %66 = load i32, i32* %class79, align 4
  %and80 = and i32 %66, 8192
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.end.78
  store i32 1, i32* %escape, align 4
  br label %if.end.84

if.else.83:                                       ; preds = %if.end.78
  store i32 0, i32* %escape, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  %67 = load i32, i32* %move, align 4
  store i32 %67, i32* %defense_pos, align 4
  store i32 0, i32* %k85, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.104, %if.end.84
  %68 = load i32, i32* %k85, align 4
  %69 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %69, i32 0, i32 1
  %70 = load i32, i32* %patlen, align 4
  %cmp87 = icmp slt i32 %68, %70
  br i1 %cmp87, label %for.body.89, label %for.end.106

for.body.89:                                      ; preds = %for.cond.86
  %71 = load i32, i32* %k85, align 4
  %idxprom90 = sext i32 %71 to i64
  %72 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %72, i32 0, i32 0
  %73 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx91 = getelementptr inbounds %struct.patval, %struct.patval* %73, i64 %idxprom90
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx91, i32 0, i32 1
  %74 = load i32, i32* %att, align 4
  %cmp92 = icmp eq i32 %74, 7
  br i1 %cmp92, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.89
  %75 = load i32, i32* %ll.addr, align 4
  %idxprom95 = sext i32 %75 to i64
  %76 = load i32, i32* %k85, align 4
  %idxprom96 = sext i32 %76 to i64
  %77 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn97 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 0
  %78 = load %struct.patval*, %struct.patval** %patn97, align 8
  %arrayidx98 = getelementptr inbounds %struct.patval, %struct.patval* %78, i64 %idxprom96
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx98, i32 0, i32 0
  %79 = load i32, i32* %offset, align 4
  %idxprom99 = sext i32 %79 to i64
  %arrayidx100 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx100, i32 0, i64 %idxprom95
  %80 = load i32, i32* %arrayidx101, align 4
  %81 = load i32, i32* %anchor.addr, align 4
  %add102 = add nsw i32 %80, %81
  store i32 %add102, i32* %defense_pos, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.94, %for.body.89
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %82 = load i32, i32* %k85, align 4
  %inc105 = add nsw i32 %82, 1
  store i32 %inc105, i32* %k85, align 4
  br label %for.cond.86

for.end.106:                                      ; preds = %for.cond.86
  %83 = load %struct.owl_move_data*, %struct.owl_move_data** %moves, align 8
  %84 = load i32, i32* %move, align 4
  %85 = load i32, i32* %tval, align 4
  %86 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name107 = getelementptr inbounds %struct.pattern, %struct.pattern* %86, i32 0, i32 3
  %87 = load i8*, i8** %name107, align 8
  %88 = load i32, i32* %same_dragon, align 4
  %89 = load i32, i32* %escape, align 4
  %90 = load i32, i32* %defense_pos, align 4
  call void @owl_add_move(%struct.owl_move_data* %83, i32 %84, i32 %85, i8* %87, i32 %88, i32 %89, i32 %90)
  br label %return

return:                                           ; preds = %for.end.106, %cond.end.56, %if.then.31, %if.then.27, %if.then.17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @owl_escape_route(%struct.local_owl_data* %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1, i32 0, i32 3
  %2 = load i32, i32* %color, align 4
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values, i32 0, i32 0
  %call = call i32 @dragon_escape(i8* %arraydecay, i32 %2, i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @liberty_of_goal(i32 %pos, %struct.local_owl_data* %owl) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %0, 20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %add2 = add nsw i32 %2, 20
  %idxprom3 = sext i32 %add2 to i64
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp ne i32 %conv8, 3
  br i1 %cmp9, label %land.lhs.true.11, label %lor.lhs.false.18

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %7 = load i32, i32* %pos.addr, align 4
  %sub12 = sub nsw i32 %7, 1
  %idxprom13 = sext i32 %sub12 to i64
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %8, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [400 x i8], [400 x i8]* %goal14, i32 0, i64 %idxprom13
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %9 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %land.lhs.true.11, %lor.lhs.false
  %10 = load i32, i32* %pos.addr, align 4
  %sub19 = sub nsw i32 %10, 20
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %11 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %cmp23 = icmp ne i32 %conv22, 3
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.32

land.lhs.true.25:                                 ; preds = %lor.lhs.false.18
  %12 = load i32, i32* %pos.addr, align 4
  %sub26 = sub nsw i32 %12, 20
  %idxprom27 = sext i32 %sub26 to i64
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal28 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [400 x i8], [400 x i8]* %goal28, i32 0, i64 %idxprom27
  %14 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %14 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.25, %lor.lhs.false.18
  %15 = load i32, i32* %pos.addr, align 4
  %add33 = add nsw i32 %15, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %16 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %16 to i32
  %cmp37 = icmp ne i32 %conv36, 3
  br i1 %cmp37, label %land.lhs.true.39, label %if.end

land.lhs.true.39:                                 ; preds = %lor.lhs.false.32
  %17 = load i32, i32* %pos.addr, align 4
  %add40 = add nsw i32 %17, 1
  %idxprom41 = sext i32 %add40 to i64
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal42 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [400 x i8], [400 x i8]* %goal42, i32 0, i64 %idxprom41
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %19 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  br i1 %tobool45, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.39, %land.lhs.true.25, %land.lhs.true.11, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.39, %lor.lhs.false.32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @safe_move(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @semeai_move_value(i32 %move, %struct.local_owl_data* %owla, %struct.local_owl_data* %owlb, i32 %raw_value) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %owla.addr = alloca %struct.local_owl_data*, align 8
  %owlb.addr = alloca %struct.local_owl_data*, align 8
  %raw_value.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %net = alloca i32, align 4
  %color = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %origin = alloca i32, align 4
  %origin57 = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store %struct.local_owl_data* %owla, %struct.local_owl_data** %owla.addr, align 8
  store %struct.local_owl_data* %owlb, %struct.local_owl_data** %owlb.addr, align 8
  store i32 %raw_value, i32* %raw_value.addr, align 4
  store i32 0, i32* %net, align 4
  %0 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %color1 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %0, i32 0, i32 3
  %1 = load i32, i32* %color1, align 4
  store i32 %1, i32* %color, align 4
  %2 = load i32, i32* @verbose, align 4
  store i32 %2, i32* %save_verbose, align 4
  %3 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 929, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @verbose, align 4
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32, i32* %color, align 4
  %call = call i32 @safe_move(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end.91

if.then.3:                                        ; preds = %if.end
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %pos, align 4
  %cmp4 = icmp slt i32 %7, 400
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.36

if.then.16:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %pos, align 4
  %call17 = call i32 @find_origin(i32 %12)
  store i32 %call17, i32* %origin, align 4
  %13 = load i32, i32* %origin, align 4
  %14 = load i32, i32* %pos, align 4
  %cmp18 = icmp ne i32 %13, %14
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  br label %for.inc

if.end.21:                                        ; preds = %if.then.16
  %15 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %tobool24 = icmp ne i8 %17, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.21
  %18 = load i32, i32* %pos, align 4
  %call26 = call i32 @countlib(i32 %18)
  %mul = mul nsw i32 75, %call26
  %19 = load i32, i32* %net, align 4
  %sub = sub nsw i32 %19, %mul
  store i32 %sub, i32* %net, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.21
  %20 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %goal29 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [400 x i8], [400 x i8]* %goal29, i32 0, i64 %idxprom28
  %22 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %22, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.27
  %23 = load i32, i32* %pos, align 4
  %call33 = call i32 @countlib(i32 %23)
  %mul34 = mul nsw i32 100, %call33
  %24 = load i32, i32* %net, align 4
  %add = add nsw i32 %24, %mul34
  store i32 %add, i32* %net, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36, %if.then.20
  %25 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %move.addr, align 4
  %27 = load i32, i32* %color, align 4
  %call37 = call i32 @trymove(i32 %26, i32 %27, i8* null, i32 0, i32 0, i32 0)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %for.end
  %28 = load i32, i32* %save_verbose, align 4
  store i32 %28, i32* @verbose, align 4
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  store i32 21, i32* %pos, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.88, %if.end.40
  %29 = load i32, i32* %pos, align 4
  %cmp42 = icmp slt i32 %29, 400
  br i1 %cmp42, label %for.body.44, label %for.end.90

for.body.44:                                      ; preds = %for.cond.41
  %30 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %31 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  %cmp48 = icmp ne i32 %conv47, 3
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.87

land.lhs.true.50:                                 ; preds = %for.body.44
  %32 = load i32, i32* %pos, align 4
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %33 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %33 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.87

if.then.56:                                       ; preds = %land.lhs.true.50
  %34 = load i32, i32* %pos, align 4
  %call58 = call i32 @find_origin(i32 %34)
  store i32 %call58, i32* %origin57, align 4
  %35 = load i32, i32* %origin57, align 4
  %36 = load i32, i32* %pos, align 4
  %cmp59 = icmp ne i32 %35, %36
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.56
  br label %for.inc.88

if.end.62:                                        ; preds = %if.then.56
  %37 = load i32, i32* %pos, align 4
  %idxprom63 = sext i32 %37 to i64
  %38 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %goal64 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %38, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [400 x i8], [400 x i8]* %goal64, i32 0, i64 %idxprom63
  %39 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %39 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %40 = load i32, i32* %pos, align 4
  %41 = load i32, i32* %move.addr, align 4
  %cmp68 = icmp eq i32 %40, %41
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %move.addr, align 4
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** %owla.addr, align 8
  %call71 = call i32 @liberty_of_goal(i32 %42, %struct.local_owl_data* %43)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %land.lhs.true.70, %if.end.62
  %44 = load i32, i32* %pos, align 4
  %call74 = call i32 @countlib(i32 %44)
  %mul75 = mul nsw i32 75, %call74
  %45 = load i32, i32* %net, align 4
  %add76 = add nsw i32 %45, %mul75
  store i32 %add76, i32* %net, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %land.lhs.true.70, %lor.lhs.false
  %46 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %46 to i64
  %47 = load %struct.local_owl_data*, %struct.local_owl_data** %owlb.addr, align 8
  %goal79 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %47, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [400 x i8], [400 x i8]* %goal79, i32 0, i64 %idxprom78
  %48 = load i8, i8* %arrayidx80, align 1
  %tobool81 = icmp ne i8 %48, 0
  br i1 %tobool81, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.end.77
  %49 = load i32, i32* %pos, align 4
  %call83 = call i32 @countlib(i32 %49)
  %mul84 = mul nsw i32 100, %call83
  %50 = load i32, i32* %net, align 4
  %sub85 = sub nsw i32 %50, %mul84
  store i32 %sub85, i32* %net, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.end.77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.50, %for.body.44
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87, %if.then.61
  %51 = load i32, i32* %pos, align 4
  %inc89 = add nsw i32 %51, 1
  store i32 %inc89, i32* %pos, align 4
  br label %for.cond.41

for.end.90:                                       ; preds = %for.cond.41
  call void @popgo()
  %52 = load i32, i32* %save_verbose, align 4
  store i32 %52, i32* @verbose, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.end
  %53 = load i32, i32* %net, align 4
  %cmp92 = icmp slt i32 %53, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store i32 0, i32* %net, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.91
  %54 = load i32, i32* %raw_value.addr, align 4
  %55 = load i32, i32* %net, align 4
  %add96 = add nsw i32 %54, %55
  store i32 %add96, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.39
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @owl_add_move(%struct.owl_move_data* %moves, i32 %move, i32 %value, i8* %reason, i32 %same_dragon, i32 %escape, i32 %defense_pos) #0 {
entry:
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %move.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %reason.addr = alloca i8*, align 8
  %same_dragon.addr = alloca i32, align 4
  %escape.addr = alloca i32, align 4
  %defense_pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i8* %reason, i8** %reason.addr, align 8
  store i32 %same_dragon, i32* %same_dragon.addr, align 4
  store i32 %escape, i32* %escape.addr, align 4
  store i32 %defense_pos, i32* %defense_pos.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* @found_matches, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %move.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x i8], [400 x i8]* @found_matches, i32 0, i64 %idxprom1
  store i8 1, i8* %arrayidx2, align 1
  %3 = load i32, i32* @matches_found, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @matches_found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %6, i64 %idxprom3
  %value5 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx4, i32 0, i32 1
  %7 = load i32, i32* %value5, align 4
  %cmp6 = icmp eq i32 %7, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.end.8:                                         ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %9, i64 %idxprom9
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx10, i32 0, i32 0
  %10 = load i32, i32* %pos, align 4
  %11 = load i32, i32* %move.addr, align 4
  %cmp11 = icmp eq i32 %10, %11
  br i1 %cmp11, label %if.then.12, label %if.end.28

if.then.12:                                       ; preds = %if.end.8
  %12 = load i32, i32* %same_dragon.addr, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %14, i64 %idxprom13
  %same_dragon15 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx14, i32 0, i32 3
  %15 = load i32, i32* %same_dragon15, align 4
  %cmp16 = icmp sgt i32 %12, %15
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.12
  %16 = load i32, i32* %same_dragon.addr, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %18, i64 %idxprom18
  %same_dragon20 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx19, i32 0, i32 3
  store i32 %16, i32* %same_dragon20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.12
  %19 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %20, i64 %idxprom22
  %escape24 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx23, i32 0, i32 4
  %21 = load i32, i32* %escape24, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.21
  store i32 0, i32* %escape.addr, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.21
  br label %for.end

if.end.28:                                        ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %22 = load i32, i32* %k, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.27, %if.then.7, %for.cond
  %23 = load i32, i32* %k, align 4
  %cmp30 = icmp slt i32 %23, 3
  br i1 %cmp30, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.end
  %24 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %25, i64 %idxprom31
  %value33 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx32, i32 0, i32 1
  %26 = load i32, i32* %value33, align 4
  %27 = load i32, i32* %value.addr, align 4
  %cmp34 = icmp sge i32 %26, %27
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  br label %for.end.76

if.end.36:                                        ; preds = %land.lhs.true, %for.end
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.75, %if.end.36
  %28 = load i32, i32* %k, align 4
  %cmp38 = icmp sge i32 %28, 0
  br i1 %cmp38, label %for.body.39, label %for.end.76

for.body.39:                                      ; preds = %for.cond.37
  %29 = load i32, i32* %k, align 4
  %cmp40 = icmp eq i32 %29, 0
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.39
  %30 = load i32, i32* %value.addr, align 4
  %31 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom41 = sext i32 %sub to i64
  %32 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i64 %idxprom41
  %value43 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx42, i32 0, i32 1
  %33 = load i32, i32* %value43, align 4
  %cmp44 = icmp sle i32 %30, %33
  br i1 %cmp44, label %if.then.45, label %if.end.66

if.then.45:                                       ; preds = %lor.lhs.false, %for.body.39
  %34 = load i32, i32* %k, align 4
  %cmp46 = icmp slt i32 %34, 3
  br i1 %cmp46, label %if.then.47, label %if.end.65

if.then.47:                                       ; preds = %if.then.45
  %35 = load i32, i32* %move.addr, align 4
  %36 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %36 to i64
  %37 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %37, i64 %idxprom48
  %pos50 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx49, i32 0, i32 0
  store i32 %35, i32* %pos50, align 4
  %38 = load i32, i32* %value.addr, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %39 to i64
  %40 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %40, i64 %idxprom51
  %value53 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx52, i32 0, i32 1
  store i32 %38, i32* %value53, align 4
  %41 = load i8*, i8** %reason.addr, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %43, i64 %idxprom54
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx55, i32 0, i32 2
  store i8* %41, i8** %name, align 8
  %44 = load i32, i32* %same_dragon.addr, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %45 to i64
  %46 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %46, i64 %idxprom56
  %same_dragon58 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx57, i32 0, i32 3
  store i32 %44, i32* %same_dragon58, align 4
  %47 = load i32, i32* %escape.addr, align 4
  %48 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %48 to i64
  %49 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %49, i64 %idxprom59
  %escape61 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx60, i32 0, i32 4
  store i32 %47, i32* %escape61, align 4
  %50 = load i32, i32* %defense_pos.addr, align 4
  %51 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %52, i64 %idxprom62
  %defense_pos64 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx63, i32 0, i32 5
  store i32 %50, i32* %defense_pos64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.47, %if.then.45
  br label %for.end.76

if.end.66:                                        ; preds = %lor.lhs.false
  %53 = load i32, i32* %k, align 4
  %cmp67 = icmp slt i32 %53, 3
  br i1 %cmp67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.end.66
  %54 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %55, i64 %idxprom69
  %56 = load i32, i32* %k, align 4
  %sub71 = sub nsw i32 %56, 1
  %idxprom72 = sext i32 %sub71 to i64
  %57 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %57, i64 %idxprom72
  %58 = bitcast %struct.owl_move_data* %arrayidx70 to i8*
  %59 = bitcast %struct.owl_move_data* %arrayidx73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.end.66
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %60 = load i32, i32* %k, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.37

for.end.76:                                       ; preds = %if.then.35, %if.end.65, %for.cond.37
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_semeai_backfilling_move(i32 %worm, i32 %liberty) #0 {
entry:
  %retval = alloca i32, align 4
  %worm.addr = alloca i32, align 4
  %liberty.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %result = alloca i32, align 4
  %fill = alloca i32, align 4
  store i32 %worm, i32* %worm.addr, align 4
  store i32 %liberty, i32* %liberty.addr, align 4
  %0 = load i32, i32* %worm.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  %3 = load i32, i32* @stackp, align 4
  %4 = load i32, i32* @backfill_depth, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %liberty.addr, align 4
  %6 = load i32, i32* %other, align 4
  %call = call i32 @safe_move(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %liberty.addr, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %liberty.addr, align 4
  %9 = load i32, i32* %other, align 4
  %call4 = call i32 @is_self_atari(i32 %8, i32 %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.end.3
  %10 = load i32, i32* %liberty.addr, align 4
  %11 = load i32, i32* %other, align 4
  %call7 = call i32 @approxlib(i32 %10, i32 %11, i32 1, i32* %fill)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.6
  %12 = load i32, i32* %fill, align 4
  %13 = load i32, i32* %other, align 4
  %14 = load i32, i32* %worm.addr, align 4
  %call10 = call i32 @trymove(i32 %12, i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i32 0, i32 0), i32 %14, i32 0, i32 0)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %liberty.addr, align 4
  %16 = load i32, i32* %other, align 4
  %call13 = call i32 @safe_move(i32 %15, i32 %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %17 = load i32, i32* %fill, align 4
  store i32 %17, i32* %result, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then.12
  %18 = load i32, i32* %worm.addr, align 4
  %19 = load i32, i32* %liberty.addr, align 4
  %call16 = call i32 @find_semeai_backfilling_move(i32 %18, i32 %19)
  store i32 %call16, i32* %result, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  call void @popgo()
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.then.6
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.3
  %20 = load i32, i32* %result, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %21 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %21 to i32
  %cmp23 = icmp ne i32 %conv22, 3
  br i1 %cmp23, label %land.lhs.true.25, label %if.else.29

land.lhs.true.25:                                 ; preds = %if.end.19
  %22 = load i32, i32* %result, align 4
  %23 = load i32, i32* %other, align 4
  %call26 = call i32 @safe_move(i32 %22, i32 %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.25
  %24 = load i32, i32* %result, align 4
  store i32 %24, i32* %retval
  br label %return

if.else.29:                                       ; preds = %land.lhs.true.25, %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.29, %if.then.28, %if.then.2, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @countlib(i32) #1

declare i32 @semeai_trymove(i32, i32, i8*, i32, i32, i32, i32) #1

declare void @dump_stack() #1

; Function Attrs: nounwind uwtable
define internal void @push_owl(%struct.local_owl_data** %owla, %struct.local_owl_data** %owlb) #0 {
entry:
  %owla.addr = alloca %struct.local_owl_data**, align 8
  %owlb.addr = alloca %struct.local_owl_data**, align 8
  %num_a = alloca i32, align 4
  %num_b = alloca i32, align 4
  %old_stack_loc = alloca %struct.local_owl_data*, align 8
  store %struct.local_owl_data** %owla, %struct.local_owl_data*** %owla.addr, align 8
  store %struct.local_owl_data** %owlb, %struct.local_owl_data*** %owlb.addr, align 8
  %0 = load i32, i32* @owl_stack_pointer, align 4
  %1 = load i32, i32* @owl_stack_size, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp eq i32 %0, %sub
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @owl_stack_pointer, align 4
  %3 = load i32, i32* @owl_stack_size, align 4
  %sub1 = sub nsw i32 %3, 2
  %cmp2 = icmp eq i32 %2, %sub1
  br i1 %cmp2, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %tobool = icmp ne %struct.local_owl_data** %4, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.local_owl_data**, %struct.local_owl_data*** %owla.addr, align 8
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %number_in_stack = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 15
  %7 = load i32, i32* %number_in_stack, align 4
  store i32 %7, i32* %num_a, align 4
  store i32 0, i32* %num_b, align 4
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  store %struct.local_owl_data* %8, %struct.local_owl_data** %old_stack_loc, align 8
  %9 = load %struct.local_owl_data**, %struct.local_owl_data*** %owla.addr, align 8
  %10 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %11 = load i32, i32* %num_a, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i64 %idxprom
  %cmp3 = icmp eq %struct.local_owl_data* %10, %arrayidx
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5075, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %tobool5 = icmp ne %struct.local_owl_data** %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %number_in_stack7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i32 0, i32 15
  %16 = load i32, i32* %number_in_stack7, align 4
  store i32 %16, i32* %num_b, align 4
  %17 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %17, align 8
  %19 = load i32, i32* %num_b, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx9 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %20, i64 %idxprom8
  %cmp10 = icmp eq %struct.local_owl_data* %18, %arrayidx9
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.then.6
  br label %if.end.13

if.else.12:                                       ; preds = %if.then.6
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5078, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %21 = load i32, i32* @owl_stack_size, align 4
  %add = add nsw i32 %21, 2
  store i32 %add, i32* @owl_stack_size, align 4
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %23 = bitcast %struct.local_owl_data* %22 to i8*
  %24 = load i32, i32* @owl_stack_size, align 4
  %conv = sext i32 %24 to i64
  %mul = mul i64 %conv, 35816
  %call = call i8* @realloc(i8* %23, i64 %mul) #2
  %25 = bitcast i8* %call to %struct.local_owl_data*
  store %struct.local_owl_data* %25, %struct.local_owl_data** @owl_stack, align 8
  %26 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %cmp15 = icmp ne %struct.local_owl_data* %26, null
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.14
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.14
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %27 = load i32, i32* %num_a, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx21 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %28, i64 %idxprom20
  %29 = load %struct.local_owl_data**, %struct.local_owl_data*** %owla.addr, align 8
  store %struct.local_owl_data* %arrayidx21, %struct.local_owl_data** %29, align 8
  %30 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %tobool22 = icmp ne %struct.local_owl_data** %30, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %31 = load i32, i32* %num_b, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx25 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i64 %idxprom24
  %33 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  store %struct.local_owl_data* %arrayidx25, %struct.local_owl_data** %33, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %lor.lhs.false
  %34 = load %struct.local_owl_data**, %struct.local_owl_data*** %owla.addr, align 8
  call void @do_push_owl(%struct.local_owl_data** %34)
  %35 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  %tobool28 = icmp ne %struct.local_owl_data** %35, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %36 = load %struct.local_owl_data**, %struct.local_owl_data*** %owlb.addr, align 8
  call void @do_push_owl(%struct.local_owl_data** %36)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pop_owl(%struct.local_owl_data** %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data**, align 8
  store %struct.local_owl_data** %owl, %struct.local_owl_data*** %owl.addr, align 8
  %0 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1, i64 %idxprom
  %restore_from = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %arrayidx, i32 0, i32 14
  %2 = load i32, i32* %restore_from, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i64 %idxprom1
  %4 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  store %struct.local_owl_data* %arrayidx2, %struct.local_owl_data** %4, align 8
  %5 = load i32, i32* @owl_stack_pointer, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @owl_stack_pointer, align 4
  ret void
}

declare i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

declare void @find_superstring_stones_and_liberties(i32, i32*, i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @clear_owl_move_data(%struct.owl_move_data* %moves) #0 {
entry:
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %k = alloca i32, align 4
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %2, i64 %idxprom
  %pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx, i32 0, i32 0
  store i32 0, i32* %pos, align 4
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %4, i64 %idxprom1
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx2, i32 0, i32 1
  store i32 -1, i32* %value, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %6, i64 %idxprom3
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx4, i32 0, i32 2
  store i8* null, i8** %name, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %8, i64 %idxprom5
  %same_dragon = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx6, i32 0, i32 3
  store i32 2, i32* %same_dragon, align 4
  %9 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %10, i64 %idxprom7
  %escape = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %escape, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @find_half_and_false_eyes(i32, %struct.eye_data*, %struct.half_eye_data*, i8*) #1

declare void @set_eyevalue(%struct.eyevalue*, i32, i32, i32, i32) #1

declare void @compute_eyes_pessimistic(i32, %struct.eyevalue*, i32*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*) #1

declare i32 @eye_move_urgency(%struct.eyevalue*) #1

declare i8* @eyevalue_to_string(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define internal i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %owl, i32* %vital_point, i32 %is_attack_point) #0 {
entry:
  %retval = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %vital_point.addr = alloca i32*, align 8
  %is_attack_point.addr = alloca i32, align 4
  %up = alloca i32, align 4
  %right = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32* %vital_point, i32** %vital_point.addr, align 8
  store i32 %is_attack_point, i32* %is_attack_point.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %up, align 4
  %3 = load i32*, i32** %vital_point.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %up, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load i32*, i32** %vital_point.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %up, align 4
  %add = add nsw i32 %8, %9
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc

if.end.11:                                        ; preds = %if.end
  %11 = load i32, i32* %k, align 4
  %add12 = add nsw i32 %11, 1
  %rem = srem i32 %add12, 4
  %idxprom13 = sext i32 %rem to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  store i32 %12, i32* %right, align 4
  %13 = load i32*, i32** %vital_point.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %right, align 4
  %add15 = add nsw i32 %14, %15
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %17 = load i32*, i32** %vital_point.addr, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %right, align 4
  %sub21 = sub nsw i32 %18, %19
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %20 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.11
  br label %for.inc

if.end.28:                                        ; preds = %lor.lhs.false
  %21 = load i32*, i32** %vital_point.addr, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %up, align 4
  %mul = mul nsw i32 2, %23
  %add29 = add nsw i32 %22, %mul
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %24 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %24 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %if.then.51, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.28
  %25 = load i32*, i32** %vital_point.addr, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %up, align 4
  %add36 = add nsw i32 %26, %27
  %28 = load i32, i32* %right, align 4
  %add37 = add nsw i32 %add36, %28
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %29 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.35
  %30 = load i32*, i32** %vital_point.addr, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %up, align 4
  %add44 = add nsw i32 %31, %32
  %33 = load i32, i32* %right, align 4
  %sub45 = sub nsw i32 %add44, %33
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %34 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.35, %if.end.28
  %35 = load i32, i32* %up, align 4
  %36 = load i32*, i32** %vital_point.addr, align 8
  %37 = load i32, i32* %36, align 4
  %add52 = add nsw i32 %37, %35
  store i32 %add52, i32* %36, align 4
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.53, %if.then.27, %if.then.10, %if.then
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %is_attack_point.addr, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.end.83, label %if.then.54

if.then.54:                                       ; preds = %for.end
  %40 = load i32*, i32** %vital_point.addr, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %42, i32 0, i32 3
  %43 = load i32, i32* %color, align 4
  %sub55 = sub nsw i32 3, %43
  %call = call i32 @approxlib(i32 %41, i32 %sub55, i32 1, i32* null)
  %cmp56 = icmp eq i32 %call, 0
  br i1 %cmp56, label %if.then.58, label %if.end.82

if.then.58:                                       ; preds = %if.then.54
  store i32 4, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.79, %if.then.58
  %44 = load i32, i32* %k, align 4
  %cmp60 = icmp slt i32 %44, 8
  br i1 %cmp60, label %for.body.62, label %for.end.81

for.body.62:                                      ; preds = %for.cond.59
  %45 = load i32*, i32** %vital_point.addr, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom63
  %48 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %46, %48
  store i32 %add65, i32* %pos, align 4
  %49 = load i32, i32* %pos, align 4
  %idxprom66 = sext i32 %49 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %50 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %50 to i32
  %51 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color69 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %51, i32 0, i32 3
  %52 = load i32, i32* %color69, align 4
  %sub70 = sub nsw i32 3, %52
  %cmp71 = icmp eq i32 %conv68, %sub70
  br i1 %cmp71, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %for.body.62
  %53 = load i32, i32* %pos, align 4
  %call73 = call i32 @countlib(i32 %53)
  %cmp74 = icmp eq i32 %call73, 1
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %pos, align 4
  %55 = load i32*, i32** %vital_point.addr, align 8
  %call77 = call i32 @findlib(i32 %54, i32 1, i32* %55)
  store i32 1, i32* %retval
  br label %return

if.end.78:                                        ; preds = %land.lhs.true, %for.body.62
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %56 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %56, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.59

for.end.81:                                       ; preds = %for.cond.59
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %if.then.54
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.76, %if.then.51
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @is_self_atari(i32, i32) #1

declare i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @improve_lunch_defense(i32 %lunch, i32 %defense_point) #0 {
entry:
  %retval = alloca i32, align 4
  %lunch.addr = alloca i32, align 4
  %defense_point.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %pos2 = alloca i32, align 4
  store i32 %lunch, i32* %lunch.addr, align 4
  store i32 %defense_point, i32* %defense_point.addr, align 4
  %0 = load i32, i32* %lunch.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %defense_point.addr, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %pos, align 4
  %6 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %8
  %cmp7 = icmp eq i32 %conv6, %sub
  br i1 %cmp7, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %pos, align 4
  %call = call i32 @countlib(i32 %9)
  %cmp9 = icmp eq i32 %call, 2
  br i1 %cmp9, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call11 = call i32 @findlib(i32 %10, i32 2, i32* %arraydecay)
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %11 = load i32, i32* %arrayidx12, align 4
  %12 = load i32, i32* %defense_point.addr, align 4
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %13 = load i32, i32* %arrayidx16, align 4
  store i32 %13, i32* %pos2, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %14 = load i32, i32* %arrayidx17, align 4
  store i32 %14, i32* %pos2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %15 = load i32, i32* %pos2, align 4
  %16 = load i32, i32* %color, align 4
  %call18 = call i32 @accuratelib(i32 %15, i32 %16, i32 241, i32* null)
  %17 = load i32, i32* %defense_point.addr, align 4
  %18 = load i32, i32* %color, align 4
  %call19 = call i32 @accuratelib(i32 %17, i32 %18, i32 241, i32* null)
  %cmp20 = icmp sgt i32 %call18, %call19
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.27

land.lhs.true.22:                                 ; preds = %if.end
  %19 = load i32, i32* %pos2, align 4
  %20 = load i32, i32* %lunch.addr, align 4
  %call23 = call i32 @does_defend(i32 %19, i32 %20)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %land.lhs.true.22
  %21 = load i32, i32* @verbose, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.24
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  %22 = load i32, i32* %lunch.addr, align 4
  %23 = load i32, i32* %defense_point.addr, align 4
  %24 = load i32, i32* %pos2, align 4
  %call26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %25 = load i32, i32* %pos2, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.22, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %defense_point.addr, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define internal i32 @improve_lunch_attack(i32 %lunch, i32 %attack_point) #0 {
entry:
  %retval = alloca i32, align 4
  %lunch.addr = alloca i32, align 4
  %attack_point.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %lunch, i32* %lunch.addr, align 4
  store i32 %attack_point, i32* %attack_point.addr, align 4
  %0 = load i32, i32* %lunch.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 3, %conv
  store i32 %sub, i32* %color, align 4
  %2 = load i32, i32* %attack_point.addr, align 4
  %3 = load i32, i32* %color, align 4
  %call = call i32 @safe_move(i32 %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %attack_point.addr, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %attack_point.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %6, %8
  store i32 %add, i32* %pos, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %11 = load i32, i32* %color, align 4
  %cmp7 = icmp eq i32 %conv6, %11
  br i1 %cmp7, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %pos, align 4
  %call9 = call i32 @attack(i32 %12, i32* null)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.23

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %pos, align 4
  %call12 = call i32 @find_defense(i32 %13, i32* %defense_point)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.23

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %14 = load i32, i32* %defense_point, align 4
  %cmp15 = icmp ne i32 %14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %15 = load i32, i32* %defense_point, align 4
  %16 = load i32, i32* %lunch.addr, align 4
  %call18 = call i32 @does_attack(i32 %15, i32 %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %land.lhs.true.17
  %17 = load i32, i32* @verbose, align 4
  %tobool21 = icmp ne i32 %17, 0
  br i1 %tobool21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %18 = load i32, i32* %lunch.addr, align 4
  %19 = load i32, i32* %attack_point.addr, align 4
  %20 = load i32, i32* %defense_point, align 4
  %call22 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i32 0, i32 0), i32 %18, i32 %19, i32 %20)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %21 = load i32, i32* %defense_point, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %attack_point.addr, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @max_eye_threat(%struct.eyevalue*) #1

declare i32 @approxlib(i32, i32, i32, i32*) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @does_defend(i32, i32) #1

declare i32 @find_defense(i32, i32*) #1

declare i32 @does_attack(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_pattern_hard(i32 %move, i32 %color, %struct.pattern* %pattern, i32 %ll) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %constraint_checked = alloca i32, align 4
  %safe_move_checked = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i32 0, i32* %constraint_checked, align 4
  store i32 0, i32* %safe_move_checked, align 4
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 14
  %1 = load i32, i32* %class, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %safe_move_cache = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 13
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* %safe_move_cache, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* %move.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %safe_move_cache4 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 13
  %arrayidx5 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_move_cache4, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  store i32 1, i32* %safe_move_checked, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 22
  %9 = load i32, i32* %autohelper_flag, align 4
  %and10 = and i32 %9, 1
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.9
  %10 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %constraint_cost = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 26
  %11 = load float, float* %constraint_cost, align 4
  %conv12 = fpext float %11 to double
  %cmp13 = fcmp olt double %conv12, 4.500000e-01
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %land.lhs.true
  %12 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %12, i32 0, i32 24
  %13 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %14 = load i32, i32* %ll.addr, align 4
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call = call i32 %13(i32 %14, i32 %15, i32 %16, i32 0)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  store i32 1, i32* %constraint_checked, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %land.lhs.true, %if.end.9
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class20 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 14
  %18 = load i32, i32* %class20, align 4
  %and21 = and i32 %18, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end.34, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end.19
  %19 = load i32, i32* %safe_move_checked, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %if.end.34, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.23
  %20 = load i32, i32* %move.addr, align 4
  %21 = load i32, i32* %color.addr, align 4
  %call26 = call i32 @owl_safe_move(i32 %20, i32 %21)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  %22 = load i32, i32* %move.addr, align 4
  %23 = load i32, i32* %color.addr, align 4
  %call30 = call i32 @is_legal(i32 %22, i32 %23)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.23, %if.end.19
  %24 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class35 = getelementptr inbounds %struct.pattern, %struct.pattern* %24, i32 0, i32 14
  %25 = load i32, i32* %class35, align 4
  %and36 = and i32 %25, 32
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.end.34
  %26 = load i32, i32* %move.addr, align 4
  %27 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %27
  %call39 = call i32 @safe_move(i32 %26, i32 %sub)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.34
  %28 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag45 = getelementptr inbounds %struct.pattern, %struct.pattern* %28, i32 0, i32 22
  %29 = load i32, i32* %autohelper_flag45, align 4
  %and46 = and i32 %29, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.56

land.lhs.true.48:                                 ; preds = %if.end.44
  %30 = load i32, i32* %constraint_checked, align 4
  %tobool49 = icmp ne i32 %30, 0
  br i1 %tobool49, label %if.end.56, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %31 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper51 = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 24
  %32 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper51, align 8
  %33 = load i32, i32* %ll.addr, align 4
  %34 = load i32, i32* %move.addr, align 4
  %35 = load i32, i32* %color.addr, align 4
  %call52 = call i32 %32(i32 %33, i32 %34, i32 %35, i32 0)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.then.50
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.50
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.48, %if.end.44
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.54, %if.then.42, %if.then.32, %if.then.28, %if.then.17, %if.then.7
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @owl_safe_move(i32 %move, i32 %color) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %acode = alloca i32, align 4
  %safe = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %safe, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %move.addr, align 4
  %call1 = call i32 @attack(i32 %2, i32* null)
  store i32 %call1, i32* %acode, align 4
  %3 = load i32, i32* %acode, align 4
  %cmp = icmp ne i32 %3, 5
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %safe, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %safe, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %lunches_are_current = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %4, i32 0, i32 12
  store i32 0, i32* %lunches_are_current, align 4
  call void @popgo()
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %safe, align 4
  %add = add nsw i32 %5, 1
  %conv = trunc i32 %add to i8
  %6 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %safe_move_cache = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 13
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* %safe_move_cache, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %8 = load i32, i32* %safe, align 4
  ret i32 %8
}

declare i32 @dragon_escape(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @do_push_owl(%struct.local_owl_data** %owl) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data**, align 8
  store %struct.local_owl_data** %owl, %struct.local_owl_data*** %owl.addr, align 8
  %0 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %1 = load %struct.local_owl_data*, %struct.local_owl_data** %0, align 8
  %number_in_stack = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1, i32 0, i32 15
  %2 = load i32, i32* %number_in_stack, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i64 %idxprom
  %4 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %5 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %cmp = icmp eq %struct.local_owl_data* %arrayidx, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 5039, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @owl_stack_pointer, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @owl_stack_pointer, align 4
  %7 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %8, i64 %idxprom1
  %9 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %10 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %11 = bitcast %struct.local_owl_data* %arrayidx2 to i8*
  %12 = bitcast %struct.local_owl_data* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 35816, i32 4, i1 false)
  %13 = load i32, i32* @owl_stack_pointer, align 4
  %14 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i64 %idxprom3
  %number_in_stack5 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %arrayidx4, i32 0, i32 15
  store i32 %13, i32* %number_in_stack5, align 4
  %16 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %16, align 8
  %number_in_stack6 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %17, i32 0, i32 15
  %18 = load i32, i32* %number_in_stack6, align 4
  %19 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %20, i64 %idxprom7
  %restore_from = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %arrayidx8, i32 0, i32 14
  store i32 %18, i32* %restore_from, align 4
  %21 = load i32, i32* @owl_stack_pointer, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %arrayidx10 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i64 %idxprom9
  %23 = load %struct.local_owl_data**, %struct.local_owl_data*** %owl.addr, align 8
  store %struct.local_owl_data* %arrayidx10, %struct.local_owl_data** %23, align 8
  ret void
}

declare i32 @get_read_result(i32, i32, i32, i32*, %struct.read_result_t**) #1

declare void @sgf_trace(i8*, i32, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reading_limit_reached(i8** %live_reason, i32 %this_variation_number) #0 {
entry:
  %retval = alloca i32, align 4
  %live_reason.addr = alloca i8**, align 8
  %this_variation_number.addr = alloca i32, align 4
  store i8** %live_reason, i8*** %live_reason.addr, align 8
  store i32 %this_variation_number, i32* %this_variation_number.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %1 = load i32, i32* @owl_reading_depth, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %this_variation_number.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.113, i32 0, i32 0), i32 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = load i8**, i8*** %live_reason.addr, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.114, i32 0, i32 0), i8** %4, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @local_owl_node_counter, align 4
  %6 = load i32, i32* @owl_node_limit, align 4
  %cmp1 = icmp sge i32 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* @result_certain, align 4
  %7 = load i32, i32* @verbose, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %cond.false.5, label %cond.true.4

cond.true.4:                                      ; preds = %if.then.2
  br label %cond.end.7

cond.false.5:                                     ; preds = %if.then.2
  %8 = load i32, i32* %this_variation_number.addr, align 4
  %call6 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.115, i32 0, i32 0), i32 %8)
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.5, %cond.true.4
  %9 = load i8**, i8*** %live_reason.addr, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8** %9, align 8
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %cond.end.7, %cond.end
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @owl_estimate_life(%struct.local_owl_data* %owl, %struct.owl_move_data* %vital_moves, i8** %live_reason, i32 %komaster, i32 %does_attack, %struct.eyevalue* %probable_eyes, i32* %eyemin, i32* %eyemax) #0 {
entry:
  %retval = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %vital_moves.addr = alloca %struct.owl_move_data*, align 8
  %live_reason.addr = alloca i8**, align 8
  %komaster.addr = alloca i32, align 4
  %does_attack.addr = alloca i32, align 4
  %probable_eyes.addr = alloca %struct.eyevalue*, align 8
  %eyemin.addr = alloca i32*, align 8
  %eyemax.addr = alloca i32*, align 8
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %dummy_moves = alloca [3 x %struct.owl_move_data], align 16
  %other = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store %struct.owl_move_data* %vital_moves, %struct.owl_move_data** %vital_moves.addr, align 8
  store i8** %live_reason, i8*** %live_reason.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %does_attack, i32* %does_attack.addr, align 4
  store %struct.eyevalue* %probable_eyes, %struct.eyevalue** %probable_eyes.addr, align 8
  store i32* %eyemin, i32** %eyemin.addr, align 8
  store i32* %eyemax, i32** %eyemax.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  %2 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %2, i32 0, i32 3
  %3 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %3
  store i32 %sub, i32* %other, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %5 = load i32, i32* %komaster.addr, align 4
  %6 = load i32, i32* %does_attack.addr, align 4
  %7 = load %struct.owl_move_data*, %struct.owl_move_data** %vital_moves.addr, align 8
  %8 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %9 = load i32*, i32** %eyemin.addr, align 8
  %10 = load i32*, i32** %eyemax.addr, align 8
  call void @owl_determine_life(%struct.local_owl_data* %4, %struct.local_owl_data* null, i32 %5, i32 %6, %struct.owl_move_data* %7, %struct.eyevalue* %8, i32* %9, i32* %10)
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  %11 = load i32, i32* @level, align 4
  %cmp = icmp sge i32 %11, 9
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %does_attack.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %dummy_moves, i32 0, i32 0
  call void @clear_owl_move_data(%struct.owl_move_data* %arraydecay)
  %13 = load i32, i32* %other, align 4
  %arraydecay2 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %dummy_moves, i32 0, i32 0
  %14 = bitcast %struct.owl_move_data* %arraydecay2 to i8*
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %13, %struct.pattern_db* @owl_vital_apat_db, i8* %14, i8* %arraydecay3)
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %16 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call = call i32 @max_eyes(%struct.eyevalue* %16)
  %cmp4 = icmp sge i32 %call, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %17 = load i32, i32* %other, align 4
  %18 = load %struct.owl_move_data*, %struct.owl_move_data** %vital_moves.addr, align 8
  %19 = bitcast %struct.owl_move_data* %18 to i8*
  %20 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal6 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %20, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [400 x i8], [400 x i8]* %goal6, i32 0, i32 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %17, %struct.pattern_db* @owl_vital_apat_db, i8* %19, i8* %arraydecay7)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %21 = load i32, i32* @debug, align 4
  %and = and i32 %21, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.9
  %22 = load i32, i32* @debug, align 4
  %and11 = and i32 %22, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %23 = load i32*, i32** %eyemin.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @matches_found, align 4
  %call14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i32 0, i32 0), i32 %24, i32 %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %if.end.9
  %26 = load i32*, i32** %eyemin.addr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @matches_found, align 4
  %cmp16 = icmp sge i32 %27, %28
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.15
  %29 = load i32, i32* @matches_found, align 4
  %30 = load i32*, i32** %eyemin.addr, align 8
  %31 = load i32, i32* %30, align 4
  %sub18 = sub nsw i32 %31, %29
  store i32 %sub18, i32* %30, align 4
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.15
  %32 = load i32*, i32** %eyemin.addr, align 8
  store i32 0, i32* %32, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.17
  %33 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %33, %struct.SGFTree_t** @sgf_dumptree, align 8
  %34 = load i32, i32* %save_count_variations, align 4
  store i32 %34, i32* @count_variations, align 4
  %35 = load i32*, i32** %eyemin.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp21 = icmp sge i32 %36, 2
  br i1 %cmp21, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %37 = load i32*, i32** %eyemin.addr, align 8
  %38 = load i32, i32* %37, align 4
  %cmp22 = icmp eq i32 %38, 1
  br i1 %cmp22, label %land.lhs.true.23, label %lor.lhs.false.26

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %39 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call24 = call i32 @min_eyes(%struct.eyevalue* %39)
  %cmp25 = icmp sge i32 %call24, 4
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.23, %lor.lhs.false
  %40 = load i32, i32* @stackp, align 4
  %41 = load i32, i32* @owl_distrust_depth, align 4
  %cmp27 = icmp sgt i32 %40, %41
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.54

land.lhs.true.28:                                 ; preds = %lor.lhs.false.26
  %42 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call29 = call i32 @min_eyes(%struct.eyevalue* %42)
  %cmp30 = icmp sge i32 %call29, 2
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.54

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %43 = load i32, i32* @matches_found, align 4
  %tobool32 = icmp ne i32 %43, 0
  br i1 %tobool32, label %if.end.54, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31, %land.lhs.true.23, %if.end.20
  %44 = load i32*, i32** %eyemin.addr, align 8
  %45 = load i32, i32* %44, align 4
  %cmp34 = icmp sge i32 %45, 2
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.then.33
  %46 = load i8**, i8*** %live_reason.addr, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.118, i32 0, i32 0), i8** %46, align 8
  br label %if.end.53

if.else.36:                                       ; preds = %if.then.33
  %47 = load i32*, i32** %eyemin.addr, align 8
  %48 = load i32, i32* %47, align 4
  %cmp37 = icmp eq i32 %48, 1
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.42

land.lhs.true.38:                                 ; preds = %if.else.36
  %49 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call39 = call i32 @min_eyes(%struct.eyevalue* %49)
  %cmp40 = icmp sge i32 %call39, 4
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.38
  %50 = load i8**, i8*** %live_reason.addr, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.119, i32 0, i32 0), i8** %50, align 8
  br label %if.end.52

if.else.42:                                       ; preds = %land.lhs.true.38, %if.else.36
  %51 = load i32, i32* @stackp, align 4
  %52 = load i32, i32* @owl_distrust_depth, align 4
  %cmp43 = icmp sgt i32 %51, %52
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.50

land.lhs.true.44:                                 ; preds = %if.else.42
  %53 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call45 = call i32 @min_eyes(%struct.eyevalue* %53)
  %cmp46 = icmp sge i32 %call45, 2
  br i1 %cmp46, label %land.lhs.true.47, label %if.else.50

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %54 = load i32, i32* @matches_found, align 4
  %tobool48 = icmp ne i32 %54, 0
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.47
  %55 = load i8**, i8*** %live_reason.addr, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i32 0, i32 0), i8** %55, align 8
  br label %if.end.51

if.else.50:                                       ; preds = %land.lhs.true.47, %land.lhs.true.44, %if.else.42
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.35
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %land.lhs.true.31, %land.lhs.true.28, %lor.lhs.false.26
  %56 = load i32, i32* %does_attack.addr, align 4
  %tobool55 = icmp ne i32 %56, 0
  br i1 %tobool55, label %if.end.72, label %land.lhs.true.56

land.lhs.true.56:                                 ; preds = %if.end.54
  %57 = load i32*, i32** %eyemin.addr, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @matches_found, align 4
  %add = add nsw i32 %58, %59
  %cmp57 = icmp sge i32 %add, 2
  br i1 %cmp57, label %if.then.69, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.56
  %60 = load i32*, i32** %eyemin.addr, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @matches_found, align 4
  %add59 = add nsw i32 %61, %62
  %cmp60 = icmp eq i32 %add59, 1
  br i1 %cmp60, label %land.lhs.true.61, label %lor.lhs.false.64

land.lhs.true.61:                                 ; preds = %lor.lhs.false.58
  %63 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call62 = call i32 @min_eyes(%struct.eyevalue* %63)
  %cmp63 = icmp sge i32 %call62, 4
  br i1 %cmp63, label %if.then.69, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.58
  %64 = load i32, i32* @stackp, align 4
  %65 = load i32, i32* @owl_distrust_depth, align 4
  %cmp65 = icmp sgt i32 %64, %65
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.72

land.lhs.true.66:                                 ; preds = %lor.lhs.false.64
  %66 = load %struct.eyevalue*, %struct.eyevalue** %probable_eyes.addr, align 8
  %call67 = call i32 @min_eyes(%struct.eyevalue* %66)
  %cmp68 = icmp sge i32 %call67, 2
  br i1 %cmp68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %land.lhs.true.66, %land.lhs.true.61, %land.lhs.true.56
  %67 = load %struct.owl_move_data*, %struct.owl_move_data** %vital_moves.addr, align 8
  %arrayidx = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %dummy_moves, i32 0, i64 0
  %defense_pos = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx, i32 0, i32 5
  %68 = load i32, i32* %defense_pos, align 4
  %arrayidx70 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %dummy_moves, i32 0, i64 0
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx70, i32 0, i32 1
  %69 = load i32, i32* %value, align 4
  %arrayidx71 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %dummy_moves, i32 0, i64 0
  %name = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx71, i32 0, i32 2
  %70 = load i8*, i8** %name, align 8
  call void @owl_add_move(%struct.owl_move_data* %67, i32 %68, i32 %69, i8* %70, i32 2, i32 0, i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %land.lhs.true.66, %lor.lhs.false.64, %if.end.54
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.end.53
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal void @set_single_owl_move(%struct.owl_move_data* %moves, i32 %pos, i8* %name) #0 {
entry:
  %moves.addr = alloca %struct.owl_move_data*, align 8
  %pos.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store %struct.owl_move_data* %moves, %struct.owl_move_data** %moves.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1, i64 0
  %pos1 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %pos1, align 4
  %2 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %2, i64 0
  %value = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx2, i32 0, i32 1
  store i32 25, i32* %value, align 4
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %4, i64 0
  %name4 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx3, i32 0, i32 2
  store i8* %3, i8** %name4, align 8
  %5 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %5, i64 0
  %same_dragon = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx5, i32 0, i32 3
  store i32 1, i32* %same_dragon, align 4
  %6 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %6, i64 0
  %escape = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx6, i32 0, i32 4
  store i32 0, i32* %escape, align 4
  %7 = load %struct.owl_move_data*, %struct.owl_move_data** %moves.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %7, i64 1
  %value8 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %arrayidx7, i32 0, i32 1
  store i32 0, i32* %value8, align 4
  ret void
}

declare i32 @is_suicide(i32, i32) #1

declare i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @does_capture_something(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_pattern_list(%struct.matched_patterns_list_data* %list) #0 {
entry:
  %list.addr = alloca %struct.matched_patterns_list_data*, align 8
  store %struct.matched_patterns_list_data* %list, %struct.matched_patterns_list_data** %list.addr, align 8
  %0 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %counter = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %0, i32 0, i32 1
  store i32 0, i32* %counter, align 4
  %1 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %used = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %1, i32 0, i32 2
  store i32 0, i32* %used, align 4
  %2 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %ordered_up_to = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %2, i32 0, i32 3
  store i32 0, i32* %ordered_up_to, align 4
  %3 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %initialized = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %3, i32 0, i32 0
  %4 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2910, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call noalias i8* @malloc(i64 3200) #2
  %5 = bitcast i8* %call to %struct.matched_pattern_data*
  %6 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %6, i32 0, i32 5
  store %struct.matched_pattern_data* %5, %struct.matched_pattern_data** %pattern_list, align 8
  %7 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %pattern_list1 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %7, i32 0, i32 5
  %8 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list1, align 8
  %cmp = icmp ne %struct.matched_pattern_data* %8, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 2914, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.134, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %list_size = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %9, i32 0, i32 4
  store i32 200, i32* %list_size, align 4
  %10 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %list.addr, align 8
  %initialized5 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %10, i32 0, i32 0
  store i32 1, i32* %initialized5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @collect_owl_shapes_callbacks(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %matched_patterns = alloca %struct.matched_patterns_list_data*, align 8
  %next_pattern = alloca %struct.matched_pattern_data*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.matched_patterns_list_data*
  store %struct.matched_patterns_list_data* %1, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %2 = load i32, i32* %color.addr, align 4
  %3 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %counter = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %3, i32 0, i32 1
  %4 = load i32, i32* %counter, align 4
  %5 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %list_size = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %5, i32 0, i32 4
  %6 = load i32, i32* %list_size, align 4
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %list_size1 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %7, i32 0, i32 4
  %8 = load i32, i32* %list_size1, align 4
  %add = add nsw i32 %8, 100
  store i32 %add, i32* %list_size1, align 4
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %pattern_list = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %9, i32 0, i32 5
  %10 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list, align 8
  %11 = bitcast %struct.matched_pattern_data* %10 to i8*
  %12 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %list_size2 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %12, i32 0, i32 4
  %13 = load i32, i32* %list_size2, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @realloc(i8* %11, i64 %mul) #2
  %14 = bitcast i8* %call to %struct.matched_pattern_data*
  %15 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %pattern_list3 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %15, i32 0, i32 5
  store %struct.matched_pattern_data* %14, %struct.matched_pattern_data** %pattern_list3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %counter4 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %16, i32 0, i32 1
  %17 = load i32, i32* %counter4, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %pattern_list5 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %18, i32 0, i32 5
  %19 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %pattern_list5, align 8
  %arrayidx = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %19, i64 %idxprom
  store %struct.matched_pattern_data* %arrayidx, %struct.matched_pattern_data** %next_pattern, align 8
  %20 = load i32, i32* %ll.addr, align 4
  %idxprom6 = sext i32 %20 to i64
  %21 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 11
  %22 = load i32, i32* %move_offset, align 4
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %23 = load i32, i32* %arrayidx9, align 4
  %24 = load i32, i32* %anchor.addr, align 4
  %add10 = add nsw i32 %23, %24
  %25 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %next_pattern, align 8
  %move = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %25, i32 0, i32 0
  store i32 %add10, i32* %move, align 4
  %26 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %27 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %next_pattern, align 8
  %pattern11 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %27, i32 0, i32 2
  store %struct.pattern* %26, %struct.pattern** %pattern11, align 8
  %28 = load i32, i32* %ll.addr, align 4
  %29 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %next_pattern, align 8
  %ll12 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %29, i32 0, i32 1
  store i32 %28, i32* %ll12, align 4
  %30 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %matched_patterns, align 8
  %counter13 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %30, i32 0, i32 1
  %31 = load i32, i32* %counter13, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %counter13, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @is_same_worm(i32, i32) #1

declare void @find_superstring_conservative(i32, i32*, i32*) #1

declare void @find_superstring(i32, i32*, i32*) #1

declare void @mark_string(i32, i8*, i8 signext) #1

declare void @make_domains(%struct.eye_data*, %struct.eye_data*, i32) #1

declare i32 @findstones(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @one_two_point(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %i, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %j, align 4
  %2 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @board_size, align 4
  %sub2 = sub nsw i32 %4, 1
  %cmp3 = icmp eq i32 %3, %sub2
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @board_size, align 4
  %sub7 = sub nsw i32 %7, 1
  %cmp8 = icmp eq i32 %6, %sub7
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false, %entry
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @board_size, align 4
  %sub11 = sub nsw i32 %10, 2
  %cmp12 = icmp eq i32 %9, %sub11
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %11 = load i32, i32* %j, align 4
  %cmp14 = icmp eq i32 %11, 1
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* @board_size, align 4
  %sub16 = sub nsw i32 %13, 2
  %cmp17 = icmp eq i32 %12, %sub16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.13, %lor.lhs.false.10, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.15, %lor.lhs.false.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @eat_lunch_escape_bonus(i32 %lunch, i32* %min, i32* %probable, i32* %max, %struct.local_owl_data* %owl) #0 {
entry:
  %lunch.addr = alloca i32, align 4
  %min.addr = alloca i32*, align 8
  %probable.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %adjacent = alloca [160 x i32], align 16
  %neighbors = alloca i32, align 4
  %adjoins = alloca i32, align 4
  %n = alloca i32, align 4
  %before = alloca i32, align 4
  %after = alloca i32, align 4
  %new_goal = alloca [400 x i8], align 16
  store i32 %lunch, i32* %lunch.addr, align 4
  store i32* %min, i32** %min.addr, align 8
  store i32* %probable, i32** %probable.addr, align 8
  store i32* %max, i32** %max.addr, align 8
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32 0, i32* %adjoins, align 4
  %0 = load i32*, i32** %min.addr, align 8
  %1 = load i32, i32* %lunch.addr, align 4
  %call = call i32 @is_ko_point(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.49

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %lunch.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjacent, i32 0, i32 0
  %call1 = call i32 @chainlinks(i32 %2, i32* %arraydecay)
  store i32 %call1, i32* %neighbors, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* %neighbors, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjacent, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %tobool4 = icmp ne i8 %8, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  %9 = load i32, i32* %adjoins, align 4
  %or = or i32 %9, %lnot.ext
  store i32 %or, i32* %adjoins, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %n, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %adjoins, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.49

if.then.6:                                        ; preds = %for.end
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [400 x i8], [400 x i8]* %goal7, i32 0, i32 0
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 3
  %14 = load i32, i32* %color, align 4
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %15, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values, i32 0, i32 0
  %call10 = call i32 @dragon_escape(i8* %arraydecay8, i32 %14, i8* %arraydecay9)
  store i32 %call10, i32* %before, align 4
  %16 = load i32, i32* %before, align 4
  %cmp11 = icmp slt i32 %16, 5
  br i1 %cmp11, label %if.then.12, label %if.end.48

if.then.12:                                       ; preds = %if.then.6
  %17 = bitcast [400 x i8]* %new_goal to i8*
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal13 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 0
  %19 = bitcast [400 x i8]* %goal13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 400, i32 4, i1 false)
  store i32 0, i32* %n, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.28, %if.then.12
  %20 = load i32, i32* %n, align 4
  %21 = load i32, i32* %neighbors, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body.16, label %for.end.30

for.body.16:                                      ; preds = %for.cond.14
  %22 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [160 x i32], [160 x i32]* %adjacent, i32 0, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal20 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %24, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [400 x i8], [400 x i8]* %goal20, i32 0, i64 %idxprom19
  %25 = load i8, i8* %arrayidx21, align 1
  %tobool22 = icmp ne i8 %25, 0
  br i1 %tobool22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %for.body.16
  %26 = load i32, i32* %n, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [160 x i32], [160 x i32]* %adjacent, i32 0, i64 %idxprom24
  %27 = load i32, i32* %arrayidx25, align 4
  %arraydecay26 = getelementptr inbounds [400 x i8], [400 x i8]* %new_goal, i32 0, i32 0
  call void @mark_string(i32 %27, i8* %arraydecay26, i8 signext 2)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %for.body.16
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %28 = load i32, i32* %n, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %n, align 4
  br label %for.cond.14

for.end.30:                                       ; preds = %for.cond.14
  %arraydecay31 = getelementptr inbounds [400 x i8], [400 x i8]* %new_goal, i32 0, i32 0
  %29 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color32 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %29, i32 0, i32 3
  %30 = load i32, i32* %color32, align 4
  %31 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %escape_values33 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %31, i32 0, i32 2
  %arraydecay34 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_values33, i32 0, i32 0
  %call35 = call i32 @dragon_escape(i8* %arraydecay31, i32 %30, i8* %arraydecay34)
  store i32 %call35, i32* %after, align 4
  %32 = load i32, i32* %after, align 4
  %33 = load i32, i32* %before, align 4
  %sub = sub nsw i32 %32, %33
  %cmp36 = icmp sge i32 %sub, 3
  br i1 %cmp36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %for.end.30
  %34 = load i32, i32* %after, align 4
  %cmp38 = icmp sge i32 %34, 8
  br i1 %cmp38, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.37
  %35 = load i32, i32* %before, align 4
  %cmp39 = icmp eq i32 %35, 0
  br i1 %cmp39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load i32, i32* %after, align 4
  %cmp40 = icmp sge i32 %36, 5
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %land.lhs.true, %if.then.37
  %37 = load i32*, i32** %probable.addr, align 8
  store i32 2, i32* %37, align 4
  %38 = load i32*, i32** %max.addr, align 8
  store i32 2, i32* %38, align 4
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %39 = load i32*, i32** %max.addr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp42 = icmp slt i32 %40, 2
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.else
  %41 = load i32*, i32** %max.addr, align 8
  %42 = load i32, i32* %41, align 4
  %inc44 = add nsw i32 %42, 1
  store i32 %inc44, i32* %41, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.end.30
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.6
  br label %if.end.49

if.end.49:                                        ; preds = %if.then, %if.end.48, %for.end
  ret void
}

declare i32 @is_ko_point(i32) #1

declare void @get_lively_stones(i32, i8*) #1

declare void @compute_escape_influence(i32, i8*, float*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @owl_mark_dragon(i32 %apos, i32 %bpos, %struct.local_owl_data* %owl) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %pos = alloca i32, align 4
  %color = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %bpos.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %bpos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color, align 4
  %cmp5 = icmp eq i32 %conv4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %bpos.addr, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32, i32* %bpos.addr, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 3330, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.139, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %pos, align 4
  %cmp8 = icmp slt i32 %8, 400
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %for.body
  %11 = load i32, i32* %pos, align 4
  %12 = load i32, i32* %apos.addr, align 4
  %call = call i32 @is_same_dragon(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.15
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %bpos.addr, align 4
  %call17 = call i32 @is_same_dragon(i32 %13, i32 %14)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.then.15
  %15 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom20
  store i8 1, i8* %arrayidx21, align 1
  br label %if.end.26

if.else.22:                                       ; preds = %lor.lhs.false.16
  %17 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal24 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [400 x i8], [400 x i8]* %goal24, i32 0, i64 %idxprom23
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %19 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %color, align 4
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color28 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 3
  store i32 %20, i32* %color28, align 4
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  call void @owl_mark_boundary(%struct.local_owl_data* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @list_goal_worms(%struct.local_owl_data* %owl, i32* %goal_worm) #0 {
entry:
  %owl.addr = alloca %struct.local_owl_data*, align 8
  %goal_worm.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca i32, align 4
  %origin = alloca i32, align 4
  %ii = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.local_owl_data* %owl, %struct.local_owl_data** %owl.addr, align 8
  store i32* %goal_worm, i32** %goal_worm.addr, align 8
  store i32 0, i32* %w, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %goal_worm.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %k, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.38, %for.end
  %4 = load i32, i32* %pos, align 4
  %cmp2 = icmp slt i32 %4, 400
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %5 = load i32, i32* %w, align 4
  %cmp3 = icmp slt i32 %5, 15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %6 = phi i1 [ false, %for.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %6, label %for.body.4, label %for.end.40

for.body.4:                                       ; preds = %land.end
  %7 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv, 3
  br i1 %cmp7, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %for.body.4
  %9 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %tobool = icmp ne i32 %conv11, 0
  br i1 %tobool, label %land.lhs.true.12, label %if.end.37

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %goal = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.12
  %14 = load i32, i32* %pos, align 4
  %call = call i32 @find_origin(i32 %14)
  store i32 %call, i32* %origin, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.27, %if.then
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %w, align 4
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body.21, label %for.end.29

for.body.21:                                      ; preds = %for.cond.18
  %17 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i32*, i32** %goal_worm.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 %idxprom22
  %19 = load i32, i32* %arrayidx23, align 4
  %20 = load i32, i32* %origin, align 4
  %cmp24 = icmp eq i32 %19, %20
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body.21
  br label %for.end.29

if.end:                                           ; preds = %for.body.21
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %21 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond.18

for.end.29:                                       ; preds = %if.then.26, %for.cond.18
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %w, align 4
  %cmp30 = icmp eq i32 %22, %23
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %for.end.29
  %24 = load i32, i32* %pos, align 4
  %25 = load i32, i32* %w, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %w, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load i32*, i32** %goal_worm.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %26, i64 %idxprom34
  store i32 %24, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %for.end.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.12, %land.lhs.true, %for.body.4
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %27 = load i32, i32* %pos, align 4
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, i32* %pos, align 4
  br label %for.cond.1

for.end.40:                                       ; preds = %land.end
  %28 = load i32, i32* %w, align 4
  %cmp41 = icmp sgt i32 %28, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.123

land.lhs.true.43:                                 ; preds = %for.end.40
  %29 = load i32, i32* %w, align 4
  %cmp44 = icmp slt i32 %29, 15
  br i1 %cmp44, label %if.then.46, label %if.end.123

if.then.46:                                       ; preds = %land.lhs.true.43
  %30 = load i32*, i32** %goal_worm.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx47, align 4
  store i32 %31, i32* %pos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.120, %if.then.46
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom49
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx50, i32 0, i32 1
  %34 = load i32, i32* %id, align 4
  %idxprom51 = sext i32 %34 to i64
  %35 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %35, i64 %idxprom51
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx52, i32 0, i32 2
  %36 = load i32, i32* %neighbors, align 4
  %cmp53 = icmp slt i32 %32, %36
  br i1 %cmp53, label %land.rhs.55, label %land.end.58

land.rhs.55:                                      ; preds = %for.cond.48
  %37 = load i32, i32* %w, align 4
  %cmp56 = icmp slt i32 %37, 15
  br label %land.end.58

land.end.58:                                      ; preds = %land.rhs.55, %for.cond.48
  %38 = phi i1 [ false, %for.cond.48 ], [ %cmp56, %land.rhs.55 ]
  br i1 %38, label %for.body.59, label %for.end.122

for.body.59:                                      ; preds = %land.end.58
  %39 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %39 to i64
  %40 = load i32, i32* %pos, align 4
  %idxprom61 = sext i32 %40 to i64
  %arrayidx62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom61
  %id63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx62, i32 0, i32 1
  %41 = load i32, i32* %id63, align 4
  %idxprom64 = sext i32 %41 to i64
  %42 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx65 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %42, i64 %idxprom64
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx65, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom60
  %43 = load i32, i32* %arrayidx66, align 4
  store i32 %43, i32* %d, align 4
  %44 = load i32, i32* %d, align 4
  %idxprom67 = sext i32 %44 to i64
  %45 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i64 %idxprom67
  %origin69 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx68, i32 0, i32 0
  %46 = load i32, i32* %origin69, align 4
  %idxprom70 = sext i32 %46 to i64
  %arrayidx71 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom70
  %color = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx71, i32 0, i32 0
  %47 = load i32, i32* %color, align 4
  %48 = load %struct.local_owl_data*, %struct.local_owl_data** %owl.addr, align 8
  %color72 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %48, i32 0, i32 3
  %49 = load i32, i32* %color72, align 4
  %cmp73 = icmp ne i32 %47, %49
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.59
  br label %for.inc.120

if.end.76:                                        ; preds = %for.body.59
  store i32 21, i32* %ii, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.117, %if.end.76
  %50 = load i32, i32* %ii, align 4
  %cmp78 = icmp slt i32 %50, 400
  br i1 %cmp78, label %land.rhs.80, label %land.end.83

land.rhs.80:                                      ; preds = %for.cond.77
  %51 = load i32, i32* %w, align 4
  %cmp81 = icmp slt i32 %51, 15
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.80, %for.cond.77
  %52 = phi i1 [ false, %for.cond.77 ], [ %cmp81, %land.rhs.80 ]
  br i1 %52, label %for.body.84, label %for.end.119

for.body.84:                                      ; preds = %land.end.83
  %53 = load i32, i32* %ii, align 4
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom85
  %54 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %54 to i32
  %cmp88 = icmp ne i32 %conv87, 3
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.116

land.lhs.true.90:                                 ; preds = %for.body.84
  %55 = load i32, i32* %ii, align 4
  %idxprom91 = sext i32 %55 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %56 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %56 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.116

land.lhs.true.95:                                 ; preds = %land.lhs.true.90
  %57 = load i32, i32* %ii, align 4
  %idxprom96 = sext i32 %57 to i64
  %arrayidx97 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom96
  %origin98 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx97, i32 0, i32 3
  %58 = load i32, i32* %origin98, align 4
  %59 = load i32, i32* %ii, align 4
  %cmp99 = icmp eq i32 %58, %59
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.116

land.lhs.true.101:                                ; preds = %land.lhs.true.95
  %60 = load i32, i32* %ii, align 4
  %idxprom102 = sext i32 %60 to i64
  %arrayidx103 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom102
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx103, i32 0, i32 1
  %61 = load i32, i32* %size, align 4
  %cmp104 = icmp sge i32 %61, 3
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.116

land.lhs.true.106:                                ; preds = %land.lhs.true.101
  %62 = load i32, i32* %ii, align 4
  %idxprom107 = sext i32 %62 to i64
  %arrayidx108 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom107
  %id109 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx108, i32 0, i32 1
  %63 = load i32, i32* %id109, align 4
  %64 = load i32, i32* %d, align 4
  %cmp110 = icmp eq i32 %63, %64
  br i1 %cmp110, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %land.lhs.true.106
  %65 = load i32, i32* %ii, align 4
  %66 = load i32, i32* %w, align 4
  %inc113 = add nsw i32 %66, 1
  store i32 %inc113, i32* %w, align 4
  %idxprom114 = sext i32 %66 to i64
  %67 = load i32*, i32** %goal_worm.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %67, i64 %idxprom114
  store i32 %65, i32* %arrayidx115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.112, %land.lhs.true.106, %land.lhs.true.101, %land.lhs.true.95, %land.lhs.true.90, %for.body.84
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %68 = load i32, i32* %ii, align 4
  %inc118 = add nsw i32 %68, 1
  store i32 %inc118, i32* %ii, align 4
  br label %for.cond.77

for.end.119:                                      ; preds = %land.end.83
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119, %if.then.75
  %69 = load i32, i32* %k, align 4
  %inc121 = add nsw i32 %69, 1
  store i32 %inc121, i32* %k, align 4
  br label %for.cond.48

for.end.122:                                      ; preds = %land.end.58
  br label %if.end.123

if.end.123:                                       ; preds = %for.end.122, %land.lhs.true.43, %for.end.40
  %70 = load i32, i32* %w, align 4
  ret i32 %70
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
