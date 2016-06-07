; ModuleID = 'interface/play_test.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@.str = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't find the size (SZ) attribute!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@komi = external global float, align 4
@quiet = external global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Ruleset:      %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Game Name:    %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Game Date:    %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Game Comment: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Game User:    %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Black Player: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"PW\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"White Player: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Move %d (%C): \00", align 1
@movenum = external global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"GNU Go plays %m \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"(%.2f) \00", align 1
@potential_moves = external global [19 x [19 x float]], align 16
@.str.20 = private unnamed_addr constant [16 x i8] c"- Game move %m \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"GNU Go plays %s (%.2f) - Game move %s (%.2f)\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"GNU Go plays the same move %s (%.2f)\00", align 1

; Function Attrs: nounwind uwtable
define void @play_replay(%struct.Gameinfo* %gameinfo, i32 %color_to_replay) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %color_to_replay.addr = alloca i32, align 4
  %tmpi = alloca i32, align 4
  %tmpf = alloca float, align 4
  %tmpc = alloca i8*, align 8
  %tree = alloca %struct.SGFTree_t, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i32 %color_to_replay, i32* %color_to_replay.addr, align 4
  store i8* null, i8** %tmpc, align 8
  %0 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %game_record = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %0, i32 0, i32 2
  %1 = bitcast %struct.SGFTree_t* %tree to i8*
  %2 = bitcast %struct.SGFTree_t* %game_record to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %tree, i32 0, i32 0
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  store %struct.SGFNode_t* %3, %struct.SGFNode_t** %node, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %tmpi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %tmpi, align 4
  call void @gnugo_clear_board(i32 %6)
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call2 = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), float* %tmpf)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load float, float* %tmpf, align 4
  store float %8, float* @komi, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load i32, i32* @quiet, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.end.43, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call8 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %tmpc)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.7
  %11 = load i8*, i8** %tmpc, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.7
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call13 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %tmpc)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %13 = load i8*, i8** %tmpc, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call18 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8** %tmpc)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %15 = load i8*, i8** %tmpc, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* %15)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call23 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8** %tmpc)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %17 = load i8*, i8** %tmpc, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* %17)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call28 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %tmpc)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %19 = load i8*, i8** %tmpc, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* %19)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call33 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8** %tmpc)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %21 = load i8*, i8** %tmpc, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* %21)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call38 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8** %tmpc)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %23 = load i8*, i8** %tmpc, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* %23)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %24 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  call void @gameinfo_print(%struct.Gameinfo* %24)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.43
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %tobool44 = icmp ne %struct.SGFNode_t* %25, null
  br i1 %tobool44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %27 = load i32, i32* %color_to_replay.addr, align 4
  call void @replay_node(%struct.SGFNode_t* %26, i32 %27)
  call void @sgffile_output(%struct.SGFTree_t* %tree)
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %28, i32 0, i32 2
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  store %struct.SGFNode_t* %29, %struct.SGFNode_t** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @gnugo_clear_board(i32) #2

declare i32 @sgfGetFloatProperty(%struct.SGFNode_t*, i8*, float*) #2

declare i32 @sgfGetCharProperty(%struct.SGFNode_t*, i8*, i8**) #2

declare i32 @printf(i8*, ...) #2

declare void @gameinfo_print(%struct.Gameinfo*) #2

; Function Attrs: nounwind uwtable
define internal void @replay_node(%struct.SGFNode_t* %node, i32 %color_to_replay) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %color_to_replay.addr = alloca i32, align 4
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  %move_prop = alloca %struct.SGFProperty_t*, align 8
  %color = alloca i32, align 4
  %boardsize = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca [127 x i8], align 16
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %color_to_replay, i32* %color_to_replay.addr, align 4
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %move_prop, align 8
  %call = call i32 @gnugo_get_boardsize()
  store i32 %call, i32* %boardsize, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 1
  %4 = load i16, i16* %name, align 2
  %conv = sext i16 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 16961, label %sw.bb
    i32 22337, label %sw.bb.3
    i32 8258, label %sw.bb.6
    i32 8279, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %6 = load i32, i32* %boardsize, align 4
  %call1 = call i32 @get_moveX(%struct.SGFProperty_t* %5, i32 %6)
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %8 = load i32, i32* %boardsize, align 4
  %call2 = call i32 @get_moveY(%struct.SGFProperty_t* %7, i32 %8)
  call void @gnugo_add_stone(i32 %call1, i32 %call2, i32 2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %10 = load i32, i32* %boardsize, align 4
  %call4 = call i32 @get_moveX(%struct.SGFProperty_t* %9, i32 %10)
  %11 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %12 = load i32, i32* %boardsize, align 4
  %call5 = call i32 @get_moveY(%struct.SGFProperty_t* %11, i32 %12)
  call void @gnugo_add_stone(i32 %call4, i32 %call5, i32 1)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body, %for.body
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  store %struct.SGFProperty_t* %13, %struct.SGFProperty_t** %move_prop, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.6, %sw.bb.3, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %14, i32 0, i32 0
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %15, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %move_prop, align 8
  %tobool7 = icmp ne %struct.SGFProperty_t* %16, null
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  br label %return

if.end:                                           ; preds = %for.end
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %move_prop, align 8
  %18 = load i32, i32* %boardsize, align 4
  %call8 = call i32 @get_moveX(%struct.SGFProperty_t* %17, i32 %18)
  store i32 %call8, i32* %m, align 4
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %move_prop, align 8
  %20 = load i32, i32* %boardsize, align 4
  %call9 = call i32 @get_moveY(%struct.SGFProperty_t* %19, i32 %20)
  store i32 %call9, i32* %n, align 4
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %move_prop, align 8
  %name10 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %21, i32 0, i32 1
  %22 = load i16, i16* %name10, align 2
  %conv11 = sext i16 %22 to i32
  %cmp = icmp eq i32 %conv11, 8279
  %cond = select i1 %cmp, i32 1, i32 2
  store i32 %cond, i32* %color, align 4
  %23 = load i32, i32* %color, align 4
  %24 = load i32, i32* %color_to_replay.addr, align 4
  %cmp13 = icmp eq i32 %23, %24
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %25 = load i32, i32* %color_to_replay.addr, align 4
  %cmp15 = icmp eq i32 %25, 3
  br i1 %cmp15, label %if.then.17, label %if.end.114

if.then.17:                                       ; preds = %lor.lhs.false, %if.end
  %26 = load i32, i32* %color, align 4
  %call18 = call i32 @gnugo_genmove(i32* %i, i32* %j, i32 %26)
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %m, align 4
  %cmp19 = icmp ne i32 %27, %28
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then.17
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n, align 4
  %cmp22 = icmp ne i32 %29, %30
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %31 = load i32, i32* @quiet, align 4
  %tobool25 = icmp ne i32 %31, 0
  br i1 %tobool25, label %if.end.53, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %if.then.17
  %32 = load i32, i32* @movenum, align 4
  %add = add nsw i32 %32, 1
  %33 = load i32, i32* %color, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %add, i32 %33)
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %j, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 %34, i32 %35)
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  %call27 = call i32 @gnugo_is_pass(i32 %36, i32 %37)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.34, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  %38 = load i32, i32* %j, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom30
  %arrayidx31 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx, i32 0, i64 %idxprom
  %40 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %40 to double
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), double %conv32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.26
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* %n, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 %41, i32 %42)
  %43 = load i32, i32* %m, align 4
  %44 = load i32, i32* %n, align 4
  %call35 = call i32 @gnugo_is_pass(i32 %43, i32 %44)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.51, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.34
  %45 = load i32, i32* %n, align 4
  %idxprom37 = sext i32 %45 to i64
  %46 = load i32, i32* %m, align 4
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx39, i32 0, i64 %idxprom37
  %47 = load float, float* %arrayidx40, align 4
  %conv41 = fpext float %47 to double
  %cmp42 = fcmp ogt double %conv41, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %n, align 4
  %idxprom45 = sext i32 %48 to i64
  %49 = load i32, i32* %m, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx47, i32 0, i64 %idxprom45
  %50 = load float, float* %arrayidx48, align 4
  %conv49 = fpext float %50 to double
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), double %conv49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %land.lhs.true, %if.end.34
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %lor.lhs.false.24
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %m, align 4
  %cmp54 = icmp ne i32 %51, %52
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.53
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %n, align 4
  %cmp57 = icmp ne i32 %53, %54
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.end.53
  %arraydecay = getelementptr inbounds [127 x i8], [127 x i8]* %buf, i32 0, i32 0
  %55 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %55, 20
  %add60 = add nsw i32 21, %mul
  %56 = load i32, i32* %j, align 4
  %add61 = add nsw i32 %add60, %56
  %call62 = call i8* @location_to_string(i32 %add61)
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %call63 = call i32 @gnugo_is_pass(i32 %57, i32 %58)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.59
  br label %cond.end

cond.false:                                       ; preds = %if.then.59
  %59 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %60 to i64
  %arrayidx67 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx67, i32 0, i64 %idxprom65
  %61 = load float, float* %arrayidx68, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond69 = phi float [ 0.000000e+00, %cond.true ], [ %61, %cond.false ]
  %conv70 = fpext float %cond69 to double
  %62 = load i32, i32* %m, align 4
  %mul71 = mul nsw i32 %62, 20
  %add72 = add nsw i32 21, %mul71
  %63 = load i32, i32* %n, align 4
  %add73 = add nsw i32 %add72, %63
  %call74 = call i8* @location_to_string(i32 %add73)
  %64 = load i32, i32* %m, align 4
  %65 = load i32, i32* %n, align 4
  %call75 = call i32 @gnugo_is_pass(i32 %64, i32 %65)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %cond.false.86

land.lhs.true.77:                                 ; preds = %cond.end
  %66 = load i32, i32* %n, align 4
  %idxprom78 = sext i32 %66 to i64
  %67 = load i32, i32* %m, align 4
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx80, i32 0, i64 %idxprom78
  %68 = load float, float* %arrayidx81, align 4
  %conv82 = fpext float %68 to double
  %cmp83 = fcmp olt double %conv82, 0.000000e+00
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %land.lhs.true.77
  br label %cond.end.91

cond.false.86:                                    ; preds = %land.lhs.true.77, %cond.end
  %69 = load i32, i32* %n, align 4
  %idxprom87 = sext i32 %69 to i64
  %70 = load i32, i32* %m, align 4
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx89, i32 0, i64 %idxprom87
  %71 = load float, float* %arrayidx90, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.86, %cond.true.85
  %cond92 = phi float [ 0.000000e+00, %cond.true.85 ], [ %71, %cond.false.86 ]
  %conv93 = fpext float %cond92 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i8* %call62, double %conv70, i8* %call74, double %conv93)
  %72 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %j, align 4
  %call94 = call %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %72, i32 %73, i32 %74)
  br label %if.end.111

if.else:                                          ; preds = %lor.lhs.false.56
  %arraydecay95 = getelementptr inbounds [127 x i8], [127 x i8]* %buf, i32 0, i32 0
  %75 = load i32, i32* %i, align 4
  %mul96 = mul nsw i32 %75, 20
  %add97 = add nsw i32 21, %mul96
  %76 = load i32, i32* %j, align 4
  %add98 = add nsw i32 %add97, %76
  %call99 = call i8* @location_to_string(i32 %add98)
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %j, align 4
  %call100 = call i32 @gnugo_is_pass(i32 %77, i32 %78)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %if.else
  br label %cond.end.108

cond.false.103:                                   ; preds = %if.else
  %79 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %80 to i64
  %arrayidx106 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx106, i32 0, i64 %idxprom104
  %81 = load float, float* %arrayidx107, align 4
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.103, %cond.true.102
  %cond109 = phi float [ 0.000000e+00, %cond.true.102 ], [ %81, %cond.false.103 ]
  %conv110 = fpext float %cond109 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay95, i64 127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* %call99, double %conv110)
  br label %if.end.111

if.end.111:                                       ; preds = %cond.end.108, %cond.end.91
  %82 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay112 = getelementptr inbounds [127 x i8], [127 x i8]* %buf, i32 0, i32 0
  %call113 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %82, i8* %arraydecay112)
  %83 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %83, i32 0)
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.111, %lor.lhs.false
  %84 = load i32, i32* %m, align 4
  %85 = load i32, i32* %n, align 4
  %86 = load i32, i32* %color, align 4
  call void @gnugo_play_move(i32 %84, i32 %85, i32 %86)
  br label %return

return:                                           ; preds = %if.end.114, %if.then
  ret void
}

declare void @sgffile_output(%struct.SGFTree_t*) #2

declare i32 @gnugo_get_boardsize() #2

declare void @gnugo_add_stone(i32, i32, i32) #2

declare i32 @get_moveX(%struct.SGFProperty_t*, i32) #2

declare i32 @get_moveY(%struct.SGFProperty_t*, i32) #2

declare i32 @gnugo_genmove(i32*, i32*, i32) #2

declare void @mprintf(i8*, ...) #2

declare i32 @gnugo_is_pass(i32, i32) #2

declare void @gg_snprintf(i8*, i64, i8*, ...) #2

declare i8* @location_to_string(i32) #2

declare %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t*, i32, i32) #2

declare %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #2

declare void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #2

declare void @gnugo_play_move(i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
