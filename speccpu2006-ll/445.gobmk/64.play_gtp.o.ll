; ModuleID = 'interface/play_gtp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gtp_command = type { i8*, i32 (i8*)* }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.board_state = type { i32, [421 x i8], i32, i32, i32, [421 x i8], i32, i32, i32, [500 x i32], [500 x i32], i32, float, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@board_size = external global i32, align 4
@gtp_orientation = internal global i32 0, align 4
@commands = internal global [110 x %struct.gtp_command] [%struct.gtp_command { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 (i8*)* @gtp_aa_confirm_safety }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (i8*)* @gtp_all_legal }, %struct.gtp_command { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (i8*)* @gtp_attack }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 (i8*)* @gtp_attack_either }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (i8*)* @gtp_playblack }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (i8*)* @gtp_set_boardsize }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 (i8*)* @gtp_captures }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 (i8*)* @gtp_clear_board }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (i8*)* @gtp_clear_cache }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (i8*)* @gtp_what_color }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 (i8*)* @gtp_combination_attack }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (i8*)* @gtp_connect }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (i8*)* @gtp_countlib }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (i8*)* @gtp_cputime }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 (i8*)* @gtp_decrease_depths }, %struct.gtp_command { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 (i8*)* @gtp_defend }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 (i8*)* @gtp_defend_both }, %struct.gtp_command { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 (i8*)* @gtp_disconnect }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 (i8*)* @gtp_dragon_data }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 (i8*)* @gtp_dragon_status }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 (i8*)* @gtp_dragon_stones }, %struct.gtp_command { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 (i8*)* @gtp_dump_stack }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 (i8*)* @gtp_echo }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 (i8*)* @gtp_echo_err }, %struct.gtp_command { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 (i8*)* @gtp_estimate_score }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 (i8*)* @gtp_accuratelib }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 (i8*)* @gtp_accurate_approxlib }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 (i8*)* @gtp_experimental_score }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 (i8*)* @gtp_eval_eye }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 (i8*)* @gtp_final_score }, %struct.gtp_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 (i8*)* @gtp_final_status }, %struct.gtp_command { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i32 (i8*)* @gtp_final_status_list }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 (i8*)* @gtp_findlib }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 (i8*)* @gtp_finish_sgftrace }, %struct.gtp_command { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 (i8*)* @gtp_fixed_handicap }, %struct.gtp_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 (i8*)* @gtp_get_handicap }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i32 (i8*)* @gtp_get_random_seed }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i32 (i8*)* @gtp_set_random_seed }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 (i8*)* @gtp_genmove }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 (i8*)* @gtp_genmove_black }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 (i8*)* @gtp_genmove_white }, %struct.gtp_command { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i32 (i8*)* @gtp_get_connection_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 (i8*)* @gtp_get_life_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i32 (i8*)* @gtp_get_owl_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 (i8*)* @gtp_get_reading_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i32 (i8*)* @gtp_get_trymove_counter }, %struct.gtp_command { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 (i8*)* @gtp_gg_genmove }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 (i8*)* @gtp_gg_undo }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 (i8*)* @gtp_list_commands }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 (i8*)* @gtp_increase_depths }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 (i8*)* @gtp_is_legal }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i32 (i8*)* @gtp_known_command }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 (i8*)* @gtp_set_komi }, %struct.gtp_command { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 (i8*)* @gtp_get_komi }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 (i8*)* @gtp_ladder_attack }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 (i8*)* @gtp_set_level }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 (i8*)* @gtp_list_commands }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 (i8*)* @gtp_list_stones }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 (i8*)* @gtp_loadsgf }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 (i8*)* @gtp_name }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 (i8*)* @gtp_estimate_score }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i32 (i8*)* @gtp_owl_analyze_semeai }, %struct.gtp_command { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i32 (i8*)* @gtp_tactical_analyze_semeai }, %struct.gtp_command { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 (i8*)* @gtp_owl_attack }, %struct.gtp_command { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i32 (i8*)* @gtp_owl_connection_defends }, %struct.gtp_command { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 (i8*)* @gtp_owl_defend }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i32 (i8*)* @gtp_owl_does_attack }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 (i8*)* @gtp_owl_does_defend }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i32 (i8*)* @gtp_owl_substantial }, %struct.gtp_command { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i32 (i8*)* @gtp_owl_threaten_attack }, %struct.gtp_command { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i32 (i8*)* @gtp_owl_threaten_defense }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 (i8*)* @gtp_play }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 (i8*)* @gtp_popgo }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i32 (i8*)* @gtp_set_orientation }, %struct.gtp_command { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.74, i32 0, i32 0), i32 (i8*)* @gtp_place_free_handicap }, %struct.gtp_command { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i32 (i8*)* @gtp_protocol_version }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i32 (i8*)* @gtp_query_boardsize }, %struct.gtp_command { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i32 (i8*)* @gtp_query_orientation }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 (i8*)* @gtp_quit }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i32 (i8*)* @gtp_restricted_genmove }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i32 (i8*)* @gtp_reg_genmove }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.81, i32 0, i32 0), i32 (i8*)* @gtp_report_uncertainty }, %struct.gtp_command { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i32 0, i32 0), i32 (i8*)* @gtp_reset_connection_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i32 0, i32 0), i32 (i8*)* @gtp_reset_life_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0), i32 (i8*)* @gtp_reset_owl_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0), i32 (i8*)* @gtp_reset_reading_node_counter }, %struct.gtp_command { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i32 (i8*)* @gtp_reset_trymove_counter }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 (i8*)* @gtp_same_dragon }, %struct.gtp_command { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i32 (i8*)* @gtp_set_free_handicap }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 (i8*)* @gtp_showboard }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i32 0, i32 0), i32 (i8*)* @gtp_is_surrounded }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i32 (i8*)* @gtp_does_surround }, %struct.gtp_command { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 (i8*)* @gtp_surround_map }, %struct.gtp_command { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0), i32 (i8*)* @gtp_start_sgftrace }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i32 (i8*)* @gtp_test_eyeshape }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 (i8*)* @gtp_time_left }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i32 (i8*)* @gtp_time_settings }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 (i8*)* @gtp_top_moves }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i32 (i8*)* @gtp_top_moves_black }, %struct.gtp_command { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i32 (i8*)* @gtp_top_moves_white }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 (i8*)* @gtp_trymove }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 (i8*)* @gtp_tryko }, %struct.gtp_command { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0), i32 (i8*)* @gtp_tune_move_ordering }, %struct.gtp_command { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i32 (i8*)* @gtp_undo }, %struct.gtp_command { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i32 (i8*)* @gtp_program_version }, %struct.gtp_command { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 (i8*)* @gtp_playwhite }, %struct.gtp_command { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i32 (i8*)* @gtp_worm_cutstone }, %struct.gtp_command { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 (i8*)* @gtp_worm_data }, %struct.gtp_command { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i32 (i8*)* @gtp_worm_stones }, %struct.gtp_command zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"aa_confirm_safety\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"all_legal\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"attack_either\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"captures\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"clear_board\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"clear_cache\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"combination_attack\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"countlib\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"cputime\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"decrease_depths\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"defend_both\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"dragon_data\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"dragon_status\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"dragon_stones\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"dump_stack\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"echo_err\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"estimate_score\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"accuratelib\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"accurate_approxlib\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"experimental_score\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"eval_eye\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"final_score\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"final_status\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"final_status_list\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"findlib\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"finish_sgftrace\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"fixed_handicap\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"get_handicap\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"get_random_seed\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"set_random_seed\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"genmove\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"genmove_black\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"genmove_white\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"get_connection_node_counter\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"get_life_node_counter\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"get_owl_node_counter\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"get_reading_node_counter\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"get_trymove_counter\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"gg_genmove\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"gg-undo\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"increase_depths\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"is_legal\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"known_command\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"get_komi\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"ladder_attack\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"list_commands\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"list_stones\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"loadsgf\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"new_score\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"owl_analyze_semeai\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"tactical_analyze_semeai\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"owl_attack\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"owl_connection_defends\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"owl_defend\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"owl_does_attack\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"owl_does_defend\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"owl_substantial\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"owl_threaten_attack\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"owl_threaten_defense\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"popgo\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"place_free_handicap\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"protocol_version\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"query_boardsize\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"query_orientation\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"restricted_genmove\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"reg_genmove\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"report_uncertainty\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"reset_connection_node_counter\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"reset_life_node_counter\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"reset_owl_node_counter\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"reset_reading_node_counter\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"reset_trymove_counter\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"same_dragon\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"set_free_handicap\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"showboard\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"is_surrounded\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"does_surround\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"start_sgftrace\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"test_eyeshape\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"time_left\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"time_settings\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"top_moves\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"top_moves_black\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"top_moves_white\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"trymove\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"tryko\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"tune_move_ordering\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"worm_cutstone\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"worm_data\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"worm_stones\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"invalid color or coordinate\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c" %m\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"invalid color\00", align 1
@board = external global [421 x i8], align 16
@.str.113 = private unnamed_addr constant [19 x i8] c"invalid coordinate\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"vertex must not be empty\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gtp_print_code.conversion = internal global [6 x i32] [i32 0, i32 3, i32 5, i32 4, i32 2, i32 1], align 16
@.str.116 = private unnamed_addr constant [28 x i8] c"string vertex must be empty\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"string vertex must not be empty\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"illegal move\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"boardsize not an integer\00", align 1
@gtp_version = external global i32, align 4
@.str.122 = private unnamed_addr constant [23 x i8] c"unacceptable boardsize\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"unacceptable size\00", align 1
@white_captured = external global i32, align 4
@black_captured = external global i32, align 4
@verbose = external global i32, align 4
@.str.124 = private unnamed_addr constant [30 x i8] c"vertices must have same color\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@stackp = external global i32, align 4
@.str.127 = private unnamed_addr constant [40 x i8] c"dragon data unavailable when stackp > 0\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"%m empty\0A\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@.str.129 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"%m: \00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"alive\0A\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"dead\0A\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"critical %m %m\0A\00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c"dragon_stones called on an empty vertex\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"%m \00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@upper_bound = external global float, align 4
@lower_bound = external global float, align 4
@score = external global float, align 4
@.str.140 = private unnamed_addr constant [43 x i8] c"W+%3.1f (upper bound: %3.1f, lower: %3.1f)\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"B+%3.1f (upper bound: %3.1f, lower: %3.1f)\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"vertex must be empty\00", align 1
@debug = external global i32, align 4
@.str.143 = private unnamed_addr constant [44 x i8] c"upper = %3.1f, lower = %3.1f, best = %3.1f\0A\00", align 1
@best_move_values = external global [10 x float], align 16
@.str.144 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@black_eye = external global [400 x %struct.eye_data], align 16
@half_eye = external global [400 x %struct.half_eye_data], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@.str.145 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@random_seed = external global i32, align 4
@final_score = internal global float 0.000000e+00, align 4
@.str.147 = private unnamed_addr constant [8 x i8] c"W+%3.1f\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"B+%3.1f\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@finish_and_score_game.current_board = internal global [19 x [19 x i32]] zeroinitializer, align 16
@finish_and_score_game.current_seed = internal global i32 -1, align 4
@doing_scoring = external global i32, align 4
@komi = external global float, align 4
@final_status = internal global [19 x [19 x i32]] zeroinitializer, align 16
@status_numbers = internal global [6 x i32] [i32 1, i32 0, i32 7, i32 14, i32 13, i32 15], align 16
@status_names = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0)], align 16
@.str.150 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"seki\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"white_territory\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"black_territory\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"dame\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"%s %n\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"missing status\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"invalid status\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"missing filename\00", align 1
@count_variations = external global i32, align 4
@.str.160 = private unnamed_addr constant [16 x i8] c"board not empty\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"handicap not an integer\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"invalid handicap\00", align 1
@handicap = internal global i32 0, align 4
@.str.163 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"invalid seed\00", align 1
@.str.165 = private unnamed_addr constant [41 x i8] c"genmove cannot be called when stackp > 0\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.167 = private unnamed_addr constant [38 x i8] c"can't undo a negative number of moves\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"cannot undo\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"komi not a float\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"%4.1f\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"string must have exactly 2 liberties\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"level not an integer\00", align 1
@level = external global i32, align 4
@.str.177 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"cannot open or parse '%s'\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"GNU Go\00", align 1
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.181 = private unnamed_addr constant [9 x i8] c"%s %s %m\00", align 1
@report_uncertainty = internal global i32 0, align 4
@.str.182 = private unnamed_addr constant [11 x i8] c" uncertain\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"move vertex must be empty\00", align 1
@.str.184 = private unnamed_addr constant [32 x i8] c"dragon vertex must not be empty\00", align 1
@.str.185 = private unnamed_addr constant [41 x i8] c"dragon vertices must have the same color\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"Stack empty.\0A\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"orientation not an integer\00", align 1
@.str.188 = private unnamed_addr constant [25 x i8] c"unacceptable orientation\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"no allowed vertex\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.193 = private unnamed_addr constant [16 x i8] c"repeated vertex\00", align 1
@.str.194 = private unnamed_addr constant [31 x i8] c"dragon vertex must be nonempty\00", align 1
@dragon2 = external global %struct.dragon_data2*, align 8
@gtp_sgftree = internal global %struct.SGFTree_t zeroinitializer, align 8
@.str.195 = private unnamed_addr constant [33 x i8] c"time and stones not two integers\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"not three integers\00", align 1
@main_time = internal global i32 0, align 4
@byo_yomi_time = internal global i32 0, align 4
@byo_yomi_stones = internal global i32 0, align 4
@best_moves = external global [10 x i32], align 16
@.str.198 = private unnamed_addr constant [7 x i8] c" %.2f \00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"gtp_trymove\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"gtp_tryko\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.203 = private unnamed_addr constant [42 x i8] c"incorrect arguments, expected %d integers\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@worm = external global [400 x %struct.worm_data], align 16
@.str.206 = private unnamed_addr constant [20 x i8] c"color           %C\0A\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"size            %d\0A\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"effective_size  %.2f\0A\00", align 1
@.str.209 = private unnamed_addr constant [20 x i8] c"origin          %m\0A\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"liberties       %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"liberties2      %d\0A\00", align 1
@.str.212 = private unnamed_addr constant [20 x i8] c"liberties3      %d\0A\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"liberties4      %d\0A\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"attack_point    %m\0A\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"attack_code     %d\0A\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"lunch           %m\0A\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"defense_point   %m\0A\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"defense_code    %d\0A\00", align 1
@.str.219 = private unnamed_addr constant [20 x i8] c"cutstone        %d\0A\00", align 1
@.str.220 = private unnamed_addr constant [20 x i8] c"cutstone2       %d\0A\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"genus           %d\0A\00", align 1
@.str.222 = private unnamed_addr constant [20 x i8] c"inessential     %d\0A\00", align 1
@.str.223 = private unnamed_addr constant [38 x i8] c"worm_stones called on an empty vertex\00", align 1

; Function Attrs: nounwind uwtable
define void @play_gtp(%struct._IO_FILE* %gtp_input, i32 %gtp_initial_orientation) #0 {
entry:
  %gtp_input.addr = alloca %struct._IO_FILE*, align 8
  %gtp_initial_orientation.addr = alloca i32, align 4
  store %struct._IO_FILE* %gtp_input, %struct._IO_FILE** %gtp_input.addr, align 8
  store i32 %gtp_initial_orientation, i32* %gtp_initial_orientation.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %0, i8* null) #4
  %1 = load i32, i32* @board_size, align 4
  call void @gtp_internal_set_boardsize(i32 %1)
  %2 = load i32, i32* %gtp_initial_orientation.addr, align 4
  store i32 %2, i32* @gtp_orientation, align 4
  call void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* @rotate_on_input, void (i32, i32, i32*, i32*)* @rotate_on_output)
  call void @reset_engine()
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %gtp_input.addr, align 8
  call void @gtp_main_loop(%struct.gtp_command* getelementptr inbounds ([110 x %struct.gtp_command], [110 x %struct.gtp_command]* @commands, i32 0, i32 0), %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #1

declare void @gtp_internal_set_boardsize(i32) #2

declare void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)*) #2

; Function Attrs: nounwind uwtable
define internal void @rotate_on_input(i32 %ai, i32 %aj, i32* %bi, i32* %bj) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %aj.addr = alloca i32, align 4
  %bi.addr = alloca i32*, align 8
  %bj.addr = alloca i32*, align 8
  store i32 %ai, i32* %ai.addr, align 4
  store i32 %aj, i32* %aj.addr, align 4
  store i32* %bi, i32** %bi.addr, align 8
  store i32* %bj, i32** %bj.addr, align 8
  %0 = load i32, i32* %ai.addr, align 4
  %1 = load i32, i32* %aj.addr, align 4
  %2 = load i32*, i32** %bi.addr, align 8
  %3 = load i32*, i32** %bj.addr, align 8
  %4 = load i32, i32* @board_size, align 4
  %5 = load i32, i32* @gtp_orientation, align 4
  call void @rotate(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotate_on_output(i32 %ai, i32 %aj, i32* %bi, i32* %bj) #0 {
entry:
  %ai.addr = alloca i32, align 4
  %aj.addr = alloca i32, align 4
  %bi.addr = alloca i32*, align 8
  %bj.addr = alloca i32*, align 8
  store i32 %ai, i32* %ai.addr, align 4
  store i32 %aj, i32* %aj.addr, align 4
  store i32* %bi, i32** %bi.addr, align 8
  store i32* %bj, i32** %bj.addr, align 8
  %0 = load i32, i32* %ai.addr, align 4
  %1 = load i32, i32* %aj.addr, align 4
  %2 = load i32*, i32** %bi.addr, align 8
  %3 = load i32*, i32** %bj.addr, align 8
  %4 = load i32, i32* @board_size, align 4
  %5 = load i32, i32* @gtp_orientation, align 4
  call void @inv_rotate(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5)
  ret void
}

declare void @reset_engine() #2

declare void @gtp_main_loop(%struct.gtp_command*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gtp_aa_confirm_safety(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %minsize = alloca i32, align 4
  %result = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %saved_dragons = alloca [400 x i8], align 16
  %saved_worms = alloca [400 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %minsize, align 4
  store i32 0, i32* %defense_point, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %3
  %cmp2 = icmp eq i32 %add1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %minsize) #4
  %6 = load i32, i32* %color, align 4
  %call5 = call i32 @genmove(i32* null, i32* null, i32 %6)
  %7 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %7, 20
  %add7 = add nsw i32 21, %mul6
  %8 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %add7, %8
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %saved_dragons, i32 0, i32 0
  call void @get_saved_dragons(i32 %add8, i8* %arraydecay)
  %9 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 %9, 20
  %add10 = add nsw i32 21, %mul9
  %10 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %add10, %10
  %arraydecay12 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_worms, i32 0, i32 0
  call void @get_saved_worms(i32 %add11, i8* %arraydecay12)
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %12, 20
  %add14 = add nsw i32 21, %mul13
  %13 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %add14, %13
  %14 = load i32, i32* %minsize, align 4
  %arraydecay16 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_dragons, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_worms, i32 0, i32 0
  %call18 = call i32 @atari_atari_confirm_safety(i32 %11, i32 %add15, i32* %defense_point, i32 %14, i8* %arraydecay16, i8* %arraydecay17)
  store i32 %call18, i32* %result, align 4
  call void @gtp_start_response(i32 0)
  %15 = load i32, i32* %result, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %15)
  %16 = load i32, i32* %result, align 4
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %17 = load i32, i32* %defense_point, align 4
  %div = sdiv i32 %17, 20
  %sub = sub nsw i32 %div, 1
  %18 = load i32, i32* %defense_point, align 4
  %rem = srem i32 %18, 20
  %sub21 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 %sub, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end
  %call23 = call i32 @gtp_finish_response()
  store i32 %call23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_all_legal(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %movei = alloca [361 x i32], align 16
  %movej = alloca [361 x i32], align 16
  %moves = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %moves, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add, %6
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %8, 20
  %add9 = add nsw i32 21, %mul8
  %9 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %add9, %9
  %10 = load i32, i32* %color, align 4
  %call11 = call i32 @is_legal(i32 %add10, i32 %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %moves, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [361 x i32], [361 x i32]* %movei, i32 0, i64 %idxprom14
  store i32 %11, i32* %arrayidx15, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %moves, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [361 x i32], [361 x i32]* %movej, i32 0, i64 %idxprom16
  store i32 %13, i32* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %land.lhs.true, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %15 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %15, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  call void @gtp_start_response(i32 0)
  %17 = load i32, i32* %moves, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %movei, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [361 x i32], [361 x i32]* %movej, i32 0, i32 0
  call void @gtp_print_vertices(i32 %17, i32* %arraydecay, i32* %arraydecay23)
  %call24 = call i32 @gtp_finish_response()
  store i32 %call24, i32* %retval
  br label %return

return:                                           ; preds = %for.end.22, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %apos = alloca i32, align 4
  %attack_code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %call10 = call i32 @attack(i32 %add9, i32* %apos)
  store i32 %call10, i32* %attack_code, align 4
  call void @gtp_start_response(i32 0)
  %6 = load i32, i32* %attack_code, align 4
  call void @gtp_print_code(i32 %6)
  %7 = load i32, i32* %attack_code, align 4
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.6
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %8 = load i32, i32* %apos, align 4
  %div = sdiv i32 %8, 20
  %sub = sub nsw i32 %div, 1
  %9 = load i32, i32* %apos, align 4
  %rem = srem i32 %9, 20
  %sub14 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.6
  %call16 = call i32 @gtp_finish_response()
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_attack_either(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %n = alloca i32, align 4
  %acode = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ai, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %aj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.116, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %bi, i32* %bj)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %bi, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %bj, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0))
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.13
  %11 = load i32, i32* %ai, align 4
  %mul25 = mul nsw i32 %11, 20
  %add26 = add nsw i32 21, %mul25
  %12 = load i32, i32* %aj, align 4
  %add27 = add nsw i32 %add26, %12
  %13 = load i32, i32* %bi, align 4
  %mul28 = mul nsw i32 %13, 20
  %add29 = add nsw i32 21, %mul28
  %14 = load i32, i32* %bj, align 4
  %add30 = add nsw i32 %add29, %14
  %call31 = call i32 @attack_either(i32 %add27, i32 %add30)
  store i32 %call31, i32* %acode, align 4
  call void @gtp_start_response(i32 0)
  %15 = load i32, i32* %acode, align 4
  call void @gtp_print_code(i32 %15)
  %call32 = call i32 @gtp_finish_response()
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.11, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_playblack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %c, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %c, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @tolower(i32 %conv) #4
  %conv1 = trunc i32 %call to i8
  %5 = load i8*, i8** %c, align 8
  store i8 %conv1, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i64 4) #5
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %8 = load i8*, i8** %s.addr, align 8
  %call4 = call i32 @gtp_decode_coord(i8* %8, i32* %i, i32* %j)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 20
  %add = add nsw i32 21, %mul
  %10 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add, %10
  %call10 = call i32 @is_legal(i32 %add9, i32 2)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %11, 20
  %add16 = add nsw i32 21, %mul15
  %12 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %add16, %12
  call void @play_move(i32 %add17, i32 2)
  %call18 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_boardsize(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %boardsize = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %boardsize) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %boardsize, align 4
  %cmp2 = icmp slt i32 %1, 5
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %boardsize, align 4
  %cmp3 = icmp sgt i32 %2, 19
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load i32, i32* @gtp_version, align 4
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %call7 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.122, i32 0, i32 0))
  store i32 %call7, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %call8 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i32 0, i32 0))
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %call10 = call i32 @stones_on_board(i32 3)
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  call void @update_random_seed()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %4 = load i32, i32* %boardsize, align 4
  store i32 %4, i32* @board_size, align 4
  call void @clear_board()
  %5 = load i32, i32* %boardsize, align 4
  call void @gtp_internal_set_boardsize(i32 %5)
  call void @reset_engine()
  %call14 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else, %if.then.6, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_captures(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* @white_captured, align 4
  %call3 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %2)
  store i32 %call3, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* @black_captured, align 4
  %call4 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %3)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_clear_board(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @stones_on_board(i32 3)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @update_random_seed()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @clear_board()
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_clear_cache(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @clear_persistent_reading_cache()
  call void @clear_persistent_owl_cache()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_what_color(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call3 = call i8* @color_to_string(i32 %conv)
  %call4 = call i32 (i8*, ...) @gtp_success(i8* %call3)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_combination_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @silent_examine_position(i32 2, i32 99)
  %2 = load i32, i32* %color, align 4
  %3 = load i32, i32* @verbose, align 4
  %call2 = call i32 @atari_atari(i32 %2, i32* %attack_point, i8* null, i32 %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %attack_point, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  call void @gtp_start_response(i32 0)
  %4 = load i32, i32* %attack_point, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %attack_point, align 4
  %rem = srem i32 %5, 20
  %sub6 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub6)
  %call7 = call i32 @gtp_finish_response()
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_connect(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %connect_move = alloca i32, align 4
  %result = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %connect_move, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call2 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %bi, i32* %bj)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %ai, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %aj, align 4
  %add6 = add nsw i32 %add, %5
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %7 = load i32, i32* %bi, align 4
  %mul9 = mul nsw i32 %7, 20
  %add10 = add nsw i32 21, %mul9
  %8 = load i32, i32* %bj, align 4
  %add11 = add nsw i32 %add10, %8
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.5
  %call18 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %ai, align 4
  %mul20 = mul nsw i32 %10, 20
  %add21 = add nsw i32 21, %mul20
  %11 = load i32, i32* %aj, align 4
  %add22 = add nsw i32 %add21, %11
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %12 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %12 to i32
  %13 = load i32, i32* %bi, align 4
  %mul26 = mul nsw i32 %13, 20
  %add27 = add nsw i32 21, %mul26
  %14 = load i32, i32* %bj, align 4
  %add28 = add nsw i32 %add27, %14
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %15 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp ne i32 %conv25, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.19
  %call35 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.124, i32 0, i32 0))
  store i32 %call35, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.19
  %16 = load i32, i32* %ai, align 4
  %mul37 = mul nsw i32 %16, 20
  %add38 = add nsw i32 21, %mul37
  %17 = load i32, i32* %aj, align 4
  %add39 = add nsw i32 %add38, %17
  %18 = load i32, i32* %bi, align 4
  %mul40 = mul nsw i32 %18, 20
  %add41 = add nsw i32 21, %mul40
  %19 = load i32, i32* %bj, align 4
  %add42 = add nsw i32 %add41, %19
  %call43 = call i32 @string_connect(i32 %add39, i32 %add42, i32* %connect_move)
  store i32 %call43, i32* %result, align 4
  call void @gtp_start_response(i32 0)
  %20 = load i32, i32* %result, align 4
  call void @gtp_print_code(i32 %20)
  %21 = load i32, i32* %result, align 4
  %cmp44 = icmp ne i32 %21, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.36
  %22 = load i32, i32* %connect_move, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load i32, i32* %connect_move, align 4
  %rem = srem i32 %23, 20
  %sub47 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 %sub, i32 %sub47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.36
  %call49 = call i32 @gtp_finish_response()
  store i32 %call49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.34, %if.then.17, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_countlib(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %call10 = call i32 @countlib(i32 %add9)
  %call11 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %call10)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_cputime(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call double @gg_cputime()
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), double %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_decrease_depths(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @decrease_depth_values()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_defend(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dpos = alloca i32, align 4
  %defend_code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %call10 = call i32 @find_defense(i32 %add9, i32* %dpos)
  store i32 %call10, i32* %defend_code, align 4
  call void @gtp_start_response(i32 0)
  %6 = load i32, i32* %defend_code, align 4
  call void @gtp_print_code(i32 %6)
  %7 = load i32, i32* %defend_code, align 4
  %cmp11 = icmp sgt i32 %7, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.6
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %8 = load i32, i32* %dpos, align 4
  %div = sdiv i32 %8, 20
  %sub = sub nsw i32 %div, 1
  %9 = load i32, i32* %dpos, align 4
  %rem = srem i32 %9, 20
  %sub14 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.6
  %call16 = call i32 @gtp_finish_response()
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_defend_both(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %n = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ai, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %aj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.116, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %bi, i32* %bj)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %bi, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %bj, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0))
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.13
  %11 = load i32, i32* %ai, align 4
  %mul25 = mul nsw i32 %11, 20
  %add26 = add nsw i32 21, %mul25
  %12 = load i32, i32* %aj, align 4
  %add27 = add nsw i32 %add26, %12
  %13 = load i32, i32* %bi, align 4
  %mul28 = mul nsw i32 %13, 20
  %add29 = add nsw i32 21, %mul28
  %14 = load i32, i32* %bj, align 4
  %add30 = add nsw i32 %add29, %14
  %call31 = call i32 @defend_both(i32 %add27, i32 %add30)
  store i32 %call31, i32* %dcode, align 4
  call void @gtp_start_response(i32 0)
  %15 = load i32, i32* %dcode, align 4
  call void @gtp_print_code(i32 %15)
  %call32 = call i32 @gtp_finish_response()
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.11, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_disconnect(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %disconnect_move = alloca i32, align 4
  %result = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %disconnect_move, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call2 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %bi, i32* %bj)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %ai, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %aj, align 4
  %add6 = add nsw i32 %add, %5
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %7 = load i32, i32* %bi, align 4
  %mul9 = mul nsw i32 %7, 20
  %add10 = add nsw i32 21, %mul9
  %8 = load i32, i32* %bj, align 4
  %add11 = add nsw i32 %add10, %8
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.5
  %call18 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %ai, align 4
  %mul20 = mul nsw i32 %10, 20
  %add21 = add nsw i32 21, %mul20
  %11 = load i32, i32* %aj, align 4
  %add22 = add nsw i32 %add21, %11
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %12 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %12 to i32
  %13 = load i32, i32* %bi, align 4
  %mul26 = mul nsw i32 %13, 20
  %add27 = add nsw i32 21, %mul26
  %14 = load i32, i32* %bj, align 4
  %add28 = add nsw i32 %add27, %14
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %15 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp ne i32 %conv25, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.19
  %call35 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.124, i32 0, i32 0))
  store i32 %call35, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.19
  %16 = load i32, i32* %ai, align 4
  %mul37 = mul nsw i32 %16, 20
  %add38 = add nsw i32 21, %mul37
  %17 = load i32, i32* %aj, align 4
  %add39 = add nsw i32 %add38, %17
  %18 = load i32, i32* %bi, align 4
  %mul40 = mul nsw i32 %18, 20
  %add41 = add nsw i32 21, %mul40
  %19 = load i32, i32* %bj, align 4
  %add42 = add nsw i32 %add41, %19
  %call43 = call i32 @disconnect(i32 %add39, i32 %add42, i32* %disconnect_move)
  store i32 %call43, i32* %result, align 4
  call void @gtp_start_response(i32 0)
  %20 = load i32, i32* %result, align 4
  call void @gtp_print_code(i32 %20)
  %21 = load i32, i32* %result, align 4
  %cmp44 = icmp ne i32 %21, 0
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.36
  %22 = load i32, i32* %disconnect_move, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load i32, i32* %disconnect_move, align 4
  %rem = srem i32 %23, 20
  %sub47 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 %sub, i32 %sub47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.36
  %call49 = call i32 @gtp_finish_response()
  store i32 %call49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.34, %if.then.17, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_dragon_data(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0)) #4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @gtp_decode_coord(i8* %1, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* @stackp, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.127, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  call void @examine_position(i32 0, i32 7)
  call void @gtp_start_response(i32 0)
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp7 = icmp ult i32 %3, %4
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %if.end.6
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* @board_size, align 4
  %cmp9 = icmp ult i32 %5, %6
  br i1 %cmp9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %7, 20
  %add = add nsw i32 21, %mul
  %8 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %add, %8
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.10
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i32 %10, i32 %11)
  br label %if.end.56

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.8, %if.end.6
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %if.else
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* @board_size, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %n, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp18 = icmp slt i32 %14, %15
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %i, align 4
  %cmp21 = icmp eq i32 %16, %17
  br i1 %cmp21, label %land.lhs.true.23, label %lor.lhs.false

land.lhs.true.23:                                 ; preds = %for.body.20
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* %j, align 4
  %cmp24 = icmp eq i32 %18, %19
  br i1 %cmp24, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23, %for.body.20
  %20 = load i32, i32* %i, align 4
  %cmp26 = icmp eq i32 %20, -1
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.52

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %m, align 4
  %mul29 = mul nsw i32 %21, 20
  %add30 = add nsw i32 21, %mul29
  %22 = load i32, i32* %n, align 4
  %add31 = add nsw i32 %add30, %22
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.52

land.lhs.true.37:                                 ; preds = %land.lhs.true.28
  %24 = load i32, i32* %m, align 4
  %mul38 = mul nsw i32 %24, 20
  %add39 = add nsw i32 21, %mul38
  %25 = load i32, i32* %n, align 4
  %add40 = add nsw i32 %add39, %25
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom41
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx42, i32 0, i32 2
  %26 = load i32, i32* %origin, align 4
  %27 = load i32, i32* %m, align 4
  %mul43 = mul nsw i32 %27, 20
  %add44 = add nsw i32 21, %mul43
  %28 = load i32, i32* %n, align 4
  %add45 = add nsw i32 %add44, %28
  %cmp46 = icmp eq i32 %26, %add45
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true.37, %land.lhs.true.23
  %29 = load i32, i32* %m, align 4
  %30 = load i32, i32* %n, align 4
  call void @gtp_print_vertex(i32 %29, i32 %30)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = load i32, i32* %m, align 4
  %mul49 = mul nsw i32 %32, 20
  %add50 = add nsw i32 21, %mul49
  %33 = load i32, i32* %n, align 4
  %add51 = add nsw i32 %add50, %33
  call void @report_dragon(%struct._IO_FILE* %31, i32 %add51)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.37, %land.lhs.true.28, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %34 = load i32, i32* %n, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %35 = load i32, i32* %m, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, i32* %m, align 4
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.55, %if.then.14
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.4, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_dragon_status(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %str, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %2
  store i32 %add1, i32* %str, align 4
  %3 = load i32, i32* %str, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %s.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0)) #4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  call void @silent_examine_position(i32 2, i32 4)
  call void @gtp_start_response(i32 0)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %6 = load i32, i32* %pos, align 4
  %cmp12 = icmp slt i32 %6, 400
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %8 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %8 to i32
  %cmp17 = icmp ne i32 %conv16, 3
  br i1 %cmp17, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %str, align 4
  %cmp19 = icmp eq i32 %9, %10
  br i1 %cmp19, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, i32* %str, align 4
  %cmp21 = icmp eq i32 %11, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.81

land.lhs.true.23:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.81

land.lhs.true.29:                                 ; preds = %land.lhs.true.23
  %14 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %14 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom30
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx31, i32 0, i32 2
  %15 = load i32, i32* %origin, align 4
  %16 = load i32, i32* %pos, align 4
  %cmp32 = icmp eq i32 %15, %16
  br i1 %cmp32, label %if.then.34, label %if.end.81

if.then.34:                                       ; preds = %land.lhs.true.29, %land.lhs.true
  %17 = load i32, i32* %str, align 4
  %cmp35 = icmp eq i32 %17, 0
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.34
  %18 = load i32, i32* %pos, align 4
  %div = sdiv i32 %18, 20
  %sub = sub nsw i32 %div, 1
  %19 = load i32, i32* %pos, align 4
  %rem = srem i32 %19, 20
  %sub38 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), i32 %sub, i32 %sub38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.34
  %20 = load i32, i32* %pos, align 4
  %idxprom40 = sext i32 %20 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom40
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx41, i32 0, i32 16
  %21 = load i32, i32* %status, align 4
  %cmp42 = icmp eq i32 %21, 1
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.39
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0))
  br label %if.end.80

if.else.45:                                       ; preds = %if.end.39
  %22 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %22 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom46
  %status48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx47, i32 0, i32 16
  %23 = load i32, i32* %status48, align 4
  %cmp49 = icmp eq i32 %23, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.45
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0))
  br label %if.end.79

if.else.52:                                       ; preds = %if.else.45
  %24 = load i32, i32* %pos, align 4
  %idxprom53 = sext i32 %24 to i64
  %arrayidx54 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom53
  %status55 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx54, i32 0, i32 16
  %25 = load i32, i32* %status55, align 4
  %cmp56 = icmp eq i32 %25, 3
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.52
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0))
  br label %if.end.78

if.else.59:                                       ; preds = %if.else.52
  %26 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %26 to i64
  %arrayidx61 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom60
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx61, i32 0, i32 8
  %27 = load i32, i32* %owl_attack_point, align 4
  %div62 = sdiv i32 %27, 20
  %sub63 = sub nsw i32 %div62, 1
  %28 = load i32, i32* %pos, align 4
  %idxprom64 = sext i32 %28 to i64
  %arrayidx65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom64
  %owl_attack_point66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx65, i32 0, i32 8
  %29 = load i32, i32* %owl_attack_point66, align 4
  %rem67 = srem i32 %29, 20
  %sub68 = sub nsw i32 %rem67, 1
  %30 = load i32, i32* %pos, align 4
  %idxprom69 = sext i32 %30 to i64
  %arrayidx70 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom69
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx70, i32 0, i32 12
  %31 = load i32, i32* %owl_defense_point, align 4
  %div71 = sdiv i32 %31, 20
  %sub72 = sub nsw i32 %div71, 1
  %32 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %32 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom73
  %owl_defense_point75 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx74, i32 0, i32 12
  %33 = load i32, i32* %owl_defense_point75, align 4
  %rem76 = srem i32 %33, 20
  %sub77 = sub nsw i32 %rem76, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i32 %sub63, i32 %sub68, i32 %sub72, i32 %sub77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.51
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.44
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %land.lhs.true.29, %land.lhs.true.23, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %34 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then.3
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_dragon_stones(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  store i32 0, i32* %color, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0)) #4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @gtp_decode_coord(i8* %1, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @gtp_decode_color(i8* %2, i32* %color)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add, %4
  %idxprom = sext i32 %add7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.137, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  call void @examine_position(i32 0, i32 4)
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end.12
  %6 = load i32, i32* %u, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp13 = icmp slt i32 %6, %7
  br i1 %cmp13, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %v, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.95, %for.body
  %8 = load i32, i32* %v, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %for.body.18, label %for.end.97

for.body.18:                                      ; preds = %for.cond.15
  %10 = load i32, i32* %u, align 4
  %mul19 = mul nsw i32 %10, 20
  %add20 = add nsw i32 21, %mul19
  %11 = load i32, i32* %v, align 4
  %add21 = add nsw i32 %add20, %11
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.18
  %13 = load i32, i32* %color, align 4
  %cmp27 = icmp ne i32 %13, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.39

land.lhs.true.29:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %u, align 4
  %mul30 = mul nsw i32 %14, 20
  %add31 = add nsw i32 21, %mul30
  %15 = load i32, i32* %v, align 4
  %add32 = add nsw i32 %add31, %15
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %16 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %16 to i32
  %17 = load i32, i32* %color, align 4
  %cmp36 = icmp ne i32 %conv35, %17
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.29, %for.body.18
  br label %for.inc.95

if.end.39:                                        ; preds = %land.lhs.true.29, %lor.lhs.false
  %18 = load i32, i32* %u, align 4
  %mul40 = mul nsw i32 %18, 20
  %add41 = add nsw i32 21, %mul40
  %19 = load i32, i32* %v, align 4
  %add42 = add nsw i32 %add41, %19
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom43
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx44, i32 0, i32 2
  %20 = load i32, i32* %origin, align 4
  %21 = load i32, i32* %u, align 4
  %mul45 = mul nsw i32 %21, 20
  %add46 = add nsw i32 21, %mul45
  %22 = load i32, i32* %v, align 4
  %add47 = add nsw i32 %add46, %22
  %cmp48 = icmp ne i32 %20, %add47
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.39
  br label %for.inc.95

if.end.51:                                        ; preds = %if.end.39
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @board_size, align 4
  %cmp52 = icmp ult i32 %23, %24
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.70

land.lhs.true.54:                                 ; preds = %if.end.51
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* @board_size, align 4
  %cmp55 = icmp ult i32 %25, %26
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %land.lhs.true.54
  %27 = load i32, i32* %i, align 4
  %mul58 = mul nsw i32 %27, 20
  %add59 = add nsw i32 21, %mul58
  %28 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %add59, %28
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom61
  %origin63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx62, i32 0, i32 2
  %29 = load i32, i32* %origin63, align 4
  %30 = load i32, i32* %u, align 4
  %mul64 = mul nsw i32 %30, 20
  %add65 = add nsw i32 21, %mul64
  %31 = load i32, i32* %v, align 4
  %add66 = add nsw i32 %add65, %31
  %cmp67 = icmp ne i32 %29, %add66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.57
  br label %for.inc.95

if.end.70:                                        ; preds = %land.lhs.true.57, %land.lhs.true.54, %if.end.51
  store i32 0, i32* %m, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.92, %if.end.70
  %32 = load i32, i32* %m, align 4
  %33 = load i32, i32* @board_size, align 4
  %cmp72 = icmp slt i32 %32, %33
  br i1 %cmp72, label %for.body.74, label %for.end.94

for.body.74:                                      ; preds = %for.cond.71
  store i32 0, i32* %n, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc, %for.body.74
  %34 = load i32, i32* %n, align 4
  %35 = load i32, i32* @board_size, align 4
  %cmp76 = icmp slt i32 %34, %35
  br i1 %cmp76, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.75
  %36 = load i32, i32* %m, align 4
  %mul79 = mul nsw i32 %36, 20
  %add80 = add nsw i32 21, %mul79
  %37 = load i32, i32* %n, align 4
  %add81 = add nsw i32 %add80, %37
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom82
  %origin84 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx83, i32 0, i32 2
  %38 = load i32, i32* %origin84, align 4
  %39 = load i32, i32* %u, align 4
  %mul85 = mul nsw i32 %39, 20
  %add86 = add nsw i32 21, %mul85
  %40 = load i32, i32* %v, align 4
  %add87 = add nsw i32 %add86, %40
  %cmp88 = icmp eq i32 %38, %add87
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.78
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* %n, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i32 %41, i32 %42)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %for.body.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %43 = load i32, i32* %n, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.75

for.end:                                          ; preds = %for.cond.75
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end
  %44 = load i32, i32* %m, align 4
  %inc93 = add nsw i32 %44, 1
  store i32 %inc93, i32* %m, align 4
  br label %for.cond.71

for.end.94:                                       ; preds = %for.cond.71
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94, %if.then.69, %if.then.50, %if.then.38
  %45 = load i32, i32* %v, align 4
  %inc96 = add nsw i32 %45, 1
  store i32 %inc96, i32* %v, align 4
  br label %for.cond.15

for.end.97:                                       ; preds = %for.cond.15
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %46 = load i32, i32* %u, align 4
  %inc99 = add nsw i32 %46, 1
  store i32 %inc99, i32* %u, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.100, %if.then.10, %if.then.4
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_dump_stack(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @dump_stack()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_echo(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_echo_err(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i8*, i8** %s.addr, align 8
  %call3 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* %4)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_estimate_score(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @silent_examine_position(i32 1, i32 4)
  %call = call float @estimate_score(float* @upper_bound, float* @lower_bound)
  store float %call, float* @score, align 4
  call void @gtp_start_response(i32 0)
  %1 = load float, float* @score, align 4
  %conv = fpext float %1 to double
  %cmp = fcmp oge double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, float* @score, align 4
  %conv2 = fpext float %2 to double
  %3 = load float, float* @upper_bound, align 4
  %conv3 = fpext float %3 to double
  %4 = load float, float* @lower_bound, align 4
  %conv4 = fpext float %4 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.140, i32 0, i32 0), double %conv2, double %conv3, double %conv4)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %5 = load float, float* @score, align 4
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp olt double %conv5, 0.000000e+00
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %6 = load float, float* @score, align 4
  %sub = fsub float -0.000000e+00, %6
  %conv9 = fpext float %sub to double
  %7 = load float, float* @upper_bound, align 4
  %conv10 = fpext float %7 to double
  %8 = load float, float* @lower_bound, align 4
  %conv11 = fpext float %8 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.141, i32 0, i32 0), double %conv9, double %conv10, double %conv11)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %call13 = call i32 @gtp_finish_response()
  ret i32 %call13
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_accuratelib(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %6 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call10 = call i32 @accuratelib(i32 %add9, i32 %6, i32 241, i32* %arraydecay)
  store i32 %call10, i32* %liberties, align 4
  call void @gtp_start_response(i32 0)
  %7 = load i32, i32* %liberties, align 4
  %arraydecay11 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  call void @gtp_print_vertices2(i32 %7, i32* %arraydecay11)
  %call12 = call i32 @gtp_finish_response()
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_accurate_approxlib(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %6 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call10 = call i32 @accuratelib(i32 %add9, i32 %6, i32 241, i32* %arraydecay)
  store i32 %call10, i32* %liberties, align 4
  call void @gtp_start_response(i32 0)
  %7 = load i32, i32* %liberties, align 4
  %arraydecay11 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  call void @gtp_print_vertices2(i32 %7, i32* %arraydecay11)
  %call12 = call i32 @gtp_finish_response()
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_experimental_score(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %upper_bound = alloca float, align 4
  %lower_bound = alloca float, align 4
  %score = alloca float, align 4
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %color, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %color, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %color, align 4
  %call3 = call i32 @genmove_conservative(i32* null, i32* null, i32 %3)
  %call4 = call float @estimate_score(float* %upper_bound, float* %lower_bound)
  %4 = load i32, i32* @debug, align 4
  %and = and i32 %4, 65536
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load float, float* %upper_bound, align 4
  %conv = fpext float %6 to double
  %7 = load float, float* %lower_bound, align 4
  %conv7 = fpext float %7 to double
  %8 = load float, float* getelementptr inbounds ([10 x float], [10 x float]* @best_move_values, i32 0, i64 0), align 4
  %conv8 = fpext float %8 to double
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.143, i32 0, i32 0), double %conv, double %conv7, double %conv8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %9 = load i32, i32* %color, align 4
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %10 = load float, float* %lower_bound, align 4
  %11 = load float, float* getelementptr inbounds ([10 x float], [10 x float]* @best_move_values, i32 0, i64 0), align 4
  %add = fadd float %10, %11
  store float %add, float* %score, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.10
  %12 = load float, float* %upper_bound, align 4
  %13 = load float, float* getelementptr inbounds ([10 x float], [10 x float]* @best_move_values, i32 0, i64 0), align 4
  %sub = fsub float %12, %13
  store float %sub, float* %score, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %14 = load float, float* %score, align 4
  %conv15 = fpext float %14 to double
  %call16 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), double %conv15)
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_eval_eye(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %value = alloca %struct.eyevalue, align 1
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %m, i32* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @silent_examine_position(i32 2, i32 3)
  %1 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %n, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %m, align 4
  %mul4 = mul nsw i32 %4, 20
  %add5 = add nsw i32 21, %mul4
  %5 = load i32, i32* %n, align 4
  %add6 = add nsw i32 %add5, %5
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom7
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx8, i32 0, i32 3
  %6 = load i32, i32* %origin, align 4
  store i32 %6, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  call void @compute_eyes(i32 %7, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 0, i32 0)
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %m, align 4
  %mul9 = mul nsw i32 %8, 20
  %add10 = add nsw i32 21, %mul9
  %9 = load i32, i32* %n, align 4
  %add11 = add nsw i32 %add10, %9
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom12
  %color14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx13, i32 0, i32 0
  %10 = load i32, i32* %color14, align 4
  %cmp15 = icmp eq i32 %10, 4
  br i1 %cmp15, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.else
  %11 = load i32, i32* %m, align 4
  %mul17 = mul nsw i32 %11, 20
  %add18 = add nsw i32 21, %mul17
  %12 = load i32, i32* %n, align 4
  %add19 = add nsw i32 %add18, %12
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom20
  %origin22 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx21, i32 0, i32 3
  %13 = load i32, i32* %origin22, align 4
  store i32 %13, i32* %pos, align 4
  %14 = load i32, i32* %pos, align 4
  call void @compute_eyes(i32 %14, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 0, i32 0)
  br label %if.end.25

if.else.23:                                       ; preds = %if.else
  %call24 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0))
  store i32 %call24, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.3
  call void @gtp_start_response(i32 0)
  %call27 = call i32 @min_eyes(%struct.eyevalue* %value)
  %call28 = call i32 @max_eyes(%struct.eyevalue* %value)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32 %call27, i32 %call28)
  %call29 = call i32 @eye_move_urgency(%struct.eyevalue* %value)
  %cmp30 = icmp sgt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.end.26
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %15 = load i32, i32* %attack_point, align 4
  %div = sdiv i32 %15, 20
  %sub = sub nsw i32 %div, 1
  %16 = load i32, i32* %attack_point, align 4
  %rem = srem i32 %16, 20
  %sub32 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub32)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %17 = load i32, i32* %defense_point, align 4
  %div33 = sdiv i32 %17, 20
  %sub34 = sub nsw i32 %div33, 1
  %18 = load i32, i32* %defense_point, align 4
  %rem35 = srem i32 %18, 20
  %sub36 = sub nsw i32 %rem35, 1
  call void @gtp_print_vertex(i32 %sub34, i32 %sub36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.end.26
  %call38 = call i32 @gtp_finish_response()
  store i32 %call38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else.23, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_final_score(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %seed = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %seed, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %seed) #4
  %1 = load i32, i32* %seed, align 4
  store i32 %1, i32* @random_seed, align 4
  %2 = load i32, i32* %seed, align 4
  call void @finish_and_score_game(i32 %2)
  call void @gtp_start_response(i32 0)
  %3 = load float, float* @final_score, align 4
  %conv = fpext float %3 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load float, float* @final_score, align 4
  %conv2 = fpext float %4 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), double %conv2)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %5 = load float, float* @final_score, align 4
  %conv3 = fpext float %5 to double
  %cmp4 = fcmp olt double %conv3, 0.000000e+00
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %6 = load float, float* @final_score, align 4
  %sub = fsub float -0.000000e+00, %6
  %conv7 = fpext float %sub to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), double %conv7)
  br label %if.end

if.else.8:                                        ; preds = %if.else
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %call10 = call i32 @gtp_finish_response()
  ret i32 %call10
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_final_status(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %seed = alloca i32, align 4
  %n = alloca i32, align 4
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %k = alloca i32, align 4
  %result = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %seed, align 4
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %seed) #4
  %4 = load i32, i32* %seed, align 4
  store i32 %4, i32* @random_seed, align 4
  %5 = load i32, i32* %seed, align 4
  call void @finish_and_score_game(i32 %5)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %6, 6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %aj, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %ai, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @status_numbers, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %9, %11
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.body
  %12 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [6 x i8*], [6 x i8*]* @status_names, i32 0, i64 %idxprom10
  %13 = load i8*, i8** %arrayidx11, align 8
  store i8* %13, i8** %result, align 8
  br label %for.end

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %15 = load i8*, i8** %result, align 8
  %call13 = call i32 (i8*, ...) @gtp_success(i8* %15)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_final_status_list(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %seed = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %k = alloca i32, align 4
  %status_string = alloca [1000 x i8], align 16
  %first = alloca i32, align 4
  %num_stones = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  store i8* %s, i8** %s.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %status_string, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* %arraydecay, i32* %n) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1000 x i8], [1000 x i8]* %status_string, i32 0, i32 0
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @status_names, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* %3) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @status_numbers, i32 0, i64 %idxprom7
  %5 = load i32, i32* %arrayidx8, align 4
  store i32 %5, i32* %status, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %7, 3
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.158, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.end
  store i32 0, i32* %seed, align 4
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %seed) #4
  %10 = load i32, i32* %seed, align 4
  store i32 %10, i32* @random_seed, align 4
  %11 = load i32, i32* %seed, align 4
  call void @finish_and_score_game(i32 %11)
  call void @gtp_start_response(i32 0)
  store i32 1, i32* %first, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.63, %if.end.13
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @board_size, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body.17, label %for.end.65

for.body.17:                                      ; preds = %for.cond.15
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.60, %for.body.17
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp19 = icmp slt i32 %14, %15
  br i1 %cmp19, label %for.body.20, label %for.end.62

for.body.20:                                      ; preds = %for.cond.18
  %16 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx23, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx24, align 4
  %19 = load i32, i32* %status, align 4
  %cmp25 = icmp ne i32 %18, %19
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.20
  br label %for.inc.60

if.end.27:                                        ; preds = %for.body.20
  %20 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %20, 20
  %add = add nsw i32 21, %mul
  %21 = load i32, i32* %j, align 4
  %add28 = add nsw i32 %add, %21
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %22 = load i8, i8* %arrayidx30, align 1
  %conv = zext i8 %22 to i32
  %cmp31 = icmp eq i32 %conv, 0
  br i1 %cmp31, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.end.27
  %23 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %if.then.33
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.35

if.else:                                          ; preds = %if.then.33
  store i32 0, i32* %first, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %24, i32 %25)
  br label %if.end.59

if.else.36:                                       ; preds = %if.end.27
  %26 = load i32, i32* %i, align 4
  %mul37 = mul nsw i32 %26, 20
  %add38 = add nsw i32 21, %mul37
  %27 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %add38, %27
  %call40 = call i32 @find_origin(i32 %add39)
  %28 = load i32, i32* %i, align 4
  %mul41 = mul nsw i32 %28, 20
  %add42 = add nsw i32 21, %mul41
  %29 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %add42, %29
  %cmp44 = icmp ne i32 %call40, %add43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.36
  br label %for.inc.60

if.end.47:                                        ; preds = %if.else.36
  %30 = load i32, i32* %first, align 4
  %tobool48 = icmp ne i32 %30, 0
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.47
  store i32 0, i32* %first, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  %31 = load i32, i32* %i, align 4
  %mul52 = mul nsw i32 %31, 20
  %add53 = add nsw i32 21, %mul52
  %32 = load i32, i32* %j, align 4
  %add54 = add nsw i32 %add53, %32
  %33 = load i32, i32* @board_size, align 4
  %34 = load i32, i32* @board_size, align 4
  %mul55 = mul nsw i32 %33, %34
  %arraydecay56 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call57 = call i32 @findstones(i32 %add54, i32 %mul55, i32* %arraydecay56)
  store i32 %call57, i32* %num_stones, align 4
  %35 = load i32, i32* %num_stones, align 4
  %arraydecay58 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  call void @gtp_print_vertices2(i32 %35, i32* %arraydecay58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.51, %if.end.35
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59, %if.then.46, %if.then.26
  %36 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %36, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.18

for.end.62:                                       ; preds = %for.cond.18
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %37 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %37, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.15

for.end.65:                                       ; preds = %for.cond.15
  %call66 = call i32 @gtp_finish_response()
  store i32 %call66, i32* %retval
  br label %return

return:                                           ; preds = %for.end.65, %if.then.11, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_findlib(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call10 = call i32 @findlib(i32 %add9, i32 241, i32* %arraydecay)
  store i32 %call10, i32* %liberties, align 4
  call void @gtp_start_response(i32 0)
  %6 = load i32, i32* %liberties, align 4
  %arraydecay11 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  call void @gtp_print_vertices2(i32 %6, i32* %arraydecay11)
  %call12 = call i32 @gtp_finish_response()
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_finish_sgftrace(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %filename = alloca [1000 x i8], align 16
  %nread = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* %arraydecay) #4
  store i32 %call, i32* %nread, align 4
  %1 = load i32, i32* %nread, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  call void @sgffile_enddump(i8* %arraydecay2)
  store i32 0, i32* @count_variations, align 4
  %call3 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_fixed_handicap(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %first = alloca i32, align 4
  %this_handicap = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %first, align 4
  %0 = load i32, i32* @gtp_version, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @clear_board()
  br label %if.end.4

if.else:                                          ; preds = %entry
  %call = call i32 @stones_on_board(i32 3)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %this_handicap) #4
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %call8 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.161, i32 0, i32 0))
  store i32 %call8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %2 = load i32, i32* %this_handicap, align 4
  %cmp10 = icmp slt i32 %2, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.9
  %3 = load i32, i32* @gtp_version, align 4
  %cmp11 = icmp sgt i32 %3, 1
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, i32* %this_handicap, align 4
  %cmp12 = icmp ne i32 %4, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call14 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i32 0, i32 0))
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false, %if.end.9
  %5 = load i32, i32* %this_handicap, align 4
  %call16 = call i32 @place_fixed_handicap(i32 %5)
  %6 = load i32, i32* %this_handicap, align 4
  %cmp17 = icmp ne i32 %call16, %6
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  call void @clear_board()
  %call19 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i32 0, i32 0))
  store i32 %call19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %7 = load i32, i32* %this_handicap, align 4
  store i32 %7, i32* @handicap, align 4
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end.20
  %8 = load i32, i32* %m, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp21 = icmp slt i32 %8, %9
  br i1 %cmp21, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* @board_size, align 4
  %cmp23 = icmp slt i32 %10, %11
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %12 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %12, 20
  %add = add nsw i32 21, %mul
  %13 = load i32, i32* %n, align 4
  %add25 = add nsw i32 %add, %13
  %idxprom = sext i32 %add25 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %cmp26 = icmp ne i32 %conv, 0
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %for.body.24
  %15 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.28
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.31

if.else.30:                                       ; preds = %if.then.28
  store i32 0, i32* %first, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %n, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i32 %16, i32 %17)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %18 = load i32, i32* %n, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %19 = load i32, i32* %m, align 4
  %inc34 = add nsw i32 %19, 1
  store i32 %inc34, i32* %m, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %call36 = call i32 @gtp_finish_response()
  store i32 %call36, i32* %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then.18, %if.then.13, %if.then.7, %if.then.2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_handicap(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @handicap, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_random_seed(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @random_seed, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_random_seed(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %seed = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %seed) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %seed, align 4
  store i32 %1, i32* @random_seed, align 4
  %call2 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_genmove(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %color, align 4
  %call5 = call i32 @genmove(i32* %i, i32* %j, i32 %3)
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %add, %5
  %6 = load i32, i32* %color, align 4
  call void @play_move(i32 %add6, i32 %6)
  call void @gtp_start_response(i32 0)
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %7, i32 %8)
  %call7 = call i32 @gtp_finish_response()
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_genmove_black(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @genmove(i32* %i, i32* %j, i32 2)
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %3
  call void @play_move(i32 %add4, i32 2)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  call void @play_move(i32 0, i32 2)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  call void @gtp_start_response(i32 0)
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %4, i32 %5)
  %call6 = call i32 @gtp_finish_response()
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_genmove_white(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @genmove(i32* %i, i32* %j, i32 1)
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %3
  call void @play_move(i32 %add4, i32 1)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  call void @play_move(i32 0, i32 1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  call void @gtp_start_response(i32 0)
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %4, i32 %5)
  %call6 = call i32 @gtp_finish_response()
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_connection_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %nodes = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call i32 @get_connection_node_counter()
  store i32 %call, i32* %nodes, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %nodes, align 4
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_life_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.149, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_owl_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %nodes = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call i32 @get_owl_node_counter()
  store i32 %call, i32* %nodes, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %nodes, align 4
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_reading_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %nodes = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call i32 @get_reading_node_counter()
  store i32 %call, i32* %nodes, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %nodes, align 4
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_trymove_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %nodes = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call i32 @get_trymove_counter()
  store i32 %call, i32* %nodes, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %nodes, align 4
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_gg_genmove(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %n = alloca i32, align 4
  %seed = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %seed, align 4
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.166, i32 0, i32 0), i32* %seed) #4
  %5 = load i32, i32* %seed, align 4
  store i32 %5, i32* @random_seed, align 4
  %6 = load i32, i32* %color, align 4
  %call6 = call i32 @genmove_conservative(i32* %i, i32* %j, i32 %6)
  call void @gtp_start_response(i32 0)
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %7, i32 %8)
  %call7 = call i32 @gtp_finish_response()
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_gg_undo(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %number_moves = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %number_moves, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %number_moves) #4
  %1 = load i32, i32* %number_moves, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.167, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %number_moves, align 4
  %call2 = call i32 @undo_move(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.168, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  call void @reset_engine()
  %call6 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_list_commands(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [110 x %struct.gtp_command], [110 x %struct.gtp_command]* @commands, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [110 x %struct.gtp_command], [110 x %struct.gtp_command]* @commands, i32 0, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %name3, align 8
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i32 0, i32 0), i8* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_increase_depths(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @increase_depth_values()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_is_legal(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %3 = load i32, i32* %color, align 4
  %call3 = call i32 @is_legal(i32 %add2, i32 %3)
  %call4 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %call3)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_known_command(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %command = alloca [1000 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %command, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* %arraydecay) #4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [110 x %struct.gtp_command], [110 x %struct.gtp_command]* @commands, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %command, i32 0, i32 0
  %3 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [110 x %struct.gtp_command], [110 x %struct.gtp_command]* @commands, i32 0, i64 %idxprom3
  %name5 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %arrayidx4, i32 0, i32 0
  %4 = load i8*, i8** %name5, align 8
  %call6 = call i32 @strcmp(i8* %arraydecay2, i8* %4) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  %call9 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %call11 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_komi(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), float* @komi) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_get_komi(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load float, float* @komi, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), double %conv)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_ladder_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %apos = alloca i32, align 4
  %attack_code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %call10 = call i32 @countlib(i32 %add9)
  %cmp11 = icmp ne i32 %call10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.6
  %call14 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.175, i32 0, i32 0))
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.6
  %6 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %6, 20
  %add17 = add nsw i32 21, %mul16
  %7 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %7
  %call19 = call i32 @simple_ladder(i32 %add18, i32* %apos)
  store i32 %call19, i32* %attack_code, align 4
  call void @gtp_start_response(i32 0)
  %8 = load i32, i32* %attack_code, align 4
  call void @gtp_print_code(i32 %8)
  %9 = load i32, i32* %attack_code, align 4
  %cmp20 = icmp sgt i32 %9, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %10 = load i32, i32* %apos, align 4
  %div = sdiv i32 %10, 20
  %sub = sub nsw i32 %div, 1
  %11 = load i32, i32* %apos, align 4
  %rem = srem i32 %11, 20
  %sub23 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.15
  %call25 = call i32 @gtp_finish_response()
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.13, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_level(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %new_level = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %new_level) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %new_level, align 4
  store i32 %1, i32* @level, align 4
  %call2 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_list_stones(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %vertexi = alloca [361 x i32], align 16
  %vertexj = alloca [361 x i32], align 16
  %vertices = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %color, align 4
  store i32 0, i32* %vertices, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add, %6
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %color, align 4
  %cmp6 = icmp eq i32 %conv, %8
  br i1 %cmp6, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %for.body.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %vertices, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [361 x i32], [361 x i32]* %vertexi, i32 0, i64 %idxprom9
  store i32 %9, i32* %arrayidx10, align 4
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %vertices, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %vertices, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [361 x i32], [361 x i32]* %vertexj, i32 0, i64 %idxprom11
  store i32 %11, i32* %arrayidx12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  call void @gtp_start_response(i32 0)
  %15 = load i32, i32* %vertices, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %vertexi, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [361 x i32], [361 x i32]* %vertexj, i32 0, i32 0
  call void @gtp_print_vertices(i32 %15, i32* %arraydecay, i32* %arraydecay18)
  %call19 = call i32 @gtp_finish_response()
  store i32 %call19, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_loadsgf(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %filename = alloca [1000 x i8], align 16
  %untilstring = alloca [1000 x i8], align 16
  %sgftree = alloca %struct.SGFTree_t, align 8
  %gameinfo = alloca %struct.Gameinfo, align 8
  %nread = alloca i32, align 4
  %color_to_move = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [1000 x i8], [1000 x i8]* %untilstring, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay1) #4
  store i32 %call, i32* %nread, align 4
  %1 = load i32, i32* %nread, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @sgftree_clear(%struct.SGFTree_t* %sgftree)
  %arraydecay3 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %call4 = call i32 @sgftree_readfile(%struct.SGFTree_t* %sgftree, i8* %arraydecay3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %filename, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.178, i32 0, i32 0), i8* %arraydecay6)
  store i32 %call7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  call void @gameinfo_clear(%struct.Gameinfo* %gameinfo, i32 19, float 5.500000e+00)
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  call void @gameinfo_load_sgfheader(%struct.Gameinfo* %gameinfo, %struct.SGFNode_t* %2)
  %3 = load i32, i32* %nread, align 4
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %4 = load i32, i32* @gtp_orientation, align 4
  %call11 = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %gameinfo, %struct.SGFTree_t* %sgftree, i8* null, i32 %4)
  store i32 %call11, i32* %color_to_move, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.8
  %arraydecay12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %untilstring, i32 0, i32 0
  %5 = load i32, i32* @gtp_orientation, align 4
  %call13 = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %gameinfo, %struct.SGFTree_t* %sgftree, i8* %arraydecay12, i32 %5)
  store i32 %call13, i32* %color_to_move, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %handicap = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 0
  %6 = load i32, i32* %handicap, align 4
  store i32 %6, i32* @handicap, align 4
  %7 = load i32, i32* @board_size, align 4
  call void @gtp_internal_set_boardsize(i32 %7)
  call void @reset_engine()
  %root15 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root15, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %8)
  call void @gtp_start_response(i32 0)
  %9 = load i32, i32* %color_to_move, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i32 %9)
  %call16 = call i32 @gtp_finish_response()
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_name(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_analyze_semeai(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dragona = alloca i32, align 4
  %dragonb = alloca i32, align 4
  %resulta = alloca i32, align 4
  %resultb = alloca i32, align 4
  %move = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  store i32 %call, i32* %k, align 4
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %3
  store i32 %add2, i32* %dragona, align 4
  %4 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %4, 20
  %add4 = add nsw i32 21, %mul3
  %5 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add4, %5
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %call11 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %call13 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %9 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %9, 20
  %add16 = add nsw i32 21, %mul15
  %10 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %add16, %10
  store i32 %add17, i32* %dragonb, align 4
  %11 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %11, 20
  %add19 = add nsw i32 21, %mul18
  %12 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %add19, %12
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %13 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %13 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.14
  %call27 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call27, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.14
  %14 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %14, 20
  %add30 = add nsw i32 21, %mul29
  %15 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %add30, %15
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %16 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %16 to i32
  call void @silent_examine_position(i32 %conv34, i32 3)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool35 = icmp ne %struct.SGFTree_t* %17, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.28
  call void @reading_cache_clear()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.28
  %18 = load i32, i32* %dragona, align 4
  %19 = load i32, i32* %dragonb, align 4
  call void @owl_analyze_semeai(i32 %18, i32 %19, i32* %resulta, i32* %resultb, i32* %move, i32 1)
  call void @gtp_start_response(i32 0)
  %20 = load i32, i32* %resulta, align 4
  %call38 = call i8* @safety_to_string(i32 %20)
  %21 = load i32, i32* %resultb, align 4
  %call39 = call i8* @safety_to_string(i32 %21)
  %22 = load i32, i32* %move, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load i32, i32* %move, align 4
  %rem = srem i32 %23, 20
  %sub40 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i8* %call38, i8* %call39, i32 %sub, i32 %sub40)
  %call41 = call i32 @gtp_finish_response()
  store i32 %call41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.26, %if.then.12, %if.then.8, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_tactical_analyze_semeai(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dragona = alloca i32, align 4
  %dragonb = alloca i32, align 4
  %resulta = alloca i32, align 4
  %resultb = alloca i32, align 4
  %move = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  store i32 %call, i32* %k, align 4
  %1 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %3
  store i32 %add2, i32* %dragona, align 4
  %4 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %4, 20
  %add4 = add nsw i32 21, %mul3
  %5 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add4, %5
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %call11 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %call13 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %9 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %9, 20
  %add16 = add nsw i32 21, %mul15
  %10 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %add16, %10
  store i32 %add17, i32* %dragonb, align 4
  %11 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %11, 20
  %add19 = add nsw i32 21, %mul18
  %12 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %add19, %12
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %13 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %13 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.14
  %call27 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call27, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.14
  %14 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %14, 20
  %add30 = add nsw i32 21, %mul29
  %15 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %add30, %15
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %16 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %16 to i32
  call void @silent_examine_position(i32 %conv34, i32 3)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool35 = icmp ne %struct.SGFTree_t* %17, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.28
  call void @reading_cache_clear()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.28
  %18 = load i32, i32* %dragona, align 4
  %19 = load i32, i32* %dragonb, align 4
  call void @owl_analyze_semeai(i32 %18, i32 %19, i32* %resulta, i32* %resultb, i32* %move, i32 0)
  call void @gtp_start_response(i32 0)
  %20 = load i32, i32* %resulta, align 4
  %call38 = call i8* @safety_to_string(i32 %20)
  %21 = load i32, i32* %resultb, align 4
  %call39 = call i8* @safety_to_string(i32 %21)
  %22 = load i32, i32* %move, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load i32, i32* %move, align 4
  %rem = srem i32 %23, 20
  %sub40 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i8* %call38, i8* %call39, i32 %sub, i32 %sub40)
  %call41 = call i32 @gtp_finish_response()
  store i32 %call41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.26, %if.then.12, %if.then.8, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %attack_code = alloca i32, align 4
  %result_certain = alloca i32, align 4
  %kworm = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %6 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  call void @silent_examine_position(i32 %conv12, i32 3)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool13 = icmp ne %struct.SGFTree_t* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.6
  call void @reading_cache_clear()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.6
  %8 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %8, 20
  %add17 = add nsw i32 21, %mul16
  %9 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %9
  %call19 = call i32 @owl_attack(i32 %add18, i32* %attack_point, i32* %result_certain, i32* %kworm)
  store i32 %call19, i32* %attack_code, align 4
  call void @gtp_start_response(i32 0)
  %10 = load i32, i32* %attack_code, align 4
  call void @gtp_print_code(i32 %10)
  %11 = load i32, i32* %attack_code, align 4
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %12 = load i32, i32* %attack_point, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %attack_point, align 4
  %rem = srem i32 %13, 20
  %sub23 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.15
  %14 = load i32, i32* %result_certain, align 4
  %tobool25 = icmp ne i32 %14, 0
  br i1 %tobool25, label %if.end.28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.24
  %15 = load i32, i32* @report_uncertainty, align 4
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.24
  %call29 = call i32 @gtp_finish_response()
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_connection_defends(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %defense_code = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ti, i32* %tj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ti, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %tj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.183, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i32, i32* %n, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %call8 = call i32 @gtp_decode_coord(i8* %7, i32* %ai, i32* %aj)
  store i32 %call8, i32* %n, align 4
  %8 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %9 = load i32, i32* %n, align 4
  %10 = load i8*, i8** %s.addr, align 8
  %idx.ext14 = sext i32 %9 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %10, i64 %idx.ext14
  store i8* %add.ptr15, i8** %s.addr, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %call16 = call i32 @gtp_decode_coord(i8* %11, i32* %bi, i32* %bj)
  store i32 %call16, i32* %n, align 4
  %12 = load i32, i32* %n, align 4
  %cmp17 = icmp eq i32 %12, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.13
  %call20 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.13
  %13 = load i32, i32* %ai, align 4
  %mul22 = mul nsw i32 %13, 20
  %add23 = add nsw i32 21, %mul22
  %14 = load i32, i32* %aj, align 4
  %add24 = add nsw i32 %add23, %14
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %15 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %16 = load i32, i32* %bi, align 4
  %mul30 = mul nsw i32 %16, 20
  %add31 = add nsw i32 21, %mul30
  %17 = load i32, i32* %bj, align 4
  %add32 = add nsw i32 %add31, %17
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %18 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %18 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.21
  %call39 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.184, i32 0, i32 0))
  store i32 %call39, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false
  %19 = load i32, i32* %ai, align 4
  %mul41 = mul nsw i32 %19, 20
  %add42 = add nsw i32 21, %mul41
  %20 = load i32, i32* %aj, align 4
  %add43 = add nsw i32 %add42, %20
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom44
  %21 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %21 to i32
  %22 = load i32, i32* %bi, align 4
  %mul47 = mul nsw i32 %22, 20
  %add48 = add nsw i32 21, %mul47
  %23 = load i32, i32* %bj, align 4
  %add49 = add nsw i32 %add48, %23
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %24 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %24 to i32
  %cmp53 = icmp ne i32 %conv46, %conv52
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.40
  %call56 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.185, i32 0, i32 0))
  store i32 %call56, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.40
  %25 = load i32, i32* %ai, align 4
  %mul58 = mul nsw i32 %25, 20
  %add59 = add nsw i32 21, %mul58
  %26 = load i32, i32* %aj, align 4
  %add60 = add nsw i32 %add59, %26
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom61
  %27 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %27 to i32
  call void @silent_examine_position(i32 %conv63, i32 3)
  %28 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %28, null
  br i1 %tobool, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.57
  call void @reading_cache_clear()
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.57
  %29 = load i32, i32* %ti, align 4
  %mul66 = mul nsw i32 %29, 20
  %add67 = add nsw i32 21, %mul66
  %30 = load i32, i32* %tj, align 4
  %add68 = add nsw i32 %add67, %30
  %31 = load i32, i32* %ai, align 4
  %mul69 = mul nsw i32 %31, 20
  %add70 = add nsw i32 21, %mul69
  %32 = load i32, i32* %aj, align 4
  %add71 = add nsw i32 %add70, %32
  %33 = load i32, i32* %bi, align 4
  %mul72 = mul nsw i32 %33, 20
  %add73 = add nsw i32 21, %mul72
  %34 = load i32, i32* %bj, align 4
  %add74 = add nsw i32 %add73, %34
  %call75 = call i32 @owl_connection_defends(i32 %add68, i32 %add71, i32 %add74)
  store i32 %call75, i32* %defense_code, align 4
  call void @gtp_start_response(i32 0)
  %35 = load i32, i32* %defense_code, align 4
  call void @gtp_print_code(i32 %35)
  %call76 = call i32 @gtp_finish_response()
  store i32 %call76, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.55, %if.then.38, %if.then.19, %if.then.11, %if.then.5, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_defend(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %defend_code = alloca i32, align 4
  %result_certain = alloca i32, align 4
  %kworm = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %6 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  call void @silent_examine_position(i32 %conv12, i32 3)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool13 = icmp ne %struct.SGFTree_t* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.6
  call void @reading_cache_clear()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.6
  %8 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %8, 20
  %add17 = add nsw i32 21, %mul16
  %9 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %9
  %call19 = call i32 @owl_defend(i32 %add18, i32* %defense_point, i32* %result_certain, i32* %kworm)
  store i32 %call19, i32* %defend_code, align 4
  call void @gtp_start_response(i32 0)
  %10 = load i32, i32* %defend_code, align 4
  call void @gtp_print_code(i32 %10)
  %11 = load i32, i32* %defend_code, align 4
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %12 = load i32, i32* %defense_point, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %defense_point, align 4
  %rem = srem i32 %13, 20
  %sub23 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.15
  %14 = load i32, i32* %result_certain, align 4
  %tobool25 = icmp ne i32 %14, 0
  br i1 %tobool25, label %if.end.28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.24
  %15 = load i32, i32* @report_uncertainty, align 4
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.24
  %call29 = call i32 @gtp_finish_response()
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_does_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %attack_code = alloca i32, align 4
  %kworm = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ti, i32* %tj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ti, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %tj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.183, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.184, i32 0, i32 0))
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.13
  %11 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %11, 20
  %add26 = add nsw i32 21, %mul25
  %12 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %add26, %12
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %13 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %13 to i32
  call void @silent_examine_position(i32 %conv30, i32 3)
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %14, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  call void @reading_cache_clear()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.24
  %15 = load i32, i32* %ti, align 4
  %mul33 = mul nsw i32 %15, 20
  %add34 = add nsw i32 21, %mul33
  %16 = load i32, i32* %tj, align 4
  %add35 = add nsw i32 %add34, %16
  %17 = load i32, i32* %i, align 4
  %mul36 = mul nsw i32 %17, 20
  %add37 = add nsw i32 21, %mul36
  %18 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %add37, %18
  %call39 = call i32 @owl_does_attack(i32 %add35, i32 %add38, i32* %kworm)
  store i32 %call39, i32* %attack_code, align 4
  call void @gtp_start_response(i32 0)
  %19 = load i32, i32* %attack_code, align 4
  call void @gtp_print_code(i32 %19)
  %call40 = call i32 @gtp_finish_response()
  store i32 %call40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.22, %if.then.11, %if.then.5, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_does_defend(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %defense_code = alloca i32, align 4
  %kworm = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ti, i32* %tj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ti, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %tj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.183, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %i, i32* %j)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.184, i32 0, i32 0))
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.13
  %11 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %11, 20
  %add26 = add nsw i32 21, %mul25
  %12 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %add26, %12
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %13 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %13 to i32
  call void @silent_examine_position(i32 %conv30, i32 3)
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %14, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  call void @reading_cache_clear()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.24
  %15 = load i32, i32* %ti, align 4
  %mul33 = mul nsw i32 %15, 20
  %add34 = add nsw i32 21, %mul33
  %16 = load i32, i32* %tj, align 4
  %add35 = add nsw i32 %add34, %16
  %17 = load i32, i32* %i, align 4
  %mul36 = mul nsw i32 %17, 20
  %add37 = add nsw i32 21, %mul36
  %18 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %add37, %18
  %call39 = call i32 @owl_does_defend(i32 %add35, i32 %add38, i32* %kworm)
  store i32 %call39, i32* %defense_code, align 4
  call void @gtp_start_response(i32 0)
  %19 = load i32, i32* %defense_code, align 4
  call void @gtp_print_code(i32 %19)
  %call40 = call i32 @gtp_finish_response()
  store i32 %call40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.22, %if.then.11, %if.then.5, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_substantial(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %6 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  %sub = sub nsw i32 3, %conv12
  call void @silent_examine_position(i32 %sub, i32 3)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool13 = icmp ne %struct.SGFTree_t* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.6
  call void @reading_cache_clear()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.6
  %8 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %8, 20
  %add17 = add nsw i32 21, %mul16
  %9 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %9
  %call19 = call i32 @owl_substantial(i32 %add18)
  store i32 %call19, i32* %result, align 4
  %10 = load i32, i32* %result, align 4
  %call20 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %10)
  store i32 %call20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_threaten_attack(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %attack_point1 = alloca i32, align 4
  %attack_point2 = alloca i32, align 4
  %attack_code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %6 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  call void @silent_examine_position(i32 %conv12, i32 3)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool13 = icmp ne %struct.SGFTree_t* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.6
  call void @reading_cache_clear()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.6
  %8 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %8, 20
  %add17 = add nsw i32 21, %mul16
  %9 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %9
  %call19 = call i32 @owl_threaten_attack(i32 %add18, i32* %attack_point1, i32* %attack_point2)
  store i32 %call19, i32* %attack_code, align 4
  call void @gtp_start_response(i32 0)
  %10 = load i32, i32* %attack_code, align 4
  call void @gtp_print_code(i32 %10)
  %11 = load i32, i32* %attack_code, align 4
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %12 = load i32, i32* %attack_point1, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %attack_point1, align 4
  %rem = srem i32 %13, 20
  %sub23 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub23)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %14 = load i32, i32* %attack_point2, align 4
  %div24 = sdiv i32 %14, 20
  %sub25 = sub nsw i32 %div24, 1
  %15 = load i32, i32* %attack_point2, align 4
  %rem26 = srem i32 %15, 20
  %sub27 = sub nsw i32 %rem26, 1
  call void @gtp_print_vertex(i32 %sub25, i32 %sub27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.end.15
  %call29 = call i32 @gtp_finish_response()
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_owl_threaten_defense(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %defense_point1 = alloca i32, align 4
  %defense_point2 = alloca i32, align 4
  %defend_code = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %6 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %6 to i32
  call void @silent_examine_position(i32 %conv12, i32 3)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool13 = icmp ne %struct.SGFTree_t* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.6
  call void @reading_cache_clear()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.6
  %8 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %8, 20
  %add17 = add nsw i32 21, %mul16
  %9 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %9
  %call19 = call i32 @owl_threaten_defense(i32 %add18, i32* %defense_point1, i32* %defense_point2)
  store i32 %call19, i32* %defend_code, align 4
  call void @gtp_start_response(i32 0)
  %10 = load i32, i32* %defend_code, align 4
  call void @gtp_print_code(i32 %10)
  %11 = load i32, i32* %defend_code, align 4
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.15
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %12 = load i32, i32* %defense_point1, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %defense_point1, align 4
  %rem = srem i32 %13, 20
  %sub23 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub23)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  %14 = load i32, i32* %defense_point2, align 4
  %div24 = sdiv i32 %14, 20
  %sub25 = sub nsw i32 %div24, 1
  %15 = load i32, i32* %defense_point2, align 4
  %rem26 = srem i32 %15, 20
  %sub27 = sub nsw i32 %rem26, 1
  call void @gtp_print_vertex(i32 %sub25, i32 %sub27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.end.15
  %call29 = call i32 @gtp_finish_response()
  store i32 %call29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_play(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %3 = load i32, i32* %color, align 4
  %call3 = call i32 @is_legal(i32 %add2, i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %4, 20
  %add9 = add nsw i32 21, %mul8
  %5 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %add9, %5
  %6 = load i32, i32* %color, align 4
  call void @play_move(i32 %add10, i32 %6)
  %call11 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_popgo(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0))
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @popgo()
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_orientation(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %orientation = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %orientation) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %orientation, align 4
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %orientation, align 4
  %cmp3 = icmp sgt i32 %2, 7
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.188, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  call void @clear_board()
  %3 = load i32, i32* %orientation, align 4
  store i32 %3, i32* @gtp_orientation, align 4
  call void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* @rotate_on_input, void (i32, i32, i32*, i32*)* @rotate_on_output)
  %call7 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_place_free_handicap(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %first = alloca i32, align 4
  %this_handicap = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %first, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32* %this_handicap) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.161, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @stones_on_board(i32 3)
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %1 = load i32, i32* %this_handicap, align 4
  %cmp7 = icmp slt i32 %1, 2
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %2 = load i32, i32* %this_handicap, align 4
  %call11 = call i32 @place_free_handicap(i32 %2)
  store i32 %call11, i32* @handicap, align 4
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %if.end.10
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp12 = icmp slt i32 %3, %4
  br i1 %cmp12, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %5 = load i32, i32* %n, align 4
  %6 = load i32, i32* @board_size, align 4
  %cmp14 = icmp slt i32 %5, %6
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %7 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %7, 20
  %add = add nsw i32 21, %mul
  %8 = load i32, i32* %n, align 4
  %add16 = add nsw i32 %add, %8
  %idxprom = sext i32 %add16 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp17 = icmp ne i32 %conv, 0
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %for.body.15
  %10 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.then.19
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0))
  br label %if.end.21

if.else:                                          ; preds = %if.then.19
  store i32 0, i32* %first, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %n, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i32 %11, i32 %12)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %13 = load i32, i32* %n, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %14 = load i32, i32* %m, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, i32* %m, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %call26 = call i32 @gtp_finish_response()
  store i32 %call26, i32* %retval
  br label %return

return:                                           ; preds = %for.end.25, %if.then.8, %if.then.4, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_protocol_version(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @gtp_version, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_query_boardsize(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @board_size, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_query_orientation(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* @gtp_orientation, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_quit(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_restricted_genmove(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %n = alloca i32, align 4
  %allowed_moves = alloca [400 x i32], align 16
  %number_allowed_moves = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %number_allowed_moves, align 4
  %0 = bitcast [400 x i32]* %allowed_moves to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %1, i32* %color)
  store i32 %call, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n, align 4
  %4 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.12
  %5 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @gtp_decode_coord(i8* %5, i32* %i, i32* %j)
  store i32 %call2, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %7, 20
  %add = add nsw i32 21, %mul
  %8 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %8
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* %allowed_moves, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %9 = load i32, i32* %number_allowed_moves, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %number_allowed_moves, align 4
  %10 = load i32, i32* %n, align 4
  %11 = load i8*, i8** %s.addr, align 8
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext5
  store i8* %add.ptr6, i8** %s.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %while.body
  %12 = load i8*, i8** %s.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0)) #4
  %cmp8 = icmp ne i32 %call7, -1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %call10 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call10, i32* %retval
  br label %return

if.else.11:                                       ; preds = %if.else
  br label %while.end

if.end.12:                                        ; preds = %if.then.3
  br label %while.body

while.end:                                        ; preds = %if.else.11
  %13 = load i32, i32* %number_allowed_moves, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %while.end
  %call15 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.189, i32 0, i32 0))
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %while.end
  %14 = load i32, i32* @stackp, align 4
  %cmp17 = icmp sgt i32 %14, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %call19 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  store i32 0, i32* @random_seed, align 4
  %15 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %allowed_moves, i32 0, i32 0
  %call21 = call i32 @genmove_restricted(i32* %i, i32* %j, i32 %15, i32* %arraydecay)
  call void @gtp_start_response(i32 0)
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %16, i32 %17)
  %call22 = call i32 @gtp_finish_response()
  store i32 %call22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.14, %if.then.9, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reg_genmove(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @stackp, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.165, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* @random_seed, align 4
  %3 = load i32, i32* %color, align 4
  %call5 = call i32 @genmove_conservative(i32* %i, i32* %j, i32 %3)
  call void @gtp_start_response(i32 0)
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  call void @gtp_print_vertex(i32 %4, i32 %5)
  %call6 = call i32 @gtp_finish_response()
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_report_uncertainty(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.190, i32 0, i32 0), i64 2) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @report_uncertainty, align 4
  %call1 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0), i64 3) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @report_uncertainty, align 4
  %call5 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.192, i32 0, i32 0))
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reset_connection_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @reset_connection_node_counter()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reset_life_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reset_owl_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @reset_owl_node_counter()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reset_reading_node_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @reset_reading_node_counter()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_reset_trymove_counter(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @reset_trymove_counter()
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_same_dragon(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %ai, i32* %aj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call2 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %bi, i32* %bj)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %ai, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %aj, align 4
  %add6 = add nsw i32 %add, %5
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %7 = load i32, i32* %bi, align 4
  %mul9 = mul nsw i32 %7, 20
  %add10 = add nsw i32 21, %mul9
  %8 = load i32, i32* %bj, align 4
  %add11 = add nsw i32 %add10, %8
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.5
  %call18 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  call void @silent_examine_position(i32 2, i32 3)
  %10 = load i32, i32* %ai, align 4
  %mul20 = mul nsw i32 %10, 20
  %add21 = add nsw i32 21, %mul20
  %11 = load i32, i32* %aj, align 4
  %add22 = add nsw i32 %add21, %11
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom23
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx24, i32 0, i32 1
  %12 = load i32, i32* %id, align 4
  %13 = load i32, i32* %bi, align 4
  %mul25 = mul nsw i32 %13, 20
  %add26 = add nsw i32 21, %mul25
  %14 = load i32, i32* %bj, align 4
  %add27 = add nsw i32 %add26, %14
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom28
  %id30 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx29, i32 0, i32 1
  %15 = load i32, i32* %id30, align 4
  %cmp31 = icmp eq i32 %12, %15
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %conv32)
  store i32 %call33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.3, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_set_free_handicap(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %call = call i32 @stones_on_board(i32 3)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %0, 361
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %s.addr, align 8
  %call3 = call i32 @gtp_decode_coord(i8* %1, i32* %i, i32* %j)
  store i32 %call3, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %add, %4
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  call void @clear_board()
  %call10 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.193, i32 0, i32 0))
  store i32 %call10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.5
  %6 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %6, 20
  %add13 = add nsw i32 21, %mul12
  %7 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %add13, %7
  call void @add_stone(i32 %add14, i32 2)
  %8 = load i32, i32* %n, align 4
  %9 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %10 = load i8*, i8** %s.addr, align 8
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0)) #4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %call19 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call19, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else
  br label %for.end

if.end.21:                                        ; preds = %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.20, %for.cond
  %12 = load i32, i32* %k, align 4
  %cmp22 = icmp slt i32 %12, 2
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.end
  call void @clear_board()
  %call25 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i32 0, i32 0))
  store i32 %call25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.end
  %13 = load i32, i32* %k, align 4
  store i32 %13, i32* @handicap, align 4
  %call27 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.24, %if.then.18, %if.then.9, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_showboard(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @gtp_start_response(i32 0)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @simple_showboard(%struct._IO_FILE* %1)
  %call = call i32 @gtp_finish_response()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_is_surrounded(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.194, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %5, 20
  %add9 = add nsw i32 21, %mul8
  %6 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %add9, %6
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %7 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %7 to i32
  call void @silent_examine_position(i32 %conv13, i32 4)
  %8 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom17
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx18, i32 0, i32 1
  %10 = load i32, i32* %id, align 4
  %idxprom19 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx20 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom19
  %surround_status = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx20, i32 0, i32 15
  %12 = load i32, i32* %surround_status, align 4
  %call21 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %12)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_does_surround(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %si = alloca i32, align 4
  %sj = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %si, i32* %sj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %si, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %sj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.183, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %di, i32* %dj)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %di, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %dj, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.13
  %call23 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.194, i32 0, i32 0))
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.13
  %11 = load i32, i32* %di, align 4
  %mul25 = mul nsw i32 %11, 20
  %add26 = add nsw i32 21, %mul25
  %12 = load i32, i32* %dj, align 4
  %add27 = add nsw i32 %add26, %12
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %13 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %13 to i32
  call void @silent_examine_position(i32 %conv30, i32 4)
  %14 = load i32, i32* %si, align 4
  %mul31 = mul nsw i32 %14, 20
  %add32 = add nsw i32 21, %mul31
  %15 = load i32, i32* %sj, align 4
  %add33 = add nsw i32 %add32, %15
  %16 = load i32, i32* %di, align 4
  %mul34 = mul nsw i32 %16, 20
  %add35 = add nsw i32 21, %mul34
  %17 = load i32, i32* %dj, align 4
  %add36 = add nsw i32 %add35, %17
  %call37 = call i32 @does_surround(i32 %add33, i32 %add36)
  %call38 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %call37)
  store i32 %call38, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.11, %if.then.5, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_surround_map(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  %mi = alloca i32, align 4
  %mj = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %di, i32* %dj)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %di, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %dj, align 4
  %add2 = add nsw i32 %add, %3
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.184, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call8 = call i32 @gtp_decode_coord(i8* %add.ptr, i32* %mi, i32* %mj)
  store i32 %call8, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %8 = load i32, i32* %di, align 4
  %mul14 = mul nsw i32 %8, 20
  %add15 = add nsw i32 21, %mul14
  %9 = load i32, i32* %dj, align 4
  %add16 = add nsw i32 %add15, %9
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  call void @silent_examine_position(i32 %conv19, i32 4)
  %11 = load i32, i32* %di, align 4
  %mul20 = mul nsw i32 %11, 20
  %add21 = add nsw i32 21, %mul20
  %12 = load i32, i32* %dj, align 4
  %add22 = add nsw i32 %add21, %12
  %13 = load i32, i32* %mi, align 4
  %mul23 = mul nsw i32 %13, 20
  %add24 = add nsw i32 21, %mul23
  %14 = load i32, i32* %mj, align 4
  %add25 = add nsw i32 %add24, %14
  %call26 = call i32 @surround_map(i32 %add22, i32 %add25)
  %call27 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %call26)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_start_sgftrace(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @sgffile_begindump(%struct.SGFTree_t* @gtp_sgftree)
  store i32 1, i32* @count_variations, align 4
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_test_eyeshape(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %eye_vertices = alloca [361 x i32], align 16
  %eyesize = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %eyesize, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  store i32 %call, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %3
  %4 = load i32, i32* %eyesize, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* %eye_vertices, i32 0, i64 %idxprom
  store i32 %add1, i32* %arrayidx, align 4
  %5 = load i32, i32* %eyesize, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %eyesize, align 4
  %6 = load i32, i32* %n, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @gtp_decode_coord(i8* %8, i32* %i, i32* %j)
  store i32 %call2, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %eyesize, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load i32, i32* %eyesize, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %eye_vertices, i32 0, i32 0
  call void @test_eyeshape(i32 %10, i32* %arraydecay)
  %call5 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_time_left(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %color = alloca i32, align 4
  %time = alloca i32, align 4
  %stones = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_color(i8* %0, i32* %color)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i32* %time, i32* %stones) #4
  %cmp = icmp slt i32 %call2, 2
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.195, i32 0, i32 0))
  store i32 %call4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_time_settings(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i32* %a, i32* %b, i32* %c) #4
  %cmp = icmp slt i32 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.197, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %a, align 4
  store i32 %1, i32* @main_time, align 4
  %2 = load i32, i32* %b, align 4
  store i32 %2, i32* @byo_yomi_time, align 4
  %3 = load i32, i32* %c, align 4
  store i32 %3, i32* @byo_yomi_stones, align 4
  %call2 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_top_moves(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub7)
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %9 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), double %conv10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_top_moves_black(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @genmove(i32* %i, i32* %j, i32 2)
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub7)
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %9 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), double %conv10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i32 @gtp_finish_response()
  ret i32 %call11
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_top_moves_white(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @genmove(i32* %i, i32* %j, i32 1)
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @gtp_print_vertex(i32 %sub, i32 %sub7)
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %9 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i32 0, i32 0), double %conv10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i32 @gtp_finish_response()
  ret i32 %call11
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_trymove(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %2
  %cmp = icmp eq i32 %add1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %3, 20
  %add4 = add nsw i32 21, %mul3
  %4 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add4, %4
  %5 = load i32, i32* %color, align 4
  %call6 = call i32 @trymove(i32 %add5, i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.200, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_tryko(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_move(i8* %0, i32* %color, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %2
  %cmp = icmp eq i32 %add1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %3, 20
  %add4 = add nsw i32 21, %mul3
  %4 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add4, %4
  %5 = load i32, i32* %color, align 4
  %call6 = call i32 @tryko(i32 %add5, i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.201, i32 0, i32 0), i32 0, i32 0)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_tune_move_ordering(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %params = alloca [67 x i32], align 16
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 67
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i32 0, i32 0), i32* %p, i32* %n) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.203, i32 0, i32 0), i32 67)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %2 = load i32, i32* %p, align 4
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [67 x i32], [67 x i32]* %params, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %4 = load i32, i32* %n, align 4
  %5 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [67 x i32], [67 x i32]* %params, i32 0, i32 0
  call void @tune_move_ordering(i32* %arraydecay)
  %call3 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_undo(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @undo_move(i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.168, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @reset_engine()
  %call2 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_program_version(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.204, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_playwhite(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %c, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %c, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @tolower(i32 %conv) #4
  %conv1 = trunc i32 %call to i8
  %5 = load i8*, i8** %c, align 8
  store i8 %conv1, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i64 4) #5
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %8 = load i8*, i8** %s.addr, align 8
  %call4 = call i32 @gtp_decode_coord(i8* %8, i32* %i, i32* %j)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 20
  %add = add nsw i32 21, %mul
  %10 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add, %10
  %call10 = call i32 @is_legal(i32 %add9, i32 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store i32 %call13, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 %11, 20
  %add16 = add nsw i32 21, %mul15
  %12 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %add16, %12
  call void @play_move(i32 %add17, i32 1)
  %call18 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i32 0, i32 0))
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_worm_cutstone(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @gtp_decode_coord(i8* %0, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %2
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  call void @examine_position(i32 0, i32 1)
  %4 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %4, 20
  %add8 = add nsw i32 21, %mul7
  %5 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %add8, %5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 9
  %6 = load i32, i32* %cutstone, align 4
  %call12 = call i32 (i8*, ...) @gtp_success(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.205, i32 0, i32 0), i32 %6)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_worm_data(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %w = alloca %struct.worm_data*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0)) #4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @gtp_decode_coord(i8* %1, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0))
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @examine_position(i32 0, i32 1)
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* @board_size, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 %6, -1
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.6
  %7 = load i32, i32* %m, align 4
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %7, %8
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.36

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %n, align 4
  %10 = load i32, i32* %j, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %land.lhs.true.9, %for.body.6
  %11 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %11, 20
  %add = add nsw i32 21, %mul
  %12 = load i32, i32* %n, align 4
  %add12 = add nsw i32 %add, %12
  %idxprom = sext i32 %add12 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  store %struct.worm_data* %arrayidx, %struct.worm_data** %w, align 8
  %13 = load i32, i32* %m, align 4
  %14 = load i32, i32* %n, align 4
  call void @gtp_print_vertex(i32 %13, i32 %14)
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0))
  %15 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %15, i32 0, i32 0
  %16 = load i32, i32* %color, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.206, i32 0, i32 0), i32 %16)
  %17 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 1
  %18 = load i32, i32* %size, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.207, i32 0, i32 0), i32 %18)
  %19 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %19, i32 0, i32 2
  %20 = load float, float* %effective_size, align 4
  %conv = fpext float %20 to double
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.208, i32 0, i32 0), double %conv)
  %21 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %21, i32 0, i32 3
  %22 = load i32, i32* %origin, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %origin13 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 3
  %24 = load i32, i32* %origin13, align 4
  %rem = srem i32 %24, 20
  %sub14 = sub nsw i32 %rem, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.209, i32 0, i32 0), i32 %sub, i32 %sub14)
  %25 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %25, i32 0, i32 4
  %26 = load i32, i32* %liberties, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i32 0, i32 0), i32 %26)
  %27 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 5
  %28 = load i32, i32* %liberties2, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i32 0, i32 0), i32 %28)
  %29 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 6
  %30 = load i32, i32* %liberties3, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.212, i32 0, i32 0), i32 %30)
  %31 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties4 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %31, i32 0, i32 7
  %32 = load i32, i32* %liberties4, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.213, i32 0, i32 0), i32 %32)
  %33 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %33, i32 0, i32 15
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %34 = load i32, i32* %arrayidx15, align 4
  %div16 = sdiv i32 %34, 20
  %sub17 = sub nsw i32 %div16, 1
  %35 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_points18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %35, i32 0, i32 15
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points18, i32 0, i64 0
  %36 = load i32, i32* %arrayidx19, align 4
  %rem20 = srem i32 %36, 20
  %sub21 = sub nsw i32 %rem20, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.214, i32 0, i32 0), i32 %sub17, i32 %sub21)
  %37 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %38 = load i32, i32* %arrayidx22, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i32 0, i32 0), i32 %38)
  %39 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %lunch = getelementptr inbounds %struct.worm_data, %struct.worm_data* %39, i32 0, i32 8
  %40 = load i32, i32* %lunch, align 4
  %div23 = sdiv i32 %40, 20
  %sub24 = sub nsw i32 %div23, 1
  %41 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %lunch25 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %41, i32 0, i32 8
  %42 = load i32, i32* %lunch25, align 4
  %rem26 = srem i32 %42, 20
  %sub27 = sub nsw i32 %rem26, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.216, i32 0, i32 0), i32 %sub24, i32 %sub27)
  %43 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %43, i32 0, i32 17
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %44 = load i32, i32* %arrayidx28, align 4
  %div29 = sdiv i32 %44, 20
  %sub30 = sub nsw i32 %div29, 1
  %45 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_points31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 17
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points31, i32 0, i64 0
  %46 = load i32, i32* %arrayidx32, align 4
  %rem33 = srem i32 %46, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.217, i32 0, i32 0), i32 %sub30, i32 %sub34)
  %47 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %47, i32 0, i32 18
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %48 = load i32, i32* %arrayidx35, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.218, i32 0, i32 0), i32 %48)
  %49 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %49, i32 0, i32 9
  %50 = load i32, i32* %cutstone, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.219, i32 0, i32 0), i32 %50)
  %51 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 10
  %52 = load i32, i32* %cutstone2, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.220, i32 0, i32 0), i32 %52)
  %53 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %genus = getelementptr inbounds %struct.worm_data, %struct.worm_data* %53, i32 0, i32 11
  %54 = load i32, i32* %genus, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.221, i32 0, i32 0), i32 %54)
  %55 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %55, i32 0, i32 12
  %56 = load i32, i32* %inessential, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.222, i32 0, i32 0), i32 %56)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.11, %land.lhs.true.9, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %57 = load i32, i32* %n, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %58 = load i32, i32* %m, align 4
  %inc38 = add nsw i32 %58, 1
  store i32 %inc38, i32* %m, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @gtp_worm_stones(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %color = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %board_empty = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  store i32 0, i32* %color, align 4
  store i32 1, i32* %board_empty, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0)) #4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 @gtp_decode_coord(i8* %1, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @gtp_decode_color(i8* %2, i32* %color)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  store i32 %call5, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add, %4
  %idxprom = sext i32 %add7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.223, i32 0, i32 0))
  store i32 %call11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  call void @gtp_start_response(i32 0)
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %if.end.12
  %6 = load i32, i32* %u, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp13 = icmp slt i32 %6, %7
  br i1 %cmp13, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %v, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.97, %for.body
  %8 = load i32, i32* %v, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %for.body.18, label %for.end.99

for.body.18:                                      ; preds = %for.cond.15
  %10 = load i32, i32* %u, align 4
  %mul19 = mul nsw i32 %10, 20
  %add20 = add nsw i32 21, %mul19
  %11 = load i32, i32* %v, align 4
  %add21 = add nsw i32 %add20, %11
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.18
  %13 = load i32, i32* %color, align 4
  %cmp27 = icmp ne i32 %13, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.39

land.lhs.true.29:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %u, align 4
  %mul30 = mul nsw i32 %14, 20
  %add31 = add nsw i32 21, %mul30
  %15 = load i32, i32* %v, align 4
  %add32 = add nsw i32 %add31, %15
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %16 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %16 to i32
  %17 = load i32, i32* %color, align 4
  %cmp36 = icmp ne i32 %conv35, %17
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.29, %for.body.18
  br label %for.inc.97

if.end.39:                                        ; preds = %land.lhs.true.29, %lor.lhs.false
  store i32 0, i32* %board_empty, align 4
  %18 = load i32, i32* %u, align 4
  %mul40 = mul nsw i32 %18, 20
  %add41 = add nsw i32 21, %mul40
  %19 = load i32, i32* %v, align 4
  %add42 = add nsw i32 %add41, %19
  %call43 = call i32 @find_origin(i32 %add42)
  %20 = load i32, i32* %u, align 4
  %mul44 = mul nsw i32 %20, 20
  %add45 = add nsw i32 21, %mul44
  %21 = load i32, i32* %v, align 4
  %add46 = add nsw i32 %add45, %21
  %cmp47 = icmp ne i32 %call43, %add46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.39
  br label %for.inc.97

if.end.50:                                        ; preds = %if.end.39
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @board_size, align 4
  %cmp51 = icmp ult i32 %22, %23
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.66

land.lhs.true.53:                                 ; preds = %if.end.50
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* @board_size, align 4
  %cmp54 = icmp ult i32 %24, %25
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.66

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %26 = load i32, i32* %u, align 4
  %mul57 = mul nsw i32 %26, 20
  %add58 = add nsw i32 21, %mul57
  %27 = load i32, i32* %v, align 4
  %add59 = add nsw i32 %add58, %27
  %28 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 %28, 20
  %add61 = add nsw i32 21, %mul60
  %29 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %add61, %29
  %call63 = call i32 @same_string(i32 %add59, i32 %add62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.56
  br label %for.inc.97

if.end.66:                                        ; preds = %land.lhs.true.56, %land.lhs.true.53, %if.end.50
  store i32 0, i32* %m, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.94, %if.end.66
  %30 = load i32, i32* %m, align 4
  %31 = load i32, i32* @board_size, align 4
  %cmp68 = icmp slt i32 %30, %31
  br i1 %cmp68, label %for.body.70, label %for.end.96

for.body.70:                                      ; preds = %for.cond.67
  store i32 0, i32* %n, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %for.body.70
  %32 = load i32, i32* %n, align 4
  %33 = load i32, i32* @board_size, align 4
  %cmp72 = icmp slt i32 %32, %33
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %34 = load i32, i32* %m, align 4
  %mul75 = mul nsw i32 %34, 20
  %add76 = add nsw i32 21, %mul75
  %35 = load i32, i32* %n, align 4
  %add77 = add nsw i32 %add76, %35
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom78
  %36 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %36 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.93

land.lhs.true.83:                                 ; preds = %for.body.74
  %37 = load i32, i32* %m, align 4
  %mul84 = mul nsw i32 %37, 20
  %add85 = add nsw i32 21, %mul84
  %38 = load i32, i32* %n, align 4
  %add86 = add nsw i32 %add85, %38
  %39 = load i32, i32* %u, align 4
  %mul87 = mul nsw i32 %39, 20
  %add88 = add nsw i32 21, %mul87
  %40 = load i32, i32* %v, align 4
  %add89 = add nsw i32 %add88, %40
  %call90 = call i32 @same_string(i32 %add86, i32 %add89)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.83
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* %n, align 4
  call void (i8*, ...) @gtp_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i32 %41, i32 %42)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %land.lhs.true.83, %for.body.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %43 = load i32, i32* %n, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %44 = load i32, i32* %m, align 4
  %inc95 = add nsw i32 %44, 1
  store i32 %inc95, i32* %m, align 4
  br label %for.cond.67

for.end.96:                                       ; preds = %for.cond.67
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96, %if.then.65, %if.then.49, %if.then.38
  %45 = load i32, i32* %v, align 4
  %inc98 = add nsw i32 %45, 1
  store i32 %inc98, i32* %v, align 4
  br label %for.cond.15

for.end.99:                                       ; preds = %for.cond.15
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %46 = load i32, i32* %u, align 4
  %inc101 = add nsw i32 %46, 1
  store i32 %inc101, i32* %u, align 4
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  %47 = load i32, i32* %board_empty, align 4
  %tobool103 = icmp ne i32 %47, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.end.102
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %for.end.102
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.then.10, %if.then.4
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @gtp_decode_move(i8*, i32*, i32*, i32*) #2

declare i32 @gtp_failure(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare i32 @genmove(i32*, i32*, i32) #2

declare void @get_saved_dragons(i32, i8*) #2

declare void @get_saved_worms(i32, i8*) #2

declare i32 @atari_atari_confirm_safety(i32, i32, i32*, i32, i8*, i8*) #2

declare void @gtp_start_response(i32) #2

declare void @gtp_mprintf(i8*, ...) #2

declare i32 @gtp_finish_response() #2

declare i32 @gtp_decode_color(i8*, i32*) #2

declare i32 @is_legal(i32, i32) #2

declare void @gtp_print_vertices(i32, i32*, i32*) #2

declare i32 @gtp_decode_coord(i8*, i32*, i32*) #2

declare i32 @attack(i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @gtp_print_code(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @gtp_print_code.conversion, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %1)
  ret void
}

declare void @gtp_printf(i8*, ...) #2

declare void @gtp_print_vertex(i32, i32) #2

declare i32 @attack_either(i32, i32) #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @play_move(i32, i32) #2

declare i32 @gtp_success(i8*, ...) #2

declare i32 @stones_on_board(i32) #2

declare void @update_random_seed() #2

declare void @clear_board() #2

declare void @clear_persistent_reading_cache() #2

declare void @clear_persistent_owl_cache() #2

declare i8* @color_to_string(i32) #2

declare void @silent_examine_position(i32, i32) #2

declare i32 @atari_atari(i32, i32*, i8*, i32) #2

declare i32 @string_connect(i32, i32, i32*) #2

declare i32 @countlib(i32) #2

declare double @gg_cputime() #2

declare void @decrease_depth_values() #2

declare i32 @find_defense(i32, i32*) #2

declare i32 @defend_both(i32, i32) #2

declare i32 @disconnect(i32, i32, i32*) #2

declare void @examine_position(i32, i32) #2

declare void @report_dragon(%struct._IO_FILE*, i32) #2

declare void @dump_stack() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare float @estimate_score(float*, float*) #2

declare i32 @accuratelib(i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @gtp_print_vertices2(i32 %n, i32* %moves) #0 {
entry:
  %n.addr = alloca i32, align 4
  %moves.addr = alloca i32*, align 8
  %movei = alloca [361 x i32], align 16
  %movej = alloca [361 x i32], align 16
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %moves, i32** %moves.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %moves.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [361 x i32], [361 x i32]* %movei, i32 0, i64 %idxprom1
  store i32 %sub, i32* %arrayidx2, align 4
  %6 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** %moves.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %rem = srem i32 %8, 20
  %sub5 = sub nsw i32 %rem, 1
  %9 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [361 x i32], [361 x i32]* %movej, i32 0, i64 %idxprom6
  store i32 %sub5, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %movei, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [361 x i32], [361 x i32]* %movej, i32 0, i32 0
  call void @gtp_print_vertices(i32 %11, i32* %arraydecay, i32* %arraydecay8)
  ret void
}

declare i32 @genmove_conservative(i32*, i32*, i32) #2

declare void @compute_eyes(i32, %struct.eyevalue*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*, i32, i32) #2

declare i32 @min_eyes(%struct.eyevalue*) #2

declare i32 @max_eyes(%struct.eyevalue*) #2

declare i32 @eye_move_urgency(%struct.eyevalue*) #2

; Function Attrs: nounwind uwtable
define internal void @finish_and_score_game(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %move_val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %next = alloca i32, align 4
  %pass = alloca i32, align 4
  %moves = alloca i32, align 4
  %saved_board = alloca [19 x [19 x i32]], align 16
  %saved_pos = alloca %struct.board_state, align 4
  %cached_board = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store i32 0, i32* %pass, align 4
  store i32 0, i32* %moves, align 4
  store i32 1, i32* %cached_board, align 4
  %0 = load i32, i32* @finish_and_score_game.current_seed, align 4
  %1 = load i32, i32* %seed.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %seed.addr, align 4
  store i32 %2, i32* @finish_and_score_game.current_seed, align 4
  store i32 0, i32* %cached_board, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* @board_size, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %7, 20
  %add = add nsw i32 21, %mul
  %8 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %add, %8
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @finish_and_score_game.current_board, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp ne i32 %conv, %12
  br i1 %cmp10, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %for.body.4
  %13 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %13, 20
  %add14 = add nsw i32 21, %mul13
  %14 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %add14, %14
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %16 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @finish_and_score_game.current_board, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx22, align 4
  store i32 0, i32* %cached_board, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.12, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %20 = load i32, i32* %cached_board, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end.26
  br label %for.end.273

if.end.28:                                        ; preds = %for.end.26
  store i32 1, i32* @doing_scoring, align 4
  call void @store_board(%struct.board_state* %saved_pos)
  %call = call i32 @get_last_player()
  %cmp29 = icmp eq i32 %call, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  store i32 2, i32* %next, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end.28
  %call32 = call i32 @get_last_player()
  %sub = sub nsw i32 3, %call32
  store i32 %sub, i32* %next, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.33
  %21 = load i32, i32* %next, align 4
  %call34 = call i32 @genmove_conservative(i32* %i, i32* %j, i32 %21)
  store i32 %call34, i32* %move_val, align 4
  %22 = load i32, i32* %i, align 4
  %mul35 = mul nsw i32 %22, 20
  %add36 = add nsw i32 21, %mul35
  %23 = load i32, i32* %j, align 4
  %add37 = add nsw i32 %add36, %23
  %24 = load i32, i32* %next, align 4
  call void @play_move(i32 %add37, i32 %24)
  %25 = load i32, i32* %move_val, align 4
  %cmp38 = icmp sge i32 %25, 0
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %do.body
  store i32 0, i32* %pass, align 4
  %26 = load i32, i32* %moves, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %moves, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %do.body
  %27 = load i32, i32* %pass, align 4
  %inc43 = add nsw i32 %27, 1
  store i32 %inc43, i32* %pass, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  %28 = load i32, i32* %next, align 4
  %sub45 = sub nsw i32 3, %28
  store i32 %sub45, i32* %next, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.44
  %29 = load i32, i32* %pass, align 4
  %cmp46 = icmp slt i32 %29, 2
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %30 = load i32, i32* %moves, align 4
  %31 = load i32, i32* @board_size, align 4
  %32 = load i32, i32* @board_size, align 4
  %mul48 = mul nsw i32 %31, %32
  %cmp49 = icmp slt i32 %30, %mul48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %33 = phi i1 [ false, %do.cond ], [ %cmp49, %land.rhs ]
  br i1 %33, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %34 = load i32, i32* %next, align 4
  %35 = load float, float* @komi, align 4
  %call51 = call float @aftermath_compute_score(i32 %34, float %35, %struct.SGFTree_t* null)
  store float %call51, float* @final_score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.81, %do.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* @board_size, align 4
  %cmp53 = icmp slt i32 %36, %37
  br i1 %cmp53, label %for.body.55, label %for.end.83

for.body.55:                                      ; preds = %for.cond.52
  store i32 0, i32* %j, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.78, %for.body.55
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* @board_size, align 4
  %cmp57 = icmp slt i32 %38, %39
  br i1 %cmp57, label %for.body.59, label %for.end.80

for.body.59:                                      ; preds = %for.cond.56
  %40 = load i32, i32* %next, align 4
  %41 = load i32, i32* %i, align 4
  %mul60 = mul nsw i32 %41, 20
  %add61 = add nsw i32 21, %mul60
  %42 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %add61, %42
  %call63 = call i32 @aftermath_final_status(i32 %40, i32 %add62)
  %43 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx66, i32 0, i64 %idxprom64
  store i32 %call63, i32* %arrayidx67, align 4
  %45 = load i32, i32* %i, align 4
  %mul68 = mul nsw i32 %45, 20
  %add69 = add nsw i32 21, %mul68
  %46 = load i32, i32* %j, align 4
  %add70 = add nsw i32 %add69, %46
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom71
  %47 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %47 to i32
  %48 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %49 to i64
  %arrayidx76 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* %saved_board, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx76, i32 0, i64 %idxprom74
  store i32 %conv73, i32* %arrayidx77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.59
  %50 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %50, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond.56

for.end.80:                                       ; preds = %for.cond.56
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %51 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %51, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.52

for.end.83:                                       ; preds = %for.cond.52
  call void @restore_board(%struct.board_state* %saved_pos)
  store i32 0, i32* @doing_scoring, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.271, %for.end.83
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* @board_size, align 4
  %cmp85 = icmp slt i32 %52, %53
  br i1 %cmp85, label %for.body.87, label %for.end.273

for.body.87:                                      ; preds = %for.cond.84
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.268, %for.body.87
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* @board_size, align 4
  %cmp89 = icmp slt i32 %54, %55
  br i1 %cmp89, label %for.body.91, label %for.end.270

for.body.91:                                      ; preds = %for.cond.88
  %56 = load i32, i32* %i, align 4
  %mul92 = mul nsw i32 %56, 20
  %add93 = add nsw i32 21, %mul92
  %57 = load i32, i32* %j, align 4
  %add94 = add nsw i32 %add93, %57
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom95
  %58 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %58 to i32
  %59 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %60 to i64
  %arrayidx100 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* %saved_board, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx100, i32 0, i64 %idxprom98
  %61 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp eq i32 %conv97, %61
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.91
  br label %for.inc.268

if.end.105:                                       ; preds = %for.body.91
  %62 = load i32, i32* %i, align 4
  %mul106 = mul nsw i32 %62, 20
  %add107 = add nsw i32 21, %mul106
  %63 = load i32, i32* %j, align 4
  %add108 = add nsw i32 %add107, %63
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom109
  %64 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %64 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.159

if.then.114:                                      ; preds = %if.end.105
  %65 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %66 to i64
  %arrayidx117 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx117, i32 0, i64 %idxprom115
  %67 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp eq i32 %67, 1
  br i1 %cmp119, label %if.then.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.114
  %68 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %69 to i64
  %arrayidx123 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx123, i32 0, i64 %idxprom121
  %70 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %70, 7
  br i1 %cmp125, label %if.then.127, label %if.else.132

if.then.127:                                      ; preds = %lor.lhs.false, %if.then.114
  %71 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %72 to i64
  %arrayidx130 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx130, i32 0, i64 %idxprom128
  store i32 15, i32* %arrayidx131, align 4
  br label %if.end.158

if.else.132:                                      ; preds = %lor.lhs.false
  %73 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %74 to i64
  %arrayidx135 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom134
  %arrayidx136 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx135, i32 0, i64 %idxprom133
  %75 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp eq i32 %75, 0
  br i1 %cmp137, label %if.then.139, label %if.end.157

if.then.139:                                      ; preds = %if.else.132
  %76 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %76 to i64
  %77 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %77 to i64
  %arrayidx142 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* %saved_board, i32 0, i64 %idxprom141
  %arrayidx143 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx142, i32 0, i64 %idxprom140
  %78 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %78, 2
  br i1 %cmp144, label %if.then.146, label %if.else.151

if.then.146:                                      ; preds = %if.then.139
  %79 = load i32, i32* %j, align 4
  %idxprom147 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %80 to i64
  %arrayidx149 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx149, i32 0, i64 %idxprom147
  store i32 14, i32* %arrayidx150, align 4
  br label %if.end.156

if.else.151:                                      ; preds = %if.then.139
  %81 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %82 to i64
  %arrayidx154 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx154, i32 0, i64 %idxprom152
  store i32 13, i32* %arrayidx155, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.151, %if.then.146
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.else.132
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.127
  br label %if.end.267

if.else.159:                                      ; preds = %if.end.105
  %83 = load i32, i32* %i, align 4
  %mul160 = mul nsw i32 %83, 20
  %add161 = add nsw i32 21, %mul160
  %84 = load i32, i32* %j, align 4
  %add162 = add nsw i32 %add161, %84
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom163
  %85 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %85 to i32
  %cmp166 = icmp eq i32 %conv165, 2
  br i1 %cmp166, label %if.then.168, label %if.else.212

if.then.168:                                      ; preds = %if.else.159
  %86 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %86 to i64
  %87 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %87 to i64
  %arrayidx171 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx171, i32 0, i64 %idxprom169
  %88 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp eq i32 %88, 14
  br i1 %cmp173, label %if.then.175, label %if.else.180

if.then.175:                                      ; preds = %if.then.168
  %89 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %89 to i64
  %90 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %90 to i64
  %arrayidx178 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx178, i32 0, i64 %idxprom176
  store i32 0, i32* %arrayidx179, align 4
  br label %if.end.211

if.else.180:                                      ; preds = %if.then.168
  %91 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %92 to i64
  %arrayidx183 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx183, i32 0, i64 %idxprom181
  %93 = load i32, i32* %arrayidx184, align 4
  %cmp185 = icmp eq i32 %93, 15
  br i1 %cmp185, label %if.then.187, label %if.else.192

if.then.187:                                      ; preds = %if.else.180
  %94 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %94 to i64
  %95 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %95 to i64
  %arrayidx190 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx190, i32 0, i64 %idxprom188
  store i32 7, i32* %arrayidx191, align 4
  br label %if.end.210

if.else.192:                                      ; preds = %if.else.180
  %96 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %96 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %97 to i64
  %arrayidx195 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx195, i32 0, i64 %idxprom193
  %98 = load i32, i32* %arrayidx196, align 4
  %cmp197 = icmp eq i32 %98, 13
  br i1 %cmp197, label %if.then.199, label %if.else.204

if.then.199:                                      ; preds = %if.else.192
  %99 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %100 to i64
  %arrayidx202 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom201
  %arrayidx203 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx202, i32 0, i64 %idxprom200
  store i32 1, i32* %arrayidx203, align 4
  br label %if.end.209

if.else.204:                                      ; preds = %if.else.192
  %101 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %102 to i64
  %arrayidx207 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom206
  %arrayidx208 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx207, i32 0, i64 %idxprom205
  store i32 0, i32* %arrayidx208, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.204, %if.then.199
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.187
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.175
  br label %if.end.266

if.else.212:                                      ; preds = %if.else.159
  %103 = load i32, i32* %i, align 4
  %mul213 = mul nsw i32 %103, 20
  %add214 = add nsw i32 21, %mul213
  %104 = load i32, i32* %j, align 4
  %add215 = add nsw i32 %add214, %104
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom216
  %105 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %105 to i32
  %cmp219 = icmp eq i32 %conv218, 1
  br i1 %cmp219, label %if.then.221, label %if.end.265

if.then.221:                                      ; preds = %if.else.212
  %106 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %106 to i64
  %107 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %107 to i64
  %arrayidx224 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx224, i32 0, i64 %idxprom222
  %108 = load i32, i32* %arrayidx225, align 4
  %cmp226 = icmp eq i32 %108, 13
  br i1 %cmp226, label %if.then.228, label %if.else.233

if.then.228:                                      ; preds = %if.then.221
  %109 = load i32, i32* %j, align 4
  %idxprom229 = sext i32 %109 to i64
  %110 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %110 to i64
  %arrayidx231 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom230
  %arrayidx232 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx231, i32 0, i64 %idxprom229
  store i32 0, i32* %arrayidx232, align 4
  br label %if.end.264

if.else.233:                                      ; preds = %if.then.221
  %111 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %112 to i64
  %arrayidx236 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom235
  %arrayidx237 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx236, i32 0, i64 %idxprom234
  %113 = load i32, i32* %arrayidx237, align 4
  %cmp238 = icmp eq i32 %113, 15
  br i1 %cmp238, label %if.then.240, label %if.else.245

if.then.240:                                      ; preds = %if.else.233
  %114 = load i32, i32* %j, align 4
  %idxprom241 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %115 to i64
  %arrayidx243 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx243, i32 0, i64 %idxprom241
  store i32 7, i32* %arrayidx244, align 4
  br label %if.end.263

if.else.245:                                      ; preds = %if.else.233
  %116 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %117 to i64
  %arrayidx248 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom247
  %arrayidx249 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx248, i32 0, i64 %idxprom246
  %118 = load i32, i32* %arrayidx249, align 4
  %cmp250 = icmp eq i32 %118, 14
  br i1 %cmp250, label %if.then.252, label %if.else.257

if.then.252:                                      ; preds = %if.else.245
  %119 = load i32, i32* %j, align 4
  %idxprom253 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %120 to i64
  %arrayidx255 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx255, i32 0, i64 %idxprom253
  store i32 1, i32* %arrayidx256, align 4
  br label %if.end.262

if.else.257:                                      ; preds = %if.else.245
  %121 = load i32, i32* %j, align 4
  %idxprom258 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %122 to i64
  %arrayidx260 = getelementptr inbounds [19 x [19 x i32]], [19 x [19 x i32]]* @final_status, i32 0, i64 %idxprom259
  %arrayidx261 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx260, i32 0, i64 %idxprom258
  store i32 0, i32* %arrayidx261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.257, %if.then.252
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.240
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.228
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.else.212
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.end.211
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.158
  br label %for.inc.268

for.inc.268:                                      ; preds = %if.end.267, %if.then.104
  %123 = load i32, i32* %j, align 4
  %inc269 = add nsw i32 %123, 1
  store i32 %inc269, i32* %j, align 4
  br label %for.cond.88

for.end.270:                                      ; preds = %for.cond.88
  br label %for.inc.271

for.inc.271:                                      ; preds = %for.end.270
  %124 = load i32, i32* %i, align 4
  %inc272 = add nsw i32 %124, 1
  store i32 %inc272, i32* %i, align 4
  br label %for.cond.84

for.end.273:                                      ; preds = %if.then.27, %for.cond.84
  ret void
}

declare void @store_board(%struct.board_state*) #2

declare i32 @get_last_player() #2

declare float @aftermath_compute_score(i32, float, %struct.SGFTree_t*) #2

declare i32 @aftermath_final_status(i32, i32) #2

declare void @restore_board(%struct.board_state*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @find_origin(i32) #2

declare i32 @findstones(i32, i32, i32*) #2

declare i32 @findlib(i32, i32, i32*) #2

declare void @sgffile_enddump(i8*) #2

declare i32 @place_fixed_handicap(i32) #2

declare i32 @get_connection_node_counter() #2

declare i32 @get_owl_node_counter() #2

declare i32 @get_reading_node_counter() #2

declare i32 @get_trymove_counter() #2

declare i32 @undo_move(i32) #2

declare void @increase_depth_values() #2

declare i32 @simple_ladder(i32, i32*) #2

declare void @sgftree_clear(%struct.SGFTree_t*) #2

declare i32 @sgftree_readfile(%struct.SGFTree_t*, i8*) #2

declare void @gameinfo_clear(%struct.Gameinfo*, i32, float) #2

declare void @gameinfo_load_sgfheader(%struct.Gameinfo*, %struct.SGFNode_t*) #2

declare i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo*, %struct.SGFTree_t*, i8*, i32) #2

declare void @sgfFreeNode(%struct.SGFNode_t*) #2

declare void @reading_cache_clear() #2

declare void @owl_analyze_semeai(i32, i32, i32*, i32*, i32*, i32) #2

declare i8* @safety_to_string(i32) #2

declare i32 @owl_attack(i32, i32*, i32*, i32*) #2

declare i32 @owl_connection_defends(i32, i32, i32) #2

declare i32 @owl_defend(i32, i32*, i32*, i32*) #2

declare i32 @owl_does_attack(i32, i32, i32*) #2

declare i32 @owl_does_defend(i32, i32, i32*) #2

declare i32 @owl_substantial(i32) #2

declare i32 @owl_threaten_attack(i32, i32*, i32*) #2

declare i32 @owl_threaten_defense(i32, i32*, i32*) #2

declare void @popgo() #2

declare i32 @place_free_handicap(i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @genmove_restricted(i32*, i32*, i32, i32*) #2

declare void @reset_connection_node_counter() #2

declare void @reset_owl_node_counter() #2

declare void @reset_reading_node_counter() #2

declare void @reset_trymove_counter() #2

declare void @add_stone(i32, i32) #2

declare void @simple_showboard(%struct._IO_FILE*) #2

declare i32 @does_surround(i32, i32) #2

declare i32 @surround_map(i32, i32) #2

declare void @sgffile_begindump(%struct.SGFTree_t*) #2

declare void @test_eyeshape(i32, i32*) #2

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #2

declare i32 @tryko(i32, i32, i8*, i32, i32) #2

declare void @tune_move_ordering(i32*) #2

declare i32 @same_string(i32, i32) #2

declare void @rotate(i32, i32, i32*, i32*, i32, i32) #2

declare void @inv_rotate(i32, i32, i32*, i32*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
