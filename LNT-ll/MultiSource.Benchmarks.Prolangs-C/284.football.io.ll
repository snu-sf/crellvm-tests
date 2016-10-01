; ModuleID = './MultiSource.Benchmarks.Prolangs-C/284.football.io.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.info = type { i32, i32, i32, i32, i32, [18 x i32] }

@got_unused_responce = global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Hit return to continue: \00", align 1
@white_space.commentP = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A\0A=========================================\0A\00", align 1
@responce = common global [51 x i8] zeroinitializer, align 16
@in_fileP = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@divisions = external global [29 x [2 x i32]], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"%s team information.\0A\0A\00", align 1
@team = external global [30 x [2 x [15 x i8]]], align 16
@num_games = external global i32, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"                            \00", align 1
@sched = external global [18 x [15 x [3 x i32]]], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"at %-15s \00", align 1
@scores = external global [19 x [15 x [3 x i32]]], align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"%-15s    \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%2d-%2d   \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"NFC\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"AFC\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"East   \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Central\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"West   \00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"                 W  L  T  Pct.  PF  PA\00", align 1
@standings = external global [29 x i32], align 16
@.str.19 = private unnamed_addr constant [38 x i8] c"%- 14s%1s %2d %2d %2d %s.%03d %3d %3d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@team_info = external global [29 x %struct.info], align 16
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Record           %2d-%d-%d      %sRank %d/%d\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@conf_standings = external global [29 x i32], align 16
@abs_standings = external global [29 x i32], align 16
@.str.26 = private unnamed_addr constant [41 x i8] c"Points scored   %3d [%6.1f]   Rank %d/%d\00", align 1
@offence_ranks = external global [29 x i32], align 16
@offence_ranks_nfl = external global [29 x i32], align 16
@.str.27 = private unnamed_addr constant [41 x i8] c"Points allowed  %3d [%6.1f]   Rank %d/%d\00", align 1
@defence_ranks = external global [29 x i32], align 16
@defence_ranks_nfl = external global [29 x i32], align 16
@.str.28 = private unnamed_addr constant [40 x i8] c"Net Points     %4d [%6.1f]   Rank %d/%d\00", align 1
@net_ranks = external global [29 x i32], align 16
@net_ranks_nfl = external global [29 x i32], align 16
@.str.29 = private unnamed_addr constant [20 x i8] c"Major Tie-breakers:\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"-(1/1) Head to Head\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"-(2/ ) Divisional Record          %d-%d-%d\00", align 1
@team_info_wi_div = external global [29 x %struct.info], align 16
@.str.32 = private unnamed_addr constant [43 x i8] c"-(3/2) Conference Record          %d-%d-%d\00", align 1
@team_info_wi_conf = external global [29 x %struct.info], align 16
@.str.33 = private unnamed_addr constant [20 x i8] c"-(4/3) Common Games\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"-(5/ ) Net points in %s %s  %d [%3.1f]\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"-( /4) Avg. net points in %s     %3.1f\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"-(6/5) Total net points           %d [%3.1f]\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@common_teams = external global [29 x i32], align 16
@.str.38 = private unnamed_addr constant [52 x i8] c"ERROR: All teams must be from the same conference.\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"                                          \00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"            Div\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"                             Div.   Conf. \00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Common      Net  Net\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Team           Record HtoH  Record Record \00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Games       Pts  Pts\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"%-13s %2d-%2d-%1d \00", align 1
@h_to_h_stats = external global [29 x [29 x %struct.info]], align 16
@.str.46 = private unnamed_addr constant [12 x i8] c"%1d-%1d-%1d\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" %1d-%1d-%1d\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c" %2d-%2d-%1d\00", align 1
@common_games = external global [29 x %struct.info], align 16
@.str.49 = private unnamed_addr constant [17 x i8] c"%2d-%2d-%1d[%2d]\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"Common Games Rec.[left] Div Conf\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"                       vs.   Div.   Conf. \00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"----------------------- Net  Net  Net\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"Team           Record  %3s  Record Record \00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"   Team         %3s     Pts  Pts  Pts\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c" %2d-%2d-%1d[%2d] %2d-%2d-%1d[%2d]\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"                        \00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%5.1f\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"                 NFC                 \00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"                 AFC\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"                        W  L  T  Pct.\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"                        W  L  T  Pct.\0A\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"%2d/%2d) %-14s\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c" %2d-%2d-%2d %s.%03d\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c" %2d-%2d-%2d %s.%03d\0A\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"\0A* Division winner\0A+ Wildcard\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"                                    Week %d\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"  %2d      \00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"  %2d       \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"Enter blank line to leave a score unchanged, \0A\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"QUIT to return to menu, or new value for the score.\0A\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"\0AWeek %d\0A\0A\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"         ? \00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"  %2d     ? \00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@current_with_disk = external global i32, align 4
@.str.85 = private unnamed_addr constant [20 x i8] c"Enter either team: \00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"No game found for %s in week %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"                                  Rankings\0A\00", align 1
@.str.88 = private unnamed_addr constant [66 x i8] c"                   NFC                                       AFC\0A\00", align 1
@.str.89 = private unnamed_addr constant [82 x i8] c"                 REC.  OFF.  DEF.  NET                    REC.  OFF.  DEF.  NET\0A\0A\00", align 1
@.str.90 = private unnamed_addr constant [91 x i8] c"%-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d %-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"                            Defensive Rankings\0A\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"                NFC                              AFC\0A\0A\00", align 1
@.str.93 = private unnamed_addr constant [57 x i8] c"%2d/%-2d) %-15s %-5.1f %3d   %2d/%-2d) %-15s %-5.1f %3d\0A\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"                            Offensive Rankings\0A\00", align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"                            Net Points Rankings\0A\00", align 1
@.str.96 = private unnamed_addr constant [57 x i8] c"%2d/%-2d) %-15s %-5.1f %4d   %2d/%-2d) %-15s %-5.1f %4d\0A\00", align 1
@.str.97 = private unnamed_addr constant [66 x i8] c"\0A                   NFC                                      AFC\0A\00", align 1
@.str.98 = private unnamed_addr constant [66 x i8] c"\0A                  EAST                                     EAST\0A\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.100 = private unnamed_addr constant [68 x i8] c"\0A                 CENTRAL                                  CENTRAL\0A\00", align 1
@.str.101 = private unnamed_addr constant [65 x i8] c"                                                           WEST\0A\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"                  WEST                   \00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"%-15s [%-3s]     %-15s [%-3s]\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"Enter week <num>\0A\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"Enter week <num> with-prompts\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"Display all-ranks\0A\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Display defensive-rank\0A\00", align 1
@.str.108 = private unnamed_addr constant [44 x i8] c"Display information-about <team-name/abbr>\0A\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Display menu\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"Display offensive-rank\0A\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"Display net-rank\0A\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"Display records\0A\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"Display standings\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"Display team-names/abbr\0A\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"Display tie-breaker-information-for <team-name/abbr>\0A\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"Display week <num>\0A\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"How-ties-broken conference\0A\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"How-ties-broken division\0A\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"Quit\0A\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"Save\0A\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"[WARNING: Database is not current with disk.]\0A\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"\0A                Enter option: \00", align 1
@terminate = external global i32, align 4
@.str.123 = private unnamed_addr constant [16 x i8] c"how-ties-broken\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"division\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"conference\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"standings\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"information-about\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"tie-breaker-information-for\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"records\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"all-ranks\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"defensive-rank\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"offensive-rank\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"net-rank\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"week\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"team-name/abbr\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"Illegal display command.\0A\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"with-prompts\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"Illegal enter command.\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@input_score = external global [0 x i8], align 1

; Function Attrs: nounwind uwtable
define void @prompt(%struct._IO_FILE* %output, %struct._IO_FILE* %input) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %input.addr = alloca %struct._IO_FILE*, align 8
  %str = alloca i8*, align 8
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call1 = call i8* @get_responce(%struct._IO_FILE* %1)
  store i8* %call1, i8** %str, align 8
  %2 = load i8*, i8** %str, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @got_unused_responce, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i8* @get_responce(%struct._IO_FILE* %input) #0 {
entry:
  %input.addr = alloca %struct._IO_FILE*, align 8
  %resp = alloca i8*, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  %0 = load i32, i32* @got_unused_responce, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call = call i8* @fgets(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0), i32 50, %struct._IO_FILE* %1)
  %2 = load i32, i32* @in_fileP, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  call void @lower_case(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0))
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0)) #4
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0), i64 %call4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr5, i8** %resp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8*, i8** %resp, align 8
  %cmp = icmp uge i8* %4, getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0)
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %resp, align 8
  %6 = load i8, i8* %5, align 1
  %call6 = call i32 @white_space(i8 signext %6)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i8*, i8** %resp, align 8
  store i8 0, i8* %8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %resp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr, i8** %resp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.8

if.else:                                          ; preds = %entry
  store i32 0, i32* @got_unused_responce, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %for.end
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0), i8** %resp, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.17, %if.end.8
  %10 = load i8*, i8** %resp, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end.15

land.rhs.12:                                      ; preds = %for.cond.9
  %12 = load i8*, i8** %resp, align 8
  %13 = load i8, i8* %12, align 1
  %call13 = call i32 @white_space(i8 signext %13)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.12, %for.cond.9
  %14 = phi i1 [ false, %for.cond.9 ], [ %tobool14, %land.rhs.12 ]
  br i1 %14, label %for.body.16, label %for.end.19

for.body.16:                                      ; preds = %land.end.15
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.16
  %15 = load i8*, i8** %resp, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %resp, align 8
  br label %for.cond.9

for.end.19:                                       ; preds = %land.end.15
  %16 = load i8*, i8** %resp, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i32 @str_to_int(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  %temp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %value, align 4
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %temp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %value, align 4
  %mul = mul nsw i32 %3, 10
  %4 = load i8*, i8** %temp, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sge i32 %conv2, 48
  br i1 %cmp3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %temp, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp sle i32 %conv5, 57
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %temp, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv8, 48
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %add = add nsw i32 %mul, %cond
  store i32 %add, i32* %value, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %value, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @find_teams_rank(i32* %rank, i32 %team_code) #0 {
entry:
  %retval = alloca i32, align 4
  %rank.addr = alloca i32*, align 8
  %team_code.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %rank, i32** %rank.addr, align 8
  store i32 %team_code, i32* %team_code.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %rank.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %team_code.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @white_space(i8 signext %A) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i8, align 1
  store i8 %A, i8* %A.addr, align 1
  %0 = load i8, i8* %A.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @white_space.commentP, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @white_space.commentP, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %2 = load i8, i8* %A.addr, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  store i32 0, i32* @white_space.commentP, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %3 = load i8, i8* %A.addr, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %4 = load i8, i8* %A.addr, align 1
  %conv12 = sext i8 %4 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %5 = load i8, i8* %A.addr, align 1
  %conv16 = sext i8 %5 to i32
  %cmp17 = icmp eq i32 %conv16, 9
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %if.end.8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.19, %if.end.7, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @clear_screen(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @lower_case(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sle i32 65, %conv2
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv8 = sext i8 %7 to i32
  %add = add nsw i32 %conv8, 32
  %conv9 = trunc i32 %add to i8
  %8 = load i8*, i8** %str.addr, align 8
  store i8 %conv9, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @skip_white_space(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %call = call i32 @white_space(i8 signext %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %6 = load i8*, i8** %str.addr, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i32 @end_of_line(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @find_next_name(%struct._IO_FILE* %output, i8* %str) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  %last = alloca i8*, align 8
  %last_ch = alloca i8, align 1
  %value = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @skip_white_space(i8* %0)
  store i8* %call, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  store i8* %1, i8** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %last, align 8
  %3 = load i8, i8* %2, align 1
  %call1 = call i32 @white_space(i8 signext %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8*, i8** %last, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i8*, i8** %last, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %last_ch, align 1
  %7 = load i8*, i8** %last, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %call2 = call i32 @find_name(%struct._IO_FILE* %8, i8* %9)
  store i32 %call2, i32* %value, align 4
  %10 = load i8, i8* %last_ch, align 1
  %11 = load i8*, i8** %last, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i32, i32* %value, align 4
  ret i32 %12
}

declare i32 @find_name(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @matches(i8* %str1, i8* %comm, i32 %min_len_for_match) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %comm.addr = alloca i8*, align 8
  %min_len_for_match.addr = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %comm, i8** %comm.addr, align 8
  store i32 %min_len_for_match, i32* %min_len_for_match.addr, align 4
  store i32 0, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = load i8, i8* %add.ptr, align 1
  %call = call i32 @white_space(i8 signext %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str1.addr, align 8
  %4 = load i32, i32* %length, align 4
  %idx.ext1 = sext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %3, i64 %idx.ext1
  %5 = load i8, i8* %add.ptr2, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %length, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %length, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i32, i32* %length, align 4
  %9 = load i32, i32* %min_len_for_match.addr, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %10 = load i32, i32* %length, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load i8*, i8** %comm.addr, align 8
  %call7 = call i64 @strlen(i8* %11) #4
  %cmp8 = icmp ugt i64 %conv6, %call7
  br i1 %cmp8, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.else
  %12 = load i8*, i8** %str1.addr, align 8
  %13 = load i8*, i8** %comm.addr, align 8
  %14 = load i8*, i8** %comm.addr, align 8
  %call11 = call i64 @strlen(i8* %14) #4
  %call12 = call i32 @strncmp(i8* %12, i8* %13, i64 %call11) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.end.19, label %land.rhs.14

land.rhs.14:                                      ; preds = %if.then.10
  %15 = load i8*, i8** %str1.addr, align 8
  %16 = load i8*, i8** %comm.addr, align 8
  %call15 = call i64 @strlen(i8* %16) #4
  %add.ptr16 = getelementptr inbounds i8, i8* %15, i64 %call15
  %17 = load i8, i8* %add.ptr16, align 1
  %call17 = call i32 @white_space(i8 signext %17)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.14, %if.then.10
  %18 = phi i1 [ false, %if.then.10 ], [ %tobool18, %land.rhs.14 ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else
  %19 = load i8*, i8** %str1.addr, align 8
  %20 = load i8*, i8** %comm.addr, align 8
  %21 = load i32, i32* %length, align 4
  %conv21 = sext i32 %21 to i64
  %call22 = call i32 @strncmp(i8* %19, i8* %20, i64 %conv21) #4
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.else.20, %land.end.19, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @skip_first(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %call = call i32 @white_space(i8 signext %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8, i8* %6, align 1
  %call3 = call i32 @white_space(i8 signext %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs.5, label %land.end.9

land.rhs.5:                                       ; preds = %for.cond.2
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br label %land.end.9

land.end.9:                                       ; preds = %land.rhs.5, %for.cond.2
  %10 = phi i1 [ false, %for.cond.2 ], [ %cmp7, %land.rhs.5 ]
  br i1 %10, label %for.body.10, label %for.end.13

for.body.10:                                      ; preds = %land.end.9
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.10
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr12, i8** %str.addr, align 8
  br label %for.cond.2

for.end.13:                                       ; preds = %land.end.9
  %12 = load i8*, i8** %str.addr, align 8
  ret i8* %12
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @find_nth_place_team(i32* %standings, i32 %conf, i32 %div, i32 %place) #0 {
entry:
  %retval = alloca i32, align 4
  %standings.addr = alloca i32*, align 8
  %conf.addr = alloca i32, align 4
  %div.addr = alloca i32, align 4
  %place.addr = alloca i32, align 4
  %team_code = alloca i32, align 4
  %next_found_is = alloca i32, align 4
  store i32* %standings, i32** %standings.addr, align 8
  store i32 %conf, i32* %conf.addr, align 4
  store i32 %div, i32* %div.addr, align 4
  store i32 %place, i32* %place.addr, align 4
  store i32 1, i32* %next_found_is, align 4
  store i32 1, i32* %team_code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %team_code, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %team_code, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %standings.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %4 = load i32, i32* %arrayidx3, align 4
  %5 = load i32, i32* %conf.addr, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %conf.addr, align 4
  %cmp5 = icmp eq i32 %6, 999
  br i1 %cmp5, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %team_code, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i32*, i32** %standings.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 1
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i32, i32* %div.addr, align 4
  %cmp11 = icmp eq i32 %10, %11
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %12 = load i32, i32* %div.addr, align 4
  %cmp13 = icmp eq i32 %12, 999
  br i1 %cmp13, label %if.then, label %if.end.18

if.then:                                          ; preds = %lor.lhs.false.12, %land.lhs.true
  %13 = load i32, i32* %next_found_is, align 4
  %14 = load i32, i32* %place.addr, align 4
  %cmp14 = icmp eq i32 %13, %14
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %15 = load i32, i32* %team_code, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32*, i32** %standings.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  store i32 %17, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %next_found_is, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %next_found_is, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %lor.lhs.false.12, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %19 = load i32, i32* %team_code, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %team_code, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @display_info(%struct._IO_FILE* %output, i32 %team_code) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %team_code.addr = alloca i32, align 4
  %week = alloca i32, align 4
  %tmp_team = alloca i32, align 4
  %i = alloca i32, align 4
  %score = alloca i32, align 4
  %opp_score = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i32 %team_code, i32* %team_code.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %2 = load i32, i32* %team_code.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay)
  store i32 1, i32* %week, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.660, %entry
  %3 = load i32, i32* %week, align 4
  %cmp = icmp sle i32 %3, 21
  br i1 %cmp, label %for.body, label %for.end.662

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %week, align 4
  %5 = load i32, i32* @num_games, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.90

if.else:                                          ; preds = %for.body
  store i32 1, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.else
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %week, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx8, i32 0, i64 2
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* %team_code.addr, align 4
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32, i32* %week, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx13, i32 0, i64 %idxprom11
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 1
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load i32, i32* %team_code.addr, align 4
  %cmp16 = icmp ne i32 %13, %14
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %cmp17 = icmp sle i32 %15, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.4
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.4 ], [ %cmp17, %land.rhs ]
  br i1 %16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %i, align 4
  %cmp19 = icmp eq i32 %18, 15
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %for.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.89

if.else.22:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32, i32* %week, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i64 1
  %22 = load i32, i32* %arrayidx27, align 4
  %23 = load i32, i32* %team_code.addr, align 4
  %cmp28 = icmp eq i32 %22, %23
  br i1 %cmp28, label %if.then.29, label %if.else.50

if.then.29:                                       ; preds = %if.else.22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %26 = load i32, i32* %week, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx32, i32 0, i64 %idxprom30
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 2
  %27 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx36, i32 0, i64 1
  %arraydecay38 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx37, i32 0, i32 0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay38)
  %28 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load i32, i32* %week, align 4
  %idxprom41 = sext i32 %29 to i64
  %arrayidx42 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx42, i32 0, i64 %idxprom40
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx43, i32 0, i64 1
  %30 = load i32, i32* %arrayidx44, align 4
  store i32 %30, i32* %score, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %31 to i64
  %32 = load i32, i32* %week, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx47, i32 0, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 2
  %33 = load i32, i32* %arrayidx49, align 4
  store i32 %33, i32* %opp_score, align 4
  br label %if.end

if.else.50:                                       ; preds = %if.else.22
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %35 to i64
  %36 = load i32, i32* %week, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx53, i32 0, i64 %idxprom51
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx54, i32 0, i64 1
  %37 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %37 to i64
  %arrayidx57 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx57, i32 0, i64 1
  %arraydecay59 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx58, i32 0, i32 0
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay59)
  %38 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %38 to i64
  %39 = load i32, i32* %week, align 4
  %idxprom62 = sext i32 %39 to i64
  %arrayidx63 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx63, i32 0, i64 %idxprom61
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx64, i32 0, i64 2
  %40 = load i32, i32* %arrayidx65, align 4
  store i32 %40, i32* %score, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %41 to i64
  %42 = load i32, i32* %week, align 4
  %idxprom67 = sext i32 %42 to i64
  %arrayidx68 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx68, i32 0, i64 %idxprom66
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 1
  %43 = load i32, i32* %arrayidx70, align 4
  store i32 %43, i32* %opp_score, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.50, %if.then.29
  %44 = load i32, i32* %score, align 4
  %cmp71 = icmp eq i32 %44, -1
  br i1 %cmp71, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %45 = load i32, i32* %opp_score, align 4
  %cmp72 = icmp eq i32 %45, -1
  br i1 %cmp72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %lor.lhs.false, %if.end
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.88

if.else.75:                                       ; preds = %lor.lhs.false
  %47 = load i32, i32* %score, align 4
  %48 = load i32, i32* %opp_score, align 4
  %cmp76 = icmp eq i32 %47, %48
  br i1 %cmp76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else.75
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.86

if.else.79:                                       ; preds = %if.else.75
  %50 = load i32, i32* %score, align 4
  %51 = load i32, i32* %opp_score, align 4
  %cmp80 = icmp sgt i32 %50, %51
  br i1 %cmp80, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.else.79
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.85

if.else.83:                                       ; preds = %if.else.79
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %55 = load i32, i32* %score, align 4
  %56 = load i32, i32* %opp_score, align 4
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %55, i32 %56)
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.86, %if.then.73
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.20
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then
  %57 = load i32, i32* %week, align 4
  switch i32 %57, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.106
    i32 3, label %sw.bb.108
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.108
    i32 6, label %sw.bb.108
    i32 7, label %sw.bb.108
    i32 9, label %sw.bb.269
    i32 10, label %sw.bb.306
    i32 11, label %sw.bb.358
    i32 12, label %sw.bb.410
    i32 14, label %sw.bb.470
    i32 15, label %sw.bb.472
    i32 16, label %sw.bb.474
    i32 17, label %sw.bb.485
    i32 18, label %sw.bb.496
    i32 19, label %sw.bb.498
    i32 20, label %sw.bb.566
    i32 21, label %sw.bb.612
  ]

sw.bb:                                            ; preds = %if.end.90
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %59 = load i32, i32* %team_code.addr, align 4
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx92, i32 0, i64 0
  %60 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %60, 0
  %cond = select i1 %cmp94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)
  %61 = load i32, i32* %team_code.addr, align 4
  %idxprom95 = sext i32 %61 to i64
  %arrayidx96 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx96, i32 0, i64 1
  %62 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %62, 0
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %63 = load i32, i32* %team_code.addr, align 4
  %idxprom99 = sext i32 %63 to i64
  %arrayidx100 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx100, i32 0, i64 1
  %64 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp eq i32 %64, 1
  %cond103 = select i1 %cmp102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond104 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %cond.true ], [ %cond103, %cond.false ]
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* %cond, i8* %cond104)
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.90
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.90, %if.end.90, %if.end.90, %if.end.90, %if.end.90
  %66 = load i32, i32* %team_code.addr, align 4
  %idxprom109 = sext i32 %66 to i64
  %arrayidx110 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx110, i32 0, i64 0
  %67 = load i32, i32* %arrayidx111, align 4
  %68 = load i32, i32* %team_code.addr, align 4
  %idxprom112 = sext i32 %68 to i64
  %arrayidx113 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx113, i32 0, i64 1
  %69 = load i32, i32* %arrayidx114, align 4
  %70 = load i32, i32* %week, align 4
  %sub = sub nsw i32 %70, 2
  %call115 = call i32 @find_nth_place_team(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i32 0), i32 %67, i32 %69, i32 %sub)
  store i32 %call115, i32* %tmp_team, align 4
  %tobool = icmp ne i32 %call115, 0
  br i1 %tobool, label %if.then.116, label %if.end.268

if.then.116:                                      ; preds = %sw.bb.108
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %72 = load i32, i32* %tmp_team, align 4
  %idxprom117 = sext i32 %72 to i64
  %arrayidx118 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx118, i32 0, i64 1
  %arraydecay120 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx119, i32 0, i32 0
  %73 = load i32, i32* %tmp_team, align 4
  %call121 = call i32 @a_champ(i32 %73)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %if.then.116
  br label %cond.end.128

cond.false.124:                                   ; preds = %if.then.116
  %74 = load i32, i32* %tmp_team, align 4
  %call125 = call i32 @a_wild_card(i32 %74)
  %tobool126 = icmp ne i32 %call125, 0
  %cond127 = select i1 %tobool126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.124, %cond.true.123
  %cond129 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.123 ], [ %cond127, %cond.false.124 ]
  %75 = load i32, i32* %tmp_team, align 4
  %idxprom130 = sext i32 %75 to i64
  %arrayidx131 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom130
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx131, i32 0, i32 0
  %76 = load i32, i32* %wins, align 4
  %77 = load i32, i32* %tmp_team, align 4
  %idxprom132 = sext i32 %77 to i64
  %arrayidx133 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom132
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx133, i32 0, i32 1
  %78 = load i32, i32* %loses, align 4
  %79 = load i32, i32* %tmp_team, align 4
  %idxprom134 = sext i32 %79 to i64
  %arrayidx135 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom134
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx135, i32 0, i32 2
  %80 = load i32, i32* %ties, align 4
  %81 = load i32, i32* %tmp_team, align 4
  %idxprom136 = sext i32 %81 to i64
  %arrayidx137 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom136
  %wins138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 0
  %82 = load i32, i32* %wins138, align 4
  %83 = load i32, i32* %tmp_team, align 4
  %idxprom139 = sext i32 %83 to i64
  %arrayidx140 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom139
  %loses141 = getelementptr inbounds %struct.info, %struct.info* %arrayidx140, i32 0, i32 1
  %84 = load i32, i32* %loses141, align 4
  %add = add nsw i32 %82, %84
  %85 = load i32, i32* %tmp_team, align 4
  %idxprom142 = sext i32 %85 to i64
  %arrayidx143 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom142
  %ties144 = getelementptr inbounds %struct.info, %struct.info* %arrayidx143, i32 0, i32 2
  %86 = load i32, i32* %ties144, align 4
  %add145 = add nsw i32 %add, %86
  %cmp146 = icmp eq i32 %add145, 0
  br i1 %cmp146, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.end.128
  br label %cond.end.169

cond.false.148:                                   ; preds = %cond.end.128
  %87 = load i32, i32* %tmp_team, align 4
  %idxprom149 = sext i32 %87 to i64
  %arrayidx150 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom149
  %wins151 = getelementptr inbounds %struct.info, %struct.info* %arrayidx150, i32 0, i32 0
  %88 = load i32, i32* %wins151, align 4
  %conv = sitofp i32 %88 to double
  %89 = load i32, i32* %tmp_team, align 4
  %idxprom152 = sext i32 %89 to i64
  %arrayidx153 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom152
  %ties154 = getelementptr inbounds %struct.info, %struct.info* %arrayidx153, i32 0, i32 2
  %90 = load i32, i32* %ties154, align 4
  %conv155 = sitofp i32 %90 to double
  %mul = fmul double 5.000000e-01, %conv155
  %add156 = fadd double %conv, %mul
  %91 = load i32, i32* %tmp_team, align 4
  %idxprom157 = sext i32 %91 to i64
  %arrayidx158 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom157
  %wins159 = getelementptr inbounds %struct.info, %struct.info* %arrayidx158, i32 0, i32 0
  %92 = load i32, i32* %wins159, align 4
  %93 = load i32, i32* %tmp_team, align 4
  %idxprom160 = sext i32 %93 to i64
  %arrayidx161 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom160
  %loses162 = getelementptr inbounds %struct.info, %struct.info* %arrayidx161, i32 0, i32 1
  %94 = load i32, i32* %loses162, align 4
  %add163 = add nsw i32 %92, %94
  %95 = load i32, i32* %tmp_team, align 4
  %idxprom164 = sext i32 %95 to i64
  %arrayidx165 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom164
  %ties166 = getelementptr inbounds %struct.info, %struct.info* %arrayidx165, i32 0, i32 2
  %96 = load i32, i32* %ties166, align 4
  %add167 = add nsw i32 %add163, %96
  %conv168 = sitofp i32 %add167 to double
  %div = fdiv double %add156, %conv168
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.148, %cond.true.147
  %cond170 = phi double [ 0.000000e+00, %cond.true.147 ], [ %div, %cond.false.148 ]
  %cmp171 = fcmp oge double %cond170, 1.000000e+00
  %cond173 = select i1 %cmp171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %97 = load i32, i32* %tmp_team, align 4
  %idxprom174 = sext i32 %97 to i64
  %arrayidx175 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom174
  %wins176 = getelementptr inbounds %struct.info, %struct.info* %arrayidx175, i32 0, i32 0
  %98 = load i32, i32* %wins176, align 4
  %99 = load i32, i32* %tmp_team, align 4
  %idxprom177 = sext i32 %99 to i64
  %arrayidx178 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom177
  %loses179 = getelementptr inbounds %struct.info, %struct.info* %arrayidx178, i32 0, i32 1
  %100 = load i32, i32* %loses179, align 4
  %add180 = add nsw i32 %98, %100
  %101 = load i32, i32* %tmp_team, align 4
  %idxprom181 = sext i32 %101 to i64
  %arrayidx182 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom181
  %ties183 = getelementptr inbounds %struct.info, %struct.info* %arrayidx182, i32 0, i32 2
  %102 = load i32, i32* %ties183, align 4
  %add184 = add nsw i32 %add180, %102
  %cmp185 = icmp eq i32 %add184, 0
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.169
  br label %cond.end.212

cond.false.188:                                   ; preds = %cond.end.169
  %103 = load i32, i32* %tmp_team, align 4
  %idxprom189 = sext i32 %103 to i64
  %arrayidx190 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom189
  %wins191 = getelementptr inbounds %struct.info, %struct.info* %arrayidx190, i32 0, i32 0
  %104 = load i32, i32* %wins191, align 4
  %conv192 = sitofp i32 %104 to double
  %105 = load i32, i32* %tmp_team, align 4
  %idxprom193 = sext i32 %105 to i64
  %arrayidx194 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom193
  %ties195 = getelementptr inbounds %struct.info, %struct.info* %arrayidx194, i32 0, i32 2
  %106 = load i32, i32* %ties195, align 4
  %conv196 = sitofp i32 %106 to double
  %mul197 = fmul double 5.000000e-01, %conv196
  %add198 = fadd double %conv192, %mul197
  %107 = load i32, i32* %tmp_team, align 4
  %idxprom199 = sext i32 %107 to i64
  %arrayidx200 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom199
  %wins201 = getelementptr inbounds %struct.info, %struct.info* %arrayidx200, i32 0, i32 0
  %108 = load i32, i32* %wins201, align 4
  %109 = load i32, i32* %tmp_team, align 4
  %idxprom202 = sext i32 %109 to i64
  %arrayidx203 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom202
  %loses204 = getelementptr inbounds %struct.info, %struct.info* %arrayidx203, i32 0, i32 1
  %110 = load i32, i32* %loses204, align 4
  %add205 = add nsw i32 %108, %110
  %111 = load i32, i32* %tmp_team, align 4
  %idxprom206 = sext i32 %111 to i64
  %arrayidx207 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom206
  %ties208 = getelementptr inbounds %struct.info, %struct.info* %arrayidx207, i32 0, i32 2
  %112 = load i32, i32* %ties208, align 4
  %add209 = add nsw i32 %add205, %112
  %conv210 = sitofp i32 %add209 to double
  %div211 = fdiv double %add198, %conv210
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.188, %cond.true.187
  %cond213 = phi double [ 0.000000e+00, %cond.true.187 ], [ %div211, %cond.false.188 ]
  %cmp214 = fcmp oge double %cond213, 1.000000e+00
  br i1 %cmp214, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %cond.end.212
  br label %cond.end.261

cond.false.217:                                   ; preds = %cond.end.212
  %113 = load i32, i32* %tmp_team, align 4
  %idxprom218 = sext i32 %113 to i64
  %arrayidx219 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom218
  %wins220 = getelementptr inbounds %struct.info, %struct.info* %arrayidx219, i32 0, i32 0
  %114 = load i32, i32* %wins220, align 4
  %115 = load i32, i32* %tmp_team, align 4
  %idxprom221 = sext i32 %115 to i64
  %arrayidx222 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom221
  %loses223 = getelementptr inbounds %struct.info, %struct.info* %arrayidx222, i32 0, i32 1
  %116 = load i32, i32* %loses223, align 4
  %add224 = add nsw i32 %114, %116
  %117 = load i32, i32* %tmp_team, align 4
  %idxprom225 = sext i32 %117 to i64
  %arrayidx226 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom225
  %ties227 = getelementptr inbounds %struct.info, %struct.info* %arrayidx226, i32 0, i32 2
  %118 = load i32, i32* %ties227, align 4
  %add228 = add nsw i32 %add224, %118
  %cmp229 = icmp eq i32 %add228, 0
  br i1 %cmp229, label %cond.true.231, label %cond.false.232

cond.true.231:                                    ; preds = %cond.false.217
  br label %cond.end.256

cond.false.232:                                   ; preds = %cond.false.217
  %119 = load i32, i32* %tmp_team, align 4
  %idxprom233 = sext i32 %119 to i64
  %arrayidx234 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom233
  %wins235 = getelementptr inbounds %struct.info, %struct.info* %arrayidx234, i32 0, i32 0
  %120 = load i32, i32* %wins235, align 4
  %conv236 = sitofp i32 %120 to double
  %121 = load i32, i32* %tmp_team, align 4
  %idxprom237 = sext i32 %121 to i64
  %arrayidx238 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom237
  %ties239 = getelementptr inbounds %struct.info, %struct.info* %arrayidx238, i32 0, i32 2
  %122 = load i32, i32* %ties239, align 4
  %conv240 = sitofp i32 %122 to double
  %mul241 = fmul double 5.000000e-01, %conv240
  %add242 = fadd double %conv236, %mul241
  %123 = load i32, i32* %tmp_team, align 4
  %idxprom243 = sext i32 %123 to i64
  %arrayidx244 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom243
  %wins245 = getelementptr inbounds %struct.info, %struct.info* %arrayidx244, i32 0, i32 0
  %124 = load i32, i32* %wins245, align 4
  %125 = load i32, i32* %tmp_team, align 4
  %idxprom246 = sext i32 %125 to i64
  %arrayidx247 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom246
  %loses248 = getelementptr inbounds %struct.info, %struct.info* %arrayidx247, i32 0, i32 1
  %126 = load i32, i32* %loses248, align 4
  %add249 = add nsw i32 %124, %126
  %127 = load i32, i32* %tmp_team, align 4
  %idxprom250 = sext i32 %127 to i64
  %arrayidx251 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom250
  %ties252 = getelementptr inbounds %struct.info, %struct.info* %arrayidx251, i32 0, i32 2
  %128 = load i32, i32* %ties252, align 4
  %add253 = add nsw i32 %add249, %128
  %conv254 = sitofp i32 %add253 to double
  %div255 = fdiv double %add242, %conv254
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.232, %cond.true.231
  %cond257 = phi double [ 0.000000e+00, %cond.true.231 ], [ %div255, %cond.false.232 ]
  %mul258 = fmul double %cond257, 1.000000e+03
  %add259 = fadd double %mul258, 5.000000e-01
  %conv260 = fptosi double %add259 to i32
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.end.256, %cond.true.216
  %cond262 = phi i32 [ 0, %cond.true.216 ], [ %conv260, %cond.end.256 ]
  %129 = load i32, i32* %tmp_team, align 4
  %idxprom263 = sext i32 %129 to i64
  %arrayidx264 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom263
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx264, i32 0, i32 3
  %130 = load i32, i32* %points_for, align 4
  %131 = load i32, i32* %tmp_team, align 4
  %idxprom265 = sext i32 %131 to i64
  %arrayidx266 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom265
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx266, i32 0, i32 4
  %132 = load i32, i32* %points_against, align 4
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay120, i8* %cond129, i32 %76, i32 %78, i32 %80, i8* %cond173, i32 %cond262, i32 %130, i32 %132)
  br label %if.end.268

if.end.268:                                       ; preds = %cond.end.261, %sw.bb.108
  br label %sw.epilog

sw.bb.269:                                        ; preds = %if.end.90
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %134 = load i32, i32* %team_code.addr, align 4
  %idxprom270 = sext i32 %134 to i64
  %arrayidx271 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom270
  %wins272 = getelementptr inbounds %struct.info, %struct.info* %arrayidx271, i32 0, i32 0
  %135 = load i32, i32* %wins272, align 4
  %136 = load i32, i32* %team_code.addr, align 4
  %idxprom273 = sext i32 %136 to i64
  %arrayidx274 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom273
  %loses275 = getelementptr inbounds %struct.info, %struct.info* %arrayidx274, i32 0, i32 1
  %137 = load i32, i32* %loses275, align 4
  %138 = load i32, i32* %team_code.addr, align 4
  %idxprom276 = sext i32 %138 to i64
  %arrayidx277 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom276
  %ties278 = getelementptr inbounds %struct.info, %struct.info* %arrayidx277, i32 0, i32 2
  %139 = load i32, i32* %ties278, align 4
  %140 = load i32, i32* %team_code.addr, align 4
  %idxprom279 = sext i32 %140 to i64
  %arrayidx280 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom279
  %wins281 = getelementptr inbounds %struct.info, %struct.info* %arrayidx280, i32 0, i32 0
  %141 = load i32, i32* %wins281, align 4
  %cmp282 = icmp slt i32 %141, 10
  br i1 %cmp282, label %land.rhs.284, label %land.end.290

land.rhs.284:                                     ; preds = %sw.bb.269
  %142 = load i32, i32* %team_code.addr, align 4
  %idxprom285 = sext i32 %142 to i64
  %arrayidx286 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom285
  %loses287 = getelementptr inbounds %struct.info, %struct.info* %arrayidx286, i32 0, i32 1
  %143 = load i32, i32* %loses287, align 4
  %cmp288 = icmp slt i32 %143, 10
  br label %land.end.290

land.end.290:                                     ; preds = %land.rhs.284, %sw.bb.269
  %144 = phi i1 [ false, %sw.bb.269 ], [ %cmp288, %land.rhs.284 ]
  %cond291 = select i1 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %145 = load i32, i32* %team_code.addr, align 4
  %idxprom292 = sext i32 %145 to i64
  %arrayidx293 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx293, i32 0, i64 0
  %146 = load i32, i32* %arrayidx294, align 4
  %cmp295 = icmp eq i32 %146, 0
  br i1 %cmp295, label %cond.true.297, label %cond.false.299

cond.true.297:                                    ; preds = %land.end.290
  %147 = load i32, i32* %team_code.addr, align 4
  %call298 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 %147)
  br label %cond.end.302

cond.false.299:                                   ; preds = %land.end.290
  %148 = load i32, i32* %team_code.addr, align 4
  %call300 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 %148)
  %sub301 = sub nsw i32 %call300, 14
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.299, %cond.true.297
  %cond303 = phi i32 [ %call298, %cond.true.297 ], [ %sub301, %cond.false.299 ]
  %149 = load i32, i32* %team_code.addr, align 4
  %call304 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 %149)
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0), i32 %135, i32 %137, i32 %139, i8* %cond291, i32 %cond303, i32 %call304)
  br label %sw.epilog

sw.bb.306:                                        ; preds = %if.end.90
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %151 = load i32, i32* %team_code.addr, align 4
  %idxprom307 = sext i32 %151 to i64
  %arrayidx308 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom307
  %points_for309 = getelementptr inbounds %struct.info, %struct.info* %arrayidx308, i32 0, i32 3
  %152 = load i32, i32* %points_for309, align 4
  %153 = load i32, i32* %team_code.addr, align 4
  %idxprom310 = sext i32 %153 to i64
  %arrayidx311 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom310
  %wins312 = getelementptr inbounds %struct.info, %struct.info* %arrayidx311, i32 0, i32 0
  %154 = load i32, i32* %wins312, align 4
  %155 = load i32, i32* %team_code.addr, align 4
  %idxprom313 = sext i32 %155 to i64
  %arrayidx314 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom313
  %loses315 = getelementptr inbounds %struct.info, %struct.info* %arrayidx314, i32 0, i32 1
  %156 = load i32, i32* %loses315, align 4
  %add316 = add nsw i32 %154, %156
  %157 = load i32, i32* %team_code.addr, align 4
  %idxprom317 = sext i32 %157 to i64
  %arrayidx318 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom317
  %ties319 = getelementptr inbounds %struct.info, %struct.info* %arrayidx318, i32 0, i32 2
  %158 = load i32, i32* %ties319, align 4
  %add320 = add nsw i32 %add316, %158
  %cmp321 = icmp eq i32 %add320, 0
  br i1 %cmp321, label %cond.true.323, label %cond.false.324

cond.true.323:                                    ; preds = %sw.bb.306
  br label %cond.end.342

cond.false.324:                                   ; preds = %sw.bb.306
  %159 = load i32, i32* %team_code.addr, align 4
  %idxprom325 = sext i32 %159 to i64
  %arrayidx326 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom325
  %points_for327 = getelementptr inbounds %struct.info, %struct.info* %arrayidx326, i32 0, i32 3
  %160 = load i32, i32* %points_for327, align 4
  %conv328 = sitofp i32 %160 to double
  %161 = load i32, i32* %team_code.addr, align 4
  %idxprom329 = sext i32 %161 to i64
  %arrayidx330 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom329
  %wins331 = getelementptr inbounds %struct.info, %struct.info* %arrayidx330, i32 0, i32 0
  %162 = load i32, i32* %wins331, align 4
  %163 = load i32, i32* %team_code.addr, align 4
  %idxprom332 = sext i32 %163 to i64
  %arrayidx333 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom332
  %loses334 = getelementptr inbounds %struct.info, %struct.info* %arrayidx333, i32 0, i32 1
  %164 = load i32, i32* %loses334, align 4
  %add335 = add nsw i32 %162, %164
  %165 = load i32, i32* %team_code.addr, align 4
  %idxprom336 = sext i32 %165 to i64
  %arrayidx337 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom336
  %ties338 = getelementptr inbounds %struct.info, %struct.info* %arrayidx337, i32 0, i32 2
  %166 = load i32, i32* %ties338, align 4
  %add339 = add nsw i32 %add335, %166
  %conv340 = sitofp i32 %add339 to double
  %div341 = fdiv double %conv328, %conv340
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.324, %cond.true.323
  %cond343 = phi double [ 0.000000e+00, %cond.true.323 ], [ %div341, %cond.false.324 ]
  %167 = load i32, i32* %team_code.addr, align 4
  %idxprom344 = sext i32 %167 to i64
  %arrayidx345 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom344
  %arrayidx346 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx345, i32 0, i64 0
  %168 = load i32, i32* %arrayidx346, align 4
  %cmp347 = icmp eq i32 %168, 0
  br i1 %cmp347, label %cond.true.349, label %cond.false.351

cond.true.349:                                    ; preds = %cond.end.342
  %169 = load i32, i32* %team_code.addr, align 4
  %call350 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks, i32 0, i32 0), i32 %169)
  br label %cond.end.354

cond.false.351:                                   ; preds = %cond.end.342
  %170 = load i32, i32* %team_code.addr, align 4
  %call352 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks, i32 0, i32 0), i32 %170)
  %sub353 = sub nsw i32 %call352, 14
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.351, %cond.true.349
  %cond355 = phi i32 [ %call350, %cond.true.349 ], [ %sub353, %cond.false.351 ]
  %171 = load i32, i32* %team_code.addr, align 4
  %call356 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i32 0), i32 %171)
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0), i32 %152, double %cond343, i32 %cond355, i32 %call356)
  br label %sw.epilog

sw.bb.358:                                        ; preds = %if.end.90
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %173 = load i32, i32* %team_code.addr, align 4
  %idxprom359 = sext i32 %173 to i64
  %arrayidx360 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom359
  %points_against361 = getelementptr inbounds %struct.info, %struct.info* %arrayidx360, i32 0, i32 4
  %174 = load i32, i32* %points_against361, align 4
  %175 = load i32, i32* %team_code.addr, align 4
  %idxprom362 = sext i32 %175 to i64
  %arrayidx363 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom362
  %wins364 = getelementptr inbounds %struct.info, %struct.info* %arrayidx363, i32 0, i32 0
  %176 = load i32, i32* %wins364, align 4
  %177 = load i32, i32* %team_code.addr, align 4
  %idxprom365 = sext i32 %177 to i64
  %arrayidx366 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom365
  %loses367 = getelementptr inbounds %struct.info, %struct.info* %arrayidx366, i32 0, i32 1
  %178 = load i32, i32* %loses367, align 4
  %add368 = add nsw i32 %176, %178
  %179 = load i32, i32* %team_code.addr, align 4
  %idxprom369 = sext i32 %179 to i64
  %arrayidx370 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom369
  %ties371 = getelementptr inbounds %struct.info, %struct.info* %arrayidx370, i32 0, i32 2
  %180 = load i32, i32* %ties371, align 4
  %add372 = add nsw i32 %add368, %180
  %cmp373 = icmp eq i32 %add372, 0
  br i1 %cmp373, label %cond.true.375, label %cond.false.376

cond.true.375:                                    ; preds = %sw.bb.358
  br label %cond.end.394

cond.false.376:                                   ; preds = %sw.bb.358
  %181 = load i32, i32* %team_code.addr, align 4
  %idxprom377 = sext i32 %181 to i64
  %arrayidx378 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom377
  %points_against379 = getelementptr inbounds %struct.info, %struct.info* %arrayidx378, i32 0, i32 4
  %182 = load i32, i32* %points_against379, align 4
  %conv380 = sitofp i32 %182 to double
  %183 = load i32, i32* %team_code.addr, align 4
  %idxprom381 = sext i32 %183 to i64
  %arrayidx382 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom381
  %wins383 = getelementptr inbounds %struct.info, %struct.info* %arrayidx382, i32 0, i32 0
  %184 = load i32, i32* %wins383, align 4
  %185 = load i32, i32* %team_code.addr, align 4
  %idxprom384 = sext i32 %185 to i64
  %arrayidx385 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom384
  %loses386 = getelementptr inbounds %struct.info, %struct.info* %arrayidx385, i32 0, i32 1
  %186 = load i32, i32* %loses386, align 4
  %add387 = add nsw i32 %184, %186
  %187 = load i32, i32* %team_code.addr, align 4
  %idxprom388 = sext i32 %187 to i64
  %arrayidx389 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom388
  %ties390 = getelementptr inbounds %struct.info, %struct.info* %arrayidx389, i32 0, i32 2
  %188 = load i32, i32* %ties390, align 4
  %add391 = add nsw i32 %add387, %188
  %conv392 = sitofp i32 %add391 to double
  %div393 = fdiv double %conv380, %conv392
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.376, %cond.true.375
  %cond395 = phi double [ 0.000000e+00, %cond.true.375 ], [ %div393, %cond.false.376 ]
  %189 = load i32, i32* %team_code.addr, align 4
  %idxprom396 = sext i32 %189 to i64
  %arrayidx397 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom396
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx397, i32 0, i64 0
  %190 = load i32, i32* %arrayidx398, align 4
  %cmp399 = icmp eq i32 %190, 0
  br i1 %cmp399, label %cond.true.401, label %cond.false.403

cond.true.401:                                    ; preds = %cond.end.394
  %191 = load i32, i32* %team_code.addr, align 4
  %call402 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks, i32 0, i32 0), i32 %191)
  br label %cond.end.406

cond.false.403:                                   ; preds = %cond.end.394
  %192 = load i32, i32* %team_code.addr, align 4
  %call404 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks, i32 0, i32 0), i32 %192)
  %sub405 = sub nsw i32 %call404, 14
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.403, %cond.true.401
  %cond407 = phi i32 [ %call402, %cond.true.401 ], [ %sub405, %cond.false.403 ]
  %193 = load i32, i32* %team_code.addr, align 4
  %call408 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i32 0), i32 %193)
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i32 %174, double %cond395, i32 %cond407, i32 %call408)
  br label %sw.epilog

sw.bb.410:                                        ; preds = %if.end.90
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %195 = load i32, i32* %team_code.addr, align 4
  %idxprom411 = sext i32 %195 to i64
  %arrayidx412 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom411
  %points_for413 = getelementptr inbounds %struct.info, %struct.info* %arrayidx412, i32 0, i32 3
  %196 = load i32, i32* %points_for413, align 4
  %197 = load i32, i32* %team_code.addr, align 4
  %idxprom414 = sext i32 %197 to i64
  %arrayidx415 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom414
  %points_against416 = getelementptr inbounds %struct.info, %struct.info* %arrayidx415, i32 0, i32 4
  %198 = load i32, i32* %points_against416, align 4
  %sub417 = sub nsw i32 %196, %198
  %199 = load i32, i32* %team_code.addr, align 4
  %idxprom418 = sext i32 %199 to i64
  %arrayidx419 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom418
  %wins420 = getelementptr inbounds %struct.info, %struct.info* %arrayidx419, i32 0, i32 0
  %200 = load i32, i32* %wins420, align 4
  %201 = load i32, i32* %team_code.addr, align 4
  %idxprom421 = sext i32 %201 to i64
  %arrayidx422 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom421
  %loses423 = getelementptr inbounds %struct.info, %struct.info* %arrayidx422, i32 0, i32 1
  %202 = load i32, i32* %loses423, align 4
  %add424 = add nsw i32 %200, %202
  %203 = load i32, i32* %team_code.addr, align 4
  %idxprom425 = sext i32 %203 to i64
  %arrayidx426 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom425
  %ties427 = getelementptr inbounds %struct.info, %struct.info* %arrayidx426, i32 0, i32 2
  %204 = load i32, i32* %ties427, align 4
  %add428 = add nsw i32 %add424, %204
  %cmp429 = icmp eq i32 %add428, 0
  br i1 %cmp429, label %cond.true.431, label %cond.false.432

cond.true.431:                                    ; preds = %sw.bb.410
  br label %cond.end.454

cond.false.432:                                   ; preds = %sw.bb.410
  %205 = load i32, i32* %team_code.addr, align 4
  %idxprom433 = sext i32 %205 to i64
  %arrayidx434 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom433
  %points_for435 = getelementptr inbounds %struct.info, %struct.info* %arrayidx434, i32 0, i32 3
  %206 = load i32, i32* %points_for435, align 4
  %207 = load i32, i32* %team_code.addr, align 4
  %idxprom436 = sext i32 %207 to i64
  %arrayidx437 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom436
  %points_against438 = getelementptr inbounds %struct.info, %struct.info* %arrayidx437, i32 0, i32 4
  %208 = load i32, i32* %points_against438, align 4
  %sub439 = sub nsw i32 %206, %208
  %conv440 = sitofp i32 %sub439 to double
  %209 = load i32, i32* %team_code.addr, align 4
  %idxprom441 = sext i32 %209 to i64
  %arrayidx442 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom441
  %wins443 = getelementptr inbounds %struct.info, %struct.info* %arrayidx442, i32 0, i32 0
  %210 = load i32, i32* %wins443, align 4
  %211 = load i32, i32* %team_code.addr, align 4
  %idxprom444 = sext i32 %211 to i64
  %arrayidx445 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom444
  %loses446 = getelementptr inbounds %struct.info, %struct.info* %arrayidx445, i32 0, i32 1
  %212 = load i32, i32* %loses446, align 4
  %add447 = add nsw i32 %210, %212
  %213 = load i32, i32* %team_code.addr, align 4
  %idxprom448 = sext i32 %213 to i64
  %arrayidx449 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom448
  %ties450 = getelementptr inbounds %struct.info, %struct.info* %arrayidx449, i32 0, i32 2
  %214 = load i32, i32* %ties450, align 4
  %add451 = add nsw i32 %add447, %214
  %conv452 = sitofp i32 %add451 to double
  %div453 = fdiv double %conv440, %conv452
  br label %cond.end.454

cond.end.454:                                     ; preds = %cond.false.432, %cond.true.431
  %cond455 = phi double [ 0.000000e+00, %cond.true.431 ], [ %div453, %cond.false.432 ]
  %215 = load i32, i32* %team_code.addr, align 4
  %idxprom456 = sext i32 %215 to i64
  %arrayidx457 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom456
  %arrayidx458 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx457, i32 0, i64 0
  %216 = load i32, i32* %arrayidx458, align 4
  %cmp459 = icmp eq i32 %216, 0
  br i1 %cmp459, label %cond.true.461, label %cond.false.463

cond.true.461:                                    ; preds = %cond.end.454
  %217 = load i32, i32* %team_code.addr, align 4
  %call462 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks, i32 0, i32 0), i32 %217)
  br label %cond.end.466

cond.false.463:                                   ; preds = %cond.end.454
  %218 = load i32, i32* %team_code.addr, align 4
  %call464 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks, i32 0, i32 0), i32 %218)
  %sub465 = sub nsw i32 %call464, 14
  br label %cond.end.466

cond.end.466:                                     ; preds = %cond.false.463, %cond.true.461
  %cond467 = phi i32 [ %call462, %cond.true.461 ], [ %sub465, %cond.false.463 ]
  %219 = load i32, i32* %team_code.addr, align 4
  %call468 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i32 0), i32 %219)
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), i32 %sub417, double %cond455, i32 %cond467, i32 %call468)
  br label %sw.epilog

sw.bb.470:                                        ; preds = %if.end.90
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call471 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

sw.bb.472:                                        ; preds = %if.end.90
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call473 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog

sw.bb.474:                                        ; preds = %if.end.90
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %223 = load i32, i32* %team_code.addr, align 4
  %idxprom475 = sext i32 %223 to i64
  %arrayidx476 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom475
  %wins477 = getelementptr inbounds %struct.info, %struct.info* %arrayidx476, i32 0, i32 0
  %224 = load i32, i32* %wins477, align 4
  %225 = load i32, i32* %team_code.addr, align 4
  %idxprom478 = sext i32 %225 to i64
  %arrayidx479 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom478
  %loses480 = getelementptr inbounds %struct.info, %struct.info* %arrayidx479, i32 0, i32 1
  %226 = load i32, i32* %loses480, align 4
  %227 = load i32, i32* %team_code.addr, align 4
  %idxprom481 = sext i32 %227 to i64
  %arrayidx482 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom481
  %ties483 = getelementptr inbounds %struct.info, %struct.info* %arrayidx482, i32 0, i32 2
  %228 = load i32, i32* %ties483, align 4
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i32 0, i32 0), i32 %224, i32 %226, i32 %228)
  br label %sw.epilog

sw.bb.485:                                        ; preds = %if.end.90
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %230 = load i32, i32* %team_code.addr, align 4
  %idxprom486 = sext i32 %230 to i64
  %arrayidx487 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom486
  %wins488 = getelementptr inbounds %struct.info, %struct.info* %arrayidx487, i32 0, i32 0
  %231 = load i32, i32* %wins488, align 4
  %232 = load i32, i32* %team_code.addr, align 4
  %idxprom489 = sext i32 %232 to i64
  %arrayidx490 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom489
  %loses491 = getelementptr inbounds %struct.info, %struct.info* %arrayidx490, i32 0, i32 1
  %233 = load i32, i32* %loses491, align 4
  %234 = load i32, i32* %team_code.addr, align 4
  %idxprom492 = sext i32 %234 to i64
  %arrayidx493 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom492
  %ties494 = getelementptr inbounds %struct.info, %struct.info* %arrayidx493, i32 0, i32 2
  %235 = load i32, i32* %ties494, align 4
  %call495 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i32 0, i32 0), i32 %231, i32 %233, i32 %235)
  br label %sw.epilog

sw.bb.496:                                        ; preds = %if.end.90
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

sw.bb.498:                                        ; preds = %if.end.90
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %238 = load i32, i32* %team_code.addr, align 4
  %idxprom499 = sext i32 %238 to i64
  %arrayidx500 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom499
  %arrayidx501 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx500, i32 0, i64 0
  %239 = load i32, i32* %arrayidx501, align 4
  %cmp502 = icmp eq i32 %239, 0
  %cond504 = select i1 %cmp502, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)
  %240 = load i32, i32* %team_code.addr, align 4
  %idxprom505 = sext i32 %240 to i64
  %arrayidx506 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom505
  %arrayidx507 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx506, i32 0, i64 1
  %241 = load i32, i32* %arrayidx507, align 4
  %cmp508 = icmp eq i32 %241, 0
  br i1 %cmp508, label %cond.true.510, label %cond.false.511

cond.true.510:                                    ; preds = %sw.bb.498
  br label %cond.end.518

cond.false.511:                                   ; preds = %sw.bb.498
  %242 = load i32, i32* %team_code.addr, align 4
  %idxprom512 = sext i32 %242 to i64
  %arrayidx513 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom512
  %arrayidx514 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx513, i32 0, i64 1
  %243 = load i32, i32* %arrayidx514, align 4
  %cmp515 = icmp eq i32 %243, 1
  %cond517 = select i1 %cmp515, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.511, %cond.true.510
  %cond519 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %cond.true.510 ], [ %cond517, %cond.false.511 ]
  %244 = load i32, i32* %team_code.addr, align 4
  %idxprom520 = sext i32 %244 to i64
  %arrayidx521 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom520
  %points_for522 = getelementptr inbounds %struct.info, %struct.info* %arrayidx521, i32 0, i32 3
  %245 = load i32, i32* %points_for522, align 4
  %246 = load i32, i32* %team_code.addr, align 4
  %idxprom523 = sext i32 %246 to i64
  %arrayidx524 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom523
  %points_against525 = getelementptr inbounds %struct.info, %struct.info* %arrayidx524, i32 0, i32 4
  %247 = load i32, i32* %points_against525, align 4
  %sub526 = sub nsw i32 %245, %247
  %248 = load i32, i32* %team_code.addr, align 4
  %idxprom527 = sext i32 %248 to i64
  %arrayidx528 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom527
  %wins529 = getelementptr inbounds %struct.info, %struct.info* %arrayidx528, i32 0, i32 0
  %249 = load i32, i32* %wins529, align 4
  %250 = load i32, i32* %team_code.addr, align 4
  %idxprom530 = sext i32 %250 to i64
  %arrayidx531 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom530
  %loses532 = getelementptr inbounds %struct.info, %struct.info* %arrayidx531, i32 0, i32 1
  %251 = load i32, i32* %loses532, align 4
  %add533 = add nsw i32 %249, %251
  %252 = load i32, i32* %team_code.addr, align 4
  %idxprom534 = sext i32 %252 to i64
  %arrayidx535 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom534
  %ties536 = getelementptr inbounds %struct.info, %struct.info* %arrayidx535, i32 0, i32 2
  %253 = load i32, i32* %ties536, align 4
  %add537 = add nsw i32 %add533, %253
  %cmp538 = icmp eq i32 %add537, 0
  br i1 %cmp538, label %cond.true.540, label %cond.false.541

cond.true.540:                                    ; preds = %cond.end.518
  br label %cond.end.563

cond.false.541:                                   ; preds = %cond.end.518
  %254 = load i32, i32* %team_code.addr, align 4
  %idxprom542 = sext i32 %254 to i64
  %arrayidx543 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom542
  %points_for544 = getelementptr inbounds %struct.info, %struct.info* %arrayidx543, i32 0, i32 3
  %255 = load i32, i32* %points_for544, align 4
  %256 = load i32, i32* %team_code.addr, align 4
  %idxprom545 = sext i32 %256 to i64
  %arrayidx546 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom545
  %points_against547 = getelementptr inbounds %struct.info, %struct.info* %arrayidx546, i32 0, i32 4
  %257 = load i32, i32* %points_against547, align 4
  %sub548 = sub nsw i32 %255, %257
  %conv549 = sitofp i32 %sub548 to double
  %258 = load i32, i32* %team_code.addr, align 4
  %idxprom550 = sext i32 %258 to i64
  %arrayidx551 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom550
  %wins552 = getelementptr inbounds %struct.info, %struct.info* %arrayidx551, i32 0, i32 0
  %259 = load i32, i32* %wins552, align 4
  %260 = load i32, i32* %team_code.addr, align 4
  %idxprom553 = sext i32 %260 to i64
  %arrayidx554 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom553
  %loses555 = getelementptr inbounds %struct.info, %struct.info* %arrayidx554, i32 0, i32 1
  %261 = load i32, i32* %loses555, align 4
  %add556 = add nsw i32 %259, %261
  %262 = load i32, i32* %team_code.addr, align 4
  %idxprom557 = sext i32 %262 to i64
  %arrayidx558 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom557
  %ties559 = getelementptr inbounds %struct.info, %struct.info* %arrayidx558, i32 0, i32 2
  %263 = load i32, i32* %ties559, align 4
  %add560 = add nsw i32 %add556, %263
  %conv561 = sitofp i32 %add560 to double
  %div562 = fdiv double %conv549, %conv561
  br label %cond.end.563

cond.end.563:                                     ; preds = %cond.false.541, %cond.true.540
  %cond564 = phi double [ 0.000000e+00, %cond.true.540 ], [ %div562, %cond.false.541 ]
  %call565 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i32 0, i32 0), i8* %cond504, i8* %cond519, i32 %sub526, double %cond564)
  br label %sw.epilog

sw.bb.566:                                        ; preds = %if.end.90
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %265 = load i32, i32* %team_code.addr, align 4
  %idxprom567 = sext i32 %265 to i64
  %arrayidx568 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom567
  %arrayidx569 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx568, i32 0, i64 0
  %266 = load i32, i32* %arrayidx569, align 4
  %cmp570 = icmp eq i32 %266, 0
  %cond572 = select i1 %cmp570, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)
  %267 = load i32, i32* %team_code.addr, align 4
  %idxprom573 = sext i32 %267 to i64
  %arrayidx574 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom573
  %wins575 = getelementptr inbounds %struct.info, %struct.info* %arrayidx574, i32 0, i32 0
  %268 = load i32, i32* %wins575, align 4
  %269 = load i32, i32* %team_code.addr, align 4
  %idxprom576 = sext i32 %269 to i64
  %arrayidx577 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom576
  %loses578 = getelementptr inbounds %struct.info, %struct.info* %arrayidx577, i32 0, i32 1
  %270 = load i32, i32* %loses578, align 4
  %add579 = add nsw i32 %268, %270
  %271 = load i32, i32* %team_code.addr, align 4
  %idxprom580 = sext i32 %271 to i64
  %arrayidx581 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom580
  %ties582 = getelementptr inbounds %struct.info, %struct.info* %arrayidx581, i32 0, i32 2
  %272 = load i32, i32* %ties582, align 4
  %add583 = add nsw i32 %add579, %272
  %cmp584 = icmp eq i32 %add583, 0
  br i1 %cmp584, label %cond.true.586, label %cond.false.587

cond.true.586:                                    ; preds = %sw.bb.566
  br label %cond.end.609

cond.false.587:                                   ; preds = %sw.bb.566
  %273 = load i32, i32* %team_code.addr, align 4
  %idxprom588 = sext i32 %273 to i64
  %arrayidx589 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom588
  %points_for590 = getelementptr inbounds %struct.info, %struct.info* %arrayidx589, i32 0, i32 3
  %274 = load i32, i32* %points_for590, align 4
  %275 = load i32, i32* %team_code.addr, align 4
  %idxprom591 = sext i32 %275 to i64
  %arrayidx592 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom591
  %points_against593 = getelementptr inbounds %struct.info, %struct.info* %arrayidx592, i32 0, i32 4
  %276 = load i32, i32* %points_against593, align 4
  %sub594 = sub nsw i32 %274, %276
  %conv595 = sitofp i32 %sub594 to double
  %277 = load i32, i32* %team_code.addr, align 4
  %idxprom596 = sext i32 %277 to i64
  %arrayidx597 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom596
  %wins598 = getelementptr inbounds %struct.info, %struct.info* %arrayidx597, i32 0, i32 0
  %278 = load i32, i32* %wins598, align 4
  %279 = load i32, i32* %team_code.addr, align 4
  %idxprom599 = sext i32 %279 to i64
  %arrayidx600 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom599
  %loses601 = getelementptr inbounds %struct.info, %struct.info* %arrayidx600, i32 0, i32 1
  %280 = load i32, i32* %loses601, align 4
  %add602 = add nsw i32 %278, %280
  %281 = load i32, i32* %team_code.addr, align 4
  %idxprom603 = sext i32 %281 to i64
  %arrayidx604 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom603
  %ties605 = getelementptr inbounds %struct.info, %struct.info* %arrayidx604, i32 0, i32 2
  %282 = load i32, i32* %ties605, align 4
  %add606 = add nsw i32 %add602, %282
  %conv607 = sitofp i32 %add606 to double
  %div608 = fdiv double %conv595, %conv607
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.587, %cond.true.586
  %cond610 = phi double [ 0.000000e+00, %cond.true.586 ], [ %div608, %cond.false.587 ]
  %call611 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i8* %cond572, double %cond610)
  br label %sw.epilog

sw.bb.612:                                        ; preds = %if.end.90
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %284 = load i32, i32* %team_code.addr, align 4
  %idxprom613 = sext i32 %284 to i64
  %arrayidx614 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom613
  %points_for615 = getelementptr inbounds %struct.info, %struct.info* %arrayidx614, i32 0, i32 3
  %285 = load i32, i32* %points_for615, align 4
  %286 = load i32, i32* %team_code.addr, align 4
  %idxprom616 = sext i32 %286 to i64
  %arrayidx617 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom616
  %points_against618 = getelementptr inbounds %struct.info, %struct.info* %arrayidx617, i32 0, i32 4
  %287 = load i32, i32* %points_against618, align 4
  %sub619 = sub nsw i32 %285, %287
  %288 = load i32, i32* %team_code.addr, align 4
  %idxprom620 = sext i32 %288 to i64
  %arrayidx621 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom620
  %wins622 = getelementptr inbounds %struct.info, %struct.info* %arrayidx621, i32 0, i32 0
  %289 = load i32, i32* %wins622, align 4
  %290 = load i32, i32* %team_code.addr, align 4
  %idxprom623 = sext i32 %290 to i64
  %arrayidx624 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom623
  %loses625 = getelementptr inbounds %struct.info, %struct.info* %arrayidx624, i32 0, i32 1
  %291 = load i32, i32* %loses625, align 4
  %add626 = add nsw i32 %289, %291
  %292 = load i32, i32* %team_code.addr, align 4
  %idxprom627 = sext i32 %292 to i64
  %arrayidx628 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom627
  %ties629 = getelementptr inbounds %struct.info, %struct.info* %arrayidx628, i32 0, i32 2
  %293 = load i32, i32* %ties629, align 4
  %add630 = add nsw i32 %add626, %293
  %cmp631 = icmp eq i32 %add630, 0
  br i1 %cmp631, label %cond.true.633, label %cond.false.634

cond.true.633:                                    ; preds = %sw.bb.612
  br label %cond.end.656

cond.false.634:                                   ; preds = %sw.bb.612
  %294 = load i32, i32* %team_code.addr, align 4
  %idxprom635 = sext i32 %294 to i64
  %arrayidx636 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom635
  %points_for637 = getelementptr inbounds %struct.info, %struct.info* %arrayidx636, i32 0, i32 3
  %295 = load i32, i32* %points_for637, align 4
  %296 = load i32, i32* %team_code.addr, align 4
  %idxprom638 = sext i32 %296 to i64
  %arrayidx639 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom638
  %points_against640 = getelementptr inbounds %struct.info, %struct.info* %arrayidx639, i32 0, i32 4
  %297 = load i32, i32* %points_against640, align 4
  %sub641 = sub nsw i32 %295, %297
  %conv642 = sitofp i32 %sub641 to double
  %298 = load i32, i32* %team_code.addr, align 4
  %idxprom643 = sext i32 %298 to i64
  %arrayidx644 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom643
  %wins645 = getelementptr inbounds %struct.info, %struct.info* %arrayidx644, i32 0, i32 0
  %299 = load i32, i32* %wins645, align 4
  %300 = load i32, i32* %team_code.addr, align 4
  %idxprom646 = sext i32 %300 to i64
  %arrayidx647 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom646
  %loses648 = getelementptr inbounds %struct.info, %struct.info* %arrayidx647, i32 0, i32 1
  %301 = load i32, i32* %loses648, align 4
  %add649 = add nsw i32 %299, %301
  %302 = load i32, i32* %team_code.addr, align 4
  %idxprom650 = sext i32 %302 to i64
  %arrayidx651 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom650
  %ties652 = getelementptr inbounds %struct.info, %struct.info* %arrayidx651, i32 0, i32 2
  %303 = load i32, i32* %ties652, align 4
  %add653 = add nsw i32 %add649, %303
  %conv654 = sitofp i32 %add653 to double
  %div655 = fdiv double %conv642, %conv654
  br label %cond.end.656

cond.end.656:                                     ; preds = %cond.false.634, %cond.true.633
  %cond657 = phi double [ 0.000000e+00, %cond.true.633 ], [ %div655, %cond.false.634 ]
  %call658 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0), i32 %sub619, double %cond657)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.90
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.656, %cond.end.609, %cond.end.563, %sw.bb.496, %sw.bb.485, %sw.bb.474, %sw.bb.472, %sw.bb.470, %cond.end.466, %cond.end.406, %cond.end.354, %cond.end.302, %if.end.268, %sw.bb.106, %cond.end
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call659 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %for.inc.660

for.inc.660:                                      ; preds = %sw.epilog
  %305 = load i32, i32* %week, align 4
  %inc661 = add nsw i32 %305, 1
  store i32 %inc661, i32* %week, align 4
  br label %for.cond

for.end.662:                                      ; preds = %for.cond
  ret void
}

declare i32 @a_champ(i32) #1

declare i32 @a_wild_card(i32) #1

; Function Attrs: nounwind uwtable
define i32 @is_any(i32* %teams, i32 %num, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %code.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @display_multi_tiebreaker(%struct._IO_FILE* %output, i32* %teams, i32 %num) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %same_conf = alloca i32, align 4
  %same_div = alloca i32, align 4
  %tmp_team = alloca i32, align 4
  %tmp_team1 = alloca i32, align 4
  %wins59 = alloca i32, align 4
  %loses60 = alloca i32, align 4
  %ties61 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 1, i32* %same_div, align 4
  store i32 1, i32* %same_conf, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.155

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @common_teams, i32 0, i64 1), align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %teams.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [29 x i32], [29 x i32]* @common_teams, i32 0, i64 %idxprom3
  store i32 %7, i32* %arrayidx4, align 4
  %9 = load i32, i32* %same_conf, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %teams.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %teams.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 0
  %16 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %13, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %17 = phi i1 [ false, %for.body ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, i32* %same_conf, align 4
  %18 = load i32, i32* %same_div, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %land.rhs.16, label %land.end.27

land.rhs.16:                                      ; preds = %land.end
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32*, i32** %teams.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  %21 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 1
  %22 = load i32, i32* %arrayidx21, align 4
  %23 = load i32*, i32** %teams.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx24, i32 0, i64 1
  %25 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %22, %25
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.16, %land.end
  %26 = phi i1 [ false, %land.end ], [ %cmp26, %land.rhs.16 ]
  %land.ext28 = zext i1 %26 to i32
  store i32 %land.ext28, i32* %same_div, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end.27
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %same_conf, align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i32 0, i32 0))
  br label %for.end.155

if.end.31:                                        ; preds = %for.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %30)
  %31 = load i32, i32* %same_div, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  br label %for.end.155

if.end.34:                                        ; preds = %if.end.31
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0))
  store i32 1, i32* %tmp_team1, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.153, %if.end.34
  %38 = load i32, i32* %tmp_team1, align 4
  %cmp42 = icmp sle i32 %38, 28
  br i1 %cmp42, label %for.body.43, label %for.end.155

for.body.43:                                      ; preds = %for.cond.41
  %39 = load i32, i32* %tmp_team1, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom44
  %40 = load i32, i32* %arrayidx45, align 4
  store i32 %40, i32* %tmp_team, align 4
  %41 = load i32*, i32** %teams.addr, align 8
  %42 = load i32, i32* %num.addr, align 4
  %43 = load i32, i32* %tmp_team, align 4
  %call46 = call i32 @is_any(i32* %41, i32 %42, i32 %43)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.152

if.then.48:                                       ; preds = %for.body.43
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %45 = load i32, i32* %tmp_team, align 4
  %idxprom49 = sext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx50, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx51, i32 0, i32 0
  %46 = load i32, i32* %tmp_team, align 4
  %idxprom52 = sext i32 %46 to i64
  %arrayidx53 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom52
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx53, i32 0, i32 0
  %47 = load i32, i32* %wins, align 4
  %48 = load i32, i32* %tmp_team, align 4
  %idxprom54 = sext i32 %48 to i64
  %arrayidx55 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom54
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx55, i32 0, i32 1
  %49 = load i32, i32* %loses, align 4
  %50 = load i32, i32* %tmp_team, align 4
  %idxprom56 = sext i32 %50 to i64
  %arrayidx57 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom56
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx57, i32 0, i32 2
  %51 = load i32, i32* %ties, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay, i32 %47, i32 %49, i32 %51)
  store i32 0, i32* %ties61, align 4
  store i32 0, i32* %loses60, align 4
  store i32 0, i32* %wins59, align 4
  store i32 0, i32* %tmp, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.94, %if.then.48
  %52 = load i32, i32* %tmp, align 4
  %53 = load i32, i32* %num.addr, align 4
  %cmp63 = icmp slt i32 %52, %53
  br i1 %cmp63, label %for.body.64, label %for.end.96

for.body.64:                                      ; preds = %for.cond.62
  %54 = load i32, i32* %tmp, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load i32*, i32** %teams.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %55, i64 %idxprom65
  %56 = load i32, i32* %arrayidx66, align 4
  %57 = load i32, i32* %tmp_team, align 4
  %cmp67 = icmp ne i32 %56, %57
  br i1 %cmp67, label %if.then.68, label %if.end.93

if.then.68:                                       ; preds = %for.body.64
  %58 = load i32, i32* %tmp, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load i32*, i32** %teams.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %59, i64 %idxprom69
  %60 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %60 to i64
  %61 = load i32, i32* %tmp_team, align 4
  %idxprom72 = sext i32 %61 to i64
  %arrayidx73 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx73, i32 0, i64 %idxprom71
  %wins75 = getelementptr inbounds %struct.info, %struct.info* %arrayidx74, i32 0, i32 0
  %62 = load i32, i32* %wins75, align 4
  %63 = load i32, i32* %wins59, align 4
  %add76 = add nsw i32 %63, %62
  store i32 %add76, i32* %wins59, align 4
  %64 = load i32, i32* %tmp, align 4
  %idxprom77 = sext i32 %64 to i64
  %65 = load i32*, i32** %teams.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %65, i64 %idxprom77
  %66 = load i32, i32* %arrayidx78, align 4
  %idxprom79 = sext i32 %66 to i64
  %67 = load i32, i32* %tmp_team, align 4
  %idxprom80 = sext i32 %67 to i64
  %arrayidx81 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx81, i32 0, i64 %idxprom79
  %loses83 = getelementptr inbounds %struct.info, %struct.info* %arrayidx82, i32 0, i32 1
  %68 = load i32, i32* %loses83, align 4
  %69 = load i32, i32* %loses60, align 4
  %add84 = add nsw i32 %69, %68
  store i32 %add84, i32* %loses60, align 4
  %70 = load i32, i32* %tmp, align 4
  %idxprom85 = sext i32 %70 to i64
  %71 = load i32*, i32** %teams.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %71, i64 %idxprom85
  %72 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %72 to i64
  %73 = load i32, i32* %tmp_team, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx89, i32 0, i64 %idxprom87
  %ties91 = getelementptr inbounds %struct.info, %struct.info* %arrayidx90, i32 0, i32 2
  %74 = load i32, i32* %ties91, align 4
  %75 = load i32, i32* %ties61, align 4
  %add92 = add nsw i32 %75, %74
  store i32 %add92, i32* %ties61, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.68, %for.body.64
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %76 = load i32, i32* %tmp, align 4
  %inc95 = add nsw i32 %76, 1
  store i32 %inc95, i32* %tmp, align 4
  br label %for.cond.62

for.end.96:                                       ; preds = %for.cond.62
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %78 = load i32, i32* %wins59, align 4
  %79 = load i32, i32* %loses60, align 4
  %80 = load i32, i32* %ties61, align 4
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %78, i32 %79, i32 %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %82 = load i32, i32* %tmp_team, align 4
  %idxprom98 = sext i32 %82 to i64
  %arrayidx99 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom98
  %wins100 = getelementptr inbounds %struct.info, %struct.info* %arrayidx99, i32 0, i32 0
  %83 = load i32, i32* %wins100, align 4
  %84 = load i32, i32* %tmp_team, align 4
  %idxprom101 = sext i32 %84 to i64
  %arrayidx102 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom101
  %loses103 = getelementptr inbounds %struct.info, %struct.info* %arrayidx102, i32 0, i32 1
  %85 = load i32, i32* %loses103, align 4
  %86 = load i32, i32* %tmp_team, align 4
  %idxprom104 = sext i32 %86 to i64
  %arrayidx105 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom104
  %ties106 = getelementptr inbounds %struct.info, %struct.info* %arrayidx105, i32 0, i32 2
  %87 = load i32, i32* %ties106, align 4
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %83, i32 %85, i32 %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %89 = load i32, i32* %tmp_team, align 4
  %idxprom108 = sext i32 %89 to i64
  %arrayidx109 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom108
  %wins110 = getelementptr inbounds %struct.info, %struct.info* %arrayidx109, i32 0, i32 0
  %90 = load i32, i32* %wins110, align 4
  %91 = load i32, i32* %tmp_team, align 4
  %idxprom111 = sext i32 %91 to i64
  %arrayidx112 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom111
  %loses113 = getelementptr inbounds %struct.info, %struct.info* %arrayidx112, i32 0, i32 1
  %92 = load i32, i32* %loses113, align 4
  %93 = load i32, i32* %tmp_team, align 4
  %idxprom114 = sext i32 %93 to i64
  %arrayidx115 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom114
  %ties116 = getelementptr inbounds %struct.info, %struct.info* %arrayidx115, i32 0, i32 2
  %94 = load i32, i32* %ties116, align 4
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 %90, i32 %92, i32 %94)
  %95 = load i32, i32* %num.addr, align 4
  call void @common(i32 %95)
  %96 = load i32, i32* %tmp_team, align 4
  %idxprom118 = sext i32 %96 to i64
  %arrayidx119 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom118
  %wins120 = getelementptr inbounds %struct.info, %struct.info* %arrayidx119, i32 0, i32 0
  %97 = load i32, i32* %wins120, align 4
  %cmp121 = icmp ne i32 %97, -1
  br i1 %cmp121, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %for.end.96
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %99 = load i32, i32* %tmp_team, align 4
  %idxprom123 = sext i32 %99 to i64
  %arrayidx124 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom123
  %wins125 = getelementptr inbounds %struct.info, %struct.info* %arrayidx124, i32 0, i32 0
  %100 = load i32, i32* %wins125, align 4
  %101 = load i32, i32* %tmp_team, align 4
  %idxprom126 = sext i32 %101 to i64
  %arrayidx127 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom126
  %loses128 = getelementptr inbounds %struct.info, %struct.info* %arrayidx127, i32 0, i32 1
  %102 = load i32, i32* %loses128, align 4
  %103 = load i32, i32* %tmp_team, align 4
  %idxprom129 = sext i32 %103 to i64
  %arrayidx130 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom129
  %ties131 = getelementptr inbounds %struct.info, %struct.info* %arrayidx130, i32 0, i32 2
  %104 = load i32, i32* %ties131, align 4
  %105 = load i32, i32* %tmp_team, align 4
  %idxprom132 = sext i32 %105 to i64
  %arrayidx133 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom132
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx133, i32 0, i32 3
  %106 = load i32, i32* %points_for, align 4
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 %100, i32 %102, i32 %104, i32 %106)
  br label %if.end.136

if.else:                                          ; preds = %for.end.96
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.136

if.end.136:                                       ; preds = %if.else, %if.then.122
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %109 = load i32, i32* %tmp_team, align 4
  %idxprom137 = sext i32 %109 to i64
  %arrayidx138 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom137
  %points_for139 = getelementptr inbounds %struct.info, %struct.info* %arrayidx138, i32 0, i32 3
  %110 = load i32, i32* %points_for139, align 4
  %111 = load i32, i32* %tmp_team, align 4
  %idxprom140 = sext i32 %111 to i64
  %arrayidx141 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom140
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx141, i32 0, i32 4
  %112 = load i32, i32* %points_against, align 4
  %sub = sub nsw i32 %110, %112
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 %sub)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %114 = load i32, i32* %tmp_team, align 4
  %idxprom143 = sext i32 %114 to i64
  %arrayidx144 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom143
  %points_for145 = getelementptr inbounds %struct.info, %struct.info* %arrayidx144, i32 0, i32 3
  %115 = load i32, i32* %points_for145, align 4
  %116 = load i32, i32* %tmp_team, align 4
  %idxprom146 = sext i32 %116 to i64
  %arrayidx147 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom146
  %points_against148 = getelementptr inbounds %struct.info, %struct.info* %arrayidx147, i32 0, i32 4
  %117 = load i32, i32* %points_against148, align 4
  %sub149 = sub nsw i32 %115, %117
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 %sub149)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.136, %for.body.43
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %119 = load i32, i32* %tmp_team1, align 4
  %inc154 = add nsw i32 %119, 1
  store i32 %inc154, i32* %tmp_team1, align 4
  br label %for.cond.41

for.end.155:                                      ; preds = %if.then, %if.then.30, %if.then.33, %for.cond.41
  ret void
}

declare void @common(i32) #1

; Function Attrs: nounwind uwtable
define void @display_tiebreaker(%struct._IO_FILE* %output, i32 %team_code) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %team_code.addr = alloca i32, align 4
  %tmp_team = alloca i32, align 4
  %tmp_team1 = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i32 %team_code, i32* %team_code.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load i32, i32* %team_code.addr, align 4
  store i32 %1, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @common_teams, i32 0, i64 1), align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %7 = load i32, i32* %team_code.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx, i32 0, i64 0
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx4, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %9 = load i32, i32* %team_code.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 0
  %arraydecay9 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay9)
  store i32 1, i32* %tmp_team1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %tmp_team1, align 4
  %cmp = icmp sle i32 %10, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %tmp_team1, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  store i32 %12, i32* %tmp_team, align 4
  %13 = load i32, i32* %tmp_team, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 0
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load i32, i32* %team_code.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 0
  %16 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %14, %16
  br i1 %cmp19, label %if.then, label %if.end.176

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %tmp_team, align 4
  store i32 %17, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @common_teams, i32 0, i64 2), align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %19 = load i32, i32* %tmp_team, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx21, i32 0, i64 1
  %arraydecay23 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx22, i32 0, i32 0
  %20 = load i32, i32* %tmp_team, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom24
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx25, i32 0, i32 0
  %21 = load i32, i32* %wins, align 4
  %22 = load i32, i32* %tmp_team, align 4
  %idxprom26 = sext i32 %22 to i64
  %arrayidx27 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom26
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx27, i32 0, i32 1
  %23 = load i32, i32* %loses, align 4
  %24 = load i32, i32* %tmp_team, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom28
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx29, i32 0, i32 2
  %25 = load i32, i32* %ties, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay23, i32 %21, i32 %23, i32 %25)
  %26 = load i32, i32* %team_code.addr, align 4
  %27 = load i32, i32* %tmp_team, align 4
  %cmp31 = icmp ne i32 %26, %27
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %29 = load i32, i32* %team_code.addr, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load i32, i32* %tmp_team, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx35, i32 0, i64 %idxprom33
  %wins37 = getelementptr inbounds %struct.info, %struct.info* %arrayidx36, i32 0, i32 0
  %31 = load i32, i32* %wins37, align 4
  %32 = load i32, i32* %team_code.addr, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load i32, i32* %tmp_team, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx40, i32 0, i64 %idxprom38
  %loses42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 1
  %34 = load i32, i32* %loses42, align 4
  %35 = load i32, i32* %team_code.addr, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i32, i32* %tmp_team, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx45, i32 0, i64 %idxprom43
  %ties47 = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 2
  %37 = load i32, i32* %ties47, align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %31, i32 %34, i32 %37)
  br label %if.end

if.else:                                          ; preds = %if.then
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.32
  %39 = load i32, i32* %tmp_team, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx51, i32 0, i64 1
  %40 = load i32, i32* %arrayidx52, align 4
  %41 = load i32, i32* %team_code.addr, align 4
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx54, i32 0, i64 1
  %42 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp eq i32 %40, %42
  br i1 %cmp56, label %if.then.57, label %if.else.68

if.then.57:                                       ; preds = %if.end
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %44 = load i32, i32* %tmp_team, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom58
  %wins60 = getelementptr inbounds %struct.info, %struct.info* %arrayidx59, i32 0, i32 0
  %45 = load i32, i32* %wins60, align 4
  %46 = load i32, i32* %tmp_team, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom61
  %loses63 = getelementptr inbounds %struct.info, %struct.info* %arrayidx62, i32 0, i32 1
  %47 = load i32, i32* %loses63, align 4
  %48 = load i32, i32* %tmp_team, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom64
  %ties66 = getelementptr inbounds %struct.info, %struct.info* %arrayidx65, i32 0, i32 2
  %49 = load i32, i32* %ties66, align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %45, i32 %47, i32 %49)
  br label %if.end.70

if.else.68:                                       ; preds = %if.end
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.57
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %52 = load i32, i32* %tmp_team, align 4
  %idxprom71 = sext i32 %52 to i64
  %arrayidx72 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom71
  %wins73 = getelementptr inbounds %struct.info, %struct.info* %arrayidx72, i32 0, i32 0
  %53 = load i32, i32* %wins73, align 4
  %54 = load i32, i32* %tmp_team, align 4
  %idxprom74 = sext i32 %54 to i64
  %arrayidx75 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom74
  %loses76 = getelementptr inbounds %struct.info, %struct.info* %arrayidx75, i32 0, i32 1
  %55 = load i32, i32* %loses76, align 4
  %56 = load i32, i32* %tmp_team, align 4
  %idxprom77 = sext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom77
  %ties79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 2
  %57 = load i32, i32* %ties79, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 %53, i32 %55, i32 %57)
  call void @common(i32 2)
  %58 = load i32, i32* %tmp_team, align 4
  %59 = load i32, i32* %team_code.addr, align 4
  %cmp81 = icmp ne i32 %58, %59
  br i1 %cmp81, label %land.lhs.true, label %if.else.116

land.lhs.true:                                    ; preds = %if.end.70
  %60 = load i32, i32* %team_code.addr, align 4
  %idxprom82 = sext i32 %60 to i64
  %arrayidx83 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom82
  %wins84 = getelementptr inbounds %struct.info, %struct.info* %arrayidx83, i32 0, i32 0
  %61 = load i32, i32* %wins84, align 4
  %cmp85 = icmp ne i32 %61, -1
  br i1 %cmp85, label %land.lhs.true.86, label %if.else.116

land.lhs.true.86:                                 ; preds = %land.lhs.true
  %62 = load i32, i32* %tmp_team, align 4
  %idxprom87 = sext i32 %62 to i64
  %arrayidx88 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom87
  %wins89 = getelementptr inbounds %struct.info, %struct.info* %arrayidx88, i32 0, i32 0
  %63 = load i32, i32* %wins89, align 4
  %cmp90 = icmp ne i32 %63, -1
  br i1 %cmp90, label %if.then.91, label %if.else.116

if.then.91:                                       ; preds = %land.lhs.true.86
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %65 = load i32, i32* %tmp_team, align 4
  %idxprom92 = sext i32 %65 to i64
  %arrayidx93 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom92
  %wins94 = getelementptr inbounds %struct.info, %struct.info* %arrayidx93, i32 0, i32 0
  %66 = load i32, i32* %wins94, align 4
  %67 = load i32, i32* %tmp_team, align 4
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom95
  %loses97 = getelementptr inbounds %struct.info, %struct.info* %arrayidx96, i32 0, i32 1
  %68 = load i32, i32* %loses97, align 4
  %69 = load i32, i32* %tmp_team, align 4
  %idxprom98 = sext i32 %69 to i64
  %arrayidx99 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom98
  %ties100 = getelementptr inbounds %struct.info, %struct.info* %arrayidx99, i32 0, i32 2
  %70 = load i32, i32* %ties100, align 4
  %71 = load i32, i32* %tmp_team, align 4
  %idxprom101 = sext i32 %71 to i64
  %arrayidx102 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom101
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx102, i32 0, i32 3
  %72 = load i32, i32* %points_for, align 4
  %73 = load i32, i32* %team_code.addr, align 4
  %idxprom103 = sext i32 %73 to i64
  %arrayidx104 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom103
  %wins105 = getelementptr inbounds %struct.info, %struct.info* %arrayidx104, i32 0, i32 0
  %74 = load i32, i32* %wins105, align 4
  %75 = load i32, i32* %team_code.addr, align 4
  %idxprom106 = sext i32 %75 to i64
  %arrayidx107 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom106
  %loses108 = getelementptr inbounds %struct.info, %struct.info* %arrayidx107, i32 0, i32 1
  %76 = load i32, i32* %loses108, align 4
  %77 = load i32, i32* %team_code.addr, align 4
  %idxprom109 = sext i32 %77 to i64
  %arrayidx110 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom109
  %ties111 = getelementptr inbounds %struct.info, %struct.info* %arrayidx110, i32 0, i32 2
  %78 = load i32, i32* %ties111, align 4
  %79 = load i32, i32* %team_code.addr, align 4
  %idxprom112 = sext i32 %79 to i64
  %arrayidx113 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom112
  %points_for114 = getelementptr inbounds %struct.info, %struct.info* %arrayidx113, i32 0, i32 3
  %80 = load i32, i32* %points_for114, align 4
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i32 0, i32 0), i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80)
  br label %if.end.118

if.else.116:                                      ; preds = %land.lhs.true.86, %land.lhs.true, %if.end.70
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %if.then.91
  %82 = load i32, i32* %tmp_team, align 4
  %idxprom119 = sext i32 %82 to i64
  %arrayidx120 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx120, i32 0, i64 1
  %83 = load i32, i32* %arrayidx121, align 4
  %84 = load i32, i32* %team_code.addr, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx123, i32 0, i64 1
  %85 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %83, %85
  br i1 %cmp125, label %if.then.126, label %if.else.133

if.then.126:                                      ; preds = %if.end.118
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %87 = load i32, i32* %tmp_team, align 4
  %idxprom127 = sext i32 %87 to i64
  %arrayidx128 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom127
  %points_for129 = getelementptr inbounds %struct.info, %struct.info* %arrayidx128, i32 0, i32 3
  %88 = load i32, i32* %points_for129, align 4
  %89 = load i32, i32* %tmp_team, align 4
  %idxprom130 = sext i32 %89 to i64
  %arrayidx131 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom130
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx131, i32 0, i32 4
  %90 = load i32, i32* %points_against, align 4
  %sub = sub nsw i32 %88, %90
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 %sub)
  br label %if.end.135

if.else.133:                                      ; preds = %if.end.118
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.126
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %93 = load i32, i32* %tmp_team, align 4
  %idxprom136 = sext i32 %93 to i64
  %arrayidx137 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom136
  %wins138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 0
  %94 = load i32, i32* %wins138, align 4
  %95 = load i32, i32* %tmp_team, align 4
  %idxprom139 = sext i32 %95 to i64
  %arrayidx140 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom139
  %loses141 = getelementptr inbounds %struct.info, %struct.info* %arrayidx140, i32 0, i32 1
  %96 = load i32, i32* %loses141, align 4
  %add = add nsw i32 %94, %96
  %97 = load i32, i32* %tmp_team, align 4
  %idxprom142 = sext i32 %97 to i64
  %arrayidx143 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom142
  %ties144 = getelementptr inbounds %struct.info, %struct.info* %arrayidx143, i32 0, i32 2
  %98 = load i32, i32* %ties144, align 4
  %add145 = add nsw i32 %add, %98
  %cmp146 = icmp eq i32 %add145, 0
  br i1 %cmp146, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.135
  br label %cond.end

cond.false:                                       ; preds = %if.end.135
  %99 = load i32, i32* %tmp_team, align 4
  %idxprom147 = sext i32 %99 to i64
  %arrayidx148 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom147
  %points_for149 = getelementptr inbounds %struct.info, %struct.info* %arrayidx148, i32 0, i32 3
  %100 = load i32, i32* %points_for149, align 4
  %101 = load i32, i32* %tmp_team, align 4
  %idxprom150 = sext i32 %101 to i64
  %arrayidx151 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom150
  %points_against152 = getelementptr inbounds %struct.info, %struct.info* %arrayidx151, i32 0, i32 4
  %102 = load i32, i32* %points_against152, align 4
  %sub153 = sub nsw i32 %100, %102
  %conv = sitofp i32 %sub153 to double
  %103 = load i32, i32* %tmp_team, align 4
  %idxprom154 = sext i32 %103 to i64
  %arrayidx155 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom154
  %wins156 = getelementptr inbounds %struct.info, %struct.info* %arrayidx155, i32 0, i32 0
  %104 = load i32, i32* %wins156, align 4
  %105 = load i32, i32* %tmp_team, align 4
  %idxprom157 = sext i32 %105 to i64
  %arrayidx158 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom157
  %loses159 = getelementptr inbounds %struct.info, %struct.info* %arrayidx158, i32 0, i32 1
  %106 = load i32, i32* %loses159, align 4
  %add160 = add nsw i32 %104, %106
  %107 = load i32, i32* %tmp_team, align 4
  %idxprom161 = sext i32 %107 to i64
  %arrayidx162 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom161
  %ties163 = getelementptr inbounds %struct.info, %struct.info* %arrayidx162, i32 0, i32 2
  %108 = load i32, i32* %ties163, align 4
  %add164 = add nsw i32 %add160, %108
  %conv165 = sitofp i32 %add164 to double
  %div = fdiv double %conv, %conv165
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), double %cond)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %110 = load i32, i32* %tmp_team, align 4
  %idxprom167 = sext i32 %110 to i64
  %arrayidx168 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom167
  %points_for169 = getelementptr inbounds %struct.info, %struct.info* %arrayidx168, i32 0, i32 3
  %111 = load i32, i32* %points_for169, align 4
  %112 = load i32, i32* %tmp_team, align 4
  %idxprom170 = sext i32 %112 to i64
  %arrayidx171 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom170
  %points_against172 = getelementptr inbounds %struct.info, %struct.info* %arrayidx171, i32 0, i32 4
  %113 = load i32, i32* %points_against172, align 4
  %sub173 = sub nsw i32 %111, %113
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 %sub173)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.176

if.end.176:                                       ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.176
  %115 = load i32, i32* %tmp_team1, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %tmp_team1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_records(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %tmp_team = alloca i32, align 4
  %tmp_team1 = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0))
  store i32 1, i32* %tmp_team1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %tmp_team1, align 4
  %cmp = icmp sle i32 %7, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %tmp_team1, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %tmp_team, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %11 = load i32, i32* %tmp_team1, align 4
  %12 = load i32, i32* %tmp_team, align 4
  %call6 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 %12)
  %13 = load i32, i32* %tmp_team, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx8, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx9, i32 0, i32 0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i32 %11, i32 %call6, i8* %arraydecay)
  %14 = load i32, i32* %tmp_team, align 4
  %call11 = call i32 @a_champ(i32 %14)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %tmp_team, align 4
  %call13 = call i32 @a_wild_card(i32 %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %20 = load i32, i32* %tmp_team, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom20
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx21, i32 0, i32 0
  %21 = load i32, i32* %wins, align 4
  %22 = load i32, i32* %tmp_team, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom22
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx23, i32 0, i32 1
  %23 = load i32, i32* %loses, align 4
  %24 = load i32, i32* %tmp_team, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom24
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx25, i32 0, i32 2
  %25 = load i32, i32* %ties, align 4
  %26 = load i32, i32* %tmp_team, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom26
  %wins28 = getelementptr inbounds %struct.info, %struct.info* %arrayidx27, i32 0, i32 0
  %27 = load i32, i32* %wins28, align 4
  %28 = load i32, i32* %tmp_team, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom29
  %loses31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 1
  %29 = load i32, i32* %loses31, align 4
  %add = add nsw i32 %27, %29
  %30 = load i32, i32* %tmp_team, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom32
  %ties34 = getelementptr inbounds %struct.info, %struct.info* %arrayidx33, i32 0, i32 2
  %31 = load i32, i32* %ties34, align 4
  %add35 = add nsw i32 %add, %31
  %cmp36 = icmp eq i32 %add35, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  %32 = load i32, i32* %tmp_team, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom37
  %wins39 = getelementptr inbounds %struct.info, %struct.info* %arrayidx38, i32 0, i32 0
  %33 = load i32, i32* %wins39, align 4
  %conv = sitofp i32 %33 to double
  %34 = load i32, i32* %tmp_team, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom40
  %ties42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 2
  %35 = load i32, i32* %ties42, align 4
  %conv43 = sitofp i32 %35 to double
  %mul = fmul double 5.000000e-01, %conv43
  %add44 = fadd double %conv, %mul
  %36 = load i32, i32* %tmp_team, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom45
  %wins47 = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 0
  %37 = load i32, i32* %wins47, align 4
  %38 = load i32, i32* %tmp_team, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom48
  %loses50 = getelementptr inbounds %struct.info, %struct.info* %arrayidx49, i32 0, i32 1
  %39 = load i32, i32* %loses50, align 4
  %add51 = add nsw i32 %37, %39
  %40 = load i32, i32* %tmp_team, align 4
  %idxprom52 = sext i32 %40 to i64
  %arrayidx53 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom52
  %ties54 = getelementptr inbounds %struct.info, %struct.info* %arrayidx53, i32 0, i32 2
  %41 = load i32, i32* %ties54, align 4
  %add55 = add nsw i32 %add51, %41
  %conv56 = sitofp i32 %add55 to double
  %div = fdiv double %add44, %conv56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %cmp57 = fcmp oge double %cond, 1.000000e+00
  %cond59 = select i1 %cmp57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %42 = load i32, i32* %tmp_team, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom60
  %wins62 = getelementptr inbounds %struct.info, %struct.info* %arrayidx61, i32 0, i32 0
  %43 = load i32, i32* %wins62, align 4
  %44 = load i32, i32* %tmp_team, align 4
  %idxprom63 = sext i32 %44 to i64
  %arrayidx64 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom63
  %loses65 = getelementptr inbounds %struct.info, %struct.info* %arrayidx64, i32 0, i32 1
  %45 = load i32, i32* %loses65, align 4
  %add66 = add nsw i32 %43, %45
  %46 = load i32, i32* %tmp_team, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom67
  %ties69 = getelementptr inbounds %struct.info, %struct.info* %arrayidx68, i32 0, i32 2
  %47 = load i32, i32* %ties69, align 4
  %add70 = add nsw i32 %add66, %47
  %cmp71 = icmp eq i32 %add70, 0
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end
  br label %cond.end.98

cond.false.74:                                    ; preds = %cond.end
  %48 = load i32, i32* %tmp_team, align 4
  %idxprom75 = sext i32 %48 to i64
  %arrayidx76 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom75
  %wins77 = getelementptr inbounds %struct.info, %struct.info* %arrayidx76, i32 0, i32 0
  %49 = load i32, i32* %wins77, align 4
  %conv78 = sitofp i32 %49 to double
  %50 = load i32, i32* %tmp_team, align 4
  %idxprom79 = sext i32 %50 to i64
  %arrayidx80 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom79
  %ties81 = getelementptr inbounds %struct.info, %struct.info* %arrayidx80, i32 0, i32 2
  %51 = load i32, i32* %ties81, align 4
  %conv82 = sitofp i32 %51 to double
  %mul83 = fmul double 5.000000e-01, %conv82
  %add84 = fadd double %conv78, %mul83
  %52 = load i32, i32* %tmp_team, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom85
  %wins87 = getelementptr inbounds %struct.info, %struct.info* %arrayidx86, i32 0, i32 0
  %53 = load i32, i32* %wins87, align 4
  %54 = load i32, i32* %tmp_team, align 4
  %idxprom88 = sext i32 %54 to i64
  %arrayidx89 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom88
  %loses90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 1
  %55 = load i32, i32* %loses90, align 4
  %add91 = add nsw i32 %53, %55
  %56 = load i32, i32* %tmp_team, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom92
  %ties94 = getelementptr inbounds %struct.info, %struct.info* %arrayidx93, i32 0, i32 2
  %57 = load i32, i32* %ties94, align 4
  %add95 = add nsw i32 %add91, %57
  %conv96 = sitofp i32 %add95 to double
  %div97 = fdiv double %add84, %conv96
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.74, %cond.true.73
  %cond99 = phi double [ 0.000000e+00, %cond.true.73 ], [ %div97, %cond.false.74 ]
  %cmp100 = fcmp oge double %cond99, 1.000000e+00
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.end.98
  br label %cond.end.147

cond.false.103:                                   ; preds = %cond.end.98
  %58 = load i32, i32* %tmp_team, align 4
  %idxprom104 = sext i32 %58 to i64
  %arrayidx105 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom104
  %wins106 = getelementptr inbounds %struct.info, %struct.info* %arrayidx105, i32 0, i32 0
  %59 = load i32, i32* %wins106, align 4
  %60 = load i32, i32* %tmp_team, align 4
  %idxprom107 = sext i32 %60 to i64
  %arrayidx108 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom107
  %loses109 = getelementptr inbounds %struct.info, %struct.info* %arrayidx108, i32 0, i32 1
  %61 = load i32, i32* %loses109, align 4
  %add110 = add nsw i32 %59, %61
  %62 = load i32, i32* %tmp_team, align 4
  %idxprom111 = sext i32 %62 to i64
  %arrayidx112 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom111
  %ties113 = getelementptr inbounds %struct.info, %struct.info* %arrayidx112, i32 0, i32 2
  %63 = load i32, i32* %ties113, align 4
  %add114 = add nsw i32 %add110, %63
  %cmp115 = icmp eq i32 %add114, 0
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.false.103
  br label %cond.end.142

cond.false.118:                                   ; preds = %cond.false.103
  %64 = load i32, i32* %tmp_team, align 4
  %idxprom119 = sext i32 %64 to i64
  %arrayidx120 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom119
  %wins121 = getelementptr inbounds %struct.info, %struct.info* %arrayidx120, i32 0, i32 0
  %65 = load i32, i32* %wins121, align 4
  %conv122 = sitofp i32 %65 to double
  %66 = load i32, i32* %tmp_team, align 4
  %idxprom123 = sext i32 %66 to i64
  %arrayidx124 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom123
  %ties125 = getelementptr inbounds %struct.info, %struct.info* %arrayidx124, i32 0, i32 2
  %67 = load i32, i32* %ties125, align 4
  %conv126 = sitofp i32 %67 to double
  %mul127 = fmul double 5.000000e-01, %conv126
  %add128 = fadd double %conv122, %mul127
  %68 = load i32, i32* %tmp_team, align 4
  %idxprom129 = sext i32 %68 to i64
  %arrayidx130 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom129
  %wins131 = getelementptr inbounds %struct.info, %struct.info* %arrayidx130, i32 0, i32 0
  %69 = load i32, i32* %wins131, align 4
  %70 = load i32, i32* %tmp_team, align 4
  %idxprom132 = sext i32 %70 to i64
  %arrayidx133 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom132
  %loses134 = getelementptr inbounds %struct.info, %struct.info* %arrayidx133, i32 0, i32 1
  %71 = load i32, i32* %loses134, align 4
  %add135 = add nsw i32 %69, %71
  %72 = load i32, i32* %tmp_team, align 4
  %idxprom136 = sext i32 %72 to i64
  %arrayidx137 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom136
  %ties138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 2
  %73 = load i32, i32* %ties138, align 4
  %add139 = add nsw i32 %add135, %73
  %conv140 = sitofp i32 %add139 to double
  %div141 = fdiv double %add128, %conv140
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.118, %cond.true.117
  %cond143 = phi double [ 0.000000e+00, %cond.true.117 ], [ %div141, %cond.false.118 ]
  %mul144 = fmul double %cond143, 1.000000e+03
  %add145 = fadd double %mul144, 5.000000e-01
  %conv146 = fptosi double %add145 to i32
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end.142, %cond.true.102
  %cond148 = phi i32 [ 0, %cond.true.102 ], [ %conv146, %cond.end.142 ]
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0), i32 %21, i32 %23, i32 %25, i8* %cond59, i32 %cond148)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0))
  %75 = load i32, i32* %tmp_team1, align 4
  %add151 = add nsw i32 %75, 14
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom152
  %76 = load i32, i32* %arrayidx153, align 4
  store i32 %76, i32* %tmp_team, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %78 = load i32, i32* %tmp_team1, align 4
  %79 = load i32, i32* %tmp_team, align 4
  %call154 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 %79)
  %80 = load i32, i32* %tmp_team, align 4
  %idxprom155 = sext i32 %80 to i64
  %arrayidx156 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx156, i32 0, i64 1
  %arraydecay158 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx157, i32 0, i32 0
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i32 %78, i32 %call154, i8* %arraydecay158)
  %81 = load i32, i32* %tmp_team, align 4
  %call160 = call i32 @a_champ(i32 %81)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.else.164

if.then.162:                                      ; preds = %cond.end.147
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.172

if.else.164:                                      ; preds = %cond.end.147
  %83 = load i32, i32* %tmp_team, align 4
  %call165 = call i32 @a_wild_card(i32 %83)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.else.164
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.171

if.else.169:                                      ; preds = %if.else.164
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %if.then.167
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.162
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %87 = load i32, i32* %tmp_team, align 4
  %idxprom173 = sext i32 %87 to i64
  %arrayidx174 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom173
  %wins175 = getelementptr inbounds %struct.info, %struct.info* %arrayidx174, i32 0, i32 0
  %88 = load i32, i32* %wins175, align 4
  %89 = load i32, i32* %tmp_team, align 4
  %idxprom176 = sext i32 %89 to i64
  %arrayidx177 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom176
  %loses178 = getelementptr inbounds %struct.info, %struct.info* %arrayidx177, i32 0, i32 1
  %90 = load i32, i32* %loses178, align 4
  %91 = load i32, i32* %tmp_team, align 4
  %idxprom179 = sext i32 %91 to i64
  %arrayidx180 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom179
  %ties181 = getelementptr inbounds %struct.info, %struct.info* %arrayidx180, i32 0, i32 2
  %92 = load i32, i32* %ties181, align 4
  %93 = load i32, i32* %tmp_team, align 4
  %idxprom182 = sext i32 %93 to i64
  %arrayidx183 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom182
  %wins184 = getelementptr inbounds %struct.info, %struct.info* %arrayidx183, i32 0, i32 0
  %94 = load i32, i32* %wins184, align 4
  %95 = load i32, i32* %tmp_team, align 4
  %idxprom185 = sext i32 %95 to i64
  %arrayidx186 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom185
  %loses187 = getelementptr inbounds %struct.info, %struct.info* %arrayidx186, i32 0, i32 1
  %96 = load i32, i32* %loses187, align 4
  %add188 = add nsw i32 %94, %96
  %97 = load i32, i32* %tmp_team, align 4
  %idxprom189 = sext i32 %97 to i64
  %arrayidx190 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom189
  %ties191 = getelementptr inbounds %struct.info, %struct.info* %arrayidx190, i32 0, i32 2
  %98 = load i32, i32* %ties191, align 4
  %add192 = add nsw i32 %add188, %98
  %cmp193 = icmp eq i32 %add192, 0
  br i1 %cmp193, label %cond.true.195, label %cond.false.196

cond.true.195:                                    ; preds = %if.end.172
  br label %cond.end.220

cond.false.196:                                   ; preds = %if.end.172
  %99 = load i32, i32* %tmp_team, align 4
  %idxprom197 = sext i32 %99 to i64
  %arrayidx198 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom197
  %wins199 = getelementptr inbounds %struct.info, %struct.info* %arrayidx198, i32 0, i32 0
  %100 = load i32, i32* %wins199, align 4
  %conv200 = sitofp i32 %100 to double
  %101 = load i32, i32* %tmp_team, align 4
  %idxprom201 = sext i32 %101 to i64
  %arrayidx202 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom201
  %ties203 = getelementptr inbounds %struct.info, %struct.info* %arrayidx202, i32 0, i32 2
  %102 = load i32, i32* %ties203, align 4
  %conv204 = sitofp i32 %102 to double
  %mul205 = fmul double 5.000000e-01, %conv204
  %add206 = fadd double %conv200, %mul205
  %103 = load i32, i32* %tmp_team, align 4
  %idxprom207 = sext i32 %103 to i64
  %arrayidx208 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom207
  %wins209 = getelementptr inbounds %struct.info, %struct.info* %arrayidx208, i32 0, i32 0
  %104 = load i32, i32* %wins209, align 4
  %105 = load i32, i32* %tmp_team, align 4
  %idxprom210 = sext i32 %105 to i64
  %arrayidx211 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom210
  %loses212 = getelementptr inbounds %struct.info, %struct.info* %arrayidx211, i32 0, i32 1
  %106 = load i32, i32* %loses212, align 4
  %add213 = add nsw i32 %104, %106
  %107 = load i32, i32* %tmp_team, align 4
  %idxprom214 = sext i32 %107 to i64
  %arrayidx215 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom214
  %ties216 = getelementptr inbounds %struct.info, %struct.info* %arrayidx215, i32 0, i32 2
  %108 = load i32, i32* %ties216, align 4
  %add217 = add nsw i32 %add213, %108
  %conv218 = sitofp i32 %add217 to double
  %div219 = fdiv double %add206, %conv218
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.196, %cond.true.195
  %cond221 = phi double [ 0.000000e+00, %cond.true.195 ], [ %div219, %cond.false.196 ]
  %cmp222 = fcmp oge double %cond221, 1.000000e+00
  %cond224 = select i1 %cmp222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %109 = load i32, i32* %tmp_team, align 4
  %idxprom225 = sext i32 %109 to i64
  %arrayidx226 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom225
  %wins227 = getelementptr inbounds %struct.info, %struct.info* %arrayidx226, i32 0, i32 0
  %110 = load i32, i32* %wins227, align 4
  %111 = load i32, i32* %tmp_team, align 4
  %idxprom228 = sext i32 %111 to i64
  %arrayidx229 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom228
  %loses230 = getelementptr inbounds %struct.info, %struct.info* %arrayidx229, i32 0, i32 1
  %112 = load i32, i32* %loses230, align 4
  %add231 = add nsw i32 %110, %112
  %113 = load i32, i32* %tmp_team, align 4
  %idxprom232 = sext i32 %113 to i64
  %arrayidx233 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom232
  %ties234 = getelementptr inbounds %struct.info, %struct.info* %arrayidx233, i32 0, i32 2
  %114 = load i32, i32* %ties234, align 4
  %add235 = add nsw i32 %add231, %114
  %cmp236 = icmp eq i32 %add235, 0
  br i1 %cmp236, label %cond.true.238, label %cond.false.239

cond.true.238:                                    ; preds = %cond.end.220
  br label %cond.end.263

cond.false.239:                                   ; preds = %cond.end.220
  %115 = load i32, i32* %tmp_team, align 4
  %idxprom240 = sext i32 %115 to i64
  %arrayidx241 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom240
  %wins242 = getelementptr inbounds %struct.info, %struct.info* %arrayidx241, i32 0, i32 0
  %116 = load i32, i32* %wins242, align 4
  %conv243 = sitofp i32 %116 to double
  %117 = load i32, i32* %tmp_team, align 4
  %idxprom244 = sext i32 %117 to i64
  %arrayidx245 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom244
  %ties246 = getelementptr inbounds %struct.info, %struct.info* %arrayidx245, i32 0, i32 2
  %118 = load i32, i32* %ties246, align 4
  %conv247 = sitofp i32 %118 to double
  %mul248 = fmul double 5.000000e-01, %conv247
  %add249 = fadd double %conv243, %mul248
  %119 = load i32, i32* %tmp_team, align 4
  %idxprom250 = sext i32 %119 to i64
  %arrayidx251 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom250
  %wins252 = getelementptr inbounds %struct.info, %struct.info* %arrayidx251, i32 0, i32 0
  %120 = load i32, i32* %wins252, align 4
  %121 = load i32, i32* %tmp_team, align 4
  %idxprom253 = sext i32 %121 to i64
  %arrayidx254 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom253
  %loses255 = getelementptr inbounds %struct.info, %struct.info* %arrayidx254, i32 0, i32 1
  %122 = load i32, i32* %loses255, align 4
  %add256 = add nsw i32 %120, %122
  %123 = load i32, i32* %tmp_team, align 4
  %idxprom257 = sext i32 %123 to i64
  %arrayidx258 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom257
  %ties259 = getelementptr inbounds %struct.info, %struct.info* %arrayidx258, i32 0, i32 2
  %124 = load i32, i32* %ties259, align 4
  %add260 = add nsw i32 %add256, %124
  %conv261 = sitofp i32 %add260 to double
  %div262 = fdiv double %add249, %conv261
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.239, %cond.true.238
  %cond264 = phi double [ 0.000000e+00, %cond.true.238 ], [ %div262, %cond.false.239 ]
  %cmp265 = fcmp oge double %cond264, 1.000000e+00
  br i1 %cmp265, label %cond.true.267, label %cond.false.268

cond.true.267:                                    ; preds = %cond.end.263
  br label %cond.end.312

cond.false.268:                                   ; preds = %cond.end.263
  %125 = load i32, i32* %tmp_team, align 4
  %idxprom269 = sext i32 %125 to i64
  %arrayidx270 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom269
  %wins271 = getelementptr inbounds %struct.info, %struct.info* %arrayidx270, i32 0, i32 0
  %126 = load i32, i32* %wins271, align 4
  %127 = load i32, i32* %tmp_team, align 4
  %idxprom272 = sext i32 %127 to i64
  %arrayidx273 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom272
  %loses274 = getelementptr inbounds %struct.info, %struct.info* %arrayidx273, i32 0, i32 1
  %128 = load i32, i32* %loses274, align 4
  %add275 = add nsw i32 %126, %128
  %129 = load i32, i32* %tmp_team, align 4
  %idxprom276 = sext i32 %129 to i64
  %arrayidx277 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom276
  %ties278 = getelementptr inbounds %struct.info, %struct.info* %arrayidx277, i32 0, i32 2
  %130 = load i32, i32* %ties278, align 4
  %add279 = add nsw i32 %add275, %130
  %cmp280 = icmp eq i32 %add279, 0
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %cond.false.268
  br label %cond.end.307

cond.false.283:                                   ; preds = %cond.false.268
  %131 = load i32, i32* %tmp_team, align 4
  %idxprom284 = sext i32 %131 to i64
  %arrayidx285 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom284
  %wins286 = getelementptr inbounds %struct.info, %struct.info* %arrayidx285, i32 0, i32 0
  %132 = load i32, i32* %wins286, align 4
  %conv287 = sitofp i32 %132 to double
  %133 = load i32, i32* %tmp_team, align 4
  %idxprom288 = sext i32 %133 to i64
  %arrayidx289 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom288
  %ties290 = getelementptr inbounds %struct.info, %struct.info* %arrayidx289, i32 0, i32 2
  %134 = load i32, i32* %ties290, align 4
  %conv291 = sitofp i32 %134 to double
  %mul292 = fmul double 5.000000e-01, %conv291
  %add293 = fadd double %conv287, %mul292
  %135 = load i32, i32* %tmp_team, align 4
  %idxprom294 = sext i32 %135 to i64
  %arrayidx295 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom294
  %wins296 = getelementptr inbounds %struct.info, %struct.info* %arrayidx295, i32 0, i32 0
  %136 = load i32, i32* %wins296, align 4
  %137 = load i32, i32* %tmp_team, align 4
  %idxprom297 = sext i32 %137 to i64
  %arrayidx298 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom297
  %loses299 = getelementptr inbounds %struct.info, %struct.info* %arrayidx298, i32 0, i32 1
  %138 = load i32, i32* %loses299, align 4
  %add300 = add nsw i32 %136, %138
  %139 = load i32, i32* %tmp_team, align 4
  %idxprom301 = sext i32 %139 to i64
  %arrayidx302 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom301
  %ties303 = getelementptr inbounds %struct.info, %struct.info* %arrayidx302, i32 0, i32 2
  %140 = load i32, i32* %ties303, align 4
  %add304 = add nsw i32 %add300, %140
  %conv305 = sitofp i32 %add304 to double
  %div306 = fdiv double %add293, %conv305
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.283, %cond.true.282
  %cond308 = phi double [ 0.000000e+00, %cond.true.282 ], [ %div306, %cond.false.283 ]
  %mul309 = fmul double %cond308, 1.000000e+03
  %add310 = fadd double %mul309, 5.000000e-01
  %conv311 = fptosi double %add310 to i32
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.end.307, %cond.true.267
  %cond313 = phi i32 [ 0, %cond.true.267 ], [ %conv311, %cond.end.307 ]
  %call314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i32 %88, i32 %90, i32 %92, i8* %cond224, i32 %cond313)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.312
  %141 = load i32, i32* %tmp_team1, align 4
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %tmp_team1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_week(%struct._IO_FILE* %output, i32 %week) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %week.addr = alloca i32, align 4
  %game = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i32 %week, i32* %week.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %2 = load i32, i32* %week.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.72, i32 0, i32 0), i32 %2)
  store i32 1, i32* %game, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %game, align 4
  %cmp = icmp slt i32 %3, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %5 = load i32, i32* %game, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %week.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2, i32 0, i64 1
  %7 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx5, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx6, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay)
  %8 = load i32, i32* %game, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32, i32* %week.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx10, i32 0, i64 %idxprom8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 1
  %10 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %10, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %13 = load i32, i32* %game, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load i32, i32* %week.addr, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx17, i32 0, i64 %idxprom15
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  %15 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %game, align 4
  %add = add nsw i32 %16, 1
  %cmp21 = icmp sle i32 %add, 14
  br i1 %cmp21, label %if.then.22, label %if.end.52

if.then.22:                                       ; preds = %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %18 = load i32, i32* %game, align 4
  %add23 = add nsw i32 %18, 1
  %idxprom24 = sext i32 %add23 to i64
  %19 = load i32, i32* %week.addr, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx26, i32 0, i64 %idxprom24
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 1
  %20 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx30, i32 0, i64 1
  %arraydecay32 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx31, i32 0, i32 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay32)
  %21 = load i32, i32* %game, align 4
  %add34 = add nsw i32 %21, 1
  %idxprom35 = sext i32 %add34 to i64
  %22 = load i32, i32* %week.addr, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx37, i32 0, i64 %idxprom35
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 1
  %23 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp slt i32 %23, 0
  br i1 %cmp40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.then.22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.51

if.else.43:                                       ; preds = %if.then.22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %26 = load i32, i32* %game, align 4
  %add44 = add nsw i32 %26, 1
  %idxprom45 = sext i32 %add44 to i64
  %27 = load i32, i32* %week.addr, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx47, i32 0, i64 %idxprom45
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 1
  %28 = load i32, i32* %arrayidx49, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %28)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  %29 = load i32, i32* %game, align 4
  %add53 = add nsw i32 %29, 2
  %cmp54 = icmp sle i32 %add53, 14
  br i1 %cmp54, label %if.then.55, label %if.end.85

if.then.55:                                       ; preds = %if.end.52
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %31 = load i32, i32* %game, align 4
  %add56 = add nsw i32 %31, 2
  %idxprom57 = sext i32 %add56 to i64
  %32 = load i32, i32* %week.addr, align 4
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx59, i32 0, i64 %idxprom57
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx60, i32 0, i64 1
  %33 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %33 to i64
  %arrayidx63 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx63, i32 0, i64 1
  %arraydecay65 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx64, i32 0, i32 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay65)
  %34 = load i32, i32* %game, align 4
  %add67 = add nsw i32 %34, 2
  %idxprom68 = sext i32 %add67 to i64
  %35 = load i32, i32* %week.addr, align 4
  %idxprom69 = sext i32 %35 to i64
  %arrayidx70 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx70, i32 0, i64 %idxprom68
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx71, i32 0, i64 1
  %36 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp slt i32 %36, 0
  br i1 %cmp73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.then.55
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.84

if.else.76:                                       ; preds = %if.then.55
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %39 = load i32, i32* %game, align 4
  %add77 = add nsw i32 %39, 2
  %idxprom78 = sext i32 %add77 to i64
  %40 = load i32, i32* %week.addr, align 4
  %idxprom79 = sext i32 %40 to i64
  %arrayidx80 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx80, i32 0, i64 %idxprom78
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx81, i32 0, i64 1
  %41 = load i32, i32* %arrayidx82, align 4
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %41)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.76, %if.then.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.52
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %44 = load i32, i32* %game, align 4
  %idxprom87 = sext i32 %44 to i64
  %45 = load i32, i32* %week.addr, align 4
  %idxprom88 = sext i32 %45 to i64
  %arrayidx89 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx89, i32 0, i64 %idxprom87
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx90, i32 0, i64 2
  %46 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %46 to i64
  %arrayidx93 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx93, i32 0, i64 1
  %arraydecay95 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx94, i32 0, i32 0
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay95)
  %47 = load i32, i32* %game, align 4
  %idxprom97 = sext i32 %47 to i64
  %48 = load i32, i32* %week.addr, align 4
  %idxprom98 = sext i32 %48 to i64
  %arrayidx99 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom98
  %arrayidx100 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx99, i32 0, i64 %idxprom97
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx100, i32 0, i64 2
  %49 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp slt i32 %49, 0
  br i1 %cmp102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.end.85
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.112

if.else.105:                                      ; preds = %if.end.85
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %52 = load i32, i32* %game, align 4
  %idxprom106 = sext i32 %52 to i64
  %53 = load i32, i32* %week.addr, align 4
  %idxprom107 = sext i32 %53 to i64
  %arrayidx108 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx108, i32 0, i64 %idxprom106
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx109, i32 0, i64 2
  %54 = load i32, i32* %arrayidx110, align 4
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %54)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.105, %if.then.103
  %55 = load i32, i32* %game, align 4
  %add113 = add nsw i32 %55, 1
  %cmp114 = icmp sle i32 %add113, 14
  br i1 %cmp114, label %if.then.115, label %if.end.145

if.then.115:                                      ; preds = %if.end.112
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %57 = load i32, i32* %game, align 4
  %add116 = add nsw i32 %57, 1
  %idxprom117 = sext i32 %add116 to i64
  %58 = load i32, i32* %week.addr, align 4
  %idxprom118 = sext i32 %58 to i64
  %arrayidx119 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx119, i32 0, i64 %idxprom117
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx120, i32 0, i64 2
  %59 = load i32, i32* %arrayidx121, align 4
  %idxprom122 = sext i32 %59 to i64
  %arrayidx123 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx123, i32 0, i64 1
  %arraydecay125 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx124, i32 0, i32 0
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay125)
  %60 = load i32, i32* %game, align 4
  %add127 = add nsw i32 %60, 1
  %idxprom128 = sext i32 %add127 to i64
  %61 = load i32, i32* %week.addr, align 4
  %idxprom129 = sext i32 %61 to i64
  %arrayidx130 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx130, i32 0, i64 %idxprom128
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx131, i32 0, i64 2
  %62 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp slt i32 %62, 0
  br i1 %cmp133, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.then.115
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.144

if.else.136:                                      ; preds = %if.then.115
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %65 = load i32, i32* %game, align 4
  %add137 = add nsw i32 %65, 1
  %idxprom138 = sext i32 %add137 to i64
  %66 = load i32, i32* %week.addr, align 4
  %idxprom139 = sext i32 %66 to i64
  %arrayidx140 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx140, i32 0, i64 %idxprom138
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx141, i32 0, i64 2
  %67 = load i32, i32* %arrayidx142, align 4
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %67)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.136, %if.then.134
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.112
  %68 = load i32, i32* %game, align 4
  %add146 = add nsw i32 %68, 2
  %cmp147 = icmp sle i32 %add146, 14
  br i1 %cmp147, label %if.then.148, label %if.end.178

if.then.148:                                      ; preds = %if.end.145
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %70 = load i32, i32* %game, align 4
  %add149 = add nsw i32 %70, 2
  %idxprom150 = sext i32 %add149 to i64
  %71 = load i32, i32* %week.addr, align 4
  %idxprom151 = sext i32 %71 to i64
  %arrayidx152 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx152, i32 0, i64 %idxprom150
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx153, i32 0, i64 2
  %72 = load i32, i32* %arrayidx154, align 4
  %idxprom155 = sext i32 %72 to i64
  %arrayidx156 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom155
  %arrayidx157 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx156, i32 0, i64 1
  %arraydecay158 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx157, i32 0, i32 0
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay158)
  %73 = load i32, i32* %game, align 4
  %add160 = add nsw i32 %73, 2
  %idxprom161 = sext i32 %add160 to i64
  %74 = load i32, i32* %week.addr, align 4
  %idxprom162 = sext i32 %74 to i64
  %arrayidx163 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx163, i32 0, i64 %idxprom161
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx164, i32 0, i64 2
  %75 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp slt i32 %75, 0
  br i1 %cmp166, label %if.then.167, label %if.else.169

if.then.167:                                      ; preds = %if.then.148
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.177

if.else.169:                                      ; preds = %if.then.148
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %78 = load i32, i32* %game, align 4
  %add170 = add nsw i32 %78, 2
  %idxprom171 = sext i32 %add170 to i64
  %79 = load i32, i32* %week.addr, align 4
  %idxprom172 = sext i32 %79 to i64
  %arrayidx173 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx173, i32 0, i64 %idxprom171
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx174, i32 0, i64 2
  %80 = load i32, i32* %arrayidx175, align 4
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i32 %80)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.169, %if.then.167
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.145
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.178
  %82 = load i32, i32* %game, align 4
  %add180 = add nsw i32 %82, 3
  store i32 %add180, i32* %game, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @enter_prompt_week(%struct._IO_FILE* %output, %struct._IO_FILE* %input, i32 %week) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %input.addr = alloca %struct._IO_FILE*, align 8
  %week.addr = alloca i32, align 4
  %game = alloca i32, align 4
  %resp = alloca i8*, align 8
  %ABORT = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  store i32 %week, i32* %week.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.78, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %4 = load i32, i32* %week.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 %4)
  store i32 0, i32* %ABORT, align 4
  store i32 1, i32* %game, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %game, align 4
  %cmp = icmp sle i32 %5, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ABORT, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.103, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %game, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %week.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 1
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %9, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.103

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %game, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %week.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx10, i32 0, i64 %idxprom8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 2
  %12 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %12, 0
  br i1 %cmp13, label %if.then, label %if.end.103

if.then:                                          ; preds = %land.lhs.true.7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %14 = load i32, i32* %game, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32, i32* %week.addr, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17, i32 0, i64 1
  %16 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx20, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx21, i32 0, i32 0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay)
  %17 = load i32, i32* %game, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load i32, i32* %week.addr, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i64 1
  %19 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp slt i32 %19, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %22 = load i32, i32* %game, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load i32, i32* %week.addr, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx33, i32 0, i64 %idxprom31
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx34, i32 0, i64 1
  %24 = load i32, i32* %arrayidx35, align 4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call37 = call i8* @get_responce(%struct._IO_FILE* %25)
  store i8* %call37, i8** %resp, align 8
  %26 = load i8*, i8** %resp, align 8
  %call38 = call i32 @matches(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  store i32 1, i32* %ABORT, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end
  %27 = load i8*, i8** %resp, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %cmp42 = icmp ne i32 %conv, 0
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.53

land.lhs.true.44:                                 ; preds = %if.end.41
  %29 = load i32, i32* %ABORT, align 4
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.end.53, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.44
  %30 = load i8*, i8** %resp, align 8
  %31 = load i32, i32* %game, align 4
  %idxprom47 = sext i32 %31 to i64
  %32 = load i32, i32* %week.addr, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx49, i32 0, i64 %idxprom47
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx50, i32 0, i64 1
  %call52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %arrayidx51) #5
  store i32 0, i32* @current_with_disk, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.46, %land.lhs.true.44, %if.end.41
  %33 = load i32, i32* %ABORT, align 4
  %tobool54 = icmp ne i32 %33, 0
  br i1 %tobool54, label %if.end.101, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %35 = load i32, i32* %game, align 4
  %idxprom56 = sext i32 %35 to i64
  %36 = load i32, i32* %week.addr, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx58, i32 0, i64 %idxprom56
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx59, i32 0, i64 2
  %37 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %37 to i64
  %arrayidx62 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx62, i32 0, i64 1
  %arraydecay64 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx63, i32 0, i32 0
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay64)
  %38 = load i32, i32* %game, align 4
  %idxprom66 = sext i32 %38 to i64
  %39 = load i32, i32* %week.addr, align 4
  %idxprom67 = sext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx68, i32 0, i64 %idxprom66
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 2
  %40 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp slt i32 %40, 0
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.then.55
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.82

if.else.75:                                       ; preds = %if.then.55
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %43 = load i32, i32* %game, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load i32, i32* %week.addr, align 4
  %idxprom77 = sext i32 %44 to i64
  %arrayidx78 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx78, i32 0, i64 %idxprom76
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx79, i32 0, i64 2
  %45 = load i32, i32* %arrayidx80, align 4
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 %45)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.75, %if.then.73
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call83 = call i8* @get_responce(%struct._IO_FILE* %46)
  store i8* %call83, i8** %resp, align 8
  %47 = load i8*, i8** %resp, align 8
  %call84 = call i32 @matches(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  store i32 1, i32* %ABORT, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.82
  %48 = load i8*, i8** %resp, align 8
  %49 = load i8, i8* %48, align 1
  %conv88 = sext i8 %49 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.100

land.lhs.true.91:                                 ; preds = %if.end.87
  %50 = load i32, i32* %ABORT, align 4
  %tobool92 = icmp ne i32 %50, 0
  br i1 %tobool92, label %if.end.100, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.91
  %51 = load i8*, i8** %resp, align 8
  %52 = load i32, i32* %game, align 4
  %idxprom94 = sext i32 %52 to i64
  %53 = load i32, i32* %week.addr, align 4
  %idxprom95 = sext i32 %53 to i64
  %arrayidx96 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx96, i32 0, i64 %idxprom94
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx97, i32 0, i64 2
  %call99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %arrayidx98) #5
  store i32 0, i32* @current_with_disk, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.93, %land.lhs.true.91, %if.end.87
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.53
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.101, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %55 = load i32, i32* %game, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %game, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @enter_week(%struct._IO_FILE* %output, %struct._IO_FILE* %input, i32 %week) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %input.addr = alloca %struct._IO_FILE*, align 8
  %week.addr = alloca i32, align 4
  %game = alloca i32, align 4
  %resp = alloca i8*, align 8
  %ABORT = alloca i32, align 4
  %team_code = alloca i32, align 4
  %FOUND_GAME = alloca i32, align 4
  %FIRST = alloca i32, align 4
  %SECOND = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  store i32 %week, i32* %week.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.78, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %4 = load i32, i32* %week.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 %4)
  store i32 0, i32* %ABORT, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.160, %entry
  %5 = load i32, i32* %ABORT, align 4
  %tobool = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.161

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %team_code, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end, %while.body
  %6 = load i32, i32* %team_code, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.3
  %7 = load i32, i32* %team_code, align 4
  %cmp4 = icmp eq i32 %7, 29
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond.3
  %8 = load i32, i32* %ABORT, align 4
  %tobool5 = icmp ne i32 %8, 0
  %lnot6 = xor i1 %tobool5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %9 = phi i1 [ false, %lor.lhs.false ], [ %lnot6, %land.rhs ]
  br i1 %9, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call9 = call i8* @get_responce(%struct._IO_FILE* %11)
  store i8* %call9, i8** %resp, align 8
  %call10 = call i32 @end_of_line(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %while.body.7
  %call13 = call i32 @matches(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @responce, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.12, %while.body.7
  store i32 1, i32* %ABORT, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %13 = load i8*, i8** %resp, align 8
  %call15 = call i32 @find_name(%struct._IO_FILE* %12, i8* %13)
  store i32 %call15, i32* %team_code, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.3

while.end:                                        ; preds = %land.end
  store i32 0, i32* %FOUND_GAME, align 4
  store i32 1, i32* %game, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %14 = load i32, i32* %ABORT, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %land.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %15 = load i32, i32* %game, align 4
  %cmp17 = icmp sle i32 %15, 14
  br i1 %cmp17, label %land.rhs.18, label %land.end.21

land.rhs.18:                                      ; preds = %land.lhs.true
  %16 = load i32, i32* %FOUND_GAME, align 4
  %tobool19 = icmp ne i32 %16, 0
  %lnot20 = xor i1 %tobool19, true
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.18, %land.lhs.true, %for.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot20, %land.rhs.18 ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.21
  %18 = load i32, i32* %game, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32, i32* %week.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom22
  %arrayidx23 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i64 2
  %20 = load i32, i32* %arrayidx24, align 4
  %21 = load i32, i32* %team_code, align 4
  %cmp25 = icmp eq i32 %20, %21
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %for.body
  %22 = load i32, i32* %game, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %week.addr, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx29, i32 0, i64 %idxprom27
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx30, i32 0, i64 1
  %24 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp ne i32 %24, 29
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.26
  store i32 2, i32* %FIRST, align 4
  store i32 1, i32* %SECOND, align 4
  store i32 1, i32* %FOUND_GAME, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.26, %for.body
  %25 = load i32, i32* %game, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load i32, i32* %week.addr, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx37, i32 0, i64 %idxprom35
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 1
  %27 = load i32, i32* %arrayidx39, align 4
  %28 = load i32, i32* %team_code, align 4
  %cmp40 = icmp eq i32 %27, %28
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.49

land.lhs.true.41:                                 ; preds = %if.end.34
  %29 = load i32, i32* %game, align 4
  %idxprom42 = sext i32 %29 to i64
  %30 = load i32, i32* %week.addr, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx44, i32 0, i64 %idxprom42
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 2
  %31 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp ne i32 %31, 29
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %FIRST, align 4
  store i32 2, i32* %SECOND, align 4
  store i32 1, i32* %FOUND_GAME, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.41, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %32 = load i32, i32* %game, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %game, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.21
  %33 = load i32, i32* %ABORT, align 4
  %tobool50 = icmp ne i32 %33, 0
  br i1 %tobool50, label %if.end.160, label %if.then.51

if.then.51:                                       ; preds = %for.end
  %34 = load i32, i32* %FOUND_GAME, align 4
  %tobool52 = icmp ne i32 %34, 0
  br i1 %tobool52, label %if.else.58, label %if.then.53

if.then.53:                                       ; preds = %if.then.51
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %36 = load i32, i32* %team_code, align 4
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx55, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx56, i32 0, i32 0
  %37 = load i32, i32* %week.addr, align 4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.86, i32 0, i32 0), i8* %arraydecay, i32 %37)
  br label %if.end.159

if.else.58:                                       ; preds = %if.then.51
  %38 = load i32, i32* %game, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %game, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %40 = load i32, i32* %FIRST, align 4
  %idxprom59 = sext i32 %40 to i64
  %41 = load i32, i32* %game, align 4
  %idxprom60 = sext i32 %41 to i64
  %42 = load i32, i32* %week.addr, align 4
  %idxprom61 = sext i32 %42 to i64
  %arrayidx62 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx62, i32 0, i64 %idxprom60
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx63, i32 0, i64 %idxprom59
  %43 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %43 to i64
  %arrayidx66 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx66, i32 0, i64 1
  %arraydecay68 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx67, i32 0, i32 0
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay68)
  %44 = load i32, i32* %FIRST, align 4
  %idxprom70 = sext i32 %44 to i64
  %45 = load i32, i32* %game, align 4
  %idxprom71 = sext i32 %45 to i64
  %46 = load i32, i32* %week.addr, align 4
  %idxprom72 = sext i32 %46 to i64
  %arrayidx73 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx73, i32 0, i64 %idxprom71
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx74, i32 0, i64 %idxprom70
  %47 = load i32, i32* %arrayidx75, align 4
  %cmp76 = icmp slt i32 %47, 0
  br i1 %cmp76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else.58
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.87

if.else.79:                                       ; preds = %if.else.58
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %50 = load i32, i32* %FIRST, align 4
  %idxprom80 = sext i32 %50 to i64
  %51 = load i32, i32* %game, align 4
  %idxprom81 = sext i32 %51 to i64
  %52 = load i32, i32* %week.addr, align 4
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx83, i32 0, i64 %idxprom81
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx84, i32 0, i64 %idxprom80
  %53 = load i32, i32* %arrayidx85, align 4
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 %53)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.79, %if.then.77
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call88 = call i8* @get_responce(%struct._IO_FILE* %54)
  store i8* %call88, i8** %resp, align 8
  %55 = load i8*, i8** %resp, align 8
  %call89 = call i32 @matches(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.87
  store i32 1, i32* %ABORT, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.87
  %56 = load i8*, i8** %resp, align 8
  %57 = load i8, i8* %56, align 1
  %conv = sext i8 %57 to i32
  %cmp93 = icmp ne i32 %conv, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.105

land.lhs.true.95:                                 ; preds = %if.end.92
  %58 = load i32, i32* %ABORT, align 4
  %tobool96 = icmp ne i32 %58, 0
  br i1 %tobool96, label %if.end.105, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.95
  %59 = load i8*, i8** %resp, align 8
  %60 = load i32, i32* %FIRST, align 4
  %idxprom98 = sext i32 %60 to i64
  %61 = load i32, i32* %game, align 4
  %idxprom99 = sext i32 %61 to i64
  %62 = load i32, i32* %week.addr, align 4
  %idxprom100 = sext i32 %62 to i64
  %arrayidx101 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx101, i32 0, i64 %idxprom99
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx102, i32 0, i64 %idxprom98
  %call104 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %arrayidx103) #5
  store i32 0, i32* @current_with_disk, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.97, %land.lhs.true.95, %if.end.92
  %63 = load i32, i32* %ABORT, align 4
  %tobool106 = icmp ne i32 %63, 0
  br i1 %tobool106, label %if.end.157, label %if.then.107

if.then.107:                                      ; preds = %if.end.105
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %65 = load i32, i32* %SECOND, align 4
  %idxprom108 = sext i32 %65 to i64
  %66 = load i32, i32* %game, align 4
  %idxprom109 = sext i32 %66 to i64
  %67 = load i32, i32* %week.addr, align 4
  %idxprom110 = sext i32 %67 to i64
  %arrayidx111 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx111, i32 0, i64 %idxprom109
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx112, i32 0, i64 %idxprom108
  %68 = load i32, i32* %arrayidx113, align 4
  %idxprom114 = sext i32 %68 to i64
  %arrayidx115 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx115, i32 0, i64 1
  %arraydecay117 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx116, i32 0, i32 0
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay117)
  %69 = load i32, i32* %SECOND, align 4
  %idxprom119 = sext i32 %69 to i64
  %70 = load i32, i32* %game, align 4
  %idxprom120 = sext i32 %70 to i64
  %71 = load i32, i32* %week.addr, align 4
  %idxprom121 = sext i32 %71 to i64
  %arrayidx122 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx122, i32 0, i64 %idxprom120
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx123, i32 0, i64 %idxprom119
  %72 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp slt i32 %72, 0
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.then.107
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.137

if.else.129:                                      ; preds = %if.then.107
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %75 = load i32, i32* %SECOND, align 4
  %idxprom130 = sext i32 %75 to i64
  %76 = load i32, i32* %game, align 4
  %idxprom131 = sext i32 %76 to i64
  %77 = load i32, i32* %week.addr, align 4
  %idxprom132 = sext i32 %77 to i64
  %arrayidx133 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx133, i32 0, i64 %idxprom131
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx134, i32 0, i64 %idxprom130
  %78 = load i32, i32* %arrayidx135, align 4
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 %78)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.129, %if.then.127
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call138 = call i8* @get_responce(%struct._IO_FILE* %79)
  store i8* %call138, i8** %resp, align 8
  %80 = load i8*, i8** %resp, align 8
  %call139 = call i32 @matches(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.137
  store i32 1, i32* %ABORT, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.137
  %81 = load i8*, i8** %resp, align 8
  %82 = load i8, i8* %81, align 1
  %conv143 = sext i8 %82 to i32
  %cmp144 = icmp ne i32 %conv143, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.156

land.lhs.true.146:                                ; preds = %if.end.142
  %83 = load i32, i32* %ABORT, align 4
  %tobool147 = icmp ne i32 %83, 0
  br i1 %tobool147, label %if.end.156, label %if.then.148

if.then.148:                                      ; preds = %land.lhs.true.146
  %84 = load i8*, i8** %resp, align 8
  %85 = load i32, i32* %SECOND, align 4
  %idxprom149 = sext i32 %85 to i64
  %86 = load i32, i32* %game, align 4
  %idxprom150 = sext i32 %86 to i64
  %87 = load i32, i32* %week.addr, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx152, i32 0, i64 %idxprom150
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx153, i32 0, i64 %idxprom149
  %call155 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %arrayidx154) #5
  store i32 0, i32* @current_with_disk, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.148, %land.lhs.true.146, %if.end.142
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.105
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.157, %if.then.53
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %for.end
  br label %while.cond

while.end.161:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_rankings(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.87, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.88, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.89, i32 0, i32 0))
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %5, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %7 = load i32, i32* %t, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx4, i32 0, i32 0
  %8 = load i32, i32* %t, align 4
  %call5 = call i32 @a_champ(i32 %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %t, align 4
  %call6 = call i32 @a_wild_card(i32 %9)
  %tobool7 = icmp ne i32 %call6, 0
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %10 = load i32, i32* %t, align 4
  %call9 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 %10)
  %11 = load i32, i32* %t, align 4
  %call10 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 %11)
  %12 = load i32, i32* %t, align 4
  %call11 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks, i32 0, i32 0), i32 %12)
  %13 = load i32, i32* %t, align 4
  %call12 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i32 0), i32 %13)
  %14 = load i32, i32* %t, align 4
  %call13 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %t, align 4
  %call14 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i32 0), i32 %15)
  %16 = load i32, i32* %t, align 4
  %call15 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks, i32 0, i32 0), i32 %16)
  %17 = load i32, i32* %t, align 4
  %call16 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i32 0), i32 %17)
  %18 = load i32, i32* %t, align 4
  %add = add nsw i32 %18, 14
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx18, i32 0, i64 1
  %arraydecay20 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx19, i32 0, i32 0
  %19 = load i32, i32* %t, align 4
  %add21 = add nsw i32 %19, 14
  %call22 = call i32 @a_champ(i32 %add21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end
  br label %cond.end.30

cond.false.25:                                    ; preds = %cond.end
  %20 = load i32, i32* %t, align 4
  %add26 = add nsw i32 %20, 14
  %call27 = call i32 @a_wild_card(i32 %add26)
  %tobool28 = icmp ne i32 %call27, 0
  %cond29 = select i1 %tobool28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.25, %cond.true.24
  %cond31 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.24 ], [ %cond29, %cond.false.25 ]
  %21 = load i32, i32* %t, align 4
  %add32 = add nsw i32 %21, 14
  %call33 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 %add32)
  %sub = sub nsw i32 %call33, 14
  %22 = load i32, i32* %t, align 4
  %add34 = add nsw i32 %22, 14
  %call35 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @abs_standings, i32 0, i32 0), i32 %add34)
  %23 = load i32, i32* %t, align 4
  %add36 = add nsw i32 %23, 14
  %call37 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks, i32 0, i32 0), i32 %add36)
  %sub38 = sub nsw i32 %call37, 14
  %24 = load i32, i32* %t, align 4
  %add39 = add nsw i32 %24, 14
  %call40 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i32 0), i32 %add39)
  %25 = load i32, i32* %t, align 4
  %add41 = add nsw i32 %25, 14
  %call42 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks, i32 0, i32 0), i32 %add41)
  %sub43 = sub nsw i32 %call42, 14
  %26 = load i32, i32* %t, align 4
  %add44 = add nsw i32 %26, 14
  %call45 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i32 0), i32 %add44)
  %27 = load i32, i32* %t, align 4
  %add46 = add nsw i32 %27, 14
  %call47 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks, i32 0, i32 0), i32 %add46)
  %sub48 = sub nsw i32 %call47, 14
  %28 = load i32, i32* %t, align 4
  %add49 = add nsw i32 %28, 14
  %call50 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i32 0), i32 %add49)
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.90, i32 0, i32 0), i8* %arraydecay, i8* %cond8, i32 %call9, i32 %call10, i32 %call11, i32 %call12, i32 %call13, i32 %call14, i32 %call15, i32 %call16, i8* %arraydecay20, i8* %cond31, i32 %sub, i32 %call35, i32 %sub38, i32 %call40, i32 %sub43, i32 %call45, i32 %sub48, i32 %call50)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.30
  %29 = load i32, i32* %t, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_defence(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.91, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0))
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %4, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %6 = load i32, i32* %t, align 4
  %7 = load i32, i32* %t, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %t, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %t, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom11
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 0
  %13 = load i32, i32* %wins, align 4
  %14 = load i32, i32* %t, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom15
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx16, i32 0, i32 1
  %16 = load i32, i32* %loses, align 4
  %add = add nsw i32 %13, %16
  %17 = load i32, i32* %t, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom19
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx20, i32 0, i32 2
  %19 = load i32, i32* %ties, align 4
  %add21 = add nsw i32 %add, %19
  %cmp22 = icmp eq i32 %add21, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %t, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom25
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx26, i32 0, i32 4
  %22 = load i32, i32* %points_against, align 4
  %conv = sitofp i32 %22 to double
  %23 = load i32, i32* %t, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom29
  %wins31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 0
  %25 = load i32, i32* %wins31, align 4
  %26 = load i32, i32* %t, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom34
  %loses36 = getelementptr inbounds %struct.info, %struct.info* %arrayidx35, i32 0, i32 1
  %28 = load i32, i32* %loses36, align 4
  %add37 = add nsw i32 %25, %28
  %29 = load i32, i32* %t, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom38
  %30 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom40
  %ties42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 2
  %31 = load i32, i32* %ties42, align 4
  %add43 = add nsw i32 %add37, %31
  %conv44 = sitofp i32 %add43 to double
  %div = fdiv double %conv, %conv44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %32 = load i32, i32* %t, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom45
  %33 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom47
  %points_against49 = getelementptr inbounds %struct.info, %struct.info* %arrayidx48, i32 0, i32 4
  %34 = load i32, i32* %points_against49, align 4
  %35 = load i32, i32* %t, align 4
  %36 = load i32, i32* %t, align 4
  %add50 = add nsw i32 %36, 14
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom51
  %37 = load i32, i32* %arrayidx52, align 4
  %call53 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %t, align 4
  %add54 = add nsw i32 %38, 14
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom55
  %39 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx58, i32 0, i64 1
  %arraydecay60 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx59, i32 0, i32 0
  %40 = load i32, i32* %t, align 4
  %add61 = add nsw i32 %40, 14
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom62
  %41 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %41 to i64
  %arrayidx65 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom64
  %wins66 = getelementptr inbounds %struct.info, %struct.info* %arrayidx65, i32 0, i32 0
  %42 = load i32, i32* %wins66, align 4
  %43 = load i32, i32* %t, align 4
  %add67 = add nsw i32 %43, 14
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom68
  %44 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom70
  %loses72 = getelementptr inbounds %struct.info, %struct.info* %arrayidx71, i32 0, i32 1
  %45 = load i32, i32* %loses72, align 4
  %add73 = add nsw i32 %42, %45
  %46 = load i32, i32* %t, align 4
  %add74 = add nsw i32 %46, 14
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom75
  %47 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom77
  %ties79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 2
  %48 = load i32, i32* %ties79, align 4
  %add80 = add nsw i32 %add73, %48
  %cmp81 = icmp eq i32 %add80, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  br label %cond.end.114

cond.false.84:                                    ; preds = %cond.end
  %49 = load i32, i32* %t, align 4
  %add85 = add nsw i32 %49, 14
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom86
  %50 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %50 to i64
  %arrayidx89 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom88
  %points_against90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 4
  %51 = load i32, i32* %points_against90, align 4
  %conv91 = sitofp i32 %51 to double
  %52 = load i32, i32* %t, align 4
  %add92 = add nsw i32 %52, 14
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom93
  %53 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %53 to i64
  %arrayidx96 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom95
  %wins97 = getelementptr inbounds %struct.info, %struct.info* %arrayidx96, i32 0, i32 0
  %54 = load i32, i32* %wins97, align 4
  %55 = load i32, i32* %t, align 4
  %add98 = add nsw i32 %55, 14
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom99
  %56 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %56 to i64
  %arrayidx102 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom101
  %loses103 = getelementptr inbounds %struct.info, %struct.info* %arrayidx102, i32 0, i32 1
  %57 = load i32, i32* %loses103, align 4
  %add104 = add nsw i32 %54, %57
  %58 = load i32, i32* %t, align 4
  %add105 = add nsw i32 %58, 14
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom106
  %59 = load i32, i32* %arrayidx107, align 4
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom108
  %ties110 = getelementptr inbounds %struct.info, %struct.info* %arrayidx109, i32 0, i32 2
  %60 = load i32, i32* %ties110, align 4
  %add111 = add nsw i32 %add104, %60
  %conv112 = sitofp i32 %add111 to double
  %div113 = fdiv double %conv91, %conv112
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.84, %cond.true.83
  %cond115 = phi double [ 0.000000e+00, %cond.true.83 ], [ %div113, %cond.false.84 ]
  %61 = load i32, i32* %t, align 4
  %add116 = add nsw i32 %61, 14
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom117
  %62 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %62 to i64
  %arrayidx120 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom119
  %points_against121 = getelementptr inbounds %struct.info, %struct.info* %arrayidx120, i32 0, i32 4
  %63 = load i32, i32* %points_against121, align 4
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.93, i32 0, i32 0), i32 %6, i32 %call3, i8* %arraydecay, double %cond, i32 %34, i32 %35, i32 %call53, i8* %arraydecay60, double %cond115, i32 %63)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.114
  %64 = load i32, i32* %t, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_offence(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.94, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0))
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %4, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %6 = load i32, i32* %t, align 4
  %7 = load i32, i32* %t, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %t, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %t, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom11
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 0
  %13 = load i32, i32* %wins, align 4
  %14 = load i32, i32* %t, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom15
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx16, i32 0, i32 1
  %16 = load i32, i32* %loses, align 4
  %add = add nsw i32 %13, %16
  %17 = load i32, i32* %t, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom19
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx20, i32 0, i32 2
  %19 = load i32, i32* %ties, align 4
  %add21 = add nsw i32 %add, %19
  %cmp22 = icmp eq i32 %add21, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %t, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom25
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx26, i32 0, i32 3
  %22 = load i32, i32* %points_for, align 4
  %conv = sitofp i32 %22 to double
  %23 = load i32, i32* %t, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom29
  %wins31 = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 0
  %25 = load i32, i32* %wins31, align 4
  %26 = load i32, i32* %t, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom34
  %loses36 = getelementptr inbounds %struct.info, %struct.info* %arrayidx35, i32 0, i32 1
  %28 = load i32, i32* %loses36, align 4
  %add37 = add nsw i32 %25, %28
  %29 = load i32, i32* %t, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom38
  %30 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom40
  %ties42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 2
  %31 = load i32, i32* %ties42, align 4
  %add43 = add nsw i32 %add37, %31
  %conv44 = sitofp i32 %add43 to double
  %div = fdiv double %conv, %conv44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %32 = load i32, i32* %t, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom45
  %33 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom47
  %points_for49 = getelementptr inbounds %struct.info, %struct.info* %arrayidx48, i32 0, i32 3
  %34 = load i32, i32* %points_for49, align 4
  %35 = load i32, i32* %t, align 4
  %36 = load i32, i32* %t, align 4
  %add50 = add nsw i32 %36, 14
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom51
  %37 = load i32, i32* %arrayidx52, align 4
  %call53 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %t, align 4
  %add54 = add nsw i32 %38, 14
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom55
  %39 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx58, i32 0, i64 1
  %arraydecay60 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx59, i32 0, i32 0
  %40 = load i32, i32* %t, align 4
  %add61 = add nsw i32 %40, 14
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom62
  %41 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %41 to i64
  %arrayidx65 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom64
  %wins66 = getelementptr inbounds %struct.info, %struct.info* %arrayidx65, i32 0, i32 0
  %42 = load i32, i32* %wins66, align 4
  %43 = load i32, i32* %t, align 4
  %add67 = add nsw i32 %43, 14
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom68
  %44 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom70
  %loses72 = getelementptr inbounds %struct.info, %struct.info* %arrayidx71, i32 0, i32 1
  %45 = load i32, i32* %loses72, align 4
  %add73 = add nsw i32 %42, %45
  %46 = load i32, i32* %t, align 4
  %add74 = add nsw i32 %46, 14
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom75
  %47 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom77
  %ties79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 2
  %48 = load i32, i32* %ties79, align 4
  %add80 = add nsw i32 %add73, %48
  %cmp81 = icmp eq i32 %add80, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  br label %cond.end.114

cond.false.84:                                    ; preds = %cond.end
  %49 = load i32, i32* %t, align 4
  %add85 = add nsw i32 %49, 14
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom86
  %50 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %50 to i64
  %arrayidx89 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom88
  %points_for90 = getelementptr inbounds %struct.info, %struct.info* %arrayidx89, i32 0, i32 3
  %51 = load i32, i32* %points_for90, align 4
  %conv91 = sitofp i32 %51 to double
  %52 = load i32, i32* %t, align 4
  %add92 = add nsw i32 %52, 14
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom93
  %53 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %53 to i64
  %arrayidx96 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom95
  %wins97 = getelementptr inbounds %struct.info, %struct.info* %arrayidx96, i32 0, i32 0
  %54 = load i32, i32* %wins97, align 4
  %55 = load i32, i32* %t, align 4
  %add98 = add nsw i32 %55, 14
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom99
  %56 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %56 to i64
  %arrayidx102 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom101
  %loses103 = getelementptr inbounds %struct.info, %struct.info* %arrayidx102, i32 0, i32 1
  %57 = load i32, i32* %loses103, align 4
  %add104 = add nsw i32 %54, %57
  %58 = load i32, i32* %t, align 4
  %add105 = add nsw i32 %58, 14
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom106
  %59 = load i32, i32* %arrayidx107, align 4
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom108
  %ties110 = getelementptr inbounds %struct.info, %struct.info* %arrayidx109, i32 0, i32 2
  %60 = load i32, i32* %ties110, align 4
  %add111 = add nsw i32 %add104, %60
  %conv112 = sitofp i32 %add111 to double
  %div113 = fdiv double %conv91, %conv112
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.84, %cond.true.83
  %cond115 = phi double [ 0.000000e+00, %cond.true.83 ], [ %div113, %cond.false.84 ]
  %61 = load i32, i32* %t, align 4
  %add116 = add nsw i32 %61, 14
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom117
  %62 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %62 to i64
  %arrayidx120 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom119
  %points_for121 = getelementptr inbounds %struct.info, %struct.info* %arrayidx120, i32 0, i32 3
  %63 = load i32, i32* %points_for121, align 4
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.93, i32 0, i32 0), i32 %6, i32 %call3, i8* %arraydecay, double %cond, i32 %34, i32 %35, i32 %call53, i8* %arraydecay60, double %cond115, i32 %63)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.114
  %64 = load i32, i32* %t, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_net(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.95, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.92, i32 0, i32 0))
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %4, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %6 = load i32, i32* %t, align 4
  %7 = load i32, i32* %t, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %t, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %t, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom11
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 0
  %13 = load i32, i32* %wins, align 4
  %14 = load i32, i32* %t, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom15
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx16, i32 0, i32 1
  %16 = load i32, i32* %loses, align 4
  %add = add nsw i32 %13, %16
  %17 = load i32, i32* %t, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom19
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx20, i32 0, i32 2
  %19 = load i32, i32* %ties, align 4
  %add21 = add nsw i32 %add, %19
  %cmp22 = icmp eq i32 %add21, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %t, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom25
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx26, i32 0, i32 3
  %22 = load i32, i32* %points_for, align 4
  %23 = load i32, i32* %t, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom29
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx30, i32 0, i32 4
  %25 = load i32, i32* %points_against, align 4
  %sub = sub nsw i32 %22, %25
  %conv = sitofp i32 %sub to double
  %26 = load i32, i32* %t, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom31
  %27 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom33
  %wins35 = getelementptr inbounds %struct.info, %struct.info* %arrayidx34, i32 0, i32 0
  %28 = load i32, i32* %wins35, align 4
  %29 = load i32, i32* %t, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom36
  %30 = load i32, i32* %arrayidx37, align 4
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom38
  %loses40 = getelementptr inbounds %struct.info, %struct.info* %arrayidx39, i32 0, i32 1
  %31 = load i32, i32* %loses40, align 4
  %add41 = add nsw i32 %28, %31
  %32 = load i32, i32* %t, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom44
  %ties46 = getelementptr inbounds %struct.info, %struct.info* %arrayidx45, i32 0, i32 2
  %34 = load i32, i32* %ties46, align 4
  %add47 = add nsw i32 %add41, %34
  %conv48 = sitofp i32 %add47 to double
  %div = fdiv double %conv, %conv48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %35 = load i32, i32* %t, align 4
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom49
  %36 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom51
  %points_for53 = getelementptr inbounds %struct.info, %struct.info* %arrayidx52, i32 0, i32 3
  %37 = load i32, i32* %points_for53, align 4
  %38 = load i32, i32* %t, align 4
  %idxprom54 = sext i32 %38 to i64
  %arrayidx55 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom54
  %39 = load i32, i32* %arrayidx55, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom56
  %points_against58 = getelementptr inbounds %struct.info, %struct.info* %arrayidx57, i32 0, i32 4
  %40 = load i32, i32* %points_against58, align 4
  %sub59 = sub nsw i32 %37, %40
  %41 = load i32, i32* %t, align 4
  %42 = load i32, i32* %t, align 4
  %add60 = add nsw i32 %42, 14
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom61
  %43 = load i32, i32* %arrayidx62, align 4
  %call63 = call i32 @find_teams_rank(i32* getelementptr inbounds ([29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i32 0), i32 %43)
  %44 = load i32, i32* %t, align 4
  %add64 = add nsw i32 %44, 14
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom65
  %45 = load i32, i32* %arrayidx66, align 4
  %idxprom67 = sext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx68, i32 0, i64 1
  %arraydecay70 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx69, i32 0, i32 0
  %46 = load i32, i32* %t, align 4
  %add71 = add nsw i32 %46, 14
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom72
  %47 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom74
  %wins76 = getelementptr inbounds %struct.info, %struct.info* %arrayidx75, i32 0, i32 0
  %48 = load i32, i32* %wins76, align 4
  %49 = load i32, i32* %t, align 4
  %add77 = add nsw i32 %49, 14
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom78
  %50 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom80
  %loses82 = getelementptr inbounds %struct.info, %struct.info* %arrayidx81, i32 0, i32 1
  %51 = load i32, i32* %loses82, align 4
  %add83 = add nsw i32 %48, %51
  %52 = load i32, i32* %t, align 4
  %add84 = add nsw i32 %52, 14
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom85
  %53 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom87
  %ties89 = getelementptr inbounds %struct.info, %struct.info* %arrayidx88, i32 0, i32 2
  %54 = load i32, i32* %ties89, align 4
  %add90 = add nsw i32 %add83, %54
  %cmp91 = icmp eq i32 %add90, 0
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %cond.end
  br label %cond.end.131

cond.false.94:                                    ; preds = %cond.end
  %55 = load i32, i32* %t, align 4
  %add95 = add nsw i32 %55, 14
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom96
  %56 = load i32, i32* %arrayidx97, align 4
  %idxprom98 = sext i32 %56 to i64
  %arrayidx99 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom98
  %points_for100 = getelementptr inbounds %struct.info, %struct.info* %arrayidx99, i32 0, i32 3
  %57 = load i32, i32* %points_for100, align 4
  %58 = load i32, i32* %t, align 4
  %add101 = add nsw i32 %58, 14
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom102
  %59 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %59 to i64
  %arrayidx105 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom104
  %points_against106 = getelementptr inbounds %struct.info, %struct.info* %arrayidx105, i32 0, i32 4
  %60 = load i32, i32* %points_against106, align 4
  %sub107 = sub nsw i32 %57, %60
  %conv108 = sitofp i32 %sub107 to double
  %61 = load i32, i32* %t, align 4
  %add109 = add nsw i32 %61, 14
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom110
  %62 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %62 to i64
  %arrayidx113 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom112
  %wins114 = getelementptr inbounds %struct.info, %struct.info* %arrayidx113, i32 0, i32 0
  %63 = load i32, i32* %wins114, align 4
  %64 = load i32, i32* %t, align 4
  %add115 = add nsw i32 %64, 14
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom116
  %65 = load i32, i32* %arrayidx117, align 4
  %idxprom118 = sext i32 %65 to i64
  %arrayidx119 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom118
  %loses120 = getelementptr inbounds %struct.info, %struct.info* %arrayidx119, i32 0, i32 1
  %66 = load i32, i32* %loses120, align 4
  %add121 = add nsw i32 %63, %66
  %67 = load i32, i32* %t, align 4
  %add122 = add nsw i32 %67, 14
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom123
  %68 = load i32, i32* %arrayidx124, align 4
  %idxprom125 = sext i32 %68 to i64
  %arrayidx126 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom125
  %ties127 = getelementptr inbounds %struct.info, %struct.info* %arrayidx126, i32 0, i32 2
  %69 = load i32, i32* %ties127, align 4
  %add128 = add nsw i32 %add121, %69
  %conv129 = sitofp i32 %add128 to double
  %div130 = fdiv double %conv108, %conv129
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.94, %cond.true.93
  %cond132 = phi double [ 0.000000e+00, %cond.true.93 ], [ %div130, %cond.false.94 ]
  %70 = load i32, i32* %t, align 4
  %add133 = add nsw i32 %70, 14
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom134
  %71 = load i32, i32* %arrayidx135, align 4
  %idxprom136 = sext i32 %71 to i64
  %arrayidx137 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom136
  %points_for138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 3
  %72 = load i32, i32* %points_for138, align 4
  %73 = load i32, i32* %t, align 4
  %add139 = add nsw i32 %73, 14
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom140
  %74 = load i32, i32* %arrayidx141, align 4
  %idxprom142 = sext i32 %74 to i64
  %arrayidx143 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom142
  %points_against144 = getelementptr inbounds %struct.info, %struct.info* %arrayidx143, i32 0, i32 4
  %75 = load i32, i32* %points_against144, align 4
  %sub145 = sub nsw i32 %72, %75
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.96, i32 0, i32 0), i32 %6, i32 %call3, i8* %arraydecay, double %cond, i32 %sub59, i32 %41, i32 %call63, i8* %arraydecay70, double %cond132, i32 %sub145)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.131
  %76 = load i32, i32* %t, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_standings(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %t = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.97, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.98, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %7, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %9 = load i32, i32* %t, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %t, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %call11 = call i32 @a_champ(i32 %12)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i32, i32* %t, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 @a_wild_card(i32 %14)
  %tobool15 = icmp ne i32 %call14, 0
  %cond = select i1 %tobool15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  %15 = load i32, i32* %t, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom17
  %16 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom19
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx20, i32 0, i32 0
  %17 = load i32, i32* %wins, align 4
  %18 = load i32, i32* %t, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom21
  %19 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom23
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx24, i32 0, i32 1
  %20 = load i32, i32* %loses, align 4
  %21 = load i32, i32* %t, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom27
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 2
  %23 = load i32, i32* %ties, align 4
  %24 = load i32, i32* %t, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom29
  %25 = load i32, i32* %arrayidx30, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom31
  %wins33 = getelementptr inbounds %struct.info, %struct.info* %arrayidx32, i32 0, i32 0
  %26 = load i32, i32* %wins33, align 4
  %27 = load i32, i32* %t, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom34
  %28 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom36
  %loses38 = getelementptr inbounds %struct.info, %struct.info* %arrayidx37, i32 0, i32 1
  %29 = load i32, i32* %loses38, align 4
  %add = add nsw i32 %26, %29
  %30 = load i32, i32* %t, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom39
  %31 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom41
  %ties43 = getelementptr inbounds %struct.info, %struct.info* %arrayidx42, i32 0, i32 2
  %32 = load i32, i32* %ties43, align 4
  %add44 = add nsw i32 %add, %32
  %cmp45 = icmp eq i32 %add44, 0
  br i1 %cmp45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end
  br label %cond.end.78

cond.false.47:                                    ; preds = %cond.end
  %33 = load i32, i32* %t, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom48
  %34 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom50
  %wins52 = getelementptr inbounds %struct.info, %struct.info* %arrayidx51, i32 0, i32 0
  %35 = load i32, i32* %wins52, align 4
  %conv = sitofp i32 %35 to double
  %36 = load i32, i32* %t, align 4
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom53
  %37 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom55
  %ties57 = getelementptr inbounds %struct.info, %struct.info* %arrayidx56, i32 0, i32 2
  %38 = load i32, i32* %ties57, align 4
  %conv58 = sitofp i32 %38 to double
  %mul = fmul double 5.000000e-01, %conv58
  %add59 = fadd double %conv, %mul
  %39 = load i32, i32* %t, align 4
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom60
  %40 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom62
  %wins64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 0
  %41 = load i32, i32* %wins64, align 4
  %42 = load i32, i32* %t, align 4
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom65
  %43 = load i32, i32* %arrayidx66, align 4
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom67
  %loses69 = getelementptr inbounds %struct.info, %struct.info* %arrayidx68, i32 0, i32 1
  %44 = load i32, i32* %loses69, align 4
  %add70 = add nsw i32 %41, %44
  %45 = load i32, i32* %t, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom71
  %46 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %46 to i64
  %arrayidx74 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom73
  %ties75 = getelementptr inbounds %struct.info, %struct.info* %arrayidx74, i32 0, i32 2
  %47 = load i32, i32* %ties75, align 4
  %add76 = add nsw i32 %add70, %47
  %conv77 = sitofp i32 %add76 to double
  %div = fdiv double %add59, %conv77
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.47, %cond.true.46
  %cond79 = phi double [ 0.000000e+00, %cond.true.46 ], [ %div, %cond.false.47 ]
  %cmp80 = fcmp oge double %cond79, 1.000000e+00
  %cond82 = select i1 %cmp80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %48 = load i32, i32* %t, align 4
  %idxprom83 = sext i32 %48 to i64
  %arrayidx84 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom83
  %49 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %49 to i64
  %arrayidx86 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom85
  %wins87 = getelementptr inbounds %struct.info, %struct.info* %arrayidx86, i32 0, i32 0
  %50 = load i32, i32* %wins87, align 4
  %51 = load i32, i32* %t, align 4
  %idxprom88 = sext i32 %51 to i64
  %arrayidx89 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom88
  %52 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom90
  %loses92 = getelementptr inbounds %struct.info, %struct.info* %arrayidx91, i32 0, i32 1
  %53 = load i32, i32* %loses92, align 4
  %add93 = add nsw i32 %50, %53
  %54 = load i32, i32* %t, align 4
  %idxprom94 = sext i32 %54 to i64
  %arrayidx95 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom94
  %55 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %55 to i64
  %arrayidx97 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom96
  %ties98 = getelementptr inbounds %struct.info, %struct.info* %arrayidx97, i32 0, i32 2
  %56 = load i32, i32* %ties98, align 4
  %add99 = add nsw i32 %add93, %56
  %cmp100 = icmp eq i32 %add99, 0
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.end.78
  br label %cond.end.137

cond.false.103:                                   ; preds = %cond.end.78
  %57 = load i32, i32* %t, align 4
  %idxprom104 = sext i32 %57 to i64
  %arrayidx105 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom104
  %58 = load i32, i32* %arrayidx105, align 4
  %idxprom106 = sext i32 %58 to i64
  %arrayidx107 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom106
  %wins108 = getelementptr inbounds %struct.info, %struct.info* %arrayidx107, i32 0, i32 0
  %59 = load i32, i32* %wins108, align 4
  %conv109 = sitofp i32 %59 to double
  %60 = load i32, i32* %t, align 4
  %idxprom110 = sext i32 %60 to i64
  %arrayidx111 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom110
  %61 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %61 to i64
  %arrayidx113 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom112
  %ties114 = getelementptr inbounds %struct.info, %struct.info* %arrayidx113, i32 0, i32 2
  %62 = load i32, i32* %ties114, align 4
  %conv115 = sitofp i32 %62 to double
  %mul116 = fmul double 5.000000e-01, %conv115
  %add117 = fadd double %conv109, %mul116
  %63 = load i32, i32* %t, align 4
  %idxprom118 = sext i32 %63 to i64
  %arrayidx119 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom118
  %64 = load i32, i32* %arrayidx119, align 4
  %idxprom120 = sext i32 %64 to i64
  %arrayidx121 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom120
  %wins122 = getelementptr inbounds %struct.info, %struct.info* %arrayidx121, i32 0, i32 0
  %65 = load i32, i32* %wins122, align 4
  %66 = load i32, i32* %t, align 4
  %idxprom123 = sext i32 %66 to i64
  %arrayidx124 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom123
  %67 = load i32, i32* %arrayidx124, align 4
  %idxprom125 = sext i32 %67 to i64
  %arrayidx126 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom125
  %loses127 = getelementptr inbounds %struct.info, %struct.info* %arrayidx126, i32 0, i32 1
  %68 = load i32, i32* %loses127, align 4
  %add128 = add nsw i32 %65, %68
  %69 = load i32, i32* %t, align 4
  %idxprom129 = sext i32 %69 to i64
  %arrayidx130 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom129
  %70 = load i32, i32* %arrayidx130, align 4
  %idxprom131 = sext i32 %70 to i64
  %arrayidx132 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom131
  %ties133 = getelementptr inbounds %struct.info, %struct.info* %arrayidx132, i32 0, i32 2
  %71 = load i32, i32* %ties133, align 4
  %add134 = add nsw i32 %add128, %71
  %conv135 = sitofp i32 %add134 to double
  %div136 = fdiv double %add117, %conv135
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.103, %cond.true.102
  %cond138 = phi double [ 0.000000e+00, %cond.true.102 ], [ %div136, %cond.false.103 ]
  %cmp139 = fcmp oge double %cond138, 1.000000e+00
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %cond.end.137
  br label %cond.end.202

cond.false.142:                                   ; preds = %cond.end.137
  %72 = load i32, i32* %t, align 4
  %idxprom143 = sext i32 %72 to i64
  %arrayidx144 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom143
  %73 = load i32, i32* %arrayidx144, align 4
  %idxprom145 = sext i32 %73 to i64
  %arrayidx146 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom145
  %wins147 = getelementptr inbounds %struct.info, %struct.info* %arrayidx146, i32 0, i32 0
  %74 = load i32, i32* %wins147, align 4
  %75 = load i32, i32* %t, align 4
  %idxprom148 = sext i32 %75 to i64
  %arrayidx149 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom148
  %76 = load i32, i32* %arrayidx149, align 4
  %idxprom150 = sext i32 %76 to i64
  %arrayidx151 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom150
  %loses152 = getelementptr inbounds %struct.info, %struct.info* %arrayidx151, i32 0, i32 1
  %77 = load i32, i32* %loses152, align 4
  %add153 = add nsw i32 %74, %77
  %78 = load i32, i32* %t, align 4
  %idxprom154 = sext i32 %78 to i64
  %arrayidx155 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom154
  %79 = load i32, i32* %arrayidx155, align 4
  %idxprom156 = sext i32 %79 to i64
  %arrayidx157 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom156
  %ties158 = getelementptr inbounds %struct.info, %struct.info* %arrayidx157, i32 0, i32 2
  %80 = load i32, i32* %ties158, align 4
  %add159 = add nsw i32 %add153, %80
  %cmp160 = icmp eq i32 %add159, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %cond.false.142
  br label %cond.end.197

cond.false.163:                                   ; preds = %cond.false.142
  %81 = load i32, i32* %t, align 4
  %idxprom164 = sext i32 %81 to i64
  %arrayidx165 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom164
  %82 = load i32, i32* %arrayidx165, align 4
  %idxprom166 = sext i32 %82 to i64
  %arrayidx167 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom166
  %wins168 = getelementptr inbounds %struct.info, %struct.info* %arrayidx167, i32 0, i32 0
  %83 = load i32, i32* %wins168, align 4
  %conv169 = sitofp i32 %83 to double
  %84 = load i32, i32* %t, align 4
  %idxprom170 = sext i32 %84 to i64
  %arrayidx171 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom170
  %85 = load i32, i32* %arrayidx171, align 4
  %idxprom172 = sext i32 %85 to i64
  %arrayidx173 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom172
  %ties174 = getelementptr inbounds %struct.info, %struct.info* %arrayidx173, i32 0, i32 2
  %86 = load i32, i32* %ties174, align 4
  %conv175 = sitofp i32 %86 to double
  %mul176 = fmul double 5.000000e-01, %conv175
  %add177 = fadd double %conv169, %mul176
  %87 = load i32, i32* %t, align 4
  %idxprom178 = sext i32 %87 to i64
  %arrayidx179 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom178
  %88 = load i32, i32* %arrayidx179, align 4
  %idxprom180 = sext i32 %88 to i64
  %arrayidx181 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom180
  %wins182 = getelementptr inbounds %struct.info, %struct.info* %arrayidx181, i32 0, i32 0
  %89 = load i32, i32* %wins182, align 4
  %90 = load i32, i32* %t, align 4
  %idxprom183 = sext i32 %90 to i64
  %arrayidx184 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom183
  %91 = load i32, i32* %arrayidx184, align 4
  %idxprom185 = sext i32 %91 to i64
  %arrayidx186 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom185
  %loses187 = getelementptr inbounds %struct.info, %struct.info* %arrayidx186, i32 0, i32 1
  %92 = load i32, i32* %loses187, align 4
  %add188 = add nsw i32 %89, %92
  %93 = load i32, i32* %t, align 4
  %idxprom189 = sext i32 %93 to i64
  %arrayidx190 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom189
  %94 = load i32, i32* %arrayidx190, align 4
  %idxprom191 = sext i32 %94 to i64
  %arrayidx192 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom191
  %ties193 = getelementptr inbounds %struct.info, %struct.info* %arrayidx192, i32 0, i32 2
  %95 = load i32, i32* %ties193, align 4
  %add194 = add nsw i32 %add188, %95
  %conv195 = sitofp i32 %add194 to double
  %div196 = fdiv double %add177, %conv195
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.163, %cond.true.162
  %cond198 = phi double [ 0.000000e+00, %cond.true.162 ], [ %div196, %cond.false.163 ]
  %mul199 = fmul double %cond198, 1.000000e+03
  %add200 = fadd double %mul199, 5.000000e-01
  %conv201 = fptosi double %add200 to i32
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.end.197, %cond.true.141
  %cond203 = phi i32 [ 0, %cond.true.141 ], [ %conv201, %cond.end.197 ]
  %96 = load i32, i32* %t, align 4
  %idxprom204 = sext i32 %96 to i64
  %arrayidx205 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom204
  %97 = load i32, i32* %arrayidx205, align 4
  %idxprom206 = sext i32 %97 to i64
  %arrayidx207 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom206
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx207, i32 0, i32 3
  %98 = load i32, i32* %points_for, align 4
  %99 = load i32, i32* %t, align 4
  %idxprom208 = sext i32 %99 to i64
  %arrayidx209 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom208
  %100 = load i32, i32* %arrayidx209, align 4
  %idxprom210 = sext i32 %100 to i64
  %arrayidx211 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom210
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx211, i32 0, i32 4
  %101 = load i32, i32* %points_against, align 4
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay, i8* %cond16, i32 %17, i32 %20, i32 %23, i8* %cond82, i32 %cond203, i32 %98, i32 %101)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %104 = load i32, i32* %t, align 4
  %add214 = add nsw i32 %104, 14
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom215
  %105 = load i32, i32* %arrayidx216, align 4
  %idxprom217 = sext i32 %105 to i64
  %arrayidx218 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom217
  %arrayidx219 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx218, i32 0, i64 1
  %arraydecay220 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx219, i32 0, i32 0
  %106 = load i32, i32* %t, align 4
  %add221 = add nsw i32 %106, 14
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom222
  %107 = load i32, i32* %arrayidx223, align 4
  %call224 = call i32 @a_champ(i32 %107)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %cond.end.202
  br label %cond.end.234

cond.false.227:                                   ; preds = %cond.end.202
  %108 = load i32, i32* %t, align 4
  %add228 = add nsw i32 %108, 14
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom229
  %109 = load i32, i32* %arrayidx230, align 4
  %call231 = call i32 @a_wild_card(i32 %109)
  %tobool232 = icmp ne i32 %call231, 0
  %cond233 = select i1 %tobool232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.227, %cond.true.226
  %cond235 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.226 ], [ %cond233, %cond.false.227 ]
  %110 = load i32, i32* %t, align 4
  %add236 = add nsw i32 %110, 14
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom237
  %111 = load i32, i32* %arrayidx238, align 4
  %idxprom239 = sext i32 %111 to i64
  %arrayidx240 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom239
  %wins241 = getelementptr inbounds %struct.info, %struct.info* %arrayidx240, i32 0, i32 0
  %112 = load i32, i32* %wins241, align 4
  %113 = load i32, i32* %t, align 4
  %add242 = add nsw i32 %113, 14
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom243
  %114 = load i32, i32* %arrayidx244, align 4
  %idxprom245 = sext i32 %114 to i64
  %arrayidx246 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom245
  %loses247 = getelementptr inbounds %struct.info, %struct.info* %arrayidx246, i32 0, i32 1
  %115 = load i32, i32* %loses247, align 4
  %116 = load i32, i32* %t, align 4
  %add248 = add nsw i32 %116, 14
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom249
  %117 = load i32, i32* %arrayidx250, align 4
  %idxprom251 = sext i32 %117 to i64
  %arrayidx252 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom251
  %ties253 = getelementptr inbounds %struct.info, %struct.info* %arrayidx252, i32 0, i32 2
  %118 = load i32, i32* %ties253, align 4
  %119 = load i32, i32* %t, align 4
  %add254 = add nsw i32 %119, 14
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom255
  %120 = load i32, i32* %arrayidx256, align 4
  %idxprom257 = sext i32 %120 to i64
  %arrayidx258 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom257
  %wins259 = getelementptr inbounds %struct.info, %struct.info* %arrayidx258, i32 0, i32 0
  %121 = load i32, i32* %wins259, align 4
  %122 = load i32, i32* %t, align 4
  %add260 = add nsw i32 %122, 14
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom261
  %123 = load i32, i32* %arrayidx262, align 4
  %idxprom263 = sext i32 %123 to i64
  %arrayidx264 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom263
  %loses265 = getelementptr inbounds %struct.info, %struct.info* %arrayidx264, i32 0, i32 1
  %124 = load i32, i32* %loses265, align 4
  %add266 = add nsw i32 %121, %124
  %125 = load i32, i32* %t, align 4
  %add267 = add nsw i32 %125, 14
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom268
  %126 = load i32, i32* %arrayidx269, align 4
  %idxprom270 = sext i32 %126 to i64
  %arrayidx271 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom270
  %ties272 = getelementptr inbounds %struct.info, %struct.info* %arrayidx271, i32 0, i32 2
  %127 = load i32, i32* %ties272, align 4
  %add273 = add nsw i32 %add266, %127
  %cmp274 = icmp eq i32 %add273, 0
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.end.234
  br label %cond.end.316

cond.false.277:                                   ; preds = %cond.end.234
  %128 = load i32, i32* %t, align 4
  %add278 = add nsw i32 %128, 14
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom279
  %129 = load i32, i32* %arrayidx280, align 4
  %idxprom281 = sext i32 %129 to i64
  %arrayidx282 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom281
  %wins283 = getelementptr inbounds %struct.info, %struct.info* %arrayidx282, i32 0, i32 0
  %130 = load i32, i32* %wins283, align 4
  %conv284 = sitofp i32 %130 to double
  %131 = load i32, i32* %t, align 4
  %add285 = add nsw i32 %131, 14
  %idxprom286 = sext i32 %add285 to i64
  %arrayidx287 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom286
  %132 = load i32, i32* %arrayidx287, align 4
  %idxprom288 = sext i32 %132 to i64
  %arrayidx289 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom288
  %ties290 = getelementptr inbounds %struct.info, %struct.info* %arrayidx289, i32 0, i32 2
  %133 = load i32, i32* %ties290, align 4
  %conv291 = sitofp i32 %133 to double
  %mul292 = fmul double 5.000000e-01, %conv291
  %add293 = fadd double %conv284, %mul292
  %134 = load i32, i32* %t, align 4
  %add294 = add nsw i32 %134, 14
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom295
  %135 = load i32, i32* %arrayidx296, align 4
  %idxprom297 = sext i32 %135 to i64
  %arrayidx298 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom297
  %wins299 = getelementptr inbounds %struct.info, %struct.info* %arrayidx298, i32 0, i32 0
  %136 = load i32, i32* %wins299, align 4
  %137 = load i32, i32* %t, align 4
  %add300 = add nsw i32 %137, 14
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom301
  %138 = load i32, i32* %arrayidx302, align 4
  %idxprom303 = sext i32 %138 to i64
  %arrayidx304 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom303
  %loses305 = getelementptr inbounds %struct.info, %struct.info* %arrayidx304, i32 0, i32 1
  %139 = load i32, i32* %loses305, align 4
  %add306 = add nsw i32 %136, %139
  %140 = load i32, i32* %t, align 4
  %add307 = add nsw i32 %140, 14
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom308
  %141 = load i32, i32* %arrayidx309, align 4
  %idxprom310 = sext i32 %141 to i64
  %arrayidx311 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom310
  %ties312 = getelementptr inbounds %struct.info, %struct.info* %arrayidx311, i32 0, i32 2
  %142 = load i32, i32* %ties312, align 4
  %add313 = add nsw i32 %add306, %142
  %conv314 = sitofp i32 %add313 to double
  %div315 = fdiv double %add293, %conv314
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.277, %cond.true.276
  %cond317 = phi double [ 0.000000e+00, %cond.true.276 ], [ %div315, %cond.false.277 ]
  %cmp318 = fcmp oge double %cond317, 1.000000e+00
  %cond320 = select i1 %cmp318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %143 = load i32, i32* %t, align 4
  %add321 = add nsw i32 %143, 14
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom322
  %144 = load i32, i32* %arrayidx323, align 4
  %idxprom324 = sext i32 %144 to i64
  %arrayidx325 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom324
  %wins326 = getelementptr inbounds %struct.info, %struct.info* %arrayidx325, i32 0, i32 0
  %145 = load i32, i32* %wins326, align 4
  %146 = load i32, i32* %t, align 4
  %add327 = add nsw i32 %146, 14
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom328
  %147 = load i32, i32* %arrayidx329, align 4
  %idxprom330 = sext i32 %147 to i64
  %arrayidx331 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom330
  %loses332 = getelementptr inbounds %struct.info, %struct.info* %arrayidx331, i32 0, i32 1
  %148 = load i32, i32* %loses332, align 4
  %add333 = add nsw i32 %145, %148
  %149 = load i32, i32* %t, align 4
  %add334 = add nsw i32 %149, 14
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom335
  %150 = load i32, i32* %arrayidx336, align 4
  %idxprom337 = sext i32 %150 to i64
  %arrayidx338 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom337
  %ties339 = getelementptr inbounds %struct.info, %struct.info* %arrayidx338, i32 0, i32 2
  %151 = load i32, i32* %ties339, align 4
  %add340 = add nsw i32 %add333, %151
  %cmp341 = icmp eq i32 %add340, 0
  br i1 %cmp341, label %cond.true.343, label %cond.false.344

cond.true.343:                                    ; preds = %cond.end.316
  br label %cond.end.383

cond.false.344:                                   ; preds = %cond.end.316
  %152 = load i32, i32* %t, align 4
  %add345 = add nsw i32 %152, 14
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom346
  %153 = load i32, i32* %arrayidx347, align 4
  %idxprom348 = sext i32 %153 to i64
  %arrayidx349 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom348
  %wins350 = getelementptr inbounds %struct.info, %struct.info* %arrayidx349, i32 0, i32 0
  %154 = load i32, i32* %wins350, align 4
  %conv351 = sitofp i32 %154 to double
  %155 = load i32, i32* %t, align 4
  %add352 = add nsw i32 %155, 14
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom353
  %156 = load i32, i32* %arrayidx354, align 4
  %idxprom355 = sext i32 %156 to i64
  %arrayidx356 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom355
  %ties357 = getelementptr inbounds %struct.info, %struct.info* %arrayidx356, i32 0, i32 2
  %157 = load i32, i32* %ties357, align 4
  %conv358 = sitofp i32 %157 to double
  %mul359 = fmul double 5.000000e-01, %conv358
  %add360 = fadd double %conv351, %mul359
  %158 = load i32, i32* %t, align 4
  %add361 = add nsw i32 %158, 14
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom362
  %159 = load i32, i32* %arrayidx363, align 4
  %idxprom364 = sext i32 %159 to i64
  %arrayidx365 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom364
  %wins366 = getelementptr inbounds %struct.info, %struct.info* %arrayidx365, i32 0, i32 0
  %160 = load i32, i32* %wins366, align 4
  %161 = load i32, i32* %t, align 4
  %add367 = add nsw i32 %161, 14
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom368
  %162 = load i32, i32* %arrayidx369, align 4
  %idxprom370 = sext i32 %162 to i64
  %arrayidx371 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom370
  %loses372 = getelementptr inbounds %struct.info, %struct.info* %arrayidx371, i32 0, i32 1
  %163 = load i32, i32* %loses372, align 4
  %add373 = add nsw i32 %160, %163
  %164 = load i32, i32* %t, align 4
  %add374 = add nsw i32 %164, 14
  %idxprom375 = sext i32 %add374 to i64
  %arrayidx376 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom375
  %165 = load i32, i32* %arrayidx376, align 4
  %idxprom377 = sext i32 %165 to i64
  %arrayidx378 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom377
  %ties379 = getelementptr inbounds %struct.info, %struct.info* %arrayidx378, i32 0, i32 2
  %166 = load i32, i32* %ties379, align 4
  %add380 = add nsw i32 %add373, %166
  %conv381 = sitofp i32 %add380 to double
  %div382 = fdiv double %add360, %conv381
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.344, %cond.true.343
  %cond384 = phi double [ 0.000000e+00, %cond.true.343 ], [ %div382, %cond.false.344 ]
  %cmp385 = fcmp oge double %cond384, 1.000000e+00
  br i1 %cmp385, label %cond.true.387, label %cond.false.388

cond.true.387:                                    ; preds = %cond.end.383
  br label %cond.end.456

cond.false.388:                                   ; preds = %cond.end.383
  %167 = load i32, i32* %t, align 4
  %add389 = add nsw i32 %167, 14
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom390
  %168 = load i32, i32* %arrayidx391, align 4
  %idxprom392 = sext i32 %168 to i64
  %arrayidx393 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom392
  %wins394 = getelementptr inbounds %struct.info, %struct.info* %arrayidx393, i32 0, i32 0
  %169 = load i32, i32* %wins394, align 4
  %170 = load i32, i32* %t, align 4
  %add395 = add nsw i32 %170, 14
  %idxprom396 = sext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom396
  %171 = load i32, i32* %arrayidx397, align 4
  %idxprom398 = sext i32 %171 to i64
  %arrayidx399 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom398
  %loses400 = getelementptr inbounds %struct.info, %struct.info* %arrayidx399, i32 0, i32 1
  %172 = load i32, i32* %loses400, align 4
  %add401 = add nsw i32 %169, %172
  %173 = load i32, i32* %t, align 4
  %add402 = add nsw i32 %173, 14
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom403
  %174 = load i32, i32* %arrayidx404, align 4
  %idxprom405 = sext i32 %174 to i64
  %arrayidx406 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom405
  %ties407 = getelementptr inbounds %struct.info, %struct.info* %arrayidx406, i32 0, i32 2
  %175 = load i32, i32* %ties407, align 4
  %add408 = add nsw i32 %add401, %175
  %cmp409 = icmp eq i32 %add408, 0
  br i1 %cmp409, label %cond.true.411, label %cond.false.412

cond.true.411:                                    ; preds = %cond.false.388
  br label %cond.end.451

cond.false.412:                                   ; preds = %cond.false.388
  %176 = load i32, i32* %t, align 4
  %add413 = add nsw i32 %176, 14
  %idxprom414 = sext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom414
  %177 = load i32, i32* %arrayidx415, align 4
  %idxprom416 = sext i32 %177 to i64
  %arrayidx417 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom416
  %wins418 = getelementptr inbounds %struct.info, %struct.info* %arrayidx417, i32 0, i32 0
  %178 = load i32, i32* %wins418, align 4
  %conv419 = sitofp i32 %178 to double
  %179 = load i32, i32* %t, align 4
  %add420 = add nsw i32 %179, 14
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom421
  %180 = load i32, i32* %arrayidx422, align 4
  %idxprom423 = sext i32 %180 to i64
  %arrayidx424 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom423
  %ties425 = getelementptr inbounds %struct.info, %struct.info* %arrayidx424, i32 0, i32 2
  %181 = load i32, i32* %ties425, align 4
  %conv426 = sitofp i32 %181 to double
  %mul427 = fmul double 5.000000e-01, %conv426
  %add428 = fadd double %conv419, %mul427
  %182 = load i32, i32* %t, align 4
  %add429 = add nsw i32 %182, 14
  %idxprom430 = sext i32 %add429 to i64
  %arrayidx431 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom430
  %183 = load i32, i32* %arrayidx431, align 4
  %idxprom432 = sext i32 %183 to i64
  %arrayidx433 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom432
  %wins434 = getelementptr inbounds %struct.info, %struct.info* %arrayidx433, i32 0, i32 0
  %184 = load i32, i32* %wins434, align 4
  %185 = load i32, i32* %t, align 4
  %add435 = add nsw i32 %185, 14
  %idxprom436 = sext i32 %add435 to i64
  %arrayidx437 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom436
  %186 = load i32, i32* %arrayidx437, align 4
  %idxprom438 = sext i32 %186 to i64
  %arrayidx439 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom438
  %loses440 = getelementptr inbounds %struct.info, %struct.info* %arrayidx439, i32 0, i32 1
  %187 = load i32, i32* %loses440, align 4
  %add441 = add nsw i32 %184, %187
  %188 = load i32, i32* %t, align 4
  %add442 = add nsw i32 %188, 14
  %idxprom443 = sext i32 %add442 to i64
  %arrayidx444 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom443
  %189 = load i32, i32* %arrayidx444, align 4
  %idxprom445 = sext i32 %189 to i64
  %arrayidx446 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom445
  %ties447 = getelementptr inbounds %struct.info, %struct.info* %arrayidx446, i32 0, i32 2
  %190 = load i32, i32* %ties447, align 4
  %add448 = add nsw i32 %add441, %190
  %conv449 = sitofp i32 %add448 to double
  %div450 = fdiv double %add428, %conv449
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.412, %cond.true.411
  %cond452 = phi double [ 0.000000e+00, %cond.true.411 ], [ %div450, %cond.false.412 ]
  %mul453 = fmul double %cond452, 1.000000e+03
  %add454 = fadd double %mul453, 5.000000e-01
  %conv455 = fptosi double %add454 to i32
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.end.451, %cond.true.387
  %cond457 = phi i32 [ 0, %cond.true.387 ], [ %conv455, %cond.end.451 ]
  %191 = load i32, i32* %t, align 4
  %add458 = add nsw i32 %191, 14
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom459
  %192 = load i32, i32* %arrayidx460, align 4
  %idxprom461 = sext i32 %192 to i64
  %arrayidx462 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom461
  %points_for463 = getelementptr inbounds %struct.info, %struct.info* %arrayidx462, i32 0, i32 3
  %193 = load i32, i32* %points_for463, align 4
  %194 = load i32, i32* %t, align 4
  %add464 = add nsw i32 %194, 14
  %idxprom465 = sext i32 %add464 to i64
  %arrayidx466 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom465
  %195 = load i32, i32* %arrayidx466, align 4
  %idxprom467 = sext i32 %195 to i64
  %arrayidx468 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom467
  %points_against469 = getelementptr inbounds %struct.info, %struct.info* %arrayidx468, i32 0, i32 4
  %196 = load i32, i32* %points_against469, align 4
  %call470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay220, i8* %cond235, i32 %112, i32 %115, i32 %118, i8* %cond320, i32 %cond457, i32 %193, i32 %196)
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call471 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %cond.end.456
  %198 = load i32, i32* %t, align 4
  %inc = add nsw i32 %198, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.100, i32 0, i32 0))
  store i32 6, i32* %t, align 4
  br label %for.cond.473

for.cond.473:                                     ; preds = %for.inc.961, %for.end
  %200 = load i32, i32* %t, align 4
  %cmp474 = icmp sle i32 %200, 9
  br i1 %cmp474, label %for.body.476, label %for.end.963

for.body.476:                                     ; preds = %for.cond.473
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %202 = load i32, i32* %t, align 4
  %idxprom477 = sext i32 %202 to i64
  %arrayidx478 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom477
  %203 = load i32, i32* %arrayidx478, align 4
  %idxprom479 = sext i32 %203 to i64
  %arrayidx480 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom479
  %arrayidx481 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx480, i32 0, i64 1
  %arraydecay482 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx481, i32 0, i32 0
  %204 = load i32, i32* %t, align 4
  %idxprom483 = sext i32 %204 to i64
  %arrayidx484 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom483
  %205 = load i32, i32* %arrayidx484, align 4
  %call485 = call i32 @a_champ(i32 %205)
  %tobool486 = icmp ne i32 %call485, 0
  br i1 %tobool486, label %cond.true.487, label %cond.false.488

cond.true.487:                                    ; preds = %for.body.476
  br label %cond.end.494

cond.false.488:                                   ; preds = %for.body.476
  %206 = load i32, i32* %t, align 4
  %idxprom489 = sext i32 %206 to i64
  %arrayidx490 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom489
  %207 = load i32, i32* %arrayidx490, align 4
  %call491 = call i32 @a_wild_card(i32 %207)
  %tobool492 = icmp ne i32 %call491, 0
  %cond493 = select i1 %tobool492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.494

cond.end.494:                                     ; preds = %cond.false.488, %cond.true.487
  %cond495 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.487 ], [ %cond493, %cond.false.488 ]
  %208 = load i32, i32* %t, align 4
  %idxprom496 = sext i32 %208 to i64
  %arrayidx497 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom496
  %209 = load i32, i32* %arrayidx497, align 4
  %idxprom498 = sext i32 %209 to i64
  %arrayidx499 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom498
  %wins500 = getelementptr inbounds %struct.info, %struct.info* %arrayidx499, i32 0, i32 0
  %210 = load i32, i32* %wins500, align 4
  %211 = load i32, i32* %t, align 4
  %idxprom501 = sext i32 %211 to i64
  %arrayidx502 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom501
  %212 = load i32, i32* %arrayidx502, align 4
  %idxprom503 = sext i32 %212 to i64
  %arrayidx504 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom503
  %loses505 = getelementptr inbounds %struct.info, %struct.info* %arrayidx504, i32 0, i32 1
  %213 = load i32, i32* %loses505, align 4
  %214 = load i32, i32* %t, align 4
  %idxprom506 = sext i32 %214 to i64
  %arrayidx507 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom506
  %215 = load i32, i32* %arrayidx507, align 4
  %idxprom508 = sext i32 %215 to i64
  %arrayidx509 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom508
  %ties510 = getelementptr inbounds %struct.info, %struct.info* %arrayidx509, i32 0, i32 2
  %216 = load i32, i32* %ties510, align 4
  %217 = load i32, i32* %t, align 4
  %idxprom511 = sext i32 %217 to i64
  %arrayidx512 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom511
  %218 = load i32, i32* %arrayidx512, align 4
  %idxprom513 = sext i32 %218 to i64
  %arrayidx514 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom513
  %wins515 = getelementptr inbounds %struct.info, %struct.info* %arrayidx514, i32 0, i32 0
  %219 = load i32, i32* %wins515, align 4
  %220 = load i32, i32* %t, align 4
  %idxprom516 = sext i32 %220 to i64
  %arrayidx517 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom516
  %221 = load i32, i32* %arrayidx517, align 4
  %idxprom518 = sext i32 %221 to i64
  %arrayidx519 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom518
  %loses520 = getelementptr inbounds %struct.info, %struct.info* %arrayidx519, i32 0, i32 1
  %222 = load i32, i32* %loses520, align 4
  %add521 = add nsw i32 %219, %222
  %223 = load i32, i32* %t, align 4
  %idxprom522 = sext i32 %223 to i64
  %arrayidx523 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom522
  %224 = load i32, i32* %arrayidx523, align 4
  %idxprom524 = sext i32 %224 to i64
  %arrayidx525 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom524
  %ties526 = getelementptr inbounds %struct.info, %struct.info* %arrayidx525, i32 0, i32 2
  %225 = load i32, i32* %ties526, align 4
  %add527 = add nsw i32 %add521, %225
  %cmp528 = icmp eq i32 %add527, 0
  br i1 %cmp528, label %cond.true.530, label %cond.false.531

cond.true.530:                                    ; preds = %cond.end.494
  br label %cond.end.565

cond.false.531:                                   ; preds = %cond.end.494
  %226 = load i32, i32* %t, align 4
  %idxprom532 = sext i32 %226 to i64
  %arrayidx533 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom532
  %227 = load i32, i32* %arrayidx533, align 4
  %idxprom534 = sext i32 %227 to i64
  %arrayidx535 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom534
  %wins536 = getelementptr inbounds %struct.info, %struct.info* %arrayidx535, i32 0, i32 0
  %228 = load i32, i32* %wins536, align 4
  %conv537 = sitofp i32 %228 to double
  %229 = load i32, i32* %t, align 4
  %idxprom538 = sext i32 %229 to i64
  %arrayidx539 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom538
  %230 = load i32, i32* %arrayidx539, align 4
  %idxprom540 = sext i32 %230 to i64
  %arrayidx541 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom540
  %ties542 = getelementptr inbounds %struct.info, %struct.info* %arrayidx541, i32 0, i32 2
  %231 = load i32, i32* %ties542, align 4
  %conv543 = sitofp i32 %231 to double
  %mul544 = fmul double 5.000000e-01, %conv543
  %add545 = fadd double %conv537, %mul544
  %232 = load i32, i32* %t, align 4
  %idxprom546 = sext i32 %232 to i64
  %arrayidx547 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom546
  %233 = load i32, i32* %arrayidx547, align 4
  %idxprom548 = sext i32 %233 to i64
  %arrayidx549 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom548
  %wins550 = getelementptr inbounds %struct.info, %struct.info* %arrayidx549, i32 0, i32 0
  %234 = load i32, i32* %wins550, align 4
  %235 = load i32, i32* %t, align 4
  %idxprom551 = sext i32 %235 to i64
  %arrayidx552 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom551
  %236 = load i32, i32* %arrayidx552, align 4
  %idxprom553 = sext i32 %236 to i64
  %arrayidx554 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom553
  %loses555 = getelementptr inbounds %struct.info, %struct.info* %arrayidx554, i32 0, i32 1
  %237 = load i32, i32* %loses555, align 4
  %add556 = add nsw i32 %234, %237
  %238 = load i32, i32* %t, align 4
  %idxprom557 = sext i32 %238 to i64
  %arrayidx558 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom557
  %239 = load i32, i32* %arrayidx558, align 4
  %idxprom559 = sext i32 %239 to i64
  %arrayidx560 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom559
  %ties561 = getelementptr inbounds %struct.info, %struct.info* %arrayidx560, i32 0, i32 2
  %240 = load i32, i32* %ties561, align 4
  %add562 = add nsw i32 %add556, %240
  %conv563 = sitofp i32 %add562 to double
  %div564 = fdiv double %add545, %conv563
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.531, %cond.true.530
  %cond566 = phi double [ 0.000000e+00, %cond.true.530 ], [ %div564, %cond.false.531 ]
  %cmp567 = fcmp oge double %cond566, 1.000000e+00
  %cond569 = select i1 %cmp567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %241 = load i32, i32* %t, align 4
  %idxprom570 = sext i32 %241 to i64
  %arrayidx571 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom570
  %242 = load i32, i32* %arrayidx571, align 4
  %idxprom572 = sext i32 %242 to i64
  %arrayidx573 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom572
  %wins574 = getelementptr inbounds %struct.info, %struct.info* %arrayidx573, i32 0, i32 0
  %243 = load i32, i32* %wins574, align 4
  %244 = load i32, i32* %t, align 4
  %idxprom575 = sext i32 %244 to i64
  %arrayidx576 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom575
  %245 = load i32, i32* %arrayidx576, align 4
  %idxprom577 = sext i32 %245 to i64
  %arrayidx578 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom577
  %loses579 = getelementptr inbounds %struct.info, %struct.info* %arrayidx578, i32 0, i32 1
  %246 = load i32, i32* %loses579, align 4
  %add580 = add nsw i32 %243, %246
  %247 = load i32, i32* %t, align 4
  %idxprom581 = sext i32 %247 to i64
  %arrayidx582 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom581
  %248 = load i32, i32* %arrayidx582, align 4
  %idxprom583 = sext i32 %248 to i64
  %arrayidx584 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom583
  %ties585 = getelementptr inbounds %struct.info, %struct.info* %arrayidx584, i32 0, i32 2
  %249 = load i32, i32* %ties585, align 4
  %add586 = add nsw i32 %add580, %249
  %cmp587 = icmp eq i32 %add586, 0
  br i1 %cmp587, label %cond.true.589, label %cond.false.590

cond.true.589:                                    ; preds = %cond.end.565
  br label %cond.end.624

cond.false.590:                                   ; preds = %cond.end.565
  %250 = load i32, i32* %t, align 4
  %idxprom591 = sext i32 %250 to i64
  %arrayidx592 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom591
  %251 = load i32, i32* %arrayidx592, align 4
  %idxprom593 = sext i32 %251 to i64
  %arrayidx594 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom593
  %wins595 = getelementptr inbounds %struct.info, %struct.info* %arrayidx594, i32 0, i32 0
  %252 = load i32, i32* %wins595, align 4
  %conv596 = sitofp i32 %252 to double
  %253 = load i32, i32* %t, align 4
  %idxprom597 = sext i32 %253 to i64
  %arrayidx598 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom597
  %254 = load i32, i32* %arrayidx598, align 4
  %idxprom599 = sext i32 %254 to i64
  %arrayidx600 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom599
  %ties601 = getelementptr inbounds %struct.info, %struct.info* %arrayidx600, i32 0, i32 2
  %255 = load i32, i32* %ties601, align 4
  %conv602 = sitofp i32 %255 to double
  %mul603 = fmul double 5.000000e-01, %conv602
  %add604 = fadd double %conv596, %mul603
  %256 = load i32, i32* %t, align 4
  %idxprom605 = sext i32 %256 to i64
  %arrayidx606 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom605
  %257 = load i32, i32* %arrayidx606, align 4
  %idxprom607 = sext i32 %257 to i64
  %arrayidx608 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom607
  %wins609 = getelementptr inbounds %struct.info, %struct.info* %arrayidx608, i32 0, i32 0
  %258 = load i32, i32* %wins609, align 4
  %259 = load i32, i32* %t, align 4
  %idxprom610 = sext i32 %259 to i64
  %arrayidx611 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom610
  %260 = load i32, i32* %arrayidx611, align 4
  %idxprom612 = sext i32 %260 to i64
  %arrayidx613 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom612
  %loses614 = getelementptr inbounds %struct.info, %struct.info* %arrayidx613, i32 0, i32 1
  %261 = load i32, i32* %loses614, align 4
  %add615 = add nsw i32 %258, %261
  %262 = load i32, i32* %t, align 4
  %idxprom616 = sext i32 %262 to i64
  %arrayidx617 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom616
  %263 = load i32, i32* %arrayidx617, align 4
  %idxprom618 = sext i32 %263 to i64
  %arrayidx619 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom618
  %ties620 = getelementptr inbounds %struct.info, %struct.info* %arrayidx619, i32 0, i32 2
  %264 = load i32, i32* %ties620, align 4
  %add621 = add nsw i32 %add615, %264
  %conv622 = sitofp i32 %add621 to double
  %div623 = fdiv double %add604, %conv622
  br label %cond.end.624

cond.end.624:                                     ; preds = %cond.false.590, %cond.true.589
  %cond625 = phi double [ 0.000000e+00, %cond.true.589 ], [ %div623, %cond.false.590 ]
  %cmp626 = fcmp oge double %cond625, 1.000000e+00
  br i1 %cmp626, label %cond.true.628, label %cond.false.629

cond.true.628:                                    ; preds = %cond.end.624
  br label %cond.end.689

cond.false.629:                                   ; preds = %cond.end.624
  %265 = load i32, i32* %t, align 4
  %idxprom630 = sext i32 %265 to i64
  %arrayidx631 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom630
  %266 = load i32, i32* %arrayidx631, align 4
  %idxprom632 = sext i32 %266 to i64
  %arrayidx633 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom632
  %wins634 = getelementptr inbounds %struct.info, %struct.info* %arrayidx633, i32 0, i32 0
  %267 = load i32, i32* %wins634, align 4
  %268 = load i32, i32* %t, align 4
  %idxprom635 = sext i32 %268 to i64
  %arrayidx636 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom635
  %269 = load i32, i32* %arrayidx636, align 4
  %idxprom637 = sext i32 %269 to i64
  %arrayidx638 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom637
  %loses639 = getelementptr inbounds %struct.info, %struct.info* %arrayidx638, i32 0, i32 1
  %270 = load i32, i32* %loses639, align 4
  %add640 = add nsw i32 %267, %270
  %271 = load i32, i32* %t, align 4
  %idxprom641 = sext i32 %271 to i64
  %arrayidx642 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom641
  %272 = load i32, i32* %arrayidx642, align 4
  %idxprom643 = sext i32 %272 to i64
  %arrayidx644 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom643
  %ties645 = getelementptr inbounds %struct.info, %struct.info* %arrayidx644, i32 0, i32 2
  %273 = load i32, i32* %ties645, align 4
  %add646 = add nsw i32 %add640, %273
  %cmp647 = icmp eq i32 %add646, 0
  br i1 %cmp647, label %cond.true.649, label %cond.false.650

cond.true.649:                                    ; preds = %cond.false.629
  br label %cond.end.684

cond.false.650:                                   ; preds = %cond.false.629
  %274 = load i32, i32* %t, align 4
  %idxprom651 = sext i32 %274 to i64
  %arrayidx652 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom651
  %275 = load i32, i32* %arrayidx652, align 4
  %idxprom653 = sext i32 %275 to i64
  %arrayidx654 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom653
  %wins655 = getelementptr inbounds %struct.info, %struct.info* %arrayidx654, i32 0, i32 0
  %276 = load i32, i32* %wins655, align 4
  %conv656 = sitofp i32 %276 to double
  %277 = load i32, i32* %t, align 4
  %idxprom657 = sext i32 %277 to i64
  %arrayidx658 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom657
  %278 = load i32, i32* %arrayidx658, align 4
  %idxprom659 = sext i32 %278 to i64
  %arrayidx660 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom659
  %ties661 = getelementptr inbounds %struct.info, %struct.info* %arrayidx660, i32 0, i32 2
  %279 = load i32, i32* %ties661, align 4
  %conv662 = sitofp i32 %279 to double
  %mul663 = fmul double 5.000000e-01, %conv662
  %add664 = fadd double %conv656, %mul663
  %280 = load i32, i32* %t, align 4
  %idxprom665 = sext i32 %280 to i64
  %arrayidx666 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom665
  %281 = load i32, i32* %arrayidx666, align 4
  %idxprom667 = sext i32 %281 to i64
  %arrayidx668 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom667
  %wins669 = getelementptr inbounds %struct.info, %struct.info* %arrayidx668, i32 0, i32 0
  %282 = load i32, i32* %wins669, align 4
  %283 = load i32, i32* %t, align 4
  %idxprom670 = sext i32 %283 to i64
  %arrayidx671 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom670
  %284 = load i32, i32* %arrayidx671, align 4
  %idxprom672 = sext i32 %284 to i64
  %arrayidx673 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom672
  %loses674 = getelementptr inbounds %struct.info, %struct.info* %arrayidx673, i32 0, i32 1
  %285 = load i32, i32* %loses674, align 4
  %add675 = add nsw i32 %282, %285
  %286 = load i32, i32* %t, align 4
  %idxprom676 = sext i32 %286 to i64
  %arrayidx677 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom676
  %287 = load i32, i32* %arrayidx677, align 4
  %idxprom678 = sext i32 %287 to i64
  %arrayidx679 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom678
  %ties680 = getelementptr inbounds %struct.info, %struct.info* %arrayidx679, i32 0, i32 2
  %288 = load i32, i32* %ties680, align 4
  %add681 = add nsw i32 %add675, %288
  %conv682 = sitofp i32 %add681 to double
  %div683 = fdiv double %add664, %conv682
  br label %cond.end.684

cond.end.684:                                     ; preds = %cond.false.650, %cond.true.649
  %cond685 = phi double [ 0.000000e+00, %cond.true.649 ], [ %div683, %cond.false.650 ]
  %mul686 = fmul double %cond685, 1.000000e+03
  %add687 = fadd double %mul686, 5.000000e-01
  %conv688 = fptosi double %add687 to i32
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.end.684, %cond.true.628
  %cond690 = phi i32 [ 0, %cond.true.628 ], [ %conv688, %cond.end.684 ]
  %289 = load i32, i32* %t, align 4
  %idxprom691 = sext i32 %289 to i64
  %arrayidx692 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom691
  %290 = load i32, i32* %arrayidx692, align 4
  %idxprom693 = sext i32 %290 to i64
  %arrayidx694 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom693
  %points_for695 = getelementptr inbounds %struct.info, %struct.info* %arrayidx694, i32 0, i32 3
  %291 = load i32, i32* %points_for695, align 4
  %292 = load i32, i32* %t, align 4
  %idxprom696 = sext i32 %292 to i64
  %arrayidx697 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom696
  %293 = load i32, i32* %arrayidx697, align 4
  %idxprom698 = sext i32 %293 to i64
  %arrayidx699 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom698
  %points_against700 = getelementptr inbounds %struct.info, %struct.info* %arrayidx699, i32 0, i32 4
  %294 = load i32, i32* %points_against700, align 4
  %call701 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay482, i8* %cond495, i32 %210, i32 %213, i32 %216, i8* %cond569, i32 %cond690, i32 %291, i32 %294)
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call702 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %297 = load i32, i32* %t, align 4
  %add703 = add nsw i32 %297, 14
  %idxprom704 = sext i32 %add703 to i64
  %arrayidx705 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom704
  %298 = load i32, i32* %arrayidx705, align 4
  %idxprom706 = sext i32 %298 to i64
  %arrayidx707 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom706
  %arrayidx708 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx707, i32 0, i64 1
  %arraydecay709 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx708, i32 0, i32 0
  %299 = load i32, i32* %t, align 4
  %add710 = add nsw i32 %299, 14
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom711
  %300 = load i32, i32* %arrayidx712, align 4
  %call713 = call i32 @a_champ(i32 %300)
  %tobool714 = icmp ne i32 %call713, 0
  br i1 %tobool714, label %cond.true.715, label %cond.false.716

cond.true.715:                                    ; preds = %cond.end.689
  br label %cond.end.723

cond.false.716:                                   ; preds = %cond.end.689
  %301 = load i32, i32* %t, align 4
  %add717 = add nsw i32 %301, 14
  %idxprom718 = sext i32 %add717 to i64
  %arrayidx719 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom718
  %302 = load i32, i32* %arrayidx719, align 4
  %call720 = call i32 @a_wild_card(i32 %302)
  %tobool721 = icmp ne i32 %call720, 0
  %cond722 = select i1 %tobool721, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.716, %cond.true.715
  %cond724 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.715 ], [ %cond722, %cond.false.716 ]
  %303 = load i32, i32* %t, align 4
  %add725 = add nsw i32 %303, 14
  %idxprom726 = sext i32 %add725 to i64
  %arrayidx727 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom726
  %304 = load i32, i32* %arrayidx727, align 4
  %idxprom728 = sext i32 %304 to i64
  %arrayidx729 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom728
  %wins730 = getelementptr inbounds %struct.info, %struct.info* %arrayidx729, i32 0, i32 0
  %305 = load i32, i32* %wins730, align 4
  %306 = load i32, i32* %t, align 4
  %add731 = add nsw i32 %306, 14
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom732
  %307 = load i32, i32* %arrayidx733, align 4
  %idxprom734 = sext i32 %307 to i64
  %arrayidx735 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom734
  %loses736 = getelementptr inbounds %struct.info, %struct.info* %arrayidx735, i32 0, i32 1
  %308 = load i32, i32* %loses736, align 4
  %309 = load i32, i32* %t, align 4
  %add737 = add nsw i32 %309, 14
  %idxprom738 = sext i32 %add737 to i64
  %arrayidx739 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom738
  %310 = load i32, i32* %arrayidx739, align 4
  %idxprom740 = sext i32 %310 to i64
  %arrayidx741 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom740
  %ties742 = getelementptr inbounds %struct.info, %struct.info* %arrayidx741, i32 0, i32 2
  %311 = load i32, i32* %ties742, align 4
  %312 = load i32, i32* %t, align 4
  %add743 = add nsw i32 %312, 14
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom744
  %313 = load i32, i32* %arrayidx745, align 4
  %idxprom746 = sext i32 %313 to i64
  %arrayidx747 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom746
  %wins748 = getelementptr inbounds %struct.info, %struct.info* %arrayidx747, i32 0, i32 0
  %314 = load i32, i32* %wins748, align 4
  %315 = load i32, i32* %t, align 4
  %add749 = add nsw i32 %315, 14
  %idxprom750 = sext i32 %add749 to i64
  %arrayidx751 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom750
  %316 = load i32, i32* %arrayidx751, align 4
  %idxprom752 = sext i32 %316 to i64
  %arrayidx753 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom752
  %loses754 = getelementptr inbounds %struct.info, %struct.info* %arrayidx753, i32 0, i32 1
  %317 = load i32, i32* %loses754, align 4
  %add755 = add nsw i32 %314, %317
  %318 = load i32, i32* %t, align 4
  %add756 = add nsw i32 %318, 14
  %idxprom757 = sext i32 %add756 to i64
  %arrayidx758 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom757
  %319 = load i32, i32* %arrayidx758, align 4
  %idxprom759 = sext i32 %319 to i64
  %arrayidx760 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom759
  %ties761 = getelementptr inbounds %struct.info, %struct.info* %arrayidx760, i32 0, i32 2
  %320 = load i32, i32* %ties761, align 4
  %add762 = add nsw i32 %add755, %320
  %cmp763 = icmp eq i32 %add762, 0
  br i1 %cmp763, label %cond.true.765, label %cond.false.766

cond.true.765:                                    ; preds = %cond.end.723
  br label %cond.end.805

cond.false.766:                                   ; preds = %cond.end.723
  %321 = load i32, i32* %t, align 4
  %add767 = add nsw i32 %321, 14
  %idxprom768 = sext i32 %add767 to i64
  %arrayidx769 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom768
  %322 = load i32, i32* %arrayidx769, align 4
  %idxprom770 = sext i32 %322 to i64
  %arrayidx771 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom770
  %wins772 = getelementptr inbounds %struct.info, %struct.info* %arrayidx771, i32 0, i32 0
  %323 = load i32, i32* %wins772, align 4
  %conv773 = sitofp i32 %323 to double
  %324 = load i32, i32* %t, align 4
  %add774 = add nsw i32 %324, 14
  %idxprom775 = sext i32 %add774 to i64
  %arrayidx776 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom775
  %325 = load i32, i32* %arrayidx776, align 4
  %idxprom777 = sext i32 %325 to i64
  %arrayidx778 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom777
  %ties779 = getelementptr inbounds %struct.info, %struct.info* %arrayidx778, i32 0, i32 2
  %326 = load i32, i32* %ties779, align 4
  %conv780 = sitofp i32 %326 to double
  %mul781 = fmul double 5.000000e-01, %conv780
  %add782 = fadd double %conv773, %mul781
  %327 = load i32, i32* %t, align 4
  %add783 = add nsw i32 %327, 14
  %idxprom784 = sext i32 %add783 to i64
  %arrayidx785 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom784
  %328 = load i32, i32* %arrayidx785, align 4
  %idxprom786 = sext i32 %328 to i64
  %arrayidx787 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom786
  %wins788 = getelementptr inbounds %struct.info, %struct.info* %arrayidx787, i32 0, i32 0
  %329 = load i32, i32* %wins788, align 4
  %330 = load i32, i32* %t, align 4
  %add789 = add nsw i32 %330, 14
  %idxprom790 = sext i32 %add789 to i64
  %arrayidx791 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom790
  %331 = load i32, i32* %arrayidx791, align 4
  %idxprom792 = sext i32 %331 to i64
  %arrayidx793 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom792
  %loses794 = getelementptr inbounds %struct.info, %struct.info* %arrayidx793, i32 0, i32 1
  %332 = load i32, i32* %loses794, align 4
  %add795 = add nsw i32 %329, %332
  %333 = load i32, i32* %t, align 4
  %add796 = add nsw i32 %333, 14
  %idxprom797 = sext i32 %add796 to i64
  %arrayidx798 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom797
  %334 = load i32, i32* %arrayidx798, align 4
  %idxprom799 = sext i32 %334 to i64
  %arrayidx800 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom799
  %ties801 = getelementptr inbounds %struct.info, %struct.info* %arrayidx800, i32 0, i32 2
  %335 = load i32, i32* %ties801, align 4
  %add802 = add nsw i32 %add795, %335
  %conv803 = sitofp i32 %add802 to double
  %div804 = fdiv double %add782, %conv803
  br label %cond.end.805

cond.end.805:                                     ; preds = %cond.false.766, %cond.true.765
  %cond806 = phi double [ 0.000000e+00, %cond.true.765 ], [ %div804, %cond.false.766 ]
  %cmp807 = fcmp oge double %cond806, 1.000000e+00
  %cond809 = select i1 %cmp807, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %336 = load i32, i32* %t, align 4
  %add810 = add nsw i32 %336, 14
  %idxprom811 = sext i32 %add810 to i64
  %arrayidx812 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom811
  %337 = load i32, i32* %arrayidx812, align 4
  %idxprom813 = sext i32 %337 to i64
  %arrayidx814 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom813
  %wins815 = getelementptr inbounds %struct.info, %struct.info* %arrayidx814, i32 0, i32 0
  %338 = load i32, i32* %wins815, align 4
  %339 = load i32, i32* %t, align 4
  %add816 = add nsw i32 %339, 14
  %idxprom817 = sext i32 %add816 to i64
  %arrayidx818 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom817
  %340 = load i32, i32* %arrayidx818, align 4
  %idxprom819 = sext i32 %340 to i64
  %arrayidx820 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom819
  %loses821 = getelementptr inbounds %struct.info, %struct.info* %arrayidx820, i32 0, i32 1
  %341 = load i32, i32* %loses821, align 4
  %add822 = add nsw i32 %338, %341
  %342 = load i32, i32* %t, align 4
  %add823 = add nsw i32 %342, 14
  %idxprom824 = sext i32 %add823 to i64
  %arrayidx825 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom824
  %343 = load i32, i32* %arrayidx825, align 4
  %idxprom826 = sext i32 %343 to i64
  %arrayidx827 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom826
  %ties828 = getelementptr inbounds %struct.info, %struct.info* %arrayidx827, i32 0, i32 2
  %344 = load i32, i32* %ties828, align 4
  %add829 = add nsw i32 %add822, %344
  %cmp830 = icmp eq i32 %add829, 0
  br i1 %cmp830, label %cond.true.832, label %cond.false.833

cond.true.832:                                    ; preds = %cond.end.805
  br label %cond.end.872

cond.false.833:                                   ; preds = %cond.end.805
  %345 = load i32, i32* %t, align 4
  %add834 = add nsw i32 %345, 14
  %idxprom835 = sext i32 %add834 to i64
  %arrayidx836 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom835
  %346 = load i32, i32* %arrayidx836, align 4
  %idxprom837 = sext i32 %346 to i64
  %arrayidx838 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom837
  %wins839 = getelementptr inbounds %struct.info, %struct.info* %arrayidx838, i32 0, i32 0
  %347 = load i32, i32* %wins839, align 4
  %conv840 = sitofp i32 %347 to double
  %348 = load i32, i32* %t, align 4
  %add841 = add nsw i32 %348, 14
  %idxprom842 = sext i32 %add841 to i64
  %arrayidx843 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom842
  %349 = load i32, i32* %arrayidx843, align 4
  %idxprom844 = sext i32 %349 to i64
  %arrayidx845 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom844
  %ties846 = getelementptr inbounds %struct.info, %struct.info* %arrayidx845, i32 0, i32 2
  %350 = load i32, i32* %ties846, align 4
  %conv847 = sitofp i32 %350 to double
  %mul848 = fmul double 5.000000e-01, %conv847
  %add849 = fadd double %conv840, %mul848
  %351 = load i32, i32* %t, align 4
  %add850 = add nsw i32 %351, 14
  %idxprom851 = sext i32 %add850 to i64
  %arrayidx852 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom851
  %352 = load i32, i32* %arrayidx852, align 4
  %idxprom853 = sext i32 %352 to i64
  %arrayidx854 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom853
  %wins855 = getelementptr inbounds %struct.info, %struct.info* %arrayidx854, i32 0, i32 0
  %353 = load i32, i32* %wins855, align 4
  %354 = load i32, i32* %t, align 4
  %add856 = add nsw i32 %354, 14
  %idxprom857 = sext i32 %add856 to i64
  %arrayidx858 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom857
  %355 = load i32, i32* %arrayidx858, align 4
  %idxprom859 = sext i32 %355 to i64
  %arrayidx860 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom859
  %loses861 = getelementptr inbounds %struct.info, %struct.info* %arrayidx860, i32 0, i32 1
  %356 = load i32, i32* %loses861, align 4
  %add862 = add nsw i32 %353, %356
  %357 = load i32, i32* %t, align 4
  %add863 = add nsw i32 %357, 14
  %idxprom864 = sext i32 %add863 to i64
  %arrayidx865 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom864
  %358 = load i32, i32* %arrayidx865, align 4
  %idxprom866 = sext i32 %358 to i64
  %arrayidx867 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom866
  %ties868 = getelementptr inbounds %struct.info, %struct.info* %arrayidx867, i32 0, i32 2
  %359 = load i32, i32* %ties868, align 4
  %add869 = add nsw i32 %add862, %359
  %conv870 = sitofp i32 %add869 to double
  %div871 = fdiv double %add849, %conv870
  br label %cond.end.872

cond.end.872:                                     ; preds = %cond.false.833, %cond.true.832
  %cond873 = phi double [ 0.000000e+00, %cond.true.832 ], [ %div871, %cond.false.833 ]
  %cmp874 = fcmp oge double %cond873, 1.000000e+00
  br i1 %cmp874, label %cond.true.876, label %cond.false.877

cond.true.876:                                    ; preds = %cond.end.872
  br label %cond.end.945

cond.false.877:                                   ; preds = %cond.end.872
  %360 = load i32, i32* %t, align 4
  %add878 = add nsw i32 %360, 14
  %idxprom879 = sext i32 %add878 to i64
  %arrayidx880 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom879
  %361 = load i32, i32* %arrayidx880, align 4
  %idxprom881 = sext i32 %361 to i64
  %arrayidx882 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom881
  %wins883 = getelementptr inbounds %struct.info, %struct.info* %arrayidx882, i32 0, i32 0
  %362 = load i32, i32* %wins883, align 4
  %363 = load i32, i32* %t, align 4
  %add884 = add nsw i32 %363, 14
  %idxprom885 = sext i32 %add884 to i64
  %arrayidx886 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom885
  %364 = load i32, i32* %arrayidx886, align 4
  %idxprom887 = sext i32 %364 to i64
  %arrayidx888 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom887
  %loses889 = getelementptr inbounds %struct.info, %struct.info* %arrayidx888, i32 0, i32 1
  %365 = load i32, i32* %loses889, align 4
  %add890 = add nsw i32 %362, %365
  %366 = load i32, i32* %t, align 4
  %add891 = add nsw i32 %366, 14
  %idxprom892 = sext i32 %add891 to i64
  %arrayidx893 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom892
  %367 = load i32, i32* %arrayidx893, align 4
  %idxprom894 = sext i32 %367 to i64
  %arrayidx895 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom894
  %ties896 = getelementptr inbounds %struct.info, %struct.info* %arrayidx895, i32 0, i32 2
  %368 = load i32, i32* %ties896, align 4
  %add897 = add nsw i32 %add890, %368
  %cmp898 = icmp eq i32 %add897, 0
  br i1 %cmp898, label %cond.true.900, label %cond.false.901

cond.true.900:                                    ; preds = %cond.false.877
  br label %cond.end.940

cond.false.901:                                   ; preds = %cond.false.877
  %369 = load i32, i32* %t, align 4
  %add902 = add nsw i32 %369, 14
  %idxprom903 = sext i32 %add902 to i64
  %arrayidx904 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom903
  %370 = load i32, i32* %arrayidx904, align 4
  %idxprom905 = sext i32 %370 to i64
  %arrayidx906 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom905
  %wins907 = getelementptr inbounds %struct.info, %struct.info* %arrayidx906, i32 0, i32 0
  %371 = load i32, i32* %wins907, align 4
  %conv908 = sitofp i32 %371 to double
  %372 = load i32, i32* %t, align 4
  %add909 = add nsw i32 %372, 14
  %idxprom910 = sext i32 %add909 to i64
  %arrayidx911 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom910
  %373 = load i32, i32* %arrayidx911, align 4
  %idxprom912 = sext i32 %373 to i64
  %arrayidx913 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom912
  %ties914 = getelementptr inbounds %struct.info, %struct.info* %arrayidx913, i32 0, i32 2
  %374 = load i32, i32* %ties914, align 4
  %conv915 = sitofp i32 %374 to double
  %mul916 = fmul double 5.000000e-01, %conv915
  %add917 = fadd double %conv908, %mul916
  %375 = load i32, i32* %t, align 4
  %add918 = add nsw i32 %375, 14
  %idxprom919 = sext i32 %add918 to i64
  %arrayidx920 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom919
  %376 = load i32, i32* %arrayidx920, align 4
  %idxprom921 = sext i32 %376 to i64
  %arrayidx922 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom921
  %wins923 = getelementptr inbounds %struct.info, %struct.info* %arrayidx922, i32 0, i32 0
  %377 = load i32, i32* %wins923, align 4
  %378 = load i32, i32* %t, align 4
  %add924 = add nsw i32 %378, 14
  %idxprom925 = sext i32 %add924 to i64
  %arrayidx926 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom925
  %379 = load i32, i32* %arrayidx926, align 4
  %idxprom927 = sext i32 %379 to i64
  %arrayidx928 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom927
  %loses929 = getelementptr inbounds %struct.info, %struct.info* %arrayidx928, i32 0, i32 1
  %380 = load i32, i32* %loses929, align 4
  %add930 = add nsw i32 %377, %380
  %381 = load i32, i32* %t, align 4
  %add931 = add nsw i32 %381, 14
  %idxprom932 = sext i32 %add931 to i64
  %arrayidx933 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom932
  %382 = load i32, i32* %arrayidx933, align 4
  %idxprom934 = sext i32 %382 to i64
  %arrayidx935 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom934
  %ties936 = getelementptr inbounds %struct.info, %struct.info* %arrayidx935, i32 0, i32 2
  %383 = load i32, i32* %ties936, align 4
  %add937 = add nsw i32 %add930, %383
  %conv938 = sitofp i32 %add937 to double
  %div939 = fdiv double %add917, %conv938
  br label %cond.end.940

cond.end.940:                                     ; preds = %cond.false.901, %cond.true.900
  %cond941 = phi double [ 0.000000e+00, %cond.true.900 ], [ %div939, %cond.false.901 ]
  %mul942 = fmul double %cond941, 1.000000e+03
  %add943 = fadd double %mul942, 5.000000e-01
  %conv944 = fptosi double %add943 to i32
  br label %cond.end.945

cond.end.945:                                     ; preds = %cond.end.940, %cond.true.876
  %cond946 = phi i32 [ 0, %cond.true.876 ], [ %conv944, %cond.end.940 ]
  %384 = load i32, i32* %t, align 4
  %add947 = add nsw i32 %384, 14
  %idxprom948 = sext i32 %add947 to i64
  %arrayidx949 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom948
  %385 = load i32, i32* %arrayidx949, align 4
  %idxprom950 = sext i32 %385 to i64
  %arrayidx951 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom950
  %points_for952 = getelementptr inbounds %struct.info, %struct.info* %arrayidx951, i32 0, i32 3
  %386 = load i32, i32* %points_for952, align 4
  %387 = load i32, i32* %t, align 4
  %add953 = add nsw i32 %387, 14
  %idxprom954 = sext i32 %add953 to i64
  %arrayidx955 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom954
  %388 = load i32, i32* %arrayidx955, align 4
  %idxprom956 = sext i32 %388 to i64
  %arrayidx957 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom956
  %points_against958 = getelementptr inbounds %struct.info, %struct.info* %arrayidx957, i32 0, i32 4
  %389 = load i32, i32* %points_against958, align 4
  %call959 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %296, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay709, i8* %cond724, i32 %305, i32 %308, i32 %311, i8* %cond809, i32 %cond946, i32 %386, i32 %389)
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call960 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %for.inc.961

for.inc.961:                                      ; preds = %cond.end.945
  %391 = load i32, i32* %t, align 4
  %inc962 = add nsw i32 %391, 1
  store i32 %inc962, i32* %t, align 4
  br label %for.cond.473

for.end.963:                                      ; preds = %for.cond.473
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %393 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom964 = sext i32 %393 to i64
  %arrayidx965 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom964
  %arrayidx966 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx965, i32 0, i64 1
  %arraydecay967 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx966, i32 0, i32 0
  %394 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %call968 = call i32 @a_champ(i32 %394)
  %tobool969 = icmp ne i32 %call968, 0
  br i1 %tobool969, label %cond.true.970, label %cond.false.971

cond.true.970:                                    ; preds = %for.end.963
  br label %cond.end.975

cond.false.971:                                   ; preds = %for.end.963
  %395 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %call972 = call i32 @a_wild_card(i32 %395)
  %tobool973 = icmp ne i32 %call972, 0
  %cond974 = select i1 %tobool973, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.975

cond.end.975:                                     ; preds = %cond.false.971, %cond.true.970
  %cond976 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.970 ], [ %cond974, %cond.false.971 ]
  %396 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom977 = sext i32 %396 to i64
  %arrayidx978 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom977
  %wins979 = getelementptr inbounds %struct.info, %struct.info* %arrayidx978, i32 0, i32 0
  %397 = load i32, i32* %wins979, align 4
  %398 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom980 = sext i32 %398 to i64
  %arrayidx981 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom980
  %loses982 = getelementptr inbounds %struct.info, %struct.info* %arrayidx981, i32 0, i32 1
  %399 = load i32, i32* %loses982, align 4
  %400 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom983 = sext i32 %400 to i64
  %arrayidx984 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom983
  %ties985 = getelementptr inbounds %struct.info, %struct.info* %arrayidx984, i32 0, i32 2
  %401 = load i32, i32* %ties985, align 4
  %402 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom986 = sext i32 %402 to i64
  %arrayidx987 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom986
  %wins988 = getelementptr inbounds %struct.info, %struct.info* %arrayidx987, i32 0, i32 0
  %403 = load i32, i32* %wins988, align 4
  %404 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom989 = sext i32 %404 to i64
  %arrayidx990 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom989
  %loses991 = getelementptr inbounds %struct.info, %struct.info* %arrayidx990, i32 0, i32 1
  %405 = load i32, i32* %loses991, align 4
  %add992 = add nsw i32 %403, %405
  %406 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom993 = sext i32 %406 to i64
  %arrayidx994 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom993
  %ties995 = getelementptr inbounds %struct.info, %struct.info* %arrayidx994, i32 0, i32 2
  %407 = load i32, i32* %ties995, align 4
  %add996 = add nsw i32 %add992, %407
  %cmp997 = icmp eq i32 %add996, 0
  br i1 %cmp997, label %cond.true.999, label %cond.false.1000

cond.true.999:                                    ; preds = %cond.end.975
  br label %cond.end.1024

cond.false.1000:                                  ; preds = %cond.end.975
  %408 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1001 = sext i32 %408 to i64
  %arrayidx1002 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1001
  %wins1003 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1002, i32 0, i32 0
  %409 = load i32, i32* %wins1003, align 4
  %conv1004 = sitofp i32 %409 to double
  %410 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1005 = sext i32 %410 to i64
  %arrayidx1006 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1005
  %ties1007 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1006, i32 0, i32 2
  %411 = load i32, i32* %ties1007, align 4
  %conv1008 = sitofp i32 %411 to double
  %mul1009 = fmul double 5.000000e-01, %conv1008
  %add1010 = fadd double %conv1004, %mul1009
  %412 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1011 = sext i32 %412 to i64
  %arrayidx1012 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1011
  %wins1013 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1012, i32 0, i32 0
  %413 = load i32, i32* %wins1013, align 4
  %414 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1014 = sext i32 %414 to i64
  %arrayidx1015 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1014
  %loses1016 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1015, i32 0, i32 1
  %415 = load i32, i32* %loses1016, align 4
  %add1017 = add nsw i32 %413, %415
  %416 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1018 = sext i32 %416 to i64
  %arrayidx1019 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1018
  %ties1020 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1019, i32 0, i32 2
  %417 = load i32, i32* %ties1020, align 4
  %add1021 = add nsw i32 %add1017, %417
  %conv1022 = sitofp i32 %add1021 to double
  %div1023 = fdiv double %add1010, %conv1022
  br label %cond.end.1024

cond.end.1024:                                    ; preds = %cond.false.1000, %cond.true.999
  %cond1025 = phi double [ 0.000000e+00, %cond.true.999 ], [ %div1023, %cond.false.1000 ]
  %cmp1026 = fcmp oge double %cond1025, 1.000000e+00
  %cond1028 = select i1 %cmp1026, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %418 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1029 = sext i32 %418 to i64
  %arrayidx1030 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1029
  %wins1031 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1030, i32 0, i32 0
  %419 = load i32, i32* %wins1031, align 4
  %420 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1032 = sext i32 %420 to i64
  %arrayidx1033 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1032
  %loses1034 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1033, i32 0, i32 1
  %421 = load i32, i32* %loses1034, align 4
  %add1035 = add nsw i32 %419, %421
  %422 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1036 = sext i32 %422 to i64
  %arrayidx1037 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1036
  %ties1038 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1037, i32 0, i32 2
  %423 = load i32, i32* %ties1038, align 4
  %add1039 = add nsw i32 %add1035, %423
  %cmp1040 = icmp eq i32 %add1039, 0
  br i1 %cmp1040, label %cond.true.1042, label %cond.false.1043

cond.true.1042:                                   ; preds = %cond.end.1024
  br label %cond.end.1067

cond.false.1043:                                  ; preds = %cond.end.1024
  %424 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1044 = sext i32 %424 to i64
  %arrayidx1045 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1044
  %wins1046 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1045, i32 0, i32 0
  %425 = load i32, i32* %wins1046, align 4
  %conv1047 = sitofp i32 %425 to double
  %426 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1048 = sext i32 %426 to i64
  %arrayidx1049 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1048
  %ties1050 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1049, i32 0, i32 2
  %427 = load i32, i32* %ties1050, align 4
  %conv1051 = sitofp i32 %427 to double
  %mul1052 = fmul double 5.000000e-01, %conv1051
  %add1053 = fadd double %conv1047, %mul1052
  %428 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1054 = sext i32 %428 to i64
  %arrayidx1055 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1054
  %wins1056 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1055, i32 0, i32 0
  %429 = load i32, i32* %wins1056, align 4
  %430 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1057 = sext i32 %430 to i64
  %arrayidx1058 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1057
  %loses1059 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1058, i32 0, i32 1
  %431 = load i32, i32* %loses1059, align 4
  %add1060 = add nsw i32 %429, %431
  %432 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1061 = sext i32 %432 to i64
  %arrayidx1062 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1061
  %ties1063 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1062, i32 0, i32 2
  %433 = load i32, i32* %ties1063, align 4
  %add1064 = add nsw i32 %add1060, %433
  %conv1065 = sitofp i32 %add1064 to double
  %div1066 = fdiv double %add1053, %conv1065
  br label %cond.end.1067

cond.end.1067:                                    ; preds = %cond.false.1043, %cond.true.1042
  %cond1068 = phi double [ 0.000000e+00, %cond.true.1042 ], [ %div1066, %cond.false.1043 ]
  %cmp1069 = fcmp oge double %cond1068, 1.000000e+00
  br i1 %cmp1069, label %cond.true.1071, label %cond.false.1072

cond.true.1071:                                   ; preds = %cond.end.1067
  br label %cond.end.1116

cond.false.1072:                                  ; preds = %cond.end.1067
  %434 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1073 = sext i32 %434 to i64
  %arrayidx1074 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1073
  %wins1075 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1074, i32 0, i32 0
  %435 = load i32, i32* %wins1075, align 4
  %436 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1076 = sext i32 %436 to i64
  %arrayidx1077 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1076
  %loses1078 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1077, i32 0, i32 1
  %437 = load i32, i32* %loses1078, align 4
  %add1079 = add nsw i32 %435, %437
  %438 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1080 = sext i32 %438 to i64
  %arrayidx1081 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1080
  %ties1082 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1081, i32 0, i32 2
  %439 = load i32, i32* %ties1082, align 4
  %add1083 = add nsw i32 %add1079, %439
  %cmp1084 = icmp eq i32 %add1083, 0
  br i1 %cmp1084, label %cond.true.1086, label %cond.false.1087

cond.true.1086:                                   ; preds = %cond.false.1072
  br label %cond.end.1111

cond.false.1087:                                  ; preds = %cond.false.1072
  %440 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1088 = sext i32 %440 to i64
  %arrayidx1089 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1088
  %wins1090 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1089, i32 0, i32 0
  %441 = load i32, i32* %wins1090, align 4
  %conv1091 = sitofp i32 %441 to double
  %442 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1092 = sext i32 %442 to i64
  %arrayidx1093 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1092
  %ties1094 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1093, i32 0, i32 2
  %443 = load i32, i32* %ties1094, align 4
  %conv1095 = sitofp i32 %443 to double
  %mul1096 = fmul double 5.000000e-01, %conv1095
  %add1097 = fadd double %conv1091, %mul1096
  %444 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1098 = sext i32 %444 to i64
  %arrayidx1099 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1098
  %wins1100 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1099, i32 0, i32 0
  %445 = load i32, i32* %wins1100, align 4
  %446 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1101 = sext i32 %446 to i64
  %arrayidx1102 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1101
  %loses1103 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1102, i32 0, i32 1
  %447 = load i32, i32* %loses1103, align 4
  %add1104 = add nsw i32 %445, %447
  %448 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1105 = sext i32 %448 to i64
  %arrayidx1106 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1105
  %ties1107 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1106, i32 0, i32 2
  %449 = load i32, i32* %ties1107, align 4
  %add1108 = add nsw i32 %add1104, %449
  %conv1109 = sitofp i32 %add1108 to double
  %div1110 = fdiv double %add1097, %conv1109
  br label %cond.end.1111

cond.end.1111:                                    ; preds = %cond.false.1087, %cond.true.1086
  %cond1112 = phi double [ 0.000000e+00, %cond.true.1086 ], [ %div1110, %cond.false.1087 ]
  %mul1113 = fmul double %cond1112, 1.000000e+03
  %add1114 = fadd double %mul1113, 5.000000e-01
  %conv1115 = fptosi double %add1114 to i32
  br label %cond.end.1116

cond.end.1116:                                    ; preds = %cond.end.1111, %cond.true.1071
  %cond1117 = phi i32 [ 0, %cond.true.1071 ], [ %conv1115, %cond.end.1111 ]
  %450 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1118 = sext i32 %450 to i64
  %arrayidx1119 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1118
  %points_for1120 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1119, i32 0, i32 3
  %451 = load i32, i32* %points_for1120, align 4
  %452 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 10), align 4
  %idxprom1121 = sext i32 %452 to i64
  %arrayidx1122 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1121
  %points_against1123 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1122, i32 0, i32 4
  %453 = load i32, i32* %points_against1123, align 4
  %call1124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %392, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay967, i8* %cond976, i32 %397, i32 %399, i32 %401, i8* %cond1028, i32 %cond1117, i32 %451, i32 %453)
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %454, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  %455 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %455, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.101, i32 0, i32 0))
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %456, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.102, i32 0, i32 0))
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %458 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1128 = sext i32 %458 to i64
  %arrayidx1129 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom1128
  %arrayidx1130 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx1129, i32 0, i64 1
  %arraydecay1131 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1130, i32 0, i32 0
  %459 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %call1132 = call i32 @a_champ(i32 %459)
  %tobool1133 = icmp ne i32 %call1132, 0
  br i1 %tobool1133, label %cond.true.1134, label %cond.false.1135

cond.true.1134:                                   ; preds = %cond.end.1116
  br label %cond.end.1139

cond.false.1135:                                  ; preds = %cond.end.1116
  %460 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %call1136 = call i32 @a_wild_card(i32 %460)
  %tobool1137 = icmp ne i32 %call1136, 0
  %cond1138 = select i1 %tobool1137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.1139

cond.end.1139:                                    ; preds = %cond.false.1135, %cond.true.1134
  %cond1140 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.1134 ], [ %cond1138, %cond.false.1135 ]
  %461 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1141 = sext i32 %461 to i64
  %arrayidx1142 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1141
  %wins1143 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1142, i32 0, i32 0
  %462 = load i32, i32* %wins1143, align 4
  %463 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1144 = sext i32 %463 to i64
  %arrayidx1145 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1144
  %loses1146 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1145, i32 0, i32 1
  %464 = load i32, i32* %loses1146, align 4
  %465 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1147 = sext i32 %465 to i64
  %arrayidx1148 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1147
  %ties1149 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1148, i32 0, i32 2
  %466 = load i32, i32* %ties1149, align 4
  %467 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1150 = sext i32 %467 to i64
  %arrayidx1151 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1150
  %wins1152 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1151, i32 0, i32 0
  %468 = load i32, i32* %wins1152, align 4
  %469 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1153 = sext i32 %469 to i64
  %arrayidx1154 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1153
  %loses1155 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1154, i32 0, i32 1
  %470 = load i32, i32* %loses1155, align 4
  %add1156 = add nsw i32 %468, %470
  %471 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1157 = sext i32 %471 to i64
  %arrayidx1158 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1157
  %ties1159 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1158, i32 0, i32 2
  %472 = load i32, i32* %ties1159, align 4
  %add1160 = add nsw i32 %add1156, %472
  %cmp1161 = icmp eq i32 %add1160, 0
  br i1 %cmp1161, label %cond.true.1163, label %cond.false.1164

cond.true.1163:                                   ; preds = %cond.end.1139
  br label %cond.end.1188

cond.false.1164:                                  ; preds = %cond.end.1139
  %473 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1165 = sext i32 %473 to i64
  %arrayidx1166 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1165
  %wins1167 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1166, i32 0, i32 0
  %474 = load i32, i32* %wins1167, align 4
  %conv1168 = sitofp i32 %474 to double
  %475 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1169 = sext i32 %475 to i64
  %arrayidx1170 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1169
  %ties1171 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1170, i32 0, i32 2
  %476 = load i32, i32* %ties1171, align 4
  %conv1172 = sitofp i32 %476 to double
  %mul1173 = fmul double 5.000000e-01, %conv1172
  %add1174 = fadd double %conv1168, %mul1173
  %477 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1175 = sext i32 %477 to i64
  %arrayidx1176 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1175
  %wins1177 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1176, i32 0, i32 0
  %478 = load i32, i32* %wins1177, align 4
  %479 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1178 = sext i32 %479 to i64
  %arrayidx1179 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1178
  %loses1180 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1179, i32 0, i32 1
  %480 = load i32, i32* %loses1180, align 4
  %add1181 = add nsw i32 %478, %480
  %481 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1182 = sext i32 %481 to i64
  %arrayidx1183 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1182
  %ties1184 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1183, i32 0, i32 2
  %482 = load i32, i32* %ties1184, align 4
  %add1185 = add nsw i32 %add1181, %482
  %conv1186 = sitofp i32 %add1185 to double
  %div1187 = fdiv double %add1174, %conv1186
  br label %cond.end.1188

cond.end.1188:                                    ; preds = %cond.false.1164, %cond.true.1163
  %cond1189 = phi double [ 0.000000e+00, %cond.true.1163 ], [ %div1187, %cond.false.1164 ]
  %cmp1190 = fcmp oge double %cond1189, 1.000000e+00
  %cond1192 = select i1 %cmp1190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %483 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1193 = sext i32 %483 to i64
  %arrayidx1194 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1193
  %wins1195 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1194, i32 0, i32 0
  %484 = load i32, i32* %wins1195, align 4
  %485 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1196 = sext i32 %485 to i64
  %arrayidx1197 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1196
  %loses1198 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1197, i32 0, i32 1
  %486 = load i32, i32* %loses1198, align 4
  %add1199 = add nsw i32 %484, %486
  %487 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1200 = sext i32 %487 to i64
  %arrayidx1201 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1200
  %ties1202 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1201, i32 0, i32 2
  %488 = load i32, i32* %ties1202, align 4
  %add1203 = add nsw i32 %add1199, %488
  %cmp1204 = icmp eq i32 %add1203, 0
  br i1 %cmp1204, label %cond.true.1206, label %cond.false.1207

cond.true.1206:                                   ; preds = %cond.end.1188
  br label %cond.end.1231

cond.false.1207:                                  ; preds = %cond.end.1188
  %489 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1208 = sext i32 %489 to i64
  %arrayidx1209 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1208
  %wins1210 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1209, i32 0, i32 0
  %490 = load i32, i32* %wins1210, align 4
  %conv1211 = sitofp i32 %490 to double
  %491 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1212 = sext i32 %491 to i64
  %arrayidx1213 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1212
  %ties1214 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1213, i32 0, i32 2
  %492 = load i32, i32* %ties1214, align 4
  %conv1215 = sitofp i32 %492 to double
  %mul1216 = fmul double 5.000000e-01, %conv1215
  %add1217 = fadd double %conv1211, %mul1216
  %493 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1218 = sext i32 %493 to i64
  %arrayidx1219 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1218
  %wins1220 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1219, i32 0, i32 0
  %494 = load i32, i32* %wins1220, align 4
  %495 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1221 = sext i32 %495 to i64
  %arrayidx1222 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1221
  %loses1223 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1222, i32 0, i32 1
  %496 = load i32, i32* %loses1223, align 4
  %add1224 = add nsw i32 %494, %496
  %497 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1225 = sext i32 %497 to i64
  %arrayidx1226 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1225
  %ties1227 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1226, i32 0, i32 2
  %498 = load i32, i32* %ties1227, align 4
  %add1228 = add nsw i32 %add1224, %498
  %conv1229 = sitofp i32 %add1228 to double
  %div1230 = fdiv double %add1217, %conv1229
  br label %cond.end.1231

cond.end.1231:                                    ; preds = %cond.false.1207, %cond.true.1206
  %cond1232 = phi double [ 0.000000e+00, %cond.true.1206 ], [ %div1230, %cond.false.1207 ]
  %cmp1233 = fcmp oge double %cond1232, 1.000000e+00
  br i1 %cmp1233, label %cond.true.1235, label %cond.false.1236

cond.true.1235:                                   ; preds = %cond.end.1231
  br label %cond.end.1280

cond.false.1236:                                  ; preds = %cond.end.1231
  %499 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1237 = sext i32 %499 to i64
  %arrayidx1238 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1237
  %wins1239 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1238, i32 0, i32 0
  %500 = load i32, i32* %wins1239, align 4
  %501 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1240 = sext i32 %501 to i64
  %arrayidx1241 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1240
  %loses1242 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1241, i32 0, i32 1
  %502 = load i32, i32* %loses1242, align 4
  %add1243 = add nsw i32 %500, %502
  %503 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1244 = sext i32 %503 to i64
  %arrayidx1245 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1244
  %ties1246 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1245, i32 0, i32 2
  %504 = load i32, i32* %ties1246, align 4
  %add1247 = add nsw i32 %add1243, %504
  %cmp1248 = icmp eq i32 %add1247, 0
  br i1 %cmp1248, label %cond.true.1250, label %cond.false.1251

cond.true.1250:                                   ; preds = %cond.false.1236
  br label %cond.end.1275

cond.false.1251:                                  ; preds = %cond.false.1236
  %505 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1252 = sext i32 %505 to i64
  %arrayidx1253 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1252
  %wins1254 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1253, i32 0, i32 0
  %506 = load i32, i32* %wins1254, align 4
  %conv1255 = sitofp i32 %506 to double
  %507 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1256 = sext i32 %507 to i64
  %arrayidx1257 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1256
  %ties1258 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1257, i32 0, i32 2
  %508 = load i32, i32* %ties1258, align 4
  %conv1259 = sitofp i32 %508 to double
  %mul1260 = fmul double 5.000000e-01, %conv1259
  %add1261 = fadd double %conv1255, %mul1260
  %509 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1262 = sext i32 %509 to i64
  %arrayidx1263 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1262
  %wins1264 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1263, i32 0, i32 0
  %510 = load i32, i32* %wins1264, align 4
  %511 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1265 = sext i32 %511 to i64
  %arrayidx1266 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1265
  %loses1267 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1266, i32 0, i32 1
  %512 = load i32, i32* %loses1267, align 4
  %add1268 = add nsw i32 %510, %512
  %513 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1269 = sext i32 %513 to i64
  %arrayidx1270 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1269
  %ties1271 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1270, i32 0, i32 2
  %514 = load i32, i32* %ties1271, align 4
  %add1272 = add nsw i32 %add1268, %514
  %conv1273 = sitofp i32 %add1272 to double
  %div1274 = fdiv double %add1261, %conv1273
  br label %cond.end.1275

cond.end.1275:                                    ; preds = %cond.false.1251, %cond.true.1250
  %cond1276 = phi double [ 0.000000e+00, %cond.true.1250 ], [ %div1274, %cond.false.1251 ]
  %mul1277 = fmul double %cond1276, 1.000000e+03
  %add1278 = fadd double %mul1277, 5.000000e-01
  %conv1279 = fptosi double %add1278 to i32
  br label %cond.end.1280

cond.end.1280:                                    ; preds = %cond.end.1275, %cond.true.1235
  %cond1281 = phi i32 [ 0, %cond.true.1235 ], [ %conv1279, %cond.end.1275 ]
  %515 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1282 = sext i32 %515 to i64
  %arrayidx1283 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1282
  %points_for1284 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1283, i32 0, i32 3
  %516 = load i32, i32* %points_for1284, align 4
  %517 = load i32, i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i64 24), align 4
  %idxprom1285 = sext i32 %517 to i64
  %arrayidx1286 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1285
  %points_against1287 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1286, i32 0, i32 4
  %518 = load i32, i32* %points_against1287, align 4
  %call1288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay1131, i8* %cond1140, i32 %462, i32 %464, i32 %466, i8* %cond1192, i32 %cond1281, i32 %516, i32 %518)
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store i32 11, i32* %t, align 4
  br label %for.cond.1290

for.cond.1290:                                    ; preds = %for.inc.1778, %cond.end.1280
  %520 = load i32, i32* %t, align 4
  %cmp1291 = icmp sle i32 %520, 14
  br i1 %cmp1291, label %for.body.1293, label %for.end.1780

for.body.1293:                                    ; preds = %for.cond.1290
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %522 = load i32, i32* %t, align 4
  %idxprom1294 = sext i32 %522 to i64
  %arrayidx1295 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1294
  %523 = load i32, i32* %arrayidx1295, align 4
  %idxprom1296 = sext i32 %523 to i64
  %arrayidx1297 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom1296
  %arrayidx1298 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx1297, i32 0, i64 1
  %arraydecay1299 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1298, i32 0, i32 0
  %524 = load i32, i32* %t, align 4
  %idxprom1300 = sext i32 %524 to i64
  %arrayidx1301 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1300
  %525 = load i32, i32* %arrayidx1301, align 4
  %call1302 = call i32 @a_champ(i32 %525)
  %tobool1303 = icmp ne i32 %call1302, 0
  br i1 %tobool1303, label %cond.true.1304, label %cond.false.1305

cond.true.1304:                                   ; preds = %for.body.1293
  br label %cond.end.1311

cond.false.1305:                                  ; preds = %for.body.1293
  %526 = load i32, i32* %t, align 4
  %idxprom1306 = sext i32 %526 to i64
  %arrayidx1307 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1306
  %527 = load i32, i32* %arrayidx1307, align 4
  %call1308 = call i32 @a_wild_card(i32 %527)
  %tobool1309 = icmp ne i32 %call1308, 0
  %cond1310 = select i1 %tobool1309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.1311

cond.end.1311:                                    ; preds = %cond.false.1305, %cond.true.1304
  %cond1312 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.1304 ], [ %cond1310, %cond.false.1305 ]
  %528 = load i32, i32* %t, align 4
  %idxprom1313 = sext i32 %528 to i64
  %arrayidx1314 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1313
  %529 = load i32, i32* %arrayidx1314, align 4
  %idxprom1315 = sext i32 %529 to i64
  %arrayidx1316 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1315
  %wins1317 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1316, i32 0, i32 0
  %530 = load i32, i32* %wins1317, align 4
  %531 = load i32, i32* %t, align 4
  %idxprom1318 = sext i32 %531 to i64
  %arrayidx1319 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1318
  %532 = load i32, i32* %arrayidx1319, align 4
  %idxprom1320 = sext i32 %532 to i64
  %arrayidx1321 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1320
  %loses1322 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1321, i32 0, i32 1
  %533 = load i32, i32* %loses1322, align 4
  %534 = load i32, i32* %t, align 4
  %idxprom1323 = sext i32 %534 to i64
  %arrayidx1324 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1323
  %535 = load i32, i32* %arrayidx1324, align 4
  %idxprom1325 = sext i32 %535 to i64
  %arrayidx1326 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1325
  %ties1327 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1326, i32 0, i32 2
  %536 = load i32, i32* %ties1327, align 4
  %537 = load i32, i32* %t, align 4
  %idxprom1328 = sext i32 %537 to i64
  %arrayidx1329 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1328
  %538 = load i32, i32* %arrayidx1329, align 4
  %idxprom1330 = sext i32 %538 to i64
  %arrayidx1331 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1330
  %wins1332 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1331, i32 0, i32 0
  %539 = load i32, i32* %wins1332, align 4
  %540 = load i32, i32* %t, align 4
  %idxprom1333 = sext i32 %540 to i64
  %arrayidx1334 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1333
  %541 = load i32, i32* %arrayidx1334, align 4
  %idxprom1335 = sext i32 %541 to i64
  %arrayidx1336 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1335
  %loses1337 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1336, i32 0, i32 1
  %542 = load i32, i32* %loses1337, align 4
  %add1338 = add nsw i32 %539, %542
  %543 = load i32, i32* %t, align 4
  %idxprom1339 = sext i32 %543 to i64
  %arrayidx1340 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1339
  %544 = load i32, i32* %arrayidx1340, align 4
  %idxprom1341 = sext i32 %544 to i64
  %arrayidx1342 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1341
  %ties1343 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1342, i32 0, i32 2
  %545 = load i32, i32* %ties1343, align 4
  %add1344 = add nsw i32 %add1338, %545
  %cmp1345 = icmp eq i32 %add1344, 0
  br i1 %cmp1345, label %cond.true.1347, label %cond.false.1348

cond.true.1347:                                   ; preds = %cond.end.1311
  br label %cond.end.1382

cond.false.1348:                                  ; preds = %cond.end.1311
  %546 = load i32, i32* %t, align 4
  %idxprom1349 = sext i32 %546 to i64
  %arrayidx1350 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1349
  %547 = load i32, i32* %arrayidx1350, align 4
  %idxprom1351 = sext i32 %547 to i64
  %arrayidx1352 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1351
  %wins1353 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1352, i32 0, i32 0
  %548 = load i32, i32* %wins1353, align 4
  %conv1354 = sitofp i32 %548 to double
  %549 = load i32, i32* %t, align 4
  %idxprom1355 = sext i32 %549 to i64
  %arrayidx1356 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1355
  %550 = load i32, i32* %arrayidx1356, align 4
  %idxprom1357 = sext i32 %550 to i64
  %arrayidx1358 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1357
  %ties1359 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1358, i32 0, i32 2
  %551 = load i32, i32* %ties1359, align 4
  %conv1360 = sitofp i32 %551 to double
  %mul1361 = fmul double 5.000000e-01, %conv1360
  %add1362 = fadd double %conv1354, %mul1361
  %552 = load i32, i32* %t, align 4
  %idxprom1363 = sext i32 %552 to i64
  %arrayidx1364 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1363
  %553 = load i32, i32* %arrayidx1364, align 4
  %idxprom1365 = sext i32 %553 to i64
  %arrayidx1366 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1365
  %wins1367 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1366, i32 0, i32 0
  %554 = load i32, i32* %wins1367, align 4
  %555 = load i32, i32* %t, align 4
  %idxprom1368 = sext i32 %555 to i64
  %arrayidx1369 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1368
  %556 = load i32, i32* %arrayidx1369, align 4
  %idxprom1370 = sext i32 %556 to i64
  %arrayidx1371 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1370
  %loses1372 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1371, i32 0, i32 1
  %557 = load i32, i32* %loses1372, align 4
  %add1373 = add nsw i32 %554, %557
  %558 = load i32, i32* %t, align 4
  %idxprom1374 = sext i32 %558 to i64
  %arrayidx1375 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1374
  %559 = load i32, i32* %arrayidx1375, align 4
  %idxprom1376 = sext i32 %559 to i64
  %arrayidx1377 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1376
  %ties1378 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1377, i32 0, i32 2
  %560 = load i32, i32* %ties1378, align 4
  %add1379 = add nsw i32 %add1373, %560
  %conv1380 = sitofp i32 %add1379 to double
  %div1381 = fdiv double %add1362, %conv1380
  br label %cond.end.1382

cond.end.1382:                                    ; preds = %cond.false.1348, %cond.true.1347
  %cond1383 = phi double [ 0.000000e+00, %cond.true.1347 ], [ %div1381, %cond.false.1348 ]
  %cmp1384 = fcmp oge double %cond1383, 1.000000e+00
  %cond1386 = select i1 %cmp1384, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %561 = load i32, i32* %t, align 4
  %idxprom1387 = sext i32 %561 to i64
  %arrayidx1388 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1387
  %562 = load i32, i32* %arrayidx1388, align 4
  %idxprom1389 = sext i32 %562 to i64
  %arrayidx1390 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1389
  %wins1391 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1390, i32 0, i32 0
  %563 = load i32, i32* %wins1391, align 4
  %564 = load i32, i32* %t, align 4
  %idxprom1392 = sext i32 %564 to i64
  %arrayidx1393 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1392
  %565 = load i32, i32* %arrayidx1393, align 4
  %idxprom1394 = sext i32 %565 to i64
  %arrayidx1395 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1394
  %loses1396 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1395, i32 0, i32 1
  %566 = load i32, i32* %loses1396, align 4
  %add1397 = add nsw i32 %563, %566
  %567 = load i32, i32* %t, align 4
  %idxprom1398 = sext i32 %567 to i64
  %arrayidx1399 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1398
  %568 = load i32, i32* %arrayidx1399, align 4
  %idxprom1400 = sext i32 %568 to i64
  %arrayidx1401 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1400
  %ties1402 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1401, i32 0, i32 2
  %569 = load i32, i32* %ties1402, align 4
  %add1403 = add nsw i32 %add1397, %569
  %cmp1404 = icmp eq i32 %add1403, 0
  br i1 %cmp1404, label %cond.true.1406, label %cond.false.1407

cond.true.1406:                                   ; preds = %cond.end.1382
  br label %cond.end.1441

cond.false.1407:                                  ; preds = %cond.end.1382
  %570 = load i32, i32* %t, align 4
  %idxprom1408 = sext i32 %570 to i64
  %arrayidx1409 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1408
  %571 = load i32, i32* %arrayidx1409, align 4
  %idxprom1410 = sext i32 %571 to i64
  %arrayidx1411 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1410
  %wins1412 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1411, i32 0, i32 0
  %572 = load i32, i32* %wins1412, align 4
  %conv1413 = sitofp i32 %572 to double
  %573 = load i32, i32* %t, align 4
  %idxprom1414 = sext i32 %573 to i64
  %arrayidx1415 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1414
  %574 = load i32, i32* %arrayidx1415, align 4
  %idxprom1416 = sext i32 %574 to i64
  %arrayidx1417 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1416
  %ties1418 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1417, i32 0, i32 2
  %575 = load i32, i32* %ties1418, align 4
  %conv1419 = sitofp i32 %575 to double
  %mul1420 = fmul double 5.000000e-01, %conv1419
  %add1421 = fadd double %conv1413, %mul1420
  %576 = load i32, i32* %t, align 4
  %idxprom1422 = sext i32 %576 to i64
  %arrayidx1423 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1422
  %577 = load i32, i32* %arrayidx1423, align 4
  %idxprom1424 = sext i32 %577 to i64
  %arrayidx1425 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1424
  %wins1426 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1425, i32 0, i32 0
  %578 = load i32, i32* %wins1426, align 4
  %579 = load i32, i32* %t, align 4
  %idxprom1427 = sext i32 %579 to i64
  %arrayidx1428 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1427
  %580 = load i32, i32* %arrayidx1428, align 4
  %idxprom1429 = sext i32 %580 to i64
  %arrayidx1430 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1429
  %loses1431 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1430, i32 0, i32 1
  %581 = load i32, i32* %loses1431, align 4
  %add1432 = add nsw i32 %578, %581
  %582 = load i32, i32* %t, align 4
  %idxprom1433 = sext i32 %582 to i64
  %arrayidx1434 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1433
  %583 = load i32, i32* %arrayidx1434, align 4
  %idxprom1435 = sext i32 %583 to i64
  %arrayidx1436 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1435
  %ties1437 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1436, i32 0, i32 2
  %584 = load i32, i32* %ties1437, align 4
  %add1438 = add nsw i32 %add1432, %584
  %conv1439 = sitofp i32 %add1438 to double
  %div1440 = fdiv double %add1421, %conv1439
  br label %cond.end.1441

cond.end.1441:                                    ; preds = %cond.false.1407, %cond.true.1406
  %cond1442 = phi double [ 0.000000e+00, %cond.true.1406 ], [ %div1440, %cond.false.1407 ]
  %cmp1443 = fcmp oge double %cond1442, 1.000000e+00
  br i1 %cmp1443, label %cond.true.1445, label %cond.false.1446

cond.true.1445:                                   ; preds = %cond.end.1441
  br label %cond.end.1506

cond.false.1446:                                  ; preds = %cond.end.1441
  %585 = load i32, i32* %t, align 4
  %idxprom1447 = sext i32 %585 to i64
  %arrayidx1448 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1447
  %586 = load i32, i32* %arrayidx1448, align 4
  %idxprom1449 = sext i32 %586 to i64
  %arrayidx1450 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1449
  %wins1451 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1450, i32 0, i32 0
  %587 = load i32, i32* %wins1451, align 4
  %588 = load i32, i32* %t, align 4
  %idxprom1452 = sext i32 %588 to i64
  %arrayidx1453 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1452
  %589 = load i32, i32* %arrayidx1453, align 4
  %idxprom1454 = sext i32 %589 to i64
  %arrayidx1455 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1454
  %loses1456 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1455, i32 0, i32 1
  %590 = load i32, i32* %loses1456, align 4
  %add1457 = add nsw i32 %587, %590
  %591 = load i32, i32* %t, align 4
  %idxprom1458 = sext i32 %591 to i64
  %arrayidx1459 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1458
  %592 = load i32, i32* %arrayidx1459, align 4
  %idxprom1460 = sext i32 %592 to i64
  %arrayidx1461 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1460
  %ties1462 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1461, i32 0, i32 2
  %593 = load i32, i32* %ties1462, align 4
  %add1463 = add nsw i32 %add1457, %593
  %cmp1464 = icmp eq i32 %add1463, 0
  br i1 %cmp1464, label %cond.true.1466, label %cond.false.1467

cond.true.1466:                                   ; preds = %cond.false.1446
  br label %cond.end.1501

cond.false.1467:                                  ; preds = %cond.false.1446
  %594 = load i32, i32* %t, align 4
  %idxprom1468 = sext i32 %594 to i64
  %arrayidx1469 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1468
  %595 = load i32, i32* %arrayidx1469, align 4
  %idxprom1470 = sext i32 %595 to i64
  %arrayidx1471 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1470
  %wins1472 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1471, i32 0, i32 0
  %596 = load i32, i32* %wins1472, align 4
  %conv1473 = sitofp i32 %596 to double
  %597 = load i32, i32* %t, align 4
  %idxprom1474 = sext i32 %597 to i64
  %arrayidx1475 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1474
  %598 = load i32, i32* %arrayidx1475, align 4
  %idxprom1476 = sext i32 %598 to i64
  %arrayidx1477 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1476
  %ties1478 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1477, i32 0, i32 2
  %599 = load i32, i32* %ties1478, align 4
  %conv1479 = sitofp i32 %599 to double
  %mul1480 = fmul double 5.000000e-01, %conv1479
  %add1481 = fadd double %conv1473, %mul1480
  %600 = load i32, i32* %t, align 4
  %idxprom1482 = sext i32 %600 to i64
  %arrayidx1483 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1482
  %601 = load i32, i32* %arrayidx1483, align 4
  %idxprom1484 = sext i32 %601 to i64
  %arrayidx1485 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1484
  %wins1486 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1485, i32 0, i32 0
  %602 = load i32, i32* %wins1486, align 4
  %603 = load i32, i32* %t, align 4
  %idxprom1487 = sext i32 %603 to i64
  %arrayidx1488 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1487
  %604 = load i32, i32* %arrayidx1488, align 4
  %idxprom1489 = sext i32 %604 to i64
  %arrayidx1490 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1489
  %loses1491 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1490, i32 0, i32 1
  %605 = load i32, i32* %loses1491, align 4
  %add1492 = add nsw i32 %602, %605
  %606 = load i32, i32* %t, align 4
  %idxprom1493 = sext i32 %606 to i64
  %arrayidx1494 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1493
  %607 = load i32, i32* %arrayidx1494, align 4
  %idxprom1495 = sext i32 %607 to i64
  %arrayidx1496 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1495
  %ties1497 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1496, i32 0, i32 2
  %608 = load i32, i32* %ties1497, align 4
  %add1498 = add nsw i32 %add1492, %608
  %conv1499 = sitofp i32 %add1498 to double
  %div1500 = fdiv double %add1481, %conv1499
  br label %cond.end.1501

cond.end.1501:                                    ; preds = %cond.false.1467, %cond.true.1466
  %cond1502 = phi double [ 0.000000e+00, %cond.true.1466 ], [ %div1500, %cond.false.1467 ]
  %mul1503 = fmul double %cond1502, 1.000000e+03
  %add1504 = fadd double %mul1503, 5.000000e-01
  %conv1505 = fptosi double %add1504 to i32
  br label %cond.end.1506

cond.end.1506:                                    ; preds = %cond.end.1501, %cond.true.1445
  %cond1507 = phi i32 [ 0, %cond.true.1445 ], [ %conv1505, %cond.end.1501 ]
  %609 = load i32, i32* %t, align 4
  %idxprom1508 = sext i32 %609 to i64
  %arrayidx1509 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1508
  %610 = load i32, i32* %arrayidx1509, align 4
  %idxprom1510 = sext i32 %610 to i64
  %arrayidx1511 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1510
  %points_for1512 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1511, i32 0, i32 3
  %611 = load i32, i32* %points_for1512, align 4
  %612 = load i32, i32* %t, align 4
  %idxprom1513 = sext i32 %612 to i64
  %arrayidx1514 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1513
  %613 = load i32, i32* %arrayidx1514, align 4
  %idxprom1515 = sext i32 %613 to i64
  %arrayidx1516 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1515
  %points_against1517 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1516, i32 0, i32 4
  %614 = load i32, i32* %points_against1517, align 4
  %call1518 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay1299, i8* %cond1312, i32 %530, i32 %533, i32 %536, i8* %cond1386, i32 %cond1507, i32 %611, i32 %614)
  %615 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %615, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0))
  %616 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %617 = load i32, i32* %t, align 4
  %add1520 = add nsw i32 %617, 14
  %idxprom1521 = sext i32 %add1520 to i64
  %arrayidx1522 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1521
  %618 = load i32, i32* %arrayidx1522, align 4
  %idxprom1523 = sext i32 %618 to i64
  %arrayidx1524 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom1523
  %arrayidx1525 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx1524, i32 0, i64 1
  %arraydecay1526 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1525, i32 0, i32 0
  %619 = load i32, i32* %t, align 4
  %add1527 = add nsw i32 %619, 14
  %idxprom1528 = sext i32 %add1527 to i64
  %arrayidx1529 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1528
  %620 = load i32, i32* %arrayidx1529, align 4
  %call1530 = call i32 @a_champ(i32 %620)
  %tobool1531 = icmp ne i32 %call1530, 0
  br i1 %tobool1531, label %cond.true.1532, label %cond.false.1533

cond.true.1532:                                   ; preds = %cond.end.1506
  br label %cond.end.1540

cond.false.1533:                                  ; preds = %cond.end.1506
  %621 = load i32, i32* %t, align 4
  %add1534 = add nsw i32 %621, 14
  %idxprom1535 = sext i32 %add1534 to i64
  %arrayidx1536 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1535
  %622 = load i32, i32* %arrayidx1536, align 4
  %call1537 = call i32 @a_wild_card(i32 %622)
  %tobool1538 = icmp ne i32 %call1537, 0
  %cond1539 = select i1 %tobool1538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  br label %cond.end.1540

cond.end.1540:                                    ; preds = %cond.false.1533, %cond.true.1532
  %cond1541 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), %cond.true.1532 ], [ %cond1539, %cond.false.1533 ]
  %623 = load i32, i32* %t, align 4
  %add1542 = add nsw i32 %623, 14
  %idxprom1543 = sext i32 %add1542 to i64
  %arrayidx1544 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1543
  %624 = load i32, i32* %arrayidx1544, align 4
  %idxprom1545 = sext i32 %624 to i64
  %arrayidx1546 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1545
  %wins1547 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1546, i32 0, i32 0
  %625 = load i32, i32* %wins1547, align 4
  %626 = load i32, i32* %t, align 4
  %add1548 = add nsw i32 %626, 14
  %idxprom1549 = sext i32 %add1548 to i64
  %arrayidx1550 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1549
  %627 = load i32, i32* %arrayidx1550, align 4
  %idxprom1551 = sext i32 %627 to i64
  %arrayidx1552 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1551
  %loses1553 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1552, i32 0, i32 1
  %628 = load i32, i32* %loses1553, align 4
  %629 = load i32, i32* %t, align 4
  %add1554 = add nsw i32 %629, 14
  %idxprom1555 = sext i32 %add1554 to i64
  %arrayidx1556 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1555
  %630 = load i32, i32* %arrayidx1556, align 4
  %idxprom1557 = sext i32 %630 to i64
  %arrayidx1558 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1557
  %ties1559 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1558, i32 0, i32 2
  %631 = load i32, i32* %ties1559, align 4
  %632 = load i32, i32* %t, align 4
  %add1560 = add nsw i32 %632, 14
  %idxprom1561 = sext i32 %add1560 to i64
  %arrayidx1562 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1561
  %633 = load i32, i32* %arrayidx1562, align 4
  %idxprom1563 = sext i32 %633 to i64
  %arrayidx1564 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1563
  %wins1565 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1564, i32 0, i32 0
  %634 = load i32, i32* %wins1565, align 4
  %635 = load i32, i32* %t, align 4
  %add1566 = add nsw i32 %635, 14
  %idxprom1567 = sext i32 %add1566 to i64
  %arrayidx1568 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1567
  %636 = load i32, i32* %arrayidx1568, align 4
  %idxprom1569 = sext i32 %636 to i64
  %arrayidx1570 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1569
  %loses1571 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1570, i32 0, i32 1
  %637 = load i32, i32* %loses1571, align 4
  %add1572 = add nsw i32 %634, %637
  %638 = load i32, i32* %t, align 4
  %add1573 = add nsw i32 %638, 14
  %idxprom1574 = sext i32 %add1573 to i64
  %arrayidx1575 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1574
  %639 = load i32, i32* %arrayidx1575, align 4
  %idxprom1576 = sext i32 %639 to i64
  %arrayidx1577 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1576
  %ties1578 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1577, i32 0, i32 2
  %640 = load i32, i32* %ties1578, align 4
  %add1579 = add nsw i32 %add1572, %640
  %cmp1580 = icmp eq i32 %add1579, 0
  br i1 %cmp1580, label %cond.true.1582, label %cond.false.1583

cond.true.1582:                                   ; preds = %cond.end.1540
  br label %cond.end.1622

cond.false.1583:                                  ; preds = %cond.end.1540
  %641 = load i32, i32* %t, align 4
  %add1584 = add nsw i32 %641, 14
  %idxprom1585 = sext i32 %add1584 to i64
  %arrayidx1586 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1585
  %642 = load i32, i32* %arrayidx1586, align 4
  %idxprom1587 = sext i32 %642 to i64
  %arrayidx1588 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1587
  %wins1589 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1588, i32 0, i32 0
  %643 = load i32, i32* %wins1589, align 4
  %conv1590 = sitofp i32 %643 to double
  %644 = load i32, i32* %t, align 4
  %add1591 = add nsw i32 %644, 14
  %idxprom1592 = sext i32 %add1591 to i64
  %arrayidx1593 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1592
  %645 = load i32, i32* %arrayidx1593, align 4
  %idxprom1594 = sext i32 %645 to i64
  %arrayidx1595 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1594
  %ties1596 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1595, i32 0, i32 2
  %646 = load i32, i32* %ties1596, align 4
  %conv1597 = sitofp i32 %646 to double
  %mul1598 = fmul double 5.000000e-01, %conv1597
  %add1599 = fadd double %conv1590, %mul1598
  %647 = load i32, i32* %t, align 4
  %add1600 = add nsw i32 %647, 14
  %idxprom1601 = sext i32 %add1600 to i64
  %arrayidx1602 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1601
  %648 = load i32, i32* %arrayidx1602, align 4
  %idxprom1603 = sext i32 %648 to i64
  %arrayidx1604 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1603
  %wins1605 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1604, i32 0, i32 0
  %649 = load i32, i32* %wins1605, align 4
  %650 = load i32, i32* %t, align 4
  %add1606 = add nsw i32 %650, 14
  %idxprom1607 = sext i32 %add1606 to i64
  %arrayidx1608 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1607
  %651 = load i32, i32* %arrayidx1608, align 4
  %idxprom1609 = sext i32 %651 to i64
  %arrayidx1610 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1609
  %loses1611 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1610, i32 0, i32 1
  %652 = load i32, i32* %loses1611, align 4
  %add1612 = add nsw i32 %649, %652
  %653 = load i32, i32* %t, align 4
  %add1613 = add nsw i32 %653, 14
  %idxprom1614 = sext i32 %add1613 to i64
  %arrayidx1615 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1614
  %654 = load i32, i32* %arrayidx1615, align 4
  %idxprom1616 = sext i32 %654 to i64
  %arrayidx1617 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1616
  %ties1618 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1617, i32 0, i32 2
  %655 = load i32, i32* %ties1618, align 4
  %add1619 = add nsw i32 %add1612, %655
  %conv1620 = sitofp i32 %add1619 to double
  %div1621 = fdiv double %add1599, %conv1620
  br label %cond.end.1622

cond.end.1622:                                    ; preds = %cond.false.1583, %cond.true.1582
  %cond1623 = phi double [ 0.000000e+00, %cond.true.1582 ], [ %div1621, %cond.false.1583 ]
  %cmp1624 = fcmp oge double %cond1623, 1.000000e+00
  %cond1626 = select i1 %cmp1624, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)
  %656 = load i32, i32* %t, align 4
  %add1627 = add nsw i32 %656, 14
  %idxprom1628 = sext i32 %add1627 to i64
  %arrayidx1629 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1628
  %657 = load i32, i32* %arrayidx1629, align 4
  %idxprom1630 = sext i32 %657 to i64
  %arrayidx1631 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1630
  %wins1632 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1631, i32 0, i32 0
  %658 = load i32, i32* %wins1632, align 4
  %659 = load i32, i32* %t, align 4
  %add1633 = add nsw i32 %659, 14
  %idxprom1634 = sext i32 %add1633 to i64
  %arrayidx1635 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1634
  %660 = load i32, i32* %arrayidx1635, align 4
  %idxprom1636 = sext i32 %660 to i64
  %arrayidx1637 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1636
  %loses1638 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1637, i32 0, i32 1
  %661 = load i32, i32* %loses1638, align 4
  %add1639 = add nsw i32 %658, %661
  %662 = load i32, i32* %t, align 4
  %add1640 = add nsw i32 %662, 14
  %idxprom1641 = sext i32 %add1640 to i64
  %arrayidx1642 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1641
  %663 = load i32, i32* %arrayidx1642, align 4
  %idxprom1643 = sext i32 %663 to i64
  %arrayidx1644 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1643
  %ties1645 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1644, i32 0, i32 2
  %664 = load i32, i32* %ties1645, align 4
  %add1646 = add nsw i32 %add1639, %664
  %cmp1647 = icmp eq i32 %add1646, 0
  br i1 %cmp1647, label %cond.true.1649, label %cond.false.1650

cond.true.1649:                                   ; preds = %cond.end.1622
  br label %cond.end.1689

cond.false.1650:                                  ; preds = %cond.end.1622
  %665 = load i32, i32* %t, align 4
  %add1651 = add nsw i32 %665, 14
  %idxprom1652 = sext i32 %add1651 to i64
  %arrayidx1653 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1652
  %666 = load i32, i32* %arrayidx1653, align 4
  %idxprom1654 = sext i32 %666 to i64
  %arrayidx1655 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1654
  %wins1656 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1655, i32 0, i32 0
  %667 = load i32, i32* %wins1656, align 4
  %conv1657 = sitofp i32 %667 to double
  %668 = load i32, i32* %t, align 4
  %add1658 = add nsw i32 %668, 14
  %idxprom1659 = sext i32 %add1658 to i64
  %arrayidx1660 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1659
  %669 = load i32, i32* %arrayidx1660, align 4
  %idxprom1661 = sext i32 %669 to i64
  %arrayidx1662 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1661
  %ties1663 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1662, i32 0, i32 2
  %670 = load i32, i32* %ties1663, align 4
  %conv1664 = sitofp i32 %670 to double
  %mul1665 = fmul double 5.000000e-01, %conv1664
  %add1666 = fadd double %conv1657, %mul1665
  %671 = load i32, i32* %t, align 4
  %add1667 = add nsw i32 %671, 14
  %idxprom1668 = sext i32 %add1667 to i64
  %arrayidx1669 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1668
  %672 = load i32, i32* %arrayidx1669, align 4
  %idxprom1670 = sext i32 %672 to i64
  %arrayidx1671 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1670
  %wins1672 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1671, i32 0, i32 0
  %673 = load i32, i32* %wins1672, align 4
  %674 = load i32, i32* %t, align 4
  %add1673 = add nsw i32 %674, 14
  %idxprom1674 = sext i32 %add1673 to i64
  %arrayidx1675 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1674
  %675 = load i32, i32* %arrayidx1675, align 4
  %idxprom1676 = sext i32 %675 to i64
  %arrayidx1677 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1676
  %loses1678 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1677, i32 0, i32 1
  %676 = load i32, i32* %loses1678, align 4
  %add1679 = add nsw i32 %673, %676
  %677 = load i32, i32* %t, align 4
  %add1680 = add nsw i32 %677, 14
  %idxprom1681 = sext i32 %add1680 to i64
  %arrayidx1682 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1681
  %678 = load i32, i32* %arrayidx1682, align 4
  %idxprom1683 = sext i32 %678 to i64
  %arrayidx1684 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1683
  %ties1685 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1684, i32 0, i32 2
  %679 = load i32, i32* %ties1685, align 4
  %add1686 = add nsw i32 %add1679, %679
  %conv1687 = sitofp i32 %add1686 to double
  %div1688 = fdiv double %add1666, %conv1687
  br label %cond.end.1689

cond.end.1689:                                    ; preds = %cond.false.1650, %cond.true.1649
  %cond1690 = phi double [ 0.000000e+00, %cond.true.1649 ], [ %div1688, %cond.false.1650 ]
  %cmp1691 = fcmp oge double %cond1690, 1.000000e+00
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1694

cond.true.1693:                                   ; preds = %cond.end.1689
  br label %cond.end.1762

cond.false.1694:                                  ; preds = %cond.end.1689
  %680 = load i32, i32* %t, align 4
  %add1695 = add nsw i32 %680, 14
  %idxprom1696 = sext i32 %add1695 to i64
  %arrayidx1697 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1696
  %681 = load i32, i32* %arrayidx1697, align 4
  %idxprom1698 = sext i32 %681 to i64
  %arrayidx1699 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1698
  %wins1700 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1699, i32 0, i32 0
  %682 = load i32, i32* %wins1700, align 4
  %683 = load i32, i32* %t, align 4
  %add1701 = add nsw i32 %683, 14
  %idxprom1702 = sext i32 %add1701 to i64
  %arrayidx1703 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1702
  %684 = load i32, i32* %arrayidx1703, align 4
  %idxprom1704 = sext i32 %684 to i64
  %arrayidx1705 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1704
  %loses1706 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1705, i32 0, i32 1
  %685 = load i32, i32* %loses1706, align 4
  %add1707 = add nsw i32 %682, %685
  %686 = load i32, i32* %t, align 4
  %add1708 = add nsw i32 %686, 14
  %idxprom1709 = sext i32 %add1708 to i64
  %arrayidx1710 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1709
  %687 = load i32, i32* %arrayidx1710, align 4
  %idxprom1711 = sext i32 %687 to i64
  %arrayidx1712 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1711
  %ties1713 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1712, i32 0, i32 2
  %688 = load i32, i32* %ties1713, align 4
  %add1714 = add nsw i32 %add1707, %688
  %cmp1715 = icmp eq i32 %add1714, 0
  br i1 %cmp1715, label %cond.true.1717, label %cond.false.1718

cond.true.1717:                                   ; preds = %cond.false.1694
  br label %cond.end.1757

cond.false.1718:                                  ; preds = %cond.false.1694
  %689 = load i32, i32* %t, align 4
  %add1719 = add nsw i32 %689, 14
  %idxprom1720 = sext i32 %add1719 to i64
  %arrayidx1721 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1720
  %690 = load i32, i32* %arrayidx1721, align 4
  %idxprom1722 = sext i32 %690 to i64
  %arrayidx1723 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1722
  %wins1724 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1723, i32 0, i32 0
  %691 = load i32, i32* %wins1724, align 4
  %conv1725 = sitofp i32 %691 to double
  %692 = load i32, i32* %t, align 4
  %add1726 = add nsw i32 %692, 14
  %idxprom1727 = sext i32 %add1726 to i64
  %arrayidx1728 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1727
  %693 = load i32, i32* %arrayidx1728, align 4
  %idxprom1729 = sext i32 %693 to i64
  %arrayidx1730 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1729
  %ties1731 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1730, i32 0, i32 2
  %694 = load i32, i32* %ties1731, align 4
  %conv1732 = sitofp i32 %694 to double
  %mul1733 = fmul double 5.000000e-01, %conv1732
  %add1734 = fadd double %conv1725, %mul1733
  %695 = load i32, i32* %t, align 4
  %add1735 = add nsw i32 %695, 14
  %idxprom1736 = sext i32 %add1735 to i64
  %arrayidx1737 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1736
  %696 = load i32, i32* %arrayidx1737, align 4
  %idxprom1738 = sext i32 %696 to i64
  %arrayidx1739 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1738
  %wins1740 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1739, i32 0, i32 0
  %697 = load i32, i32* %wins1740, align 4
  %698 = load i32, i32* %t, align 4
  %add1741 = add nsw i32 %698, 14
  %idxprom1742 = sext i32 %add1741 to i64
  %arrayidx1743 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1742
  %699 = load i32, i32* %arrayidx1743, align 4
  %idxprom1744 = sext i32 %699 to i64
  %arrayidx1745 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1744
  %loses1746 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1745, i32 0, i32 1
  %700 = load i32, i32* %loses1746, align 4
  %add1747 = add nsw i32 %697, %700
  %701 = load i32, i32* %t, align 4
  %add1748 = add nsw i32 %701, 14
  %idxprom1749 = sext i32 %add1748 to i64
  %arrayidx1750 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1749
  %702 = load i32, i32* %arrayidx1750, align 4
  %idxprom1751 = sext i32 %702 to i64
  %arrayidx1752 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1751
  %ties1753 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1752, i32 0, i32 2
  %703 = load i32, i32* %ties1753, align 4
  %add1754 = add nsw i32 %add1747, %703
  %conv1755 = sitofp i32 %add1754 to double
  %div1756 = fdiv double %add1734, %conv1755
  br label %cond.end.1757

cond.end.1757:                                    ; preds = %cond.false.1718, %cond.true.1717
  %cond1758 = phi double [ 0.000000e+00, %cond.true.1717 ], [ %div1756, %cond.false.1718 ]
  %mul1759 = fmul double %cond1758, 1.000000e+03
  %add1760 = fadd double %mul1759, 5.000000e-01
  %conv1761 = fptosi double %add1760 to i32
  br label %cond.end.1762

cond.end.1762:                                    ; preds = %cond.end.1757, %cond.true.1693
  %cond1763 = phi i32 [ 0, %cond.true.1693 ], [ %conv1761, %cond.end.1757 ]
  %704 = load i32, i32* %t, align 4
  %add1764 = add nsw i32 %704, 14
  %idxprom1765 = sext i32 %add1764 to i64
  %arrayidx1766 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1765
  %705 = load i32, i32* %arrayidx1766, align 4
  %idxprom1767 = sext i32 %705 to i64
  %arrayidx1768 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1767
  %points_for1769 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1768, i32 0, i32 3
  %706 = load i32, i32* %points_for1769, align 4
  %707 = load i32, i32* %t, align 4
  %add1770 = add nsw i32 %707, 14
  %idxprom1771 = sext i32 %add1770 to i64
  %arrayidx1772 = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom1771
  %708 = load i32, i32* %arrayidx1772, align 4
  %idxprom1773 = sext i32 %708 to i64
  %arrayidx1774 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom1773
  %points_against1775 = getelementptr inbounds %struct.info, %struct.info* %arrayidx1774, i32 0, i32 4
  %709 = load i32, i32* %points_against1775, align 4
  %call1776 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %616, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay1526, i8* %cond1541, i32 %625, i32 %628, i32 %631, i8* %cond1626, i32 %cond1763, i32 %706, i32 %709)
  %710 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1777 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %710, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %for.inc.1778

for.inc.1778:                                     ; preds = %cond.end.1762
  %711 = load i32, i32* %t, align 4
  %inc1779 = add nsw i32 %711, 1
  store i32 %inc1779, i32* %t, align 4
  br label %for.cond.1290

for.end.1780:                                     ; preds = %for.cond.1290
  %712 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1781 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %712, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_team(%struct._IO_FILE* %output) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %team_code = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %0)
  store i32 1, i32* %team_code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %team_code, align 4
  %cmp = icmp sle i32 %1, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %3 = load i32, i32* %team_code, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1, i32 0, i32 0
  %4 = load i32, i32* %team_code, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx3, i32 0, i64 0
  %arraydecay5 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %team_code, align 4
  %add = add nsw i32 %5, 14
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx7, i32 0, i64 1
  %arraydecay9 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx8, i32 0, i32 0
  %6 = load i32, i32* %team_code, align 4
  %add10 = add nsw i32 %6, 14
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx12, i32 0, i64 0
  %arraydecay14 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx13, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay5, i8* %arraydecay9, i8* %arraydecay14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %team_code, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %team_code, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_main_menu(%struct._IO_FILE* %output, %struct._IO_FILE* %input) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %input.addr = alloca %struct._IO_FILE*, align 8
  %resp = alloca i8*, align 8
  %valid_input = alloca i32, align 4
  %team_code = alloca i32, align 4
  %code = alloca i32, align 4
  %team_code73 = alloca [28 x i32], align 16
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %week = alloca i32, align 4
  %week173 = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  store i32 0, i32* %valid_input, align 4
  %0 = load i32, i32* @got_unused_responce, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.20, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @clear_screen(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.105, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.108, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.117, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.118, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0))
  %19 = load i32, i32* @current_with_disk, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %if.then
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.205, %if.end.20
  %21 = load i32, i32* %valid_input, align 4
  %tobool21 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %while.body, label %while.end.206

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* @got_unused_responce, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %while.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.122, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %while.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call26 = call i8* @get_responce(%struct._IO_FILE* %24)
  store i8* %call26, i8** %resp, align 8
  %25 = load i8*, i8** %resp, align 8
  %call27 = call i32 @matches(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 1)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call29 = call i32 @feof(%struct._IO_FILE* %26) #5
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store i32 1, i32* @terminate, align 4
  store i32 1, i32* %valid_input, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %lor.lhs.false
  %28 = load i8*, i8** %resp, align 8
  %call34 = call i32 @matches(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0), i32 1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.48

if.then.36:                                       ; preds = %if.end.33
  %29 = load i8*, i8** %resp, align 8
  %call37 = call i8* @skip_first(i8* %29)
  store i8* %call37, i8** %resp, align 8
  %30 = load i8*, i8** %resp, align 8
  %call38 = call i32 @matches(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i32 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.36
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store i32 1, i32* %valid_input, align 4
  call void @break_ties(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @standings, i32 0, i32 0), i32 1, i32 1)
  br label %if.end.47

if.else:                                          ; preds = %if.then.36
  %32 = load i8*, i8** %resp, align 8
  %call42 = call i32 @matches(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i32 1)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  store i32 1, i32* %valid_input, align 4
  call void @break_ties(%struct.info* getelementptr inbounds ([29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i32 0), i32* getelementptr inbounds ([29 x i32], [29 x i32]* @conf_standings, i32 0, i32 0), i32 0, i32 1)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.40
  br label %if.end.205

if.else.48:                                       ; preds = %if.end.33
  %34 = load i8*, i8** %resp, align 8
  %call49 = call i32 @matches(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i32 1)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.165

if.then.51:                                       ; preds = %if.else.48
  %35 = load i8*, i8** %resp, align 8
  %call52 = call i8* @skip_first(i8* %35)
  store i8* %call52, i8** %resp, align 8
  %36 = load i8*, i8** %resp, align 8
  %call53 = call i32 @matches(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i32 1)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.51
  store i32 1, i32* %valid_input, align 4
  br label %if.end.160

if.else.56:                                       ; preds = %if.then.51
  %37 = load i8*, i8** %resp, align 8
  %call57 = call i32 @matches(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i32 1)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 1, i32* %valid_input, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_standings(%struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %39, %struct._IO_FILE* %40)
  br label %if.end.159

if.else.60:                                       ; preds = %if.else.56
  %41 = load i8*, i8** %resp, align 8
  %call61 = call i32 @matches(i8* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.129, i32 0, i32 0), i32 1)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.69

if.then.63:                                       ; preds = %if.else.60
  %42 = load i8*, i8** %resp, align 8
  %call64 = call i8* @skip_first(i8* %42)
  store i8* %call64, i8** %resp, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %44 = load i8*, i8** %resp, align 8
  %call65 = call i32 @find_name(%struct._IO_FILE* %43, i8* %44)
  store i32 %call65, i32* %team_code, align 4
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.63
  store i32 1, i32* %valid_input, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %46 = load i32, i32* %team_code, align 4
  call void @display_info(%struct._IO_FILE* %45, i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %47, %struct._IO_FILE* %48)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.63
  br label %if.end.158

if.else.69:                                       ; preds = %if.else.60
  %49 = load i8*, i8** %resp, align 8
  %call70 = call i32 @matches(i8* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.130, i32 0, i32 0), i32 2)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.113

if.then.72:                                       ; preds = %if.else.69
  store i32 0, i32* %num, align 4
  %50 = load i8*, i8** %resp, align 8
  %call74 = call i8* @skip_first(i8* %50)
  store i8* %call74, i8** %resp, align 8
  %51 = load i8*, i8** %resp, align 8
  %call75 = call i8* @skip_white_space(i8* %51)
  store i8* %call75, i8** %resp, align 8
  br label %while.cond.76

while.cond.76:                                    ; preds = %if.end.102, %if.then.72
  %52 = load i8*, i8** %resp, align 8
  %53 = load i8, i8* %52, align 1
  %conv = sext i8 %53 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body.78, label %while.end

while.body.78:                                    ; preds = %while.cond.76
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %55 = load i8*, i8** %resp, align 8
  %call79 = call i32 @find_next_name(%struct._IO_FILE* %54, i8* %55)
  store i32 %call79, i32* %code, align 4
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.101

if.then.81:                                       ; preds = %while.body.78
  store i32 1, i32* %temp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.81
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %num, align 4
  %cmp82 = icmp slt i32 %56, %57
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4
  %idxprom = sext i32 %58 to i64
  %arrayidx = getelementptr inbounds [28 x i32], [28 x i32]* %team_code73, i32 0, i64 %idxprom
  %59 = load i32, i32* %arrayidx, align 4
  %60 = load i32, i32* %code, align 4
  %cmp84 = icmp eq i32 %59, %60
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.body
  store i32 0, i32* %temp, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %temp, align 4
  %tobool88 = icmp ne i32 %62, 0
  br i1 %tobool88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %for.end
  %63 = load i32, i32* %code, align 4
  %64 = load i32, i32* %num, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds [28 x i32], [28 x i32]* %team_code73, i32 0, i64 %idxprom90
  store i32 %63, i32* %arrayidx91, align 4
  %65 = load i32, i32* %num, align 4
  %inc92 = add nsw i32 %65, 1
  store i32 %inc92, i32* %num, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %for.end
  %66 = load i8*, i8** %resp, align 8
  %call94 = call i8* @skip_first(i8* %66)
  store i8* %call94, i8** %resp, align 8
  %67 = load i8*, i8** %resp, align 8
  %call95 = call i8* @skip_white_space(i8* %67)
  store i8* %call95, i8** %resp, align 8
  %68 = load i8*, i8** %resp, align 8
  %69 = load i8, i8* %68, align 1
  %conv96 = sext i8 %69 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.93
  store i32 1, i32* %valid_input, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.93
  br label %if.end.102

if.else.101:                                      ; preds = %while.body.78
  %70 = load i8*, i8** %resp, align 8
  store i8 0, i8* %70, align 1
  store i32 0, i32* %num, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.end.100
  br label %while.cond.76

while.end:                                        ; preds = %while.cond.76
  %71 = load i32, i32* %num, align 4
  %cmp103 = icmp eq i32 %71, 1
  br i1 %cmp103, label %land.lhs.true, label %if.else.108

land.lhs.true:                                    ; preds = %while.end
  %72 = load i32, i32* %valid_input, align 4
  %tobool105 = icmp ne i32 %72, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %land.lhs.true
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %arrayidx107 = getelementptr inbounds [28 x i32], [28 x i32]* %team_code73, i32 0, i64 0
  %74 = load i32, i32* %arrayidx107, align 4
  call void @display_tiebreaker(%struct._IO_FILE* %73, i32 %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %75, %struct._IO_FILE* %76)
  br label %if.end.112

if.else.108:                                      ; preds = %land.lhs.true, %while.end
  %77 = load i32, i32* %valid_input, align 4
  %tobool109 = icmp ne i32 %77, 0
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.else.108
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %arraydecay = getelementptr inbounds [28 x i32], [28 x i32]* %team_code73, i32 0, i32 0
  %79 = load i32, i32* %num, align 4
  call void @display_multi_tiebreaker(%struct._IO_FILE* %78, i32* %arraydecay, i32 %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %80, %struct._IO_FILE* %81)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.else.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.106
  br label %if.end.157

if.else.113:                                      ; preds = %if.else.69
  %82 = load i8*, i8** %resp, align 8
  %call114 = call i32 @matches(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i32 1)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.else.113
  store i32 1, i32* %valid_input, align 4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_records(%struct._IO_FILE* %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %84, %struct._IO_FILE* %85)
  br label %if.end.156

if.else.117:                                      ; preds = %if.else.113
  %86 = load i8*, i8** %resp, align 8
  %call118 = call i32 @matches(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i32 1)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.else.117
  store i32 1, i32* %valid_input, align 4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_rankings(%struct._IO_FILE* %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %88, %struct._IO_FILE* %89)
  br label %if.end.155

if.else.121:                                      ; preds = %if.else.117
  %90 = load i8*, i8** %resp, align 8
  %call122 = call i32 @matches(i8* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.133, i32 0, i32 0), i32 1)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.else.121
  store i32 1, i32* %valid_input, align 4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_defence(%struct._IO_FILE* %91)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %92, %struct._IO_FILE* %93)
  br label %if.end.154

if.else.125:                                      ; preds = %if.else.121
  %94 = load i8*, i8** %resp, align 8
  %call126 = call i32 @matches(i8* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i32 1)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.125
  store i32 1, i32* %valid_input, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_offence(%struct._IO_FILE* %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %96, %struct._IO_FILE* %97)
  br label %if.end.153

if.else.129:                                      ; preds = %if.else.125
  %98 = load i8*, i8** %resp, align 8
  %call130 = call i32 @matches(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i32 1)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %if.else.129
  store i32 1, i32* %valid_input, align 4
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_net(%struct._IO_FILE* %99)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %100, %struct._IO_FILE* %101)
  br label %if.end.152

if.else.133:                                      ; preds = %if.else.129
  %102 = load i8*, i8** %resp, align 8
  %call134 = call i32 @matches(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i32 1)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.146

if.then.136:                                      ; preds = %if.else.133
  %103 = load i8*, i8** %resp, align 8
  %call137 = call i8* @skip_first(i8* %103)
  store i8* %call137, i8** %resp, align 8
  %104 = load i8*, i8** %resp, align 8
  %call138 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %week) #5
  %105 = load i32, i32* %week, align 4
  %cmp139 = icmp sle i32 1, %105
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.145

land.lhs.true.141:                                ; preds = %if.then.136
  %106 = load i32, i32* %week, align 4
  %107 = load i32, i32* @num_games, align 4
  %cmp142 = icmp sle i32 %106, %107
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %land.lhs.true.141
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %109 = load i32, i32* %week, align 4
  call void @display_week(%struct._IO_FILE* %108, i32 %109)
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %110, %struct._IO_FILE* %111)
  store i32 1, i32* %valid_input, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %land.lhs.true.141, %if.then.136
  br label %if.end.151

if.else.146:                                      ; preds = %if.else.133
  %112 = load i8*, i8** %resp, align 8
  %call147 = call i32 @matches(i8* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0), i32 2)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.else.146
  store i32 1, i32* %valid_input, align 4
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @display_team(%struct._IO_FILE* %113)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %114, %struct._IO_FILE* %115)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.else.146
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.145
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.132
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.128
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.124
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.120
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.116
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.112
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.68
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.59
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.55
  %116 = load i32, i32* %valid_input, align 4
  %tobool161 = icmp ne i32 %116, 0
  br i1 %tobool161, label %if.end.164, label %if.then.162

if.then.162:                                      ; preds = %if.end.160
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.138, i32 0, i32 0))
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %if.end.160
  br label %if.end.204

if.else.165:                                      ; preds = %if.else.48
  %118 = load i8*, i8** %resp, align 8
  %call166 = call i32 @matches(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), i32 1)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then.168, label %if.else.198

if.then.168:                                      ; preds = %if.else.165
  %119 = load i8*, i8** %resp, align 8
  %call169 = call i8* @skip_first(i8* %119)
  store i8* %call169, i8** %resp, align 8
  %120 = load i8*, i8** %resp, align 8
  %call170 = call i32 @matches(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), i32 1)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.193

if.then.172:                                      ; preds = %if.then.168
  %121 = load i8*, i8** %resp, align 8
  %call174 = call i8* @skip_first(i8* %121)
  store i8* %call174, i8** %resp, align 8
  %122 = load i8*, i8** %resp, align 8
  %call175 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0), i32* %week173) #5
  %123 = load i32, i32* %week173, align 4
  %cmp176 = icmp sle i32 1, %123
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.192

land.lhs.true.178:                                ; preds = %if.then.172
  %124 = load i32, i32* %week173, align 4
  %125 = load i32, i32* @num_games, align 4
  %cmp179 = icmp sle i32 %124, %125
  br i1 %cmp179, label %if.then.181, label %if.end.192

if.then.181:                                      ; preds = %land.lhs.true.178
  %126 = load i8*, i8** %resp, align 8
  %call182 = call i8* @skip_first(i8* %126)
  store i8* %call182, i8** %resp, align 8
  %127 = load i8*, i8** %resp, align 8
  %call183 = call i32 @end_of_line(i8* %127)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.186

if.then.185:                                      ; preds = %if.then.181
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %130 = load i32, i32* %week173, align 4
  call void @enter_week(%struct._IO_FILE* %128, %struct._IO_FILE* %129, i32 %130)
  call void @compute_team_info()
  call void @sort_all()
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %131, %struct._IO_FILE* %132)
  store i32 1, i32* %valid_input, align 4
  br label %if.end.191

if.else.186:                                      ; preds = %if.then.181
  %133 = load i8*, i8** %resp, align 8
  %call187 = call i32 @matches(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i32 1)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.else.186
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %136 = load i32, i32* %week173, align 4
  call void @enter_prompt_week(%struct._IO_FILE* %134, %struct._IO_FILE* %135, i32 %136)
  call void @compute_team_info()
  call void @sort_all()
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  call void @prompt(%struct._IO_FILE* %137, %struct._IO_FILE* %138)
  store i32 1, i32* %valid_input, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.else.186
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.185
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %land.lhs.true.178, %if.then.172
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.168
  %139 = load i32, i32* %valid_input, align 4
  %tobool194 = icmp ne i32 %139, 0
  br i1 %tobool194, label %if.end.197, label %if.then.195

if.then.195:                                      ; preds = %if.end.193
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.end.193
  br label %if.end.203

if.else.198:                                      ; preds = %if.else.165
  %141 = load i8*, i8** %resp, align 8
  %call199 = call i32 @matches(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 1)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.else.198
  store i32 1, i32* %valid_input, align 4
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  call void @save_scores(%struct._IO_FILE* %142, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @input_score, i32 0, i32 0))
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.else.198
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.197
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.164
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.47
  br label %while.cond

while.end.206:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare void @break_ties(%struct.info*, i32*, i32, i32) #1

declare void @compute_team_info() #1

declare void @sort_all() #1

declare void @save_scores(%struct._IO_FILE*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
