; ModuleID = 'partner.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@std_hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@xb_mode = external global i32, align 4
@.str = private unnamed_addr constant [69 x i8] c"tellics ptell Hello! I am Sjeng and hope you enjoy playing with me.\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"tellics ptell For help on some commands that I understand, ptell me 'help'\0A\00", align 1
@have_partner = external global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@my_partner = external global [256 x i8], align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"tellics set f5 bughouse\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"tellics unseek\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"tellics set f5 1=1\0A\00", align 1
@HandlePtell.howmuch = private unnamed_addr constant [80 x i8] c"is...uh...what did you say?\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [147 x i8] c"tellics ptell Commands that I understand are : sit, go, fast, slow, abort, flag, +/++/+++/-/--/---{p,n,b,r,q,d,h,trades}, x, dead, formula, help.\0A\00", align 1
@Variant = external global i32, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"sorry\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"tellics ptell Sorry, but I'm not playing a bughouse game.\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"tellics ptell Ok, I sit next move. Tell me when to go.\0A\00", align 1
@must_sit = external global i32, align 4
@must_go = common global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"tellics ptell Ok, I'm moving.\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"tellics ptell Ok, I'm going FAST!\0A\00", align 1
@go_fast = external global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"tellics ptell Ok, moving normally.\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"tellics ptell Requesting abort...\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"tellics abort\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"tellics ptell Flagging...\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tellics flag\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"trade\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@comp_color = external global i32, align 4
@.str.35 = private unnamed_addr constant [35 x i8] c"tellics ptell Ok, trading is GOOD\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"mates\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"is VERY good (ptell me 'x' to play normal again)\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"is good (ptell me 'x' to play normal again)\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Knight %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Bishop %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Rook %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Queen %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Pawn %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"tellics ptell Ok, Diagonal %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Heavy %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"tellics ptell Ok, trading is BAD\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"mates you (ptell me 'x' when it no longer mates you)\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"is VERY bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"is bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"mate me anymore\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"mind\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ptell me\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"tellics ptell Ok, reverting to STANDARD piece values!\0A\00", align 1
@partnerdead = common global i32 0, align 4
@piecedead = common global i32 0, align 4
@.str.62 = private unnamed_addr constant [26 x i8] c"i'll have to sit...(dead)\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"i'll have to sit...(piece)\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"tellics ptell Greetings.\0A\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"formula\00", align 1
@.str.70 = private unnamed_addr constant [87 x i8] c"tellics ptell Setting formula, if you are still interrupted, complain to my operator.\0A\00", align 1
@.str.71 = private unnamed_addr constant [59 x i8] c"tellics ptell Sorry, but I don't understand that command.\0A\00", align 1
@CheckBadFlow.pawnmated = internal global i32 0, align 4
@CheckBadFlow.knightmated = internal global i32 0, align 4
@CheckBadFlow.bishopmated = internal global i32 0, align 4
@CheckBadFlow.rookmated = internal global i32 0, align 4
@CheckBadFlow.queenmated = internal global i32 0, align 4
@white_to_move = external global i32, align 4
@holding = external global [2 x [16 x i32]], align 16
@numb_moves = external global i32, align 4
@.str.72 = private unnamed_addr constant [41 x i8] c"tellics ptell p doesn't mate me anymore\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"tellics ptell n doesn't mate me anymore\0A\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"tellics ptell b doesn't mate me anymore\0A\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"tellics ptell r doesn't mate me anymore\0A\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"tellics ptell q doesn't mate me anymore\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"tellics ptell ---p\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"tellics ptell ---n\0A\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"tellics ptell ---b\0A\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"tellics ptell ---r\0A\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"tellics ptell ---q\0A\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"tellics ptell x\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"tellics ptell go\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ResetHandValue() #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @BegForPartner() #0 {
entry:
  %0 = load i32, i32* @xb_mode, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @GreetPartner() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @HandlePartner(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  store i8* %input, i8** %input.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @have_partner, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @my_partner, i32 0, i32 0)) #1
  store i32 1, i32* @have_partner, align 4
  call void @GreetPartner()
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @my_partner, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  store i32 0, i32* @have_partner, align 4
  call void @BegForPartner()
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @HandlePtell(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %change = alloca i32, align 4
  %howmuch = alloca [80 x i8], align 16
  store i8* %input, i8** %input.addr, align 8
  store i32 0, i32* %change, align 4
  %0 = bitcast [80 x i8]* %howmuch to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @HandlePtell.howmuch, i32 0, i32 0), i64 80, i32 16, i1 false)
  %1 = load i8*, i8** %input.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 6
  %call = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Variant, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %input.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %3, i64 6
  %call3 = call i32 @strncmp(i8* %add.ptr2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 5) #5
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i8*, i8** %input.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %4, i64 6
  %call9 = call i32 @strncmp(i8* %add.ptr8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 3) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* @must_sit, align 4
  store i32 0, i32* @must_go, align 4
  br label %if.end.521

if.else:                                          ; preds = %if.end.7
  %5 = load i8*, i8** %input.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %5, i64 6
  %call14 = call i32 @strncmp(i8* %add.ptr13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i64 2) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %if.else
  %6 = load i8*, i8** %input.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %6, i64 6
  %call17 = call i32 @strncmp(i8* %add.ptr16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.21, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false, %if.else
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* @must_sit, align 4
  store i32 4, i32* @must_go, align 4
  br label %if.end.520

if.else.21:                                       ; preds = %lor.lhs.false
  %7 = load i8*, i8** %input.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %7, i64 6
  %call23 = call i32 @strncmp(i8* %add.ptr22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 4) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.29

lor.lhs.false.25:                                 ; preds = %if.else.21
  %8 = load i8*, i8** %input.addr, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %8, i64 6
  %call27 = call i32 @strncmp(i8* %add.ptr26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else.31, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.25, %if.else.21
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  br label %if.end.519

if.else.31:                                       ; preds = %lor.lhs.false.25
  %9 = load i8*, i8** %input.addr, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %9, i64 6
  %call33 = call i32 @strncmp(i8* %add.ptr32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4) #5
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.else.37, label %if.then.35

if.then.35:                                       ; preds = %if.else.31
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  br label %if.end.518

if.else.37:                                       ; preds = %if.else.31
  %10 = load i8*, i8** %input.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %10, i64 6
  %call39 = call i32 @strncmp(i8* %add.ptr38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i64 5) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.44, label %if.then.41

if.then.41:                                       ; preds = %if.else.37
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.517

if.else.44:                                       ; preds = %if.else.37
  %11 = load i8*, i8** %input.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %11, i64 6
  %call46 = call i32 @strncmp(i8* %add.ptr45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i64 4) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.51, label %if.then.48

if.then.48:                                       ; preds = %if.else.44
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0))
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.516

if.else.51:                                       ; preds = %if.else.44
  %12 = load i8*, i8** %input.addr, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %12, i64 6
  %call53 = call i32 @strncmp(i8* %add.ptr52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i64 1) #5
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.else.243, label %if.then.55

if.then.55:                                       ; preds = %if.else.51
  %13 = load i8*, i8** %input.addr, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %13, i64 6
  %call57 = call i8* @strstr(i8* %add.ptr56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %cmp58 = icmp ne i8* %call57, null
  br i1 %cmp58, label %if.then.87, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.then.55
  %14 = load i8*, i8** %input.addr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %14, i64 6
  %call61 = call i8* @strstr(i8* %add.ptr60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp62 = icmp eq i8* %call61, null
  br i1 %cmp62, label %land.lhs.true.63, label %if.else.101

land.lhs.true.63:                                 ; preds = %lor.lhs.false.59
  %15 = load i8*, i8** %input.addr, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %15, i64 6
  %call65 = call i8* @strstr(i8* %add.ptr64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #5
  %cmp66 = icmp eq i8* %call65, null
  br i1 %cmp66, label %land.lhs.true.67, label %if.else.101

land.lhs.true.67:                                 ; preds = %land.lhs.true.63
  %16 = load i8*, i8** %input.addr, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %16, i64 6
  %call69 = call i8* @strstr(i8* %add.ptr68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp70 = icmp eq i8* %call69, null
  br i1 %cmp70, label %land.lhs.true.71, label %if.else.101

land.lhs.true.71:                                 ; preds = %land.lhs.true.67
  %17 = load i8*, i8** %input.addr, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %17, i64 6
  %call73 = call i8* @strstr(i8* %add.ptr72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp74 = icmp eq i8* %call73, null
  br i1 %cmp74, label %land.lhs.true.75, label %if.else.101

land.lhs.true.75:                                 ; preds = %land.lhs.true.71
  %18 = load i8*, i8** %input.addr, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %18, i64 6
  %call77 = call i8* @strstr(i8* %add.ptr76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp78 = icmp eq i8* %call77, null
  br i1 %cmp78, label %land.lhs.true.79, label %if.else.101

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %19 = load i8*, i8** %input.addr, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %19, i64 6
  %call81 = call i8* @strstr(i8* %add.ptr80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp82 = icmp eq i8* %call81, null
  br i1 %cmp82, label %land.lhs.true.83, label %if.else.101

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %20 = load i8*, i8** %input.addr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %20, i64 6
  %call85 = call i8* @strstr(i8* %add.ptr84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp86 = icmp eq i8* %call85, null
  br i1 %cmp86, label %if.then.87, label %if.else.101

if.then.87:                                       ; preds = %land.lhs.true.83, %if.then.55
  %21 = load i32, i32* @comp_color, align 4
  %cmp88 = icmp eq i32 %21, 1
  br i1 %cmp88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %if.then.87
  %22 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %add = add nsw i32 %22, 25
  store i32 %add, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %23 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  %add90 = add nsw i32 %23, 50
  store i32 %add90, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  %24 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %add91 = add nsw i32 %24, 50
  store i32 %add91, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %25 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %add92 = add nsw i32 %25, 50
  store i32 %add92, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %26 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  %add93 = add nsw i32 %26, 100
  store i32 %add93, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.99

if.else.94:                                       ; preds = %if.then.87
  %27 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %sub = sub nsw i32 %27, 25
  store i32 %sub, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %28 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  %sub95 = sub nsw i32 %28, 50
  store i32 %sub95, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  %29 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %sub96 = sub nsw i32 %29, 50
  store i32 %sub96, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %30 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %sub97 = sub nsw i32 %30, 50
  store i32 %sub97, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %31 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  %sub98 = sub nsw i32 %31, 100
  store i32 %sub98, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.94, %if.then.89
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.125

if.else.101:                                      ; preds = %land.lhs.true.83, %land.lhs.true.79, %land.lhs.true.75, %land.lhs.true.71, %land.lhs.true.67, %land.lhs.true.63, %lor.lhs.false.59
  %32 = load i8*, i8** %input.addr, align 8
  %add.ptr102 = getelementptr inbounds i8, i8* %32, i64 6
  %call103 = call i8* @strstr(i8* %add.ptr102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0)) #5
  %cmp104 = icmp ne i8* %call103, null
  br i1 %cmp104, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.else.101
  store i32 50000, i32* %change, align 4
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call106 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #1
  br label %if.end.124

if.else.107:                                      ; preds = %if.else.101
  %33 = load i8*, i8** %input.addr, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %33, i64 6
  %call109 = call i8* @strstr(i8* %add.ptr108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0)) #5
  %cmp110 = icmp ne i8* %call109, null
  br i1 %cmp110, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %if.else.107
  store i32 1000, i32* %change, align 4
  %arraydecay112 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call113 = call i8* @strcpy(i8* %arraydecay112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0)) #1
  br label %if.end.123

if.else.114:                                      ; preds = %if.else.107
  %34 = load i8*, i8** %input.addr, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %34, i64 6
  %call116 = call i8* @strstr(i8* %add.ptr115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)) #5
  %cmp117 = icmp ne i8* %call116, null
  br i1 %cmp117, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %if.else.114
  store i32 150, i32* %change, align 4
  %arraydecay119 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call120 = call i8* @strcpy(i8* %arraydecay119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i32 0, i32 0)) #1
  br label %if.end.122

if.else.121:                                      ; preds = %if.else.114
  store i32 0, i32* null, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.118
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.111
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.105
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.99
  %35 = load i8*, i8** %input.addr, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %35, i64 6
  %call127 = call i8* @strstr(i8* %add.ptr126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp128 = icmp ne i8* %call127, null
  br i1 %cmp128, label %if.then.129, label %if.end.138

if.then.129:                                      ; preds = %if.end.125
  %36 = load i32, i32* @comp_color, align 4
  %cmp130 = icmp eq i32 %36, 1
  br i1 %cmp130, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.then.129
  %37 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 3), align 4
  %38 = load i32, i32* %change, align 4
  %add132 = add nsw i32 %37, %38
  store i32 %add132, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  br label %if.end.135

if.else.133:                                      ; preds = %if.then.129
  %39 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 4), align 4
  %40 = load i32, i32* %change, align 4
  %sub134 = sub nsw i32 %39, %40
  store i32 %sub134, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.131
  %arraydecay136 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay136)
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.135, %if.end.125
  %41 = load i8*, i8** %input.addr, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %41, i64 6
  %call140 = call i8* @strstr(i8* %add.ptr139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #5
  %cmp141 = icmp ne i8* %call140, null
  br i1 %cmp141, label %if.then.142, label %if.end.157

if.then.142:                                      ; preds = %if.end.138
  %42 = load i32, i32* @comp_color, align 4
  %cmp143 = icmp eq i32 %42, 1
  br i1 %cmp143, label %if.then.144, label %if.else.146

if.then.144:                                      ; preds = %if.then.142
  %43 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %44 = load i32, i32* %change, align 4
  %add145 = add nsw i32 %43, %44
  store i32 %add145, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  br label %if.end.148

if.else.146:                                      ; preds = %if.then.142
  %45 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %46 = load i32, i32* %change, align 4
  %sub147 = sub nsw i32 %45, %46
  store i32 %sub147, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.146, %if.then.144
  %47 = load i32, i32* @comp_color, align 4
  %cmp149 = icmp eq i32 %47, 1
  br i1 %cmp149, label %if.then.150, label %if.else.152

if.then.150:                                      ; preds = %if.end.148
  %48 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %49 = load i32, i32* %change, align 4
  %add151 = add nsw i32 %48, %49
  store i32 %add151, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.154

if.else.152:                                      ; preds = %if.end.148
  %50 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %51 = load i32, i32* %change, align 4
  %sub153 = sub nsw i32 %50, %51
  store i32 %sub153, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.150
  %arraydecay155 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay155)
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.154, %if.end.138
  %52 = load i8*, i8** %input.addr, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %52, i64 6
  %call159 = call i8* @strstr(i8* %add.ptr158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp160 = icmp ne i8* %call159, null
  br i1 %cmp160, label %if.then.161, label %if.end.176

if.then.161:                                      ; preds = %if.end.157
  %53 = load i32, i32* @comp_color, align 4
  %cmp162 = icmp eq i32 %53, 1
  br i1 %cmp162, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.then.161
  %54 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 7), align 4
  %55 = load i32, i32* %change, align 4
  %add164 = add nsw i32 %54, %55
  store i32 %add164, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  br label %if.end.167

if.else.165:                                      ; preds = %if.then.161
  %56 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 8), align 4
  %57 = load i32, i32* %change, align 4
  %sub166 = sub nsw i32 %56, %57
  store i32 %sub166, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.163
  %58 = load i32, i32* @comp_color, align 4
  %cmp168 = icmp eq i32 %58, 1
  br i1 %cmp168, label %if.then.169, label %if.else.171

if.then.169:                                      ; preds = %if.end.167
  %59 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %60 = load i32, i32* %change, align 4
  %add170 = add nsw i32 %59, %60
  store i32 %add170, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.173

if.else.171:                                      ; preds = %if.end.167
  %61 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %62 = load i32, i32* %change, align 4
  %sub172 = sub nsw i32 %61, %62
  store i32 %sub172, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.171, %if.then.169
  %arraydecay174 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay174)
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.173, %if.end.157
  %63 = load i8*, i8** %input.addr, align 8
  %add.ptr177 = getelementptr inbounds i8, i8* %63, i64 6
  %call178 = call i8* @strstr(i8* %add.ptr177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp179 = icmp ne i8* %call178, null
  br i1 %cmp179, label %if.then.180, label %if.end.189

if.then.180:                                      ; preds = %if.end.176
  %64 = load i32, i32* @comp_color, align 4
  %cmp181 = icmp eq i32 %64, 1
  br i1 %cmp181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %if.then.180
  %65 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %66 = load i32, i32* %change, align 4
  %add183 = add nsw i32 %65, %66
  store i32 %add183, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.186

if.else.184:                                      ; preds = %if.then.180
  %67 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %68 = load i32, i32* %change, align 4
  %sub185 = sub nsw i32 %67, %68
  store i32 %sub185, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.182
  %arraydecay187 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay187)
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.186, %if.end.176
  %69 = load i8*, i8** %input.addr, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %69, i64 6
  %call191 = call i8* @strstr(i8* %add.ptr190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp192 = icmp ne i8* %call191, null
  br i1 %cmp192, label %if.then.193, label %if.end.210

if.then.193:                                      ; preds = %if.end.189
  %70 = load i32, i32* @comp_color, align 4
  %cmp194 = icmp eq i32 %70, 1
  br i1 %cmp194, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.then.193
  %71 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 1), align 4
  %72 = load i32, i32* %change, align 4
  %add196 = add nsw i32 %71, %72
  store i32 %add196, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  br label %if.end.199

if.else.197:                                      ; preds = %if.then.193
  %73 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 2), align 4
  %74 = load i32, i32* %change, align 4
  %sub198 = sub nsw i32 %73, %74
  store i32 %sub198, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.197, %if.then.195
  %75 = load i32, i32* @comp_color, align 4
  %cmp200 = icmp eq i32 %75, 1
  br i1 %cmp200, label %if.then.201, label %if.else.204

if.then.201:                                      ; preds = %if.end.199
  %76 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %77 = load i32, i32* %change, align 4
  %add202 = add nsw i32 %76, %77
  store i32 %add202, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  %78 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %79 = load i32, i32* %change, align 4
  %add203 = add nsw i32 %78, %79
  store i32 %add203, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  br label %if.end.207

if.else.204:                                      ; preds = %if.end.199
  %80 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %81 = load i32, i32* %change, align 4
  %sub205 = sub nsw i32 %80, %81
  store i32 %sub205, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  %82 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %83 = load i32, i32* %change, align 4
  %sub206 = sub nsw i32 %82, %83
  store i32 %sub206, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.204, %if.then.201
  %arraydecay208 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay208)
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.207, %if.end.189
  %84 = load i8*, i8** %input.addr, align 8
  %add.ptr211 = getelementptr inbounds i8, i8* %84, i64 6
  %call212 = call i8* @strstr(i8* %add.ptr211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp213 = icmp ne i8* %call212, null
  br i1 %cmp213, label %if.then.214, label %if.end.227

if.then.214:                                      ; preds = %if.end.210
  %85 = load i32, i32* @comp_color, align 4
  %cmp215 = icmp eq i32 %85, 1
  br i1 %cmp215, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.then.214
  %86 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 1), align 4
  %87 = load i32, i32* %change, align 4
  %add217 = add nsw i32 %86, %87
  store i32 %add217, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %88 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %89 = load i32, i32* %change, align 4
  %add218 = add nsw i32 %88, %89
  store i32 %add218, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %90 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %91 = load i32, i32* %change, align 4
  %add219 = add nsw i32 %90, %91
  store i32 %add219, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.224

if.else.220:                                      ; preds = %if.then.214
  %92 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 2), align 4
  %93 = load i32, i32* %change, align 4
  %sub221 = sub nsw i32 %92, %93
  store i32 %sub221, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %94 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %95 = load i32, i32* %change, align 4
  %sub222 = sub nsw i32 %94, %95
  store i32 %sub222, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %96 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %97 = load i32, i32* %change, align 4
  %sub223 = sub nsw i32 %96, %97
  store i32 %sub223, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.220, %if.then.216
  %arraydecay225 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay225)
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.224, %if.end.210
  %98 = load i8*, i8** %input.addr, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %98, i64 6
  %call229 = call i8* @strstr(i8* %add.ptr228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp230 = icmp ne i8* %call229, null
  br i1 %cmp230, label %if.then.231, label %if.end.242

if.then.231:                                      ; preds = %if.end.227
  %99 = load i32, i32* @comp_color, align 4
  %cmp232 = icmp eq i32 %99, 1
  br i1 %cmp232, label %if.then.233, label %if.else.236

if.then.233:                                      ; preds = %if.then.231
  %100 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 7), align 4
  %101 = load i32, i32* %change, align 4
  %add234 = add nsw i32 %100, %101
  store i32 %add234, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %102 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %103 = load i32, i32* %change, align 4
  %add235 = add nsw i32 %102, %103
  store i32 %add235, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.239

if.else.236:                                      ; preds = %if.then.231
  %104 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 8), align 4
  %105 = load i32, i32* %change, align 4
  %sub237 = sub nsw i32 %104, %105
  store i32 %sub237, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %106 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %107 = load i32, i32* %change, align 4
  %sub238 = sub nsw i32 %106, %107
  store i32 %sub238, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.236, %if.then.233
  %arraydecay240 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay240)
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.239, %if.end.227
  br label %if.end.515

if.else.243:                                      ; preds = %if.else.51
  %108 = load i8*, i8** %input.addr, align 8
  %add.ptr244 = getelementptr inbounds i8, i8* %108, i64 6
  %call245 = call i32 @strncmp(i8* %add.ptr244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i64 1) #5
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.else.438, label %if.then.247

if.then.247:                                      ; preds = %if.else.243
  %109 = load i8*, i8** %input.addr, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %109, i64 6
  %call249 = call i8* @strstr(i8* %add.ptr248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %cmp250 = icmp ne i8* %call249, null
  br i1 %cmp250, label %if.then.279, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %if.then.247
  %110 = load i8*, i8** %input.addr, align 8
  %add.ptr252 = getelementptr inbounds i8, i8* %110, i64 6
  %call253 = call i8* @strstr(i8* %add.ptr252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp254 = icmp eq i8* %call253, null
  br i1 %cmp254, label %land.lhs.true.255, label %if.else.295

land.lhs.true.255:                                ; preds = %lor.lhs.false.251
  %111 = load i8*, i8** %input.addr, align 8
  %add.ptr256 = getelementptr inbounds i8, i8* %111, i64 6
  %call257 = call i8* @strstr(i8* %add.ptr256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #5
  %cmp258 = icmp eq i8* %call257, null
  br i1 %cmp258, label %land.lhs.true.259, label %if.else.295

land.lhs.true.259:                                ; preds = %land.lhs.true.255
  %112 = load i8*, i8** %input.addr, align 8
  %add.ptr260 = getelementptr inbounds i8, i8* %112, i64 6
  %call261 = call i8* @strstr(i8* %add.ptr260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp262 = icmp eq i8* %call261, null
  br i1 %cmp262, label %land.lhs.true.263, label %if.else.295

land.lhs.true.263:                                ; preds = %land.lhs.true.259
  %113 = load i8*, i8** %input.addr, align 8
  %add.ptr264 = getelementptr inbounds i8, i8* %113, i64 6
  %call265 = call i8* @strstr(i8* %add.ptr264, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp266 = icmp eq i8* %call265, null
  br i1 %cmp266, label %land.lhs.true.267, label %if.else.295

land.lhs.true.267:                                ; preds = %land.lhs.true.263
  %114 = load i8*, i8** %input.addr, align 8
  %add.ptr268 = getelementptr inbounds i8, i8* %114, i64 6
  %call269 = call i8* @strstr(i8* %add.ptr268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp270 = icmp eq i8* %call269, null
  br i1 %cmp270, label %land.lhs.true.271, label %if.else.295

land.lhs.true.271:                                ; preds = %land.lhs.true.267
  %115 = load i8*, i8** %input.addr, align 8
  %add.ptr272 = getelementptr inbounds i8, i8* %115, i64 6
  %call273 = call i8* @strstr(i8* %add.ptr272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp274 = icmp eq i8* %call273, null
  br i1 %cmp274, label %land.lhs.true.275, label %if.else.295

land.lhs.true.275:                                ; preds = %land.lhs.true.271
  %116 = load i8*, i8** %input.addr, align 8
  %add.ptr276 = getelementptr inbounds i8, i8* %116, i64 6
  %call277 = call i8* @strstr(i8* %add.ptr276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp278 = icmp eq i8* %call277, null
  br i1 %cmp278, label %if.then.279, label %if.else.295

if.then.279:                                      ; preds = %land.lhs.true.275, %if.then.247
  %117 = load i32, i32* @comp_color, align 4
  %cmp280 = icmp eq i32 %117, 1
  br i1 %cmp280, label %if.then.281, label %if.else.287

if.then.281:                                      ; preds = %if.then.279
  %118 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %sub282 = sub nsw i32 %118, 20
  store i32 %sub282, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %119 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  %sub283 = sub nsw i32 %119, 50
  store i32 %sub283, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  %120 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %sub284 = sub nsw i32 %120, 50
  store i32 %sub284, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %121 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %sub285 = sub nsw i32 %121, 50
  store i32 %sub285, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %122 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  %sub286 = sub nsw i32 %122, 100
  store i32 %sub286, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.293

if.else.287:                                      ; preds = %if.then.279
  %123 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %add288 = add nsw i32 %123, 20
  store i32 %add288, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %124 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  %add289 = add nsw i32 %124, 50
  store i32 %add289, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  %125 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %add290 = add nsw i32 %125, 50
  store i32 %add290, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %126 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %add291 = add nsw i32 %126, 50
  store i32 %add291, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %127 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  %add292 = add nsw i32 %127, 100
  store i32 %add292, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.287, %if.then.281
  %call294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.320

if.else.295:                                      ; preds = %land.lhs.true.275, %land.lhs.true.271, %land.lhs.true.267, %land.lhs.true.263, %land.lhs.true.259, %land.lhs.true.255, %lor.lhs.false.251
  %128 = load i8*, i8** %input.addr, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %128, i64 6
  %call297 = call i8* @strstr(i8* %add.ptr296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #5
  %cmp298 = icmp ne i8* %call297, null
  br i1 %cmp298, label %if.then.299, label %if.else.302

if.then.299:                                      ; preds = %if.else.295
  store i32 50000, i32* %change, align 4
  %arraydecay300 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call301 = call i8* @strcpy(i8* %arraydecay300, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i32 0, i32 0)) #1
  br label %if.end.319

if.else.302:                                      ; preds = %if.else.295
  %129 = load i8*, i8** %input.addr, align 8
  %add.ptr303 = getelementptr inbounds i8, i8* %129, i64 6
  %call304 = call i8* @strstr(i8* %add.ptr303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #5
  %cmp305 = icmp ne i8* %call304, null
  br i1 %cmp305, label %if.then.306, label %if.else.309

if.then.306:                                      ; preds = %if.else.302
  store i32 1000, i32* %change, align 4
  %arraydecay307 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call308 = call i8* @strcpy(i8* %arraydecay307, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.53, i32 0, i32 0)) #1
  br label %if.end.318

if.else.309:                                      ; preds = %if.else.302
  %130 = load i8*, i8** %input.addr, align 8
  %add.ptr310 = getelementptr inbounds i8, i8* %130, i64 6
  %call311 = call i8* @strstr(i8* %add.ptr310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)) #5
  %cmp312 = icmp ne i8* %call311, null
  br i1 %cmp312, label %if.then.313, label %if.else.316

if.then.313:                                      ; preds = %if.else.309
  store i32 150, i32* %change, align 4
  %arraydecay314 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call315 = call i8* @strcpy(i8* %arraydecay314, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0)) #1
  br label %if.end.317

if.else.316:                                      ; preds = %if.else.309
  store i32 0, i32* null, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.316, %if.then.313
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.then.306
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.299
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.end.293
  %131 = load i8*, i8** %input.addr, align 8
  %add.ptr321 = getelementptr inbounds i8, i8* %131, i64 6
  %call322 = call i8* @strstr(i8* %add.ptr321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #5
  %cmp323 = icmp ne i8* %call322, null
  br i1 %cmp323, label %if.then.324, label %if.end.333

if.then.324:                                      ; preds = %if.end.320
  %132 = load i32, i32* @comp_color, align 4
  %cmp325 = icmp eq i32 %132, 1
  br i1 %cmp325, label %if.then.326, label %if.else.328

if.then.326:                                      ; preds = %if.then.324
  %133 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 4), align 4
  %134 = load i32, i32* %change, align 4
  %sub327 = sub nsw i32 %133, %134
  store i32 %sub327, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 4), align 4
  br label %if.end.330

if.else.328:                                      ; preds = %if.then.324
  %135 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 3), align 4
  %136 = load i32, i32* %change, align 4
  %add329 = add nsw i32 %135, %136
  store i32 %add329, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 3), align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.328, %if.then.326
  %arraydecay331 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay331)
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.330, %if.end.320
  %137 = load i8*, i8** %input.addr, align 8
  %add.ptr334 = getelementptr inbounds i8, i8* %137, i64 6
  %call335 = call i8* @strstr(i8* %add.ptr334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)) #5
  %cmp336 = icmp ne i8* %call335, null
  br i1 %cmp336, label %if.then.337, label %if.end.352

if.then.337:                                      ; preds = %if.end.333
  %138 = load i32, i32* @comp_color, align 4
  %cmp338 = icmp eq i32 %138, 1
  br i1 %cmp338, label %if.then.339, label %if.else.341

if.then.339:                                      ; preds = %if.then.337
  %139 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %140 = load i32, i32* %change, align 4
  %sub340 = sub nsw i32 %139, %140
  store i32 %sub340, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  br label %if.end.343

if.else.341:                                      ; preds = %if.then.337
  %141 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %142 = load i32, i32* %change, align 4
  %add342 = add nsw i32 %141, %142
  store i32 %add342, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.341, %if.then.339
  %143 = load i32, i32* @comp_color, align 4
  %cmp344 = icmp eq i32 %143, 1
  br i1 %cmp344, label %if.then.345, label %if.else.347

if.then.345:                                      ; preds = %if.end.343
  %144 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %145 = load i32, i32* %change, align 4
  %sub346 = sub nsw i32 %144, %145
  store i32 %sub346, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.349

if.else.347:                                      ; preds = %if.end.343
  %146 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %147 = load i32, i32* %change, align 4
  %add348 = add nsw i32 %146, %147
  store i32 %add348, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.347, %if.then.345
  %arraydecay350 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay350)
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.349, %if.end.333
  %148 = load i8*, i8** %input.addr, align 8
  %add.ptr353 = getelementptr inbounds i8, i8* %148, i64 6
  %call354 = call i8* @strstr(i8* %add.ptr353, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)) #5
  %cmp355 = icmp ne i8* %call354, null
  br i1 %cmp355, label %if.then.356, label %if.end.371

if.then.356:                                      ; preds = %if.end.352
  %149 = load i32, i32* @comp_color, align 4
  %cmp357 = icmp eq i32 %149, 1
  br i1 %cmp357, label %if.then.358, label %if.else.360

if.then.358:                                      ; preds = %if.then.356
  %150 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 8), align 4
  %151 = load i32, i32* %change, align 4
  %sub359 = sub nsw i32 %150, %151
  store i32 %sub359, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  br label %if.end.362

if.else.360:                                      ; preds = %if.then.356
  %152 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 7), align 4
  %153 = load i32, i32* %change, align 4
  %add361 = add nsw i32 %152, %153
  store i32 %add361, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.else.360, %if.then.358
  %154 = load i32, i32* @comp_color, align 4
  %cmp363 = icmp eq i32 %154, 1
  br i1 %cmp363, label %if.then.364, label %if.else.366

if.then.364:                                      ; preds = %if.end.362
  %155 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %156 = load i32, i32* %change, align 4
  %sub365 = sub nsw i32 %155, %156
  store i32 %sub365, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.368

if.else.366:                                      ; preds = %if.end.362
  %157 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %158 = load i32, i32* %change, align 4
  %add367 = add nsw i32 %157, %158
  store i32 %add367, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.else.366, %if.then.364
  %arraydecay369 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i32 0, i32 0), i8* %arraydecay369)
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.368, %if.end.352
  %159 = load i8*, i8** %input.addr, align 8
  %add.ptr372 = getelementptr inbounds i8, i8* %159, i64 6
  %call373 = call i8* @strstr(i8* %add.ptr372, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)) #5
  %cmp374 = icmp ne i8* %call373, null
  br i1 %cmp374, label %if.then.375, label %if.end.384

if.then.375:                                      ; preds = %if.end.371
  %160 = load i32, i32* @comp_color, align 4
  %cmp376 = icmp eq i32 %160, 1
  br i1 %cmp376, label %if.then.377, label %if.else.379

if.then.377:                                      ; preds = %if.then.375
  %161 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %162 = load i32, i32* %change, align 4
  %sub378 = sub nsw i32 %161, %162
  store i32 %sub378, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.381

if.else.379:                                      ; preds = %if.then.375
  %163 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %164 = load i32, i32* %change, align 4
  %add380 = add nsw i32 %163, %164
  store i32 %add380, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.377
  %arraydecay382 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay382)
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.381, %if.end.371
  %165 = load i8*, i8** %input.addr, align 8
  %add.ptr385 = getelementptr inbounds i8, i8* %165, i64 6
  %call386 = call i8* @strstr(i8* %add.ptr385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)) #5
  %cmp387 = icmp ne i8* %call386, null
  br i1 %cmp387, label %if.then.388, label %if.end.405

if.then.388:                                      ; preds = %if.end.384
  %166 = load i32, i32* @comp_color, align 4
  %cmp389 = icmp eq i32 %166, 1
  br i1 %cmp389, label %if.then.390, label %if.else.392

if.then.390:                                      ; preds = %if.then.388
  %167 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 2), align 4
  %168 = load i32, i32* %change, align 4
  %sub391 = sub nsw i32 %167, %168
  store i32 %sub391, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  br label %if.end.394

if.else.392:                                      ; preds = %if.then.388
  %169 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 1), align 4
  %170 = load i32, i32* %change, align 4
  %add393 = add nsw i32 %169, %170
  store i32 %add393, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.392, %if.then.390
  %171 = load i32, i32* @comp_color, align 4
  %cmp395 = icmp eq i32 %171, 1
  br i1 %cmp395, label %if.then.396, label %if.else.399

if.then.396:                                      ; preds = %if.end.394
  %172 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %173 = load i32, i32* %change, align 4
  %sub397 = sub nsw i32 %172, %173
  store i32 %sub397, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  %174 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %175 = load i32, i32* %change, align 4
  %sub398 = sub nsw i32 %174, %175
  store i32 %sub398, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  br label %if.end.402

if.else.399:                                      ; preds = %if.end.394
  %176 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %177 = load i32, i32* %change, align 4
  %add400 = add nsw i32 %176, %177
  store i32 %add400, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  %178 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %179 = load i32, i32* %change, align 4
  %add401 = add nsw i32 %178, %179
  store i32 %add401, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.else.399, %if.then.396
  %arraydecay403 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i8* %arraydecay403)
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.402, %if.end.384
  %180 = load i8*, i8** %input.addr, align 8
  %add.ptr406 = getelementptr inbounds i8, i8* %180, i64 6
  %call407 = call i8* @strstr(i8* %add.ptr406, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0)) #5
  %cmp408 = icmp ne i8* %call407, null
  br i1 %cmp408, label %if.then.409, label %if.end.422

if.then.409:                                      ; preds = %if.end.405
  %181 = load i32, i32* @comp_color, align 4
  %cmp410 = icmp eq i32 %181, 1
  br i1 %cmp410, label %if.then.411, label %if.else.415

if.then.411:                                      ; preds = %if.then.409
  %182 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 2), align 4
  %183 = load i32, i32* %change, align 4
  %sub412 = sub nsw i32 %182, %183
  store i32 %sub412, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 2), align 4
  %184 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 12), align 4
  %185 = load i32, i32* %change, align 4
  %sub413 = sub nsw i32 %184, %185
  store i32 %sub413, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 12), align 4
  %186 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %187 = load i32, i32* %change, align 4
  %sub414 = sub nsw i32 %186, %187
  store i32 %sub414, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.419

if.else.415:                                      ; preds = %if.then.409
  %188 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 1), align 4
  %189 = load i32, i32* %change, align 4
  %add416 = add nsw i32 %188, %189
  store i32 %add416, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 1), align 4
  %190 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 11), align 4
  %191 = load i32, i32* %change, align 4
  %add417 = add nsw i32 %190, %191
  store i32 %add417, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 11), align 4
  %192 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %193 = load i32, i32* %change, align 4
  %add418 = add nsw i32 %192, %193
  store i32 %add418, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.else.415, %if.then.411
  %arraydecay420 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call421 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay420)
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.419, %if.end.405
  %194 = load i8*, i8** %input.addr, align 8
  %add.ptr423 = getelementptr inbounds i8, i8* %194, i64 6
  %call424 = call i8* @strstr(i8* %add.ptr423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #5
  %cmp425 = icmp ne i8* %call424, null
  br i1 %cmp425, label %if.then.426, label %if.end.437

if.then.426:                                      ; preds = %if.end.422
  %195 = load i32, i32* @comp_color, align 4
  %cmp427 = icmp eq i32 %195, 1
  br i1 %cmp427, label %if.then.428, label %if.else.431

if.then.428:                                      ; preds = %if.then.426
  %196 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 8), align 4
  %197 = load i32, i32* %change, align 4
  %sub429 = sub nsw i32 %196, %197
  store i32 %sub429, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 8), align 4
  %198 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 10), align 4
  %199 = load i32, i32* %change, align 4
  %sub430 = sub nsw i32 %198, %199
  store i32 %sub430, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 10), align 4
  br label %if.end.434

if.else.431:                                      ; preds = %if.then.426
  %200 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 7), align 4
  %201 = load i32, i32* %change, align 4
  %add432 = add nsw i32 %200, %201
  store i32 %add432, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 7), align 4
  %202 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @std_hand_value, i32 0, i64 9), align 4
  %203 = load i32, i32* %change, align 4
  %add433 = add nsw i32 %202, %203
  store i32 %add433, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @hand_value, i32 0, i64 9), align 4
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.428
  %arraydecay435 = getelementptr inbounds [80 x i8], [80 x i8]* %howmuch, i32 0, i32 0
  %call436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay435)
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.434, %if.end.422
  br label %if.end.514

if.else.438:                                      ; preds = %if.else.243
  %204 = load i8*, i8** %input.addr, align 8
  %add.ptr439 = getelementptr inbounds i8, i8* %204, i64 6
  %call440 = call i32 @strncmp(i8* %add.ptr439, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i64 1) #5
  %tobool441 = icmp ne i32 %call440, 0
  br i1 %tobool441, label %lor.lhs.false.442, label %land.lhs.true.458

lor.lhs.false.442:                                ; preds = %if.else.438
  %205 = load i8*, i8** %input.addr, align 8
  %add.ptr443 = getelementptr inbounds i8, i8* %205, i64 6
  %call444 = call i8* @strstr(i8* %add.ptr443, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0)) #5
  %cmp445 = icmp ne i8* %call444, null
  br i1 %cmp445, label %land.lhs.true.458, label %lor.lhs.false.446

lor.lhs.false.446:                                ; preds = %lor.lhs.false.442
  %206 = load i8*, i8** %input.addr, align 8
  %add.ptr447 = getelementptr inbounds i8, i8* %206, i64 6
  %call448 = call i8* @strstr(i8* %add.ptr447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #5
  %cmp449 = icmp ne i8* %call448, null
  br i1 %cmp449, label %land.lhs.true.450, label %lor.lhs.false.454

land.lhs.true.450:                                ; preds = %lor.lhs.false.446
  %207 = load i8*, i8** %input.addr, align 8
  %add.ptr451 = getelementptr inbounds i8, i8* %207, i64 6
  %call452 = call i8* @strstr(i8* %add.ptr451, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0)) #5
  %cmp453 = icmp ne i8* %call452, null
  br i1 %cmp453, label %land.lhs.true.458, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %land.lhs.true.450, %lor.lhs.false.446
  %208 = load i8*, i8** %input.addr, align 8
  %add.ptr455 = getelementptr inbounds i8, i8* %208, i64 6
  %call456 = call i32 @strncmp(i8* %add.ptr455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i64 1) #5
  %tobool457 = icmp ne i32 %call456, 0
  br i1 %tobool457, label %if.else.464, label %land.lhs.true.458

land.lhs.true.458:                                ; preds = %lor.lhs.false.454, %land.lhs.true.450, %lor.lhs.false.442, %if.else.438
  %209 = load i8*, i8** %input.addr, align 8
  %add.ptr459 = getelementptr inbounds i8, i8* %209, i64 6
  %call460 = call i8* @strstr(i8* %add.ptr459, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0)) #5
  %cmp461 = icmp eq i8* %call460, null
  br i1 %cmp461, label %if.then.462, label %if.else.464

if.then.462:                                      ; preds = %land.lhs.true.458
  %call463 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i32 0, i32 0))
  call void @ResetHandValue()
  store i32 0, i32* @must_sit, align 4
  store i32 0, i32* @partnerdead, align 4
  store i32 0, i32* @piecedead, align 4
  br label %if.end.513

if.else.464:                                      ; preds = %land.lhs.true.458, %lor.lhs.false.454
  %210 = load i8*, i8** %input.addr, align 8
  %add.ptr465 = getelementptr inbounds i8, i8* %210, i64 6
  %call466 = call i32 @strncmp(i8* %add.ptr465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0), i64 25) #5
  %tobool467 = icmp ne i32 %call466, 0
  br i1 %tobool467, label %lor.lhs.false.468, label %if.then.472

lor.lhs.false.468:                                ; preds = %if.else.464
  %211 = load i8*, i8** %input.addr, align 8
  %add.ptr469 = getelementptr inbounds i8, i8* %211, i64 6
  %call470 = call i32 @strncmp(i8* %add.ptr469, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i64 4) #5
  %tobool471 = icmp ne i32 %call470, 0
  br i1 %tobool471, label %if.else.473, label %if.then.472

if.then.472:                                      ; preds = %lor.lhs.false.468, %if.else.464
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 1, i32* @partnerdead, align 4
  br label %if.end.512

if.else.473:                                      ; preds = %lor.lhs.false.468
  %212 = load i8*, i8** %input.addr, align 8
  %add.ptr474 = getelementptr inbounds i8, i8* %212, i64 6
  %call475 = call i32 @strncmp(i8* %add.ptr474, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i64 26) #5
  %tobool476 = icmp ne i32 %call475, 0
  br i1 %tobool476, label %if.else.478, label %if.then.477

if.then.477:                                      ; preds = %if.else.473
  store i32 1, i32* @go_fast, align 4
  store i32 0, i32* @must_sit, align 4
  store i32 1, i32* @piecedead, align 4
  br label %if.end.511

if.else.478:                                      ; preds = %if.else.473
  %213 = load i8*, i8** %input.addr, align 8
  %add.ptr479 = getelementptr inbounds i8, i8* %213, i64 6
  %call480 = call i32 @strncmp(i8* %add.ptr479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 5) #5
  %tobool481 = icmp ne i32 %call480, 0
  br i1 %tobool481, label %if.else.483, label %if.then.482

if.then.482:                                      ; preds = %if.else.478
  br label %return

if.else.483:                                      ; preds = %if.else.478
  %214 = load i8*, i8** %input.addr, align 8
  %add.ptr484 = getelementptr inbounds i8, i8* %214, i64 6
  %call485 = call i32 @strncmp(i8* %add.ptr484, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i64 2) #5
  %tobool486 = icmp ne i32 %call485, 0
  br i1 %tobool486, label %if.else.488, label %if.then.487

if.then.487:                                      ; preds = %if.else.483
  br label %return

if.else.488:                                      ; preds = %if.else.483
  %215 = load i8*, i8** %input.addr, align 8
  %add.ptr489 = getelementptr inbounds i8, i8* %215, i64 6
  %call490 = call i32 @strncmp(i8* %add.ptr489, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i64 2) #5
  %tobool491 = icmp ne i32 %call490, 0
  br i1 %tobool491, label %lor.lhs.false.492, label %if.then.496

lor.lhs.false.492:                                ; preds = %if.else.488
  %216 = load i8*, i8** %input.addr, align 8
  %add.ptr493 = getelementptr inbounds i8, i8* %216, i64 6
  %call494 = call i32 @strncmp(i8* %add.ptr493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i64 5) #5
  %tobool495 = icmp ne i32 %call494, 0
  br i1 %tobool495, label %if.else.498, label %if.then.496

if.then.496:                                      ; preds = %lor.lhs.false.492, %if.else.488
  %call497 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.508

if.else.498:                                      ; preds = %lor.lhs.false.492
  %217 = load i8*, i8** %input.addr, align 8
  %add.ptr499 = getelementptr inbounds i8, i8* %217, i64 6
  %call500 = call i8* @strstr(i8* %add.ptr499, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0)) #5
  %cmp501 = icmp ne i8* %call500, null
  br i1 %cmp501, label %if.then.502, label %if.else.505

if.then.502:                                      ; preds = %if.else.498
  %call503 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.70, i32 0, i32 0))
  %call504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.507

if.else.505:                                      ; preds = %if.else.498
  %call506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.505, %if.then.502
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.then.496
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.510, %if.then.477
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.511, %if.then.472
  br label %if.end.513

if.end.513:                                       ; preds = %if.end.512, %if.then.462
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %if.end.437
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.514, %if.end.242
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %if.then.48
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %if.then.41
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %if.then.35
  br label %if.end.519

if.end.519:                                       ; preds = %if.end.518, %if.then.29
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %if.then.19
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.520, %if.then.11
  br label %return

return:                                           ; preds = %if.end.521, %if.then.487, %if.then.482, %if.then.5, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @CheckBadFlow(i32 %reset) #0 {
entry:
  %reset.addr = alloca i32, align 4
  %hismoves = alloca [512 x %struct.move_s], align 16
  %ourmoves = alloca [512 x %struct.move_s], align 16
  %his_num_moves = alloca i32, align 4
  %our_num_moves = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %ic = alloca i32, align 4
  %icc = alloca i32, align 4
  %othermove = alloca i32, align 4
  %pawnmates = alloca i32, align 4
  %knightmates = alloca i32, align 4
  %bishopmates = alloca i32, align 4
  %rookmates = alloca i32, align 4
  %queenmates = alloca i32, align 4
  %pawnwarn = alloca i32, align 4
  %knightwarn = alloca i32, align 4
  %bishopwarn = alloca i32, align 4
  %rookwarn = alloca i32, align 4
  %queenwarn = alloca i32, align 4
  store i32 %reset, i32* %reset.addr, align 4
  store i32 0, i32* %othermove, align 4
  store i32 0, i32* %pawnmates, align 4
  store i32 0, i32* %knightmates, align 4
  store i32 0, i32* %bishopmates, align 4
  store i32 0, i32* %rookmates, align 4
  store i32 0, i32* %queenmates, align 4
  store i32 0, i32* %pawnwarn, align 4
  store i32 0, i32* %knightwarn, align 4
  store i32 0, i32* %bishopwarn, align 4
  store i32 0, i32* %rookwarn, align 4
  store i32 0, i32* %queenwarn, align 4
  %0 = load i32, i32* %reset.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @CheckBadFlow.pawnmated, align 4
  store i32 0, i32* @CheckBadFlow.knightmated, align 4
  store i32 0, i32* @CheckBadFlow.bishopmated, align 4
  store i32 0, i32* @CheckBadFlow.rookmated, align 4
  store i32 0, i32* @CheckBadFlow.queenmated, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @in_check()
  store i32 %call, i32* %ic, align 4
  %1 = load i32, i32* @white_to_move, align 4
  %tobool1 = icmp ne i32 %1, 0
  %cond = select i1 %tobool1, i32 1, i32 2
  %idxprom = sext i32 %cond to i64
  %2 = load i32, i32* @white_to_move, align 4
  %tobool2 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom3 = sext i32 %lnot.ext to i64
  %arrayidx = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.end.44, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %4 = load i32, i32* @white_to_move, align 4
  %tobool7 = icmp ne i32 %4, 0
  %cond8 = select i1 %tobool7, i32 1, i32 2
  %5 = load i32, i32* @white_to_move, align 4
  %tobool9 = icmp ne i32 %5, 0
  %lnot10 = xor i1 %tobool9, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  call void @DropaddHolding(i32 %cond8, i32 %lnot.ext11)
  %arrayidx12 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx12)
  %6 = load i32, i32* @numb_moves, align 4
  store i32 %6, i32* %his_num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.then.6
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %his_num_moves, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %pawnmates, align 4
  %cmp13 = icmp eq i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %10, label %for.body, label %for.end.38

for.body:                                         ; preds = %land.end
  %arrayidx14 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %11 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx14, i32 %11)
  %arrayidx15 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %ic, align 4
  %call16 = call i32 @check_legal(%struct.move_s* %arrayidx15, i32 %12, i32 %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %for.body
  store i32 3, i32* %pawnmates, align 4
  %call19 = call i32 @in_check()
  store i32 %call19, i32* %icc, align 4
  %arrayidx20 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx20)
  %14 = load i32, i32* @numb_moves, align 4
  store i32 %14, i32* %our_num_moves, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.then.18
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %our_num_moves, align 4
  %cmp22 = icmp slt i32 %15, %16
  br i1 %cmp22, label %land.rhs.23, label %land.end.25

land.rhs.23:                                      ; preds = %for.cond.21
  %17 = load i32, i32* %pawnmates, align 4
  %cmp24 = icmp ne i32 %17, 0
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.23, %for.cond.21
  %18 = phi i1 [ false, %for.cond.21 ], [ %cmp24, %land.rhs.23 ]
  br i1 %18, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %land.end.25
  %arrayidx27 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %19 = load i32, i32* %j, align 4
  call void @make(%struct.move_s* %arrayidx27, i32 %19)
  %arrayidx28 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %icc, align 4
  %call29 = call i32 @check_legal(%struct.move_s* %arrayidx28, i32 %20, i32 %21)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.26
  store i32 0, i32* %pawnmates, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.body.26
  %arrayidx33 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %22 = load i32, i32* %j, align 4
  call void @unmake(%struct.move_s* %arrayidx33, i32 %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.21

for.end:                                          ; preds = %land.end.25
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %for.body
  %arrayidx35 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %24 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx35, i32 %24)
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.34
  %25 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %25, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %land.end
  %26 = load i32, i32* @white_to_move, align 4
  %tobool39 = icmp ne i32 %26, 0
  %cond40 = select i1 %tobool39, i32 1, i32 2
  %27 = load i32, i32* @white_to_move, align 4
  %tobool41 = icmp ne i32 %27, 0
  %lnot42 = xor i1 %tobool41, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  call void @DropremoveHolding(i32 %cond40, i32 %lnot.ext43)
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.38, %if.end
  %28 = load i32, i32* @white_to_move, align 4
  %tobool45 = icmp ne i32 %28, 0
  %cond46 = select i1 %tobool45, i32 3, i32 4
  %idxprom47 = sext i32 %cond46 to i64
  %29 = load i32, i32* @white_to_move, align 4
  %tobool48 = icmp ne i32 %29, 0
  %lnot49 = xor i1 %tobool48, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %idxprom51 = sext i32 %lnot.ext50 to i64
  %arrayidx52 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx52, i32 0, i64 %idxprom47
  %30 = load i32, i32* %arrayidx53, align 4
  %tobool54 = icmp ne i32 %30, 0
  br i1 %tobool54, label %if.end.101, label %if.then.55

if.then.55:                                       ; preds = %if.end.44
  %31 = load i32, i32* @white_to_move, align 4
  %tobool56 = icmp ne i32 %31, 0
  %cond57 = select i1 %tobool56, i32 3, i32 4
  %32 = load i32, i32* @white_to_move, align 4
  %tobool58 = icmp ne i32 %32, 0
  %lnot59 = xor i1 %tobool58, true
  %lnot.ext60 = zext i1 %lnot59 to i32
  call void @DropaddHolding(i32 %cond57, i32 %lnot.ext60)
  %arrayidx61 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx61)
  %33 = load i32, i32* @numb_moves, align 4
  store i32 %33, i32* %his_num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.93, %if.then.55
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %his_num_moves, align 4
  %cmp63 = icmp slt i32 %34, %35
  br i1 %cmp63, label %land.rhs.64, label %land.end.66

land.rhs.64:                                      ; preds = %for.cond.62
  %36 = load i32, i32* %knightmates, align 4
  %cmp65 = icmp eq i32 %36, 0
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.64, %for.cond.62
  %37 = phi i1 [ false, %for.cond.62 ], [ %cmp65, %land.rhs.64 ]
  br i1 %37, label %for.body.67, label %for.end.95

for.body.67:                                      ; preds = %land.end.66
  %arrayidx68 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %38 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx68, i32 %38)
  %arrayidx69 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %ic, align 4
  %call70 = call i32 @check_legal(%struct.move_s* %arrayidx69, i32 %39, i32 %40)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.91

if.then.72:                                       ; preds = %for.body.67
  store i32 3, i32* %knightmates, align 4
  %call73 = call i32 @in_check()
  store i32 %call73, i32* %icc, align 4
  %arrayidx74 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx74)
  %41 = load i32, i32* @numb_moves, align 4
  store i32 %41, i32* %our_num_moves, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.88, %if.then.72
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %our_num_moves, align 4
  %cmp76 = icmp slt i32 %42, %43
  br i1 %cmp76, label %land.rhs.77, label %land.end.79

land.rhs.77:                                      ; preds = %for.cond.75
  %44 = load i32, i32* %knightmates, align 4
  %cmp78 = icmp ne i32 %44, 0
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.77, %for.cond.75
  %45 = phi i1 [ false, %for.cond.75 ], [ %cmp78, %land.rhs.77 ]
  br i1 %45, label %for.body.80, label %for.end.90

for.body.80:                                      ; preds = %land.end.79
  %arrayidx81 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %46 = load i32, i32* %j, align 4
  call void @make(%struct.move_s* %arrayidx81, i32 %46)
  %arrayidx82 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %icc, align 4
  %call83 = call i32 @check_legal(%struct.move_s* %arrayidx82, i32 %47, i32 %48)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.80
  store i32 0, i32* %knightmates, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %for.body.80
  %arrayidx87 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %49 = load i32, i32* %j, align 4
  call void @unmake(%struct.move_s* %arrayidx87, i32 %49)
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.86
  %50 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %50, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.75

for.end.90:                                       ; preds = %land.end.79
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %for.body.67
  %arrayidx92 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %51 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx92, i32 %51)
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.91
  %52 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %52, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.62

for.end.95:                                       ; preds = %land.end.66
  %53 = load i32, i32* @white_to_move, align 4
  %tobool96 = icmp ne i32 %53, 0
  %cond97 = select i1 %tobool96, i32 3, i32 4
  %54 = load i32, i32* @white_to_move, align 4
  %tobool98 = icmp ne i32 %54, 0
  %lnot99 = xor i1 %tobool98, true
  %lnot.ext100 = zext i1 %lnot99 to i32
  call void @DropremoveHolding(i32 %cond97, i32 %lnot.ext100)
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.95, %if.end.44
  %55 = load i32, i32* @white_to_move, align 4
  %tobool102 = icmp ne i32 %55, 0
  %cond103 = select i1 %tobool102, i32 11, i32 12
  %idxprom104 = sext i32 %cond103 to i64
  %56 = load i32, i32* @white_to_move, align 4
  %tobool105 = icmp ne i32 %56, 0
  %lnot106 = xor i1 %tobool105, true
  %lnot.ext107 = zext i1 %lnot106 to i32
  %idxprom108 = sext i32 %lnot.ext107 to i64
  %arrayidx109 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx109, i32 0, i64 %idxprom104
  %57 = load i32, i32* %arrayidx110, align 4
  %tobool111 = icmp ne i32 %57, 0
  br i1 %tobool111, label %if.end.158, label %if.then.112

if.then.112:                                      ; preds = %if.end.101
  %58 = load i32, i32* @white_to_move, align 4
  %tobool113 = icmp ne i32 %58, 0
  %cond114 = select i1 %tobool113, i32 11, i32 12
  %59 = load i32, i32* @white_to_move, align 4
  %tobool115 = icmp ne i32 %59, 0
  %lnot116 = xor i1 %tobool115, true
  %lnot.ext117 = zext i1 %lnot116 to i32
  call void @DropaddHolding(i32 %cond114, i32 %lnot.ext117)
  %arrayidx118 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx118)
  %60 = load i32, i32* @numb_moves, align 4
  store i32 %60, i32* %his_num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.150, %if.then.112
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %his_num_moves, align 4
  %cmp120 = icmp slt i32 %61, %62
  br i1 %cmp120, label %land.rhs.121, label %land.end.123

land.rhs.121:                                     ; preds = %for.cond.119
  %63 = load i32, i32* %bishopmates, align 4
  %cmp122 = icmp eq i32 %63, 0
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.121, %for.cond.119
  %64 = phi i1 [ false, %for.cond.119 ], [ %cmp122, %land.rhs.121 ]
  br i1 %64, label %for.body.124, label %for.end.152

for.body.124:                                     ; preds = %land.end.123
  %arrayidx125 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %65 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx125, i32 %65)
  %arrayidx126 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %ic, align 4
  %call127 = call i32 @check_legal(%struct.move_s* %arrayidx126, i32 %66, i32 %67)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.148

if.then.129:                                      ; preds = %for.body.124
  store i32 3, i32* %bishopmates, align 4
  %call130 = call i32 @in_check()
  store i32 %call130, i32* %icc, align 4
  %arrayidx131 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx131)
  %68 = load i32, i32* @numb_moves, align 4
  store i32 %68, i32* %our_num_moves, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.145, %if.then.129
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %our_num_moves, align 4
  %cmp133 = icmp slt i32 %69, %70
  br i1 %cmp133, label %land.rhs.134, label %land.end.136

land.rhs.134:                                     ; preds = %for.cond.132
  %71 = load i32, i32* %bishopmates, align 4
  %cmp135 = icmp ne i32 %71, 0
  br label %land.end.136

land.end.136:                                     ; preds = %land.rhs.134, %for.cond.132
  %72 = phi i1 [ false, %for.cond.132 ], [ %cmp135, %land.rhs.134 ]
  br i1 %72, label %for.body.137, label %for.end.147

for.body.137:                                     ; preds = %land.end.136
  %arrayidx138 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %73 = load i32, i32* %j, align 4
  call void @make(%struct.move_s* %arrayidx138, i32 %73)
  %arrayidx139 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %icc, align 4
  %call140 = call i32 @check_legal(%struct.move_s* %arrayidx139, i32 %74, i32 %75)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.body.137
  store i32 0, i32* %bishopmates, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %for.body.137
  %arrayidx144 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %76 = load i32, i32* %j, align 4
  call void @unmake(%struct.move_s* %arrayidx144, i32 %76)
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.143
  %77 = load i32, i32* %j, align 4
  %inc146 = add nsw i32 %77, 1
  store i32 %inc146, i32* %j, align 4
  br label %for.cond.132

for.end.147:                                      ; preds = %land.end.136
  br label %if.end.148

if.end.148:                                       ; preds = %for.end.147, %for.body.124
  %arrayidx149 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %78 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx149, i32 %78)
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.148
  %79 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %79, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.119

for.end.152:                                      ; preds = %land.end.123
  %80 = load i32, i32* @white_to_move, align 4
  %tobool153 = icmp ne i32 %80, 0
  %cond154 = select i1 %tobool153, i32 11, i32 12
  %81 = load i32, i32* @white_to_move, align 4
  %tobool155 = icmp ne i32 %81, 0
  %lnot156 = xor i1 %tobool155, true
  %lnot.ext157 = zext i1 %lnot156 to i32
  call void @DropremoveHolding(i32 %cond154, i32 %lnot.ext157)
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.152, %if.end.101
  %82 = load i32, i32* @white_to_move, align 4
  %tobool159 = icmp ne i32 %82, 0
  %cond160 = select i1 %tobool159, i32 7, i32 8
  %idxprom161 = sext i32 %cond160 to i64
  %83 = load i32, i32* @white_to_move, align 4
  %tobool162 = icmp ne i32 %83, 0
  %lnot163 = xor i1 %tobool162, true
  %lnot.ext164 = zext i1 %lnot163 to i32
  %idxprom165 = sext i32 %lnot.ext164 to i64
  %arrayidx166 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx166, i32 0, i64 %idxprom161
  %84 = load i32, i32* %arrayidx167, align 4
  %tobool168 = icmp ne i32 %84, 0
  br i1 %tobool168, label %if.end.215, label %if.then.169

if.then.169:                                      ; preds = %if.end.158
  %85 = load i32, i32* @white_to_move, align 4
  %tobool170 = icmp ne i32 %85, 0
  %cond171 = select i1 %tobool170, i32 7, i32 8
  %86 = load i32, i32* @white_to_move, align 4
  %tobool172 = icmp ne i32 %86, 0
  %lnot173 = xor i1 %tobool172, true
  %lnot.ext174 = zext i1 %lnot173 to i32
  call void @DropaddHolding(i32 %cond171, i32 %lnot.ext174)
  %arrayidx175 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx175)
  %87 = load i32, i32* @numb_moves, align 4
  store i32 %87, i32* %his_num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.207, %if.then.169
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %his_num_moves, align 4
  %cmp177 = icmp slt i32 %88, %89
  br i1 %cmp177, label %land.rhs.178, label %land.end.180

land.rhs.178:                                     ; preds = %for.cond.176
  %90 = load i32, i32* %rookmates, align 4
  %cmp179 = icmp eq i32 %90, 0
  br label %land.end.180

land.end.180:                                     ; preds = %land.rhs.178, %for.cond.176
  %91 = phi i1 [ false, %for.cond.176 ], [ %cmp179, %land.rhs.178 ]
  br i1 %91, label %for.body.181, label %for.end.209

for.body.181:                                     ; preds = %land.end.180
  %arrayidx182 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %92 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx182, i32 %92)
  %arrayidx183 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %ic, align 4
  %call184 = call i32 @check_legal(%struct.move_s* %arrayidx183, i32 %93, i32 %94)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.205

if.then.186:                                      ; preds = %for.body.181
  store i32 3, i32* %rookmates, align 4
  %call187 = call i32 @in_check()
  store i32 %call187, i32* %icc, align 4
  %arrayidx188 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx188)
  %95 = load i32, i32* @numb_moves, align 4
  store i32 %95, i32* %our_num_moves, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.202, %if.then.186
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %our_num_moves, align 4
  %cmp190 = icmp slt i32 %96, %97
  br i1 %cmp190, label %land.rhs.191, label %land.end.193

land.rhs.191:                                     ; preds = %for.cond.189
  %98 = load i32, i32* %rookmates, align 4
  %cmp192 = icmp ne i32 %98, 0
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.191, %for.cond.189
  %99 = phi i1 [ false, %for.cond.189 ], [ %cmp192, %land.rhs.191 ]
  br i1 %99, label %for.body.194, label %for.end.204

for.body.194:                                     ; preds = %land.end.193
  %arrayidx195 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %100 = load i32, i32* %j, align 4
  call void @make(%struct.move_s* %arrayidx195, i32 %100)
  %arrayidx196 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %icc, align 4
  %call197 = call i32 @check_legal(%struct.move_s* %arrayidx196, i32 %101, i32 %102)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %for.body.194
  store i32 0, i32* %rookmates, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %for.body.194
  %arrayidx201 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %103 = load i32, i32* %j, align 4
  call void @unmake(%struct.move_s* %arrayidx201, i32 %103)
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.200
  %104 = load i32, i32* %j, align 4
  %inc203 = add nsw i32 %104, 1
  store i32 %inc203, i32* %j, align 4
  br label %for.cond.189

for.end.204:                                      ; preds = %land.end.193
  br label %if.end.205

if.end.205:                                       ; preds = %for.end.204, %for.body.181
  %arrayidx206 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %105 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx206, i32 %105)
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.205
  %106 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %106, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond.176

for.end.209:                                      ; preds = %land.end.180
  %107 = load i32, i32* @white_to_move, align 4
  %tobool210 = icmp ne i32 %107, 0
  %cond211 = select i1 %tobool210, i32 7, i32 8
  %108 = load i32, i32* @white_to_move, align 4
  %tobool212 = icmp ne i32 %108, 0
  %lnot213 = xor i1 %tobool212, true
  %lnot.ext214 = zext i1 %lnot213 to i32
  call void @DropremoveHolding(i32 %cond211, i32 %lnot.ext214)
  br label %if.end.215

if.end.215:                                       ; preds = %for.end.209, %if.end.158
  %109 = load i32, i32* @white_to_move, align 4
  %tobool216 = icmp ne i32 %109, 0
  %cond217 = select i1 %tobool216, i32 9, i32 10
  %idxprom218 = sext i32 %cond217 to i64
  %110 = load i32, i32* @white_to_move, align 4
  %tobool219 = icmp ne i32 %110, 0
  %lnot220 = xor i1 %tobool219, true
  %lnot.ext221 = zext i1 %lnot220 to i32
  %idxprom222 = sext i32 %lnot.ext221 to i64
  %arrayidx223 = getelementptr inbounds [2 x [16 x i32]], [2 x [16 x i32]]* @holding, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx223, i32 0, i64 %idxprom218
  %111 = load i32, i32* %arrayidx224, align 4
  %tobool225 = icmp ne i32 %111, 0
  br i1 %tobool225, label %if.end.272, label %if.then.226

if.then.226:                                      ; preds = %if.end.215
  %112 = load i32, i32* @white_to_move, align 4
  %tobool227 = icmp ne i32 %112, 0
  %cond228 = select i1 %tobool227, i32 9, i32 10
  %113 = load i32, i32* @white_to_move, align 4
  %tobool229 = icmp ne i32 %113, 0
  %lnot230 = xor i1 %tobool229, true
  %lnot.ext231 = zext i1 %lnot230 to i32
  call void @DropaddHolding(i32 %cond228, i32 %lnot.ext231)
  %arrayidx232 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx232)
  %114 = load i32, i32* @numb_moves, align 4
  store i32 %114, i32* %his_num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.264, %if.then.226
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %his_num_moves, align 4
  %cmp234 = icmp slt i32 %115, %116
  br i1 %cmp234, label %land.rhs.235, label %land.end.237

land.rhs.235:                                     ; preds = %for.cond.233
  %117 = load i32, i32* %queenmates, align 4
  %cmp236 = icmp eq i32 %117, 0
  br label %land.end.237

land.end.237:                                     ; preds = %land.rhs.235, %for.cond.233
  %118 = phi i1 [ false, %for.cond.233 ], [ %cmp236, %land.rhs.235 ]
  br i1 %118, label %for.body.238, label %for.end.266

for.body.238:                                     ; preds = %land.end.237
  %arrayidx239 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %119 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx239, i32 %119)
  %arrayidx240 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %ic, align 4
  %call241 = call i32 @check_legal(%struct.move_s* %arrayidx240, i32 %120, i32 %121)
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.then.243, label %if.end.262

if.then.243:                                      ; preds = %for.body.238
  store i32 3, i32* %queenmates, align 4
  %call244 = call i32 @in_check()
  store i32 %call244, i32* %icc, align 4
  %arrayidx245 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx245)
  %122 = load i32, i32* @numb_moves, align 4
  store i32 %122, i32* %our_num_moves, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.259, %if.then.243
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %our_num_moves, align 4
  %cmp247 = icmp slt i32 %123, %124
  br i1 %cmp247, label %land.rhs.248, label %land.end.250

land.rhs.248:                                     ; preds = %for.cond.246
  %125 = load i32, i32* %queenmates, align 4
  %cmp249 = icmp ne i32 %125, 0
  br label %land.end.250

land.end.250:                                     ; preds = %land.rhs.248, %for.cond.246
  %126 = phi i1 [ false, %for.cond.246 ], [ %cmp249, %land.rhs.248 ]
  br i1 %126, label %for.body.251, label %for.end.261

for.body.251:                                     ; preds = %land.end.250
  %arrayidx252 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %127 = load i32, i32* %j, align 4
  call void @make(%struct.move_s* %arrayidx252, i32 %127)
  %arrayidx253 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %128 = load i32, i32* %j, align 4
  %129 = load i32, i32* %icc, align 4
  %call254 = call i32 @check_legal(%struct.move_s* %arrayidx253, i32 %128, i32 %129)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %for.body.251
  store i32 0, i32* %queenmates, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %for.body.251
  %arrayidx258 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %ourmoves, i32 0, i64 0
  %130 = load i32, i32* %j, align 4
  call void @unmake(%struct.move_s* %arrayidx258, i32 %130)
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.257
  %131 = load i32, i32* %j, align 4
  %inc260 = add nsw i32 %131, 1
  store i32 %inc260, i32* %j, align 4
  br label %for.cond.246

for.end.261:                                      ; preds = %land.end.250
  br label %if.end.262

if.end.262:                                       ; preds = %for.end.261, %for.body.238
  %arrayidx263 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %hismoves, i32 0, i64 0
  %132 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx263, i32 %132)
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.262
  %133 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %133, 1
  store i32 %inc265, i32* %i, align 4
  br label %for.cond.233

for.end.266:                                      ; preds = %land.end.237
  %134 = load i32, i32* @white_to_move, align 4
  %tobool267 = icmp ne i32 %134, 0
  %cond268 = select i1 %tobool267, i32 9, i32 10
  %135 = load i32, i32* @white_to_move, align 4
  %tobool269 = icmp ne i32 %135, 0
  %lnot270 = xor i1 %tobool269, true
  %lnot.ext271 = zext i1 %lnot270 to i32
  call void @DropremoveHolding(i32 %cond268, i32 %lnot.ext271)
  br label %if.end.272

if.end.272:                                       ; preds = %for.end.266, %if.end.215
  %136 = load i32, i32* %pawnmates, align 4
  %137 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %cmp273 = icmp ne i32 %136, %137
  br i1 %cmp273, label %if.then.274, label %if.end.283

if.then.274:                                      ; preds = %if.end.272
  %138 = load i32, i32* %pawnmates, align 4
  %cmp275 = icmp eq i32 %138, 3
  br i1 %cmp275, label %if.then.276, label %if.else

if.then.276:                                      ; preds = %if.then.274
  store i32 1, i32* %pawnwarn, align 4
  br label %if.end.282

if.else:                                          ; preds = %if.then.274
  %139 = load i32, i32* %pawnmates, align 4
  %cmp277 = icmp eq i32 %139, 0
  br i1 %cmp277, label %land.lhs.true, label %if.end.281

land.lhs.true:                                    ; preds = %if.else
  %140 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %cmp278 = icmp eq i32 %140, 0
  br i1 %cmp278, label %if.then.279, label %if.end.281

if.then.279:                                      ; preds = %land.lhs.true
  %call280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0))
  store i32 1, i32* %othermove, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %land.lhs.true, %if.else
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.276
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.end.272
  %141 = load i32, i32* %knightmates, align 4
  %142 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %cmp284 = icmp ne i32 %141, %142
  br i1 %cmp284, label %if.then.285, label %if.end.296

if.then.285:                                      ; preds = %if.end.283
  %143 = load i32, i32* %knightmates, align 4
  %cmp286 = icmp eq i32 %143, 3
  br i1 %cmp286, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %if.then.285
  store i32 1, i32* %knightwarn, align 4
  br label %if.end.295

if.else.288:                                      ; preds = %if.then.285
  %144 = load i32, i32* %knightmates, align 4
  %cmp289 = icmp eq i32 %144, 0
  br i1 %cmp289, label %land.lhs.true.290, label %if.end.294

land.lhs.true.290:                                ; preds = %if.else.288
  %145 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %cmp291 = icmp eq i32 %145, 0
  br i1 %cmp291, label %if.then.292, label %if.end.294

if.then.292:                                      ; preds = %land.lhs.true.290
  %call293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.73, i32 0, i32 0))
  store i32 1, i32* %othermove, align 4
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.292, %land.lhs.true.290, %if.else.288
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.then.287
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.end.283
  %146 = load i32, i32* %bishopmates, align 4
  %147 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %cmp297 = icmp ne i32 %146, %147
  br i1 %cmp297, label %if.then.298, label %if.end.309

if.then.298:                                      ; preds = %if.end.296
  %148 = load i32, i32* %bishopmates, align 4
  %cmp299 = icmp eq i32 %148, 3
  br i1 %cmp299, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %if.then.298
  store i32 1, i32* %bishopwarn, align 4
  br label %if.end.308

if.else.301:                                      ; preds = %if.then.298
  %149 = load i32, i32* %bishopmates, align 4
  %cmp302 = icmp eq i32 %149, 0
  br i1 %cmp302, label %land.lhs.true.303, label %if.end.307

land.lhs.true.303:                                ; preds = %if.else.301
  %150 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %cmp304 = icmp eq i32 %150, 0
  br i1 %cmp304, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %land.lhs.true.303
  %call306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.74, i32 0, i32 0))
  store i32 1, i32* %othermove, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %land.lhs.true.303, %if.else.301
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.300
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.296
  %151 = load i32, i32* %rookmates, align 4
  %152 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %cmp310 = icmp ne i32 %151, %152
  br i1 %cmp310, label %if.then.311, label %if.end.322

if.then.311:                                      ; preds = %if.end.309
  %153 = load i32, i32* %rookmates, align 4
  %cmp312 = icmp eq i32 %153, 3
  br i1 %cmp312, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %if.then.311
  store i32 1, i32* %rookwarn, align 4
  br label %if.end.321

if.else.314:                                      ; preds = %if.then.311
  %154 = load i32, i32* %rookmates, align 4
  %cmp315 = icmp eq i32 %154, 0
  br i1 %cmp315, label %land.lhs.true.316, label %if.end.320

land.lhs.true.316:                                ; preds = %if.else.314
  %155 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %cmp317 = icmp eq i32 %155, 0
  br i1 %cmp317, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %land.lhs.true.316
  %call319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.75, i32 0, i32 0))
  store i32 1, i32* %othermove, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.318, %land.lhs.true.316, %if.else.314
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.313
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.309
  %156 = load i32, i32* %queenmates, align 4
  %157 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %cmp323 = icmp ne i32 %156, %157
  br i1 %cmp323, label %if.then.324, label %if.end.335

if.then.324:                                      ; preds = %if.end.322
  %158 = load i32, i32* %queenmates, align 4
  %cmp325 = icmp eq i32 %158, 3
  br i1 %cmp325, label %if.then.326, label %if.else.327

if.then.326:                                      ; preds = %if.then.324
  store i32 1, i32* %queenwarn, align 4
  br label %if.end.334

if.else.327:                                      ; preds = %if.then.324
  %159 = load i32, i32* %queenmates, align 4
  %cmp328 = icmp eq i32 %159, 0
  br i1 %cmp328, label %land.lhs.true.329, label %if.end.333

land.lhs.true.329:                                ; preds = %if.else.327
  %160 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %cmp330 = icmp eq i32 %160, 0
  br i1 %cmp330, label %if.then.331, label %if.end.333

if.then.331:                                      ; preds = %land.lhs.true.329
  %call332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* %othermove, align 4
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %land.lhs.true.329, %if.else.327
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.326
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.322
  %161 = load i32, i32* %pawnwarn, align 4
  %tobool336 = icmp ne i32 %161, 0
  br i1 %tobool336, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.end.335
  %call338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.end.335
  %162 = load i32, i32* %knightwarn, align 4
  %tobool340 = icmp ne i32 %162, 0
  br i1 %tobool340, label %if.then.341, label %if.end.343

if.then.341:                                      ; preds = %if.end.339
  %call342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.341, %if.end.339
  %163 = load i32, i32* %bishopwarn, align 4
  %tobool344 = icmp ne i32 %163, 0
  br i1 %tobool344, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %if.end.343
  %call346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %if.end.343
  %164 = load i32, i32* %rookwarn, align 4
  %tobool348 = icmp ne i32 %164, 0
  br i1 %tobool348, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %if.end.347
  %call350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %if.end.347
  %165 = load i32, i32* %queenwarn, align 4
  %tobool352 = icmp ne i32 %165, 0
  br i1 %tobool352, label %if.then.353, label %if.end.355

if.then.353:                                      ; preds = %if.end.351
  %call354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.353, %if.end.351
  %166 = load i32, i32* @piecedead, align 4
  %tobool356 = icmp ne i32 %166, 0
  br i1 %tobool356, label %land.lhs.true.357, label %if.end.362

land.lhs.true.357:                                ; preds = %if.end.355
  %167 = load i32, i32* %othermove, align 4
  %tobool358 = icmp ne i32 %167, 0
  br i1 %tobool358, label %if.then.359, label %if.end.362

if.then.359:                                      ; preds = %land.lhs.true.357
  store i32 0, i32* @piecedead, align 4
  %call360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0))
  %call361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0))
  store i32 0, i32* @go_fast, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.359, %land.lhs.true.357, %if.end.355
  %168 = load i32, i32* %pawnmates, align 4
  %tobool363 = icmp ne i32 %168, 0
  br i1 %tobool363, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.362
  %169 = load i32, i32* %pawnmates, align 4
  store i32 %169, i32* @CheckBadFlow.pawnmated, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.362
  %170 = load i32, i32* @CheckBadFlow.pawnmated, align 4
  %dec = add nsw i32 %170, -1
  store i32 %dec, i32* @CheckBadFlow.pawnmated, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond364 = phi i32 [ %169, %cond.true ], [ %170, %cond.false ]
  %171 = load i32, i32* %bishopmates, align 4
  %tobool365 = icmp ne i32 %171, 0
  br i1 %tobool365, label %cond.true.366, label %cond.false.367

cond.true.366:                                    ; preds = %cond.end
  %172 = load i32, i32* %bishopmates, align 4
  store i32 %172, i32* @CheckBadFlow.bishopmated, align 4
  br label %cond.end.369

cond.false.367:                                   ; preds = %cond.end
  %173 = load i32, i32* @CheckBadFlow.bishopmated, align 4
  %dec368 = add nsw i32 %173, -1
  store i32 %dec368, i32* @CheckBadFlow.bishopmated, align 4
  br label %cond.end.369

cond.end.369:                                     ; preds = %cond.false.367, %cond.true.366
  %cond370 = phi i32 [ %172, %cond.true.366 ], [ %173, %cond.false.367 ]
  %174 = load i32, i32* %rookmates, align 4
  %tobool371 = icmp ne i32 %174, 0
  br i1 %tobool371, label %cond.true.372, label %cond.false.373

cond.true.372:                                    ; preds = %cond.end.369
  %175 = load i32, i32* %rookmates, align 4
  store i32 %175, i32* @CheckBadFlow.rookmated, align 4
  br label %cond.end.375

cond.false.373:                                   ; preds = %cond.end.369
  %176 = load i32, i32* @CheckBadFlow.rookmated, align 4
  %dec374 = add nsw i32 %176, -1
  store i32 %dec374, i32* @CheckBadFlow.rookmated, align 4
  br label %cond.end.375

cond.end.375:                                     ; preds = %cond.false.373, %cond.true.372
  %cond376 = phi i32 [ %175, %cond.true.372 ], [ %176, %cond.false.373 ]
  %177 = load i32, i32* %queenmates, align 4
  %tobool377 = icmp ne i32 %177, 0
  br i1 %tobool377, label %cond.true.378, label %cond.false.379

cond.true.378:                                    ; preds = %cond.end.375
  %178 = load i32, i32* %queenmates, align 4
  store i32 %178, i32* @CheckBadFlow.queenmated, align 4
  br label %cond.end.381

cond.false.379:                                   ; preds = %cond.end.375
  %179 = load i32, i32* @CheckBadFlow.queenmated, align 4
  %dec380 = add nsw i32 %179, -1
  store i32 %dec380, i32* @CheckBadFlow.queenmated, align 4
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.379, %cond.true.378
  %cond382 = phi i32 [ %178, %cond.true.378 ], [ %179, %cond.false.379 ]
  %180 = load i32, i32* %knightmates, align 4
  %tobool383 = icmp ne i32 %180, 0
  br i1 %tobool383, label %cond.true.384, label %cond.false.385

cond.true.384:                                    ; preds = %cond.end.381
  %181 = load i32, i32* %knightmates, align 4
  store i32 %181, i32* @CheckBadFlow.knightmated, align 4
  br label %cond.end.387

cond.false.385:                                   ; preds = %cond.end.381
  %182 = load i32, i32* @CheckBadFlow.knightmated, align 4
  %dec386 = add nsw i32 %182, -1
  store i32 %dec386, i32* @CheckBadFlow.knightmated, align 4
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.385, %cond.true.384
  %cond388 = phi i32 [ %181, %cond.true.384 ], [ %182, %cond.false.385 ]
  br label %return

return:                                           ; preds = %cond.end.387, %if.then
  ret void
}

declare i32 @in_check() #2

declare void @DropaddHolding(i32, i32) #2

declare void @gen(%struct.move_s*) #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

declare void @DropremoveHolding(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
