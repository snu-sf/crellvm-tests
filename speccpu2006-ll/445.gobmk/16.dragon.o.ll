; ModuleID = 'engine/dragon.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.influence_data = type opaque
%struct.interpolation_data = type { i32, float, float, [21 x float] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.moyo_data = type { i32, [400 x i32], [361 x i32], [361 x i32], [361 x float] }

@board = external global [421 x i8], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@number_of_dragons = external global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"engine/dragon.c\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"ON_BOARD1(pos) && dragon[pos].id >= 0 && dragon[pos].id < number_of_dragons\00", align 1
@dragon2 = external global %struct.dragon_data2*, align 8
@dragon2_initialized = internal global i32 0, align 4
@black_eye = external global [400 x %struct.eye_data], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"  time to make domains\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  time to find connections\00", align 1
@experimental_connections = external global i32, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"  time to amalgamate dragons\00", align 1
@worm = external global [400 x %struct.worm_data], align 16
@verbose = external global i32, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"at %1m setting %1m.lunch to %1m (cutstone=%d)\0A\00", align 1
@half_eye = external global [400 x %struct.half_eye_data], align 16
@debug = external global i32, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Black eyespace at %1m: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"White eyespace at %1m: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"board[dr] == 2\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"eye at %1m found for dragon at %1m--augmenting genus\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"board[dr] == 1\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"  pre-owl dragon data\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Inconsistent owl attack and defense results for %1m.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"    owl reading for dragon at \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"  owl reading\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"  compute status\00", align 1
@thrashing_dragon = external global i32, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"thrashing dragon found at %1m\0A\00", align 1
@level = external global i32, align 4
@disable_threat_computation = external global i32, align 4
@owl_threats = external global i32, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"    owl threats for dragon at \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"  owl threats \00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"surrounded dragon found at %1m\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"weakly surrounded dragon found at %1m\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"  post owl dragon data\00", align 1
@experimental_semeai = external global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"  semeai module\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Worm %1m revised to be inessential.\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"  revise worm inessentiality\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Dragon %1m revised to be inessential.\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"  revise dragon inessentiality\00", align 1
@lively_white_dragons = internal global i32 0, align 4
@lively_black_dragons = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [47 x i8] c"Initializing dragon from worm at %1m, size %d\0A\00", align 1
@next_worm_list = internal global [400 x i32] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [45 x i8] c"((color) == 1 || (color) == 2) || color == 0\00", align 1
@initial_black_influence = external global %struct.influence_data, align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"initial black influence, dragons known\00", align 1
@initial_white_influence = external global %struct.influence_data, align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"initial white influence, dragons known\00", align 1
@show_dragons.snames = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"unchecked\00", align 1
@show_dragons.safety_names = internal global [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0)], align 16
@.str.36 = private unnamed_addr constant [12 x i8] c"inessential\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"tactically dead\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"weakly_alive\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"alive_in_seki\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"strongly_alive\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"invincible\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"%1m : (dragon %1m) %s string of size %d (%f), genus %d: (%d,%d,%d,%d)\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"%o - is a potential cutting stone\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"%o - is a cutting stone\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"- cutstone2 = %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"- attackable at %1m, attack code = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"- defendable at %1m, defend code = %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"- attack threat at %1m, attack threat code = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"- defense threat at %1m, defense threat code = %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"... adjacent worm %1m is lunch\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"- is inessential\0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"- is invincible\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"- is a ko stone\0A\00", align 1
@.str.56 = private unnamed_addr constant [169 x i8] c"%1m : %s dragon size %d (%f), genus %s, escape factor %d, crude status %s, status %s, moyo size %d, moyo territory value %f, safety %s, weakness pre owl %f, weakness %f\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c", owl status %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"... owl attackable at %1m, code %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"... owl defendable at %1m, code %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"... neighbors\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c" %1m\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"board[d1] == board[d2]\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"dragon2_initialized == 0\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"((board[d1]) == 1 || (board[d1]) == 2)\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"joining dragon at %1m to dragon at %1m\0A\00", align 1
@dragon_escape.mx = internal global [400 x i32] zeroinitializer, align 16
@dragon_escape.mx_initialized = internal global i32 0, align 4
@.str.69 = private unnamed_addr constant [31 x i8] c"((color) == 1 || (color) == 2)\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"mx[queue[k]] == 1\00", align 1
@moyo_value2weakness = internal global %struct.interpolation_data { i32 5, float 0.000000e+00, float 1.500000e+01, [21 x float] [float 1.000000e+00, float 0x3FE4CCCCC0000000, float 0x3FD3333340000000, float 0x3FC3333340000000, float 0x3FA99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, align 4
@escape_route2weakness = internal global %struct.interpolation_data { i32 5, float 0.000000e+00, float 2.500000e+01, [21 x float] [float 1.000000e+00, float 0x3FE3333340000000, float 0x3FD3333340000000, float 0x3FB99999A0000000, float 0x3FA99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, align 4
@genus2weakness = internal global %struct.interpolation_data { i32 6, float 0.000000e+00, float 3.000000e+00, [21 x float] [float 1.000000e+00, float 0x3FEE666660000000, float 0x3FE99999A0000000, float 5.000000e-01, float 0x3FC99999A0000000, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, align 4
@.str.71 = private unnamed_addr constant [55 x i8] c"  moyo value %f -> %f, escape %f -> %f, eyes %f -> %f,\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"weakness >= 0.0 && weakness <= 1.0\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(d1)\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(d2)\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"worm[w].origin == w\00", align 1
@board_size = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [27 x i8] c"There is no dragon at %1m\0A\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Dragon data not available at %1m\0A\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"color                   %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"origin                  %1m\0A\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"size                    %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"effective_size          %f\0A\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"genus                   %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"heye                    %1m\0A\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"escape_route            %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"lunch                   %1m\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"crude status            %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"owl_status              %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"status                  %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"owl_threat_status       %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"owl_attack              %1m\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"owl_attack_certain      %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"owl_2nd_attack          %1m\0A\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"owl_defend              %1m\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"owl_defense_certain     %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"owl_2nd_defend          %1m\0A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"semeai                  %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"semeai_margin_of_safety %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"neighbors               \00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"%1m \00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"\0Ahostile neighbors       %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"moyo size               %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"moyo territorial value  %f\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"safety                  %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"weakness estimate       %f\0A\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"strings                 \00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"dragon2 != ((void*)0)\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"dragon2_initialized\00", align 1
@delta = external global [8 x i32], align 16
@.str.110 = private unnamed_addr constant [67 x i8] c"a >= 0 && a < number_of_dragons && b >= 0 && b < number_of_dragons\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"((board[dr]) == 1 || (board[dr]) == 2)\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"IS_STONE(board[ii])\00", align 1
@false_eye_territory = external global [400 x i32], align 16
@.str.113 = private unnamed_addr constant [31 x i8] c"amalgamate dragons around %1m\0A\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"eye[pos].color == 4\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@number_close_white_worms = external global [400 x i32], align 16
@close_white_worms = external global [400 x [4 x i32]], align 16
@number_close_black_worms = external global [400 x i32], align 16
@close_black_worms = external global [400 x [4 x i32]], align 16
@.str.116 = private unnamed_addr constant [38 x i8] c"Computing weakness of dragon at %1m:\0A\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c" result: %f.\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dragon_data2* @dragon2_func(i32 %pos) #0 {
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
  br i1 %cmp1, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 1
  %4 = load i32, i32* %id, align 4
  %cmp6 = icmp sge i32 %4, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true.3
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %id11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 1
  %6 = load i32, i32* %id11, align 4
  %7 = load i32, i32* @number_of_dragons, align 4
  %cmp12 = icmp slt i32 %6, %7
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true.3, %land.lhs.true, %entry
  %8 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %8, 20
  %sub = sub nsw i32 %div, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %9, 20
  %sub14 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 86, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %id17 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 1
  %11 = load i32, i32* %id17, align 4
  %idxprom18 = sext i32 %11 to i64
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx19 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %idxprom18
  ret %struct.dragon_data2* %arrayidx19
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @make_dragons(i32 %color, i32 %stop_before_owl, i32 %save_verbose) #0 {
entry:
  %color.addr = alloca i32, align 4
  %stop_before_owl.addr = alloca i32, align 4
  %save_verbose.addr = alloca i32, align 4
  %str = alloca i32, align 4
  %dr = alloca i32, align 4
  %d = alloca i32, align 4
  %last_move = alloca i32, align 4
  %food = alloca i32, align 4
  %origin94 = alloca i32, align 4
  %lunch98 = alloca i32, align 4
  %value = alloca %struct.eyevalue, align 1
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %value205 = alloca %struct.eyevalue, align 1
  %attack_point206 = alloca i32, align 4
  %defense_point207 = alloca i32, align 4
  %dd = alloca %struct.dragon_data*, align 8
  %attack_point490 = alloca i32, align 4
  %defense_point491 = alloca i32, align 4
  %no_eyes = alloca %struct.eyevalue, align 1
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %kworm = alloca i32, align 4
  %dd740 = alloca %struct.dragon_data*, align 8
  %no_eyes793 = alloca %struct.eyevalue, align 1
  %acode839 = alloca i32, align 4
  %dcode843 = alloca i32, align 4
  %defense_point847 = alloca i32, align 4
  %second_defense_point = alloca i32, align 4
  %attack_point890 = alloca i32, align 4
  %second_attack_point = alloca i32, align 4
  %dd927 = alloca %struct.dragon_data*, align 8
  %true_genus = alloca i32, align 4
  %origin985 = alloca i32, align 4
  %genus989 = alloca %struct.eyevalue*, align 8
  %adjs = alloca [160 x i32], align 16
  %neighbors = alloca i32, align 4
  %r = alloca i32, align 4
  %essential = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %stop_before_owl, i32* %stop_before_owl.addr, align 4
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  call void @start_timer(i32 2)
  store i32 0, i32* @dragon2_initialized, align 4
  call void @initialize_dragon_data()
  call void @make_domains(%struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), i32 0)
  %call = call double @time_report(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 0, double 1.000000e+00)
  call void @find_connections()
  %call1 = call double @time_report(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 0, double 1.000000e+00)
  %0 = load i32, i32* @experimental_connections, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.48, label %if.then

if.then:                                          ; preds = %entry
  store i32 21, i32* %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %str, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %str, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %if.then.4, label %if.end.46

if.then.4:                                        ; preds = %for.body
  %4 = load i32, i32* %str, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom5
  %color7 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx6, i32 0, i32 0
  %5 = load i32, i32* %color7, align 4
  %cmp8 = icmp eq i32 %5, 5
  br i1 %cmp8, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.4
  %6 = load i32, i32* %str, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom10
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx11, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  %8 = load i32, i32* %str, align 4
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %str, align 4
  %call15 = call i32 @is_ko_point(i32 %9)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.then.14
  %10 = load i32, i32* %str, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom17
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx18, i32 0, i32 1
  %11 = load i32, i32* %esize, align 4
  %cmp19 = icmp sgt i32 %11, 1
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.14
  %12 = load i32, i32* %str, align 4
  call void @dragon_eye(i32 %12, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.21, %lor.lhs.false
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %if.then.4
  %13 = load i32, i32* %str, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom23
  %color25 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx24, i32 0, i32 0
  %14 = load i32, i32* %color25, align 4
  %cmp26 = icmp eq i32 %14, 4
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.45

land.lhs.true.28:                                 ; preds = %if.end.22
  %15 = load i32, i32* %str, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom29
  %origin31 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 3
  %16 = load i32, i32* %origin31, align 4
  %17 = load i32, i32* %str, align 4
  %cmp32 = icmp eq i32 %16, %17
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %land.lhs.true.28
  %18 = load i32, i32* %str, align 4
  %call35 = call i32 @is_ko_point(i32 %18)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.43

lor.lhs.false.37:                                 ; preds = %if.then.34
  %19 = load i32, i32* %str, align 4
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom38
  %esize40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx39, i32 0, i32 1
  %20 = load i32, i32* %esize40, align 4
  %cmp41 = icmp sgt i32 %20, 1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.37, %if.then.34
  %21 = load i32, i32* %str, align 4
  call void @dragon_eye(i32 %21, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %lor.lhs.false.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.28, %if.end.22
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %22 = load i32, i32* %str, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %str, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call47 = call double @time_report(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %entry
  call void @initialize_supplementary_dragon_data()
  store i32 21, i32* %str, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.151, %if.end.48
  %23 = load i32, i32* %str, align 4
  %cmp50 = icmp slt i32 %23, 400
  br i1 %cmp50, label %for.body.52, label %for.end.153

for.body.52:                                      ; preds = %for.cond.49
  %24 = load i32, i32* %str, align 4
  %idxprom53 = sext i32 %24 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %25 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %25 to i32
  %cmp56 = icmp ne i32 %conv55, 3
  br i1 %cmp56, label %if.then.58, label %if.end.150

if.then.58:                                       ; preds = %for.body.52
  %26 = load i32, i32* %str, align 4
  %idxprom59 = sext i32 %26 to i64
  %arrayidx60 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom59
  %origin61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx60, i32 0, i32 3
  %27 = load i32, i32* %origin61, align 4
  %28 = load i32, i32* %str, align 4
  %cmp62 = icmp ne i32 %27, %28
  br i1 %cmp62, label %if.then.75, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.then.58
  %29 = load i32, i32* %str, align 4
  %idxprom65 = sext i32 %29 to i64
  %arrayidx66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom65
  %30 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %30 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %if.then.75, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.64
  %31 = load i32, i32* %str, align 4
  %idxprom71 = sext i32 %31 to i64
  %arrayidx72 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom71
  %lunch = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx72, i32 0, i32 8
  %32 = load i32, i32* %lunch, align 4
  %cmp73 = icmp eq i32 %32, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false.64, %if.then.58
  br label %for.inc.151

if.end.76:                                        ; preds = %lor.lhs.false.70
  %33 = load i32, i32* %str, align 4
  %idxprom77 = sext i32 %33 to i64
  %arrayidx78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom77
  %lunch79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx78, i32 0, i32 8
  %34 = load i32, i32* %lunch79, align 4
  store i32 %34, i32* %food, align 4
  %35 = load i32, i32* %food, align 4
  %idxprom80 = sext i32 %35 to i64
  %arrayidx81 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom80
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx81, i32 0, i32 18
  %arrayidx82 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %36 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %36, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.76
  br label %for.inc.151

if.end.86:                                        ; preds = %if.end.76
  %37 = load i32, i32* %color.addr, align 4
  %cmp87 = icmp eq i32 %37, 1
  br i1 %cmp87, label %if.then.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.86
  %38 = load i32, i32* %color.addr, align 4
  %cmp90 = icmp eq i32 %38, 2
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.89, %if.end.86
  %39 = load i32, i32* %str, align 4
  %40 = load i32, i32* %food, align 4
  call void @add_lunch(i32 %39, i32 %40)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %lor.lhs.false.89
  %41 = load i32, i32* %str, align 4
  %idxprom95 = sext i32 %41 to i64
  %arrayidx96 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom95
  %origin97 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx96, i32 0, i32 2
  %42 = load i32, i32* %origin97, align 4
  store i32 %42, i32* %origin94, align 4
  %43 = load i32, i32* %origin94, align 4
  %idxprom99 = sext i32 %43 to i64
  %arrayidx100 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom99
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx100, i32 0, i32 1
  %44 = load i32, i32* %id, align 4
  %idxprom101 = sext i32 %44 to i64
  %45 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx102 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i64 %idxprom101
  %lunch103 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx102, i32 0, i32 12
  %46 = load i32, i32* %lunch103, align 4
  store i32 %46, i32* %lunch98, align 4
  %47 = load i32, i32* %lunch98, align 4
  %cmp104 = icmp eq i32 %47, 0
  br i1 %cmp104, label %if.then.131, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.end.93
  %48 = load i32, i32* %food, align 4
  %idxprom107 = sext i32 %48 to i64
  %arrayidx108 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom107
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx108, i32 0, i32 9
  %49 = load i32, i32* %cutstone, align 4
  %50 = load i32, i32* %lunch98, align 4
  %idxprom109 = sext i32 %50 to i64
  %arrayidx110 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom109
  %cutstone111 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx110, i32 0, i32 9
  %51 = load i32, i32* %cutstone111, align 4
  %cmp112 = icmp sgt i32 %49, %51
  br i1 %cmp112, label %if.then.131, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.106
  %52 = load i32, i32* %food, align 4
  %idxprom115 = sext i32 %52 to i64
  %arrayidx116 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom115
  %cutstone117 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx116, i32 0, i32 9
  %53 = load i32, i32* %cutstone117, align 4
  %54 = load i32, i32* %lunch98, align 4
  %idxprom118 = sext i32 %54 to i64
  %arrayidx119 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom118
  %cutstone120 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx119, i32 0, i32 9
  %55 = load i32, i32* %cutstone120, align 4
  %cmp121 = icmp eq i32 %53, %55
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.149

land.lhs.true.123:                                ; preds = %lor.lhs.false.114
  %56 = load i32, i32* %food, align 4
  %idxprom124 = sext i32 %56 to i64
  %arrayidx125 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom124
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx125, i32 0, i32 4
  %57 = load i32, i32* %liberties, align 4
  %58 = load i32, i32* %lunch98, align 4
  %idxprom126 = sext i32 %58 to i64
  %arrayidx127 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom126
  %liberties128 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx127, i32 0, i32 4
  %59 = load i32, i32* %liberties128, align 4
  %cmp129 = icmp slt i32 %57, %59
  br i1 %cmp129, label %if.then.131, label %if.end.149

if.then.131:                                      ; preds = %land.lhs.true.123, %lor.lhs.false.106, %if.end.93
  %60 = load i32, i32* %food, align 4
  %idxprom132 = sext i32 %60 to i64
  %arrayidx133 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom132
  %origin134 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx133, i32 0, i32 3
  %61 = load i32, i32* %origin134, align 4
  %62 = load i32, i32* %origin94, align 4
  %idxprom135 = sext i32 %62 to i64
  %arrayidx136 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom135
  %id137 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx136, i32 0, i32 1
  %63 = load i32, i32* %id137, align 4
  %idxprom138 = sext i32 %63 to i64
  %64 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx139 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %64, i64 %idxprom138
  %lunch140 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx139, i32 0, i32 12
  store i32 %61, i32* %lunch140, align 4
  %65 = load i32, i32* @verbose, align 4
  %tobool141 = icmp ne i32 %65, 0
  br i1 %tobool141, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.131
  br label %cond.end

cond.false:                                       ; preds = %if.then.131
  %66 = load i32, i32* %str, align 4
  %67 = load i32, i32* %origin94, align 4
  %68 = load i32, i32* %food, align 4
  %idxprom142 = sext i32 %68 to i64
  %arrayidx143 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom142
  %origin144 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx143, i32 0, i32 3
  %69 = load i32, i32* %origin144, align 4
  %70 = load i32, i32* %food, align 4
  %idxprom145 = sext i32 %70 to i64
  %arrayidx146 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom145
  %cutstone147 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx146, i32 0, i32 9
  %71 = load i32, i32* %cutstone147, align 4
  %call148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i32 %66, i32 %67, i32 %69, i32 %71)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.149

if.end.149:                                       ; preds = %cond.end, %land.lhs.true.123, %lor.lhs.false.114
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %for.body.52
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150, %if.then.85, %if.then.75
  %72 = load i32, i32* %str, align 4
  %inc152 = add nsw i32 %72, 1
  store i32 %inc152, i32* %str, align 4
  br label %for.cond.49

for.end.153:                                      ; preds = %for.cond.49
  call void @find_half_and_false_eyes(i32 2, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i8* null)
  call void @find_half_and_false_eyes(i32 1, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i8* null)
  call void @modify_eye_spaces()
  store i32 21, i32* %str, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.225, %for.end.153
  %73 = load i32, i32* %str, align 4
  %cmp155 = icmp slt i32 %73, 400
  br i1 %cmp155, label %for.body.157, label %for.end.227

for.body.157:                                     ; preds = %for.cond.154
  %74 = load i32, i32* %str, align 4
  %idxprom158 = sext i32 %74 to i64
  %arrayidx159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom158
  %75 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %75 to i32
  %cmp161 = icmp ne i32 %conv160, 3
  br i1 %cmp161, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %for.body.157
  br label %for.inc.225

if.end.164:                                       ; preds = %for.body.157
  %76 = load i32, i32* %str, align 4
  %idxprom165 = sext i32 %76 to i64
  %arrayidx166 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom165
  %color167 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx166, i32 0, i32 0
  %77 = load i32, i32* %color167, align 4
  %cmp168 = icmp eq i32 %77, 5
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.192

land.lhs.true.170:                                ; preds = %if.end.164
  %78 = load i32, i32* %str, align 4
  %idxprom171 = sext i32 %78 to i64
  %arrayidx172 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom171
  %origin173 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx172, i32 0, i32 3
  %79 = load i32, i32* %origin173, align 4
  %80 = load i32, i32* %str, align 4
  %cmp174 = icmp eq i32 %79, %80
  br i1 %cmp174, label %if.then.176, label %if.end.192

if.then.176:                                      ; preds = %land.lhs.true.170
  %81 = load i32, i32* %str, align 4
  %82 = load i32, i32* %color.addr, align 4
  call void @compute_eyes(i32 %81, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 1, i32 %82)
  %83 = load i32, i32* @debug, align 4
  %and = and i32 %83, 2
  %tobool177 = icmp ne i32 %and, 0
  br i1 %tobool177, label %cond.false.179, label %cond.true.178

cond.true.178:                                    ; preds = %if.then.176
  br label %cond.end.182

cond.false.179:                                   ; preds = %if.then.176
  %84 = load i32, i32* %str, align 4
  %call180 = call i8* @eyevalue_to_string(%struct.eyevalue* %value)
  %call181 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %84, i8* %call180)
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.179, %cond.true.178
  %85 = load i32, i32* %str, align 4
  %idxprom183 = sext i32 %85 to i64
  %arrayidx184 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom183
  %value185 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx184, i32 0, i32 4
  %86 = bitcast %struct.eyevalue* %value185 to i8*
  %87 = bitcast %struct.eyevalue* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 4, i32 1, i1 false)
  %88 = load i32, i32* %attack_point, align 4
  %89 = load i32, i32* %str, align 4
  %idxprom186 = sext i32 %89 to i64
  %arrayidx187 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom186
  %attack_point188 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx187, i32 0, i32 5
  store i32 %88, i32* %attack_point188, align 4
  %90 = load i32, i32* %defense_point, align 4
  %91 = load i32, i32* %str, align 4
  %idxprom189 = sext i32 %91 to i64
  %arrayidx190 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom189
  %defense_point191 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx190, i32 0, i32 6
  store i32 %90, i32* %defense_point191, align 4
  %92 = load i32, i32* %str, align 4
  call void @propagate_eye(i32 %92, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0))
  br label %if.end.192

if.end.192:                                       ; preds = %cond.end.182, %land.lhs.true.170, %if.end.164
  %93 = load i32, i32* %str, align 4
  %idxprom193 = sext i32 %93 to i64
  %arrayidx194 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom193
  %color195 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx194, i32 0, i32 0
  %94 = load i32, i32* %color195, align 4
  %cmp196 = icmp eq i32 %94, 4
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.224

land.lhs.true.198:                                ; preds = %if.end.192
  %95 = load i32, i32* %str, align 4
  %idxprom199 = sext i32 %95 to i64
  %arrayidx200 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom199
  %origin201 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx200, i32 0, i32 3
  %96 = load i32, i32* %origin201, align 4
  %97 = load i32, i32* %str, align 4
  %cmp202 = icmp eq i32 %96, %97
  br i1 %cmp202, label %if.then.204, label %if.end.224

if.then.204:                                      ; preds = %land.lhs.true.198
  %98 = load i32, i32* %str, align 4
  %99 = load i32, i32* %color.addr, align 4
  call void @compute_eyes(i32 %98, %struct.eyevalue* %value205, i32* %attack_point206, i32* %defense_point207, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 1, i32 %99)
  %100 = load i32, i32* @debug, align 4
  %and208 = and i32 %100, 2
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %cond.false.211, label %cond.true.210

cond.true.210:                                    ; preds = %if.then.204
  br label %cond.end.214

cond.false.211:                                   ; preds = %if.then.204
  %101 = load i32, i32* %str, align 4
  %call212 = call i8* @eyevalue_to_string(%struct.eyevalue* %value205)
  %call213 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 %101, i8* %call212)
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.211, %cond.true.210
  %102 = load i32, i32* %str, align 4
  %idxprom215 = sext i32 %102 to i64
  %arrayidx216 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom215
  %value217 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx216, i32 0, i32 4
  %103 = bitcast %struct.eyevalue* %value217 to i8*
  %104 = bitcast %struct.eyevalue* %value205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 4, i32 1, i1 false)
  %105 = load i32, i32* %attack_point206, align 4
  %106 = load i32, i32* %str, align 4
  %idxprom218 = sext i32 %106 to i64
  %arrayidx219 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom218
  %attack_point220 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx219, i32 0, i32 5
  store i32 %105, i32* %attack_point220, align 4
  %107 = load i32, i32* %defense_point207, align 4
  %108 = load i32, i32* %str, align 4
  %idxprom221 = sext i32 %108 to i64
  %arrayidx222 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom221
  %defense_point223 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx222, i32 0, i32 6
  store i32 %107, i32* %defense_point223, align 4
  %109 = load i32, i32* %str, align 4
  call void @propagate_eye(i32 %109, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0))
  br label %if.end.224

if.end.224:                                       ; preds = %cond.end.214, %land.lhs.true.198, %if.end.192
  br label %for.inc.225

for.inc.225:                                      ; preds = %if.end.224, %if.then.163
  %110 = load i32, i32* %str, align 4
  %inc226 = add nsw i32 %110, 1
  store i32 %inc226, i32* %str, align 4
  br label %for.cond.154

for.end.227:                                      ; preds = %for.cond.154
  call void @analyze_false_eye_territory()
  store i32 21, i32* %str, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.380, %for.end.227
  %111 = load i32, i32* %str, align 4
  %cmp229 = icmp slt i32 %111, 400
  br i1 %cmp229, label %for.body.231, label %for.end.382

for.body.231:                                     ; preds = %for.cond.228
  %112 = load i32, i32* %str, align 4
  %idxprom232 = sext i32 %112 to i64
  %arrayidx233 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom232
  %113 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %113 to i32
  %cmp235 = icmp ne i32 %conv234, 3
  br i1 %cmp235, label %if.end.238, label %if.then.237

if.then.237:                                      ; preds = %for.body.231
  br label %for.inc.380

if.end.238:                                       ; preds = %for.body.231
  %114 = load i32, i32* %str, align 4
  %idxprom239 = sext i32 %114 to i64
  %arrayidx240 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom239
  %color241 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx240, i32 0, i32 0
  %115 = load i32, i32* %color241, align 4
  %cmp242 = icmp eq i32 %115, 5
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.307

land.lhs.true.244:                                ; preds = %if.end.238
  %116 = load i32, i32* %str, align 4
  %idxprom245 = sext i32 %116 to i64
  %arrayidx246 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom245
  %origin247 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx246, i32 0, i32 3
  %117 = load i32, i32* %origin247, align 4
  %118 = load i32, i32* %str, align 4
  %cmp248 = icmp eq i32 %117, %118
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.307

land.lhs.true.250:                                ; preds = %land.lhs.true.244
  %119 = load i32, i32* %str, align 4
  %idxprom251 = sext i32 %119 to i64
  %arrayidx252 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom251
  %origin253 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx252, i32 0, i32 3
  %120 = load i32, i32* %origin253, align 4
  %call254 = call i32 @find_eye_dragons(i32 %120, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), i32 2, i32* %dr, i32 1)
  %cmp255 = icmp eq i32 %call254, 1
  br i1 %cmp255, label %if.then.257, label %if.end.307

if.then.257:                                      ; preds = %land.lhs.true.250
  %121 = load i32, i32* %dr, align 4
  %idxprom258 = sext i32 %121 to i64
  %arrayidx259 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom258
  %122 = load i8, i8* %arrayidx259, align 1
  %conv260 = zext i8 %122 to i32
  %cmp261 = icmp eq i32 %conv260, 2
  br i1 %cmp261, label %if.then.263, label %if.else

if.then.263:                                      ; preds = %if.then.257
  br label %if.end.264

if.else:                                          ; preds = %if.then.257
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.264

if.end.264:                                       ; preds = %if.else, %if.then.263
  %123 = load i32, i32* @verbose, align 4
  %tobool265 = icmp ne i32 %123, 0
  br i1 %tobool265, label %cond.false.267, label %cond.true.266

cond.true.266:                                    ; preds = %if.end.264
  br label %cond.end.269

cond.false.267:                                   ; preds = %if.end.264
  %124 = load i32, i32* %str, align 4
  %125 = load i32, i32* %dr, align 4
  %call268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i32 %124, i32 %125)
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.267, %cond.true.266
  %126 = load i32, i32* %str, align 4
  %idxprom270 = sext i32 %126 to i64
  %arrayidx271 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom270
  %value272 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx271, i32 0, i32 4
  %call273 = call i32 @eye_move_urgency(%struct.eyevalue* %value272)
  %127 = load i32, i32* %dr, align 4
  %idxprom274 = sext i32 %127 to i64
  %arrayidx275 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom274
  %id276 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx275, i32 0, i32 1
  %128 = load i32, i32* %id276, align 4
  %idxprom277 = sext i32 %128 to i64
  %129 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx278 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %129, i64 %idxprom277
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx278, i32 0, i32 10
  %call279 = call i32 @eye_move_urgency(%struct.eyevalue* %genus)
  %cmp280 = icmp sgt i32 %call273, %call279
  br i1 %cmp280, label %if.then.282, label %if.end.291

if.then.282:                                      ; preds = %cond.end.269
  %130 = load i32, i32* %str, align 4
  %idxprom283 = sext i32 %130 to i64
  %arrayidx284 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom283
  %defense_point285 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx284, i32 0, i32 6
  %131 = load i32, i32* %defense_point285, align 4
  %132 = load i32, i32* %dr, align 4
  %idxprom286 = sext i32 %132 to i64
  %arrayidx287 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom286
  %id288 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx287, i32 0, i32 1
  %133 = load i32, i32* %id288, align 4
  %idxprom289 = sext i32 %133 to i64
  %134 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx290 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %134, i64 %idxprom289
  %heye = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx290, i32 0, i32 11
  store i32 %131, i32* %heye, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.282, %cond.end.269
  %135 = load i32, i32* %dr, align 4
  %idxprom292 = sext i32 %135 to i64
  %arrayidx293 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom292
  %id294 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx293, i32 0, i32 1
  %136 = load i32, i32* %id294, align 4
  %idxprom295 = sext i32 %136 to i64
  %137 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx296 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %137, i64 %idxprom295
  %genus297 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx296, i32 0, i32 10
  %138 = load i32, i32* %str, align 4
  %idxprom298 = sext i32 %138 to i64
  %arrayidx299 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom298
  %value300 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx299, i32 0, i32 4
  %139 = load i32, i32* %dr, align 4
  %idxprom301 = sext i32 %139 to i64
  %arrayidx302 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom301
  %id303 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx302, i32 0, i32 1
  %140 = load i32, i32* %id303, align 4
  %idxprom304 = sext i32 %140 to i64
  %141 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx305 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %141, i64 %idxprom304
  %genus306 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx305, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %genus297, %struct.eyevalue* %value300, %struct.eyevalue* %genus306)
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.291, %land.lhs.true.250, %land.lhs.true.244, %if.end.238
  %142 = load i32, i32* %str, align 4
  %idxprom308 = sext i32 %142 to i64
  %arrayidx309 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom308
  %color310 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx309, i32 0, i32 0
  %143 = load i32, i32* %color310, align 4
  %cmp311 = icmp eq i32 %143, 4
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.379

land.lhs.true.313:                                ; preds = %if.end.307
  %144 = load i32, i32* %str, align 4
  %idxprom314 = sext i32 %144 to i64
  %arrayidx315 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom314
  %origin316 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx315, i32 0, i32 3
  %145 = load i32, i32* %origin316, align 4
  %146 = load i32, i32* %str, align 4
  %cmp317 = icmp eq i32 %145, %146
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.379

land.lhs.true.319:                                ; preds = %land.lhs.true.313
  %147 = load i32, i32* %str, align 4
  %idxprom320 = sext i32 %147 to i64
  %arrayidx321 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom320
  %origin322 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx321, i32 0, i32 3
  %148 = load i32, i32* %origin322, align 4
  %call323 = call i32 @find_eye_dragons(i32 %148, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), i32 1, i32* %dr, i32 1)
  %cmp324 = icmp eq i32 %call323, 1
  br i1 %cmp324, label %if.then.326, label %if.end.379

if.then.326:                                      ; preds = %land.lhs.true.319
  %149 = load i32, i32* %dr, align 4
  %idxprom327 = sext i32 %149 to i64
  %arrayidx328 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom327
  %150 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %150 to i32
  %cmp330 = icmp eq i32 %conv329, 1
  br i1 %cmp330, label %if.then.332, label %if.else.333

if.then.332:                                      ; preds = %if.then.326
  br label %if.end.334

if.else.333:                                      ; preds = %if.then.326
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 266, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.334

if.end.334:                                       ; preds = %if.else.333, %if.then.332
  %151 = load i32, i32* @verbose, align 4
  %tobool335 = icmp ne i32 %151, 0
  br i1 %tobool335, label %cond.false.337, label %cond.true.336

cond.true.336:                                    ; preds = %if.end.334
  br label %cond.end.339

cond.false.337:                                   ; preds = %if.end.334
  %152 = load i32, i32* %str, align 4
  %153 = load i32, i32* %dr, align 4
  %call338 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i32 %152, i32 %153)
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.337, %cond.true.336
  %154 = load i32, i32* %str, align 4
  %idxprom340 = sext i32 %154 to i64
  %arrayidx341 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom340
  %value342 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx341, i32 0, i32 4
  %call343 = call i32 @eye_move_urgency(%struct.eyevalue* %value342)
  %155 = load i32, i32* %dr, align 4
  %idxprom344 = sext i32 %155 to i64
  %arrayidx345 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom344
  %id346 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx345, i32 0, i32 1
  %156 = load i32, i32* %id346, align 4
  %idxprom347 = sext i32 %156 to i64
  %157 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx348 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %157, i64 %idxprom347
  %genus349 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx348, i32 0, i32 10
  %call350 = call i32 @eye_move_urgency(%struct.eyevalue* %genus349)
  %cmp351 = icmp sgt i32 %call343, %call350
  br i1 %cmp351, label %if.then.353, label %if.end.363

if.then.353:                                      ; preds = %cond.end.339
  %158 = load i32, i32* %str, align 4
  %idxprom354 = sext i32 %158 to i64
  %arrayidx355 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom354
  %defense_point356 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx355, i32 0, i32 6
  %159 = load i32, i32* %defense_point356, align 4
  %160 = load i32, i32* %dr, align 4
  %idxprom357 = sext i32 %160 to i64
  %arrayidx358 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom357
  %id359 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx358, i32 0, i32 1
  %161 = load i32, i32* %id359, align 4
  %idxprom360 = sext i32 %161 to i64
  %162 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx361 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %162, i64 %idxprom360
  %heye362 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx361, i32 0, i32 11
  store i32 %159, i32* %heye362, align 4
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.353, %cond.end.339
  %163 = load i32, i32* %dr, align 4
  %idxprom364 = sext i32 %163 to i64
  %arrayidx365 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom364
  %id366 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx365, i32 0, i32 1
  %164 = load i32, i32* %id366, align 4
  %idxprom367 = sext i32 %164 to i64
  %165 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx368 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %165, i64 %idxprom367
  %genus369 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx368, i32 0, i32 10
  %166 = load i32, i32* %str, align 4
  %idxprom370 = sext i32 %166 to i64
  %arrayidx371 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom370
  %value372 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx371, i32 0, i32 4
  %167 = load i32, i32* %dr, align 4
  %idxprom373 = sext i32 %167 to i64
  %arrayidx374 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom373
  %id375 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx374, i32 0, i32 1
  %168 = load i32, i32* %id375, align 4
  %idxprom376 = sext i32 %168 to i64
  %169 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx377 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %169, i64 %idxprom376
  %genus378 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx377, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %genus369, %struct.eyevalue* %value372, %struct.eyevalue* %genus378)
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.363, %land.lhs.true.319, %land.lhs.true.313, %if.end.307
  br label %for.inc.380

for.inc.380:                                      ; preds = %if.end.379, %if.then.237
  %170 = load i32, i32* %str, align 4
  %inc381 = add nsw i32 %170, 1
  store i32 %inc381, i32* %str, align 4
  br label %for.cond.228

for.end.382:                                      ; preds = %for.cond.228
  store i32 21, i32* %str, align 4
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.412, %for.end.382
  %171 = load i32, i32* %str, align 4
  %cmp384 = icmp slt i32 %171, 400
  br i1 %cmp384, label %for.body.386, label %for.end.414

for.body.386:                                     ; preds = %for.cond.383
  %172 = load i32, i32* %str, align 4
  %idxprom387 = sext i32 %172 to i64
  %arrayidx388 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom387
  %173 = load i8, i8* %arrayidx388, align 1
  %conv389 = zext i8 %173 to i32
  %cmp390 = icmp eq i32 %conv389, 1
  br i1 %cmp390, label %land.lhs.true.398, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %for.body.386
  %174 = load i32, i32* %str, align 4
  %idxprom393 = sext i32 %174 to i64
  %arrayidx394 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom393
  %175 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %175 to i32
  %cmp396 = icmp eq i32 %conv395, 2
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.411

land.lhs.true.398:                                ; preds = %lor.lhs.false.392, %for.body.386
  %176 = load i32, i32* %str, align 4
  %idxprom399 = sext i32 %176 to i64
  %arrayidx400 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom399
  %origin401 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx400, i32 0, i32 2
  %177 = load i32, i32* %origin401, align 4
  %178 = load i32, i32* %str, align 4
  %cmp402 = icmp eq i32 %177, %178
  br i1 %cmp402, label %if.then.404, label %if.end.411

if.then.404:                                      ; preds = %land.lhs.true.398
  %179 = load i32, i32* %str, align 4
  %call405 = call i32 @compute_escape(i32 %179, i32 0)
  %180 = load i32, i32* %str, align 4
  %idxprom406 = sext i32 %180 to i64
  %arrayidx407 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom406
  %id408 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx407, i32 0, i32 1
  %181 = load i32, i32* %id408, align 4
  %idxprom409 = sext i32 %181 to i64
  %182 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx410 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %182, i64 %idxprom409
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx410, i32 0, i32 9
  store i32 %call405, i32* %escape_route, align 4
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.404, %land.lhs.true.398, %lor.lhs.false.392
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411
  %183 = load i32, i32* %str, align 4
  %inc413 = add nsw i32 %183, 1
  store i32 %inc413, i32* %str, align 4
  br label %for.cond.383

for.end.414:                                      ; preds = %for.cond.383
  call void @resegment_initial_influence()
  call void @compute_refined_dragon_weaknesses()
  store i32 0, i32* %d, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc.423, %for.end.414
  %184 = load i32, i32* %d, align 4
  %185 = load i32, i32* @number_of_dragons, align 4
  %cmp416 = icmp slt i32 %184, %185
  br i1 %cmp416, label %for.body.418, label %for.end.425

for.body.418:                                     ; preds = %for.cond.415
  %186 = load i32, i32* %d, align 4
  %idxprom419 = sext i32 %186 to i64
  %187 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx420 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %187, i64 %idxprom419
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx420, i32 0, i32 7
  %188 = load float, float* %weakness, align 4
  %189 = load i32, i32* %d, align 4
  %idxprom421 = sext i32 %189 to i64
  %190 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx422 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %190, i64 %idxprom421
  %weakness_pre_owl = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx422, i32 0, i32 8
  store float %188, float* %weakness_pre_owl, align 4
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.body.418
  %191 = load i32, i32* %d, align 4
  %inc424 = add nsw i32 %191, 1
  store i32 %inc424, i32* %d, align 4
  br label %for.cond.415

for.end.425:                                      ; preds = %for.cond.415
  store i32 21, i32* %str, align 4
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.452, %for.end.425
  %192 = load i32, i32* %str, align 4
  %cmp427 = icmp slt i32 %192, 400
  br i1 %cmp427, label %for.body.429, label %for.end.454

for.body.429:                                     ; preds = %for.cond.426
  %193 = load i32, i32* %str, align 4
  %idxprom430 = sext i32 %193 to i64
  %arrayidx431 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom430
  %194 = load i8, i8* %arrayidx431, align 1
  %conv432 = zext i8 %194 to i32
  %cmp433 = icmp ne i32 %conv432, 3
  br i1 %cmp433, label %if.then.435, label %if.end.451

if.then.435:                                      ; preds = %for.body.429
  %195 = load i32, i32* %str, align 4
  %idxprom436 = sext i32 %195 to i64
  %arrayidx437 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom436
  %origin438 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx437, i32 0, i32 2
  %196 = load i32, i32* %origin438, align 4
  %197 = load i32, i32* %str, align 4
  %cmp439 = icmp eq i32 %196, %197
  br i1 %cmp439, label %land.lhs.true.441, label %if.end.450

land.lhs.true.441:                                ; preds = %if.then.435
  %198 = load i32, i32* %str, align 4
  %idxprom442 = sext i32 %198 to i64
  %arrayidx443 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom442
  %199 = load i8, i8* %arrayidx443, align 1
  %conv444 = zext i8 %199 to i32
  %tobool445 = icmp ne i32 %conv444, 0
  br i1 %tobool445, label %if.then.446, label %if.end.450

if.then.446:                                      ; preds = %land.lhs.true.441
  %200 = load i32, i32* %str, align 4
  %call447 = call i32 @compute_crude_status(i32 %200)
  %201 = load i32, i32* %str, align 4
  %idxprom448 = sext i32 %201 to i64
  %arrayidx449 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom448
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx449, i32 0, i32 5
  store i32 %call447, i32* %crude_status, align 4
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.446, %land.lhs.true.441, %if.then.435
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %for.body.429
  br label %for.inc.452

for.inc.452:                                      ; preds = %if.end.451
  %202 = load i32, i32* %str, align 4
  %inc453 = add nsw i32 %202, 1
  store i32 %inc453, i32* %str, align 4
  br label %for.cond.426

for.end.454:                                      ; preds = %for.cond.426
  store i32 21, i32* %str, align 4
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.473, %for.end.454
  %203 = load i32, i32* %str, align 4
  %cmp456 = icmp slt i32 %203, 400
  br i1 %cmp456, label %for.body.458, label %for.end.475

for.body.458:                                     ; preds = %for.cond.455
  %204 = load i32, i32* %str, align 4
  %idxprom459 = sext i32 %204 to i64
  %arrayidx460 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom459
  %205 = load i8, i8* %arrayidx460, align 1
  %conv461 = zext i8 %205 to i32
  %cmp462 = icmp ne i32 %conv461, 3
  br i1 %cmp462, label %if.then.464, label %if.end.472

if.then.464:                                      ; preds = %for.body.458
  %206 = load i32, i32* %str, align 4
  %idxprom465 = sext i32 %206 to i64
  %arrayidx466 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom465
  store %struct.dragon_data* %arrayidx466, %struct.dragon_data** %dd, align 8
  %207 = load i32, i32* %str, align 4
  %idxprom467 = sext i32 %207 to i64
  %arrayidx468 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom467
  %208 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %origin469 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %208, i32 0, i32 2
  %209 = load i32, i32* %origin469, align 4
  %idxprom470 = sext i32 %209 to i64
  %arrayidx471 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom470
  %210 = bitcast %struct.dragon_data* %arrayidx468 to i8*
  %211 = bitcast %struct.dragon_data* %arrayidx471 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 76, i32 4, i1 false)
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.464, %for.body.458
  br label %for.inc.473

for.inc.473:                                      ; preds = %if.end.472
  %212 = load i32, i32* %str, align 4
  %inc474 = add nsw i32 %212, 1
  store i32 %inc474, i32* %str, align 4
  br label %for.cond.455

for.end.475:                                      ; preds = %for.cond.455
  call void @find_neighbor_dragons()
  %call476 = call double @time_report(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 0, double 1.000000e+00)
  %213 = load i32, i32* %stop_before_owl.addr, align 4
  %tobool477 = icmp ne i32 %213, 0
  br i1 %tobool477, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %for.end.475
  br label %for.end.1274

if.end.479:                                       ; preds = %for.end.475
  call void @purge_persistent_owl_cache()
  store i32 21, i32* %str, align 4
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.665, %if.end.479
  %214 = load i32, i32* %str, align 4
  %cmp481 = icmp slt i32 %214, 400
  br i1 %cmp481, label %for.body.483, label %for.end.667

for.body.483:                                     ; preds = %for.cond.480
  %215 = load i32, i32* %str, align 4
  %idxprom484 = sext i32 %215 to i64
  %arrayidx485 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom484
  %216 = load i8, i8* %arrayidx485, align 1
  %conv486 = zext i8 %216 to i32
  %cmp487 = icmp ne i32 %conv486, 3
  br i1 %cmp487, label %if.then.489, label %if.end.664

if.then.489:                                      ; preds = %for.body.483
  store i32 0, i32* %attack_point490, align 4
  store i32 0, i32* %defense_point491, align 4
  call void @set_eyevalue(%struct.eyevalue* %no_eyes, i32 0, i32 0, i32 0, i32 0)
  %217 = load i32, i32* %str, align 4
  %idxprom492 = sext i32 %217 to i64
  %arrayidx493 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom492
  %218 = load i8, i8* %arrayidx493, align 1
  %conv494 = zext i8 %218 to i32
  %cmp495 = icmp eq i32 %conv494, 0
  br i1 %cmp495, label %if.then.503, label %lor.lhs.false.497

lor.lhs.false.497:                                ; preds = %if.then.489
  %219 = load i32, i32* %str, align 4
  %idxprom498 = sext i32 %219 to i64
  %arrayidx499 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom498
  %origin500 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx499, i32 0, i32 2
  %220 = load i32, i32* %origin500, align 4
  %221 = load i32, i32* %str, align 4
  %cmp501 = icmp ne i32 %220, %221
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %lor.lhs.false.497, %if.then.489
  br label %for.inc.665

if.end.504:                                       ; preds = %lor.lhs.false.497
  %222 = load i32, i32* %str, align 4
  %idxprom505 = sext i32 %222 to i64
  %arrayidx506 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom505
  %id507 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx506, i32 0, i32 1
  %223 = load i32, i32* %id507, align 4
  %idxprom508 = sext i32 %223 to i64
  %224 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx509 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %224, i64 %idxprom508
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx509, i32 0, i32 5
  %225 = load float, float* %moyo_territorial_value, align 4
  %226 = load i32, i32* %str, align 4
  %idxprom510 = sext i32 %226 to i64
  %arrayidx511 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom510
  %id512 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx511, i32 0, i32 1
  %227 = load i32, i32* %id512, align 4
  %idxprom513 = sext i32 %227 to i64
  %228 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx514 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %228, i64 %idxprom513
  %escape_route515 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx514, i32 0, i32 9
  %229 = load i32, i32* %escape_route515, align 4
  %sub = sub nsw i32 %229, 10
  %conv516 = sitofp i32 %sub to float
  %call517 = call float @crude_dragon_weakness(i32 1, %struct.eyevalue* %no_eyes, i32 0, float %225, float %conv516)
  %conv518 = fpext float %call517 to double
  %230 = load i32, i32* %str, align 4
  %idxprom519 = sext i32 %230 to i64
  %arrayidx520 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom519
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx520, i32 0, i32 4
  %231 = load float, float* %effective_size, align 4
  %conv521 = fpext float %231 to double
  %mul = fmul double 1.000000e-02, %conv521
  %sub522 = fsub double 3.200000e-01, %mul
  %cmp523 = fcmp olt double 1.200000e-01, %sub522
  br i1 %cmp523, label %cond.true.525, label %cond.false.532

cond.true.525:                                    ; preds = %if.end.504
  %232 = load i32, i32* %str, align 4
  %idxprom526 = sext i32 %232 to i64
  %arrayidx527 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom526
  %effective_size528 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx527, i32 0, i32 4
  %233 = load float, float* %effective_size528, align 4
  %conv529 = fpext float %233 to double
  %mul530 = fmul double 1.000000e-02, %conv529
  %sub531 = fsub double 3.200000e-01, %mul530
  br label %cond.end.533

cond.false.532:                                   ; preds = %if.end.504
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.532, %cond.true.525
  %cond = phi double [ %sub531, %cond.true.525 ], [ 1.200000e-01, %cond.false.532 ]
  %add = fadd double 1.000000e-05, %cond
  %cmp534 = fcmp olt double %conv518, %add
  br i1 %cmp534, label %if.then.536, label %if.else.543

if.then.536:                                      ; preds = %cond.end.533
  %234 = load i32, i32* %str, align 4
  %idxprom537 = sext i32 %234 to i64
  %arrayidx538 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom537
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx538, i32 0, i32 7
  store i32 4, i32* %owl_status, align 4
  %235 = load i32, i32* %str, align 4
  %idxprom539 = sext i32 %235 to i64
  %arrayidx540 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom539
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx540, i32 0, i32 8
  store i32 0, i32* %owl_attack_point, align 4
  %236 = load i32, i32* %str, align 4
  %idxprom541 = sext i32 %236 to i64
  %arrayidx542 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom541
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx542, i32 0, i32 12
  store i32 0, i32* %owl_defense_point, align 4
  br label %if.end.663

if.else.543:                                      ; preds = %cond.end.533
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %kworm, align 4
  call void @start_timer(i32 3)
  %237 = load i32, i32* %str, align 4
  %238 = load i32, i32* %str, align 4
  %idxprom544 = sext i32 %238 to i64
  %arrayidx545 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom544
  %owl_attack_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx545, i32 0, i32 10
  %call546 = call i32 @owl_attack(i32 %237, i32* %attack_point490, i32* %owl_attack_certain, i32* %kworm)
  store i32 %call546, i32* %acode, align 4
  %239 = load i32, i32* %acode, align 4
  %cmp547 = icmp ne i32 %239, 0
  br i1 %cmp547, label %if.then.549, label %if.else.628

if.then.549:                                      ; preds = %if.else.543
  %240 = load i32, i32* %attack_point490, align 4
  %241 = load i32, i32* %str, align 4
  %idxprom550 = sext i32 %241 to i64
  %arrayidx551 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom550
  %owl_attack_point552 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx551, i32 0, i32 8
  store i32 %240, i32* %owl_attack_point552, align 4
  %242 = load i32, i32* %acode, align 4
  %243 = load i32, i32* %str, align 4
  %idxprom553 = sext i32 %243 to i64
  %arrayidx554 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom553
  %owl_attack_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx554, i32 0, i32 9
  store i32 %242, i32* %owl_attack_code, align 4
  %244 = load i32, i32* %kworm, align 4
  %245 = load i32, i32* %str, align 4
  %idxprom555 = sext i32 %245 to i64
  %arrayidx556 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom555
  %owl_attack_kworm = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx556, i32 0, i32 17
  store i32 %244, i32* %owl_attack_kworm, align 4
  %246 = load i32, i32* %attack_point490, align 4
  %cmp557 = icmp ne i32 %246, 0
  br i1 %cmp557, label %if.then.559, label %if.end.614

if.then.559:                                      ; preds = %if.then.549
  store i32 0, i32* %kworm, align 4
  %247 = load i32, i32* %str, align 4
  %248 = load i32, i32* %str, align 4
  %idxprom560 = sext i32 %248 to i64
  %arrayidx561 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom560
  %owl_defense_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx561, i32 0, i32 14
  %call562 = call i32 @owl_defend(i32 %247, i32* %defense_point491, i32* %owl_defense_certain, i32* %kworm)
  store i32 %call562, i32* %dcode, align 4
  %249 = load i32, i32* %dcode, align 4
  %cmp563 = icmp ne i32 %249, 0
  br i1 %cmp563, label %if.then.565, label %if.end.613

if.then.565:                                      ; preds = %if.then.559
  %250 = load i32, i32* %defense_point491, align 4
  %cmp566 = icmp ne i32 %250, 0
  br i1 %cmp566, label %if.then.568, label %if.else.582

if.then.568:                                      ; preds = %if.then.565
  %251 = load i32, i32* %acode, align 4
  %cmp569 = icmp eq i32 %251, 3
  %cond571 = select i1 %cmp569, i32 1, i32 2
  %252 = load i32, i32* %str, align 4
  %idxprom572 = sext i32 %252 to i64
  %arrayidx573 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom572
  %owl_status574 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx573, i32 0, i32 7
  store i32 %cond571, i32* %owl_status574, align 4
  %253 = load i32, i32* %defense_point491, align 4
  %254 = load i32, i32* %str, align 4
  %idxprom575 = sext i32 %254 to i64
  %arrayidx576 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom575
  %owl_defense_point577 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx576, i32 0, i32 12
  store i32 %253, i32* %owl_defense_point577, align 4
  %255 = load i32, i32* %dcode, align 4
  %256 = load i32, i32* %str, align 4
  %idxprom578 = sext i32 %256 to i64
  %arrayidx579 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom578
  %owl_defense_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx579, i32 0, i32 13
  store i32 %255, i32* %owl_defense_code, align 4
  %257 = load i32, i32* %kworm, align 4
  %258 = load i32, i32* %str, align 4
  %idxprom580 = sext i32 %258 to i64
  %arrayidx581 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom580
  %owl_defense_kworm = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx581, i32 0, i32 18
  store i32 %257, i32* %owl_defense_kworm, align 4
  br label %if.end.612

if.else.582:                                      ; preds = %if.then.565
  %259 = load i32, i32* %acode, align 4
  %cmp583 = icmp eq i32 %259, 3
  %cond585 = select i1 %cmp583, i32 1, i32 2
  %260 = load i32, i32* %str, align 4
  %idxprom586 = sext i32 %260 to i64
  %arrayidx587 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom586
  %owl_status588 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx587, i32 0, i32 7
  store i32 %cond585, i32* %owl_status588, align 4
  %261 = load i32, i32* @debug, align 4
  %and589 = and i32 %261, 4096
  %tobool590 = icmp ne i32 %and589, 0
  br i1 %tobool590, label %cond.false.592, label %cond.true.591

cond.true.591:                                    ; preds = %if.else.582
  br label %cond.end.594

cond.false.592:                                   ; preds = %if.else.582
  %262 = load i32, i32* %str, align 4
  %call593 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i32 %262)
  br label %cond.end.594

cond.end.594:                                     ; preds = %cond.false.592, %cond.true.591
  %263 = load i32, i32* %str, align 4
  %idxprom595 = sext i32 %263 to i64
  %arrayidx596 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom595
  %owl_attack_point597 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx596, i32 0, i32 8
  %264 = load i32, i32* %owl_attack_point597, align 4
  %265 = load i32, i32* %str, align 4
  %call598 = call i32 @owl_does_defend(i32 %264, i32 %265, i32* null)
  store i32 %call598, i32* %dcode, align 4
  %266 = load i32, i32* %dcode, align 4
  %cmp599 = icmp ne i32 %266, 0
  br i1 %cmp599, label %if.then.601, label %if.end.611

if.then.601:                                      ; preds = %cond.end.594
  %267 = load i32, i32* %str, align 4
  %idxprom602 = sext i32 %267 to i64
  %arrayidx603 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom602
  %owl_attack_point604 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx603, i32 0, i32 8
  %268 = load i32, i32* %owl_attack_point604, align 4
  %269 = load i32, i32* %str, align 4
  %idxprom605 = sext i32 %269 to i64
  %arrayidx606 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom605
  %owl_defense_point607 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx606, i32 0, i32 12
  store i32 %268, i32* %owl_defense_point607, align 4
  %270 = load i32, i32* %dcode, align 4
  %271 = load i32, i32* %str, align 4
  %idxprom608 = sext i32 %271 to i64
  %arrayidx609 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom608
  %owl_defense_code610 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx609, i32 0, i32 13
  store i32 %270, i32* %owl_defense_code610, align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.601, %cond.end.594
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.then.568
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %if.then.559
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.then.549
  %272 = load i32, i32* %dcode, align 4
  %cmp615 = icmp eq i32 %272, 0
  br i1 %cmp615, label %if.then.617, label %if.end.627

if.then.617:                                      ; preds = %if.end.614
  %273 = load i32, i32* %str, align 4
  %idxprom618 = sext i32 %273 to i64
  %arrayidx619 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom618
  %owl_status620 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx619, i32 0, i32 7
  store i32 0, i32* %owl_status620, align 4
  %274 = load i32, i32* %str, align 4
  %idxprom621 = sext i32 %274 to i64
  %arrayidx622 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom621
  %owl_defense_point623 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx622, i32 0, i32 12
  store i32 0, i32* %owl_defense_point623, align 4
  %275 = load i32, i32* %str, align 4
  %idxprom624 = sext i32 %275 to i64
  %arrayidx625 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom624
  %owl_defense_code626 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx625, i32 0, i32 13
  store i32 0, i32* %owl_defense_code626, align 4
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.617, %if.end.614
  br label %if.end.662

if.else.628:                                      ; preds = %if.else.543
  %276 = load i32, i32* %str, align 4
  %idxprom629 = sext i32 %276 to i64
  %arrayidx630 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom629
  %owl_attack_certain631 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx630, i32 0, i32 10
  %277 = load i32, i32* %owl_attack_certain631, align 4
  %tobool632 = icmp ne i32 %277, 0
  br i1 %tobool632, label %if.end.651, label %if.then.633

if.then.633:                                      ; preds = %if.else.628
  store i32 0, i32* %kworm, align 4
  %278 = load i32, i32* %str, align 4
  %279 = load i32, i32* %str, align 4
  %idxprom634 = sext i32 %279 to i64
  %arrayidx635 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom634
  %owl_defense_certain636 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx635, i32 0, i32 14
  %call637 = call i32 @owl_defend(i32 %278, i32* %defense_point491, i32* %owl_defense_certain636, i32* %kworm)
  store i32 %call637, i32* %dcode, align 4
  %280 = load i32, i32* %dcode, align 4
  %cmp638 = icmp ne i32 %280, 0
  br i1 %cmp638, label %if.then.640, label %if.end.650

if.then.640:                                      ; preds = %if.then.633
  %281 = load i32, i32* %defense_point491, align 4
  %282 = load i32, i32* %str, align 4
  %idxprom641 = sext i32 %282 to i64
  %arrayidx642 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom641
  %owl_defense_point643 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx642, i32 0, i32 12
  store i32 %281, i32* %owl_defense_point643, align 4
  %283 = load i32, i32* %dcode, align 4
  %284 = load i32, i32* %str, align 4
  %idxprom644 = sext i32 %284 to i64
  %arrayidx645 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom644
  %owl_defense_code646 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx645, i32 0, i32 13
  store i32 %283, i32* %owl_defense_code646, align 4
  %285 = load i32, i32* %kworm, align 4
  %286 = load i32, i32* %str, align 4
  %idxprom647 = sext i32 %286 to i64
  %arrayidx648 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom647
  %owl_defense_kworm649 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx648, i32 0, i32 18
  store i32 %285, i32* %owl_defense_kworm649, align 4
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.640, %if.then.633
  br label %if.end.651

if.end.651:                                       ; preds = %if.end.650, %if.else.628
  %287 = load i32, i32* %str, align 4
  %idxprom652 = sext i32 %287 to i64
  %arrayidx653 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom652
  %owl_status654 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx653, i32 0, i32 7
  store i32 1, i32* %owl_status654, align 4
  %288 = load i32, i32* %str, align 4
  %idxprom655 = sext i32 %288 to i64
  %arrayidx656 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom655
  %owl_attack_point657 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx656, i32 0, i32 8
  store i32 0, i32* %owl_attack_point657, align 4
  %289 = load i32, i32* %str, align 4
  %idxprom658 = sext i32 %289 to i64
  %arrayidx659 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom658
  %owl_attack_code660 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx659, i32 0, i32 9
  store i32 0, i32* %owl_attack_code660, align 4
  %290 = load i32, i32* %str, align 4
  %call661 = call double @time_report(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i32 %290, double 1.000000e+00)
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.651, %if.end.627
  br label %if.end.663

if.end.663:                                       ; preds = %if.end.662, %if.then.536
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %for.body.483
  br label %for.inc.665

for.inc.665:                                      ; preds = %if.end.664, %if.then.503
  %291 = load i32, i32* %str, align 4
  %inc666 = add nsw i32 %291, 1
  store i32 %inc666, i32* %str, align 4
  br label %for.cond.480

for.end.667:                                      ; preds = %for.cond.480
  %call668 = call double @time_report(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %str, align 4
  br label %for.cond.669

for.cond.669:                                     ; preds = %for.inc.726, %for.end.667
  %292 = load i32, i32* %str, align 4
  %cmp670 = icmp slt i32 %292, 400
  br i1 %cmp670, label %for.body.672, label %for.end.728

for.body.672:                                     ; preds = %for.cond.669
  %293 = load i32, i32* %str, align 4
  %idxprom673 = sext i32 %293 to i64
  %arrayidx674 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom673
  %294 = load i8, i8* %arrayidx674, align 1
  %conv675 = zext i8 %294 to i32
  %cmp676 = icmp ne i32 %conv675, 3
  br i1 %cmp676, label %if.then.678, label %if.end.725

if.then.678:                                      ; preds = %for.body.672
  %295 = load i32, i32* %str, align 4
  %idxprom679 = sext i32 %295 to i64
  %arrayidx680 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom679
  %296 = load i8, i8* %arrayidx680, align 1
  %conv681 = zext i8 %296 to i32
  %cmp682 = icmp eq i32 %conv681, 1
  br i1 %cmp682, label %if.then.690, label %lor.lhs.false.684

lor.lhs.false.684:                                ; preds = %if.then.678
  %297 = load i32, i32* %str, align 4
  %idxprom685 = sext i32 %297 to i64
  %arrayidx686 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom685
  %298 = load i8, i8* %arrayidx686, align 1
  %conv687 = zext i8 %298 to i32
  %cmp688 = icmp eq i32 %conv687, 2
  br i1 %cmp688, label %if.then.690, label %if.end.724

if.then.690:                                      ; preds = %lor.lhs.false.684, %if.then.678
  %299 = load i32, i32* %str, align 4
  %idxprom691 = sext i32 %299 to i64
  %arrayidx692 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom691
  %owl_status693 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx692, i32 0, i32 7
  %300 = load i32, i32* %owl_status693, align 4
  %cmp694 = icmp ne i32 %300, 4
  br i1 %cmp694, label %if.then.696, label %if.else.702

if.then.696:                                      ; preds = %if.then.690
  %301 = load i32, i32* %str, align 4
  %idxprom697 = sext i32 %301 to i64
  %arrayidx698 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom697
  %owl_status699 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx698, i32 0, i32 7
  %302 = load i32, i32* %owl_status699, align 4
  %303 = load i32, i32* %str, align 4
  %idxprom700 = sext i32 %303 to i64
  %arrayidx701 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom700
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx701, i32 0, i32 16
  store i32 %302, i32* %status, align 4
  br label %if.end.723

if.else.702:                                      ; preds = %if.then.690
  %304 = load i32, i32* %str, align 4
  %idxprom703 = sext i32 %304 to i64
  %arrayidx704 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom703
  %crude_status705 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx704, i32 0, i32 5
  %305 = load i32, i32* %crude_status705, align 4
  %cmp706 = icmp eq i32 %305, 0
  br i1 %cmp706, label %if.then.714, label %lor.lhs.false.708

lor.lhs.false.708:                                ; preds = %if.else.702
  %306 = load i32, i32* %str, align 4
  %idxprom709 = sext i32 %306 to i64
  %arrayidx710 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom709
  %crude_status711 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx710, i32 0, i32 5
  %307 = load i32, i32* %crude_status711, align 4
  %cmp712 = icmp eq i32 %307, 2
  br i1 %cmp712, label %if.then.714, label %if.else.718

if.then.714:                                      ; preds = %lor.lhs.false.708, %if.else.702
  %308 = load i32, i32* %str, align 4
  %idxprom715 = sext i32 %308 to i64
  %arrayidx716 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom715
  %status717 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx716, i32 0, i32 16
  store i32 3, i32* %status717, align 4
  br label %if.end.722

if.else.718:                                      ; preds = %lor.lhs.false.708
  %309 = load i32, i32* %str, align 4
  %idxprom719 = sext i32 %309 to i64
  %arrayidx720 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom719
  %status721 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx720, i32 0, i32 16
  store i32 1, i32* %status721, align 4
  br label %if.end.722

if.end.722:                                       ; preds = %if.else.718, %if.then.714
  br label %if.end.723

if.end.723:                                       ; preds = %if.end.722, %if.then.696
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.723, %lor.lhs.false.684
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %for.body.672
  br label %for.inc.726

for.inc.726:                                      ; preds = %if.end.725
  %310 = load i32, i32* %str, align 4
  %inc727 = add nsw i32 %310, 1
  store i32 %inc727, i32* %str, align 4
  br label %for.cond.669

for.end.728:                                      ; preds = %for.cond.669
  %call729 = call double @time_report(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %str, align 4
  br label %for.cond.730

for.cond.730:                                     ; preds = %for.inc.749, %for.end.728
  %311 = load i32, i32* %str, align 4
  %cmp731 = icmp slt i32 %311, 400
  br i1 %cmp731, label %for.body.733, label %for.end.751

for.body.733:                                     ; preds = %for.cond.730
  %312 = load i32, i32* %str, align 4
  %idxprom734 = sext i32 %312 to i64
  %arrayidx735 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom734
  %313 = load i8, i8* %arrayidx735, align 1
  %conv736 = zext i8 %313 to i32
  %cmp737 = icmp ne i32 %conv736, 3
  br i1 %cmp737, label %if.then.739, label %if.end.748

if.then.739:                                      ; preds = %for.body.733
  %314 = load i32, i32* %str, align 4
  %idxprom741 = sext i32 %314 to i64
  %arrayidx742 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom741
  store %struct.dragon_data* %arrayidx742, %struct.dragon_data** %dd740, align 8
  %315 = load i32, i32* %str, align 4
  %idxprom743 = sext i32 %315 to i64
  %arrayidx744 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom743
  %316 = load %struct.dragon_data*, %struct.dragon_data** %dd740, align 8
  %origin745 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %316, i32 0, i32 2
  %317 = load i32, i32* %origin745, align 4
  %idxprom746 = sext i32 %317 to i64
  %arrayidx747 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom746
  %318 = bitcast %struct.dragon_data* %arrayidx744 to i8*
  %319 = bitcast %struct.dragon_data* %arrayidx747 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %318, i8* %319, i64 76, i32 4, i1 false)
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.739, %for.body.733
  br label %for.inc.749

for.inc.749:                                      ; preds = %if.end.748
  %320 = load i32, i32* %str, align 4
  %inc750 = add nsw i32 %320, 1
  store i32 %inc750, i32* %str, align 4
  br label %for.cond.730

for.end.751:                                      ; preds = %for.cond.730
  %call752 = call i32 @get_last_move()
  store i32 %call752, i32* %last_move, align 4
  %321 = load i32, i32* %last_move, align 4
  %cmp753 = icmp ne i32 %321, 0
  br i1 %cmp753, label %land.lhs.true.755, label %if.else.769

land.lhs.true.755:                                ; preds = %for.end.751
  %322 = load i32, i32* %last_move, align 4
  %idxprom756 = sext i32 %322 to i64
  %arrayidx757 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom756
  %status758 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx757, i32 0, i32 16
  %323 = load i32, i32* %status758, align 4
  %cmp759 = icmp eq i32 %323, 0
  br i1 %cmp759, label %if.then.761, label %if.else.769

if.then.761:                                      ; preds = %land.lhs.true.755
  %324 = load i32, i32* %last_move, align 4
  %idxprom762 = sext i32 %324 to i64
  %arrayidx763 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom762
  %origin764 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx763, i32 0, i32 2
  %325 = load i32, i32* %origin764, align 4
  store i32 %325, i32* @thrashing_dragon, align 4
  %326 = load i32, i32* %save_verbose.addr, align 4
  %tobool765 = icmp ne i32 %326, 0
  br i1 %tobool765, label %if.then.766, label %if.end.768

if.then.766:                                      ; preds = %if.then.761
  %327 = load i32, i32* @thrashing_dragon, align 4
  %call767 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i32 %327)
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.766, %if.then.761
  br label %if.end.770

if.else.769:                                      ; preds = %land.lhs.true.755, %for.end.751
  store i32 0, i32* @thrashing_dragon, align 4
  br label %if.end.770

if.end.770:                                       ; preds = %if.else.769, %if.end.768
  store i32 21, i32* %str, align 4
  br label %for.cond.771

for.cond.771:                                     ; preds = %for.inc.914, %if.end.770
  %328 = load i32, i32* %str, align 4
  %cmp772 = icmp slt i32 %328, 400
  br i1 %cmp772, label %for.body.774, label %for.end.916

for.body.774:                                     ; preds = %for.cond.771
  %329 = load i32, i32* %str, align 4
  %idxprom775 = sext i32 %329 to i64
  %arrayidx776 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom775
  %330 = load i8, i8* %arrayidx776, align 1
  %conv777 = zext i8 %330 to i32
  %cmp778 = icmp ne i32 %conv777, 3
  br i1 %cmp778, label %land.lhs.true.780, label %if.end.913

land.lhs.true.780:                                ; preds = %for.body.774
  %331 = load i32, i32* %str, align 4
  %idxprom781 = sext i32 %331 to i64
  %arrayidx782 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom781
  %332 = load i8, i8* %arrayidx782, align 1
  %conv783 = zext i8 %332 to i32
  %cmp784 = icmp ne i32 %conv783, 0
  br i1 %cmp784, label %land.lhs.true.786, label %if.end.913

land.lhs.true.786:                                ; preds = %land.lhs.true.780
  %333 = load i32, i32* %str, align 4
  %idxprom787 = sext i32 %333 to i64
  %arrayidx788 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom787
  %origin789 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx788, i32 0, i32 2
  %334 = load i32, i32* %origin789, align 4
  %335 = load i32, i32* %str, align 4
  %cmp790 = icmp eq i32 %334, %335
  br i1 %cmp790, label %if.then.792, label %if.end.913

if.then.792:                                      ; preds = %land.lhs.true.786
  call void @set_eyevalue(%struct.eyevalue* %no_eyes793, i32 0, i32 0, i32 0, i32 0)
  %336 = load i32, i32* %str, align 4
  %idxprom794 = sext i32 %336 to i64
  %arrayidx795 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom794
  %id796 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx795, i32 0, i32 1
  %337 = load i32, i32* %id796, align 4
  %idxprom797 = sext i32 %337 to i64
  %338 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx798 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %338, i64 %idxprom797
  %moyo_territorial_value799 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx798, i32 0, i32 5
  %339 = load float, float* %moyo_territorial_value799, align 4
  %340 = load i32, i32* %str, align 4
  %idxprom800 = sext i32 %340 to i64
  %arrayidx801 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom800
  %id802 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx801, i32 0, i32 1
  %341 = load i32, i32* %id802, align 4
  %idxprom803 = sext i32 %341 to i64
  %342 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx804 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %342, i64 %idxprom803
  %escape_route805 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx804, i32 0, i32 9
  %343 = load i32, i32* %escape_route805, align 4
  %sub806 = sub nsw i32 %343, 10
  %conv807 = sitofp i32 %sub806 to float
  %call808 = call float @crude_dragon_weakness(i32 1, %struct.eyevalue* %no_eyes793, i32 0, float %339, float %conv807)
  %conv809 = fpext float %call808 to double
  %344 = load i32, i32* %str, align 4
  %idxprom810 = sext i32 %344 to i64
  %arrayidx811 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom810
  %effective_size812 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx811, i32 0, i32 4
  %345 = load float, float* %effective_size812, align 4
  %conv813 = fpext float %345 to double
  %mul814 = fmul double 1.000000e-02, %conv813
  %sub815 = fsub double 3.200000e-01, %mul814
  %cmp816 = fcmp olt double 1.200000e-01, %sub815
  br i1 %cmp816, label %cond.true.818, label %cond.false.825

cond.true.818:                                    ; preds = %if.then.792
  %346 = load i32, i32* %str, align 4
  %idxprom819 = sext i32 %346 to i64
  %arrayidx820 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom819
  %effective_size821 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx820, i32 0, i32 4
  %347 = load float, float* %effective_size821, align 4
  %conv822 = fpext float %347 to double
  %mul823 = fmul double 1.000000e-02, %conv822
  %sub824 = fsub double 3.200000e-01, %mul823
  br label %cond.end.826

cond.false.825:                                   ; preds = %if.then.792
  br label %cond.end.826

cond.end.826:                                     ; preds = %cond.false.825, %cond.true.818
  %cond827 = phi double [ %sub824, %cond.true.818 ], [ 1.200000e-01, %cond.false.825 ]
  %add828 = fadd double 1.000000e-05, %cond827
  %cmp829 = fcmp olt double %conv809, %add828
  br i1 %cmp829, label %if.then.831, label %if.else.838

if.then.831:                                      ; preds = %cond.end.826
  %348 = load i32, i32* %str, align 4
  %idxprom832 = sext i32 %348 to i64
  %arrayidx833 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom832
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx833, i32 0, i32 6
  store i32 4, i32* %owl_threat_status, align 4
  %349 = load i32, i32* %str, align 4
  %idxprom834 = sext i32 %349 to i64
  %arrayidx835 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom834
  %owl_second_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx835, i32 0, i32 11
  store i32 0, i32* %owl_second_attack_point, align 4
  %350 = load i32, i32* %str, align 4
  %idxprom836 = sext i32 %350 to i64
  %arrayidx837 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom836
  %owl_second_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx837, i32 0, i32 15
  store i32 0, i32* %owl_second_defense_point, align 4
  br label %if.end.912

if.else.838:                                      ; preds = %cond.end.826
  %351 = load i32, i32* %str, align 4
  %idxprom840 = sext i32 %351 to i64
  %arrayidx841 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom840
  %owl_attack_code842 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx841, i32 0, i32 9
  %352 = load i32, i32* %owl_attack_code842, align 4
  store i32 %352, i32* %acode839, align 4
  %353 = load i32, i32* %str, align 4
  %idxprom844 = sext i32 %353 to i64
  %arrayidx845 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom844
  %owl_defense_code846 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx845, i32 0, i32 13
  %354 = load i32, i32* %owl_defense_code846, align 4
  store i32 %354, i32* %dcode843, align 4
  %355 = load i32, i32* @level, align 4
  %cmp848 = icmp sge i32 %355, 8
  br i1 %cmp848, label %land.lhs.true.850, label %if.end.910

land.lhs.true.850:                                ; preds = %if.else.838
  %356 = load i32, i32* @disable_threat_computation, align 4
  %tobool851 = icmp ne i32 %356, 0
  br i1 %tobool851, label %if.end.910, label %land.lhs.true.852

land.lhs.true.852:                                ; preds = %land.lhs.true.850
  %357 = load i32, i32* @owl_threats, align 4
  %tobool853 = icmp ne i32 %357, 0
  br i1 %tobool853, label %if.then.859, label %lor.lhs.false.854

lor.lhs.false.854:                                ; preds = %land.lhs.true.852
  %358 = load i32, i32* @thrashing_dragon, align 4
  %tobool855 = icmp ne i32 %358, 0
  br i1 %tobool855, label %land.lhs.true.856, label %if.end.910

land.lhs.true.856:                                ; preds = %lor.lhs.false.854
  %359 = load i32, i32* %str, align 4
  %360 = load i32, i32* @thrashing_dragon, align 4
  %call857 = call i32 @is_same_dragon(i32 %359, i32 %360)
  %tobool858 = icmp ne i32 %call857, 0
  br i1 %tobool858, label %if.then.859, label %if.end.910

if.then.859:                                      ; preds = %land.lhs.true.856, %land.lhs.true.852
  %361 = load i32, i32* %acode839, align 4
  %tobool860 = icmp ne i32 %361, 0
  br i1 %tobool860, label %land.lhs.true.861, label %if.else.887

land.lhs.true.861:                                ; preds = %if.then.859
  %362 = load i32, i32* %dcode843, align 4
  %tobool862 = icmp ne i32 %362, 0
  br i1 %tobool862, label %if.else.887, label %land.lhs.true.863

land.lhs.true.863:                                ; preds = %land.lhs.true.861
  %363 = load i32, i32* %str, align 4
  %idxprom864 = sext i32 %363 to i64
  %arrayidx865 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom864
  %owl_attack_point866 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx865, i32 0, i32 8
  %364 = load i32, i32* %owl_attack_point866, align 4
  %cmp867 = icmp ne i32 %364, 0
  br i1 %cmp867, label %if.then.869, label %if.else.887

if.then.869:                                      ; preds = %land.lhs.true.863
  %365 = load i32, i32* %str, align 4
  %call870 = call i32 @owl_threaten_defense(i32 %365, i32* %defense_point847, i32* %second_defense_point)
  %tobool871 = icmp ne i32 %call870, 0
  br i1 %tobool871, label %if.then.872, label %if.else.882

if.then.872:                                      ; preds = %if.then.869
  %366 = load i32, i32* %str, align 4
  %idxprom873 = sext i32 %366 to i64
  %arrayidx874 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom873
  %owl_threat_status875 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx874, i32 0, i32 6
  store i32 12, i32* %owl_threat_status875, align 4
  %367 = load i32, i32* %defense_point847, align 4
  %368 = load i32, i32* %str, align 4
  %idxprom876 = sext i32 %368 to i64
  %arrayidx877 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom876
  %owl_defense_point878 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx877, i32 0, i32 12
  store i32 %367, i32* %owl_defense_point878, align 4
  %369 = load i32, i32* %second_defense_point, align 4
  %370 = load i32, i32* %str, align 4
  %idxprom879 = sext i32 %370 to i64
  %arrayidx880 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom879
  %owl_second_defense_point881 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx880, i32 0, i32 15
  store i32 %369, i32* %owl_second_defense_point881, align 4
  br label %if.end.886

if.else.882:                                      ; preds = %if.then.869
  %371 = load i32, i32* %str, align 4
  %idxprom883 = sext i32 %371 to i64
  %arrayidx884 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom883
  %owl_threat_status885 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx884, i32 0, i32 6
  store i32 0, i32* %owl_threat_status885, align 4
  br label %if.end.886

if.end.886:                                       ; preds = %if.else.882, %if.then.872
  br label %if.end.909

if.else.887:                                      ; preds = %land.lhs.true.863, %land.lhs.true.861, %if.then.859
  %372 = load i32, i32* %acode839, align 4
  %tobool888 = icmp ne i32 %372, 0
  br i1 %tobool888, label %if.end.908, label %if.then.889

if.then.889:                                      ; preds = %if.else.887
  %373 = load i32, i32* %str, align 4
  %call891 = call i32 @owl_threaten_attack(i32 %373, i32* %attack_point890, i32* %second_attack_point)
  %tobool892 = icmp ne i32 %call891, 0
  br i1 %tobool892, label %if.then.893, label %if.else.903

if.then.893:                                      ; preds = %if.then.889
  %374 = load i32, i32* %str, align 4
  %idxprom894 = sext i32 %374 to i64
  %arrayidx895 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom894
  %owl_threat_status896 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx895, i32 0, i32 6
  store i32 11, i32* %owl_threat_status896, align 4
  %375 = load i32, i32* %attack_point890, align 4
  %376 = load i32, i32* %str, align 4
  %idxprom897 = sext i32 %376 to i64
  %arrayidx898 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom897
  %owl_attack_point899 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx898, i32 0, i32 8
  store i32 %375, i32* %owl_attack_point899, align 4
  %377 = load i32, i32* %second_attack_point, align 4
  %378 = load i32, i32* %str, align 4
  %idxprom900 = sext i32 %378 to i64
  %arrayidx901 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom900
  %owl_second_attack_point902 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx901, i32 0, i32 11
  store i32 %377, i32* %owl_second_attack_point902, align 4
  br label %if.end.907

if.else.903:                                      ; preds = %if.then.889
  %379 = load i32, i32* %str, align 4
  %idxprom904 = sext i32 %379 to i64
  %arrayidx905 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom904
  %owl_threat_status906 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx905, i32 0, i32 6
  store i32 1, i32* %owl_threat_status906, align 4
  br label %if.end.907

if.end.907:                                       ; preds = %if.else.903, %if.then.893
  br label %if.end.908

if.end.908:                                       ; preds = %if.end.907, %if.else.887
  br label %if.end.909

if.end.909:                                       ; preds = %if.end.908, %if.end.886
  br label %if.end.910

if.end.910:                                       ; preds = %if.end.909, %land.lhs.true.856, %lor.lhs.false.854, %land.lhs.true.850, %if.else.838
  %380 = load i32, i32* %str, align 4
  %call911 = call double @time_report(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %380, double 1.000000e+00)
  br label %if.end.912

if.end.912:                                       ; preds = %if.end.910, %if.then.831
  br label %if.end.913

if.end.913:                                       ; preds = %if.end.912, %land.lhs.true.786, %land.lhs.true.780, %for.body.774
  br label %for.inc.914

for.inc.914:                                      ; preds = %if.end.913
  %381 = load i32, i32* %str, align 4
  %inc915 = add nsw i32 %381, 1
  store i32 %inc915, i32* %str, align 4
  br label %for.cond.771

for.end.916:                                      ; preds = %for.cond.771
  store i32 21, i32* %str, align 4
  br label %for.cond.917

for.cond.917:                                     ; preds = %for.inc.936, %for.end.916
  %382 = load i32, i32* %str, align 4
  %cmp918 = icmp slt i32 %382, 400
  br i1 %cmp918, label %for.body.920, label %for.end.938

for.body.920:                                     ; preds = %for.cond.917
  %383 = load i32, i32* %str, align 4
  %idxprom921 = sext i32 %383 to i64
  %arrayidx922 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom921
  %384 = load i8, i8* %arrayidx922, align 1
  %conv923 = zext i8 %384 to i32
  %cmp924 = icmp ne i32 %conv923, 3
  br i1 %cmp924, label %if.then.926, label %if.end.935

if.then.926:                                      ; preds = %for.body.920
  %385 = load i32, i32* %str, align 4
  %idxprom928 = sext i32 %385 to i64
  %arrayidx929 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom928
  store %struct.dragon_data* %arrayidx929, %struct.dragon_data** %dd927, align 8
  %386 = load i32, i32* %str, align 4
  %idxprom930 = sext i32 %386 to i64
  %arrayidx931 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom930
  %387 = load %struct.dragon_data*, %struct.dragon_data** %dd927, align 8
  %origin932 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %387, i32 0, i32 2
  %388 = load i32, i32* %origin932, align 4
  %idxprom933 = sext i32 %388 to i64
  %arrayidx934 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom933
  %389 = bitcast %struct.dragon_data* %arrayidx931 to i8*
  %390 = bitcast %struct.dragon_data* %arrayidx934 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %389, i8* %390, i64 76, i32 4, i1 false)
  br label %if.end.935

if.end.935:                                       ; preds = %if.then.926, %for.body.920
  br label %for.inc.936

for.inc.936:                                      ; preds = %if.end.935
  %391 = load i32, i32* %str, align 4
  %inc937 = add nsw i32 %391, 1
  store i32 %inc937, i32* %str, align 4
  br label %for.cond.917

for.end.938:                                      ; preds = %for.cond.917
  %call939 = call double @time_report(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 0, i32* %d, align 4
  br label %for.cond.940

for.cond.940:                                     ; preds = %for.inc.978, %for.end.938
  %392 = load i32, i32* %d, align 4
  %393 = load i32, i32* @number_of_dragons, align 4
  %cmp941 = icmp slt i32 %392, %393
  br i1 %cmp941, label %for.body.943, label %for.end.980

for.body.943:                                     ; preds = %for.cond.940
  %394 = load i32, i32* %d, align 4
  %idxprom944 = sext i32 %394 to i64
  %395 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx945 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %395, i64 %idxprom944
  %origin946 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx945, i32 0, i32 0
  %396 = load i32, i32* %origin946, align 4
  %397 = load i32, i32* %d, align 4
  %idxprom947 = sext i32 %397 to i64
  %398 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx948 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %398, i64 %idxprom947
  %surround_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx948, i32 0, i32 16
  %call949 = call i32 @compute_surroundings(i32 %396, i32 0, i32 0, i32* %surround_size)
  %399 = load i32, i32* %d, align 4
  %idxprom950 = sext i32 %399 to i64
  %400 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx951 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %400, i64 %idxprom950
  %surround_status = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx951, i32 0, i32 15
  store i32 %call949, i32* %surround_status, align 4
  %401 = load i32, i32* @debug, align 4
  %and952 = and i32 %401, 32
  %tobool953 = icmp ne i32 %and952, 0
  br i1 %tobool953, label %if.then.954, label %if.end.977

if.then.954:                                      ; preds = %for.body.943
  %402 = load i32, i32* %d, align 4
  %idxprom955 = sext i32 %402 to i64
  %403 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx956 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %403, i64 %idxprom955
  %surround_status957 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx956, i32 0, i32 15
  %404 = load i32, i32* %surround_status957, align 4
  %cmp958 = icmp eq i32 %404, 1
  br i1 %cmp958, label %if.then.960, label %if.end.965

if.then.960:                                      ; preds = %if.then.954
  %405 = load i32, i32* %d, align 4
  %idxprom961 = sext i32 %405 to i64
  %406 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx962 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %406, i64 %idxprom961
  %origin963 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx962, i32 0, i32 0
  %407 = load i32, i32* %origin963, align 4
  %call964 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i32 %407)
  br label %if.end.965

if.end.965:                                       ; preds = %if.then.960, %if.then.954
  %408 = load i32, i32* %d, align 4
  %idxprom966 = sext i32 %408 to i64
  %409 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx967 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %409, i64 %idxprom966
  %surround_status968 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx967, i32 0, i32 15
  %410 = load i32, i32* %surround_status968, align 4
  %cmp969 = icmp eq i32 %410, 2
  br i1 %cmp969, label %if.then.971, label %if.end.976

if.then.971:                                      ; preds = %if.end.965
  %411 = load i32, i32* %d, align 4
  %idxprom972 = sext i32 %411 to i64
  %412 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx973 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %412, i64 %idxprom972
  %origin974 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx973, i32 0, i32 0
  %413 = load i32, i32* %origin974, align 4
  %call975 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i32 %413)
  br label %if.end.976

if.end.976:                                       ; preds = %if.then.971, %if.end.965
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.976, %for.body.943
  br label %for.inc.978

for.inc.978:                                      ; preds = %if.end.977
  %414 = load i32, i32* %d, align 4
  %inc979 = add nsw i32 %414, 1
  store i32 %inc979, i32* %d, align 4
  br label %for.cond.940

for.end.980:                                      ; preds = %for.cond.940
  store i32 0, i32* %d, align 4
  br label %for.cond.981

for.cond.981:                                     ; preds = %for.inc.1075, %for.end.980
  %415 = load i32, i32* %d, align 4
  %416 = load i32, i32* @number_of_dragons, align 4
  %cmp982 = icmp slt i32 %415, %416
  br i1 %cmp982, label %for.body.984, label %for.end.1077

for.body.984:                                     ; preds = %for.cond.981
  %417 = load i32, i32* %d, align 4
  %idxprom986 = sext i32 %417 to i64
  %418 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx987 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %418, i64 %idxprom986
  %origin988 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx987, i32 0, i32 0
  %419 = load i32, i32* %origin988, align 4
  store i32 %419, i32* %origin985, align 4
  %420 = load i32, i32* %d, align 4
  %idxprom990 = sext i32 %420 to i64
  %421 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx991 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %421, i64 %idxprom990
  %genus992 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx991, i32 0, i32 10
  store %struct.eyevalue* %genus992, %struct.eyevalue** %genus989, align 8
  %422 = load %struct.eyevalue*, %struct.eyevalue** %genus989, align 8
  %call993 = call i32 @max_eyes(%struct.eyevalue* %422)
  %423 = load %struct.eyevalue*, %struct.eyevalue** %genus989, align 8
  %call994 = call i32 @min_eyes(%struct.eyevalue* %423)
  %add995 = add nsw i32 %call993, %call994
  store i32 %add995, i32* %true_genus, align 4
  %424 = load i32, i32* %origin985, align 4
  %call996 = call i32 @dragon_looks_inessential(i32 %424)
  %tobool997 = icmp ne i32 %call996, 0
  br i1 %tobool997, label %if.then.998, label %if.else.1001

if.then.998:                                      ; preds = %for.body.984
  %425 = load i32, i32* %d, align 4
  %idxprom999 = sext i32 %425 to i64
  %426 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1000 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %426, i64 %idxprom999
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1000, i32 0, i32 6
  store i32 5, i32* %safety, align 4
  br label %if.end.1074

if.else.1001:                                     ; preds = %for.body.984
  %427 = load i32, i32* %origin985, align 4
  %idxprom1002 = sext i32 %427 to i64
  %arrayidx1003 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1002
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1003, i32 0, i32 3
  %428 = load i32, i32* %size, align 4
  %429 = load i32, i32* %origin985, align 4
  %idxprom1004 = sext i32 %429 to i64
  %arrayidx1005 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1004
  %size1006 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1005, i32 0, i32 1
  %430 = load i32, i32* %size1006, align 4
  %cmp1007 = icmp eq i32 %428, %430
  br i1 %cmp1007, label %land.lhs.true.1009, label %if.else.1026

land.lhs.true.1009:                               ; preds = %if.else.1001
  %431 = load i32, i32* %origin985, align 4
  %idxprom1010 = sext i32 %431 to i64
  %arrayidx1011 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1010
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1011, i32 0, i32 16
  %arrayidx1012 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %432 = load i32, i32* %arrayidx1012, align 4
  %cmp1013 = icmp ne i32 %432, 0
  br i1 %cmp1013, label %land.lhs.true.1015, label %if.else.1026

land.lhs.true.1015:                               ; preds = %land.lhs.true.1009
  %433 = load i32, i32* %origin985, align 4
  %idxprom1016 = sext i32 %433 to i64
  %arrayidx1017 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1016
  %defense_codes1018 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1017, i32 0, i32 18
  %arrayidx1019 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes1018, i32 0, i64 0
  %434 = load i32, i32* %arrayidx1019, align 4
  %cmp1020 = icmp eq i32 %434, 0
  br i1 %cmp1020, label %if.then.1022, label %if.else.1026

if.then.1022:                                     ; preds = %land.lhs.true.1015
  %435 = load i32, i32* %d, align 4
  %idxprom1023 = sext i32 %435 to i64
  %436 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1024 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %436, i64 %idxprom1023
  %safety1025 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1024, i32 0, i32 6
  store i32 6, i32* %safety1025, align 4
  br label %if.end.1073

if.else.1026:                                     ; preds = %land.lhs.true.1015, %land.lhs.true.1009, %if.else.1001
  %437 = load i32, i32* %origin985, align 4
  %idxprom1027 = sext i32 %437 to i64
  %arrayidx1028 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1027
  %owl_status1029 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1028, i32 0, i32 7
  %438 = load i32, i32* %owl_status1029, align 4
  %cmp1030 = icmp eq i32 %438, 0
  br i1 %cmp1030, label %if.then.1032, label %if.else.1036

if.then.1032:                                     ; preds = %if.else.1026
  %439 = load i32, i32* %d, align 4
  %idxprom1033 = sext i32 %439 to i64
  %440 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1034 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %440, i64 %idxprom1033
  %safety1035 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1034, i32 0, i32 6
  store i32 0, i32* %safety1035, align 4
  br label %if.end.1072

if.else.1036:                                     ; preds = %if.else.1026
  %441 = load i32, i32* %origin985, align 4
  %idxprom1037 = sext i32 %441 to i64
  %arrayidx1038 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1037
  %owl_status1039 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1038, i32 0, i32 7
  %442 = load i32, i32* %owl_status1039, align 4
  %cmp1040 = icmp eq i32 %442, 2
  br i1 %cmp1040, label %if.then.1042, label %if.else.1046

if.then.1042:                                     ; preds = %if.else.1036
  %443 = load i32, i32* %d, align 4
  %idxprom1043 = sext i32 %443 to i64
  %444 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1044 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %444, i64 %idxprom1043
  %safety1045 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1044, i32 0, i32 6
  store i32 2, i32* %safety1045, align 4
  br label %if.end.1071

if.else.1046:                                     ; preds = %if.else.1036
  %445 = load i32, i32* %origin985, align 4
  %call1047 = call i32 @dragon_invincible(i32 %445)
  %tobool1048 = icmp ne i32 %call1047, 0
  br i1 %tobool1048, label %if.then.1049, label %if.else.1053

if.then.1049:                                     ; preds = %if.else.1046
  %446 = load i32, i32* %d, align 4
  %idxprom1050 = sext i32 %446 to i64
  %447 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1051 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %447, i64 %idxprom1050
  %safety1052 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1051, i32 0, i32 6
  store i32 9, i32* %safety1052, align 4
  br label %if.end.1070

if.else.1053:                                     ; preds = %if.else.1046
  %448 = load i32, i32* %true_genus, align 4
  %cmp1054 = icmp sge i32 %448, 6
  br i1 %cmp1054, label %if.then.1061, label %lor.lhs.false.1056

lor.lhs.false.1056:                               ; preds = %if.else.1053
  %449 = load i32, i32* %d, align 4
  %idxprom1057 = sext i32 %449 to i64
  %450 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1058 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %450, i64 %idxprom1057
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1058, i32 0, i32 4
  %451 = load i32, i32* %moyo_size, align 4
  %cmp1059 = icmp sgt i32 %451, 20
  br i1 %cmp1059, label %if.then.1061, label %if.else.1065

if.then.1061:                                     ; preds = %lor.lhs.false.1056, %if.else.1053
  %452 = load i32, i32* %d, align 4
  %idxprom1062 = sext i32 %452 to i64
  %453 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1063 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %453, i64 %idxprom1062
  %safety1064 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1063, i32 0, i32 6
  store i32 8, i32* %safety1064, align 4
  br label %if.end.1069

if.else.1065:                                     ; preds = %lor.lhs.false.1056
  %454 = load i32, i32* %d, align 4
  %idxprom1066 = sext i32 %454 to i64
  %455 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1067 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %455, i64 %idxprom1066
  %safety1068 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1067, i32 0, i32 6
  store i32 1, i32* %safety1068, align 4
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.else.1065, %if.then.1061
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.end.1069, %if.then.1049
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.end.1070, %if.then.1042
  br label %if.end.1072

if.end.1072:                                      ; preds = %if.end.1071, %if.then.1032
  br label %if.end.1073

if.end.1073:                                      ; preds = %if.end.1072, %if.then.1022
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.end.1073, %if.then.998
  br label %for.inc.1075

for.inc.1075:                                     ; preds = %if.end.1074
  %456 = load i32, i32* %d, align 4
  %inc1076 = add nsw i32 %456, 1
  store i32 %inc1076, i32* %d, align 4
  br label %for.cond.981

for.end.1077:                                     ; preds = %for.cond.981
  %call1078 = call double @time_report(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 0, double 1.000000e+00)
  %457 = load i32, i32* @experimental_semeai, align 4
  %tobool1079 = icmp ne i32 %457, 0
  br i1 %tobool1079, label %land.lhs.true.1080, label %if.else.1084

land.lhs.true.1080:                               ; preds = %for.end.1077
  %458 = load i32, i32* @level, align 4
  %cmp1081 = icmp sge i32 %458, 8
  br i1 %cmp1081, label %if.then.1083, label %if.else.1084

if.then.1083:                                     ; preds = %land.lhs.true.1080
  %459 = load i32, i32* %color.addr, align 4
  call void @new_semeai(i32 %459)
  br label %if.end.1085

if.else.1084:                                     ; preds = %land.lhs.true.1080, %for.end.1077
  %460 = load i32, i32* %color.addr, align 4
  call void @semeai(i32 %460)
  br label %if.end.1085

if.end.1085:                                      ; preds = %if.else.1084, %if.then.1083
  %call1086 = call double @time_report(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %str, align 4
  br label %for.cond.1087

for.cond.1087:                                    ; preds = %for.inc.1107, %if.end.1085
  %461 = load i32, i32* %str, align 4
  %cmp1088 = icmp slt i32 %461, 400
  br i1 %cmp1088, label %for.body.1090, label %for.end.1109

for.body.1090:                                    ; preds = %for.cond.1087
  %462 = load i32, i32* %str, align 4
  %idxprom1091 = sext i32 %462 to i64
  %arrayidx1092 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1091
  %463 = load i8, i8* %arrayidx1092, align 1
  %conv1093 = zext i8 %463 to i32
  %cmp1094 = icmp ne i32 %conv1093, 3
  br i1 %cmp1094, label %if.then.1096, label %if.end.1106

if.then.1096:                                     ; preds = %for.body.1090
  %464 = load i32, i32* %str, align 4
  %idxprom1097 = sext i32 %464 to i64
  %arrayidx1098 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1097
  %origin1099 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1098, i32 0, i32 2
  %465 = load i32, i32* %origin1099, align 4
  %idxprom1100 = sext i32 %465 to i64
  %arrayidx1101 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1100
  %status1102 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1101, i32 0, i32 16
  %466 = load i32, i32* %status1102, align 4
  %467 = load i32, i32* %str, align 4
  %idxprom1103 = sext i32 %467 to i64
  %arrayidx1104 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1103
  %status1105 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1104, i32 0, i32 16
  store i32 %466, i32* %status1105, align 4
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.then.1096, %for.body.1090
  br label %for.inc.1107

for.inc.1107:                                     ; preds = %if.end.1106
  %468 = load i32, i32* %str, align 4
  %inc1108 = add nsw i32 %468, 1
  store i32 %inc1108, i32* %str, align 4
  br label %for.cond.1087

for.end.1109:                                     ; preds = %for.cond.1087
  store i32 21, i32* %str, align 4
  br label %for.cond.1110

for.cond.1110:                                    ; preds = %for.inc.1175, %for.end.1109
  %469 = load i32, i32* %str, align 4
  %cmp1111 = icmp slt i32 %469, 400
  br i1 %cmp1111, label %for.body.1113, label %for.end.1177

for.body.1113:                                    ; preds = %for.cond.1110
  %470 = load i32, i32* %str, align 4
  %idxprom1114 = sext i32 %470 to i64
  %arrayidx1115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1114
  %471 = load i8, i8* %arrayidx1115, align 1
  %conv1116 = zext i8 %471 to i32
  %cmp1117 = icmp ne i32 %conv1116, 3
  br i1 %cmp1117, label %if.then.1119, label %if.end.1174

if.then.1119:                                     ; preds = %for.body.1113
  %472 = load i32, i32* %str, align 4
  %473 = load i32, i32* %str, align 4
  %call1120 = call i32 @is_worm_origin(i32 %472, i32 %473)
  %tobool1121 = icmp ne i32 %call1120, 0
  br i1 %tobool1121, label %land.lhs.true.1122, label %if.end.1173

land.lhs.true.1122:                               ; preds = %if.then.1119
  %474 = load i32, i32* %str, align 4
  %idxprom1123 = sext i32 %474 to i64
  %arrayidx1124 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1123
  %attack_codes1125 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1124, i32 0, i32 16
  %arrayidx1126 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes1125, i32 0, i64 0
  %475 = load i32, i32* %arrayidx1126, align 4
  %cmp1127 = icmp ne i32 %475, 0
  br i1 %cmp1127, label %land.lhs.true.1129, label %if.end.1173

land.lhs.true.1129:                               ; preds = %land.lhs.true.1122
  %476 = load i32, i32* %str, align 4
  %idxprom1130 = sext i32 %476 to i64
  %arrayidx1131 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1130
  %defense_codes1132 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1131, i32 0, i32 18
  %arrayidx1133 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes1132, i32 0, i64 0
  %477 = load i32, i32* %arrayidx1133, align 4
  %cmp1134 = icmp ne i32 %477, 0
  br i1 %cmp1134, label %land.lhs.true.1136, label %if.end.1173

land.lhs.true.1136:                               ; preds = %land.lhs.true.1129
  %478 = load i32, i32* %str, align 4
  %idxprom1137 = sext i32 %478 to i64
  %arrayidx1138 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1137
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1138, i32 0, i32 12
  %479 = load i32, i32* %inessential, align 4
  %tobool1139 = icmp ne i32 %479, 0
  br i1 %tobool1139, label %if.end.1173, label %if.then.1140

if.then.1140:                                     ; preds = %land.lhs.true.1136
  store i32 0, i32* %essential, align 4
  %480 = load i32, i32* %str, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call1141 = call i32 @extended_chainlinks(i32 %480, i32* %arraydecay, i32 0)
  store i32 %call1141, i32* %neighbors, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.1142

for.cond.1142:                                    ; preds = %for.inc.1155, %if.then.1140
  %481 = load i32, i32* %r, align 4
  %482 = load i32, i32* %neighbors, align 4
  %cmp1143 = icmp slt i32 %481, %482
  br i1 %cmp1143, label %for.body.1145, label %for.end.1157

for.body.1145:                                    ; preds = %for.cond.1142
  %483 = load i32, i32* %r, align 4
  %idxprom1146 = sext i32 %483 to i64
  %arrayidx1147 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1146
  %484 = load i32, i32* %arrayidx1147, align 4
  %idxprom1148 = sext i32 %484 to i64
  %arrayidx1149 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1148
  %status1150 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1149, i32 0, i32 16
  %485 = load i32, i32* %status1150, align 4
  %cmp1151 = icmp ne i32 %485, 0
  br i1 %cmp1151, label %if.then.1153, label %if.end.1154

if.then.1153:                                     ; preds = %for.body.1145
  store i32 1, i32* %essential, align 4
  br label %for.end.1157

if.end.1154:                                      ; preds = %for.body.1145
  br label %for.inc.1155

for.inc.1155:                                     ; preds = %if.end.1154
  %486 = load i32, i32* %r, align 4
  %inc1156 = add nsw i32 %486, 1
  store i32 %inc1156, i32* %r, align 4
  br label %for.cond.1142

for.end.1157:                                     ; preds = %if.then.1153, %for.cond.1142
  %487 = load i32, i32* %essential, align 4
  %tobool1158 = icmp ne i32 %487, 0
  br i1 %tobool1158, label %if.end.1172, label %land.lhs.true.1159

land.lhs.true.1159:                               ; preds = %for.end.1157
  %488 = load i32, i32* %neighbors, align 4
  %cmp1160 = icmp sgt i32 %488, 0
  br i1 %cmp1160, label %if.then.1162, label %if.end.1172

if.then.1162:                                     ; preds = %land.lhs.true.1159
  %489 = load i32, i32* @debug, align 4
  %and1163 = and i32 %489, 1024
  %tobool1164 = icmp ne i32 %and1163, 0
  br i1 %tobool1164, label %cond.false.1166, label %cond.true.1165

cond.true.1165:                                   ; preds = %if.then.1162
  br label %cond.end.1168

cond.false.1166:                                  ; preds = %if.then.1162
  %490 = load i32, i32* %str, align 4
  %call1167 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i32 %490)
  br label %cond.end.1168

cond.end.1168:                                    ; preds = %cond.false.1166, %cond.true.1165
  %491 = load i32, i32* %str, align 4
  %idxprom1169 = sext i32 %491 to i64
  %arrayidx1170 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1169
  %inessential1171 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1170, i32 0, i32 12
  store i32 1, i32* %inessential1171, align 4
  %492 = load i32, i32* %str, align 4
  call void @propagate_worm(i32 %492)
  br label %if.end.1172

if.end.1172:                                      ; preds = %cond.end.1168, %land.lhs.true.1159, %for.end.1157
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.end.1172, %land.lhs.true.1136, %land.lhs.true.1129, %land.lhs.true.1122, %if.then.1119
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.end.1173, %for.body.1113
  br label %for.inc.1175

for.inc.1175:                                     ; preds = %if.end.1174
  %493 = load i32, i32* %str, align 4
  %inc1176 = add nsw i32 %493, 1
  store i32 %inc1176, i32* %str, align 4
  br label %for.cond.1110

for.end.1177:                                     ; preds = %for.cond.1110
  %call1178 = call double @time_report(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %str, align 4
  br label %for.cond.1179

for.cond.1179:                                    ; preds = %for.inc.1241, %for.end.1177
  %494 = load i32, i32* %str, align 4
  %cmp1180 = icmp slt i32 %494, 400
  br i1 %cmp1180, label %for.body.1182, label %for.end.1243

for.body.1182:                                    ; preds = %for.cond.1179
  %495 = load i32, i32* %str, align 4
  %idxprom1183 = sext i32 %495 to i64
  %arrayidx1184 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1183
  %496 = load i8, i8* %arrayidx1184, align 1
  %conv1185 = zext i8 %496 to i32
  %cmp1186 = icmp ne i32 %conv1185, 3
  br i1 %cmp1186, label %land.lhs.true.1188, label %if.end.1240

land.lhs.true.1188:                               ; preds = %for.body.1182
  %497 = load i32, i32* %str, align 4
  %idxprom1189 = sext i32 %497 to i64
  %arrayidx1190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1189
  %498 = load i8, i8* %arrayidx1190, align 1
  %conv1191 = zext i8 %498 to i32
  %cmp1192 = icmp ne i32 %conv1191, 0
  br i1 %cmp1192, label %land.lhs.true.1194, label %if.end.1240

land.lhs.true.1194:                               ; preds = %land.lhs.true.1188
  %499 = load i32, i32* %str, align 4
  %idxprom1195 = sext i32 %499 to i64
  %arrayidx1196 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1195
  %origin1197 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1196, i32 0, i32 2
  %500 = load i32, i32* %origin1197, align 4
  %501 = load i32, i32* %str, align 4
  %cmp1198 = icmp eq i32 %500, %501
  br i1 %cmp1198, label %land.lhs.true.1200, label %if.end.1240

land.lhs.true.1200:                               ; preds = %land.lhs.true.1194
  %502 = load i32, i32* %str, align 4
  %idxprom1201 = sext i32 %502 to i64
  %arrayidx1202 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1201
  %id1203 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1202, i32 0, i32 1
  %503 = load i32, i32* %id1203, align 4
  %idxprom1204 = sext i32 %503 to i64
  %504 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1205 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %504, i64 %idxprom1204
  %safety1206 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1205, i32 0, i32 6
  %505 = load i32, i32* %safety1206, align 4
  %cmp1207 = icmp eq i32 %505, 2
  br i1 %cmp1207, label %if.then.1209, label %if.end.1240

if.then.1209:                                     ; preds = %land.lhs.true.1200
  %506 = load i32, i32* %str, align 4
  %call1210 = call i32 @first_worm_in_dragon(i32 %506)
  store i32 %call1210, i32* %w, align 4
  br label %for.cond.1211

for.cond.1211:                                    ; preds = %for.inc.1221, %if.then.1209
  %507 = load i32, i32* %w, align 4
  %cmp1212 = icmp ne i32 %507, 0
  br i1 %cmp1212, label %for.body.1214, label %for.end.1223

for.body.1214:                                    ; preds = %for.cond.1211
  %508 = load i32, i32* %w, align 4
  %idxprom1215 = sext i32 %508 to i64
  %arrayidx1216 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1215
  %inessential1217 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1216, i32 0, i32 12
  %509 = load i32, i32* %inessential1217, align 4
  %tobool1218 = icmp ne i32 %509, 0
  br i1 %tobool1218, label %if.end.1220, label %if.then.1219

if.then.1219:                                     ; preds = %for.body.1214
  br label %for.end.1223

if.end.1220:                                      ; preds = %for.body.1214
  br label %for.inc.1221

for.inc.1221:                                     ; preds = %if.end.1220
  %510 = load i32, i32* %w, align 4
  %call1222 = call i32 @next_worm_in_dragon(i32 %510)
  store i32 %call1222, i32* %w, align 4
  br label %for.cond.1211

for.end.1223:                                     ; preds = %if.then.1219, %for.cond.1211
  %511 = load i32, i32* %w, align 4
  %cmp1224 = icmp eq i32 %511, 0
  br i1 %cmp1224, label %if.then.1226, label %if.end.1239

if.then.1226:                                     ; preds = %for.end.1223
  %512 = load i32, i32* @debug, align 4
  %and1227 = and i32 %512, 32
  %tobool1228 = icmp ne i32 %and1227, 0
  br i1 %tobool1228, label %cond.false.1230, label %cond.true.1229

cond.true.1229:                                   ; preds = %if.then.1226
  br label %cond.end.1232

cond.false.1230:                                  ; preds = %if.then.1226
  %513 = load i32, i32* %str, align 4
  %call1231 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i32 %513)
  br label %cond.end.1232

cond.end.1232:                                    ; preds = %cond.false.1230, %cond.true.1229
  %514 = load i32, i32* %str, align 4
  %idxprom1233 = sext i32 %514 to i64
  %arrayidx1234 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1233
  %id1235 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1234, i32 0, i32 1
  %515 = load i32, i32* %id1235, align 4
  %idxprom1236 = sext i32 %515 to i64
  %516 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1237 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %516, i64 %idxprom1236
  %safety1238 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1237, i32 0, i32 6
  store i32 5, i32* %safety1238, align 4
  br label %if.end.1239

if.end.1239:                                      ; preds = %cond.end.1232, %for.end.1223
  br label %if.end.1240

if.end.1240:                                      ; preds = %if.end.1239, %land.lhs.true.1200, %land.lhs.true.1194, %land.lhs.true.1188, %for.body.1182
  br label %for.inc.1241

for.inc.1241:                                     ; preds = %if.end.1240
  %517 = load i32, i32* %str, align 4
  %inc1242 = add nsw i32 %517, 1
  store i32 %inc1242, i32* %str, align 4
  br label %for.cond.1179

for.end.1243:                                     ; preds = %for.cond.1179
  %call1244 = call double @time_report(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 0, i32* @lively_white_dragons, align 4
  store i32 0, i32* @lively_black_dragons, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.1245

for.cond.1245:                                    ; preds = %for.inc.1272, %for.end.1243
  %518 = load i32, i32* %d, align 4
  %519 = load i32, i32* @number_of_dragons, align 4
  %cmp1246 = icmp slt i32 %518, %519
  br i1 %cmp1246, label %for.body.1248, label %for.end.1274

for.body.1248:                                    ; preds = %for.cond.1245
  %520 = load i32, i32* %d, align 4
  %idxprom1249 = sext i32 %520 to i64
  %521 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1250 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %521, i64 %idxprom1249
  %origin1251 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1250, i32 0, i32 0
  %522 = load i32, i32* %origin1251, align 4
  %idxprom1252 = sext i32 %522 to i64
  %arrayidx1253 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1252
  %crude_status1254 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1253, i32 0, i32 5
  %523 = load i32, i32* %crude_status1254, align 4
  %cmp1255 = icmp ne i32 %523, 0
  br i1 %cmp1255, label %if.then.1257, label %if.end.1271

if.then.1257:                                     ; preds = %for.body.1248
  %524 = load i32, i32* %d, align 4
  %idxprom1258 = sext i32 %524 to i64
  %525 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1259 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %525, i64 %idxprom1258
  %origin1260 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1259, i32 0, i32 0
  %526 = load i32, i32* %origin1260, align 4
  %idxprom1261 = sext i32 %526 to i64
  %arrayidx1262 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1261
  %color1263 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1262, i32 0, i32 0
  %527 = load i32, i32* %color1263, align 4
  %cmp1264 = icmp eq i32 %527, 1
  br i1 %cmp1264, label %if.then.1266, label %if.else.1268

if.then.1266:                                     ; preds = %if.then.1257
  %528 = load i32, i32* @lively_white_dragons, align 4
  %inc1267 = add nsw i32 %528, 1
  store i32 %inc1267, i32* @lively_white_dragons, align 4
  br label %if.end.1270

if.else.1268:                                     ; preds = %if.then.1257
  %529 = load i32, i32* @lively_black_dragons, align 4
  %inc1269 = add nsw i32 %529, 1
  store i32 %inc1269, i32* @lively_black_dragons, align 4
  br label %if.end.1270

if.end.1270:                                      ; preds = %if.else.1268, %if.then.1266
  br label %if.end.1271

if.end.1271:                                      ; preds = %if.end.1270, %for.body.1248
  br label %for.inc.1272

for.inc.1272:                                     ; preds = %if.end.1271
  %530 = load i32, i32* %d, align 4
  %inc1273 = add nsw i32 %530, 1
  store i32 %inc1273, i32* %d, align 4
  br label %for.cond.1245

for.end.1274:                                     ; preds = %if.then.478, %for.cond.1245
  ret void
}

declare void @start_timer(i32) #1

; Function Attrs: nounwind uwtable
define void @initialize_dragon_data() #0 {
entry:
  %str = alloca i32, align 4
  store i32 21, i32* %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %str, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %str, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.72

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %str, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 1
  store i32 -1, i32* %id, align 4
  %4 = load i32, i32* %str, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom5
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx6, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %str, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %size9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 3
  store i32 %5, i32* %size9, align 4
  %7 = load i32, i32* %str, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 2
  %8 = load float, float* %effective_size, align 4
  %9 = load i32, i32* %str, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom12
  %effective_size14 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx13, i32 0, i32 4
  store float %8, float* %effective_size14, align 4
  %10 = load i32, i32* %str, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 0
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %str, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom17
  %color19 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx18, i32 0, i32 0
  store i32 %11, i32* %color19, align 4
  %13 = load i32, i32* %str, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom20
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx21, i32 0, i32 3
  %14 = load i32, i32* %origin, align 4
  %15 = load i32, i32* %str, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom22
  %origin24 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx23, i32 0, i32 2
  store i32 %14, i32* %origin24, align 4
  %16 = load i32, i32* %str, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom25
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx26, i32 0, i32 8
  store i32 0, i32* %owl_attack_point, align 4
  %17 = load i32, i32* %str, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %owl_attack_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 9
  store i32 0, i32* %owl_attack_code, align 4
  %18 = load i32, i32* %str, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom29
  %owl_attack_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx30, i32 0, i32 10
  store i32 1, i32* %owl_attack_certain, align 4
  %19 = load i32, i32* %str, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom31
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx32, i32 0, i32 12
  store i32 0, i32* %owl_defense_point, align 4
  %20 = load i32, i32* %str, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom33
  %owl_defense_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx34, i32 0, i32 13
  store i32 0, i32* %owl_defense_code, align 4
  %21 = load i32, i32* %str, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom35
  %owl_defense_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx36, i32 0, i32 14
  store i32 1, i32* %owl_defense_certain, align 4
  %22 = load i32, i32* %str, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom37
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx38, i32 0, i32 7
  store i32 4, i32* %owl_status, align 4
  %23 = load i32, i32* %str, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom39
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx40, i32 0, i32 5
  store i32 3, i32* %crude_status, align 4
  %24 = load i32, i32* %str, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom41
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx42, i32 0, i32 16
  store i32 3, i32* %status, align 4
  %25 = load i32, i32* %str, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom43
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx44, i32 0, i32 6
  store i32 4, i32* %owl_threat_status, align 4
  %26 = load i32, i32* %str, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom45
  %owl_second_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx46, i32 0, i32 11
  store i32 0, i32* %owl_second_attack_point, align 4
  %27 = load i32, i32* %str, align 4
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom47
  %owl_second_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx48, i32 0, i32 15
  store i32 0, i32* %owl_second_defense_point, align 4
  %28 = load i32, i32* %str, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i64 %idxprom49
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx50, i32 0, i32 1
  store i8 0, i8* %type, align 1
  %29 = load i32, i32* %str, align 4
  %idxprom51 = sext i32 %29 to i64
  %arrayidx52 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i64 %idxprom51
  %value = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx52, i32 0, i32 0
  store float 1.000000e+01, float* %value, align 4
  %30 = load i32, i32* %str, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %31 to i32
  %cmp56 = icmp eq i32 %conv55, 1
  br i1 %cmp56, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %32 = load i32, i32* %str, align 4
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %33 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %33 to i32
  %cmp61 = icmp eq i32 %conv60, 2
  br i1 %cmp61, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %34 = load i32, i32* %str, align 4
  %idxprom63 = sext i32 %34 to i64
  %arrayidx64 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom63
  %origin65 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx64, i32 0, i32 3
  %35 = load i32, i32* %origin65, align 4
  %36 = load i32, i32* %str, align 4
  %cmp66 = icmp eq i32 %35, %36
  br i1 %cmp66, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %land.lhs.true
  %37 = load i32, i32* @debug, align 4
  %and = and i32 %37, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.68
  br label %cond.end

cond.false:                                       ; preds = %if.then.68
  %38 = load i32, i32* %str, align 4
  %39 = load i32, i32* %str, align 4
  %idxprom69 = sext i32 %39 to i64
  %arrayidx70 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom69
  %size71 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx70, i32 0, i32 1
  %40 = load i32, i32* %size71, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i32 %38, i32 %40)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %lor.lhs.false
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %41 = load i32, i32* %str, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %str, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @next_worm_list to i8*), i8 0, i64 1600, i32 16, i1 false)
  ret void
}

declare void @make_domains(%struct.eye_data*, %struct.eye_data*, i32) #1

declare double @time_report(i32, i8*, i32, double) #1

declare void @find_connections() #1

declare i32 @is_ko_point(i32) #1

; Function Attrs: nounwind uwtable
define internal void @dragon_eye(i32 %pos, %struct.eye_data* %eye) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %dr = alloca i32, align 4
  %color = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store i32 0, i32* %dr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %1, i64 %idxprom
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %esize, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %4, i64 %idxprom1
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 2
  %5 = load i32, i32* %msize, align 4
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end.77

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* @debug, align 4
  %and = and i32 %6, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.113, i32 0, i32 0), i32 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %9, i64 %idxprom4
  %color6 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 0
  %10 = load i32, i32* %color6, align 4
  %cmp7 = icmp eq i32 %10, 5
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %cond.end
  store i32 2, i32* %color, align 4
  br label %if.end.16

if.else:                                          ; preds = %cond.end
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %12, i64 %idxprom9
  %color11 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx10, i32 0, i32 0
  %13 = load i32, i32* %color11, align 4
  %cmp12 = icmp eq i32 %13, 4
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  br label %if.end.15

if.else.14:                                       ; preds = %if.else
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1516, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  store i32 1, i32* %color, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %if.end.16
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp17 = icmp slt i32 %14, %15
  br i1 %cmp17, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.72, %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* @board_size, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body.20, label %for.end.74

for.body.20:                                      ; preds = %for.cond.18
  %18 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %18, 20
  %add = add nsw i32 21, %mul
  %19 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %add, %19
  store i32 %add21, i32* %ii, align 4
  %20 = load i32, i32* %ii, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %21, i64 %idxprom22
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx23, i32 0, i32 3
  %22 = load i32, i32* %origin, align 4
  %23 = load i32, i32* %pos.addr, align 4
  %cmp24 = icmp eq i32 %22, %23
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.71

land.lhs.true.25:                                 ; preds = %for.body.20
  %24 = load i32, i32* %ii, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %25, i64 %idxprom26
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx27, i32 0, i32 7
  %26 = load i8, i8* %marginal, align 1
  %tobool28 = icmp ne i8 %26, 0
  br i1 %tobool28, label %if.end.71, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %27 = load i32, i32* %ii, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %28, i64 %idxprom30
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx31, i32 0, i32 8
  %29 = load i8, i8* %type, align 1
  %conv = sext i8 %29 to i32
  %and32 = and i32 %conv, 4
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.71, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.29
  store i32 0, i32* %k, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %if.then.34
  %30 = load i32, i32* %k, align 4
  %cmp36 = icmp slt i32 %30, 4
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %31 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom39
  %32 = load i32, i32* %arrayidx40, align 4
  store i32 %32, i32* %d, align 4
  %33 = load i32, i32* %ii, align 4
  %34 = load i32, i32* %d, align 4
  %add41 = add nsw i32 %33, %34
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %35 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %35 to i32
  %36 = load i32, i32* %color, align 4
  %cmp45 = icmp eq i32 %conv44, %36
  br i1 %cmp45, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %for.body.38
  %37 = load i32, i32* %dr, align 4
  %cmp48 = icmp eq i32 %37, 0
  br i1 %cmp48, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %if.then.47
  %38 = load i32, i32* %ii, align 4
  %39 = load i32, i32* %d, align 4
  %add51 = add nsw i32 %38, %39
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom52
  %origin54 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx53, i32 0, i32 2
  %40 = load i32, i32* %origin54, align 4
  store i32 %40, i32* %dr, align 4
  br label %if.end.69

if.else.55:                                       ; preds = %if.then.47
  %41 = load i32, i32* %ii, align 4
  %42 = load i32, i32* %d, align 4
  %add56 = add nsw i32 %41, %42
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom57
  %origin59 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx58, i32 0, i32 2
  %43 = load i32, i32* %origin59, align 4
  %44 = load i32, i32* %dr, align 4
  %cmp60 = icmp ne i32 %43, %44
  br i1 %cmp60, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.else.55
  %45 = load i32, i32* %ii, align 4
  %46 = load i32, i32* %d, align 4
  %add63 = add nsw i32 %45, %46
  %47 = load i32, i32* %dr, align 4
  call void @join_dragons(i32 %add63, i32 %47)
  %48 = load i32, i32* %ii, align 4
  %49 = load i32, i32* %d, align 4
  %add64 = add nsw i32 %48, %49
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom65
  %origin67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx66, i32 0, i32 2
  %50 = load i32, i32* %origin67, align 4
  store i32 %50, i32* %dr, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.else.55
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.50
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.body.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %51 = load i32, i32* %k, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %if.end.71

if.end.71:                                        ; preds = %for.end, %land.lhs.true.29, %land.lhs.true.25, %for.body.20
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %52 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %52, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.18

for.end.74:                                       ; preds = %for.cond.18
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %53 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %53, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond

for.end.77:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initialize_supplementary_dragon_data() #0 {
entry:
  %str = alloca i32, align 4
  %d = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 0, i32* @number_of_dragons, align 4
  store i32 21, i32* %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %str, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %str, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %str, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %origin5 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 2
  %4 = load i32, i32* %origin5, align 4
  store i32 %4, i32* %origin, align 4
  %5 = load i32, i32* %str, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %for.inc

if.end.12:                                        ; preds = %if.end
  %7 = load i32, i32* %origin, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 1
  %8 = load i32, i32* %id, align 4
  %cmp15 = icmp eq i32 %8, -1
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.12
  %9 = load i32, i32* @number_of_dragons, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @number_of_dragons, align 4
  %10 = load i32, i32* %origin, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %id20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 1
  store i32 %9, i32* %id20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.12
  %11 = load i32, i32* %origin, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom22
  %id24 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx23, i32 0, i32 1
  %12 = load i32, i32* %id24, align 4
  %13 = load i32, i32* %str, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom25
  %id27 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx26, i32 0, i32 1
  store i32 %12, i32* %id27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.21, %if.then.11, %if.then
  %14 = load i32, i32* %str, align 4
  %inc28 = add nsw i32 %14, 1
  store i32 %inc28, i32* %str, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %cmp29 = icmp ne %struct.dragon_data2* %15, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  %16 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %17 = bitcast %struct.dragon_data2* %16 to i8*
  call void @free(i8* %17) #2
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end
  %18 = load i32, i32* @number_of_dragons, align 4
  %conv33 = sext i32 %18 to i64
  %mul = mul i64 %conv33, 104
  %call = call noalias i8* @malloc(i64 %mul) #2
  %19 = bitcast i8* %call to %struct.dragon_data2*
  store %struct.dragon_data2* %19, %struct.dragon_data2** @dragon2, align 8
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %cmp34 = icmp ne %struct.dragon_data2* %20, null
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.32
  br label %if.end.37

if.else:                                          ; preds = %if.end.32
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 773, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  store i32 21, i32* %str, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.72, %if.end.37
  %21 = load i32, i32* %str, align 4
  %cmp39 = icmp slt i32 %21, 400
  br i1 %cmp39, label %for.body.41, label %for.end.74

for.body.41:                                      ; preds = %for.cond.38
  %22 = load i32, i32* %str, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %23 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %23 to i32
  %cmp45 = icmp ne i32 %conv44, 3
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %for.body.41
  br label %for.inc.72

if.end.48:                                        ; preds = %for.body.41
  %24 = load i32, i32* %str, align 4
  %idxprom49 = sext i32 %24 to i64
  %arrayidx50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom49
  %25 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %25 to i32
  %cmp52 = icmp eq i32 %conv51, 1
  br i1 %cmp52, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %26 = load i32, i32* %str, align 4
  %idxprom54 = sext i32 %26 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %27 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %27 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.48
  %28 = load i32, i32* %str, align 4
  %idxprom59 = sext i32 %28 to i64
  %arrayidx60 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom59
  %origin61 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx60, i32 0, i32 2
  %29 = load i32, i32* %origin61, align 4
  %30 = load i32, i32* %str, align 4
  %cmp62 = icmp eq i32 %29, %30
  br i1 %cmp62, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %str, align 4
  %32 = load i32, i32* %str, align 4
  %idxprom65 = sext i32 %32 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom65
  %id67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx66, i32 0, i32 1
  %33 = load i32, i32* %id67, align 4
  %idxprom68 = sext i32 %33 to i64
  %34 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx69 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %34, i64 %idxprom68
  %origin70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx69, i32 0, i32 0
  store i32 %31, i32* %origin70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.64, %land.lhs.true, %lor.lhs.false
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71, %if.then.47
  %35 = load i32, i32* %str, align 4
  %inc73 = add nsw i32 %35, 1
  store i32 %inc73, i32* %str, align 4
  br label %for.cond.38

for.end.74:                                       ; preds = %for.cond.38
  store i32 0, i32* %d, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.103, %for.end.74
  %36 = load i32, i32* %d, align 4
  %37 = load i32, i32* @number_of_dragons, align 4
  %cmp76 = icmp slt i32 %36, %37
  br i1 %cmp76, label %for.body.78, label %for.end.105

for.body.78:                                      ; preds = %for.cond.75
  %38 = load i32, i32* %d, align 4
  %idxprom79 = sext i32 %38 to i64
  %39 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx80 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i64 %idxprom79
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx80, i32 0, i32 2
  store i32 0, i32* %neighbors, align 4
  %40 = load i32, i32* %d, align 4
  %idxprom81 = sext i32 %40 to i64
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx82 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i64 %idxprom81
  %hostile_neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx82, i32 0, i32 3
  store i32 0, i32* %hostile_neighbors, align 4
  %42 = load i32, i32* %d, align 4
  %idxprom83 = sext i32 %42 to i64
  %43 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx84 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %43, i64 %idxprom83
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx84, i32 0, i32 4
  store i32 -1, i32* %moyo_size, align 4
  %44 = load i32, i32* %d, align 4
  %idxprom85 = sext i32 %44 to i64
  %45 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i64 %idxprom85
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx86, i32 0, i32 5
  store float 0.000000e+00, float* %moyo_territorial_value, align 4
  %46 = load i32, i32* %d, align 4
  %idxprom87 = sext i32 %46 to i64
  %47 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx88 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %47, i64 %idxprom87
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx88, i32 0, i32 6
  store i32 -1, i32* %safety, align 4
  %48 = load i32, i32* %d, align 4
  %idxprom89 = sext i32 %48 to i64
  %49 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx90 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %49, i64 %idxprom89
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx90, i32 0, i32 9
  store i32 0, i32* %escape_route, align 4
  %50 = load i32, i32* %d, align 4
  %idxprom91 = sext i32 %50 to i64
  %51 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx92 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i64 %idxprom91
  %heye = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx92, i32 0, i32 11
  store i32 0, i32* %heye, align 4
  %52 = load i32, i32* %d, align 4
  %idxprom93 = sext i32 %52 to i64
  %53 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx94 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %53, i64 %idxprom93
  %lunch = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx94, i32 0, i32 12
  store i32 0, i32* %lunch, align 4
  %54 = load i32, i32* %d, align 4
  %idxprom95 = sext i32 %54 to i64
  %55 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx96 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %55, i64 %idxprom95
  %semeai = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx96, i32 0, i32 13
  store i32 0, i32* %semeai, align 4
  %56 = load i32, i32* %d, align 4
  %idxprom97 = sext i32 %56 to i64
  %57 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx98 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %57, i64 %idxprom97
  %semeai_margin_of_safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx98, i32 0, i32 14
  store i32 -1, i32* %semeai_margin_of_safety, align 4
  %58 = load i32, i32* %d, align 4
  %idxprom99 = sext i32 %58 to i64
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx100 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i64 %idxprom99
  %surround_status = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx100, i32 0, i32 15
  store i32 0, i32* %surround_status, align 4
  %60 = load i32, i32* %d, align 4
  %idxprom101 = sext i32 %60 to i64
  %61 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx102 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %61, i64 %idxprom101
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx102, i32 0, i32 10
  call void @set_eyevalue(%struct.eyevalue* %genus, i32 0, i32 0, i32 0, i32 0)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.78
  %62 = load i32, i32* %d, align 4
  %inc104 = add nsw i32 %62, 1
  store i32 %inc104, i32* %d, align 4
  br label %for.cond.75

for.end.105:                                      ; preds = %for.cond.75
  store i32 1, i32* @dragon2_initialized, align 4
  ret void
}

declare void @add_lunch(i32, i32) #1

declare i32 @gprintf(i8*, ...) #1

declare void @find_half_and_false_eyes(i32, %struct.eye_data*, %struct.half_eye_data*, i8*) #1

declare void @modify_eye_spaces() #1

declare void @compute_eyes(i32, %struct.eyevalue*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*, i32, i32) #1

declare i8* @eyevalue_to_string(%struct.eyevalue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @propagate_eye(i32, %struct.eye_data*) #1

; Function Attrs: nounwind uwtable
define internal void @analyze_false_eye_territory() #0 {
entry:
  %pos = alloca i32, align 4
  %color = alloca i32, align 4
  %eye_color = alloca i32, align 4
  %eye = alloca %struct.eye_data*, align 8
  %k = alloca i32, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.97

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  %4 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i64 %idxprom5
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx6, i32 0, i32 1
  %5 = load i8, i8* %type, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %for.inc.97

if.end.11:                                        ; preds = %if.end
  %6 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom12
  %color14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx13, i32 0, i32 0
  %7 = load i32, i32* %color14, align 4
  %cmp15 = icmp eq i32 %7, 4
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.11
  store i32 1, i32* %color, align 4
  store i32 4, i32* %eye_color, align 4
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.eye_data** %eye, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.11
  %8 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom18
  %color20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 0
  %9 = load i32, i32* %color20, align 4
  %cmp21 = icmp eq i32 %9, 5
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i32 2, i32* %color, align 4
  store i32 5, i32* %eye_color, align 4
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.eye_data** %eye, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  br label %for.inc.97

if.end.25:                                        ; preds = %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.17
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %10 = load i32, i32* %k, align 4
  %cmp28 = icmp slt i32 %10, 4
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %11 = load i32, i32* %pos, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %12 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom31
  %13 = load i32, i32* %arrayidx32, align 4
  %add = add nsw i32 %11, %13
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %14 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %14 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %for.body.30
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %16 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom38
  %17 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %15, %17
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %18 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %18 to i32
  %19 = load i32, i32* %color, align 4
  %cmp44 = icmp ne i32 %conv43, %19
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.56

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %pos, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %21 to i64
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom47
  %22 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %20, %22
  %idxprom50 = sext i32 %add49 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx51 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom50
  %color52 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx51, i32 0, i32 0
  %24 = load i32, i32* %color52, align 4
  %25 = load i32, i32* %eye_color, align 4
  %cmp53 = icmp ne i32 %24, %25
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.46
  br label %for.end

if.end.56:                                        ; preds = %land.lhs.true.46, %land.lhs.true, %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %if.then.55, %for.cond.27
  %27 = load i32, i32* %k, align 4
  %cmp57 = icmp slt i32 %27, 4
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  br label %for.inc.97

if.end.60:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.88, %if.end.60
  %28 = load i32, i32* %k, align 4
  %cmp62 = icmp slt i32 %28, 4
  br i1 %cmp62, label %for.body.64, label %for.end.90

for.body.64:                                      ; preds = %for.cond.61
  %29 = load i32, i32* %pos, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %30 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom65
  %31 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %29, %31
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %32 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %32 to i32
  %cmp71 = icmp ne i32 %conv70, 3
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.87

land.lhs.true.73:                                 ; preds = %for.body.64
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %34 to i64
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom74
  %35 = load i32, i32* %arrayidx75, align 4
  %add76 = add nsw i32 %33, %35
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %36 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %36 to i32
  %37 = load i32, i32* %color, align 4
  %cmp80 = icmp eq i32 %conv79, %37
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.87

land.lhs.true.82:                                 ; preds = %land.lhs.true.73
  %38 = load i32, i32* %pos, align 4
  %39 = load i32, i32* %pos, align 4
  %40 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %40 to i64
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom83
  %41 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %39, %41
  %42 = load i32, i32* %color, align 4
  %43 = load i32, i32* %eye_color, align 4
  %44 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %call = call i32 @connected_to_eye(i32 %38, i32 %add85, i32 %42, i32 %43, %struct.eye_data* %44)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true.82
  br label %for.end.90

if.end.87:                                        ; preds = %land.lhs.true.82, %land.lhs.true.73, %for.body.64
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %45 = load i32, i32* %k, align 4
  %inc89 = add nsw i32 %45, 1
  store i32 %inc89, i32* %k, align 4
  br label %for.cond.61

for.end.90:                                       ; preds = %if.then.86, %for.cond.61
  %46 = load i32, i32* %k, align 4
  %cmp91 = icmp eq i32 %46, 4
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %for.end.90
  %47 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %47 to i64
  %arrayidx95 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i32 0, i64 %idxprom94
  store i32 1, i32* %arrayidx95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %for.end.90
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96, %if.then.59, %if.else.24, %if.then.10, %if.then
  %48 = load i32, i32* %pos, align 4
  %inc98 = add nsw i32 %48, 1
  store i32 %inc98, i32* %pos, align 4
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  ret void
}

declare i32 @find_eye_dragons(i32, %struct.eye_data*, i32, i32*, i32) #1

declare i32 @eye_move_urgency(%struct.eyevalue*) #1

declare void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compute_escape(i32 %pos, i32 %dragon_status_known) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dragon_status_known.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %goal = alloca [400 x i8], align 16
  %escape_value = alloca [400 x i8], align 16
  %safe_stones = alloca [400 x i8], align 16
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dragon_status_known, i32* %dragon_status_known.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1871, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %ii, align 4
  %cmp8 = icmp slt i32 %6, 400
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ii, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body
  %9 = load i32, i32* %ii, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %call = call i32 @is_same_dragon(i32 %9, i32 %10)
  %conv16 = trunc i32 %call to i8
  %11 = load i32, i32* %ii, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %12 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  %sub23 = sub nsw i32 3, %conv22
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @get_lively_stones(i32 %sub23, i8* %arraydecay)
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %16 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %16 to i32
  %arraydecay27 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_value, i32 0, i32 0
  call void @compute_escape_influence(i32 %conv26, i8* %arraydecay27, float* null, i8* %arraydecay28)
  store i32 21, i32* %ii, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.97, %for.end
  %17 = load i32, i32* %ii, align 4
  %cmp30 = icmp slt i32 %17, 400
  br i1 %cmp30, label %for.body.32, label %for.end.99

for.body.32:                                      ; preds = %for.cond.29
  %18 = load i32, i32* %ii, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %19 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %19 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %for.body.32
  br label %for.inc.97

if.end.39:                                        ; preds = %for.body.32
  %20 = load i32, i32* %dragon_status_known.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.40, label %if.else.73

if.then.40:                                       ; preds = %if.end.39
  %21 = load i32, i32* %ii, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom41
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx42, i32 0, i32 5
  %22 = load i32, i32* %crude_status, align 4
  %cmp43 = icmp eq i32 %22, 1
  br i1 %cmp43, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.then.40
  %23 = load i32, i32* %ii, align 4
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_value, i32 0, i64 %idxprom46
  store i8 6, i8* %arrayidx47, align 1
  br label %if.end.72

if.else.48:                                       ; preds = %if.then.40
  %24 = load i32, i32* %ii, align 4
  %idxprom49 = sext i32 %24 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom49
  %crude_status51 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx50, i32 0, i32 5
  %25 = load i32, i32* %crude_status51, align 4
  %cmp52 = icmp eq i32 %25, 3
  br i1 %cmp52, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.else.48
  %26 = load i32, i32* %ii, align 4
  %idxprom54 = sext i32 %26 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom54
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx55, i32 0, i32 1
  %27 = load i32, i32* %id, align 4
  %idxprom56 = sext i32 %27 to i64
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i64 %idxprom56
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx57, i32 0, i32 9
  %29 = load i32, i32* %escape_route, align 4
  %cmp58 = icmp sgt i32 %29, 5
  br i1 %cmp58, label %if.then.68, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true
  %30 = load i32, i32* %ii, align 4
  %idxprom61 = sext i32 %30 to i64
  %arrayidx62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom61
  %id63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx62, i32 0, i32 1
  %31 = load i32, i32* %id63, align 4
  %idxprom64 = sext i32 %31 to i64
  %32 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx65 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %32, i64 %idxprom64
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx65, i32 0, i32 4
  %33 = load i32, i32* %moyo_size, align 4
  %cmp66 = icmp sgt i32 %33, 5
  br i1 %cmp66, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %lor.lhs.false.60, %land.lhs.true
  %34 = load i32, i32* %ii, align 4
  %idxprom69 = sext i32 %34 to i64
  %arrayidx70 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_value, i32 0, i64 %idxprom69
  store i8 4, i8* %arrayidx70, align 1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %lor.lhs.false.60, %if.else.48
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.45
  br label %if.end.96

if.else.73:                                       ; preds = %if.end.39
  %35 = load i32, i32* %ii, align 4
  %idxprom74 = sext i32 %35 to i64
  %arrayidx75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom74
  %36 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %36 to i32
  %37 = load i32, i32* %pos.addr, align 4
  %idxprom77 = sext i32 %37 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %38 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %38 to i32
  %cmp80 = icmp eq i32 %conv76, %conv79
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.95

land.lhs.true.82:                                 ; preds = %if.else.73
  %39 = load i32, i32* %ii, align 4
  %idxprom83 = sext i32 %39 to i64
  %arrayidx84 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom83
  %40 = load i8, i8* %arrayidx84, align 1
  %tobool85 = icmp ne i8 %40, 0
  br i1 %tobool85, label %if.end.95, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %41 = load i32, i32* %ii, align 4
  %idxprom87 = sext i32 %41 to i64
  %arrayidx88 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom87
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx88, i32 0, i32 16
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %42 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %42, 0
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %land.lhs.true.86
  %43 = load i32, i32* %ii, align 4
  %idxprom93 = sext i32 %43 to i64
  %arrayidx94 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_value, i32 0, i64 %idxprom93
  store i8 2, i8* %arrayidx94, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %land.lhs.true.86, %land.lhs.true.82, %if.else.73
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.72
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96, %if.then.38
  %44 = load i32, i32* %ii, align 4
  %inc98 = add nsw i32 %44, 1
  store i32 %inc98, i32* %ii, align 4
  br label %for.cond.29

for.end.99:                                       ; preds = %for.cond.29
  %arraydecay100 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  %45 = load i32, i32* %pos.addr, align 4
  %idxprom101 = sext i32 %45 to i64
  %arrayidx102 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom101
  %46 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %46 to i32
  %arraydecay104 = getelementptr inbounds [400 x i8], [400 x i8]* %escape_value, i32 0, i32 0
  %call105 = call i32 @dragon_escape(i8* %arraydecay100, i32 %conv103, i8* %arraydecay104)
  ret i32 %call105
}

declare void @resegment_initial_influence() #1

; Function Attrs: nounwind uwtable
define void @compute_refined_dragon_weaknesses() #0 {
entry:
  %d = alloca i32, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %1 = load i32, i32* @number_of_dragons, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %d, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %3, i64 %idxprom
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 4
  store i32 800, i32* %moyo_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %d, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @compute_surrounding_moyo_sizes(%struct.influence_data* @initial_black_influence)
  call void @compute_surrounding_moyo_sizes(%struct.influence_data* @initial_white_influence)
  store i32 0, i32* %d, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %5 = load i32, i32* %d, align 4
  %6 = load i32, i32* @number_of_dragons, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %d, align 4
  %call = call float @compute_dragon_weakness_value(i32 %7)
  %8 = load i32, i32* %d, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx5 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %9, i64 %idxprom4
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx5, i32 0, i32 7
  store float %call, float* %weakness, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %10 = load i32, i32* %d, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %d, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_crude_status(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %genus = alloca %struct.eyevalue*, align 8
  %true_genus = alloca i32, align 4
  %lunch = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %2, i64 %idxprom1
  %genus3 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 10
  store %struct.eyevalue* %genus3, %struct.eyevalue** %genus, align 8
  %3 = load %struct.eyevalue*, %struct.eyevalue** %genus, align 8
  %call = call i32 @max_eyes(%struct.eyevalue* %3)
  %4 = load %struct.eyevalue*, %struct.eyevalue** %genus, align 8
  %call4 = call i32 @min_eyes(%struct.eyevalue* %4)
  %add = add nsw i32 %call, %call4
  store i32 %add, i32* %true_genus, align 4
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom5
  %id7 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx6, i32 0, i32 1
  %6 = load i32, i32* %id7, align 4
  %idxprom8 = sext i32 %6 to i64
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx9 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %idxprom8
  %lunch10 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx9, i32 0, i32 12
  %8 = load i32, i32* %lunch10, align 4
  store i32 %8, i32* %lunch, align 4
  %9 = load i32, i32* @dragon2_initialized, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1625, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %true_genus, align 4
  %cmp = icmp sgt i32 %10, 3
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 3
  %12 = load i32, i32* %size, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %size17 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 1
  %14 = load i32, i32* %size17, align 4
  %cmp18 = icmp eq i32 %12, %14
  br i1 %cmp18, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.12
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom19
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx20, i32 0, i32 16
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp ne i32 %16, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.31

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom24
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx25, i32 0, i32 18
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %18 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %18, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %19 = load i32, i32* %true_genus, align 4
  %cmp29 = icmp slt i32 %19, 3
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.28, %land.lhs.true.23, %land.lhs.true, %if.end.12
  %20 = load i32, i32* %lunch, align 4
  %cmp32 = icmp ne i32 %20, 0
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.56

land.lhs.true.33:                                 ; preds = %if.end.31
  %21 = load i32, i32* %true_genus, align 4
  %cmp34 = icmp slt i32 %21, 3
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.56

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %22 = load i32, i32* %lunch, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %defense_codes38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 18
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes38, i32 0, i64 0
  %23 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp ne i32 %23, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.56

land.lhs.true.41:                                 ; preds = %land.lhs.true.35
  %24 = load i32, i32* %pos.addr, align 4
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom42
  %id44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx43, i32 0, i32 1
  %25 = load i32, i32* %id44, align 4
  %idxprom45 = sext i32 %25 to i64
  %26 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx46 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i64 %idxprom45
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx46, i32 0, i32 9
  %27 = load i32, i32* %escape_route, align 4
  %cmp47 = icmp slt i32 %27, 5
  br i1 %cmp47, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %land.lhs.true.41
  %28 = load i32, i32* %true_genus, align 4
  %cmp49 = icmp eq i32 %28, 2
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.48
  %29 = load i32, i32* %lunch, align 4
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom50
  %size52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx51, i32 0, i32 1
  %30 = load i32, i32* %size52, align 4
  %cmp53 = icmp sgt i32 %30, 2
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %if.then.48
  store i32 2, i32* %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.41, %land.lhs.true.35, %land.lhs.true.33, %if.end.31
  %31 = load i32, i32* %lunch, align 4
  %cmp57 = icmp ne i32 %31, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.61

land.lhs.true.58:                                 ; preds = %if.end.56
  %32 = load i32, i32* %true_genus, align 4
  %cmp59 = icmp sge i32 %32, 3
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.58, %if.end.56
  %33 = load i32, i32* %lunch, align 4
  %cmp62 = icmp eq i32 %33, 0
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.end.61
  %34 = load i32, i32* %lunch, align 4
  %idxprom64 = sext i32 %34 to i64
  %arrayidx65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom64
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx65, i32 0, i32 9
  %35 = load i32, i32* %cutstone, align 4
  %cmp66 = icmp slt i32 %35, 2
  br i1 %cmp66, label %if.then.67, label %if.end.97

if.then.67:                                       ; preds = %lor.lhs.false.63, %if.end.61
  %36 = load i32, i32* %true_genus, align 4
  %cmp68 = icmp slt i32 %36, 3
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.85

land.lhs.true.69:                                 ; preds = %if.then.67
  %37 = load i32, i32* %pos.addr, align 4
  %idxprom70 = sext i32 %37 to i64
  %arrayidx71 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom70
  %id72 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx71, i32 0, i32 1
  %38 = load i32, i32* %id72, align 4
  %idxprom73 = sext i32 %38 to i64
  %39 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx74 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i64 %idxprom73
  %escape_route75 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx74, i32 0, i32 9
  %40 = load i32, i32* %escape_route75, align 4
  %cmp76 = icmp eq i32 %40, 0
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.85

land.lhs.true.77:                                 ; preds = %land.lhs.true.69
  %41 = load i32, i32* %pos.addr, align 4
  %idxprom78 = sext i32 %41 to i64
  %arrayidx79 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom78
  %id80 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx79, i32 0, i32 1
  %42 = load i32, i32* %id80, align 4
  %idxprom81 = sext i32 %42 to i64
  %43 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx82 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %43, i64 %idxprom81
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx82, i32 0, i32 4
  %44 = load i32, i32* %moyo_size, align 4
  %cmp83 = icmp slt i32 %44, 5
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.77
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.77, %land.lhs.true.69, %if.then.67
  %45 = load i32, i32* %true_genus, align 4
  %cmp86 = icmp eq i32 %45, 3
  br i1 %cmp86, label %land.lhs.true.87, label %if.end.96

land.lhs.true.87:                                 ; preds = %if.end.85
  %46 = load i32, i32* %pos.addr, align 4
  %idxprom88 = sext i32 %46 to i64
  %arrayidx89 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom88
  %id90 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx89, i32 0, i32 1
  %47 = load i32, i32* %id90, align 4
  %idxprom91 = sext i32 %47 to i64
  %48 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx92 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %48, i64 %idxprom91
  %escape_route93 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx92, i32 0, i32 9
  %49 = load i32, i32* %escape_route93, align 4
  %cmp94 = icmp slt i32 %49, 5
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true.87
  store i32 2, i32* %retval
  br label %return

if.end.96:                                        ; preds = %land.lhs.true.87, %if.end.85
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %lor.lhs.false.63
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.95, %if.then.84, %if.then.60, %if.then.54, %if.then.30, %if.then.11
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @find_neighbor_dragons() #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %dragons = alloca [400 x i32], align 16
  %distances = alloca [400 x i32], align 16
  %dist = alloca i32, align 4
  %k = alloca i32, align 4
  %color = alloca i32, align 4
  %found_one = alloca i32, align 4
  %neighbors = alloca i32, align 4
  %adjacent = alloca [4 x i32], align 16
  %0 = load i32, i32* @dragon2_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 830, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.then.8, label %if.else.15

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 1
  %7 = load i32, i32* %id, align 4
  %8 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom11
  store i32 %7, i32* %arrayidx12, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  br label %if.end.27

if.else.15:                                       ; preds = %lor.lhs.false
  %10 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 3
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.else.15
  %12 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom22
  store i32 -1, i32* %arrayidx23, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom24
  store i32 -1, i32* %arrayidx25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.else.15
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %14 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %dist, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.136, %for.end
  %15 = load i32, i32* %dist, align 4
  %cmp29 = icmp sle i32 %15, 5
  br i1 %cmp29, label %for.body.31, label %for.end.138

for.body.31:                                      ; preds = %for.cond.28
  store i32 0, i32* %found_one, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.133, %for.body.31
  %16 = load i32, i32* %pos, align 4
  %cmp33 = icmp slt i32 %16, 400
  br i1 %cmp33, label %for.body.35, label %for.end.135

for.body.35:                                      ; preds = %for.cond.32
  %17 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %18 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %18 to i32
  %cmp39 = icmp ne i32 %conv38, 3
  br i1 %cmp39, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %for.body.35
  br label %for.inc.133

if.end.42:                                        ; preds = %for.body.35
  %19 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %19 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom43
  %20 = load i32, i32* %arrayidx44, align 4
  %21 = load i32, i32* %dist, align 4
  %sub = sub nsw i32 %21, 1
  %cmp45 = icmp ne i32 %20, %sub
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.42
  %22 = load i32, i32* %pos, align 4
  %idxprom48 = sext i32 %22 to i64
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom48
  %23 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp slt i32 %23, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.47, %if.end.42
  br label %for.inc.133

if.end.53:                                        ; preds = %lor.lhs.false.47
  %24 = load i32, i32* %pos, align 4
  %idxprom54 = sext i32 %24 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom54
  %25 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %25 to i64
  %26 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i64 %idxprom56
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx57, i32 0, i32 0
  %27 = load i32, i32* %origin, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom58
  %color60 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx59, i32 0, i32 0
  %28 = load i32, i32* %color60, align 4
  store i32 %28, i32* %color, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.127, %if.end.53
  %29 = load i32, i32* %k, align 4
  %cmp62 = icmp slt i32 %29, 4
  br i1 %cmp62, label %for.body.64, label %for.end.129

for.body.64:                                      ; preds = %for.cond.61
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom65
  %32 = load i32, i32* %arrayidx66, align 4
  %add = add nsw i32 %30, %32
  store i32 %add, i32* %pos2, align 4
  %33 = load i32, i32* %pos2, align 4
  %cmp67 = icmp ult i32 %33, 421
  br i1 %cmp67, label %land.lhs.true, label %if.then.74

land.lhs.true:                                    ; preds = %for.body.64
  %34 = load i32, i32* %pos2, align 4
  %idxprom69 = sext i32 %34 to i64
  %arrayidx70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom69
  %35 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %35 to i32
  %cmp72 = icmp ne i32 %conv71, 3
  br i1 %cmp72, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %land.lhs.true, %for.body.64
  br label %for.inc.127

if.end.75:                                        ; preds = %land.lhs.true
  %36 = load i32, i32* %pos2, align 4
  %idxprom76 = sext i32 %36 to i64
  %arrayidx77 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom76
  %37 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp sge i32 %37, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %if.end.75
  %38 = load i32, i32* %pos2, align 4
  %idxprom81 = sext i32 %38 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom81
  %39 = load i32, i32* %arrayidx82, align 4
  %40 = load i32, i32* %dist, align 4
  %cmp83 = icmp slt i32 %39, %40
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.80
  br label %for.inc.127

if.end.86:                                        ; preds = %land.lhs.true.80, %if.end.75
  %41 = load i32, i32* %dist, align 4
  %cmp87 = icmp eq i32 %41, 1
  br i1 %cmp87, label %if.then.102, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.86
  %42 = load i32, i32* %color, align 4
  %cmp90 = icmp eq i32 %42, 1
  %cond = select i1 %cmp90, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %43 = load i32, i32* %pos, align 4
  %call = call i32 @whose_area(%struct.influence_data* %cond, i32 %43)
  %44 = load i32, i32* %color, align 4
  %cmp92 = icmp eq i32 %call, %44
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.126

land.lhs.true.94:                                 ; preds = %lor.lhs.false.89
  %45 = load i32, i32* %color, align 4
  %cmp95 = icmp eq i32 %45, 1
  %cond97 = select i1 %cmp95, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %46 = load i32, i32* %pos2, align 4
  %call98 = call i32 @whose_area(%struct.influence_data* %cond97, i32 %46)
  %47 = load i32, i32* %color, align 4
  %sub99 = sub nsw i32 3, %47
  %cmp100 = icmp ne i32 %call98, %sub99
  br i1 %cmp100, label %if.then.102, label %if.end.126

if.then.102:                                      ; preds = %land.lhs.true.94, %if.end.86
  %48 = load i32, i32* %pos2, align 4
  %idxprom103 = sext i32 %48 to i64
  %arrayidx104 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom103
  %49 = load i32, i32* %arrayidx104, align 4
  %50 = load i32, i32* %dist, align 4
  %cmp105 = icmp eq i32 %49, %50
  br i1 %cmp105, label %if.then.107, label %if.else.118

if.then.107:                                      ; preds = %if.then.102
  %51 = load i32, i32* %pos2, align 4
  %idxprom108 = sext i32 %51 to i64
  %arrayidx109 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom108
  %52 = load i32, i32* %arrayidx109, align 4
  %53 = load i32, i32* %pos, align 4
  %idxprom110 = sext i32 %53 to i64
  %arrayidx111 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom110
  %54 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp ne i32 %52, %54
  br i1 %cmp112, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.then.107
  %55 = load i32, i32* %pos2, align 4
  %idxprom115 = sext i32 %55 to i64
  %arrayidx116 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom115
  store i32 -2, i32* %arrayidx116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.114, %if.then.107
  br label %if.end.125

if.else.118:                                      ; preds = %if.then.102
  %56 = load i32, i32* %pos, align 4
  %idxprom119 = sext i32 %56 to i64
  %arrayidx120 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom119
  %57 = load i32, i32* %arrayidx120, align 4
  %58 = load i32, i32* %pos2, align 4
  %idxprom121 = sext i32 %58 to i64
  %arrayidx122 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom121
  store i32 %57, i32* %arrayidx122, align 4
  %59 = load i32, i32* %dist, align 4
  %60 = load i32, i32* %pos2, align 4
  %idxprom123 = sext i32 %60 to i64
  %arrayidx124 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom123
  store i32 %59, i32* %arrayidx124, align 4
  store i32 1, i32* %found_one, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.118, %if.end.117
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %land.lhs.true.94, %lor.lhs.false.89
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126, %if.then.85, %if.then.74
  %61 = load i32, i32* %k, align 4
  %inc128 = add nsw i32 %61, 1
  store i32 %inc128, i32* %k, align 4
  br label %for.cond.61

for.end.129:                                      ; preds = %for.cond.61
  %62 = load i32, i32* %found_one, align 4
  %tobool130 = icmp ne i32 %62, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %for.end.129
  br label %for.end.135

if.end.132:                                       ; preds = %for.end.129
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132, %if.then.52, %if.then.41
  %63 = load i32, i32* %pos, align 4
  %inc134 = add nsw i32 %63, 1
  store i32 %inc134, i32* %pos, align 4
  br label %for.cond.32

for.end.135:                                      ; preds = %if.then.131, %for.cond.32
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %64 = load i32, i32* %dist, align 4
  %inc137 = add nsw i32 %64, 1
  store i32 %inc137, i32* %dist, align 4
  br label %for.cond.28

for.end.138:                                      ; preds = %for.cond.28
  store i32 21, i32* %pos, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.268, %for.end.138
  %65 = load i32, i32* %pos, align 4
  %cmp140 = icmp slt i32 %65, 400
  br i1 %cmp140, label %for.body.142, label %for.end.270

for.body.142:                                     ; preds = %for.cond.139
  %66 = load i32, i32* %pos, align 4
  %idxprom143 = sext i32 %66 to i64
  %arrayidx144 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom143
  %67 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %67 to i32
  %cmp146 = icmp ne i32 %conv145, 3
  br i1 %cmp146, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %for.body.142
  br label %for.inc.268

if.end.149:                                       ; preds = %for.body.142
  %68 = load i32, i32* %pos, align 4
  %idxprom150 = sext i32 %68 to i64
  %arrayidx151 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom150
  %69 = load i32, i32* %arrayidx151, align 4
  %cmp152 = icmp eq i32 %69, -2
  br i1 %cmp152, label %if.then.154, label %if.else.204

if.then.154:                                      ; preds = %if.end.149
  store i32 0, i32* %neighbors, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.182, %if.then.154
  %70 = load i32, i32* %k, align 4
  %cmp156 = icmp slt i32 %70, 4
  br i1 %cmp156, label %for.body.158, label %for.end.184

for.body.158:                                     ; preds = %for.cond.155
  %71 = load i32, i32* %pos, align 4
  %72 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %72 to i64
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom159
  %73 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %71, %73
  store i32 %add161, i32* %pos2, align 4
  %74 = load i32, i32* %pos2, align 4
  %cmp162 = icmp ult i32 %74, 421
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.181

land.lhs.true.164:                                ; preds = %for.body.158
  %75 = load i32, i32* %pos2, align 4
  %idxprom165 = sext i32 %75 to i64
  %arrayidx166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom165
  %76 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %76 to i32
  %cmp168 = icmp ne i32 %conv167, 3
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.181

land.lhs.true.170:                                ; preds = %land.lhs.true.164
  %77 = load i32, i32* %pos2, align 4
  %idxprom171 = sext i32 %77 to i64
  %arrayidx172 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom171
  %78 = load i32, i32* %arrayidx172, align 4
  %cmp173 = icmp sge i32 %78, 0
  br i1 %cmp173, label %if.then.175, label %if.end.181

if.then.175:                                      ; preds = %land.lhs.true.170
  %79 = load i32, i32* %pos2, align 4
  %idxprom176 = sext i32 %79 to i64
  %arrayidx177 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom176
  %80 = load i32, i32* %arrayidx177, align 4
  %81 = load i32, i32* %neighbors, align 4
  %inc178 = add nsw i32 %81, 1
  store i32 %inc178, i32* %neighbors, align 4
  %idxprom179 = sext i32 %81 to i64
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %adjacent, i32 0, i64 %idxprom179
  store i32 %80, i32* %arrayidx180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.175, %land.lhs.true.170, %land.lhs.true.164, %for.body.158
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %82 = load i32, i32* %k, align 4
  %inc183 = add nsw i32 %82, 1
  store i32 %inc183, i32* %k, align 4
  br label %for.cond.155

for.end.184:                                      ; preds = %for.cond.155
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.201, %for.end.184
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %neighbors, align 4
  %cmp186 = icmp slt i32 %83, %84
  br i1 %cmp186, label %for.body.188, label %for.end.203

for.body.188:                                     ; preds = %for.cond.185
  %85 = load i32, i32* %i, align 4
  %add189 = add nsw i32 %85, 1
  store i32 %add189, i32* %j, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.198, %for.body.188
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* %neighbors, align 4
  %cmp191 = icmp slt i32 %86, %87
  br i1 %cmp191, label %for.body.193, label %for.end.200

for.body.193:                                     ; preds = %for.cond.190
  %88 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %88 to i64
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %adjacent, i32 0, i64 %idxprom194
  %89 = load i32, i32* %arrayidx195, align 4
  %90 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %90 to i64
  %arrayidx197 = getelementptr inbounds [4 x i32], [4 x i32]* %adjacent, i32 0, i64 %idxprom196
  %91 = load i32, i32* %arrayidx197, align 4
  call void @add_adjacent_dragons(i32 %89, i32 %91)
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.193
  %92 = load i32, i32* %j, align 4
  %inc199 = add nsw i32 %92, 1
  store i32 %inc199, i32* %j, align 4
  br label %for.cond.190

for.end.200:                                      ; preds = %for.cond.190
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %93 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %93, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.185

for.end.203:                                      ; preds = %for.cond.185
  br label %if.end.267

if.else.204:                                      ; preds = %if.end.149
  %94 = load i32, i32* %pos, align 4
  %idxprom205 = sext i32 %94 to i64
  %arrayidx206 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom205
  %95 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp sge i32 %95, 0
  br i1 %cmp207, label %if.then.209, label %if.end.266

if.then.209:                                      ; preds = %if.else.204
  %96 = load i32, i32* %pos, align 4
  %sub210 = sub nsw i32 %96, 20
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom211
  %97 = load i8, i8* %arrayidx212, align 1
  %conv213 = zext i8 %97 to i32
  %cmp214 = icmp ne i32 %conv213, 3
  br i1 %cmp214, label %if.then.216, label %if.end.237

if.then.216:                                      ; preds = %if.then.209
  %98 = load i32, i32* %pos, align 4
  %sub217 = sub nsw i32 %98, 20
  %idxprom218 = sext i32 %sub217 to i64
  %arrayidx219 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom218
  %99 = load i32, i32* %arrayidx219, align 4
  %cmp220 = icmp sge i32 %99, 0
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.236

land.lhs.true.222:                                ; preds = %if.then.216
  %100 = load i32, i32* %pos, align 4
  %sub223 = sub nsw i32 %100, 20
  %idxprom224 = sext i32 %sub223 to i64
  %arrayidx225 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom224
  %101 = load i32, i32* %arrayidx225, align 4
  %102 = load i32, i32* %pos, align 4
  %idxprom226 = sext i32 %102 to i64
  %arrayidx227 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom226
  %103 = load i32, i32* %arrayidx227, align 4
  %cmp228 = icmp ne i32 %101, %103
  br i1 %cmp228, label %if.then.230, label %if.end.236

if.then.230:                                      ; preds = %land.lhs.true.222
  %104 = load i32, i32* %pos, align 4
  %idxprom231 = sext i32 %104 to i64
  %arrayidx232 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom231
  %105 = load i32, i32* %arrayidx232, align 4
  %106 = load i32, i32* %pos, align 4
  %sub233 = sub nsw i32 %106, 20
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom234
  %107 = load i32, i32* %arrayidx235, align 4
  call void @add_adjacent_dragons(i32 %105, i32 %107)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.230, %land.lhs.true.222, %if.then.216
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.209
  %108 = load i32, i32* %pos, align 4
  %add238 = add nsw i32 %108, 1
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom239
  %109 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %109 to i32
  %cmp242 = icmp ne i32 %conv241, 3
  br i1 %cmp242, label %if.then.244, label %if.end.265

if.then.244:                                      ; preds = %if.end.237
  %110 = load i32, i32* %pos, align 4
  %add245 = add nsw i32 %110, 1
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom246
  %111 = load i32, i32* %arrayidx247, align 4
  %cmp248 = icmp sge i32 %111, 0
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.264

land.lhs.true.250:                                ; preds = %if.then.244
  %112 = load i32, i32* %pos, align 4
  %add251 = add nsw i32 %112, 1
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom252
  %113 = load i32, i32* %arrayidx253, align 4
  %114 = load i32, i32* %pos, align 4
  %idxprom254 = sext i32 %114 to i64
  %arrayidx255 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom254
  %115 = load i32, i32* %arrayidx255, align 4
  %cmp256 = icmp ne i32 %113, %115
  br i1 %cmp256, label %if.then.258, label %if.end.264

if.then.258:                                      ; preds = %land.lhs.true.250
  %116 = load i32, i32* %pos, align 4
  %idxprom259 = sext i32 %116 to i64
  %arrayidx260 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom259
  %117 = load i32, i32* %arrayidx260, align 4
  %118 = load i32, i32* %pos, align 4
  %add261 = add nsw i32 %118, 1
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom262
  %119 = load i32, i32* %arrayidx263, align 4
  call void @add_adjacent_dragons(i32 %117, i32 %119)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.258, %land.lhs.true.250, %if.then.244
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.237
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.else.204
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %for.end.203
  br label %for.inc.268

for.inc.268:                                      ; preds = %if.end.267, %if.then.148
  %120 = load i32, i32* %pos, align 4
  %inc269 = add nsw i32 %120, 1
  store i32 %inc269, i32* %pos, align 4
  br label %for.cond.139

for.end.270:                                      ; preds = %for.cond.139
  ret void
}

declare void @purge_persistent_owl_cache() #1

declare void @set_eyevalue(%struct.eyevalue*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define float @crude_dragon_weakness(i32 %safety, %struct.eyevalue* %genus, i32 %has_lunch, float %moyo_value, float %escape_route) #0 {
entry:
  %retval = alloca float, align 4
  %safety.addr = alloca i32, align 4
  %genus.addr = alloca %struct.eyevalue*, align 8
  %has_lunch.addr = alloca i32, align 4
  %moyo_value.addr = alloca float, align 4
  %escape_route.addr = alloca float, align 4
  %true_genus = alloca float, align 4
  %weakness_value = alloca [3 x float], align 4
  %weakness = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca float, align 4
  store i32 %safety, i32* %safety.addr, align 4
  store %struct.eyevalue* %genus, %struct.eyevalue** %genus.addr, align 8
  store i32 %has_lunch, i32* %has_lunch.addr, align 4
  store float %moyo_value, float* %moyo_value.addr, align 4
  store float %escape_route, float* %escape_route.addr, align 4
  %0 = load %struct.eyevalue*, %struct.eyevalue** %genus.addr, align 8
  %call = call i32 @max_eyes(%struct.eyevalue* %0)
  %1 = load %struct.eyevalue*, %struct.eyevalue** %genus.addr, align 8
  %call1 = call i32 @min_eyes(%struct.eyevalue* %1)
  %add = add nsw i32 %call, %call1
  %2 = load i32, i32* %has_lunch.addr, align 4
  %cmp = icmp ne i32 %2, 0
  %conv = zext i1 %cmp to i32
  %add2 = add nsw i32 %add, %conv
  %conv3 = sitofp i32 %add2 to double
  %mul = fmul double 5.000000e-01, %conv3
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* %true_genus, align 4
  %3 = load i32, i32* %safety.addr, align 4
  %cmp5 = icmp eq i32 %3, 9
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %safety.addr, align 4
  %cmp7 = icmp eq i32 %4, 5
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %safety.addr, align 4
  %cmp9 = icmp eq i32 %5, 6
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %6 = load i32, i32* %safety.addr, align 4
  %cmp12 = icmp eq i32 %6, 0
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %7 = load i32, i32* %safety.addr, align 4
  %cmp15 = icmp eq i32 %7, 2
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %if.end
  store float 1.000000e+00, float* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.14
  %8 = load float, float* %moyo_value.addr, align 4
  %call19 = call float @gg_interpolate(%struct.interpolation_data* @moyo_value2weakness, float %8)
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  store float %call19, float* %arrayidx, align 4
  %9 = load float, float* %escape_route.addr, align 4
  %call20 = call float @gg_interpolate(%struct.interpolation_data* @escape_route2weakness, float %9)
  %arrayidx21 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 1
  store float %call20, float* %arrayidx21, align 4
  %10 = load float, float* %true_genus, align 4
  %call22 = call float @gg_interpolate(%struct.interpolation_data* @genus2weakness, float %10)
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 2
  store float %call22, float* %arrayidx23, align 4
  %11 = load i32, i32* @debug, align 4
  %and = and i32 %11, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.18
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %12 = load float, float* %moyo_value.addr, align 4
  %conv24 = fpext float %12 to double
  %arrayidx25 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  %13 = load float, float* %arrayidx25, align 4
  %conv26 = fpext float %13 to double
  %14 = load float, float* %escape_route.addr, align 4
  %conv27 = fpext float %14 to double
  %arrayidx28 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 1
  %15 = load float, float* %arrayidx28, align 4
  %conv29 = fpext float %15 to double
  %16 = load float, float* %true_genus, align 4
  %conv30 = fpext float %16 to double
  %arrayidx31 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 2
  %17 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %17 to double
  %call33 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.71, i32 0, i32 0), double %conv24, double %conv26, double %conv27, double %conv29, double %conv30, double %conv32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %cond.end
  %18 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %18, 3
  br i1 %cmp34, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %19, 1
  store i32 %add36, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %cmp38 = icmp slt i32 %20, 3
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %21 = load i32, i32* %j, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom
  %22 = load float, float* %arrayidx41, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %23 to i64
  %arrayidx43 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom42
  %24 = load float, float* %arrayidx43, align 4
  %cmp44 = fcmp olt float %22, %24
  br i1 %cmp44, label %if.then.46, label %if.end.55

if.then.46:                                       ; preds = %for.body.40
  %25 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom47
  %26 = load float, float* %arrayidx48, align 4
  store float %26, float* %tmp, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %27 to i64
  %arrayidx50 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom49
  %28 = load float, float* %arrayidx50, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %29 to i64
  %arrayidx52 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom51
  store float %28, float* %arrayidx52, align 4
  %30 = load float, float* %tmp, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %31 to i64
  %arrayidx54 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 %idxprom53
  store float %30, float* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.46, %for.body.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %33, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %arrayidx59 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  %34 = load float, float* %arrayidx59, align 4
  %conv60 = fpext float %34 to double
  %mul61 = fmul double 7.000000e-01, %conv60
  %arrayidx62 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 1
  %35 = load float, float* %arrayidx62, align 4
  %conv63 = fpext float %35 to double
  %mul64 = fmul double 3.000000e-01, %conv63
  %add65 = fadd double %mul61, %mul64
  %arrayidx66 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  %36 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %36 to double
  %mul68 = fmul double 1.300000e+00, %conv67
  %cmp69 = fcmp olt double %add65, %mul68
  br i1 %cmp69, label %cond.true.71, label %cond.false.79

cond.true.71:                                     ; preds = %for.end.58
  %arrayidx72 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  %37 = load float, float* %arrayidx72, align 4
  %conv73 = fpext float %37 to double
  %mul74 = fmul double 7.000000e-01, %conv73
  %arrayidx75 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 1
  %38 = load float, float* %arrayidx75, align 4
  %conv76 = fpext float %38 to double
  %mul77 = fmul double 3.000000e-01, %conv76
  %add78 = fadd double %mul74, %mul77
  br label %cond.end.83

cond.false.79:                                    ; preds = %for.end.58
  %arrayidx80 = getelementptr inbounds [3 x float], [3 x float]* %weakness_value, i32 0, i64 0
  %39 = load float, float* %arrayidx80, align 4
  %conv81 = fpext float %39 to double
  %mul82 = fmul double 1.300000e+00, %conv81
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.79, %cond.true.71
  %cond = phi double [ %add78, %cond.true.71 ], [ %mul82, %cond.false.79 ]
  %conv84 = fptrunc double %cond to float
  store float %conv84, float* %weakness, align 4
  %40 = load float, float* %weakness, align 4
  %conv85 = fpext float %40 to double
  %cmp86 = fcmp oge double %conv85, 0.000000e+00
  br i1 %cmp86, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.83
  %41 = load float, float* %weakness, align 4
  %conv88 = fpext float %41 to double
  %cmp89 = fcmp ole double %conv88, 1.000000e+00
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %land.lhs.true
  br label %if.end.92

if.else:                                          ; preds = %land.lhs.true, %cond.end.83
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 2071, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.then.91
  %42 = load float, float* %weakness, align 4
  store float %42, float* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.17, %if.then
  %43 = load float, float* %retval
  ret float %43
}

declare i32 @owl_attack(i32, i32*, i32*, i32*) #1

declare i32 @owl_defend(i32, i32*, i32*, i32*) #1

declare i32 @owl_does_defend(i32, i32, i32*) #1

declare i32 @get_last_move() #1

; Function Attrs: nounwind uwtable
define i32 @is_same_dragon(i32 %d1, i32 %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %d2.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %d1.addr, align 4
  %3 = load i32, i32* %d2.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %d1.addr, align 4
  %cmp3 = icmp ult i32 %4, 421
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %d1.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i32, i32* %d1.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %d1.addr, align 4
  %rem = srem i32 %8, 20
  %sub9 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 2156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 %sub, i32 %sub9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %9 = load i32, i32* %d2.addr, align 4
  %cmp11 = icmp ult i32 %9, 421
  br i1 %cmp11, label %land.lhs.true.13, label %if.else.20

land.lhs.true.13:                                 ; preds = %if.end.10
  %10 = load i32, i32* %d2.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %cmp17 = icmp ne i32 %conv16, 3
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.13
  br label %if.end.25

if.else.20:                                       ; preds = %land.lhs.true.13, %if.end.10
  %12 = load i32, i32* %d2.addr, align 4
  %div21 = sdiv i32 %12, 20
  %sub22 = sub nsw i32 %div21, 1
  %13 = load i32, i32* %d2.addr, align 4
  %rem23 = srem i32 %13, 20
  %sub24 = sub nsw i32 %rem23, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 2157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i32 %sub22, i32 %sub24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.20, %if.then.19
  %14 = load i32, i32* %d1.addr, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom26
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx27, i32 0, i32 2
  %15 = load i32, i32* %origin, align 4
  %16 = load i32, i32* %d2.addr, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom28
  %origin30 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx29, i32 0, i32 2
  %17 = load i32, i32* %origin30, align 4
  %cmp31 = icmp eq i32 %15, %17
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @owl_threaten_defense(i32, i32*, i32*) #1

declare i32 @owl_threaten_attack(i32, i32*, i32*) #1

declare i32 @compute_surroundings(i32, i32, i32, i32*) #1

declare i32 @max_eyes(%struct.eyevalue*) #1

declare i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dragon_looks_inessential(i32 %origin) #0 {
entry:
  %retval = alloca i32, align 4
  %origin.addr = alloca i32, align 4
  store i32 %origin, i32* %origin.addr, align 4
  %0 = load i32, i32* %origin.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %size, align 4
  %2 = load i32, i32* %origin.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %size3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %size3, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %origin.addr, align 4
  %call = call i32 @owl_substantial(i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @dragon_invincible(i32 %dr) #0 {
entry:
  %retval = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %eye = alloca %struct.eye_data*, align 8
  %eye_color = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %strong_eyes = alloca i32, align 4
  %mx = alloca [400 x i32], align 16
  %pos2 = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 0, i32* %strong_eyes, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %dr.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1010, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %pos, align 4
  %cmp7 = icmp slt i32 %4, 400
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %6 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %cmp12 = icmp ne i32 %conv11, 3
  br i1 %cmp12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %pos, align 4
  %8 = load i32, i32* %dr.addr, align 4
  %call = call i32 @is_same_dragon(i32 %7, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 13
  %10 = load i32, i32* %invincible, align 4
  %tobool17 = icmp ne i32 %10, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %11 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %dr.addr, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %13 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %cmp23 = icmp eq i32 %conv22, 2
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %for.end
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.eye_data** %eye, align 8
  store i32 5, i32* %eye_color, align 4
  br label %if.end.27

if.else.26:                                       ; preds = %for.end
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.eye_data** %eye, align 8
  store i32 4, i32* %eye_color, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  %14 = bitcast [400 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.80, %if.end.27
  %15 = load i32, i32* %pos, align 4
  %cmp29 = icmp slt i32 %15, 400
  br i1 %cmp29, label %for.body.31, label %for.end.82

for.body.31:                                      ; preds = %for.cond.28
  %16 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %17 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %17 to i32
  %18 = load i32, i32* %dr.addr, align 4
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %19 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %19 to i32
  %cmp38 = icmp eq i32 %conv34, %conv37
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.79

land.lhs.true.40:                                 ; preds = %for.body.31
  %20 = load i32, i32* %pos, align 4
  %21 = load i32, i32* %dr.addr, align 4
  %call41 = call i32 @is_same_dragon(i32 %20, i32 %21)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.79

if.then.43:                                       ; preds = %land.lhs.true.40
  store i32 0, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.76, %if.then.43
  %22 = load i32, i32* %k, align 4
  %cmp45 = icmp slt i32 %22, 4
  br i1 %cmp45, label %for.body.47, label %for.end.78

for.body.47:                                      ; preds = %for.cond.44
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %24 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom48
  %25 = load i32, i32* %arrayidx49, align 4
  %add = add nsw i32 %23, %25
  store i32 %add, i32* %pos2, align 4
  %26 = load i32, i32* %pos2, align 4
  %idxprom50 = sext i32 %26 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %27 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %27 to i32
  %cmp53 = icmp ne i32 %conv52, 3
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.75

land.lhs.true.55:                                 ; preds = %for.body.47
  %28 = load i32, i32* %pos2, align 4
  %idxprom56 = sext i32 %28 to i64
  %29 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx57 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %29, i64 %idxprom56
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx57, i32 0, i32 0
  %30 = load i32, i32* %color, align 4
  %31 = load i32, i32* %eye_color, align 4
  %cmp58 = icmp eq i32 %30, %31
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.75

land.lhs.true.60:                                 ; preds = %land.lhs.true.55
  %32 = load i32, i32* %pos2, align 4
  %idxprom61 = sext i32 %32 to i64
  %33 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx62 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %33, i64 %idxprom61
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx62, i32 0, i32 3
  %34 = load i32, i32* %origin, align 4
  %cmp63 = icmp ne i32 %34, 0
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.75

land.lhs.true.65:                                 ; preds = %land.lhs.true.60
  %35 = load i32, i32* %pos2, align 4
  %idxprom66 = sext i32 %35 to i64
  %36 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx67 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %36, i64 %idxprom66
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx67, i32 0, i32 7
  %37 = load i8, i8* %marginal, align 1
  %tobool68 = icmp ne i8 %37, 0
  br i1 %tobool68, label %if.end.75, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.65
  %38 = load i32, i32* %pos2, align 4
  %idxprom70 = sext i32 %38 to i64
  %39 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx71 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i64 %idxprom70
  %origin72 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx71, i32 0, i32 3
  %40 = load i32, i32* %origin72, align 4
  %idxprom73 = sext i32 %40 to i64
  %arrayidx74 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom73
  store i32 1, i32* %arrayidx74, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.69, %land.lhs.true.65, %land.lhs.true.60, %land.lhs.true.55, %for.body.47
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %41 = load i32, i32* %k, align 4
  %inc77 = add nsw i32 %41, 1
  store i32 %inc77, i32* %k, align 4
  br label %for.cond.44

for.end.78:                                       ; preds = %for.cond.44
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %land.lhs.true.40, %for.body.31
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %42 = load i32, i32* %pos, align 4
  %inc81 = add nsw i32 %42, 1
  store i32 %inc81, i32* %pos, align 4
  br label %for.cond.28

for.end.82:                                       ; preds = %for.cond.28
  store i32 21, i32* %pos, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.104, %for.end.82
  %43 = load i32, i32* %pos, align 4
  %cmp84 = icmp slt i32 %43, 400
  br i1 %cmp84, label %for.body.86, label %for.end.106

for.body.86:                                      ; preds = %for.cond.83
  %44 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %44 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom87
  %45 = load i32, i32* %arrayidx88, align 4
  %tobool89 = icmp ne i32 %45, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.103

land.lhs.true.90:                                 ; preds = %for.body.86
  %46 = load i32, i32* %pos, align 4
  %idxprom91 = sext i32 %46 to i64
  %47 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx92 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %47, i64 %idxprom91
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx92, i32 0, i32 2
  %48 = load i32, i32* %msize, align 4
  %cmp93 = icmp eq i32 %48, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.103

land.lhs.true.95:                                 ; preds = %land.lhs.true.90
  %49 = load i32, i32* %pos, align 4
  %idxprom96 = sext i32 %49 to i64
  %50 = load %struct.eye_data*, %struct.eye_data** %eye, align 8
  %arrayidx97 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %50, i64 %idxprom96
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx97, i32 0, i32 4
  %call98 = call i32 @min_eyes(%struct.eyevalue* %value)
  %cmp99 = icmp sgt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %land.lhs.true.95
  %51 = load i32, i32* %strong_eyes, align 4
  %inc102 = add nsw i32 %51, 1
  store i32 %inc102, i32* %strong_eyes, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %land.lhs.true.95, %land.lhs.true.90, %for.body.86
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %52 = load i32, i32* %pos, align 4
  %inc105 = add nsw i32 %52, 1
  store i32 %inc105, i32* %pos, align 4
  br label %for.cond.83

for.end.106:                                      ; preds = %for.cond.83
  %53 = load i32, i32* %strong_eyes, align 4
  %cmp107 = icmp sge i32 %53, 2
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.end.106
  store i32 1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %for.end.106
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.110, %if.then.109, %if.then.18
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @new_semeai(i32) #1

declare void @semeai(i32) #1

declare i32 @is_worm_origin(i32, i32) #1

declare i32 @extended_chainlinks(i32, i32*, i32) #1

declare void @propagate_worm(i32) #1

; Function Attrs: nounwind uwtable
define i32 @first_worm_in_dragon(i32 %w) #0 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @next_worm_in_dragon(i32 %w) #0 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  %2 = load i32, i32* %w.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 2201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %w.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @set_strength_data(i32 %color, i8* %safe_stones, float* %strength) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %color.addr, align 4
  %4 = load i8*, i8** %safe_stones.addr, align 8
  call void @get_alive_stones(i32 %3, i8* %4)
  %5 = load i8*, i8** %safe_stones.addr, align 8
  %6 = load float*, float** %strength.addr, align 8
  call void @set_dragon_strengths(i8* %5, float* %6)
  %7 = load i32, i32* %color.addr, align 4
  %8 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_inessential_stones(i32 %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_alive_stones(i32 %color, i8* %safe_stones) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %d = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i8*, i8** %safe_stones.addr, align 8
  call void @get_lively_stones(i32 %0, i8* %1)
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %2 = load i32, i32* %d, align 4
  %3 = load i32, i32* @number_of_dragons, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %5, i64 %idxprom
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 6
  %6 = load i32, i32* %safety, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %d, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx3 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %8, i64 %idxprom2
  %safety4 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx3, i32 0, i32 6
  %9 = load i32, i32* %safety4, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom6
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 0
  %12 = load i32, i32* %origin, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %cmp10 = icmp eq i32 %conv, %sub
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, i32* %d, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %16, i64 %idxprom12
  %origin14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx13, i32 0, i32 0
  %17 = load i32, i32* %origin14, align 4
  %call = call i32 @first_worm_in_dragon(i32 %17)
  store i32 %call, i32* %ii, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then
  %18 = load i32, i32* %ii, align 4
  %cmp16 = icmp ne i32 %18, 0
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %19 = load i32, i32* %ii, align 4
  %20 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_string(i32 %19, i8* %20, i8 signext 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %21 = load i32, i32* %ii, align 4
  %call19 = call i32 @next_worm_in_dragon(i32 %21)
  store i32 %call19, i32* %ii, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %lor.lhs.false
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %22 = load i32, i32* %d, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_dragon_strengths(i8* %safe_stones, float* %strength) #0 {
entry:
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %ii = alloca i32, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.5, label %if.else.28

if.then.5:                                        ; preds = %if.then
  %6 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %8 = load i32, i32* %ii, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 2
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %if.then.5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %ii, align 4
  %div = sdiv i32 %10, 20
  %sub = sub nsw i32 %div, 1
  %11 = load i32, i32* %ii, align 4
  %rem = srem i32 %11, 20
  %sub17 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i32 0, i32 0), i32 %sub, i32 %sub17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  %12 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 1
  %13 = load i32, i32* %id, align 4
  %idxprom20 = sext i32 %13 to i64
  %14 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx21 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i64 %idxprom20
  %weakness_pre_owl = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx21, i32 0, i32 8
  %15 = load float, float* %weakness_pre_owl, align 4
  %conv22 = fpext float %15 to double
  %mul = fmul double 3.000000e-01, %conv22
  %sub23 = fsub double 1.000000e+00, %mul
  %mul24 = fmul double 1.000000e+02, %sub23
  %conv25 = fptrunc double %mul24 to float
  %16 = load i32, i32* %ii, align 4
  %idxprom26 = sext i32 %16 to i64
  %17 = load float*, float** %strength.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %17, i64 %idxprom26
  store float %conv25, float* %arrayidx27, align 4
  br label %if.end.31

if.else.28:                                       ; preds = %if.then
  %18 = load i32, i32* %ii, align 4
  %idxprom29 = sext i32 %18 to i64
  %19 = load float*, float** %strength.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %19, i64 %idxprom29
  store float 0.000000e+00, float* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %20 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_inessential_stones(i32 %color, i8* %safe_stones) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 1
  %6 = load i32, i32* %id, align 4
  %idxprom10 = sext i32 %6 to i64
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %idxprom10
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx11, i32 0, i32 6
  %8 = load i32, i32* %safety, align 4
  %cmp12 = icmp eq i32 %8, 5
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %ii, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 12
  %10 = load i32, i32* %inessential, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %lor.lhs.false.14
  %11 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %id20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 1
  %12 = load i32, i32* %id20, align 4
  %idxprom21 = sext i32 %12 to i64
  %13 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx22 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %13, i64 %idxprom21
  %safety23 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx22, i32 0, i32 6
  %14 = load i32, i32* %safety23, align 4
  %cmp24 = icmp ne i32 %14, 0
  br i1 %cmp24, label %land.lhs.true.26, label %lor.lhs.false.44

land.lhs.true.26:                                 ; preds = %land.lhs.true.17
  %15 = load i32, i32* %ii, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %id29 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 1
  %16 = load i32, i32* %id29, align 4
  %idxprom30 = sext i32 %16 to i64
  %17 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %17, i64 %idxprom30
  %safety32 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx31, i32 0, i32 6
  %18 = load i32, i32* %safety32, align 4
  %cmp33 = icmp ne i32 %18, 6
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false.44

land.lhs.true.35:                                 ; preds = %land.lhs.true.26
  %19 = load i32, i32* %ii, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom36
  %id38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx37, i32 0, i32 1
  %20 = load i32, i32* %id38, align 4
  %idxprom39 = sext i32 %20 to i64
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx40 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i64 %idxprom39
  %safety41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx40, i32 0, i32 6
  %22 = load i32, i32* %safety41, align 4
  %cmp42 = icmp ne i32 %22, 2
  br i1 %cmp42, label %if.then, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %land.lhs.true.35, %land.lhs.true.26, %land.lhs.true.17
  %23 = load i32, i32* %ii, align 4
  %idxprom45 = sext i32 %23 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom45
  %id47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx46, i32 0, i32 1
  %24 = load i32, i32* %id47, align 4
  %idxprom48 = sext i32 %24 to i64
  %25 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx49 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i64 %idxprom48
  %safety50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx49, i32 0, i32 6
  %26 = load i32, i32* %safety50, align 4
  %cmp51 = icmp eq i32 %26, 2
  br i1 %cmp51, label %land.lhs.true.53, label %if.end

land.lhs.true.53:                                 ; preds = %lor.lhs.false.44
  %27 = load i32, i32* %ii, align 4
  %idxprom54 = sext i32 %27 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %28 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %28 to i32
  %29 = load i32, i32* %color.addr, align 4
  %cmp57 = icmp eq i32 %conv56, %29
  br i1 %cmp57, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.53, %land.lhs.true.35, %land.lhs.true
  %30 = load i32, i32* %ii, align 4
  %idxprom59 = sext i32 %30 to i64
  %31 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %31, i64 %idxprom59
  store i8 1, i8* %arrayidx60, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.53, %lor.lhs.false.44, %lor.lhs.false.14, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_dragon_influence() #0 {
entry:
  %safe_stones = alloca [400 x i8], align 16
  %strength = alloca [400 x float], align 16
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @set_strength_data(i32 2, i8* %arraydecay, float* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @compute_influence(i32 2, i8* %arraydecay2, float* %arraydecay3, %struct.influence_data* @initial_black_influence, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0))
  %arraydecay4 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @set_strength_data(i32 1, i8* %arraydecay4, float* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @compute_influence(i32 1, i8* %arraydecay6, float* %arraydecay7, %struct.influence_data* @initial_white_influence, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

declare void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @show_dragons() #0 {
entry:
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca %struct.worm_data*, align 8
  %dd = alloca %struct.dragon_data*, align 8
  %d2 = alloca %struct.dragon_data2*, align 8
  %d = alloca i32, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.146, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.148

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  store %struct.worm_data* %arrayidx, %struct.worm_data** %w, align 8
  %2 = load i32, i32* %pos, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  br label %for.inc.146

if.end:                                           ; preds = %lor.lhs.false, %for.body
  %6 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %6, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  %8 = load i32, i32* %pos, align 4
  %cmp10 = icmp eq i32 %7, %8
  br i1 %cmp10, label %if.then.12, label %if.end.145

if.then.12:                                       ; preds = %if.end
  %9 = load i32, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %origin15 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 2
  %11 = load i32, i32* %origin15, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %call = call i8* @color_to_string(i32 %conv18)
  %14 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %14, i32 0, i32 1
  %15 = load i32, i32* %size, align 4
  %16 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %16, i32 0, i32 2
  %17 = load float, float* %effective_size, align 4
  %conv19 = fpext float %17 to double
  %18 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %genus = getelementptr inbounds %struct.worm_data, %struct.worm_data* %18, i32 0, i32 11
  %19 = load i32, i32* %genus, align 4
  %20 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %20, i32 0, i32 4
  %21 = load i32, i32* %liberties, align 4
  %22 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 5
  %23 = load i32, i32* %liberties2, align 4
  %24 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %24, i32 0, i32 6
  %25 = load i32, i32* %liberties3, align 4
  %26 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %liberties4 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %26, i32 0, i32 7
  %27 = load i32, i32* %liberties4, align 4
  %call20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i32 0, i32 0), i32 %9, i32 %11, i8* %call, i32 %15, double %conv19, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  %28 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %28, i32 0, i32 9
  %29 = load i32, i32* %cutstone, align 4
  %cmp21 = icmp eq i32 %29, 1
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.12
  %call24 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.33

if.else:                                          ; preds = %if.then.12
  %30 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone25 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 9
  %31 = load i32, i32* %cutstone25, align 4
  %cmp26 = icmp eq i32 %31, 2
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else
  %call29 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.32

if.else.30:                                       ; preds = %if.else
  %call31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.23
  %32 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %32, i32 0, i32 10
  %33 = load i32, i32* %cutstone2, align 4
  %cmp34 = icmp sgt i32 %33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.33
  %34 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %cutstone237 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 10
  %35 = load i32, i32* %cutstone237, align 4
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.33
  store i32 0, i32* %k, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %if.end.39
  %36 = load i32, i32* %k, align 4
  %cmp41 = icmp slt i32 %36, 10
  br i1 %cmp41, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %37 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 16
  %arrayidx45 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 %idxprom44
  %39 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %39, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.43
  br label %for.end

if.end.49:                                        ; preds = %for.body.43
  %40 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %40 to i64
  %41 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %41, i32 0, i32 15
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 %idxprom50
  %42 = load i32, i32* %arrayidx51, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %43 to i64
  %44 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_codes53 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %arrayidx54 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes53, i32 0, i64 %idxprom52
  %45 = load i32, i32* %arrayidx54, align 4
  %call55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i32 0, i32 0), i32 %42, i32 %45)
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %46 = load i32, i32* %k, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.40

for.end:                                          ; preds = %if.then.48, %for.cond.40
  store i32 0, i32* %k, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.79, %for.end
  %47 = load i32, i32* %k, align 4
  %cmp57 = icmp slt i32 %47, 10
  br i1 %cmp57, label %for.body.59, label %for.end.81

for.body.59:                                      ; preds = %for.cond.56
  %48 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %48 to i64
  %49 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %49, i32 0, i32 18
  %arrayidx61 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 %idxprom60
  %50 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %50, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body.59
  br label %for.end.81

if.end.65:                                        ; preds = %for.body.59
  %51 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %51 to i64
  %52 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_codes67 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %52, i32 0, i32 18
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes67, i32 0, i64 %idxprom66
  %53 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp ne i32 %53, 0
  br i1 %cmp69, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.end.65
  %54 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %54 to i64
  %55 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %55, i32 0, i32 17
  %arrayidx73 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 %idxprom72
  %56 = load i32, i32* %arrayidx73, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_codes75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %58, i32 0, i32 18
  %arrayidx76 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes75, i32 0, i64 %idxprom74
  %59 = load i32, i32* %arrayidx76, align 4
  %call77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0), i32 %56, i32 %59)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %if.end.65
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %60 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %60, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.56

for.end.81:                                       ; preds = %if.then.64, %for.cond.56
  store i32 0, i32* %k, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.98, %for.end.81
  %61 = load i32, i32* %k, align 4
  %cmp83 = icmp slt i32 %61, 10
  br i1 %cmp83, label %for.body.85, label %for.end.100

for.body.85:                                      ; preds = %for.cond.82
  %62 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %62 to i64
  %63 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %63, i32 0, i32 20
  %arrayidx87 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i64 %idxprom86
  %64 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp eq i32 %64, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.85
  br label %for.end.100

if.end.91:                                        ; preds = %for.body.85
  %65 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %65 to i64
  %66 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %66, i32 0, i32 19
  %arrayidx93 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i64 %idxprom92
  %67 = load i32, i32* %arrayidx93, align 4
  %68 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %68 to i64
  %69 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %attack_threat_codes95 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %69, i32 0, i32 20
  %arrayidx96 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes95, i32 0, i64 %idxprom94
  %70 = load i32, i32* %arrayidx96, align 4
  %call97 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i32 0, i32 0), i32 %67, i32 %70)
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.91
  %71 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %71, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond.82

for.end.100:                                      ; preds = %if.then.90, %for.cond.82
  store i32 0, i32* %k, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.124, %for.end.100
  %72 = load i32, i32* %k, align 4
  %cmp102 = icmp slt i32 %72, 10
  br i1 %cmp102, label %for.body.104, label %for.end.126

for.body.104:                                     ; preds = %for.cond.101
  %73 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %73 to i64
  %74 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %74, i32 0, i32 22
  %arrayidx106 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes, i32 0, i64 %idxprom105
  %75 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp eq i32 %75, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.body.104
  br label %for.end.126

if.end.110:                                       ; preds = %for.body.104
  %76 = load i32, i32* %k, align 4
  %idxprom111 = sext i32 %76 to i64
  %77 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_threat_codes112 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %77, i32 0, i32 22
  %arrayidx113 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes112, i32 0, i64 %idxprom111
  %78 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp ne i32 %78, 0
  br i1 %cmp114, label %if.then.116, label %if.end.123

if.then.116:                                      ; preds = %if.end.110
  %79 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %79 to i64
  %80 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %80, i32 0, i32 21
  %arrayidx118 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points, i32 0, i64 %idxprom117
  %81 = load i32, i32* %arrayidx118, align 4
  %82 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %82 to i64
  %83 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %defense_threat_codes120 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %83, i32 0, i32 22
  %arrayidx121 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes120, i32 0, i64 %idxprom119
  %84 = load i32, i32* %arrayidx121, align 4
  %call122 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i32 0, i32 0), i32 %81, i32 %84)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.116, %if.end.110
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %85 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %85, 1
  store i32 %inc125, i32* %k, align 4
  br label %for.cond.101

for.end.126:                                      ; preds = %if.then.109, %for.cond.101
  %86 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %lunch = getelementptr inbounds %struct.worm_data, %struct.worm_data* %86, i32 0, i32 8
  %87 = load i32, i32* %lunch, align 4
  %cmp127 = icmp ne i32 %87, 0
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %for.end.126
  %88 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %lunch130 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %88, i32 0, i32 8
  %89 = load i32, i32* %lunch130, align 4
  %call131 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0), i32 %89)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %for.end.126
  %90 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %90, i32 0, i32 12
  %91 = load i32, i32* %inessential, align 4
  %tobool = icmp ne i32 %91, 0
  br i1 %tobool, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.end.132
  %call134 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.end.132
  %92 = load %struct.worm_data*, %struct.worm_data** %w, align 8
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %92, i32 0, i32 13
  %93 = load i32, i32* %invincible, align 4
  %tobool136 = icmp ne i32 %93, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.end.135
  %call138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %if.end.135
  %94 = load i32, i32* %pos, align 4
  %call140 = call i32 @is_ko_point(i32 %94)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.139
  %call143 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.139
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145, %if.then
  %95 = load i32, i32* %pos, align 4
  %inc147 = add nsw i32 %95, 1
  store i32 %inc147, i32* %pos, align 4
  br label %for.cond

for.end.148:                                      ; preds = %for.cond
  %call149 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  store i32 21, i32* %pos, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.228, %for.end.148
  %96 = load i32, i32* %pos, align 4
  %cmp151 = icmp slt i32 %96, 400
  br i1 %cmp151, label %for.body.153, label %for.end.230

for.body.153:                                     ; preds = %for.cond.150
  %97 = load i32, i32* %pos, align 4
  %idxprom154 = sext i32 %97 to i64
  %arrayidx155 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom154
  store %struct.dragon_data* %arrayidx155, %struct.dragon_data** %dd, align 8
  %98 = load i32, i32* %pos, align 4
  %idxprom156 = sext i32 %98 to i64
  %arrayidx157 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom156
  %99 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %99 to i32
  %cmp159 = icmp eq i32 %conv158, 1
  br i1 %cmp159, label %if.end.168, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %for.body.153
  %100 = load i32, i32* %pos, align 4
  %idxprom162 = sext i32 %100 to i64
  %arrayidx163 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom162
  %101 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %101 to i32
  %cmp165 = icmp eq i32 %conv164, 2
  br i1 %cmp165, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %lor.lhs.false.161
  br label %for.inc.228

if.end.168:                                       ; preds = %lor.lhs.false.161, %for.body.153
  %102 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %102, i32 0, i32 1
  %103 = load i32, i32* %id, align 4
  %idxprom169 = sext i32 %103 to i64
  %104 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx170 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %104, i64 %idxprom169
  store %struct.dragon_data2* %arrayidx170, %struct.dragon_data2** %d2, align 8
  %105 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %origin171 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %105, i32 0, i32 2
  %106 = load i32, i32* %origin171, align 4
  %107 = load i32, i32* %pos, align 4
  %cmp172 = icmp eq i32 %106, %107
  br i1 %cmp172, label %if.then.174, label %if.end.227

if.then.174:                                      ; preds = %if.end.168
  %108 = load i32, i32* %pos, align 4
  %109 = load i32, i32* %pos, align 4
  %idxprom175 = sext i32 %109 to i64
  %arrayidx176 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom175
  %110 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %110 to i32
  %cmp178 = icmp eq i32 %conv177, 2
  %cond = select i1 %cmp178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)
  %111 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %size180 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %111, i32 0, i32 3
  %112 = load i32, i32* %size180, align 4
  %113 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %effective_size181 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %113, i32 0, i32 4
  %114 = load float, float* %effective_size181, align 4
  %conv182 = fpext float %114 to double
  %115 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %genus183 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %115, i32 0, i32 10
  %call184 = call i8* @eyevalue_to_string(%struct.eyevalue* %genus183)
  %116 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %116, i32 0, i32 9
  %117 = load i32, i32* %escape_route, align 4
  %118 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %118, i32 0, i32 5
  %119 = load i32, i32* %crude_status, align 4
  %idxprom185 = sext i32 %119 to i64
  %arrayidx186 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i32 0, i64 %idxprom185
  %120 = load i8*, i8** %arrayidx186, align 8
  %121 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %121, i32 0, i32 16
  %122 = load i32, i32* %status, align 4
  %idxprom187 = sext i32 %122 to i64
  %arrayidx188 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i32 0, i64 %idxprom187
  %123 = load i8*, i8** %arrayidx188, align 8
  %124 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %124, i32 0, i32 4
  %125 = load i32, i32* %moyo_size, align 4
  %126 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i32 0, i32 5
  %127 = load float, float* %moyo_territorial_value, align 4
  %conv189 = fpext float %127 to double
  %128 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %128, i32 0, i32 6
  %129 = load i32, i32* %safety, align 4
  %idxprom190 = sext i32 %129 to i64
  %arrayidx191 = getelementptr inbounds [10 x i8*], [10 x i8*]* @show_dragons.safety_names, i32 0, i64 %idxprom190
  %130 = load i8*, i8** %arrayidx191, align 8
  %131 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %weakness_pre_owl = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %131, i32 0, i32 8
  %132 = load float, float* %weakness_pre_owl, align 4
  %conv192 = fpext float %132 to double
  %133 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %133, i32 0, i32 7
  %134 = load float, float* %weakness, align 4
  %conv193 = fpext float %134 to double
  %call194 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.56, i32 0, i32 0), i32 %108, i8* %cond, i32 %112, double %conv182, i8* %call184, i32 %117, i8* %120, i8* %123, i32 %125, double %conv189, i8* %130, double %conv192, double %conv193)
  %135 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %135, i32 0, i32 7
  %136 = load i32, i32* %owl_status, align 4
  %idxprom195 = sext i32 %136 to i64
  %arrayidx196 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i32 0, i64 %idxprom195
  %137 = load i8*, i8** %arrayidx196, align 8
  %call197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i8* %137)
  %138 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_status198 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %138, i32 0, i32 7
  %139 = load i32, i32* %owl_status198, align 4
  %cmp199 = icmp eq i32 %139, 2
  br i1 %cmp199, label %if.then.201, label %if.end.204

if.then.201:                                      ; preds = %if.then.174
  %140 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %140, i32 0, i32 8
  %141 = load i32, i32* %owl_attack_point, align 4
  %142 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_attack_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %142, i32 0, i32 9
  %143 = load i32, i32* %owl_attack_code, align 4
  %call202 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0), i32 %141, i32 %143)
  %144 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %144, i32 0, i32 12
  %145 = load i32, i32* %owl_defense_point, align 4
  %146 = load %struct.dragon_data*, %struct.dragon_data** %dd, align 8
  %owl_defense_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %146, i32 0, i32 13
  %147 = load i32, i32* %owl_defense_code, align 4
  %call203 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i32 %145, i32 %147)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.201, %if.then.174
  %call205 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.216, %if.end.204
  %148 = load i32, i32* %k, align 4
  %149 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %149, i32 0, i32 2
  %150 = load i32, i32* %neighbors, align 4
  %cmp207 = icmp slt i32 %148, %150
  br i1 %cmp207, label %for.body.209, label %for.end.218

for.body.209:                                     ; preds = %for.cond.206
  %151 = load i32, i32* %k, align 4
  %idxprom210 = sext i32 %151 to i64
  %152 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %152, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom210
  %153 = load i32, i32* %arrayidx211, align 4
  store i32 %153, i32* %d, align 4
  %154 = load i32, i32* %d, align 4
  %idxprom212 = sext i32 %154 to i64
  %155 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx213 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %155, i64 %idxprom212
  %origin214 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx213, i32 0, i32 0
  %156 = load i32, i32* %origin214, align 4
  %call215 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 %156)
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.209
  %157 = load i32, i32* %k, align 4
  %inc217 = add nsw i32 %157, 1
  store i32 %inc217, i32* %k, align 4
  br label %for.cond.206

for.end.218:                                      ; preds = %for.cond.206
  %call219 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  %158 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %lunch220 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %158, i32 0, i32 12
  %159 = load i32, i32* %lunch220, align 4
  %cmp221 = icmp ne i32 %159, 0
  br i1 %cmp221, label %if.then.223, label %if.end.226

if.then.223:                                      ; preds = %for.end.218
  %160 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %lunch224 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %160, i32 0, i32 12
  %161 = load i32, i32* %lunch224, align 4
  %call225 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0), i32 %161)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.223, %for.end.218
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.168
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227, %if.then.167
  %162 = load i32, i32* %pos, align 4
  %inc229 = add nsw i32 %162, 1
  store i32 %inc229, i32* %pos, align 4
  br label %for.cond.150

for.end.230:                                      ; preds = %for.cond.150
  ret void
}

declare i8* @color_to_string(i32) #1

; Function Attrs: nounwind uwtable
define void @join_dragons(i32 %d1, i32 %d2) #0 {
entry:
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %origin = alloca i32, align 4
  %last_worm_origin_dragon = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin1 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin1, align 4
  store i32 %1, i32* %d1.addr, align 4
  %2 = load i32, i32* %d2.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom2
  %origin4 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx3, i32 0, i32 2
  %3 = load i32, i32* %origin4, align 4
  store i32 %3, i32* %d2.addr, align 4
  %4 = load i32, i32* %d1.addr, align 4
  %5 = load i32, i32* %d2.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %d1.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %d2.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  br label %if.end.13

if.else:                                          ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1563, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %10 = load i32, i32* @dragon2_initialized, align 4
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.13
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.13
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1564, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %11 = load i32, i32* %d1.addr, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %13 = load i32, i32* %d1.addr, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.31

if.else.30:                                       ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1565, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  %15 = load i32, i32* %d1.addr, align 4
  %idxprom32 = sext i32 %15 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx33, i32 0, i32 1
  %16 = load i32, i32* %size, align 4
  %17 = load i32, i32* %d2.addr, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom34
  %size36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx35, i32 0, i32 1
  %18 = load i32, i32* %size36, align 4
  %cmp37 = icmp sgt i32 %16, %18
  br i1 %cmp37, label %if.then.50, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.31
  %19 = load i32, i32* %d1.addr, align 4
  %idxprom40 = sext i32 %19 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom40
  %size42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx41, i32 0, i32 1
  %20 = load i32, i32* %size42, align 4
  %21 = load i32, i32* %d2.addr, align 4
  %idxprom43 = sext i32 %21 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom43
  %size45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx44, i32 0, i32 1
  %22 = load i32, i32* %size45, align 4
  %cmp46 = icmp eq i32 %20, %22
  br i1 %cmp46, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %lor.lhs.false.39
  %23 = load i32, i32* %d1.addr, align 4
  %24 = load i32, i32* %d2.addr, align 4
  %cmp48 = icmp slt i32 %23, %24
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %land.lhs.true, %if.end.31
  %25 = load i32, i32* %d1.addr, align 4
  store i32 %25, i32* %origin, align 4
  %26 = load i32, i32* @debug, align 4
  %and = and i32 %26, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.50
  br label %cond.end

cond.false:                                       ; preds = %if.then.50
  %27 = load i32, i32* %d2.addr, align 4
  %28 = load i32, i32* %d1.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0), i32 %27, i32 %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.58

if.else.51:                                       ; preds = %land.lhs.true, %lor.lhs.false.39
  %29 = load i32, i32* %d2.addr, align 4
  store i32 %29, i32* %origin, align 4
  %30 = load i32, i32* @debug, align 4
  %and52 = and i32 %30, 32
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.false.55, label %cond.true.54

cond.true.54:                                     ; preds = %if.else.51
  br label %cond.end.57

cond.false.55:                                    ; preds = %if.else.51
  %31 = load i32, i32* %d1.addr, align 4
  %32 = load i32, i32* %d2.addr, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0), i32 %31, i32 %32)
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.54
  br label %if.end.58

if.end.58:                                        ; preds = %cond.end.57, %cond.end
  %33 = load i32, i32* %d2.addr, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom59
  %size61 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx60, i32 0, i32 3
  %34 = load i32, i32* %size61, align 4
  %35 = load i32, i32* %d1.addr, align 4
  %idxprom62 = sext i32 %35 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom62
  %size64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx63, i32 0, i32 3
  %36 = load i32, i32* %size64, align 4
  %add = add nsw i32 %34, %36
  %37 = load i32, i32* %origin, align 4
  %idxprom65 = sext i32 %37 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom65
  %size67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx66, i32 0, i32 3
  store i32 %add, i32* %size67, align 4
  %38 = load i32, i32* %d2.addr, align 4
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom68
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx69, i32 0, i32 4
  %39 = load float, float* %effective_size, align 4
  %40 = load i32, i32* %d1.addr, align 4
  %idxprom70 = sext i32 %40 to i64
  %arrayidx71 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom70
  %effective_size72 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx71, i32 0, i32 4
  %41 = load float, float* %effective_size72, align 4
  %add73 = fadd float %39, %41
  %42 = load i32, i32* %origin, align 4
  %idxprom74 = sext i32 %42 to i64
  %arrayidx75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom74
  %effective_size76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx75, i32 0, i32 4
  store float %add73, float* %effective_size76, align 4
  %43 = load i32, i32* %origin, align 4
  store i32 %43, i32* %last_worm_origin_dragon, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.58
  %44 = load i32, i32* %last_worm_origin_dragon, align 4
  %idxprom77 = sext i32 %44 to i64
  %arrayidx78 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i32 0, i64 %idxprom77
  %45 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp ne i32 %45, 0
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, i32* %last_worm_origin_dragon, align 4
  %idxprom81 = sext i32 %46 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i32 0, i64 %idxprom81
  %47 = load i32, i32* %arrayidx82, align 4
  store i32 %47, i32* %last_worm_origin_dragon, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* %origin, align 4
  %49 = load i32, i32* %d1.addr, align 4
  %cmp83 = icmp eq i32 %48, %49
  br i1 %cmp83, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %while.end
  %50 = load i32, i32* %d2.addr, align 4
  %51 = load i32, i32* %last_worm_origin_dragon, align 4
  %idxprom86 = sext i32 %51 to i64
  %arrayidx87 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i32 0, i64 %idxprom86
  store i32 %50, i32* %arrayidx87, align 4
  br label %if.end.91

if.else.88:                                       ; preds = %while.end
  %52 = load i32, i32* %d1.addr, align 4
  %53 = load i32, i32* %last_worm_origin_dragon, align 4
  %idxprom89 = sext i32 %53 to i64
  %arrayidx90 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i32 0, i64 %idxprom89
  store i32 %52, i32* %arrayidx90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.85
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %54 = load i32, i32* %ii, align 4
  %cmp92 = icmp slt i32 %54, 400
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %ii, align 4
  %idxprom94 = sext i32 %55 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %56 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %56 to i32
  %cmp97 = icmp ne i32 %conv96, 3
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.115

land.lhs.true.99:                                 ; preds = %for.body
  %57 = load i32, i32* %ii, align 4
  %idxprom100 = sext i32 %57 to i64
  %arrayidx101 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom100
  %origin102 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx101, i32 0, i32 2
  %58 = load i32, i32* %origin102, align 4
  %59 = load i32, i32* %d1.addr, align 4
  %cmp103 = icmp eq i32 %58, %59
  br i1 %cmp103, label %if.then.111, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.99
  %60 = load i32, i32* %ii, align 4
  %idxprom106 = sext i32 %60 to i64
  %arrayidx107 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom106
  %origin108 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx107, i32 0, i32 2
  %61 = load i32, i32* %origin108, align 4
  %62 = load i32, i32* %d2.addr, align 4
  %cmp109 = icmp eq i32 %61, %62
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %lor.lhs.false.105, %land.lhs.true.99
  %63 = load i32, i32* %origin, align 4
  %64 = load i32, i32* %ii, align 4
  %idxprom112 = sext i32 %64 to i64
  %arrayidx113 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom112
  %origin114 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx113, i32 0, i32 2
  store i32 %63, i32* %origin114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %lor.lhs.false.105, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %65 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dragon_escape(i8* %goal, i32 %color, i8* %escape_value) #0 {
entry:
  %goal.addr = alloca i8*, align 8
  %color.addr = alloca i32, align 4
  %escape_value.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %queue = alloca [361 x i32], align 16
  %queue_start = alloca i32, align 4
  %queue_end = alloca i32, align 4
  %other = alloca i32, align 4
  %distance = alloca i32, align 4
  %escape_potential = alloca i32, align 4
  %save_queue_end = alloca i32, align 4
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %escape_value, i8** %escape_value.addr, align 8
  store i32 0, i32* %queue_start, align 4
  store i32 0, i32* %queue_end, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %escape_potential, align 4
  %1 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1721, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @dragon_escape.mx_initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @dragon_escape.mx to i8*), i8 0, i64 1600, i32 16, i1 false)
  store i32 1, i32* @dragon_escape.mx_initialized, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %ii, align 4
  %cmp4 = icmp slt i32 %4, 400
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %ii, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %goal.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* %ii, align 4
  %11 = load i32, i32* %queue_end, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %queue_end, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom12
  store i32 %10, i32* %arrayidx13, align 4
  %12 = load i32, i32* %ii, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom14
  store i32 1, i32* %arrayidx15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %13 = load i32, i32* %ii, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %distance, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.719, %for.end
  %14 = load i32, i32* %distance, align 4
  %cmp19 = icmp sle i32 %14, 4
  br i1 %cmp19, label %for.body.21, label %for.end.721

for.body.21:                                      ; preds = %for.cond.18
  %15 = load i32, i32* %queue_end, align 4
  store i32 %15, i32* %save_queue_end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.718, %if.then.57, %for.body.21
  %16 = load i32, i32* %queue_start, align 4
  %17 = load i32, i32* %save_queue_end, align 4
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %queue_start, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom24
  %19 = load i32, i32* %arrayidx25, align 4
  store i32 %19, i32* %ii, align 4
  %20 = load i32, i32* %queue_start, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* %queue_start, align 4
  %21 = load i32, i32* %color.addr, align 4
  %cmp27 = icmp eq i32 %21, 1
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false.40

land.lhs.true.29:                                 ; preds = %while.body
  %22 = load i32, i32* %ii, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom30
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx31, i32 0, i32 8
  %23 = load i8, i8* %type, align 1
  %conv32 = sext i8 %23 to i32
  %and = and i32 %conv32, 4
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.57, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.29
  %24 = load i32, i32* %ii, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom35
  %cut = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx36, i32 0, i32 11
  %25 = load i8, i8* %cut, align 1
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then.57, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.34, %while.body
  %26 = load i32, i32* %color.addr, align 4
  %cmp41 = icmp eq i32 %26, 2
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.58

land.lhs.true.43:                                 ; preds = %lor.lhs.false.40
  %27 = load i32, i32* %ii, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom44
  %type46 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx45, i32 0, i32 8
  %28 = load i8, i8* %type46, align 1
  %conv47 = sext i8 %28 to i32
  %and48 = and i32 %conv47, 4
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.57, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.43
  %29 = load i32, i32* %ii, align 4
  %idxprom51 = sext i32 %29 to i64
  %arrayidx52 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom51
  %cut53 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx52, i32 0, i32 11
  %30 = load i8, i8* %cut53, align 1
  %conv54 = sext i8 %30 to i32
  %cmp55 = icmp eq i32 %conv54, 1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.50, %land.lhs.true.43, %lor.lhs.false.34, %land.lhs.true.29
  br label %while.cond

if.end.58:                                        ; preds = %lor.lhs.false.50, %lor.lhs.false.40
  %31 = load i32, i32* %distance, align 4
  %cmp59 = icmp eq i32 %31, 4
  br i1 %cmp59, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %if.end.58
  %32 = load i32, i32* %ii, align 4
  %idxprom62 = sext i32 %32 to i64
  %33 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %33, i64 %idxprom62
  %34 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %34 to i32
  %35 = load i32, i32* %escape_potential, align 4
  %add = add nsw i32 %35, %conv64
  store i32 %add, i32* %escape_potential, align 4
  br label %if.end.718

if.else.65:                                       ; preds = %if.end.58
  %36 = load i32, i32* %ii, align 4
  %add66 = add nsw i32 %36, 20
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %37 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %37 to i32
  %cmp70 = icmp ne i32 %conv69, 3
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.145

land.lhs.true.72:                                 ; preds = %if.else.65
  %38 = load i32, i32* %ii, align 4
  %add73 = add nsw i32 %38, 20
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom74
  %39 = load i32, i32* %arrayidx75, align 4
  %tobool76 = icmp ne i32 %39, 0
  br i1 %tobool76, label %if.end.145, label %land.lhs.true.77

land.lhs.true.77:                                 ; preds = %land.lhs.true.72
  %40 = load i32, i32* %ii, align 4
  %add78 = add nsw i32 %40, 20
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %41 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %41 to i32
  %42 = load i32, i32* %color.addr, align 4
  %cmp82 = icmp eq i32 %conv81, %42
  br i1 %cmp82, label %if.then.137, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %land.lhs.true.77
  %43 = load i32, i32* %ii, align 4
  %add85 = add nsw i32 %43, 20
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom86
  %44 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %44 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.145

land.lhs.true.91:                                 ; preds = %lor.lhs.false.84
  %45 = load i32, i32* %ii, align 4
  %add92 = add nsw i32 %45, 20
  %add93 = add nsw i32 %add92, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %46 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %46 to i32
  %cmp97 = icmp ne i32 %conv96, 3
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.145

land.lhs.true.99:                                 ; preds = %land.lhs.true.91
  %47 = load i32, i32* %ii, align 4
  %add100 = add nsw i32 %47, 20
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom102
  %48 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %48 to i32
  %49 = load i32, i32* %other, align 4
  %cmp105 = icmp ne i32 %conv104, %49
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.145

land.lhs.true.107:                                ; preds = %land.lhs.true.99
  %50 = load i32, i32* %ii, align 4
  %add108 = add nsw i32 %50, 40
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom109
  %51 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %51 to i32
  %cmp112 = icmp ne i32 %conv111, 3
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.145

land.lhs.true.114:                                ; preds = %land.lhs.true.107
  %52 = load i32, i32* %ii, align 4
  %add115 = add nsw i32 %52, 40
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom116
  %53 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %53 to i32
  %54 = load i32, i32* %other, align 4
  %cmp119 = icmp ne i32 %conv118, %54
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.145

land.lhs.true.121:                                ; preds = %land.lhs.true.114
  %55 = load i32, i32* %ii, align 4
  %add122 = add nsw i32 %55, 20
  %sub123 = sub nsw i32 %add122, 1
  %idxprom124 = sext i32 %sub123 to i64
  %arrayidx125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom124
  %56 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %56 to i32
  %cmp127 = icmp ne i32 %conv126, 3
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.145

land.lhs.true.129:                                ; preds = %land.lhs.true.121
  %57 = load i32, i32* %ii, align 4
  %add130 = add nsw i32 %57, 20
  %sub131 = sub nsw i32 %add130, 1
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom132
  %58 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %58 to i32
  %59 = load i32, i32* %other, align 4
  %cmp135 = icmp ne i32 %conv134, %59
  br i1 %cmp135, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %land.lhs.true.129, %land.lhs.true.77
  %60 = load i32, i32* %ii, align 4
  %add138 = add nsw i32 %60, 20
  %61 = load i32, i32* %queue_end, align 4
  %inc139 = add nsw i32 %61, 1
  store i32 %inc139, i32* %queue_end, align 4
  %idxprom140 = sext i32 %61 to i64
  %arrayidx141 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom140
  store i32 %add138, i32* %arrayidx141, align 4
  %62 = load i32, i32* %ii, align 4
  %add142 = add nsw i32 %62, 20
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom143
  store i32 1, i32* %arrayidx144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.137, %land.lhs.true.129, %land.lhs.true.121, %land.lhs.true.114, %land.lhs.true.107, %land.lhs.true.99, %land.lhs.true.91, %lor.lhs.false.84, %land.lhs.true.72, %if.else.65
  %63 = load i32, i32* %ii, align 4
  %sub146 = sub nsw i32 %63, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom147
  %64 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %64 to i32
  %cmp150 = icmp ne i32 %conv149, 3
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.225

land.lhs.true.152:                                ; preds = %if.end.145
  %65 = load i32, i32* %ii, align 4
  %sub153 = sub nsw i32 %65, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom154
  %66 = load i32, i32* %arrayidx155, align 4
  %tobool156 = icmp ne i32 %66, 0
  br i1 %tobool156, label %if.end.225, label %land.lhs.true.157

land.lhs.true.157:                                ; preds = %land.lhs.true.152
  %67 = load i32, i32* %ii, align 4
  %sub158 = sub nsw i32 %67, 1
  %idxprom159 = sext i32 %sub158 to i64
  %arrayidx160 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom159
  %68 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %68 to i32
  %69 = load i32, i32* %color.addr, align 4
  %cmp162 = icmp eq i32 %conv161, %69
  br i1 %cmp162, label %if.then.217, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %land.lhs.true.157
  %70 = load i32, i32* %ii, align 4
  %sub165 = sub nsw i32 %70, 1
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom166
  %71 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %71 to i32
  %cmp169 = icmp eq i32 %conv168, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.225

land.lhs.true.171:                                ; preds = %lor.lhs.false.164
  %72 = load i32, i32* %ii, align 4
  %add172 = add nsw i32 %72, 20
  %sub173 = sub nsw i32 %add172, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom174
  %73 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %73 to i32
  %cmp177 = icmp ne i32 %conv176, 3
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.225

land.lhs.true.179:                                ; preds = %land.lhs.true.171
  %74 = load i32, i32* %ii, align 4
  %add180 = add nsw i32 %74, 20
  %sub181 = sub nsw i32 %add180, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom182
  %75 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %75 to i32
  %76 = load i32, i32* %other, align 4
  %cmp185 = icmp ne i32 %conv184, %76
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.225

land.lhs.true.187:                                ; preds = %land.lhs.true.179
  %77 = load i32, i32* %ii, align 4
  %sub188 = sub nsw i32 %77, 2
  %idxprom189 = sext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom189
  %78 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %78 to i32
  %cmp192 = icmp ne i32 %conv191, 3
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.225

land.lhs.true.194:                                ; preds = %land.lhs.true.187
  %79 = load i32, i32* %ii, align 4
  %sub195 = sub nsw i32 %79, 2
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom196
  %80 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %80 to i32
  %81 = load i32, i32* %other, align 4
  %cmp199 = icmp ne i32 %conv198, %81
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.225

land.lhs.true.201:                                ; preds = %land.lhs.true.194
  %82 = load i32, i32* %ii, align 4
  %sub202 = sub nsw i32 %82, 20
  %sub203 = sub nsw i32 %sub202, 1
  %idxprom204 = sext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom204
  %83 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %83 to i32
  %cmp207 = icmp ne i32 %conv206, 3
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.225

land.lhs.true.209:                                ; preds = %land.lhs.true.201
  %84 = load i32, i32* %ii, align 4
  %sub210 = sub nsw i32 %84, 20
  %sub211 = sub nsw i32 %sub210, 1
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom212
  %85 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %85 to i32
  %86 = load i32, i32* %other, align 4
  %cmp215 = icmp ne i32 %conv214, %86
  br i1 %cmp215, label %if.then.217, label %if.end.225

if.then.217:                                      ; preds = %land.lhs.true.209, %land.lhs.true.157
  %87 = load i32, i32* %ii, align 4
  %sub218 = sub nsw i32 %87, 1
  %88 = load i32, i32* %queue_end, align 4
  %inc219 = add nsw i32 %88, 1
  store i32 %inc219, i32* %queue_end, align 4
  %idxprom220 = sext i32 %88 to i64
  %arrayidx221 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom220
  store i32 %sub218, i32* %arrayidx221, align 4
  %89 = load i32, i32* %ii, align 4
  %sub222 = sub nsw i32 %89, 1
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom223
  store i32 1, i32* %arrayidx224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.217, %land.lhs.true.209, %land.lhs.true.201, %land.lhs.true.194, %land.lhs.true.187, %land.lhs.true.179, %land.lhs.true.171, %lor.lhs.false.164, %land.lhs.true.152, %if.end.145
  %90 = load i32, i32* %ii, align 4
  %sub226 = sub nsw i32 %90, 20
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom227
  %91 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %91 to i32
  %cmp230 = icmp ne i32 %conv229, 3
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.305

land.lhs.true.232:                                ; preds = %if.end.225
  %92 = load i32, i32* %ii, align 4
  %sub233 = sub nsw i32 %92, 20
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom234
  %93 = load i32, i32* %arrayidx235, align 4
  %tobool236 = icmp ne i32 %93, 0
  br i1 %tobool236, label %if.end.305, label %land.lhs.true.237

land.lhs.true.237:                                ; preds = %land.lhs.true.232
  %94 = load i32, i32* %ii, align 4
  %sub238 = sub nsw i32 %94, 20
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom239
  %95 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %95 to i32
  %96 = load i32, i32* %color.addr, align 4
  %cmp242 = icmp eq i32 %conv241, %96
  br i1 %cmp242, label %if.then.297, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %land.lhs.true.237
  %97 = load i32, i32* %ii, align 4
  %sub245 = sub nsw i32 %97, 20
  %idxprom246 = sext i32 %sub245 to i64
  %arrayidx247 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom246
  %98 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %98 to i32
  %cmp249 = icmp eq i32 %conv248, 0
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.305

land.lhs.true.251:                                ; preds = %lor.lhs.false.244
  %99 = load i32, i32* %ii, align 4
  %sub252 = sub nsw i32 %99, 20
  %sub253 = sub nsw i32 %sub252, 1
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom254
  %100 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %100 to i32
  %cmp257 = icmp ne i32 %conv256, 3
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.305

land.lhs.true.259:                                ; preds = %land.lhs.true.251
  %101 = load i32, i32* %ii, align 4
  %sub260 = sub nsw i32 %101, 20
  %sub261 = sub nsw i32 %sub260, 1
  %idxprom262 = sext i32 %sub261 to i64
  %arrayidx263 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom262
  %102 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %102 to i32
  %103 = load i32, i32* %other, align 4
  %cmp265 = icmp ne i32 %conv264, %103
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.305

land.lhs.true.267:                                ; preds = %land.lhs.true.259
  %104 = load i32, i32* %ii, align 4
  %sub268 = sub nsw i32 %104, 40
  %idxprom269 = sext i32 %sub268 to i64
  %arrayidx270 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom269
  %105 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %105 to i32
  %cmp272 = icmp ne i32 %conv271, 3
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.305

land.lhs.true.274:                                ; preds = %land.lhs.true.267
  %106 = load i32, i32* %ii, align 4
  %sub275 = sub nsw i32 %106, 40
  %idxprom276 = sext i32 %sub275 to i64
  %arrayidx277 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom276
  %107 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %107 to i32
  %108 = load i32, i32* %other, align 4
  %cmp279 = icmp ne i32 %conv278, %108
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.305

land.lhs.true.281:                                ; preds = %land.lhs.true.274
  %109 = load i32, i32* %ii, align 4
  %sub282 = sub nsw i32 %109, 20
  %add283 = add nsw i32 %sub282, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom284
  %110 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %110 to i32
  %cmp287 = icmp ne i32 %conv286, 3
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.305

land.lhs.true.289:                                ; preds = %land.lhs.true.281
  %111 = load i32, i32* %ii, align 4
  %sub290 = sub nsw i32 %111, 20
  %add291 = add nsw i32 %sub290, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom292
  %112 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %112 to i32
  %113 = load i32, i32* %other, align 4
  %cmp295 = icmp ne i32 %conv294, %113
  br i1 %cmp295, label %if.then.297, label %if.end.305

if.then.297:                                      ; preds = %land.lhs.true.289, %land.lhs.true.237
  %114 = load i32, i32* %ii, align 4
  %sub298 = sub nsw i32 %114, 20
  %115 = load i32, i32* %queue_end, align 4
  %inc299 = add nsw i32 %115, 1
  store i32 %inc299, i32* %queue_end, align 4
  %idxprom300 = sext i32 %115 to i64
  %arrayidx301 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom300
  store i32 %sub298, i32* %arrayidx301, align 4
  %116 = load i32, i32* %ii, align 4
  %sub302 = sub nsw i32 %116, 20
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom303
  store i32 1, i32* %arrayidx304, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.297, %land.lhs.true.289, %land.lhs.true.281, %land.lhs.true.274, %land.lhs.true.267, %land.lhs.true.259, %land.lhs.true.251, %lor.lhs.false.244, %land.lhs.true.232, %if.end.225
  %117 = load i32, i32* %ii, align 4
  %add306 = add nsw i32 %117, 1
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom307
  %118 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %118 to i32
  %cmp310 = icmp ne i32 %conv309, 3
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.385

land.lhs.true.312:                                ; preds = %if.end.305
  %119 = load i32, i32* %ii, align 4
  %add313 = add nsw i32 %119, 1
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom314
  %120 = load i32, i32* %arrayidx315, align 4
  %tobool316 = icmp ne i32 %120, 0
  br i1 %tobool316, label %if.end.385, label %land.lhs.true.317

land.lhs.true.317:                                ; preds = %land.lhs.true.312
  %121 = load i32, i32* %ii, align 4
  %add318 = add nsw i32 %121, 1
  %idxprom319 = sext i32 %add318 to i64
  %arrayidx320 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom319
  %122 = load i8, i8* %arrayidx320, align 1
  %conv321 = zext i8 %122 to i32
  %123 = load i32, i32* %color.addr, align 4
  %cmp322 = icmp eq i32 %conv321, %123
  br i1 %cmp322, label %if.then.377, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %land.lhs.true.317
  %124 = load i32, i32* %ii, align 4
  %add325 = add nsw i32 %124, 1
  %idxprom326 = sext i32 %add325 to i64
  %arrayidx327 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom326
  %125 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %125 to i32
  %cmp329 = icmp eq i32 %conv328, 0
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.385

land.lhs.true.331:                                ; preds = %lor.lhs.false.324
  %126 = load i32, i32* %ii, align 4
  %sub332 = sub nsw i32 %126, 20
  %add333 = add nsw i32 %sub332, 1
  %idxprom334 = sext i32 %add333 to i64
  %arrayidx335 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom334
  %127 = load i8, i8* %arrayidx335, align 1
  %conv336 = zext i8 %127 to i32
  %cmp337 = icmp ne i32 %conv336, 3
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.385

land.lhs.true.339:                                ; preds = %land.lhs.true.331
  %128 = load i32, i32* %ii, align 4
  %sub340 = sub nsw i32 %128, 20
  %add341 = add nsw i32 %sub340, 1
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom342
  %129 = load i8, i8* %arrayidx343, align 1
  %conv344 = zext i8 %129 to i32
  %130 = load i32, i32* %other, align 4
  %cmp345 = icmp ne i32 %conv344, %130
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.385

land.lhs.true.347:                                ; preds = %land.lhs.true.339
  %131 = load i32, i32* %ii, align 4
  %add348 = add nsw i32 %131, 2
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom349
  %132 = load i8, i8* %arrayidx350, align 1
  %conv351 = zext i8 %132 to i32
  %cmp352 = icmp ne i32 %conv351, 3
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.385

land.lhs.true.354:                                ; preds = %land.lhs.true.347
  %133 = load i32, i32* %ii, align 4
  %add355 = add nsw i32 %133, 2
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom356
  %134 = load i8, i8* %arrayidx357, align 1
  %conv358 = zext i8 %134 to i32
  %135 = load i32, i32* %other, align 4
  %cmp359 = icmp ne i32 %conv358, %135
  br i1 %cmp359, label %land.lhs.true.361, label %if.end.385

land.lhs.true.361:                                ; preds = %land.lhs.true.354
  %136 = load i32, i32* %ii, align 4
  %add362 = add nsw i32 %136, 20
  %add363 = add nsw i32 %add362, 1
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom364
  %137 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %137 to i32
  %cmp367 = icmp ne i32 %conv366, 3
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.385

land.lhs.true.369:                                ; preds = %land.lhs.true.361
  %138 = load i32, i32* %ii, align 4
  %add370 = add nsw i32 %138, 20
  %add371 = add nsw i32 %add370, 1
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom372
  %139 = load i8, i8* %arrayidx373, align 1
  %conv374 = zext i8 %139 to i32
  %140 = load i32, i32* %other, align 4
  %cmp375 = icmp ne i32 %conv374, %140
  br i1 %cmp375, label %if.then.377, label %if.end.385

if.then.377:                                      ; preds = %land.lhs.true.369, %land.lhs.true.317
  %141 = load i32, i32* %ii, align 4
  %add378 = add nsw i32 %141, 1
  %142 = load i32, i32* %queue_end, align 4
  %inc379 = add nsw i32 %142, 1
  store i32 %inc379, i32* %queue_end, align 4
  %idxprom380 = sext i32 %142 to i64
  %arrayidx381 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom380
  store i32 %add378, i32* %arrayidx381, align 4
  %143 = load i32, i32* %ii, align 4
  %add382 = add nsw i32 %143, 1
  %idxprom383 = sext i32 %add382 to i64
  %arrayidx384 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom383
  store i32 1, i32* %arrayidx384, align 4
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.377, %land.lhs.true.369, %land.lhs.true.361, %land.lhs.true.354, %land.lhs.true.347, %land.lhs.true.339, %land.lhs.true.331, %lor.lhs.false.324, %land.lhs.true.312, %if.end.305
  %144 = load i32, i32* %distance, align 4
  %cmp386 = icmp eq i32 %144, 0
  br i1 %cmp386, label %if.then.388, label %if.end.717

if.then.388:                                      ; preds = %if.end.385
  %145 = load i32, i32* %ii, align 4
  %add389 = add nsw i32 %145, 20
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom390
  %146 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %146 to i32
  %cmp393 = icmp eq i32 %conv392, 0
  br i1 %cmp393, label %land.lhs.true.395, label %if.end.470

land.lhs.true.395:                                ; preds = %if.then.388
  %147 = load i32, i32* %ii, align 4
  %sub396 = sub nsw i32 %147, 1
  %idxprom397 = sext i32 %sub396 to i64
  %arrayidx398 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom397
  %148 = load i8, i8* %arrayidx398, align 1
  %conv399 = zext i8 %148 to i32
  %cmp400 = icmp eq i32 %conv399, 0
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.470

land.lhs.true.402:                                ; preds = %land.lhs.true.395
  %149 = load i32, i32* %ii, align 4
  %add403 = add nsw i32 %149, 20
  %sub404 = sub nsw i32 %add403, 1
  %idxprom405 = sext i32 %sub404 to i64
  %arrayidx406 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom405
  %150 = load i32, i32* %arrayidx406, align 4
  %tobool407 = icmp ne i32 %150, 0
  br i1 %tobool407, label %if.end.470, label %land.lhs.true.408

land.lhs.true.408:                                ; preds = %land.lhs.true.402
  %151 = load i32, i32* %ii, align 4
  %add409 = add nsw i32 %151, 20
  %sub410 = sub nsw i32 %add409, 1
  %idxprom411 = sext i32 %sub410 to i64
  %arrayidx412 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom411
  %152 = load i8, i8* %arrayidx412, align 1
  %conv413 = zext i8 %152 to i32
  %153 = load i32, i32* %color.addr, align 4
  %cmp414 = icmp eq i32 %conv413, %153
  br i1 %cmp414, label %if.then.460, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %land.lhs.true.408
  %154 = load i32, i32* %ii, align 4
  %add417 = add nsw i32 %154, 20
  %sub418 = sub nsw i32 %add417, 1
  %idxprom419 = sext i32 %sub418 to i64
  %arrayidx420 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom419
  %155 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %155 to i32
  %cmp422 = icmp eq i32 %conv421, 0
  br i1 %cmp422, label %land.lhs.true.424, label %if.end.470

land.lhs.true.424:                                ; preds = %lor.lhs.false.416
  %156 = load i32, i32* %ii, align 4
  %add425 = add nsw i32 %156, 20
  %sub426 = sub nsw i32 %add425, 1
  %add427 = add nsw i32 %sub426, 20
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom428
  %157 = load i8, i8* %arrayidx429, align 1
  %conv430 = zext i8 %157 to i32
  %cmp431 = icmp ne i32 %conv430, 3
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.470

land.lhs.true.433:                                ; preds = %land.lhs.true.424
  %158 = load i32, i32* %ii, align 4
  %add434 = add nsw i32 %158, 20
  %sub435 = sub nsw i32 %add434, 1
  %add436 = add nsw i32 %sub435, 20
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom437
  %159 = load i8, i8* %arrayidx438, align 1
  %conv439 = zext i8 %159 to i32
  %160 = load i32, i32* %other, align 4
  %cmp440 = icmp ne i32 %conv439, %160
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.470

land.lhs.true.442:                                ; preds = %land.lhs.true.433
  %161 = load i32, i32* %ii, align 4
  %add443 = add nsw i32 %161, 20
  %sub444 = sub nsw i32 %add443, 1
  %sub445 = sub nsw i32 %sub444, 1
  %idxprom446 = sext i32 %sub445 to i64
  %arrayidx447 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom446
  %162 = load i8, i8* %arrayidx447, align 1
  %conv448 = zext i8 %162 to i32
  %cmp449 = icmp ne i32 %conv448, 3
  br i1 %cmp449, label %land.lhs.true.451, label %if.end.470

land.lhs.true.451:                                ; preds = %land.lhs.true.442
  %163 = load i32, i32* %ii, align 4
  %add452 = add nsw i32 %163, 20
  %sub453 = sub nsw i32 %add452, 1
  %sub454 = sub nsw i32 %sub453, 1
  %idxprom455 = sext i32 %sub454 to i64
  %arrayidx456 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom455
  %164 = load i8, i8* %arrayidx456, align 1
  %conv457 = zext i8 %164 to i32
  %165 = load i32, i32* %other, align 4
  %cmp458 = icmp ne i32 %conv457, %165
  br i1 %cmp458, label %if.then.460, label %if.end.470

if.then.460:                                      ; preds = %land.lhs.true.451, %land.lhs.true.408
  %166 = load i32, i32* %ii, align 4
  %add461 = add nsw i32 %166, 20
  %sub462 = sub nsw i32 %add461, 1
  %167 = load i32, i32* %queue_end, align 4
  %inc463 = add nsw i32 %167, 1
  store i32 %inc463, i32* %queue_end, align 4
  %idxprom464 = sext i32 %167 to i64
  %arrayidx465 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom464
  store i32 %sub462, i32* %arrayidx465, align 4
  %168 = load i32, i32* %ii, align 4
  %add466 = add nsw i32 %168, 20
  %sub467 = sub nsw i32 %add466, 1
  %idxprom468 = sext i32 %sub467 to i64
  %arrayidx469 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom468
  store i32 1, i32* %arrayidx469, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.460, %land.lhs.true.451, %land.lhs.true.442, %land.lhs.true.433, %land.lhs.true.424, %lor.lhs.false.416, %land.lhs.true.402, %land.lhs.true.395, %if.then.388
  %169 = load i32, i32* %ii, align 4
  %sub471 = sub nsw i32 %169, 1
  %idxprom472 = sext i32 %sub471 to i64
  %arrayidx473 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom472
  %170 = load i8, i8* %arrayidx473, align 1
  %conv474 = zext i8 %170 to i32
  %cmp475 = icmp eq i32 %conv474, 0
  br i1 %cmp475, label %land.lhs.true.477, label %if.end.552

land.lhs.true.477:                                ; preds = %if.end.470
  %171 = load i32, i32* %ii, align 4
  %sub478 = sub nsw i32 %171, 20
  %idxprom479 = sext i32 %sub478 to i64
  %arrayidx480 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom479
  %172 = load i8, i8* %arrayidx480, align 1
  %conv481 = zext i8 %172 to i32
  %cmp482 = icmp eq i32 %conv481, 0
  br i1 %cmp482, label %land.lhs.true.484, label %if.end.552

land.lhs.true.484:                                ; preds = %land.lhs.true.477
  %173 = load i32, i32* %ii, align 4
  %sub485 = sub nsw i32 %173, 20
  %sub486 = sub nsw i32 %sub485, 1
  %idxprom487 = sext i32 %sub486 to i64
  %arrayidx488 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom487
  %174 = load i32, i32* %arrayidx488, align 4
  %tobool489 = icmp ne i32 %174, 0
  br i1 %tobool489, label %if.end.552, label %land.lhs.true.490

land.lhs.true.490:                                ; preds = %land.lhs.true.484
  %175 = load i32, i32* %ii, align 4
  %sub491 = sub nsw i32 %175, 20
  %sub492 = sub nsw i32 %sub491, 1
  %idxprom493 = sext i32 %sub492 to i64
  %arrayidx494 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom493
  %176 = load i8, i8* %arrayidx494, align 1
  %conv495 = zext i8 %176 to i32
  %177 = load i32, i32* %color.addr, align 4
  %cmp496 = icmp eq i32 %conv495, %177
  br i1 %cmp496, label %if.then.542, label %lor.lhs.false.498

lor.lhs.false.498:                                ; preds = %land.lhs.true.490
  %178 = load i32, i32* %ii, align 4
  %sub499 = sub nsw i32 %178, 20
  %sub500 = sub nsw i32 %sub499, 1
  %idxprom501 = sext i32 %sub500 to i64
  %arrayidx502 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom501
  %179 = load i8, i8* %arrayidx502, align 1
  %conv503 = zext i8 %179 to i32
  %cmp504 = icmp eq i32 %conv503, 0
  br i1 %cmp504, label %land.lhs.true.506, label %if.end.552

land.lhs.true.506:                                ; preds = %lor.lhs.false.498
  %180 = load i32, i32* %ii, align 4
  %sub507 = sub nsw i32 %180, 20
  %sub508 = sub nsw i32 %sub507, 1
  %sub509 = sub nsw i32 %sub508, 1
  %idxprom510 = sext i32 %sub509 to i64
  %arrayidx511 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom510
  %181 = load i8, i8* %arrayidx511, align 1
  %conv512 = zext i8 %181 to i32
  %cmp513 = icmp ne i32 %conv512, 3
  br i1 %cmp513, label %land.lhs.true.515, label %if.end.552

land.lhs.true.515:                                ; preds = %land.lhs.true.506
  %182 = load i32, i32* %ii, align 4
  %sub516 = sub nsw i32 %182, 20
  %sub517 = sub nsw i32 %sub516, 1
  %sub518 = sub nsw i32 %sub517, 1
  %idxprom519 = sext i32 %sub518 to i64
  %arrayidx520 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom519
  %183 = load i8, i8* %arrayidx520, align 1
  %conv521 = zext i8 %183 to i32
  %184 = load i32, i32* %other, align 4
  %cmp522 = icmp ne i32 %conv521, %184
  br i1 %cmp522, label %land.lhs.true.524, label %if.end.552

land.lhs.true.524:                                ; preds = %land.lhs.true.515
  %185 = load i32, i32* %ii, align 4
  %sub525 = sub nsw i32 %185, 20
  %sub526 = sub nsw i32 %sub525, 1
  %sub527 = sub nsw i32 %sub526, 20
  %idxprom528 = sext i32 %sub527 to i64
  %arrayidx529 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom528
  %186 = load i8, i8* %arrayidx529, align 1
  %conv530 = zext i8 %186 to i32
  %cmp531 = icmp ne i32 %conv530, 3
  br i1 %cmp531, label %land.lhs.true.533, label %if.end.552

land.lhs.true.533:                                ; preds = %land.lhs.true.524
  %187 = load i32, i32* %ii, align 4
  %sub534 = sub nsw i32 %187, 20
  %sub535 = sub nsw i32 %sub534, 1
  %sub536 = sub nsw i32 %sub535, 20
  %idxprom537 = sext i32 %sub536 to i64
  %arrayidx538 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom537
  %188 = load i8, i8* %arrayidx538, align 1
  %conv539 = zext i8 %188 to i32
  %189 = load i32, i32* %other, align 4
  %cmp540 = icmp ne i32 %conv539, %189
  br i1 %cmp540, label %if.then.542, label %if.end.552

if.then.542:                                      ; preds = %land.lhs.true.533, %land.lhs.true.490
  %190 = load i32, i32* %ii, align 4
  %sub543 = sub nsw i32 %190, 20
  %sub544 = sub nsw i32 %sub543, 1
  %191 = load i32, i32* %queue_end, align 4
  %inc545 = add nsw i32 %191, 1
  store i32 %inc545, i32* %queue_end, align 4
  %idxprom546 = sext i32 %191 to i64
  %arrayidx547 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom546
  store i32 %sub544, i32* %arrayidx547, align 4
  %192 = load i32, i32* %ii, align 4
  %sub548 = sub nsw i32 %192, 20
  %sub549 = sub nsw i32 %sub548, 1
  %idxprom550 = sext i32 %sub549 to i64
  %arrayidx551 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom550
  store i32 1, i32* %arrayidx551, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.542, %land.lhs.true.533, %land.lhs.true.524, %land.lhs.true.515, %land.lhs.true.506, %lor.lhs.false.498, %land.lhs.true.484, %land.lhs.true.477, %if.end.470
  %193 = load i32, i32* %ii, align 4
  %sub553 = sub nsw i32 %193, 20
  %idxprom554 = sext i32 %sub553 to i64
  %arrayidx555 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom554
  %194 = load i8, i8* %arrayidx555, align 1
  %conv556 = zext i8 %194 to i32
  %cmp557 = icmp eq i32 %conv556, 0
  br i1 %cmp557, label %land.lhs.true.559, label %if.end.634

land.lhs.true.559:                                ; preds = %if.end.552
  %195 = load i32, i32* %ii, align 4
  %add560 = add nsw i32 %195, 1
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom561
  %196 = load i8, i8* %arrayidx562, align 1
  %conv563 = zext i8 %196 to i32
  %cmp564 = icmp eq i32 %conv563, 0
  br i1 %cmp564, label %land.lhs.true.566, label %if.end.634

land.lhs.true.566:                                ; preds = %land.lhs.true.559
  %197 = load i32, i32* %ii, align 4
  %sub567 = sub nsw i32 %197, 20
  %add568 = add nsw i32 %sub567, 1
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom569
  %198 = load i32, i32* %arrayidx570, align 4
  %tobool571 = icmp ne i32 %198, 0
  br i1 %tobool571, label %if.end.634, label %land.lhs.true.572

land.lhs.true.572:                                ; preds = %land.lhs.true.566
  %199 = load i32, i32* %ii, align 4
  %sub573 = sub nsw i32 %199, 20
  %add574 = add nsw i32 %sub573, 1
  %idxprom575 = sext i32 %add574 to i64
  %arrayidx576 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom575
  %200 = load i8, i8* %arrayidx576, align 1
  %conv577 = zext i8 %200 to i32
  %201 = load i32, i32* %color.addr, align 4
  %cmp578 = icmp eq i32 %conv577, %201
  br i1 %cmp578, label %if.then.624, label %lor.lhs.false.580

lor.lhs.false.580:                                ; preds = %land.lhs.true.572
  %202 = load i32, i32* %ii, align 4
  %sub581 = sub nsw i32 %202, 20
  %add582 = add nsw i32 %sub581, 1
  %idxprom583 = sext i32 %add582 to i64
  %arrayidx584 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom583
  %203 = load i8, i8* %arrayidx584, align 1
  %conv585 = zext i8 %203 to i32
  %cmp586 = icmp eq i32 %conv585, 0
  br i1 %cmp586, label %land.lhs.true.588, label %if.end.634

land.lhs.true.588:                                ; preds = %lor.lhs.false.580
  %204 = load i32, i32* %ii, align 4
  %sub589 = sub nsw i32 %204, 20
  %add590 = add nsw i32 %sub589, 1
  %sub591 = sub nsw i32 %add590, 20
  %idxprom592 = sext i32 %sub591 to i64
  %arrayidx593 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom592
  %205 = load i8, i8* %arrayidx593, align 1
  %conv594 = zext i8 %205 to i32
  %cmp595 = icmp ne i32 %conv594, 3
  br i1 %cmp595, label %land.lhs.true.597, label %if.end.634

land.lhs.true.597:                                ; preds = %land.lhs.true.588
  %206 = load i32, i32* %ii, align 4
  %sub598 = sub nsw i32 %206, 20
  %add599 = add nsw i32 %sub598, 1
  %sub600 = sub nsw i32 %add599, 20
  %idxprom601 = sext i32 %sub600 to i64
  %arrayidx602 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom601
  %207 = load i8, i8* %arrayidx602, align 1
  %conv603 = zext i8 %207 to i32
  %208 = load i32, i32* %other, align 4
  %cmp604 = icmp ne i32 %conv603, %208
  br i1 %cmp604, label %land.lhs.true.606, label %if.end.634

land.lhs.true.606:                                ; preds = %land.lhs.true.597
  %209 = load i32, i32* %ii, align 4
  %sub607 = sub nsw i32 %209, 20
  %add608 = add nsw i32 %sub607, 1
  %add609 = add nsw i32 %add608, 1
  %idxprom610 = sext i32 %add609 to i64
  %arrayidx611 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom610
  %210 = load i8, i8* %arrayidx611, align 1
  %conv612 = zext i8 %210 to i32
  %cmp613 = icmp ne i32 %conv612, 3
  br i1 %cmp613, label %land.lhs.true.615, label %if.end.634

land.lhs.true.615:                                ; preds = %land.lhs.true.606
  %211 = load i32, i32* %ii, align 4
  %sub616 = sub nsw i32 %211, 20
  %add617 = add nsw i32 %sub616, 1
  %add618 = add nsw i32 %add617, 1
  %idxprom619 = sext i32 %add618 to i64
  %arrayidx620 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom619
  %212 = load i8, i8* %arrayidx620, align 1
  %conv621 = zext i8 %212 to i32
  %213 = load i32, i32* %other, align 4
  %cmp622 = icmp ne i32 %conv621, %213
  br i1 %cmp622, label %if.then.624, label %if.end.634

if.then.624:                                      ; preds = %land.lhs.true.615, %land.lhs.true.572
  %214 = load i32, i32* %ii, align 4
  %sub625 = sub nsw i32 %214, 20
  %add626 = add nsw i32 %sub625, 1
  %215 = load i32, i32* %queue_end, align 4
  %inc627 = add nsw i32 %215, 1
  store i32 %inc627, i32* %queue_end, align 4
  %idxprom628 = sext i32 %215 to i64
  %arrayidx629 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom628
  store i32 %add626, i32* %arrayidx629, align 4
  %216 = load i32, i32* %ii, align 4
  %sub630 = sub nsw i32 %216, 20
  %add631 = add nsw i32 %sub630, 1
  %idxprom632 = sext i32 %add631 to i64
  %arrayidx633 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom632
  store i32 1, i32* %arrayidx633, align 4
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.624, %land.lhs.true.615, %land.lhs.true.606, %land.lhs.true.597, %land.lhs.true.588, %lor.lhs.false.580, %land.lhs.true.566, %land.lhs.true.559, %if.end.552
  %217 = load i32, i32* %ii, align 4
  %add635 = add nsw i32 %217, 1
  %idxprom636 = sext i32 %add635 to i64
  %arrayidx637 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom636
  %218 = load i8, i8* %arrayidx637, align 1
  %conv638 = zext i8 %218 to i32
  %cmp639 = icmp eq i32 %conv638, 0
  br i1 %cmp639, label %land.lhs.true.641, label %if.end.716

land.lhs.true.641:                                ; preds = %if.end.634
  %219 = load i32, i32* %ii, align 4
  %add642 = add nsw i32 %219, 20
  %idxprom643 = sext i32 %add642 to i64
  %arrayidx644 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom643
  %220 = load i8, i8* %arrayidx644, align 1
  %conv645 = zext i8 %220 to i32
  %cmp646 = icmp eq i32 %conv645, 0
  br i1 %cmp646, label %land.lhs.true.648, label %if.end.716

land.lhs.true.648:                                ; preds = %land.lhs.true.641
  %221 = load i32, i32* %ii, align 4
  %add649 = add nsw i32 %221, 20
  %add650 = add nsw i32 %add649, 1
  %idxprom651 = sext i32 %add650 to i64
  %arrayidx652 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom651
  %222 = load i32, i32* %arrayidx652, align 4
  %tobool653 = icmp ne i32 %222, 0
  br i1 %tobool653, label %if.end.716, label %land.lhs.true.654

land.lhs.true.654:                                ; preds = %land.lhs.true.648
  %223 = load i32, i32* %ii, align 4
  %add655 = add nsw i32 %223, 20
  %add656 = add nsw i32 %add655, 1
  %idxprom657 = sext i32 %add656 to i64
  %arrayidx658 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom657
  %224 = load i8, i8* %arrayidx658, align 1
  %conv659 = zext i8 %224 to i32
  %225 = load i32, i32* %color.addr, align 4
  %cmp660 = icmp eq i32 %conv659, %225
  br i1 %cmp660, label %if.then.706, label %lor.lhs.false.662

lor.lhs.false.662:                                ; preds = %land.lhs.true.654
  %226 = load i32, i32* %ii, align 4
  %add663 = add nsw i32 %226, 20
  %add664 = add nsw i32 %add663, 1
  %idxprom665 = sext i32 %add664 to i64
  %arrayidx666 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom665
  %227 = load i8, i8* %arrayidx666, align 1
  %conv667 = zext i8 %227 to i32
  %cmp668 = icmp eq i32 %conv667, 0
  br i1 %cmp668, label %land.lhs.true.670, label %if.end.716

land.lhs.true.670:                                ; preds = %lor.lhs.false.662
  %228 = load i32, i32* %ii, align 4
  %add671 = add nsw i32 %228, 20
  %add672 = add nsw i32 %add671, 1
  %add673 = add nsw i32 %add672, 1
  %idxprom674 = sext i32 %add673 to i64
  %arrayidx675 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom674
  %229 = load i8, i8* %arrayidx675, align 1
  %conv676 = zext i8 %229 to i32
  %cmp677 = icmp ne i32 %conv676, 3
  br i1 %cmp677, label %land.lhs.true.679, label %if.end.716

land.lhs.true.679:                                ; preds = %land.lhs.true.670
  %230 = load i32, i32* %ii, align 4
  %add680 = add nsw i32 %230, 20
  %add681 = add nsw i32 %add680, 1
  %add682 = add nsw i32 %add681, 1
  %idxprom683 = sext i32 %add682 to i64
  %arrayidx684 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom683
  %231 = load i8, i8* %arrayidx684, align 1
  %conv685 = zext i8 %231 to i32
  %232 = load i32, i32* %other, align 4
  %cmp686 = icmp ne i32 %conv685, %232
  br i1 %cmp686, label %land.lhs.true.688, label %if.end.716

land.lhs.true.688:                                ; preds = %land.lhs.true.679
  %233 = load i32, i32* %ii, align 4
  %add689 = add nsw i32 %233, 20
  %add690 = add nsw i32 %add689, 1
  %add691 = add nsw i32 %add690, 20
  %idxprom692 = sext i32 %add691 to i64
  %arrayidx693 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom692
  %234 = load i8, i8* %arrayidx693, align 1
  %conv694 = zext i8 %234 to i32
  %cmp695 = icmp ne i32 %conv694, 3
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.716

land.lhs.true.697:                                ; preds = %land.lhs.true.688
  %235 = load i32, i32* %ii, align 4
  %add698 = add nsw i32 %235, 20
  %add699 = add nsw i32 %add698, 1
  %add700 = add nsw i32 %add699, 20
  %idxprom701 = sext i32 %add700 to i64
  %arrayidx702 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom701
  %236 = load i8, i8* %arrayidx702, align 1
  %conv703 = zext i8 %236 to i32
  %237 = load i32, i32* %other, align 4
  %cmp704 = icmp ne i32 %conv703, %237
  br i1 %cmp704, label %if.then.706, label %if.end.716

if.then.706:                                      ; preds = %land.lhs.true.697, %land.lhs.true.654
  %238 = load i32, i32* %ii, align 4
  %add707 = add nsw i32 %238, 20
  %add708 = add nsw i32 %add707, 1
  %239 = load i32, i32* %queue_end, align 4
  %inc709 = add nsw i32 %239, 1
  store i32 %inc709, i32* %queue_end, align 4
  %idxprom710 = sext i32 %239 to i64
  %arrayidx711 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom710
  store i32 %add708, i32* %arrayidx711, align 4
  %240 = load i32, i32* %ii, align 4
  %add712 = add nsw i32 %240, 20
  %add713 = add nsw i32 %add712, 1
  %idxprom714 = sext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom714
  store i32 1, i32* %arrayidx715, align 4
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.706, %land.lhs.true.697, %land.lhs.true.688, %land.lhs.true.679, %land.lhs.true.670, %lor.lhs.false.662, %land.lhs.true.648, %land.lhs.true.641, %if.end.634
  br label %if.end.717

if.end.717:                                       ; preds = %if.end.716, %if.end.385
  br label %if.end.718

if.end.718:                                       ; preds = %if.end.717, %if.then.61
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.719

for.inc.719:                                      ; preds = %while.end
  %241 = load i32, i32* %distance, align 4
  %inc720 = add nsw i32 %241, 1
  store i32 %inc720, i32* %distance, align 4
  br label %for.cond.18

for.end.721:                                      ; preds = %for.cond.18
  store i32 0, i32* %k, align 4
  br label %for.cond.722

for.cond.722:                                     ; preds = %for.inc.745, %for.end.721
  %242 = load i32, i32* %k, align 4
  %243 = load i32, i32* %queue_end, align 4
  %cmp723 = icmp slt i32 %242, %243
  br i1 %cmp723, label %for.body.725, label %for.end.747

for.body.725:                                     ; preds = %for.cond.722
  %244 = load i32, i32* %k, align 4
  %idxprom726 = sext i32 %244 to i64
  %arrayidx727 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom726
  %245 = load i32, i32* %arrayidx727, align 4
  %idxprom728 = sext i32 %245 to i64
  %arrayidx729 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom728
  %246 = load i32, i32* %arrayidx729, align 4
  %cmp730 = icmp eq i32 %246, 1
  br i1 %cmp730, label %if.then.732, label %if.else.733

if.then.732:                                      ; preds = %for.body.725
  br label %if.end.740

if.else.733:                                      ; preds = %for.body.725
  %247 = load i32, i32* %k, align 4
  %idxprom734 = sext i32 %247 to i64
  %arrayidx735 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom734
  %248 = load i32, i32* %arrayidx735, align 4
  %div = sdiv i32 %248, 20
  %sub736 = sub nsw i32 %div, 1
  %249 = load i32, i32* %k, align 4
  %idxprom737 = sext i32 %249 to i64
  %arrayidx738 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom737
  %250 = load i32, i32* %arrayidx738, align 4
  %rem = srem i32 %250, 20
  %sub739 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 1853, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i32 %sub736, i32 %sub739)
  br label %if.end.740

if.end.740:                                       ; preds = %if.else.733, %if.then.732
  %251 = load i32, i32* %k, align 4
  %idxprom741 = sext i32 %251 to i64
  %arrayidx742 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom741
  %252 = load i32, i32* %arrayidx742, align 4
  %idxprom743 = sext i32 %252 to i64
  %arrayidx744 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i32 0, i64 %idxprom743
  store i32 0, i32* %arrayidx744, align 4
  br label %for.inc.745

for.inc.745:                                      ; preds = %if.end.740
  %253 = load i32, i32* %k, align 4
  %inc746 = add nsw i32 %253, 1
  store i32 %inc746, i32* %k, align 4
  br label %for.cond.722

for.end.747:                                      ; preds = %for.cond.722
  %254 = load i32, i32* %escape_potential, align 4
  ret i32 %254
}

declare float @gg_interpolate(%struct.interpolation_data*, float) #1

; Function Attrs: nounwind uwtable
define internal void @compute_surrounding_moyo_sizes(%struct.influence_data* %q) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %pos = alloca i32, align 4
  %d = alloca i32, align 4
  %mx = alloca [362 x i32], align 16
  %moyos = alloca %struct.moyo_data, align 4
  %this_moyo_size = alloca i32, align 4
  %this_moyo_value = alloca float, align 4
  %moyo_number = alloca i32, align 4
  %k = alloca i32, align 4
  %moyo_color = alloca [400 x i32], align 16
  %territory_value = alloca [400 x float], align 16
  %moyo_sizes = alloca [400 x float], align 16
  %moyo_values = alloca [400 x float], align 16
  %w = alloca i32, align 4
  %dr = alloca i32, align 4
  %n = alloca i32, align 4
  %w153 = alloca i32, align 4
  %dr158 = alloca i32, align 4
  %n162 = alloca i32, align 4
  %this_moyo_size210 = alloca i32, align 4
  %this_moyo_value219 = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  %0 = load i32, i32* @experimental_connections, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @influence_get_moyo_segmentation(%struct.influence_data* %1, %struct.moyo_data* %moyos)
  %2 = bitcast [362 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 1448, i32 16, i1 false)
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %if.then
  %3 = load i32, i32* %d, align 4
  %4 = load i32, i32* @number_of_dragons, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %this_moyo_size, align 4
  store float 0.000000e+00, float* %this_moyo_value, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %pos, align 4
  %cmp2 = icmp slt i32 %5, 400
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %6 to i64
  %segmentation = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %moyos, i32 0, i32 1
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* %segmentation, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %moyo_number, align 4
  %8 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom6
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 0
  %12 = load i32, i32* %origin, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %color = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 0
  %13 = load i32, i32* %color, align 4
  %cmp10 = icmp ne i32 %conv, %13
  br i1 %cmp10, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %14 = load i32, i32* %moyo_number, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.27, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 1
  %16 = load i32, i32* %id, align 4
  %17 = load i32, i32* %d, align 4
  %cmp17 = icmp ne i32 %16, %17
  br i1 %cmp17, label %if.then.27, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.14
  %18 = load i32, i32* %moyo_number, align 4
  %idxprom20 = sext i32 %18 to i64
  %owner = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %moyos, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [361 x i32], [361 x i32]* %owner, i32 0, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  %cmp25 = icmp ne i32 %19, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.14, %lor.lhs.false, %for.body.3
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.19
  %22 = load i32, i32* %moyo_number, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [362 x i32], [362 x i32]* %mx, i32 0, i64 %idxprom28
  %23 = load i32, i32* %arrayidx29, align 4
  %24 = load i32, i32* %d, align 4
  %add = add nsw i32 %24, 1
  %cmp30 = icmp ne i32 %23, %add
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %if.end
  %25 = load i32, i32* %d, align 4
  %add33 = add nsw i32 %25, 1
  %26 = load i32, i32* %moyo_number, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [362 x i32], [362 x i32]* %mx, i32 0, i64 %idxprom34
  store i32 %add33, i32* %arrayidx35, align 4
  %27 = load i32, i32* %moyo_number, align 4
  %idxprom36 = sext i32 %27 to i64
  %size = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %moyos, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [361 x i32], [361 x i32]* %size, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %29 = load i32, i32* %this_moyo_size, align 4
  %add38 = add nsw i32 %29, %28
  store i32 %add38, i32* %this_moyo_size, align 4
  %30 = load i32, i32* %moyo_number, align 4
  %idxprom39 = sext i32 %30 to i64
  %territorial_value = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %moyos, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [361 x float], [361 x float]* %territorial_value, i32 0, i64 %idxprom39
  %31 = load float, float* %arrayidx40, align 4
  %32 = load float, float* %this_moyo_value, align 4
  %add41 = fadd float %32, %31
  store float %add41, float* %this_moyo_value, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.42, %if.then.27
  %33 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %34 = load i32, i32* %this_moyo_size, align 4
  %35 = load i32, i32* %d, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx44 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i64 %idxprom43
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx44, i32 0, i32 4
  %37 = load i32, i32* %moyo_size, align 4
  %cmp45 = icmp slt i32 %34, %37
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %for.end
  %38 = load i32, i32* %this_moyo_size, align 4
  %39 = load i32, i32* %d, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx49 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %40, i64 %idxprom48
  %moyo_size50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx49, i32 0, i32 4
  store i32 %38, i32* %moyo_size50, align 4
  %41 = load float, float* %this_moyo_value, align 4
  %42 = load i32, i32* %d, align 4
  %idxprom51 = sext i32 %42 to i64
  %43 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %43, i64 %idxprom51
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx52, i32 0, i32 5
  store float %41, float* %moyo_territorial_value, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %for.end
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %44 = load i32, i32* %d, align 4
  %inc55 = add nsw i32 %44, 1
  store i32 %inc55, i32* %d, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  br label %if.end.241

if.else:                                          ; preds = %entry
  %45 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_color, i32 0, i32 0
  %arraydecay57 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i32 0
  call void @influence_get_moyo_data(%struct.influence_data* %45, i32* %arraydecay, float* %arraydecay57)
  store i32 21, i32* %pos, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.66, %if.else
  %46 = load i32, i32* %pos, align 4
  %cmp59 = icmp slt i32 %46, 400
  br i1 %cmp59, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.58
  %47 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds [400 x float], [400 x float]* %moyo_sizes, i32 0, i64 %idxprom62
  store float 0.000000e+00, float* %arrayidx63, align 4
  %48 = load i32, i32* %pos, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [400 x float], [400 x float]* %moyo_values, i32 0, i64 %idxprom64
  store float 0.000000e+00, float* %arrayidx65, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %49 = load i32, i32* %pos, align 4
  %inc67 = add nsw i32 %49, 1
  store i32 %inc67, i32* %pos, align 4
  br label %for.cond.58

for.end.68:                                       ; preds = %for.cond.58
  store i32 21, i32* %pos, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.203, %for.end.68
  %50 = load i32, i32* %pos, align 4
  %cmp70 = icmp slt i32 %50, 400
  br i1 %cmp70, label %for.body.72, label %for.end.205

for.body.72:                                      ; preds = %for.cond.69
  %51 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom73
  %52 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %52 to i32
  %cmp76 = icmp ne i32 %conv75, 3
  br i1 %cmp76, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %for.body.72
  br label %for.inc.203

if.end.79:                                        ; preds = %for.body.72
  %53 = load i32, i32* %pos, align 4
  %idxprom80 = sext i32 %53 to i64
  %arrayidx81 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_color, i32 0, i64 %idxprom80
  %54 = load i32, i32* %arrayidx81, align 4
  %55 = load i32, i32* %pos, align 4
  %idxprom82 = sext i32 %55 to i64
  %arrayidx83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom82
  %56 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %56 to i32
  %cmp85 = icmp eq i32 %54, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.79
  br label %for.inc.203

if.end.88:                                        ; preds = %if.end.79
  %57 = load i32, i32* %pos, align 4
  %idxprom89 = sext i32 %57 to i64
  %arrayidx90 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_color, i32 0, i64 %idxprom89
  %58 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp eq i32 %58, 1
  br i1 %cmp91, label %if.then.93, label %if.end.141

if.then.93:                                       ; preds = %if.end.88
  store i32 0, i32* %k, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.138, %if.then.93
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %pos, align 4
  %idxprom95 = sext i32 %60 to i64
  %arrayidx96 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i32 0, i64 %idxprom95
  %61 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp slt i32 %59, %61
  br i1 %cmp97, label %for.body.99, label %for.end.140

for.body.99:                                      ; preds = %for.cond.94
  %62 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %62 to i64
  %63 = load i32, i32* %pos, align 4
  %idxprom101 = sext i32 %63 to i64
  %arrayidx102 = getelementptr inbounds [400 x [4 x i32]], [400 x [4 x i32]]* @close_white_worms, i32 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx102, i32 0, i64 %idxprom100
  %64 = load i32, i32* %arrayidx103, align 4
  store i32 %64, i32* %w, align 4
  %65 = load i32, i32* %w, align 4
  %idxprom104 = sext i32 %65 to i64
  %arrayidx105 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom104
  %origin106 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx105, i32 0, i32 2
  %66 = load i32, i32* %origin106, align 4
  store i32 %66, i32* %dr, align 4
  %67 = load i32, i32* %pos, align 4
  %idxprom107 = sext i32 %67 to i64
  %arrayidx108 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i32 0, i64 %idxprom107
  %68 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp slt i32 %68, 5
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.99
  %69 = load i32, i32* %pos, align 4
  %idxprom111 = sext i32 %69 to i64
  %arrayidx112 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i32 0, i64 %idxprom111
  %70 = load i32, i32* %arrayidx112, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.99
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ 5, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %71 = load i32, i32* %n, align 4
  %conv113 = sitofp i32 %71 to double
  %div = fdiv double 1.000000e+00, %conv113
  %72 = load i32, i32* %dr, align 4
  %idxprom114 = sext i32 %72 to i64
  %arrayidx115 = getelementptr inbounds [400 x float], [400 x float]* %moyo_sizes, i32 0, i64 %idxprom114
  %73 = load float, float* %arrayidx115, align 4
  %conv116 = fpext float %73 to double
  %add117 = fadd double %conv116, %div
  %conv118 = fptrunc double %add117 to float
  store float %conv118, float* %arrayidx115, align 4
  %74 = load i32, i32* %pos, align 4
  %idxprom119 = sext i32 %74 to i64
  %arrayidx120 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom119
  %75 = load float, float* %arrayidx120, align 4
  %conv121 = fpext float %75 to double
  %cmp122 = fcmp olt double %conv121, 1.000000e+00
  br i1 %cmp122, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %cond.end
  %76 = load i32, i32* %pos, align 4
  %idxprom125 = sext i32 %76 to i64
  %arrayidx126 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom125
  %77 = load float, float* %arrayidx126, align 4
  %conv127 = fpext float %77 to double
  br label %cond.end.129

cond.false.128:                                   ; preds = %cond.end
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.124
  %cond130 = phi double [ %conv127, %cond.true.124 ], [ 1.000000e+00, %cond.false.128 ]
  %78 = load i32, i32* %n, align 4
  %conv131 = sitofp i32 %78 to double
  %div132 = fdiv double %cond130, %conv131
  %79 = load i32, i32* %dr, align 4
  %idxprom133 = sext i32 %79 to i64
  %arrayidx134 = getelementptr inbounds [400 x float], [400 x float]* %moyo_values, i32 0, i64 %idxprom133
  %80 = load float, float* %arrayidx134, align 4
  %conv135 = fpext float %80 to double
  %add136 = fadd double %conv135, %div132
  %conv137 = fptrunc double %add136 to float
  store float %conv137, float* %arrayidx134, align 4
  br label %for.inc.138

for.inc.138:                                      ; preds = %cond.end.129
  %81 = load i32, i32* %k, align 4
  %inc139 = add nsw i32 %81, 1
  store i32 %inc139, i32* %k, align 4
  br label %for.cond.94

for.end.140:                                      ; preds = %for.cond.94
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %if.end.88
  %82 = load i32, i32* %pos, align 4
  %idxprom142 = sext i32 %82 to i64
  %arrayidx143 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_color, i32 0, i64 %idxprom142
  %83 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %83, 2
  br i1 %cmp144, label %if.then.146, label %if.end.202

if.then.146:                                      ; preds = %if.end.141
  store i32 0, i32* %k, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.199, %if.then.146
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* %pos, align 4
  %idxprom148 = sext i32 %85 to i64
  %arrayidx149 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i32 0, i64 %idxprom148
  %86 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp slt i32 %84, %86
  br i1 %cmp150, label %for.body.152, label %for.end.201

for.body.152:                                     ; preds = %for.cond.147
  %87 = load i32, i32* %k, align 4
  %idxprom154 = sext i32 %87 to i64
  %88 = load i32, i32* %pos, align 4
  %idxprom155 = sext i32 %88 to i64
  %arrayidx156 = getelementptr inbounds [400 x [4 x i32]], [400 x [4 x i32]]* @close_black_worms, i32 0, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx156, i32 0, i64 %idxprom154
  %89 = load i32, i32* %arrayidx157, align 4
  store i32 %89, i32* %w153, align 4
  %90 = load i32, i32* %w153, align 4
  %idxprom159 = sext i32 %90 to i64
  %arrayidx160 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom159
  %origin161 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx160, i32 0, i32 2
  %91 = load i32, i32* %origin161, align 4
  store i32 %91, i32* %dr158, align 4
  %92 = load i32, i32* %pos, align 4
  %idxprom163 = sext i32 %92 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i32 0, i64 %idxprom163
  %93 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp slt i32 %93, 5
  br i1 %cmp165, label %cond.true.167, label %cond.false.170

cond.true.167:                                    ; preds = %for.body.152
  %94 = load i32, i32* %pos, align 4
  %idxprom168 = sext i32 %94 to i64
  %arrayidx169 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i32 0, i64 %idxprom168
  %95 = load i32, i32* %arrayidx169, align 4
  br label %cond.end.171

cond.false.170:                                   ; preds = %for.body.152
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.167
  %cond172 = phi i32 [ %95, %cond.true.167 ], [ 5, %cond.false.170 ]
  store i32 %cond172, i32* %n162, align 4
  %96 = load i32, i32* %n162, align 4
  %conv173 = sitofp i32 %96 to double
  %div174 = fdiv double 1.000000e+00, %conv173
  %97 = load i32, i32* %dr158, align 4
  %idxprom175 = sext i32 %97 to i64
  %arrayidx176 = getelementptr inbounds [400 x float], [400 x float]* %moyo_sizes, i32 0, i64 %idxprom175
  %98 = load float, float* %arrayidx176, align 4
  %conv177 = fpext float %98 to double
  %add178 = fadd double %conv177, %div174
  %conv179 = fptrunc double %add178 to float
  store float %conv179, float* %arrayidx176, align 4
  %99 = load i32, i32* %pos, align 4
  %idxprom180 = sext i32 %99 to i64
  %arrayidx181 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom180
  %100 = load float, float* %arrayidx181, align 4
  %conv182 = fpext float %100 to double
  %cmp183 = fcmp olt double %conv182, 1.000000e+00
  br i1 %cmp183, label %cond.true.185, label %cond.false.189

cond.true.185:                                    ; preds = %cond.end.171
  %101 = load i32, i32* %pos, align 4
  %idxprom186 = sext i32 %101 to i64
  %arrayidx187 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom186
  %102 = load float, float* %arrayidx187, align 4
  %conv188 = fpext float %102 to double
  br label %cond.end.190

cond.false.189:                                   ; preds = %cond.end.171
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.185
  %cond191 = phi double [ %conv188, %cond.true.185 ], [ 1.000000e+00, %cond.false.189 ]
  %103 = load i32, i32* %n162, align 4
  %conv192 = sitofp i32 %103 to double
  %div193 = fdiv double %cond191, %conv192
  %104 = load i32, i32* %dr158, align 4
  %idxprom194 = sext i32 %104 to i64
  %arrayidx195 = getelementptr inbounds [400 x float], [400 x float]* %moyo_values, i32 0, i64 %idxprom194
  %105 = load float, float* %arrayidx195, align 4
  %conv196 = fpext float %105 to double
  %add197 = fadd double %conv196, %div193
  %conv198 = fptrunc double %add197 to float
  store float %conv198, float* %arrayidx195, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %cond.end.190
  %106 = load i32, i32* %k, align 4
  %inc200 = add nsw i32 %106, 1
  store i32 %inc200, i32* %k, align 4
  br label %for.cond.147

for.end.201:                                      ; preds = %for.cond.147
  br label %if.end.202

if.end.202:                                       ; preds = %for.end.201, %if.end.141
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202, %if.then.87, %if.then.78
  %107 = load i32, i32* %pos, align 4
  %inc204 = add nsw i32 %107, 1
  store i32 %inc204, i32* %pos, align 4
  br label %for.cond.69

for.end.205:                                      ; preds = %for.cond.69
  store i32 0, i32* %d, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.238, %for.end.205
  %108 = load i32, i32* %d, align 4
  %109 = load i32, i32* @number_of_dragons, align 4
  %cmp207 = icmp slt i32 %108, %109
  br i1 %cmp207, label %for.body.209, label %for.end.240

for.body.209:                                     ; preds = %for.cond.206
  %110 = load i32, i32* %d, align 4
  %idxprom211 = sext i32 %110 to i64
  %111 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx212 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %111, i64 %idxprom211
  %origin213 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx212, i32 0, i32 0
  %112 = load i32, i32* %origin213, align 4
  %idxprom214 = sext i32 %112 to i64
  %arrayidx215 = getelementptr inbounds [400 x float], [400 x float]* %moyo_sizes, i32 0, i64 %idxprom214
  %113 = load float, float* %arrayidx215, align 4
  %conv216 = fpext float %113 to double
  %add217 = fadd double 1.000000e-02, %conv216
  %conv218 = fptosi double %add217 to i32
  store i32 %conv218, i32* %this_moyo_size210, align 4
  %114 = load i32, i32* %d, align 4
  %idxprom220 = sext i32 %114 to i64
  %115 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx221 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %115, i64 %idxprom220
  %origin222 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx221, i32 0, i32 0
  %116 = load i32, i32* %origin222, align 4
  %idxprom223 = sext i32 %116 to i64
  %arrayidx224 = getelementptr inbounds [400 x float], [400 x float]* %moyo_values, i32 0, i64 %idxprom223
  %117 = load float, float* %arrayidx224, align 4
  store float %117, float* %this_moyo_value219, align 4
  %118 = load i32, i32* %this_moyo_size210, align 4
  %119 = load i32, i32* %d, align 4
  %idxprom225 = sext i32 %119 to i64
  %120 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx226 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %120, i64 %idxprom225
  %moyo_size227 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx226, i32 0, i32 4
  %121 = load i32, i32* %moyo_size227, align 4
  %cmp228 = icmp slt i32 %118, %121
  br i1 %cmp228, label %if.then.230, label %if.end.237

if.then.230:                                      ; preds = %for.body.209
  %122 = load i32, i32* %this_moyo_size210, align 4
  %123 = load i32, i32* %d, align 4
  %idxprom231 = sext i32 %123 to i64
  %124 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx232 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %124, i64 %idxprom231
  %moyo_size233 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx232, i32 0, i32 4
  store i32 %122, i32* %moyo_size233, align 4
  %125 = load float, float* %this_moyo_value219, align 4
  %126 = load i32, i32* %d, align 4
  %idxprom234 = sext i32 %126 to i64
  %127 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx235 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %127, i64 %idxprom234
  %moyo_territorial_value236 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx235, i32 0, i32 5
  store float %125, float* %moyo_territorial_value236, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.230, %for.body.209
  br label %for.inc.238

for.inc.238:                                      ; preds = %if.end.237
  %128 = load i32, i32* %d, align 4
  %inc239 = add nsw i32 %128, 1
  store i32 %inc239, i32* %d, align 4
  br label %for.cond.206

for.end.240:                                      ; preds = %for.cond.206
  br label %if.end.241

if.end.241:                                       ; preds = %for.end.240, %for.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @compute_dragon_weakness_value(i32 %d) #0 {
entry:
  %d.addr = alloca i32, align 4
  %origin = alloca i32, align 4
  %weakness = alloca float, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32, i32* %d.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1, i64 %idxprom
  %origin1 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %origin1, align 4
  store i32 %2, i32* %origin, align 4
  %3 = load i32, i32* @debug, align 4
  %and = and i32 %3, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %origin, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i32 0, i32 0), i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load i32, i32* %d.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx3 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %idxprom2
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx3, i32 0, i32 6
  %7 = load i32, i32* %safety, align 4
  %8 = load i32, i32* %d.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx5 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %9, i64 %idxprom4
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx5, i32 0, i32 10
  %10 = load i32, i32* %d.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom6
  %lunch = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 12
  %12 = load i32, i32* %lunch, align 4
  %cmp = icmp ne i32 %12, 0
  %conv = zext i1 %cmp to i32
  %13 = load i32, i32* %d.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx9 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i64 %idxprom8
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx9, i32 0, i32 5
  %15 = load float, float* %moyo_territorial_value, align 4
  %16 = load i32, i32* %d.addr, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %17, i64 %idxprom10
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx11, i32 0, i32 9
  %18 = load i32, i32* %escape_route, align 4
  %conv12 = sitofp i32 %18 to float
  %call13 = call float @crude_dragon_weakness(i32 %7, %struct.eyevalue* %genus, i32 %conv, float %15, float %conv12)
  store float %call13, float* %weakness, align 4
  %19 = load i32, i32* %origin, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom14
  %owl_attack_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx15, i32 0, i32 10
  %20 = load i32, i32* %owl_attack_certain, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %21 = load float, float* %weakness, align 4
  %conv17 = fpext float %21 to double
  %sub = fsub double 1.000000e+00, %conv17
  %mul = fmul double 2.500000e-01, %sub
  %22 = load float, float* %weakness, align 4
  %conv18 = fpext float %22 to double
  %mul19 = fmul double 2.500000e-01, %conv18
  %cmp20 = fcmp olt double %mul, %mul19
  br i1 %cmp20, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %if.then
  %23 = load float, float* %weakness, align 4
  %conv23 = fpext float %23 to double
  %sub24 = fsub double 1.000000e+00, %conv23
  %mul25 = fmul double 2.500000e-01, %sub24
  br label %cond.end.29

cond.false.26:                                    ; preds = %if.then
  %24 = load float, float* %weakness, align 4
  %conv27 = fpext float %24 to double
  %mul28 = fmul double 2.500000e-01, %conv27
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.true.22
  %cond = phi double [ %mul25, %cond.true.22 ], [ %mul28, %cond.false.26 ]
  %25 = load float, float* %weakness, align 4
  %conv30 = fpext float %25 to double
  %add = fadd double %conv30, %cond
  %conv31 = fptrunc double %add to float
  store float %conv31, float* %weakness, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.29, %cond.end
  %26 = load i32, i32* %origin, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom32
  %owl_defense_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx33, i32 0, i32 14
  %27 = load i32, i32* %owl_defense_certain, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.end.55, label %if.then.35

if.then.35:                                       ; preds = %if.end
  %28 = load float, float* %weakness, align 4
  %conv36 = fpext float %28 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %mul38 = fmul double 2.500000e-01, %sub37
  %29 = load float, float* %weakness, align 4
  %conv39 = fpext float %29 to double
  %mul40 = fmul double 2.500000e-01, %conv39
  %cmp41 = fcmp olt double %mul38, %mul40
  br i1 %cmp41, label %cond.true.43, label %cond.false.47

cond.true.43:                                     ; preds = %if.then.35
  %30 = load float, float* %weakness, align 4
  %conv44 = fpext float %30 to double
  %sub45 = fsub double 1.000000e+00, %conv44
  %mul46 = fmul double 2.500000e-01, %sub45
  br label %cond.end.50

cond.false.47:                                    ; preds = %if.then.35
  %31 = load float, float* %weakness, align 4
  %conv48 = fpext float %31 to double
  %mul49 = fmul double 2.500000e-01, %conv48
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.43
  %cond51 = phi double [ %mul46, %cond.true.43 ], [ %mul49, %cond.false.47 ]
  %32 = load float, float* %weakness, align 4
  %conv52 = fpext float %32 to double
  %add53 = fadd double %conv52, %cond51
  %conv54 = fptrunc double %add53 to float
  store float %conv54, float* %weakness, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.50, %if.end
  %33 = load i32, i32* %origin, align 4
  %idxprom56 = sext i32 %33 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom56
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx57, i32 0, i32 6
  %34 = load i32, i32* %owl_threat_status, align 4
  %cmp58 = icmp eq i32 %34, 11
  br i1 %cmp58, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.end.55
  %35 = load float, float* %weakness, align 4
  %conv61 = fpext float %35 to double
  %sub62 = fsub double 1.000000e+00, %conv61
  %mul63 = fmul double 1.500000e-01, %sub62
  %36 = load float, float* %weakness, align 4
  %conv64 = fpext float %36 to double
  %add65 = fadd double %conv64, %mul63
  %conv66 = fptrunc double %add65 to float
  store float %conv66, float* %weakness, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %if.end.55
  %37 = load float, float* %weakness, align 4
  %conv68 = fpext float %37 to double
  %cmp69 = fcmp olt double %conv68, 0.000000e+00
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  store float 0.000000e+00, float* %weakness, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.67
  %38 = load float, float* %weakness, align 4
  %conv73 = fpext float %38 to double
  %cmp74 = fcmp ogt double %conv73, 1.000000e+00
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  store float 1.000000e+00, float* %weakness, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.72
  %39 = load i32, i32* @debug, align 4
  %and78 = and i32 %39, 32
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %cond.false.81, label %cond.true.80

cond.true.80:                                     ; preds = %if.end.77
  br label %cond.end.84

cond.false.81:                                    ; preds = %if.end.77
  %40 = load float, float* %weakness, align 4
  %conv82 = fpext float %40 to double
  %call83 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), double %conv82)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.true.80
  %41 = load float, float* %weakness, align 4
  ret float %41
}

; Function Attrs: nounwind uwtable
define i32 @are_neighbor_dragons(i32 %d1, i32 %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %d1.addr, align 4
  %2 = load i32, i32* %d2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 2
  %3 = load i32, i32* %origin3, align 4
  store i32 %3, i32* %d2.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %d1.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %id, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %idxprom6
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 2
  %8 = load i32, i32* %neighbors, align 4
  %cmp = icmp slt i32 %4, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %d1.addr, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %id11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 1
  %11 = load i32, i32* %id11, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %idxprom12
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx16 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i64 %idxprom15
  %origin17 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx16, i32 0, i32 0
  %15 = load i32, i32* %origin17, align 4
  %16 = load i32, i32* %d2.addr, align 4
  %cmp18 = icmp eq i32 %15, %16
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.42, %for.end
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %d2.addr, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom20
  %id22 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx21, i32 0, i32 1
  %20 = load i32, i32* %id22, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx24 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i64 %idxprom23
  %neighbors25 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx24, i32 0, i32 2
  %22 = load i32, i32* %neighbors25, align 4
  %cmp26 = icmp slt i32 %18, %22
  br i1 %cmp26, label %for.body.27, label %for.end.44

for.body.27:                                      ; preds = %for.cond.19
  %23 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load i32, i32* %d2.addr, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom29
  %id31 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx30, i32 0, i32 1
  %25 = load i32, i32* %id31, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx33 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i64 %idxprom32
  %adjacent34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent34, i32 0, i64 %idxprom28
  %27 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx37 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i64 %idxprom36
  %origin38 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx37, i32 0, i32 0
  %29 = load i32, i32* %origin38, align 4
  %30 = load i32, i32* %d1.addr, align 4
  %cmp39 = icmp eq i32 %29, %30
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.27
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %for.body.27
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %31 = load i32, i32* %k, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, i32* %k, align 4
  br label %for.cond.19

for.end.44:                                       ; preds = %for.cond.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.44, %if.then.40, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @crude_status(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 5
  %1 = load i32, i32* %crude_status, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @dragon_status(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 16
  %1 = load i32, i32* %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @lively_dragon_exists(i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @lively_white_dragons, align 4
  %cmp1 = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @lively_black_dragons, align 4
  %cmp2 = icmp sgt i32 %2, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @ascii_report_dragon(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  %0 = load i32, i32* @board_size, align 4
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @string_to_location(i32 %0, i8* %1, i32* %m, i32* %n)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %n, align 4
  %add1 = add nsw i32 %add, %4
  call void @report_dragon(%struct._IO_FILE* %2, i32 %add1)
  ret void
}

declare i32 @string_to_location(i32, i8*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @report_dragon(%struct._IO_FILE* %outfile, i32 %pos) #0 {
entry:
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %pos.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca %struct.dragon_data*, align 8
  %d2 = alloca %struct.dragon_data2*, align 8
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  store %struct.dragon_data* %arrayidx, %struct.dragon_data** %d, align 8
  %1 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1, i32 0, i32 1
  %2 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %3, i64 %idxprom1
  store %struct.dragon_data2* %arrayidx2, %struct.dragon_data2** %d2, align 8
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i32 0, i32 0), i32 %6)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %id6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %7, i32 0, i32 1
  %8 = load i32, i32* %id6, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %9 = load i32, i32* %pos.addr, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i32 0, i32 0), i32 %9)
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %11 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %color = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %11, i32 0, i32 0
  %12 = load i32, i32* %color, align 4
  %call12 = call i8* @color_to_string(i32 %12)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0), i8* %call12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %14 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %14, i32 0, i32 2
  %15 = load i32, i32* %origin, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %17 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %17, i32 0, i32 3
  %18 = load i32, i32* %size, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0), i32 %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %20 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 4
  %21 = load float, float* %effective_size, align 4
  %conv13 = fpext float %21 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0), double %conv13)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %23 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %23, i32 0, i32 10
  %call14 = call i8* @eyevalue_to_string(%struct.eyevalue* %genus)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.82, i32 0, i32 0), i8* %call14)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %25 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %heye = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i32 0, i32 11
  %26 = load i32, i32* %heye, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i32 %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i32 0, i32 9
  %29 = load i32, i32* %escape_route, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i32 0, i32 0), i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %31 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %lunch = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %31, i32 0, i32 12
  %32 = load i32, i32* %lunch, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0), i32 %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %34 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 5
  %35 = load i32, i32* %crude_status, align 4
  %call15 = call i8* @status_to_string(i32 %35)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i32 0, i32 0), i8* %call15)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %37 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %37, i32 0, i32 7
  %38 = load i32, i32* %owl_status, align 4
  %call16 = call i8* @status_to_string(i32 %38)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i32 0, i32 0), i8* %call16)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %40 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 16
  %41 = load i32, i32* %status, align 4
  %call17 = call i8* @status_to_string(i32 %41)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0), i8* %call17)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %43 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 6
  %44 = load i32, i32* %owl_threat_status, align 4
  %call18 = call i8* @status_to_string(i32 %44)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i32 0, i32 0), i8* %call18)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %46 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 8
  %47 = load i32, i32* %owl_attack_point, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i32 0, i32 0), i32 %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %49 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_attack_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %49, i32 0, i32 10
  %50 = load i32, i32* %owl_attack_certain, align 4
  %tobool = icmp ne i32 %50, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0), i8* %cond)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %52 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_second_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %52, i32 0, i32 11
  %53 = load i32, i32* %owl_second_attack_point, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i32 0, i32 0), i32 %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %55 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %55, i32 0, i32 12
  %56 = load i32, i32* %owl_defense_point, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i32 0, i32 0), i32 %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %58 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_defense_certain = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %58, i32 0, i32 14
  %59 = load i32, i32* %owl_defense_certain, align 4
  %tobool19 = icmp ne i32 %59, 0
  %cond20 = select i1 %tobool19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i32 0, i32 0), i8* %cond20)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %61 = load %struct.dragon_data*, %struct.dragon_data** %d, align 8
  %owl_second_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %61, i32 0, i32 15
  %62 = load i32, i32* %owl_second_defense_point, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i32 0, i32 0), i32 %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %64 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %semeai = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %64, i32 0, i32 13
  %65 = load i32, i32* %semeai, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i32 0, i32 0), i32 %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %67 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %semeai_margin_of_safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i32 0, i32 14
  %68 = load i32, i32* %semeai_margin_of_safety, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0), i32 %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %70 = load i32, i32* %k, align 4
  %71 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %71, i32 0, i32 2
  %72 = load i32, i32* %neighbors, align 4
  %cmp21 = icmp slt i32 %70, %72
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %74 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %74 to i64
  %75 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %75, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom23
  %76 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %76 to i64
  %77 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %77, i64 %idxprom25
  %origin27 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx26, i32 0, i32 0
  %78 = load i32, i32* %origin27, align 4
  %idxprom28 = sext i32 %78 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom28
  %origin30 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx29, i32 0, i32 2
  %79 = load i32, i32* %origin30, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 %79)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %k, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %82 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %hostile_neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %82, i32 0, i32 3
  %83 = load i32, i32* %hostile_neighbors, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i32 %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %85 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %moyo_size = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %85, i32 0, i32 4
  %86 = load i32, i32* %moyo_size, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i32 0, i32 0), i32 %86)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %88 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %88, i32 0, i32 5
  %89 = load float, float* %moyo_territorial_value, align 4
  %conv31 = fpext float %89 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i32 0, i32 0), double %conv31)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %91 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %91, i32 0, i32 6
  %92 = load i32, i32* %safety, align 4
  %call32 = call i8* @safety_to_string(i32 %92)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i32 0, i32 0), i8* %call32)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %94 = load %struct.dragon_data2*, %struct.dragon_data2** %d2, align 8
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %94, i32 0, i32 7
  %95 = load float, float* %weakness, align 4
  %conv33 = fpext float %95 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), double %conv33)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i32 0, i32 0))
  store i32 21, i32* %ii, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.53, %for.end
  %97 = load i32, i32* %ii, align 4
  %cmp35 = icmp slt i32 %97, 400
  br i1 %cmp35, label %for.body.37, label %for.end.55

for.body.37:                                      ; preds = %for.cond.34
  %98 = load i32, i32* %ii, align 4
  %idxprom38 = sext i32 %98 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %99 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %99 to i32
  %cmp41 = icmp ne i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %for.body.37
  %100 = load i32, i32* %ii, align 4
  %idxprom43 = sext i32 %100 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom43
  %origin45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx44, i32 0, i32 3
  %101 = load i32, i32* %origin45, align 4
  %102 = load i32, i32* %ii, align 4
  %cmp46 = icmp eq i32 %101, %102
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %103 = load i32, i32* %ii, align 4
  %104 = load i32, i32* %pos.addr, align 4
  %call49 = call i32 @is_same_dragon(i32 %103, i32 %104)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %106 = load i32, i32* %ii, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 %106)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %land.lhs.true, %for.body.37
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %107 = load i32, i32* %ii, align 4
  %inc54 = add nsw i32 %107, 1
  store i32 %inc54, i32* %ii, align 4
  br label %for.cond.34

for.end.55:                                       ; preds = %for.cond.34
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end.55, %if.then.9, %if.then
  ret void
}

declare void @gfprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @status_to_string(i32) #1

declare i8* @safety_to_string(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @whose_area(%struct.influence_data*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @add_adjacent_dragons(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* @number_of_dragons, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %b.addr, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load i32, i32* %b.addr, align 4
  %5 = load i32, i32* @number_of_dragons, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 963, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %a.addr, align 4
  %7 = load i32, i32* %b.addr, align 4
  %cmp6 = icmp eq i32 %6, %7
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load i32, i32* %a.addr, align 4
  %9 = load i32, i32* %b.addr, align 4
  call void @add_adjacent_dragon(i32 %8, i32 %9)
  %10 = load i32, i32* %b.addr, align 4
  %11 = load i32, i32* %a.addr, align 4
  call void @add_adjacent_dragon(i32 %10, i32 %11)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_adjacent_dragon(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* @number_of_dragons, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %b.addr, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load i32, i32* %b.addr, align 4
  %5 = load i32, i32* @number_of_dragons, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 976, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %a.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %idxprom
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %neighbors, align 4
  %cmp6 = icmp eq i32 %8, 10
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %if.end.44

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %a.addr, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx10 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom9
  %neighbors11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx10, i32 0, i32 2
  %12 = load i32, i32* %neighbors11, align 4
  %cmp12 = icmp slt i32 %9, %12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %a.addr, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx15 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %15, i64 %idxprom14
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom13
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load i32, i32* %b.addr, align 4
  %cmp17 = icmp eq i32 %16, %17
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %if.end.44

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %b.addr, align 4
  %20 = load i32, i32* %a.addr, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx21 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i64 %idxprom20
  %neighbors22 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx21, i32 0, i32 2
  %22 = load i32, i32* %neighbors22, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %neighbors22, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %a.addr, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %idxprom25
  %adjacent27 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent27, i32 0, i64 %idxprom24
  store i32 %19, i32* %arrayidx28, align 4
  %25 = load i32, i32* %a.addr, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx30 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i64 %idxprom29
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx30, i32 0, i32 0
  %27 = load i32, i32* %origin, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom31
  %color = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx32, i32 0, i32 0
  %28 = load i32, i32* %color, align 4
  %29 = load i32, i32* %b.addr, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %30, i64 %idxprom33
  %origin35 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx34, i32 0, i32 0
  %31 = load i32, i32* %origin35, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom36
  %color38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx37, i32 0, i32 0
  %32 = load i32, i32* %color38, align 4
  %sub = sub nsw i32 3, %32
  %cmp39 = icmp eq i32 %28, %sub
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %for.end
  %33 = load i32, i32* %a.addr, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx42 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %34, i64 %idxprom41
  %hostile_neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx42, i32 0, i32 3
  %35 = load i32, i32* %hostile_neighbors, align 4
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, i32* %hostile_neighbors, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.7, %if.then.18, %if.then.40, %for.end
  ret void
}

declare i32 @owl_substantial(i32) #1

declare void @get_lively_stones(i32, i8*) #1

declare void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal i32 @connected_to_eye(i32 %pos, i32 %str, i32 %color, i32 %eye_color, %struct.eye_data* %eye) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %eye_color.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %mx = alloca [400 x i8], align 16
  %me = alloca [400 x i8], align 16
  %k = alloca i32, align 4
  %halfeyes = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %eye_color, i32* %eye_color.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  %0 = bitcast [400 x i8]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 16, i1 false)
  %1 = bitcast [400 x i8]* %me to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 400, i32 16, i1 false)
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %4, %6
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %8, %10
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom10
  store i8 1, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %halfeyes, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %str.addr, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %eye_color.addr, align 4
  %16 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [400 x i8], [400 x i8]* %me, i32 0, i32 0
  call void @connected_to_eye_recurse(i32 %12, i32 %13, i32 %14, i32 %15, %struct.eye_data* %16, i8* %arraydecay, i8* %arraydecay12, i32* %halfeyes)
  %17 = load i32, i32* %halfeyes, align 4
  %cmp13 = icmp sge i32 %17, 2
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @connected_to_eye_recurse(i32 %pos, i32 %str, i32 %color, i32 %eye_color, %struct.eye_data* %eye, i8* %mx, i8* %me, i32* %halfeyes) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %eye_color.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %mx.addr = alloca i8*, align 8
  %me.addr = alloca i8*, align 8
  %halfeyes.addr = alloca i32*, align 8
  %liberties = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %eye_color, i32* %eye_color.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store i8* %mx, i8** %mx.addr, align 8
  store i8* %me, i8** %me.addr, align 8
  store i32* %halfeyes, i32** %halfeyes.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i8*, i8** %mx.addr, align 8
  call void @mark_string(i32 %0, i8* %1, i8 signext 1)
  %2 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %2, i32 241, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %r, align 4
  %4 = load i32, i32* %liberties, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %r, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %7, i64 %idxprom1
  %color3 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 0
  %8 = load i32, i32* %color3, align 4
  %9 = load i32, i32* %eye_color.addr, align 4
  %cmp4 = icmp eq i32 %8, %9
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %r, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %cmp7 = icmp ne i32 %11, %12
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %r, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %15, i64 %idxprom11
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 3
  %16 = load i32, i32* %origin, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i8*, i8** %me.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  %18 = load i8, i8* %arrayidx14, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8
  %19 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %21, i64 %idxprom17
  %origin19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx18, i32 0, i32 3
  %22 = load i32, i32* %origin19, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i8*, i8** %me.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 %idxprom20
  store i8 1, i8* %arrayidx21, align 1
  %24 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom22
  %25 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i64 %idxprom24
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx25, i32 0, i32 4
  %call26 = call i32 @min_eyes(%struct.eyevalue* %value)
  %27 = load i32, i32* %r, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom27
  %28 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %29, i64 %idxprom29
  %value31 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 4
  %call32 = call i32 @max_eyes(%struct.eyevalue* %value31)
  %add = add nsw i32 %call26, %call32
  %30 = load i32*, i32** %halfeyes.addr, align 8
  %31 = load i32, i32* %30, align 4
  %add33 = add nsw i32 %31, %add
  store i32 %add33, i32* %30, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %r, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32*, i32** %halfeyes.addr, align 8
  %34 = load i32, i32* %33, align 4
  %cmp34 = icmp sge i32 %34, 2
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.end
  br label %for.end.107

if.end.36:                                        ; preds = %for.end
  store i32 0, i32* %r, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.105, %if.end.36
  %35 = load i32, i32* %r, align 4
  %36 = load i32, i32* %liberties, align 4
  %cmp38 = icmp slt i32 %35, %36
  br i1 %cmp38, label %for.body.39, label %for.end.107

for.body.39:                                      ; preds = %for.cond.37
  %37 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom40
  %38 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i8*, i8** %mx.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %39, i64 %idxprom42
  %40 = load i8, i8* %arrayidx43, align 1
  %tobool44 = icmp ne i8 %40, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body.39
  br label %for.inc.105

if.end.46:                                        ; preds = %for.body.39
  %41 = load i32, i32* %r, align 4
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom47
  %42 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load i8*, i8** %mx.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %43, i64 %idxprom49
  store i8 1, i8* %arrayidx50, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.102, %if.end.46
  %44 = load i32, i32* %k, align 4
  %cmp52 = icmp slt i32 %44, 4
  br i1 %cmp52, label %for.body.53, label %for.end.104

for.body.53:                                      ; preds = %for.cond.51
  %45 = load i32, i32* %r, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom56
  %48 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %46, %48
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %49 = load i8, i8* %arrayidx60, align 1
  %conv = zext i8 %49 to i32
  %cmp61 = icmp ne i32 %conv, 3
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.97

land.lhs.true.63:                                 ; preds = %for.body.53
  %50 = load i32, i32* %r, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom64
  %51 = load i32, i32* %arrayidx65, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom66
  %53 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %51, %53
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom69
  %54 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %54 to i32
  %55 = load i32, i32* %color.addr, align 4
  %cmp72 = icmp eq i32 %conv71, %55
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.97

land.lhs.true.74:                                 ; preds = %land.lhs.true.63
  %56 = load i32, i32* %str.addr, align 4
  %57 = load i32, i32* %r, align 4
  %idxprom75 = sext i32 %57 to i64
  %arrayidx76 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom75
  %58 = load i32, i32* %arrayidx76, align 4
  %59 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %59 to i64
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom77
  %60 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %58, %60
  %call80 = call i32 @is_same_dragon(i32 %56, i32 %add79)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.97

land.lhs.true.82:                                 ; preds = %land.lhs.true.74
  %61 = load i32, i32* %r, align 4
  %idxprom83 = sext i32 %61 to i64
  %arrayidx84 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom83
  %62 = load i32, i32* %arrayidx84, align 4
  %63 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom85
  %64 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %62, %64
  %idxprom88 = sext i32 %add87 to i64
  %65 = load i8*, i8** %mx.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %65, i64 %idxprom88
  %66 = load i8, i8* %arrayidx89, align 1
  %tobool90 = icmp ne i8 %66, 0
  br i1 %tobool90, label %if.end.97, label %if.then.91

if.then.91:                                       ; preds = %land.lhs.true.82
  %67 = load i32, i32* %pos.addr, align 4
  %68 = load i32, i32* %r, align 4
  %idxprom92 = sext i32 %68 to i64
  %arrayidx93 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom92
  %69 = load i32, i32* %arrayidx93, align 4
  %70 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %70 to i64
  %arrayidx95 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom94
  %71 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %69, %71
  %72 = load i32, i32* %color.addr, align 4
  %73 = load i32, i32* %eye_color.addr, align 4
  %74 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %75 = load i8*, i8** %mx.addr, align 8
  %76 = load i8*, i8** %me.addr, align 8
  %77 = load i32*, i32** %halfeyes.addr, align 8
  call void @connected_to_eye_recurse(i32 %67, i32 %add96, i32 %72, i32 %73, %struct.eye_data* %74, i8* %75, i8* %76, i32* %77)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %land.lhs.true.82, %land.lhs.true.74, %land.lhs.true.63, %for.body.53
  %78 = load i32*, i32** %halfeyes.addr, align 8
  %79 = load i32, i32* %78, align 4
  %cmp98 = icmp sge i32 %79, 2
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  br label %for.end.107

if.end.101:                                       ; preds = %if.end.97
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %80 = load i32, i32* %k, align 4
  %inc103 = add nsw i32 %80, 1
  store i32 %inc103, i32* %k, align 4
  br label %for.cond.51

for.end.104:                                      ; preds = %for.cond.51
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104, %if.then.45
  %81 = load i32, i32* %r, align 4
  %inc106 = add nsw i32 %81, 1
  store i32 %inc106, i32* %r, align 4
  br label %for.cond.37

for.end.107:                                      ; preds = %if.then.35, %if.then.100, %for.cond.37
  ret void
}

declare i32 @findlib(i32, i32, i32*) #1

declare void @compute_escape_influence(i32, i8*, float*, i8*) #1

declare void @influence_get_moyo_segmentation(%struct.influence_data*, %struct.moyo_data*) #1

declare void @influence_get_moyo_data(%struct.influence_data*, i32*, float*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
