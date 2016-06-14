; ModuleID = 'engine/globals.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.Hash_data = type { [1 x i64] }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.surround_data = type { i32, [400 x i8] }

@board_size = global i32 19, align 4
@thrashing_dragon = global i32 0, align 4
@hashflags = global i32 7969, align 4
@quiet = global i32 0, align 4
@showstatistics = global i32 0, align 4
@allpats = global i32 0, align 4
@printworms = global i32 0, align 4
@printmoyo = global i32 0, align 4
@printboard = global i32 0, align 4
@count_variations = global i32 0, align 4
@sgf_dump = global i32 0, align 4
@sgf_dumptree = global %struct.SGFTree_t* null, align 8
@random_seed = global i32 0, align 4
@loading = global i32 0, align 4
@fusekidb = global i32 1, align 4
@disable_fuseki = global i32 0, align 4
@josekidb = global i32 1, align 4
@showtime = global i32 0, align 4
@showscore = global i32 0, align 4
@score = global float 0.000000e+00, align 4
@lower_bound = global float 0.000000e+00, align 4
@upper_bound = global float 0.000000e+00, align 4
@level = global i32 10, align 4
@urgent = global i32 0, align 4
@debug = global i32 0, align 4
@verbose = global i32 0, align 4
@outfilename = global [128 x i8] zeroinitializer, align 16
@output_flags = global i32 0, align 4
@disable_threat_computation = global i32 0, align 4
@disable_endgame_patterns = global i32 0, align 4
@doing_scoring = global i32 0, align 4
@chinese_rules = global i32 0, align 4
@experimental_semeai = global i32 1, align 4
@semeai_variations = global i32 250, align 4
@experimental_connections = global i32 1, align 4
@owl_threats = global i32 0, align 4
@experimental_owl_ext = global i32 0, align 4
@allow_suicide = global i32 0, align 4
@capture_all_dead = global i32 0, align 4
@play_out_aftermath = global i32 0, align 4
@play_mirror_go = global i32 0, align 4
@mirror_stones_limit = global i32 -1, align 4
@gtp_version = global i32 2, align 4
@dragon2 = global %struct.dragon_data2* null, align 8
@board = common global [421 x i8] zeroinitializer, align 16
@board_ko_pos = common global i32 0, align 4
@white_captured = common global i32 0, align 4
@black_captured = common global i32 0, align 4
@initial_board = common global [421 x i8] zeroinitializer, align 16
@initial_board_ko_pos = common global i32 0, align 4
@initial_white_captured = common global i32 0, align 4
@initial_black_captured = common global i32 0, align 4
@move_history_color = common global [500 x i32] zeroinitializer, align 16
@move_history_pos = common global [500 x i32] zeroinitializer, align 16
@move_history_pointer = common global i32 0, align 4
@komi = common global float 0.000000e+00, align 4
@movenum = common global i32 0, align 4
@shadow = common global [400 x i8] zeroinitializer, align 16
@hashdata = common global %struct.Hash_data zeroinitializer, align 8
@potential_moves = common global [19 x [19 x float]] zeroinitializer, align 16
@stackp = common global i32 0, align 4
@position_number = common global i32 0, align 4
@depth = common global i32 0, align 4
@backfill_depth = common global i32 0, align 4
@backfill2_depth = common global i32 0, align 4
@superstring_depth = common global i32 0, align 4
@fourlib_depth = common global i32 0, align 4
@ko_depth = common global i32 0, align 4
@branch_depth = common global i32 0, align 4
@aa_depth = common global i32 0, align 4
@owl_distrust_depth = common global i32 0, align 4
@owl_branch_depth = common global i32 0, align 4
@owl_reading_depth = common global i32 0, align 4
@owl_node_limit = common global i32 0, align 4
@mandated_depth = common global i32 0, align 4
@mandated_backfill_depth = common global i32 0, align 4
@mandated_backfill2_depth = common global i32 0, align 4
@mandated_superstring_depth = common global i32 0, align 4
@mandated_fourlib_depth = common global i32 0, align 4
@mandated_ko_depth = common global i32 0, align 4
@mandated_branch_depth = common global i32 0, align 4
@mandated_aa_depth = common global i32 0, align 4
@mandated_owl_distrust_depth = common global i32 0, align 4
@mandated_owl_branch_depth = common global i32 0, align 4
@mandated_owl_reading_depth = common global i32 0, align 4
@mandated_owl_node_limit = common global i32 0, align 4
@best_move_values = common global [10 x float] zeroinitializer, align 16
@best_moves = common global [10 x i32] zeroinitializer, align 16
@close_worms = common global [400 x [4 x i32]] zeroinitializer, align 16
@number_close_worms = common global [400 x i32] zeroinitializer, align 16
@close_black_worms = common global [400 x [4 x i32]] zeroinitializer, align 16
@number_close_black_worms = common global [400 x i32] zeroinitializer, align 16
@close_white_worms = common global [400 x [4 x i32]] zeroinitializer, align 16
@number_close_white_worms = common global [400 x i32] zeroinitializer, align 16
@false_eye_territory = common global [400 x i32] zeroinitializer, align 16
@stats = common global %struct.stats_data zeroinitializer, align 4
@worm = common global [400 x %struct.worm_data] zeroinitializer, align 16
@dragon = common global [400 x %struct.dragon_data] zeroinitializer, align 16
@number_of_dragons = common global i32 0, align 4
@half_eye = common global [400 x %struct.half_eye_data] zeroinitializer, align 16
@owl_half_eye = common global [400 x %struct.half_eye_data] zeroinitializer, align 16
@black_eye = common global [400 x %struct.eye_data] zeroinitializer, align 16
@white_eye = common global [400 x %struct.eye_data] zeroinitializer, align 16
@owl_black_eye = common global [400 x %struct.eye_data] zeroinitializer, align 16
@owl_white_eye = common global [400 x %struct.eye_data] zeroinitializer, align 16
@surroundings = common global [10 x %struct.surround_data] zeroinitializer, align 16
@surround_pointer = common global i32 0, align 4

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}