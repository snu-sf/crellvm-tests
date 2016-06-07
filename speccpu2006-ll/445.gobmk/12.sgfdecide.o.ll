; ModuleID = 'engine/sgfdecide.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@board = external global [421 x i8], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"gnugo: --decide-string called on an empty vertex\0A\00", align 1
@outfilename = external global [128 x i8], align 16
@count_variations = external global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%1m can be attacked at %1m (%d variations)\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%1m can be attacked with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%1m can be attacked with ko (bad) at %1m (%d variations)\0A\00", align 1
@debug = external global i32, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Reading shadow: \0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%1m can be defended at %1m (%d variations)\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%1m can be defended with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%1m can be defended with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%1m cannot be defended (%d variations)\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%1m cannot be attacked (%d variations)\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"engine/sgfdecide.c\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(apos)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(bpos)\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"gnugo: --decide-connection called on an empty vertex\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"gnugo: --decide-connection called for strings of different colors\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"%1m and %1m are connected as it stands (%d variations)\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%1m and %1m can be connected at %1m (%d variations)\0A\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"%1m and %1m can be connected with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"%1m and %1m can be connected with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%1m and %1m cannot be connected (%d variations)\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"%1m and %1m are disconnected as it stands (%d variations)\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"%1m and %1m can be disconnected at %1m (%d variations)\0A\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"%1m and %1m can be disconnected with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"%1m and %1m can be disconnected with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"%1m and %1m cannot be disconnected (%d variations)\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon called on an empty vertex\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"finished examine_position\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"%1m is dead as it stands\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"%1m can be attacked at %1m (%d variations)\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"%1m can be attacked with ko (good) at %1m (%d variations)\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"%1m can be attacked with ko (bad) at %1m (%d variations)\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"%1m can be attacked with gain (captures %1m) at %1m (%d variations)\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"%1m cannot be attacked (%d variations)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c" result uncertain\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"%1m is alive as it stands\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"%1m can be defended at %1m (%d variations)\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"%1m can be defended with ko (good) at %1m (%d variations)\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"%1m can be defended with ko (bad) at %1m (%d variations)\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"%1m can be defended with loss (loses %1m) at %1m (%d variations)\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"%1m cannot be defended (%d variations)\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"gnugo: --decide-dragon-data called on an empty vertex\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Dragon at %1m:\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"gnugo: --decide-semeai called on invalid data\0A\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"After %s at %1m, %1m is %s, %1m is %s (%d nodes)\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@decide_position.snames = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.51 = private unnamed_addr constant [16 x i8] c"\0Aanalyzing %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"status=%s, escape=%d\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"%1m is dead as it stands\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"%1m is alive as it stands\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"status of %1m revised to CRITICAL\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"status of %1m revised to DEAD\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"status of %1m revised to ALIVE\0A\00", align 1
@black_eye = external global [400 x %struct.eye_data], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@.str.58 = private unnamed_addr constant [42 x i8] c"The eye at %1m is not of a single color.\0A\00", align 1
@printboard = external global i32, align 4
@half_eye = external global [400 x %struct.half_eye_data], align 16
@.str.59 = private unnamed_addr constant [27 x i8] c"Black eyespace at %1m: %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"  vital points: %1m (attack) %1m (defense)\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"White eyespace at %1m: %s\0A\00", align 1
@verbose = external global i32, align 4
@.str.62 = private unnamed_addr constant [46 x i8] c"Combination attack for %C at %1m, defense at \00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%1m\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"No Combination attack for %C\0A\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"location must not be empty!\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"the dragon at %1m is SURROUNDED!\0A\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"the dragon at %1m is WEAKLY SURROUNDED!\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"the dragon at %1m is not surrounded.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @decide_string(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %aa = alloca i32, align 4
  %dd = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  call void @reset_engine()
  store i32 1, i32* @count_variations, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %call4 = call i32 @attack(i32 %4, i32* %aa)
  store i32 %call4, i32* %acode, align 4
  %5 = load i32, i32* %acode, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.else.55

if.then.6:                                        ; preds = %if.end.3
  %6 = load i32, i32* %acode, align 4
  %cmp7 = icmp eq i32 %6, 5
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %aa, align 4
  %9 = load i32, i32* @count_variations, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %7, i32 %8, i32 %9)
  br label %if.end.22

if.else:                                          ; preds = %if.then.6
  %10 = load i32, i32* %acode, align 4
  %cmp11 = icmp eq i32 %10, 4
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %aa, align 4
  %13 = load i32, i32* @count_variations, align 4
  %call14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0), i32 %11, i32 %12, i32 %13)
  br label %if.end.21

if.else.15:                                       ; preds = %if.else
  %14 = load i32, i32* %acode, align 4
  %cmp16 = icmp eq i32 %14, 1
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else.15
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %aa, align 4
  %17 = load i32, i32* @count_variations, align 4
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i32 %15, i32 %16, i32 %17)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.9
  %18 = load i32, i32* @debug, align 4
  %and = and i32 %18, 32768
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %call25 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  call void @draw_reading_shadow()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.22
  store i32 1, i32* @count_variations, align 4
  %19 = load i32, i32* %pos.addr, align 4
  %call27 = call i32 @find_defense(i32 %19, i32* %dd)
  store i32 %call27, i32* %dcode, align 4
  %20 = load i32, i32* %dcode, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then.29, label %if.else.47

if.then.29:                                       ; preds = %if.end.26
  %21 = load i32, i32* %dcode, align 4
  %cmp30 = icmp eq i32 %21, 5
  br i1 %cmp30, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.then.29
  %22 = load i32, i32* %pos.addr, align 4
  %23 = load i32, i32* %dd, align 4
  %24 = load i32, i32* @count_variations, align 4
  %call33 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  br label %if.end.46

if.else.34:                                       ; preds = %if.then.29
  %25 = load i32, i32* %dcode, align 4
  %cmp35 = icmp eq i32 %25, 4
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.34
  %26 = load i32, i32* %pos.addr, align 4
  %27 = load i32, i32* %dd, align 4
  %28 = load i32, i32* @count_variations, align 4
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0), i32 %26, i32 %27, i32 %28)
  br label %if.end.45

if.else.39:                                       ; preds = %if.else.34
  %29 = load i32, i32* %dcode, align 4
  %cmp40 = icmp eq i32 %29, 1
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else.39
  %30 = load i32, i32* %pos.addr, align 4
  %31 = load i32, i32* %dd, align 4
  %32 = load i32, i32* @count_variations, align 4
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0), i32 %30, i32 %31, i32 %32)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.32
  br label %if.end.49

if.else.47:                                       ; preds = %if.end.26
  %33 = load i32, i32* %pos.addr, align 4
  %34 = load i32, i32* @count_variations, align 4
  %call48 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %33, i32 %34)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.end.46
  %35 = load i32, i32* @debug, align 4
  %and50 = and i32 %35, 32768
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %call53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  call void @draw_reading_shadow()
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.49
  br label %if.end.62

if.else.55:                                       ; preds = %if.end.3
  %36 = load i32, i32* %pos.addr, align 4
  %37 = load i32, i32* @count_variations, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i32 %36, i32 %37)
  %38 = load i32, i32* @debug, align 4
  %and57 = and i32 %38, 32768
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.else.55
  %call60 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  call void @draw_reading_shadow()
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.else.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.54
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.62, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @sgffile_begindump(%struct.SGFTree_t*) #1

declare void @reset_engine() #1

declare i32 @attack(i32, i32*) #1

declare i32 @gprintf(i8*, ...) #1

declare void @draw_reading_shadow() #1

declare i32 @find_defense(i32, i32*) #1

declare void @sgffile_enddump(i8*) #1

; Function Attrs: nounwind uwtable
define void @decide_connection(i32 %apos, i32 %bpos) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %move = alloca i32, align 4
  %result = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %apos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %apos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %bpos.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %bpos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %bpos.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %bpos.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %apos.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %bpos.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %15 = load i32, i32* %apos.addr, align 4
  %idxprom31 = sext i32 %15 to i64
  %arrayidx32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom31
  %16 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %16 to i32
  %17 = load i32, i32* %bpos.addr, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %18 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %18 to i32
  %cmp37 = icmp ne i32 %conv33, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.30
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.41:                                        ; preds = %if.end.30
  %20 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.41
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.41
  call void @reset_engine()
  store i32 1, i32* @count_variations, align 4
  %21 = load i32, i32* %apos.addr, align 4
  %22 = load i32, i32* %bpos.addr, align 4
  %call44 = call i32 @string_connect(i32 %21, i32 %22, i32* %move)
  store i32 %call44, i32* %result, align 4
  %23 = load i32, i32* %result, align 4
  %cmp45 = icmp eq i32 %23, 5
  br i1 %cmp45, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %if.end.43
  %24 = load i32, i32* %move, align 4
  %cmp48 = icmp eq i32 %24, 0
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.then.47
  %25 = load i32, i32* %apos.addr, align 4
  %26 = load i32, i32* %bpos.addr, align 4
  %27 = load i32, i32* @count_variations, align 4
  %call51 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0), i32 %25, i32 %26, i32 %27)
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.47
  %28 = load i32, i32* %apos.addr, align 4
  %29 = load i32, i32* %bpos.addr, align 4
  %30 = load i32, i32* %move, align 4
  %31 = load i32, i32* @count_variations, align 4
  %call53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i32 %28, i32 %29, i32 %30, i32 %31)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  br label %if.end.69

if.else.55:                                       ; preds = %if.end.43
  %32 = load i32, i32* %result, align 4
  %cmp56 = icmp eq i32 %32, 4
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.else.55
  %33 = load i32, i32* %apos.addr, align 4
  %34 = load i32, i32* %bpos.addr, align 4
  %35 = load i32, i32* %move, align 4
  %36 = load i32, i32* @count_variations, align 4
  %call59 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0), i32 %33, i32 %34, i32 %35, i32 %36)
  br label %if.end.68

if.else.60:                                       ; preds = %if.else.55
  %37 = load i32, i32* %result, align 4
  %cmp61 = icmp eq i32 %37, 1
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.else.60
  %38 = load i32, i32* %apos.addr, align 4
  %39 = load i32, i32* %bpos.addr, align 4
  %40 = load i32, i32* %move, align 4
  %41 = load i32, i32* @count_variations, align 4
  %call64 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i32 0, i32 0), i32 %38, i32 %39, i32 %40, i32 %41)
  br label %if.end.67

if.else.65:                                       ; preds = %if.else.60
  %42 = load i32, i32* %apos.addr, align 4
  %43 = load i32, i32* %bpos.addr, align 4
  %44 = load i32, i32* @count_variations, align 4
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i32 %42, i32 %43, i32 %44)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.54
  store i32 1, i32* @count_variations, align 4
  %45 = load i32, i32* %apos.addr, align 4
  %46 = load i32, i32* %bpos.addr, align 4
  %call70 = call i32 @disconnect(i32 %45, i32 %46, i32* %move)
  store i32 %call70, i32* %result, align 4
  %47 = load i32, i32* %result, align 4
  %cmp71 = icmp eq i32 %47, 5
  br i1 %cmp71, label %if.then.73, label %if.else.81

if.then.73:                                       ; preds = %if.end.69
  %48 = load i32, i32* %move, align 4
  %cmp74 = icmp eq i32 %48, 0
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.then.73
  %49 = load i32, i32* %apos.addr, align 4
  %50 = load i32, i32* %bpos.addr, align 4
  %51 = load i32, i32* @count_variations, align 4
  %call77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i32 %49, i32 %50, i32 %51)
  br label %if.end.80

if.else.78:                                       ; preds = %if.then.73
  %52 = load i32, i32* %apos.addr, align 4
  %53 = load i32, i32* %bpos.addr, align 4
  %54 = load i32, i32* %move, align 4
  %55 = load i32, i32* @count_variations, align 4
  %call79 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0), i32 %52, i32 %53, i32 %54, i32 %55)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  br label %if.end.95

if.else.81:                                       ; preds = %if.end.69
  %56 = load i32, i32* %result, align 4
  %cmp82 = icmp eq i32 %56, 4
  br i1 %cmp82, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %if.else.81
  %57 = load i32, i32* %apos.addr, align 4
  %58 = load i32, i32* %bpos.addr, align 4
  %59 = load i32, i32* %move, align 4
  %60 = load i32, i32* @count_variations, align 4
  %call85 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i32 0, i32 0), i32 %57, i32 %58, i32 %59, i32 %60)
  br label %if.end.94

if.else.86:                                       ; preds = %if.else.81
  %61 = load i32, i32* %result, align 4
  %cmp87 = icmp eq i32 %61, 1
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.else.86
  %62 = load i32, i32* %apos.addr, align 4
  %63 = load i32, i32* %bpos.addr, align 4
  %64 = load i32, i32* %move, align 4
  %65 = load i32, i32* @count_variations, align 4
  %call90 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i32 0, i32 0), i32 %62, i32 %63, i32 %64, i32 %65)
  br label %if.end.93

if.else.91:                                       ; preds = %if.else.86
  %66 = load i32, i32* %apos.addr, align 4
  %67 = load i32, i32* %bpos.addr, align 4
  %68 = load i32, i32* @count_variations, align 4
  %call92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i32 0, i32 0), i32 %66, i32 %67, i32 %68)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.84
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.80
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.95, %if.then.39, %if.then.29
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @string_connect(i32, i32, i32*) #1

declare i32 @disconnect(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @decide_owl(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %move = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  %result_certain = alloca i32, align 4
  %kworm = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %move, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  call void @reset_engine()
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  call void @silent_examine_position(i32 %conv4, i32 3)
  %call5 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  call void @reading_cache_clear()
  %5 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  store i32 1, i32* @count_variations, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %call8 = call i32 @owl_attack(i32 %6, i32* %move, i32* %result_certain, i32* %kworm)
  store i32 %call8, i32* %acode, align 4
  %7 = load i32, i32* %acode, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.10, label %if.else.39

if.then.10:                                       ; preds = %if.end.7
  %8 = load i32, i32* %acode, align 4
  %cmp11 = icmp eq i32 %8, 5
  br i1 %cmp11, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.then.10
  %9 = load i32, i32* %move, align 4
  %cmp14 = icmp eq i32 %9, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %10 = load i32, i32* %pos.addr, align 4
  %call17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i32 %10)
  br label %if.end.19

if.else:                                          ; preds = %if.then.13
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %move, align 4
  %13 = load i32, i32* @count_variations, align 4
  %call18 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i32 0, i32 0), i32 %11, i32 %12, i32 %13)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  br label %if.end.38

if.else.20:                                       ; preds = %if.then.10
  %14 = load i32, i32* %acode, align 4
  %cmp21 = icmp eq i32 %14, 4
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else.20
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %move, align 4
  %17 = load i32, i32* @count_variations, align 4
  %call24 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0), i32 %15, i32 %16, i32 %17)
  br label %if.end.37

if.else.25:                                       ; preds = %if.else.20
  %18 = load i32, i32* %acode, align 4
  %cmp26 = icmp eq i32 %18, 1
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else.25
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %move, align 4
  %21 = load i32, i32* @count_variations, align 4
  %call29 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i32 0, i32 0), i32 %19, i32 %20, i32 %21)
  br label %if.end.36

if.else.30:                                       ; preds = %if.else.25
  %22 = load i32, i32* %acode, align 4
  %cmp31 = icmp eq i32 %22, 3
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.30
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load i32, i32* %kworm, align 4
  %25 = load i32, i32* %move, align 4
  %26 = load i32, i32* @count_variations, align 4
  %call34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i32 0, i32 0), i32 %23, i32 %24, i32 %25, i32 %26)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.28
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.19
  br label %if.end.41

if.else.39:                                       ; preds = %if.end.7
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* @count_variations, align 4
  %call40 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0), i32 %27, i32 %28)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.end.38
  %29 = load i32, i32* %result_certain, align 4
  %tobool42 = icmp ne i32 %29, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.41
  %call44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.47

if.else.45:                                       ; preds = %if.end.41
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  call void @reading_cache_clear()
  store i32 1, i32* @count_variations, align 4
  %30 = load i32, i32* %pos.addr, align 4
  %call48 = call i32 @owl_defend(i32 %30, i32* %move, i32* %result_certain, i32* %kworm)
  store i32 %call48, i32* %dcode, align 4
  %31 = load i32, i32* %dcode, align 4
  %tobool49 = icmp ne i32 %31, 0
  br i1 %tobool49, label %if.then.50, label %if.else.80

if.then.50:                                       ; preds = %if.end.47
  %32 = load i32, i32* %dcode, align 4
  %cmp51 = icmp eq i32 %32, 5
  br i1 %cmp51, label %if.then.53, label %if.else.61

if.then.53:                                       ; preds = %if.then.50
  %33 = load i32, i32* %move, align 4
  %cmp54 = icmp eq i32 %33, 0
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.then.53
  %34 = load i32, i32* %pos.addr, align 4
  %call57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i32 %34)
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.53
  %35 = load i32, i32* %pos.addr, align 4
  %36 = load i32, i32* %move, align 4
  %37 = load i32, i32* @count_variations, align 4
  %call59 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i32 0, i32 0), i32 %35, i32 %36, i32 %37)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  br label %if.end.79

if.else.61:                                       ; preds = %if.then.50
  %38 = load i32, i32* %dcode, align 4
  %cmp62 = icmp eq i32 %38, 4
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.61
  %39 = load i32, i32* %pos.addr, align 4
  %40 = load i32, i32* %move, align 4
  %41 = load i32, i32* @count_variations, align 4
  %call65 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0), i32 %39, i32 %40, i32 %41)
  br label %if.end.78

if.else.66:                                       ; preds = %if.else.61
  %42 = load i32, i32* %dcode, align 4
  %cmp67 = icmp eq i32 %42, 1
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else.66
  %43 = load i32, i32* %pos.addr, align 4
  %44 = load i32, i32* %move, align 4
  %45 = load i32, i32* @count_variations, align 4
  %call70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i32 0, i32 0), i32 %43, i32 %44, i32 %45)
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.66
  %46 = load i32, i32* %dcode, align 4
  %cmp72 = icmp eq i32 %46, 2
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.else.71
  %47 = load i32, i32* %pos.addr, align 4
  %48 = load i32, i32* %kworm, align 4
  %49 = load i32, i32* %move, align 4
  %50 = load i32, i32* @count_variations, align 4
  %call75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i32 0, i32 0), i32 %47, i32 %48, i32 %49, i32 %50)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.64
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.60
  br label %if.end.82

if.else.80:                                       ; preds = %if.end.47
  %51 = load i32, i32* %pos.addr, align 4
  %52 = load i32, i32* @count_variations, align 4
  %call81 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i32 %51, i32 %52)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.end.79
  %53 = load i32, i32* %result_certain, align 4
  %tobool83 = icmp ne i32 %53, 0
  br i1 %tobool83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %if.end.82
  %call85 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.88

if.else.86:                                       ; preds = %if.end.82
  %call87 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.84
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.88, %if.then
  ret void
}

declare void @silent_examine_position(i32, i32) #1

declare void @reading_cache_clear() #1

declare i32 @owl_attack(i32, i32*, i32*, i32*) #1

declare i32 @owl_defend(i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @decide_dragon_data(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.41, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  call void @reset_engine()
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  call void @silent_examine_position(i32 %conv4, i32 7)
  %5 = load i32, i32* %pos.addr, align 4
  %call5 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %pos.addr, align 4
  call void @report_dragon(%struct._IO_FILE* %6, i32 %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @report_dragon(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define void @decide_semeai(i32 %apos, i32 %bpos) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  %resulta = alloca i32, align 4
  %resultb = alloca i32, align 4
  %move = alloca i32, align 4
  %color = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %bpos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %5
  %cmp5 = icmp ne i32 %conv4, %sub
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @reset_engine()
  %6 = load i32, i32* %apos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  call void @silent_examine_position(i32 %conv9, i32 3)
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i32 1, i32* @count_variations, align 4
  call void @reading_cache_clear()
  %8 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %9 = load i32, i32* %apos.addr, align 4
  %10 = load i32, i32* %bpos.addr, align 4
  call void @owl_analyze_semeai(i32 %9, i32 %10, i32* %resulta, i32* %resultb, i32* %move, i32 1)
  %11 = load i32, i32* %color, align 4
  %cmp13 = icmp eq i32 %11, 2
  %cond = select i1 %cmp13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)
  %12 = load i32, i32* %move, align 4
  %13 = load i32, i32* %apos.addr, align 4
  %14 = load i32, i32* %resulta, align 4
  %call15 = call i8* @safety_to_string(i32 %14)
  %15 = load i32, i32* %bpos.addr, align 4
  %16 = load i32, i32* %resultb, align 4
  %call16 = call i8* @safety_to_string(i32 %16)
  %17 = load i32, i32* @count_variations, align 4
  %call17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i32 0, i32 0), i8* %cond, i32 %12, i32 %13, i8* %call15, i32 %15, i8* %call16, i32 %17)
  %18 = load i32, i32* %bpos.addr, align 4
  %19 = load i32, i32* %apos.addr, align 4
  call void @owl_analyze_semeai(i32 %18, i32 %19, i32* %resultb, i32* %resulta, i32* %move, i32 1)
  %20 = load i32, i32* %color, align 4
  %cmp18 = icmp eq i32 %20, 2
  %cond20 = select i1 %cmp18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)
  %21 = load i32, i32* %move, align 4
  %22 = load i32, i32* %apos.addr, align 4
  %23 = load i32, i32* %resulta, align 4
  %call21 = call i8* @safety_to_string(i32 %23)
  %24 = load i32, i32* %bpos.addr, align 4
  %25 = load i32, i32* %resultb, align 4
  %call22 = call i8* @safety_to_string(i32 %25)
  %26 = load i32, i32* @count_variations, align 4
  %call23 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i32 0, i32 0), i8* %cond20, i32 %21, i32 %22, i8* %call21, i32 %24, i8* %call22, i32 %26)
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

declare void @owl_analyze_semeai(i32, i32, i32*, i32*, i32*, i32) #1

declare i8* @safety_to_string(i32) #1

; Function Attrs: nounwind uwtable
define void @decide_tactical_semeai(i32 %apos, i32 %bpos) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  %resulta = alloca i32, align 4
  %resultb = alloca i32, align 4
  %move = alloca i32, align 4
  %color = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %bpos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %5
  %cmp5 = icmp ne i32 %conv4, %sub
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @reset_engine()
  %6 = load i32, i32* %apos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  call void @silent_examine_position(i32 %conv9, i32 3)
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i32 1, i32* @count_variations, align 4
  call void @reading_cache_clear()
  %8 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %9 = load i32, i32* %apos.addr, align 4
  %10 = load i32, i32* %bpos.addr, align 4
  call void @owl_analyze_semeai(i32 %9, i32 %10, i32* %resulta, i32* %resultb, i32* %move, i32 0)
  %11 = load i32, i32* %color, align 4
  %cmp13 = icmp eq i32 %11, 2
  %cond = select i1 %cmp13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)
  %12 = load i32, i32* %move, align 4
  %13 = load i32, i32* %apos.addr, align 4
  %14 = load i32, i32* %resulta, align 4
  %call15 = call i8* @safety_to_string(i32 %14)
  %15 = load i32, i32* %bpos.addr, align 4
  %16 = load i32, i32* %resultb, align 4
  %call16 = call i8* @safety_to_string(i32 %16)
  %17 = load i32, i32* @count_variations, align 4
  %call17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i32 0, i32 0), i8* %cond, i32 %12, i32 %13, i8* %call15, i32 %15, i8* %call16, i32 %17)
  %18 = load i32, i32* %bpos.addr, align 4
  %19 = load i32, i32* %apos.addr, align 4
  call void @owl_analyze_semeai(i32 %18, i32 %19, i32* %resultb, i32* %resulta, i32* %move, i32 0)
  %20 = load i32, i32* %color, align 4
  %cmp18 = icmp eq i32 %20, 2
  %cond20 = select i1 %cmp18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)
  %21 = load i32, i32* %move, align 4
  %22 = load i32, i32* %apos.addr, align 4
  %23 = load i32, i32* %resulta, align 4
  %call21 = call i8* @safety_to_string(i32 %23)
  %24 = load i32, i32* %bpos.addr, align 4
  %25 = load i32, i32* %resultb, align 4
  %call22 = call i8* @safety_to_string(i32 %25)
  %26 = load i32, i32* @count_variations, align 4
  %call23 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i32 0, i32 0), i8* %cond20, i32 %21, i32 %22, i8* %call21, i32 %24, i8* %call22, i32 %26)
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @decide_position(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %move = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %kworm = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %move, align 4
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %dcode, align 4
  call void @reset_engine()
  %0 = load i32, i32* %color.addr, align 4
  call void @silent_examine_position(i32 %0, i32 3)
  call void @reading_cache_clear()
  %1 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @count_variations, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 2
  %6 = load i32, i32* %origin, align 4
  %7 = load i32, i32* %pos, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %if.then.20, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.20, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.7
  %10 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom14
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx15, i32 0, i32 1
  %11 = load i32, i32* %id, align 4
  %idxprom16 = sext i32 %11 to i64
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx17 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %idxprom16
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx17, i32 0, i32 9
  %13 = load i32, i32* %escape_route, align 4
  %cmp18 = icmp sge i32 %13, 6
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.7, %lor.lhs.false, %for.body
  br label %for.inc

if.end.21:                                        ; preds = %lor.lhs.false.13
  %14 = load i32, i32* %pos, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom22
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx23, i32 0, i32 5
  %16 = load i32, i32* %crude_status, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [4 x i8*], [4 x i8*]* @decide_position.snames, i32 0, i64 %idxprom24
  %17 = load i8*, i8** %arrayidx25, align 8
  %18 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom26
  %id28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx27, i32 0, i32 1
  %19 = load i32, i32* %id28, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx30 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %20, i64 %idxprom29
  %escape_route31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx30, i32 0, i32 9
  %21 = load i32, i32* %escape_route31, align 4
  %call32 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), i8* %17, i32 %21)
  %22 = load i32, i32* %pos, align 4
  %call33 = call i32 @owl_attack(i32 %22, i32* %move, i32* null, i32* %kworm)
  store i32 %call33, i32* %acode, align 4
  %23 = load i32, i32* %acode, align 4
  %tobool34 = icmp ne i32 %23, 0
  br i1 %tobool34, label %if.then.35, label %if.else.99

if.then.35:                                       ; preds = %if.end.21
  %24 = load i32, i32* %acode, align 4
  %cmp36 = icmp eq i32 %24, 5
  br i1 %cmp36, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %if.then.35
  %25 = load i32, i32* %move, align 4
  %cmp39 = icmp eq i32 %25, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.38
  %26 = load i32, i32* %pos, align 4
  %call42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i32 %26)
  br label %if.end.44

if.else:                                          ; preds = %if.then.38
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %move, align 4
  %29 = load i32, i32* @count_variations, align 4
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %27, i32 %28, i32 %29)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.41
  br label %if.end.63

if.else.45:                                       ; preds = %if.then.35
  %30 = load i32, i32* %acode, align 4
  %cmp46 = icmp eq i32 %30, 4
  br i1 %cmp46, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.45
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %move, align 4
  %33 = load i32, i32* @count_variations, align 4
  %call49 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0), i32 %31, i32 %32, i32 %33)
  br label %if.end.62

if.else.50:                                       ; preds = %if.else.45
  %34 = load i32, i32* %acode, align 4
  %cmp51 = icmp eq i32 %34, 1
  br i1 %cmp51, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.else.50
  %35 = load i32, i32* %pos, align 4
  %36 = load i32, i32* %move, align 4
  %37 = load i32, i32* @count_variations, align 4
  %call54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i32 %35, i32 %36, i32 %37)
  br label %if.end.61

if.else.55:                                       ; preds = %if.else.50
  %38 = load i32, i32* %acode, align 4
  %cmp56 = icmp eq i32 %38, 3
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.else.55
  %39 = load i32, i32* %pos, align 4
  %40 = load i32, i32* %kworm, align 4
  %41 = load i32, i32* %move, align 4
  %42 = load i32, i32* @count_variations, align 4
  %call59 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i32 0, i32 0), i32 %39, i32 %40, i32 %41, i32 %42)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.48
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.44
  store i32 1, i32* @count_variations, align 4
  %43 = load i32, i32* %pos, align 4
  %call64 = call i32 @owl_defend(i32 %43, i32* %move, i32* null, i32* %kworm)
  store i32 %call64, i32* %dcode, align 4
  %44 = load i32, i32* %dcode, align 4
  %tobool65 = icmp ne i32 %44, 0
  br i1 %tobool65, label %if.then.66, label %if.else.96

if.then.66:                                       ; preds = %if.end.63
  %45 = load i32, i32* %dcode, align 4
  %cmp67 = icmp eq i32 %45, 5
  br i1 %cmp67, label %if.then.69, label %if.else.77

if.then.69:                                       ; preds = %if.then.66
  %46 = load i32, i32* %move, align 4
  %cmp70 = icmp eq i32 %46, 0
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %if.then.69
  %47 = load i32, i32* %pos, align 4
  %call73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i32 %47)
  br label %if.end.76

if.else.74:                                       ; preds = %if.then.69
  %48 = load i32, i32* %pos, align 4
  %49 = load i32, i32* %move, align 4
  %50 = load i32, i32* @count_variations, align 4
  %call75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 %48, i32 %49, i32 %50)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.72
  br label %if.end.95

if.else.77:                                       ; preds = %if.then.66
  %51 = load i32, i32* %dcode, align 4
  %cmp78 = icmp eq i32 %51, 4
  br i1 %cmp78, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.else.77
  %52 = load i32, i32* %pos, align 4
  %53 = load i32, i32* %move, align 4
  %54 = load i32, i32* @count_variations, align 4
  %call81 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0), i32 %52, i32 %53, i32 %54)
  br label %if.end.94

if.else.82:                                       ; preds = %if.else.77
  %55 = load i32, i32* %dcode, align 4
  %cmp83 = icmp eq i32 %55, 1
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.82
  %56 = load i32, i32* %pos, align 4
  %57 = load i32, i32* %move, align 4
  %58 = load i32, i32* @count_variations, align 4
  %call86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0), i32 %56, i32 %57, i32 %58)
  br label %if.end.93

if.else.87:                                       ; preds = %if.else.82
  %59 = load i32, i32* %dcode, align 4
  %cmp88 = icmp eq i32 %59, 2
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.else.87
  %60 = load i32, i32* %pos, align 4
  %61 = load i32, i32* %kworm, align 4
  %62 = load i32, i32* %move, align 4
  %63 = load i32, i32* @count_variations, align 4
  %call91 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i32 0, i32 0), i32 %60, i32 %61, i32 %62, i32 %63)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.else.87
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.85
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.80
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.76
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.63
  %64 = load i32, i32* %pos, align 4
  %65 = load i32, i32* @count_variations, align 4
  %call97 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %64, i32 %65)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.end.95
  br label %if.end.101

if.else.99:                                       ; preds = %if.end.21
  %66 = load i32, i32* %pos, align 4
  %67 = load i32, i32* @count_variations, align 4
  %call100 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), i32 %66, i32 %67)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.end.98
  %68 = load i32, i32* %acode, align 4
  %tobool102 = icmp ne i32 %68, 0
  br i1 %tobool102, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.end.101
  %69 = load i32, i32* %dcode, align 4
  %tobool104 = icmp ne i32 %69, 0
  br i1 %tobool104, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.then.103
  %70 = load i32, i32* %pos, align 4
  %call106 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i32 0, i32 0), i32 %70)
  br label %if.end.109

if.else.107:                                      ; preds = %if.then.103
  %71 = load i32, i32* %pos, align 4
  %call108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i32 %71)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.105
  br label %if.end.112

if.else.110:                                      ; preds = %if.end.101
  %72 = load i32, i32* %pos, align 4
  %call111 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 %72)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.end.109
  br label %for.inc

for.inc:                                          ; preds = %if.end.112, %if.then.20
  %73 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @decide_eye(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %value = alloca %struct.eyevalue, align 1
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %eyepos = alloca i32, align 4
  %tree = alloca %struct.SGFTree_t, align 8
  store i32 %pos, i32* %pos.addr, align 4
  call void @reset_engine()
  call void @silent_examine_position(i32 2, i32 3)
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom
  %color1 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %color1, align 4
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %color, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom2
  %color4 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx3, i32 0, i32 0
  %3 = load i32, i32* %color4, align 4
  %cmp5 = icmp eq i32 %3, 4
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %color, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %4 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i32 0, i32 0), i32 %4)
  br label %return

if.end:                                           ; preds = %if.then.6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %5 = load i32, i32* @printboard, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.8
  call void @showboard(i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.8
  %6 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool11 = icmp ne i8 %6, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  store i32 1, i32* @count_variations, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom14
  %color16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx15, i32 0, i32 0
  %8 = load i32, i32* %color16, align 4
  %cmp17 = icmp eq i32 %8, 5
  br i1 %cmp17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end.13
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom19
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx20, i32 0, i32 3
  %10 = load i32, i32* %origin, align 4
  store i32 %10, i32* %eyepos, align 4
  %11 = load i32, i32* %eyepos, align 4
  call void @compute_eyes(i32 %11, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 0, i32 0)
  %12 = load i32, i32* %eyepos, align 4
  %call21 = call i8* @eyevalue_to_string(%struct.eyevalue* %value)
  %call22 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 %12, i8* %call21)
  %call23 = call i32 @eye_move_urgency(%struct.eyevalue* %value)
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.18
  %13 = load i32, i32* %attack_point, align 4
  %14 = load i32, i32* %defense_point, align 4
  %call26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0), i32 %13, i32 %14)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.13
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom29
  %color31 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 0
  %16 = load i32, i32* %color31, align 4
  %cmp32 = icmp eq i32 %16, 4
  br i1 %cmp32, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.end.28
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom34
  %origin36 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx35, i32 0, i32 3
  %18 = load i32, i32* %origin36, align 4
  store i32 %18, i32* %eyepos, align 4
  %19 = load i32, i32* %eyepos, align 4
  call void @compute_eyes(i32 %19, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i32 0, i32 0), i32 0, i32 0)
  %20 = load i32, i32* %eyepos, align 4
  %call37 = call i8* @eyevalue_to_string(%struct.eyevalue* %value)
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i32 %20, i8* %call37)
  %call39 = call i32 @eye_move_urgency(%struct.eyevalue* %value)
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.33
  %21 = load i32, i32* %attack_point, align 4
  %22 = load i32, i32* %defense_point, align 4
  %call42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0), i32 %21, i32 %22)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.28
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  br label %return

return:                                           ; preds = %if.end.44, %if.else.7
  ret void
}

declare void @showboard(i32) #1

declare void @compute_eyes(i32, %struct.eyevalue*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*, i32, i32) #1

declare i8* @eyevalue_to_string(%struct.eyevalue*) #1

declare i32 @eye_move_urgency(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define void @decide_combination(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %attack_move = alloca i32, align 4
  %defense_moves = alloca [400 x i8], align 16
  %tree = alloca %struct.SGFTree_t, align 8
  %first = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 1, i32* %first, align 4
  call void @reset_engine()
  %0 = load i32, i32* %color.addr, align 4
  call void @silent_examine_position(i32 %0, i32 99)
  %1 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0), align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sgffile_begindump(%struct.SGFTree_t* %tree)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @count_variations, align 4
  %2 = load i32, i32* %color.addr, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %defense_moves, i32 0, i32 0
  %3 = load i32, i32* @verbose, align 4
  %call = call i32 @atari_atari(i32 %2, i32* %attack_move, i8* %arraydecay, i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else.18

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %color.addr, align 4
  %5 = load i32, i32* %attack_move, align 4
  %call3 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i32 0, i32 0), i32 %4, i32 %5)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %6 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %6, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [400 x i8], [400 x i8]* %defense_moves, i32 0, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %first, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  store i32 0, i32* %first, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.10
  %call13 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  %12 = load i32, i32* %pos, align 4
  %call15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %13 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.20

if.else.18:                                       ; preds = %if.end
  %14 = load i32, i32* %color.addr, align 4
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i32 0, i32 0), i32 %14)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %for.end
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  store i32 0, i32* @count_variations, align 4
  ret void
}

declare i32 @atari_atari(i32, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @decide_surrounded(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %surround_status = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.17

if.end:                                           ; preds = %entry
  call void @reset_engine()
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  call void @silent_examine_position(i32 %conv4, i32 99)
  %5 = load i32, i32* %pos.addr, align 4
  %call5 = call i32 @compute_surroundings(i32 %5, i32 0, i32 1, i32* null)
  store i32 %call5, i32* %surround_status, align 4
  %6 = load i32, i32* %surround_status, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i32 %7)
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %surround_status, align 4
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else
  %9 = load i32, i32* %pos.addr, align 4
  %call13 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 %9)
  br label %if.end.16

if.else.14:                                       ; preds = %if.else
  %10 = load i32, i32* %pos.addr, align 4
  %call15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i32 0, i32 0), i32 %10)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.then, %if.end.16, %if.then.8
  ret void
}

declare i32 @compute_surroundings(i32, i32, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
