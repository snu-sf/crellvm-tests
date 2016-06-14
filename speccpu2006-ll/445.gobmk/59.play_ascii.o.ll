; ModuleID = 'interface/play_ascii.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@sgftree = internal global %struct.SGFTree_t zeroinitializer, align 8
@sgf_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@current_score_estimate = internal global i32 4711, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0ABeginning ASCII mode game.\0A\0A\00", align 1
@opt_showboard = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@movenum = external global i32, align 4
@stdin = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AThanks! for playing GNU Go.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AGNU Go wins by resignation.\00", align 1
@.str.6 = private unnamed_addr constant [307 x i8] c"capture <pos>    try to capture indicated group\0Adead             Toggle display of dead stones\0Adefend <pos>     try to defend indicated group\0Alistdragons      print dragon info \0Ashowarea         display area\0Ashowdragons      display dragons\0Ashowmoyo         display moyo\0Ashowterri        display territory\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Boardsize cannot be changed after record is started!\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\0AInvalid command syntax!\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\0AInvalid board size: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Handicap cannot be changed after game is started!\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\0AInvalid handicap: %d\0A\00", align 1
@board_size = external global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"\0ASet handicap to %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Komi cannot be modified after game record is started!\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@komi = external global float, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"\0ASet Komi to %.1f\0A\00", align 1
@mandated_depth = external global i32, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"\0ASet depth to %d\0A\00", align 1
@level = external global i32, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"\0ASet level to %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\0ASet hurry to %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Illegal forced move: %s %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\0AInvalid number of moves specified: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"undone\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\0ACan't undo.\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\0AEnd of game tree.\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\0AEnter comment. Press ENTER when ready.\0A\00", align 1
@showscore = external global i32, align 4
@showdead = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@printmoyo = external global i32, align 4
@.str.29 = private unnamed_addr constant [24 x i8] c"You may resume the game\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c" with -l %s --mode ascii\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"or load %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Please specify filename\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [27 x i8] c"Cannot open or parse '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Please specify a filename\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\0AInvalid command: %s\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"\0AIf you disagree, we may count the game together.\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"You may optionally save the game as an SGF file.\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Type \22save <filename>\22 to save,\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"     \22count\22 to recount,\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"     \22quit\22 to quit\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c" or  \22game\22 to play again\0A\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"\0AThanks for playing GNU Go.\0A\0A\00", align 1
@emacs = internal global i32 0, align 4
@lower_bound = external global float, align 4
@upper_bound = external global float, align 4
@last_move_i = internal global i32 0, align 4
@last_move_j = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"%s(%d): %m\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"    White has captured %d pieces\0A\00", align 1
@black_captured = external global i32, align 4
@.str.46 = private unnamed_addr constant [34 x i8] c"    Black has captured %d pieces\0A\00", align 1
@white_captured = external global i32, align 4
@.str.47 = private unnamed_addr constant [41 x i8] c"    No score estimate is available yet.\0A\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"    Estimated score: Black is ahead by %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"    Estimated score: White is ahead by %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"    Estimated score: Even!\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"EMACS1\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@board = external global [421 x i8], align 16
@.str.54 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@hspots = internal global [19 x [19 x i8]] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Illegal board value %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c" %1d\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@hspot_size = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"playblack\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"playwhite\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"showboard\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"showdragons\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"listdragons\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"freehandicap\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"helpdebug\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"showmoyo\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"showterri\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"showarea\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"hurry\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"\0ACommands:\0A\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c" back                Take back your last move\0A\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c" boardsize           Set boardsize (on move 1 only)\0A\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c" comment             Write a comment to outputfile\0A\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c" depth <num>         Set depth for reading\0A\00", align 1
@.str.111 = private unnamed_addr constant [41 x i8] c" display             Display game board\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c" exit                Exit GNU Go\0A\00", align 1
@.str.113 = private unnamed_addr constant [53 x i8] c" force <move>        Force a move for current color\0A\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c" forward             Go to next node in game tree\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c" goto <movenum>      Go to movenum in game tree\0A\00", align 1
@.str.116 = private unnamed_addr constant [51 x i8] c" level <amount>      Playing level (default = 10)\0A\00", align 1
@.str.117 = private unnamed_addr constant [58 x i8] c" handicap <num>      Set fixed handicap (on move 1 only)\0A\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c" freehandicap <num>  Place free handicap (on move 1 only)\0A\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"                     Omit <num> to place handicap yourself\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c" help                Display this help menu\0A\00", align 1
@.str.121 = private unnamed_addr constant [46 x i8] c" helpdebug           Display debug help menu\0A\00", align 1
@.str.122 = private unnamed_addr constant [47 x i8] c" info                Display program settings\0A\00", align 1
@.str.123 = private unnamed_addr constant [48 x i8] c" komi                Set komi (on move 1 only)\0A\00", align 1
@.str.124 = private unnamed_addr constant [50 x i8] c" last                Goto last node in game tree\0A\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c" pass                Pass on your move\0A\00", align 1
@.str.126 = private unnamed_addr constant [39 x i8] c" play <num>          Play <num> moves\0A\00", align 1
@.str.127 = private unnamed_addr constant [54 x i8] c" playblack           Play as Black (switch if White)\0A\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c" playwhite           Play as White (switch if Black)\0A\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c" quit                Exit GNU Go\0A\00", align 1
@.str.130 = private unnamed_addr constant [46 x i8] c" resign              Resign the current game\0A\00", align 1
@.str.131 = private unnamed_addr constant [44 x i8] c" save <file>         Save the current game\0A\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c" load <file>         Load a game from file\0A\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c" score               Toggle display of score On/Off\0A\00", align 1
@.str.134 = private unnamed_addr constant [53 x i8] c" showboard           Toggle display of board On/Off\0A\00", align 1
@.str.135 = private unnamed_addr constant [55 x i8] c" switch              Switch the color you are playing\0A\00", align 1
@.str.136 = private unnamed_addr constant [61 x i8] c" undo                Take the last move back (same as back)\0A\00", align 1
@.str.137 = private unnamed_addr constant [59 x i8] c" <move>              A move of the format <letter><number>\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"\0AInvalid move: %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"\0AIllegal move: %s\00", align 1
@verbose = external global i32, align 4
@.str.140 = private unnamed_addr constant [17 x i8] c"\0Ayour move: %m\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"GNU Go is thinking...\0A\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@random_seed = external global i32, align 4
@chinese_rules = external global i32, align 4
@.str.143 = private unnamed_addr constant [27 x i8] c"\0AGame over. Let's count!.\0A\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"Dead stones are marked with small letters (x,o).\0A\00", align 1
@.str.145 = private unnamed_addr constant [52 x i8] c"\0AIf you don't agree, enter the location of a group\0A\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"to toggle its state or \22done\22.\0A\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"xyzzy\00", align 1
@.str.149 = private unnamed_addr constant [64 x i8] c"\0AYou are in a debris room filled with stuff washed in from the\0A\00", align 1
@.str.150 = private unnamed_addr constant [59 x i8] c"surface.  A low wide passage with cobbles becomes plugged\0A\00", align 1
@.str.151 = private unnamed_addr constant [55 x i8] c"with mud and debris here, but an awkward canyon leads\0A\00", align 1
@.str.152 = private unnamed_addr constant [44 x i8] c"upward and west.  A note on the wall says:\0A\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"   Magic Word \22XYZZY\22\0A\0A\00", align 1
@.str.154 = private unnamed_addr constant [62 x i8] c"You are inside a building, a well house for a large spring.\0A\0A\00", align 1
@.str.155 = private unnamed_addr constant [60 x i8] c"\0AIf there are dead stones on the board I will remove them.\0A\00", align 1
@.str.156 = private unnamed_addr constant [60 x i8] c"You must tell me where they are. Type the coordinates of a\0A\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"dead group, or type \22done\22\0A\00", align 1
@.str.158 = private unnamed_addr constant [56 x i8] c"UNDO not allowed anymore. The status of the stones now\0A\00", align 1
@.str.159 = private unnamed_addr constant [44 x i8] c"toggles after entering the location of it.\0A\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"\0Ainvalid!\0A\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"\0Ainvalid point!\0A\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"\0ASuccessfull attack of %m at %m\0A\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"\0A%m cannot be attacked\0A\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"\0ASuccessfull defense of %m at %m\0A\00", align 1
@.str.165 = private unnamed_addr constant [24 x i8] c"\0A%m cannot be defended\0A\00", align 1
@.str.166 = private unnamed_addr constant [32 x i8] c"\0AThere is no need to defend %m\0A\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"9999\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"goto %s\0A\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"\0APlaced %d stones of free handicap.\0A\00", align 1
@.str.172 = private unnamed_addr constant [80 x i8] c"\0AType in coordinates of next handicap stone, or one of the following commands:\0A\00", align 1
@.str.173 = private unnamed_addr constant [47 x i8] c"  undo        take back the last stone placed\0A\00", align 1
@.str.174 = private unnamed_addr constant [51 x i8] c"  clear       remove all the stones placed so far\0A\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"  done        finish placing handicap\0A\0A\00", align 1
@.str.176 = private unnamed_addr constant [47 x i8] c"You have placed %d handicap stone(s) so far.\0A\0A\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"\0ANothing to undo.\0A\00", align 1
@.str.178 = private unnamed_addr constant [27 x i8] c"\0ARemoved the stone at %m.\0A\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.180 = private unnamed_addr constant [80 x i8] c"\0AHandicap cannot be one stone. Either add some more, or delete the only stone.\0A\00", align 1
@.str.181 = private unnamed_addr constant [33 x i8] c"\0AThere's already a stone there.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @play_ascii(%struct.SGFTree_t* %tree, %struct.Gameinfo* %gameinfo, i8* %filename, i8* %until) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %filename.addr = alloca i8*, align 8
  %until.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %num = alloca i32, align 4
  %sz = alloca i32, align 4
  %fnum = alloca float, align 4
  %passes = alloca i32, align 4
  %tmp = alloca i32, align 4
  %line = alloca [80 x i8], align 16
  %line_ptr = alloca i8*, align 8
  %command = alloca i8*, align 8
  %tmpstring = alloca i8*, align 8
  %state = alloca i32, align 4
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %until, i8** %until.addr, align 8
  store i32 0, i32* %passes, align 4
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay, i8** %line_ptr, align 8
  store i32 1, i32* %state, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %0, i8* null) #2
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %2 = bitcast %struct.SGFTree_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.SGFTree_t* @sgftree to i8*), i8* %2, i64 16, i32 8, i1 false)
  %3 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gameinfo_load_sgfheader(%struct.Gameinfo* %4, %struct.SGFNode_t* %5)
  %6 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %7 = load i8*, i8** %until.addr, align 8
  %call = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %6, %struct.SGFTree_t* @sgftree, i8* %7)
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %8, i32 0, i32 1
  store i32 %call, i32* %to_move, align 4
  store i32 1, i32* @sgf_initialized, align 4
  br label %if.end.17

if.else:                                          ; preds = %entry
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %call6 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %sz)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %10 = load i32, i32* %sz, align 4
  call void @gnugo_clear_board(i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  %11 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %11, i32 0, i32 0
  %12 = load i32, i32* %handicap, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move10 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %13, i32 0, i32 1
  store i32 2, i32* %to_move10, align 4
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %14 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap12 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %14, i32 0, i32 0
  %15 = load i32, i32* %handicap12, align 4
  %call13 = call i32 @gnugo_placehand(i32 %15)
  %16 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap14 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %16, i32 0, i32 0
  store i32 %call13, i32* %handicap14, align 4
  %17 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move15 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %17, i32 0, i32 1
  store i32 1, i32* %to_move15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.9
  store i32 0, i32* @sgf_initialized, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.end.371, %if.end.17
  %18 = load i32, i32* %state, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %while.body, label %while.end.372

while.body:                                       ; preds = %while.cond
  store i32 4711, i32* @current_score_estimate, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  %19 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @gameinfo_print(%struct.Gameinfo* %19)
  %20 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %20, i32 0, i32 3
  %21 = load i32, i32* %computer_player, align 4
  %22 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move20 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %22, i32 0, i32 1
  %23 = load i32, i32* %to_move20, align 4
  %cmp21 = icmp eq i32 %21, %23
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.body
  %24 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @computer_move(%struct.Gameinfo* %24, i32* %passes)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %while.body
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.end.327, %if.end.23
  %25 = load i32, i32* %passes, align 4
  %cmp25 = icmp slt i32 %25, 2
  br i1 %cmp25, label %while.body.26, label %while.end.328

while.body.26:                                    ; preds = %while.cond.24
  %26 = load i32, i32* @opt_showboard, align 4
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %while.body.26
  call void @ascii_showboard()
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %while.body.26
  %27 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move30 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %27, i32 0, i32 1
  %28 = load i32, i32* %to_move30, align 4
  %call31 = call i8* @color_to_string(i32 %28)
  %29 = load i32, i32* @movenum, align 4
  %add = add nsw i32 %29, 1
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %call31, i32 %add)
  %arraydecay32 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay32, i8** %line_ptr, align 8
  %arraydecay33 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call34 = call i8* @fgets(i8* %arraydecay33, i32 80, %struct._IO_FILE* %30)
  %tobool35 = icmp ne i8* %call34, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.29
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.end.29
  br label %while.cond.39

while.cond.39:                                    ; preds = %sw.epilog.326, %if.end.38
  %31 = load i8*, i8** %line_ptr, align 8
  %call40 = call i8* @strtok(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #2
  store i8* %call40, i8** %command, align 8
  store i8* null, i8** %line_ptr, align 8
  %32 = load i8*, i8** %command, align 8
  %tobool41 = icmp ne i8* %32, null
  br i1 %tobool41, label %while.body.42, label %while.end.327

while.body.42:                                    ; preds = %while.cond.39
  %33 = load i8*, i8** %command, align 8
  %call43 = call i32 @get_command(i8* %33)
  switch i32 %call43, label %sw.default.324 [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.47
    i32 1, label %sw.bb.47
    i32 2, label %sw.bb.47
    i32 18, label %sw.bb.49
    i32 28, label %sw.bb.50
    i32 17, label %sw.bb.52
    i32 15, label %sw.bb.54
    i32 12, label %sw.bb.56
    i32 11, label %sw.bb.78
    i32 41, label %sw.bb.106
    i32 13, label %sw.bb.118
    i32 14, label %sw.bb.132
    i32 38, label %sw.bb.141
    i32 37, label %sw.bb.150
    i32 16, label %sw.bb.160
    i32 6, label %sw.bb.164
    i32 5, label %sw.bb.171
    i32 4, label %sw.bb.172
    i32 8, label %sw.bb.173
    i32 9, label %sw.bb.196
    i32 10, label %sw.bb.209
    i32 7, label %sw.bb.222
    i32 19, label %sw.bb.226
    i32 23, label %sw.bb.226
    i32 24, label %sw.bb.237
    i32 25, label %sw.bb.247
    i32 20, label %sw.bb.256
    i32 21, label %sw.bb.261
    i32 22, label %sw.bb.268
    i32 26, label %sw.bb.272
    i32 27, label %sw.bb.275
    i32 30, label %sw.bb.278
    i32 31, label %sw.bb.280
    i32 29, label %sw.bb.282
    i32 35, label %sw.bb.284
    i32 32, label %sw.bb.286
    i32 33, label %sw.bb.289
    i32 34, label %sw.bb.303
    i32 36, label %sw.bb.321
    i32 40, label %sw.bb.323
    i32 39, label %sw.bb.323
    i32 -1, label %sw.bb.323
  ]

sw.bb:                                            ; preds = %while.body.42
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  %34 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move45 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %34, i32 0, i32 1
  %35 = load i32, i32* %to_move45, align 4
  %cmp46 = icmp eq i32 %35, 1
  %cond = select i1 %cmp46, double -1.000000e+03, double 1.000000e+03
  %conv = fptrunc double %cond to float
  call void @sgftreeWriteResult(%struct.SGFTree_t* @sgftree, float %conv, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  br label %sw.bb.47

sw.bb.47:                                         ; preds = %while.body.42, %while.body.42, %while.body.42, %sw.bb
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  br label %return

sw.bb.49:                                         ; preds = %while.body.42
  call void @show_commands()
  br label %sw.epilog.326

sw.bb.50:                                         ; preds = %while.body.42
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog.326

sw.bb.52:                                         ; preds = %while.body.42
  %36 = load i32, i32* @opt_showboard, align 4
  %tobool53 = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool53, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @opt_showboard, align 4
  br label %sw.epilog.326

sw.bb.54:                                         ; preds = %while.body.42
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %37 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @gameinfo_print(%struct.Gameinfo* %37)
  br label %sw.epilog.326

sw.bb.56:                                         ; preds = %while.body.42
  %38 = load i32, i32* @sgf_initialized, align 4
  %tobool57 = icmp ne i32 %38, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %sw.bb.56
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog.326

if.end.60:                                        ; preds = %sw.bb.56
  %39 = load i8*, i8** %command, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 10
  store i8* %add.ptr, i8** %command, align 8
  %40 = load i8*, i8** %command, align 8
  %call61 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp62 = icmp ne i32 %call61, 1
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.60
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.66:                                        ; preds = %if.end.60
  %41 = load i32, i32* %num, align 4
  %cmp67 = icmp slt i32 %41, 5
  br i1 %cmp67, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.66
  %42 = load i32, i32* %num, align 4
  %cmp69 = icmp sgt i32 %42, 19
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %lor.lhs.false, %if.end.66
  %43 = load i32, i32* %num, align 4
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 %43)
  br label %sw.epilog.326

if.end.73:                                        ; preds = %lor.lhs.false
  %44 = load i32, i32* %num, align 4
  store i32 %44, i32* %sz, align 4
  %45 = load i32, i32* %sz, align 4
  call void @gnugo_clear_board(i32 %45)
  %46 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap74 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %46, i32 0, i32 0
  %47 = load i32, i32* %handicap74, align 4
  %call75 = call i32 @gnugo_placehand(i32 %47)
  %48 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap76 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %48, i32 0, i32 0
  store i32 %call75, i32* %handicap76, align 4
  %49 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %50 = load i32, i32* %sz, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %50)
  %51 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %52 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap77 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %52, i32 0, i32 0
  %53 = load i32, i32* %handicap77, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %53)
  br label %sw.epilog.326

sw.bb.78:                                         ; preds = %while.body.42
  %54 = load i32, i32* @sgf_initialized, align 4
  %tobool79 = icmp ne i32 %54, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %sw.bb.78
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog.326

if.end.82:                                        ; preds = %sw.bb.78
  %55 = load i8*, i8** %command, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %55, i64 9
  store i8* %add.ptr83, i8** %command, align 8
  %56 = load i8*, i8** %command, align 8
  %call84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp85 = icmp ne i32 %call84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.82
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.89:                                        ; preds = %if.end.82
  %57 = load i32, i32* %num, align 4
  %cmp90 = icmp slt i32 %57, 0
  br i1 %cmp90, label %if.then.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.end.89
  %58 = load i32, i32* %num, align 4
  %cmp93 = icmp sgt i32 %58, 9
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %lor.lhs.false.92, %if.end.89
  %59 = load i32, i32* %num, align 4
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 %59)
  br label %sw.epilog.326

if.end.97:                                        ; preds = %lor.lhs.false.92
  %60 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %60)
  %61 = load i32, i32* %num, align 4
  %call98 = call i32 @gnugo_placehand(i32 %61)
  %62 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap99 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %62, i32 0, i32 0
  store i32 %call98, i32* %handicap99, align 4
  %63 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap100 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %63, i32 0, i32 0
  %64 = load i32, i32* %handicap100, align 4
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 %64)
  %65 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap102 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %65, i32 0, i32 0
  %66 = load i32, i32* %handicap102, align 4
  %tobool103 = icmp ne i32 %66, 0
  %cond104 = select i1 %tobool103, i32 1, i32 2
  %67 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move105 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %67, i32 0, i32 1
  store i32 %cond104, i32* %to_move105, align 4
  br label %sw.epilog.326

sw.bb.106:                                        ; preds = %while.body.42
  %68 = load i32, i32* @sgf_initialized, align 4
  %tobool107 = icmp ne i32 %68, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %sw.bb.106
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog.326

if.end.110:                                       ; preds = %sw.bb.106
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.117, %if.end.110
  %69 = load i8*, i8** %command, align 8
  %70 = load i8, i8* %69, align 1
  %conv112 = sext i8 %70 to i32
  %tobool113 = icmp ne i32 %conv112, 0
  br i1 %tobool113, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.111
  %71 = load i8*, i8** %command, align 8
  %72 = load i8, i8* %71, align 1
  %conv114 = sext i8 %72 to i32
  %cmp115 = icmp ne i32 %conv114, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.111
  %73 = phi i1 [ false, %while.cond.111 ], [ %cmp115, %land.rhs ]
  br i1 %73, label %while.body.117, label %while.end

while.body.117:                                   ; preds = %land.end
  %74 = load i8*, i8** %command, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr, i8** %command, align 8
  br label %while.cond.111

while.end:                                        ; preds = %land.end
  %75 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %76 = load i8*, i8** %command, align 8
  call void @ascii_free_handicap(%struct.Gameinfo* %75, i8* %76)
  br label %sw.epilog.326

sw.bb.118:                                        ; preds = %while.body.42
  %77 = load i32, i32* @sgf_initialized, align 4
  %tobool119 = icmp ne i32 %77, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %sw.bb.118
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog.326

if.end.122:                                       ; preds = %sw.bb.118
  %78 = load i8*, i8** %command, align 8
  %add.ptr123 = getelementptr inbounds i8, i8* %78, i64 5
  store i8* %add.ptr123, i8** %command, align 8
  %79 = load i8*, i8** %command, align 8
  %call124 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), float* %fnum) #2
  %cmp125 = icmp ne i32 %call124, 1
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.122
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.129:                                       ; preds = %if.end.122
  %80 = load float, float* %fnum, align 4
  store float %80, float* @komi, align 4
  %81 = load float, float* @komi, align 4
  %conv130 = fpext float %81 to double
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), double %conv130)
  br label %sw.epilog.326

sw.bb.132:                                        ; preds = %while.body.42
  %82 = load i8*, i8** %command, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %82, i64 6
  store i8* %add.ptr133, i8** %command, align 8
  %83 = load i8*, i8** %command, align 8
  %call134 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp135 = icmp ne i32 %call134, 1
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %sw.bb.132
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.139:                                       ; preds = %sw.bb.132
  %84 = load i32, i32* %num, align 4
  store i32 %84, i32* @mandated_depth, align 4
  %85 = load i32, i32* @mandated_depth, align 4
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %85)
  br label %sw.epilog.326

sw.bb.141:                                        ; preds = %while.body.42
  %86 = load i8*, i8** %command, align 8
  %add.ptr142 = getelementptr inbounds i8, i8* %86, i64 6
  store i8* %add.ptr142, i8** %command, align 8
  %87 = load i8*, i8** %command, align 8
  %call143 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp144 = icmp ne i32 %call143, 1
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %sw.bb.141
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.148:                                       ; preds = %sw.bb.141
  %88 = load i32, i32* %num, align 4
  store i32 %88, i32* @level, align 4
  %89 = load i32, i32* @level, align 4
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %89)
  br label %sw.epilog.326

sw.bb.150:                                        ; preds = %while.body.42
  %90 = load i8*, i8** %command, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %90, i64 6
  store i8* %add.ptr151, i8** %command, align 8
  %91 = load i8*, i8** %command, align 8
  %call152 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp153 = icmp ne i32 %call152, 1
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %sw.bb.150
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.157:                                       ; preds = %sw.bb.150
  %92 = load i32, i32* %num, align 4
  %sub = sub nsw i32 10, %92
  store i32 %sub, i32* @level, align 4
  %93 = load i32, i32* @level, align 4
  %sub158 = sub nsw i32 10, %93
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %sub158)
  br label %sw.epilog.326

sw.bb.160:                                        ; preds = %while.body.42
  %94 = load i32, i32* @opt_showboard, align 4
  %tobool161 = icmp ne i32 %94, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %sw.bb.160
  call void @ascii_showboard()
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %sw.bb.160
  br label %sw.epilog.326

sw.bb.164:                                        ; preds = %while.body.42
  %95 = load i8*, i8** %command, align 8
  %add.ptr165 = getelementptr inbounds i8, i8* %95, i64 6
  store i8* %add.ptr165, i8** %command, align 8
  %96 = load i8*, i8** %command, align 8
  %call166 = call i32 @get_command(i8* %96)
  switch i32 %call166, label %sw.default [
    i32 5, label %sw.bb.167
    i32 4, label %sw.bb.168
  ]

sw.bb.167:                                        ; preds = %sw.bb.164
  %97 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %98 = load i8*, i8** %command, align 8
  call void @do_move(%struct.Gameinfo* %97, i8* %98, i32* %passes, i32 1)
  br label %sw.epilog

sw.bb.168:                                        ; preds = %sw.bb.164
  %99 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @do_pass(%struct.Gameinfo* %99, i32* %passes, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.164
  %100 = load i8*, i8** %command, align 8
  %101 = load i8*, i8** %command, align 8
  %call169 = call i32 @get_command(i8* %101)
  %call170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* %100, i32 %call169)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.168, %sw.bb.167
  br label %sw.epilog.326

sw.bb.171:                                        ; preds = %while.body.42
  %102 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %103 = load i8*, i8** %command, align 8
  call void @do_move(%struct.Gameinfo* %102, i8* %103, i32* %passes, i32 0)
  br label %sw.epilog.326

sw.bb.172:                                        ; preds = %while.body.42
  %104 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @do_pass(%struct.Gameinfo* %104, i32* %passes, i32 0)
  br label %sw.epilog.326

sw.bb.173:                                        ; preds = %while.body.42
  %105 = load i8*, i8** %command, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %105, i64 5
  store i8* %add.ptr174, i8** %command, align 8
  %106 = load i8*, i8** %command, align 8
  %call175 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %num) #2
  %cmp176 = icmp ne i32 %call175, 1
  br i1 %cmp176, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %sw.bb.173
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.326

if.end.180:                                       ; preds = %sw.bb.173
  %107 = load i32, i32* %num, align 4
  %cmp181 = icmp sge i32 %107, 0
  br i1 %cmp181, label %if.then.183, label %if.else.193

if.then.183:                                      ; preds = %if.end.180
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.183
  %108 = load i32, i32* %m, align 4
  %109 = load i32, i32* %num, align 4
  %cmp184 = icmp slt i32 %108, %109
  br i1 %cmp184, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player186 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %110, i32 0, i32 3
  %111 = load i32, i32* %computer_player186, align 4
  %sub187 = sub nsw i32 3, %111
  %112 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player188 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %112, i32 0, i32 3
  store i32 %sub187, i32* %computer_player188, align 4
  %113 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @computer_move(%struct.Gameinfo* %113, i32* %passes)
  %114 = load i32, i32* %passes, align 4
  %cmp189 = icmp sge i32 %114, 2
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %for.body
  br label %for.end

if.end.192:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.192
  %115 = load i32, i32* %m, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.191, %for.cond
  br label %if.end.195

if.else.193:                                      ; preds = %if.end.180
  %116 = load i32, i32* %num, align 4
  %call194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0), i32 %116)
  br label %sw.epilog.326

if.end.195:                                       ; preds = %for.end
  br label %sw.epilog.326

sw.bb.196:                                        ; preds = %while.body.42
  %117 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player197 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %117, i32 0, i32 3
  %118 = load i32, i32* %computer_player197, align 4
  %cmp198 = icmp eq i32 %118, 1
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %sw.bb.196
  %119 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player201 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %119, i32 0, i32 3
  store i32 2, i32* %computer_player201, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %sw.bb.196
  %120 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player203 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %120, i32 0, i32 3
  %121 = load i32, i32* %computer_player203, align 4
  %122 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move204 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %122, i32 0, i32 1
  %123 = load i32, i32* %to_move204, align 4
  %cmp205 = icmp eq i32 %121, %123
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.end.202
  %124 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @computer_move(%struct.Gameinfo* %124, i32* %passes)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.end.202
  br label %sw.epilog.326

sw.bb.209:                                        ; preds = %while.body.42
  %125 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player210 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %125, i32 0, i32 3
  %126 = load i32, i32* %computer_player210, align 4
  %cmp211 = icmp eq i32 %126, 2
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %sw.bb.209
  %127 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player214 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %127, i32 0, i32 3
  store i32 1, i32* %computer_player214, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %sw.bb.209
  %128 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player216 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %128, i32 0, i32 3
  %129 = load i32, i32* %computer_player216, align 4
  %130 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move217 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %130, i32 0, i32 1
  %131 = load i32, i32* %to_move217, align 4
  %cmp218 = icmp eq i32 %129, %131
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %if.end.215
  %132 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @computer_move(%struct.Gameinfo* %132, i32* %passes)
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.end.215
  br label %sw.epilog.326

sw.bb.222:                                        ; preds = %while.body.42
  %133 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player223 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %133, i32 0, i32 3
  %134 = load i32, i32* %computer_player223, align 4
  %sub224 = sub nsw i32 3, %134
  %135 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player225 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %135, i32 0, i32 3
  store i32 %sub224, i32* %computer_player225, align 4
  %136 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @computer_move(%struct.Gameinfo* %136, i32* %passes)
  br label %sw.epilog.326

sw.bb.226:                                        ; preds = %while.body.42, %while.body.42
  %call227 = call i32 @gnugo_undo_move(i32 1)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.229, label %if.else.234

if.then.229:                                      ; preds = %sw.bb.226
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %call230 = call i32 @sgftreeBack(%struct.SGFTree_t* @sgftree)
  %137 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move231 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %137, i32 0, i32 1
  %138 = load i32, i32* %to_move231, align 4
  %sub232 = sub nsw i32 3, %138
  %139 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move233 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %139, i32 0, i32 1
  store i32 %sub232, i32* %to_move233, align 4
  br label %if.end.236

if.else.234:                                      ; preds = %sw.bb.226
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.234, %if.then.229
  br label %sw.epilog.326

sw.bb.237:                                        ; preds = %while.body.42
  %call238 = call i32 @sgftreeForward(%struct.SGFTree_t* @sgftree)
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.then.240, label %if.else.244

if.then.240:                                      ; preds = %sw.bb.237
  %140 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %141 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move241 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %141, i32 0, i32 1
  %142 = load i32, i32* %to_move241, align 4
  %call242 = call i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %140, i32 %142)
  %143 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move243 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %143, i32 0, i32 1
  store i32 %call242, i32* %to_move243, align 4
  br label %if.end.246

if.else.244:                                      ; preds = %sw.bb.237
  %call245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.246

if.end.246:                                       ; preds = %if.else.244, %if.then.240
  br label %sw.epilog.326

sw.bb.247:                                        ; preds = %while.body.42
  br label %while.cond.248

while.cond.248:                                   ; preds = %while.body.251, %sw.bb.247
  %call249 = call i32 @sgftreeForward(%struct.SGFTree_t* @sgftree)
  %tobool250 = icmp ne i32 %call249, 0
  br i1 %tobool250, label %while.body.251, label %while.end.255

while.body.251:                                   ; preds = %while.cond.248
  %144 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %145 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move252 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %145, i32 0, i32 1
  %146 = load i32, i32* %to_move252, align 4
  %call253 = call i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %144, i32 %146)
  %147 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move254 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %147, i32 0, i32 1
  store i32 %call253, i32* %to_move254, align 4
  br label %while.cond.248

while.end.255:                                    ; preds = %while.cond.248
  br label %sw.epilog.326

sw.bb.256:                                        ; preds = %while.body.42
  %call257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0))
  %arraydecay258 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call259 = call i8* @fgets(i8* %arraydecay258, i32 80, %struct._IO_FILE* %148)
  %arraydecay260 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* %arraydecay260)
  br label %sw.epilog.326

sw.bb.261:                                        ; preds = %while.body.42
  %149 = load i32, i32* @showscore, align 4
  %tobool262 = icmp ne i32 %149, 0
  %lnot263 = xor i1 %tobool262, true
  %lnot.ext264 = zext i1 %lnot263 to i32
  store i32 %lnot.ext264, i32* @showscore, align 4
  %150 = load i32, i32* @showscore, align 4
  %tobool265 = icmp ne i32 %150, 0
  br i1 %tobool265, label %if.end.267, label %if.then.266

if.then.266:                                      ; preds = %sw.bb.261
  store i32 4711, i32* @current_score_estimate, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %sw.bb.261
  br label %sw.epilog.326

sw.bb.268:                                        ; preds = %while.body.42
  %151 = load i32, i32* @showdead, align 4
  %tobool269 = icmp ne i32 %151, 0
  %lnot270 = xor i1 %tobool269, true
  %lnot.ext271 = zext i1 %lnot270 to i32
  store i32 %lnot.ext271, i32* @showdead, align 4
  br label %sw.epilog.326

sw.bb.272:                                        ; preds = %while.body.42
  %152 = load i8*, i8** %command, align 8
  %call273 = call i8* @strtok(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %call274 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  call void @showcapture(i8* %call274)
  br label %sw.epilog.326

sw.bb.275:                                        ; preds = %while.body.42
  %153 = load i8*, i8** %command, align 8
  %call276 = call i8* @strtok(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %call277 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  call void @showdefense(i8* %call277)
  br label %sw.epilog.326

sw.bb.278:                                        ; preds = %while.body.42
  %154 = load i32, i32* @printmoyo, align 4
  store i32 %154, i32* %tmp, align 4
  store i32 2, i32* @printmoyo, align 4
  %155 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move279 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %155, i32 0, i32 1
  %156 = load i32, i32* %to_move279, align 4
  call void @examine_position(i32 %156, i32 4)
  call void @print_moyo()
  %157 = load i32, i32* %tmp, align 4
  store i32 %157, i32* @printmoyo, align 4
  br label %sw.epilog.326

sw.bb.280:                                        ; preds = %while.body.42
  %158 = load i32, i32* @printmoyo, align 4
  store i32 %158, i32* %tmp, align 4
  store i32 1, i32* @printmoyo, align 4
  %159 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move281 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %159, i32 0, i32 1
  %160 = load i32, i32* %to_move281, align 4
  call void @examine_position(i32 %160, i32 4)
  call void @print_moyo()
  %161 = load i32, i32* %tmp, align 4
  store i32 %161, i32* @printmoyo, align 4
  br label %sw.epilog.326

sw.bb.282:                                        ; preds = %while.body.42
  %162 = load i32, i32* @printmoyo, align 4
  store i32 %162, i32* %tmp, align 4
  store i32 4, i32* @printmoyo, align 4
  %163 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move283 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %163, i32 0, i32 1
  %164 = load i32, i32* %to_move283, align 4
  call void @examine_position(i32 %164, i32 4)
  call void @print_moyo()
  %165 = load i32, i32* %tmp, align 4
  store i32 %165, i32* @printmoyo, align 4
  br label %sw.epilog.326

sw.bb.284:                                        ; preds = %while.body.42
  %166 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move285 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %166, i32 0, i32 1
  %167 = load i32, i32* %to_move285, align 4
  call void @examine_position(i32 %167, i32 4)
  call void @showboard(i32 1)
  br label %sw.epilog.326

sw.bb.286:                                        ; preds = %while.body.42
  %168 = load i8*, i8** %command, align 8
  %call287 = call i8* @strtok(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %169 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %call288 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  call void @ascii_goto(%struct.Gameinfo* %169, i8* %call288)
  br label %sw.epilog.326

sw.bb.289:                                        ; preds = %while.body.42
  %170 = load i8*, i8** %command, align 8
  %call290 = call i8* @strtok(i8* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %call291 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  store i8* %call291, i8** %tmpstring, align 8
  %171 = load i8*, i8** %tmpstring, align 8
  %tobool292 = icmp ne i8* %171, null
  br i1 %tobool292, label %if.then.293, label %if.else.300

if.then.293:                                      ; preds = %sw.bb.289
  %172 = load i8*, i8** %tmpstring, align 8
  %call294 = call i64 @strlen(i8* %172) #7
  %sub295 = sub i64 %call294, 1
  %173 = load i8*, i8** %tmpstring, align 8
  %arrayidx = getelementptr inbounds i8, i8* %173, i64 %sub295
  store i8 0, i8* %arrayidx, align 1
  %174 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @init_sgf(%struct.Gameinfo* %174)
  %175 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %176 = load i8*, i8** %tmpstring, align 8
  %call296 = call i32 @writesgf(%struct.SGFNode_t* %175, i8* %176)
  %call297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0))
  %177 = load i8*, i8** %tmpstring, align 8
  %call298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8* %177)
  %178 = load i8*, i8** %tmpstring, align 8
  %call299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* %178)
  br label %if.end.302

if.else.300:                                      ; preds = %sw.bb.289
  %call301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.300, %if.then.293
  br label %sw.epilog.326

sw.bb.303:                                        ; preds = %while.body.42
  %179 = load i8*, i8** %command, align 8
  %call304 = call i8* @strtok(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %call305 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  store i8* %call305, i8** %tmpstring, align 8
  %180 = load i8*, i8** %tmpstring, align 8
  %tobool306 = icmp ne i8* %180, null
  br i1 %tobool306, label %if.then.307, label %if.else.318

if.then.307:                                      ; preds = %sw.bb.303
  %181 = load i8*, i8** %tmpstring, align 8
  %call308 = call i64 @strlen(i8* %181) #7
  %sub309 = sub i64 %call308, 1
  %182 = load i8*, i8** %tmpstring, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %182, i64 %sub309
  store i8 0, i8* %arrayidx310, align 1
  %183 = load i8*, i8** %tmpstring, align 8
  %call311 = call i32 @sgftree_readfile(%struct.SGFTree_t* @sgftree, i8* %183)
  %tobool312 = icmp ne i32 %call311, 0
  br i1 %tobool312, label %if.end.315, label %if.then.313

if.then.313:                                      ; preds = %if.then.307
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = load i8*, i8** %tmpstring, align 8
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %185)
  br label %sw.epilog.326

if.end.315:                                       ; preds = %if.then.307
  store i32 1, i32* @sgf_initialized, align 4
  %186 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %187 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gameinfo_load_sgfheader(%struct.Gameinfo* %186, %struct.SGFNode_t* %187)
  %188 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %call316 = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %188, %struct.SGFTree_t* @sgftree, i8* null)
  %189 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %190 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap317 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %190, i32 0, i32 0
  %191 = load i32, i32* %handicap317, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %191)
  br label %if.end.320

if.else.318:                                      ; preds = %sw.bb.303
  %call319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.318, %if.end.315
  br label %sw.epilog.326

sw.bb.321:                                        ; preds = %while.body.42
  %192 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move322 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %192, i32 0, i32 1
  %193 = load i32, i32* %to_move322, align 4
  call void @examine_position(i32 %193, i32 4)
  call void @show_dragons()
  br label %sw.epilog.326

sw.bb.323:                                        ; preds = %while.body.42, %while.body.42, %while.body.42
  br label %sw.default.324

sw.default.324:                                   ; preds = %while.body.42, %sw.bb.323
  %194 = load i8*, i8** %command, align 8
  %call325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* %194)
  br label %sw.epilog.326

sw.epilog.326:                                    ; preds = %sw.default.324, %sw.bb.321, %if.end.320, %if.then.313, %if.end.302, %sw.bb.286, %sw.bb.284, %sw.bb.282, %sw.bb.280, %sw.bb.278, %sw.bb.275, %sw.bb.272, %sw.bb.268, %if.end.267, %sw.bb.256, %while.end.255, %if.end.246, %if.end.236, %sw.bb.222, %if.end.221, %if.end.208, %if.end.195, %if.else.193, %if.then.178, %sw.bb.172, %sw.bb.171, %sw.epilog, %if.end.163, %if.end.157, %if.then.155, %if.end.148, %if.then.146, %if.end.139, %if.then.137, %if.end.129, %if.then.127, %if.then.120, %while.end, %if.then.108, %if.end.97, %if.then.95, %if.then.87, %if.then.80, %if.end.73, %if.then.71, %if.then.64, %if.then.58, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.49
  br label %while.cond.39

while.end.327:                                    ; preds = %while.cond.39
  br label %while.cond.24

while.end.328:                                    ; preds = %while.cond.24
  %195 = load i32, i32* %passes, align 4
  %cmp329 = icmp sge i32 %195, 2
  br i1 %cmp329, label %if.then.331, label %if.end.333

if.then.331:                                      ; preds = %while.end.328
  %196 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player332 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %196, i32 0, i32 3
  %197 = load i32, i32* %computer_player332, align 4
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 %197, %struct._IO_FILE* %198)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %while.end.328
  %call334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0))
  %call335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0))
  %call336 = call float @estimate_score(float* null, float* null)
  call void @sgftreeWriteResult(%struct.SGFTree_t* @sgftree, float %call336, i32 1)
  store i32 0, i32* %state, align 4
  br label %while.cond.337

while.cond.337:                                   ; preds = %sw.epilog.370, %if.end.333
  %199 = load i32, i32* %state, align 4
  %cmp338 = icmp eq i32 %199, 0
  br i1 %cmp338, label %while.body.340, label %while.end.371

while.body.340:                                   ; preds = %while.cond.337
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %call342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0))
  %call343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0))
  %call344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i32 0, i32 0))
  %call345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0))
  %arraydecay346 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay346, i8** %line_ptr, align 8
  %arraydecay347 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call348 = call i8* @fgets(i8* %arraydecay347, i32 80, %struct._IO_FILE* %200)
  %tobool349 = icmp ne i8* %call348, null
  br i1 %tobool349, label %if.end.351, label %if.then.350

if.then.350:                                      ; preds = %while.body.340
  br label %while.end.371

if.end.351:                                       ; preds = %while.body.340
  %201 = load i8*, i8** %line_ptr, align 8
  %call352 = call i8* @strtok(i8* %201, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0)) #2
  store i8* %call352, i8** %command, align 8
  %202 = load i8*, i8** %command, align 8
  %call353 = call i32 @get_command(i8* %202)
  switch i32 %call353, label %sw.default.369 [
    i32 33, label %sw.bb.354
    i32 39, label %sw.bb.366
    i32 40, label %sw.bb.367
    i32 2, label %sw.bb.368
  ]

sw.bb.354:                                        ; preds = %if.end.351
  %203 = load i8*, i8** %command, align 8
  %call355 = call i8* @strtok(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  %call356 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  store i8* %call356, i8** %tmpstring, align 8
  %204 = load i8*, i8** %tmpstring, align 8
  %tobool357 = icmp ne i8* %204, null
  br i1 %tobool357, label %if.then.358, label %if.else.363

if.then.358:                                      ; preds = %sw.bb.354
  %205 = load i8*, i8** %tmpstring, align 8
  %call359 = call i64 @strlen(i8* %205) #7
  %sub360 = sub i64 %call359, 1
  %206 = load i8*, i8** %tmpstring, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %206, i64 %sub360
  store i8 0, i8* %arrayidx361, align 1
  %207 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @init_sgf(%struct.Gameinfo* %207)
  %208 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %209 = load i8*, i8** %tmpstring, align 8
  %call362 = call i32 @writesgf(%struct.SGFNode_t* %208, i8* %209)
  br label %if.end.365

if.else.363:                                      ; preds = %sw.bb.354
  %call364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.363, %if.then.358
  br label %sw.epilog.370

sw.bb.366:                                        ; preds = %if.end.351
  store i32 1, i32* %state, align 4
  br label %sw.epilog.370

sw.bb.367:                                        ; preds = %if.end.351
  %210 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @endgame(%struct.Gameinfo* %210)
  br label %sw.epilog.370

sw.bb.368:                                        ; preds = %if.end.351
  store i32 2, i32* %state, align 4
  br label %sw.epilog.370

sw.default.369:                                   ; preds = %if.end.351
  store i32 0, i32* %state, align 4
  br label %sw.epilog.370

sw.epilog.370:                                    ; preds = %sw.default.369, %sw.bb.368, %sw.bb.367, %sw.bb.366, %if.end.365
  br label %while.cond.337

while.end.371:                                    ; preds = %if.then.350, %while.cond.337
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  store i32 0, i32* %passes, align 4
  call void @update_random_seed()
  %211 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %211)
  call void @sgftree_clear(%struct.SGFTree_t* @sgftree)
  %212 = load i32, i32* @board_size, align 4
  %213 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* @sgftree, i32 %212, float %213)
  store i32 0, i32* @sgf_initialized, align 4
  %214 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %215 = load i32, i32* @board_size, align 4
  %216 = load float, float* @komi, align 4
  call void @gameinfo_clear(%struct.Gameinfo* %214, i32 %215, float %216)
  br label %while.cond

while.end.372:                                    ; preds = %while.cond
  %call373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end.372, %sw.bb.47, %if.then.36
  ret void
}

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gameinfo_load_sgfheader(%struct.Gameinfo*, %struct.SGFNode_t*) #3

declare i32 @gameinfo_play_sgftree(%struct.Gameinfo*, %struct.SGFTree_t*, i8*) #3

declare i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #3

declare void @gnugo_clear_board(i32) #3

declare i32 @gnugo_placehand(i32) #3

declare i32 @printf(i8*, ...) #3

declare void @gameinfo_print(%struct.Gameinfo*) #3

; Function Attrs: nounwind uwtable
define internal void @computer_move(%struct.Gameinfo* %gameinfo, i32* %passes) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %passes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %move_val = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i32* %passes, i32** %passes.addr, align 8
  %0 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @init_sgf(%struct.Gameinfo* %0)
  %1 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %1, i32 0, i32 1
  %2 = load i32, i32* %to_move, align 4
  %call = call i32 @gnugo_genmove(i32* %i, i32* %j, i32 %2)
  store i32 %call, i32* %move_val, align 4
  %3 = load i32, i32* @showscore, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  %4 = load float, float* @lower_bound, align 4
  %5 = load float, float* @upper_bound, align 4
  %add = fadd float %4, %5
  %conv = fpext float %add to double
  %div = fdiv double %conv, 2.000000e+00
  %conv2 = fptosi double %div to i32
  store i32 %conv2, i32* @current_score_estimate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* @last_move_i, align 4
  %7 = load i32, i32* %j, align 4
  store i32 %7, i32* @last_move_j, align 4
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move3 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %8, i32 0, i32 1
  %9 = load i32, i32* %to_move3, align 4
  %call4 = call i8* @color_to_string(i32 %9)
  %10 = load i32, i32* @movenum, align 4
  %add5 = add nsw i32 %10, 1
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* %call4, i32 %add5, i32 %11, i32 %12)
  %13 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %13, 20
  %add6 = add nsw i32 21, %mul
  %14 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add6, %14
  %call8 = call i32 @is_pass(i32 %add7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %15 = load i32*, i32** %passes.addr, align 8
  %16 = load i32, i32* %15, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %15, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %17 = load i32*, i32** %passes.addr, align 8
  store i32 0, i32* %17, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %j, align 4
  %20 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move12 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %20, i32 0, i32 1
  %21 = load i32, i32* %to_move12, align 4
  call void @gnugo_play_move(i32 %18, i32 %19, i32 %21)
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %23 = load i32, i32* %move_val, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %22, i32 %23)
  %24 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move13 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %24, i32 0, i32 1
  %25 = load i32, i32* %to_move13, align 4
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %25, i32 %26, i32 %27)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %28 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move14 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %28, i32 0, i32 1
  %29 = load i32, i32* %to_move14, align 4
  %sub = sub nsw i32 3, %29
  %30 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move15 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %30, i32 0, i32 1
  store i32 %sub, i32* %to_move15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ascii_showboard() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %letterbar = alloca [64 x i8], align 16
  %last_pos_was_move = alloca i32, align 4
  %pos_is_move = alloca i32, align 4
  %dead = alloca i32, align 4
  %0 = load i32, i32* @board_size, align 4
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %letterbar, i32 0, i32 0
  call void @make_letterbar(i32 %0, i8* %arraydecay)
  %1 = load i32, i32* @board_size, align 4
  call void @set_handicap_spots(i32 %1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %2 = load i32, i32* @black_captured, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* @white_captured, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0), i32 %3)
  %4 = load i32, i32* @showscore, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @current_score_estimate, align 4
  %cmp = icmp eq i32 %5, 4711
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* @current_score_estimate, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %7 = load i32, i32* @current_score_estimate, align 4
  %sub = sub nsw i32 0, %7
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i32 0, i32 0), i32 %sub)
  br label %if.end.14

if.else.8:                                        ; preds = %if.else
  %8 = load i32, i32* @current_score_estimate, align 4
  %cmp9 = icmp sgt i32 %8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.8
  %9 = load i32, i32* @current_score_estimate, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i32 0, i32 0), i32 %9)
  br label %if.end

if.else.12:                                       ; preds = %if.else.8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.6
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.3
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fflush(%struct._IO_FILE* %10)
  %11 = load i32, i32* @emacs, align 4
  %tobool19 = icmp ne i32 %11, 0
  %cond = select i1 %tobool19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0)
  %arraydecay20 = getelementptr inbounds [64 x i8], [64 x i8]* %letterbar, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* %cond, i8* %arraydecay20)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %12)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %if.end.16
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @board_size, align 4
  %cmp23 = icmp slt i32 %13, %14
  br i1 %cmp23, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* @board_size, align 4
  %16 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 %15, %16
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 %sub24)
  store i32 0, i32* %last_pos_was_move, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* @board_size, align 4
  %cmp27 = icmp slt i32 %17, %18
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %19 = load i32, i32* @last_move_i, align 4
  %20 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %19, %20
  br i1 %cmp29, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %for.body.28
  %21 = load i32, i32* @last_move_j, align 4
  %22 = load i32, i32* %j, align 4
  %cmp30 = icmp eq i32 %21, %22
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true
  store i32 128, i32* %pos_is_move, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %land.lhs.true, %for.body.28
  store i32 0, i32* %pos_is_move, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  %23 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %23, 20
  %add = add nsw i32 21, %mul
  %24 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %add, %24
  %call35 = call i32 @dragon_status(i32 %add34)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.33
  %25 = load i32, i32* @showdead, align 4
  %tobool37 = icmp ne i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.33
  %26 = phi i1 [ false, %if.end.33 ], [ %tobool37, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %dead, align 4
  %27 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 %27, 20
  %add39 = add nsw i32 21, %mul38
  %28 = load i32, i32* %j, align 4
  %add40 = add nsw i32 %add39, %28
  %idxprom = sext i32 %add40 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %30 = load i32, i32* %pos_is_move, align 4
  %add41 = add nsw i32 %conv, %30
  %31 = load i32, i32* %last_pos_was_move, align 4
  %add42 = add nsw i32 %add41, %31
  switch i32 %add42, label %sw.default [
    i32 128, label %sw.bb
    i32 0, label %sw.bb
    i32 2, label %sw.bb.49
    i32 1, label %sw.bb.53
    i32 130, label %sw.bb.57
    i32 129, label %sw.bb.59
    i32 256, label %sw.bb.61
    i32 258, label %sw.bb.68
    i32 257, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %land.end, %land.end
  %32 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx45, i32 0, i64 %idxprom43
  %34 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %34 to i32
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %conv47)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.49:                                         ; preds = %land.end
  %35 = load i32, i32* %dead, align 4
  %tobool50 = icmp ne i32 %35, 0
  %cond51 = select i1 %tobool50, i32 120, i32 88
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %cond51)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %land.end
  %36 = load i32, i32* %dead, align 4
  %tobool54 = icmp ne i32 %36, 0
  %cond55 = select i1 %tobool54, i32 111, i32 79
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %cond55)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %land.end
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 88)
  store i32 256, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %land.end
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 79)
  store i32 256, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %land.end
  %37 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %38 to i64
  %arrayidx64 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx64, i32 0, i64 %idxprom62
  %39 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %39 to i32
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 %conv66)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %land.end
  %40 = load i32, i32* %dead, align 4
  %tobool69 = icmp ne i32 %40, 0
  %cond70 = select i1 %tobool69, i32 120, i32 88
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 %cond70)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.bb.72:                                         ; preds = %land.end
  %41 = load i32, i32* %dead, align 4
  %tobool73 = icmp ne i32 %41, 0
  %cond74 = select i1 %tobool73, i32 111, i32 79
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 %cond74)
  store i32 0, i32* %last_pos_was_move, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %land.end
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %i, align 4
  %mul76 = mul nsw i32 %43, 20
  %add77 = add nsw i32 21, %mul76
  %44 = load i32, i32* %j, align 4
  %add78 = add nsw i32 %add77, %44
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %45 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %45 to i32
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i32 %conv81)
  call void @exit(i32 1) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.72, %sw.bb.68, %sw.bb.61, %sw.bb.59, %sw.bb.57, %sw.bb.53, %sw.bb.49, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %47 = load i32, i32* %last_pos_was_move, align 4
  %cmp83 = icmp eq i32 %47, 0
  br i1 %cmp83, label %if.then.85, label %if.else.95

if.then.85:                                       ; preds = %for.end
  %48 = load i32, i32* @board_size, align 4
  %cmp86 = icmp sgt i32 %48, 10
  br i1 %cmp86, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %if.then.85
  %49 = load i32, i32* @board_size, align 4
  %50 = load i32, i32* %i, align 4
  %sub89 = sub nsw i32 %49, %50
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 %sub89)
  br label %if.end.94

if.else.91:                                       ; preds = %if.then.85
  %51 = load i32, i32* @board_size, align 4
  %52 = load i32, i32* %i, align 4
  %sub92 = sub nsw i32 %51, %52
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %sub92)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.88
  br label %if.end.105

if.else.95:                                       ; preds = %for.end
  %53 = load i32, i32* @board_size, align 4
  %cmp96 = icmp sgt i32 %53, 10
  br i1 %cmp96, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %if.else.95
  %54 = load i32, i32* @board_size, align 4
  %55 = load i32, i32* %i, align 4
  %sub99 = sub nsw i32 %54, %55
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 %sub99)
  br label %if.end.104

if.else.101:                                      ; preds = %if.else.95
  %56 = load i32, i32* @board_size, align 4
  %57 = load i32, i32* %i, align 4
  %sub102 = sub nsw i32 %56, %57
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 %sub102)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.94
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.105
  %58 = load i32, i32* %i, align 4
  %inc108 = add nsw i32 %58, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call110 = call i32 @fflush(%struct._IO_FILE* %59)
  %arraydecay111 = getelementptr inbounds [64 x i8], [64 x i8]* %letterbar, i32 0, i32 0
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* %arraydecay111)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call113 = call i32 @fflush(%struct._IO_FILE* %60)
  ret void
}

declare void @mprintf(i8*, ...) #3

declare i8* @color_to_string(i32) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_command(i8* %command) #0 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %d = alloca i32, align 4
  store i8* %command, i8** %command.addr, align 8
  %0 = load i8*, i8** %command.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* %c, i32* %d) #2
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c, align 1
  %conv = sext i8 %1 to i32
  %call1 = call i32 @toupper(i32 %conv) #2
  %conv2 = trunc i32 %call1 to i8
  store i8 %conv2, i8* %c, align 1
  %conv3 = sext i8 %conv2 to i32
  %cmp4 = icmp slt i32 %conv3, 65
  br i1 %cmp4, label %if.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load i8, i8* %c, align 1
  %conv7 = sext i8 %2 to i32
  %call8 = call i32 @toupper(i32 %conv7) #2
  %conv9 = trunc i32 %call8 to i8
  store i8 %conv9, i8* %c, align 1
  %conv10 = sext i8 %conv9 to i32
  %cmp11 = icmp sgt i32 %conv10, 90
  br i1 %cmp11, label %if.end, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.6
  %3 = load i8, i8* %c, align 1
  %conv14 = sext i8 %3 to i32
  %cmp15 = icmp eq i32 %conv14, 73
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.13
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.13, %lor.lhs.false.6, %lor.lhs.false, %entry
  %4 = load i8*, i8** %command.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv17 = sext i8 %5 to i32
  %cmp18 = icmp eq i32 %conv17, 63
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store i32 18, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.21
  %6 = load i8*, i8** %command.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %7 to i32
  %cmp24 = icmp eq i32 %conv23, 32
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %command.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %command.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %command.addr, align 8
  %call26 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i64 9) #7
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %while.end
  store i32 9, i32* %retval
  br label %return

if.end.28:                                        ; preds = %while.end
  %10 = load i8*, i8** %command.addr, align 8
  %call29 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i64 9) #7
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  store i32 10, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %11 = load i8*, i8** %command.addr, align 8
  %call33 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i64 9) #7
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  store i32 17, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %12 = load i8*, i8** %command.addr, align 8
  %call37 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i64 9) #7
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  store i32 35, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %13 = load i8*, i8** %command.addr, align 8
  %call41 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0), i64 9) #7
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  store i32 36, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %14 = load i8*, i8** %command.addr, align 8
  %call45 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i64 9) #7
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  store i32 12, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %15 = load i8*, i8** %command.addr, align 8
  %call49 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i64 9) #7
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  store i32 41, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  %16 = load i8*, i8** %command.addr, align 8
  %call53 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i64 5) #7
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  store i32 11, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %17 = load i8*, i8** %command.addr, align 8
  %call57 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i64 7) #7
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  store i32 16, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.56
  %18 = load i8*, i8** %command.addr, align 8
  %call61 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i64 7) #7
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.60
  store i32 28, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %19 = load i8*, i8** %command.addr, align 8
  %call65 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i64 6) #7
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  store i32 3, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %20 = load i8*, i8** %command.addr, align 8
  %call69 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i64 6) #7
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.68
  store i32 30, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.68
  %21 = load i8*, i8** %command.addr, align 8
  %call73 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i64 6) #7
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  store i32 31, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.72
  %22 = load i8*, i8** %command.addr, align 8
  %call77 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i64 6) #7
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  store i32 29, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.76
  %23 = load i8*, i8** %command.addr, align 8
  %call81 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i64 5) #7
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %if.end.80
  store i32 14, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.end.80
  %24 = load i8*, i8** %command.addr, align 8
  %call85 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i64 5) #7
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.84
  store i32 7, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.84
  %25 = load i8*, i8** %command.addr, align 8
  %call89 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i64 4) #7
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %if.end.88
  store i32 13, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.end.88
  %26 = load i8*, i8** %command.addr, align 8
  %call93 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i64 4) #7
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.92
  store i32 8, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.92
  %27 = load i8*, i8** %command.addr, align 8
  %call97 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i64 4) #7
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.end.96
  store i32 15, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.96
  %28 = load i8*, i8** %command.addr, align 8
  %call101 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i64 4) #7
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %if.end.100
  store i32 6, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.100
  %29 = load i8*, i8** %command.addr, align 8
  %call105 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i64 5) #7
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.end.104
  store i32 37, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.104
  %30 = load i8*, i8** %command.addr, align 8
  %call109 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i64 5) #7
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.end.108
  store i32 38, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.108
  %31 = load i8*, i8** %command.addr, align 8
  %call113 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i64 4) #7
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.end.112
  store i32 4, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  %32 = load i8*, i8** %command.addr, align 8
  %call117 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i64 3) #7
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.end.116
  store i32 33, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.116
  %33 = load i8*, i8** %command.addr, align 8
  %call121 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i64 3) #7
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %if.end.120
  store i32 34, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.120
  %34 = load i8*, i8** %command.addr, align 8
  %call125 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i64 3) #7
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %if.end.124
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.124
  %35 = load i8*, i8** %command.addr, align 8
  %call129 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i64 3) #7
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end.132, label %if.then.131

if.then.131:                                      ; preds = %if.end.128
  store i32 5, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.end.128
  %36 = load i8*, i8** %command.addr, align 8
  %call133 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i64 3) #7
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %if.end.132
  store i32 19, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.132
  %37 = load i8*, i8** %command.addr, align 8
  %call137 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i64 3) #7
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end.140, label %if.then.139

if.then.139:                                      ; preds = %if.end.136
  store i32 20, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.136
  %38 = load i8*, i8** %command.addr, align 8
  %call141 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i64 3) #7
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %if.end.140
  store i32 21, i32* %retval
  br label %return

if.end.144:                                       ; preds = %if.end.140
  %39 = load i8*, i8** %command.addr, align 8
  %call145 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i64 3) #7
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %if.end.144
  store i32 22, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.end.144
  %40 = load i8*, i8** %command.addr, align 8
  %call149 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i64 3) #7
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %if.end.148
  store i32 26, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.end.148
  %41 = load i8*, i8** %command.addr, align 8
  %call153 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i64 3) #7
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %if.end.152
  store i32 27, i32* %retval
  br label %return

if.end.156:                                       ; preds = %if.end.152
  %42 = load i8*, i8** %command.addr, align 8
  %call157 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i64 4) #7
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %if.end.156
  store i32 1, i32* %retval
  br label %return

if.end.160:                                       ; preds = %if.end.156
  %43 = load i8*, i8** %command.addr, align 8
  %call161 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i64 4) #7
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %if.end.160
  store i32 2, i32* %retval
  br label %return

if.end.164:                                       ; preds = %if.end.160
  %44 = load i8*, i8** %command.addr, align 8
  %call165 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i64 1) #7
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %if.end.164
  store i32 18, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.end.164
  %45 = load i8*, i8** %command.addr, align 8
  %call169 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i64 2) #7
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %if.end.168
  store i32 23, i32* %retval
  br label %return

if.end.172:                                       ; preds = %if.end.168
  %46 = load i8*, i8** %command.addr, align 8
  %call173 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i64 2) #7
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.end.176, label %if.then.175

if.then.175:                                      ; preds = %if.end.172
  store i32 24, i32* %retval
  br label %return

if.end.176:                                       ; preds = %if.end.172
  %47 = load i8*, i8** %command.addr, align 8
  %call177 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i64 2) #7
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.end.180, label %if.then.179

if.then.179:                                      ; preds = %if.end.176
  store i32 25, i32* %retval
  br label %return

if.end.180:                                       ; preds = %if.end.176
  %48 = load i8*, i8** %command.addr, align 8
  %call181 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i64 2) #7
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %if.end.180
  store i32 32, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.180
  %49 = load i8*, i8** %command.addr, align 8
  %call185 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i64 2) #7
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end.188, label %if.then.187

if.then.187:                                      ; preds = %if.end.184
  store i32 39, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.end.184
  %50 = load i8*, i8** %command.addr, align 8
  %call189 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i64 2) #7
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.end.192, label %if.then.191

if.then.191:                                      ; preds = %if.end.188
  store i32 40, i32* %retval
  br label %return

if.end.192:                                       ; preds = %if.end.188
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.192, %if.then.191, %if.then.187, %if.then.183, %if.then.179, %if.then.175, %if.then.171, %if.then.167, %if.then.163, %if.then.159, %if.then.155, %if.then.151, %if.then.147, %if.then.143, %if.then.139, %if.then.135, %if.then.131, %if.then.127, %if.then.123, %if.then.119, %if.then.115, %if.then.111, %if.then.107, %if.then.103, %if.then.99, %if.then.95, %if.then.91, %if.then.87, %if.then.83, %if.then.79, %if.then.75, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.20, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @sgftreeWriteResult(%struct.SGFTree_t*, float, i32) #3

declare void @sgffile_output(%struct.SGFTree_t*) #3

; Function Attrs: nounwind uwtable
define internal void @show_commands() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.108, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.109, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.110, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.111, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.113, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.114, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.115, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.116, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.117, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.118, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.121, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.122, i32 0, i32 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.123, i32 0, i32 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.124, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.125, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.126, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.127, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.129, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.130, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.131, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.132, i32 0, i32 0))
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.133, i32 0, i32 0))
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.134, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.135, i32 0, i32 0))
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.136, i32 0, i32 0))
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.137, i32 0, i32 0))
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare void @sgfOverwritePropertyInt(%struct.SGFNode_t*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @ascii_free_handicap(%struct.Gameinfo* %gameinfo, i8* %handicap) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %handicap.addr = alloca i8*, align 8
  %handi = alloca i32, align 4
  %i = alloca i32, align 4
  %line = alloca [80 x i8], align 16
  %stones = alloca [361 x i32], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %handicap, i8** %handicap.addr, align 8
  %0 = load i8*, i8** %handicap.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32* %handi) #2
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %handi, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %handi, align 4
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %3)
  %4 = load i32, i32* %handi, align 4
  %call5 = call i32 @place_free_handicap(i32 %4)
  store i32 %call5, i32* %handi, align 4
  %5 = load i32, i32* %handi, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.171, i32 0, i32 0), i32 %5)
  br label %if.end.89

if.else:                                          ; preds = %entry
  %6 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %6)
  store i32 0, i32* %handi, align 4
  br label %while.body

while.body:                                       ; preds = %if.else, %if.end.88
  call void @ascii_showboard()
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.172, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.173, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.174, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.175, i32 0, i32 0))
  %7 = load i32, i32* %handi, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.176, i32 0, i32 0), i32 %7)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call12 = call i8* @fgets(i8* %arraydecay, i32 80, %struct._IO_FILE* %8)
  %tobool = icmp ne i8* %call12, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %while.body
  br label %return

if.end.14:                                        ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %9 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %9, 80
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %idxprom16 = sext i32 %conv to i64
  %call17 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %12, i64 %idxprom16
  %13 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %13 to i32
  %and = and i32 %conv19, 256
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i64 %idxprom21
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %15 to i32
  %call24 = call i32 @tolower(i32 %conv23) #2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i64 %idxprom25
  %17 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call24, %cond.true ], [ %conv27, %cond.false ]
  %conv28 = trunc i32 %cond to i8
  %18 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay31 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %call32 = call i32 @strncmp(i8* %arraydecay31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i64 4) #7
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.48, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %20 = load i32, i32* %handi, align 4
  %tobool35 = icmp ne i32 %20, 0
  br i1 %tobool35, label %if.else.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.34
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.177, i32 0, i32 0))
  br label %if.end.47

if.else.38:                                       ; preds = %if.then.34
  %21 = load i32, i32* %handi, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %handi, align 4
  %idxprom39 = sext i32 %dec to i64
  %arrayidx40 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom39
  %22 = load i32, i32* %arrayidx40, align 4
  call void @remove_stone(i32 %22)
  %23 = load i32, i32* %handi, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom41
  %24 = load i32, i32* %arrayidx42, align 4
  %div = sdiv i32 %24, 20
  %sub = sub nsw i32 %div, 1
  %25 = load i32, i32* %handi, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom43
  %26 = load i32, i32* %arrayidx44, align 4
  %rem = srem i32 %26, 20
  %sub45 = sub nsw i32 %rem, 1
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i32 0, i32 0), i32 %sub, i32 %sub45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.38, %if.then.36
  br label %if.end.88

if.else.48:                                       ; preds = %for.end
  %arraydecay49 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %call50 = call i32 @strncmp(i8* %arraydecay49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i64 5) #7
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.else.48
  %27 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %27)
  store i32 0, i32* %handi, align 4
  br label %if.end.87

if.else.53:                                       ; preds = %if.else.48
  %arraydecay54 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %call55 = call i32 @strncmp(i8* %arraydecay54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i64 4) #7
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.else.64, label %if.then.57

if.then.57:                                       ; preds = %if.else.53
  %28 = load i32, i32* %handi, align 4
  %cmp58 = icmp eq i32 %28, 1
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %if.then.57
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.180, i32 0, i32 0))
  br label %if.end.63

if.else.62:                                       ; preds = %if.then.57
  br label %while.end

if.end.63:                                        ; preds = %if.then.60
  br label %if.end.86

if.else.64:                                       ; preds = %if.else.53
  %29 = load i32, i32* @board_size, align 4
  %arraydecay65 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %call66 = call i32 @string_to_location(i32 %29, i8* %arraydecay65, i32* %x, i32* %y)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.82

if.then.68:                                       ; preds = %if.else.64
  %30 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %30, 20
  %add = add nsw i32 21, %mul
  %31 = load i32, i32* %y, align 4
  %add69 = add nsw i32 %add, %31
  store i32 %add69, i32* %pos, align 4
  %32 = load i32, i32* %pos, align 4
  %idxprom70 = sext i32 %32 to i64
  %arrayidx71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom70
  %33 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %cmp73 = icmp ne i32 %conv72, 0
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.then.68
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.181, i32 0, i32 0))
  br label %if.end.81

if.else.77:                                       ; preds = %if.then.68
  %34 = load i32, i32* %pos, align 4
  call void @add_stone(i32 %34, i32 2)
  %35 = load i32, i32* %pos, align 4
  %36 = load i32, i32* %handi, align 4
  %inc78 = add nsw i32 %36, 1
  store i32 %inc78, i32* %handi, align 4
  %idxprom79 = sext i32 %36 to i64
  %arrayidx80 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom79
  store i32 %35, i32* %arrayidx80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.77, %if.then.75
  br label %if.end.85

if.else.82:                                       ; preds = %if.else.64
  %arraydecay83 = getelementptr inbounds [80 x i8], [80 x i8]* %line, i32 0, i32 0
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay83)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.end.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.63
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.52
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.47
  br label %while.body

while.end:                                        ; preds = %if.else.62
  br label %if.end.89

if.end.89:                                        ; preds = %while.end, %if.end
  %37 = load i32, i32* %handi, align 4
  %38 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap90 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %38, i32 0, i32 0
  store i32 %37, i32* %handicap90, align 4
  %39 = load i32, i32* %handi, align 4
  %tobool91 = icmp ne i32 %39, 0
  %cond92 = select i1 %tobool91, i32 1, i32 2
  %40 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %40, i32 0, i32 1
  store i32 %cond92, i32* %to_move, align 4
  br label %return

return:                                           ; preds = %if.end.89, %if.then.13, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_move(%struct.Gameinfo* %gameinfo, i8* %command, i32* %passes, i32 %force) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %command.addr = alloca i8*, align 8
  %passes.addr = alloca i32*, align 8
  %force.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %command, i8** %command.addr, align 8
  store i32* %passes, i32** %passes.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load i32, i32* @board_size, align 4
  %1 = load i8*, i8** %command.addr, align 8
  %call = call i32 @string_to_location(i32 %0, i8* %1, i32* %i, i32* %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %command.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0), i8* %2)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %5, i32 0, i32 1
  %6 = load i32, i32* %to_move, align 4
  %call2 = call i32 @gnugo_is_legal(i32 %3, i32 %4, i32 %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %command.addr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), i8* %7)
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i32*, i32** %passes.addr, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @verbose, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call8 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i32 %10, i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @init_sgf(%struct.Gameinfo* %12)
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move9 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %15, i32 0, i32 1
  %16 = load i32, i32* %to_move9, align 4
  call void @gnugo_play_move(i32 %13, i32 %14, i32 %16)
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %17, i32 0)
  %18 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move10 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %18, i32 0, i32 1
  %19 = load i32, i32* %to_move10, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %19, i32 %20, i32 %21)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* @last_move_i, align 4
  %23 = load i32, i32* %j, align 4
  store i32 %23, i32* @last_move_j, align 4
  %24 = load i32, i32* @opt_showboard, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %cond.end
  %25 = load i32, i32* @emacs, align 4
  %tobool12 = icmp ne i32 %25, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  call void @ascii_showboard()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %cond.end
  %26 = load i32, i32* %force.addr, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %27, i32 0, i32 3
  %28 = load i32, i32* %computer_player, align 4
  %sub = sub nsw i32 3, %28
  %29 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player18 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %29, i32 0, i32 3
  store i32 %sub, i32* %computer_player18, align 4
  %30 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move19 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %30, i32 0, i32 1
  %31 = load i32, i32* %to_move19, align 4
  %sub20 = sub nsw i32 3, %31
  %32 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move21 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %32, i32 0, i32 1
  store i32 %sub20, i32* %to_move21, align 4
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %33 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move23 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %33, i32 0, i32 1
  %34 = load i32, i32* %to_move23, align 4
  %sub24 = sub nsw i32 3, %34
  %35 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move25 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %35, i32 0, i32 1
  store i32 %sub24, i32* %to_move25, align 4
  %36 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %37 = load i32*, i32** %passes.addr, align 8
  call void @computer_move(%struct.Gameinfo* %36, i32* %37)
  br label %return

return:                                           ; preds = %if.end.22, %if.then.17, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pass(%struct.Gameinfo* %gameinfo, i32* %passes, i32 %force) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %passes.addr = alloca i32*, align 8
  %force.addr = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i32* %passes, i32** %passes.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load i32*, i32** %passes.addr, align 8
  %1 = load i32, i32* %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4
  %2 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @init_sgf(%struct.Gameinfo* %2)
  %3 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %3, i32 0, i32 1
  %4 = load i32, i32* %to_move, align 4
  call void @gnugo_play_move(i32 -1, i32 -1, i32 %4)
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %5, i32 0)
  %6 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move1 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  %7 = load i32, i32* %to_move1, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %7, i32 -1, i32 -1)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move2 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %8, i32 0, i32 1
  %9 = load i32, i32* %to_move2, align 4
  %sub = sub nsw i32 3, %9
  %10 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move3 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %10, i32 0, i32 1
  store i32 %sub, i32* %to_move3, align 4
  %11 = load i32, i32* %force.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %12, i32 0, i32 3
  %13 = load i32, i32* %computer_player, align 4
  %sub4 = sub nsw i32 3, %13
  %14 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player5 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %14, i32 0, i32 3
  store i32 %sub4, i32* %computer_player5, align 4
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %16 = load i32*, i32** %passes.addr, align 8
  call void @computer_move(%struct.Gameinfo* %15, i32* %16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gnugo_undo_move(i32) #3

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #3

declare i32 @sgftreeBack(%struct.SGFTree_t*) #3

declare i32 @sgftreeForward(%struct.SGFTree_t*) #3

declare i32 @gnugo_play_sgfnode(%struct.SGFNode_t*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @showcapture(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i32 @string_to_location(i32 %1, i8* %2, i32* %i, i32* %j)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %4
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i32 0, i32 0))
  br label %if.end.10

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %call7 = call i32 @gnugo_attack(i32 %6, i32 %7, i32* %x, i32* %y)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i32 0, i32 0), i32 %8, i32 %9, i32 %10, i32 %11)
  br label %if.end.10

if.else:                                          ; preds = %if.end.6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.163, i32 0, i32 0), i32 %12, i32 %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %if.else, %if.then.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @showdefense(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i32 @string_to_location(i32 %1, i8* %2, i32* %i, i32* %j)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 20
  %add = add nsw i32 21, %mul
  %4 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %add, %4
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i32 0, i32 0))
  br label %if.end.15

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %call7 = call i32 @gnugo_attack(i32 %6, i32 %7, i32* %x, i32* %y)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end.6
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %call10 = call i32 @gnugo_find_defense(i32 %8, i32 %9, i32* %x, i32* %y)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i32 0, i32 0), i32 %10, i32 %11, i32 %12, i32 %13)
  br label %if.end.13

if.else:                                          ; preds = %if.then.9
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.165, i32 0, i32 0), i32 %14, i32 %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.6
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.166, i32 0, i32 0), i32 %16, i32 %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.4, %if.else.14, %if.end.13
  ret void
}

declare void @examine_position(i32, i32) #3

declare void @print_moyo() #3

declare void @showboard(i32) #3

; Function Attrs: nounwind uwtable
define internal void @ascii_goto(%struct.Gameinfo* %gameinfo, i8* %line) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %line.addr = alloca i8*, align 8
  %movenumber = alloca i8*, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %movenumber, align 8
  %1 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i64 4) #7
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i32 0, i32 0), i8** %movenumber, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %line.addr, align 8
  %call3 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i64 4) #7
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0), i8** %movenumber, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.2
  %4 = load i8*, i8** %movenumber, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8* %4)
  %5 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %6 = load i8*, i8** %movenumber, align 8
  %call9 = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %5, %struct.SGFTree_t* @sgftree, i8* %6)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @init_sgf(%struct.Gameinfo* %ginfo) #0 {
entry:
  %ginfo.addr = alloca %struct.Gameinfo*, align 8
  store %struct.Gameinfo* %ginfo, %struct.Gameinfo** %ginfo.addr, align 8
  %0 = load i32, i32* @sgf_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.3

if.end:                                           ; preds = %entry
  store i32 1, i32* @sgf_initialized, align 4
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %2 = load i32, i32* @random_seed, align 4
  %3 = load float, float* @komi, align 4
  %4 = load i32, i32* @level, align 4
  %5 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %1, i32 1, i32 %2, float %3, i32 %4, i32 %5)
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %7 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %handicap = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %7, i32 0, i32 0
  %8 = load i32, i32* %handicap, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %8)
  %9 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %handicap1 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %9, i32 0, i32 0
  %10 = load i32, i32* %handicap1, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gnugo_recordboard(%struct.SGFNode_t* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

declare i32 @writesgf(%struct.SGFNode_t*, i8*) #3

declare i32 @sgftree_readfile(%struct.SGFTree_t*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @show_dragons() #3

declare void @gnugo_who_wins(i32, %struct._IO_FILE*) #3

declare float @estimate_score(float*, float*) #3

; Function Attrs: nounwind uwtable
define internal void @endgame(%struct.Gameinfo* %gameinfo) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %line = alloca [12 x i8], align 1
  %done = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xyzzy = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i32 0, i32* %done, align 4
  store i32 1, i32* %xyzzy, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.143, i32 0, i32 0))
  store i32 1, i32* @showdead, align 4
  call void @ascii_showboard()
  br label %while.cond

while.cond:                                       ; preds = %if.end.87, %entry
  %0 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.144, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.145, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 12, %struct._IO_FILE* %1)
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %idxprom6 = sext i32 %conv to i64
  %call7 = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %call7, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %5, i64 %idxprom6
  %6 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %6 to i32
  %and = and i32 %conv9, 256
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i64 %idxprom11
  %8 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %8 to i32
  %call14 = call i32 @tolower(i32 %conv13) #2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %conv17, %cond.false ]
  %conv18 = trunc i32 %cond to i8
  %11 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay21 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call22 = call i32 @strncmp(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i64 4) #7
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %for.end
  store i32 1, i32* %done, align 4
  br label %if.end.87

if.else:                                          ; preds = %for.end
  %arraydecay25 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call26 = call i32 @strncmp(i8* %arraydecay25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i64 4) #7
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %if.else
  br label %return

if.else.29:                                       ; preds = %if.else
  %arraydecay30 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call31 = call i32 @strncmp(i8* %arraydecay30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i64 5) #7
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else.44, label %if.then.33

if.then.33:                                       ; preds = %if.else.29
  %13 = load i32, i32* %xyzzy, align 4
  %tobool34 = icmp ne i32 %13, 0
  br i1 %tobool34, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %if.then.33
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.149, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.150, i32 0, i32 0))
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.151, i32 0, i32 0))
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.152, i32 0, i32 0))
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0))
  store i32 0, i32* %xyzzy, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %if.then.33
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.154, i32 0, i32 0))
  store i32 1, i32* %xyzzy, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.35
  br label %if.end.85

if.else.44:                                       ; preds = %if.else.29
  %arraydecay45 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call46 = call i32 @strncmp(i8* %arraydecay45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i64 4) #7
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.52, label %if.then.48

if.then.48:                                       ; preds = %if.else.44
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.155, i32 0, i32 0))
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.156, i32 0, i32 0))
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i32 0, i32 0))
  br label %if.end.84

if.else.52:                                       ; preds = %if.else.44
  %arraydecay53 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call54 = call i32 @strncmp(i8* %arraydecay53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i64 4) #7
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.else.59, label %if.then.56

if.then.56:                                       ; preds = %if.else.52
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.158, i32 0, i32 0))
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.159, i32 0, i32 0))
  call void @ascii_showboard()
  br label %if.end.83

if.else.59:                                       ; preds = %if.else.52
  %14 = load i32, i32* @board_size, align 4
  %arraydecay60 = getelementptr inbounds [12 x i8], [12 x i8]* %line, i32 0, i32 0
  %call61 = call i32 @string_to_location(i32 %14, i8* %arraydecay60, i32* %i, i32* %j)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %if.else.59
  %15 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %15, 20
  %add = add nsw i32 21, %mul
  %16 = load i32, i32* %j, align 4
  %add63 = add nsw i32 %add, %16
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %17 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %17 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %lor.lhs.false, %if.else.59
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0))
  br label %if.end.82

if.else.71:                                       ; preds = %lor.lhs.false
  %18 = load i32, i32* %i, align 4
  %mul72 = mul nsw i32 %18, 20
  %add73 = add nsw i32 21, %mul72
  %19 = load i32, i32* %j, align 4
  %add74 = add nsw i32 %add73, %19
  %call75 = call i32 @dragon_status(i32 %add74)
  store i32 %call75, i32* %status, align 4
  %20 = load i32, i32* %status, align 4
  %cmp76 = icmp eq i32 %20, 0
  %cond78 = select i1 %cmp76, i32 1, i32 0
  store i32 %cond78, i32* %status, align 4
  %21 = load i32, i32* %i, align 4
  %mul79 = mul nsw i32 %21, 20
  %add80 = add nsw i32 21, %mul79
  %22 = load i32, i32* %j, align 4
  %add81 = add nsw i32 %add80, %22
  %23 = load i32, i32* %status, align 4
  call void @change_dragon_status(i32 %add81, i32 %23)
  call void @ascii_showboard()
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.71, %if.then.69
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.56
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.48
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.43
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %24, i32 0, i32 3
  %25 = load i32, i32* %computer_player, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 %25, %struct._IO_FILE* %26)
  br label %return

return:                                           ; preds = %while.end, %if.then.28, %if.then
  ret void
}

declare void @update_random_seed() #3

declare void @sgfFreeNode(%struct.SGFNode_t*) #3

declare void @sgftree_clear(%struct.SGFTree_t*) #3

declare void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #3

declare void @gameinfo_clear(%struct.Gameinfo*, i32, float) #3

; Function Attrs: nounwind uwtable
define void @play_ascii_emacs(%struct.SGFTree_t* %tree, %struct.Gameinfo* %gameinfo, i8* %filename, i8* %until) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %filename.addr = alloca i8*, align 8
  %until.addr = alloca i8*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %until, i8** %until.addr, align 8
  store i32 1, i32* @emacs, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %1 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8*, i8** %until.addr, align 8
  call void @play_ascii(%struct.SGFTree_t* %0, %struct.Gameinfo* %1, i8* %2, i8* %3)
  ret void
}

declare i32 @gnugo_genmove(i32*, i32*, i32) #3

declare float @gnugo_estimate_score(float*, float*) #3

declare i32 @is_pass(i32) #3

declare void @gnugo_play_move(i32, i32, i32) #3

declare void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #3

declare void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @make_letterbar(i32 %boardsize, i8* %letterbar) #0 {
entry:
  %boardsize.addr = alloca i32, align 4
  %letterbar.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %letteroffset = alloca i32, align 4
  %spaces = alloca [64 x i8], align 16
  %letter = alloca [64 x i8], align 16
  store i32 %boardsize, i32* %boardsize.addr, align 4
  store i8* %letterbar, i8** %letterbar.addr, align 8
  %0 = load i32, i32* %boardsize.addr, align 4
  %cmp = icmp sle i32 %0, 25
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %spaces, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %letterbar.addr, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0)) #2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %boardsize.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 65, i32* %letteroffset, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %letteroffset, align 4
  %add = add nsw i32 %4, %5
  %cmp3 = icmp sge i32 %add, 73
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  %6 = load i32, i32* %letteroffset, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %letteroffset, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.body
  %7 = load i8*, i8** %letterbar.addr, align 8
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %spaces, i32 0, i32 0
  %call7 = call i8* @strcat(i8* %7, i8* %arraydecay6) #2
  %arraydecay8 = getelementptr inbounds [64 x i8], [64 x i8]* %letter, i32 0, i32 0
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %letteroffset, align 4
  %add9 = add nsw i32 %8, %9
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 %add9) #2
  %10 = load i8*, i8** %letterbar.addr, align 8
  %arraydecay11 = getelementptr inbounds [64 x i8], [64 x i8]* %letter, i32 0, i32 0
  %call12 = call i8* @strcat(i8* %10, i8* %arraydecay11) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_handicap_spots(i32 %boardsize) #0 {
entry:
  %boardsize.addr = alloca i32, align 4
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load i32, i32* @hspot_size, align 4
  %1 = load i32, i32* %boardsize.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %boardsize.addr, align 4
  store i32 %2, i32* @hspot_size, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i32 0, i32 0), i8 46, i64 361, i32 16, i1 false)
  %3 = load i32, i32* %boardsize.addr, align 4
  %cmp1 = icmp eq i32 %3, 5
  br i1 %cmp1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.end
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 1, i64 1), align 1
  %4 = load i32, i32* %boardsize.addr, align 4
  %sub = sub nsw i32 %4, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 1
  store i8 43, i8* %arrayidx3, align 1
  %5 = load i32, i32* %boardsize.addr, align 4
  %sub4 = sub nsw i32 %5, 2
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 1), i32 0, i64 %idxprom5
  store i8 43, i8* %arrayidx6, align 1
  %6 = load i32, i32* %boardsize.addr, align 4
  %sub7 = sub nsw i32 %6, 2
  %idxprom8 = sext i32 %sub7 to i64
  %7 = load i32, i32* %boardsize.addr, align 4
  %sub9 = sub nsw i32 %7, 2
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx11, i32 0, i64 %idxprom8
  store i8 43, i8* %arrayidx12, align 1
  %8 = load i32, i32* %boardsize.addr, align 4
  %div = sdiv i32 %8, 2
  %idxprom13 = sext i32 %div to i64
  %9 = load i32, i32* %boardsize.addr, align 4
  %div14 = sdiv i32 %9, 2
  %idxprom15 = sext i32 %div14 to i64
  %arrayidx16 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx16, i32 0, i64 %idxprom13
  store i8 43, i8* %arrayidx17, align 1
  br label %return

if.end.18:                                        ; preds = %if.end
  %10 = load i32, i32* %boardsize.addr, align 4
  %rem = srem i32 %10, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.else.50, label %if.then.19

if.then.19:                                       ; preds = %if.end.18
  %11 = load i32, i32* %boardsize.addr, align 4
  %cmp20 = icmp sgt i32 %11, 2
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %12 = load i32, i32* %boardsize.addr, align 4
  %cmp21 = icmp slt i32 %12, 12
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 2, i64 2), align 1
  %13 = load i32, i32* %boardsize.addr, align 4
  %sub23 = sub nsw i32 %13, 3
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx25, i32 0, i64 2
  store i8 43, i8* %arrayidx26, align 1
  %14 = load i32, i32* %boardsize.addr, align 4
  %sub27 = sub nsw i32 %14, 3
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 2), i32 0, i64 %idxprom28
  store i8 43, i8* %arrayidx29, align 1
  %15 = load i32, i32* %boardsize.addr, align 4
  %sub30 = sub nsw i32 %15, 3
  %idxprom31 = sext i32 %sub30 to i64
  %16 = load i32, i32* %boardsize.addr, align 4
  %sub32 = sub nsw i32 %16, 3
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx34, i32 0, i64 %idxprom31
  store i8 43, i8* %arrayidx35, align 1
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 3, i64 3), align 1
  %17 = load i32, i32* %boardsize.addr, align 4
  %sub36 = sub nsw i32 %17, 4
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx38, i32 0, i64 3
  store i8 43, i8* %arrayidx39, align 1
  %18 = load i32, i32* %boardsize.addr, align 4
  %sub40 = sub nsw i32 %18, 4
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 3), i32 0, i64 %idxprom41
  store i8 43, i8* %arrayidx42, align 1
  %19 = load i32, i32* %boardsize.addr, align 4
  %sub43 = sub nsw i32 %19, 4
  %idxprom44 = sext i32 %sub43 to i64
  %20 = load i32, i32* %boardsize.addr, align 4
  %sub45 = sub nsw i32 %20, 4
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx47, i32 0, i64 %idxprom44
  store i8 43, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.22
  br label %if.end.114

if.else.50:                                       ; preds = %if.end.18
  %21 = load i32, i32* %boardsize.addr, align 4
  %cmp51 = icmp sgt i32 %21, 2
  br i1 %cmp51, label %land.lhs.true.52, label %if.else.74

land.lhs.true.52:                                 ; preds = %if.else.50
  %22 = load i32, i32* %boardsize.addr, align 4
  %cmp53 = icmp slt i32 %22, 12
  br i1 %cmp53, label %if.then.54, label %if.else.74

if.then.54:                                       ; preds = %land.lhs.true.52
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 2, i64 2), align 1
  %23 = load i32, i32* %boardsize.addr, align 4
  %sub55 = sub nsw i32 %23, 3
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx57, i32 0, i64 2
  store i8 43, i8* %arrayidx58, align 1
  %24 = load i32, i32* %boardsize.addr, align 4
  %sub59 = sub nsw i32 %24, 3
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 2), i32 0, i64 %idxprom60
  store i8 43, i8* %arrayidx61, align 1
  %25 = load i32, i32* %boardsize.addr, align 4
  %sub62 = sub nsw i32 %25, 3
  %idxprom63 = sext i32 %sub62 to i64
  %26 = load i32, i32* %boardsize.addr, align 4
  %sub64 = sub nsw i32 %26, 3
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx66, i32 0, i64 %idxprom63
  store i8 43, i8* %arrayidx67, align 1
  %27 = load i32, i32* %boardsize.addr, align 4
  %div68 = sdiv i32 %27, 2
  %idxprom69 = sext i32 %div68 to i64
  %28 = load i32, i32* %boardsize.addr, align 4
  %div70 = sdiv i32 %28, 2
  %idxprom71 = sext i32 %div70 to i64
  %arrayidx72 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx72, i32 0, i64 %idxprom69
  store i8 43, i8* %arrayidx73, align 1
  br label %if.end.113

if.else.74:                                       ; preds = %land.lhs.true.52, %if.else.50
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 3, i64 3), align 1
  %29 = load i32, i32* %boardsize.addr, align 4
  %sub75 = sub nsw i32 %29, 4
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx77, i32 0, i64 3
  store i8 43, i8* %arrayidx78, align 1
  %30 = load i32, i32* %boardsize.addr, align 4
  %sub79 = sub nsw i32 %30, 4
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 3), i32 0, i64 %idxprom80
  store i8 43, i8* %arrayidx81, align 1
  %31 = load i32, i32* %boardsize.addr, align 4
  %sub82 = sub nsw i32 %31, 4
  %idxprom83 = sext i32 %sub82 to i64
  %32 = load i32, i32* %boardsize.addr, align 4
  %sub84 = sub nsw i32 %32, 4
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx86, i32 0, i64 %idxprom83
  store i8 43, i8* %arrayidx87, align 1
  %33 = load i32, i32* %boardsize.addr, align 4
  %div88 = sdiv i32 %33, 2
  %idxprom89 = sext i32 %div88 to i64
  %arrayidx90 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 3), i32 0, i64 %idxprom89
  store i8 43, i8* %arrayidx90, align 1
  %34 = load i32, i32* %boardsize.addr, align 4
  %div91 = sdiv i32 %34, 2
  %idxprom92 = sext i32 %div91 to i64
  %arrayidx93 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx93, i32 0, i64 3
  store i8 43, i8* %arrayidx94, align 1
  %35 = load i32, i32* %boardsize.addr, align 4
  %sub95 = sub nsw i32 %35, 4
  %idxprom96 = sext i32 %sub95 to i64
  %36 = load i32, i32* %boardsize.addr, align 4
  %div97 = sdiv i32 %36, 2
  %idxprom98 = sext i32 %div97 to i64
  %arrayidx99 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx99, i32 0, i64 %idxprom96
  store i8 43, i8* %arrayidx100, align 1
  %37 = load i32, i32* %boardsize.addr, align 4
  %div101 = sdiv i32 %37, 2
  %idxprom102 = sext i32 %div101 to i64
  %38 = load i32, i32* %boardsize.addr, align 4
  %sub103 = sub nsw i32 %38, 4
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx105, i32 0, i64 %idxprom102
  store i8 43, i8* %arrayidx106, align 1
  %39 = load i32, i32* %boardsize.addr, align 4
  %div107 = sdiv i32 %39, 2
  %idxprom108 = sext i32 %div107 to i64
  %40 = load i32, i32* %boardsize.addr, align 4
  %div109 = sdiv i32 %40, 2
  %idxprom110 = sext i32 %div109 to i64
  %arrayidx111 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx111, i32 0, i64 %idxprom108
  store i8 43, i8* %arrayidx112, align 1
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.74, %if.then.54
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.49
  br label %return

return:                                           ; preds = %if.end.114, %if.then.2, %if.then
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @dragon_status(i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @string_to_location(i32, i8*, i32*, i32*) #3

declare i32 @gnugo_is_legal(i32, i32, i32) #3

declare i32 @gprintf(i8*, ...) #3

declare void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #3

declare void @gnugo_recordboard(%struct.SGFNode_t*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

declare void @change_dragon_status(i32, i32) #3

declare i32 @gnugo_attack(i32, i32, i32*, i32*) #3

declare i32 @gnugo_find_defense(i32, i32, i32*, i32*) #3

declare i32 @place_free_handicap(i32) #3

declare void @remove_stone(i32) #3

declare void @add_stone(i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
