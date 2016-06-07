; ModuleID = 'proof.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
%struct.node = type { i8, i8, i8, i8, i32, i32, %struct.node**, %struct.node*, %struct.move_s }

@bufftop = global i32 0, align 4
@membuff = common global i8* null, align 8
@Variant = external global i32, align 4
@white_to_move = external global i32, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@numb_moves = external global i32, align 4
@root_to_move = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@captures = external global i32, align 4
@hash = external global i32, align 4
@move_number = external global i32, align 4
@ply = external global i32, align 4
@hash_history = external global [600 x i32], align 16
@maxply = common global i32 0, align 4
@forwards = common global i32 0, align 4
@phase = external global i32, align 4
@nodecount = common global i32 0, align 4
@frees = common global i32 0, align 4
@nodecount2 = common global i32 0, align 4
@pn2 = common global i32 0, align 4
@PBSize = external global i32, align 4
@alllosers = common global i32 0, align 4
@rootlosers = common global [300 x i32] zeroinitializer, align 16
@pn_move = common global %struct.move_s zeroinitializer, align 4
@dummy = external global %struct.move_s, align 4
@iters = common global i32 0, align 4
@pn_time = common global i32 0, align 4
@forcedwin = common global i32 0, align 4
@kibitzed = common global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tellics kibitz Forced win!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"tellics kibitz Forced win! (alt)\0A\00", align 1
@xb_mode = external global i32, align 4
@post = external global i32, align 4
@.str.2 = private unnamed_addr constant [94 x i8] c"tellics whisper proof %d, disproof %d, %d losers, highest depth %d, primary %d, secondary %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"tellics whisper Forced reply\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d MaxDepth: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"tellics whisper proof %d, disproof %d, %d nodes, %d forwards, %d iters, highest depth %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Time : %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"This position is WON.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PV: \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\0Atellics kibitz Forced win in %d moves.\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\0A1-0 {White mates}\0A\00", align 1
@result = external global i32, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"\0A0-1 {Black mates}\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"This position is LOST.\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"This position is UNKNOWN.\0A\00", align 1
@pn_saver = common global %struct.move_s zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [47 x i8] c"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d\0A\00", align 1
@s_threat = external global i32, align 4

; Function Attrs: nounwind uwtable
define i8* @Xmalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %oldtop = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @bufftop, align 4
  store i32 %0, i32* %oldtop, align 4
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32, i32* @bufftop, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @bufftop, align 4
  %3 = load i32, i32* %oldtop, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @membuff, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  ret i8* %arrayidx
}

; Function Attrs: nounwind uwtable
define void @Xfree() #0 {
entry:
  store i32 0, i32* @bufftop, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @freenodes(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  %tobool = icmp ne %struct.node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %node.addr, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 6
  %2 = load %struct.node**, %struct.node*** %children, align 8
  %tobool1 = icmp ne %struct.node** %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.19

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load i8, i8* %num_children, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children5 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i8, i8* %num_children5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp slt i32 %5, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.node*, %struct.node** %node.addr, align 8
  %children9 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 6
  %10 = load %struct.node**, %struct.node*** %children9, align 8
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %10, i64 %idxprom
  %11 = load %struct.node*, %struct.node** %arrayidx, align 8
  %cmp10 = icmp ne %struct.node* %11, null
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.node*, %struct.node** %node.addr, align 8
  %children14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 6
  %14 = load %struct.node**, %struct.node*** %children14, align 8
  %arrayidx15 = getelementptr inbounds %struct.node*, %struct.node** %14, i64 %idxprom13
  %15 = load %struct.node*, %struct.node** %arrayidx15, align 8
  call void @freenodes(%struct.node* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.node*, %struct.node** %node.addr, align 8
  %children17 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 6
  %18 = load %struct.node**, %struct.node*** %children17, align 8
  %19 = bitcast %struct.node** %18 to i8*
  call void @free(i8* %19) #3
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.then.2
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %20 = load %struct.node*, %struct.node** %node.addr, align 8
  %21 = bitcast %struct.node* %20 to i8*
  call void @free(i8* %21) #3
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @pn_eval(%struct.node* %this) #0 {
entry:
  %this.addr = alloca %struct.node*, align 8
  store %struct.node* %this, %struct.node** %this.addr, align 8
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** %this.addr, align 8
  call void @suicide_pn_eval(%struct.node* %1)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @Variant, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.node*, %struct.node** %this.addr, align 8
  call void @losers_pn_eval(%struct.node* %3)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %4 = load %struct.node*, %struct.node** %this.addr, align 8
  call void @std_pn_eval(%struct.node* %4)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @suicide_pn_eval(%struct.node* %this) #0 {
entry:
  %this.addr = alloca %struct.node*, align 8
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %wp = alloca i32, align 4
  %bp = alloca i32, align 4
  store %struct.node* %this, %struct.node** %this.addr, align 8
  store i32 0, i32* %wp, align 4
  store i32 0, i32* %bp, align 4
  %0 = load %struct.node*, %struct.node** %this.addr, align 8
  %evaluated = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 3
  store i8 1, i8* %evaluated, align 1
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %a, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 7, label %sw.bb
    i32 5, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.4
    i32 12, label %sw.bb.4
    i32 8, label %sw.bb.4
    i32 6, label %sw.bb.4
    i32 10, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %9 = load i32, i32* %wp, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, i32* %wp, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %10 = load i32, i32* %bp, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* %bp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.4, %sw.bb
  %11 = load i32, i32* %wp, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %sw.epilog
  %12 = load i32, i32* %bp, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.9:                                         ; preds = %land.lhs.true, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then
  %13 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %14 = load i32, i32* %wp, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.else.18, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %15 = load i32, i32* @root_to_move, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %16 = load %struct.node*, %struct.node** %this.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  store i8 1, i8* %value, align 1
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.12
  %17 = load %struct.node*, %struct.node** %this.addr, align 8
  %value16 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  store i8 0, i8* %value16, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.30

if.else.18:                                       ; preds = %for.end
  %18 = load i32, i32* %bp, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.else.27, label %if.then.20

if.then.20:                                       ; preds = %if.else.18
  %19 = load i32, i32* @root_to_move, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.else.24, label %if.then.22

if.then.22:                                       ; preds = %if.then.20
  %20 = load %struct.node*, %struct.node** %this.addr, align 8
  %value23 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i8 0, i8* %value23, align 1
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.20
  %21 = load %struct.node*, %struct.node** %this.addr, align 8
  %value25 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  store i8 1, i8* %value25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.29

if.else.27:                                       ; preds = %if.else.18
  %22 = load %struct.node*, %struct.node** %this.addr, align 8
  %value28 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  store i8 2, i8* %value28, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.end.26
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @losers_pn_eval(%struct.node* %this) #0 {
entry:
  %this.addr = alloca %struct.node*, align 8
  %num_moves = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %mate = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %wp = alloca i32, align 4
  %bp = alloca i32, align 4
  store %struct.node* %this, %struct.node** %this.addr, align 8
  store i32 0, i32* %wp, align 4
  store i32 0, i32* %bp, align 4
  %0 = load %struct.node*, %struct.node** %this.addr, align 8
  %evaluated = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 3
  store i8 1, i8* %evaluated, align 1
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %a, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 11, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.4
    i32 12, label %sw.bb.4
    i32 8, label %sw.bb.4
    i32 10, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %9 = load i32, i32* %wp, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, i32* %wp, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %10 = load i32, i32* %bp, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, i32* %bp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.4, %sw.bb
  %11 = load i32, i32* %wp, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %sw.epilog
  %12 = load i32, i32* %bp, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.9:                                         ; preds = %land.lhs.true, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then
  %13 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %14 = load i32, i32* %wp, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.else.18, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %15 = load i32, i32* @root_to_move, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %16 = load %struct.node*, %struct.node** %this.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  store i8 1, i8* %value, align 1
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.12
  %17 = load %struct.node*, %struct.node** %this.addr, align 8
  %value16 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  store i8 0, i8* %value16, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.84

if.else.18:                                       ; preds = %for.end
  %18 = load i32, i32* %bp, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.end.27, label %if.then.20

if.then.20:                                       ; preds = %if.else.18
  %19 = load i32, i32* @root_to_move, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.then.20
  %20 = load %struct.node*, %struct.node** %this.addr, align 8
  %value23 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i8 1, i8* %value23, align 1
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.20
  %21 = load %struct.node*, %struct.node** %this.addr, align 8
  %value25 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  store i8 0, i8* %value25, align 1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.84

if.end.27:                                        ; preds = %if.else.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  %22 = load i32, i32* @white_to_move, align 4
  %tobool29 = icmp ne i32 %22, 0
  br i1 %tobool29, label %land.lhs.true.30, label %lor.lhs.false

land.lhs.true.30:                                 ; preds = %if.end.28
  %23 = load i32, i32* @wking_loc, align 4
  %call = call i32 @is_attacked(i32 %23, i32 0)
  %tobool31 = icmp ne i32 %call, 0
  br i1 %tobool31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30, %if.end.28
  %24 = load i32, i32* @white_to_move, align 4
  %tobool32 = icmp ne i32 %24, 0
  br i1 %tobool32, label %if.else.82, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* @bking_loc, align 4
  %call34 = call i32 @is_attacked(i32 %25, i32 1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.82

if.then.36:                                       ; preds = %land.lhs.true.33, %land.lhs.true.30
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx37 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx37)
  %26 = load i32, i32* @numb_moves, align 4
  store i32 %26, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  store i32 1, i32* %mate, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.49, %if.then.36
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %num_moves, align 4
  %cmp39 = icmp slt i32 %27, %28
  br i1 %cmp39, label %for.body.40, label %for.end.51

for.body.40:                                      ; preds = %for.cond.38
  %arrayidx41 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %29 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx41, i32 %29)
  %arrayidx42 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %30 = load i32, i32* %i, align 4
  %call43 = call i32 @check_legal(%struct.move_s* %arrayidx42, i32 %30, i32 1)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.body.40
  store i32 0, i32* %mate, align 4
  %arrayidx46 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %31 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx46, i32 %31)
  br label %for.end.51

if.end.47:                                        ; preds = %for.body.40
  %arrayidx48 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %32 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx48, i32 %32)
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.47
  %33 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %33, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.38

for.end.51:                                       ; preds = %if.then.45, %for.cond.38
  %34 = load i32, i32* %mate, align 4
  %cmp52 = icmp eq i32 %34, 1
  br i1 %cmp52, label %if.then.53, label %if.end.69

if.then.53:                                       ; preds = %for.end.51
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx54 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx54)
  %35 = load i32, i32* @numb_moves, align 4
  store i32 %35, i32* %num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.66, %if.then.53
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %num_moves, align 4
  %cmp56 = icmp slt i32 %36, %37
  br i1 %cmp56, label %for.body.57, label %for.end.68

for.body.57:                                      ; preds = %for.cond.55
  %arrayidx58 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %38 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx58, i32 %38)
  %arrayidx59 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %39 = load i32, i32* %i, align 4
  %call60 = call i32 @check_legal(%struct.move_s* %arrayidx59, i32 %39, i32 1)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.body.57
  store i32 0, i32* %mate, align 4
  %arrayidx63 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %40 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx63, i32 %40)
  br label %for.end.68

if.end.64:                                        ; preds = %for.body.57
  %arrayidx65 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %41 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx65, i32 %41)
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.64
  %42 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %42, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.55

for.end.68:                                       ; preds = %if.then.62, %for.cond.55
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.51
  %43 = load i32, i32* %mate, align 4
  %cmp70 = icmp eq i32 %43, 1
  br i1 %cmp70, label %if.then.71, label %if.else.79

if.then.71:                                       ; preds = %if.end.69
  %44 = load i32, i32* @white_to_move, align 4
  %tobool72 = icmp ne i32 %44, 0
  %cond = select i1 %tobool72, i32 0, i32 1
  %45 = load i32, i32* @root_to_move, align 4
  %cmp73 = icmp eq i32 %cond, %45
  br i1 %cmp73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.then.71
  %46 = load %struct.node*, %struct.node** %this.addr, align 8
  %value75 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 0
  store i8 1, i8* %value75, align 1
  br label %if.end.78

if.else.76:                                       ; preds = %if.then.71
  %47 = load %struct.node*, %struct.node** %this.addr, align 8
  %value77 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 0
  store i8 0, i8* %value77, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.74
  br label %if.end.81

if.else.79:                                       ; preds = %if.end.69
  %48 = load %struct.node*, %struct.node** %this.addr, align 8
  %value80 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 0
  store i8 2, i8* %value80, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.end.78
  br label %if.end.84

if.else.82:                                       ; preds = %land.lhs.true.33, %lor.lhs.false
  %49 = load %struct.node*, %struct.node** %this.addr, align 8
  %value83 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  store i8 2, i8* %value83, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.17, %if.end.26, %if.else.82, %if.end.81
  ret void
}

; Function Attrs: nounwind uwtable
define void @std_pn_eval(%struct.node* %this) #0 {
entry:
  %this.addr = alloca %struct.node*, align 8
  %num_moves = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %mate = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.node* %this, %struct.node** %this.addr, align 8
  %0 = load %struct.node*, %struct.node** %this.addr, align 8
  %evaluated = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 3
  store i8 1, i8* %evaluated, align 1
  %1 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @wking_loc, align 4
  %call = call i32 @is_attacked(i32 %2, i32 0)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* @white_to_move, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.else.23, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* @bking_loc, align 4
  %call4 = call i32 @is_attacked(i32 %4, i32 1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else.23

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  store i32 0, i32* %num_moves, align 4
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %5 = load i32, i32* @numb_moves, align 4
  store i32 %5, i32* %num_moves, align 4
  store i32 1, i32* %mate, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %num_moves, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %8 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx6, i32 %8)
  %arrayidx7 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %9 = load i32, i32* %i, align 4
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx7, i32 %9, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %mate, align 4
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %10 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx11, i32 %10)
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx12 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %11 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx12, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %13 = load i32, i32* %mate, align 4
  %cmp13 = icmp eq i32 %13, 1
  br i1 %cmp13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %for.end
  %14 = load i32, i32* @white_to_move, align 4
  %tobool15 = icmp ne i32 %14, 0
  %cond = select i1 %tobool15, i32 0, i32 1
  %15 = load i32, i32* @root_to_move, align 4
  %cmp16 = icmp eq i32 %cond, %15
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %16 = load %struct.node*, %struct.node** %this.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  store i8 0, i8* %value, align 1
  br label %if.end.19

if.else:                                          ; preds = %if.then.14
  %17 = load %struct.node*, %struct.node** %this.addr, align 8
  %value18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  store i8 1, i8* %value18, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  br label %if.end.22

if.else.20:                                       ; preds = %for.end
  %18 = load %struct.node*, %struct.node** %this.addr, align 8
  %value21 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  store i8 2, i8* %value21, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.end.19
  br label %if.end.25

if.else.23:                                       ; preds = %land.lhs.true.3, %lor.lhs.false
  %19 = load %struct.node*, %struct.node** %this.addr, align 8
  %value24 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  store i8 2, i8* %value24, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.end.22
  ret void
}

declare i32 @is_attacked(i32, i32) #2

declare void @gen(%struct.move_s*) #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.node* @select_most_proving(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %tnode = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  store %struct.node* %0, %struct.node** %tnode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %1 = load %struct.node*, %struct.node** %tnode, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  %2 = load i8, i8* %expanded, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end.23

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @white_to_move, align 4
  %tobool1 = icmp ne i32 %3, 0
  %cond = select i1 %tobool1, i32 0, i32 1
  %4 = load i32, i32* @root_to_move, align 4
  %cmp = icmp eq i32 %cond, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %if.then
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.node*, %struct.node** %tnode, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 6
  %7 = load %struct.node**, %struct.node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %7, i64 %idxprom
  %8 = load %struct.node*, %struct.node** %arrayidx, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %9 = load i32, i32* %proof, align 4
  %10 = load %struct.node*, %struct.node** %tnode, align 8
  %proof3 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 4
  %11 = load i32, i32* %proof3, align 4
  %cmp4 = icmp ne i32 %9, %11
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.2
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.12, %if.else
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.node*, %struct.node** %tnode, align 8
  %children8 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 6
  %15 = load %struct.node**, %struct.node*** %children8, align 8
  %arrayidx9 = getelementptr inbounds %struct.node*, %struct.node** %15, i64 %idxprom7
  %16 = load %struct.node*, %struct.node** %arrayidx9, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 5
  %17 = load i32, i32* %disproof, align 4
  %18 = load %struct.node*, %struct.node** %tnode, align 8
  %disproof10 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 5
  %19 = load i32, i32* %disproof10, align 4
  %cmp11 = icmp ne i32 %17, %19
  br i1 %cmp11, label %while.body.12, label %while.end.14

while.body.12:                                    ; preds = %while.cond.6
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %while.cond.6

while.end.14:                                     ; preds = %while.cond.6
  br label %if.end

if.end:                                           ; preds = %while.end.14, %while.end
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.node*, %struct.node** %tnode, align 8
  %children16 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 6
  %23 = load %struct.node**, %struct.node*** %children16, align 8
  %arrayidx17 = getelementptr inbounds %struct.node*, %struct.node** %23, i64 %idxprom15
  %24 = load %struct.node*, %struct.node** %arrayidx17, align 8
  store %struct.node* %24, %struct.node** %tnode, align 8
  %25 = load i32, i32* @hash, align 4
  %26 = load i32, i32* @move_number, align 4
  %27 = load i32, i32* @ply, align 4
  %add = add nsw i32 %26, %27
  %sub = sub nsw i32 %add, 1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom18
  store i32 %25, i32* %arrayidx19, align 4
  %28 = load %struct.node*, %struct.node** %tnode, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 8
  call void @make(%struct.move_s* %move, i32 0)
  %29 = load i32, i32* @ply, align 4
  %30 = load i32, i32* @maxply, align 4
  %cmp20 = icmp sgt i32 %29, %30
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  %31 = load i32, i32* @ply, align 4
  store i32 %31, i32* @maxply, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
  br label %while.cond

while.end.23:                                     ; preds = %while.cond
  %32 = load %struct.node*, %struct.node** %tnode, align 8
  ret %struct.node* %32
}

; Function Attrs: nounwind uwtable
define void @set_proof_and_disproof_numbers(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  %proof = alloca i32, align 4
  %disproof = alloca i32, align 4
  %i = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %l = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %ic = alloca i32, align 4
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 2
  %1 = load i8, i8* %expanded, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else.90

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @white_to_move, align 4
  %tobool1 = icmp ne i32 %2, 0
  %cond = select i1 %tobool1, i32 0, i32 1
  %3 = load i32, i32* @root_to_move, align 4
  %cmp = icmp ne i32 %cond, %3
  br i1 %cmp, label %if.then.2, label %if.else.36

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %proof, align 4
  store i32 100000000, i32* %disproof, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load i8, i8* %num_children, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp slt i32 %4, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.node*, %struct.node** %node.addr, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 6
  %9 = load %struct.node**, %struct.node*** %children, align 8
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %9, i64 %idxprom
  %10 = load %struct.node*, %struct.node** %arrayidx, align 8
  %proof5 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 4
  %11 = load i32, i32* %proof5, align 4
  %12 = load i32, i32* %proof, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %proof, align 4
  %13 = load i32, i32* %proof, align 4
  %cmp6 = icmp sgt i32 %13, 100000000
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  store i32 100000000, i32* %proof, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.node*, %struct.node** %node.addr, align 8
  %children10 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 6
  %16 = load %struct.node**, %struct.node*** %children10, align 8
  %arrayidx11 = getelementptr inbounds %struct.node*, %struct.node** %16, i64 %idxprom9
  %17 = load %struct.node*, %struct.node** %arrayidx11, align 8
  %disproof12 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 5
  %18 = load i32, i32* %disproof12, align 4
  %19 = load i32, i32* %disproof, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.node*, %struct.node** %node.addr, align 8
  %children17 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 6
  %22 = load %struct.node**, %struct.node*** %children17, align 8
  %arrayidx18 = getelementptr inbounds %struct.node*, %struct.node** %22, i64 %idxprom16
  %23 = load %struct.node*, %struct.node** %arrayidx18, align 8
  %disproof19 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 5
  %24 = load i32, i32* %disproof19, align 4
  store i32 %24, i32* %disproof, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %proof, align 4
  %cmp21 = icmp eq i32 %26, 0
  br i1 %cmp21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %27 = load i32, i32* %disproof, align 4
  %cmp23 = icmp eq i32 %27, 100000000
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %lor.lhs.false, %for.end
  %28 = load i32, i32* @forwards, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, i32* @forwards, align 4
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %disproof, align 4
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.else
  %30 = load i32, i32* %proof, align 4
  %cmp30 = icmp eq i32 %30, 100000000
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.else
  %31 = load i32, i32* @forwards, align 4
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, i32* @forwards, align 4
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %lor.lhs.false.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  br label %if.end.84

if.else.36:                                       ; preds = %if.then
  store i32 0, i32* %disproof, align 4
  store i32 100000000, i32* %proof, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.64, %if.else.36
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children38 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %34 = load i8, i8* %num_children38, align 1
  %conv39 = zext i8 %34 to i32
  %cmp40 = icmp slt i32 %32, %conv39
  br i1 %cmp40, label %for.body.42, label %for.end.66

for.body.42:                                      ; preds = %for.cond.37
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.node*, %struct.node** %node.addr, align 8
  %children44 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 6
  %37 = load %struct.node**, %struct.node*** %children44, align 8
  %arrayidx45 = getelementptr inbounds %struct.node*, %struct.node** %37, i64 %idxprom43
  %38 = load %struct.node*, %struct.node** %arrayidx45, align 8
  %disproof46 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 5
  %39 = load i32, i32* %disproof46, align 4
  %40 = load i32, i32* %disproof, align 4
  %add47 = add nsw i32 %40, %39
  store i32 %add47, i32* %disproof, align 4
  %41 = load i32, i32* %disproof, align 4
  %cmp48 = icmp sgt i32 %41, 100000000
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body.42
  store i32 100000000, i32* %disproof, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %for.body.42
  %42 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %42 to i64
  %43 = load %struct.node*, %struct.node** %node.addr, align 8
  %children53 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 6
  %44 = load %struct.node**, %struct.node*** %children53, align 8
  %arrayidx54 = getelementptr inbounds %struct.node*, %struct.node** %44, i64 %idxprom52
  %45 = load %struct.node*, %struct.node** %arrayidx54, align 8
  %proof55 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %46 = load i32, i32* %proof55, align 4
  %47 = load i32, i32* %proof, align 4
  %cmp56 = icmp slt i32 %46, %47
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.51
  %48 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %48 to i64
  %49 = load %struct.node*, %struct.node** %node.addr, align 8
  %children60 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 6
  %50 = load %struct.node**, %struct.node*** %children60, align 8
  %arrayidx61 = getelementptr inbounds %struct.node*, %struct.node** %50, i64 %idxprom59
  %51 = load %struct.node*, %struct.node** %arrayidx61, align 8
  %proof62 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %52 = load i32, i32* %proof62, align 4
  store i32 %52, i32* %proof, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.end.51
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %53 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %53, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.37

for.end.66:                                       ; preds = %for.cond.37
  %54 = load i32, i32* %proof, align 4
  %cmp67 = icmp eq i32 %54, 0
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %for.end.66
  %55 = load i32, i32* %disproof, align 4
  %cmp70 = icmp eq i32 %55, 100000000
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %lor.lhs.false.69, %for.end.66
  %56 = load i32, i32* @forwards, align 4
  %inc73 = add nsw i32 %56, 1
  store i32 %inc73, i32* @forwards, align 4
  call void @StoreTT(i32 999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %if.end.83

if.else.74:                                       ; preds = %lor.lhs.false.69
  %57 = load i32, i32* %disproof, align 4
  %cmp75 = icmp eq i32 %57, 0
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %if.else.74
  %58 = load i32, i32* %proof, align 4
  %cmp78 = icmp eq i32 %58, 100000000
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %lor.lhs.false.77, %if.else.74
  %59 = load i32, i32* @forwards, align 4
  %inc81 = add nsw i32 %59, 1
  store i32 %inc81, i32* @forwards, align 4
  call void @StoreTT(i32 -999500, i32 1000000, i32 -1000000, i32 -1, i32 0, i32 200)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %lor.lhs.false.77
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.72
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.35
  %60 = load i32, i32* @hash, align 4
  %61 = load i32, i32* @move_number, align 4
  %62 = load i32, i32* @ply, align 4
  %add85 = add nsw i32 %61, %62
  %sub = sub nsw i32 %add85, 1
  %idxprom86 = sext i32 %sub to i64
  %arrayidx87 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom86
  store i32 %60, i32* %arrayidx87, align 4
  %63 = load i32, i32* %proof, align 4
  %64 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof88 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  store i32 %63, i32* %proof88, align 4
  %65 = load i32, i32* %disproof, align 4
  %66 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof89 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 5
  store i32 %65, i32* %disproof89, align 4
  br label %if.end.303

if.else.90:                                       ; preds = %entry
  %67 = load %struct.node*, %struct.node** %node.addr, align 8
  %evaluated = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 3
  %68 = load i8, i8* %evaluated, align 1
  %tobool91 = icmp ne i8 %68, 0
  br i1 %tobool91, label %if.then.92, label %if.else.299

if.then.92:                                       ; preds = %if.else.90
  %69 = load %struct.node*, %struct.node** %node.addr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 0
  %70 = load i8, i8* %value, align 1
  %conv93 = zext i8 %70 to i32
  %cmp94 = icmp eq i32 %conv93, 2
  br i1 %cmp94, label %if.then.96, label %if.else.271

if.then.96:                                       ; preds = %if.then.92
  %71 = load i32, i32* @hash, align 4
  %72 = load i32, i32* @move_number, align 4
  %73 = load i32, i32* @ply, align 4
  %add97 = add nsw i32 %72, %73
  %sub98 = sub nsw i32 %add97, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom99
  store i32 %71, i32* %arrayidx100, align 4
  %call = call i32 @is_draw()
  %tobool101 = icmp ne i32 %call, 0
  br i1 %tobool101, label %if.then.105, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.then.96
  %74 = load i32, i32* @ply, align 4
  %cmp103 = icmp sgt i32 %74, 200
  br i1 %cmp103, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %lor.lhs.false.102, %if.then.96
  %75 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof106 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 4
  store i32 50000, i32* %proof106, align 4
  %76 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof107 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 5
  store i32 50000, i32* %disproof107, align 4
  br label %if.end.303

if.end.108:                                       ; preds = %lor.lhs.false.102
  %77 = load i32, i32* @Variant, align 4
  %cmp109 = icmp ne i32 %77, 4
  br i1 %cmp109, label %if.then.111, label %if.else.134

if.then.111:                                      ; preds = %if.end.108
  store i32 0, i32* %num_moves, align 4
  %arrayidx112 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx112)
  %78 = load i32, i32* @numb_moves, align 4
  store i32 %78, i32* %num_moves, align 4
  %call113 = call i32 @in_check()
  store i32 %call113, i32* %ic, align 4
  %79 = load i32, i32* @Variant, align 4
  %cmp114 = icmp ne i32 %79, 3
  br i1 %cmp114, label %if.then.116, label %if.else.132

if.then.116:                                      ; preds = %if.then.111
  store i32 0, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.129, %if.then.116
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %num_moves, align 4
  %cmp118 = icmp slt i32 %80, %81
  br i1 %cmp118, label %for.body.120, label %for.end.131

for.body.120:                                     ; preds = %for.cond.117
  %arrayidx121 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %82 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx121, i32 %82)
  %arrayidx122 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %ic, align 4
  %call123 = call i32 @check_legal(%struct.move_s* %arrayidx122, i32 %83, i32 %84)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %for.body.120
  %85 = load i32, i32* %l, align 4
  %inc126 = add nsw i32 %85, 1
  store i32 %inc126, i32* %l, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %for.body.120
  %arrayidx128 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %86 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx128, i32 %86)
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.127
  %87 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %87, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.117

for.end.131:                                      ; preds = %for.cond.117
  br label %if.end.133

if.else.132:                                      ; preds = %if.then.111
  %88 = load i32, i32* @numb_moves, align 4
  store i32 %88, i32* %l, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %for.end.131
  br label %if.end.174

if.else.134:                                      ; preds = %if.end.108
  store i32 0, i32* %l, align 4
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx135 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx135)
  %89 = load i32, i32* @numb_moves, align 4
  store i32 %89, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  %call136 = call i32 @in_check()
  store i32 %call136, i32* %ic, align 4
  %90 = load i32, i32* %num_moves, align 4
  %tobool137 = icmp ne i32 %90, 0
  br i1 %tobool137, label %if.then.138, label %if.end.154

if.then.138:                                      ; preds = %if.else.134
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.151, %if.then.138
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %num_moves, align 4
  %cmp140 = icmp slt i32 %91, %92
  br i1 %cmp140, label %for.body.142, label %for.end.153

for.body.142:                                     ; preds = %for.cond.139
  %arrayidx143 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %93 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx143, i32 %93)
  %arrayidx144 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %ic, align 4
  %call145 = call i32 @check_legal(%struct.move_s* %arrayidx144, i32 %94, i32 %95)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %for.body.142
  %96 = load i32, i32* %l, align 4
  %inc148 = add nsw i32 %96, 1
  store i32 %inc148, i32* %l, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %for.body.142
  %arrayidx150 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %97 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx150, i32 %97)
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.149
  %98 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %98, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.139

for.end.153:                                      ; preds = %for.cond.139
  br label %if.end.154

if.end.154:                                       ; preds = %for.end.153, %if.else.134
  %99 = load i32, i32* %l, align 4
  %tobool155 = icmp ne i32 %99, 0
  br i1 %tobool155, label %if.end.173, label %if.then.156

if.then.156:                                      ; preds = %if.end.154
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx157 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx157)
  %100 = load i32, i32* @numb_moves, align 4
  store i32 %100, i32* %num_moves, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.170, %if.then.156
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %num_moves, align 4
  %cmp159 = icmp slt i32 %101, %102
  br i1 %cmp159, label %for.body.161, label %for.end.172

for.body.161:                                     ; preds = %for.cond.158
  %arrayidx162 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %103 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx162, i32 %103)
  %arrayidx163 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %ic, align 4
  %call164 = call i32 @check_legal(%struct.move_s* %arrayidx163, i32 %104, i32 %105)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %for.body.161
  %106 = load i32, i32* %l, align 4
  %inc167 = add nsw i32 %106, 1
  store i32 %inc167, i32* %l, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %for.body.161
  %arrayidx169 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %107 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx169, i32 %107)
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.168
  %108 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %108, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.158

for.end.172:                                      ; preds = %for.cond.158
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %if.end.154
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.133
  %109 = load i32, i32* %l, align 4
  %cmp175 = icmp eq i32 %109, 0
  br i1 %cmp175, label %if.then.177, label %if.else.180

if.then.177:                                      ; preds = %if.end.174
  %110 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof178 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 4
  store i32 1, i32* %proof178, align 4
  %111 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof179 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 5
  store i32 1, i32* %disproof179, align 4
  br label %if.end.270

if.else.180:                                      ; preds = %if.end.174
  %112 = load i32, i32* @white_to_move, align 4
  %tobool181 = icmp ne i32 %112, 0
  %cond182 = select i1 %tobool181, i32 0, i32 1
  %113 = load i32, i32* @root_to_move, align 4
  %cmp183 = icmp eq i32 %cond182, %113
  br i1 %cmp183, label %if.then.185, label %if.else.226

if.then.185:                                      ; preds = %if.else.180
  %114 = load i32, i32* @Variant, align 4
  %cmp186 = icmp ne i32 %114, 3
  br i1 %cmp186, label %land.lhs.true, label %if.else.196

land.lhs.true:                                    ; preds = %if.then.185
  %115 = load i32, i32* @Variant, align 4
  %cmp188 = icmp ne i32 %115, 4
  br i1 %cmp188, label %if.then.190, label %if.else.196

if.then.190:                                      ; preds = %land.lhs.true
  %116 = load i32, i32* @ply, align 4
  %div = sdiv i32 %116, 50
  %add191 = add nsw i32 1, %div
  %117 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof192 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 4
  store i32 %add191, i32* %proof192, align 4
  %118 = load i32, i32* %l, align 4
  %119 = load i32, i32* @ply, align 4
  %div193 = sdiv i32 %119, 50
  %add194 = add nsw i32 %118, %div193
  %120 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof195 = getelementptr inbounds %struct.node, %struct.node* %120, i32 0, i32 5
  store i32 %add194, i32* %disproof195, align 4
  br label %if.end.225

if.else.196:                                      ; preds = %land.lhs.true, %if.then.185
  %121 = load i32, i32* @Variant, align 4
  %cmp197 = icmp eq i32 %121, 4
  br i1 %cmp197, label %if.then.199, label %if.else.217

if.then.199:                                      ; preds = %if.else.196
  %122 = load i32, i32* @phase, align 4
  %cmp200 = icmp eq i32 %122, 2
  br i1 %cmp200, label %if.then.202, label %if.else.209

if.then.202:                                      ; preds = %if.then.199
  %123 = load i32, i32* @ply, align 4
  %div203 = sdiv i32 %123, 30
  %add204 = add nsw i32 1, %div203
  %124 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof205 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 4
  store i32 %add204, i32* %proof205, align 4
  %125 = load i32, i32* %l, align 4
  %126 = load i32, i32* @ply, align 4
  %div206 = sdiv i32 %126, 30
  %add207 = add nsw i32 %125, %div206
  %127 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof208 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 5
  store i32 %add207, i32* %disproof208, align 4
  br label %if.end.216

if.else.209:                                      ; preds = %if.then.199
  %128 = load i32, i32* @ply, align 4
  %div210 = sdiv i32 %128, 80
  %add211 = add nsw i32 1, %div210
  %129 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof212 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 4
  store i32 %add211, i32* %proof212, align 4
  %130 = load i32, i32* %l, align 4
  %131 = load i32, i32* @ply, align 4
  %div213 = sdiv i32 %131, 80
  %add214 = add nsw i32 %130, %div213
  %132 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof215 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 5
  store i32 %add214, i32* %disproof215, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.209, %if.then.202
  br label %if.end.224

if.else.217:                                      ; preds = %if.else.196
  %133 = load i32, i32* @ply, align 4
  %div218 = sdiv i32 %133, 150
  %add219 = add nsw i32 1, %div218
  %134 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof220 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 4
  store i32 %add219, i32* %proof220, align 4
  %135 = load i32, i32* %l, align 4
  %136 = load i32, i32* @ply, align 4
  %div221 = sdiv i32 %136, 150
  %add222 = add nsw i32 %135, %div221
  %137 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof223 = getelementptr inbounds %struct.node, %struct.node* %137, i32 0, i32 5
  store i32 %add222, i32* %disproof223, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.217, %if.end.216
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.190
  br label %if.end.269

if.else.226:                                      ; preds = %if.else.180
  %138 = load i32, i32* @Variant, align 4
  %cmp227 = icmp ne i32 %138, 3
  br i1 %cmp227, label %land.lhs.true.229, label %if.else.239

land.lhs.true.229:                                ; preds = %if.else.226
  %139 = load i32, i32* @Variant, align 4
  %cmp230 = icmp ne i32 %139, 4
  br i1 %cmp230, label %if.then.232, label %if.else.239

if.then.232:                                      ; preds = %land.lhs.true.229
  %140 = load i32, i32* %l, align 4
  %141 = load i32, i32* @ply, align 4
  %div233 = sdiv i32 %141, 50
  %add234 = add nsw i32 %140, %div233
  %142 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof235 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 4
  store i32 %add234, i32* %proof235, align 4
  %143 = load i32, i32* @ply, align 4
  %div236 = sdiv i32 %143, 50
  %add237 = add nsw i32 1, %div236
  %144 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof238 = getelementptr inbounds %struct.node, %struct.node* %144, i32 0, i32 5
  store i32 %add237, i32* %disproof238, align 4
  br label %if.end.268

if.else.239:                                      ; preds = %land.lhs.true.229, %if.else.226
  %145 = load i32, i32* @Variant, align 4
  %cmp240 = icmp eq i32 %145, 4
  br i1 %cmp240, label %if.then.242, label %if.else.260

if.then.242:                                      ; preds = %if.else.239
  %146 = load i32, i32* @phase, align 4
  %cmp243 = icmp eq i32 %146, 2
  br i1 %cmp243, label %if.then.245, label %if.else.252

if.then.245:                                      ; preds = %if.then.242
  %147 = load i32, i32* %l, align 4
  %148 = load i32, i32* @ply, align 4
  %div246 = sdiv i32 %148, 30
  %add247 = add nsw i32 %147, %div246
  %149 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof248 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 4
  store i32 %add247, i32* %proof248, align 4
  %150 = load i32, i32* @ply, align 4
  %div249 = sdiv i32 %150, 30
  %add250 = add nsw i32 1, %div249
  %151 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof251 = getelementptr inbounds %struct.node, %struct.node* %151, i32 0, i32 5
  store i32 %add250, i32* %disproof251, align 4
  br label %if.end.259

if.else.252:                                      ; preds = %if.then.242
  %152 = load i32, i32* %l, align 4
  %153 = load i32, i32* @ply, align 4
  %div253 = sdiv i32 %153, 80
  %add254 = add nsw i32 %152, %div253
  %154 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof255 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 4
  store i32 %add254, i32* %proof255, align 4
  %155 = load i32, i32* @ply, align 4
  %div256 = sdiv i32 %155, 80
  %add257 = add nsw i32 1, %div256
  %156 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof258 = getelementptr inbounds %struct.node, %struct.node* %156, i32 0, i32 5
  store i32 %add257, i32* %disproof258, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.252, %if.then.245
  br label %if.end.267

if.else.260:                                      ; preds = %if.else.239
  %157 = load i32, i32* %l, align 4
  %158 = load i32, i32* @ply, align 4
  %div261 = sdiv i32 %158, 150
  %add262 = add nsw i32 %157, %div261
  %159 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof263 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 4
  store i32 %add262, i32* %proof263, align 4
  %160 = load i32, i32* @ply, align 4
  %div264 = sdiv i32 %160, 150
  %add265 = add nsw i32 1, %div264
  %161 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof266 = getelementptr inbounds %struct.node, %struct.node* %161, i32 0, i32 5
  store i32 %add265, i32* %disproof266, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.260, %if.end.259
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.232
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.225
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.then.177
  br label %if.end.298

if.else.271:                                      ; preds = %if.then.92
  %162 = load %struct.node*, %struct.node** %node.addr, align 8
  %value272 = getelementptr inbounds %struct.node, %struct.node* %162, i32 0, i32 0
  %163 = load i8, i8* %value272, align 1
  %conv273 = zext i8 %163 to i32
  %cmp274 = icmp eq i32 %conv273, 0
  br i1 %cmp274, label %if.then.276, label %if.else.279

if.then.276:                                      ; preds = %if.else.271
  %164 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof277 = getelementptr inbounds %struct.node, %struct.node* %164, i32 0, i32 4
  store i32 100000000, i32* %proof277, align 4
  %165 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof278 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 5
  store i32 0, i32* %disproof278, align 4
  br label %if.end.297

if.else.279:                                      ; preds = %if.else.271
  %166 = load %struct.node*, %struct.node** %node.addr, align 8
  %value280 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 0
  %167 = load i8, i8* %value280, align 1
  %conv281 = zext i8 %167 to i32
  %cmp282 = icmp eq i32 %conv281, 1
  br i1 %cmp282, label %if.then.284, label %if.else.287

if.then.284:                                      ; preds = %if.else.279
  %168 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof285 = getelementptr inbounds %struct.node, %struct.node* %168, i32 0, i32 4
  store i32 0, i32* %proof285, align 4
  %169 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof286 = getelementptr inbounds %struct.node, %struct.node* %169, i32 0, i32 5
  store i32 100000000, i32* %disproof286, align 4
  br label %if.end.296

if.else.287:                                      ; preds = %if.else.279
  %170 = load %struct.node*, %struct.node** %node.addr, align 8
  %value288 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 0
  %171 = load i8, i8* %value288, align 1
  %conv289 = zext i8 %171 to i32
  %cmp290 = icmp eq i32 %conv289, 3
  br i1 %cmp290, label %if.then.292, label %if.end.295

if.then.292:                                      ; preds = %if.else.287
  %172 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof293 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 4
  store i32 50000, i32* %proof293, align 4
  %173 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof294 = getelementptr inbounds %struct.node, %struct.node* %173, i32 0, i32 5
  store i32 50000, i32* %disproof294, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.292, %if.else.287
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.284
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.276
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.end.270
  br label %if.end.302

if.else.299:                                      ; preds = %if.else.90
  %174 = load %struct.node*, %struct.node** %node.addr, align 8
  %disproof300 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 5
  store i32 1, i32* %disproof300, align 4
  %175 = load %struct.node*, %struct.node** %node.addr, align 8
  %proof301 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 4
  store i32 1, i32* %proof301, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.299, %if.end.298
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.105, %if.end.302, %if.end.84
  ret void
}

declare void @StoreTT(i32, i32, i32, i32, i32, i32) #2

declare i32 @is_draw() #2

declare i32 @in_check() #2

; Function Attrs: nounwind uwtable
define void @develop_node(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  %num_moves = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %newnode = alloca %struct.node*, align 8
  %leg = alloca i32, align 4
  %ic = alloca i32, align 4
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %call = call i32 @in_check()
  store i32 %call, i32* %ic, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp ne i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %num_moves, align 4
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %1 = load i32, i32* @numb_moves, align 4
  store i32 %1, i32* %num_moves, align 4
  br label %if.end.13

if.else:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %leg, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx1 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx1)
  %2 = load i32, i32* @numb_moves, align 4
  store i32 %2, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_moves, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %5 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx3, i32 %5)
  %arrayidx4 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ic, align 4
  %call5 = call i32 @check_legal(%struct.move_s* %arrayidx4, i32 %6, i32 %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %leg, align 4
  %arrayidx7 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %8 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx7, i32 %8)
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx8 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %9 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %11 = load i32, i32* %leg, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.end
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx11)
  %12 = load i32, i32* @numb_moves, align 4
  store i32 %12, i32* %num_moves, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %13 = load i32, i32* %num_moves, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 8
  %conv14 = trunc i64 %mul to i32
  %call15 = call i8* @Xmalloc(i32 %conv14)
  %14 = bitcast i8* %call15 to %struct.node**
  %15 = load %struct.node*, %struct.node** %node.addr, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 6
  store %struct.node** %14, %struct.node*** %children, align 8
  store i32 0, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.37, %if.end.13
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %num_moves, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %for.body.19, label %for.end.39

for.body.19:                                      ; preds = %for.cond.16
  %18 = load i32, i32* @hash, align 4
  %19 = load i32, i32* @move_number, align 4
  %20 = load i32, i32* @ply, align 4
  %add = add nsw i32 %19, %20
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx20 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom
  store i32 %18, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %21 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx21, i32 %21)
  %arrayidx22 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %ic, align 4
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx22, i32 %22, i32 %23)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.34

if.then.25:                                       ; preds = %for.body.19
  %call26 = call i8* @Xmalloc(i32 56)
  %24 = bitcast i8* %call26 to %struct.node*
  store %struct.node* %24, %struct.node** %newnode, align 8
  %25 = load %struct.node*, %struct.node** %newnode, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  store i8 0, i8* %value, align 1
  %26 = load %struct.node*, %struct.node** %newnode, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 5
  store i32 1, i32* %disproof, align 4
  %27 = load %struct.node*, %struct.node** %newnode, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  store i32 1, i32* %proof, align 4
  %28 = load %struct.node*, %struct.node** %newnode, align 8
  %num_children = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 1
  store i8 0, i8* %num_children, align 1
  %29 = load %struct.node*, %struct.node** %node.addr, align 8
  %30 = load %struct.node*, %struct.node** %newnode, align 8
  %parent = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 7
  store %struct.node* %29, %struct.node** %parent, align 8
  %31 = load %struct.node*, %struct.node** %newnode, align 8
  %evaluated = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 3
  store i8 0, i8* %evaluated, align 1
  %32 = load %struct.node*, %struct.node** %newnode, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  store i8 0, i8* %expanded, align 1
  %33 = load %struct.node*, %struct.node** %newnode, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 8
  %34 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom27
  %35 = bitcast %struct.move_s* %move to i8*
  %36 = bitcast %struct.move_s* %arrayidx28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 24, i32 4, i1 false)
  %37 = load %struct.node*, %struct.node** %newnode, align 8
  %38 = load i32, i32* %l, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.node*, %struct.node** %node.addr, align 8
  %children30 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 6
  %40 = load %struct.node**, %struct.node*** %children30, align 8
  %arrayidx31 = getelementptr inbounds %struct.node*, %struct.node** %40, i64 %idxprom29
  store %struct.node* %37, %struct.node** %arrayidx31, align 8
  %41 = load i32, i32* %l, align 4
  %inc32 = add nsw i32 %41, 1
  store i32 %inc32, i32* %l, align 4
  %42 = load %struct.node*, %struct.node** %newnode, align 8
  call void @pn_eval(%struct.node* %42)
  %43 = load %struct.node*, %struct.node** %newnode, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %43)
  %arrayidx33 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %44 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx33, i32 %44)
  br label %if.end.36

if.else.34:                                       ; preds = %for.body.19
  %arrayidx35 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %45 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx35, i32 %45)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %46 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %46, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.16

for.end.39:                                       ; preds = %for.cond.16
  %47 = load %struct.node*, %struct.node** %node.addr, align 8
  %expanded40 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 2
  store i8 1, i8* %expanded40, align 1
  %48 = load i32, i32* %l, align 4
  %conv41 = trunc i32 %48 to i8
  %49 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children42 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 1
  store i8 %conv41, i8* %num_children42, align 1
  %50 = load %struct.node*, %struct.node** %node.addr, align 8
  %num_children43 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 1
  %51 = load i8, i8* %num_children43, align 1
  %conv44 = zext i8 %51 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.66

if.then.47:                                       ; preds = %for.end.39
  %52 = load %struct.node*, %struct.node** %node.addr, align 8
  %expanded48 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 2
  store i8 0, i8* %expanded48, align 1
  %53 = load %struct.node*, %struct.node** %node.addr, align 8
  %evaluated49 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 3
  store i8 1, i8* %evaluated49, align 1
  %54 = load i32, i32* @Variant, align 4
  %cmp50 = icmp ne i32 %54, 3
  br i1 %cmp50, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.then.47
  %55 = load i32, i32* @Variant, align 4
  %cmp52 = icmp ne i32 %55, 4
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %land.lhs.true
  %56 = load %struct.node*, %struct.node** %node.addr, align 8
  %value55 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  store i8 3, i8* %value55, align 1
  br label %if.end.65

if.else.56:                                       ; preds = %land.lhs.true, %if.then.47
  %57 = load i32, i32* @white_to_move, align 4
  %tobool57 = icmp ne i32 %57, 0
  %cond = select i1 %tobool57, i32 0, i32 1
  %58 = load i32, i32* @root_to_move, align 4
  %cmp58 = icmp eq i32 %cond, %58
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %if.else.56
  %59 = load %struct.node*, %struct.node** %node.addr, align 8
  %value61 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 0
  store i8 1, i8* %value61, align 1
  br label %if.end.64

if.else.62:                                       ; preds = %if.else.56
  %60 = load %struct.node*, %struct.node** %node.addr, align 8
  %value63 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 0
  store i8 0, i8* %value63, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.54
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %for.end.39
  %61 = load i32, i32* %num_moves, align 4
  %62 = load i32, i32* @nodecount, align 4
  %add67 = add nsw i32 %62, %61
  store i32 %add67, i32* @nodecount, align 4
  %63 = load i32, i32* %num_moves, align 4
  %64 = load i32, i32* @frees, align 4
  %add68 = add nsw i32 %64, %63
  store i32 %add68, i32* @frees, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @update_ancestors(%struct.node* %node) #0 {
entry:
  %node.addr = alloca %struct.node*, align 8
  %tnode = alloca %struct.node*, align 8
  %prevnode = alloca %struct.node*, align 8
  store %struct.node* %node, %struct.node** %node.addr, align 8
  %0 = load %struct.node*, %struct.node** %node.addr, align 8
  store %struct.node* %0, %struct.node** %tnode, align 8
  %1 = load %struct.node*, %struct.node** %node.addr, align 8
  store %struct.node* %1, %struct.node** %prevnode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.node*, %struct.node** %tnode, align 8
  %cmp = icmp ne %struct.node* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %tnode, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %3)
  %4 = load %struct.node*, %struct.node** %tnode, align 8
  store %struct.node* %4, %struct.node** %prevnode, align 8
  %5 = load %struct.node*, %struct.node** %tnode, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 8
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %6 = load i32, i32* %target, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.node*, %struct.node** %tnode, align 8
  %move2 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 8
  call void @unmake(%struct.move_s* %move2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct.node*, %struct.node** %tnode, align 8
  %parent = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 7
  %9 = load %struct.node*, %struct.node** %parent, align 8
  store %struct.node* %9, %struct.node** %tnode, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.node*, %struct.node** %prevnode, align 8
  %move3 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 8
  %target4 = getelementptr inbounds %struct.move_s, %struct.move_s* %move3, i32 0, i32 1
  %11 = load i32, i32* %target4, align 4
  %cmp5 = icmp ne i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.end
  %12 = load %struct.node*, %struct.node** %prevnode, align 8
  %move7 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 8
  call void @make(%struct.move_s* %move7, i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @pn2_eval(%struct.node* %root) #0 {
entry:
  %root.addr = alloca %struct.node*, align 8
  %mostproving = alloca %struct.node*, align 8
  %currentnode = alloca %struct.node*, align 8
  %oldparent = alloca %struct.node*, align 8
  store %struct.node* %root, %struct.node** %root.addr, align 8
  store i32 0, i32* @nodecount2, align 4
  store i32 1, i32* @pn2, align 4
  %0 = load %struct.node*, %struct.node** %root.addr, align 8
  %parent = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 7
  %1 = load %struct.node*, %struct.node** %parent, align 8
  store %struct.node* %1, %struct.node** %oldparent, align 8
  %2 = load %struct.node*, %struct.node** %root.addr, align 8
  %parent1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 7
  store %struct.node* null, %struct.node** %parent1, align 8
  %3 = load %struct.node*, %struct.node** %root.addr, align 8
  call void @pn_eval(%struct.node* %3)
  %4 = load %struct.node*, %struct.node** %root.addr, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %4)
  %5 = load %struct.node*, %struct.node** %root.addr, align 8
  store %struct.node* %5, %struct.node** %currentnode, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.node*, %struct.node** %root.addr, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 4
  %7 = load i32, i32* %proof, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %8 = load %struct.node*, %struct.node** %root.addr, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  %9 = load i32, i32* %disproof, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* @nodecount2, align 4
  %11 = load i32, i32* @nodecount, align 4
  %cmp3 = icmp slt i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.node*, %struct.node** %root.addr, align 8
  %call = call %struct.node* @select_most_proving(%struct.node* %13)
  store %struct.node* %call, %struct.node** %mostproving, align 8
  %14 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @develop_node(%struct.node* %14)
  %15 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @update_ancestors(%struct.node* %15)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.node*, %struct.node** %root.addr, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store i8 0, i8* %expanded, align 1
  %17 = load %struct.node*, %struct.node** %root.addr, align 8
  %num_children = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store i8 0, i8* %num_children, align 1
  %18 = load %struct.node*, %struct.node** %oldparent, align 8
  %19 = load %struct.node*, %struct.node** %root.addr, align 8
  %parent4 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 7
  store %struct.node* %18, %struct.node** %parent4, align 8
  store i32 0, i32* @pn2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @proofnumberscan() #0 {
entry:
  %moves = alloca [512 x %struct.move_s], align 16
  %islegal = alloca [512 x i32], align 16
  %nodesspent = alloca [512 x i32], align 16
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %legal = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %xstart_time = alloca i64, align 8
  %root = alloca %struct.node*, align 8
  %mostproving = alloca %struct.node*, align 8
  %currentnode = alloca %struct.node*, align 8
  %leastlooked = alloca i32, align 4
  %leastlooked_l = alloca i32, align 4
  %leastlooked_i = alloca i32, align 4
  %losers = alloca i32, align 4
  %xnodecount = alloca i32, align 4
  %firsts = alloca i32, align 4
  %alternates = alloca i32, align 4
  %output = alloca [8 x i8], align 1
  %ic = alloca i32, align 4
  %bdp = alloca float, align 4
  %altlosers = alloca i32, align 4
  %tmp = alloca %struct.move_s, align 8
  store i32 0, i32* %leastlooked_l, align 4
  store i32 0, i32* %leastlooked_i, align 4
  %call = call i64 @rtime()
  store i64 %call, i64* %xstart_time, align 8
  %0 = load i32, i32* @PBSize, align 4
  %conv = sext i32 %0 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 56) #3
  store i8* %call1, i8** @membuff, align 8
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #3
  %1 = bitcast i8* %call2 to %struct.node*
  store %struct.node* %1, %struct.node** %root, align 8
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %2 = load i32, i32* @numb_moves, align 4
  store i32 %2, i32* %num_moves, align 4
  store i32 0, i32* @alllosers, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([300 x i32]* @rootlosers to i8*), i8 0, i64 1200, i32 16, i1 false)
  %3 = bitcast [512 x i32]* %nodesspent to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 2048, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  store i32 0, i32* %legal, align 4
  %call3 = call i32 @in_check()
  store i32 %call3, i32* %ic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_moves, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %6 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx5, i32 %6)
  %arrayidx6 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %ic, align 4
  %call7 = call i32 @check_legal(%struct.move_s* %arrayidx6, i32 %7, i32 %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %legal, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %legal, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx8, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %12 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx11, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %legal, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  call void @Xfree()
  %15 = load i8*, i8** @membuff, align 8
  call void @free(i8* %15) #3
  %16 = load %struct.node*, %struct.node** %root, align 8
  %17 = bitcast %struct.node* %16 to i8*
  call void @free(i8* %17) #3
  br label %return

if.end.16:                                        ; preds = %for.end
  store i32 0, i32* %losers, align 4
  store i32 1, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @maxply, align 4
  store i32 0, i32* @forwards, align 4
  store i32 0, i32* %firsts, align 4
  store i32 0, i32* %alternates, align 4
  %18 = load i32, i32* @hash, align 4
  %19 = load i32, i32* @move_number, align 4
  %20 = load i32, i32* @ply, align 4
  %add = add nsw i32 %19, %20
  %sub = sub nsw i32 %add, 1
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom17
  store i32 %18, i32* %arrayidx18, align 4
  %21 = load i32, i32* @white_to_move, align 4
  %tobool19 = icmp ne i32 %21, 0
  %cond = select i1 %tobool19, i32 0, i32 1
  store i32 %cond, i32* @root_to_move, align 4
  %22 = load %struct.node*, %struct.node** %root, align 8
  call void @pn_eval(%struct.node* %22)
  %23 = load %struct.node*, %struct.node** %root, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %24 = load i8, i8* %value, align 1
  %conv20 = zext i8 %24 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %25 = load %struct.node*, %struct.node** %root, align 8
  %value23 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %26 = load i8, i8* %value23, align 1
  %conv24 = zext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.16
  call void @Xfree()
  %27 = load i8*, i8** @membuff, align 8
  call void @free(i8* %27) #3
  %28 = load %struct.node*, %struct.node** %root, align 8
  %29 = bitcast %struct.node* %28 to i8*
  call void @free(i8* %29) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %30 = load %struct.node*, %struct.node** %root, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %30)
  br label %while.cond

while.cond:                                       ; preds = %if.end.179, %if.then.125, %if.end.28
  %call29 = call i64 @rtime()
  %31 = load i64, i64* %xstart_time, align 8
  %call30 = call i32 @rdifftime(i64 %call29, i64 %31)
  %32 = load i32, i32* @pn_time, align 4
  %cmp31 = icmp slt i32 %call30, %32
  br i1 %cmp31, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %call33 = call i32 @interrupt()
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.end, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %33 = load i32, i32* @bufftop, align 4
  %conv36 = zext i32 %33 to i64
  %34 = load i32, i32* @PBSize, align 4
  %sub37 = sub nsw i32 %34, 10000
  %conv38 = sext i32 %sub37 to i64
  %mul = mul i64 %conv38, 56
  %cmp39 = icmp ult i64 %conv36, %mul
  br i1 %cmp39, label %land.lhs.true.41, label %land.end

land.lhs.true.41:                                 ; preds = %land.lhs.true.35
  %35 = load %struct.node*, %struct.node** %root, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %36 = load i32, i32* %proof, align 4
  %cmp42 = icmp ne i32 %36, 0
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.41
  %37 = load %struct.node*, %struct.node** %root, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 5
  %38 = load i32, i32* %disproof, align 4
  %cmp44 = icmp ne i32 %38, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.41, %land.lhs.true.35, %land.lhs.true, %while.cond
  %39 = phi i1 [ false, %land.lhs.true.41 ], [ false, %land.lhs.true.35 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp44, %land.rhs ]
  br i1 %39, label %while.body, label %while.end.180

while.body:                                       ; preds = %land.end
  %40 = load i32, i32* @iters, align 4
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* @iters, align 4
  %41 = load i32, i32* @nodecount, align 4
  store i32 %41, i32* %xnodecount, align 4
  %42 = load i32, i32* @nodecount, align 4
  %rem = srem i32 %42, 100
  %cmp47 = icmp slt i32 %rem, 66
  br i1 %cmp47, label %if.then.49, label %if.else.92

if.then.49:                                       ; preds = %while.body
  %43 = load i32, i32* %firsts, align 4
  %inc50 = add nsw i32 %43, 1
  store i32 %inc50, i32* %firsts, align 4
  %44 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %44, %struct.node** %currentnode, align 8
  %45 = load %struct.node*, %struct.node** %currentnode, align 8
  %call51 = call %struct.node* @select_most_proving(%struct.node* %45)
  store %struct.node* %call51, %struct.node** %mostproving, align 8
  %46 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @develop_node(%struct.node* %46)
  %47 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @update_ancestors(%struct.node* %47)
  store i32 0, i32* %i, align 4
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.59, %if.then.49
  %48 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %48 to i64
  %49 = load %struct.node*, %struct.node** %root, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 6
  %50 = load %struct.node**, %struct.node*** %children, align 8
  %arrayidx54 = getelementptr inbounds %struct.node*, %struct.node** %50, i64 %idxprom53
  %51 = load %struct.node*, %struct.node** %arrayidx54, align 8
  %proof55 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %52 = load i32, i32* %proof55, align 4
  %53 = load %struct.node*, %struct.node** %root, align 8
  %proof56 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %54 = load i32, i32* %proof56, align 4
  %cmp57 = icmp ne i32 %52, %54
  br i1 %cmp57, label %while.body.59, label %while.end

while.body.59:                                    ; preds = %while.cond.52
  %55 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %55, 1
  store i32 %inc60, i32* %i, align 4
  br label %while.cond.52

while.end:                                        ; preds = %while.cond.52
  %56 = load i32, i32* @nodecount, align 4
  %57 = load i32, i32* %xnodecount, align 4
  %sub61 = sub nsw i32 %56, %57
  %58 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %58 to i64
  %arrayidx63 = getelementptr inbounds [512 x i32], [512 x i32]* %nodesspent, i32 0, i64 %idxprom62
  %59 = load i32, i32* %arrayidx63, align 4
  %add64 = add nsw i32 %59, %sub61
  store i32 %add64, i32* %arrayidx63, align 4
  %60 = load %struct.node*, %struct.node** %root, align 8
  %proof65 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 4
  %61 = load i32, i32* %proof65, align 4
  %cmp66 = icmp eq i32 %61, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.else.80

land.lhs.true.68:                                 ; preds = %while.end
  %62 = load %struct.node*, %struct.node** %root, align 8
  %disproof69 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 5
  %63 = load i32, i32* %disproof69, align 4
  %cmp70 = icmp eq i32 %63, 100000000
  br i1 %cmp70, label %if.then.72, label %if.else.80

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* @forcedwin, align 4
  %64 = load i32, i32* @kibitzed, align 4
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %if.then.72
  store i32 1, i32* @kibitzed, align 4
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.then.72
  %65 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %65 to i64
  %66 = load %struct.node*, %struct.node** %root, align 8
  %children78 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 6
  %67 = load %struct.node**, %struct.node*** %children78, align 8
  %arrayidx79 = getelementptr inbounds %struct.node*, %struct.node** %67, i64 %idxprom77
  %68 = load %struct.node*, %struct.node** %arrayidx79, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 8
  %69 = bitcast %struct.move_s* %move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %69, i64 24, i32 4, i1 false)
  br label %if.end.91

if.else.80:                                       ; preds = %land.lhs.true.68, %while.end
  %70 = load %struct.node*, %struct.node** %root, align 8
  %disproof81 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 5
  %71 = load i32, i32* %disproof81, align 4
  %cmp82 = icmp eq i32 %71, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.90

land.lhs.true.84:                                 ; preds = %if.else.80
  %72 = load %struct.node*, %struct.node** %root, align 8
  %proof85 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 4
  %73 = load i32, i32* %proof85, align 4
  %cmp86 = icmp eq i32 %73, 100000000
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %land.lhs.true.84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  %74 = load i32, i32* %losers, align 4
  %inc89 = add nsw i32 %74, 1
  store i32 %inc89, i32* %losers, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.else.80
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.76
  br label %if.end.179

if.else.92:                                       ; preds = %while.body
  %75 = load i32, i32* %alternates, align 4
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, i32* %alternates, align 4
  store i32 100000000, i32* %leastlooked, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.120, %if.else.92
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %num_moves, align 4
  %cmp95 = icmp slt i32 %76, %77
  br i1 %cmp95, label %for.body.97, label %for.end.122

for.body.97:                                      ; preds = %for.cond.94
  %78 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %78 to i64
  %arrayidx99 = getelementptr inbounds [512 x i32], [512 x i32]* %nodesspent, i32 0, i64 %idxprom98
  %79 = load i32, i32* %arrayidx99, align 4
  %80 = load i32, i32* %leastlooked, align 4
  %cmp100 = icmp slt i32 %79, %80
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.113

land.lhs.true.102:                                ; preds = %for.body.97
  %81 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %81 to i64
  %arrayidx104 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom103
  %82 = load i32, i32* %arrayidx104, align 4
  %tobool105 = icmp ne i32 %82, 0
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.113

land.lhs.true.106:                                ; preds = %land.lhs.true.102
  %83 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %83 to i64
  %arrayidx108 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom107
  %84 = load i32, i32* %arrayidx108, align 4
  %tobool109 = icmp ne i32 %84, 0
  br i1 %tobool109, label %if.end.113, label %if.then.110

if.then.110:                                      ; preds = %land.lhs.true.106
  %85 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %85 to i64
  %arrayidx112 = getelementptr inbounds [512 x i32], [512 x i32]* %nodesspent, i32 0, i64 %idxprom111
  %86 = load i32, i32* %arrayidx112, align 4
  store i32 %86, i32* %leastlooked, align 4
  %87 = load i32, i32* %i, align 4
  store i32 %87, i32* %leastlooked_i, align 4
  %88 = load i32, i32* %l, align 4
  store i32 %88, i32* %leastlooked_l, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %land.lhs.true.106, %land.lhs.true.102, %for.body.97
  %89 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %89 to i64
  %arrayidx115 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom114
  %90 = load i32, i32* %arrayidx115, align 4
  %tobool116 = icmp ne i32 %90, 0
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.113
  %91 = load i32, i32* %l, align 4
  %inc118 = add nsw i32 %91, 1
  store i32 %inc118, i32* %l, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.113
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %92 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %92, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.94

for.end.122:                                      ; preds = %for.cond.94
  %93 = load i32, i32* %leastlooked, align 4
  %cmp123 = icmp eq i32 %93, 100000000
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %for.end.122
  %94 = load i32, i32* @nodecount, align 4
  %add126 = add nsw i32 %94, 30
  store i32 %add126, i32* @nodecount, align 4
  br label %while.cond

if.end.127:                                       ; preds = %for.end.122
  %arrayidx128 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %95 = load i32, i32* %leastlooked_i, align 4
  call void @make(%struct.move_s* %arrayidx128, i32 %95)
  %96 = load i32, i32* %leastlooked_l, align 4
  %idxprom129 = sext i32 %96 to i64
  %97 = load %struct.node*, %struct.node** %root, align 8
  %children130 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 6
  %98 = load %struct.node**, %struct.node*** %children130, align 8
  %arrayidx131 = getelementptr inbounds %struct.node*, %struct.node** %98, i64 %idxprom129
  %99 = load %struct.node*, %struct.node** %arrayidx131, align 8
  store %struct.node* %99, %struct.node** %currentnode, align 8
  %100 = load %struct.node*, %struct.node** %currentnode, align 8
  %call132 = call %struct.node* @select_most_proving(%struct.node* %100)
  store %struct.node* %call132, %struct.node** %mostproving, align 8
  %101 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @develop_node(%struct.node* %101)
  %102 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @update_ancestors(%struct.node* %102)
  %103 = load i32, i32* @nodecount, align 4
  %104 = load i32, i32* %xnodecount, align 4
  %sub133 = sub nsw i32 %103, %104
  %105 = load i32, i32* %leastlooked_i, align 4
  %idxprom134 = sext i32 %105 to i64
  %arrayidx135 = getelementptr inbounds [512 x i32], [512 x i32]* %nodesspent, i32 0, i64 %idxprom134
  %106 = load i32, i32* %arrayidx135, align 4
  %add136 = add nsw i32 %106, %sub133
  store i32 %add136, i32* %arrayidx135, align 4
  %107 = load i32, i32* %leastlooked_l, align 4
  %idxprom137 = sext i32 %107 to i64
  %108 = load %struct.node*, %struct.node** %root, align 8
  %children138 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 6
  %109 = load %struct.node**, %struct.node*** %children138, align 8
  %arrayidx139 = getelementptr inbounds %struct.node*, %struct.node** %109, i64 %idxprom137
  %110 = load %struct.node*, %struct.node** %arrayidx139, align 8
  %proof140 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 4
  %111 = load i32, i32* %proof140, align 4
  %cmp141 = icmp eq i32 %111, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.159

land.lhs.true.143:                                ; preds = %if.end.127
  %112 = load i32, i32* %leastlooked_l, align 4
  %idxprom144 = sext i32 %112 to i64
  %113 = load %struct.node*, %struct.node** %root, align 8
  %children145 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 6
  %114 = load %struct.node**, %struct.node*** %children145, align 8
  %arrayidx146 = getelementptr inbounds %struct.node*, %struct.node** %114, i64 %idxprom144
  %115 = load %struct.node*, %struct.node** %arrayidx146, align 8
  %disproof147 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 5
  %116 = load i32, i32* %disproof147, align 4
  %cmp148 = icmp eq i32 %116, 100000000
  br i1 %cmp148, label %if.then.150, label %if.else.159

if.then.150:                                      ; preds = %land.lhs.true.143
  store i32 1, i32* @forcedwin, align 4
  %117 = load i32, i32* @kibitzed, align 4
  %tobool151 = icmp ne i32 %117, 0
  br i1 %tobool151, label %if.end.154, label %if.then.152

if.then.152:                                      ; preds = %if.then.150
  store i32 1, i32* @kibitzed, align 4
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.then.150
  %118 = load i32, i32* %leastlooked_l, align 4
  %idxprom155 = sext i32 %118 to i64
  %119 = load %struct.node*, %struct.node** %root, align 8
  %children156 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 6
  %120 = load %struct.node**, %struct.node*** %children156, align 8
  %arrayidx157 = getelementptr inbounds %struct.node*, %struct.node** %120, i64 %idxprom155
  %121 = load %struct.node*, %struct.node** %arrayidx157, align 8
  %move158 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 8
  %122 = bitcast %struct.move_s* %move158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %122, i64 24, i32 4, i1 false)
  br label %if.end.178

if.else.159:                                      ; preds = %land.lhs.true.143, %if.end.127
  %123 = load i32, i32* %leastlooked_l, align 4
  %idxprom160 = sext i32 %123 to i64
  %124 = load %struct.node*, %struct.node** %root, align 8
  %children161 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 6
  %125 = load %struct.node**, %struct.node*** %children161, align 8
  %arrayidx162 = getelementptr inbounds %struct.node*, %struct.node** %125, i64 %idxprom160
  %126 = load %struct.node*, %struct.node** %arrayidx162, align 8
  %disproof163 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 5
  %127 = load i32, i32* %disproof163, align 4
  %cmp164 = icmp eq i32 %127, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.177

land.lhs.true.166:                                ; preds = %if.else.159
  %128 = load i32, i32* %leastlooked_l, align 4
  %idxprom167 = sext i32 %128 to i64
  %129 = load %struct.node*, %struct.node** %root, align 8
  %children168 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 6
  %130 = load %struct.node**, %struct.node*** %children168, align 8
  %arrayidx169 = getelementptr inbounds %struct.node*, %struct.node** %130, i64 %idxprom167
  %131 = load %struct.node*, %struct.node** %arrayidx169, align 8
  %proof170 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 4
  %132 = load i32, i32* %proof170, align 4
  %cmp171 = icmp eq i32 %132, 100000000
  br i1 %cmp171, label %if.then.173, label %if.end.177

if.then.173:                                      ; preds = %land.lhs.true.166
  %133 = load i32, i32* %leastlooked_i, align 4
  %idxprom174 = sext i32 %133 to i64
  %arrayidx175 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom174
  store i32 1, i32* %arrayidx175, align 4
  %134 = load i32, i32* %losers, align 4
  %inc176 = add nsw i32 %134, 1
  store i32 %inc176, i32* %losers, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.173, %land.lhs.true.166, %if.else.159
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.154
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.91
  br label %while.cond

while.end.180:                                    ; preds = %land.end
  store i32 0, i32* %l, align 4
  store float -1.000000e+00, float* %bdp, align 4
  store i32 0, i32* %altlosers, align 4
  %135 = load %struct.node*, %struct.node** %root, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 2
  %136 = load i8, i8* %expanded, align 1
  %tobool181 = icmp ne i8 %136, 0
  br i1 %tobool181, label %if.then.182, label %if.end.256

if.then.182:                                      ; preds = %while.end.180
  store i32 0, i32* %i, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.253, %if.then.182
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %num_moves, align 4
  %cmp184 = icmp slt i32 %137, %138
  br i1 %cmp184, label %for.body.186, label %for.end.255

for.body.186:                                     ; preds = %for.cond.183
  %139 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %139 to i64
  %arrayidx188 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom187
  %140 = load i32, i32* %arrayidx188, align 4
  %tobool189 = icmp ne i32 %140, 0
  br i1 %tobool189, label %if.then.190, label %if.end.252

if.then.190:                                      ; preds = %for.body.186
  %141 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %141 to i64
  %arrayidx192 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom191
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %output, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx192, i8* %arraydecay)
  %142 = load i32, i32* %l, align 4
  %idxprom193 = sext i32 %142 to i64
  %143 = load %struct.node*, %struct.node** %root, align 8
  %children194 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 6
  %144 = load %struct.node**, %struct.node*** %children194, align 8
  %arrayidx195 = getelementptr inbounds %struct.node*, %struct.node** %144, i64 %idxprom193
  %145 = load %struct.node*, %struct.node** %arrayidx195, align 8
  %proof196 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 4
  %146 = load i32, i32* %proof196, align 4
  %cmp197 = icmp ne i32 %146, 0
  br i1 %cmp197, label %if.then.199, label %if.else.245

if.then.199:                                      ; preds = %if.then.190
  %147 = load i32, i32* %l, align 4
  %idxprom200 = sext i32 %147 to i64
  %148 = load %struct.node*, %struct.node** %root, align 8
  %children201 = getelementptr inbounds %struct.node, %struct.node* %148, i32 0, i32 6
  %149 = load %struct.node**, %struct.node*** %children201, align 8
  %arrayidx202 = getelementptr inbounds %struct.node*, %struct.node** %149, i64 %idxprom200
  %150 = load %struct.node*, %struct.node** %arrayidx202, align 8
  %disproof203 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 5
  %151 = load i32, i32* %disproof203, align 4
  %conv204 = sitofp i32 %151 to float
  %152 = load i32, i32* %l, align 4
  %idxprom205 = sext i32 %152 to i64
  %153 = load %struct.node*, %struct.node** %root, align 8
  %children206 = getelementptr inbounds %struct.node, %struct.node* %153, i32 0, i32 6
  %154 = load %struct.node**, %struct.node*** %children206, align 8
  %arrayidx207 = getelementptr inbounds %struct.node*, %struct.node** %154, i64 %idxprom205
  %155 = load %struct.node*, %struct.node** %arrayidx207, align 8
  %proof208 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 4
  %156 = load i32, i32* %proof208, align 4
  %conv209 = sitofp i32 %156 to float
  %div = fdiv float %conv204, %conv209
  %157 = load float, float* %bdp, align 4
  %cmp210 = fcmp ogt float %div, %157
  br i1 %cmp210, label %if.then.212, label %if.end.228

if.then.212:                                      ; preds = %if.then.199
  %158 = load i32, i32* %l, align 4
  %idxprom213 = sext i32 %158 to i64
  %159 = load %struct.node*, %struct.node** %root, align 8
  %children214 = getelementptr inbounds %struct.node, %struct.node* %159, i32 0, i32 6
  %160 = load %struct.node**, %struct.node*** %children214, align 8
  %arrayidx215 = getelementptr inbounds %struct.node*, %struct.node** %160, i64 %idxprom213
  %161 = load %struct.node*, %struct.node** %arrayidx215, align 8
  %disproof216 = getelementptr inbounds %struct.node, %struct.node* %161, i32 0, i32 5
  %162 = load i32, i32* %disproof216, align 4
  %conv217 = sitofp i32 %162 to float
  %163 = load i32, i32* %l, align 4
  %idxprom218 = sext i32 %163 to i64
  %164 = load %struct.node*, %struct.node** %root, align 8
  %children219 = getelementptr inbounds %struct.node, %struct.node* %164, i32 0, i32 6
  %165 = load %struct.node**, %struct.node*** %children219, align 8
  %arrayidx220 = getelementptr inbounds %struct.node*, %struct.node** %165, i64 %idxprom218
  %166 = load %struct.node*, %struct.node** %arrayidx220, align 8
  %proof221 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %167 = load i32, i32* %proof221, align 4
  %conv222 = sitofp i32 %167 to float
  %div223 = fdiv float %conv217, %conv222
  store float %div223, float* %bdp, align 4
  %168 = load i32, i32* %l, align 4
  %idxprom224 = sext i32 %168 to i64
  %169 = load %struct.node*, %struct.node** %root, align 8
  %children225 = getelementptr inbounds %struct.node, %struct.node* %169, i32 0, i32 6
  %170 = load %struct.node**, %struct.node*** %children225, align 8
  %arrayidx226 = getelementptr inbounds %struct.node*, %struct.node** %170, i64 %idxprom224
  %171 = load %struct.node*, %struct.node** %arrayidx226, align 8
  %move227 = getelementptr inbounds %struct.node, %struct.node* %171, i32 0, i32 8
  %172 = bitcast %struct.move_s* %move227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %172, i64 24, i32 4, i1 false)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.212, %if.then.199
  %173 = load i32, i32* %l, align 4
  %idxprom229 = sext i32 %173 to i64
  %174 = load %struct.node*, %struct.node** %root, align 8
  %children230 = getelementptr inbounds %struct.node, %struct.node* %174, i32 0, i32 6
  %175 = load %struct.node**, %struct.node*** %children230, align 8
  %arrayidx231 = getelementptr inbounds %struct.node*, %struct.node** %175, i64 %idxprom229
  %176 = load %struct.node*, %struct.node** %arrayidx231, align 8
  %disproof232 = getelementptr inbounds %struct.node, %struct.node* %176, i32 0, i32 5
  %177 = load i32, i32* %disproof232, align 4
  %cmp233 = icmp eq i32 %177, 0
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.244

land.lhs.true.235:                                ; preds = %if.end.228
  %178 = load i32, i32* %l, align 4
  %idxprom236 = sext i32 %178 to i64
  %179 = load %struct.node*, %struct.node** %root, align 8
  %children237 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 6
  %180 = load %struct.node**, %struct.node*** %children237, align 8
  %arrayidx238 = getelementptr inbounds %struct.node*, %struct.node** %180, i64 %idxprom236
  %181 = load %struct.node*, %struct.node** %arrayidx238, align 8
  %proof239 = getelementptr inbounds %struct.node, %struct.node* %181, i32 0, i32 4
  %182 = load i32, i32* %proof239, align 4
  %cmp240 = icmp eq i32 %182, 100000000
  br i1 %cmp240, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %land.lhs.true.235
  %183 = load i32, i32* %altlosers, align 4
  %inc243 = add nsw i32 %183, 1
  store i32 %inc243, i32* %altlosers, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.242, %land.lhs.true.235, %if.end.228
  br label %if.end.250

if.else.245:                                      ; preds = %if.then.190
  store i32 1, i32* @forcedwin, align 4
  %184 = load i32, i32* %l, align 4
  %idxprom246 = sext i32 %184 to i64
  %185 = load %struct.node*, %struct.node** %root, align 8
  %children247 = getelementptr inbounds %struct.node, %struct.node* %185, i32 0, i32 6
  %186 = load %struct.node**, %struct.node*** %children247, align 8
  %arrayidx248 = getelementptr inbounds %struct.node*, %struct.node** %186, i64 %idxprom246
  %187 = load %struct.node*, %struct.node** %arrayidx248, align 8
  %move249 = getelementptr inbounds %struct.node, %struct.node* %187, i32 0, i32 8
  %188 = bitcast %struct.move_s* %move249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %188, i64 24, i32 4, i1 false)
  store float 1.000000e+08, float* %bdp, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.245, %if.end.244
  %189 = load i32, i32* %l, align 4
  %inc251 = add nsw i32 %189, 1
  store i32 %inc251, i32* %l, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.250, %for.body.186
  br label %for.inc.253

for.inc.253:                                      ; preds = %if.end.252
  %190 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %190, 1
  store i32 %inc254, i32* %i, align 4
  br label %for.cond.183

for.end.255:                                      ; preds = %for.cond.183
  br label %if.end.256

if.end.256:                                       ; preds = %for.end.255, %while.end.180
  %arraydecay257 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i32 0, i32 0
  %191 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay257)
  %192 = load i32, i32* @xb_mode, align 4
  %tobool258 = icmp ne i32 %192, 0
  br i1 %tobool258, label %land.lhs.true.259, label %if.end.265

land.lhs.true.259:                                ; preds = %if.end.256
  %193 = load i32, i32* @post, align 4
  %tobool260 = icmp ne i32 %193, 0
  br i1 %tobool260, label %if.then.261, label %if.end.265

if.then.261:                                      ; preds = %land.lhs.true.259
  %194 = load %struct.node*, %struct.node** %root, align 8
  %proof262 = getelementptr inbounds %struct.node, %struct.node* %194, i32 0, i32 4
  %195 = load i32, i32* %proof262, align 4
  %196 = load %struct.node*, %struct.node** %root, align 8
  %disproof263 = getelementptr inbounds %struct.node, %struct.node* %196, i32 0, i32 5
  %197 = load i32, i32* %disproof263, align 4
  %198 = load i32, i32* %altlosers, align 4
  %199 = load i32, i32* @maxply, align 4
  %200 = load i32, i32* %firsts, align 4
  %201 = load i32, i32* %alternates, align 4
  %call264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i32 0, i32 0), i32 %195, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.261, %land.lhs.true.259, %if.end.256
  %202 = load i32, i32* %altlosers, align 4
  %203 = load i32, i32* %legal, align 4
  %sub266 = sub nsw i32 %203, 1
  %cmp267 = icmp eq i32 %202, %sub266
  br i1 %cmp267, label %if.then.269, label %if.end.289

if.then.269:                                      ; preds = %if.end.265
  %call270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.286, %if.then.269
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %num_moves, align 4
  %cmp272 = icmp slt i32 %204, %205
  br i1 %cmp272, label %for.body.274, label %for.end.288

for.body.274:                                     ; preds = %for.cond.271
  %206 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %206 to i64
  %arrayidx276 = getelementptr inbounds [300 x i32], [300 x i32]* @rootlosers, i32 0, i64 %idxprom275
  %207 = load i32, i32* %arrayidx276, align 4
  %tobool277 = icmp ne i32 %207, 0
  br i1 %tobool277, label %if.end.285, label %land.lhs.true.278

land.lhs.true.278:                                ; preds = %for.body.274
  %208 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %208 to i64
  %arrayidx280 = getelementptr inbounds [512 x i32], [512 x i32]* %islegal, i32 0, i64 %idxprom279
  %209 = load i32, i32* %arrayidx280, align 4
  %tobool281 = icmp ne i32 %209, 0
  br i1 %tobool281, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %land.lhs.true.278
  store i32 1, i32* @forcedwin, align 4
  %210 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %210 to i64
  %arrayidx284 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom283
  %211 = bitcast %struct.move_s* %arrayidx284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %211, i64 24, i32 4, i1 false)
  br label %for.end.288

if.end.285:                                       ; preds = %land.lhs.true.278, %for.body.274
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %212 = load i32, i32* %i, align 4
  %inc287 = add nsw i32 %212, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond.271

for.end.288:                                      ; preds = %if.then.282, %for.cond.271
  br label %if.end.289

if.end.289:                                       ; preds = %for.end.288, %if.end.265
  %213 = load i32, i32* %altlosers, align 4
  %214 = load i32, i32* %legal, align 4
  %cmp290 = icmp eq i32 %213, %214
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.end.289
  store i32 1, i32* @alllosers, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %if.end.289
  call void @Xfree()
  %215 = load i8*, i8** @membuff, align 8
  call void @free(i8* %215) #3
  %216 = load %struct.node*, %struct.node** %root, align 8
  %217 = bitcast %struct.node* %216 to i8*
  call void @free(i8* %217) #3
  br label %return

return:                                           ; preds = %if.end.293, %if.then.27, %if.then.15
  ret void
}

declare i64 @rtime() #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @rdifftime(i64, i64) #2

declare i32 @interrupt() #2

declare i32 @printf(i8*, ...) #2

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: nounwind uwtable
define void @proofnumbersearch() #0 {
entry:
  %root = alloca %struct.node*, align 8
  %mostproving = alloca %struct.node*, align 8
  %currentnode = alloca %struct.node*, align 8
  %xstart_time = alloca i64, align 8
  %output = alloca [8192 x i8], align 16
  %PV = alloca [8192 x i8], align 16
  %i = alloca i32, align 4
  %bdp = alloca float, align 4
  %oldply = alloca i32, align 4
  %tmp = alloca %struct.move_s, align 8
  store i32 1, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @frees, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @maxply, align 4
  store i32 0, i32* @forwards, align 4
  %0 = load i32, i32* @hash, align 4
  %1 = load i32, i32* @move_number, align 4
  %2 = load i32, i32* @ply, align 4
  %add = add nsw i32 %1, %2
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %3 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* @root_to_move, align 4
  %call = call i64 @rtime()
  store i64 %call, i64* %xstart_time, align 8
  %call1 = call noalias i8* @calloc(i64 1, i64 56) #3
  %4 = bitcast i8* %call1 to %struct.node*
  store %struct.node* %4, %struct.node** %root, align 8
  %5 = load i32, i32* @PBSize, align 4
  %conv = sext i32 %5 to i64
  %call2 = call noalias i8* @calloc(i64 %conv, i64 56) #3
  store i8* %call2, i8** @membuff, align 8
  %6 = load %struct.node*, %struct.node** %root, align 8
  call void @pn_eval(%struct.node* %6)
  %7 = load %struct.node*, %struct.node** %root, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i8, i8* %value, align 1
  %conv3 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  call void @Xfree()
  %9 = load %struct.node*, %struct.node** %root, align 8
  %10 = bitcast %struct.node* %9 to i8*
  call void @free(i8* %10) #3
  %11 = load i8*, i8** @membuff, align 8
  call void @free(i8* %11) #3
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.node*, %struct.node** %root, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %12)
  %13 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %13, %struct.node** %currentnode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end
  %14 = load %struct.node*, %struct.node** %root, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 4
  %15 = load i32, i32* %proof, align 4
  %cmp5 = icmp ne i32 %15, 0
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %16 = load %struct.node*, %struct.node** %root, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 5
  %17 = load i32, i32* %disproof, align 4
  %cmp7 = icmp ne i32 %17, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* @bufftop, align 4
  %conv9 = zext i32 %18 to i64
  %19 = load i32, i32* @PBSize, align 4
  %sub10 = sub nsw i32 %19, 10000
  %conv11 = sext i32 %sub10 to i64
  %mul = mul i64 %conv11, 56
  %cmp12 = icmp ult i64 %conv9, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load %struct.node*, %struct.node** %currentnode, align 8
  %call14 = call %struct.node* @select_most_proving(%struct.node* %21)
  store %struct.node* %call14, %struct.node** %mostproving, align 8
  %22 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @develop_node(%struct.node* %22)
  %23 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @update_ancestors(%struct.node* %23)
  %24 = load i32, i32* @iters, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @iters, align 4
  %25 = load i32, i32* @iters, align 4
  %rem = srem i32 %25, 32
  %cmp15 = icmp eq i32 %rem, 0
  br i1 %cmp15, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %while.body
  %call18 = call i64 @rtime()
  %26 = load i64, i64* %xstart_time, align 8
  %call19 = call i32 @rdifftime(i64 %call18, i64 %26)
  %27 = load i32, i32* @pn_time, align 4
  %cmp20 = icmp sgt i32 %call19, %27
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.then.17
  %call23 = call i32 @interrupt()
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22
  br label %while.end

if.end.26:                                        ; preds = %land.lhs.true.22, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.25, %land.end
  %28 = load %struct.node*, %struct.node** %root, align 8
  %proof28 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 4
  %29 = load i32, i32* %proof28, align 4
  %30 = load %struct.node*, %struct.node** %root, align 8
  %disproof29 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 5
  %31 = load i32, i32* %disproof29, align 4
  %32 = load i32, i32* @nodecount, align 4
  %33 = load i32, i32* @frees, align 4
  %34 = load i32, i32* @nodecount, align 4
  %conv30 = sext i32 %34 to i64
  %mul31 = mul i64 %conv30, 56
  %conv32 = uitofp i64 %mul31 to float
  %div = fdiv float %conv32, 1.048576e+06
  %conv33 = fpext float %div to double
  %35 = load i32, i32* @iters, align 4
  %36 = load i32, i32* @maxply, align 4
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i32 0, i32 0), i32 %29, i32 %31, i32 %32, i32 %33, double %conv33, i32 %35, i32 %36)
  %37 = load i32, i32* @xb_mode, align 4
  %tobool35 = icmp ne i32 %37, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %while.end
  %38 = load i32, i32* @post, align 4
  %tobool37 = icmp ne i32 %38, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %land.lhs.true.36
  %39 = load %struct.node*, %struct.node** %root, align 8
  %proof39 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 4
  %40 = load i32, i32* %proof39, align 4
  %41 = load %struct.node*, %struct.node** %root, align 8
  %disproof40 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 5
  %42 = load i32, i32* %disproof40, align 4
  %43 = load i32, i32* @nodecount, align 4
  %44 = load i32, i32* @forwards, align 4
  %45 = load i32, i32* @iters, align 4
  %46 = load i32, i32* @maxply, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i32 0, i32 0), i32 %40, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %land.lhs.true.36, %while.end
  %47 = load i32, i32* @xb_mode, align 4
  %tobool43 = icmp ne i32 %47, 0
  br i1 %tobool43, label %if.end.51, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %call45 = call i64 @rtime()
  %48 = load i64, i64* %xstart_time, align 8
  %call46 = call i32 @rdifftime(i64 %call45, i64 %48)
  %conv47 = sitofp i32 %call46 to float
  %conv48 = fpext float %conv47 to double
  %div49 = fdiv double %conv48, 1.000000e+02
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), double %div49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %if.end.42
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %if.end.51
  %49 = load %struct.node*, %struct.node** %currentnode, align 8
  %50 = load %struct.node*, %struct.node** %root, align 8
  %cmp53 = icmp ne %struct.node* %49, %50
  br i1 %cmp53, label %while.body.55, label %while.end.56

while.body.55:                                    ; preds = %while.cond.52
  %51 = load %struct.node*, %struct.node** %currentnode, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 8
  call void @unmake(%struct.move_s* %move, i32 0)
  %52 = load %struct.node*, %struct.node** %currentnode, align 8
  %parent = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 7
  %53 = load %struct.node*, %struct.node** %parent, align 8
  store %struct.node* %53, %struct.node** %currentnode, align 8
  br label %while.cond.52

while.end.56:                                     ; preds = %while.cond.52
  %54 = load %struct.node*, %struct.node** %root, align 8
  %proof57 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 4
  %55 = load i32, i32* %proof57, align 4
  %cmp58 = icmp eq i32 %55, 0
  br i1 %cmp58, label %if.then.60, label %if.else.147

if.then.60:                                       ; preds = %while.end.56
  %56 = load %struct.node*, %struct.node** %root, align 8
  %value61 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  store i8 1, i8* %value61, align 1
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %57 = bitcast [8192 x i8]* %output to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 8192, i32 16, i1 false)
  %58 = bitcast [8192 x i8]* %PV to i8*
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 8192, i32 16, i1 false)
  store i32 1, i32* @ply, align 4
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.110, %if.then.60
  %59 = load %struct.node*, %struct.node** %currentnode, align 8
  %expanded = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 2
  %60 = load i8, i8* %expanded, align 1
  %tobool65 = icmp ne i8 %60, 0
  br i1 %tobool65, label %while.body.66, label %while.end.111

while.body.66:                                    ; preds = %while.cond.64
  %61 = load i32, i32* @white_to_move, align 4
  %tobool67 = icmp ne i32 %61, 0
  %cond68 = select i1 %tobool67, i32 0, i32 1
  %62 = load i32, i32* @root_to_move, align 4
  %cmp69 = icmp eq i32 %cond68, %62
  br i1 %cmp69, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %while.body.66
  store i32 0, i32* %i, align 4
  br label %while.cond.72

while.cond.72:                                    ; preds = %while.body.79, %if.then.71
  %63 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %63 to i64
  %64 = load %struct.node*, %struct.node** %currentnode, align 8
  %children = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 6
  %65 = load %struct.node**, %struct.node*** %children, align 8
  %arrayidx74 = getelementptr inbounds %struct.node*, %struct.node** %65, i64 %idxprom73
  %66 = load %struct.node*, %struct.node** %arrayidx74, align 8
  %proof75 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 4
  %67 = load i32, i32* %proof75, align 4
  %68 = load %struct.node*, %struct.node** %currentnode, align 8
  %proof76 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 4
  %69 = load i32, i32* %proof76, align 4
  %cmp77 = icmp ne i32 %67, %69
  br i1 %cmp77, label %while.body.79, label %while.end.81

while.body.79:                                    ; preds = %while.cond.72
  %70 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %70, 1
  store i32 %inc80, i32* %i, align 4
  br label %while.cond.72

while.end.81:                                     ; preds = %while.cond.72
  br label %if.end.93

if.else:                                          ; preds = %while.body.66
  store i32 0, i32* %i, align 4
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.90, %if.else
  %71 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %71 to i64
  %72 = load %struct.node*, %struct.node** %currentnode, align 8
  %children84 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 6
  %73 = load %struct.node**, %struct.node*** %children84, align 8
  %arrayidx85 = getelementptr inbounds %struct.node*, %struct.node** %73, i64 %idxprom83
  %74 = load %struct.node*, %struct.node** %arrayidx85, align 8
  %disproof86 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 5
  %75 = load i32, i32* %disproof86, align 4
  %76 = load %struct.node*, %struct.node** %currentnode, align 8
  %disproof87 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 5
  %77 = load i32, i32* %disproof87, align 4
  %cmp88 = icmp ne i32 %75, %77
  br i1 %cmp88, label %while.body.90, label %while.end.92

while.body.90:                                    ; preds = %while.cond.82
  %78 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %78, 1
  store i32 %inc91, i32* %i, align 4
  br label %while.cond.82

while.end.92:                                     ; preds = %while.cond.82
  br label %if.end.93

if.end.93:                                        ; preds = %while.end.92, %while.end.81
  %79 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %79 to i64
  %80 = load %struct.node*, %struct.node** %currentnode, align 8
  %children95 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 6
  %81 = load %struct.node**, %struct.node*** %children95, align 8
  %arrayidx96 = getelementptr inbounds %struct.node*, %struct.node** %81, i64 %idxprom94
  %82 = load %struct.node*, %struct.node** %arrayidx96, align 8
  store %struct.node* %82, %struct.node** %currentnode, align 8
  %83 = load %struct.node*, %struct.node** %currentnode, align 8
  %move97 = getelementptr inbounds %struct.node, %struct.node* %83, i32 0, i32 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %84 = bitcast %struct.move_s* %tmp to i8*
  %85 = bitcast %struct.move_s* %move97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 24, i32 4, i1 false)
  call void @comp_to_coord(%struct.move_s* byval align 8 %tmp, i8* %arraydecay)
  %arraydecay98 = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay98)
  %arraydecay100 = getelementptr inbounds [8192 x i8], [8192 x i8]* %PV, i32 0, i32 0
  %arraydecay101 = getelementptr inbounds [8192 x i8], [8192 x i8]* %output, i32 0, i32 0
  %call102 = call i8* @strcat(i8* %arraydecay100, i8* %arraydecay101) #3
  %arraydecay103 = getelementptr inbounds [8192 x i8], [8192 x i8]* %PV, i32 0, i32 0
  %call104 = call i8* @strcat(i8* %arraydecay103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #3
  %86 = load %struct.node*, %struct.node** %currentnode, align 8
  %move105 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 8
  call void @make(%struct.move_s* %move105, i32 0)
  %87 = load i32, i32* @ply, align 4
  %cmp106 = icmp eq i32 %87, 1
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.93
  %88 = load %struct.node*, %struct.node** %currentnode, align 8
  %move109 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 8
  %89 = bitcast %struct.move_s* %move109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %89, i64 24, i32 4, i1 false)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.end.93
  store i32 1, i32* @forcedwin, align 4
  br label %while.cond.64

while.end.111:                                    ; preds = %while.cond.64
  %90 = load i32, i32* @ply, align 4
  store i32 %90, i32* %oldply, align 4
  br label %while.cond.112

while.cond.112:                                   ; preds = %while.body.115, %while.end.111
  %91 = load %struct.node*, %struct.node** %currentnode, align 8
  %92 = load %struct.node*, %struct.node** %root, align 8
  %cmp113 = icmp ne %struct.node* %91, %92
  br i1 %cmp113, label %while.body.115, label %while.end.118

while.body.115:                                   ; preds = %while.cond.112
  %93 = load %struct.node*, %struct.node** %currentnode, align 8
  %move116 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 8
  call void @unmake(%struct.move_s* %move116, i32 0)
  %94 = load %struct.node*, %struct.node** %currentnode, align 8
  %parent117 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 7
  %95 = load %struct.node*, %struct.node** %parent117, align 8
  store %struct.node* %95, %struct.node** %currentnode, align 8
  br label %while.cond.112

while.end.118:                                    ; preds = %while.cond.112
  %96 = load i32, i32* @kibitzed, align 4
  %tobool119 = icmp ne i32 %96, 0
  br i1 %tobool119, label %if.end.127, label %land.lhs.true.120

land.lhs.true.120:                                ; preds = %while.end.118
  %97 = load i32, i32* @xb_mode, align 4
  %tobool121 = icmp ne i32 %97, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.127

land.lhs.true.122:                                ; preds = %land.lhs.true.120
  %98 = load i32, i32* @post, align 4
  %tobool123 = icmp ne i32 %98, 0
  br i1 %tobool123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %land.lhs.true.122
  store i32 1, i32* @kibitzed, align 4
  %99 = load i32, i32* %oldply, align 4
  %div125 = sdiv i32 %99, 2
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 %div125)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %land.lhs.true.122, %land.lhs.true.120, %while.end.118
  %100 = load i32, i32* %oldply, align 4
  %cmp128 = icmp eq i32 %100, 1
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.145

land.lhs.true.130:                                ; preds = %if.end.127
  %101 = load %struct.node*, %struct.node** %root, align 8
  %proof131 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 4
  %102 = load i32, i32* %proof131, align 4
  %cmp132 = icmp eq i32 %102, 0
  br i1 %cmp132, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.130
  %103 = load %struct.node*, %struct.node** %root, align 8
  %disproof134 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 5
  %104 = load i32, i32* %disproof134, align 4
  %cmp135 = icmp eq i32 %104, 0
  br i1 %cmp135, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %lor.lhs.false, %land.lhs.true.130
  %105 = load i32, i32* @root_to_move, align 4
  %cmp138 = icmp eq i32 %105, 0
  br i1 %cmp138, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.then.137
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  store i32 3, i32* @result, align 4
  br label %if.end.144

if.else.142:                                      ; preds = %if.then.137
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  store i32 2, i32* @result, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.then.140
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %lor.lhs.false, %if.end.127
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.158

if.else.147:                                      ; preds = %while.end.56
  %106 = load %struct.node*, %struct.node** %root, align 8
  %disproof148 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 5
  %107 = load i32, i32* %disproof148, align 4
  %cmp149 = icmp eq i32 %107, 0
  br i1 %cmp149, label %if.then.151, label %if.else.154

if.then.151:                                      ; preds = %if.else.147
  %108 = load %struct.node*, %struct.node** %root, align 8
  %value152 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 0
  store i8 0, i8* %value152, align 1
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %if.end.157

if.else.154:                                      ; preds = %if.else.147
  %109 = load %struct.node*, %struct.node** %root, align 8
  %value155 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 0
  store i8 2, i8* %value155, align 1
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false)
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.154, %if.then.151
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.145
  store float -1.000000e+00, float* %bdp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.158
  %110 = load i32, i32* %i, align 4
  %111 = load %struct.node*, %struct.node** %root, align 8
  %num_children = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 1
  %112 = load i8, i8* %num_children, align 1
  %conv159 = zext i8 %112 to i32
  %cmp160 = icmp slt i32 %110, %conv159
  br i1 %cmp160, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %113 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %113 to i64
  %114 = load %struct.node*, %struct.node** %root, align 8
  %children163 = getelementptr inbounds %struct.node, %struct.node* %114, i32 0, i32 6
  %115 = load %struct.node**, %struct.node*** %children163, align 8
  %arrayidx164 = getelementptr inbounds %struct.node*, %struct.node** %115, i64 %idxprom162
  %116 = load %struct.node*, %struct.node** %arrayidx164, align 8
  %proof165 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 4
  %117 = load i32, i32* %proof165, align 4
  %cmp166 = icmp ne i32 %117, 0
  br i1 %cmp166, label %if.then.168, label %if.else.199

if.then.168:                                      ; preds = %for.body
  %118 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %118 to i64
  %119 = load %struct.node*, %struct.node** %root, align 8
  %children170 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 6
  %120 = load %struct.node**, %struct.node*** %children170, align 8
  %arrayidx171 = getelementptr inbounds %struct.node*, %struct.node** %120, i64 %idxprom169
  %121 = load %struct.node*, %struct.node** %arrayidx171, align 8
  %disproof172 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 5
  %122 = load i32, i32* %disproof172, align 4
  %conv173 = sitofp i32 %122 to float
  %123 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %123 to i64
  %124 = load %struct.node*, %struct.node** %root, align 8
  %children175 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 6
  %125 = load %struct.node**, %struct.node*** %children175, align 8
  %arrayidx176 = getelementptr inbounds %struct.node*, %struct.node** %125, i64 %idxprom174
  %126 = load %struct.node*, %struct.node** %arrayidx176, align 8
  %proof177 = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 4
  %127 = load i32, i32* %proof177, align 4
  %conv178 = sitofp i32 %127 to float
  %div179 = fdiv float %conv173, %conv178
  %128 = load float, float* %bdp, align 4
  %cmp180 = fcmp ogt float %div179, %128
  br i1 %cmp180, label %if.then.182, label %if.end.198

if.then.182:                                      ; preds = %if.then.168
  %129 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %129 to i64
  %130 = load %struct.node*, %struct.node** %root, align 8
  %children184 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 6
  %131 = load %struct.node**, %struct.node*** %children184, align 8
  %arrayidx185 = getelementptr inbounds %struct.node*, %struct.node** %131, i64 %idxprom183
  %132 = load %struct.node*, %struct.node** %arrayidx185, align 8
  %disproof186 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 5
  %133 = load i32, i32* %disproof186, align 4
  %conv187 = sitofp i32 %133 to float
  %134 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %134 to i64
  %135 = load %struct.node*, %struct.node** %root, align 8
  %children189 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 6
  %136 = load %struct.node**, %struct.node*** %children189, align 8
  %arrayidx190 = getelementptr inbounds %struct.node*, %struct.node** %136, i64 %idxprom188
  %137 = load %struct.node*, %struct.node** %arrayidx190, align 8
  %proof191 = getelementptr inbounds %struct.node, %struct.node* %137, i32 0, i32 4
  %138 = load i32, i32* %proof191, align 4
  %conv192 = sitofp i32 %138 to float
  %div193 = fdiv float %conv187, %conv192
  store float %div193, float* %bdp, align 4
  %139 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %139 to i64
  %140 = load %struct.node*, %struct.node** %root, align 8
  %children195 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 6
  %141 = load %struct.node**, %struct.node*** %children195, align 8
  %arrayidx196 = getelementptr inbounds %struct.node*, %struct.node** %141, i64 %idxprom194
  %142 = load %struct.node*, %struct.node** %arrayidx196, align 8
  %move197 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 8
  %143 = bitcast %struct.move_s* %move197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %143, i64 24, i32 4, i1 false)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.182, %if.then.168
  br label %if.end.204

if.else.199:                                      ; preds = %for.body
  %144 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %144 to i64
  %145 = load %struct.node*, %struct.node** %root, align 8
  %children201 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 6
  %146 = load %struct.node**, %struct.node*** %children201, align 8
  %arrayidx202 = getelementptr inbounds %struct.node*, %struct.node** %146, i64 %idxprom200
  %147 = load %struct.node*, %struct.node** %arrayidx202, align 8
  %move203 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 8
  %148 = bitcast %struct.move_s* %move203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_move to i8*), i8* %148, i64 24, i32 4, i1 false)
  br label %for.end

if.end.204:                                       ; preds = %if.end.198
  br label %for.inc

for.inc:                                          ; preds = %if.end.204
  %149 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %149, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.199, %for.cond
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.move_s* @pn_saver to i8*), i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  %150 = load %struct.node*, %struct.node** %root, align 8
  %151 = bitcast %struct.node* %150 to i8*
  call void @free(i8* %151) #3
  call void @Xfree()
  %152 = load i8*, i8** @membuff, align 8
  call void @free(i8* %152) #3
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @comp_to_coord(%struct.move_s* byval align 8, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @proofnumbercheck(%struct.move_s* noalias sret %agg.result, %struct.move_s* byval align 8 %compmove) #0 {
entry:
  %root = alloca %struct.node*, align 8
  %mostproving = alloca %struct.node*, align 8
  %currentnode = alloca %struct.node*, align 8
  %xstart_time = alloca i64, align 8
  %resmove = alloca %struct.move_s, align 4
  %0 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @Variant, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.move_s* %agg.result to i8*
  %3 = bitcast %struct.move_s* %compmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* @nodecount, align 4
  store i32 0, i32* @iters, align 4
  store i32 0, i32* @frees, align 4
  store i32 1, i32* @ply, align 4
  store i32 0, i32* @maxply, align 4
  call void @make(%struct.move_s* %compmove, i32 0)
  %4 = load i32, i32* @hash, align 4
  %5 = load i32, i32* @move_number, align 4
  %6 = load i32, i32* @ply, align 4
  %add = add nsw i32 %5, %6
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [600 x i32], [600 x i32]* @hash_history, i32 0, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  %7 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* @root_to_move, align 4
  %call = call i64 @rtime()
  store i64 %call, i64* %xstart_time, align 8
  %call2 = call noalias i8* @calloc(i64 1, i64 56) #3
  %8 = bitcast i8* %call2 to %struct.node*
  store %struct.node* %8, %struct.node** %root, align 8
  %9 = load i32, i32* @PBSize, align 4
  %conv = sext i32 %9 to i64
  %call3 = call noalias i8* @calloc(i64 %conv, i64 56) #3
  store i8* %call3, i8** @membuff, align 8
  %10 = load %struct.node*, %struct.node** %root, align 8
  call void @pn_eval(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %root, align 8
  call void @set_proof_and_disproof_numbers(%struct.node* %11)
  %12 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %12, %struct.node** %currentnode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %13 = load %struct.node*, %struct.node** %root, align 8
  %proof = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 4
  %14 = load i32, i32* %proof, align 4
  %cmp4 = icmp ne i32 %14, 0
  br i1 %cmp4, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %while.cond
  %15 = load %struct.node*, %struct.node** %root, align 8
  %disproof = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 5
  %16 = load i32, i32* %disproof, align 4
  %cmp7 = icmp ne i32 %16, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.6
  %17 = load i32, i32* @bufftop, align 4
  %conv9 = zext i32 %17 to i64
  %18 = load i32, i32* @PBSize, align 4
  %sub10 = sub nsw i32 %18, 10000
  %conv11 = sext i32 %sub10 to i64
  %mul = mul i64 %conv11, 56
  %cmp12 = icmp ult i64 %conv9, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.6, %while.cond
  %19 = phi i1 [ false, %land.lhs.true.6 ], [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.node*, %struct.node** %currentnode, align 8
  %call14 = call %struct.node* @select_most_proving(%struct.node* %20)
  store %struct.node* %call14, %struct.node** %mostproving, align 8
  %21 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @develop_node(%struct.node* %21)
  %22 = load %struct.node*, %struct.node** %mostproving, align 8
  call void @update_ancestors(%struct.node* %22)
  %23 = load i32, i32* @iters, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* @iters, align 4
  %24 = load i32, i32* @iters, align 4
  %rem = srem i32 %24, 32
  %cmp15 = icmp eq i32 %rem, 0
  br i1 %cmp15, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %while.body
  %call18 = call i64 @rtime()
  %25 = load i64, i64* %xstart_time, align 8
  %call19 = call i32 @rdifftime(i64 %call18, i64 %25)
  %26 = load i32, i32* @pn_time, align 4
  %cmp20 = icmp sgt i32 %call19, %26
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  br label %while.end

if.end.23:                                        ; preds = %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.22, %land.end
  %27 = load %struct.node*, %struct.node** %root, align 8
  %proof25 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %28 = load i32, i32* %proof25, align 4
  %29 = load %struct.node*, %struct.node** %root, align 8
  %disproof26 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 5
  %30 = load i32, i32* %disproof26, align 4
  %31 = load i32, i32* @nodecount, align 4
  %32 = load i32, i32* @frees, align 4
  %33 = load i32, i32* @nodecount, align 4
  %conv27 = sext i32 %33 to i64
  %mul28 = mul i64 %conv27, 56
  %conv29 = uitofp i64 %mul28 to float
  %div = fdiv float %conv29, 1.048576e+06
  %conv30 = fpext float %div to double
  %34 = load i32, i32* @iters, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i32 %28, i32 %30, i32 %31, i32 %32, double %conv30, i32 %34)
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.35, %while.end
  %35 = load %struct.node*, %struct.node** %currentnode, align 8
  %36 = load %struct.node*, %struct.node** %root, align 8
  %cmp33 = icmp ne %struct.node* %35, %36
  br i1 %cmp33, label %while.body.35, label %while.end.36

while.body.35:                                    ; preds = %while.cond.32
  %37 = load %struct.node*, %struct.node** %currentnode, align 8
  %move = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 8
  call void @unmake(%struct.move_s* %move, i32 0)
  %38 = load %struct.node*, %struct.node** %currentnode, align 8
  %parent = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 7
  %39 = load %struct.node*, %struct.node** %parent, align 8
  store %struct.node* %39, %struct.node** %currentnode, align 8
  br label %while.cond.32

while.end.36:                                     ; preds = %while.cond.32
  call void @unmake(%struct.move_s* %compmove, i32 0)
  %40 = load %struct.node*, %struct.node** %root, align 8
  %proof37 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 4
  %41 = load i32, i32* %proof37, align 4
  %cmp38 = icmp eq i32 %41, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %while.end.36
  %42 = load %struct.node*, %struct.node** %root, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 0
  store i8 1, i8* %value, align 1
  %43 = bitcast %struct.move_s* %resmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%struct.move_s* @pn_move to i8*), i64 24, i32 4, i1 false)
  store i32 1, i32* @s_threat, align 4
  br label %if.end.49

if.else:                                          ; preds = %while.end.36
  %44 = load %struct.node*, %struct.node** %root, align 8
  %disproof41 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 5
  %45 = load i32, i32* %disproof41, align 4
  %cmp42 = icmp eq i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.else
  %46 = load %struct.node*, %struct.node** %root, align 8
  %value45 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 0
  store i8 0, i8* %value45, align 1
  %47 = bitcast %struct.move_s* %resmove to i8*
  %48 = bitcast %struct.move_s* %compmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 24, i32 4, i1 false)
  br label %if.end.48

if.else.46:                                       ; preds = %if.else
  %49 = load %struct.node*, %struct.node** %root, align 8
  %value47 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  store i8 2, i8* %value47, align 1
  %50 = bitcast %struct.move_s* %resmove to i8*
  %51 = bitcast %struct.move_s* %compmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 24, i32 4, i1 false)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.40
  call void @Xfree()
  %52 = load %struct.node*, %struct.node** %root, align 8
  %53 = bitcast %struct.node* %52 to i8*
  call void @free(i8* %53) #3
  %54 = load i8*, i8** @membuff, align 8
  call void @free(i8* %54) #3
  %55 = bitcast %struct.move_s* %agg.result to i8*
  %56 = bitcast %struct.move_s* %resmove to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 24, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.49, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
