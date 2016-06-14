; ModuleID = 'interface/main.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@komi = external global float, align 4
@level = external global i32, align 4
@semeai_variations = external global i32, align 4
@mandated_depth = external global i32, align 4
@mandated_backfill_depth = external global i32, align 4
@mandated_backfill2_depth = external global i32, align 4
@mandated_superstring_depth = external global i32, align 4
@mandated_fourlib_depth = external global i32, align 4
@mandated_ko_depth = external global i32, align 4
@mandated_branch_depth = external global i32, align 4
@mandated_owl_distrust_depth = external global i32, align 4
@mandated_owl_branch_depth = external global i32, align 4
@mandated_owl_reading_depth = external global i32, align 4
@mandated_owl_node_limit = external global i32, align 4
@mandated_aa_depth = external global i32, align 4
@debug = external global i32, align 4
@fusekidb = external global i32, align 4
@disable_fuseki = external global i32, align 4
@josekidb = external global i32, align 4
@chinese_rules = external global i32, align 4
@owl_threats = external global i32, align 4
@experimental_owl_ext = external global i32, align 4
@experimental_semeai = external global i32, align 4
@experimental_connections = external global i32, align 4
@allow_suicide = external global i32, align 4
@capture_all_dead = external global i32, align 4
@play_out_aftermath = external global i32, align 4
@board_size = external global i32, align 4
@.str = private unnamed_addr constant [45 x i8] c"-ab:B:d:D:EF:gh::H:K:l:L:M:m:o:O:p:r:fsStTvw\00", align 1
@long_options = internal constant [83 x %struct.gg_option] [%struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 135 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 143 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 139 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 140 }, %struct.gg_option { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 140 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 141 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 76 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 79 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 127 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 2, i32* null, i32 104 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 142 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 167 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i32 1, i32* null, i32 163 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 1, i32* null, i32 164 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i32 1, i32* null, i32 165 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 75 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 166 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i32 1, i32* null, i32 168 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 169 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 1, i32* null, i32 170 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 171 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 175 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i32 1, i32* null, i32 132 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 133 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 134 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 181 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 184 }, %struct.gg_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), i32 0, i32* null, i32 151 }, %struct.gg_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i32 0, i32* null, i32 152 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), i32 1, i32* null, i32 153 }, %struct.gg_option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0), i32 0, i32* null, i32 154 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 0, i32* null, i32 182 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i32 0, i32* null, i32 183 }, %struct.gg_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 158 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i32 0, i32* null, i32 157 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 0, i32* null, i32 156 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i32 0, i32* null, i32 185 }, %struct.gg_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i32 0, i32* null, i32 186 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i32 0, i32* null, i32 187 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i32 1, i32* null, i32 72 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i32 1, i32* null, i32 144 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i32 1, i32* null, i32 145 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.111, i32 0, i32 0), i32 1, i32* null, i32 146 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i32 1, i32* null, i32 146 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0), i32 1, i32* null, i32 147 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i32 1, i32* null, i32 148 }, %struct.gg_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.115, i32 0, i32 0), i32 1, i32* null, i32 150 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 0, i32* null, i32 160 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i32 1, i32* null, i32 149 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i32 1, i32* null, i32 161 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i32 0, i32 0), i32 0, i32* null, i32 162 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i32 0, i32* null, i32 172 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i32 0, i32* null, i32 173 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i32 0, i32* null, i32 174 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0), i32 1, i32* null, i32 178 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i32 0, i32* null, i32 176 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 0, i32* null, i32 177 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 1, i32* null, i32 179 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 1, i32* null, i32 180 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i32 0, i32* null, i32 188 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i32 1, i32* null, i32 189 }, %struct.gg_option zeroinitializer], align 16
@printboard = external global i32, align 4
@verbose = external global i32, align 4
@allpats = external global i32, align 4
@gg_optarg = external global i8*, align 8
@showstatistics = external global i32, align 4
@printworms = external global i32, align 4
@printmoyo = external global i32, align 4
@hashflags = external global i32, align 4
@outfilename = external global [128 x i8], align 16
@output_flags = external global i32, align 4
@quiet = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal orientation: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Try `gnugo --help' for more information.\0A\00", align 1
@gtp_version = external global i32, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"configure option enabled: experimental connections\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"configure option enabled: experimental semeai\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Owl node limit: %d\0A\00", align 1
@showtime = external global i32, align 4
@showscore = external global i32, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Illegal handicap: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Illegal board size: %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid komi selection: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"gtp\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid mode selection: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Invalid board coordinate: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"usage: --decide-connection [first string]/[second string]\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"usage: --decide-semeai [first dragon]/[second dragon]\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"usage: --decide-tactical-semeai [first dragon]/[second dragon]\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Invalid replay color: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid color selection: %s\0A\00", align 1
@play_mirror_go = external global i32, align 4
@mirror_stones_limit = external global i32, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@gg_optind = external global i32, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@random_seed = external global i32, align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"Cannot open or parse '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Error: could not open '%s' for writing\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"You must use -l infile with replay mode.\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"You must use -l infile with load and analyze mode.\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"gnugo: --score must be used with -l\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"gnugo: --printsgf must be used with -l\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-string must be used with -l\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-string: strange coordinate \0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"gnugo: --decide-connection must be used with -l\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-dragon must be used with -l\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-dragon: strange coordinate \0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon-data must be used with -l\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon-data: strange coordinate \0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-semeai must be used with -l\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"gnugo: --decide-tactical-semeai must be used with -l\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"gnugo: --decide-position must be used with -l\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"gnugo: --decide-eye must be used with -l\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"gnugo: --decide-eye: strange coordinate \0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-combination must be used with -l\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"usage: --decide-surrounded [pos]\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"gnugo: Cannot open file %s\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"gtp-input\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"gtp-initial-orientation\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"gtp-version\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"infile\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"output-flags\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"allpats\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"printboard\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"printeyes\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"debug-flags\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"backfill-depth\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"branch-depth\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"backfill2-depth\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"superstring-depth\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"fourlib-depth\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ko-depth\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"aa-depth\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"owl-distrust\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"owl-branch\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"owl-reading\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"owl-node-limit\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"byo-time\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"byo-period\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"autolevel\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"chinese-rules\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"japanese-rules\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"experimental-semeai\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"experimental-owl-ext\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"semeai-variations\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"experimental-connections\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"owl-threats\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"no-owl-threats\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"standard-connections\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"standard-semeai\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"allow-suicide\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"capture-all-dead\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"play-out-aftermath\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"worms\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"moyo\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"decide-string\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"decide-connection\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"decide-dragon\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"decide-owl\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"decide-dragon-data\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"decide-semeai\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"decide-tactical-semeai\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"decide-position\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"decide-surrounded\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"decide-eye\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"decide-combination\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"nofusekidb\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"nofuseki\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"nojosekidb\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"debug-influence\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"showtime\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"showscore\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"printsgf\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"mirror-limit\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"GNU Go Version %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.132 = private unnamed_addr constant [1519 x i8] c"\0AUsage: gnugo [-opts]\0A\0AMain Options:\0A       --mode <mode>     Force the playing mode ('ascii' or 'gtp').\0A                         Default is GTP.\0A       --quiet           Don't print copyright and informational messages\0A       --gtp-input <file>Read gtp commands from file instead of stdin\0A   -l, --infile <file>   Load name sgf file\0A   -L, --until <move>    Stop loading just before move is played. <move>\0A                         can be the move number or location (eg L10).\0A   -o, --outfile <file>  Write sgf output to file\0A   --printsgf <file>     Write position as a diagram to file (use with -l)\0A\0AOptions that affect strength (higher = stronger, slower):\0A   -D, --depth <depth>          deep reading cutoff (default %d)\0A   -B, --backfill-depth <depth> deep reading cutoff (default %d)\0A   -F, --fourlib-depth <depth>  deep reading cutoff (default %d)\0A   -K, --ko-depth <depth>       deep reading cutoff (default %d)\0A   --branch-depth <depth>       deep reading cutoff (default %d)\0A   --backfill2-depth <depth>    deep reading cutoff (default %d)\0A   --superstring-depth <depth>  deep reading cutoff (default %d)\0A   --aa-depth <depth>           deep reading cutoff (default %d)\0A   --owl-distrust <depth>       owl distrust depth (default %d)\0A   --owl-branch <depth>         owl branching depth (default %d)\0A   --owl-reading <depth>        owl reading depth (default %d)\0A   --owl-node-limit <limit>     max nodes for owl reading (default %d)\0A   --level <amount>             strength (default %d, up to 10 supported)\0A\00", align 1
@depth = external global i32, align 4
@backfill_depth = external global i32, align 4
@fourlib_depth = external global i32, align 4
@ko_depth = external global i32, align 4
@branch_depth = external global i32, align 4
@backfill2_depth = external global i32, align 4
@superstring_depth = external global i32, align 4
@aa_depth = external global i32, align 4
@owl_distrust_depth = external global i32, align 4
@owl_branch_depth = external global i32, align 4
@owl_reading_depth = external global i32, align 4
@owl_node_limit = external global i32, align 4
@.str.133 = private unnamed_addr constant [1138 x i8] c"\0AExperimental options:\0A   --nofusekidb            turn off fuseki database\0A   --nofuseki              turn off fuseki moves entirely\0A   --nojosekidb            turn off joseki database\0A   --mirror                try to play mirror go\0A   --mirror-limit <n>      stop mirroring when n stones on board\0AScoring:\0A   --score estimate        estimate score at loaded position\0A   --score finish          generate moves to finish game, then score\0A   --score aftermath       generate moves to finish, use best algorithm\0A   --score aftermath --capture-all-dead --chinese-rules   Tromp-Taylor score\0A\0AGame Options: (--mode ascii)\0A       --boardsize num   Set the board size to use (%d--%d)\0A       --color <color>   Choose your color ('black' or 'white')\0A       --handicap <num>  Set the number of handicap stones (0--%d)\0A       --komi <num>      Set the komi\0A\0AInformative Output:\0A   -v, --version         Display the version of GNU Go\0A   --options             Display configure options\0A   -h, --help            Display this help message\0A       --help debug      Display help about debugging options\0A       --copyright       Display copyright notice\0A\0A\00", align 1
@.str.134 = private unnamed_addr constant [2489 x i8] c"\0ADebugging Options:\0A\0A       --replay <color> replay the moves in a game for color.\0A                        (requires -l)\0A                     white: replay only white moves\0A                     black: replay only black moves\0A                     both:  replay all moves\0A   -a, --allpats                 test all patterns\0A   -T, --printboard              colored display of dragons\0A   -E, --printeyes               colored display of eye spaces\0A   -d, --debug <flags>           debugging output (see next item for bits)\0A   --debug-flags                 print the debug flags for previous item\0A   -H, --hash <level>            hash (see gnugo.h for bits)\0A   -w, --worms                   print worm and dragon data and move reasons\0A   -m, --moyo <level>            moyo debugging, show moyo board\0A   -b, --benchmark num           benchmarking mode - can be used with -l\0A   -S, --statistics              print statistics (for debugging purposes)\0A\0A   -t, --trace                   verbose tracing\0A   -O, --output-flags <flags>    optional output (use with -o)\0A                    d: mark dead and critical dragons\0A                    v: show values of considered moves\0A                    specify either 'd', 'v' or 'dv' (nothing by default)\0A   --showtime                    print timing diagnostic\0A   --replay <color>              replay game. Use with -o.\0A   --showscore                   print estimated score\0A   -r, --seed number             set random number seed\0A       --decide-string <string>  can this string live? (try with -o)\0A       --decide-connection <str/str> can these strings connect? (try with -o)\0A       --decide-dragon <dragon>  can this dragon live? (try with -o or -t)\0A       --decide-position         evaluate all dragons (try with -o or -t)\0A       --decide-eye <string>     evaluate the eye\0A       --decide-combination      search for combination attack (try with -o)\0A       --genmove <color>         generate a move for color\0A       --nofusekidb              turn off fuseki database\0A       --nofuseki                turn off fuseki moves entirely\0A       --nojosekidb              turn off joseki database\0A       --debuginfluence <move>   print influence map after making a move\0A       --score <end|last|move>   count or estimate territory\0A       --profile-patterns        print statistics for pattern usage\0A       --attack-by-pattern       use pattern-based tactical reading for attack\0A       --defend-by-pattern       use pattern-based tactical reading for defense\0A\00", align 1
@.str.135 = private unnamed_addr constant [857 x i8] c"DEBUG_INFLUENCE             0x0001\0ADEBUG_EYES                  0x0002\0ADEBUG_OWL                   0x0004\0ADEBUG_ESCAPE                0x0008\0ADEBUG_MATCHER               0x0010\0ADEBUG_DRAGONS               0x0020\0ADEBUG_SEMEAI                0x0040\0ADEBUG_LOADSGF               0x0080\0ADEBUG_HELPER                0x0100\0ADEBUG_READING               0x0200\0ADEBUG_WORMS                 0x0400\0ADEBUG_MOVE_REASONS          0x0800\0ADEBUG_OWL_PERFORMANCE       0x1000\0ADEBUG_LIFE                  0x2000\0ADEBUG_FILLLIB               0x4000\0ADEBUG_READING_PERFORMANCE   0x8000\0ADEBUG_SCORING               0x010000\0ADEBUG_AFTERMATH             0x020000\0ADEBUG_ATARI_ATARI           0x040000\0ADEBUG_READING_CACHE         0x080000\0ADEBUG_TERRITORY             0x100000\0ADEBUG_OWL_PERSISTENT_CACHE  0X200000\0ADEBUG_TOP_MOVES             0x400000\0ADEBUG_MISCELLANEOUS         0x800000\0A\00", align 1
@.str.136 = private unnamed_addr constant [817 x i8] c"\0A\0AThis is GNU GO, a Go program. Contact gnugo@gnu.org, or see\0Ahttp://www.gnu.org/software/gnugo/ for more information.\0A\0ACopyright 1999, 2000, 2001, 2002 by the Free Software Foundation.\0A\0AThis program is free software; you can redistribute it and/or\0Amodify it under the terms of the GNU General Public License\0Aas published by the Free Software Foundation - version 2.\0A\0AThis program is distributed in the hope that it will be\0Auseful, but WITHOUT ANY WARRANTY; without even the implied\0Awarranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\0APURPOSE.  See the GNU General Public License in file COPYING\0Afor more details.\0A\0AYou should have received a copy of the GNU General Public\0ALicense along with this program; if not, write to the Free\0ASoftware Foundation, Inc., 59 Temple Place - Suite 330,\0ABoston, MA 02111, USA.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %gameinfo = alloca %struct.Gameinfo, align 8
  %sgftree = alloca %struct.SGFTree_t, align 8
  %i = alloca i32, align 4
  %mandated_color = alloca i32, align 4
  %playmode = alloca i32, align 4
  %replay_color = alloca i32, align 4
  %infilename = alloca i8*, align 8
  %untilstring = alloca i8*, align 8
  %scoringmode = alloca i8*, align 8
  %outfile = alloca i8*, align 8
  %outflags = alloca i8*, align 8
  %gtpfile = alloca i8*, align 8
  %printsgffile = alloca i8*, align 8
  %decide_this = alloca [8 x i8], align 1
  %decide_that = alloca i8*, align 8
  %debuginfluence_move = alloca [4 x i8], align 1
  %benchmark = alloca i32, align 4
  %gtp_input_FILE = alloca %struct._IO_FILE*, align 8
  %output_check = alloca %struct._IO_FILE*, align 8
  %orientation = alloca i32, align 4
  %seed = alloca i32, align 4
  %handicap = alloca i32, align 4
  %boardsize = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %m404 = alloca i32, align 4
  %n405 = alloca i32, align 4
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %m440 = alloca i32, align 4
  %n441 = alloca i32, align 4
  %m456 = alloca i32, align 4
  %n457 = alloca i32, align 4
  %ai472 = alloca i32, align 4
  %aj473 = alloca i32, align 4
  %bi474 = alloca i32, align 4
  %bj475 = alloca i32, align 4
  %ai498 = alloca i32, align 4
  %aj499 = alloca i32, align 4
  %bi500 = alloca i32, align 4
  %bj501 = alloca i32, align 4
  %color = alloca i32, align 4
  %m534 = alloca i32, align 4
  %n535 = alloca i32, align 4
  %color550 = alloca i32, align 4
  %m561 = alloca i32, align 4
  %n562 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %mandated_color, align 4
  store i32 0, i32* %playmode, align 4
  store i32 0, i32* %replay_color, align 4
  store i8* null, i8** %infilename, align 8
  store i8* null, i8** %untilstring, align 8
  store i8* null, i8** %scoringmode, align 8
  store i8* null, i8** %outfile, align 8
  store i8* null, i8** %outflags, align 8
  store i8* null, i8** %gtpfile, align 8
  store i8* null, i8** %printsgffile, align 8
  store i8* null, i8** %decide_that, align 8
  %0 = bitcast [4 x i8]* %debuginfluence_move to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  store i32 0, i32* %benchmark, align 4
  store i32 0, i32* %orientation, align 4
  store i32 0, i32* %seed, align 4
  store float 0.000000e+00, float* @komi, align 4
  store i32 10, i32* @level, align 4
  store i32 250, i32* @semeai_variations, align 4
  store i32 -1, i32* @mandated_depth, align 4
  store i32 -1, i32* @mandated_backfill_depth, align 4
  store i32 -1, i32* @mandated_backfill2_depth, align 4
  store i32 -1, i32* @mandated_superstring_depth, align 4
  store i32 -1, i32* @mandated_fourlib_depth, align 4
  store i32 -1, i32* @mandated_ko_depth, align 4
  store i32 -1, i32* @mandated_branch_depth, align 4
  store i32 -1, i32* @mandated_owl_distrust_depth, align 4
  store i32 -1, i32* @mandated_owl_branch_depth, align 4
  store i32 -1, i32* @mandated_owl_reading_depth, align 4
  store i32 -1, i32* @mandated_owl_node_limit, align 4
  store i32 -1, i32* @mandated_aa_depth, align 4
  store i32 0, i32* @debug, align 4
  store i32 1, i32* @fusekidb, align 4
  store i32 0, i32* @disable_fuseki, align 4
  store i32 1, i32* @josekidb, align 4
  store i32 0, i32* @chinese_rules, align 4
  store i32 0, i32* @owl_threats, align 4
  store i32 0, i32* @experimental_owl_ext, align 4
  store i32 1, i32* @experimental_semeai, align 4
  store i32 1, i32* @experimental_connections, align 4
  store i32 0, i32* @allow_suicide, align 4
  store i32 0, i32* @capture_all_dead, align 4
  store i32 0, i32* @play_out_aftermath, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %sgftree)
  %1 = load i32, i32* @board_size, align 4
  %2 = load float, float* @komi, align 4
  call void @gameinfo_clear(%struct.Gameinfo* %gameinfo, i32 %1, float %2)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.319, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gg_getopt_long(i32 %3, i8** %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), %struct.gg_option* getelementptr inbounds ([83 x %struct.gg_option], [83 x %struct.gg_option]* @long_options, i32 0, i32 0), i32* null)
  store i32 %call, i32* %i, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end.320

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  switch i32 %5, label %sw.default [
    i32 84, label %sw.bb
    i32 116, label %sw.bb.1
    i32 97, label %sw.bb.3
    i32 1, label %sw.bb.4
    i32 108, label %sw.bb.4
    i32 98, label %sw.bb.5
    i32 114, label %sw.bb.7
    i32 83, label %sw.bb.9
    i32 119, label %sw.bb.10
    i32 109, label %sw.bb.11
    i32 100, label %sw.bb.13
    i32 68, label %sw.bb.17
    i32 72, label %sw.bb.19
    i32 69, label %sw.bb.22
    i32 66, label %sw.bb.23
    i32 70, label %sw.bb.25
    i32 75, label %sw.bb.27
    i32 76, label %sw.bb.29
    i32 111, label %sw.bb.30
    i32 79, label %sw.bb.32
    i32 138, label %sw.bb.40
    i32 139, label %sw.bb.41
    i32 140, label %sw.bb.42
    i32 141, label %sw.bb.52
    i32 156, label %sw.bb.54
    i32 176, label %sw.bb.58
    i32 177, label %sw.bb.59
    i32 128, label %sw.bb.60
    i32 127, label %sw.bb.72
    i32 130, label %sw.bb.83
    i32 181, label %sw.bb.91
    i32 182, label %sw.bb.92
    i32 183, label %sw.bb.93
    i32 184, label %sw.bb.94
    i32 152, label %sw.bb.95
    i32 151, label %sw.bb.96
    i32 153, label %sw.bb.97
    i32 157, label %sw.bb.99
    i32 154, label %sw.bb.100
    i32 158, label %sw.bb.101
    i32 185, label %sw.bb.102
    i32 186, label %sw.bb.103
    i32 187, label %sw.bb.104
    i32 135, label %sw.bb.105
    i32 144, label %sw.bb.125
    i32 145, label %sw.bb.133
    i32 146, label %sw.bb.149
    i32 147, label %sw.bb.158
    i32 148, label %sw.bb.167
    i32 150, label %sw.bb.183
    i32 160, label %sw.bb.199
    i32 161, label %sw.bb.200
    i32 162, label %sw.bb.209
    i32 149, label %sw.bb.210
    i32 163, label %sw.bb.219
    i32 164, label %sw.bb.221
    i32 165, label %sw.bb.223
    i32 166, label %sw.bb.225
    i32 168, label %sw.bb.227
    i32 169, label %sw.bb.229
    i32 170, label %sw.bb.231
    i32 171, label %sw.bb.233
    i32 172, label %sw.bb.235
    i32 173, label %sw.bb.236
    i32 174, label %sw.bb.237
    i32 175, label %sw.bb.238
    i32 178, label %sw.bb.240
    i32 143, label %sw.bb.249
    i32 179, label %sw.bb.270
    i32 180, label %sw.bb.275
    i32 129, label %sw.bb.276
    i32 142, label %sw.bb.291
    i32 188, label %sw.bb.292
    i32 189, label %sw.bb.293
    i32 118, label %sw.bb.295
    i32 104, label %sw.bb.296
    i32 167, label %sw.bb.316
    i32 63, label %sw.bb.317
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i32, i32* @printboard, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @printboard, align 4
  br label %sw.epilog.319

sw.bb.1:                                          ; preds = %while.body
  %7 = load i32, i32* @verbose, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* @verbose, align 4
  br label %sw.epilog.319

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* @allpats, align 4
  br label %sw.epilog.319

sw.bb.4:                                          ; preds = %while.body, %while.body
  %8 = load i8*, i8** @gg_optarg, align 8
  store i8* %8, i8** %infilename, align 8
  br label %sw.epilog.319

sw.bb.5:                                          ; preds = %while.body
  %9 = load i8*, i8** @gg_optarg, align 8
  %call6 = call i32 @atoi(i8* %9) #6
  store i32 %call6, i32* %benchmark, align 4
  store i32 8, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.7:                                          ; preds = %while.body
  %10 = load i8*, i8** @gg_optarg, align 8
  %call8 = call i32 @atoi(i8* %10) #6
  store i32 %call8, i32* %seed, align 4
  br label %sw.epilog.319

sw.bb.9:                                          ; preds = %while.body
  store i32 1, i32* @showstatistics, align 4
  br label %sw.epilog.319

sw.bb.10:                                         ; preds = %while.body
  store i32 1, i32* @printworms, align 4
  br label %sw.epilog.319

sw.bb.11:                                         ; preds = %while.body
  %11 = load i8*, i8** @gg_optarg, align 8
  %call12 = call i64 @strtol(i8* %11, i8** null, i32 0) #1
  %conv = trunc i64 %call12 to i32
  store i32 %conv, i32* @printmoyo, align 4
  br label %sw.epilog.319

sw.bb.13:                                         ; preds = %while.body
  %12 = load i8*, i8** @gg_optarg, align 8
  %call14 = call i64 @strtol(i8* %12, i8** null, i32 0) #1
  %13 = load i32, i32* @debug, align 4
  %conv15 = sext i32 %13 to i64
  %xor = xor i64 %conv15, %call14
  %conv16 = trunc i64 %xor to i32
  store i32 %conv16, i32* @debug, align 4
  br label %sw.epilog.319

sw.bb.17:                                         ; preds = %while.body
  %14 = load i8*, i8** @gg_optarg, align 8
  %call18 = call i32 @atoi(i8* %14) #6
  store i32 %call18, i32* @mandated_depth, align 4
  br label %sw.epilog.319

sw.bb.19:                                         ; preds = %while.body
  %15 = load i8*, i8** @gg_optarg, align 8
  %call20 = call i64 @strtol(i8* %15, i8** null, i32 0) #1
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, i32* @hashflags, align 4
  br label %sw.epilog.319

sw.bb.22:                                         ; preds = %while.body
  store i32 2, i32* @printboard, align 4
  br label %sw.epilog.319

sw.bb.23:                                         ; preds = %while.body
  %16 = load i8*, i8** @gg_optarg, align 8
  %call24 = call i32 @atoi(i8* %16) #6
  store i32 %call24, i32* @mandated_backfill_depth, align 4
  br label %sw.epilog.319

sw.bb.25:                                         ; preds = %while.body
  %17 = load i8*, i8** @gg_optarg, align 8
  %call26 = call i32 @atoi(i8* %17) #6
  store i32 %call26, i32* @mandated_fourlib_depth, align 4
  br label %sw.epilog.319

sw.bb.27:                                         ; preds = %while.body
  %18 = load i8*, i8** @gg_optarg, align 8
  %call28 = call i32 @atoi(i8* %18) #6
  store i32 %call28, i32* @mandated_ko_depth, align 4
  br label %sw.epilog.319

sw.bb.29:                                         ; preds = %while.body
  %19 = load i8*, i8** @gg_optarg, align 8
  store i8* %19, i8** %untilstring, align 8
  br label %sw.epilog.319

sw.bb.30:                                         ; preds = %while.body
  %20 = load i8*, i8** @gg_optarg, align 8
  store i8* %20, i8** %outfile, align 8
  %21 = load i8*, i8** @gg_optarg, align 8
  %call31 = call i8* @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), i8* %21) #1
  br label %sw.epilog.319

sw.bb.32:                                         ; preds = %while.body
  %22 = load i8*, i8** @gg_optarg, align 8
  store i8* %22, i8** %outflags, align 8
  store i32 0, i32* @output_flags, align 4
  %23 = load i8*, i8** %outflags, align 8
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.32
  br label %while.cond.33

while.cond.33:                                    ; preds = %sw.epilog, %if.then
  %24 = load i8*, i8** %outflags, align 8
  %25 = load i8, i8* %24, align 1
  %tobool34 = icmp ne i8 %25, 0
  br i1 %tobool34, label %while.body.35, label %while.end

while.body.35:                                    ; preds = %while.cond.33
  %26 = load i8*, i8** %outflags, align 8
  %27 = load i8, i8* %26, align 1
  %conv36 = sext i8 %27 to i32
  switch i32 %conv36, label %sw.epilog [
    i32 100, label %sw.bb.37
    i32 118, label %sw.bb.38
  ]

sw.bb.37:                                         ; preds = %while.body.35
  %28 = load i32, i32* @output_flags, align 4
  %or = or i32 %28, 1
  store i32 %or, i32* @output_flags, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body.35
  %29 = load i32, i32* @output_flags, align 4
  %or39 = or i32 %29, 2
  store i32 %or39, i32* @output_flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body.35, %sw.bb.38, %sw.bb.37
  %30 = load i8*, i8** %outflags, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %outflags, align 8
  br label %while.cond.33

while.end:                                        ; preds = %while.cond.33
  br label %if.end

if.end:                                           ; preds = %while.end, %sw.bb.32
  br label %sw.epilog.319

sw.bb.40:                                         ; preds = %while.body
  store i32 1, i32* @quiet, align 4
  br label %sw.epilog.319

sw.bb.41:                                         ; preds = %while.body
  %31 = load i8*, i8** @gg_optarg, align 8
  store i8* %31, i8** %gtpfile, align 8
  br label %sw.epilog.319

sw.bb.42:                                         ; preds = %while.body
  %32 = load i8*, i8** @gg_optarg, align 8
  %call43 = call i32 @atoi(i8* %32) #6
  store i32 %call43, i32* %orientation, align 4
  %33 = load i32, i32* %orientation, align 4
  %cmp44 = icmp slt i32 %33, 0
  br i1 %cmp44, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.42
  %34 = load i32, i32* %orientation, align 4
  %cmp46 = icmp sgt i32 %34, 7
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %lor.lhs.false, %sw.bb.42
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i32, i32* %orientation, align 4
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.51:                                        ; preds = %lor.lhs.false
  br label %sw.epilog.319

sw.bb.52:                                         ; preds = %while.body
  %38 = load i8*, i8** @gg_optarg, align 8
  %call53 = call i32 @atoi(i8* %38) #6
  store i32 %call53, i32* @gtp_version, align 4
  br label %sw.epilog.319

sw.bb.54:                                         ; preds = %while.body
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 1000)
  store i32 0, i32* %retval
  br label %return

sw.bb.58:                                         ; preds = %while.body
  store i32 1, i32* @showtime, align 4
  br label %sw.epilog.319

sw.bb.59:                                         ; preds = %while.body
  store i32 1, i32* @showscore, align 4
  br label %sw.epilog.319

sw.bb.60:                                         ; preds = %while.body
  %42 = load i8*, i8** @gg_optarg, align 8
  %call61 = call i32 @atoi(i8* %42) #6
  store i32 %call61, i32* %handicap, align 4
  %43 = load i32, i32* %handicap, align 4
  %cmp62 = icmp slt i32 %43, 0
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %sw.bb.60
  %44 = load i32, i32* %handicap, align 4
  %cmp65 = icmp sgt i32 %44, 9
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %lor.lhs.false.64, %sw.bb.60
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i32, i32* %handicap, align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.70:                                        ; preds = %lor.lhs.false.64
  %48 = load i32, i32* %handicap, align 4
  %handicap71 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 0
  store i32 %48, i32* %handicap71, align 4
  br label %sw.epilog.319

sw.bb.72:                                         ; preds = %while.body
  %49 = load i8*, i8** @gg_optarg, align 8
  %call73 = call i32 @atoi(i8* %49) #6
  store i32 %call73, i32* %boardsize, align 4
  %50 = load i32, i32* %boardsize, align 4
  %cmp74 = icmp slt i32 %50, 5
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %sw.bb.72
  %51 = load i32, i32* %boardsize, align 4
  %cmp77 = icmp sgt i32 %51, 19
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %lor.lhs.false.76, %sw.bb.72
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = load i32, i32* %boardsize, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32 %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.82:                                        ; preds = %lor.lhs.false.76
  %55 = load i32, i32* %boardsize, align 4
  call void @gnugo_clear_board(i32 %55)
  br label %sw.epilog.319

sw.bb.83:                                         ; preds = %while.body
  %56 = load i8*, i8** @gg_optarg, align 8
  %call84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), float* @komi) #1
  %cmp85 = icmp ne i32 %call84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %sw.bb.83
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @gg_optarg, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.90:                                        ; preds = %sw.bb.83
  br label %sw.epilog.319

sw.bb.91:                                         ; preds = %while.body
  store i32 1, i32* @chinese_rules, align 4
  br label %sw.epilog.319

sw.bb.92:                                         ; preds = %while.body
  store i32 1, i32* @owl_threats, align 4
  br label %sw.epilog.319

sw.bb.93:                                         ; preds = %while.body
  store i32 0, i32* @owl_threats, align 4
  br label %sw.epilog.319

sw.bb.94:                                         ; preds = %while.body
  store i32 0, i32* @chinese_rules, align 4
  br label %sw.epilog.319

sw.bb.95:                                         ; preds = %while.body
  store i32 1, i32* @experimental_owl_ext, align 4
  br label %sw.epilog.319

sw.bb.96:                                         ; preds = %while.body
  store i32 1, i32* @experimental_semeai, align 4
  br label %sw.epilog.319

sw.bb.97:                                         ; preds = %while.body
  %60 = load i8*, i8** @gg_optarg, align 8
  %call98 = call i32 @atoi(i8* %60) #6
  store i32 %call98, i32* @semeai_variations, align 4
  br label %sw.epilog.319

sw.bb.99:                                         ; preds = %while.body
  store i32 0, i32* @experimental_semeai, align 4
  br label %sw.epilog.319

sw.bb.100:                                        ; preds = %while.body
  store i32 1, i32* @experimental_connections, align 4
  br label %sw.epilog.319

sw.bb.101:                                        ; preds = %while.body
  store i32 0, i32* @experimental_connections, align 4
  br label %sw.epilog.319

sw.bb.102:                                        ; preds = %while.body
  store i32 1, i32* @allow_suicide, align 4
  br label %sw.epilog.319

sw.bb.103:                                        ; preds = %while.body
  store i32 1, i32* @capture_all_dead, align 4
  br label %sw.epilog.319

sw.bb.104:                                        ; preds = %while.body
  store i32 1, i32* @play_out_aftermath, align 4
  br label %sw.epilog.319

sw.bb.105:                                        ; preds = %while.body
  %61 = load i8*, i8** @gg_optarg, align 8
  %call106 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #6
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.else

if.then.109:                                      ; preds = %sw.bb.105
  store i32 1, i32* %playmode, align 4
  br label %if.end.124

if.else:                                          ; preds = %sw.bb.105
  %62 = load i8*, i8** @gg_optarg, align 8
  %call110 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #6
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.else
  store i32 2, i32* %playmode, align 4
  br label %if.end.123

if.else.114:                                      ; preds = %if.else
  %63 = load i8*, i8** @gg_optarg, align 8
  %call115 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #6
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.else.114
  store i32 3, i32* %playmode, align 4
  br label %if.end.122

if.else.119:                                      ; preds = %if.else.114
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i8*, i8** @gg_optarg, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i8* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.122:                                       ; preds = %if.then.118
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.113
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.109
  br label %sw.epilog.319

sw.bb.125:                                        ; preds = %while.body
  %67 = load i8*, i8** @gg_optarg, align 8
  %call126 = call i64 @strlen(i8* %67) #6
  %cmp127 = icmp ugt i64 %call126, 3
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %sw.bb.125
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = load i8*, i8** @gg_optarg, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %69)
  call void @exit(i32 1) #7
  unreachable

if.end.131:                                       ; preds = %sw.bb.125
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %70 = load i8*, i8** @gg_optarg, align 8
  %call132 = call i8* @strcpy(i8* %arraydecay, i8* %70) #1
  store i32 10, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.133:                                        ; preds = %while.body
  %71 = load i8*, i8** @gg_optarg, align 8
  %call134 = call i64 @strlen(i8* %71) #6
  %cmp135 = icmp ugt i64 %call134, 7
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %sw.bb.133
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.139:                                       ; preds = %sw.bb.133
  %arraydecay140 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %73 = load i8*, i8** @gg_optarg, align 8
  %call141 = call i8* @strcpy(i8* %arraydecay140, i8* %73) #1
  %arraydecay142 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call143 = call i8* @strtok(i8* %arraydecay142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  %call144 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  store i8* %call144, i8** %decide_that, align 8
  %74 = load i8*, i8** %decide_that, align 8
  %tobool145 = icmp ne i8* %74, null
  br i1 %tobool145, label %if.end.148, label %if.then.146

if.then.146:                                      ; preds = %if.end.139
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.end.139
  store i32 11, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.149:                                        ; preds = %while.body
  %76 = load i8*, i8** @gg_optarg, align 8
  %call150 = call i64 @strlen(i8* %76) #6
  %cmp151 = icmp ugt i64 %call150, 3
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %sw.bb.149
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i8*, i8** @gg_optarg, align 8
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %78)
  call void @exit(i32 1) #7
  unreachable

if.end.155:                                       ; preds = %sw.bb.149
  %arraydecay156 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %79 = load i8*, i8** @gg_optarg, align 8
  %call157 = call i8* @strcpy(i8* %arraydecay156, i8* %79) #1
  store i32 12, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.158:                                        ; preds = %while.body
  %80 = load i8*, i8** @gg_optarg, align 8
  %call159 = call i64 @strlen(i8* %80) #6
  %cmp160 = icmp ugt i64 %call159, 3
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %sw.bb.158
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** @gg_optarg, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %82)
  call void @exit(i32 1) #7
  unreachable

if.end.164:                                       ; preds = %sw.bb.158
  %arraydecay165 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %83 = load i8*, i8** @gg_optarg, align 8
  %call166 = call i8* @strcpy(i8* %arraydecay165, i8* %83) #1
  store i32 13, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.167:                                        ; preds = %while.body
  %84 = load i8*, i8** @gg_optarg, align 8
  %call168 = call i64 @strlen(i8* %84) #6
  %cmp169 = icmp ugt i64 %call168, 7
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %sw.bb.167
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.173:                                       ; preds = %sw.bb.167
  %arraydecay174 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %86 = load i8*, i8** @gg_optarg, align 8
  %call175 = call i8* @strcpy(i8* %arraydecay174, i8* %86) #1
  %arraydecay176 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call177 = call i8* @strtok(i8* %arraydecay176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  %call178 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  store i8* %call178, i8** %decide_that, align 8
  %87 = load i8*, i8** %decide_that, align 8
  %tobool179 = icmp ne i8* %87, null
  br i1 %tobool179, label %if.end.182, label %if.then.180

if.then.180:                                      ; preds = %if.end.173
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.end.173
  store i32 14, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.183:                                        ; preds = %while.body
  %89 = load i8*, i8** @gg_optarg, align 8
  %call184 = call i64 @strlen(i8* %89) #6
  %cmp185 = icmp ugt i64 %call184, 7
  br i1 %cmp185, label %if.then.187, label %if.end.189

if.then.187:                                      ; preds = %sw.bb.183
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.189:                                       ; preds = %sw.bb.183
  %arraydecay190 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %91 = load i8*, i8** @gg_optarg, align 8
  %call191 = call i8* @strcpy(i8* %arraydecay190, i8* %91) #1
  %arraydecay192 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call193 = call i8* @strtok(i8* %arraydecay192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  %call194 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #1
  store i8* %call194, i8** %decide_that, align 8
  %92 = load i8*, i8** %decide_that, align 8
  %tobool195 = icmp ne i8* %92, null
  br i1 %tobool195, label %if.end.198, label %if.then.196

if.then.196:                                      ; preds = %if.end.189
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.198:                                       ; preds = %if.end.189
  store i32 15, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.199:                                        ; preds = %while.body
  store i32 16, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.200:                                        ; preds = %while.body
  %94 = load i8*, i8** @gg_optarg, align 8
  %call201 = call i64 @strlen(i8* %94) #6
  %cmp202 = icmp ugt i64 %call201, 3
  br i1 %cmp202, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %sw.bb.200
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = load i8*, i8** @gg_optarg, align 8
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %96)
  call void @exit(i32 1) #7
  unreachable

if.end.206:                                       ; preds = %sw.bb.200
  %arraydecay207 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %97 = load i8*, i8** @gg_optarg, align 8
  %call208 = call i8* @strcpy(i8* %arraydecay207, i8* %97) #1
  store i32 17, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.209:                                        ; preds = %while.body
  store i32 18, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.210:                                        ; preds = %while.body
  %98 = load i8*, i8** @gg_optarg, align 8
  %call211 = call i64 @strlen(i8* %98) #6
  %cmp212 = icmp ugt i64 %call211, 3
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %sw.bb.210
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i8*, i8** @gg_optarg, align 8
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %100)
  call void @exit(i32 1) #7
  unreachable

if.end.216:                                       ; preds = %sw.bb.210
  %arraydecay217 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %101 = load i8*, i8** @gg_optarg, align 8
  %call218 = call i8* @strcpy(i8* %arraydecay217, i8* %101) #1
  store i32 19, i32* %playmode, align 4
  br label %sw.epilog.319

sw.bb.219:                                        ; preds = %while.body
  %102 = load i8*, i8** @gg_optarg, align 8
  %call220 = call i32 @atoi(i8* %102) #6
  store i32 %call220, i32* @mandated_branch_depth, align 4
  br label %sw.epilog.319

sw.bb.221:                                        ; preds = %while.body
  %103 = load i8*, i8** @gg_optarg, align 8
  %call222 = call i32 @atoi(i8* %103) #6
  store i32 %call222, i32* @mandated_backfill2_depth, align 4
  br label %sw.epilog.319

sw.bb.223:                                        ; preds = %while.body
  %104 = load i8*, i8** @gg_optarg, align 8
  %call224 = call i32 @atoi(i8* %104) #6
  store i32 %call224, i32* @mandated_superstring_depth, align 4
  br label %sw.epilog.319

sw.bb.225:                                        ; preds = %while.body
  %105 = load i8*, i8** @gg_optarg, align 8
  %call226 = call i32 @atoi(i8* %105) #6
  store i32 %call226, i32* @mandated_aa_depth, align 4
  br label %sw.bb.227

sw.bb.227:                                        ; preds = %while.body, %sw.bb.225
  %106 = load i8*, i8** @gg_optarg, align 8
  %call228 = call i32 @atoi(i8* %106) #6
  store i32 %call228, i32* @mandated_owl_distrust_depth, align 4
  br label %sw.epilog.319

sw.bb.229:                                        ; preds = %while.body
  %107 = load i8*, i8** @gg_optarg, align 8
  %call230 = call i32 @atoi(i8* %107) #6
  store i32 %call230, i32* @mandated_owl_branch_depth, align 4
  br label %sw.epilog.319

sw.bb.231:                                        ; preds = %while.body
  %108 = load i8*, i8** @gg_optarg, align 8
  %call232 = call i32 @atoi(i8* %108) #6
  store i32 %call232, i32* @mandated_owl_reading_depth, align 4
  br label %sw.epilog.319

sw.bb.233:                                        ; preds = %while.body
  %109 = load i8*, i8** @gg_optarg, align 8
  %call234 = call i32 @atoi(i8* %109) #6
  store i32 %call234, i32* @mandated_owl_node_limit, align 4
  br label %sw.epilog.319

sw.bb.235:                                        ; preds = %while.body
  store i32 0, i32* @fusekidb, align 4
  br label %sw.epilog.319

sw.bb.236:                                        ; preds = %while.body
  store i32 1, i32* @disable_fuseki, align 4
  br label %sw.epilog.319

sw.bb.237:                                        ; preds = %while.body
  store i32 0, i32* @josekidb, align 4
  br label %sw.epilog.319

sw.bb.238:                                        ; preds = %while.body
  %110 = load i8*, i8** @gg_optarg, align 8
  %call239 = call i32 @atoi(i8* %110) #6
  store i32 %call239, i32* @level, align 4
  br label %sw.epilog.319

sw.bb.240:                                        ; preds = %while.body
  %111 = load i8*, i8** @gg_optarg, align 8
  %call241 = call i64 @strlen(i8* %111) #6
  %cmp242 = icmp ugt i64 %call241, 3
  br i1 %cmp242, label %if.then.244, label %if.end.246

if.then.244:                                      ; preds = %sw.bb.240
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = load i8*, i8** @gg_optarg, align 8
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* %113)
  call void @exit(i32 1) #7
  unreachable

if.end.246:                                       ; preds = %sw.bb.240
  %arraydecay247 = getelementptr inbounds [4 x i8], [4 x i8]* %debuginfluence_move, i32 0, i32 0
  %114 = load i8*, i8** @gg_optarg, align 8
  %call248 = call i8* @strcpy(i8* %arraydecay247, i8* %114) #1
  br label %sw.epilog.319

sw.bb.249:                                        ; preds = %while.body
  store i32 9, i32* %playmode, align 4
  %115 = load i8*, i8** @gg_optarg, align 8
  %call250 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp251 = icmp eq i32 %call250, 0
  br i1 %cmp251, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %sw.bb.249
  store i32 1, i32* %replay_color, align 4
  br label %if.end.269

if.else.254:                                      ; preds = %sw.bb.249
  %116 = load i8*, i8** @gg_optarg, align 8
  %call255 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #6
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.then.258, label %if.else.259

if.then.258:                                      ; preds = %if.else.254
  store i32 2, i32* %replay_color, align 4
  br label %if.end.268

if.else.259:                                      ; preds = %if.else.254
  %117 = load i8*, i8** @gg_optarg, align 8
  %call260 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #6
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.else.264

if.then.263:                                      ; preds = %if.else.259
  store i32 3, i32* %replay_color, align 4
  br label %if.end.267

if.else.264:                                      ; preds = %if.else.259
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %119 = load i8*, i8** @gg_optarg, align 8
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* %119)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.267:                                       ; preds = %if.then.263
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.258
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.253
  br label %sw.epilog.319

sw.bb.270:                                        ; preds = %while.body
  %121 = load i8*, i8** @gg_optarg, align 8
  store i8* %121, i8** %scoringmode, align 8
  %122 = load i32, i32* %playmode, align 4
  %cmp271 = icmp eq i32 %122, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %sw.bb.270
  store i32 6, i32* %playmode, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %sw.bb.270
  br label %sw.epilog.319

sw.bb.275:                                        ; preds = %while.body
  store i32 7, i32* %playmode, align 4
  %123 = load i8*, i8** @gg_optarg, align 8
  store i8* %123, i8** %printsgffile, align 8
  br label %sw.epilog.319

sw.bb.276:                                        ; preds = %while.body
  %124 = load i8*, i8** @gg_optarg, align 8
  %call277 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp278 = icmp eq i32 %call277, 0
  br i1 %cmp278, label %if.then.280, label %if.else.281

if.then.280:                                      ; preds = %sw.bb.276
  store i32 1, i32* %mandated_color, align 4
  br label %if.end.290

if.else.281:                                      ; preds = %sw.bb.276
  %125 = load i8*, i8** @gg_optarg, align 8
  %call282 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #6
  %cmp283 = icmp eq i32 %call282, 0
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %if.else.281
  store i32 2, i32* %mandated_color, align 4
  br label %if.end.289

if.else.286:                                      ; preds = %if.else.281
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load i8*, i8** @gg_optarg, align 8
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), i8* %127)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.289:                                       ; preds = %if.then.285
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.280
  br label %sw.epilog.319

sw.bb.291:                                        ; preds = %while.body
  call void @show_copyright()
  store i32 0, i32* %retval
  br label %return

sw.bb.292:                                        ; preds = %while.body
  store i32 1, i32* @play_mirror_go, align 4
  br label %sw.epilog.319

sw.bb.293:                                        ; preds = %while.body
  %129 = load i8*, i8** @gg_optarg, align 8
  %call294 = call i32 @atoi(i8* %129) #6
  store i32 %call294, i32* @mirror_stones_limit, align 4
  br label %sw.epilog.319

sw.bb.295:                                        ; preds = %while.body
  call void @show_version()
  store i32 0, i32* %retval
  br label %return

sw.bb.296:                                        ; preds = %while.body
  call void @show_version()
  %130 = load i8*, i8** @gg_optarg, align 8
  %tobool297 = icmp ne i8* %130, null
  br i1 %tobool297, label %if.then.298, label %if.else.304

if.then.298:                                      ; preds = %sw.bb.296
  %131 = load i8*, i8** @gg_optarg, align 8
  %call299 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i64 5) #6
  %cmp300 = icmp eq i32 %call299, 0
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.then.298
  call void @show_debug_help()
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.then.298
  br label %if.end.315

if.else.304:                                      ; preds = %sw.bb.296
  %132 = load i32, i32* @gg_optind, align 4
  %133 = load i32, i32* %argc.addr, align 4
  %cmp305 = icmp slt i32 %132, %133
  br i1 %cmp305, label %if.then.307, label %if.else.313

if.then.307:                                      ; preds = %if.else.304
  %134 = load i32, i32* @gg_optind, align 4
  %idxprom = sext i32 %134 to i64
  %135 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %135, i64 %idxprom
  %136 = load i8*, i8** %arrayidx, align 8
  %call308 = call i32 @strncmp(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i64 5) #6
  %cmp309 = icmp eq i32 %call308, 0
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.then.307
  call void @show_debug_help()
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %if.then.307
  br label %if.end.314

if.else.313:                                      ; preds = %if.else.304
  call void @show_help()
  br label %if.end.314

if.end.314:                                       ; preds = %if.else.313, %if.end.312
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.303
  store i32 0, i32* %retval
  br label %return

sw.bb.316:                                        ; preds = %while.body
  call void @show_debug_flags()
  store i32 0, i32* %retval
  br label %return

sw.bb.317:                                        ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.317
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

sw.epilog.319:                                    ; preds = %sw.bb.293, %sw.bb.292, %if.end.290, %sw.bb.275, %if.end.274, %if.end.269, %if.end.246, %sw.bb.238, %sw.bb.237, %sw.bb.236, %sw.bb.235, %sw.bb.233, %sw.bb.231, %sw.bb.229, %sw.bb.227, %sw.bb.223, %sw.bb.221, %sw.bb.219, %if.end.216, %sw.bb.209, %if.end.206, %sw.bb.199, %if.end.198, %if.end.182, %if.end.164, %if.end.155, %if.end.148, %if.end.131, %if.end.124, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.100, %sw.bb.99, %sw.bb.97, %sw.bb.96, %sw.bb.95, %sw.bb.94, %sw.bb.93, %sw.bb.92, %sw.bb.91, %if.end.90, %if.end.82, %if.end.70, %sw.bb.59, %sw.bb.58, %sw.bb.52, %if.end.51, %sw.bb.41, %sw.bb.40, %if.end, %sw.bb.30, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.22, %sw.bb.19, %sw.bb.17, %sw.bb.13, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.1, %sw.bb
  br label %while.cond

while.end.320:                                    ; preds = %while.cond
  %138 = load i32, i32* %playmode, align 4
  %cmp321 = icmp eq i32 %138, 0
  br i1 %cmp321, label %if.then.323, label %if.end.328

if.then.323:                                      ; preds = %while.end.320
  %139 = load i8*, i8** %infilename, align 8
  %tobool324 = icmp ne i8* %139, null
  br i1 %tobool324, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %if.then.323
  store i32 5, i32* %playmode, align 4
  br label %if.end.327

if.else.326:                                      ; preds = %if.then.323
  store i32 3, i32* %playmode, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.326, %if.then.325
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %while.end.320
  %140 = load i32, i32* @quiet, align 4
  %tobool329 = icmp ne i32 %140, 0
  br i1 %tobool329, label %if.end.334, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.328
  %141 = load i32, i32* %playmode, align 4
  %cmp330 = icmp ne i32 %141, 3
  br i1 %cmp330, label %if.then.332, label %if.end.334

if.then.332:                                      ; preds = %land.lhs.true
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  call void @show_version()
  call void @show_copyright()
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %land.lhs.true, %if.end.328
  %143 = load i32, i32* %seed, align 4
  %tobool335 = icmp ne i32 %143, 0
  br i1 %tobool335, label %if.end.337, label %if.then.336

if.then.336:                                      ; preds = %if.end.334
  store i32 1, i32* %seed, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.336, %if.end.334
  %144 = load i32, i32* %seed, align 4
  call void @gg_srand(i32 %144)
  %145 = load i32, i32* %seed, align 4
  store i32 %145, i32* @random_seed, align 4
  call void @init_gnugo()
  %146 = load i8*, i8** %infilename, align 8
  %tobool338 = icmp ne i8* %146, null
  br i1 %tobool338, label %if.then.339, label %if.else.346

if.then.339:                                      ; preds = %if.end.337
  %147 = load i8*, i8** %infilename, align 8
  %call340 = call i32 @sgftree_readfile(%struct.SGFTree_t* %sgftree, i8* %147)
  %tobool341 = icmp ne i32 %call340, 0
  br i1 %tobool341, label %if.end.344, label %if.then.342

if.then.342:                                      ; preds = %if.then.339
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = load i8*, i8** %infilename, align 8
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* %149)
  call void @exit(i32 1) #7
  unreachable

if.end.344:                                       ; preds = %if.then.339
  %150 = load i8*, i8** %untilstring, align 8
  %151 = load i32, i32* %orientation, align 4
  %call345 = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %gameinfo, %struct.SGFTree_t* %sgftree, i8* %150, i32 %151)
  br label %if.end.347

if.else.346:                                      ; preds = %if.end.337
  %152 = load i32, i32* @board_size, align 4
  %153 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %sgftree, i32 %152, float %153)
  br label %if.end.347

if.end.347:                                       ; preds = %if.else.346, %if.end.344
  %game_record = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 2
  %154 = bitcast %struct.SGFTree_t* %game_record to i8*
  %155 = bitcast %struct.SGFTree_t* %sgftree to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 16, i32 8, i1 false)
  %arrayidx348 = getelementptr inbounds [4 x i8], [4 x i8]* %debuginfluence_move, i32 0, i64 0
  %156 = load i8, i8* %arrayidx348, align 1
  %tobool349 = icmp ne i8 %156, 0
  br i1 %tobool349, label %if.then.350, label %if.end.353

if.then.350:                                      ; preds = %if.end.347
  %157 = load i32, i32* @board_size, align 4
  %arraydecay351 = getelementptr inbounds [4 x i8], [4 x i8]* %debuginfluence_move, i32 0, i32 0
  %call352 = call i32 @string_to_location(i32 %157, i8* %arraydecay351, i32* %m, i32* %n)
  %158 = load i32, i32* %m, align 4
  %159 = load i32, i32* %n, align 4
  call void @debug_influence_move(i32 %158, i32 %159)
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.350, %if.end.347
  %160 = load i8*, i8** %outfile, align 8
  %tobool354 = icmp ne i8* %160, null
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.365

land.lhs.true.355:                                ; preds = %if.end.353
  %161 = load i32, i32* %playmode, align 4
  %cmp356 = icmp ne i32 %161, 7
  br i1 %cmp356, label %if.then.358, label %if.end.365

if.then.358:                                      ; preds = %land.lhs.true.355
  %162 = load i8*, i8** %outfile, align 8
  %call359 = call %struct._IO_FILE* @fopen(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call359, %struct._IO_FILE** %output_check, align 8
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %output_check, align 8
  %tobool360 = icmp ne %struct._IO_FILE* %163, null
  br i1 %tobool360, label %if.end.363, label %if.then.361

if.then.361:                                      ; preds = %if.then.358
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = load i8*, i8** %outfile, align 8
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), i8* %165)
  call void @exit(i32 1) #7
  unreachable

if.end.363:                                       ; preds = %if.then.358
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %output_check, align 8
  %call364 = call i32 @fclose(%struct._IO_FILE* %166)
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.363, %land.lhs.true.355, %if.end.353
  %167 = load i32, i32* %playmode, align 4
  switch i32 %167, label %sw.default.590 [
    i32 8, label %sw.bb.366
    i32 9, label %sw.bb.367
    i32 5, label %sw.bb.372
    i32 6, label %sw.bb.381
    i32 7, label %sw.bb.391
    i32 10, label %sw.bb.403
    i32 11, label %sw.bb.417
    i32 12, label %sw.bb.439
    i32 13, label %sw.bb.455
    i32 14, label %sw.bb.471
    i32 15, label %sw.bb.497
    i32 16, label %sw.bb.523
    i32 17, label %sw.bb.533
    i32 18, label %sw.bb.549
    i32 19, label %sw.bb.560
    i32 3, label %sw.bb.572
    i32 2, label %sw.bb.584
    i32 1, label %sw.bb.589
  ]

sw.bb.366:                                        ; preds = %if.end.365
  %168 = load i32, i32* %benchmark, align 4
  call void @play_solo(%struct.Gameinfo* %gameinfo, i32 %168)
  br label %sw.epilog.597

sw.bb.367:                                        ; preds = %if.end.365
  %169 = load i8*, i8** %infilename, align 8
  %tobool368 = icmp ne i8* %169, null
  br i1 %tobool368, label %if.end.371, label %if.then.369

if.then.369:                                      ; preds = %sw.bb.367
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.371:                                       ; preds = %sw.bb.367
  %171 = load i32, i32* %replay_color, align 4
  call void @play_replay(%struct.Gameinfo* %gameinfo, i32 %171)
  br label %sw.epilog.597

sw.bb.372:                                        ; preds = %if.end.365
  %172 = load i32, i32* %mandated_color, align 4
  %cmp373 = icmp ne i32 %172, 0
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %sw.bb.372
  %173 = load i32, i32* %mandated_color, align 4
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  store i32 %173, i32* %to_move, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %sw.bb.372
  %174 = load i8*, i8** %infilename, align 8
  %tobool377 = icmp ne i8* %174, null
  br i1 %tobool377, label %if.end.380, label %if.then.378

if.then.378:                                      ; preds = %if.end.376
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.380:                                       ; preds = %if.end.376
  call void @load_and_analyze_sgf_file(%struct.Gameinfo* %gameinfo)
  br label %sw.epilog.597

sw.bb.381:                                        ; preds = %if.end.365
  %176 = load i32, i32* %mandated_color, align 4
  %cmp382 = icmp ne i32 %176, 0
  br i1 %cmp382, label %if.then.384, label %if.end.386

if.then.384:                                      ; preds = %sw.bb.381
  %177 = load i32, i32* %mandated_color, align 4
  %to_move385 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  store i32 %177, i32* %to_move385, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.384, %sw.bb.381
  %178 = load i8*, i8** %infilename, align 8
  %tobool387 = icmp ne i8* %178, null
  br i1 %tobool387, label %if.end.390, label %if.then.388

if.then.388:                                      ; preds = %if.end.386
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call389 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.390:                                       ; preds = %if.end.386
  %180 = load i8*, i8** %scoringmode, align 8
  call void @load_and_score_sgf_file(%struct.SGFTree_t* %sgftree, %struct.Gameinfo* %gameinfo, i8* %180)
  br label %sw.epilog.597

sw.bb.391:                                        ; preds = %if.end.365
  %181 = load i8*, i8** %infilename, align 8
  %tobool392 = icmp ne i8* %181, null
  br i1 %tobool392, label %if.else.395, label %if.then.393

if.then.393:                                      ; preds = %sw.bb.391
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call394 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.else.395:                                      ; preds = %sw.bb.391
  %183 = load i32, i32* %mandated_color, align 4
  %cmp396 = icmp ne i32 %183, 0
  br i1 %cmp396, label %if.then.398, label %if.end.400

if.then.398:                                      ; preds = %if.else.395
  %184 = load i32, i32* %mandated_color, align 4
  %to_move399 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  store i32 %184, i32* %to_move399, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.398, %if.else.395
  %to_move401 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  %185 = load i32, i32* %to_move401, align 4
  %186 = load i8*, i8** %printsgffile, align 8
  call void @sgffile_printsgf(i32 %185, i8* %186)
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.400
  br label %sw.epilog.597

sw.bb.403:                                        ; preds = %if.end.365
  %187 = load i8*, i8** %infilename, align 8
  %tobool406 = icmp ne i8* %187, null
  br i1 %tobool406, label %if.end.409, label %if.then.407

if.then.407:                                      ; preds = %sw.bb.403
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call408 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.409:                                       ; preds = %sw.bb.403
  %189 = load i32, i32* @board_size, align 4
  %arraydecay410 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call411 = call i32 @string_to_location(i32 %189, i8* %arraydecay410, i32* %m404, i32* %n405)
  %tobool412 = icmp ne i32 %call411, 0
  br i1 %tobool412, label %if.end.415, label %if.then.413

if.then.413:                                      ; preds = %if.end.409
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.415:                                       ; preds = %if.end.409
  %191 = load i32, i32* %m404, align 4
  %192 = load i32, i32* %n405, align 4
  %193 = load i32, i32* @board_size, align 4
  %194 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %191, i32 %192, i32* %m404, i32* %n405, i32 %193, i32 %194)
  %195 = load i32, i32* %m404, align 4
  %mul = mul nsw i32 %195, 20
  %add = add nsw i32 21, %mul
  %196 = load i32, i32* %n405, align 4
  %add416 = add nsw i32 %add, %196
  call void @decide_string(i32 %add416)
  br label %sw.epilog.597

sw.bb.417:                                        ; preds = %if.end.365
  %197 = load i8*, i8** %infilename, align 8
  %tobool418 = icmp ne i8* %197, null
  br i1 %tobool418, label %if.end.421, label %if.then.419

if.then.419:                                      ; preds = %sw.bb.417
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.421:                                       ; preds = %sw.bb.417
  %199 = load i32, i32* @board_size, align 4
  %arraydecay422 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call423 = call i32 @string_to_location(i32 %199, i8* %arraydecay422, i32* %ai, i32* %aj)
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.end.427, label %if.then.425

if.then.425:                                      ; preds = %if.end.421
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call426 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.427:                                       ; preds = %if.end.421
  %201 = load i32, i32* @board_size, align 4
  %202 = load i8*, i8** %decide_that, align 8
  %call428 = call i32 @string_to_location(i32 %201, i8* %202, i32* %bi, i32* %bj)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.end.432, label %if.then.430

if.then.430:                                      ; preds = %if.end.427
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.432:                                       ; preds = %if.end.427
  %204 = load i32, i32* %ai, align 4
  %205 = load i32, i32* %aj, align 4
  %206 = load i32, i32* @board_size, align 4
  %207 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %204, i32 %205, i32* %ai, i32* %aj, i32 %206, i32 %207)
  %208 = load i32, i32* %bi, align 4
  %209 = load i32, i32* %bj, align 4
  %210 = load i32, i32* @board_size, align 4
  %211 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %208, i32 %209, i32* %bi, i32* %bj, i32 %210, i32 %211)
  %212 = load i32, i32* %ai, align 4
  %mul433 = mul nsw i32 %212, 20
  %add434 = add nsw i32 21, %mul433
  %213 = load i32, i32* %aj, align 4
  %add435 = add nsw i32 %add434, %213
  %214 = load i32, i32* %bi, align 4
  %mul436 = mul nsw i32 %214, 20
  %add437 = add nsw i32 21, %mul436
  %215 = load i32, i32* %bj, align 4
  %add438 = add nsw i32 %add437, %215
  call void @decide_connection(i32 %add435, i32 %add438)
  br label %sw.epilog.597

sw.bb.439:                                        ; preds = %if.end.365
  %216 = load i8*, i8** %infilename, align 8
  %tobool442 = icmp ne i8* %216, null
  br i1 %tobool442, label %if.end.445, label %if.then.443

if.then.443:                                      ; preds = %sw.bb.439
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call444 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.445:                                       ; preds = %sw.bb.439
  %218 = load i32, i32* @board_size, align 4
  %arraydecay446 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call447 = call i32 @string_to_location(i32 %218, i8* %arraydecay446, i32* %m440, i32* %n441)
  %tobool448 = icmp ne i32 %call447, 0
  br i1 %tobool448, label %if.end.451, label %if.then.449

if.then.449:                                      ; preds = %if.end.445
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.451:                                       ; preds = %if.end.445
  %220 = load i32, i32* %m440, align 4
  %221 = load i32, i32* %n441, align 4
  %222 = load i32, i32* @board_size, align 4
  %223 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %220, i32 %221, i32* %m440, i32* %n441, i32 %222, i32 %223)
  %224 = load i32, i32* %m440, align 4
  %mul452 = mul nsw i32 %224, 20
  %add453 = add nsw i32 21, %mul452
  %225 = load i32, i32* %n441, align 4
  %add454 = add nsw i32 %add453, %225
  call void @decide_owl(i32 %add454)
  br label %sw.epilog.597

sw.bb.455:                                        ; preds = %if.end.365
  %226 = load i8*, i8** %infilename, align 8
  %tobool458 = icmp ne i8* %226, null
  br i1 %tobool458, label %if.end.461, label %if.then.459

if.then.459:                                      ; preds = %sw.bb.455
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call460 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.461:                                       ; preds = %sw.bb.455
  %228 = load i32, i32* @board_size, align 4
  %arraydecay462 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call463 = call i32 @string_to_location(i32 %228, i8* %arraydecay462, i32* %m456, i32* %n457)
  %tobool464 = icmp ne i32 %call463, 0
  br i1 %tobool464, label %if.end.467, label %if.then.465

if.then.465:                                      ; preds = %if.end.461
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.467:                                       ; preds = %if.end.461
  %230 = load i32, i32* %m456, align 4
  %231 = load i32, i32* %n457, align 4
  %232 = load i32, i32* @board_size, align 4
  %233 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %230, i32 %231, i32* %m456, i32* %n457, i32 %232, i32 %233)
  %234 = load i32, i32* %m456, align 4
  %mul468 = mul nsw i32 %234, 20
  %add469 = add nsw i32 21, %mul468
  %235 = load i32, i32* %n457, align 4
  %add470 = add nsw i32 %add469, %235
  call void @decide_dragon_data(i32 %add470)
  br label %sw.epilog.597

sw.bb.471:                                        ; preds = %if.end.365
  %236 = load i8*, i8** %infilename, align 8
  %tobool476 = icmp ne i8* %236, null
  br i1 %tobool476, label %if.end.479, label %if.then.477

if.then.477:                                      ; preds = %sw.bb.471
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.479:                                       ; preds = %sw.bb.471
  %238 = load i32, i32* @board_size, align 4
  %arraydecay480 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call481 = call i32 @string_to_location(i32 %238, i8* %arraydecay480, i32* %ai472, i32* %aj473)
  %tobool482 = icmp ne i32 %call481, 0
  br i1 %tobool482, label %if.end.485, label %if.then.483

if.then.483:                                      ; preds = %if.end.479
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.485:                                       ; preds = %if.end.479
  %240 = load i32, i32* @board_size, align 4
  %241 = load i8*, i8** %decide_that, align 8
  %call486 = call i32 @string_to_location(i32 %240, i8* %241, i32* %bi474, i32* %bj475)
  %tobool487 = icmp ne i32 %call486, 0
  br i1 %tobool487, label %if.end.490, label %if.then.488

if.then.488:                                      ; preds = %if.end.485
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call489 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.490:                                       ; preds = %if.end.485
  %243 = load i32, i32* %ai472, align 4
  %244 = load i32, i32* %aj473, align 4
  %245 = load i32, i32* @board_size, align 4
  %246 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %243, i32 %244, i32* %ai472, i32* %aj473, i32 %245, i32 %246)
  %247 = load i32, i32* %bi474, align 4
  %248 = load i32, i32* %bj475, align 4
  %249 = load i32, i32* @board_size, align 4
  %250 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %247, i32 %248, i32* %bi474, i32* %bj475, i32 %249, i32 %250)
  %251 = load i32, i32* %ai472, align 4
  %mul491 = mul nsw i32 %251, 20
  %add492 = add nsw i32 21, %mul491
  %252 = load i32, i32* %aj473, align 4
  %add493 = add nsw i32 %add492, %252
  %253 = load i32, i32* %bi474, align 4
  %mul494 = mul nsw i32 %253, 20
  %add495 = add nsw i32 21, %mul494
  %254 = load i32, i32* %bj475, align 4
  %add496 = add nsw i32 %add495, %254
  call void @decide_semeai(i32 %add493, i32 %add496)
  br label %sw.epilog.597

sw.bb.497:                                        ; preds = %if.end.365
  %255 = load i8*, i8** %infilename, align 8
  %tobool502 = icmp ne i8* %255, null
  br i1 %tobool502, label %if.end.505, label %if.then.503

if.then.503:                                      ; preds = %sw.bb.497
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.505:                                       ; preds = %sw.bb.497
  %257 = load i32, i32* @board_size, align 4
  %arraydecay506 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call507 = call i32 @string_to_location(i32 %257, i8* %arraydecay506, i32* %ai498, i32* %aj499)
  %tobool508 = icmp ne i32 %call507, 0
  br i1 %tobool508, label %if.end.511, label %if.then.509

if.then.509:                                      ; preds = %if.end.505
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call510 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.511:                                       ; preds = %if.end.505
  %259 = load i32, i32* @board_size, align 4
  %260 = load i8*, i8** %decide_that, align 8
  %call512 = call i32 @string_to_location(i32 %259, i8* %260, i32* %bi500, i32* %bj501)
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.end.516, label %if.then.514

if.then.514:                                      ; preds = %if.end.511
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call515 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %261, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.516:                                       ; preds = %if.end.511
  %262 = load i32, i32* %ai498, align 4
  %263 = load i32, i32* %aj499, align 4
  %264 = load i32, i32* @board_size, align 4
  %265 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %262, i32 %263, i32* %ai498, i32* %aj499, i32 %264, i32 %265)
  %266 = load i32, i32* %bi500, align 4
  %267 = load i32, i32* %bj501, align 4
  %268 = load i32, i32* @board_size, align 4
  %269 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %266, i32 %267, i32* %bi500, i32* %bj501, i32 %268, i32 %269)
  %270 = load i32, i32* %ai498, align 4
  %mul517 = mul nsw i32 %270, 20
  %add518 = add nsw i32 21, %mul517
  %271 = load i32, i32* %aj499, align 4
  %add519 = add nsw i32 %add518, %271
  %272 = load i32, i32* %bi500, align 4
  %mul520 = mul nsw i32 %272, 20
  %add521 = add nsw i32 21, %mul520
  %273 = load i32, i32* %bj501, align 4
  %add522 = add nsw i32 %add521, %273
  call void @decide_tactical_semeai(i32 %add519, i32 %add522)
  br label %sw.epilog.597

sw.bb.523:                                        ; preds = %if.end.365
  %274 = load i8*, i8** %infilename, align 8
  %tobool524 = icmp ne i8* %274, null
  br i1 %tobool524, label %if.end.527, label %if.then.525

if.then.525:                                      ; preds = %sw.bb.523
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call526 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.527:                                       ; preds = %sw.bb.523
  %to_move528 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  %276 = load i32, i32* %to_move528, align 4
  store i32 %276, i32* %color, align 4
  %277 = load i32, i32* %mandated_color, align 4
  %cmp529 = icmp ne i32 %277, 0
  br i1 %cmp529, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %if.end.527
  %278 = load i32, i32* %mandated_color, align 4
  store i32 %278, i32* %color, align 4
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.531, %if.end.527
  %279 = load i32, i32* %color, align 4
  call void @decide_position(i32 %279)
  br label %sw.epilog.597

sw.bb.533:                                        ; preds = %if.end.365
  %280 = load i8*, i8** %infilename, align 8
  %tobool536 = icmp ne i8* %280, null
  br i1 %tobool536, label %if.end.539, label %if.then.537

if.then.537:                                      ; preds = %sw.bb.533
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call538 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.539:                                       ; preds = %sw.bb.533
  %282 = load i32, i32* @board_size, align 4
  %arraydecay540 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call541 = call i32 @string_to_location(i32 %282, i8* %arraydecay540, i32* %m534, i32* %n535)
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %if.end.545, label %if.then.543

if.then.543:                                      ; preds = %if.end.539
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call544 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.545:                                       ; preds = %if.end.539
  %284 = load i32, i32* %m534, align 4
  %285 = load i32, i32* %n535, align 4
  %286 = load i32, i32* @board_size, align 4
  %287 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %284, i32 %285, i32* %m534, i32* %n535, i32 %286, i32 %287)
  %288 = load i32, i32* %m534, align 4
  %mul546 = mul nsw i32 %288, 20
  %add547 = add nsw i32 21, %mul546
  %289 = load i32, i32* %n535, align 4
  %add548 = add nsw i32 %add547, %289
  call void @decide_eye(i32 %add548)
  br label %sw.epilog.597

sw.bb.549:                                        ; preds = %if.end.365
  %290 = load i8*, i8** %infilename, align 8
  %tobool551 = icmp ne i8* %290, null
  br i1 %tobool551, label %if.end.554, label %if.then.552

if.then.552:                                      ; preds = %sw.bb.549
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.554:                                       ; preds = %sw.bb.549
  %to_move555 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 1
  %292 = load i32, i32* %to_move555, align 4
  store i32 %292, i32* %color550, align 4
  %293 = load i32, i32* %mandated_color, align 4
  %cmp556 = icmp ne i32 %293, 0
  br i1 %cmp556, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %if.end.554
  %294 = load i32, i32* %mandated_color, align 4
  store i32 %294, i32* %color550, align 4
  br label %if.end.559

if.end.559:                                       ; preds = %if.then.558, %if.end.554
  %295 = load i32, i32* %color550, align 4
  call void @decide_combination(i32 %295)
  br label %sw.epilog.597

sw.bb.560:                                        ; preds = %if.end.365
  %296 = load i32, i32* @board_size, align 4
  %arraydecay563 = getelementptr inbounds [8 x i8], [8 x i8]* %decide_this, i32 0, i32 0
  %call564 = call i32 @string_to_location(i32 %296, i8* %arraydecay563, i32* %m561, i32* %n562)
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %if.end.568, label %if.then.566

if.then.566:                                      ; preds = %sw.bb.560
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call567 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.568:                                       ; preds = %sw.bb.560
  %298 = load i32, i32* %m561, align 4
  %299 = load i32, i32* %n562, align 4
  %300 = load i32, i32* @board_size, align 4
  %301 = load i32, i32* %orientation, align 4
  call void @rotate(i32 %298, i32 %299, i32* %m561, i32* %n562, i32 %300, i32 %301)
  %302 = load i32, i32* %m561, align 4
  %mul569 = mul nsw i32 %302, 20
  %add570 = add nsw i32 21, %mul569
  %303 = load i32, i32* %n562, align 4
  %add571 = add nsw i32 %add570, %303
  call void @decide_surrounded(i32 %add571)
  br label %sw.epilog.597

sw.bb.572:                                        ; preds = %if.end.365
  %304 = load i8*, i8** %gtpfile, align 8
  %cmp573 = icmp ne i8* %304, null
  br i1 %cmp573, label %if.then.575, label %if.else.582

if.then.575:                                      ; preds = %sw.bb.572
  %305 = load i8*, i8** %gtpfile, align 8
  %call576 = call %struct._IO_FILE* @fopen(i8* %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0))
  store %struct._IO_FILE* %call576, %struct._IO_FILE** %gtp_input_FILE, align 8
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %gtp_input_FILE, align 8
  %cmp577 = icmp eq %struct._IO_FILE* %306, null
  br i1 %cmp577, label %if.then.579, label %if.end.581

if.then.579:                                      ; preds = %if.then.575
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %308 = load i8*, i8** %gtpfile, align 8
  %call580 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* %308)
  store i32 1, i32* %retval
  br label %return

if.end.581:                                       ; preds = %if.then.575
  br label %if.end.583

if.else.582:                                      ; preds = %sw.bb.572
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %309, %struct._IO_FILE** %gtp_input_FILE, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %if.else.582, %if.end.581
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %gtp_input_FILE, align 8
  %311 = load i32, i32* %orientation, align 4
  call void @play_gtp(%struct._IO_FILE* %310, i32 %311)
  br label %sw.epilog.597

sw.bb.584:                                        ; preds = %if.end.365
  %312 = load i32, i32* %mandated_color, align 4
  %cmp585 = icmp ne i32 %312, 0
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %sw.bb.584
  %313 = load i32, i32* %mandated_color, align 4
  %sub = sub nsw i32 3, %313
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 3
  store i32 %sub, i32* %computer_player, align 4
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %sw.bb.584
  %314 = load i8*, i8** %infilename, align 8
  %315 = load i8*, i8** %untilstring, align 8
  call void @play_ascii_emacs(%struct.SGFTree_t* %sgftree, %struct.Gameinfo* %gameinfo, i8* %314, i8* %315)
  br label %sw.epilog.597

sw.bb.589:                                        ; preds = %if.end.365
  br label %sw.default.590

sw.default.590:                                   ; preds = %if.end.365, %sw.bb.589
  %316 = load i32, i32* %mandated_color, align 4
  %cmp591 = icmp ne i32 %316, 0
  br i1 %cmp591, label %if.then.593, label %if.end.596

if.then.593:                                      ; preds = %sw.default.590
  %317 = load i32, i32* %mandated_color, align 4
  %sub594 = sub nsw i32 3, %317
  %computer_player595 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %gameinfo, i32 0, i32 3
  store i32 %sub594, i32* %computer_player595, align 4
  br label %if.end.596

if.end.596:                                       ; preds = %if.then.593, %sw.default.590
  %318 = load i8*, i8** %infilename, align 8
  %319 = load i8*, i8** %untilstring, align 8
  call void @play_ascii(%struct.SGFTree_t* %sgftree, %struct.Gameinfo* %gameinfo, i8* %318, i8* %319)
  br label %sw.epilog.597

sw.epilog.597:                                    ; preds = %if.end.596, %if.end.588, %if.end.583, %if.end.568, %if.end.559, %if.end.545, %if.end.532, %if.end.516, %if.end.490, %if.end.467, %if.end.451, %if.end.432, %if.end.415, %if.end.402, %if.end.390, %if.end.380, %if.end.371, %sw.bb.366
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.597, %if.then.579, %if.then.566, %if.then.552, %if.then.543, %if.then.537, %if.then.525, %if.then.514, %if.then.509, %if.then.503, %if.then.488, %if.then.483, %if.then.477, %if.then.465, %if.then.459, %if.then.449, %if.then.443, %if.then.430, %if.then.425, %if.then.419, %if.then.413, %if.then.407, %sw.bb.316, %if.end.315, %sw.bb.295, %sw.bb.291, %if.then.196, %if.then.187, %if.then.180, %if.then.171, %if.then.146, %if.then.137, %sw.bb.54
  %320 = load i32, i32* %retval
  ret i32 %320
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @sgftree_clear(%struct.SGFTree_t*) #2

declare void @gameinfo_clear(%struct.Gameinfo*, i32, float) #2

declare i32 @gg_getopt_long(i32, i8**, i8*, %struct.gg_option*, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare void @gnugo_clear_board(i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @show_copyright() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([817 x i8], [817 x i8]* @.str.136, i32 0, i32 0), %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_version() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @show_debug_help() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2489 x i8], [2489 x i8]* @.str.134, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_help() #0 {
entry:
  call void @set_depth_values(i32 10)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* @depth, align 4
  %2 = load i32, i32* @backfill_depth, align 4
  %3 = load i32, i32* @fourlib_depth, align 4
  %4 = load i32, i32* @ko_depth, align 4
  %5 = load i32, i32* @branch_depth, align 4
  %6 = load i32, i32* @backfill2_depth, align 4
  %7 = load i32, i32* @superstring_depth, align 4
  %8 = load i32, i32* @aa_depth, align 4
  %9 = load i32, i32* @owl_distrust_depth, align 4
  %10 = load i32, i32* @owl_branch_depth, align 4
  %11 = load i32, i32* @owl_reading_depth, align 4
  %12 = load i32, i32* @owl_node_limit, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([1519 x i8], [1519 x i8]* @.str.132, i32 0, i32 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 10)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([1138 x i8], [1138 x i8]* @.str.133, i32 0, i32 0), i32 5, i32 19, i32 9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_debug_flags() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([857 x i8], [857 x i8]* @.str.135, i32 0, i32 0))
  ret void
}

declare void @gg_srand(i32) #2

declare void @init_gnugo() #2

declare i32 @sgftree_readfile(%struct.SGFTree_t*, i8*) #2

declare i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo*, %struct.SGFTree_t*, i8*, i32) #2

declare void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @string_to_location(i32, i8*, i32*, i32*) #2

declare void @debug_influence_move(i32, i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @play_solo(%struct.Gameinfo*, i32) #2

declare void @play_replay(%struct.Gameinfo*, i32) #2

declare void @load_and_analyze_sgf_file(%struct.Gameinfo*) #2

declare void @load_and_score_sgf_file(%struct.SGFTree_t*, %struct.Gameinfo*, i8*) #2

declare void @sgffile_printsgf(i32, i8*) #2

declare void @rotate(i32, i32, i32*, i32*, i32, i32) #2

declare void @decide_string(i32) #2

declare void @decide_connection(i32, i32) #2

declare void @decide_owl(i32) #2

declare void @decide_dragon_data(i32) #2

declare void @decide_semeai(i32, i32) #2

declare void @decide_tactical_semeai(i32, i32) #2

declare void @decide_position(i32) #2

declare void @decide_eye(i32) #2

declare void @decide_combination(i32) #2

declare void @decide_surrounded(i32) #2

declare void @play_gtp(%struct._IO_FILE*, i32) #2

declare void @play_ascii_emacs(%struct.SGFTree_t*, %struct.Gameinfo*, i8*, i8*) #2

declare void @play_ascii(%struct.SGFTree_t*, %struct.Gameinfo*, i8*, i8*) #2

declare void @set_depth_values(i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
