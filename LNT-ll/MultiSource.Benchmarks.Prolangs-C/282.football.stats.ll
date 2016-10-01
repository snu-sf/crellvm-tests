; ModuleID = './MultiSource.Benchmarks.Prolangs-C/282.football.stats.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i32, [18 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@preseason = global i32 0, align 4
@terminate = global i32 0, align 4
@team = global [30 x [2 x [15 x i8]]] [[2 x [15 x i8]] [[15 x i8] c"error\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"   \00\00\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"min\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Minnesota\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"atl\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Atlanta\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"chi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Chicago\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"dal\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Dallas\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"det\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Detroit\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Green Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ram\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Rams\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"no\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New Orleans\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Giants\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"phi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Philadelphia\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pho\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Phoenix\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sf\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Francisco\00\00"], [2 x [15 x i8]] [[15 x i8] c"tb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Tampa Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"was\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Washington\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"buf\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Buffalo\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cin\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cincinnati\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cle\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cleveland\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"den\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Denver\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"hou\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Houston\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ind\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Indianapolis\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"kc\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Kansas City\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"rai\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Raiders\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"mia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Miami\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ne\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New England\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"jet\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Jets\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pit\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Pittsburgh\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sd\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Diego\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sea\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Seattle\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"None\00\00\00\00\00\00\00\00\00\00\00"]], align 16
@divisions = global [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 2], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2]], align 16
@nfc_wild_card1 = common global i32 0, align 4
@nfc_wild_card2 = common global i32 0, align 4
@nfc_wild_card3 = common global i32 0, align 4
@afc_wild_card1 = common global i32 0, align 4
@afc_wild_card2 = common global i32 0, align 4
@afc_wild_card3 = common global i32 0, align 4
@nfc_east_champ = common global i32 0, align 4
@nfc_central_champ = common global i32 0, align 4
@nfc_west_champ = common global i32 0, align 4
@afc_east_champ = common global i32 0, align 4
@afc_central_champ = common global i32 0, align 4
@afc_west_champ = common global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No such team %s\0A\00", align 1
@team_plays = common global [29 x [29 x i32]] zeroinitializer, align 16
@team_info = common global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_conf = common global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_div = common global [29 x %struct.info] zeroinitializer, align 16
@h_to_h_stats = common global [29 x [29 x %struct.info]] zeroinitializer, align 16
@num_games = common global i32 0, align 4
@sched = common global [18 x [15 x [3 x i32]]] zeroinitializer, align 16
@scores = common global [19 x [15 x [3 x i32]]] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Error in opponent for %s(%d). Expected %s(%d), Found %s(%d). Week #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%s(%d) not found yet: team: %s(%d); week# %d; opp. str: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"%s(%d) has opponent %s(%d), but wants %s(%d); \0A          week# %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"ERROR: Week %d, to many games seen.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Can not write to %s. Not saved.\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@the_scores = common global %struct._IO_FILE* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"Saved in %s.\0A\00", align 1
@current_with_disk = common global i32 0, align 4
@in_fileP = global i32 0, align 4
@standings = common global [29 x i32] zeroinitializer, align 16
@abs_standings = common global [29 x i32] zeroinitializer, align 16
@conf_standings = common global [29 x i32] zeroinitializer, align 16
@defence_ranks_nfl = common global [29 x i32] zeroinitializer, align 16
@defence_ranks = common global [29 x i32] zeroinitializer, align 16
@offence_ranks_nfl = common global [29 x i32] zeroinitializer, align 16
@offence_ranks = common global [29 x i32] zeroinitializer, align 16
@net_ranks_nfl = common global [29 x i32] zeroinitializer, align 16
@net_ranks = common global [29 x i32] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@iyear = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [67 x i8] c"Usage: stats [-p] <yy> [input-file]\0A   <yy> is 2 digit year code.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"St. Louis\00", align 1
@inp_sched = common global [101 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [14 x i8] c"data/sched.19\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".pre\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@schedule = common global %struct._IO_FILE* null, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"ERROR: Can not open %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"ERROR: Can not open input file %s.\0A\00", align 1
@input_score = common global [101 x i8] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"data/scores.19\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"No score file. Creating one.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"ERROR: %s is not a legally formated score file.\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@stdin = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @a_wild_card(i32 %team) #0 {
entry:
  %team.addr = alloca i32, align 4
  store i32 %team, i32* %team.addr, align 4
  %0 = load i32, i32* %team.addr, align 4
  %1 = load i32, i32* @nfc_wild_card1, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %team.addr, align 4
  %3 = load i32, i32* @nfc_wild_card2, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %team.addr, align 4
  %5 = load i32, i32* @nfc_wild_card3, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %team.addr, align 4
  %7 = load i32, i32* @afc_wild_card1, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %team.addr, align 4
  %9 = load i32, i32* @afc_wild_card2, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.6
  %10 = load i32, i32* %team.addr, align 4
  %11 = load i32, i32* @afc_wild_card3, align 4
  %cmp8 = icmp eq i32 %10, %11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @a_champ(i32 %team) #0 {
entry:
  %team.addr = alloca i32, align 4
  store i32 %team, i32* %team.addr, align 4
  %0 = load i32, i32* %team.addr, align 4
  %1 = load i32, i32* @nfc_east_champ, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %team.addr, align 4
  %3 = load i32, i32* @nfc_central_champ, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %lor.end, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %team.addr, align 4
  %5 = load i32, i32* @nfc_west_champ, align 4
  %cmp3 = icmp eq i32 %4, %5
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %team.addr, align 4
  %7 = load i32, i32* @afc_east_champ, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %team.addr, align 4
  %9 = load i32, i32* @afc_central_champ, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.6
  %10 = load i32, i32* %team.addr, align 4
  %11 = load i32, i32* @afc_west_champ, align 4
  %cmp8 = icmp eq i32 %10, %11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false.2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @find_name(%struct._IO_FILE* %output, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %full_name = alloca [15 x i8], align 1
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 29
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %full_name, i32 0, i32 0
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx, i32 0, i64 1
  %arraydecay2 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx1, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay2) #5
  %arraydecay3 = getelementptr inbounds [15 x i8], [15 x i8]* %full_name, i32 0, i32 0
  call void @lower_case(i8* %arraydecay3)
  %2 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx5, i32 0, i64 0
  %arraydecay7 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx6, i32 0, i32 0
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* %3) #6
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %arraydecay9 = getelementptr inbounds [15 x i8], [15 x i8]* %full_name, i32 0, i32 0
  %4 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* %4) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare void @lower_case(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @compute_team_info() #0 {
entry:
  %week = alloca i32, align 4
  %game = alloca i32, align 4
  %team = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %team, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %team, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %1, 28
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %team, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [29 x [29 x i32]], [29 x [29 x i32]]* @team_plays, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [29 x i32], [29 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %5 = load i32, i32* %team, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %team, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 1, i32* %team, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.83, %for.end.8
  %6 = load i32, i32* %team, align 4
  %cmp10 = icmp sle i32 %6, 28
  br i1 %cmp10, label %for.body.11, label %for.end.85

for.body.11:                                      ; preds = %for.cond.9
  %7 = load i32, i32* %team, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom12
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx13, i32 0, i32 2
  store i32 0, i32* %ties, align 4
  %8 = load i32, i32* %team, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom14
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx15, i32 0, i32 1
  store i32 0, i32* %loses, align 4
  %9 = load i32, i32* %team, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom16
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx17, i32 0, i32 0
  store i32 0, i32* %wins, align 4
  %10 = load i32, i32* %team, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom18
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx19, i32 0, i32 4
  store i32 0, i32* %points_against, align 4
  %11 = load i32, i32* %team, align 4
  %idxprom20 = sext i32 %11 to i64
  %arrayidx21 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom20
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx21, i32 0, i32 3
  store i32 0, i32* %points_for, align 4
  %12 = load i32, i32* %team, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom22
  %wins24 = getelementptr inbounds %struct.info, %struct.info* %arrayidx23, i32 0, i32 0
  store i32 0, i32* %wins24, align 4
  %13 = load i32, i32* %team, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom25
  %loses27 = getelementptr inbounds %struct.info, %struct.info* %arrayidx26, i32 0, i32 1
  store i32 0, i32* %loses27, align 4
  %14 = load i32, i32* %team, align 4
  %idxprom28 = sext i32 %14 to i64
  %arrayidx29 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom28
  %ties30 = getelementptr inbounds %struct.info, %struct.info* %arrayidx29, i32 0, i32 2
  store i32 0, i32* %ties30, align 4
  %15 = load i32, i32* %team, align 4
  %idxprom31 = sext i32 %15 to i64
  %arrayidx32 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom31
  %points_for33 = getelementptr inbounds %struct.info, %struct.info* %arrayidx32, i32 0, i32 3
  store i32 0, i32* %points_for33, align 4
  %16 = load i32, i32* %team, align 4
  %idxprom34 = sext i32 %16 to i64
  %arrayidx35 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom34
  %points_against36 = getelementptr inbounds %struct.info, %struct.info* %arrayidx35, i32 0, i32 4
  store i32 0, i32* %points_against36, align 4
  %17 = load i32, i32* %team, align 4
  %idxprom37 = sext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom37
  %wins39 = getelementptr inbounds %struct.info, %struct.info* %arrayidx38, i32 0, i32 0
  store i32 0, i32* %wins39, align 4
  %18 = load i32, i32* %team, align 4
  %idxprom40 = sext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom40
  %loses42 = getelementptr inbounds %struct.info, %struct.info* %arrayidx41, i32 0, i32 1
  store i32 0, i32* %loses42, align 4
  %19 = load i32, i32* %team, align 4
  %idxprom43 = sext i32 %19 to i64
  %arrayidx44 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom43
  %ties45 = getelementptr inbounds %struct.info, %struct.info* %arrayidx44, i32 0, i32 2
  store i32 0, i32* %ties45, align 4
  %20 = load i32, i32* %team, align 4
  %idxprom46 = sext i32 %20 to i64
  %arrayidx47 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom46
  %points_for48 = getelementptr inbounds %struct.info, %struct.info* %arrayidx47, i32 0, i32 3
  store i32 0, i32* %points_for48, align 4
  %21 = load i32, i32* %team, align 4
  %idxprom49 = sext i32 %21 to i64
  %arrayidx50 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom49
  %points_against51 = getelementptr inbounds %struct.info, %struct.info* %arrayidx50, i32 0, i32 4
  store i32 0, i32* %points_against51, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.80, %for.body.11
  %22 = load i32, i32* %i, align 4
  %cmp53 = icmp sle i32 %22, 28
  br i1 %cmp53, label %for.body.54, label %for.end.82

for.body.54:                                      ; preds = %for.cond.52
  %23 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %23 to i64
  %24 = load i32, i32* %team, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx57, i32 0, i64 %idxprom55
  %points_against59 = getelementptr inbounds %struct.info, %struct.info* %arrayidx58, i32 0, i32 4
  store i32 0, i32* %points_against59, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %25 to i64
  %26 = load i32, i32* %team, align 4
  %idxprom61 = sext i32 %26 to i64
  %arrayidx62 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx62, i32 0, i64 %idxprom60
  %points_for64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 3
  store i32 0, i32* %points_for64, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %27 to i64
  %28 = load i32, i32* %team, align 4
  %idxprom66 = sext i32 %28 to i64
  %arrayidx67 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx67, i32 0, i64 %idxprom65
  %ties69 = getelementptr inbounds %struct.info, %struct.info* %arrayidx68, i32 0, i32 2
  store i32 0, i32* %ties69, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %29 to i64
  %30 = load i32, i32* %team, align 4
  %idxprom71 = sext i32 %30 to i64
  %arrayidx72 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx72, i32 0, i64 %idxprom70
  %loses74 = getelementptr inbounds %struct.info, %struct.info* %arrayidx73, i32 0, i32 1
  store i32 0, i32* %loses74, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %31 to i64
  %32 = load i32, i32* %team, align 4
  %idxprom76 = sext i32 %32 to i64
  %arrayidx77 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx77, i32 0, i64 %idxprom75
  %wins79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 0
  store i32 0, i32* %wins79, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.54
  %33 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %33, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.52

for.end.82:                                       ; preds = %for.cond.52
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.end.82
  %34 = load i32, i32* %team, align 4
  %inc84 = add nsw i32 %34, 1
  store i32 %inc84, i32* %team, align 4
  br label %for.cond.9

for.end.85:                                       ; preds = %for.cond.9
  store i32 1, i32* %week, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.823, %for.end.85
  %35 = load i32, i32* %week, align 4
  %36 = load i32, i32* @num_games, align 4
  %cmp87 = icmp sle i32 %35, %36
  br i1 %cmp87, label %for.body.88, label %for.end.825

for.body.88:                                      ; preds = %for.cond.86
  store i32 1, i32* %game, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.820, %for.body.88
  %37 = load i32, i32* %game, align 4
  %cmp90 = icmp sle i32 %37, 14
  br i1 %cmp90, label %for.body.91, label %for.end.822

for.body.91:                                      ; preds = %for.cond.89
  %38 = load i32, i32* %game, align 4
  %idxprom92 = sext i32 %38 to i64
  %39 = load i32, i32* %week, align 4
  %idxprom93 = sext i32 %39 to i64
  %arrayidx94 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx94, i32 0, i64 %idxprom92
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx95, i32 0, i64 1
  %40 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %40 to i64
  %41 = load i32, i32* %game, align 4
  %idxprom98 = sext i32 %41 to i64
  %42 = load i32, i32* %week, align 4
  %idxprom99 = sext i32 %42 to i64
  %arrayidx100 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx100, i32 0, i64 %idxprom98
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx101, i32 0, i64 2
  %43 = load i32, i32* %arrayidx102, align 4
  %idxprom103 = sext i32 %43 to i64
  %arrayidx104 = getelementptr inbounds [29 x [29 x i32]], [29 x [29 x i32]]* @team_plays, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [29 x i32], [29 x i32]* %arrayidx104, i32 0, i64 %idxprom97
  store i32 1, i32* %arrayidx105, align 4
  %44 = load i32, i32* %game, align 4
  %idxprom106 = sext i32 %44 to i64
  %45 = load i32, i32* %week, align 4
  %idxprom107 = sext i32 %45 to i64
  %arrayidx108 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx108, i32 0, i64 %idxprom106
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx109, i32 0, i64 2
  %46 = load i32, i32* %arrayidx110, align 4
  %idxprom111 = sext i32 %46 to i64
  %47 = load i32, i32* %game, align 4
  %idxprom112 = sext i32 %47 to i64
  %48 = load i32, i32* %week, align 4
  %idxprom113 = sext i32 %48 to i64
  %arrayidx114 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx114, i32 0, i64 %idxprom112
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx115, i32 0, i64 1
  %49 = load i32, i32* %arrayidx116, align 4
  %idxprom117 = sext i32 %49 to i64
  %arrayidx118 = getelementptr inbounds [29 x [29 x i32]], [29 x [29 x i32]]* @team_plays, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [29 x i32], [29 x i32]* %arrayidx118, i32 0, i64 %idxprom111
  store i32 1, i32* %arrayidx119, align 4
  %50 = load i32, i32* %game, align 4
  %idxprom120 = sext i32 %50 to i64
  %51 = load i32, i32* %week, align 4
  %idxprom121 = sext i32 %51 to i64
  %arrayidx122 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx122, i32 0, i64 %idxprom120
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx123, i32 0, i64 2
  %52 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp sge i32 %52, 0
  br i1 %cmp125, label %land.lhs.true, label %if.end.819

land.lhs.true:                                    ; preds = %for.body.91
  %53 = load i32, i32* %game, align 4
  %idxprom126 = sext i32 %53 to i64
  %54 = load i32, i32* %week, align 4
  %idxprom127 = sext i32 %54 to i64
  %arrayidx128 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx128, i32 0, i64 %idxprom126
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx129, i32 0, i64 1
  %55 = load i32, i32* %arrayidx130, align 4
  %cmp131 = icmp sge i32 %55, 0
  br i1 %cmp131, label %if.then, label %if.end.819

if.then:                                          ; preds = %land.lhs.true
  %56 = load i32, i32* %game, align 4
  %idxprom132 = sext i32 %56 to i64
  %57 = load i32, i32* %week, align 4
  %idxprom133 = sext i32 %57 to i64
  %arrayidx134 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx134, i32 0, i64 %idxprom132
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx135, i32 0, i64 2
  %58 = load i32, i32* %arrayidx136, align 4
  %59 = load i32, i32* %game, align 4
  %idxprom137 = sext i32 %59 to i64
  %60 = load i32, i32* %week, align 4
  %idxprom138 = sext i32 %60 to i64
  %arrayidx139 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx139, i32 0, i64 %idxprom137
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx140, i32 0, i64 1
  %61 = load i32, i32* %arrayidx141, align 4
  %idxprom142 = sext i32 %61 to i64
  %62 = load i32, i32* %game, align 4
  %idxprom143 = sext i32 %62 to i64
  %63 = load i32, i32* %week, align 4
  %idxprom144 = sext i32 %63 to i64
  %arrayidx145 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx145, i32 0, i64 %idxprom143
  %arrayidx147 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx146, i32 0, i64 2
  %64 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %64 to i64
  %arrayidx149 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx149, i32 0, i64 %idxprom142
  %points_for151 = getelementptr inbounds %struct.info, %struct.info* %arrayidx150, i32 0, i32 3
  %65 = load i32, i32* %points_for151, align 4
  %add = add nsw i32 %65, %58
  store i32 %add, i32* %points_for151, align 4
  %66 = load i32, i32* %game, align 4
  %idxprom152 = sext i32 %66 to i64
  %67 = load i32, i32* %week, align 4
  %idxprom153 = sext i32 %67 to i64
  %arrayidx154 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx154, i32 0, i64 %idxprom152
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx155, i32 0, i64 1
  %68 = load i32, i32* %arrayidx156, align 4
  %69 = load i32, i32* %game, align 4
  %idxprom157 = sext i32 %69 to i64
  %70 = load i32, i32* %week, align 4
  %idxprom158 = sext i32 %70 to i64
  %arrayidx159 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx159, i32 0, i64 %idxprom157
  %arrayidx161 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx160, i32 0, i64 1
  %71 = load i32, i32* %arrayidx161, align 4
  %idxprom162 = sext i32 %71 to i64
  %72 = load i32, i32* %game, align 4
  %idxprom163 = sext i32 %72 to i64
  %73 = load i32, i32* %week, align 4
  %idxprom164 = sext i32 %73 to i64
  %arrayidx165 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx165, i32 0, i64 %idxprom163
  %arrayidx167 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx166, i32 0, i64 2
  %74 = load i32, i32* %arrayidx167, align 4
  %idxprom168 = sext i32 %74 to i64
  %arrayidx169 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx169, i32 0, i64 %idxprom162
  %points_against171 = getelementptr inbounds %struct.info, %struct.info* %arrayidx170, i32 0, i32 4
  %75 = load i32, i32* %points_against171, align 4
  %add172 = add nsw i32 %75, %68
  store i32 %add172, i32* %points_against171, align 4
  %76 = load i32, i32* %game, align 4
  %idxprom173 = sext i32 %76 to i64
  %77 = load i32, i32* %week, align 4
  %idxprom174 = sext i32 %77 to i64
  %arrayidx175 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx175, i32 0, i64 %idxprom173
  %arrayidx177 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx176, i32 0, i64 1
  %78 = load i32, i32* %arrayidx177, align 4
  %79 = load i32, i32* %game, align 4
  %idxprom178 = sext i32 %79 to i64
  %80 = load i32, i32* %week, align 4
  %idxprom179 = sext i32 %80 to i64
  %arrayidx180 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom179
  %arrayidx181 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx180, i32 0, i64 %idxprom178
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx181, i32 0, i64 2
  %81 = load i32, i32* %arrayidx182, align 4
  %idxprom183 = sext i32 %81 to i64
  %82 = load i32, i32* %game, align 4
  %idxprom184 = sext i32 %82 to i64
  %83 = load i32, i32* %week, align 4
  %idxprom185 = sext i32 %83 to i64
  %arrayidx186 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom185
  %arrayidx187 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx186, i32 0, i64 %idxprom184
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx187, i32 0, i64 1
  %84 = load i32, i32* %arrayidx188, align 4
  %idxprom189 = sext i32 %84 to i64
  %arrayidx190 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx190, i32 0, i64 %idxprom183
  %points_for192 = getelementptr inbounds %struct.info, %struct.info* %arrayidx191, i32 0, i32 3
  %85 = load i32, i32* %points_for192, align 4
  %add193 = add nsw i32 %85, %78
  store i32 %add193, i32* %points_for192, align 4
  %86 = load i32, i32* %game, align 4
  %idxprom194 = sext i32 %86 to i64
  %87 = load i32, i32* %week, align 4
  %idxprom195 = sext i32 %87 to i64
  %arrayidx196 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx196, i32 0, i64 %idxprom194
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx197, i32 0, i64 2
  %88 = load i32, i32* %arrayidx198, align 4
  %89 = load i32, i32* %game, align 4
  %idxprom199 = sext i32 %89 to i64
  %90 = load i32, i32* %week, align 4
  %idxprom200 = sext i32 %90 to i64
  %arrayidx201 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom200
  %arrayidx202 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx201, i32 0, i64 %idxprom199
  %arrayidx203 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx202, i32 0, i64 2
  %91 = load i32, i32* %arrayidx203, align 4
  %idxprom204 = sext i32 %91 to i64
  %92 = load i32, i32* %game, align 4
  %idxprom205 = sext i32 %92 to i64
  %93 = load i32, i32* %week, align 4
  %idxprom206 = sext i32 %93 to i64
  %arrayidx207 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom206
  %arrayidx208 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx207, i32 0, i64 %idxprom205
  %arrayidx209 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx208, i32 0, i64 1
  %94 = load i32, i32* %arrayidx209, align 4
  %idxprom210 = sext i32 %94 to i64
  %arrayidx211 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx211, i32 0, i64 %idxprom204
  %points_against213 = getelementptr inbounds %struct.info, %struct.info* %arrayidx212, i32 0, i32 4
  %95 = load i32, i32* %points_against213, align 4
  %add214 = add nsw i32 %95, %88
  store i32 %add214, i32* %points_against213, align 4
  %96 = load i32, i32* %game, align 4
  %idxprom215 = sext i32 %96 to i64
  %97 = load i32, i32* %week, align 4
  %idxprom216 = sext i32 %97 to i64
  %arrayidx217 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx217, i32 0, i64 %idxprom215
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx218, i32 0, i64 2
  %98 = load i32, i32* %arrayidx219, align 4
  %99 = load i32, i32* %game, align 4
  %idxprom220 = sext i32 %99 to i64
  %100 = load i32, i32* %week, align 4
  %idxprom221 = sext i32 %100 to i64
  %arrayidx222 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx222, i32 0, i64 %idxprom220
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx223, i32 0, i64 1
  %101 = load i32, i32* %arrayidx224, align 4
  %cmp225 = icmp slt i32 %98, %101
  br i1 %cmp225, label %if.then.226, label %if.else

if.then.226:                                      ; preds = %if.then
  %102 = load i32, i32* %game, align 4
  %idxprom227 = sext i32 %102 to i64
  %103 = load i32, i32* %week, align 4
  %idxprom228 = sext i32 %103 to i64
  %arrayidx229 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom228
  %arrayidx230 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx229, i32 0, i64 %idxprom227
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx230, i32 0, i64 2
  %104 = load i32, i32* %arrayidx231, align 4
  %idxprom232 = sext i32 %104 to i64
  %arrayidx233 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom232
  %loses234 = getelementptr inbounds %struct.info, %struct.info* %arrayidx233, i32 0, i32 1
  %105 = load i32, i32* %loses234, align 4
  %inc235 = add nsw i32 %105, 1
  store i32 %inc235, i32* %loses234, align 4
  %106 = load i32, i32* %game, align 4
  %idxprom236 = sext i32 %106 to i64
  %107 = load i32, i32* %week, align 4
  %idxprom237 = sext i32 %107 to i64
  %arrayidx238 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom237
  %arrayidx239 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx238, i32 0, i64 %idxprom236
  %arrayidx240 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx239, i32 0, i64 1
  %108 = load i32, i32* %arrayidx240, align 4
  %idxprom241 = sext i32 %108 to i64
  %arrayidx242 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom241
  %wins243 = getelementptr inbounds %struct.info, %struct.info* %arrayidx242, i32 0, i32 0
  %109 = load i32, i32* %wins243, align 4
  %inc244 = add nsw i32 %109, 1
  store i32 %inc244, i32* %wins243, align 4
  %110 = load i32, i32* %game, align 4
  %idxprom245 = sext i32 %110 to i64
  %111 = load i32, i32* %week, align 4
  %idxprom246 = sext i32 %111 to i64
  %arrayidx247 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom246
  %arrayidx248 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx247, i32 0, i64 %idxprom245
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx248, i32 0, i64 1
  %112 = load i32, i32* %arrayidx249, align 4
  %idxprom250 = sext i32 %112 to i64
  %113 = load i32, i32* %game, align 4
  %idxprom251 = sext i32 %113 to i64
  %114 = load i32, i32* %week, align 4
  %idxprom252 = sext i32 %114 to i64
  %arrayidx253 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom252
  %arrayidx254 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx253, i32 0, i64 %idxprom251
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx254, i32 0, i64 2
  %115 = load i32, i32* %arrayidx255, align 4
  %idxprom256 = sext i32 %115 to i64
  %arrayidx257 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx257, i32 0, i64 %idxprom250
  %loses259 = getelementptr inbounds %struct.info, %struct.info* %arrayidx258, i32 0, i32 1
  %116 = load i32, i32* %loses259, align 4
  %inc260 = add nsw i32 %116, 1
  store i32 %inc260, i32* %loses259, align 4
  %117 = load i32, i32* %game, align 4
  %idxprom261 = sext i32 %117 to i64
  %118 = load i32, i32* %week, align 4
  %idxprom262 = sext i32 %118 to i64
  %arrayidx263 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx263, i32 0, i64 %idxprom261
  %arrayidx265 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx264, i32 0, i64 2
  %119 = load i32, i32* %arrayidx265, align 4
  %idxprom266 = sext i32 %119 to i64
  %120 = load i32, i32* %game, align 4
  %idxprom267 = sext i32 %120 to i64
  %121 = load i32, i32* %week, align 4
  %idxprom268 = sext i32 %121 to i64
  %arrayidx269 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx269, i32 0, i64 %idxprom267
  %arrayidx271 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx270, i32 0, i64 1
  %122 = load i32, i32* %arrayidx271, align 4
  %idxprom272 = sext i32 %122 to i64
  %arrayidx273 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom272
  %arrayidx274 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx273, i32 0, i64 %idxprom266
  %wins275 = getelementptr inbounds %struct.info, %struct.info* %arrayidx274, i32 0, i32 0
  %123 = load i32, i32* %wins275, align 4
  %inc276 = add nsw i32 %123, 1
  store i32 %inc276, i32* %wins275, align 4
  %124 = load i32, i32* %game, align 4
  %idxprom277 = sext i32 %124 to i64
  %125 = load i32, i32* %week, align 4
  %idxprom278 = sext i32 %125 to i64
  %arrayidx279 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom278
  %arrayidx280 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx279, i32 0, i64 %idxprom277
  %arrayidx281 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx280, i32 0, i64 2
  %126 = load i32, i32* %arrayidx281, align 4
  %idxprom282 = sext i32 %126 to i64
  %arrayidx283 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom282
  %arrayidx284 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx283, i32 0, i64 0
  %127 = load i32, i32* %arrayidx284, align 4
  %128 = load i32, i32* %game, align 4
  %idxprom285 = sext i32 %128 to i64
  %129 = load i32, i32* %week, align 4
  %idxprom286 = sext i32 %129 to i64
  %arrayidx287 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom286
  %arrayidx288 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx287, i32 0, i64 %idxprom285
  %arrayidx289 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx288, i32 0, i64 1
  %130 = load i32, i32* %arrayidx289, align 4
  %idxprom290 = sext i32 %130 to i64
  %arrayidx291 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom290
  %arrayidx292 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx291, i32 0, i64 0
  %131 = load i32, i32* %arrayidx292, align 4
  %cmp293 = icmp eq i32 %127, %131
  br i1 %cmp293, label %if.then.294, label %if.end.349

if.then.294:                                      ; preds = %if.then.226
  %132 = load i32, i32* %game, align 4
  %idxprom295 = sext i32 %132 to i64
  %133 = load i32, i32* %week, align 4
  %idxprom296 = sext i32 %133 to i64
  %arrayidx297 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom296
  %arrayidx298 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx297, i32 0, i64 %idxprom295
  %arrayidx299 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx298, i32 0, i64 2
  %134 = load i32, i32* %arrayidx299, align 4
  %idxprom300 = sext i32 %134 to i64
  %arrayidx301 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom300
  %loses302 = getelementptr inbounds %struct.info, %struct.info* %arrayidx301, i32 0, i32 1
  %135 = load i32, i32* %loses302, align 4
  %inc303 = add nsw i32 %135, 1
  store i32 %inc303, i32* %loses302, align 4
  %136 = load i32, i32* %game, align 4
  %idxprom304 = sext i32 %136 to i64
  %137 = load i32, i32* %week, align 4
  %idxprom305 = sext i32 %137 to i64
  %arrayidx306 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom305
  %arrayidx307 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx306, i32 0, i64 %idxprom304
  %arrayidx308 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx307, i32 0, i64 1
  %138 = load i32, i32* %arrayidx308, align 4
  %idxprom309 = sext i32 %138 to i64
  %arrayidx310 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom309
  %wins311 = getelementptr inbounds %struct.info, %struct.info* %arrayidx310, i32 0, i32 0
  %139 = load i32, i32* %wins311, align 4
  %inc312 = add nsw i32 %139, 1
  store i32 %inc312, i32* %wins311, align 4
  %140 = load i32, i32* %game, align 4
  %idxprom313 = sext i32 %140 to i64
  %141 = load i32, i32* %week, align 4
  %idxprom314 = sext i32 %141 to i64
  %arrayidx315 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom314
  %arrayidx316 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx315, i32 0, i64 %idxprom313
  %arrayidx317 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx316, i32 0, i64 2
  %142 = load i32, i32* %arrayidx317, align 4
  %idxprom318 = sext i32 %142 to i64
  %arrayidx319 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom318
  %arrayidx320 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx319, i32 0, i64 1
  %143 = load i32, i32* %arrayidx320, align 4
  %144 = load i32, i32* %game, align 4
  %idxprom321 = sext i32 %144 to i64
  %145 = load i32, i32* %week, align 4
  %idxprom322 = sext i32 %145 to i64
  %arrayidx323 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom322
  %arrayidx324 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx323, i32 0, i64 %idxprom321
  %arrayidx325 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx324, i32 0, i64 1
  %146 = load i32, i32* %arrayidx325, align 4
  %idxprom326 = sext i32 %146 to i64
  %arrayidx327 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom326
  %arrayidx328 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx327, i32 0, i64 1
  %147 = load i32, i32* %arrayidx328, align 4
  %cmp329 = icmp eq i32 %143, %147
  br i1 %cmp329, label %if.then.330, label %if.end

if.then.330:                                      ; preds = %if.then.294
  %148 = load i32, i32* %game, align 4
  %idxprom331 = sext i32 %148 to i64
  %149 = load i32, i32* %week, align 4
  %idxprom332 = sext i32 %149 to i64
  %arrayidx333 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom332
  %arrayidx334 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx333, i32 0, i64 %idxprom331
  %arrayidx335 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx334, i32 0, i64 2
  %150 = load i32, i32* %arrayidx335, align 4
  %idxprom336 = sext i32 %150 to i64
  %arrayidx337 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom336
  %loses338 = getelementptr inbounds %struct.info, %struct.info* %arrayidx337, i32 0, i32 1
  %151 = load i32, i32* %loses338, align 4
  %inc339 = add nsw i32 %151, 1
  store i32 %inc339, i32* %loses338, align 4
  %152 = load i32, i32* %game, align 4
  %idxprom340 = sext i32 %152 to i64
  %153 = load i32, i32* %week, align 4
  %idxprom341 = sext i32 %153 to i64
  %arrayidx342 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom341
  %arrayidx343 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx342, i32 0, i64 %idxprom340
  %arrayidx344 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx343, i32 0, i64 1
  %154 = load i32, i32* %arrayidx344, align 4
  %idxprom345 = sext i32 %154 to i64
  %arrayidx346 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom345
  %wins347 = getelementptr inbounds %struct.info, %struct.info* %arrayidx346, i32 0, i32 0
  %155 = load i32, i32* %wins347, align 4
  %inc348 = add nsw i32 %155, 1
  store i32 %inc348, i32* %wins347, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.330, %if.then.294
  br label %if.end.349

if.end.349:                                       ; preds = %if.end, %if.then.226
  br label %if.end.612

if.else:                                          ; preds = %if.then
  %156 = load i32, i32* %game, align 4
  %idxprom350 = sext i32 %156 to i64
  %157 = load i32, i32* %week, align 4
  %idxprom351 = sext i32 %157 to i64
  %arrayidx352 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom351
  %arrayidx353 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx352, i32 0, i64 %idxprom350
  %arrayidx354 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx353, i32 0, i64 2
  %158 = load i32, i32* %arrayidx354, align 4
  %159 = load i32, i32* %game, align 4
  %idxprom355 = sext i32 %159 to i64
  %160 = load i32, i32* %week, align 4
  %idxprom356 = sext i32 %160 to i64
  %arrayidx357 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom356
  %arrayidx358 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx357, i32 0, i64 %idxprom355
  %arrayidx359 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx358, i32 0, i64 1
  %161 = load i32, i32* %arrayidx359, align 4
  %cmp360 = icmp sgt i32 %158, %161
  br i1 %cmp360, label %if.then.361, label %if.else.486

if.then.361:                                      ; preds = %if.else
  %162 = load i32, i32* %game, align 4
  %idxprom362 = sext i32 %162 to i64
  %163 = load i32, i32* %week, align 4
  %idxprom363 = sext i32 %163 to i64
  %arrayidx364 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom363
  %arrayidx365 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx364, i32 0, i64 %idxprom362
  %arrayidx366 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx365, i32 0, i64 2
  %164 = load i32, i32* %arrayidx366, align 4
  %idxprom367 = sext i32 %164 to i64
  %arrayidx368 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom367
  %wins369 = getelementptr inbounds %struct.info, %struct.info* %arrayidx368, i32 0, i32 0
  %165 = load i32, i32* %wins369, align 4
  %inc370 = add nsw i32 %165, 1
  store i32 %inc370, i32* %wins369, align 4
  %166 = load i32, i32* %game, align 4
  %idxprom371 = sext i32 %166 to i64
  %167 = load i32, i32* %week, align 4
  %idxprom372 = sext i32 %167 to i64
  %arrayidx373 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom372
  %arrayidx374 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx373, i32 0, i64 %idxprom371
  %arrayidx375 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx374, i32 0, i64 1
  %168 = load i32, i32* %arrayidx375, align 4
  %idxprom376 = sext i32 %168 to i64
  %arrayidx377 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom376
  %loses378 = getelementptr inbounds %struct.info, %struct.info* %arrayidx377, i32 0, i32 1
  %169 = load i32, i32* %loses378, align 4
  %inc379 = add nsw i32 %169, 1
  store i32 %inc379, i32* %loses378, align 4
  %170 = load i32, i32* %game, align 4
  %idxprom380 = sext i32 %170 to i64
  %171 = load i32, i32* %week, align 4
  %idxprom381 = sext i32 %171 to i64
  %arrayidx382 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom381
  %arrayidx383 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx382, i32 0, i64 %idxprom380
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx383, i32 0, i64 1
  %172 = load i32, i32* %arrayidx384, align 4
  %idxprom385 = sext i32 %172 to i64
  %173 = load i32, i32* %game, align 4
  %idxprom386 = sext i32 %173 to i64
  %174 = load i32, i32* %week, align 4
  %idxprom387 = sext i32 %174 to i64
  %arrayidx388 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom387
  %arrayidx389 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx388, i32 0, i64 %idxprom386
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx389, i32 0, i64 2
  %175 = load i32, i32* %arrayidx390, align 4
  %idxprom391 = sext i32 %175 to i64
  %arrayidx392 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom391
  %arrayidx393 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx392, i32 0, i64 %idxprom385
  %wins394 = getelementptr inbounds %struct.info, %struct.info* %arrayidx393, i32 0, i32 0
  %176 = load i32, i32* %wins394, align 4
  %inc395 = add nsw i32 %176, 1
  store i32 %inc395, i32* %wins394, align 4
  %177 = load i32, i32* %game, align 4
  %idxprom396 = sext i32 %177 to i64
  %178 = load i32, i32* %week, align 4
  %idxprom397 = sext i32 %178 to i64
  %arrayidx398 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom397
  %arrayidx399 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx398, i32 0, i64 %idxprom396
  %arrayidx400 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx399, i32 0, i64 2
  %179 = load i32, i32* %arrayidx400, align 4
  %idxprom401 = sext i32 %179 to i64
  %180 = load i32, i32* %game, align 4
  %idxprom402 = sext i32 %180 to i64
  %181 = load i32, i32* %week, align 4
  %idxprom403 = sext i32 %181 to i64
  %arrayidx404 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx404, i32 0, i64 %idxprom402
  %arrayidx406 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx405, i32 0, i64 1
  %182 = load i32, i32* %arrayidx406, align 4
  %idxprom407 = sext i32 %182 to i64
  %arrayidx408 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom407
  %arrayidx409 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx408, i32 0, i64 %idxprom401
  %loses410 = getelementptr inbounds %struct.info, %struct.info* %arrayidx409, i32 0, i32 1
  %183 = load i32, i32* %loses410, align 4
  %inc411 = add nsw i32 %183, 1
  store i32 %inc411, i32* %loses410, align 4
  %184 = load i32, i32* %game, align 4
  %idxprom412 = sext i32 %184 to i64
  %185 = load i32, i32* %week, align 4
  %idxprom413 = sext i32 %185 to i64
  %arrayidx414 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom413
  %arrayidx415 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx414, i32 0, i64 %idxprom412
  %arrayidx416 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx415, i32 0, i64 2
  %186 = load i32, i32* %arrayidx416, align 4
  %idxprom417 = sext i32 %186 to i64
  %arrayidx418 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom417
  %arrayidx419 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx418, i32 0, i64 0
  %187 = load i32, i32* %arrayidx419, align 4
  %188 = load i32, i32* %game, align 4
  %idxprom420 = sext i32 %188 to i64
  %189 = load i32, i32* %week, align 4
  %idxprom421 = sext i32 %189 to i64
  %arrayidx422 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom421
  %arrayidx423 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx422, i32 0, i64 %idxprom420
  %arrayidx424 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx423, i32 0, i64 1
  %190 = load i32, i32* %arrayidx424, align 4
  %idxprom425 = sext i32 %190 to i64
  %arrayidx426 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom425
  %arrayidx427 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx426, i32 0, i64 0
  %191 = load i32, i32* %arrayidx427, align 4
  %cmp428 = icmp eq i32 %187, %191
  br i1 %cmp428, label %if.then.429, label %if.end.485

if.then.429:                                      ; preds = %if.then.361
  %192 = load i32, i32* %game, align 4
  %idxprom430 = sext i32 %192 to i64
  %193 = load i32, i32* %week, align 4
  %idxprom431 = sext i32 %193 to i64
  %arrayidx432 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom431
  %arrayidx433 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx432, i32 0, i64 %idxprom430
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx433, i32 0, i64 2
  %194 = load i32, i32* %arrayidx434, align 4
  %idxprom435 = sext i32 %194 to i64
  %arrayidx436 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom435
  %wins437 = getelementptr inbounds %struct.info, %struct.info* %arrayidx436, i32 0, i32 0
  %195 = load i32, i32* %wins437, align 4
  %inc438 = add nsw i32 %195, 1
  store i32 %inc438, i32* %wins437, align 4
  %196 = load i32, i32* %game, align 4
  %idxprom439 = sext i32 %196 to i64
  %197 = load i32, i32* %week, align 4
  %idxprom440 = sext i32 %197 to i64
  %arrayidx441 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom440
  %arrayidx442 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx441, i32 0, i64 %idxprom439
  %arrayidx443 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx442, i32 0, i64 1
  %198 = load i32, i32* %arrayidx443, align 4
  %idxprom444 = sext i32 %198 to i64
  %arrayidx445 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom444
  %loses446 = getelementptr inbounds %struct.info, %struct.info* %arrayidx445, i32 0, i32 1
  %199 = load i32, i32* %loses446, align 4
  %inc447 = add nsw i32 %199, 1
  store i32 %inc447, i32* %loses446, align 4
  %200 = load i32, i32* %game, align 4
  %idxprom448 = sext i32 %200 to i64
  %201 = load i32, i32* %week, align 4
  %idxprom449 = sext i32 %201 to i64
  %arrayidx450 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom449
  %arrayidx451 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx450, i32 0, i64 %idxprom448
  %arrayidx452 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx451, i32 0, i64 2
  %202 = load i32, i32* %arrayidx452, align 4
  %idxprom453 = sext i32 %202 to i64
  %arrayidx454 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom453
  %arrayidx455 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx454, i32 0, i64 1
  %203 = load i32, i32* %arrayidx455, align 4
  %204 = load i32, i32* %game, align 4
  %idxprom456 = sext i32 %204 to i64
  %205 = load i32, i32* %week, align 4
  %idxprom457 = sext i32 %205 to i64
  %arrayidx458 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom457
  %arrayidx459 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx458, i32 0, i64 %idxprom456
  %arrayidx460 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx459, i32 0, i64 1
  %206 = load i32, i32* %arrayidx460, align 4
  %idxprom461 = sext i32 %206 to i64
  %arrayidx462 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom461
  %arrayidx463 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx462, i32 0, i64 1
  %207 = load i32, i32* %arrayidx463, align 4
  %cmp464 = icmp eq i32 %203, %207
  br i1 %cmp464, label %if.then.465, label %if.end.484

if.then.465:                                      ; preds = %if.then.429
  %208 = load i32, i32* %game, align 4
  %idxprom466 = sext i32 %208 to i64
  %209 = load i32, i32* %week, align 4
  %idxprom467 = sext i32 %209 to i64
  %arrayidx468 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom467
  %arrayidx469 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx468, i32 0, i64 %idxprom466
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx469, i32 0, i64 2
  %210 = load i32, i32* %arrayidx470, align 4
  %idxprom471 = sext i32 %210 to i64
  %arrayidx472 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom471
  %wins473 = getelementptr inbounds %struct.info, %struct.info* %arrayidx472, i32 0, i32 0
  %211 = load i32, i32* %wins473, align 4
  %inc474 = add nsw i32 %211, 1
  store i32 %inc474, i32* %wins473, align 4
  %212 = load i32, i32* %game, align 4
  %idxprom475 = sext i32 %212 to i64
  %213 = load i32, i32* %week, align 4
  %idxprom476 = sext i32 %213 to i64
  %arrayidx477 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom476
  %arrayidx478 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx477, i32 0, i64 %idxprom475
  %arrayidx479 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx478, i32 0, i64 1
  %214 = load i32, i32* %arrayidx479, align 4
  %idxprom480 = sext i32 %214 to i64
  %arrayidx481 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom480
  %loses482 = getelementptr inbounds %struct.info, %struct.info* %arrayidx481, i32 0, i32 1
  %215 = load i32, i32* %loses482, align 4
  %inc483 = add nsw i32 %215, 1
  store i32 %inc483, i32* %loses482, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.465, %if.then.429
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.then.361
  br label %if.end.611

if.else.486:                                      ; preds = %if.else
  %216 = load i32, i32* %game, align 4
  %idxprom487 = sext i32 %216 to i64
  %217 = load i32, i32* %week, align 4
  %idxprom488 = sext i32 %217 to i64
  %arrayidx489 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom488
  %arrayidx490 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx489, i32 0, i64 %idxprom487
  %arrayidx491 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx490, i32 0, i64 2
  %218 = load i32, i32* %arrayidx491, align 4
  %idxprom492 = sext i32 %218 to i64
  %arrayidx493 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom492
  %ties494 = getelementptr inbounds %struct.info, %struct.info* %arrayidx493, i32 0, i32 2
  %219 = load i32, i32* %ties494, align 4
  %inc495 = add nsw i32 %219, 1
  store i32 %inc495, i32* %ties494, align 4
  %220 = load i32, i32* %game, align 4
  %idxprom496 = sext i32 %220 to i64
  %221 = load i32, i32* %week, align 4
  %idxprom497 = sext i32 %221 to i64
  %arrayidx498 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom497
  %arrayidx499 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx498, i32 0, i64 %idxprom496
  %arrayidx500 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx499, i32 0, i64 1
  %222 = load i32, i32* %arrayidx500, align 4
  %idxprom501 = sext i32 %222 to i64
  %arrayidx502 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom501
  %ties503 = getelementptr inbounds %struct.info, %struct.info* %arrayidx502, i32 0, i32 2
  %223 = load i32, i32* %ties503, align 4
  %inc504 = add nsw i32 %223, 1
  store i32 %inc504, i32* %ties503, align 4
  %224 = load i32, i32* %game, align 4
  %idxprom505 = sext i32 %224 to i64
  %225 = load i32, i32* %week, align 4
  %idxprom506 = sext i32 %225 to i64
  %arrayidx507 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom506
  %arrayidx508 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx507, i32 0, i64 %idxprom505
  %arrayidx509 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx508, i32 0, i64 1
  %226 = load i32, i32* %arrayidx509, align 4
  %idxprom510 = sext i32 %226 to i64
  %227 = load i32, i32* %game, align 4
  %idxprom511 = sext i32 %227 to i64
  %228 = load i32, i32* %week, align 4
  %idxprom512 = sext i32 %228 to i64
  %arrayidx513 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom512
  %arrayidx514 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx513, i32 0, i64 %idxprom511
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx514, i32 0, i64 2
  %229 = load i32, i32* %arrayidx515, align 4
  %idxprom516 = sext i32 %229 to i64
  %arrayidx517 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom516
  %arrayidx518 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx517, i32 0, i64 %idxprom510
  %ties519 = getelementptr inbounds %struct.info, %struct.info* %arrayidx518, i32 0, i32 2
  %230 = load i32, i32* %ties519, align 4
  %inc520 = add nsw i32 %230, 1
  store i32 %inc520, i32* %ties519, align 4
  %231 = load i32, i32* %game, align 4
  %idxprom521 = sext i32 %231 to i64
  %232 = load i32, i32* %week, align 4
  %idxprom522 = sext i32 %232 to i64
  %arrayidx523 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom522
  %arrayidx524 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx523, i32 0, i64 %idxprom521
  %arrayidx525 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx524, i32 0, i64 2
  %233 = load i32, i32* %arrayidx525, align 4
  %idxprom526 = sext i32 %233 to i64
  %234 = load i32, i32* %game, align 4
  %idxprom527 = sext i32 %234 to i64
  %235 = load i32, i32* %week, align 4
  %idxprom528 = sext i32 %235 to i64
  %arrayidx529 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom528
  %arrayidx530 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx529, i32 0, i64 %idxprom527
  %arrayidx531 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx530, i32 0, i64 1
  %236 = load i32, i32* %arrayidx531, align 4
  %idxprom532 = sext i32 %236 to i64
  %arrayidx533 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom532
  %arrayidx534 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx533, i32 0, i64 %idxprom526
  %ties535 = getelementptr inbounds %struct.info, %struct.info* %arrayidx534, i32 0, i32 2
  %237 = load i32, i32* %ties535, align 4
  %inc536 = add nsw i32 %237, 1
  store i32 %inc536, i32* %ties535, align 4
  %238 = load i32, i32* %game, align 4
  %idxprom537 = sext i32 %238 to i64
  %239 = load i32, i32* %week, align 4
  %idxprom538 = sext i32 %239 to i64
  %arrayidx539 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom538
  %arrayidx540 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx539, i32 0, i64 %idxprom537
  %arrayidx541 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx540, i32 0, i64 2
  %240 = load i32, i32* %arrayidx541, align 4
  %idxprom542 = sext i32 %240 to i64
  %arrayidx543 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom542
  %arrayidx544 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx543, i32 0, i64 0
  %241 = load i32, i32* %arrayidx544, align 4
  %242 = load i32, i32* %game, align 4
  %idxprom545 = sext i32 %242 to i64
  %243 = load i32, i32* %week, align 4
  %idxprom546 = sext i32 %243 to i64
  %arrayidx547 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom546
  %arrayidx548 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx547, i32 0, i64 %idxprom545
  %arrayidx549 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx548, i32 0, i64 1
  %244 = load i32, i32* %arrayidx549, align 4
  %idxprom550 = sext i32 %244 to i64
  %arrayidx551 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom550
  %arrayidx552 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx551, i32 0, i64 0
  %245 = load i32, i32* %arrayidx552, align 4
  %cmp553 = icmp eq i32 %241, %245
  br i1 %cmp553, label %if.then.554, label %if.end.610

if.then.554:                                      ; preds = %if.else.486
  %246 = load i32, i32* %game, align 4
  %idxprom555 = sext i32 %246 to i64
  %247 = load i32, i32* %week, align 4
  %idxprom556 = sext i32 %247 to i64
  %arrayidx557 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom556
  %arrayidx558 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx557, i32 0, i64 %idxprom555
  %arrayidx559 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx558, i32 0, i64 2
  %248 = load i32, i32* %arrayidx559, align 4
  %idxprom560 = sext i32 %248 to i64
  %arrayidx561 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom560
  %ties562 = getelementptr inbounds %struct.info, %struct.info* %arrayidx561, i32 0, i32 2
  %249 = load i32, i32* %ties562, align 4
  %inc563 = add nsw i32 %249, 1
  store i32 %inc563, i32* %ties562, align 4
  %250 = load i32, i32* %game, align 4
  %idxprom564 = sext i32 %250 to i64
  %251 = load i32, i32* %week, align 4
  %idxprom565 = sext i32 %251 to i64
  %arrayidx566 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom565
  %arrayidx567 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx566, i32 0, i64 %idxprom564
  %arrayidx568 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx567, i32 0, i64 1
  %252 = load i32, i32* %arrayidx568, align 4
  %idxprom569 = sext i32 %252 to i64
  %arrayidx570 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom569
  %ties571 = getelementptr inbounds %struct.info, %struct.info* %arrayidx570, i32 0, i32 2
  %253 = load i32, i32* %ties571, align 4
  %inc572 = add nsw i32 %253, 1
  store i32 %inc572, i32* %ties571, align 4
  %254 = load i32, i32* %game, align 4
  %idxprom573 = sext i32 %254 to i64
  %255 = load i32, i32* %week, align 4
  %idxprom574 = sext i32 %255 to i64
  %arrayidx575 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom574
  %arrayidx576 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx575, i32 0, i64 %idxprom573
  %arrayidx577 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx576, i32 0, i64 2
  %256 = load i32, i32* %arrayidx577, align 4
  %idxprom578 = sext i32 %256 to i64
  %arrayidx579 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom578
  %arrayidx580 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx579, i32 0, i64 1
  %257 = load i32, i32* %arrayidx580, align 4
  %258 = load i32, i32* %game, align 4
  %idxprom581 = sext i32 %258 to i64
  %259 = load i32, i32* %week, align 4
  %idxprom582 = sext i32 %259 to i64
  %arrayidx583 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom582
  %arrayidx584 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx583, i32 0, i64 %idxprom581
  %arrayidx585 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx584, i32 0, i64 1
  %260 = load i32, i32* %arrayidx585, align 4
  %idxprom586 = sext i32 %260 to i64
  %arrayidx587 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom586
  %arrayidx588 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx587, i32 0, i64 1
  %261 = load i32, i32* %arrayidx588, align 4
  %cmp589 = icmp eq i32 %257, %261
  br i1 %cmp589, label %if.then.590, label %if.end.609

if.then.590:                                      ; preds = %if.then.554
  %262 = load i32, i32* %game, align 4
  %idxprom591 = sext i32 %262 to i64
  %263 = load i32, i32* %week, align 4
  %idxprom592 = sext i32 %263 to i64
  %arrayidx593 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom592
  %arrayidx594 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx593, i32 0, i64 %idxprom591
  %arrayidx595 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx594, i32 0, i64 2
  %264 = load i32, i32* %arrayidx595, align 4
  %idxprom596 = sext i32 %264 to i64
  %arrayidx597 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom596
  %ties598 = getelementptr inbounds %struct.info, %struct.info* %arrayidx597, i32 0, i32 2
  %265 = load i32, i32* %ties598, align 4
  %inc599 = add nsw i32 %265, 1
  store i32 %inc599, i32* %ties598, align 4
  %266 = load i32, i32* %game, align 4
  %idxprom600 = sext i32 %266 to i64
  %267 = load i32, i32* %week, align 4
  %idxprom601 = sext i32 %267 to i64
  %arrayidx602 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom601
  %arrayidx603 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx602, i32 0, i64 %idxprom600
  %arrayidx604 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx603, i32 0, i64 1
  %268 = load i32, i32* %arrayidx604, align 4
  %idxprom605 = sext i32 %268 to i64
  %arrayidx606 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom605
  %ties607 = getelementptr inbounds %struct.info, %struct.info* %arrayidx606, i32 0, i32 2
  %269 = load i32, i32* %ties607, align 4
  %inc608 = add nsw i32 %269, 1
  store i32 %inc608, i32* %ties607, align 4
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.590, %if.then.554
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %if.else.486
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.end.485
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.end.349
  %270 = load i32, i32* %game, align 4
  %idxprom613 = sext i32 %270 to i64
  %271 = load i32, i32* %week, align 4
  %idxprom614 = sext i32 %271 to i64
  %arrayidx615 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom614
  %arrayidx616 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx615, i32 0, i64 %idxprom613
  %arrayidx617 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx616, i32 0, i64 2
  %272 = load i32, i32* %arrayidx617, align 4
  %273 = load i32, i32* %game, align 4
  %idxprom618 = sext i32 %273 to i64
  %274 = load i32, i32* %week, align 4
  %idxprom619 = sext i32 %274 to i64
  %arrayidx620 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom619
  %arrayidx621 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx620, i32 0, i64 %idxprom618
  %arrayidx622 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx621, i32 0, i64 2
  %275 = load i32, i32* %arrayidx622, align 4
  %idxprom623 = sext i32 %275 to i64
  %arrayidx624 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom623
  %points_for625 = getelementptr inbounds %struct.info, %struct.info* %arrayidx624, i32 0, i32 3
  %276 = load i32, i32* %points_for625, align 4
  %add626 = add nsw i32 %276, %272
  store i32 %add626, i32* %points_for625, align 4
  %277 = load i32, i32* %game, align 4
  %idxprom627 = sext i32 %277 to i64
  %278 = load i32, i32* %week, align 4
  %idxprom628 = sext i32 %278 to i64
  %arrayidx629 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom628
  %arrayidx630 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx629, i32 0, i64 %idxprom627
  %arrayidx631 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx630, i32 0, i64 1
  %279 = load i32, i32* %arrayidx631, align 4
  %280 = load i32, i32* %game, align 4
  %idxprom632 = sext i32 %280 to i64
  %281 = load i32, i32* %week, align 4
  %idxprom633 = sext i32 %281 to i64
  %arrayidx634 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom633
  %arrayidx635 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx634, i32 0, i64 %idxprom632
  %arrayidx636 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx635, i32 0, i64 2
  %282 = load i32, i32* %arrayidx636, align 4
  %idxprom637 = sext i32 %282 to i64
  %arrayidx638 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom637
  %points_against639 = getelementptr inbounds %struct.info, %struct.info* %arrayidx638, i32 0, i32 4
  %283 = load i32, i32* %points_against639, align 4
  %add640 = add nsw i32 %283, %279
  store i32 %add640, i32* %points_against639, align 4
  %284 = load i32, i32* %game, align 4
  %idxprom641 = sext i32 %284 to i64
  %285 = load i32, i32* %week, align 4
  %idxprom642 = sext i32 %285 to i64
  %arrayidx643 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom642
  %arrayidx644 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx643, i32 0, i64 %idxprom641
  %arrayidx645 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx644, i32 0, i64 1
  %286 = load i32, i32* %arrayidx645, align 4
  %287 = load i32, i32* %game, align 4
  %idxprom646 = sext i32 %287 to i64
  %288 = load i32, i32* %week, align 4
  %idxprom647 = sext i32 %288 to i64
  %arrayidx648 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom647
  %arrayidx649 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx648, i32 0, i64 %idxprom646
  %arrayidx650 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx649, i32 0, i64 1
  %289 = load i32, i32* %arrayidx650, align 4
  %idxprom651 = sext i32 %289 to i64
  %arrayidx652 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom651
  %points_for653 = getelementptr inbounds %struct.info, %struct.info* %arrayidx652, i32 0, i32 3
  %290 = load i32, i32* %points_for653, align 4
  %add654 = add nsw i32 %290, %286
  store i32 %add654, i32* %points_for653, align 4
  %291 = load i32, i32* %game, align 4
  %idxprom655 = sext i32 %291 to i64
  %292 = load i32, i32* %week, align 4
  %idxprom656 = sext i32 %292 to i64
  %arrayidx657 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom656
  %arrayidx658 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx657, i32 0, i64 %idxprom655
  %arrayidx659 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx658, i32 0, i64 2
  %293 = load i32, i32* %arrayidx659, align 4
  %294 = load i32, i32* %game, align 4
  %idxprom660 = sext i32 %294 to i64
  %295 = load i32, i32* %week, align 4
  %idxprom661 = sext i32 %295 to i64
  %arrayidx662 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom661
  %arrayidx663 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx662, i32 0, i64 %idxprom660
  %arrayidx664 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx663, i32 0, i64 1
  %296 = load i32, i32* %arrayidx664, align 4
  %idxprom665 = sext i32 %296 to i64
  %arrayidx666 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom665
  %points_against667 = getelementptr inbounds %struct.info, %struct.info* %arrayidx666, i32 0, i32 4
  %297 = load i32, i32* %points_against667, align 4
  %add668 = add nsw i32 %297, %293
  store i32 %add668, i32* %points_against667, align 4
  %298 = load i32, i32* %game, align 4
  %idxprom669 = sext i32 %298 to i64
  %299 = load i32, i32* %week, align 4
  %idxprom670 = sext i32 %299 to i64
  %arrayidx671 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom670
  %arrayidx672 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx671, i32 0, i64 %idxprom669
  %arrayidx673 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx672, i32 0, i64 2
  %300 = load i32, i32* %arrayidx673, align 4
  %idxprom674 = sext i32 %300 to i64
  %arrayidx675 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom674
  %arrayidx676 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx675, i32 0, i64 0
  %301 = load i32, i32* %arrayidx676, align 4
  %302 = load i32, i32* %game, align 4
  %idxprom677 = sext i32 %302 to i64
  %303 = load i32, i32* %week, align 4
  %idxprom678 = sext i32 %303 to i64
  %arrayidx679 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom678
  %arrayidx680 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx679, i32 0, i64 %idxprom677
  %arrayidx681 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx680, i32 0, i64 1
  %304 = load i32, i32* %arrayidx681, align 4
  %idxprom682 = sext i32 %304 to i64
  %arrayidx683 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom682
  %arrayidx684 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx683, i32 0, i64 0
  %305 = load i32, i32* %arrayidx684, align 4
  %cmp685 = icmp eq i32 %301, %305
  br i1 %cmp685, label %if.then.686, label %if.end.818

if.then.686:                                      ; preds = %if.end.612
  %306 = load i32, i32* %game, align 4
  %idxprom687 = sext i32 %306 to i64
  %307 = load i32, i32* %week, align 4
  %idxprom688 = sext i32 %307 to i64
  %arrayidx689 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom688
  %arrayidx690 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx689, i32 0, i64 %idxprom687
  %arrayidx691 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx690, i32 0, i64 2
  %308 = load i32, i32* %arrayidx691, align 4
  %309 = load i32, i32* %game, align 4
  %idxprom692 = sext i32 %309 to i64
  %310 = load i32, i32* %week, align 4
  %idxprom693 = sext i32 %310 to i64
  %arrayidx694 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom693
  %arrayidx695 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx694, i32 0, i64 %idxprom692
  %arrayidx696 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx695, i32 0, i64 2
  %311 = load i32, i32* %arrayidx696, align 4
  %idxprom697 = sext i32 %311 to i64
  %arrayidx698 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom697
  %points_for699 = getelementptr inbounds %struct.info, %struct.info* %arrayidx698, i32 0, i32 3
  %312 = load i32, i32* %points_for699, align 4
  %add700 = add nsw i32 %312, %308
  store i32 %add700, i32* %points_for699, align 4
  %313 = load i32, i32* %game, align 4
  %idxprom701 = sext i32 %313 to i64
  %314 = load i32, i32* %week, align 4
  %idxprom702 = sext i32 %314 to i64
  %arrayidx703 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom702
  %arrayidx704 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx703, i32 0, i64 %idxprom701
  %arrayidx705 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx704, i32 0, i64 1
  %315 = load i32, i32* %arrayidx705, align 4
  %316 = load i32, i32* %game, align 4
  %idxprom706 = sext i32 %316 to i64
  %317 = load i32, i32* %week, align 4
  %idxprom707 = sext i32 %317 to i64
  %arrayidx708 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom707
  %arrayidx709 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx708, i32 0, i64 %idxprom706
  %arrayidx710 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx709, i32 0, i64 2
  %318 = load i32, i32* %arrayidx710, align 4
  %idxprom711 = sext i32 %318 to i64
  %arrayidx712 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom711
  %points_against713 = getelementptr inbounds %struct.info, %struct.info* %arrayidx712, i32 0, i32 4
  %319 = load i32, i32* %points_against713, align 4
  %add714 = add nsw i32 %319, %315
  store i32 %add714, i32* %points_against713, align 4
  %320 = load i32, i32* %game, align 4
  %idxprom715 = sext i32 %320 to i64
  %321 = load i32, i32* %week, align 4
  %idxprom716 = sext i32 %321 to i64
  %arrayidx717 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom716
  %arrayidx718 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx717, i32 0, i64 %idxprom715
  %arrayidx719 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx718, i32 0, i64 1
  %322 = load i32, i32* %arrayidx719, align 4
  %323 = load i32, i32* %game, align 4
  %idxprom720 = sext i32 %323 to i64
  %324 = load i32, i32* %week, align 4
  %idxprom721 = sext i32 %324 to i64
  %arrayidx722 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom721
  %arrayidx723 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx722, i32 0, i64 %idxprom720
  %arrayidx724 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx723, i32 0, i64 1
  %325 = load i32, i32* %arrayidx724, align 4
  %idxprom725 = sext i32 %325 to i64
  %arrayidx726 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom725
  %points_for727 = getelementptr inbounds %struct.info, %struct.info* %arrayidx726, i32 0, i32 3
  %326 = load i32, i32* %points_for727, align 4
  %add728 = add nsw i32 %326, %322
  store i32 %add728, i32* %points_for727, align 4
  %327 = load i32, i32* %game, align 4
  %idxprom729 = sext i32 %327 to i64
  %328 = load i32, i32* %week, align 4
  %idxprom730 = sext i32 %328 to i64
  %arrayidx731 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom730
  %arrayidx732 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx731, i32 0, i64 %idxprom729
  %arrayidx733 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx732, i32 0, i64 2
  %329 = load i32, i32* %arrayidx733, align 4
  %330 = load i32, i32* %game, align 4
  %idxprom734 = sext i32 %330 to i64
  %331 = load i32, i32* %week, align 4
  %idxprom735 = sext i32 %331 to i64
  %arrayidx736 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom735
  %arrayidx737 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx736, i32 0, i64 %idxprom734
  %arrayidx738 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx737, i32 0, i64 1
  %332 = load i32, i32* %arrayidx738, align 4
  %idxprom739 = sext i32 %332 to i64
  %arrayidx740 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom739
  %points_against741 = getelementptr inbounds %struct.info, %struct.info* %arrayidx740, i32 0, i32 4
  %333 = load i32, i32* %points_against741, align 4
  %add742 = add nsw i32 %333, %329
  store i32 %add742, i32* %points_against741, align 4
  %334 = load i32, i32* %game, align 4
  %idxprom743 = sext i32 %334 to i64
  %335 = load i32, i32* %week, align 4
  %idxprom744 = sext i32 %335 to i64
  %arrayidx745 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom744
  %arrayidx746 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx745, i32 0, i64 %idxprom743
  %arrayidx747 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx746, i32 0, i64 2
  %336 = load i32, i32* %arrayidx747, align 4
  %idxprom748 = sext i32 %336 to i64
  %arrayidx749 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom748
  %arrayidx750 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx749, i32 0, i64 1
  %337 = load i32, i32* %arrayidx750, align 4
  %338 = load i32, i32* %game, align 4
  %idxprom751 = sext i32 %338 to i64
  %339 = load i32, i32* %week, align 4
  %idxprom752 = sext i32 %339 to i64
  %arrayidx753 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom752
  %arrayidx754 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx753, i32 0, i64 %idxprom751
  %arrayidx755 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx754, i32 0, i64 1
  %340 = load i32, i32* %arrayidx755, align 4
  %idxprom756 = sext i32 %340 to i64
  %arrayidx757 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom756
  %arrayidx758 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx757, i32 0, i64 1
  %341 = load i32, i32* %arrayidx758, align 4
  %cmp759 = icmp eq i32 %337, %341
  br i1 %cmp759, label %if.then.760, label %if.end.817

if.then.760:                                      ; preds = %if.then.686
  %342 = load i32, i32* %game, align 4
  %idxprom761 = sext i32 %342 to i64
  %343 = load i32, i32* %week, align 4
  %idxprom762 = sext i32 %343 to i64
  %arrayidx763 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom762
  %arrayidx764 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx763, i32 0, i64 %idxprom761
  %arrayidx765 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx764, i32 0, i64 2
  %344 = load i32, i32* %arrayidx765, align 4
  %345 = load i32, i32* %game, align 4
  %idxprom766 = sext i32 %345 to i64
  %346 = load i32, i32* %week, align 4
  %idxprom767 = sext i32 %346 to i64
  %arrayidx768 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom767
  %arrayidx769 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx768, i32 0, i64 %idxprom766
  %arrayidx770 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx769, i32 0, i64 2
  %347 = load i32, i32* %arrayidx770, align 4
  %idxprom771 = sext i32 %347 to i64
  %arrayidx772 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom771
  %points_for773 = getelementptr inbounds %struct.info, %struct.info* %arrayidx772, i32 0, i32 3
  %348 = load i32, i32* %points_for773, align 4
  %add774 = add nsw i32 %348, %344
  store i32 %add774, i32* %points_for773, align 4
  %349 = load i32, i32* %game, align 4
  %idxprom775 = sext i32 %349 to i64
  %350 = load i32, i32* %week, align 4
  %idxprom776 = sext i32 %350 to i64
  %arrayidx777 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom776
  %arrayidx778 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx777, i32 0, i64 %idxprom775
  %arrayidx779 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx778, i32 0, i64 1
  %351 = load i32, i32* %arrayidx779, align 4
  %352 = load i32, i32* %game, align 4
  %idxprom780 = sext i32 %352 to i64
  %353 = load i32, i32* %week, align 4
  %idxprom781 = sext i32 %353 to i64
  %arrayidx782 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom781
  %arrayidx783 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx782, i32 0, i64 %idxprom780
  %arrayidx784 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx783, i32 0, i64 2
  %354 = load i32, i32* %arrayidx784, align 4
  %idxprom785 = sext i32 %354 to i64
  %arrayidx786 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom785
  %points_against787 = getelementptr inbounds %struct.info, %struct.info* %arrayidx786, i32 0, i32 4
  %355 = load i32, i32* %points_against787, align 4
  %add788 = add nsw i32 %355, %351
  store i32 %add788, i32* %points_against787, align 4
  %356 = load i32, i32* %game, align 4
  %idxprom789 = sext i32 %356 to i64
  %357 = load i32, i32* %week, align 4
  %idxprom790 = sext i32 %357 to i64
  %arrayidx791 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom790
  %arrayidx792 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx791, i32 0, i64 %idxprom789
  %arrayidx793 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx792, i32 0, i64 1
  %358 = load i32, i32* %arrayidx793, align 4
  %359 = load i32, i32* %game, align 4
  %idxprom794 = sext i32 %359 to i64
  %360 = load i32, i32* %week, align 4
  %idxprom795 = sext i32 %360 to i64
  %arrayidx796 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom795
  %arrayidx797 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx796, i32 0, i64 %idxprom794
  %arrayidx798 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx797, i32 0, i64 1
  %361 = load i32, i32* %arrayidx798, align 4
  %idxprom799 = sext i32 %361 to i64
  %arrayidx800 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom799
  %points_for801 = getelementptr inbounds %struct.info, %struct.info* %arrayidx800, i32 0, i32 3
  %362 = load i32, i32* %points_for801, align 4
  %add802 = add nsw i32 %362, %358
  store i32 %add802, i32* %points_for801, align 4
  %363 = load i32, i32* %game, align 4
  %idxprom803 = sext i32 %363 to i64
  %364 = load i32, i32* %week, align 4
  %idxprom804 = sext i32 %364 to i64
  %arrayidx805 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom804
  %arrayidx806 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx805, i32 0, i64 %idxprom803
  %arrayidx807 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx806, i32 0, i64 2
  %365 = load i32, i32* %arrayidx807, align 4
  %366 = load i32, i32* %game, align 4
  %idxprom808 = sext i32 %366 to i64
  %367 = load i32, i32* %week, align 4
  %idxprom809 = sext i32 %367 to i64
  %arrayidx810 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom809
  %arrayidx811 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx810, i32 0, i64 %idxprom808
  %arrayidx812 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx811, i32 0, i64 1
  %368 = load i32, i32* %arrayidx812, align 4
  %idxprom813 = sext i32 %368 to i64
  %arrayidx814 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom813
  %points_against815 = getelementptr inbounds %struct.info, %struct.info* %arrayidx814, i32 0, i32 4
  %369 = load i32, i32* %points_against815, align 4
  %add816 = add nsw i32 %369, %365
  store i32 %add816, i32* %points_against815, align 4
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.760, %if.then.686
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.end.612
  br label %if.end.819

if.end.819:                                       ; preds = %if.end.818, %land.lhs.true, %for.body.91
  br label %for.inc.820

for.inc.820:                                      ; preds = %if.end.819
  %370 = load i32, i32* %game, align 4
  %inc821 = add nsw i32 %370, 1
  store i32 %inc821, i32* %game, align 4
  br label %for.cond.89

for.end.822:                                      ; preds = %for.cond.89
  br label %for.inc.823

for.inc.823:                                      ; preds = %for.end.822
  %371 = load i32, i32* %week, align 4
  %inc824 = add nsw i32 %371, 1
  store i32 %inc824, i32* %week, align 4
  br label %for.cond.86

for.end.825:                                      ; preds = %for.cond.86
  ret void
}

; Function Attrs: nounwind uwtable
define void @read_sched_into(%struct._IO_FILE* %STREAM, [15 x [3 x i32]]* %sched) #0 {
entry:
  %STREAM.addr = alloca %struct._IO_FILE*, align 8
  %sched.addr = alloca [15 x [3 x i32]]*, align 8
  %error = alloca i32, align 4
  %num_seen = alloca [18 x i32], align 16
  %team_code = alloca i32, align 4
  %week_num = alloca i32, align 4
  %temp = alloca i32, align 4
  %AWAY = alloca i32, align 4
  %HOME = alloca i32, align 4
  %TEAM_FIELD = alloca i32, align 4
  %opponent = alloca i32, align 4
  %OPPON_FIELD = alloca i32, align 4
  %find_game = alloca i32, align 4
  %CH = alloca i8, align 1
  %str = alloca [10 x i8], align 1
  %first_time = alloca i32, align 4
  store %struct._IO_FILE* %STREAM, %struct._IO_FILE** %STREAM.addr, align 8
  store [15 x [3 x i32]]* %sched, [15 x [3 x i32]]** %sched.addr, align 8
  store i32 0, i32* %error, align 4
  store i32 1, i32* %week_num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %week_num, align 4
  %1 = load i32, i32* @num_games, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %week_num, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %week_num, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %week_num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %team_code, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.193, %for.end
  %4 = load i32, i32* %team_code, align 4
  %cmp2 = icmp sle i32 %4, 28
  br i1 %cmp2, label %for.body.3, label %for.end.195

for.body.3:                                       ; preds = %for.cond.1
  store i32 1, i32* %week_num, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.190, %for.body.3
  %5 = load i32, i32* %week_num, align 4
  %6 = load i32, i32* @num_games, align 4
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %for.body.6, label %for.end.192

for.body.6:                                       ; preds = %for.cond.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %7)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %CH, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.6
  %8 = load i8, i8* %CH, align 1
  %call7 = call i32 @white_space(i8 signext %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  %conv9 = trunc i32 %call8 to i8
  store i8 %conv9, i8* %CH, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %temp, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %while.end
  %10 = load i8, i8* %CH, align 1
  %call11 = call i32 @white_space(i8 signext %10)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body.13, label %while.end.19

while.body.13:                                    ; preds = %while.cond.10
  %11 = load i8, i8* %CH, align 1
  %12 = load i32, i32* %temp, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 %idxprom14
  store i8 %11, i8* %arrayidx15, align 1
  %13 = load i32, i32* %temp, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %temp, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM.addr, align 8
  %call17 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  %conv18 = trunc i32 %call17 to i8
  store i8 %conv18, i8* %CH, align 1
  br label %while.cond.10

while.end.19:                                     ; preds = %while.cond.10
  %15 = load i32, i32* %temp, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 %idxprom20
  store i8 0, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 0
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp ne i32 %conv23, 64
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %while.end.19
  %17 = load i32, i32* %team_code, align 4
  store i32 %17, i32* %HOME, align 4
  store i32 2, i32* %TEAM_FIELD, align 4
  store i32 1, i32* %OPPON_FIELD, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i32 0
  %call26 = call i32 @find_name(%struct._IO_FILE* %18, i8* %arraydecay)
  store i32 %call26, i32* %opponent, align 4
  store i32 %call26, i32* %AWAY, align 4
  br label %if.end

if.else:                                          ; preds = %while.end.19
  %19 = load i32, i32* %team_code, align 4
  store i32 %19, i32* %AWAY, align 4
  store i32 1, i32* %TEAM_FIELD, align 4
  store i32 2, i32* %OPPON_FIELD, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay27 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay27, i64 1
  %call28 = call i32 @find_name(%struct._IO_FILE* %20, i8* %add.ptr)
  store i32 %call28, i32* %opponent, align 4
  store i32 %call28, i32* %HOME, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %opponent, align 4
  %22 = load i32, i32* %team_code, align 4
  %cmp29 = icmp slt i32 %21, %22
  br i1 %cmp29, label %if.then.31, label %if.else.104

if.then.31:                                       ; preds = %if.end
  store i32 1, i32* %find_game, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.85, %if.then.31
  %23 = load i32, i32* %find_game, align 4
  %24 = load i32, i32* %week_num, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom33
  %25 = load i32, i32* %arrayidx34, align 4
  %sub = sub nsw i32 %25, 1
  %cmp35 = icmp sle i32 %23, %sub
  br i1 %cmp35, label %for.body.37, label %for.end.87

for.body.37:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %TEAM_FIELD, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load i32, i32* %find_game, align 4
  %idxprom39 = sext i32 %27 to i64
  %28 = load i32, i32* %week_num, align 4
  %idxprom40 = sext i32 %28 to i64
  %29 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx41 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %29, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx41, i32 0, i64 %idxprom39
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i32 0, i64 %idxprom38
  %30 = load i32, i32* %arrayidx43, align 4
  %31 = load i32, i32* %team_code, align 4
  %cmp44 = icmp eq i32 %30, %31
  br i1 %cmp44, label %if.then.46, label %if.end.84

if.then.46:                                       ; preds = %for.body.37
  %32 = load i32, i32* %OPPON_FIELD, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load i32, i32* %find_game, align 4
  %idxprom48 = sext i32 %33 to i64
  %34 = load i32, i32* %week_num, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx50 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %35, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx50, i32 0, i64 %idxprom48
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 %idxprom47
  %36 = load i32, i32* %arrayidx52, align 4
  %37 = load i32, i32* %opponent, align 4
  %cmp53 = icmp ne i32 %36, %37
  br i1 %cmp53, label %if.then.55, label %if.end.81

if.then.55:                                       ; preds = %if.then.46
  %38 = load i32, i32* %team_code, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx57, i32 0, i64 1
  %arraydecay59 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx58, i32 0, i32 0
  %39 = load i32, i32* %team_code, align 4
  %40 = load i32, i32* %OPPON_FIELD, align 4
  %idxprom60 = sext i32 %40 to i64
  %41 = load i32, i32* %find_game, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load i32, i32* %week_num, align 4
  %idxprom62 = sext i32 %42 to i64
  %43 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx63 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %43, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx63, i32 0, i64 %idxprom61
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx64, i32 0, i64 %idxprom60
  %44 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %44 to i64
  %arrayidx67 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx67, i32 0, i64 1
  %arraydecay69 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx68, i32 0, i32 0
  %45 = load i32, i32* %OPPON_FIELD, align 4
  %idxprom70 = sext i32 %45 to i64
  %46 = load i32, i32* %find_game, align 4
  %idxprom71 = sext i32 %46 to i64
  %47 = load i32, i32* %week_num, align 4
  %idxprom72 = sext i32 %47 to i64
  %48 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx73 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %48, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx73, i32 0, i64 %idxprom71
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx74, i32 0, i64 %idxprom70
  %49 = load i32, i32* %arrayidx75, align 4
  %50 = load i32, i32* %opponent, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx77, i32 0, i64 1
  %arraydecay79 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx78, i32 0, i32 0
  %51 = load i32, i32* %opponent, align 4
  %52 = load i32, i32* %week_num, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay59, i32 %39, i8* %arraydecay69, i32 %49, i8* %arraydecay79, i32 %51, i32 %52)
  store i32 1, i32* %error, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.55, %if.then.46
  %53 = load i32, i32* %week_num, align 4
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom82
  %54 = load i32, i32* %arrayidx83, align 4
  %add = add nsw i32 %54, 2
  store i32 %add, i32* %find_game, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.81, %for.body.37
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %55 = load i32, i32* %find_game, align 4
  %inc86 = add nsw i32 %55, 1
  store i32 %inc86, i32* %find_game, align 4
  br label %for.cond.32

for.end.87:                                       ; preds = %for.cond.32
  %56 = load i32, i32* %find_game, align 4
  %57 = load i32, i32* %week_num, align 4
  %idxprom88 = sext i32 %57 to i64
  %arrayidx89 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom88
  %58 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %56, %58
  br i1 %cmp90, label %if.then.92, label %if.end.103

if.then.92:                                       ; preds = %for.end.87
  %59 = load i32, i32* %opponent, align 4
  %idxprom93 = sext i32 %59 to i64
  %arrayidx94 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom93
  %arrayidx95 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx94, i32 0, i64 1
  %arraydecay96 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx95, i32 0, i32 0
  %60 = load i32, i32* %opponent, align 4
  %61 = load i32, i32* %team_code, align 4
  %idxprom97 = sext i32 %61 to i64
  %arrayidx98 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx98, i32 0, i64 1
  %arraydecay100 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx99, i32 0, i32 0
  %62 = load i32, i32* %team_code, align 4
  %63 = load i32, i32* %week_num, align 4
  %arraydecay101 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i32 0
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay96, i32 %60, i8* %arraydecay100, i32 %62, i32 %63, i8* %arraydecay101)
  store i32 1, i32* %error, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.92, %for.end.87
  br label %if.end.189

if.else.104:                                      ; preds = %if.end
  %64 = load i32, i32* %opponent, align 4
  %cmp105 = icmp ne i32 %64, 29
  br i1 %cmp105, label %if.then.107, label %if.end.188

if.then.107:                                      ; preds = %if.else.104
  store i32 0, i32* %first_time, align 4
  store i32 1, i32* %find_game, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.143, %if.then.107
  %65 = load i32, i32* %find_game, align 4
  %66 = load i32, i32* %week_num, align 4
  %idxprom109 = sext i32 %66 to i64
  %arrayidx110 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom109
  %67 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %67, 1
  %cmp112 = icmp sle i32 %65, %sub111
  br i1 %cmp112, label %for.body.114, label %for.end.145

for.body.114:                                     ; preds = %for.cond.108
  %68 = load i32, i32* %find_game, align 4
  %idxprom115 = sext i32 %68 to i64
  %69 = load i32, i32* %week_num, align 4
  %idxprom116 = sext i32 %69 to i64
  %70 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx117 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %70, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx117, i32 0, i64 %idxprom115
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx118, i32 0, i64 1
  %71 = load i32, i32* %arrayidx119, align 4
  %72 = load i32, i32* %team_code, align 4
  %cmp120 = icmp eq i32 %71, %72
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %for.body.114
  %73 = load i32, i32* %find_game, align 4
  %idxprom123 = sext i32 %73 to i64
  %74 = load i32, i32* %week_num, align 4
  %idxprom124 = sext i32 %74 to i64
  %75 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx125 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %75, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx125, i32 0, i64 %idxprom123
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx126, i32 0, i64 2
  %76 = load i32, i32* %arrayidx127, align 4
  store i32 %76, i32* %first_time, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %for.body.114
  %77 = load i32, i32* %find_game, align 4
  %idxprom129 = sext i32 %77 to i64
  %78 = load i32, i32* %week_num, align 4
  %idxprom130 = sext i32 %78 to i64
  %79 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx131 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %79, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx131, i32 0, i64 %idxprom129
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx132, i32 0, i64 2
  %80 = load i32, i32* %arrayidx133, align 4
  %81 = load i32, i32* %team_code, align 4
  %cmp134 = icmp eq i32 %80, %81
  br i1 %cmp134, label %if.then.136, label %if.end.142

if.then.136:                                      ; preds = %if.end.128
  %82 = load i32, i32* %find_game, align 4
  %idxprom137 = sext i32 %82 to i64
  %83 = load i32, i32* %week_num, align 4
  %idxprom138 = sext i32 %83 to i64
  %84 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx139 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %84, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx139, i32 0, i64 %idxprom137
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx140, i32 0, i64 1
  %85 = load i32, i32* %arrayidx141, align 4
  store i32 %85, i32* %first_time, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.136, %if.end.128
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %86 = load i32, i32* %find_game, align 4
  %inc144 = add nsw i32 %86, 1
  store i32 %inc144, i32* %find_game, align 4
  br label %for.cond.108

for.end.145:                                      ; preds = %for.cond.108
  %87 = load i32, i32* %first_time, align 4
  %tobool146 = icmp ne i32 %87, 0
  br i1 %tobool146, label %if.then.147, label %if.else.161

if.then.147:                                      ; preds = %for.end.145
  %88 = load i32, i32* %team_code, align 4
  %idxprom148 = sext i32 %88 to i64
  %arrayidx149 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx149, i32 0, i64 1
  %arraydecay151 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx150, i32 0, i32 0
  %89 = load i32, i32* %team_code, align 4
  %90 = load i32, i32* %first_time, align 4
  %idxprom152 = sext i32 %90 to i64
  %arrayidx153 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom152
  %arrayidx154 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx153, i32 0, i64 1
  %arraydecay155 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx154, i32 0, i32 0
  %91 = load i32, i32* %first_time, align 4
  %92 = load i32, i32* %opponent, align 4
  %idxprom156 = sext i32 %92 to i64
  %arrayidx157 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx157, i32 0, i64 1
  %arraydecay159 = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx158, i32 0, i32 0
  %93 = load i32, i32* %opponent, align 4
  %94 = load i32, i32* %week_num, align 4
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay151, i32 %89, i8* %arraydecay155, i32 %91, i8* %arraydecay159, i32 %93, i32 %94)
  store i32 1, i32* %error, align 4
  br label %if.end.187

if.else.161:                                      ; preds = %for.end.145
  %95 = load i32, i32* %week_num, align 4
  %idxprom162 = sext i32 %95 to i64
  %arrayidx163 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom162
  %96 = load i32, i32* %arrayidx163, align 4
  %cmp164 = icmp sgt i32 %96, 14
  br i1 %cmp164, label %if.then.166, label %if.else.168

if.then.166:                                      ; preds = %if.else.161
  %97 = load i32, i32* %week_num, align 4
  %call167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 %97)
  store i32 1, i32* %error, align 4
  br label %if.end.186

if.else.168:                                      ; preds = %if.else.161
  %98 = load i32, i32* %AWAY, align 4
  %99 = load i32, i32* %week_num, align 4
  %idxprom169 = sext i32 %99 to i64
  %arrayidx170 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom169
  %100 = load i32, i32* %arrayidx170, align 4
  %idxprom171 = sext i32 %100 to i64
  %101 = load i32, i32* %week_num, align 4
  %idxprom172 = sext i32 %101 to i64
  %102 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx173 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %102, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx173, i32 0, i64 %idxprom171
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx174, i32 0, i64 1
  store i32 %98, i32* %arrayidx175, align 4
  %103 = load i32, i32* %HOME, align 4
  %104 = load i32, i32* %week_num, align 4
  %idxprom176 = sext i32 %104 to i64
  %arrayidx177 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom176
  %105 = load i32, i32* %arrayidx177, align 4
  %idxprom178 = sext i32 %105 to i64
  %106 = load i32, i32* %week_num, align 4
  %idxprom179 = sext i32 %106 to i64
  %107 = load [15 x [3 x i32]]*, [15 x [3 x i32]]** %sched.addr, align 8
  %arrayidx180 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %107, i64 %idxprom179
  %arrayidx181 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx180, i32 0, i64 %idxprom178
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx181, i32 0, i64 2
  store i32 %103, i32* %arrayidx182, align 4
  %108 = load i32, i32* %week_num, align 4
  %idxprom183 = sext i32 %108 to i64
  %arrayidx184 = getelementptr inbounds [18 x i32], [18 x i32]* %num_seen, i32 0, i64 %idxprom183
  %109 = load i32, i32* %arrayidx184, align 4
  %inc185 = add nsw i32 %109, 1
  store i32 %inc185, i32* %arrayidx184, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.168, %if.then.166
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.147
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.else.104
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.103
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %110 = load i32, i32* %week_num, align 4
  %inc191 = add nsw i32 %110, 1
  store i32 %inc191, i32* %week_num, align 4
  br label %for.cond.4

for.end.192:                                      ; preds = %for.cond.4
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %111 = load i32, i32* %team_code, align 4
  %inc194 = add nsw i32 %111, 1
  store i32 %inc194, i32* %team_code, align 4
  br label %for.cond.1

for.end.195:                                      ; preds = %for.cond.1
  %112 = load i32, i32* %error, align 4
  %tobool196 = icmp ne i32 %112, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %for.end.195
  call void @exit(i32 1) #7
  unreachable

if.end.198:                                       ; preds = %for.end.195
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare i32 @white_space(i8 signext) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @save_scores(%struct._IO_FILE* %msg_stream, i8* %file_name) #0 {
entry:
  %msg_stream.addr = alloca %struct._IO_FILE*, align 8
  %file_name.addr = alloca i8*, align 8
  %game = alloca i32, align 4
  %week = alloca i32, align 4
  %OUTPUT = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %msg_stream, %struct._IO_FILE** %msg_stream.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  %0 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %OUTPUT, align 8
  %tobool = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %msg_stream.addr, align 8
  %2 = load i8*, i8** %file_name.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %week, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.else
  %3 = load i32, i32* %week, align 4
  %4 = load i32, i32* @num_games, align 4
  %add = add nsw i32 %4, 1
  %cmp = icmp sle i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %game, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %game, align 4
  %cmp3 = icmp sle i32 %5, 14
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT, align 8
  %7 = load i32, i32* %game, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %week, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 2
  %9 = load i32, i32* %arrayidx7, align 4
  %10 = load i32, i32* %game, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %week, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx10, i32 0, i64 %idxprom8
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 1
  %12 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %9, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %game, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %game, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %15 = load i32, i32* %week, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %week, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @the_scores, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %msg_stream.addr, align 8
  %18 = load i8*, i8** %file_name.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %18)
  store i32 1, i32* @current_with_disk, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.17, %if.then
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argument_error = alloca i32, align 4
  %year = alloca i8*, align 8
  %in_file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %game = alloca i32, align 4
  %week = alloca i32, align 4
  %game107 = alloca i32, align 4
  %week108 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %argument_error, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @standings, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [29 x i32], [29 x i32]* @abs_standings, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [29 x i32], [29 x i32]* @conf_standings, i32 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks_nfl, i32 0, i64 %idxprom5
  store i32 %6, i32* %arrayidx6, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [29 x i32], [29 x i32]* @defence_ranks, i32 0, i64 %idxprom7
  store i32 %6, i32* %arrayidx8, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks_nfl, i32 0, i64 %idxprom9
  store i32 %9, i32* %arrayidx10, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [29 x i32], [29 x i32]* @offence_ranks, i32 0, i64 %idxprom11
  store i32 %9, i32* %arrayidx12, align 4
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks_nfl, i32 0, i64 %idxprom13
  store i32 %12, i32* %arrayidx14, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [29 x i32], [29 x i32]* @net_ranks, i32 0, i64 %idxprom15
  store i32 %12, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %argc.addr, align 4
  %cmp17 = icmp slt i32 %16, 2
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 1, i32* %argument_error, align 4
  br label %if.end.40

if.else:                                          ; preds = %for.end
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %17, i64 1
  %18 = load i8*, i8** %arrayidx18, align 8
  %call = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else.27, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %19 = load i32, i32* %argc.addr, align 4
  %cmp20 = icmp sgt i32 %19, 4
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.19
  store i32 1, i32* %argument_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.19
  store i32 1, i32* @preseason, align 4
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %20, i64 2
  %21 = load i8*, i8** %arrayidx22, align 8
  store i8* %21, i8** %year, align 8
  %22 = load i8*, i8** %year, align 8
  %call23 = call i32 @str_to_int(i8* %22)
  store i32 %call23, i32* @iyear, align 4
  store i32 5, i32* @num_games, align 4
  %23 = load i32, i32* %argc.addr, align 4
  %cmp24 = icmp eq i32 %23, 4
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i32 3, i32* @in_fileP, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end
  br label %if.end.39

if.else.27:                                       ; preds = %if.else
  %24 = load i32, i32* %argc.addr, align 4
  %cmp28 = icmp sle i32 %24, 3
  br i1 %cmp28, label %if.then.29, label %if.else.37

if.then.29:                                       ; preds = %if.else.27
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %25, i64 1
  %26 = load i8*, i8** %arrayidx30, align 8
  store i8* %26, i8** %year, align 8
  %27 = load i8*, i8** %year, align 8
  %call31 = call i32 @str_to_int(i8* %27)
  store i32 %call31, i32* @iyear, align 4
  %28 = load i32, i32* @iyear, align 4
  %cmp32 = icmp sge i32 %28, 78
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.29
  %29 = load i32, i32* @iyear, align 4
  %cmp33 = icmp sle i32 %29, 89
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.29
  %30 = phi i1 [ false, %if.then.29 ], [ %cmp33, %land.rhs ]
  %cond = select i1 %30, i32 16, i32 17
  store i32 %cond, i32* @num_games, align 4
  %31 = load i32, i32* %argc.addr, align 4
  %cmp34 = icmp eq i32 %31, 3
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.end
  store i32 2, i32* @in_fileP, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.end
  br label %if.end.38

if.else.37:                                       ; preds = %if.else.27
  store i32 1, i32* %argument_error, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  %32 = load i32, i32* %argument_error, align 4
  %tobool41 = icmp ne i32 %32, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.44:                                        ; preds = %if.end.40
  %34 = load i32, i32* @iyear, align 4
  %cmp45 = icmp sle i32 %34, 87
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.44
  %call47 = call i8* @strcpy(i8* getelementptr inbounds ([30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 11, i64 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)) #5
  %call48 = call i8* @strcpy(i8* getelementptr inbounds ([30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 11, i64 1, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.44
  %call50 = call i8* @strcpy(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @inp_sched, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #5
  %35 = load i8*, i8** %year, align 8
  %call51 = call i8* @strcat(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @inp_sched, i32 0, i32 0), i8* %35) #5
  %36 = load i32, i32* @preseason, align 4
  %tobool52 = icmp ne i32 %36, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.49
  %call54 = call i8* @strcat(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @inp_sched, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.49
  %call56 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @inp_sched, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call56, %struct._IO_FILE** @schedule, align 8
  %tobool57 = icmp ne %struct._IO_FILE* %call56, null
  br i1 %tobool57, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @inp_sched, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.60:                                        ; preds = %if.end.55
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @schedule, align 8
  call void @read_sched_into(%struct._IO_FILE* %38, [15 x [3 x i32]]* getelementptr inbounds ([18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @schedule, align 8
  %call61 = call i32 @fclose(%struct._IO_FILE* %39)
  %40 = load i32, i32* @in_fileP, align 4
  %tobool62 = icmp ne i32 %40, 0
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %if.end.60
  %41 = load i32, i32* @in_fileP, align 4
  %idxprom64 = sext i32 %41 to i64
  %42 = load i8**, i8*** %argv.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %42, i64 %idxprom64
  %43 = load i8*, i8** %arrayidx65, align 8
  %call66 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call66, %struct._IO_FILE** %in_file, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %tobool67 = icmp ne %struct._IO_FILE* %44, null
  br i1 %tobool67, label %if.end.72, label %if.then.68

if.then.68:                                       ; preds = %if.then.63
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i32, i32* @in_fileP, align 4
  %idxprom69 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %47, i64 %idxprom69
  %48 = load i8*, i8** %arrayidx70, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* %48)
  call void @exit(i32 1) #7
  unreachable

if.end.72:                                        ; preds = %if.then.63
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.60
  %call74 = call i8* @strcpy(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)) #5
  %49 = load i8*, i8** %year, align 8
  %call75 = call i8* @strcat(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0), i8* %49) #5
  %50 = load i32, i32* @preseason, align 4
  %tobool76 = icmp ne i32 %50, 0
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %call78 = call i8* @strcat(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  %call80 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call80, %struct._IO_FILE** @the_scores, align 8
  %tobool81 = icmp ne %struct._IO_FILE* %call80, null
  br i1 %tobool81, label %if.else.106, label %if.then.82

if.then.82:                                       ; preds = %if.end.79
  store i32 1, i32* %week, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.102, %if.then.82
  %51 = load i32, i32* %week, align 4
  %52 = load i32, i32* @num_games, align 4
  %add = add nsw i32 %52, 1
  %cmp84 = icmp sle i32 %51, %add
  br i1 %cmp84, label %for.body.85, label %for.end.104

for.body.85:                                      ; preds = %for.cond.83
  store i32 1, i32* %game, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.99, %for.body.85
  %53 = load i32, i32* %game, align 4
  %cmp87 = icmp sle i32 %53, 14
  br i1 %cmp87, label %for.body.88, label %for.end.101

for.body.88:                                      ; preds = %for.cond.86
  %54 = load i32, i32* %game, align 4
  %idxprom89 = sext i32 %54 to i64
  %55 = load i32, i32* %week, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx91, i32 0, i64 %idxprom89
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx92, i32 0, i64 2
  store i32 -1, i32* %arrayidx93, align 4
  %56 = load i32, i32* %game, align 4
  %idxprom94 = sext i32 %56 to i64
  %57 = load i32, i32* %week, align 4
  %idxprom95 = sext i32 %57 to i64
  %arrayidx96 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx96, i32 0, i64 %idxprom94
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx97, i32 0, i64 1
  store i32 -1, i32* %arrayidx98, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.88
  %58 = load i32, i32* %game, align 4
  %inc100 = add nsw i32 %58, 1
  store i32 %inc100, i32* %game, align 4
  br label %for.cond.86

for.end.101:                                      ; preds = %for.cond.86
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %59 = load i32, i32* %week, align 4
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, i32* %week, align 4
  br label %for.cond.83

for.end.104:                                      ; preds = %for.cond.83
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @save_scores(%struct._IO_FILE* %61, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0))
  store i32 0, i32* @current_with_disk, align 4
  br label %if.end.139

if.else.106:                                      ; preds = %if.end.79
  store i32 1, i32* %week108, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.135, %if.else.106
  %62 = load i32, i32* %week108, align 4
  %63 = load i32, i32* @num_games, align 4
  %add110 = add nsw i32 %63, 1
  %cmp111 = icmp sle i32 %62, %add110
  br i1 %cmp111, label %for.body.112, label %for.end.137

for.body.112:                                     ; preds = %for.cond.109
  store i32 1, i32* %game107, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.132, %for.body.112
  %64 = load i32, i32* %game107, align 4
  %cmp114 = icmp sle i32 %64, 14
  br i1 %cmp114, label %for.body.115, label %for.end.134

for.body.115:                                     ; preds = %for.cond.113
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @the_scores, align 8
  %call116 = call i32 @feof(%struct._IO_FILE* %65) #5
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %for.body.115
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @input_score, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.120:                                       ; preds = %for.body.115
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @the_scores, align 8
  %68 = load i32, i32* %game107, align 4
  %idxprom121 = sext i32 %68 to i64
  %69 = load i32, i32* %week108, align 4
  %idxprom122 = sext i32 %69 to i64
  %arrayidx123 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx123, i32 0, i64 %idxprom121
  %arrayidx125 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx124, i32 0, i64 2
  %70 = load i32, i32* %game107, align 4
  %idxprom126 = sext i32 %70 to i64
  %71 = load i32, i32* %week108, align 4
  %idxprom127 = sext i32 %71 to i64
  %arrayidx128 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx128, i32 0, i64 %idxprom126
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx129, i32 0, i64 1
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32* %arrayidx125, i32* %arrayidx130)
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.120
  %72 = load i32, i32* %game107, align 4
  %inc133 = add nsw i32 %72, 1
  store i32 %inc133, i32* %game107, align 4
  br label %for.cond.113

for.end.134:                                      ; preds = %for.cond.113
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.end.134
  %73 = load i32, i32* %week108, align 4
  %inc136 = add nsw i32 %73, 1
  store i32 %inc136, i32* %week108, align 4
  br label %for.cond.109

for.end.137:                                      ; preds = %for.cond.109
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @the_scores, align 8
  %call138 = call i32 @fclose(%struct._IO_FILE* %74)
  store i32 1, i32* @current_with_disk, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.137, %for.end.104
  call void @compute_team_info()
  call void @sort_all()
  br label %while.cond

while.cond:                                       ; preds = %if.end.144, %if.end.139
  %75 = load i32, i32* @terminate, align 4
  %tobool140 = icmp ne i32 %75, 0
  %lnot = xor i1 %tobool140, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = load i32, i32* @in_fileP, align 4
  %tobool141 = icmp ne i32 %76, 0
  br i1 %tobool141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %while.body
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  call void @display_main_menu(%struct._IO_FILE* %77, %struct._IO_FILE* %78)
  br label %if.end.144

if.else.143:                                      ; preds = %while.body
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @display_main_menu(%struct._IO_FILE* %79, %struct._IO_FILE* %80)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load i32, i32* @in_fileP, align 4
  %tobool145 = icmp ne i32 %81, 0
  br i1 %tobool145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %while.end
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %call147 = call i32 @fclose(%struct._IO_FILE* %82)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %while.end
  ret i32 0
}

declare i32 @str_to_int(i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare void @sort_all() #2

declare void @display_main_menu(%struct._IO_FILE*, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
