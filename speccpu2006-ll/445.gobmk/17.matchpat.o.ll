; ModuleID = 'engine/matchpat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fullboard_pattern = type { %struct.patval*, i32, i8*, i32, float }

@transformation2 = external constant [8 x [2 x [2 x i32]]], align 16
@spiral = external global [1764 x [8 x i32]], align 16
@owl_vital_apat_db = external global %struct.pattern_db, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"owl_vital_apat --> using dfa\0A\00", align 1
@owl_attackpat_db = external global %struct.pattern_db, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"owl_attackpat --> using dfa\0A\00", align 1
@owl_defendpat_db = external global %struct.pattern_db, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"owl_defendpat --> using dfa\0A\00", align 1
@pat_db = external global %struct.pattern_db, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"pat --> using dfa\0A\00", align 1
@attpat_db = external global %struct.pattern_db, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"attpat --> using dfa\0A\00", align 1
@defpat_db = external global %struct.pattern_db, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"defpat --> using dfa\0A\00", align 1
@endpat_db = external global %struct.pattern_db, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"endpat --> using dfa\0A\00", align 1
@conn_db = external global %struct.pattern_db, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"conn --> using dfa\0A\00", align 1
@influencepat_db = external global %struct.pattern_db, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"influencepat --> using dfa\0A\00", align 1
@barrierspat_db = external global %struct.pattern_db, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"barrierspat --> using dfa\0A\00", align 1
@fusekipat_db = external global %struct.pattern_db, align 8
@dfa_board_size = internal global i32 -1, align 4
@board_size = external global i32, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"engine/matchpat.c\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"color != 0\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"board_size % 2 == 1\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@board = external global [421 x i8], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ON_BOARD1(anchor)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"pattern->patn\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"---\0Aconsidering pattern '%s', rotation %d at %1m. Range %d,%d -> %d,%d\0A\00", align 1
@and_mask = internal constant [2 x [8 x i32]] [[8 x i32] [i32 3, i32 3, i32 3, i32 1, i32 2, i32 3, i32 3, i32 3], [8 x i32] [i32 3, i32 3, i32 3, i32 2, i32 1, i32 3, i32 3, i32 3]], align 16
@val_mask = internal constant [2 x [8 x i32]] [[8 x i32] [i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@class_mask = internal global [4 x [3 x i32]] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [45 x i8] c"end of pattern '%s', rotation %d at %1m\0A---\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"maxr < DFA_MAX_MATCHED\00", align 1
@dfa_p = external global [7056 x i32], align 16
@.str.19 = private unnamed_addr constant [16 x i8] c"row < MAX_ORDER\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"dragon[pos].status < 4\00", align 1
@convert = external constant [3 x [4 x i32]], align 16

; Function Attrs: nounwind uwtable
define void @transform2(i32 %i, i32 %j, i32* %ti, i32* %tj, i32 %trans) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %ti.addr = alloca i32*, align 8
  %tj.addr = alloca i32*, align 8
  %trans.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32* %ti, i32** %ti.addr, align 8
  store i32* %tj, i32** %tj.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx1, i32 0, i64 0
  %1 = load i32, i32* %arrayidx2, align 4
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %trans.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 1
  %4 = load i32, i32* %arrayidx6, align 4
  %5 = load i32, i32* %j.addr, align 4
  %mul7 = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, %mul7
  %6 = load i32*, i32** %ti.addr, align 8
  store i32 %add, i32* %6, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %8 = load i32, i32* %arrayidx11, align 4
  %9 = load i32, i32* %i.addr, align 4
  %mul12 = mul nsw i32 %8, %9
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx15, i32 0, i64 1
  %11 = load i32, i32* %arrayidx16, align 4
  %12 = load i32, i32* %j.addr, align 4
  %mul17 = mul nsw i32 %11, %12
  %add18 = add nsw i32 %mul12, %mul17
  %13 = load i32*, i32** %tj.addr, align 8
  store i32 %add18, i32* %13, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfa_match_init() #0 {
entry:
  call void @buildSpiralOrder([8 x i32]* getelementptr inbounds ([1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i32 0))
  %0 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_vital_apat_db, i32 0, i32 3), align 8
  %cmp = icmp ne %struct.dfa_rt* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %2 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_attackpat_db, i32 0, i32 3), align 8
  %cmp1 = icmp ne %struct.dfa_rt* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* @debug, align 4
  %and3 = and i32 %3, 16
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.false.6, label %cond.true.5

cond.true.5:                                      ; preds = %if.then.2
  br label %cond.end.8

cond.false.6:                                     ; preds = %if.then.2
  %call7 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.5
  br label %if.end.9

if.end.9:                                         ; preds = %cond.end.8, %if.end
  %4 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_defendpat_db, i32 0, i32 3), align 8
  %cmp10 = icmp ne %struct.dfa_rt* %4, null
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.9
  %5 = load i32, i32* @debug, align 4
  %and12 = and i32 %5, 16
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.false.15, label %cond.true.14

cond.true.14:                                     ; preds = %if.then.11
  br label %cond.end.17

cond.false.15:                                    ; preds = %if.then.11
  %call16 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  br label %if.end.18

if.end.18:                                        ; preds = %cond.end.17, %if.end.9
  %6 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @pat_db, i32 0, i32 3), align 8
  %cmp19 = icmp ne %struct.dfa_rt* %6, null
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.18
  %7 = load i32, i32* @debug, align 4
  %and21 = and i32 %7, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %cond.false.24, label %cond.true.23

cond.true.23:                                     ; preds = %if.then.20
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.then.20
  %call25 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  br label %if.end.27

if.end.27:                                        ; preds = %cond.end.26, %if.end.18
  %8 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @attpat_db, i32 0, i32 3), align 8
  %cmp28 = icmp ne %struct.dfa_rt* %8, null
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end.27
  %9 = load i32, i32* @debug, align 4
  %and30 = and i32 %9, 16
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.false.33, label %cond.true.32

cond.true.32:                                     ; preds = %if.then.29
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.then.29
  %call34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end.35, %if.end.27
  %10 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @defpat_db, i32 0, i32 3), align 8
  %cmp37 = icmp ne %struct.dfa_rt* %10, null
  br i1 %cmp37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.36
  %11 = load i32, i32* @debug, align 4
  %and39 = and i32 %11, 16
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %cond.false.42, label %cond.true.41

cond.true.41:                                     ; preds = %if.then.38
  br label %cond.end.44

cond.false.42:                                    ; preds = %if.then.38
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.41
  br label %if.end.45

if.end.45:                                        ; preds = %cond.end.44, %if.end.36
  %12 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @endpat_db, i32 0, i32 3), align 8
  %cmp46 = icmp ne %struct.dfa_rt* %12, null
  br i1 %cmp46, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.end.45
  %13 = load i32, i32* @debug, align 4
  %and48 = and i32 %13, 16
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.false.51, label %cond.true.50

cond.true.50:                                     ; preds = %if.then.47
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.then.47
  %call52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.53, %if.end.45
  %14 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @conn_db, i32 0, i32 3), align 8
  %cmp55 = icmp ne %struct.dfa_rt* %14, null
  br i1 %cmp55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.end.54
  %15 = load i32, i32* @debug, align 4
  %and57 = and i32 %15, 16
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %cond.false.60, label %cond.true.59

cond.true.59:                                     ; preds = %if.then.56
  br label %cond.end.62

cond.false.60:                                    ; preds = %if.then.56
  %call61 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  br label %if.end.63

if.end.63:                                        ; preds = %cond.end.62, %if.end.54
  %16 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @influencepat_db, i32 0, i32 3), align 8
  %cmp64 = icmp ne %struct.dfa_rt* %16, null
  br i1 %cmp64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.end.63
  %17 = load i32, i32* @debug, align 4
  %and66 = and i32 %17, 16
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.false.69, label %cond.true.68

cond.true.68:                                     ; preds = %if.then.65
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.then.65
  %call70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.68
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.71, %if.end.63
  %18 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @barrierspat_db, i32 0, i32 3), align 8
  %cmp73 = icmp ne %struct.dfa_rt* %18, null
  br i1 %cmp73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.72
  %19 = load i32, i32* @debug, align 4
  %and75 = and i32 %19, 16
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %cond.false.78, label %cond.true.77

cond.true.77:                                     ; preds = %if.then.74
  br label %cond.end.80

cond.false.78:                                    ; preds = %if.then.74
  %call79 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.77
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.80, %if.end.72
  %20 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @fusekipat_db, i32 0, i32 3), align 8
  %cmp82 = icmp ne %struct.dfa_rt* %20, null
  br i1 %cmp82, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.end.81
  %21 = load i32, i32* @debug, align 4
  %and84 = and i32 %21, 16
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %cond.false.87, label %cond.true.86

cond.true.86:                                     ; preds = %if.then.83
  br label %cond.end.89

cond.false.87:                                    ; preds = %if.then.83
  %call88 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.86
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.89, %if.end.81
  store i32 -1, i32* @dfa_board_size, align 4
  ret void
}

declare void @buildSpiralOrder([8 x i32]*) #1

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, %struct.pattern_db* %pdb, i8* %callback_data, i8* %goal) #0 {
entry:
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %pdb.addr = alloca %struct.pattern_db*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern_db* %pdb, %struct.pattern_db** %pdb.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  %0 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %1 = load i32, i32* %color.addr, align 4
  %2 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %3 = load i8*, i8** %callback_data.addr, align 8
  %4 = load i8*, i8** %goal.addr, align 8
  %5 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %fixed_anchor = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %5, i32 0, i32 1
  %6 = load i32, i32* %fixed_anchor, align 4
  call void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* %0, i32 %1, %struct.pattern_db* %2, i8* %3, i8* %4, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, %struct.pattern_db* %pdb, i8* %callback_data, i8* %goal, i32 %anchor_in_goal) #0 {
entry:
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %pdb.addr = alloca %struct.pattern_db*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_in_goal.addr = alloca i32, align 4
  %loop = alloca void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, align 8
  %prepare = alloca void (i32)*, align 8
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern_db* %pdb, %struct.pattern_db** %pdb.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %anchor_in_goal, i32* %anchor_in_goal.addr, align 4
  store void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)* @matchpat_loop, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  store void (i32)* @prepare_for_match, void (i32)** %prepare, align 8
  %0 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %fixed_for_size = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %0, i32 0, i32 0
  %1 = load i32, i32* %fixed_for_size, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %patterns = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %3, i32 0, i32 2
  %4 = load %struct.pattern*, %struct.pattern** %patterns, align 8
  call void @fixup_patterns_for_board_size(%struct.pattern* %4)
  %5 = load i32, i32* @board_size, align 4
  %6 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %fixed_for_size1 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %6, i32 0, i32 0
  store i32 %5, i32* %fixed_for_size1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %pdfa = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %7, i32 0, i32 3
  %8 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa, align 8
  %cmp2 = icmp ne %struct.dfa_rt* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)* @dfa_matchpat_loop, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  store void (i32)* @dfa_prepare_for_match, void (i32)** %prepare, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i32, i32* %color.addr, align 4
  switch i32 %9, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.4
  %10 = load void (i32)*, void (i32)** %prepare, align 8
  call void %10(i32 1)
  %11 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %12 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %13 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %14 = load i8*, i8** %callback_data.addr, align 8
  %15 = load i8*, i8** %goal.addr, align 8
  %16 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %11(void (i32, i32, %struct.pattern*, i32, i8*)* %12, i32 1, i32 1, %struct.pattern_db* %13, i8* %14, i8* %15, i32 %16)
  %17 = load void (i32)*, void (i32)** %prepare, align 8
  call void %17(i32 2)
  %18 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %19 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %20 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %21 = load i8*, i8** %callback_data.addr, align 8
  %22 = load i8*, i8** %goal.addr, align 8
  %23 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %18(void (i32, i32, %struct.pattern*, i32, i8*)* %19, i32 2, i32 2, %struct.pattern_db* %20, i8* %21, i8* %22, i32 %23)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.4
  %24 = load void (i32)*, void (i32)** %prepare, align 8
  call void %24(i32 1)
  %25 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %26 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %27 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %28 = load i8*, i8** %callback_data.addr, align 8
  %29 = load i8*, i8** %goal.addr, align 8
  %30 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %25(void (i32, i32, %struct.pattern*, i32, i8*)* %26, i32 1, i32 2, %struct.pattern_db* %27, i8* %28, i8* %29, i32 %30)
  %31 = load void (i32)*, void (i32)** %prepare, align 8
  call void %31(i32 2)
  %32 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %33 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %34 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %35 = load i8*, i8** %callback_data.addr, align 8
  %36 = load i8*, i8** %goal.addr, align 8
  %37 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %32(void (i32, i32, %struct.pattern*, i32, i8*)* %33, i32 2, i32 1, %struct.pattern_db* %34, i8* %35, i8* %36, i32 %37)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  %38 = load void (i32)*, void (i32)** %prepare, align 8
  %39 = load i32, i32* %color.addr, align 4
  call void %38(i32 %39)
  %40 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %41 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %42 = load i32, i32* %color.addr, align 4
  %43 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %44 = load i8*, i8** %callback_data.addr, align 8
  %45 = load i8*, i8** %goal.addr, align 8
  %46 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %40(void (i32, i32, %struct.pattern*, i32, i8*)* %41, i32 %42, i32 1, %struct.pattern_db* %43, i8* %44, i8* %45, i32 %46)
  %47 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %loop, align 8
  %48 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %49 = load i32, i32* %color.addr, align 4
  %50 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %51 = load i8*, i8** %callback_data.addr, align 8
  %52 = load i8*, i8** %goal.addr, align 8
  %53 = load i32, i32* %anchor_in_goal.addr, align 4
  call void %47(void (i32, i32, %struct.pattern*, i32, i8*)* %48, i32 %49, i32 2, %struct.pattern_db* %50, i8* %51, i8* %52, i32 %53)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @matchpat_loop(void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, i32 %anchor, %struct.pattern_db* %pdb, i8* %callback_data, i8* %goal, i32 %anchor_in_goal) #0 {
entry:
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %pdb.addr = alloca %struct.pattern_db*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_in_goal.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store %struct.pattern_db* %pdb, %struct.pattern_db** %pdb.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %anchor_in_goal, i32* %anchor_in_goal.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %anchor.addr, align 4
  %cmp1 = icmp eq i32 %conv, %3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %anchor_in_goal.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %goal.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load i32, i32* %pos, align 4
  %9 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %10 = load i32, i32* %color.addr, align 4
  %11 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %patterns = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %11, i32 0, i32 2
  %12 = load %struct.pattern*, %struct.pattern** %patterns, align 8
  %13 = load i8*, i8** %callback_data.addr, align 8
  %14 = load i8*, i8** %goal.addr, align 8
  call void @do_matchpat(i32 %8, void (i32, i32, %struct.pattern*, i32, i8*)* %9, i32 %10, %struct.pattern* %12, i8* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_match(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %color.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %color.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 0), i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %3 = load i32, i32* %other, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 0), i32 0, i64 %idxprom1
  store i32 4, i32* %arrayidx2, align 4
  %4 = load i32, i32* %color.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 2), i32 0, i64 %idxprom3
  store i32 1, i32* %arrayidx4, align 4
  %5 = load i32, i32* %other, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 2), i32 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  %6 = load i32, i32* %color.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 1), i32 0, i64 %idxprom7
  store i32 2, i32* %arrayidx8, align 4
  %7 = load i32, i32* %other, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 1), i32 0, i64 %idxprom9
  store i32 8, i32* %arrayidx10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixup_patterns_for_board_size(%struct.pattern* %pattern) #0 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 0
  %1 = load %struct.patval*, %struct.patval** %patn, align 8
  %tobool = icmp ne %struct.patval* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 10
  %3 = load i32, i32* %edge_constraints, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.91

if.then:                                          ; preds = %for.body
  %4 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints1 = getelementptr inbounds %struct.pattern, %struct.pattern* %4, i32 0, i32 10
  %5 = load i32, i32* %edge_constraints1, align 4
  %and = and i32 %5, 1
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 4
  %7 = load i32, i32* %mini, align 4
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %height = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 8
  %9 = load i32, i32* %height, align 4
  %add = add nsw i32 %7, %9
  %10 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 6
  store i32 %add, i32* %maxi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints4 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 10
  %12 = load i32, i32* %edge_constraints4, align 4
  %and5 = and i32 %12, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi8 = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 6
  %14 = load i32, i32* %maxi8, align 4
  %15 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %height9 = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 8
  %16 = load i32, i32* %height9, align 4
  %sub = sub nsw i32 %14, %16
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini10 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 4
  store i32 %sub, i32* %mini10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %18 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints12 = getelementptr inbounds %struct.pattern, %struct.pattern* %18, i32 0, i32 10
  %19 = load i32, i32* %edge_constraints12, align 4
  %and13 = and i32 %19, 8
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %20 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj = getelementptr inbounds %struct.pattern, %struct.pattern* %20, i32 0, i32 5
  %21 = load i32, i32* %minj, align 4
  %22 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %width = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 9
  %23 = load i32, i32* %width, align 4
  %add16 = add nsw i32 %21, %23
  %24 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj = getelementptr inbounds %struct.pattern, %struct.pattern* %24, i32 0, i32 7
  store i32 %add16, i32* %maxj, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.11
  %25 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints18 = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 10
  %26 = load i32, i32* %edge_constraints18, align 4
  %and19 = and i32 %26, 4
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.17
  %27 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj22 = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 7
  %28 = load i32, i32* %maxj22, align 4
  %29 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %width23 = getelementptr inbounds %struct.pattern, %struct.pattern* %29, i32 0, i32 9
  %30 = load i32, i32* %width23, align 4
  %sub24 = sub nsw i32 %28, %30
  %31 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj25 = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 5
  store i32 %sub24, i32* %minj25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.17
  %32 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints27 = getelementptr inbounds %struct.pattern, %struct.pattern* %32, i32 0, i32 10
  %33 = load i32, i32* %edge_constraints27, align 4
  %and28 = and i32 %33, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %if.end.26
  %34 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi31 = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 6
  %35 = load i32, i32* %maxi31, align 4
  %36 = load i32, i32* @board_size, align 4
  %sub32 = sub nsw i32 %36, 1
  %37 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini33 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 4
  %38 = load i32, i32* %mini33, align 4
  %add34 = add nsw i32 %sub32, %38
  %cmp35 = icmp slt i32 %35, %add34
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.then.30
  %39 = load i32, i32* @board_size, align 4
  %sub37 = sub nsw i32 %39, 1
  %40 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini38 = getelementptr inbounds %struct.pattern, %struct.pattern* %40, i32 0, i32 4
  %41 = load i32, i32* %mini38, align 4
  %add39 = add nsw i32 %sub37, %41
  %42 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi40 = getelementptr inbounds %struct.pattern, %struct.pattern* %42, i32 0, i32 6
  store i32 %add39, i32* %maxi40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.then.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.26
  %43 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints43 = getelementptr inbounds %struct.pattern, %struct.pattern* %43, i32 0, i32 10
  %44 = load i32, i32* %edge_constraints43, align 4
  %and44 = and i32 %44, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %if.end.42
  %45 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini47 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 4
  %46 = load i32, i32* %mini47, align 4
  %47 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi48 = getelementptr inbounds %struct.pattern, %struct.pattern* %47, i32 0, i32 6
  %48 = load i32, i32* %maxi48, align 4
  %49 = load i32, i32* @board_size, align 4
  %sub49 = sub nsw i32 %49, 1
  %sub50 = sub nsw i32 %48, %sub49
  %cmp51 = icmp sgt i32 %46, %sub50
  br i1 %cmp51, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.then.46
  %50 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi53 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 6
  %51 = load i32, i32* %maxi53, align 4
  %52 = load i32, i32* @board_size, align 4
  %sub54 = sub nsw i32 %52, 1
  %sub55 = sub nsw i32 %51, %sub54
  %53 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini56 = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 4
  store i32 %sub55, i32* %mini56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.then.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.42
  %54 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints59 = getelementptr inbounds %struct.pattern, %struct.pattern* %54, i32 0, i32 10
  %55 = load i32, i32* %edge_constraints59, align 4
  %and60 = and i32 %55, 8
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %if.end.58
  %56 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj63 = getelementptr inbounds %struct.pattern, %struct.pattern* %56, i32 0, i32 7
  %57 = load i32, i32* %maxj63, align 4
  %58 = load i32, i32* @board_size, align 4
  %sub64 = sub nsw i32 %58, 1
  %59 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj65 = getelementptr inbounds %struct.pattern, %struct.pattern* %59, i32 0, i32 5
  %60 = load i32, i32* %minj65, align 4
  %add66 = add nsw i32 %sub64, %60
  %cmp67 = icmp slt i32 %57, %add66
  br i1 %cmp67, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.then.62
  %61 = load i32, i32* @board_size, align 4
  %sub69 = sub nsw i32 %61, 1
  %62 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj70 = getelementptr inbounds %struct.pattern, %struct.pattern* %62, i32 0, i32 5
  %63 = load i32, i32* %minj70, align 4
  %add71 = add nsw i32 %sub69, %63
  %64 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj72 = getelementptr inbounds %struct.pattern, %struct.pattern* %64, i32 0, i32 7
  store i32 %add71, i32* %maxj72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.then.62
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.58
  %65 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %edge_constraints75 = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 10
  %66 = load i32, i32* %edge_constraints75, align 4
  %and76 = and i32 %66, 4
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %if.end.74
  %67 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj79 = getelementptr inbounds %struct.pattern, %struct.pattern* %67, i32 0, i32 5
  %68 = load i32, i32* %minj79, align 4
  %69 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj80 = getelementptr inbounds %struct.pattern, %struct.pattern* %69, i32 0, i32 7
  %70 = load i32, i32* %maxj80, align 4
  %71 = load i32, i32* @board_size, align 4
  %sub81 = sub nsw i32 %71, 1
  %sub82 = sub nsw i32 %70, %sub81
  %cmp83 = icmp sgt i32 %68, %sub82
  br i1 %cmp83, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.then.78
  %72 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj85 = getelementptr inbounds %struct.pattern, %struct.pattern* %72, i32 0, i32 7
  %73 = load i32, i32* %maxj85, align 4
  %74 = load i32, i32* @board_size, align 4
  %sub86 = sub nsw i32 %74, 1
  %sub87 = sub nsw i32 %73, %sub86
  %75 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj88 = getelementptr inbounds %struct.pattern, %struct.pattern* %75, i32 0, i32 5
  store i32 %sub87, i32* %minj88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.then.78
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.74
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %76 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.pattern, %struct.pattern* %76, i32 1
  store %struct.pattern* %incdec.ptr, %struct.pattern** %pattern.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfa_matchpat_loop(void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, i32 %anchor, %struct.pattern_db* %pdb, i8* %callback_data, i8* %goal, i32 %anchor_in_goal) #0 {
entry:
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %anchor.addr = alloca i32, align 4
  %pdb.addr = alloca %struct.pattern_db*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_in_goal.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store %struct.pattern_db* %pdb, %struct.pattern_db** %pdb.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %anchor_in_goal, i32* %anchor_in_goal.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %anchor.addr, align 4
  %cmp1 = icmp eq i32 %conv, %3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %anchor_in_goal.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %goal.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %pdfa = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %8, i32 0, i32 3
  %9 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa, align 8
  %10 = load i32, i32* %pos, align 4
  %11 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %12 = load i32, i32* %color.addr, align 4
  %13 = load %struct.pattern_db*, %struct.pattern_db** %pdb.addr, align 8
  %patterns = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %13, i32 0, i32 2
  %14 = load %struct.pattern*, %struct.pattern** %patterns, align 8
  %15 = load i8*, i8** %callback_data.addr, align 8
  %16 = load i8*, i8** %goal.addr, align 8
  %17 = load i32, i32* %anchor_in_goal.addr, align 4
  call void @do_dfa_matchpat(%struct.dfa_rt* %9, i32 %10, void (i32, i32, %struct.pattern*, i32, i8*)* %11, i32 %12, %struct.pattern* %14, i8* %15, i8* %16, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dfa_prepare_for_match(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @dfa_board_size, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @board_size, align 4
  store i32 %2, i32* @dfa_board_size, align 4
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %ii, align 4
  %cmp1 = icmp slt i32 %3, 7056
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i32 0, i64 %idxprom
  store i32 3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.23, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @dfa_board_size, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end.25

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.20, %for.body.4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @dfa_board_size, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body.7, label %for.end.22

for.body.7:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 20
  %add = add nsw i32 21, %mul
  %11 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %add, %11
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %idxprom11 = zext i8 %12 to i64
  %13 = load i32, i32* %color.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* @convert, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %14 = load i32, i32* %arrayidx14, align 4
  %15 = load i32, i32* %i, align 4
  %mul15 = mul nsw i32 84, %15
  %16 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %mul15, %16
  %add17 = add nsw i32 %add16, 1785
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i32 0, i64 %idxprom18
  store i32 %14, i32* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.7
  %17 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.5

for.end.22:                                       ; preds = %for.cond.5
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %18 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.2

for.end.25:                                       ; preds = %for.cond.2
  %19 = load i32, i32* %color.addr, align 4
  call void @prepare_for_match(i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)* %callback, i32 %color, %struct.fullboard_pattern* %pattern) #0 {
entry:
  %callback.addr = alloca void (i32, %struct.fullboard_pattern*, i32)*, align 8
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.fullboard_pattern*, align 8
  %other = alloca i32, align 4
  %ll = alloca i32, align 4
  %k = alloca i32, align 4
  %mid = alloca i32, align 4
  %number_of_stones_on_board = alloca i32, align 4
  %pos = alloca i32, align 4
  %att = alloca i32, align 4
  %pos63 = alloca i32, align 4
  store void (i32, %struct.fullboard_pattern*, i32)* %callback, void (i32, %struct.fullboard_pattern*, i32)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.fullboard_pattern* %pattern, %struct.fullboard_pattern** %pattern.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @board_size, align 4
  %sub1 = sub nsw i32 %1, 1
  %div = sdiv i32 %sub1, 2
  %mul = mul nsw i32 %div, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* @board_size, align 4
  %sub2 = sub nsw i32 %2, 1
  %div3 = sdiv i32 %sub2, 2
  %add4 = add nsw i32 %add, %div3
  store i32 %add4, i32* %mid, align 4
  %call = call i32 @stones_on_board(i32 3)
  store i32 %call, i32* %number_of_stones_on_board, align 4
  %3 = load i32, i32* %color.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 796, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* @board_size, align 4
  %rem = srem i32 %4, 2
  %cmp5 = icmp eq i32 %rem, 1
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 797, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %if.end.8
  %5 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %5, i32 0, i32 0
  %6 = load %struct.patval*, %struct.patval** %patn, align 8
  %tobool = icmp ne %struct.patval* %6, null
  br i1 %tobool, label %for.body, label %for.end.74

for.body:                                         ; preds = %for.cond
  %7 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %7, i32 0, i32 1
  %8 = load i32, i32* %patlen, align 4
  %9 = load i32, i32* %number_of_stones_on_board, align 4
  %cmp9 = icmp ne i32 %8, %9
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.inc.73

if.end.11:                                        ; preds = %for.body
  store i32 0, i32* %ll, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.70, %if.end.11
  %10 = load i32, i32* %ll, align 4
  %cmp13 = icmp slt i32 %10, 8
  br i1 %cmp13, label %for.body.14, label %for.end.72

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.14
  %11 = load i32, i32* %k, align 4
  %12 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patlen16 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %12, i32 0, i32 1
  %13 = load i32, i32* %patlen16, align 4
  %cmp17 = icmp slt i32 %11, %13
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %14 = load i32, i32* %k, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patn19 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %15, i32 0, i32 0
  %16 = load %struct.patval*, %struct.patval** %patn19, align 8
  %arrayidx = getelementptr inbounds %struct.patval, %struct.patval* %16, i64 %idxprom
  %att20 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx, i32 0, i32 1
  %17 = load i32, i32* %att20, align 4
  store i32 %17, i32* %att, align 4
  %18 = load i32, i32* %ll, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patn23 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %20, i32 0, i32 0
  %21 = load %struct.patval*, %struct.patval** %patn23, align 8
  %arrayidx24 = getelementptr inbounds %struct.patval, %struct.patval* %21, i64 %idxprom22
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx24, i32 0, i32 0
  %22 = load i32, i32* %offset, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx26, i32 0, i64 %idxprom21
  %23 = load i32, i32* %arrayidx27, align 4
  %24 = load i32, i32* %mid, align 4
  %add28 = add nsw i32 %23, %24
  store i32 %add28, i32* %pos, align 4
  %25 = load i32, i32* %pos, align 4
  %cmp29 = icmp ult i32 %25, 421
  br i1 %cmp29, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %for.body.18
  %26 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %27 = load i8, i8* %arrayidx31, align 1
  %conv = zext i8 %27 to i32
  %cmp32 = icmp ne i32 %conv, 3
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true
  br label %if.end.40

if.else.35:                                       ; preds = %land.lhs.true, %for.body.18
  %28 = load i32, i32* %pos, align 4
  %div36 = sdiv i32 %28, 20
  %sub37 = sub nsw i32 %div36, 1
  %29 = load i32, i32* %pos, align 4
  %rem38 = srem i32 %29, 20
  %sub39 = sub nsw i32 %rem38, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 818, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %sub37, i32 %sub39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.35, %if.then.34
  %30 = load i32, i32* %att, align 4
  %cmp41 = icmp eq i32 %30, 2
  br i1 %cmp41, label %land.lhs.true.43, label %lor.lhs.false

land.lhs.true.43:                                 ; preds = %if.end.40
  %31 = load i32, i32* %pos, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom44
  %32 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %32 to i32
  %33 = load i32, i32* %color.addr, align 4
  %cmp47 = icmp ne i32 %conv46, %33
  br i1 %cmp47, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.43, %if.end.40
  %34 = load i32, i32* %att, align 4
  %cmp49 = icmp eq i32 %34, 1
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.58

land.lhs.true.51:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %35 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %36 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %36 to i32
  %37 = load i32, i32* %other, align 4
  %cmp55 = icmp ne i32 %conv54, %37
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.51, %land.lhs.true.43
  br label %for.end

if.end.58:                                        ; preds = %land.lhs.true.51, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.15

for.end:                                          ; preds = %if.then.57, %for.cond.15
  %39 = load i32, i32* %k, align 4
  %40 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %patlen59 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %40, i32 0, i32 1
  %41 = load i32, i32* %patlen59, align 4
  %cmp60 = icmp eq i32 %39, %41
  br i1 %cmp60, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %for.end
  %42 = load i32, i32* %ll, align 4
  %idxprom64 = sext i32 %42 to i64
  %43 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %43, i32 0, i32 3
  %44 = load i32, i32* %move_offset, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx66, i32 0, i64 %idxprom64
  %45 = load i32, i32* %arrayidx67, align 4
  %46 = load i32, i32* %mid, align 4
  %add68 = add nsw i32 %45, %46
  store i32 %add68, i32* %pos63, align 4
  %47 = load void (i32, %struct.fullboard_pattern*, i32)*, void (i32, %struct.fullboard_pattern*, i32)** %callback.addr, align 8
  %48 = load i32, i32* %pos63, align 4
  %49 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %50 = load i32, i32* %ll, align 4
  call void %47(i32 %48, %struct.fullboard_pattern* %49, i32 %50)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.62, %for.end
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %51 = load i32, i32* %ll, align 4
  %inc71 = add nsw i32 %51, 1
  store i32 %inc71, i32* %ll, align 4
  br label %for.cond.12

for.end.72:                                       ; preds = %for.cond.12
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72, %if.then.10
  %52 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %52, i32 1
  store %struct.fullboard_pattern* %incdec.ptr, %struct.fullboard_pattern** %pattern.addr, align 8
  br label %for.cond

for.end.74:                                       ; preds = %for.cond
  ret void
}

declare i32 @stones_on_board(i32) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_matchpat(i32 %anchor, void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, %struct.pattern* %pattern, i8* %callback_data, i8* %goal) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_test = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %merged_val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %shift = alloca i32, align 4
  %this = alloca i32, align 4
  %end_transformation = alloca i32, align 4
  %ll = alloca i32, align 4
  %k = alloca i32, align 4
  %found_goal = alloca i32, align 4
  %found_nongoal = alloca i32, align 4
  %mi = alloca i32, align 4
  %mj = alloca i32, align 4
  %xi = alloca i32, align 4
  %xj = alloca i32, align 4
  %pos = alloca i32, align 4
  %att = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  %0 = load i32, i32* %anchor.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %color.addr, align 4
  %xor = xor i32 %conv, %2
  store i32 %xor, i32* %anchor_test, align 4
  %3 = load i32, i32* %anchor.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %m, align 4
  %4 = load i32, i32* %anchor.addr, align 4
  %rem = srem i32 %4, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %n, align 4
  %5 = load i32, i32* %anchor.addr, align 4
  %cmp = icmp ult i32 %5, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %anchor.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %anchor.addr, align 4
  %div8 = sdiv i32 %8, 20
  %sub9 = sub nsw i32 %div8, 1
  %9 = load i32, i32* %anchor.addr, align 4
  %rem10 = srem i32 %9, 20
  %sub11 = sub nsw i32 %rem10, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %sub9, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 30, i32* %shift, align 4
  store i32 0, i32* %merged_val, align 4
  %10 = load i32, i32* %m, align 4
  %sub12 = sub nsw i32 %10, 1
  store i32 %sub12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %m, align 4
  %add = add nsw i32 %12, 2
  %cmp13 = icmp sle i32 %11, %add
  br i1 %cmp13, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %n, align 4
  %sub15 = sub nsw i32 %13, 1
  store i32 %sub15, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %n, align 4
  %add17 = add nsw i32 %15, 2
  %cmp18 = icmp sle i32 %14, %add17
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.16
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @board_size, align 4
  %cmp21 = icmp ult i32 %16, %17
  br i1 %cmp21, label %land.lhs.true.23, label %if.then.26

land.lhs.true.23:                                 ; preds = %for.body.20
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* @board_size, align 4
  %cmp24 = icmp ult i32 %18, %19
  br i1 %cmp24, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23, %for.body.20
  store i32 3, i32* %this, align 4
  br label %if.end.43

if.else.27:                                       ; preds = %land.lhs.true.23
  %20 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %20, 20
  %add28 = add nsw i32 21, %mul
  %21 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %add28, %21
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %22 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %22 to i32
  store i32 %conv32, i32* %this, align 4
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.27
  br label %for.inc

if.else.36:                                       ; preds = %if.else.27
  %23 = load i32, i32* %color.addr, align 4
  %cmp37 = icmp eq i32 %23, 2
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.36
  %24 = load i32, i32* %this, align 4
  %sub40 = sub i32 3, %24
  store i32 %sub40, i32* %this, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.26
  %25 = load i32, i32* %this, align 4
  %26 = load i32, i32* %shift, align 4
  %shl = shl i32 %25, %26
  %27 = load i32, i32* %merged_val, align 4
  %or = or i32 %27, %shl
  store i32 %or, i32* %merged_val, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then.35
  %28 = load i32, i32* %shift, align 4
  %sub44 = sub nsw i32 %28, 2
  store i32 %sub44, i32* %shift, align 4
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %30, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %31 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 0
  %32 = load %struct.patval*, %struct.patval** %patn, align 8
  %tobool = icmp ne %struct.patval* %32, null
  br i1 %tobool, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %for.end.47
  br label %if.end.50

if.else.49:                                       ; preds = %for.end.47
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.48
  br label %do.body

do.body:                                          ; preds = %do.cond.253, %if.end.50
  %33 = load i32, i32* %anchor_test, align 4
  %34 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %anchored_at_X = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 25
  %35 = load i32, i32* %anchored_at_X, align 4
  %cmp51 = icmp ne i32 %33, %35
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %do.body
  br label %do.cond.253

if.end.54:                                        ; preds = %do.body
  store i32 0, i32* %ll, align 4
  %36 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %trfno = getelementptr inbounds %struct.pattern, %struct.pattern* %36, i32 0, i32 2
  %37 = load i32, i32* %trfno, align 4
  store i32 %37, i32* %end_transformation, align 4
  %38 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %trfno55 = getelementptr inbounds %struct.pattern, %struct.pattern* %38, i32 0, i32 2
  %39 = load i32, i32* %trfno55, align 4
  %cmp56 = icmp eq i32 %39, 5
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  store i32 2, i32* %ll, align 4
  store i32 6, i32* %end_transformation, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.54
  br label %do.body.60

do.body.60:                                       ; preds = %do.cond, %if.end.59
  %40 = load i32, i32* %merged_val, align 4
  %41 = load i32, i32* %ll, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %and_mask = getelementptr inbounds %struct.pattern, %struct.pattern* %42, i32 0, i32 12
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %and_mask, i32 0, i64 %idxprom61
  %43 = load i32, i32* %arrayidx62, align 4
  %and = and i32 %40, %43
  %44 = load i32, i32* %ll, align 4
  %idxprom63 = sext i32 %44 to i64
  %45 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %val_mask = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 13
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %val_mask, i32 0, i64 %idxprom63
  %46 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp ne i32 %and, %46
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.body.60
  br label %do.cond

if.end.68:                                        ; preds = %do.body.60
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.68
  %47 = load i32, i32* %ll, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx71, i32 0, i64 0
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx72, i32 0, i64 0
  %48 = load i32, i32* %arrayidx73, align 4
  %49 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini = getelementptr inbounds %struct.pattern, %struct.pattern* %49, i32 0, i32 4
  %50 = load i32, i32* %mini, align 4
  %mul74 = mul nsw i32 %48, %50
  %51 = load i32, i32* %ll, align 4
  %idxprom75 = sext i32 %51 to i64
  %arrayidx76 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx76, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx77, i32 0, i64 1
  %52 = load i32, i32* %arrayidx78, align 4
  %53 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 5
  %54 = load i32, i32* %minj, align 4
  %mul79 = mul nsw i32 %52, %54
  %add80 = add nsw i32 %mul74, %mul79
  store i32 %add80, i32* %mi, align 4
  %55 = load i32, i32* %ll, align 4
  %idxprom81 = sext i32 %55 to i64
  %arrayidx82 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx82, i32 0, i64 1
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx83, i32 0, i64 0
  %56 = load i32, i32* %arrayidx84, align 4
  %57 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %mini85 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 4
  %58 = load i32, i32* %mini85, align 4
  %mul86 = mul nsw i32 %56, %58
  %59 = load i32, i32* %ll, align 4
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx88, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx89, i32 0, i64 1
  %60 = load i32, i32* %arrayidx90, align 4
  %61 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minj91 = getelementptr inbounds %struct.pattern, %struct.pattern* %61, i32 0, i32 5
  %62 = load i32, i32* %minj91, align 4
  %mul92 = mul nsw i32 %60, %62
  %add93 = add nsw i32 %mul86, %mul92
  store i32 %add93, i32* %mj, align 4
  br label %do.end

do.end:                                           ; preds = %do.body.69
  br label %do.body.94

do.body.94:                                       ; preds = %do.end
  %63 = load i32, i32* %ll, align 4
  %idxprom95 = sext i32 %63 to i64
  %arrayidx96 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx97, i32 0, i64 0
  %64 = load i32, i32* %arrayidx98, align 4
  %65 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 6
  %66 = load i32, i32* %maxi, align 4
  %mul99 = mul nsw i32 %64, %66
  %67 = load i32, i32* %ll, align 4
  %idxprom100 = sext i32 %67 to i64
  %arrayidx101 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx101, i32 0, i64 0
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx102, i32 0, i64 1
  %68 = load i32, i32* %arrayidx103, align 4
  %69 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj = getelementptr inbounds %struct.pattern, %struct.pattern* %69, i32 0, i32 7
  %70 = load i32, i32* %maxj, align 4
  %mul104 = mul nsw i32 %68, %70
  %add105 = add nsw i32 %mul99, %mul104
  store i32 %add105, i32* %xi, align 4
  %71 = load i32, i32* %ll, align 4
  %idxprom106 = sext i32 %71 to i64
  %arrayidx107 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx107, i32 0, i64 1
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx108, i32 0, i64 0
  %72 = load i32, i32* %arrayidx109, align 4
  %73 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxi110 = getelementptr inbounds %struct.pattern, %struct.pattern* %73, i32 0, i32 6
  %74 = load i32, i32* %maxi110, align 4
  %mul111 = mul nsw i32 %72, %74
  %75 = load i32, i32* %ll, align 4
  %idxprom112 = sext i32 %75 to i64
  %arrayidx113 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx113, i32 0, i64 1
  %arrayidx115 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx114, i32 0, i64 1
  %76 = load i32, i32* %arrayidx115, align 4
  %77 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxj116 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 7
  %78 = load i32, i32* %maxj116, align 4
  %mul117 = mul nsw i32 %76, %78
  %add118 = add nsw i32 %mul111, %mul117
  store i32 %add118, i32* %xj, align 4
  br label %do.end.119

do.end.119:                                       ; preds = %do.body.94
  %79 = load i32, i32* @debug, align 4
  %and120 = and i32 %79, 16
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end.119
  br label %cond.end

cond.false:                                       ; preds = %do.end.119
  %80 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %80, i32 0, i32 3
  %81 = load i8*, i8** %name, align 8
  %82 = load i32, i32* %ll, align 4
  %83 = load i32, i32* %anchor.addr, align 4
  %84 = load i32, i32* %mi, align 4
  %85 = load i32, i32* %mj, align 4
  %86 = load i32, i32* %xi, align 4
  %87 = load i32, i32* %xj, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i32 0, i32 0), i8* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %88 = load i32, i32* %m, align 4
  %89 = load i32, i32* %mi, align 4
  %add122 = add nsw i32 %88, %89
  %90 = load i32, i32* @board_size, align 4
  %cmp123 = icmp ult i32 %add122, %90
  br i1 %cmp123, label %land.lhs.true.125, label %if.then.136

land.lhs.true.125:                                ; preds = %cond.end
  %91 = load i32, i32* %n, align 4
  %92 = load i32, i32* %mj, align 4
  %add126 = add nsw i32 %91, %92
  %93 = load i32, i32* @board_size, align 4
  %cmp127 = icmp ult i32 %add126, %93
  br i1 %cmp127, label %lor.lhs.false, label %if.then.136

lor.lhs.false:                                    ; preds = %land.lhs.true.125
  %94 = load i32, i32* %m, align 4
  %95 = load i32, i32* %xi, align 4
  %add129 = add nsw i32 %94, %95
  %96 = load i32, i32* @board_size, align 4
  %cmp130 = icmp ult i32 %add129, %96
  br i1 %cmp130, label %land.lhs.true.132, label %if.then.136

land.lhs.true.132:                                ; preds = %lor.lhs.false
  %97 = load i32, i32* %n, align 4
  %98 = load i32, i32* %xj, align 4
  %add133 = add nsw i32 %97, %98
  %99 = load i32, i32* @board_size, align 4
  %cmp134 = icmp ult i32 %add133, %99
  br i1 %cmp134, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.132, %lor.lhs.false, %land.lhs.true.125, %cond.end
  br label %do.cond

if.end.137:                                       ; preds = %land.lhs.true.132
  store i32 0, i32* %found_goal, align 4
  store i32 0, i32* %found_nongoal, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.223, %if.end.137
  %100 = load i32, i32* %k, align 4
  %101 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %101, i32 0, i32 1
  %102 = load i32, i32* %patlen, align 4
  %cmp139 = icmp slt i32 %100, %102
  br i1 %cmp139, label %for.body.141, label %for.end.225

for.body.141:                                     ; preds = %for.cond.138
  %103 = load i32, i32* %k, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn143 = getelementptr inbounds %struct.pattern, %struct.pattern* %104, i32 0, i32 0
  %105 = load %struct.patval*, %struct.patval** %patn143, align 8
  %arrayidx144 = getelementptr inbounds %struct.patval, %struct.patval* %105, i64 %idxprom142
  %att145 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx144, i32 0, i32 1
  %106 = load i32, i32* %att145, align 4
  store i32 %106, i32* %att, align 4
  %107 = load i32, i32* %ll, align 4
  %idxprom146 = sext i32 %107 to i64
  %108 = load i32, i32* %k, align 4
  %idxprom147 = sext i32 %108 to i64
  %109 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn148 = getelementptr inbounds %struct.pattern, %struct.pattern* %109, i32 0, i32 0
  %110 = load %struct.patval*, %struct.patval** %patn148, align 8
  %arrayidx149 = getelementptr inbounds %struct.patval, %struct.patval* %110, i64 %idxprom147
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx149, i32 0, i32 0
  %111 = load i32, i32* %offset, align 4
  %idxprom150 = sext i32 %111 to i64
  %arrayidx151 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx151, i32 0, i64 %idxprom146
  %112 = load i32, i32* %arrayidx152, align 4
  %113 = load i32, i32* %anchor.addr, align 4
  %add153 = add nsw i32 %112, %113
  store i32 %add153, i32* %pos, align 4
  %114 = load i32, i32* %pos, align 4
  %cmp154 = icmp ult i32 %114, 421
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.163

land.lhs.true.156:                                ; preds = %for.body.141
  %115 = load i32, i32* %pos, align 4
  %idxprom157 = sext i32 %115 to i64
  %arrayidx158 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom157
  %116 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %116 to i32
  %cmp160 = icmp ne i32 %conv159, 3
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %land.lhs.true.156
  br label %if.end.168

if.else.163:                                      ; preds = %land.lhs.true.156, %for.body.141
  %117 = load i32, i32* %pos, align 4
  %div164 = sdiv i32 %117, 20
  %sub165 = sub nsw i32 %div164, 1
  %118 = load i32, i32* %pos, align 4
  %rem166 = srem i32 %118, 20
  %sub167 = sub nsw i32 %rem166, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 351, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %sub165, i32 %sub167)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.163, %if.then.162
  %119 = load i32, i32* %pos, align 4
  %idxprom169 = sext i32 %119 to i64
  %arrayidx170 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom169
  %120 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %120 to i32
  %121 = load i32, i32* %att, align 4
  %idxprom172 = sext i32 %121 to i64
  %122 = load i32, i32* %color.addr, align 4
  %sub173 = sub nsw i32 %122, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @and_mask, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx175, i32 0, i64 %idxprom172
  %123 = load i32, i32* %arrayidx176, align 4
  %and177 = and i32 %conv171, %123
  %124 = load i32, i32* %att, align 4
  %idxprom178 = sext i32 %124 to i64
  %125 = load i32, i32* %color.addr, align 4
  %sub179 = sub nsw i32 %125, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @val_mask, i32 0, i64 %idxprom180
  %arrayidx182 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx181, i32 0, i64 %idxprom178
  %126 = load i32, i32* %arrayidx182, align 4
  %cmp183 = icmp ne i32 %and177, %126
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.168
  br label %match_failed

if.end.186:                                       ; preds = %if.end.168
  %127 = load i8*, i8** %goal.addr, align 8
  %cmp187 = icmp ne i8* %127, null
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.209

land.lhs.true.189:                                ; preds = %if.end.186
  %128 = load i32, i32* %pos, align 4
  %idxprom190 = sext i32 %128 to i64
  %arrayidx191 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom190
  %129 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %129 to i32
  %cmp193 = icmp ne i32 %conv192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.209

if.then.195:                                      ; preds = %land.lhs.true.189
  %130 = load i32, i32* %pos, align 4
  %idxprom196 = sext i32 %130 to i64
  %131 = load i8*, i8** %goal.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %131, i64 %idxprom196
  %132 = load i8, i8* %arrayidx197, align 1
  %tobool198 = icmp ne i8 %132, 0
  br i1 %tobool198, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %if.then.195
  store i32 1, i32* %found_goal, align 4
  br label %if.end.208

if.else.200:                                      ; preds = %if.then.195
  %133 = load i32, i32* %pos, align 4
  %idxprom201 = sext i32 %133 to i64
  %arrayidx202 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom201
  %134 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %134 to i32
  %135 = load i32, i32* %color.addr, align 4
  %cmp204 = icmp eq i32 %conv203, %135
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.else.200
  store i32 1, i32* %found_nongoal, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.else.200
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.199
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.189, %if.end.186
  %136 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %136, i32 0, i32 14
  %137 = load i32, i32* %class, align 4
  %138 = load i32, i32* %pos, align 4
  %idxprom210 = sext i32 %138 to i64
  %arrayidx211 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom210
  %139 = load i8, i8* %arrayidx211, align 1
  %idxprom212 = zext i8 %139 to i64
  %140 = load i32, i32* %pos, align 4
  %idxprom213 = sext i32 %140 to i64
  %arrayidx214 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom213
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx214, i32 0, i32 16
  %141 = load i32, i32* %status, align 4
  %idxprom215 = sext i32 %141 to i64
  %arrayidx216 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 %idxprom215
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx216, i32 0, i64 %idxprom212
  %142 = load i32, i32* %arrayidx217, align 4
  %and218 = and i32 %137, %142
  %cmp219 = icmp ne i32 %and218, 0
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.209
  br label %match_failed

if.end.222:                                       ; preds = %if.end.209
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %143 = load i32, i32* %k, align 4
  %inc224 = add nsw i32 %143, 1
  store i32 %inc224, i32* %k, align 4
  br label %for.cond.138

for.end.225:                                      ; preds = %for.cond.138
  %144 = load i8*, i8** %goal.addr, align 8
  %cmp226 = icmp ne i8* %144, null
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.231

land.lhs.true.228:                                ; preds = %for.end.225
  %145 = load i32, i32* %found_goal, align 4
  %tobool229 = icmp ne i32 %145, 0
  br i1 %tobool229, label %if.end.231, label %if.then.230

if.then.230:                                      ; preds = %land.lhs.true.228
  br label %match_failed

if.end.231:                                       ; preds = %land.lhs.true.228, %for.end.225
  %146 = load i8*, i8** %goal.addr, align 8
  %cmp232 = icmp ne i8* %146, null
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.241

land.lhs.true.234:                                ; preds = %if.end.231
  %147 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class235 = getelementptr inbounds %struct.pattern, %struct.pattern* %147, i32 0, i32 14
  %148 = load i32, i32* %class235, align 4
  %and236 = and i32 %148, 128
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %land.lhs.true.238, label %if.end.241

land.lhs.true.238:                                ; preds = %land.lhs.true.234
  %149 = load i32, i32* %found_nongoal, align 4
  %tobool239 = icmp ne i32 %149, 0
  br i1 %tobool239, label %if.end.241, label %if.then.240

if.then.240:                                      ; preds = %land.lhs.true.238
  br label %match_failed

if.end.241:                                       ; preds = %land.lhs.true.238, %land.lhs.true.234, %if.end.231
  %150 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %151 = load i32, i32* %anchor.addr, align 4
  %152 = load i32, i32* %color.addr, align 4
  %153 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %154 = load i32, i32* %ll, align 4
  %155 = load i8*, i8** %callback_data.addr, align 8
  call void %150(i32 %151, i32 %152, %struct.pattern* %153, i32 %154, i8* %155)
  br label %match_failed

match_failed:                                     ; preds = %if.end.241, %if.then.240, %if.then.230, %if.then.221, %if.then.185
  %156 = load i32, i32* @debug, align 4
  %and242 = and i32 %156, 16
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %cond.false.245, label %cond.true.244

cond.true.244:                                    ; preds = %match_failed
  br label %cond.end.248

cond.false.245:                                   ; preds = %match_failed
  %157 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name246 = getelementptr inbounds %struct.pattern, %struct.pattern* %157, i32 0, i32 3
  %158 = load i8*, i8** %name246, align 8
  %159 = load i32, i32* %ll, align 4
  %160 = load i32, i32* %anchor.addr, align 4
  %call247 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0), i8* %158, i32 %159, i32 %160)
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.245, %cond.true.244
  br label %do.cond

do.cond:                                          ; preds = %cond.end.248, %if.then.136, %if.then.67
  %161 = load i32, i32* %ll, align 4
  %inc249 = add nsw i32 %161, 1
  store i32 %inc249, i32* %ll, align 4
  %162 = load i32, i32* %end_transformation, align 4
  %cmp250 = icmp slt i32 %inc249, %162
  br i1 %cmp250, label %do.body.60, label %do.end.252

do.end.252:                                       ; preds = %do.cond
  br label %do.cond.253

do.cond.253:                                      ; preds = %do.end.252, %if.then.53
  %163 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.pattern, %struct.pattern* %163, i32 1
  store %struct.pattern* %incdec.ptr, %struct.pattern** %pattern.addr, align 8
  %patn254 = getelementptr inbounds %struct.pattern, %struct.pattern* %incdec.ptr, i32 0, i32 0
  %164 = load %struct.patval*, %struct.patval** %patn254, align 8
  %tobool255 = icmp ne %struct.patval* %164, null
  br i1 %tobool255, label %do.body, label %do.end.256

do.end.256:                                       ; preds = %do.cond.253
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_dfa_matchpat(%struct.dfa_rt* %pdfa, i32 %anchor, void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, %struct.pattern* %database, i8* %callback_data, i8* %goal, i32 %anchor_in_goal) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa_rt*, align 8
  %anchor.addr = alloca i32, align 4
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %database.addr = alloca %struct.pattern*, align 8
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_in_goal.addr = alloca i32, align 4
  %ll = alloca i32, align 4
  %matched = alloca i32, align 4
  %reorder = alloca [4000 x i32], align 16
  %preorder = alloca i32*, align 8
  %maxr = alloca i32, align 4
  %k = alloca i32, align 4
  %dfa_pos = alloca i32, align 4
  store %struct.dfa_rt* %pdfa, %struct.dfa_rt** %pdfa.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %database, %struct.pattern** %database.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %anchor_in_goal, i32* %anchor_in_goal.addr, align 4
  %arraydecay = getelementptr inbounds [4000 x i32], [4000 x i32]* %reorder, i32 0, i32 0
  store i32* %arraydecay, i32** %preorder, align 8
  store i32 0, i32* %maxr, align 4
  %0 = load i32, i32* %anchor.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  %mul = mul nsw i32 84, %sub
  %1 = load i32, i32* %anchor.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  %add = add nsw i32 %mul, %sub1
  %add2 = add nsw i32 %add, 1785
  store i32 %add2, i32* %dfa_pos, align 4
  %2 = load i32, i32* %anchor.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %anchor.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %anchor.addr, align 4
  %div5 = sdiv i32 %5, 20
  %sub6 = sub nsw i32 %div5, 1
  %6 = load i32, i32* %anchor.addr, align 4
  %rem7 = srem i32 %6, 20
  %sub8 = sub nsw i32 %rem7, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 578, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %sub6, i32 %sub8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %maxr, align 4
  store i32 0, i32* %ll, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %ll, align 4
  %cmp9 = icmp ne i32 %7, 8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %9 = load i32, i32* %ll, align 4
  %10 = load i32, i32* %dfa_pos, align 4
  %11 = load i32*, i32** %preorder, align 8
  %call = call i32 @scan_for_patterns(%struct.dfa_rt* %8, i32 %9, i32 %10, i32* %11)
  %12 = load i32, i32* %maxr, align 4
  %add11 = add nsw i32 %12, %call
  store i32 %add11, i32* %maxr, align 4
  %arraydecay12 = getelementptr inbounds [4000 x i32], [4000 x i32]* %reorder, i32 0, i32 0
  %13 = load i32, i32* %maxr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay12, i64 %idx.ext
  store i32* %add.ptr, i32** %preorder, align 8
  %14 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %pre_rotated = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %14, i32 0, i32 1
  %15 = load i32, i32* %pre_rotated, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %16 = load i32, i32* %ll, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ll, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  %17 = load i32, i32* %maxr, align 4
  %cmp15 = icmp slt i32 %17, 4000
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %for.end
  br label %if.end.23

if.else.18:                                       ; preds = %for.end
  %18 = load i32, i32* %anchor.addr, align 4
  %div19 = sdiv i32 %18, 20
  %sub20 = sub nsw i32 %div19, 1
  %19 = load i32, i32* %anchor.addr, align 4
  %rem21 = srem i32 %19, 20
  %sub22 = sub nsw i32 %rem21, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 591, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 %sub20, i32 %sub22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.18, %if.then.17
  store i32 0, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.36, %if.end.23
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %maxr, align 4
  %cmp25 = icmp ne i32 %20, %21
  br i1 %cmp25, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.24
  %22 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [4000 x i32], [4000 x i32]* %reorder, i32 0, i64 %idxprom28
  %23 = load i32, i32* %arrayidx29, align 4
  %div30 = sdiv i32 %23, 8
  store i32 %div30, i32* %matched, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [4000 x i32], [4000 x i32]* %reorder, i32 0, i64 %idxprom31
  %25 = load i32, i32* %arrayidx32, align 4
  %rem33 = srem i32 %25, 8
  store i32 %rem33, i32* %ll, align 4
  %26 = load i32, i32* %anchor.addr, align 4
  %27 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %28 = load i32, i32* %color.addr, align 4
  %29 = load %struct.pattern*, %struct.pattern** %database.addr, align 8
  %30 = load i32, i32* %matched, align 4
  %idx.ext34 = sext i32 %30 to i64
  %add.ptr35 = getelementptr inbounds %struct.pattern, %struct.pattern* %29, i64 %idx.ext34
  %31 = load i32, i32* %ll, align 4
  %32 = load i8*, i8** %callback_data.addr, align 8
  %33 = load i8*, i8** %goal.addr, align 8
  %34 = load i32, i32* %anchor_in_goal.addr, align 4
  call void @check_pattern_light(i32 %26, void (i32, i32, %struct.pattern*, i32, i8*)* %27, i32 %28, %struct.pattern* %add.ptr35, i32 %31, i8* %32, i8* %33, i32 %34)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.27
  %35 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond.24

for.end.38:                                       ; preds = %for.cond.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_for_patterns(%struct.dfa_rt* %pdfa, i32 %l, i32 %dfa_pos, i32* %pat_list) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa_rt*, align 8
  %l.addr = alloca i32, align 4
  %dfa_pos.addr = alloca i32, align 4
  %pat_list.addr = alloca i32*, align 8
  %delta = alloca i32, align 4
  %state = alloca i32, align 4
  %row = alloca i32, align 4
  %id = alloca i32, align 4
  %att = alloca i32, align 4
  store %struct.dfa_rt* %pdfa, %struct.dfa_rt** %pdfa.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %dfa_pos, i32* %dfa_pos.addr, align 4
  store i32* %pat_list, i32** %pat_list.addr, align 8
  store i32 1, i32* %state, align 4
  store i32 0, i32* %row, align 4
  store i32 0, i32* %id, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %state, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %1, i32 0, i32 2
  %2 = load %struct.state_rt*, %struct.state_rt** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state_rt, %struct.state_rt* %2, i64 %idxprom
  %att1 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %arrayidx, i32 0, i32 0
  %3 = load i16, i16* %att1, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %att, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.body
  %4 = load i32, i32* %att, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %pre_rotated = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %5, i32 0, i32 1
  %6 = load i32, i32* %pre_rotated, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %att, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %8, i32 0, i32 3
  %9 = load %struct.attrib_rt*, %struct.attrib_rt** %indexes, align 8
  %arrayidx4 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %9, i64 %idxprom3
  %val = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %arrayidx4, i32 0, i32 0
  %10 = load i16, i16* %val, align 2
  %conv5 = sext i16 %10 to i32
  %11 = load i32, i32* %id, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %pat_list.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  store i32 %conv5, i32* %arrayidx7, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %13 = load i32, i32* %l.addr, align 4
  %14 = load i32, i32* %att, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %indexes9 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %15, i32 0, i32 3
  %16 = load %struct.attrib_rt*, %struct.attrib_rt** %indexes9, align 8
  %arrayidx10 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %16, i64 %idxprom8
  %val11 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %arrayidx10, i32 0, i32 0
  %17 = load i16, i16* %val11, align 2
  %conv12 = sext i16 %17 to i32
  %mul = mul nsw i32 8, %conv12
  %add = add nsw i32 %13, %mul
  %18 = load i32, i32* %id, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i32*, i32** %pat_list.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  store i32 %add, i32* %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %id, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %id, align 4
  %21 = load i32, i32* %att, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %indexes16 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %22, i32 0, i32 3
  %23 = load %struct.attrib_rt*, %struct.attrib_rt** %indexes16, align 8
  %arrayidx17 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %23, i64 %idxprom15
  %next = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %arrayidx17, i32 0, i32 1
  %24 = load i16, i16* %next, align 2
  %conv18 = sext i16 %24 to i32
  store i32 %conv18, i32* %att, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %dfa_pos.addr, align 4
  %26 = load i32, i32* %l.addr, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load i32, i32* %row, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx21, i32 0, i64 %idxprom19
  %28 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %25, %28
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i32 0, i64 %idxprom24
  %29 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load i32, i32* %state, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.dfa_rt*, %struct.dfa_rt** %pdfa.addr, align 8
  %states28 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %31, i32 0, i32 2
  %32 = load %struct.state_rt*, %struct.state_rt** %states28, align 8
  %arrayidx29 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %32, i64 %idxprom27
  %next30 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %arrayidx29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [4 x i16], [4 x i16]* %next30, i32 0, i64 %idxprom26
  %33 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %33 to i32
  store i32 %conv32, i32* %delta, align 4
  %34 = load i32, i32* %delta, align 4
  %35 = load i32, i32* %state, align 4
  %add33 = add nsw i32 %35, %34
  store i32 %add33, i32* %state, align 4
  %36 = load i32, i32* %row, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %row, align 4
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %37 = load i32, i32* %delta, align 4
  %cmp35 = icmp ne i32 %37, 0
  br i1 %cmp35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load i32, i32* %row, align 4
  %cmp37 = icmp slt i32 %38, 1764
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.end
  br label %if.end.42

if.else.40:                                       ; preds = %do.end
  %39 = load i32, i32* %dfa_pos.addr, align 4
  %div = sdiv i32 %39, 20
  %sub = sub nsw i32 %div, 1
  %40 = load i32, i32* %dfa_pos.addr, align 4
  %rem = srem i32 %40, 20
  %sub41 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 556, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  %41 = load i32, i32* %id, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @check_pattern_light(i32 %anchor, void (i32, i32, %struct.pattern*, i32, i8*)* %callback, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %callback_data, i8* %goal, i32 %anchor_in_goal) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %callback.addr = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %callback_data.addr = alloca i8*, align 8
  %goal.addr = alloca i8*, align 8
  %anchor_in_goal.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %found_goal = alloca i32, align 4
  %found_nongoal = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %callback, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %anchor_in_goal, i32* %anchor_in_goal.addr, align 4
  store i32 0, i32* %found_goal, align 4
  store i32 0, i32* %found_nongoal, align 4
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %trfno = getelementptr inbounds %struct.pattern, %struct.pattern* %0, i32 0, i32 2
  %1 = load i32, i32* %trfno, align 4
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ll.addr, align 4
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %ll.addr, align 4
  %cmp2 = icmp sge i32 %3, 6
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  br label %cond.end

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %ll.addr, align 4
  %5 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %trfno4 = getelementptr inbounds %struct.pattern, %struct.pattern* %5, i32 0, i32 2
  %6 = load i32, i32* %trfno4, align 4
  %cmp5 = icmp sge i32 %4, %6
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  br label %cond.end

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %7 = load i32, i32* %k, align 4
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 1
  %9 = load i32, i32* %patlen, align 4
  %cmp9 = icmp slt i32 %7, %9
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %12, i32 0, i32 0
  %13 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx = getelementptr inbounds %struct.patval, %struct.patval* %13, i64 %idxprom10
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %offset, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx12, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx13, align 4
  %16 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %pos, align 4
  %17 = load i32, i32* %pos, align 4
  %cmp14 = icmp ult i32 %17, 421
  br i1 %cmp14, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1
  %conv = zext i8 %19 to i32
  %cmp17 = icmp ne i32 %conv, 3
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true
  br label %if.end.22

if.else.20:                                       ; preds = %land.lhs.true, %for.body
  %20 = load i32, i32* %pos, align 4
  %div = sdiv i32 %20, 20
  %sub = sub nsw i32 %div, 1
  %21 = load i32, i32* %pos, align 4
  %rem = srem i32 %21, 20
  %sub21 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 643, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %sub, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  %22 = load i32, i32* %anchor_in_goal.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.47, label %if.then.23

if.then.23:                                       ; preds = %if.end.22
  %23 = load i8*, i8** %goal.addr, align 8
  %cmp24 = icmp ne i8* %23, null
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.46

land.lhs.true.26:                                 ; preds = %if.then.23
  %24 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %25 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %land.lhs.true.26
  %26 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i8*, i8** %goal.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %28 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.32
  store i32 1, i32* %found_goal, align 4
  br label %if.end.45

if.else.37:                                       ; preds = %if.then.32
  %29 = load i32, i32* %pos, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %30 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %30 to i32
  %31 = load i32, i32* %color.addr, align 4
  %cmp41 = icmp eq i32 %conv40, %31
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.37
  store i32 1, i32* %found_nongoal, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.36
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.26, %if.then.23
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.22
  %32 = load i32, i32* %pos, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom48
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx49, i32 0, i32 16
  %33 = load i32, i32* %status, align 4
  %cmp50 = icmp slt i32 %33, 4
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.47
  br label %if.end.58

if.else.53:                                       ; preds = %if.end.47
  %34 = load i32, i32* %anchor.addr, align 4
  %div54 = sdiv i32 %34, 20
  %sub55 = sub nsw i32 %div54, 1
  %35 = load i32, i32* %anchor.addr, align 4
  %rem56 = srem i32 %35, 20
  %sub57 = sub nsw i32 %rem56, 1
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 656, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i32 %sub55, i32 %sub57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53, %if.then.52
  %36 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %36, i32 0, i32 14
  %37 = load i32, i32* %class, align 4
  %38 = load i32, i32* %pos, align 4
  %idxprom59 = sext i32 %38 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %39 = load i8, i8* %arrayidx60, align 1
  %idxprom61 = zext i8 %39 to i64
  %40 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom62
  %status64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx63, i32 0, i32 16
  %41 = load i32, i32* %status64, align 4
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx66, i32 0, i64 %idxprom61
  %42 = load i32, i32* %arrayidx67, align 4
  %and = and i32 %37, %42
  %cmp68 = icmp ne i32 %and, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.58
  br label %match_failed

if.end.71:                                        ; preds = %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.71
  %43 = load i32, i32* %k, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %anchor_in_goal.addr, align 4
  %tobool72 = icmp ne i32 %44, 0
  br i1 %tobool72, label %if.end.90, label %if.then.73

if.then.73:                                       ; preds = %for.end
  %45 = load i8*, i8** %goal.addr, align 8
  %cmp74 = icmp ne i8* %45, null
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.79

land.lhs.true.76:                                 ; preds = %if.then.73
  %46 = load i32, i32* %found_goal, align 4
  %tobool77 = icmp ne i32 %46, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  br label %match_failed

if.end.79:                                        ; preds = %land.lhs.true.76, %if.then.73
  %47 = load i8*, i8** %goal.addr, align 8
  %cmp80 = icmp ne i8* %47, null
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.89

land.lhs.true.82:                                 ; preds = %if.end.79
  %48 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class83 = getelementptr inbounds %struct.pattern, %struct.pattern* %48, i32 0, i32 14
  %49 = load i32, i32* %class83, align 4
  %and84 = and i32 %49, 128
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.89

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %50 = load i32, i32* %found_nongoal, align 4
  %tobool87 = icmp ne i32 %50, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  br label %match_failed

if.end.89:                                        ; preds = %land.lhs.true.86, %land.lhs.true.82, %if.end.79
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %for.end
  %51 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %callback.addr, align 8
  %52 = load i32, i32* %anchor.addr, align 4
  %53 = load i32, i32* %color.addr, align 4
  %54 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %55 = load i32, i32* %ll.addr, align 4
  %56 = load i8*, i8** %callback_data.addr, align 8
  call void %51(i32 %52, i32 %53, %struct.pattern* %54, i32 %55, i8* %56)
  br label %match_failed

match_failed:                                     ; preds = %if.end.90, %if.then.88, %if.then.78, %if.then.70
  %57 = load i32, i32* @debug, align 4
  %and91 = and i32 %57, 16
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.false, label %cond.true

cond.true:                                        ; preds = %match_failed
  br label %cond.end

cond.false:                                       ; preds = %match_failed
  %58 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %58, i32 0, i32 3
  %59 = load i8*, i8** %name, align 8
  %60 = load i32, i32* %ll.addr, align 4
  %61 = load i32, i32* %anchor.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0), i8* %59, i32 %60, i32 %61)
  br label %cond.end

cond.end:                                         ; preds = %if.then.3, %if.then.6, %cond.false, %cond.true
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
