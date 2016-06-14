; ModuleID = 'sjeng.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_x = type { i32, i32, i32, i32 }

@divider = global [50 x i8] c"-------------------------------------------------\00", align 16
@dummy = global %struct.move_s zeroinitializer, align 4
@Variant = common global i32 0, align 4
@material = external global [14 x i32], align 16
@std_material = external global [14 x i32], align 16
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@TTProbes = external global i32, align 4
@TTStores = external global i32, align 4
@TTHits = external global i32, align 4
@bookidx = common global i32 0, align 4
@total_moves = external global i32, align 4
@ply = common global i32 0, align 4
@moves_to_tc = common global i32 0, align 4
@min_per_game = common global i32 0, align 4
@time_left = common global i32 0, align 4
@opp_rating = common global i32 0, align 4
@my_rating = common global i32 0, align 4
@maxdepth = common global i32 0, align 4
@maxposdiff = external global i32, align 4
@must_go = external global i32, align 4
@tradefreely = external global i32, align 4
@xb_mode = common global i32 0, align 4
@comp_color = common global i32 0, align 4
@is_pondering = common global i32 0, align 4
@allow_pondering = common global i32 0, align 4
@is_analyzing = common global i32 0, align 4
@have_partner = common global i32 0, align 4
@must_sit = common global i32 0, align 4
@go_fast = common global i32 0, align 4
@fixed_time = common global i32 0, align 4
@phase = common global i32 0, align 4
@root_to_move = common global i32 0, align 4
@kibitzed = external global i32, align 4
@move_number = common global i32 0, align 4
@hash = external global i32, align 4
@hash_history = common global [600 x i32] zeroinitializer, align 16
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"SPEC Workload\0A\00", align 1
@white_to_move = common global i32 0, align 4
@result = common global i32 0, align 4
@path_x = common global [300 x %struct.move_x] zeroinitializer, align 16
@userealholdings = external global i32, align 4
@fifty = common global i32 0, align 4
@book_ply = common global i32 0, align 4
@opening_history = common global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = common global i32 0, align 4
@qnodes = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = common global i32 0, align 4
@NCuts = common global i32 0, align 4
@TExt = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = common global i32 0, align 4
@razor_drop = external global i32, align 4
@razor_material = external global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32, align 4
@FH = external global i32, align 4
@.str.7 = private unnamed_addr constant [81 x i8] c"Material score: %d   Eval : %d  MaxPosDiff: %d  White hand: %d  Black hand : %d\0A\00", align 1
@Material = external global i32, align 4
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Hash : %X  HoldHash : %X\0A\00", align 1
@hold_hash = external global i32, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"move %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"0-1 {Black Mates}\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"1-0 {White Mates}\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"1/2-1/2 {Fifty move rule}\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"1/2-1/2 {3 fold repetition}\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"1/2-1/2 {Draw}\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Sjeng: \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Illegal move: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"setboard\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@time_for_move = common global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"diagram\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"perft\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@raw_nodes = common global i32 0, align 4
@.str.26 = private unnamed_addr constant [28 x i8] c"Raw nodes for depth %d: %i\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Time : %.2f\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"tellics set 1 Sjeng SPEC 1.0 (SPEC/%s)\0A\00", align 1
@setcode = common global [30 x i8] zeroinitializer, align 16
@piecedead = external global i32, align 4
@partnerdead = external global i32, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"xboard\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"tellics set f5 1=1\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Number of nodes: %i (%0.2f%% qnodes)\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@post = common global i32 0, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"nopost\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Eval: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"otim\00", align 1
@opp_time = common global i32 0, align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"%i %i:%i %i\00", align 1
@sec_per_game = common global i32 0, align 4
@inc = common global i32 0, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@time_cushion = common global i32 0, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"holding\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"crazyhouse\00", align 1
@zh_material = external global [14 x i32], align 16
@.str.59 = private unnamed_addr constant [9 x i8] c"bughouse\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"suicide\00", align 1
@Giveaway = common global i32 0, align 4
@suicide_material = external global [14 x i32], align 16
@.str.61 = private unnamed_addr constant [9 x i8] c"giveaway\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"losers\00", align 1
@losers_material = external global [14 x i32], align 16
@.str.63 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Move number : %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c".\00", align 1
@wking_loc = common global i32 0, align 4
@white_castled = common global i32 0, align 4
@bking_loc = common global i32 0, align 4
@black_castled = common global i32 0, align 4
@ep_square = common global i32 0, align 4
@.str.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"partner\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"$partner\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"ptell\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"prove\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"\0AMax time to search (s): \00", align 1
@start_time = common global i64 0, align 8
@pn_time = external global i32, align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"pong %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"fritz\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"New max depth set to: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"protover\00", align 1
@.str.87 = private unnamed_addr constant [63 x i8] c"feature ping=0 setboard=1 playother=0 san=0 usermove=0 time=1\0A\00", align 1
@.str.88 = private unnamed_addr constant [53 x i8] c"feature draw=0 sigint=0 sigterm=0 reuse=1 analyze=0\0A\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"feature myname=\22Sjeng SPEC 1.0\22\0A\00", align 1
@.str.90 = private unnamed_addr constant [71 x i8] c"feature variants=\22normal,bughouse,crazyhouse,suicide,giveaway,losers\22\0A\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"feature colors=1 ics=0 name=0 pause=0 done=1\0A\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"accepted\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@.str.94 = private unnamed_addr constant [65 x i8] c"Interface does not support a required feature...expect trouble.\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"diagram/d:       toggle diagram display\0A\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"exit/quit:       terminate Sjeng\0A\00", align 1
@.str.99 = private unnamed_addr constant [51 x i8] c"go:              make Sjeng play the side to move\0A\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"new:             start a new game\0A\00", align 1
@.str.101 = private unnamed_addr constant [55 x i8] c"level <x>:       the xboard style command to set time\0A\00", align 1
@.str.102 = private unnamed_addr constant [49 x i8] c"  <x> should be in the form: <a> <b> <c> where:\0A\00", align 1
@.str.103 = private unnamed_addr constant [49 x i8] c"  a -> moves to TC (0 if using an ICS style TC)\0A\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"  b -> minutes per game\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"  c -> increment in seconds\0A\00", align 1
@.str.106 = private unnamed_addr constant [55 x i8] c"nodes:           outputs the number of nodes searched\0A\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"perft <x>:       compute raw nodes to depth x\0A\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"post:            toggles thinking output\0A\00", align 1
@.str.109 = private unnamed_addr constant [45 x i8] c"xboard:          put Sjeng into xboard mode\0A\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"test:            run an EPD testsuite\0A\00", align 1
@.str.111 = private unnamed_addr constant [52 x i8] c"speed:           test movegen and evaluation speed\0A\00", align 1
@.str.112 = private unnamed_addr constant [59 x i8] c"proof:           try to prove or disprove the current pos\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"sd <x>:          limit thinking to depth x\0A\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c"st <x>:          limit thinking to x centiseconds\0A\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"setboard <FEN>:  set board to a specified FEN string\0A\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"undo:            back up a half move\0A\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"remove:          back up a full move\0A\00", align 1
@.str.118 = private unnamed_addr constant [42 x i8] c"force:           disable computer moving\0A\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"auto:            computer plays both sides\0A\00", align 1
@board = common global [144 x i32] zeroinitializer, align 16
@moved = common global [144 x i32] zeroinitializer, align 16
@pv_length = common global [300 x i32] zeroinitializer, align 16
@pieces = common global [62 x i32] zeroinitializer, align 16
@squares = common global [144 x i32] zeroinitializer, align 16
@num_pieces = common global i32 0, align 4
@i_depth = common global i32 0, align 4
@piece_count = common global i32 0, align 4
@killer_scores = common global [300 x i32] zeroinitializer, align 16
@killer_scores2 = common global [300 x i32] zeroinitializer, align 16
@killer_scores3 = common global [300 x i32] zeroinitializer, align 16
@cur_score = common global i32 0, align 4
@history_h = common global [144 x [144 x i32]] zeroinitializer, align 16
@captures = common global i32 0, align 4
@searching_pv = common global i32 0, align 4
@time_exit = common global i32 0, align 4
@time_failure = common global i32 0, align 4
@pv = common global [300 x [300 x %struct.move_s]] zeroinitializer, align 16
@killer1 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer2 = common global [300 x %struct.move_s] zeroinitializer, align 16
@killer3 = common global [300 x %struct.move_s] zeroinitializer, align 16
@path = common global [300 x %struct.move_s] zeroinitializer, align 16
@is_promoted = common global [62 x i32] zeroinitializer, align 16
@PVS = common global i32 0, align 4
@FULL = common global i32 0, align 4
@PVSF = common global i32 0, align 4
@my_partner = common global [256 x i8] zeroinitializer, align 16
@use_book = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %input = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  %output = alloca [256 x i8], align 16
  %readbuff = alloca [256 x i8], align 16
  %move = alloca %struct.move_s, align 4
  %comp_move = alloca %struct.move_s, align 8
  %depth = alloca i32, align 4
  %force_mode = alloca i32, align 4
  %show_board = alloca i32, align 4
  %game_history = alloca [600 x %struct.move_s], align 16
  %game_history_x = alloca [600 x %struct.move_x], align 16
  %is_edit_mode = alloca i32, align 4
  %edit_color = alloca i32, align 4
  %pingnum = alloca i32, align 4
  %braindeadinterface = alloca i32, align 4
  %automode = alloca i32, align 4
  %xstart_time = alloca i64, align 8
  %tmp = alloca %struct.move_s, align 4
  %tmp245 = alloca %struct.move_s, align 4
  %tmp544 = alloca %struct.move_s, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 4, i32* %depth, align 4
  call void @read_rcfile()
  call void @initialize_zobrist()
  store i32 2, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  call void @init_game()
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  store i32 0, i32* @ECacheProbes, align 4
  store i32 0, i32* @ECacheHits, align 4
  store i32 0, i32* @TTProbes, align 4
  store i32 0, i32* @TTStores, align 4
  store i32 0, i32* @TTHits, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @total_moves, align 4
  store i32 0, i32* @ply, align 4
  store i32 0, i32* %braindeadinterface, align 4
  store i32 40, i32* @moves_to_tc, align 4
  store i32 5, i32* @min_per_game, align 4
  store i32 30000, i32* @time_left, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  store i32 40, i32* @maxdepth, align 4
  store i32 200, i32* @maxposdiff, align 4
  store i32 1, i32* @must_go, align 4
  store i32 1, i32* @tradefreely, align 4
  store i32 0, i32* %automode, align 4
  store i32 0, i32* @xb_mode, align 4
  store i32 0, i32* %force_mode, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* %edit_color, align 4
  store i32 1, i32* %show_board, align 4
  store i32 0, i32* @is_pondering, align 4
  store i32 1, i32* @allow_pondering, align 4
  store i32 0, i32* @is_analyzing, align 4
  store i32 0, i32* %is_edit_mode, align 4
  store i32 0, i32* @have_partner, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @phase, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @kibitzed, align 4
  store i32 0, i32* @move_number, align 4
  %0 = bitcast [600 x %struct.move_s]* %game_history to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 14400, i32 16, i1 false)
  %1 = bitcast [600 x %struct.move_x]* %game_history_x to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 9600, i32 16, i1 false)
  %2 = load i32, i32* @hash, align 4
  %3 = load i32, i32* @move_number, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %4, i8* null) #2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @setbuf(%struct._IO_FILE* %5, i8* null) #2
  call void @start_up()
  %6 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8
  call void @run_autotest(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.then.396, %if.then.401, %if.then.406, %if.then.411, %if.then.734, %if.then.739, %if.then.748, %if.end.856
  %9 = load i32, i32* %is_edit_mode, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.215, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* @comp_color, align 4
  %11 = load i32, i32* @white_to_move, align 4
  %cmp2 = icmp eq i32 %10, %11
  br i1 %cmp2, label %land.lhs.true.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %automode, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.215

land.lhs.true.4:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load i32, i32* %force_mode, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.end.215, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %14 = load i32, i32* @must_sit, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.end.215, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %15 = load i32, i32* @result, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.end.215, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  store i32 0, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %tmp)
  %16 = bitcast %struct.move_s* %comp_move to i8*
  %17 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 4, i1 false)
  store i32 0, i32* @ply, align 4
  %18 = load i32, i32* @must_sit, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.14

lor.lhs.false.12:                                 ; preds = %if.then.10
  %19 = load i32, i32* @must_go, align 4
  %cmp13 = icmp ne i32 %19, 0
  br i1 %cmp13, label %if.then.14, label %if.end.214

if.then.14:                                       ; preds = %lor.lhs.false.12, %if.then.10
  %20 = load i32, i32* @Variant, align 4
  %cmp15 = icmp eq i32 %20, 4
  br i1 %cmp15, label %land.lhs.true.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.14
  %21 = load i32, i32* @Variant, align 4
  %cmp17 = icmp eq i32 %21, 3
  br i1 %cmp17, label %land.lhs.true.18, label %lor.lhs.false.22

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16, %if.then.14
  %22 = load i32, i32* @result, align 4
  %cmp19 = icmp ne i32 %22, 2
  br i1 %cmp19, label %land.lhs.true.20, label %lor.lhs.false.22

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %23 = load i32, i32* @result, align 4
  %cmp21 = icmp ne i32 %23, 3
  br i1 %cmp21, label %land.lhs.true.36, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.20, %land.lhs.true.18, %lor.lhs.false.16
  %24 = load i32, i32* @Variant, align 4
  %cmp23 = icmp eq i32 %24, 2
  br i1 %cmp23, label %land.lhs.true.28, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %25 = load i32, i32* @Variant, align 4
  %cmp25 = icmp eq i32 %25, 0
  br i1 %cmp25, label %land.lhs.true.28, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %26 = load i32, i32* @Variant, align 4
  %cmp27 = icmp eq i32 %26, 1
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.187

land.lhs.true.28:                                 ; preds = %lor.lhs.false.26, %lor.lhs.false.24, %lor.lhs.false.22
  %27 = load i32, i32* @comp_color, align 4
  %cmp29 = icmp eq i32 %27, 1
  br i1 %cmp29, label %land.lhs.true.30, label %lor.lhs.false.32

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %28 = load i32, i32* @result, align 4
  %cmp31 = icmp ne i32 %28, 2
  br i1 %cmp31, label %land.lhs.true.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.30, %land.lhs.true.28
  %29 = load i32, i32* @comp_color, align 4
  %cmp33 = icmp eq i32 %29, 0
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.187

land.lhs.true.34:                                 ; preds = %lor.lhs.false.32
  %30 = load i32, i32* @result, align 4
  %cmp35 = icmp ne i32 %30, 3
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.187

land.lhs.true.36:                                 ; preds = %land.lhs.true.34, %land.lhs.true.30, %land.lhs.true.20
  %31 = load i32, i32* @result, align 4
  %cmp37 = icmp ne i32 %31, 1
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.187

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %32 = load i32, i32* @result, align 4
  %cmp39 = icmp ne i32 %32, 4
  br i1 %cmp39, label %land.lhs.true.40, label %if.else.187

land.lhs.true.40:                                 ; preds = %land.lhs.true.38
  %33 = load i32, i32* @result, align 4
  %cmp41 = icmp ne i32 %33, 5
  br i1 %cmp41, label %if.then.42, label %if.else.187

if.then.42:                                       ; preds = %land.lhs.true.40
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  call void @comp_to_coord(%struct.move_s* byval align 8 %comp_move, i8* %arraydecay)
  %34 = load i32, i32* @hash, align 4
  %35 = load i32, i32* @move_number, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom43
  store i32 %34, i32* %arrayidx44, align 4
  %36 = load i32, i32* @move_number, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %game_history, i32 0, i64 %idxprom45
  %37 = bitcast %struct.move_s* %arrayidx46 to i8*
  %38 = bitcast %struct.move_s* %comp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 24, i32 4, i1 false)
  call void @make(%struct.move_s* %comp_move, i32 0)
  %39 = load i32, i32* @move_number, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @move_number, align 4
  %idxprom47 = sext i32 %39 to i64
  %arrayidx48 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %game_history_x, i32 0, i64 %idxprom47
  %40 = bitcast %struct.move_x* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 4, i1 false)
  store i32 0, i32* @userealholdings, align 4
  %41 = load i32, i32* @must_go, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* @must_go, align 4
  %call49 = call i32 @is_draw()
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.42
  store i32 5, i32* @result, align 4
  br label %if.end.55

if.else:                                          ; preds = %if.then.42
  %42 = load i32, i32* @fifty, align 4
  %cmp52 = icmp sgt i32 %42, 100
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else
  store i32 4, i32* @result, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.51
  %43 = load i32, i32* @root_to_move, align 4
  %xor = xor i32 %43, 1
  store i32 %xor, i32* @root_to_move, align 4
  call void @reset_piece_square()
  %44 = load i32, i32* @book_ply, align 4
  %cmp56 = icmp slt i32 %44, 40
  br i1 %cmp56, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %if.end.55
  %45 = load i32, i32* @book_ply, align 4
  %tobool58 = icmp ne i32 %45, 0
  br i1 %tobool58, label %if.else.62, label %if.then.59

if.then.59:                                       ; preds = %if.then.57
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call61 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %arraydecay60) #2
  br label %if.end.65

if.else.62:                                       ; preds = %if.then.57
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call64 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %arraydecay63) #2
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.55
  %46 = load i32, i32* @book_ply, align 4
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, i32* @book_ply, align 4
  %47 = load i32, i32* @nodes, align 4
  %48 = load i32, i32* @qnodes, align 4
  %conv = sitofp i32 %48 to float
  %49 = load i32, i32* @nodes, align 4
  %conv68 = sitofp i32 %49 to float
  %div = fdiv float %conv, %conv68
  %conv69 = fpext float %div to double
  %mul = fmul double %conv69, 1.000000e+02
  %conv70 = fptrunc double %mul to float
  %conv71 = fpext float %conv70 to double
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %47, double %conv71)
  %50 = load i32, i32* @ECacheProbes, align 4
  %51 = load i32, i32* @ECacheHits, align 4
  %52 = load i32, i32* @ECacheHits, align 4
  %conv73 = uitofp i32 %52 to float
  %53 = load i32, i32* @ECacheProbes, align 4
  %conv74 = uitofp i32 %53 to float
  %add = fadd float %conv74, 1.000000e+00
  %div75 = fdiv float %conv73, %add
  %mul76 = fmul float %div75, 1.000000e+02
  %conv77 = fpext float %mul76 to double
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i32 %50, i32 %51, double %conv77)
  %54 = load i32, i32* @TTStores, align 4
  %55 = load i32, i32* @TTProbes, align 4
  %56 = load i32, i32* @TTHits, align 4
  %57 = load i32, i32* @TTHits, align 4
  %conv79 = uitofp i32 %57 to float
  %58 = load i32, i32* @TTProbes, align 4
  %conv80 = uitofp i32 %58 to float
  %add81 = fadd float %conv80, 1.000000e+00
  %div82 = fdiv float %conv79, %add81
  %mul83 = fmul float %div82, 1.000000e+02
  %conv84 = fpext float %mul83 to double
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i32 %54, i32 %55, i32 %56, double %conv84)
  %59 = load i32, i32* @NTries, align 4
  %60 = load i32, i32* @NCuts, align 4
  %61 = load i32, i32* @NCuts, align 4
  %conv86 = uitofp i32 %61 to float
  %mul87 = fmul float %conv86, 1.000000e+02
  %62 = load i32, i32* @NTries, align 4
  %conv88 = uitofp i32 %62 to float
  %add89 = fadd float %conv88, 1.000000e+00
  %div90 = fdiv float %mul87, %add89
  %conv91 = fpext float %div90 to double
  %63 = load i32, i32* @TExt, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 %59, i32 %60, double %conv91, i32 %63)
  %64 = load i32, i32* @ext_check, align 4
  %65 = load i32, i32* @razor_drop, align 4
  %66 = load i32, i32* @razor_material, align 4
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0), i32 %64, i32 %65, i32 %66)
  %67 = load i32, i32* @FHF, align 4
  %conv94 = uitofp i32 %67 to float
  %mul95 = fmul float %conv94, 1.000000e+02
  %68 = load i32, i32* @FH, align 4
  %add96 = add i32 %68, 1
  %conv97 = uitofp i32 %add96 to float
  %div98 = fdiv float %mul95, %conv97
  %conv99 = fpext float %div98 to double
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), double %conv99)
  %69 = load i32, i32* @Material, align 4
  %call101 = call i32 @eval(i32 -1000000, i32 1000000)
  %70 = load i32, i32* @maxposdiff, align 4
  %71 = load i32, i32* @white_hand_eval, align 4
  %72 = load i32, i32* @black_hand_eval, align 4
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i32 0, i32 0), i32 %69, i32 %call101, i32 %70, i32 %71, i32 %72)
  %73 = load i32, i32* @hash, align 4
  %74 = load i32, i32* @hold_hash, align 4
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %73, i32 %74)
  %75 = load i32, i32* @result, align 4
  %tobool104 = icmp ne i32 %75, 0
  br i1 %tobool104, label %if.else.134, label %if.then.105

if.then.105:                                      ; preds = %if.end.66
  %76 = load i32, i32* @xb_mode, align 4
  %tobool106 = icmp ne i32 %76, 0
  br i1 %tobool106, label %if.then.107, label %if.else.121

if.then.107:                                      ; preds = %if.then.105
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 0
  %77 = load i32, i32* %from, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %cmp108 = icmp ne i32 %77, %78
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.then.107
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 1
  %79 = load i32, i32* %target, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp111 = icmp ne i32 %79, %80
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %lor.lhs.false.110, %if.then.107
  %arraydecay114 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %lor.lhs.false.110
  %81 = load i32, i32* @Variant, align 4
  %cmp117 = icmp eq i32 %81, 1
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  call void @CheckBadFlow(i32 0)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.116
  br label %if.end.133

if.else.121:                                      ; preds = %if.then.105
  %from122 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 0
  %82 = load i32, i32* %from122, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %cmp123 = icmp ne i32 %82, %83
  br i1 %cmp123, label %if.then.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.else.121
  %target126 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 1
  %84 = load i32, i32* %target126, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp127 = icmp ne i32 %84, %85
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %lor.lhs.false.125, %if.else.121
  %arraydecay130 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay130)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %lor.lhs.false.125
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.120
  br label %if.end.186

if.else.134:                                      ; preds = %if.end.66
  %86 = load i32, i32* @xb_mode, align 4
  %tobool135 = icmp ne i32 %86, 0
  br i1 %tobool135, label %if.then.136, label %if.else.148

if.then.136:                                      ; preds = %if.else.134
  %from137 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 0
  %87 = load i32, i32* %from137, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %cmp138 = icmp ne i32 %87, %88
  br i1 %cmp138, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.then.136
  %target141 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 1
  %89 = load i32, i32* %target141, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp142 = icmp ne i32 %89, %90
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %lor.lhs.false.140, %if.then.136
  %arraydecay145 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay145)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %lor.lhs.false.140
  br label %if.end.160

if.else.148:                                      ; preds = %if.else.134
  %from149 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 0
  %91 = load i32, i32* %from149, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 0), align 4
  %cmp150 = icmp ne i32 %91, %92
  br i1 %cmp150, label %if.then.156, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %if.else.148
  %target153 = getelementptr inbounds %struct.move_s, %struct.move_s* %comp_move, i32 0, i32 1
  %93 = load i32, i32* %target153, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.move_s, %struct.move_s* @dummy, i32 0, i32 1), align 4
  %cmp154 = icmp ne i32 %93, %94
  br i1 %cmp154, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %lor.lhs.false.152, %if.else.148
  %arraydecay157 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay157)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %lor.lhs.false.152
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.147
  %95 = load i32, i32* @result, align 4
  %cmp161 = icmp eq i32 %95, 2
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.end.160
  %call164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.185

if.else.165:                                      ; preds = %if.end.160
  %96 = load i32, i32* @result, align 4
  %cmp166 = icmp eq i32 %96, 3
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else.165
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.184

if.else.170:                                      ; preds = %if.else.165
  %97 = load i32, i32* @result, align 4
  %cmp171 = icmp eq i32 %97, 4
  br i1 %cmp171, label %if.then.173, label %if.else.175

if.then.173:                                      ; preds = %if.else.170
  %call174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.183

if.else.175:                                      ; preds = %if.else.170
  %98 = load i32, i32* @result, align 4
  %cmp176 = icmp eq i32 %98, 5
  br i1 %cmp176, label %if.then.178, label %if.else.180

if.then.178:                                      ; preds = %if.else.175
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.182

if.else.180:                                      ; preds = %if.else.175
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.180, %if.then.178
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.173
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.168
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.163
  store i32 0, i32* %automode, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.133
  br label %if.end.213

if.else.187:                                      ; preds = %land.lhs.true.40, %land.lhs.true.38, %land.lhs.true.36, %land.lhs.true.34, %lor.lhs.false.32, %lor.lhs.false.26
  %99 = load i32, i32* @result, align 4
  %cmp188 = icmp eq i32 %99, 2
  br i1 %cmp188, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.else.187
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.212

if.else.192:                                      ; preds = %if.else.187
  %100 = load i32, i32* @result, align 4
  %cmp193 = icmp eq i32 %100, 3
  br i1 %cmp193, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.else.192
  %call196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.211

if.else.197:                                      ; preds = %if.else.192
  %101 = load i32, i32* @result, align 4
  %cmp198 = icmp eq i32 %101, 4
  br i1 %cmp198, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.else.197
  %call201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.210

if.else.202:                                      ; preds = %if.else.197
  %102 = load i32, i32* @result, align 4
  %cmp203 = icmp eq i32 %102, 5
  br i1 %cmp203, label %if.then.205, label %if.else.207

if.then.205:                                      ; preds = %if.else.202
  %call206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.209

if.else.207:                                      ; preds = %if.else.202
  %call208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.207, %if.then.205
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.200
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.195
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.190
  store i32 0, i32* %automode, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.186
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %lor.lhs.false.12
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true.4, %lor.lhs.false, %while.body
  %103 = load i32, i32* @xb_mode, align 4
  %tobool216 = icmp ne i32 %103, 0
  br i1 %tobool216, label %if.else.227, label %if.then.217

if.then.217:                                      ; preds = %if.end.215
  %104 = load i32, i32* %show_board, align 4
  %tobool218 = icmp ne i32 %104, 0
  br i1 %tobool218, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.then.217
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %106 = load i32, i32* @comp_color, align 4
  %sub = sub nsw i32 1, %106
  call void @display_board(%struct._IO_FILE* %105, i32 %sub)
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.then.217
  %107 = load i32, i32* %automode, align 4
  %tobool222 = icmp ne i32 %107, 0
  br i1 %tobool222, label %if.end.226, label %if.then.223

if.then.223:                                      ; preds = %if.end.221
  %call224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %arraydecay225 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay225, i32 256, %struct._IO_FILE* %108)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.223, %if.end.221
  br label %if.end.251

if.else.227:                                      ; preds = %if.end.215
  %109 = load i32, i32* @must_sit, align 4
  %tobool228 = icmp ne i32 %109, 0
  br i1 %tobool228, label %land.lhs.true.240, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %if.else.227
  %110 = load i32, i32* @allow_pondering, align 4
  %tobool230 = icmp ne i32 %110, 0
  br i1 %tobool230, label %land.lhs.true.231, label %lor.lhs.false.238

land.lhs.true.231:                                ; preds = %lor.lhs.false.229
  %111 = load i32, i32* %is_edit_mode, align 4
  %tobool232 = icmp ne i32 %111, 0
  br i1 %tobool232, label %lor.lhs.false.238, label %land.lhs.true.233

land.lhs.true.233:                                ; preds = %land.lhs.true.231
  %112 = load i32, i32* %force_mode, align 4
  %tobool234 = icmp ne i32 %112, 0
  br i1 %tobool234, label %lor.lhs.false.238, label %land.lhs.true.235

land.lhs.true.235:                                ; preds = %land.lhs.true.233
  %113 = load i32, i32* @move_number, align 4
  %cmp236 = icmp ne i32 %113, 0
  br i1 %cmp236, label %land.lhs.true.240, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %land.lhs.true.235, %land.lhs.true.233, %land.lhs.true.231, %lor.lhs.false.229
  %114 = load i32, i32* @is_analyzing, align 4
  %tobool239 = icmp ne i32 %114, 0
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.246

land.lhs.true.240:                                ; preds = %lor.lhs.false.238, %land.lhs.true.235, %if.else.227
  %115 = load i32, i32* @result, align 4
  %tobool241 = icmp ne i32 %115, 0
  br i1 %tobool241, label %if.end.246, label %land.lhs.true.242

land.lhs.true.242:                                ; preds = %land.lhs.true.240
  %116 = load i32, i32* %automode, align 4
  %tobool243 = icmp ne i32 %116, 0
  br i1 %tobool243, label %if.end.246, label %if.then.244

if.then.244:                                      ; preds = %land.lhs.true.242
  store i32 1, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %tmp245)
  store i32 0, i32* @is_pondering, align 4
  store i32 0, i32* @ply, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.244, %land.lhs.true.242, %land.lhs.true.240, %lor.lhs.false.238
  %117 = load i32, i32* %automode, align 4
  %tobool247 = icmp ne i32 %117, 0
  br i1 %tobool247, label %if.end.250, label %if.then.248

if.then.248:                                      ; preds = %if.end.246
  %arraydecay249 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay249, i32 256, %struct._IO_FILE* %118)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %if.end.246
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.226
  %119 = load i32, i32* %is_edit_mode, align 4
  %tobool252 = icmp ne i32 %119, 0
  br i1 %tobool252, label %if.else.292, label %land.lhs.true.253

land.lhs.true.253:                                ; preds = %if.end.251
  %arrayidx254 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 0
  %call255 = call i32 @is_move(i8* %arrayidx254)
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.then.257, label %if.else.292

if.then.257:                                      ; preds = %land.lhs.true.253
  %arraydecay258 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call259 = call i32 @verify_coord(i8* %arraydecay258, %struct.move_s* %move)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.then.261, label %if.else.288

if.then.261:                                      ; preds = %if.then.257
  %120 = load i32, i32* @move_number, align 4
  %idxprom262 = sext i32 %120 to i64
  %arrayidx263 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %game_history, i32 0, i64 %idxprom262
  %121 = bitcast %struct.move_s* %arrayidx263 to i8*
  %122 = bitcast %struct.move_s* %move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 24, i32 4, i1 false)
  %123 = load i32, i32* @hash, align 4
  %124 = load i32, i32* @move_number, align 4
  %idxprom264 = sext i32 %124 to i64
  %arrayidx265 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom264
  store i32 %123, i32* %arrayidx265, align 4
  call void @make(%struct.move_s* %move, i32 0)
  %125 = load i32, i32* @move_number, align 4
  %inc266 = add nsw i32 %125, 1
  store i32 %inc266, i32* @move_number, align 4
  %idxprom267 = sext i32 %125 to i64
  %arrayidx268 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %game_history_x, i32 0, i64 %idxprom267
  %126 = bitcast %struct.move_x* %arrayidx268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i64 16, i32 4, i1 false)
  call void @reset_piece_square()
  %127 = load i32, i32* @root_to_move, align 4
  %xor269 = xor i32 %127, 1
  store i32 %xor269, i32* @root_to_move, align 4
  %128 = load i32, i32* @book_ply, align 4
  %cmp270 = icmp slt i32 %128, 40
  br i1 %cmp270, label %if.then.272, label %if.end.281

if.then.272:                                      ; preds = %if.then.261
  %129 = load i32, i32* @book_ply, align 4
  %tobool273 = icmp ne i32 %129, 0
  br i1 %tobool273, label %if.else.277, label %if.then.274

if.then.274:                                      ; preds = %if.then.272
  %arraydecay275 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call276 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %arraydecay275) #2
  br label %if.end.280

if.else.277:                                      ; preds = %if.then.272
  %arraydecay278 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call279 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8* %arraydecay278) #2
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.277, %if.then.274
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.261
  %130 = load i32, i32* @book_ply, align 4
  %inc282 = add nsw i32 %130, 1
  store i32 %inc282, i32* @book_ply, align 4
  %131 = load i32, i32* %show_board, align 4
  %tobool283 = icmp ne i32 %131, 0
  br i1 %tobool283, label %if.then.284, label %if.end.287

if.then.284:                                      ; preds = %if.end.281
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = load i32, i32* @comp_color, align 4
  %sub286 = sub nsw i32 1, %133
  call void @display_board(%struct._IO_FILE* %132, i32 %sub286)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.284, %if.end.281
  br label %if.end.291

if.else.288:                                      ; preds = %if.then.257
  %arraydecay289 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay289)
  br label %if.end.291

if.end.291:                                       ; preds = %if.else.288, %if.end.287
  br label %if.end.856

if.else.292:                                      ; preds = %land.lhs.true.253, %if.end.251
  %arraydecay293 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call294 = call i8* @strstr(i8* %arraydecay293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #7
  %tobool295 = icmp ne i8* %call294, null
  br i1 %tobool295, label %if.end.302, label %if.then.296

if.then.296:                                      ; preds = %if.else.292
  %arraydecay297 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  store i8* %arraydecay297, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.296
  %134 = load i8*, i8** %p, align 8
  %135 = load i8, i8* %134, align 1
  %tobool298 = icmp ne i8 %135, 0
  br i1 %tobool298, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %136 = load i8*, i8** %p, align 8
  %137 = load i8, i8* %136, align 1
  %conv299 = sext i8 %137 to i32
  %call300 = call i32 @tolower(i32 %conv299) #2
  %conv301 = trunc i32 %call300 to i8
  %138 = load i8*, i8** %p, align 8
  store i8 %conv301, i8* %138, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %139 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.302

if.end.302:                                       ; preds = %for.end, %if.else.292
  %arraydecay303 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call304 = call i32 @strcmp(i8* %arraydecay303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #7
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.else.307, label %if.then.306

if.then.306:                                      ; preds = %if.end.302
  call void @free_hash()
  call void @free_ecache()
  call void @exit(i32 0) #8
  unreachable

if.else.307:                                      ; preds = %if.end.302
  %arraydecay308 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call309 = call i32 @strcmp(i8* %arraydecay308, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #7
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.else.316, label %if.then.311

if.then.311:                                      ; preds = %if.else.307
  %140 = load i32, i32* @is_analyzing, align 4
  %tobool312 = icmp ne i32 %140, 0
  br i1 %tobool312, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %if.then.311
  store i32 0, i32* @is_analyzing, align 4
  store i32 0, i32* @is_pondering, align 4
  store i32 0, i32* @time_for_move, align 4
  br label %if.end.315

if.else.314:                                      ; preds = %if.then.311
  call void @free_hash()
  call void @free_ecache()
  call void @exit(i32 0) #8
  unreachable

if.end.315:                                       ; preds = %if.then.313
  br label %if.end.854

if.else.316:                                      ; preds = %if.else.307
  %arraydecay317 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call318 = call i32 @strcmp(i8* %arraydecay317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #7
  %tobool319 = icmp ne i32 %call318, 0
  br i1 %tobool319, label %lor.lhs.false.320, label %if.then.324

lor.lhs.false.320:                                ; preds = %if.else.316
  %arraydecay321 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call322 = call i32 @strcmp(i8* %arraydecay321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #7
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.else.325, label %if.then.324

if.then.324:                                      ; preds = %lor.lhs.false.320, %if.else.316
  call void @toggle_bool(i32* %show_board)
  br label %if.end.853

if.else.325:                                      ; preds = %lor.lhs.false.320
  %arraydecay326 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call327 = call i32 @strncmp(i8* %arraydecay326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i64 5) #7
  %tobool328 = icmp ne i32 %call327, 0
  br i1 %tobool328, label %if.else.340, label %if.then.329

if.then.329:                                      ; preds = %if.else.325
  %arraydecay330 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay330, i64 6
  %call331 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %depth) #2
  store i32 0, i32* @raw_nodes, align 4
  %call332 = call i64 @rtime()
  store i64 %call332, i64* %xstart_time, align 8
  %141 = load i32, i32* %depth, align 4
  call void @perft(i32 %141)
  %142 = load i32, i32* %depth, align 4
  %143 = load i32, i32* @raw_nodes, align 4
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i32 %142, i32 %143)
  %call334 = call i64 @rtime()
  %144 = load i64, i64* %xstart_time, align 8
  %call335 = call i32 @rdifftime(i64 %call334, i64 %144)
  %conv336 = sitofp i32 %call335 to float
  %conv337 = fpext float %conv336 to double
  %div338 = fdiv double %conv337, 1.000000e+02
  %call339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), double %div338)
  br label %if.end.852

if.else.340:                                      ; preds = %if.else.325
  %arraydecay341 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call342 = call i32 @strcmp(i8* %arraydecay341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #7
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.else.358, label %if.then.344

if.then.344:                                      ; preds = %if.else.340
  %145 = load i32, i32* @xb_mode, align 4
  %tobool345 = icmp ne i32 %145, 0
  br i1 %tobool345, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %if.then.344
  %call347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @setcode, i32 0, i32 0))
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.346, %if.then.344
  %146 = load i32, i32* @is_analyzing, align 4
  %tobool349 = icmp ne i32 %146, 0
  br i1 %tobool349, label %if.else.356, label %if.then.350

if.then.350:                                      ; preds = %if.end.348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4
  call void @init_game()
  call void @initialize_hash()
  %147 = load i32, i32* %braindeadinterface, align 4
  %tobool351 = icmp ne i32 %147, 0
  br i1 %tobool351, label %if.end.353, label %if.then.352

if.then.352:                                      ; preds = %if.then.350
  call void @clear_tt()
  call void @reset_ecache()
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.then.350
  store i32 0, i32* %force_mode, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @piecedead, align 4
  store i32 0, i32* @partnerdead, align 4
  store i32 0, i32* @kibitzed, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* @move_number, align 4
  %148 = load i32, i32* @move_number, align 4
  %idxprom354 = sext i32 %148 to i64
  %arrayidx355 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom354
  store i32 0, i32* %arrayidx355, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  store i32 0, i32* @must_go, align 4
  store i32 1, i32* @tradefreely, align 4
  store i32 0, i32* %automode, align 4
  call void @CheckBadFlow(i32 1)
  call void @ResetHandValue()
  br label %if.end.357

if.else.356:                                      ; preds = %if.end.348
  call void @init_game()
  store i32 0, i32* @move_number, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.356, %if.end.353
  br label %if.end.851

if.else.358:                                      ; preds = %if.else.340
  %arraydecay359 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call360 = call i32 @strcmp(i8* %arraydecay359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #7
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.else.366, label %if.then.362

if.then.362:                                      ; preds = %if.else.358
  store i32 1, i32* @xb_mode, align 4
  call void @toggle_bool(i32* %show_board)
  %call363 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  %call364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %call365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  call void @BegForPartner()
  br label %if.end.850

if.else.366:                                      ; preds = %if.else.358
  %arraydecay367 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call368 = call i32 @strcmp(i8* %arraydecay367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #7
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %if.else.379, label %if.then.370

if.then.370:                                      ; preds = %if.else.366
  %149 = load i32, i32* @nodes, align 4
  %150 = load i32, i32* @qnodes, align 4
  %conv371 = sitofp i32 %150 to float
  %151 = load i32, i32* @nodes, align 4
  %conv372 = sitofp i32 %151 to float
  %div373 = fdiv float %conv371, %conv372
  %conv374 = fpext float %div373 to double
  %mul375 = fmul double %conv374, 1.000000e+02
  %conv376 = fptrunc double %mul375 to float
  %conv377 = fpext float %conv376 to double
  %call378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0), i32 %149, double %conv377)
  br label %if.end.849

if.else.379:                                      ; preds = %if.else.366
  %arraydecay380 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call381 = call i32 @strcmp(i8* %arraydecay380, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #7
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.else.387, label %if.then.383

if.then.383:                                      ; preds = %if.else.379
  call void @toggle_bool(i32* @post)
  %152 = load i32, i32* @xb_mode, align 4
  %tobool384 = icmp ne i32 %152, 0
  br i1 %tobool384, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.then.383
  store i32 1, i32* @post, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.385, %if.then.383
  br label %if.end.848

if.else.387:                                      ; preds = %if.else.379
  %arraydecay388 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call389 = call i32 @strcmp(i8* %arraydecay388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #7
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.else.392, label %if.then.391

if.then.391:                                      ; preds = %if.else.387
  store i32 0, i32* @post, align 4
  br label %if.end.847

if.else.392:                                      ; preds = %if.else.387
  %arraydecay393 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call394 = call i32 @strcmp(i8* %arraydecay393, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #7
  %tobool395 = icmp ne i32 %call394, 0
  br i1 %tobool395, label %if.else.397, label %if.then.396

if.then.396:                                      ; preds = %if.else.392
  br label %while.body

if.else.397:                                      ; preds = %if.else.392
  %arraydecay398 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call399 = call i32 @strcmp(i8* %arraydecay398, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #7
  %tobool400 = icmp ne i32 %call399, 0
  br i1 %tobool400, label %if.else.402, label %if.then.401

if.then.401:                                      ; preds = %if.else.397
  store i32 1, i32* @allow_pondering, align 4
  br label %while.body

if.else.402:                                      ; preds = %if.else.397
  %arraydecay403 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call404 = call i32 @strcmp(i8* %arraydecay403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)) #7
  %tobool405 = icmp ne i32 %call404, 0
  br i1 %tobool405, label %if.else.407, label %if.then.406

if.then.406:                                      ; preds = %if.else.402
  store i32 0, i32* @allow_pondering, align 4
  br label %while.body

if.else.407:                                      ; preds = %if.else.402
  %arraydecay408 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call409 = call i32 @strcmp(i8* %arraydecay408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)) #7
  %tobool410 = icmp ne i32 %call409, 0
  br i1 %tobool410, label %if.else.412, label %if.then.411

if.then.411:                                      ; preds = %if.else.407
  br label %while.body

if.else.412:                                      ; preds = %if.else.407
  %arraydecay413 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call414 = call i32 @strcmp(i8* %arraydecay413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #7
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.else.417, label %if.then.416

if.then.416:                                      ; preds = %if.else.412
  store i32 1, i32* @white_to_move, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  br label %if.end.842

if.else.417:                                      ; preds = %if.else.412
  %arraydecay418 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call419 = call i32 @strcmp(i8* %arraydecay418, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #7
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.else.422, label %if.then.421

if.then.421:                                      ; preds = %if.else.417
  store i32 0, i32* @white_to_move, align 4
  store i32 1, i32* @root_to_move, align 4
  store i32 1, i32* @comp_color, align 4
  br label %if.end.841

if.else.422:                                      ; preds = %if.else.417
  %arraydecay423 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call424 = call i32 @strcmp(i8* %arraydecay423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #7
  %tobool425 = icmp ne i32 %call424, 0
  br i1 %tobool425, label %if.else.427, label %if.then.426

if.then.426:                                      ; preds = %if.else.422
  store i32 1, i32* %force_mode, align 4
  br label %if.end.840

if.else.427:                                      ; preds = %if.else.422
  %arraydecay428 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call429 = call i32 @strcmp(i8* %arraydecay428, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0)) #7
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.else.434, label %if.then.431

if.then.431:                                      ; preds = %if.else.427
  call void @check_phase()
  %call432 = call i32 @eval(i32 -1000000, i32 1000000)
  %call433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %call432)
  br label %if.end.839

if.else.434:                                      ; preds = %if.else.427
  %arraydecay435 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call436 = call i32 @strcmp(i8* %arraydecay435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0)) #7
  %tobool437 = icmp ne i32 %call436, 0
  br i1 %tobool437, label %if.else.439, label %if.then.438

if.then.438:                                      ; preds = %if.else.434
  %153 = load i32, i32* @white_to_move, align 4
  store i32 %153, i32* @comp_color, align 4
  store i32 0, i32* %force_mode, align 4
  br label %if.end.838

if.else.439:                                      ; preds = %if.else.434
  %arraydecay440 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call441 = call i32 @strncmp(i8* %arraydecay440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i64 4) #7
  %tobool442 = icmp ne i32 %call441, 0
  br i1 %tobool442, label %if.else.447, label %if.then.443

if.then.443:                                      ; preds = %if.else.439
  %arraydecay444 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr445 = getelementptr inbounds i8, i8* %arraydecay444, i64 5
  %call446 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* @time_left) #2
  br label %if.end.837

if.else.447:                                      ; preds = %if.else.439
  %arraydecay448 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call449 = call i32 @strncmp(i8* %arraydecay448, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i64 4) #7
  %tobool450 = icmp ne i32 %call449, 0
  br i1 %tobool450, label %if.else.455, label %if.then.451

if.then.451:                                      ; preds = %if.else.447
  %arraydecay452 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr453 = getelementptr inbounds i8, i8* %arraydecay452, i64 5
  %call454 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr453, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32* @opp_time) #2
  br label %if.end.836

if.else.455:                                      ; preds = %if.else.447
  %arraydecay456 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call457 = call i32 @strncmp(i8* %arraydecay456, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i64 5) #7
  %tobool458 = icmp ne i32 %call457, 0
  br i1 %tobool458, label %if.else.477, label %if.then.459

if.then.459:                                      ; preds = %if.else.455
  %arraydecay460 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr461 = getelementptr inbounds i8, i8* %arraydecay460, i64 6
  %call462 = call i8* @strstr(i8* %add.ptr461, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #7
  %tobool463 = icmp ne i8* %call462, null
  br i1 %tobool463, label %if.then.464, label %if.else.471

if.then.464:                                      ; preds = %if.then.459
  %arraydecay465 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr466 = getelementptr inbounds i8, i8* %arraydecay465, i64 6
  %call467 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr466, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32* @moves_to_tc, i32* @min_per_game, i32* @sec_per_game, i32* @inc) #2
  %154 = load i32, i32* @min_per_game, align 4
  %mul468 = mul nsw i32 %154, 6000
  %155 = load i32, i32* @sec_per_game, align 4
  %mul469 = mul nsw i32 %155, 100
  %add470 = add nsw i32 %mul468, %mul469
  store i32 %add470, i32* @time_left, align 4
  %156 = load i32, i32* @time_left, align 4
  store i32 %156, i32* @opp_time, align 4
  br label %if.end.476

if.else.471:                                      ; preds = %if.then.459
  %arraydecay472 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr473 = getelementptr inbounds i8, i8* %arraydecay472, i64 6
  %call474 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr473, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32* @moves_to_tc, i32* @min_per_game, i32* @inc) #2
  %157 = load i32, i32* @min_per_game, align 4
  %mul475 = mul nsw i32 %157, 6000
  store i32 %mul475, i32* @time_left, align 4
  %158 = load i32, i32* @time_left, align 4
  store i32 %158, i32* @opp_time, align 4
  br label %if.end.476

if.end.476:                                       ; preds = %if.else.471, %if.then.464
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @time_cushion, align 4
  br label %if.end.835

if.else.477:                                      ; preds = %if.else.455
  %arraydecay478 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call479 = call i32 @strncmp(i8* %arraydecay478, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i64 6) #7
  %tobool480 = icmp ne i32 %call479, 0
  br i1 %tobool480, label %if.else.493, label %if.then.481

if.then.481:                                      ; preds = %if.else.477
  %arraydecay482 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr483 = getelementptr inbounds i8, i8* %arraydecay482, i64 7
  %call484 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr483, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32* @my_rating, i32* @opp_rating) #2
  %159 = load i32, i32* @my_rating, align 4
  %cmp485 = icmp eq i32 %159, 0
  br i1 %cmp485, label %if.then.487, label %if.end.488

if.then.487:                                      ; preds = %if.then.481
  store i32 2000, i32* @my_rating, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.487, %if.then.481
  %160 = load i32, i32* @opp_rating, align 4
  %cmp489 = icmp eq i32 %160, 0
  br i1 %cmp489, label %if.then.491, label %if.end.492

if.then.491:                                      ; preds = %if.end.488
  store i32 2000, i32* @opp_rating, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.491, %if.end.488
  br label %if.end.834

if.else.493:                                      ; preds = %if.else.477
  %arraydecay494 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call495 = call i32 @strncmp(i8* %arraydecay494, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i64 7) #7
  %tobool496 = icmp ne i32 %call495, 0
  br i1 %tobool496, label %if.else.499, label %if.then.497

if.then.497:                                      ; preds = %if.else.493
  %arraydecay498 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  call void @ProcessHoldings(i8* %arraydecay498)
  br label %if.end.833

if.else.499:                                      ; preds = %if.else.493
  %arraydecay500 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call501 = call i32 @strncmp(i8* %arraydecay500, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i64 7) #7
  %tobool502 = icmp ne i32 %call501, 0
  br i1 %tobool502, label %if.else.539, label %if.then.503

if.then.503:                                      ; preds = %if.else.499
  %arraydecay504 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call505 = call i8* @strstr(i8* %arraydecay504, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)) #7
  %tobool506 = icmp ne i8* %call505, null
  br i1 %tobool506, label %if.then.507, label %if.else.508

if.then.507:                                      ; preds = %if.then.503
  store i32 2, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.538

if.else.508:                                      ; preds = %if.then.503
  %arraydecay509 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call510 = call i8* @strstr(i8* %arraydecay509, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0)) #7
  %tobool511 = icmp ne i8* %call510, null
  br i1 %tobool511, label %if.then.512, label %if.else.513

if.then.512:                                      ; preds = %if.else.508
  store i32 0, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.537

if.else.513:                                      ; preds = %if.else.508
  %arraydecay514 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call515 = call i8* @strstr(i8* %arraydecay514, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0)) #7
  %tobool516 = icmp ne i8* %call515, null
  br i1 %tobool516, label %if.then.517, label %if.else.518

if.then.517:                                      ; preds = %if.else.513
  store i32 1, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @zh_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.536

if.else.518:                                      ; preds = %if.else.513
  %arraydecay519 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call520 = call i8* @strstr(i8* %arraydecay519, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)) #7
  %tobool521 = icmp ne i8* %call520, null
  br i1 %tobool521, label %if.then.522, label %if.else.523

if.then.522:                                      ; preds = %if.else.518
  store i32 3, i32* @Variant, align 4
  store i32 0, i32* @Giveaway, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.535

if.else.523:                                      ; preds = %if.else.518
  %arraydecay524 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call525 = call i8* @strstr(i8* %arraydecay524, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0)) #7
  %tobool526 = icmp ne i8* %call525, null
  br i1 %tobool526, label %if.then.527, label %if.else.528

if.then.527:                                      ; preds = %if.else.523
  store i32 3, i32* @Variant, align 4
  store i32 1, i32* @Giveaway, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @suicide_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.534

if.else.528:                                      ; preds = %if.else.523
  %arraydecay529 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call530 = call i8* @strstr(i8* %arraydecay529, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)) #7
  %tobool531 = icmp ne i8* %call530, null
  br i1 %tobool531, label %if.then.532, label %if.end.533

if.then.532:                                      ; preds = %if.else.528
  store i32 4, i32* @Variant, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @losers_material to i8*), i64 56, i32 16, i1 false)
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.532, %if.else.528
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %if.then.527
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.then.522
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.517
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.then.512
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.then.507
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  br label %if.end.832

if.else.539:                                      ; preds = %if.else.499
  %arraydecay540 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call541 = call i32 @strncmp(i8* %arraydecay540, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i64 7) #7
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %if.else.545, label %if.then.543

if.then.543:                                      ; preds = %if.else.539
  store i32 1, i32* @is_analyzing, align 4
  store i32 1, i32* @is_pondering, align 4
  call void @think(%struct.move_s* sret %tmp544)
  store i32 0, i32* @ply, align 4
  br label %if.end.831

if.else.545:                                      ; preds = %if.else.539
  %arraydecay546 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call547 = call i32 @strncmp(i8* %arraydecay546, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i64 4) #7
  %tobool548 = icmp ne i32 %call547, 0
  br i1 %tobool548, label %if.else.561, label %if.then.549

if.then.549:                                      ; preds = %if.else.545
  %161 = load i32, i32* @move_number, align 4
  %call550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 %161)
  %162 = load i32, i32* @move_number, align 4
  %cmp551 = icmp sgt i32 %162, 0
  br i1 %cmp551, label %if.then.553, label %if.end.560

if.then.553:                                      ; preds = %if.then.549
  %163 = load i32, i32* @move_number, align 4
  %dec554 = add nsw i32 %163, -1
  store i32 %dec554, i32* @move_number, align 4
  %idxprom555 = sext i32 %dec554 to i64
  %arrayidx556 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %game_history_x, i32 0, i64 %idxprom555
  %164 = bitcast %struct.move_x* %arrayidx556 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %164, i64 16, i32 4, i1 false)
  %165 = load i32, i32* @move_number, align 4
  %idxprom557 = sext i32 %165 to i64
  %arrayidx558 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %game_history, i32 0, i64 %idxprom557
  call void @unmake(%struct.move_s* %arrayidx558, i32 0)
  call void @reset_piece_square()
  %166 = load i32, i32* @root_to_move, align 4
  %xor559 = xor i32 %166, 1
  store i32 %xor559, i32* @root_to_move, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.553, %if.then.549
  br label %if.end.830

if.else.561:                                      ; preds = %if.else.545
  %arraydecay562 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call563 = call i32 @strncmp(i8* %arraydecay562, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i64 5) #7
  %tobool564 = icmp ne i32 %call563, 0
  br i1 %tobool564, label %if.else.580, label %if.then.565

if.then.565:                                      ; preds = %if.else.561
  %167 = load i32, i32* @move_number, align 4
  %cmp566 = icmp sgt i32 %167, 1
  br i1 %cmp566, label %if.then.568, label %if.end.579

if.then.568:                                      ; preds = %if.then.565
  %168 = load i32, i32* @move_number, align 4
  %dec569 = add nsw i32 %168, -1
  store i32 %dec569, i32* @move_number, align 4
  %idxprom570 = sext i32 %dec569 to i64
  %arrayidx571 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %game_history_x, i32 0, i64 %idxprom570
  %169 = bitcast %struct.move_x* %arrayidx571 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %169, i64 16, i32 4, i1 false)
  %170 = load i32, i32* @move_number, align 4
  %idxprom572 = sext i32 %170 to i64
  %arrayidx573 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %game_history, i32 0, i64 %idxprom572
  call void @unmake(%struct.move_s* %arrayidx573, i32 0)
  call void @reset_piece_square()
  %171 = load i32, i32* @move_number, align 4
  %dec574 = add nsw i32 %171, -1
  store i32 %dec574, i32* @move_number, align 4
  %idxprom575 = sext i32 %dec574 to i64
  %arrayidx576 = getelementptr inbounds [600 x %struct.move_x], [600 x %struct.move_x]* %game_history_x, i32 0, i64 %idxprom575
  %172 = bitcast %struct.move_x* %arrayidx576 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([300 x %struct.move_x]* @path_x to i8*), i8* %172, i64 16, i32 4, i1 false)
  %173 = load i32, i32* @move_number, align 4
  %idxprom577 = sext i32 %173 to i64
  %arrayidx578 = getelementptr inbounds [600 x %struct.move_s], [600 x %struct.move_s]* %game_history, i32 0, i64 %idxprom577
  call void @unmake(%struct.move_s* %arrayidx578, i32 0)
  call void @reset_piece_square()
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.568, %if.then.565
  br label %if.end.829

if.else.580:                                      ; preds = %if.else.561
  %arraydecay581 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call582 = call i32 @strncmp(i8* %arraydecay581, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i64 4) #7
  %tobool583 = icmp ne i32 %call582, 0
  br i1 %tobool583, label %if.else.585, label %if.then.584

if.then.584:                                      ; preds = %if.else.580
  store i32 1, i32* %is_edit_mode, align 4
  store i32 0, i32* %edit_color, align 4
  br label %if.end.828

if.else.585:                                      ; preds = %if.else.580
  %arraydecay586 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call587 = call i32 @strncmp(i8* %arraydecay586, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i64 1) #7
  %tobool588 = icmp ne i32 %call587, 0
  br i1 %tobool588, label %if.else.600, label %land.lhs.true.589

land.lhs.true.589:                                ; preds = %if.else.585
  %174 = load i32, i32* %is_edit_mode, align 4
  %tobool590 = icmp ne i32 %174, 0
  br i1 %tobool590, label %if.then.591, label %if.else.600

if.then.591:                                      ; preds = %land.lhs.true.589
  store i32 0, i32* %is_edit_mode, align 4
  %175 = load i32, i32* @wking_loc, align 4
  %cmp592 = icmp eq i32 %175, 30
  br i1 %cmp592, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %if.then.591
  store i32 0, i32* @white_castled, align 4
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.594, %if.then.591
  %176 = load i32, i32* @bking_loc, align 4
  %cmp596 = icmp eq i32 %176, 114
  br i1 %cmp596, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.end.595
  store i32 0, i32* @black_castled, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.598, %if.end.595
  store i32 50, i32* @book_ply, align 4
  store i32 0, i32* @ep_square, align 4
  store i32 0, i32* @move_number, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @opening_history, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  call void @clear_tt()
  call void @initialize_hash()
  call void @reset_piece_square()
  br label %if.end.827

if.else.600:                                      ; preds = %land.lhs.true.589, %if.else.585
  %177 = load i32, i32* %is_edit_mode, align 4
  %tobool601 = icmp ne i32 %177, 0
  br i1 %tobool601, label %land.lhs.true.602, label %if.else.612

land.lhs.true.602:                                ; preds = %if.else.600
  %arraydecay603 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call604 = call i32 @strncmp(i8* %arraydecay603, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0), i64 1) #7
  %tobool605 = icmp ne i32 %call604, 0
  br i1 %tobool605, label %if.else.612, label %if.then.606

if.then.606:                                      ; preds = %land.lhs.true.602
  %178 = load i32, i32* %edit_color, align 4
  %cmp607 = icmp eq i32 %178, 0
  br i1 %cmp607, label %if.then.609, label %if.else.610

if.then.609:                                      ; preds = %if.then.606
  store i32 1, i32* %edit_color, align 4
  br label %if.end.611

if.else.610:                                      ; preds = %if.then.606
  store i32 0, i32* %edit_color, align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.else.610, %if.then.609
  br label %if.end.826

if.else.612:                                      ; preds = %land.lhs.true.602, %if.else.600
  %179 = load i32, i32* %is_edit_mode, align 4
  %tobool613 = icmp ne i32 %179, 0
  br i1 %tobool613, label %land.lhs.true.614, label %if.else.619

land.lhs.true.614:                                ; preds = %if.else.612
  %arraydecay615 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call616 = call i32 @strncmp(i8* %arraydecay615, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i64 1) #7
  %tobool617 = icmp ne i32 %call616, 0
  br i1 %tobool617, label %if.else.619, label %if.then.618

if.then.618:                                      ; preds = %land.lhs.true.614
  call void @reset_board()
  store i32 0, i32* @move_number, align 4
  br label %if.end.825

if.else.619:                                      ; preds = %land.lhs.true.614, %if.else.612
  %180 = load i32, i32* %is_edit_mode, align 4
  %tobool620 = icmp ne i32 %180, 0
  br i1 %tobool620, label %land.lhs.true.621, label %if.else.652

land.lhs.true.621:                                ; preds = %if.else.619
  %arrayidx622 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 0
  %181 = load i8, i8* %arrayidx622, align 1
  %conv623 = sext i8 %181 to i32
  %idxprom624 = sext i32 %conv623 to i64
  %call625 = call i16** @__ctype_b_loc() #9
  %182 = load i16*, i16** %call625, align 8
  %arrayidx626 = getelementptr inbounds i16, i16* %182, i64 %idxprom624
  %183 = load i16, i16* %arrayidx626, align 2
  %conv627 = zext i16 %183 to i32
  %and = and i32 %conv627, 1024
  %tobool628 = icmp ne i32 %and, 0
  br i1 %tobool628, label %land.lhs.true.629, label %if.else.652

land.lhs.true.629:                                ; preds = %land.lhs.true.621
  %arrayidx630 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 1
  %184 = load i8, i8* %arrayidx630, align 1
  %conv631 = sext i8 %184 to i32
  %idxprom632 = sext i32 %conv631 to i64
  %call633 = call i16** @__ctype_b_loc() #9
  %185 = load i16*, i16** %call633, align 8
  %arrayidx634 = getelementptr inbounds i16, i16* %185, i64 %idxprom632
  %186 = load i16, i16* %arrayidx634, align 2
  %conv635 = zext i16 %186 to i32
  %and636 = and i32 %conv635, 1024
  %tobool637 = icmp ne i32 %and636, 0
  br i1 %tobool637, label %land.lhs.true.638, label %if.else.652

land.lhs.true.638:                                ; preds = %land.lhs.true.629
  %arrayidx639 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 2
  %187 = load i8, i8* %arrayidx639, align 1
  %conv640 = sext i8 %187 to i32
  %idxprom641 = sext i32 %conv640 to i64
  %call642 = call i16** @__ctype_b_loc() #9
  %188 = load i16*, i16** %call642, align 8
  %arrayidx643 = getelementptr inbounds i16, i16* %188, i64 %idxprom641
  %189 = load i16, i16* %arrayidx643, align 2
  %conv644 = zext i16 %189 to i32
  %and645 = and i32 %conv644, 2048
  %tobool646 = icmp ne i32 %and645, 0
  br i1 %tobool646, label %if.then.647, label %if.else.652

if.then.647:                                      ; preds = %land.lhs.true.638
  %190 = load i32, i32* %edit_color, align 4
  %arrayidx648 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 0
  %191 = load i8, i8* %arrayidx648, align 1
  %arrayidx649 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 1
  %192 = load i8, i8* %arrayidx649, align 1
  %arrayidx650 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 2
  %193 = load i8, i8* %arrayidx650, align 1
  %conv651 = sext i8 %193 to i32
  call void @PutPiece(i32 %190, i8 signext %191, i8 signext %192, i32 %conv651)
  br label %if.end.824

if.else.652:                                      ; preds = %land.lhs.true.638, %land.lhs.true.629, %land.lhs.true.621, %if.else.619
  %arraydecay653 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call654 = call i32 @strncmp(i8* %arraydecay653, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i64 7) #7
  %tobool655 = icmp ne i32 %call654, 0
  br i1 %tobool655, label %if.else.659, label %if.then.656

if.then.656:                                      ; preds = %if.else.652
  %arraydecay657 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr658 = getelementptr inbounds i8, i8* %arraydecay657, i64 7
  call void @HandlePartner(i8* %add.ptr658)
  br label %if.end.823

if.else.659:                                      ; preds = %if.else.652
  %arraydecay660 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call661 = call i32 @strncmp(i8* %arraydecay660, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i64 8) #7
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.else.666, label %if.then.663

if.then.663:                                      ; preds = %if.else.659
  %arraydecay664 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr665 = getelementptr inbounds i8, i8* %arraydecay664, i64 8
  call void @HandlePartner(i8* %add.ptr665)
  br label %if.end.822

if.else.666:                                      ; preds = %if.else.659
  %arraydecay667 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call668 = call i32 @strncmp(i8* %arraydecay667, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i64 5) #7
  %tobool669 = icmp ne i32 %call668, 0
  br i1 %tobool669, label %if.else.672, label %if.then.670

if.then.670:                                      ; preds = %if.else.666
  %arraydecay671 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  call void @HandlePtell(i8* %arraydecay671)
  br label %if.end.821

if.else.672:                                      ; preds = %if.else.666
  %arraydecay673 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call674 = call i32 @strncmp(i8* %arraydecay673, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #7
  %tobool675 = icmp ne i32 %call674, 0
  br i1 %tobool675, label %if.else.677, label %if.then.676

if.then.676:                                      ; preds = %if.else.672
  call void @run_epd_testsuite()
  br label %if.end.820

if.else.677:                                      ; preds = %if.else.672
  %arraydecay678 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call679 = call i32 @strncmp(i8* %arraydecay678, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i64 2) #7
  %tobool680 = icmp ne i32 %call679, 0
  br i1 %tobool680, label %if.else.686, label %if.then.681

if.then.681:                                      ; preds = %if.else.677
  %arraydecay682 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr683 = getelementptr inbounds i8, i8* %arraydecay682, i64 3
  %call684 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr683, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* @fixed_time) #2
  %194 = load i32, i32* @fixed_time, align 4
  %mul685 = mul nsw i32 %194, 100
  store i32 %mul685, i32* @fixed_time, align 4
  br label %if.end.819

if.else.686:                                      ; preds = %if.else.677
  %arraydecay687 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call688 = call i32 @strncmp(i8* %arraydecay687, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i64 6) #7
  %tobool689 = icmp ne i32 %call688, 0
  br i1 %tobool689, label %if.else.691, label %if.then.690

if.then.690:                                      ; preds = %if.else.686
  br label %if.end.818

if.else.691:                                      ; preds = %if.else.686
  %arraydecay692 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call693 = call i32 @strncmp(i8* %arraydecay692, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i64 5) #7
  %tobool694 = icmp ne i32 %call693, 0
  br i1 %tobool694, label %if.else.704, label %if.then.695

if.then.695:                                      ; preds = %if.else.691
  %call696 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i32 0, i32 0))
  %call697 = call i64 @rtime()
  store i64 %call697, i64* @start_time, align 8
  %arraydecay698 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay698, i32 256, %struct._IO_FILE* %195)
  %arraydecay699 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %call700 = call i64 @atol(i8* %arraydecay699) #7
  %mul701 = mul nsw i64 %call700, 100
  %conv702 = trunc i64 %mul701 to i32
  store i32 %conv702, i32* @pn_time, align 4
  %call703 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  call void @proofnumbersearch()
  br label %if.end.817

if.else.704:                                      ; preds = %if.else.691
  %arraydecay705 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call706 = call i32 @strncmp(i8* %arraydecay705, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i64 4) #7
  %tobool707 = icmp ne i32 %call706, 0
  br i1 %tobool707, label %if.else.713, label %if.then.708

if.then.708:                                      ; preds = %if.else.704
  %arraydecay709 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr710 = getelementptr inbounds i8, i8* %arraydecay709, i64 5
  %call711 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr710, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %pingnum) #2
  %196 = load i32, i32* %pingnum, align 4
  %call712 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 %196)
  br label %if.end.816

if.else.713:                                      ; preds = %if.else.704
  %arraydecay714 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call715 = call i32 @strncmp(i8* %arraydecay714, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i64 5) #7
  %tobool716 = icmp ne i32 %call715, 0
  br i1 %tobool716, label %if.else.718, label %if.then.717

if.then.717:                                      ; preds = %if.else.713
  store i32 1, i32* %braindeadinterface, align 4
  br label %if.end.815

if.else.718:                                      ; preds = %if.else.713
  %arraydecay719 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call720 = call i32 @strncmp(i8* %arraydecay719, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i64 5) #7
  %tobool721 = icmp ne i32 %call720, 0
  br i1 %tobool721, label %if.else.723, label %if.then.722

if.then.722:                                      ; preds = %if.else.718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([14 x i32]* @material to i8*), i8* bitcast ([14 x i32]* @std_material to i8*), i64 56, i32 16, i1 false)
  store i32 2, i32* @Variant, align 4
  call void @init_game()
  call void @initialize_hash()
  call void @clear_tt()
  call void @reset_ecache()
  store i32 0, i32* %force_mode, align 4
  store i32 0, i32* @fixed_time, align 4
  store i32 0, i32* @root_to_move, align 4
  store i32 0, i32* @comp_color, align 4
  store i32 0, i32* @move_number, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 2000, i32* @opp_rating, align 4
  store i32 2000, i32* @my_rating, align 4
  br label %if.end.814

if.else.723:                                      ; preds = %if.else.718
  %arraydecay724 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call725 = call i32 @strncmp(i8* %arraydecay724, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i64 8) #7
  %tobool726 = icmp ne i32 %call725, 0
  br i1 %tobool726, label %if.else.730, label %if.then.727

if.then.727:                                      ; preds = %if.else.723
  %arraydecay728 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr729 = getelementptr inbounds i8, i8* %arraydecay728, i64 9
  call void @setup_epd_line(i8* %add.ptr729)
  br label %if.end.813

if.else.730:                                      ; preds = %if.else.723
  %arraydecay731 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call732 = call i32 @strncmp(i8* %arraydecay731, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i64 1) #7
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.else.735, label %if.then.734

if.then.734:                                      ; preds = %if.else.730
  br label %while.body

if.else.735:                                      ; preds = %if.else.730
  %arraydecay736 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call737 = call i32 @strncmp(i8* %arraydecay736, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i64 2) #7
  %tobool738 = icmp ne i32 %call737, 0
  br i1 %tobool738, label %if.else.744, label %if.then.739

if.then.739:                                      ; preds = %if.else.735
  %arraydecay740 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %add.ptr741 = getelementptr inbounds i8, i8* %arraydecay740, i64 3
  %call742 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr741, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* @maxdepth) #2
  %197 = load i32, i32* @maxdepth, align 4
  %call743 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.84, i32 0, i32 0), i32 %197)
  br label %while.body

if.else.744:                                      ; preds = %if.else.735
  %arraydecay745 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call746 = call i32 @strncmp(i8* %arraydecay745, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i64 4) #7
  %tobool747 = icmp ne i32 %call746, 0
  br i1 %tobool747, label %if.else.749, label %if.then.748

if.then.748:                                      ; preds = %if.else.744
  store i32 1, i32* %automode, align 4
  br label %while.body

if.else.749:                                      ; preds = %if.else.744
  %arraydecay750 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call751 = call i32 @strncmp(i8* %arraydecay750, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i64 8) #7
  %tobool752 = icmp ne i32 %call751, 0
  br i1 %tobool752, label %if.else.759, label %if.then.753

if.then.753:                                      ; preds = %if.else.749
  %call754 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.87, i32 0, i32 0))
  %call755 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.88, i32 0, i32 0))
  %call756 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0))
  %call757 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.90, i32 0, i32 0))
  %call758 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i32 0, i32 0))
  store i32 2, i32* @xb_mode, align 4
  br label %if.end.809

if.else.759:                                      ; preds = %if.else.749
  %arraydecay760 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call761 = call i32 @strncmp(i8* %arraydecay760, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i64 8) #7
  %tobool762 = icmp ne i32 %call761, 0
  br i1 %tobool762, label %if.else.764, label %if.then.763

if.then.763:                                      ; preds = %if.else.759
  br label %if.end.808

if.else.764:                                      ; preds = %if.else.759
  %arraydecay765 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call766 = call i32 @strncmp(i8* %arraydecay765, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i64 8) #7
  %tobool767 = icmp ne i32 %call766, 0
  br i1 %tobool767, label %if.else.770, label %if.then.768

if.then.768:                                      ; preds = %if.else.764
  %call769 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.94, i32 0, i32 0))
  br label %if.end.807

if.else.770:                                      ; preds = %if.else.764
  %arraydecay771 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call772 = call i32 @strcmp(i8* %arraydecay771, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0)) #7
  %tobool773 = icmp ne i32 %call772, 0
  br i1 %tobool773, label %if.else.800, label %if.then.774

if.then.774:                                      ; preds = %if.else.770
  %call775 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  %call776 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.97, i32 0, i32 0))
  %call777 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i32 0, i32 0))
  %call778 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.99, i32 0, i32 0))
  %call779 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0))
  %call780 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.101, i32 0, i32 0))
  %call781 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.102, i32 0, i32 0))
  %call782 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.103, i32 0, i32 0))
  %call783 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0))
  %call784 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i32 0, i32 0))
  %call785 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.106, i32 0, i32 0))
  %call786 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0))
  %call787 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.108, i32 0, i32 0))
  %call788 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.109, i32 0, i32 0))
  %call789 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i32 0, i32 0))
  %call790 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.111, i32 0, i32 0))
  %call791 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.112, i32 0, i32 0))
  %call792 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0))
  %call793 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.114, i32 0, i32 0))
  %call794 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i32 0, i32 0))
  %call795 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i32 0, i32 0))
  %call796 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i32 0, i32 0))
  %call797 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.118, i32 0, i32 0))
  %call798 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.119, i32 0, i32 0))
  %call799 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  store i32 0, i32* %show_board, align 4
  br label %if.end.806

if.else.800:                                      ; preds = %if.else.770
  %198 = load i32, i32* @xb_mode, align 4
  %tobool801 = icmp ne i32 %198, 0
  br i1 %tobool801, label %if.end.805, label %if.then.802

if.then.802:                                      ; preds = %if.else.800
  %arraydecay803 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call804 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay803)
  br label %if.end.805

if.end.805:                                       ; preds = %if.then.802, %if.else.800
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %if.then.774
  br label %if.end.807

if.end.807:                                       ; preds = %if.end.806, %if.then.768
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.then.763
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.then.753
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809
  br label %if.end.811

if.end.811:                                       ; preds = %if.end.810
  br label %if.end.812

if.end.812:                                       ; preds = %if.end.811
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.812, %if.then.727
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %if.then.722
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %if.then.717
  br label %if.end.816

if.end.816:                                       ; preds = %if.end.815, %if.then.708
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.816, %if.then.695
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.then.690
  br label %if.end.819

if.end.819:                                       ; preds = %if.end.818, %if.then.681
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %if.then.676
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.then.670
  br label %if.end.822

if.end.822:                                       ; preds = %if.end.821, %if.then.663
  br label %if.end.823

if.end.823:                                       ; preds = %if.end.822, %if.then.656
  br label %if.end.824

if.end.824:                                       ; preds = %if.end.823, %if.then.647
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.then.618
  br label %if.end.826

if.end.826:                                       ; preds = %if.end.825, %if.end.611
  br label %if.end.827

if.end.827:                                       ; preds = %if.end.826, %if.end.599
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.then.584
  br label %if.end.829

if.end.829:                                       ; preds = %if.end.828, %if.end.579
  br label %if.end.830

if.end.830:                                       ; preds = %if.end.829, %if.end.560
  br label %if.end.831

if.end.831:                                       ; preds = %if.end.830, %if.then.543
  br label %if.end.832

if.end.832:                                       ; preds = %if.end.831, %if.end.538
  br label %if.end.833

if.end.833:                                       ; preds = %if.end.832, %if.then.497
  br label %if.end.834

if.end.834:                                       ; preds = %if.end.833, %if.end.492
  br label %if.end.835

if.end.835:                                       ; preds = %if.end.834, %if.end.476
  br label %if.end.836

if.end.836:                                       ; preds = %if.end.835, %if.then.451
  br label %if.end.837

if.end.837:                                       ; preds = %if.end.836, %if.then.443
  br label %if.end.838

if.end.838:                                       ; preds = %if.end.837, %if.then.438
  br label %if.end.839

if.end.839:                                       ; preds = %if.end.838, %if.then.431
  br label %if.end.840

if.end.840:                                       ; preds = %if.end.839, %if.then.426
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.840, %if.then.421
  br label %if.end.842

if.end.842:                                       ; preds = %if.end.841, %if.then.416
  br label %if.end.843

if.end.843:                                       ; preds = %if.end.842
  br label %if.end.844

if.end.844:                                       ; preds = %if.end.843
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845
  br label %if.end.847

if.end.847:                                       ; preds = %if.end.846, %if.then.391
  br label %if.end.848

if.end.848:                                       ; preds = %if.end.847, %if.end.386
  br label %if.end.849

if.end.849:                                       ; preds = %if.end.848, %if.then.370
  br label %if.end.850

if.end.850:                                       ; preds = %if.end.849, %if.then.362
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.850, %if.end.357
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.then.329
  br label %if.end.853

if.end.853:                                       ; preds = %if.end.852, %if.then.324
  br label %if.end.854

if.end.854:                                       ; preds = %if.end.853, %if.end.315
  br label %if.end.855

if.end.855:                                       ; preds = %if.end.854
  br label %if.end.856

if.end.856:                                       ; preds = %if.end.855, %if.end.291
  br label %while.body

return:                                           ; No predecessors!
  %199 = load i32, i32* %retval
  ret i32 %199
}

declare void @read_rcfile() #1

declare void @initialize_zobrist() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @init_game() #1

declare void @initialize_hash() #1

declare void @clear_tt() #1

declare void @reset_ecache() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #3

declare void @start_up() #1

declare i32 @printf(i8*, ...) #1

declare void @run_autotest(i8*) #1

declare void @think(%struct.move_s* sret) #1

declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #1

declare void @make(%struct.move_s*, i32) #1

declare i32 @is_draw() #1

declare void @reset_piece_square() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i32 @eval(i32, i32) #1

declare void @CheckBadFlow(i32) #1

declare void @display_board(%struct._IO_FILE*, i32) #1

declare void @rinput(i8*, i32, %struct._IO_FILE*) #1

declare i32 @is_move(i8*) #1

declare i32 @verify_coord(i8*, %struct.move_s*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @free_hash() #1

declare void @free_ecache() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare void @toggle_bool(i32*) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i64 @rtime() #1

declare void @perft(i32) #1

declare i32 @rdifftime(i64, i64) #1

declare void @ResetHandValue() #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @BegForPartner() #1

declare void @check_phase() #1

declare void @ProcessHoldings(i8*) #1

declare void @unmake(%struct.move_s*, i32) #1

declare void @reset_board() #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

declare void @PutPiece(i32, i8 signext, i8 signext, i32) #1

declare void @HandlePartner(i8*) #1

declare void @HandlePtell(i8*) #1

declare void @run_epd_testsuite() #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #4

declare void @proofnumbersearch() #1

declare void @setup_epd_line(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
