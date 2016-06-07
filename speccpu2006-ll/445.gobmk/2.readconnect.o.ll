; ModuleID = 'engine/readconnect.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct.connection_data = type { [400 x i32], [400 x i32], [400 x i32], [400 x i32], [400 x i32], [400 x i32], i32, i32 }

@nodes_connect = global i32 0, align 4
@max_nodes_connect = global i32 2000, align 4
@max_connect_depth2 = global i32 20, align 4
@verbose = external global i32, align 4
@global_connection_node_counter = internal global i32 0, align 4
@board = external global [421 x i8], align 16
@.str = private unnamed_addr constant [19 x i8] c"recursive_connect2\00", align 1
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"one string already captured\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"connection node limit reached\00", align 1
@stackp = external global i32, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"connection depth limit reached\00", align 1
@depth = external global i32, align 4
@hashflags = external global i32, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"trivial connection\00", align 1
@ko_depth = external global i32, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"connection effective\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"no move, probably connected\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"saved move\00", align 1
@count_variations = external global i32, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%oVariation %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%oMove %1m, (%d, %d, %d, %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%o  %d, primary distance\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%o  -100, well balanced\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%o  discarded, not between strings\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%o  discarded, self atari\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"%o  attack with code %d at %1m, defense with code %d at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%o  +500, no defense\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%o  +500, attack point not on shortest path\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%o  -150 at %1m, capturing a string\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%o  -500 at %1m, defending a string\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"%o  +0 at %1m, vulnerability\0A\00", align 1
@delta = external global [8 x i32], align 16
@.str.22 = private unnamed_addr constant [41 x i8] c"%o%1M -150, adjacent to attacker string\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"%o%1M -200, adjacent to attacker string with at most two liberties\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"%o%1M -700, capture or atari of immediately connecting string\0A\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"%o%1M -200, adjacent to defender string with at most two liberties\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"%o%1M -100, disconnect move on edge\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"%o%1M -100, liberty of endpoint string with 3 libs\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%oSorted moves:\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%o%1M %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Move order for %sconnect: %n\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%c%d (%d) %n\00", align 1
@board_size = external global i32, align 4
@.str.34 = private unnamed_addr constant [21 x i8] c"engine/readconnect.c\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"conn->queue_end <= 19 * 19\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"compute_connection_distances\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"  %c \00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c" O  \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c" X  \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" .  \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Vulnerable:\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %1m:\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" %1m\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"recursive_disconnect2\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"first string capturable\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"second string capturable\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"disconnection effective\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"no move, probably disconnected\00", align 1

; Function Attrs: nounwind uwtable
define i32 @string_connect(i32 %str1, i32 %str2, i32* %move) #0 {
entry:
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %dummy_move = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load i32*, i32** %move.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* %dummy_move, i32** %move.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @nodes_connect, align 4
  %1 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @verbose, align 4
  store i32 %2, i32* %save_verbose, align 4
  %3 = load i32, i32* @verbose, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %str1.addr, align 4
  %6 = load i32, i32* %str2.addr, align 4
  %7 = load i32*, i32** %move.addr, align 8
  %call = call i32 @recursive_connect2(i32 %5, i32 %6, i32* %7, i32 0, i32 0, i32 0)
  store i32 %call, i32* %result, align 4
  %8 = load i32, i32* %save_verbose, align 4
  store i32 %8, i32* @verbose, align 4
  %9 = load i32, i32* %result, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @recursive_connect2(i32 %str1, i32 %str2, i32* %move, i32 %komaster, i32 %kom_pos, i32 %has_passed) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %has_passed.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %moves = alloca [362 x i32], align 16
  %num_moves = alloca i32, align 4
  %distance = alloca i32, align 4
  %k = alloca i32, align 4
  %xpos = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %found_read_result = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %read_function_name = alloca i8*, align 8
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %has_passed, i32* %has_passed.addr, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %distance, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8** %read_function_name, align 8
  %2 = load i32, i32* %str1.addr, align 4
  store i32 %2, i32* %q1, align 4
  %3 = load i32, i32* %str2.addr, align 4
  store i32 %3, i32* %q2, align 4
  %4 = load i32*, i32** %move.addr, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @nodes_connect, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @nodes_connect, align 4
  %7 = load i32, i32* @global_connection_node_counter, align 4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* @global_connection_node_counter, align 4
  %8 = load i32, i32* %str1.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %str2.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool12 = icmp ne %struct.SGFTree_t* %12, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %13 = load i8*, i8** %read_function_name, align 8
  %14 = load i32, i32* %q1, align 4
  %15 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %13, i32 %14, i32 %15, i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  store i32 0, i32* %retval
  br label %do.end.210

if.end.15:                                        ; preds = %lor.lhs.false
  %16 = load i32, i32* %str1.addr, align 4
  %17 = load i32, i32* %str2.addr, align 4
  %call = call i32 @same_string(i32 %16, i32 %17)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool18 = icmp ne %struct.SGFTree_t* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %19 = load i8*, i8** %read_function_name, align 8
  %20 = load i32, i32* %q1, align 4
  %21 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %19, i32 %20, i32 %21, i32 0, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  store i32 5, i32* %retval
  br label %do.end.210

if.end.21:                                        ; preds = %if.end.15
  %22 = load i32, i32* @nodes_connect, align 4
  %23 = load i32, i32* @max_nodes_connect, align 4
  %cmp22 = icmp sgt i32 %22, %23
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.21
  %24 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool25 = icmp ne %struct.SGFTree_t* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  %25 = load i8*, i8** %read_function_name, align 8
  %26 = load i32, i32* %q1, align 4
  %27 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %25, i32 %26, i32 %27, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  store i32 0, i32* %retval
  br label %do.end.210

if.end.28:                                        ; preds = %if.end.21
  %28 = load i32, i32* @stackp, align 4
  %29 = load i32, i32* @max_connect_depth2, align 4
  %cmp29 = icmp sgt i32 %28, %29
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.28
  %30 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool32 = icmp ne %struct.SGFTree_t* %30, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  %31 = load i8*, i8** %read_function_name, align 8
  %32 = load i32, i32* %q1, align 4
  %33 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %31, i32 %32, i32 %33, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  store i32 0, i32* %retval
  br label %do.end.210

if.end.35:                                        ; preds = %if.end.28
  %34 = load i32, i32* @stackp, align 4
  %35 = load i32, i32* @depth, align 4
  %cmp36 = icmp sle i32 %34, %35
  br i1 %cmp36, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.35
  %36 = load i32, i32* @hashflags, align 4
  %and = and i32 %36, 2048
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.69

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %has_passed.addr, align 4
  %tobool40 = icmp ne i32 %37, 0
  br i1 %tobool40, label %if.end.69, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.39
  %38 = load i32, i32* %komaster.addr, align 4
  %39 = load i32, i32* %kom_pos.addr, align 4
  %call42 = call i32 @get_read_result2(i32 5, i32 %38, i32 %39, i32* %str1.addr, i32* %str2.addr, %struct.read_result_t** %read_result)
  store i32 %call42, i32* %found_read_result, align 4
  %40 = load i32, i32* %found_read_result, align 4
  %tobool43 = icmp ne i32 %40, 0
  br i1 %tobool43, label %if.then.44, label %if.end.68

if.then.44:                                       ; preds = %if.then.41
  %41 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %41, i32 0, i32 1
  %42 = load i32, i32* %data2, align 4
  %shr = lshr i32 %42, 24
  %and45 = and i32 %shr, 15
  %cmp46 = icmp ne i32 %and45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.then.44
  %43 = load i32*, i32** %move.addr, align 8
  %tobool49 = icmp ne i32* %43, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.48
  %44 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data251 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %44, i32 0, i32 1
  %45 = load i32, i32* %data251, align 4
  %shr52 = lshr i32 %45, 10
  %and53 = and i32 %shr52, 1023
  %46 = load i32*, i32** %move.addr, align 8
  store i32 %and53, i32* %46, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.44
  %47 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool56 = icmp ne %struct.SGFTree_t* %47, null
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.55
  %48 = load i8*, i8** %read_function_name, align 8
  %49 = load i32, i32* %q1, align 4
  %50 = load i32, i32* %q2, align 4
  %51 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data258 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %51, i32 0, i32 1
  %52 = load i32, i32* %data258, align 4
  %shr59 = lshr i32 %52, 10
  %and60 = and i32 %shr59, 1023
  %53 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data261 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %53, i32 0, i32 1
  %54 = load i32, i32* %data261, align 4
  %shr62 = lshr i32 %54, 24
  %and63 = and i32 %shr62, 15
  call void @sgf_trace2(i8* %48, i32 %49, i32 %50, i32 %and60, i32 %and63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.57, %if.end.55
  %55 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data265 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %55, i32 0, i32 1
  %56 = load i32, i32* %data265, align 4
  %shr66 = lshr i32 %56, 24
  %and67 = and i32 %shr66, 15
  store i32 %and67, i32* %retval
  br label %do.end.210

if.end.68:                                        ; preds = %if.then.41
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %land.lhs.true.39, %land.lhs.true, %if.end.35
  %57 = load i32, i32* %str1.addr, align 4
  %58 = load i32, i32* %str2.addr, align 4
  %call70 = call i32 @trivial_connection(i32 %57, i32 %58, i32* %xpos)
  %cmp71 = icmp eq i32 %call70, 5
  br i1 %cmp71, label %if.then.73, label %if.end.90

if.then.73:                                       ; preds = %if.end.69
  %59 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool74 = icmp ne %struct.SGFTree_t* %59, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.73
  %60 = load i8*, i8** %read_function_name, align 8
  %61 = load i32, i32* %q1, align 4
  %62 = load i32, i32* %q2, align 4
  %63 = load i32, i32* %xpos, align 4
  call void @sgf_trace2(i8* %60, i32 %61, i32 %62, i32 %63, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.73
  br label %do.body

do.body:                                          ; preds = %if.end.76
  %64 = load i32*, i32** %move.addr, align 8
  %cmp77 = icmp ne i32* %64, null
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.body
  %65 = load i32, i32* %xpos, align 4
  %66 = load i32*, i32** %move.addr, align 8
  store i32 %65, i32* %66, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %do.body
  %67 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool81 = icmp ne %struct.read_result_t* %67, null
  br i1 %tobool81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %if.end.80
  %68 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data283 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %68, i32 0, i32 1
  %69 = load i32, i32* %data283, align 4
  %and84 = and i32 %69, 1023
  %or = or i32 %and84, 536870912
  %or85 = or i32 %or, 83886080
  %70 = load i32, i32* %xpos, align 4
  %and86 = and i32 %70, 1023
  %shl = shl i32 %and86, 10
  %or87 = or i32 %or85, %shl
  %71 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data288 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %71, i32 0, i32 1
  store i32 %or87, i32* %data288, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.82, %if.end.80
  store i32 5, i32* %retval
  br label %do.end.210

do.end:                                           ; No predecessors!
  br label %if.end.90

if.end.90:                                        ; preds = %do.end, %if.end.69
  %72 = load i32, i32* %str1.addr, align 4
  %73 = load i32, i32* %str2.addr, align 4
  %74 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [362 x i32], [362 x i32]* %moves, i32 0, i32 0
  %call91 = call i32 @find_connection_moves(i32 %72, i32 %73, i32 %74, i32* %arraydecay, i32* %distance)
  store i32 %call91, i32* %num_moves, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.90
  %75 = load i32, i32* %k, align 4
  %76 = load i32, i32* %num_moves, align 4
  %cmp92 = icmp slt i32 %75, %76
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %77 to i64
  %arrayidx95 = getelementptr inbounds [362 x i32], [362 x i32]* %moves, i32 0, i64 %idxprom94
  %78 = load i32, i32* %arrayidx95, align 4
  store i32 %78, i32* %xpos, align 4
  %79 = load i32, i32* %xpos, align 4
  %80 = load i32, i32* %color, align 4
  %81 = load i32, i32* %str1.addr, align 4
  %82 = load i32, i32* %komaster.addr, align 4
  %83 = load i32, i32* %kom_pos.addr, align 4
  %84 = load i32, i32* @stackp, align 4
  %85 = load i32, i32* @ko_depth, align 4
  %cmp96 = icmp sle i32 %84, %85
  br i1 %cmp96, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %86 = load i32, i32* %savecode, align 4
  %cmp98 = icmp eq i32 %86, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %87 = phi i1 [ false, %for.body ], [ %cmp98, %land.rhs ]
  %land.ext = zext i1 %87 to i32
  %call100 = call i32 @komaster_trymove(i32 %79, i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %81, i32 %82, i32 %83, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.144

if.then.102:                                      ; preds = %land.end
  %88 = load i32, i32* %ko_move, align 4
  %tobool103 = icmp ne i32 %88, 0
  br i1 %tobool103, label %if.else, label %if.then.104

if.then.104:                                      ; preds = %if.then.102
  %89 = load i32, i32* %str1.addr, align 4
  %90 = load i32, i32* %str2.addr, align 4
  %91 = load i32, i32* %new_komaster, align 4
  %92 = load i32, i32* %new_kom_pos, align 4
  %93 = load i32, i32* %has_passed.addr, align 4
  %call105 = call i32 @recursive_disconnect2(i32 %89, i32 %90, i32* null, i32 %91, i32 %92, i32 %93)
  store i32 %call105, i32* %acode, align 4
  call void @popgo()
  %94 = load i32, i32* %acode, align 4
  %cmp106 = icmp eq i32 %94, 0
  br i1 %cmp106, label %if.then.108, label %if.end.129

if.then.108:                                      ; preds = %if.then.104
  %95 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool109 = icmp ne %struct.SGFTree_t* %95, null
  br i1 %tobool109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.then.108
  %96 = load i8*, i8** %read_function_name, align 8
  %97 = load i32, i32* %q1, align 4
  %98 = load i32, i32* %q2, align 4
  %99 = load i32, i32* %xpos, align 4
  call void @sgf_trace2(i8* %96, i32 %97, i32 %98, i32 %99, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.then.108
  br label %do.body.112

do.body.112:                                      ; preds = %if.end.111
  %100 = load i32*, i32** %move.addr, align 8
  %cmp113 = icmp ne i32* %100, null
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %do.body.112
  %101 = load i32, i32* %xpos, align 4
  %102 = load i32*, i32** %move.addr, align 8
  store i32 %101, i32* %102, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %do.body.112
  %103 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool117 = icmp ne %struct.read_result_t* %103, null
  br i1 %tobool117, label %if.then.118, label %if.end.127

if.then.118:                                      ; preds = %if.end.116
  %104 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2119 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %104, i32 0, i32 1
  %105 = load i32, i32* %data2119, align 4
  %and120 = and i32 %105, 1023
  %or121 = or i32 %and120, 536870912
  %or122 = or i32 %or121, 83886080
  %106 = load i32, i32* %xpos, align 4
  %and123 = and i32 %106, 1023
  %shl124 = shl i32 %and123, 10
  %or125 = or i32 %or122, %shl124
  %107 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2126 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %107, i32 0, i32 1
  store i32 %or125, i32* %data2126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.118, %if.end.116
  store i32 5, i32* %retval
  br label %do.end.210

do.end.128:                                       ; No predecessors!
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %if.then.104
  %108 = load i32, i32* %acode, align 4
  %cmp130 = icmp ne i32 %108, 0
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.137

land.lhs.true.132:                                ; preds = %if.end.129
  %109 = load i32, i32* %acode, align 4
  %sub = sub nsw i32 5, %109
  %110 = load i32, i32* %savecode, align 4
  %cmp133 = icmp sgt i32 %sub, %110
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %land.lhs.true.132
  %111 = load i32, i32* %xpos, align 4
  store i32 %111, i32* %savemove, align 4
  %112 = load i32, i32* %acode, align 4
  %sub136 = sub nsw i32 5, %112
  store i32 %sub136, i32* %savecode, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %land.lhs.true.132, %if.end.129
  br label %if.end.143

if.else:                                          ; preds = %if.then.102
  %113 = load i32, i32* %str1.addr, align 4
  %114 = load i32, i32* %str2.addr, align 4
  %115 = load i32, i32* %new_komaster, align 4
  %116 = load i32, i32* %new_kom_pos, align 4
  %117 = load i32, i32* %has_passed.addr, align 4
  %call138 = call i32 @recursive_disconnect2(i32 %113, i32 %114, i32* null, i32 %115, i32 %116, i32 %117)
  %cmp139 = icmp ne i32 %call138, 5
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.else
  %118 = load i32, i32* %xpos, align 4
  store i32 %118, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.else
  call void @popgo()
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end.137
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.144
  %119 = load i32, i32* %k, align 4
  %inc145 = add nsw i32 %119, 1
  store i32 %inc145, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %120 = load i32, i32* %num_moves, align 4
  %cmp146 = icmp eq i32 %120, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.169

land.lhs.true.148:                                ; preds = %for.end
  %121 = load i32, i32* %distance, align 4
  %cmp149 = icmp slt i32 %121, 1000
  br i1 %cmp149, label %if.then.151, label %if.end.169

if.then.151:                                      ; preds = %land.lhs.true.148
  %122 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool152 = icmp ne %struct.SGFTree_t* %122, null
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.151
  %123 = load i8*, i8** %read_function_name, align 8
  %124 = load i32, i32* %q1, align 4
  %125 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %123, i32 %124, i32 %125, i32 0, i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %if.then.151
  br label %do.body.155

do.body.155:                                      ; preds = %if.end.154
  %126 = load i32*, i32** %move.addr, align 8
  %cmp156 = icmp ne i32* %126, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %do.body.155
  %127 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %127, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %do.body.155
  %128 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool160 = icmp ne %struct.read_result_t* %128, null
  br i1 %tobool160, label %if.then.161, label %if.end.167

if.then.161:                                      ; preds = %if.end.159
  %129 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2162 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %129, i32 0, i32 1
  %130 = load i32, i32* %data2162, align 4
  %and163 = and i32 %130, 1023
  %or164 = or i32 %and163, 536870912
  %or165 = or i32 %or164, 83886080
  %131 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2166 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %131, i32 0, i32 1
  store i32 %or165, i32* %data2166, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.161, %if.end.159
  store i32 5, i32* %retval
  br label %do.end.210

do.end.168:                                       ; No predecessors!
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %land.lhs.true.148, %for.end
  %132 = load i32, i32* %savecode, align 4
  %cmp170 = icmp ne i32 %132, 0
  br i1 %cmp170, label %if.then.172, label %if.end.198

if.then.172:                                      ; preds = %if.end.169
  %133 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool173 = icmp ne %struct.SGFTree_t* %133, null
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.then.172
  %134 = load i8*, i8** %read_function_name, align 8
  %135 = load i32, i32* %q1, align 4
  %136 = load i32, i32* %q2, align 4
  %137 = load i32, i32* %savemove, align 4
  %138 = load i32, i32* %savecode, align 4
  call void @sgf_trace2(i8* %134, i32 %135, i32 %136, i32 %137, i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %if.then.172
  br label %do.body.176

do.body.176:                                      ; preds = %if.end.175
  %139 = load i32, i32* %savecode, align 4
  %cmp177 = icmp ne i32 %139, 0
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.183

land.lhs.true.179:                                ; preds = %do.body.176
  %140 = load i32*, i32** %move.addr, align 8
  %cmp180 = icmp ne i32* %140, null
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %land.lhs.true.179
  %141 = load i32, i32* %savemove, align 4
  %142 = load i32*, i32** %move.addr, align 8
  store i32 %141, i32* %142, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %land.lhs.true.179, %do.body.176
  %143 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool184 = icmp ne %struct.read_result_t* %143, null
  br i1 %tobool184, label %if.then.185, label %if.end.196

if.then.185:                                      ; preds = %if.end.183
  %144 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2186 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %144, i32 0, i32 1
  %145 = load i32, i32* %data2186, align 4
  %and187 = and i32 %145, 1023
  %or188 = or i32 %and187, 536870912
  %146 = load i32, i32* %savecode, align 4
  %and189 = and i32 %146, 15
  %shl190 = shl i32 %and189, 24
  %or191 = or i32 %or188, %shl190
  %147 = load i32, i32* %savemove, align 4
  %and192 = and i32 %147, 1023
  %shl193 = shl i32 %and192, 10
  %or194 = or i32 %or191, %shl193
  %148 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2195 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %148, i32 0, i32 1
  store i32 %or194, i32* %data2195, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.185, %if.end.183
  %149 = load i32, i32* %savecode, align 4
  store i32 %149, i32* %retval
  br label %do.end.210

do.end.197:                                       ; No predecessors!
  br label %if.end.198

if.end.198:                                       ; preds = %do.end.197, %if.end.169
  %150 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool199 = icmp ne %struct.SGFTree_t* %150, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.198
  %151 = load i8*, i8** %read_function_name, align 8
  %152 = load i32, i32* %q1, align 4
  %153 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %151, i32 %152, i32 %153, i32 0, i32 0, i8* null)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.198
  br label %do.body.202

do.body.202:                                      ; preds = %if.end.201
  %154 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool203 = icmp ne %struct.read_result_t* %154, null
  br i1 %tobool203, label %if.then.204, label %if.end.209

if.then.204:                                      ; preds = %do.body.202
  %155 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2205 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %155, i32 0, i32 1
  %156 = load i32, i32* %data2205, align 4
  %and206 = and i32 %156, 1023
  %or207 = or i32 %and206, 536870912
  %157 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2208 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %157, i32 0, i32 1
  store i32 %or207, i32* %data2208, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.204, %do.body.202
  store i32 0, i32* %retval
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.14, %if.end.20, %if.end.27, %if.end.34, %if.end.64, %if.end.89, %if.end.127, %if.end.167, %if.end.196, %if.end.209
  %158 = load i32, i32* %retval
  ret i32 %158
}

; Function Attrs: nounwind uwtable
define i32 @disconnect(i32 %str1, i32 %str2, i32* %move) #0 {
entry:
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %dummy_move = alloca i32, align 4
  %result = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load i32*, i32** %move.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* %dummy_move, i32** %move.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @nodes_connect, align 4
  %1 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @verbose, align 4
  store i32 %2, i32* %save_verbose, align 4
  %3 = load i32, i32* @verbose, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %str1.addr, align 4
  %6 = load i32, i32* %str2.addr, align 4
  %7 = load i32*, i32** %move.addr, align 8
  %call = call i32 @recursive_disconnect2(i32 %5, i32 %6, i32* %7, i32 0, i32 0, i32 0)
  store i32 %call, i32* %result, align 4
  %8 = load i32, i32* %save_verbose, align 4
  store i32 %8, i32* @verbose, align 4
  %9 = load i32, i32* %result, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @recursive_disconnect2(i32 %str1, i32 %str2, i32* %move, i32 %komaster, i32 %kom_pos, i32 %has_passed) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %has_passed.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %moves = alloca [362 x i32], align 16
  %num_moves = alloca i32, align 4
  %distance = alloca i32, align 4
  %k = alloca i32, align 4
  %xpos = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %found_read_result = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %read_function_name = alloca i8*, align 8
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 %has_passed, i32* %has_passed.addr, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %distance, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str1.addr, align 4
  store i32 %3, i32* %q1, align 4
  %4 = load i32, i32* %str2.addr, align 4
  store i32 %4, i32* %q2, align 4
  %5 = load i32, i32* @nodes_connect, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @nodes_connect, align 4
  %6 = load i32, i32* @global_connection_node_counter, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* @global_connection_node_counter, align 4
  %7 = load i32*, i32** %move.addr, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %str1.addr, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %10 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %str2.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %13 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool12 = icmp ne %struct.SGFTree_t* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %14 = load i8*, i8** %read_function_name, align 8
  %15 = load i32, i32* %q1, align 4
  %16 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %14, i32 %15, i32 %16, i32 0, i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  store i32 5, i32* %retval
  br label %do.end.239

if.end.15:                                        ; preds = %lor.lhs.false
  %17 = load i32, i32* %str1.addr, align 4
  %18 = load i32, i32* %str2.addr, align 4
  %call = call i32 @same_string(i32 %17, i32 %18)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.15
  %19 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool18 = icmp ne %struct.SGFTree_t* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %20 = load i8*, i8** %read_function_name, align 8
  %21 = load i32, i32* %q1, align 4
  %22 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %20, i32 %21, i32 %22, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  store i32 0, i32* %retval
  br label %do.end.239

if.end.21:                                        ; preds = %if.end.15
  %23 = load i32, i32* @nodes_connect, align 4
  %24 = load i32, i32* @max_nodes_connect, align 4
  %cmp22 = icmp sgt i32 %23, %24
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.21
  %25 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool25 = icmp ne %struct.SGFTree_t* %25, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  %26 = load i8*, i8** %read_function_name, align 8
  %27 = load i32, i32* %q1, align 4
  %28 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %26, i32 %27, i32 %28, i32 0, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  store i32 5, i32* %retval
  br label %do.end.239

if.end.28:                                        ; preds = %if.end.21
  %29 = load i32, i32* @stackp, align 4
  %30 = load i32, i32* @max_connect_depth2, align 4
  %cmp29 = icmp sgt i32 %29, %30
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.28
  %31 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool32 = icmp ne %struct.SGFTree_t* %31, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  %32 = load i8*, i8** %read_function_name, align 8
  %33 = load i32, i32* %q1, align 4
  %34 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %32, i32 %33, i32 %34, i32 0, i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.31
  store i32 5, i32* %retval
  br label %do.end.239

if.end.35:                                        ; preds = %if.end.28
  %35 = load i32, i32* @stackp, align 4
  %36 = load i32, i32* @depth, align 4
  %cmp36 = icmp sle i32 %35, %36
  br i1 %cmp36, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.35
  %37 = load i32, i32* @hashflags, align 4
  %and = and i32 %37, 4096
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then.39, label %if.end.67

if.then.39:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %komaster.addr, align 4
  %39 = load i32, i32* %kom_pos.addr, align 4
  %call40 = call i32 @get_read_result2(i32 6, i32 %38, i32 %39, i32* %str1.addr, i32* %str2.addr, %struct.read_result_t** %read_result)
  store i32 %call40, i32* %found_read_result, align 4
  %40 = load i32, i32* %found_read_result, align 4
  %tobool41 = icmp ne i32 %40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.66

if.then.42:                                       ; preds = %if.then.39
  %41 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %41, i32 0, i32 1
  %42 = load i32, i32* %data2, align 4
  %shr = lshr i32 %42, 24
  %and43 = and i32 %shr, 15
  %cmp44 = icmp ne i32 %and43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %if.then.42
  %43 = load i32*, i32** %move.addr, align 8
  %tobool47 = icmp ne i32* %43, null
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.then.46
  %44 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data249 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %44, i32 0, i32 1
  %45 = load i32, i32* %data249, align 4
  %shr50 = lshr i32 %45, 10
  %and51 = and i32 %shr50, 1023
  %46 = load i32*, i32** %move.addr, align 8
  store i32 %and51, i32* %46, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.then.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.42
  %47 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool54 = icmp ne %struct.SGFTree_t* %47, null
  br i1 %tobool54, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %if.end.53
  %48 = load i8*, i8** %read_function_name, align 8
  %49 = load i32, i32* %q1, align 4
  %50 = load i32, i32* %q2, align 4
  %51 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data256 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %51, i32 0, i32 1
  %52 = load i32, i32* %data256, align 4
  %shr57 = lshr i32 %52, 10
  %and58 = and i32 %shr57, 1023
  %53 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data259 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %53, i32 0, i32 1
  %54 = load i32, i32* %data259, align 4
  %shr60 = lshr i32 %54, 24
  %and61 = and i32 %shr60, 15
  call void @sgf_trace2(i8* %48, i32 %49, i32 %50, i32 %and58, i32 %and61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.55, %if.end.53
  %55 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data263 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %55, i32 0, i32 1
  %56 = load i32, i32* %data263, align 4
  %shr64 = lshr i32 %56, 24
  %and65 = and i32 %shr64, 15
  store i32 %and65, i32* %retval
  br label %do.end.239

if.end.66:                                        ; preds = %if.then.39
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %land.lhs.true, %if.end.35
  %57 = load i32, i32* %str1.addr, align 4
  %call68 = call i32 @ladder_capture(i32 %57, i32* %xpos)
  %cmp69 = icmp eq i32 %call68, 5
  br i1 %cmp69, label %if.then.71, label %if.end.88

if.then.71:                                       ; preds = %if.end.67
  %58 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool72 = icmp ne %struct.SGFTree_t* %58, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.71
  %59 = load i8*, i8** %read_function_name, align 8
  %60 = load i32, i32* %q1, align 4
  %61 = load i32, i32* %q2, align 4
  %62 = load i32, i32* %xpos, align 4
  call void @sgf_trace2(i8* %59, i32 %60, i32 %61, i32 %62, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.71
  br label %do.body

do.body:                                          ; preds = %if.end.74
  %63 = load i32*, i32** %move.addr, align 8
  %cmp75 = icmp ne i32* %63, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %do.body
  %64 = load i32, i32* %xpos, align 4
  %65 = load i32*, i32** %move.addr, align 8
  store i32 %64, i32* %65, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %do.body
  %66 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool79 = icmp ne %struct.read_result_t* %66, null
  br i1 %tobool79, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %if.end.78
  %67 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data281 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %67, i32 0, i32 1
  %68 = load i32, i32* %data281, align 4
  %and82 = and i32 %68, 1023
  %or = or i32 %and82, 536870912
  %or83 = or i32 %or, 83886080
  %69 = load i32, i32* %xpos, align 4
  %and84 = and i32 %69, 1023
  %shl = shl i32 %and84, 10
  %or85 = or i32 %or83, %shl
  %70 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data286 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %70, i32 0, i32 1
  store i32 %or85, i32* %data286, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.80, %if.end.78
  store i32 5, i32* %retval
  br label %do.end.239

do.end:                                           ; No predecessors!
  br label %if.end.88

if.end.88:                                        ; preds = %do.end, %if.end.67
  %71 = load i32, i32* %str2.addr, align 4
  %call89 = call i32 @ladder_capture(i32 %71, i32* %xpos)
  %cmp90 = icmp eq i32 %call89, 5
  br i1 %cmp90, label %if.then.92, label %if.end.113

if.then.92:                                       ; preds = %if.end.88
  %72 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool93 = icmp ne %struct.SGFTree_t* %72, null
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.92
  %73 = load i8*, i8** %read_function_name, align 8
  %74 = load i32, i32* %q1, align 4
  %75 = load i32, i32* %q2, align 4
  %76 = load i32, i32* %xpos, align 4
  call void @sgf_trace2(i8* %73, i32 %74, i32 %75, i32 %76, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.92
  br label %do.body.96

do.body.96:                                       ; preds = %if.end.95
  %77 = load i32*, i32** %move.addr, align 8
  %cmp97 = icmp ne i32* %77, null
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %do.body.96
  %78 = load i32, i32* %xpos, align 4
  %79 = load i32*, i32** %move.addr, align 8
  store i32 %78, i32* %79, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %do.body.96
  %80 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool101 = icmp ne %struct.read_result_t* %80, null
  br i1 %tobool101, label %if.then.102, label %if.end.111

if.then.102:                                      ; preds = %if.end.100
  %81 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2103 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %81, i32 0, i32 1
  %82 = load i32, i32* %data2103, align 4
  %and104 = and i32 %82, 1023
  %or105 = or i32 %and104, 536870912
  %or106 = or i32 %or105, 83886080
  %83 = load i32, i32* %xpos, align 4
  %and107 = and i32 %83, 1023
  %shl108 = shl i32 %and107, 10
  %or109 = or i32 %or106, %shl108
  %84 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2110 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %84, i32 0, i32 1
  store i32 %or109, i32* %data2110, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.102, %if.end.100
  store i32 5, i32* %retval
  br label %do.end.239

do.end.112:                                       ; No predecessors!
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %if.end.88
  %85 = load i32, i32* %str1.addr, align 4
  %86 = load i32, i32* %str2.addr, align 4
  %87 = load i32, i32* %other, align 4
  %arraydecay = getelementptr inbounds [362 x i32], [362 x i32]* %moves, i32 0, i32 0
  %call114 = call i32 @find_connection_moves(i32 %85, i32 %86, i32 %87, i32* %arraydecay, i32* %distance)
  store i32 %call114, i32* %num_moves, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.113
  %88 = load i32, i32* %k, align 4
  %89 = load i32, i32* %num_moves, align 4
  %cmp115 = icmp slt i32 %88, %89
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %90 to i64
  %arrayidx118 = getelementptr inbounds [362 x i32], [362 x i32]* %moves, i32 0, i64 %idxprom117
  %91 = load i32, i32* %arrayidx118, align 4
  store i32 %91, i32* %xpos, align 4
  %92 = load i32, i32* %xpos, align 4
  %93 = load i32, i32* %other, align 4
  %94 = load i32, i32* %str1.addr, align 4
  %95 = load i32, i32* %komaster.addr, align 4
  %96 = load i32, i32* %kom_pos.addr, align 4
  %97 = load i32, i32* @stackp, align 4
  %98 = load i32, i32* @ko_depth, align 4
  %cmp119 = icmp sle i32 %97, %98
  br i1 %cmp119, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %99 = load i32, i32* %savecode, align 4
  %cmp121 = icmp eq i32 %99, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %100 = phi i1 [ false, %for.body ], [ %cmp121, %land.rhs ]
  %land.ext = zext i1 %100 to i32
  %call123 = call i32 @komaster_trymove(i32 %92, i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i32 %94, i32 %95, i32 %96, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.168

if.then.125:                                      ; preds = %land.end
  %101 = load i32, i32* %ko_move, align 4
  %tobool126 = icmp ne i32 %101, 0
  br i1 %tobool126, label %if.else, label %if.then.127

if.then.127:                                      ; preds = %if.then.125
  %102 = load i32, i32* %str1.addr, align 4
  %103 = load i32, i32* %str2.addr, align 4
  %104 = load i32, i32* %new_komaster, align 4
  %105 = load i32, i32* %new_kom_pos, align 4
  %106 = load i32, i32* %has_passed.addr, align 4
  %call128 = call i32 @recursive_connect2(i32 %102, i32 %103, i32* null, i32 %104, i32 %105, i32 %106)
  store i32 %call128, i32* %dcode, align 4
  call void @popgo()
  %107 = load i32, i32* %dcode, align 4
  %cmp129 = icmp eq i32 %107, 0
  br i1 %cmp129, label %if.then.131, label %if.end.152

if.then.131:                                      ; preds = %if.then.127
  %108 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool132 = icmp ne %struct.SGFTree_t* %108, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.131
  %109 = load i8*, i8** %read_function_name, align 8
  %110 = load i32, i32* %q1, align 4
  %111 = load i32, i32* %q2, align 4
  %112 = load i32, i32* %xpos, align 4
  call void @sgf_trace2(i8* %109, i32 %110, i32 %111, i32 %112, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.then.131
  br label %do.body.135

do.body.135:                                      ; preds = %if.end.134
  %113 = load i32*, i32** %move.addr, align 8
  %cmp136 = icmp ne i32* %113, null
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %do.body.135
  %114 = load i32, i32* %xpos, align 4
  %115 = load i32*, i32** %move.addr, align 8
  store i32 %114, i32* %115, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %do.body.135
  %116 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool140 = icmp ne %struct.read_result_t* %116, null
  br i1 %tobool140, label %if.then.141, label %if.end.150

if.then.141:                                      ; preds = %if.end.139
  %117 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2142 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %117, i32 0, i32 1
  %118 = load i32, i32* %data2142, align 4
  %and143 = and i32 %118, 1023
  %or144 = or i32 %and143, 536870912
  %or145 = or i32 %or144, 83886080
  %119 = load i32, i32* %xpos, align 4
  %and146 = and i32 %119, 1023
  %shl147 = shl i32 %and146, 10
  %or148 = or i32 %or145, %shl147
  %120 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2149 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %120, i32 0, i32 1
  store i32 %or148, i32* %data2149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.141, %if.end.139
  store i32 5, i32* %retval
  br label %do.end.239

do.end.151:                                       ; No predecessors!
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %if.then.127
  %121 = load i32, i32* %dcode, align 4
  %cmp153 = icmp ne i32 %121, 0
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.161

land.lhs.true.155:                                ; preds = %if.end.152
  %122 = load i32, i32* %dcode, align 4
  %sub156 = sub nsw i32 5, %122
  %123 = load i32, i32* %savecode, align 4
  %cmp157 = icmp sgt i32 %sub156, %123
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %land.lhs.true.155
  %124 = load i32, i32* %xpos, align 4
  store i32 %124, i32* %savemove, align 4
  %125 = load i32, i32* %dcode, align 4
  %sub160 = sub nsw i32 5, %125
  store i32 %sub160, i32* %savecode, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %land.lhs.true.155, %if.end.152
  br label %if.end.167

if.else:                                          ; preds = %if.then.125
  %126 = load i32, i32* %str1.addr, align 4
  %127 = load i32, i32* %str2.addr, align 4
  %128 = load i32, i32* %new_komaster, align 4
  %129 = load i32, i32* %new_kom_pos, align 4
  %130 = load i32, i32* %has_passed.addr, align 4
  %call162 = call i32 @recursive_connect2(i32 %126, i32 %127, i32* null, i32 %128, i32 %129, i32 %130)
  %cmp163 = icmp ne i32 %call162, 5
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.else
  %131 = load i32, i32* %xpos, align 4
  store i32 %131, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.else
  call void @popgo()
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.161
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.168
  %132 = load i32, i32* %k, align 4
  %inc169 = add nsw i32 %132, 1
  store i32 %inc169, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %133 = load i32, i32* %num_moves, align 4
  %cmp170 = icmp eq i32 %133, 0
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.198

land.lhs.true.172:                                ; preds = %for.end
  %134 = load i32, i32* %distance, align 4
  %cmp173 = icmp sge i32 %134, 1000
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.198

land.lhs.true.175:                                ; preds = %land.lhs.true.172
  %135 = load i32, i32* %has_passed.addr, align 4
  %tobool176 = icmp ne i32 %135, 0
  br i1 %tobool176, label %if.then.180, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.175
  %136 = load i32, i32* %str1.addr, align 4
  %137 = load i32, i32* %str2.addr, align 4
  %138 = load i32, i32* %komaster.addr, align 4
  %139 = load i32, i32* %kom_pos.addr, align 4
  %call178 = call i32 @recursive_connect2(i32 %136, i32 %137, i32* null, i32 %138, i32 %139, i32 1)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end.198, label %if.then.180

if.then.180:                                      ; preds = %lor.lhs.false.177, %land.lhs.true.175
  %140 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool181 = icmp ne %struct.SGFTree_t* %140, null
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.180
  %141 = load i8*, i8** %read_function_name, align 8
  %142 = load i32, i32* %q1, align 4
  %143 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %141, i32 %142, i32 %143, i32 0, i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %if.then.180
  br label %do.body.184

do.body.184:                                      ; preds = %if.end.183
  %144 = load i32*, i32** %move.addr, align 8
  %cmp185 = icmp ne i32* %144, null
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %do.body.184
  %145 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %145, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %do.body.184
  %146 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool189 = icmp ne %struct.read_result_t* %146, null
  br i1 %tobool189, label %if.then.190, label %if.end.196

if.then.190:                                      ; preds = %if.end.188
  %147 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2191 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %147, i32 0, i32 1
  %148 = load i32, i32* %data2191, align 4
  %and192 = and i32 %148, 1023
  %or193 = or i32 %and192, 536870912
  %or194 = or i32 %or193, 83886080
  %149 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2195 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %149, i32 0, i32 1
  store i32 %or194, i32* %data2195, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.190, %if.end.188
  store i32 5, i32* %retval
  br label %do.end.239

do.end.197:                                       ; No predecessors!
  br label %if.end.198

if.end.198:                                       ; preds = %do.end.197, %lor.lhs.false.177, %land.lhs.true.172, %for.end
  %150 = load i32, i32* %savecode, align 4
  %cmp199 = icmp ne i32 %150, 0
  br i1 %cmp199, label %if.then.201, label %if.end.227

if.then.201:                                      ; preds = %if.end.198
  %151 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool202 = icmp ne %struct.SGFTree_t* %151, null
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.then.201
  %152 = load i8*, i8** %read_function_name, align 8
  %153 = load i32, i32* %q1, align 4
  %154 = load i32, i32* %q2, align 4
  %155 = load i32, i32* %savemove, align 4
  %156 = load i32, i32* %savecode, align 4
  call void @sgf_trace2(i8* %152, i32 %153, i32 %154, i32 %155, i32 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %if.then.201
  br label %do.body.205

do.body.205:                                      ; preds = %if.end.204
  %157 = load i32, i32* %savecode, align 4
  %cmp206 = icmp ne i32 %157, 0
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.212

land.lhs.true.208:                                ; preds = %do.body.205
  %158 = load i32*, i32** %move.addr, align 8
  %cmp209 = icmp ne i32* %158, null
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %land.lhs.true.208
  %159 = load i32, i32* %savemove, align 4
  %160 = load i32*, i32** %move.addr, align 8
  store i32 %159, i32* %160, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %land.lhs.true.208, %do.body.205
  %161 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool213 = icmp ne %struct.read_result_t* %161, null
  br i1 %tobool213, label %if.then.214, label %if.end.225

if.then.214:                                      ; preds = %if.end.212
  %162 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2215 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %162, i32 0, i32 1
  %163 = load i32, i32* %data2215, align 4
  %and216 = and i32 %163, 1023
  %or217 = or i32 %and216, 536870912
  %164 = load i32, i32* %savecode, align 4
  %and218 = and i32 %164, 15
  %shl219 = shl i32 %and218, 24
  %or220 = or i32 %or217, %shl219
  %165 = load i32, i32* %savemove, align 4
  %and221 = and i32 %165, 1023
  %shl222 = shl i32 %and221, 10
  %or223 = or i32 %or220, %shl222
  %166 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2224 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %166, i32 0, i32 1
  store i32 %or223, i32* %data2224, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.214, %if.end.212
  %167 = load i32, i32* %savecode, align 4
  store i32 %167, i32* %retval
  br label %do.end.239

do.end.226:                                       ; No predecessors!
  br label %if.end.227

if.end.227:                                       ; preds = %do.end.226, %if.end.198
  %168 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool228 = icmp ne %struct.SGFTree_t* %168, null
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.227
  %169 = load i8*, i8** %read_function_name, align 8
  %170 = load i32, i32* %q1, align 4
  %171 = load i32, i32* %q2, align 4
  call void @sgf_trace2(i8* %169, i32 %170, i32 %171, i32 0, i32 0, i8* null)
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %if.end.227
  br label %do.body.231

do.body.231:                                      ; preds = %if.end.230
  %172 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool232 = icmp ne %struct.read_result_t* %172, null
  br i1 %tobool232, label %if.then.233, label %if.end.238

if.then.233:                                      ; preds = %do.body.231
  %173 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2234 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %173, i32 0, i32 1
  %174 = load i32, i32* %data2234, align 4
  %and235 = and i32 %174, 1023
  %or236 = or i32 %and235, 536870912
  %175 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2237 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %175, i32 0, i32 1
  store i32 %or236, i32* %data2237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.233, %do.body.231
  store i32 0, i32* %retval
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.14, %if.end.20, %if.end.27, %if.end.34, %if.end.62, %if.end.87, %if.end.111, %if.end.150, %if.end.196, %if.end.225, %if.end.238
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define void @reset_connection_node_counter() #0 {
entry:
  store i32 0, i32* @global_connection_node_counter, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_connection_node_counter() #0 {
entry:
  %0 = load i32, i32* @global_connection_node_counter, align 4
  ret i32 %0
}

declare void @sgf_trace2(i8*, i32, i32, i32, i32, i8*) #1

declare i32 @same_string(i32, i32) #1

declare i32 @get_read_result2(i32, i32, i32, i32*, i32*, %struct.read_result_t**) #1

; Function Attrs: nounwind uwtable
define internal i32 @trivial_connection(i32 %str1, i32 %str2, i32* %move) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %r = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  store i32 0, i32* %result, align 4
  %2 = load i32, i32* %str1.addr, align 4
  %3 = load i32, i32* %str2.addr, align 4
  %4 = load i32*, i32** %move.addr, align 8
  %call = call i32 @have_common_lib(i32 %2, i32 %3, i32* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %str1.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call1 = call i32 @chainlinks(i32 %5, i32* %arraydecay)
  store i32 %call1, i32* %adj, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %r, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %str2.addr, align 4
  %call2 = call i32 @adjacent_strings(i32 %9, i32 %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %13 = load i32*, i32** %move.addr, align 8
  %call6 = call i32 @attack(i32 %12, i32* %13)
  %cmp7 = icmp eq i32 %call6, 5
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 5, i32* %result, align 4
  br label %for.end

if.end.9:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %14 = load i32, i32* %r, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %15, %struct.SGFTree_t** @sgf_dumptree, align 8
  %16 = load i32, i32* %save_count_variations, align 4
  store i32 %16, i32* @count_variations, align 4
  %17 = load i32, i32* %result, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @find_connection_moves(i32 %str1, i32 %str2, i32 %color_to_move, i32* %moves, i32* %total_distance) #0 {
entry:
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %color_to_move.addr = alloca i32, align 4
  %moves.addr = alloca i32*, align 8
  %total_distance.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %connect_move = alloca i32, align 4
  %r = alloca i32, align 4
  %conn1 = alloca %struct.connection_data, align 4
  %conn2 = alloca %struct.connection_data, align 4
  %distances = alloca [362 x i32], align 16
  %num_moves = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %acode = alloca i32, align 4
  %attack_move = alloca i32, align 4
  %dcode = alloca i32, align 4
  %defense_move = alloca i32, align 4
  %max_dist1 = alloca i32, align 4
  %max_dist2 = alloca i32, align 4
  %lib = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca i32, align 4
  %dist1 = alloca i32, align 4
  %deltadist1 = alloca i32, align 4
  %dist2 = alloca i32, align 4
  %deltadist2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %distance = alloca i32, align 4
  %l = alloca i32, align 4
  %l234 = alloca i32, align 4
  %l287 = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %l369 = alloca i32, align 4
  %l417 = alloca i32, align 4
  %move = alloca i32, align 4
  %adjacent_to_attacker = alloca i32, align 4
  %pos478 = alloca i32, align 4
  %mindistance = alloca i32, align 4
  %min_at = alloca i32, align 4
  %temp = alloca i32, align 4
  %tempmin = alloca i32, align 4
  %buf = alloca [500 x i8], align 16
  %pos702 = alloca i8*, align 8
  %chars = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32 %color_to_move, i32* %color_to_move.addr, align 4
  store i32* %moves, i32** %moves.addr, align 8
  store i32* %total_distance, i32** %total_distance.addr, align 8
  %0 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %color_to_move.addr, align 4
  %4 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %3, %4
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %connect_move, align 4
  store i32 0, i32* %num_moves, align 4
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %5, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %6 = load i32, i32* @count_variations, align 4
  store i32 %6, i32* %save_count_variations, align 4
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %attack_move, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %defense_move, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %7 = load i32, i32* %str1.addr, align 4
  %8 = load i32, i32* %str2.addr, align 4
  call void @compute_connection_distances(i32 %7, i32 %8, %struct.connection_data* %conn1)
  %9 = load i32, i32* %str2.addr, align 4
  %10 = load i32, i32* %str1.addr, align 4
  call void @compute_connection_distances(i32 %9, i32 %10, %struct.connection_data* %conn2)
  %11 = load i32, i32* %str1.addr, align 4
  %call = call i32 @findlib(i32 %11, i32 1, i32* %lib)
  %cmp2 = icmp eq i32 %call, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %lib, align 4
  %idxprom4 = sext i32 %12 to i64
  %distances5 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5, i32 0, i64 %idxprom4
  store i32 0, i32* %arrayidx6, align 4
  %13 = load i32, i32* %lib, align 4
  %idxprom7 = sext i32 %13 to i64
  %coming_from = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from, i32 0, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  %14 = load i32, i32* %str1.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %distances10 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* %distances10, i32 0, i64 %idxprom9
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %lib, align 4
  %idxprom12 = sext i32 %16 to i64
  %distances13 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [400 x i32], [400 x i32]* %distances13, i32 0, i64 %idxprom12
  store i32 %15, i32* %arrayidx14, align 4
  %17 = load i32, i32* %str1.addr, align 4
  %idxprom15 = sext i32 %17 to i64
  %coming_from16 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from16, i32 0, i64 %idxprom15
  %18 = load i32, i32* %arrayidx17, align 4
  %19 = load i32, i32* %lib, align 4
  %idxprom18 = sext i32 %19 to i64
  %coming_from19 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from19, i32 0, i64 %idxprom18
  store i32 %18, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, i32* %str2.addr, align 4
  %call21 = call i32 @findlib(i32 %20, i32 1, i32* %lib)
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end
  %21 = load i32, i32* %lib, align 4
  %idxprom25 = sext i32 %21 to i64
  %distances26 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [400 x i32], [400 x i32]* %distances26, i32 0, i64 %idxprom25
  store i32 0, i32* %arrayidx27, align 4
  %22 = load i32, i32* %str2.addr, align 4
  %idxprom28 = sext i32 %22 to i64
  %distances29 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* %distances29, i32 0, i64 %idxprom28
  %23 = load i32, i32* %arrayidx30, align 4
  %24 = load i32, i32* %lib, align 4
  %idxprom31 = sext i32 %24 to i64
  %distances32 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [400 x i32], [400 x i32]* %distances32, i32 0, i64 %idxprom31
  store i32 %23, i32* %arrayidx33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.24, %if.end
  %25 = load i32, i32* %str2.addr, align 4
  %idxprom35 = sext i32 %25 to i64
  %distances36 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [400 x i32], [400 x i32]* %distances36, i32 0, i64 %idxprom35
  %26 = load i32, i32* %arrayidx37, align 4
  store i32 %26, i32* %max_dist1, align 4
  %27 = load i32, i32* %str1.addr, align 4
  %idxprom38 = sext i32 %27 to i64
  %distances39 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [400 x i32], [400 x i32]* %distances39, i32 0, i64 %idxprom38
  %28 = load i32, i32* %arrayidx40, align 4
  store i32 %28, i32* %max_dist2, align 4
  %29 = load i32, i32* %max_dist1, align 4
  %30 = load i32, i32* %max_dist2, align 4
  %cmp41 = icmp slt i32 %29, %30
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %31 = load i32, i32* %max_dist1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  %32 = load i32, i32* %max_dist2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ]
  %33 = load i32*, i32** %total_distance.addr, align 8
  store i32 %cond, i32* %33, align 4
  %34 = load i32, i32* @verbose, align 4
  %cmp43 = icmp sgt i32 %34, 0
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %cond.end
  %35 = load i32, i32* %save_count_variations, align 4
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %35)
  call void @dump_stack()
  call void @showboard(i32 0)
  call void @print_connection_distances(%struct.connection_data* %conn1)
  call void @print_connection_distances(%struct.connection_data* %conn2)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %cond.end
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.465, %if.end.47
  %36 = load i32, i32* %r, align 4
  %queue_end = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 7
  %37 = load i32, i32* %queue_end, align 4
  %cmp48 = icmp slt i32 %36, %37
  br i1 %cmp48, label %for.body, label %for.end.467

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %r, align 4
  %idxprom50 = sext i32 %38 to i64
  %queue = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 5
  %arrayidx51 = getelementptr inbounds [400 x i32], [400 x i32]* %queue, i32 0, i64 %idxprom50
  %39 = load i32, i32* %arrayidx51, align 4
  store i32 %39, i32* %pos, align 4
  %40 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %40 to i64
  %distances53 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [400 x i32], [400 x i32]* %distances53, i32 0, i64 %idxprom52
  %41 = load i32, i32* %arrayidx54, align 4
  store i32 %41, i32* %dist1, align 4
  %42 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %42 to i64
  %deltas = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas, i32 0, i64 %idxprom55
  %43 = load i32, i32* %arrayidx56, align 4
  store i32 %43, i32* %deltadist1, align 4
  %44 = load i32, i32* %pos, align 4
  %idxprom57 = sext i32 %44 to i64
  %distances58 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* %distances58, i32 0, i64 %idxprom57
  %45 = load i32, i32* %arrayidx59, align 4
  store i32 %45, i32* %dist2, align 4
  %46 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %46 to i64
  %deltas61 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas61, i32 0, i64 %idxprom60
  %47 = load i32, i32* %arrayidx62, align 4
  store i32 %47, i32* %deltadist2, align 4
  %48 = load i32, i32* %dist1, align 4
  %49 = load i32, i32* %deltadist1, align 4
  %sub63 = sub nsw i32 %48, %49
  %50 = load i32, i32* %dist2, align 4
  %add = add nsw i32 %sub63, %50
  %51 = load i32, i32* %deltadist2, align 4
  %sub64 = sub nsw i32 %add, %51
  %cmp65 = icmp sgt i32 %sub64, 2500
  br i1 %cmp65, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %52 = load i32, i32* %dist1, align 4
  %53 = load i32, i32* %max_dist1, align 4
  %add67 = add nsw i32 %53, 200
  %cmp68 = icmp sgt i32 %52, %add67
  br i1 %cmp68, label %if.then.74, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false
  %54 = load i32, i32* %dist2, align 4
  %55 = load i32, i32* %max_dist2, align 4
  %add71 = add nsw i32 %55, 200
  %cmp72 = icmp sgt i32 %54, %add71
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false, %for.body
  br label %for.inc.465

if.end.75:                                        ; preds = %lor.lhs.false.70
  %56 = load i32, i32* %pos, align 4
  %idxprom76 = sext i32 %56 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %57 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %57 to i32
  %cmp79 = icmp eq i32 %conv78, 1
  br i1 %cmp79, label %land.lhs.true, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.75
  %58 = load i32, i32* %pos, align 4
  %idxprom82 = sext i32 %58 to i64
  %arrayidx83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom82
  %59 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %59 to i32
  %cmp85 = icmp eq i32 %conv84, 2
  br i1 %cmp85, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %lor.lhs.false.81, %if.end.75
  %60 = load i32, i32* %pos, align 4
  %call87 = call i32 @find_origin(i32 %60)
  %61 = load i32, i32* %pos, align 4
  %cmp88 = icmp ne i32 %call87, %61
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true
  br label %for.inc.465

if.end.91:                                        ; preds = %land.lhs.true, %lor.lhs.false.81
  %62 = load i32, i32* @verbose, align 4
  %cmp92 = icmp sgt i32 %62, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %63 = load i32, i32* %pos, align 4
  %64 = load i32, i32* %dist1, align 4
  %65 = load i32, i32* %deltadist1, align 4
  %66 = load i32, i32* %dist2, align 4
  %67 = load i32, i32* %deltadist2, align 4
  %call95 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.91
  %68 = load i32, i32* %dist1, align 4
  %69 = load i32, i32* %deltadist1, align 4
  %sub97 = sub nsw i32 %68, %69
  store i32 %sub97, i32* %d1, align 4
  %70 = load i32, i32* %dist2, align 4
  %71 = load i32, i32* %deltadist2, align 4
  %sub98 = sub nsw i32 %70, %71
  store i32 %sub98, i32* %d2, align 4
  %72 = load i32, i32* %d1, align 4
  %73 = load i32, i32* %d2, align 4
  %add99 = add nsw i32 %72, %73
  store i32 %add99, i32* %distance, align 4
  %74 = load i32, i32* @verbose, align 4
  %cmp100 = icmp sgt i32 %74, 0
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.96
  %75 = load i32, i32* %distance, align 4
  %call103 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %75)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.96
  %76 = load i32, i32* %d1, align 4
  %mul = mul nsw i32 3, %76
  %77 = load i32, i32* %d2, align 4
  %mul105 = mul nsw i32 2, %77
  %cmp106 = icmp sgt i32 %mul, %mul105
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.120

land.lhs.true.108:                                ; preds = %if.end.104
  %78 = load i32, i32* %d2, align 4
  %mul109 = mul nsw i32 3, %78
  %79 = load i32, i32* %d1, align 4
  %mul110 = mul nsw i32 2, %79
  %cmp111 = icmp sgt i32 %mul109, %mul110
  br i1 %cmp111, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %land.lhs.true.108
  %80 = load i32, i32* %distance, align 4
  %sub114 = sub nsw i32 %80, 100
  store i32 %sub114, i32* %distance, align 4
  %81 = load i32, i32* @verbose, align 4
  %cmp115 = icmp sgt i32 %81, 0
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.then.113
  %call118 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %land.lhs.true.108, %if.end.104
  %82 = load i32, i32* %pos, align 4
  %idxprom121 = sext i32 %82 to i64
  %coming_from122 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 2
  %arrayidx123 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from122, i32 0, i64 %idxprom121
  %83 = load i32, i32* %arrayidx123, align 4
  %cmp124 = icmp ne i32 %83, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.141

land.lhs.true.126:                                ; preds = %if.end.120
  %84 = load i32, i32* %pos, align 4
  %idxprom127 = sext i32 %84 to i64
  %coming_from128 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 2
  %arrayidx129 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from128, i32 0, i64 %idxprom127
  %85 = load i32, i32* %arrayidx129, align 4
  %86 = load i32, i32* %pos, align 4
  %idxprom130 = sext i32 %86 to i64
  %coming_from131 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 2
  %arrayidx132 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from131, i32 0, i64 %idxprom130
  %87 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %85, %87
  br i1 %cmp133, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %land.lhs.true.126
  %88 = load i32, i32* @verbose, align 4
  %cmp136 = icmp sgt i32 %88, 0
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.then.135
  %call139 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.then.135
  br label %for.inc.465

if.end.141:                                       ; preds = %land.lhs.true.126, %if.end.120
  %89 = load i32, i32* %pos, align 4
  %idxprom142 = sext i32 %89 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %90 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %90 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %if.then.147, label %if.else.186

if.then.147:                                      ; preds = %if.end.141
  %91 = load i32, i32* %pos, align 4
  %92 = load i32, i32* %color_to_move.addr, align 4
  %call148 = call i32 @check_self_atari(i32 %91, i32 %92)
  %tobool = icmp ne i32 %call148, 0
  br i1 %tobool, label %if.then.149, label %if.else

if.then.149:                                      ; preds = %if.then.147
  br label %do.body

do.body:                                          ; preds = %if.then.149
  store i32 0, i32* %l, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc, %do.body
  %93 = load i32, i32* %l, align 4
  %94 = load i32, i32* %num_moves, align 4
  %cmp151 = icmp slt i32 %93, %94
  br i1 %cmp151, label %for.body.153, label %for.end

for.body.153:                                     ; preds = %for.cond.150
  %95 = load i32, i32* %l, align 4
  %idxprom154 = sext i32 %95 to i64
  %96 = load i32*, i32** %moves.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %96, i64 %idxprom154
  %97 = load i32, i32* %arrayidx155, align 4
  %98 = load i32, i32* %pos, align 4
  %cmp156 = icmp eq i32 %97, %98
  br i1 %cmp156, label %if.then.158, label %if.end.167

if.then.158:                                      ; preds = %for.body.153
  %99 = load i32, i32* %l, align 4
  %idxprom159 = sext i32 %99 to i64
  %arrayidx160 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom159
  %100 = load i32, i32* %arrayidx160, align 4
  %101 = load i32, i32* %distance, align 4
  %cmp161 = icmp sgt i32 %100, %101
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.then.158
  %102 = load i32, i32* %distance, align 4
  %103 = load i32, i32* %l, align 4
  %idxprom164 = sext i32 %103 to i64
  %arrayidx165 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom164
  store i32 %102, i32* %arrayidx165, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.then.158
  br label %for.end

if.end.167:                                       ; preds = %for.body.153
  br label %for.inc

for.inc:                                          ; preds = %if.end.167
  %104 = load i32, i32* %l, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.150

for.end:                                          ; preds = %if.end.166, %for.cond.150
  %105 = load i32, i32* %l, align 4
  %106 = load i32, i32* %num_moves, align 4
  %cmp168 = icmp eq i32 %105, %106
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.179

land.lhs.true.170:                                ; preds = %for.end
  %107 = load i32, i32* %num_moves, align 4
  %cmp171 = icmp slt i32 %107, 362
  br i1 %cmp171, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %land.lhs.true.170
  %108 = load i32, i32* %pos, align 4
  %109 = load i32, i32* %num_moves, align 4
  %idxprom174 = sext i32 %109 to i64
  %110 = load i32*, i32** %moves.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %110, i64 %idxprom174
  store i32 %108, i32* %arrayidx175, align 4
  %111 = load i32, i32* %distance, align 4
  %112 = load i32, i32* %num_moves, align 4
  %idxprom176 = sext i32 %112 to i64
  %arrayidx177 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom176
  store i32 %111, i32* %arrayidx177, align 4
  %113 = load i32, i32* %num_moves, align 4
  %inc178 = add nsw i32 %113, 1
  store i32 %inc178, i32* %num_moves, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %land.lhs.true.170, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.179
  br label %if.end.185

if.else:                                          ; preds = %if.then.147
  %114 = load i32, i32* @verbose, align 4
  %cmp180 = icmp sgt i32 %114, 0
  br i1 %cmp180, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.else
  %call183 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %if.else
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %do.end
  br label %if.end.464

if.else.186:                                      ; preds = %if.end.141
  %115 = load i32, i32* %pos, align 4
  %idxprom187 = sext i32 %115 to i64
  %arrayidx188 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom187
  %116 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %116 to i32
  %117 = load i32, i32* %other, align 4
  %cmp190 = icmp eq i32 %conv189, %117
  br i1 %cmp190, label %if.then.192, label %if.else.332

if.then.192:                                      ; preds = %if.else.186
  %118 = load i32, i32* %pos, align 4
  %call193 = call i32 @attack_and_defend(i32 %118, i32* %acode, i32* %attack_move, i32* %dcode, i32* %defense_move)
  %119 = load i32, i32* @verbose, align 4
  %cmp194 = icmp sgt i32 %119, 0
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %if.then.192
  %120 = load i32, i32* %acode, align 4
  %121 = load i32, i32* %attack_move, align 4
  %122 = load i32, i32* %dcode, align 4
  %123 = load i32, i32* %defense_move, align 4
  %call197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i32 0, i32 0), i32 %120, i32 %121, i32 %122, i32 %123)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %if.then.192
  %124 = load i32, i32* %connect_move, align 4
  %tobool199 = icmp ne i32 %124, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.else.277

land.lhs.true.200:                                ; preds = %if.end.198
  %125 = load i32, i32* %acode, align 4
  %cmp201 = icmp ne i32 %125, 0
  br i1 %cmp201, label %if.then.203, label %if.else.277

if.then.203:                                      ; preds = %land.lhs.true.200
  %126 = load i32, i32* %dcode, align 4
  %cmp204 = icmp eq i32 %126, 0
  br i1 %cmp204, label %if.then.206, label %if.else.213

if.then.206:                                      ; preds = %if.then.203
  %127 = load i32, i32* %distance, align 4
  %add207 = add nsw i32 %127, 500
  store i32 %add207, i32* %distance, align 4
  %128 = load i32, i32* @verbose, align 4
  %cmp208 = icmp sgt i32 %128, 0
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %if.then.206
  %call211 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %if.then.206
  br label %if.end.232

if.else.213:                                      ; preds = %if.then.203
  %129 = load i32, i32* %attack_move, align 4
  %idxprom214 = sext i32 %129 to i64
  %distances215 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [400 x i32], [400 x i32]* %distances215, i32 0, i64 %idxprom214
  %130 = load i32, i32* %arrayidx216, align 4
  %131 = load i32, i32* %attack_move, align 4
  %idxprom217 = sext i32 %131 to i64
  %distances218 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [400 x i32], [400 x i32]* %distances218, i32 0, i64 %idxprom217
  %132 = load i32, i32* %arrayidx219, align 4
  %add220 = add nsw i32 %130, %132
  %133 = load i32, i32* %dist1, align 4
  %134 = load i32, i32* %dist2, align 4
  %add221 = add nsw i32 %133, %134
  %cmp222 = icmp sgt i32 %add220, %add221
  br i1 %cmp222, label %if.then.224, label %if.end.231

if.then.224:                                      ; preds = %if.else.213
  %135 = load i32, i32* %distance, align 4
  %add225 = add nsw i32 %135, 500
  store i32 %add225, i32* %distance, align 4
  %136 = load i32, i32* @verbose, align 4
  %cmp226 = icmp sgt i32 %136, 0
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.then.224
  %call229 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.then.224
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.else.213
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.212
  br label %do.body.233

do.body.233:                                      ; preds = %if.end.232
  store i32 0, i32* %l234, align 4
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.255, %do.body.233
  %137 = load i32, i32* %l234, align 4
  %138 = load i32, i32* %num_moves, align 4
  %cmp236 = icmp slt i32 %137, %138
  br i1 %cmp236, label %for.body.238, label %for.end.257

for.body.238:                                     ; preds = %for.cond.235
  %139 = load i32, i32* %l234, align 4
  %idxprom239 = sext i32 %139 to i64
  %140 = load i32*, i32** %moves.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %140, i64 %idxprom239
  %141 = load i32, i32* %arrayidx240, align 4
  %142 = load i32, i32* %attack_move, align 4
  %cmp241 = icmp eq i32 %141, %142
  br i1 %cmp241, label %if.then.243, label %if.end.254

if.then.243:                                      ; preds = %for.body.238
  %143 = load i32, i32* %l234, align 4
  %idxprom244 = sext i32 %143 to i64
  %arrayidx245 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom244
  %144 = load i32, i32* %arrayidx245, align 4
  %145 = load i32, i32* %distance, align 4
  %sub246 = sub nsw i32 %145, 150
  %cmp247 = icmp sgt i32 %144, %sub246
  br i1 %cmp247, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %if.then.243
  %146 = load i32, i32* %distance, align 4
  %sub250 = sub nsw i32 %146, 150
  %147 = load i32, i32* %l234, align 4
  %idxprom251 = sext i32 %147 to i64
  %arrayidx252 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom251
  store i32 %sub250, i32* %arrayidx252, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.249, %if.then.243
  br label %for.end.257

if.end.254:                                       ; preds = %for.body.238
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %148 = load i32, i32* %l234, align 4
  %inc256 = add nsw i32 %148, 1
  store i32 %inc256, i32* %l234, align 4
  br label %for.cond.235

for.end.257:                                      ; preds = %if.end.253, %for.cond.235
  %149 = load i32, i32* %l234, align 4
  %150 = load i32, i32* %num_moves, align 4
  %cmp258 = icmp eq i32 %149, %150
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.270

land.lhs.true.260:                                ; preds = %for.end.257
  %151 = load i32, i32* %num_moves, align 4
  %cmp261 = icmp slt i32 %151, 362
  br i1 %cmp261, label %if.then.263, label %if.end.270

if.then.263:                                      ; preds = %land.lhs.true.260
  %152 = load i32, i32* %attack_move, align 4
  %153 = load i32, i32* %num_moves, align 4
  %idxprom264 = sext i32 %153 to i64
  %154 = load i32*, i32** %moves.addr, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %154, i64 %idxprom264
  store i32 %152, i32* %arrayidx265, align 4
  %155 = load i32, i32* %distance, align 4
  %sub266 = sub nsw i32 %155, 150
  %156 = load i32, i32* %num_moves, align 4
  %idxprom267 = sext i32 %156 to i64
  %arrayidx268 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom267
  store i32 %sub266, i32* %arrayidx268, align 4
  %157 = load i32, i32* %num_moves, align 4
  %inc269 = add nsw i32 %157, 1
  store i32 %inc269, i32* %num_moves, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.263, %land.lhs.true.260, %for.end.257
  br label %do.end.271

do.end.271:                                       ; preds = %if.end.270
  %158 = load i32, i32* @verbose, align 4
  %cmp272 = icmp sgt i32 %158, 0
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %do.end.271
  %159 = load i32, i32* %attack_move, align 4
  %call275 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i32 %159)
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %do.end.271
  br label %if.end.331

if.else.277:                                      ; preds = %land.lhs.true.200, %if.end.198
  %160 = load i32, i32* %connect_move, align 4
  %tobool278 = icmp ne i32 %160, 0
  br i1 %tobool278, label %if.end.330, label %land.lhs.true.279

land.lhs.true.279:                                ; preds = %if.else.277
  %161 = load i32, i32* %acode, align 4
  %cmp280 = icmp ne i32 %161, 0
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.330

land.lhs.true.282:                                ; preds = %land.lhs.true.279
  %162 = load i32, i32* %dcode, align 4
  %cmp283 = icmp ne i32 %162, 0
  br i1 %cmp283, label %if.then.285, label %if.end.330

if.then.285:                                      ; preds = %land.lhs.true.282
  br label %do.body.286

do.body.286:                                      ; preds = %if.then.285
  store i32 0, i32* %l287, align 4
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.308, %do.body.286
  %163 = load i32, i32* %l287, align 4
  %164 = load i32, i32* %num_moves, align 4
  %cmp289 = icmp slt i32 %163, %164
  br i1 %cmp289, label %for.body.291, label %for.end.310

for.body.291:                                     ; preds = %for.cond.288
  %165 = load i32, i32* %l287, align 4
  %idxprom292 = sext i32 %165 to i64
  %166 = load i32*, i32** %moves.addr, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %166, i64 %idxprom292
  %167 = load i32, i32* %arrayidx293, align 4
  %168 = load i32, i32* %defense_move, align 4
  %cmp294 = icmp eq i32 %167, %168
  br i1 %cmp294, label %if.then.296, label %if.end.307

if.then.296:                                      ; preds = %for.body.291
  %169 = load i32, i32* %l287, align 4
  %idxprom297 = sext i32 %169 to i64
  %arrayidx298 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom297
  %170 = load i32, i32* %arrayidx298, align 4
  %171 = load i32, i32* %distance, align 4
  %sub299 = sub nsw i32 %171, 500
  %cmp300 = icmp sgt i32 %170, %sub299
  br i1 %cmp300, label %if.then.302, label %if.end.306

if.then.302:                                      ; preds = %if.then.296
  %172 = load i32, i32* %distance, align 4
  %sub303 = sub nsw i32 %172, 500
  %173 = load i32, i32* %l287, align 4
  %idxprom304 = sext i32 %173 to i64
  %arrayidx305 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom304
  store i32 %sub303, i32* %arrayidx305, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.302, %if.then.296
  br label %for.end.310

if.end.307:                                       ; preds = %for.body.291
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %174 = load i32, i32* %l287, align 4
  %inc309 = add nsw i32 %174, 1
  store i32 %inc309, i32* %l287, align 4
  br label %for.cond.288

for.end.310:                                      ; preds = %if.end.306, %for.cond.288
  %175 = load i32, i32* %l287, align 4
  %176 = load i32, i32* %num_moves, align 4
  %cmp311 = icmp eq i32 %175, %176
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.323

land.lhs.true.313:                                ; preds = %for.end.310
  %177 = load i32, i32* %num_moves, align 4
  %cmp314 = icmp slt i32 %177, 362
  br i1 %cmp314, label %if.then.316, label %if.end.323

if.then.316:                                      ; preds = %land.lhs.true.313
  %178 = load i32, i32* %defense_move, align 4
  %179 = load i32, i32* %num_moves, align 4
  %idxprom317 = sext i32 %179 to i64
  %180 = load i32*, i32** %moves.addr, align 8
  %arrayidx318 = getelementptr inbounds i32, i32* %180, i64 %idxprom317
  store i32 %178, i32* %arrayidx318, align 4
  %181 = load i32, i32* %distance, align 4
  %sub319 = sub nsw i32 %181, 500
  %182 = load i32, i32* %num_moves, align 4
  %idxprom320 = sext i32 %182 to i64
  %arrayidx321 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom320
  store i32 %sub319, i32* %arrayidx321, align 4
  %183 = load i32, i32* %num_moves, align 4
  %inc322 = add nsw i32 %183, 1
  store i32 %inc322, i32* %num_moves, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.316, %land.lhs.true.313, %for.end.310
  br label %do.end.324

do.end.324:                                       ; preds = %if.end.323
  %184 = load i32, i32* @verbose, align 4
  %cmp325 = icmp sgt i32 %184, 0
  br i1 %cmp325, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %do.end.324
  %185 = load i32, i32* %defense_move, align 4
  %call328 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i32 %185)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %do.end.324
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %land.lhs.true.282, %land.lhs.true.279, %if.else.277
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.end.276
  br label %if.end.463

if.else.332:                                      ; preds = %if.else.186
  %186 = load i32, i32* %pos, align 4
  %idxprom333 = sext i32 %186 to i64
  %arrayidx334 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom333
  %187 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %187 to i32
  %188 = load i32, i32* %color, align 4
  %cmp336 = icmp eq i32 %conv335, %188
  br i1 %cmp336, label %if.then.338, label %if.end.462

if.then.338:                                      ; preds = %if.else.332
  store i32 0, i32* %k, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.459, %if.then.338
  %189 = load i32, i32* %k, align 4
  %cmp340 = icmp slt i32 %189, 4
  br i1 %cmp340, label %for.body.342, label %for.end.461

for.body.342:                                     ; preds = %for.cond.339
  %190 = load i32, i32* %k, align 4
  %and = and i32 %190, 1
  %tobool343 = icmp ne i32 %and, 0
  br i1 %tobool343, label %if.then.344, label %if.else.347

if.then.344:                                      ; preds = %for.body.342
  %191 = load i32, i32* %pos, align 4
  %idxprom345 = sext i32 %191 to i64
  %vulnerable1 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 3
  %arrayidx346 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1, i32 0, i64 %idxprom345
  %192 = load i32, i32* %arrayidx346, align 4
  store i32 %192, i32* %apos, align 4
  br label %if.end.350

if.else.347:                                      ; preds = %for.body.342
  %193 = load i32, i32* %pos, align 4
  %idxprom348 = sext i32 %193 to i64
  %vulnerable2 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 4
  %arrayidx349 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2, i32 0, i64 %idxprom348
  %194 = load i32, i32* %arrayidx349, align 4
  store i32 %194, i32* %apos, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.347, %if.then.344
  %195 = load i32, i32* %k, align 4
  %and351 = and i32 %195, 2
  %tobool352 = icmp ne i32 %and351, 0
  br i1 %tobool352, label %if.then.353, label %if.else.357

if.then.353:                                      ; preds = %if.end.350
  %196 = load i32, i32* %pos, align 4
  %idxprom354 = sext i32 %196 to i64
  %vulnerable1355 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 3
  %arrayidx356 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1355, i32 0, i64 %idxprom354
  %197 = load i32, i32* %arrayidx356, align 4
  store i32 %197, i32* %bpos, align 4
  br label %if.end.361

if.else.357:                                      ; preds = %if.end.350
  %198 = load i32, i32* %pos, align 4
  %idxprom358 = sext i32 %198 to i64
  %vulnerable2359 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 4
  %arrayidx360 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2359, i32 0, i64 %idxprom358
  %199 = load i32, i32* %arrayidx360, align 4
  store i32 %199, i32* %bpos, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.357, %if.then.353
  %200 = load i32, i32* %apos, align 4
  %201 = load i32, i32* %bpos, align 4
  %202 = load i32, i32* %color, align 4
  %call362 = call i32 @common_vulnerability(i32 %200, i32 %201, i32 %202)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.then.364, label %if.end.458

if.then.364:                                      ; preds = %if.end.361
  %203 = load i32, i32* %apos, align 4
  %204 = load i32, i32* %color_to_move.addr, align 4
  %call365 = call i32 @check_self_atari(i32 %203, i32 %204)
  %tobool366 = icmp ne i32 %call365, 0
  br i1 %tobool366, label %if.then.367, label %if.end.409

if.then.367:                                      ; preds = %if.then.364
  br label %do.body.368

do.body.368:                                      ; preds = %if.then.367
  store i32 0, i32* %l369, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.388, %do.body.368
  %205 = load i32, i32* %l369, align 4
  %206 = load i32, i32* %num_moves, align 4
  %cmp371 = icmp slt i32 %205, %206
  br i1 %cmp371, label %for.body.373, label %for.end.390

for.body.373:                                     ; preds = %for.cond.370
  %207 = load i32, i32* %l369, align 4
  %idxprom374 = sext i32 %207 to i64
  %208 = load i32*, i32** %moves.addr, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %208, i64 %idxprom374
  %209 = load i32, i32* %arrayidx375, align 4
  %210 = load i32, i32* %apos, align 4
  %cmp376 = icmp eq i32 %209, %210
  br i1 %cmp376, label %if.then.378, label %if.end.387

if.then.378:                                      ; preds = %for.body.373
  %211 = load i32, i32* %l369, align 4
  %idxprom379 = sext i32 %211 to i64
  %arrayidx380 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom379
  %212 = load i32, i32* %arrayidx380, align 4
  %213 = load i32, i32* %distance, align 4
  %cmp381 = icmp sgt i32 %212, %213
  br i1 %cmp381, label %if.then.383, label %if.end.386

if.then.383:                                      ; preds = %if.then.378
  %214 = load i32, i32* %distance, align 4
  %215 = load i32, i32* %l369, align 4
  %idxprom384 = sext i32 %215 to i64
  %arrayidx385 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom384
  store i32 %214, i32* %arrayidx385, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.383, %if.then.378
  br label %for.end.390

if.end.387:                                       ; preds = %for.body.373
  br label %for.inc.388

for.inc.388:                                      ; preds = %if.end.387
  %216 = load i32, i32* %l369, align 4
  %inc389 = add nsw i32 %216, 1
  store i32 %inc389, i32* %l369, align 4
  br label %for.cond.370

for.end.390:                                      ; preds = %if.end.386, %for.cond.370
  %217 = load i32, i32* %l369, align 4
  %218 = load i32, i32* %num_moves, align 4
  %cmp391 = icmp eq i32 %217, %218
  br i1 %cmp391, label %land.lhs.true.393, label %if.end.402

land.lhs.true.393:                                ; preds = %for.end.390
  %219 = load i32, i32* %num_moves, align 4
  %cmp394 = icmp slt i32 %219, 362
  br i1 %cmp394, label %if.then.396, label %if.end.402

if.then.396:                                      ; preds = %land.lhs.true.393
  %220 = load i32, i32* %apos, align 4
  %221 = load i32, i32* %num_moves, align 4
  %idxprom397 = sext i32 %221 to i64
  %222 = load i32*, i32** %moves.addr, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %222, i64 %idxprom397
  store i32 %220, i32* %arrayidx398, align 4
  %223 = load i32, i32* %distance, align 4
  %224 = load i32, i32* %num_moves, align 4
  %idxprom399 = sext i32 %224 to i64
  %arrayidx400 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom399
  store i32 %223, i32* %arrayidx400, align 4
  %225 = load i32, i32* %num_moves, align 4
  %inc401 = add nsw i32 %225, 1
  store i32 %inc401, i32* %num_moves, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.396, %land.lhs.true.393, %for.end.390
  br label %do.end.403

do.end.403:                                       ; preds = %if.end.402
  %226 = load i32, i32* @verbose, align 4
  %cmp404 = icmp sgt i32 %226, 0
  br i1 %cmp404, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %do.end.403
  %227 = load i32, i32* %apos, align 4
  %call407 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i32 %227)
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %do.end.403
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.364
  %228 = load i32, i32* %bpos, align 4
  %229 = load i32, i32* %apos, align 4
  %cmp410 = icmp ne i32 %228, %229
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.457

land.lhs.true.412:                                ; preds = %if.end.409
  %230 = load i32, i32* %bpos, align 4
  %231 = load i32, i32* %color_to_move.addr, align 4
  %call413 = call i32 @check_self_atari(i32 %230, i32 %231)
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then.415, label %if.end.457

if.then.415:                                      ; preds = %land.lhs.true.412
  br label %do.body.416

do.body.416:                                      ; preds = %if.then.415
  store i32 0, i32* %l417, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.436, %do.body.416
  %232 = load i32, i32* %l417, align 4
  %233 = load i32, i32* %num_moves, align 4
  %cmp419 = icmp slt i32 %232, %233
  br i1 %cmp419, label %for.body.421, label %for.end.438

for.body.421:                                     ; preds = %for.cond.418
  %234 = load i32, i32* %l417, align 4
  %idxprom422 = sext i32 %234 to i64
  %235 = load i32*, i32** %moves.addr, align 8
  %arrayidx423 = getelementptr inbounds i32, i32* %235, i64 %idxprom422
  %236 = load i32, i32* %arrayidx423, align 4
  %237 = load i32, i32* %bpos, align 4
  %cmp424 = icmp eq i32 %236, %237
  br i1 %cmp424, label %if.then.426, label %if.end.435

if.then.426:                                      ; preds = %for.body.421
  %238 = load i32, i32* %l417, align 4
  %idxprom427 = sext i32 %238 to i64
  %arrayidx428 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom427
  %239 = load i32, i32* %arrayidx428, align 4
  %240 = load i32, i32* %distance, align 4
  %cmp429 = icmp sgt i32 %239, %240
  br i1 %cmp429, label %if.then.431, label %if.end.434

if.then.431:                                      ; preds = %if.then.426
  %241 = load i32, i32* %distance, align 4
  %242 = load i32, i32* %l417, align 4
  %idxprom432 = sext i32 %242 to i64
  %arrayidx433 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom432
  store i32 %241, i32* %arrayidx433, align 4
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.431, %if.then.426
  br label %for.end.438

if.end.435:                                       ; preds = %for.body.421
  br label %for.inc.436

for.inc.436:                                      ; preds = %if.end.435
  %243 = load i32, i32* %l417, align 4
  %inc437 = add nsw i32 %243, 1
  store i32 %inc437, i32* %l417, align 4
  br label %for.cond.418

for.end.438:                                      ; preds = %if.end.434, %for.cond.418
  %244 = load i32, i32* %l417, align 4
  %245 = load i32, i32* %num_moves, align 4
  %cmp439 = icmp eq i32 %244, %245
  br i1 %cmp439, label %land.lhs.true.441, label %if.end.450

land.lhs.true.441:                                ; preds = %for.end.438
  %246 = load i32, i32* %num_moves, align 4
  %cmp442 = icmp slt i32 %246, 362
  br i1 %cmp442, label %if.then.444, label %if.end.450

if.then.444:                                      ; preds = %land.lhs.true.441
  %247 = load i32, i32* %bpos, align 4
  %248 = load i32, i32* %num_moves, align 4
  %idxprom445 = sext i32 %248 to i64
  %249 = load i32*, i32** %moves.addr, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %249, i64 %idxprom445
  store i32 %247, i32* %arrayidx446, align 4
  %250 = load i32, i32* %distance, align 4
  %251 = load i32, i32* %num_moves, align 4
  %idxprom447 = sext i32 %251 to i64
  %arrayidx448 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom447
  store i32 %250, i32* %arrayidx448, align 4
  %252 = load i32, i32* %num_moves, align 4
  %inc449 = add nsw i32 %252, 1
  store i32 %inc449, i32* %num_moves, align 4
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.444, %land.lhs.true.441, %for.end.438
  br label %do.end.451

do.end.451:                                       ; preds = %if.end.450
  %253 = load i32, i32* @verbose, align 4
  %cmp452 = icmp sgt i32 %253, 0
  br i1 %cmp452, label %if.then.454, label %if.end.456

if.then.454:                                      ; preds = %do.end.451
  %254 = load i32, i32* %bpos, align 4
  %call455 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i32 %254)
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.454, %do.end.451
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %land.lhs.true.412, %if.end.409
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %if.end.361
  br label %for.inc.459

for.inc.459:                                      ; preds = %if.end.458
  %255 = load i32, i32* %k, align 4
  %inc460 = add nsw i32 %255, 1
  store i32 %inc460, i32* %k, align 4
  br label %for.cond.339

for.end.461:                                      ; preds = %for.cond.339
  br label %if.end.462

if.end.462:                                       ; preds = %for.end.461, %if.else.332
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.end.331
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.end.185
  br label %for.inc.465

for.inc.465:                                      ; preds = %if.end.464, %if.end.140, %if.then.90, %if.then.74
  %256 = load i32, i32* %r, align 4
  %inc466 = add nsw i32 %256, 1
  store i32 %inc466, i32* %r, align 4
  br label %for.cond

for.end.467:                                      ; preds = %for.cond
  %257 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %257, %struct.SGFTree_t** @sgf_dumptree, align 8
  %258 = load i32, i32* %save_count_variations, align 4
  store i32 %258, i32* @count_variations, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.468

for.cond.468:                                     ; preds = %for.inc.635, %for.end.467
  %259 = load i32, i32* %r, align 4
  %260 = load i32, i32* %num_moves, align 4
  %cmp469 = icmp slt i32 %259, %260
  br i1 %cmp469, label %for.body.471, label %for.end.637

for.body.471:                                     ; preds = %for.cond.468
  %261 = load i32, i32* %r, align 4
  %idxprom472 = sext i32 %261 to i64
  %262 = load i32*, i32** %moves.addr, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %262, i64 %idxprom472
  %263 = load i32, i32* %arrayidx473, align 4
  store i32 %263, i32* %move, align 4
  store i32 0, i32* %adjacent_to_attacker, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.474

for.cond.474:                                     ; preds = %for.inc.592, %for.body.471
  %264 = load i32, i32* %k, align 4
  %cmp475 = icmp slt i32 %264, 4
  br i1 %cmp475, label %for.body.477, label %for.end.594

for.body.477:                                     ; preds = %for.cond.474
  %265 = load i32, i32* %move, align 4
  %266 = load i32, i32* %k, align 4
  %idxprom479 = sext i32 %266 to i64
  %arrayidx480 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom479
  %267 = load i32, i32* %arrayidx480, align 4
  %add481 = add nsw i32 %265, %267
  store i32 %add481, i32* %pos478, align 4
  %268 = load i32, i32* %pos478, align 4
  %idxprom482 = sext i32 %268 to i64
  %arrayidx483 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom482
  %269 = load i8, i8* %arrayidx483, align 1
  %conv484 = zext i8 %269 to i32
  %270 = load i32, i32* %other, align 4
  %cmp485 = icmp eq i32 %conv484, %270
  br i1 %cmp485, label %if.then.487, label %if.else.570

if.then.487:                                      ; preds = %for.body.477
  store i32 1, i32* %adjacent_to_attacker, align 4
  %271 = load i32, i32* %r, align 4
  %idxprom488 = sext i32 %271 to i64
  %arrayidx489 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom488
  %272 = load i32, i32* %arrayidx489, align 4
  %sub490 = sub nsw i32 %272, 150
  store i32 %sub490, i32* %arrayidx489, align 4
  %273 = load i32, i32* @verbose, align 4
  %cmp491 = icmp sgt i32 %273, 0
  br i1 %cmp491, label %if.then.493, label %if.end.495

if.then.493:                                      ; preds = %if.then.487
  %274 = load i32, i32* %move, align 4
  %call494 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 %274)
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.493, %if.then.487
  %275 = load i32, i32* %pos478, align 4
  %call496 = call i32 @countlib(i32 %275)
  %cmp497 = icmp sle i32 %call496, 2
  br i1 %cmp497, label %if.then.499, label %if.end.569

if.then.499:                                      ; preds = %if.end.495
  %276 = load i32, i32* %r, align 4
  %idxprom500 = sext i32 %276 to i64
  %arrayidx501 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom500
  %277 = load i32, i32* %arrayidx501, align 4
  %sub502 = sub nsw i32 %277, 200
  store i32 %sub502, i32* %arrayidx501, align 4
  %278 = load i32, i32* @verbose, align 4
  %cmp503 = icmp sgt i32 %278, 0
  br i1 %cmp503, label %if.then.505, label %if.end.507

if.then.505:                                      ; preds = %if.then.499
  %279 = load i32, i32* %move, align 4
  %call506 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i32 0, i32 0), i32 %279)
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.505, %if.then.499
  %280 = load i32, i32* %move, align 4
  %idxprom508 = sext i32 %280 to i64
  %distances509 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [400 x i32], [400 x i32]* %distances509, i32 0, i64 %idxprom508
  %281 = load i32, i32* %arrayidx510, align 4
  %282 = load i32, i32* %move, align 4
  %idxprom511 = sext i32 %282 to i64
  %deltas512 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas512, i32 0, i64 %idxprom511
  %283 = load i32, i32* %arrayidx513, align 4
  %sub514 = sub nsw i32 %281, %283
  %cmp515 = icmp sle i32 %sub514, 500
  br i1 %cmp515, label %land.lhs.true.527, label %lor.lhs.false.517

lor.lhs.false.517:                                ; preds = %if.end.507
  %284 = load i32, i32* %pos478, align 4
  %idxprom518 = sext i32 %284 to i64
  %distances519 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [400 x i32], [400 x i32]* %distances519, i32 0, i64 %idxprom518
  %285 = load i32, i32* %arrayidx520, align 4
  %286 = load i32, i32* %pos478, align 4
  %idxprom521 = sext i32 %286 to i64
  %deltas522 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas522, i32 0, i64 %idxprom521
  %287 = load i32, i32* %arrayidx523, align 4
  %sub524 = sub nsw i32 %285, %287
  %cmp525 = icmp sle i32 %sub524, 500
  br i1 %cmp525, label %land.lhs.true.527, label %if.end.568

land.lhs.true.527:                                ; preds = %lor.lhs.false.517, %if.end.507
  %288 = load i32, i32* %move, align 4
  %idxprom528 = sext i32 %288 to i64
  %distances529 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx530 = getelementptr inbounds [400 x i32], [400 x i32]* %distances529, i32 0, i64 %idxprom528
  %289 = load i32, i32* %arrayidx530, align 4
  %290 = load i32, i32* %move, align 4
  %idxprom531 = sext i32 %290 to i64
  %deltas532 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas532, i32 0, i64 %idxprom531
  %291 = load i32, i32* %arrayidx533, align 4
  %sub534 = sub nsw i32 %289, %291
  %cmp535 = icmp sle i32 %sub534, 500
  br i1 %cmp535, label %land.lhs.true.547, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %land.lhs.true.527
  %292 = load i32, i32* %pos478, align 4
  %idxprom538 = sext i32 %292 to i64
  %distances539 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx540 = getelementptr inbounds [400 x i32], [400 x i32]* %distances539, i32 0, i64 %idxprom538
  %293 = load i32, i32* %arrayidx540, align 4
  %294 = load i32, i32* %pos478, align 4
  %idxprom541 = sext i32 %294 to i64
  %deltas542 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas542, i32 0, i64 %idxprom541
  %295 = load i32, i32* %arrayidx543, align 4
  %sub544 = sub nsw i32 %293, %295
  %cmp545 = icmp sle i32 %sub544, 500
  br i1 %cmp545, label %land.lhs.true.547, label %if.end.568

land.lhs.true.547:                                ; preds = %lor.lhs.false.537, %land.lhs.true.527
  %296 = load i32, i32* %pos478, align 4
  %idxprom548 = sext i32 %296 to i64
  %distances549 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn1, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [400 x i32], [400 x i32]* %distances549, i32 0, i64 %idxprom548
  %297 = load i32, i32* %arrayidx550, align 4
  %298 = load i32*, i32** %total_distance.addr, align 8
  %299 = load i32, i32* %298, align 4
  %cmp551 = icmp slt i32 %297, %299
  br i1 %cmp551, label %land.lhs.true.553, label %if.end.568

land.lhs.true.553:                                ; preds = %land.lhs.true.547
  %300 = load i32, i32* %pos478, align 4
  %idxprom554 = sext i32 %300 to i64
  %distances555 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %conn2, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [400 x i32], [400 x i32]* %distances555, i32 0, i64 %idxprom554
  %301 = load i32, i32* %arrayidx556, align 4
  %302 = load i32*, i32** %total_distance.addr, align 8
  %303 = load i32, i32* %302, align 4
  %cmp557 = icmp slt i32 %301, %303
  br i1 %cmp557, label %if.then.559, label %if.end.568

if.then.559:                                      ; preds = %land.lhs.true.553
  %304 = load i32, i32* %r, align 4
  %idxprom560 = sext i32 %304 to i64
  %arrayidx561 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom560
  %305 = load i32, i32* %arrayidx561, align 4
  %sub562 = sub nsw i32 %305, 700
  store i32 %sub562, i32* %arrayidx561, align 4
  %306 = load i32, i32* @verbose, align 4
  %cmp563 = icmp sgt i32 %306, 0
  br i1 %cmp563, label %if.then.565, label %if.end.567

if.then.565:                                      ; preds = %if.then.559
  %307 = load i32, i32* %move, align 4
  %call566 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i32 0, i32 0), i32 %307)
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.565, %if.then.559
  br label %if.end.568

if.end.568:                                       ; preds = %if.end.567, %land.lhs.true.553, %land.lhs.true.547, %lor.lhs.false.537, %lor.lhs.false.517
  br label %if.end.569

if.end.569:                                       ; preds = %if.end.568, %if.end.495
  br label %if.end.591

if.else.570:                                      ; preds = %for.body.477
  %308 = load i32, i32* %pos478, align 4
  %idxprom571 = sext i32 %308 to i64
  %arrayidx572 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom571
  %309 = load i8, i8* %arrayidx572, align 1
  %conv573 = zext i8 %309 to i32
  %310 = load i32, i32* %color, align 4
  %cmp574 = icmp eq i32 %conv573, %310
  br i1 %cmp574, label %if.then.576, label %if.end.590

if.then.576:                                      ; preds = %if.else.570
  %311 = load i32, i32* %pos478, align 4
  %call577 = call i32 @countlib(i32 %311)
  %cmp578 = icmp sle i32 %call577, 2
  br i1 %cmp578, label %if.then.580, label %if.end.589

if.then.580:                                      ; preds = %if.then.576
  %312 = load i32, i32* %r, align 4
  %idxprom581 = sext i32 %312 to i64
  %arrayidx582 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom581
  %313 = load i32, i32* %arrayidx582, align 4
  %sub583 = sub nsw i32 %313, 200
  store i32 %sub583, i32* %arrayidx582, align 4
  %314 = load i32, i32* @verbose, align 4
  %cmp584 = icmp sgt i32 %314, 0
  br i1 %cmp584, label %if.then.586, label %if.end.588

if.then.586:                                      ; preds = %if.then.580
  %315 = load i32, i32* %move, align 4
  %call587 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i32 0, i32 0), i32 %315)
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.586, %if.then.580
  br label %if.end.589

if.end.589:                                       ; preds = %if.end.588, %if.then.576
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589, %if.else.570
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %if.end.569
  br label %for.inc.592

for.inc.592:                                      ; preds = %if.end.591
  %316 = load i32, i32* %k, align 4
  %inc593 = add nsw i32 %316, 1
  store i32 %inc593, i32* %k, align 4
  br label %for.cond.474

for.end.594:                                      ; preds = %for.cond.474
  %317 = load i32, i32* %adjacent_to_attacker, align 4
  %tobool595 = icmp ne i32 %317, 0
  br i1 %tobool595, label %land.lhs.true.596, label %if.end.611

land.lhs.true.596:                                ; preds = %for.end.594
  %318 = load i32, i32* %color, align 4
  %319 = load i32, i32* %color_to_move.addr, align 4
  %cmp597 = icmp ne i32 %318, %319
  br i1 %cmp597, label %land.lhs.true.599, label %if.end.611

land.lhs.true.599:                                ; preds = %land.lhs.true.596
  %320 = load i32, i32* %move, align 4
  %call600 = call i32 @is_edge_vertex(i32 %320)
  %tobool601 = icmp ne i32 %call600, 0
  br i1 %tobool601, label %if.then.602, label %if.end.611

if.then.602:                                      ; preds = %land.lhs.true.599
  %321 = load i32, i32* %r, align 4
  %idxprom603 = sext i32 %321 to i64
  %arrayidx604 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom603
  %322 = load i32, i32* %arrayidx604, align 4
  %sub605 = sub nsw i32 %322, 100
  store i32 %sub605, i32* %arrayidx604, align 4
  %323 = load i32, i32* @verbose, align 4
  %cmp606 = icmp sgt i32 %323, 0
  br i1 %cmp606, label %if.then.608, label %if.end.610

if.then.608:                                      ; preds = %if.then.602
  %324 = load i32, i32* %move, align 4
  %call609 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0), i32 %324)
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.608, %if.then.602
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %land.lhs.true.599, %land.lhs.true.596, %for.end.594
  %325 = load i32, i32* %move, align 4
  %326 = load i32, i32* %str1.addr, align 4
  %call612 = call i32 @liberty_of_string(i32 %325, i32 %326)
  %tobool613 = icmp ne i32 %call612, 0
  br i1 %tobool613, label %land.lhs.true.614, label %lor.lhs.false.618

land.lhs.true.614:                                ; preds = %if.end.611
  %327 = load i32, i32* %str1.addr, align 4
  %call615 = call i32 @countlib(i32 %327)
  %cmp616 = icmp eq i32 %call615, 3
  br i1 %cmp616, label %if.then.625, label %lor.lhs.false.618

lor.lhs.false.618:                                ; preds = %land.lhs.true.614, %if.end.611
  %328 = load i32, i32* %move, align 4
  %329 = load i32, i32* %str2.addr, align 4
  %call619 = call i32 @liberty_of_string(i32 %328, i32 %329)
  %tobool620 = icmp ne i32 %call619, 0
  br i1 %tobool620, label %land.lhs.true.621, label %if.end.634

land.lhs.true.621:                                ; preds = %lor.lhs.false.618
  %330 = load i32, i32* %str2.addr, align 4
  %call622 = call i32 @countlib(i32 %330)
  %cmp623 = icmp eq i32 %call622, 3
  br i1 %cmp623, label %if.then.625, label %if.end.634

if.then.625:                                      ; preds = %land.lhs.true.621, %land.lhs.true.614
  %331 = load i32, i32* %r, align 4
  %idxprom626 = sext i32 %331 to i64
  %arrayidx627 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom626
  %332 = load i32, i32* %arrayidx627, align 4
  %sub628 = sub nsw i32 %332, 100
  store i32 %sub628, i32* %arrayidx627, align 4
  %333 = load i32, i32* @verbose, align 4
  %cmp629 = icmp sgt i32 %333, 0
  br i1 %cmp629, label %if.then.631, label %if.end.633

if.then.631:                                      ; preds = %if.then.625
  %334 = load i32, i32* %move, align 4
  %call632 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i32 %334)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.631, %if.then.625
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %land.lhs.true.621, %lor.lhs.false.618
  br label %for.inc.635

for.inc.635:                                      ; preds = %if.end.634
  %335 = load i32, i32* %r, align 4
  %inc636 = add nsw i32 %335, 1
  store i32 %inc636, i32* %r, align 4
  br label %for.cond.468

for.end.637:                                      ; preds = %for.cond.468
  store i32 0, i32* %i, align 4
  br label %for.cond.638

for.cond.638:                                     ; preds = %for.inc.680, %for.end.637
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %num_moves, align 4
  %cmp639 = icmp slt i32 %336, %337
  br i1 %cmp639, label %for.body.641, label %for.end.682

for.body.641:                                     ; preds = %for.cond.638
  %338 = load i32, i32* %i, align 4
  %idxprom642 = sext i32 %338 to i64
  %arrayidx643 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom642
  %339 = load i32, i32* %arrayidx643, align 4
  store i32 %339, i32* %mindistance, align 4
  %340 = load i32, i32* %i, align 4
  store i32 %340, i32* %min_at, align 4
  %341 = load i32, i32* %i, align 4
  %add644 = add nsw i32 %341, 1
  store i32 %add644, i32* %j, align 4
  br label %for.cond.645

for.cond.645:                                     ; preds = %for.inc.657, %for.body.641
  %342 = load i32, i32* %j, align 4
  %343 = load i32, i32* %num_moves, align 4
  %cmp646 = icmp slt i32 %342, %343
  br i1 %cmp646, label %for.body.648, label %for.end.659

for.body.648:                                     ; preds = %for.cond.645
  %344 = load i32, i32* %j, align 4
  %idxprom649 = sext i32 %344 to i64
  %arrayidx650 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom649
  %345 = load i32, i32* %arrayidx650, align 4
  %346 = load i32, i32* %mindistance, align 4
  %cmp651 = icmp slt i32 %345, %346
  br i1 %cmp651, label %if.then.653, label %if.end.656

if.then.653:                                      ; preds = %for.body.648
  %347 = load i32, i32* %j, align 4
  %idxprom654 = sext i32 %347 to i64
  %arrayidx655 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom654
  %348 = load i32, i32* %arrayidx655, align 4
  store i32 %348, i32* %mindistance, align 4
  %349 = load i32, i32* %j, align 4
  store i32 %349, i32* %min_at, align 4
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.653, %for.body.648
  br label %for.inc.657

for.inc.657:                                      ; preds = %if.end.656
  %350 = load i32, i32* %j, align 4
  %inc658 = add nsw i32 %350, 1
  store i32 %inc658, i32* %j, align 4
  br label %for.cond.645

for.end.659:                                      ; preds = %for.cond.645
  %351 = load i32, i32* %min_at, align 4
  %352 = load i32, i32* %i, align 4
  %cmp660 = icmp ne i32 %351, %352
  br i1 %cmp660, label %if.then.662, label %if.end.679

if.then.662:                                      ; preds = %for.end.659
  %353 = load i32, i32* %i, align 4
  %idxprom663 = sext i32 %353 to i64
  %354 = load i32*, i32** %moves.addr, align 8
  %arrayidx664 = getelementptr inbounds i32, i32* %354, i64 %idxprom663
  %355 = load i32, i32* %arrayidx664, align 4
  store i32 %355, i32* %temp, align 4
  %356 = load i32, i32* %i, align 4
  %idxprom665 = sext i32 %356 to i64
  %arrayidx666 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom665
  %357 = load i32, i32* %arrayidx666, align 4
  store i32 %357, i32* %tempmin, align 4
  %358 = load i32, i32* %min_at, align 4
  %idxprom667 = sext i32 %358 to i64
  %359 = load i32*, i32** %moves.addr, align 8
  %arrayidx668 = getelementptr inbounds i32, i32* %359, i64 %idxprom667
  %360 = load i32, i32* %arrayidx668, align 4
  %361 = load i32, i32* %i, align 4
  %idxprom669 = sext i32 %361 to i64
  %362 = load i32*, i32** %moves.addr, align 8
  %arrayidx670 = getelementptr inbounds i32, i32* %362, i64 %idxprom669
  store i32 %360, i32* %arrayidx670, align 4
  %363 = load i32, i32* %min_at, align 4
  %idxprom671 = sext i32 %363 to i64
  %arrayidx672 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom671
  %364 = load i32, i32* %arrayidx672, align 4
  %365 = load i32, i32* %i, align 4
  %idxprom673 = sext i32 %365 to i64
  %arrayidx674 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom673
  store i32 %364, i32* %arrayidx674, align 4
  %366 = load i32, i32* %temp, align 4
  %367 = load i32, i32* %min_at, align 4
  %idxprom675 = sext i32 %367 to i64
  %368 = load i32*, i32** %moves.addr, align 8
  %arrayidx676 = getelementptr inbounds i32, i32* %368, i64 %idxprom675
  store i32 %366, i32* %arrayidx676, align 4
  %369 = load i32, i32* %tempmin, align 4
  %370 = load i32, i32* %min_at, align 4
  %idxprom677 = sext i32 %370 to i64
  %arrayidx678 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom677
  store i32 %369, i32* %arrayidx678, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %if.then.662, %for.end.659
  br label %for.inc.680

for.inc.680:                                      ; preds = %if.end.679
  %371 = load i32, i32* %i, align 4
  %inc681 = add nsw i32 %371, 1
  store i32 %inc681, i32* %i, align 4
  br label %for.cond.638

for.end.682:                                      ; preds = %for.cond.638
  %372 = load i32, i32* @verbose, align 4
  %cmp683 = icmp sgt i32 %372, 0
  br i1 %cmp683, label %if.then.685, label %if.end.699

if.then.685:                                      ; preds = %for.end.682
  %call686 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.696, %if.then.685
  %373 = load i32, i32* %i, align 4
  %374 = load i32, i32* %num_moves, align 4
  %cmp688 = icmp slt i32 %373, %374
  br i1 %cmp688, label %for.body.690, label %for.end.698

for.body.690:                                     ; preds = %for.cond.687
  %375 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %375 to i64
  %376 = load i32*, i32** %moves.addr, align 8
  %arrayidx692 = getelementptr inbounds i32, i32* %376, i64 %idxprom691
  %377 = load i32, i32* %arrayidx692, align 4
  %378 = load i32, i32* %i, align 4
  %idxprom693 = sext i32 %378 to i64
  %arrayidx694 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom693
  %379 = load i32, i32* %arrayidx694, align 4
  %call695 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 %377, i32 %379)
  br label %for.inc.696

for.inc.696:                                      ; preds = %for.body.690
  %380 = load i32, i32* %i, align 4
  %inc697 = add nsw i32 %380, 1
  store i32 %inc697, i32* %i, align 4
  br label %for.cond.687

for.end.698:                                      ; preds = %for.cond.687
  br label %if.end.699

if.end.699:                                       ; preds = %for.end.698, %for.end.682
  %381 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool700 = icmp ne %struct.SGFTree_t* %381, null
  br i1 %tobool700, label %if.then.701, label %if.end.736

if.then.701:                                      ; preds = %if.end.699
  %arraydecay = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %382 = load i32, i32* %color_to_move.addr, align 4
  %383 = load i32, i32* %color, align 4
  %cmp703 = icmp eq i32 %382, %383
  %cond705 = select i1 %cmp703, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)
  %call706 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i8* %cond705, i32* %chars) #3
  %arraydecay707 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %384 = load i32, i32* %chars, align 4
  %idx.ext = sext i32 %384 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay707, i64 %idx.ext
  store i8* %add.ptr, i8** %pos702, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.708

for.cond.708:                                     ; preds = %for.inc.732, %if.then.701
  %385 = load i32, i32* %i, align 4
  %386 = load i32, i32* %num_moves, align 4
  %cmp709 = icmp slt i32 %385, %386
  br i1 %cmp709, label %for.body.711, label %for.end.734

for.body.711:                                     ; preds = %for.cond.708
  %387 = load i8*, i8** %pos702, align 8
  %388 = load i32, i32* %i, align 4
  %idxprom712 = sext i32 %388 to i64
  %389 = load i32*, i32** %moves.addr, align 8
  %arrayidx713 = getelementptr inbounds i32, i32* %389, i64 %idxprom712
  %390 = load i32, i32* %arrayidx713, align 4
  %rem = srem i32 %390, 20
  %sub714 = sub nsw i32 %rem, 1
  %add715 = add nsw i32 %sub714, 65
  %391 = load i32, i32* %i, align 4
  %idxprom716 = sext i32 %391 to i64
  %392 = load i32*, i32** %moves.addr, align 8
  %arrayidx717 = getelementptr inbounds i32, i32* %392, i64 %idxprom716
  %393 = load i32, i32* %arrayidx717, align 4
  %rem718 = srem i32 %393, 20
  %sub719 = sub nsw i32 %rem718, 1
  %cmp720 = icmp sge i32 %sub719, 8
  %conv721 = zext i1 %cmp720 to i32
  %add722 = add nsw i32 %add715, %conv721
  %394 = load i32, i32* @board_size, align 4
  %395 = load i32, i32* %i, align 4
  %idxprom723 = sext i32 %395 to i64
  %396 = load i32*, i32** %moves.addr, align 8
  %arrayidx724 = getelementptr inbounds i32, i32* %396, i64 %idxprom723
  %397 = load i32, i32* %arrayidx724, align 4
  %div = sdiv i32 %397, 20
  %sub725 = sub nsw i32 %div, 1
  %sub726 = sub nsw i32 %394, %sub725
  %398 = load i32, i32* %i, align 4
  %idxprom727 = sext i32 %398 to i64
  %arrayidx728 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom727
  %399 = load i32, i32* %arrayidx728, align 4
  %call729 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 %add722, i32 %sub726, i32 %399, i32* %chars) #3
  %400 = load i32, i32* %chars, align 4
  %401 = load i8*, i8** %pos702, align 8
  %idx.ext730 = sext i32 %400 to i64
  %add.ptr731 = getelementptr inbounds i8, i8* %401, i64 %idx.ext730
  store i8* %add.ptr731, i8** %pos702, align 8
  br label %for.inc.732

for.inc.732:                                      ; preds = %for.body.711
  %402 = load i32, i32* %i, align 4
  %inc733 = add nsw i32 %402, 1
  store i32 %inc733, i32* %i, align 4
  br label %for.cond.708

for.end.734:                                      ; preds = %for.cond.708
  %403 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay735 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %403, i8* %arraydecay735)
  br label %if.end.736

if.end.736:                                       ; preds = %for.end.734, %if.end.699
  store i32 0, i32* %r, align 4
  br label %for.cond.737

for.cond.737:                                     ; preds = %for.inc.749, %if.end.736
  %404 = load i32, i32* %r, align 4
  %405 = load i32, i32* %num_moves, align 4
  %cmp738 = icmp slt i32 %404, %405
  br i1 %cmp738, label %for.body.740, label %for.end.751

for.body.740:                                     ; preds = %for.cond.737
  %406 = load i32, i32* %r, align 4
  %idxprom741 = sext i32 %406 to i64
  %arrayidx742 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 %idxprom741
  %407 = load i32, i32* %arrayidx742, align 4
  %arrayidx743 = getelementptr inbounds [362 x i32], [362 x i32]* %distances, i32 0, i64 0
  %408 = load i32, i32* %arrayidx743, align 4
  %add744 = add nsw i32 %408, 1500
  %cmp745 = icmp sgt i32 %407, %add744
  br i1 %cmp745, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %for.body.740
  br label %for.end.751

if.end.748:                                       ; preds = %for.body.740
  br label %for.inc.749

for.inc.749:                                      ; preds = %if.end.748
  %409 = load i32, i32* %r, align 4
  %inc750 = add nsw i32 %409, 1
  store i32 %inc750, i32* %r, align 4
  br label %for.cond.737

for.end.751:                                      ; preds = %if.then.747, %for.cond.737
  %410 = load i32, i32* %r, align 4
  store i32 %410, i32* %num_moves, align 4
  %411 = load i32, i32* %num_moves, align 4
  ret i32 %411
}

declare i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare void @popgo() #1

declare i32 @have_common_lib(i32, i32, i32*) #1

declare i32 @chainlinks(i32, i32*) #1

declare i32 @adjacent_strings(i32, i32) #1

declare i32 @attack(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_connection_distances(i32 %str, i32 %target, %struct.connection_data* %conn) #0 {
entry:
  %str.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %conn.addr = alloca %struct.connection_data*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %distance = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %num_stones = alloca i32, align 4
  %cutoff_distance = alloca i32, align 4
  %r = alloca i32, align 4
  %smallest_dist = alloca i32, align 4
  %best_index = alloca i32, align 4
  %tmp = alloca i32, align 4
  %right = alloca i32, align 4
  %up = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  %gpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  %ipos = alloca i32, align 4
  %jpos = alloca i32, align 4
  %kpos = alloca i32, align 4
  %r296 = alloca i32, align 4
  %lib = alloca i32, align 4
  %vulnerable1379 = alloca i32, align 4
  %vulnerable2381 = alloca i32, align 4
  %i = alloca i32, align 4
  %r487 = alloca i32, align 4
  %r630 = alloca i32, align 4
  %r741 = alloca i32, align 4
  %r887 = alloca i32, align 4
  %r1093 = alloca i32, align 4
  %r1217 = alloca i32, align 4
  %r1341 = alloca i32, align 4
  %r1465 = alloca i32, align 4
  %r1653 = alloca i32, align 4
  %r1777 = alloca i32, align 4
  %r1901 = alloca i32, align 4
  %r2025 = alloca i32, align 4
  %r2158 = alloca i32, align 4
  %r2289 = alloca i32, align 4
  %r2423 = alloca i32, align 4
  %r2557 = alloca i32, align 4
  %r2691 = alloca i32, align 4
  %r2858 = alloca i32, align 4
  %r2995 = alloca i32, align 4
  %r3167 = alloca i32, align 4
  %r3278 = alloca i32, align 4
  %r3450 = alloca i32, align 4
  %r3561 = alloca i32, align 4
  %r3695 = alloca i32, align 4
  %r3829 = alloca i32, align 4
  %r3970 = alloca i32, align 4
  %r4111 = alloca i32, align 4
  %r4242 = alloca i32, align 4
  %r4373 = alloca i32, align 4
  %r4508 = alloca i32, align 4
  %r4642 = alloca i32, align 4
  %r4785 = alloca i32, align 4
  %r4928 = alloca i32, align 4
  %r5056 = alloca i32, align 4
  %r5184 = alloca i32, align 4
  %right5280 = alloca i32, align 4
  %up5284 = alloca i32, align 4
  %apos5290 = alloca i32, align 4
  %bpos5293 = alloca i32, align 4
  %gpos5297 = alloca i32, align 4
  %r5353 = alloca i32, align 4
  %r5474 = alloca i32, align 4
  %r5612 = alloca i32, align 4
  %r5749 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.connection_data* %conn, %struct.connection_data** %conn.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call = call i32 @findstones(i32 %3, i32 361, i32* %arraydecay)
  store i32 %call, i32* %num_stones, align 4
  store i32 3001, i32* %cutoff_distance, align 4
  %4 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4, i32 0, i32 6
  store i32 0, i32* %queue_start, align 4
  %5 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5, i32 0, i32 7
  store i32 0, i32* %queue_end, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %6, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom2
  store i32 100000, i32* %arrayidx3, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas = getelementptr inbounds %struct.connection_data, %struct.connection_data* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas, i32 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from = getelementptr inbounds %struct.connection_data, %struct.connection_data* %12, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %14, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.132, %for.end
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %num_stones, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body.15, label %for.end.134

for.body.15:                                      ; preds = %for.cond.12
  br label %do.body

do.body:                                          ; preds = %for.body.15
  %20 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances19 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %22, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [400 x i32], [400 x i32]* %distances19, i32 0, i64 %idxprom18
  %23 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp slt i32 0, %23
  br i1 %cmp21, label %if.then, label %if.end.131

if.then:                                          ; preds = %do.body
  %24 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom23
  %25 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %26 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then
  %27 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom31
  %28 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances34 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %29, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [400 x i32], [400 x i32]* %distances34, i32 0, i64 %idxprom33
  %30 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %30, 100000
  br i1 %cmp36, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then.30
  %31 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom39
  %32 = load i32, i32* %arrayidx40, align 4
  %33 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end41 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %33, i32 0, i32 7
  %34 = load i32, i32* %queue_end41, align 4
  %inc42 = add nsw i32 %34, 1
  store i32 %inc42, i32* %queue_end41, align 4
  %idxprom43 = sext i32 %34 to i64
  %35 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue = getelementptr inbounds %struct.connection_data, %struct.connection_data* %35, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* %queue, i32 0, i64 %idxprom43
  store i32 %32, i32* %arrayidx44, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.38, %if.then.30
  %36 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom45
  %37 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances48 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %38, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* %distances48, i32 0, i64 %idxprom47
  store i32 0, i32* %arrayidx49, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom50
  %40 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %40 to i64
  %41 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas53 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %41, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas53, i32 0, i64 %idxprom52
  store i32 0, i32* %arrayidx54, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom55
  %43 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %43 to i64
  %44 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from58 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %44, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from58, i32 0, i64 %idxprom57
  store i32 0, i32* %arrayidx59, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %45 to i64
  %arrayidx61 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom60
  %46 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %46 to i64
  %47 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable163 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %47, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable163, i32 0, i64 %idxprom62
  store i32 0, i32* %arrayidx64, align 4
  %48 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom65
  %49 = load i32, i32* %arrayidx66, align 4
  %idxprom67 = sext i32 %49 to i64
  %50 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable268 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %50, i32 0, i32 4
  %arrayidx69 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable268, i32 0, i64 %idxprom67
  store i32 0, i32* %arrayidx69, align 4
  br label %if.end.130

if.else:                                          ; preds = %if.then
  %51 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom70
  %52 = load i32, i32* %arrayidx71, align 4
  %arraydecay72 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call73 = call i32 @findstones(i32 %52, i32 361, i32* %arraydecay72)
  store i32 %call73, i32* %num_stones, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.127, %if.else
  %53 = load i32, i32* %r, align 4
  %54 = load i32, i32* %num_stones, align 4
  %cmp75 = icmp slt i32 %53, %54
  br i1 %cmp75, label %for.body.77, label %for.end.129

for.body.77:                                      ; preds = %for.cond.74
  %55 = load i32, i32* %r, align 4
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom78
  %56 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %56 to i64
  %57 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances81 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %57, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* %distances81, i32 0, i64 %idxprom80
  %58 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %58, 100000
  br i1 %cmp83, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %for.body.77
  %59 = load i32, i32* %r, align 4
  %idxprom86 = sext i32 %59 to i64
  %arrayidx87 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom86
  %60 = load i32, i32* %arrayidx87, align 4
  %61 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end88 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %61, i32 0, i32 7
  %62 = load i32, i32* %queue_end88, align 4
  %inc89 = add nsw i32 %62, 1
  store i32 %inc89, i32* %queue_end88, align 4
  %idxprom90 = sext i32 %62 to i64
  %63 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue91 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %63, i32 0, i32 5
  %arrayidx92 = getelementptr inbounds [400 x i32], [400 x i32]* %queue91, i32 0, i64 %idxprom90
  store i32 %60, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.85, %for.body.77
  %64 = load i32, i32* %r, align 4
  %idxprom94 = sext i32 %64 to i64
  %arrayidx95 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom94
  %65 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %65 to i64
  %66 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances97 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %66, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [400 x i32], [400 x i32]* %distances97, i32 0, i64 %idxprom96
  store i32 0, i32* %arrayidx98, align 4
  %67 = load i32, i32* %r, align 4
  %idxprom99 = sext i32 %67 to i64
  %arrayidx100 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom99
  %68 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %68 to i64
  %69 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas102 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %69, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas102, i32 0, i64 %idxprom101
  store i32 0, i32* %arrayidx103, align 4
  %70 = load i32, i32* %r, align 4
  %idxprom104 = sext i32 %70 to i64
  %arrayidx105 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom104
  %71 = load i32, i32* %arrayidx105, align 4
  %idxprom106 = sext i32 %71 to i64
  %72 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from107 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %72, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from107, i32 0, i64 %idxprom106
  store i32 0, i32* %arrayidx108, align 4
  %73 = load i32, i32* %r, align 4
  %idxprom109 = sext i32 %73 to i64
  %arrayidx110 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom109
  %74 = load i32, i32* %arrayidx110, align 4
  %idxprom111 = sext i32 %74 to i64
  %75 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1112 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %75, i32 0, i32 3
  %arrayidx113 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1112, i32 0, i64 %idxprom111
  store i32 0, i32* %arrayidx113, align 4
  %76 = load i32, i32* %r, align 4
  %idxprom114 = sext i32 %76 to i64
  %arrayidx115 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom114
  %77 = load i32, i32* %arrayidx115, align 4
  %idxprom116 = sext i32 %77 to i64
  %78 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2117 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %78, i32 0, i32 4
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2117, i32 0, i64 %idxprom116
  store i32 0, i32* %arrayidx118, align 4
  %79 = load i32, i32* %r, align 4
  %idxprom119 = sext i32 %79 to i64
  %arrayidx120 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom119
  %80 = load i32, i32* %arrayidx120, align 4
  %81 = load i32, i32* %target.addr, align 4
  %cmp121 = icmp eq i32 %80, %81
  br i1 %cmp121, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.end.93
  %82 = load i32, i32* %cutoff_distance, align 4
  %cmp123 = icmp slt i32 0, %82
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true
  store i32 -1, i32* %cutoff_distance, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true, %if.end.93
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126
  %83 = load i32, i32* %r, align 4
  %inc128 = add nsw i32 %83, 1
  store i32 %inc128, i32* %r, align 4
  br label %for.cond.74

for.end.129:                                      ; preds = %for.cond.74
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %if.end
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.131
  br label %for.inc.132

for.inc.132:                                      ; preds = %do.end
  %84 = load i32, i32* %k, align 4
  %inc133 = add nsw i32 %84, 1
  store i32 %inc133, i32* %k, align 4
  br label %for.cond.12

for.end.134:                                      ; preds = %for.cond.12
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.5822, %for.end.134
  %85 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start136 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %85, i32 0, i32 6
  %86 = load i32, i32* %queue_start136, align 4
  %87 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end137 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %87, i32 0, i32 7
  %88 = load i32, i32* %queue_end137, align 4
  %cmp138 = icmp slt i32 %86, %88
  br i1 %cmp138, label %for.body.140, label %for.end.5825

for.body.140:                                     ; preds = %for.cond.135
  store i32 100000, i32* %smallest_dist, align 4
  store i32 -1, i32* %best_index, align 4
  %89 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end141 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %89, i32 0, i32 7
  %90 = load i32, i32* %queue_end141, align 4
  %cmp142 = icmp sle i32 %90, 361
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %for.body.140
  br label %if.end.146

if.else.145:                                      ; preds = %for.body.140
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i32 903, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.144
  %91 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start147 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %91, i32 0, i32 6
  %92 = load i32, i32* %queue_start147, align 4
  store i32 %92, i32* %k, align 4
  br label %for.cond.148

for.cond.148:                                     ; preds = %for.inc.169, %if.end.146
  %93 = load i32, i32* %k, align 4
  %94 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end149 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %94, i32 0, i32 7
  %95 = load i32, i32* %queue_end149, align 4
  %cmp150 = icmp slt i32 %93, %95
  br i1 %cmp150, label %for.body.152, label %for.end.171

for.body.152:                                     ; preds = %for.cond.148
  %96 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %96 to i64
  %97 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue154 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %97, i32 0, i32 5
  %arrayidx155 = getelementptr inbounds [400 x i32], [400 x i32]* %queue154, i32 0, i64 %idxprom153
  %98 = load i32, i32* %arrayidx155, align 4
  %idxprom156 = sext i32 %98 to i64
  %99 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances157 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %99, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [400 x i32], [400 x i32]* %distances157, i32 0, i64 %idxprom156
  %100 = load i32, i32* %arrayidx158, align 4
  %101 = load i32, i32* %smallest_dist, align 4
  %cmp159 = icmp slt i32 %100, %101
  br i1 %cmp159, label %if.then.161, label %if.end.168

if.then.161:                                      ; preds = %for.body.152
  %102 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %102 to i64
  %103 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue163 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %103, i32 0, i32 5
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* %queue163, i32 0, i64 %idxprom162
  %104 = load i32, i32* %arrayidx164, align 4
  %idxprom165 = sext i32 %104 to i64
  %105 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances166 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %105, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [400 x i32], [400 x i32]* %distances166, i32 0, i64 %idxprom165
  %106 = load i32, i32* %arrayidx167, align 4
  store i32 %106, i32* %smallest_dist, align 4
  %107 = load i32, i32* %k, align 4
  store i32 %107, i32* %best_index, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.161, %for.body.152
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %108 = load i32, i32* %k, align 4
  %inc170 = add nsw i32 %108, 1
  store i32 %inc170, i32* %k, align 4
  br label %for.cond.148

for.end.171:                                      ; preds = %for.cond.148
  %109 = load i32, i32* %best_index, align 4
  %110 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start172 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %110, i32 0, i32 6
  %111 = load i32, i32* %queue_start172, align 4
  %cmp173 = icmp ne i32 %109, %111
  br i1 %cmp173, label %if.then.175, label %if.end.190

if.then.175:                                      ; preds = %for.end.171
  %112 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start176 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %112, i32 0, i32 6
  %113 = load i32, i32* %queue_start176, align 4
  %idxprom177 = sext i32 %113 to i64
  %114 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue178 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %114, i32 0, i32 5
  %arrayidx179 = getelementptr inbounds [400 x i32], [400 x i32]* %queue178, i32 0, i64 %idxprom177
  %115 = load i32, i32* %arrayidx179, align 4
  store i32 %115, i32* %tmp, align 4
  %116 = load i32, i32* %best_index, align 4
  %idxprom180 = sext i32 %116 to i64
  %117 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue181 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %117, i32 0, i32 5
  %arrayidx182 = getelementptr inbounds [400 x i32], [400 x i32]* %queue181, i32 0, i64 %idxprom180
  %118 = load i32, i32* %arrayidx182, align 4
  %119 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start183 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %119, i32 0, i32 6
  %120 = load i32, i32* %queue_start183, align 4
  %idxprom184 = sext i32 %120 to i64
  %121 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue185 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %121, i32 0, i32 5
  %arrayidx186 = getelementptr inbounds [400 x i32], [400 x i32]* %queue185, i32 0, i64 %idxprom184
  store i32 %118, i32* %arrayidx186, align 4
  %122 = load i32, i32* %tmp, align 4
  %123 = load i32, i32* %best_index, align 4
  %idxprom187 = sext i32 %123 to i64
  %124 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue188 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %124, i32 0, i32 5
  %arrayidx189 = getelementptr inbounds [400 x i32], [400 x i32]* %queue188, i32 0, i64 %idxprom187
  store i32 %122, i32* %arrayidx189, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.175, %for.end.171
  %125 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start191 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %125, i32 0, i32 6
  %126 = load i32, i32* %queue_start191, align 4
  %idxprom192 = sext i32 %126 to i64
  %127 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue193 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %127, i32 0, i32 5
  %arrayidx194 = getelementptr inbounds [400 x i32], [400 x i32]* %queue193, i32 0, i64 %idxprom192
  %128 = load i32, i32* %arrayidx194, align 4
  store i32 %128, i32* %pos, align 4
  %129 = load i32, i32* %pos, align 4
  %idxprom195 = sext i32 %129 to i64
  %130 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances196 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %130, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [400 x i32], [400 x i32]* %distances196, i32 0, i64 %idxprom195
  %131 = load i32, i32* %arrayidx197, align 4
  store i32 %131, i32* %distance, align 4
  %132 = load i32, i32* %distance, align 4
  %133 = load i32, i32* %cutoff_distance, align 4
  %cmp198 = icmp sgt i32 %132, %133
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.190
  br label %for.end.5825

if.end.201:                                       ; preds = %if.end.190
  %134 = load i32, i32* %pos, align 4
  %idxprom202 = sext i32 %134 to i64
  %arrayidx203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom202
  %135 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %135 to i32
  %136 = load i32, i32* %color, align 4
  %cmp205 = icmp eq i32 %conv204, %136
  br i1 %cmp205, label %if.then.207, label %if.else.5255

if.then.207:                                      ; preds = %if.end.201
  store i32 0, i32* %k, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.5252, %if.then.207
  %137 = load i32, i32* %k, align 4
  %cmp209 = icmp slt i32 %137, 4
  br i1 %cmp209, label %for.body.211, label %for.end.5254

for.body.211:                                     ; preds = %for.cond.208
  %138 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %138 to i64
  %arrayidx214 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom213
  %139 = load i32, i32* %arrayidx214, align 4
  store i32 %139, i32* %right, align 4
  %140 = load i32, i32* %k, align 4
  %add = add nsw i32 %140, 1
  %rem = srem i32 %add, 4
  %idxprom216 = sext i32 %rem to i64
  %arrayidx217 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom216
  %141 = load i32, i32* %arrayidx217, align 4
  store i32 %141, i32* %up, align 4
  %142 = load i32, i32* %pos, align 4
  %143 = load i32, i32* %right, align 4
  %add219 = add nsw i32 %142, %143
  store i32 %add219, i32* %apos, align 4
  %144 = load i32, i32* %pos, align 4
  %145 = load i32, i32* %right, align 4
  %add221 = add nsw i32 %144, %145
  %146 = load i32, i32* %up, align 4
  %add222 = add nsw i32 %add221, %146
  store i32 %add222, i32* %bpos, align 4
  %147 = load i32, i32* %pos, align 4
  %148 = load i32, i32* %right, align 4
  %mul = mul nsw i32 2, %148
  %add224 = add nsw i32 %147, %mul
  store i32 %add224, i32* %cpos, align 4
  %149 = load i32, i32* %pos, align 4
  %150 = load i32, i32* %up, align 4
  %mul226 = mul nsw i32 2, %150
  %add227 = add nsw i32 %149, %mul226
  store i32 %add227, i32* %epos, align 4
  %151 = load i32, i32* %pos, align 4
  %152 = load i32, i32* %right, align 4
  %add229 = add nsw i32 %151, %152
  %153 = load i32, i32* %up, align 4
  %mul230 = mul nsw i32 2, %153
  %add231 = add nsw i32 %add229, %mul230
  store i32 %add231, i32* %fpos, align 4
  %154 = load i32, i32* %pos, align 4
  %155 = load i32, i32* %up, align 4
  %add233 = add nsw i32 %154, %155
  store i32 %add233, i32* %gpos, align 4
  %156 = load i32, i32* %pos, align 4
  %157 = load i32, i32* %right, align 4
  %sub235 = sub nsw i32 %156, %157
  store i32 %sub235, i32* %hpos, align 4
  %158 = load i32, i32* %pos, align 4
  %159 = load i32, i32* %right, align 4
  %sub237 = sub nsw i32 %158, %159
  %160 = load i32, i32* %up, align 4
  %add238 = add nsw i32 %sub237, %160
  store i32 %add238, i32* %ipos, align 4
  %161 = load i32, i32* %pos, align 4
  %162 = load i32, i32* %right, align 4
  %sub240 = sub nsw i32 %161, %162
  %163 = load i32, i32* %up, align 4
  %mul241 = mul nsw i32 2, %163
  %add242 = add nsw i32 %sub240, %mul241
  store i32 %add242, i32* %jpos, align 4
  %164 = load i32, i32* %pos, align 4
  %165 = load i32, i32* %right, align 4
  %mul244 = mul nsw i32 2, %165
  %sub245 = sub nsw i32 %164, %mul244
  store i32 %sub245, i32* %kpos, align 4
  %166 = load i32, i32* %apos, align 4
  %idxprom246 = sext i32 %166 to i64
  %arrayidx247 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom246
  %167 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %167 to i32
  %cmp249 = icmp eq i32 %conv248, 0
  br i1 %cmp249, label %land.lhs.true.251, label %if.end.360

land.lhs.true.251:                                ; preds = %for.body.211
  %168 = load i32, i32* %apos, align 4
  %169 = load i32, i32* %other, align 4
  %call252 = call i32 @is_suicide(i32 %168, i32 %169)
  %tobool = icmp ne i32 %call252, 0
  br i1 %tobool, label %if.then.253, label %if.end.360

if.then.253:                                      ; preds = %land.lhs.true.251
  br label %do.body.254

do.body.254:                                      ; preds = %if.then.253
  %170 = load i32, i32* %distance, align 4
  %171 = load i32, i32* %apos, align 4
  %idxprom255 = sext i32 %171 to i64
  %172 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances256 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %172, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [400 x i32], [400 x i32]* %distances256, i32 0, i64 %idxprom255
  %173 = load i32, i32* %arrayidx257, align 4
  %cmp258 = icmp slt i32 %170, %173
  br i1 %cmp258, label %if.then.260, label %if.end.358

if.then.260:                                      ; preds = %do.body.254
  %174 = load i32, i32* %apos, align 4
  %idxprom261 = sext i32 %174 to i64
  %arrayidx262 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom261
  %175 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %175 to i32
  %cmp264 = icmp eq i32 %conv263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.294

if.then.266:                                      ; preds = %if.then.260
  %176 = load i32, i32* %apos, align 4
  %idxprom267 = sext i32 %176 to i64
  %177 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances268 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %177, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [400 x i32], [400 x i32]* %distances268, i32 0, i64 %idxprom267
  %178 = load i32, i32* %arrayidx269, align 4
  %cmp270 = icmp eq i32 %178, 100000
  br i1 %cmp270, label %if.then.272, label %if.end.278

if.then.272:                                      ; preds = %if.then.266
  %179 = load i32, i32* %apos, align 4
  %180 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end273 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %180, i32 0, i32 7
  %181 = load i32, i32* %queue_end273, align 4
  %inc274 = add nsw i32 %181, 1
  store i32 %inc274, i32* %queue_end273, align 4
  %idxprom275 = sext i32 %181 to i64
  %182 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue276 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %182, i32 0, i32 5
  %arrayidx277 = getelementptr inbounds [400 x i32], [400 x i32]* %queue276, i32 0, i64 %idxprom275
  store i32 %179, i32* %arrayidx277, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.272, %if.then.266
  %183 = load i32, i32* %distance, align 4
  %184 = load i32, i32* %apos, align 4
  %idxprom279 = sext i32 %184 to i64
  %185 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances280 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %185, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [400 x i32], [400 x i32]* %distances280, i32 0, i64 %idxprom279
  store i32 %183, i32* %arrayidx281, align 4
  %186 = load i32, i32* %apos, align 4
  %idxprom282 = sext i32 %186 to i64
  %187 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas283 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %187, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas283, i32 0, i64 %idxprom282
  store i32 0, i32* %arrayidx284, align 4
  %188 = load i32, i32* %pos, align 4
  %189 = load i32, i32* %apos, align 4
  %idxprom285 = sext i32 %189 to i64
  %190 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from286 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %190, i32 0, i32 2
  %arrayidx287 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from286, i32 0, i64 %idxprom285
  store i32 %188, i32* %arrayidx287, align 4
  %191 = load i32, i32* %apos, align 4
  %192 = load i32, i32* %apos, align 4
  %idxprom288 = sext i32 %192 to i64
  %193 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1289 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %193, i32 0, i32 3
  %arrayidx290 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1289, i32 0, i64 %idxprom288
  store i32 %191, i32* %arrayidx290, align 4
  %194 = load i32, i32* %apos, align 4
  %idxprom291 = sext i32 %194 to i64
  %195 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2292 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %195, i32 0, i32 4
  %arrayidx293 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2292, i32 0, i64 %idxprom291
  store i32 0, i32* %arrayidx293, align 4
  br label %if.end.357

if.else.294:                                      ; preds = %if.then.260
  %196 = load i32, i32* %apos, align 4
  %arraydecay297 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call298 = call i32 @findstones(i32 %196, i32 361, i32* %arraydecay297)
  store i32 %call298, i32* %num_stones, align 4
  store i32 0, i32* %r296, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.354, %if.else.294
  %197 = load i32, i32* %r296, align 4
  %198 = load i32, i32* %num_stones, align 4
  %cmp300 = icmp slt i32 %197, %198
  br i1 %cmp300, label %for.body.302, label %for.end.356

for.body.302:                                     ; preds = %for.cond.299
  %199 = load i32, i32* %r296, align 4
  %idxprom303 = sext i32 %199 to i64
  %arrayidx304 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom303
  %200 = load i32, i32* %arrayidx304, align 4
  %idxprom305 = sext i32 %200 to i64
  %201 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances306 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %201, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [400 x i32], [400 x i32]* %distances306, i32 0, i64 %idxprom305
  %202 = load i32, i32* %arrayidx307, align 4
  %cmp308 = icmp eq i32 %202, 100000
  br i1 %cmp308, label %if.then.310, label %if.end.318

if.then.310:                                      ; preds = %for.body.302
  %203 = load i32, i32* %r296, align 4
  %idxprom311 = sext i32 %203 to i64
  %arrayidx312 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom311
  %204 = load i32, i32* %arrayidx312, align 4
  %205 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end313 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %205, i32 0, i32 7
  %206 = load i32, i32* %queue_end313, align 4
  %inc314 = add nsw i32 %206, 1
  store i32 %inc314, i32* %queue_end313, align 4
  %idxprom315 = sext i32 %206 to i64
  %207 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue316 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %207, i32 0, i32 5
  %arrayidx317 = getelementptr inbounds [400 x i32], [400 x i32]* %queue316, i32 0, i64 %idxprom315
  store i32 %204, i32* %arrayidx317, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.310, %for.body.302
  %208 = load i32, i32* %distance, align 4
  %209 = load i32, i32* %r296, align 4
  %idxprom319 = sext i32 %209 to i64
  %arrayidx320 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom319
  %210 = load i32, i32* %arrayidx320, align 4
  %idxprom321 = sext i32 %210 to i64
  %211 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances322 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %211, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [400 x i32], [400 x i32]* %distances322, i32 0, i64 %idxprom321
  store i32 %208, i32* %arrayidx323, align 4
  %212 = load i32, i32* %r296, align 4
  %idxprom324 = sext i32 %212 to i64
  %arrayidx325 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom324
  %213 = load i32, i32* %arrayidx325, align 4
  %idxprom326 = sext i32 %213 to i64
  %214 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas327 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %214, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas327, i32 0, i64 %idxprom326
  store i32 0, i32* %arrayidx328, align 4
  %215 = load i32, i32* %pos, align 4
  %216 = load i32, i32* %r296, align 4
  %idxprom329 = sext i32 %216 to i64
  %arrayidx330 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom329
  %217 = load i32, i32* %arrayidx330, align 4
  %idxprom331 = sext i32 %217 to i64
  %218 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from332 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %218, i32 0, i32 2
  %arrayidx333 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from332, i32 0, i64 %idxprom331
  store i32 %215, i32* %arrayidx333, align 4
  %219 = load i32, i32* %apos, align 4
  %220 = load i32, i32* %r296, align 4
  %idxprom334 = sext i32 %220 to i64
  %arrayidx335 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom334
  %221 = load i32, i32* %arrayidx335, align 4
  %idxprom336 = sext i32 %221 to i64
  %222 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1337 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %222, i32 0, i32 3
  %arrayidx338 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1337, i32 0, i64 %idxprom336
  store i32 %219, i32* %arrayidx338, align 4
  %223 = load i32, i32* %r296, align 4
  %idxprom339 = sext i32 %223 to i64
  %arrayidx340 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom339
  %224 = load i32, i32* %arrayidx340, align 4
  %idxprom341 = sext i32 %224 to i64
  %225 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2342 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %225, i32 0, i32 4
  %arrayidx343 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2342, i32 0, i64 %idxprom341
  store i32 0, i32* %arrayidx343, align 4
  %226 = load i32, i32* %r296, align 4
  %idxprom344 = sext i32 %226 to i64
  %arrayidx345 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom344
  %227 = load i32, i32* %arrayidx345, align 4
  %228 = load i32, i32* %target.addr, align 4
  %cmp346 = icmp eq i32 %227, %228
  br i1 %cmp346, label %land.lhs.true.348, label %if.end.353

land.lhs.true.348:                                ; preds = %if.end.318
  %229 = load i32, i32* %distance, align 4
  %230 = load i32, i32* %cutoff_distance, align 4
  %cmp349 = icmp slt i32 %229, %230
  br i1 %cmp349, label %if.then.351, label %if.end.353

if.then.351:                                      ; preds = %land.lhs.true.348
  %231 = load i32, i32* %distance, align 4
  %sub352 = sub nsw i32 %231, 1
  store i32 %sub352, i32* %cutoff_distance, align 4
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.351, %land.lhs.true.348, %if.end.318
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %232 = load i32, i32* %r296, align 4
  %inc355 = add nsw i32 %232, 1
  store i32 %inc355, i32* %r296, align 4
  br label %for.cond.299

for.end.356:                                      ; preds = %for.cond.299
  br label %if.end.357

if.end.357:                                       ; preds = %for.end.356, %if.end.278
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %do.body.254
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.358
  br label %if.end.360

if.end.360:                                       ; preds = %do.end.359, %land.lhs.true.251, %for.body.211
  %233 = load i32, i32* %apos, align 4
  %idxprom361 = sext i32 %233 to i64
  %arrayidx362 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom361
  %234 = load i8, i8* %arrayidx362, align 1
  %conv363 = zext i8 %234 to i32
  %cmp364 = icmp eq i32 %conv363, 0
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.555

land.lhs.true.366:                                ; preds = %if.end.360
  %235 = load i32, i32* %apos, align 4
  %idxprom367 = sext i32 %235 to i64
  %236 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances368 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %236, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [400 x i32], [400 x i32]* %distances368, i32 0, i64 %idxprom367
  %237 = load i32, i32* %arrayidx369, align 4
  %238 = load i32, i32* %distance, align 4
  %add370 = add nsw i32 %238, 100
  %cmp371 = icmp sgt i32 %237, %add370
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.555

land.lhs.true.373:                                ; preds = %land.lhs.true.366
  %239 = load i32, i32* %apos, align 4
  %240 = load i32, i32* %other, align 4
  %call374 = call i32 @is_self_atari(i32 %239, i32 %240)
  %tobool375 = icmp ne i32 %call374, 0
  br i1 %tobool375, label %if.then.376, label %if.end.555

if.then.376:                                      ; preds = %land.lhs.true.373
  store i32 0, i32* %vulnerable1379, align 4
  store i32 0, i32* %vulnerable2381, align 4
  %241 = load i32, i32* %apos, align 4
  %242 = load i32, i32* %other, align 4
  %call382 = call i32 @approxlib(i32 %241, i32 %242, i32 1, i32* %lib)
  %cmp383 = icmp sge i32 %call382, 1
  br i1 %cmp383, label %if.then.385, label %if.end.433

if.then.385:                                      ; preds = %if.then.376
  %243 = load i32, i32* %lib, align 4
  %244 = load i32, i32* %other, align 4
  %call386 = call i32 @approxlib(i32 %243, i32 %244, i32 2, i32* null)
  %cmp387 = icmp sgt i32 %call386, 2
  br i1 %cmp387, label %if.then.389, label %if.end.390

if.then.389:                                      ; preds = %if.then.385
  %245 = load i32, i32* %lib, align 4
  store i32 %245, i32* %vulnerable1379, align 4
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.389, %if.then.385
  %246 = load i32, i32* %pos, align 4
  %call391 = call i32 @countlib(i32 %246)
  %cmp392 = icmp eq i32 %call391, 2
  br i1 %cmp392, label %if.then.394, label %if.end.432

if.then.394:                                      ; preds = %if.end.390
  store i32 0, i32* %i, align 4
  br label %for.cond.396

for.cond.396:                                     ; preds = %for.inc.429, %if.then.394
  %247 = load i32, i32* %i, align 4
  %cmp397 = icmp slt i32 %247, 4
  br i1 %cmp397, label %for.body.399, label %for.end.431

for.body.399:                                     ; preds = %for.cond.396
  %248 = load i32, i32* %lib, align 4
  %249 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %249 to i64
  %arrayidx401 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom400
  %250 = load i32, i32* %arrayidx401, align 4
  %add402 = add nsw i32 %248, %250
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom403
  %251 = load i8, i8* %arrayidx404, align 1
  %conv405 = zext i8 %251 to i32
  %cmp406 = icmp eq i32 %conv405, 0
  br i1 %cmp406, label %land.lhs.true.408, label %if.end.428

land.lhs.true.408:                                ; preds = %for.body.399
  %252 = load i32, i32* %lib, align 4
  %253 = load i32, i32* %i, align 4
  %idxprom409 = sext i32 %253 to i64
  %arrayidx410 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom409
  %254 = load i32, i32* %arrayidx410, align 4
  %add411 = add nsw i32 %252, %254
  %255 = load i32, i32* %apos, align 4
  %cmp412 = icmp ne i32 %add411, %255
  br i1 %cmp412, label %land.lhs.true.414, label %if.end.428

land.lhs.true.414:                                ; preds = %land.lhs.true.408
  %256 = load i32, i32* %lib, align 4
  %257 = load i32, i32* %i, align 4
  %idxprom415 = sext i32 %257 to i64
  %arrayidx416 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom415
  %258 = load i32, i32* %arrayidx416, align 4
  %add417 = add nsw i32 %256, %258
  %259 = load i32, i32* %other, align 4
  %260 = load i32, i32* %pos, align 4
  %call418 = call i32 @trymove(i32 %add417, i32 %259, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i32 %260, i32 0, i32 0)
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %if.then.420, label %if.end.428

if.then.420:                                      ; preds = %land.lhs.true.414
  %261 = load i32, i32* %pos, align 4
  %call421 = call i32 @ladder_capture(i32 %261, i32* null)
  %tobool422 = icmp ne i32 %call421, 0
  br i1 %tobool422, label %if.then.423, label %if.end.427

if.then.423:                                      ; preds = %if.then.420
  %262 = load i32, i32* %lib, align 4
  %263 = load i32, i32* %i, align 4
  %idxprom424 = sext i32 %263 to i64
  %arrayidx425 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom424
  %264 = load i32, i32* %arrayidx425, align 4
  %add426 = add nsw i32 %262, %264
  store i32 %add426, i32* %vulnerable2381, align 4
  call void @popgo()
  br label %for.end.431

if.end.427:                                       ; preds = %if.then.420
  call void @popgo()
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %land.lhs.true.414, %land.lhs.true.408, %for.body.399
  br label %for.inc.429

for.inc.429:                                      ; preds = %if.end.428
  %265 = load i32, i32* %i, align 4
  %inc430 = add nsw i32 %265, 1
  store i32 %inc430, i32* %i, align 4
  br label %for.cond.396

for.end.431:                                      ; preds = %if.then.423, %for.cond.396
  br label %if.end.432

if.end.432:                                       ; preds = %for.end.431, %if.end.390
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.then.376
  %266 = load i32, i32* %pos, align 4
  %idxprom434 = sext i32 %266 to i64
  %267 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1435 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %267, i32 0, i32 3
  %arrayidx436 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1435, i32 0, i64 %idxprom434
  %268 = load i32, i32* %arrayidx436, align 4
  %269 = load i32, i32* %pos, align 4
  %idxprom437 = sext i32 %269 to i64
  %270 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2438 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %270, i32 0, i32 4
  %arrayidx439 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2438, i32 0, i64 %idxprom437
  %271 = load i32, i32* %arrayidx439, align 4
  %272 = load i32, i32* %vulnerable1379, align 4
  %273 = load i32, i32* %vulnerable2381, align 4
  %274 = load i32, i32* %color, align 4
  %call440 = call i32 @common_vulnerabilities(i32 %268, i32 %271, i32 %272, i32 %273, i32 %274)
  %tobool441 = icmp ne i32 %call440, 0
  br i1 %tobool441, label %if.end.554, label %if.then.442

if.then.442:                                      ; preds = %if.end.433
  br label %do.body.443

do.body.443:                                      ; preds = %if.then.442
  %275 = load i32, i32* %distance, align 4
  %add444 = add nsw i32 %275, 100
  %276 = load i32, i32* %apos, align 4
  %idxprom445 = sext i32 %276 to i64
  %277 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances446 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %277, i32 0, i32 0
  %arrayidx447 = getelementptr inbounds [400 x i32], [400 x i32]* %distances446, i32 0, i64 %idxprom445
  %278 = load i32, i32* %arrayidx447, align 4
  %cmp448 = icmp slt i32 %add444, %278
  br i1 %cmp448, label %if.then.450, label %if.end.552

if.then.450:                                      ; preds = %do.body.443
  %279 = load i32, i32* %apos, align 4
  %idxprom451 = sext i32 %279 to i64
  %arrayidx452 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom451
  %280 = load i8, i8* %arrayidx452, align 1
  %conv453 = zext i8 %280 to i32
  %cmp454 = icmp eq i32 %conv453, 0
  br i1 %cmp454, label %if.then.456, label %if.else.485

if.then.456:                                      ; preds = %if.then.450
  %281 = load i32, i32* %apos, align 4
  %idxprom457 = sext i32 %281 to i64
  %282 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances458 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %282, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [400 x i32], [400 x i32]* %distances458, i32 0, i64 %idxprom457
  %283 = load i32, i32* %arrayidx459, align 4
  %cmp460 = icmp eq i32 %283, 100000
  br i1 %cmp460, label %if.then.462, label %if.end.468

if.then.462:                                      ; preds = %if.then.456
  %284 = load i32, i32* %apos, align 4
  %285 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end463 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %285, i32 0, i32 7
  %286 = load i32, i32* %queue_end463, align 4
  %inc464 = add nsw i32 %286, 1
  store i32 %inc464, i32* %queue_end463, align 4
  %idxprom465 = sext i32 %286 to i64
  %287 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue466 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %287, i32 0, i32 5
  %arrayidx467 = getelementptr inbounds [400 x i32], [400 x i32]* %queue466, i32 0, i64 %idxprom465
  store i32 %284, i32* %arrayidx467, align 4
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.462, %if.then.456
  %288 = load i32, i32* %distance, align 4
  %add469 = add nsw i32 %288, 100
  %289 = load i32, i32* %apos, align 4
  %idxprom470 = sext i32 %289 to i64
  %290 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances471 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %290, i32 0, i32 0
  %arrayidx472 = getelementptr inbounds [400 x i32], [400 x i32]* %distances471, i32 0, i64 %idxprom470
  store i32 %add469, i32* %arrayidx472, align 4
  %291 = load i32, i32* %apos, align 4
  %idxprom473 = sext i32 %291 to i64
  %292 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas474 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %292, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas474, i32 0, i64 %idxprom473
  store i32 100, i32* %arrayidx475, align 4
  %293 = load i32, i32* %pos, align 4
  %294 = load i32, i32* %apos, align 4
  %idxprom476 = sext i32 %294 to i64
  %295 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from477 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %295, i32 0, i32 2
  %arrayidx478 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from477, i32 0, i64 %idxprom476
  store i32 %293, i32* %arrayidx478, align 4
  %296 = load i32, i32* %vulnerable1379, align 4
  %297 = load i32, i32* %apos, align 4
  %idxprom479 = sext i32 %297 to i64
  %298 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1480 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %298, i32 0, i32 3
  %arrayidx481 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1480, i32 0, i64 %idxprom479
  store i32 %296, i32* %arrayidx481, align 4
  %299 = load i32, i32* %vulnerable2381, align 4
  %300 = load i32, i32* %apos, align 4
  %idxprom482 = sext i32 %300 to i64
  %301 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2483 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %301, i32 0, i32 4
  %arrayidx484 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2483, i32 0, i64 %idxprom482
  store i32 %299, i32* %arrayidx484, align 4
  br label %if.end.551

if.else.485:                                      ; preds = %if.then.450
  %302 = load i32, i32* %apos, align 4
  %arraydecay488 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call489 = call i32 @findstones(i32 %302, i32 361, i32* %arraydecay488)
  store i32 %call489, i32* %num_stones, align 4
  store i32 0, i32* %r487, align 4
  br label %for.cond.490

for.cond.490:                                     ; preds = %for.inc.548, %if.else.485
  %303 = load i32, i32* %r487, align 4
  %304 = load i32, i32* %num_stones, align 4
  %cmp491 = icmp slt i32 %303, %304
  br i1 %cmp491, label %for.body.493, label %for.end.550

for.body.493:                                     ; preds = %for.cond.490
  %305 = load i32, i32* %r487, align 4
  %idxprom494 = sext i32 %305 to i64
  %arrayidx495 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom494
  %306 = load i32, i32* %arrayidx495, align 4
  %idxprom496 = sext i32 %306 to i64
  %307 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances497 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %307, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [400 x i32], [400 x i32]* %distances497, i32 0, i64 %idxprom496
  %308 = load i32, i32* %arrayidx498, align 4
  %cmp499 = icmp eq i32 %308, 100000
  br i1 %cmp499, label %if.then.501, label %if.end.509

if.then.501:                                      ; preds = %for.body.493
  %309 = load i32, i32* %r487, align 4
  %idxprom502 = sext i32 %309 to i64
  %arrayidx503 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom502
  %310 = load i32, i32* %arrayidx503, align 4
  %311 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end504 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %311, i32 0, i32 7
  %312 = load i32, i32* %queue_end504, align 4
  %inc505 = add nsw i32 %312, 1
  store i32 %inc505, i32* %queue_end504, align 4
  %idxprom506 = sext i32 %312 to i64
  %313 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue507 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %313, i32 0, i32 5
  %arrayidx508 = getelementptr inbounds [400 x i32], [400 x i32]* %queue507, i32 0, i64 %idxprom506
  store i32 %310, i32* %arrayidx508, align 4
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.501, %for.body.493
  %314 = load i32, i32* %distance, align 4
  %add510 = add nsw i32 %314, 100
  %315 = load i32, i32* %r487, align 4
  %idxprom511 = sext i32 %315 to i64
  %arrayidx512 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom511
  %316 = load i32, i32* %arrayidx512, align 4
  %idxprom513 = sext i32 %316 to i64
  %317 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances514 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %317, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [400 x i32], [400 x i32]* %distances514, i32 0, i64 %idxprom513
  store i32 %add510, i32* %arrayidx515, align 4
  %318 = load i32, i32* %r487, align 4
  %idxprom516 = sext i32 %318 to i64
  %arrayidx517 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom516
  %319 = load i32, i32* %arrayidx517, align 4
  %idxprom518 = sext i32 %319 to i64
  %320 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas519 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %320, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas519, i32 0, i64 %idxprom518
  store i32 100, i32* %arrayidx520, align 4
  %321 = load i32, i32* %pos, align 4
  %322 = load i32, i32* %r487, align 4
  %idxprom521 = sext i32 %322 to i64
  %arrayidx522 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom521
  %323 = load i32, i32* %arrayidx522, align 4
  %idxprom523 = sext i32 %323 to i64
  %324 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from524 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %324, i32 0, i32 2
  %arrayidx525 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from524, i32 0, i64 %idxprom523
  store i32 %321, i32* %arrayidx525, align 4
  %325 = load i32, i32* %vulnerable1379, align 4
  %326 = load i32, i32* %r487, align 4
  %idxprom526 = sext i32 %326 to i64
  %arrayidx527 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom526
  %327 = load i32, i32* %arrayidx527, align 4
  %idxprom528 = sext i32 %327 to i64
  %328 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1529 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %328, i32 0, i32 3
  %arrayidx530 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1529, i32 0, i64 %idxprom528
  store i32 %325, i32* %arrayidx530, align 4
  %329 = load i32, i32* %vulnerable2381, align 4
  %330 = load i32, i32* %r487, align 4
  %idxprom531 = sext i32 %330 to i64
  %arrayidx532 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom531
  %331 = load i32, i32* %arrayidx532, align 4
  %idxprom533 = sext i32 %331 to i64
  %332 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2534 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %332, i32 0, i32 4
  %arrayidx535 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2534, i32 0, i64 %idxprom533
  store i32 %329, i32* %arrayidx535, align 4
  %333 = load i32, i32* %r487, align 4
  %idxprom536 = sext i32 %333 to i64
  %arrayidx537 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom536
  %334 = load i32, i32* %arrayidx537, align 4
  %335 = load i32, i32* %target.addr, align 4
  %cmp538 = icmp eq i32 %334, %335
  br i1 %cmp538, label %land.lhs.true.540, label %if.end.547

land.lhs.true.540:                                ; preds = %if.end.509
  %336 = load i32, i32* %distance, align 4
  %add541 = add nsw i32 %336, 100
  %337 = load i32, i32* %cutoff_distance, align 4
  %cmp542 = icmp slt i32 %add541, %337
  br i1 %cmp542, label %if.then.544, label %if.end.547

if.then.544:                                      ; preds = %land.lhs.true.540
  %338 = load i32, i32* %distance, align 4
  %add545 = add nsw i32 %338, 100
  %sub546 = sub nsw i32 %add545, 1
  store i32 %sub546, i32* %cutoff_distance, align 4
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.544, %land.lhs.true.540, %if.end.509
  br label %for.inc.548

for.inc.548:                                      ; preds = %if.end.547
  %339 = load i32, i32* %r487, align 4
  %inc549 = add nsw i32 %339, 1
  store i32 %inc549, i32* %r487, align 4
  br label %for.cond.490

for.end.550:                                      ; preds = %for.cond.490
  br label %if.end.551

if.end.551:                                       ; preds = %for.end.550, %if.end.468
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %do.body.443
  br label %do.end.553

do.end.553:                                       ; preds = %if.end.552
  br label %if.end.554

if.end.554:                                       ; preds = %do.end.553, %if.end.433
  br label %if.end.555

if.end.555:                                       ; preds = %if.end.554, %land.lhs.true.373, %land.lhs.true.366, %if.end.360
  %340 = load i32, i32* %apos, align 4
  %idxprom556 = sext i32 %340 to i64
  %arrayidx557 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom556
  %341 = load i8, i8* %arrayidx557, align 1
  %conv558 = zext i8 %341 to i32
  %342 = load i32, i32* %color, align 4
  %cmp559 = icmp eq i32 %conv558, %342
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.808

land.lhs.true.561:                                ; preds = %if.end.555
  %343 = load i32, i32* %bpos, align 4
  %idxprom562 = sext i32 %343 to i64
  %arrayidx563 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom562
  %344 = load i8, i8* %arrayidx563, align 1
  %conv564 = zext i8 %344 to i32
  %cmp565 = icmp eq i32 %conv564, 0
  br i1 %cmp565, label %land.lhs.true.567, label %if.end.808

land.lhs.true.567:                                ; preds = %land.lhs.true.561
  %345 = load i32, i32* %fpos, align 4
  %idxprom568 = sext i32 %345 to i64
  %arrayidx569 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom568
  %346 = load i8, i8* %arrayidx569, align 1
  %conv570 = zext i8 %346 to i32
  %347 = load i32, i32* %color, align 4
  %cmp571 = icmp eq i32 %conv570, %347
  br i1 %cmp571, label %land.lhs.true.573, label %if.end.808

land.lhs.true.573:                                ; preds = %land.lhs.true.567
  %348 = load i32, i32* %epos, align 4
  %idxprom574 = sext i32 %348 to i64
  %arrayidx575 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom574
  %349 = load i8, i8* %arrayidx575, align 1
  %conv576 = zext i8 %349 to i32
  %350 = load i32, i32* %color, align 4
  %cmp577 = icmp eq i32 %conv576, %350
  br i1 %cmp577, label %land.lhs.true.579, label %if.end.808

land.lhs.true.579:                                ; preds = %land.lhs.true.573
  %351 = load i32, i32* %gpos, align 4
  %idxprom580 = sext i32 %351 to i64
  %arrayidx581 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom580
  %352 = load i8, i8* %arrayidx581, align 1
  %conv582 = zext i8 %352 to i32
  %cmp583 = icmp eq i32 %conv582, 0
  br i1 %cmp583, label %if.then.585, label %if.end.808

if.then.585:                                      ; preds = %land.lhs.true.579
  br label %do.body.586

do.body.586:                                      ; preds = %if.then.585
  %353 = load i32, i32* %distance, align 4
  %add587 = add nsw i32 %353, 100
  %354 = load i32, i32* %bpos, align 4
  %idxprom588 = sext i32 %354 to i64
  %355 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances589 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %355, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [400 x i32], [400 x i32]* %distances589, i32 0, i64 %idxprom588
  %356 = load i32, i32* %arrayidx590, align 4
  %cmp591 = icmp slt i32 %add587, %356
  br i1 %cmp591, label %if.then.593, label %if.end.695

if.then.593:                                      ; preds = %do.body.586
  %357 = load i32, i32* %bpos, align 4
  %idxprom594 = sext i32 %357 to i64
  %arrayidx595 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom594
  %358 = load i8, i8* %arrayidx595, align 1
  %conv596 = zext i8 %358 to i32
  %cmp597 = icmp eq i32 %conv596, 0
  br i1 %cmp597, label %if.then.599, label %if.else.628

if.then.599:                                      ; preds = %if.then.593
  %359 = load i32, i32* %bpos, align 4
  %idxprom600 = sext i32 %359 to i64
  %360 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances601 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %360, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [400 x i32], [400 x i32]* %distances601, i32 0, i64 %idxprom600
  %361 = load i32, i32* %arrayidx602, align 4
  %cmp603 = icmp eq i32 %361, 100000
  br i1 %cmp603, label %if.then.605, label %if.end.611

if.then.605:                                      ; preds = %if.then.599
  %362 = load i32, i32* %bpos, align 4
  %363 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end606 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %363, i32 0, i32 7
  %364 = load i32, i32* %queue_end606, align 4
  %inc607 = add nsw i32 %364, 1
  store i32 %inc607, i32* %queue_end606, align 4
  %idxprom608 = sext i32 %364 to i64
  %365 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue609 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %365, i32 0, i32 5
  %arrayidx610 = getelementptr inbounds [400 x i32], [400 x i32]* %queue609, i32 0, i64 %idxprom608
  store i32 %362, i32* %arrayidx610, align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.605, %if.then.599
  %366 = load i32, i32* %distance, align 4
  %add612 = add nsw i32 %366, 100
  %367 = load i32, i32* %bpos, align 4
  %idxprom613 = sext i32 %367 to i64
  %368 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances614 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %368, i32 0, i32 0
  %arrayidx615 = getelementptr inbounds [400 x i32], [400 x i32]* %distances614, i32 0, i64 %idxprom613
  store i32 %add612, i32* %arrayidx615, align 4
  %369 = load i32, i32* %bpos, align 4
  %idxprom616 = sext i32 %369 to i64
  %370 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas617 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %370, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas617, i32 0, i64 %idxprom616
  store i32 100, i32* %arrayidx618, align 4
  %371 = load i32, i32* %pos, align 4
  %372 = load i32, i32* %bpos, align 4
  %idxprom619 = sext i32 %372 to i64
  %373 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from620 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %373, i32 0, i32 2
  %arrayidx621 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from620, i32 0, i64 %idxprom619
  store i32 %371, i32* %arrayidx621, align 4
  %374 = load i32, i32* %bpos, align 4
  %idxprom622 = sext i32 %374 to i64
  %375 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1623 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %375, i32 0, i32 3
  %arrayidx624 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1623, i32 0, i64 %idxprom622
  store i32 0, i32* %arrayidx624, align 4
  %376 = load i32, i32* %bpos, align 4
  %idxprom625 = sext i32 %376 to i64
  %377 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2626 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %377, i32 0, i32 4
  %arrayidx627 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2626, i32 0, i64 %idxprom625
  store i32 0, i32* %arrayidx627, align 4
  br label %if.end.694

if.else.628:                                      ; preds = %if.then.593
  %378 = load i32, i32* %bpos, align 4
  %arraydecay631 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call632 = call i32 @findstones(i32 %378, i32 361, i32* %arraydecay631)
  store i32 %call632, i32* %num_stones, align 4
  store i32 0, i32* %r630, align 4
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.691, %if.else.628
  %379 = load i32, i32* %r630, align 4
  %380 = load i32, i32* %num_stones, align 4
  %cmp634 = icmp slt i32 %379, %380
  br i1 %cmp634, label %for.body.636, label %for.end.693

for.body.636:                                     ; preds = %for.cond.633
  %381 = load i32, i32* %r630, align 4
  %idxprom637 = sext i32 %381 to i64
  %arrayidx638 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom637
  %382 = load i32, i32* %arrayidx638, align 4
  %idxprom639 = sext i32 %382 to i64
  %383 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances640 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %383, i32 0, i32 0
  %arrayidx641 = getelementptr inbounds [400 x i32], [400 x i32]* %distances640, i32 0, i64 %idxprom639
  %384 = load i32, i32* %arrayidx641, align 4
  %cmp642 = icmp eq i32 %384, 100000
  br i1 %cmp642, label %if.then.644, label %if.end.652

if.then.644:                                      ; preds = %for.body.636
  %385 = load i32, i32* %r630, align 4
  %idxprom645 = sext i32 %385 to i64
  %arrayidx646 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom645
  %386 = load i32, i32* %arrayidx646, align 4
  %387 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end647 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %387, i32 0, i32 7
  %388 = load i32, i32* %queue_end647, align 4
  %inc648 = add nsw i32 %388, 1
  store i32 %inc648, i32* %queue_end647, align 4
  %idxprom649 = sext i32 %388 to i64
  %389 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue650 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %389, i32 0, i32 5
  %arrayidx651 = getelementptr inbounds [400 x i32], [400 x i32]* %queue650, i32 0, i64 %idxprom649
  store i32 %386, i32* %arrayidx651, align 4
  br label %if.end.652

if.end.652:                                       ; preds = %if.then.644, %for.body.636
  %390 = load i32, i32* %distance, align 4
  %add653 = add nsw i32 %390, 100
  %391 = load i32, i32* %r630, align 4
  %idxprom654 = sext i32 %391 to i64
  %arrayidx655 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom654
  %392 = load i32, i32* %arrayidx655, align 4
  %idxprom656 = sext i32 %392 to i64
  %393 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances657 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %393, i32 0, i32 0
  %arrayidx658 = getelementptr inbounds [400 x i32], [400 x i32]* %distances657, i32 0, i64 %idxprom656
  store i32 %add653, i32* %arrayidx658, align 4
  %394 = load i32, i32* %r630, align 4
  %idxprom659 = sext i32 %394 to i64
  %arrayidx660 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom659
  %395 = load i32, i32* %arrayidx660, align 4
  %idxprom661 = sext i32 %395 to i64
  %396 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas662 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %396, i32 0, i32 1
  %arrayidx663 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas662, i32 0, i64 %idxprom661
  store i32 100, i32* %arrayidx663, align 4
  %397 = load i32, i32* %pos, align 4
  %398 = load i32, i32* %r630, align 4
  %idxprom664 = sext i32 %398 to i64
  %arrayidx665 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom664
  %399 = load i32, i32* %arrayidx665, align 4
  %idxprom666 = sext i32 %399 to i64
  %400 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from667 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %400, i32 0, i32 2
  %arrayidx668 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from667, i32 0, i64 %idxprom666
  store i32 %397, i32* %arrayidx668, align 4
  %401 = load i32, i32* %r630, align 4
  %idxprom669 = sext i32 %401 to i64
  %arrayidx670 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom669
  %402 = load i32, i32* %arrayidx670, align 4
  %idxprom671 = sext i32 %402 to i64
  %403 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1672 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %403, i32 0, i32 3
  %arrayidx673 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1672, i32 0, i64 %idxprom671
  store i32 0, i32* %arrayidx673, align 4
  %404 = load i32, i32* %r630, align 4
  %idxprom674 = sext i32 %404 to i64
  %arrayidx675 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom674
  %405 = load i32, i32* %arrayidx675, align 4
  %idxprom676 = sext i32 %405 to i64
  %406 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2677 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %406, i32 0, i32 4
  %arrayidx678 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2677, i32 0, i64 %idxprom676
  store i32 0, i32* %arrayidx678, align 4
  %407 = load i32, i32* %r630, align 4
  %idxprom679 = sext i32 %407 to i64
  %arrayidx680 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom679
  %408 = load i32, i32* %arrayidx680, align 4
  %409 = load i32, i32* %target.addr, align 4
  %cmp681 = icmp eq i32 %408, %409
  br i1 %cmp681, label %land.lhs.true.683, label %if.end.690

land.lhs.true.683:                                ; preds = %if.end.652
  %410 = load i32, i32* %distance, align 4
  %add684 = add nsw i32 %410, 100
  %411 = load i32, i32* %cutoff_distance, align 4
  %cmp685 = icmp slt i32 %add684, %411
  br i1 %cmp685, label %if.then.687, label %if.end.690

if.then.687:                                      ; preds = %land.lhs.true.683
  %412 = load i32, i32* %distance, align 4
  %add688 = add nsw i32 %412, 100
  %sub689 = sub nsw i32 %add688, 1
  store i32 %sub689, i32* %cutoff_distance, align 4
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.687, %land.lhs.true.683, %if.end.652
  br label %for.inc.691

for.inc.691:                                      ; preds = %if.end.690
  %413 = load i32, i32* %r630, align 4
  %inc692 = add nsw i32 %413, 1
  store i32 %inc692, i32* %r630, align 4
  br label %for.cond.633

for.end.693:                                      ; preds = %for.cond.633
  br label %if.end.694

if.end.694:                                       ; preds = %for.end.693, %if.end.611
  br label %if.end.695

if.end.695:                                       ; preds = %if.end.694, %do.body.586
  br label %do.end.696

do.end.696:                                       ; preds = %if.end.695
  br label %do.body.697

do.body.697:                                      ; preds = %do.end.696
  %414 = load i32, i32* %distance, align 4
  %add698 = add nsw i32 %414, 100
  %415 = load i32, i32* %gpos, align 4
  %idxprom699 = sext i32 %415 to i64
  %416 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances700 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %416, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [400 x i32], [400 x i32]* %distances700, i32 0, i64 %idxprom699
  %417 = load i32, i32* %arrayidx701, align 4
  %cmp702 = icmp slt i32 %add698, %417
  br i1 %cmp702, label %if.then.704, label %if.end.806

if.then.704:                                      ; preds = %do.body.697
  %418 = load i32, i32* %gpos, align 4
  %idxprom705 = sext i32 %418 to i64
  %arrayidx706 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom705
  %419 = load i8, i8* %arrayidx706, align 1
  %conv707 = zext i8 %419 to i32
  %cmp708 = icmp eq i32 %conv707, 0
  br i1 %cmp708, label %if.then.710, label %if.else.739

if.then.710:                                      ; preds = %if.then.704
  %420 = load i32, i32* %gpos, align 4
  %idxprom711 = sext i32 %420 to i64
  %421 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances712 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %421, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [400 x i32], [400 x i32]* %distances712, i32 0, i64 %idxprom711
  %422 = load i32, i32* %arrayidx713, align 4
  %cmp714 = icmp eq i32 %422, 100000
  br i1 %cmp714, label %if.then.716, label %if.end.722

if.then.716:                                      ; preds = %if.then.710
  %423 = load i32, i32* %gpos, align 4
  %424 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end717 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %424, i32 0, i32 7
  %425 = load i32, i32* %queue_end717, align 4
  %inc718 = add nsw i32 %425, 1
  store i32 %inc718, i32* %queue_end717, align 4
  %idxprom719 = sext i32 %425 to i64
  %426 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue720 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %426, i32 0, i32 5
  %arrayidx721 = getelementptr inbounds [400 x i32], [400 x i32]* %queue720, i32 0, i64 %idxprom719
  store i32 %423, i32* %arrayidx721, align 4
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.716, %if.then.710
  %427 = load i32, i32* %distance, align 4
  %add723 = add nsw i32 %427, 100
  %428 = load i32, i32* %gpos, align 4
  %idxprom724 = sext i32 %428 to i64
  %429 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances725 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %429, i32 0, i32 0
  %arrayidx726 = getelementptr inbounds [400 x i32], [400 x i32]* %distances725, i32 0, i64 %idxprom724
  store i32 %add723, i32* %arrayidx726, align 4
  %430 = load i32, i32* %gpos, align 4
  %idxprom727 = sext i32 %430 to i64
  %431 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas728 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %431, i32 0, i32 1
  %arrayidx729 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas728, i32 0, i64 %idxprom727
  store i32 100, i32* %arrayidx729, align 4
  %432 = load i32, i32* %pos, align 4
  %433 = load i32, i32* %gpos, align 4
  %idxprom730 = sext i32 %433 to i64
  %434 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from731 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %434, i32 0, i32 2
  %arrayidx732 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from731, i32 0, i64 %idxprom730
  store i32 %432, i32* %arrayidx732, align 4
  %435 = load i32, i32* %gpos, align 4
  %idxprom733 = sext i32 %435 to i64
  %436 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1734 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %436, i32 0, i32 3
  %arrayidx735 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1734, i32 0, i64 %idxprom733
  store i32 0, i32* %arrayidx735, align 4
  %437 = load i32, i32* %gpos, align 4
  %idxprom736 = sext i32 %437 to i64
  %438 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2737 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %438, i32 0, i32 4
  %arrayidx738 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2737, i32 0, i64 %idxprom736
  store i32 0, i32* %arrayidx738, align 4
  br label %if.end.805

if.else.739:                                      ; preds = %if.then.704
  %439 = load i32, i32* %gpos, align 4
  %arraydecay742 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call743 = call i32 @findstones(i32 %439, i32 361, i32* %arraydecay742)
  store i32 %call743, i32* %num_stones, align 4
  store i32 0, i32* %r741, align 4
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.802, %if.else.739
  %440 = load i32, i32* %r741, align 4
  %441 = load i32, i32* %num_stones, align 4
  %cmp745 = icmp slt i32 %440, %441
  br i1 %cmp745, label %for.body.747, label %for.end.804

for.body.747:                                     ; preds = %for.cond.744
  %442 = load i32, i32* %r741, align 4
  %idxprom748 = sext i32 %442 to i64
  %arrayidx749 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom748
  %443 = load i32, i32* %arrayidx749, align 4
  %idxprom750 = sext i32 %443 to i64
  %444 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances751 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %444, i32 0, i32 0
  %arrayidx752 = getelementptr inbounds [400 x i32], [400 x i32]* %distances751, i32 0, i64 %idxprom750
  %445 = load i32, i32* %arrayidx752, align 4
  %cmp753 = icmp eq i32 %445, 100000
  br i1 %cmp753, label %if.then.755, label %if.end.763

if.then.755:                                      ; preds = %for.body.747
  %446 = load i32, i32* %r741, align 4
  %idxprom756 = sext i32 %446 to i64
  %arrayidx757 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom756
  %447 = load i32, i32* %arrayidx757, align 4
  %448 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end758 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %448, i32 0, i32 7
  %449 = load i32, i32* %queue_end758, align 4
  %inc759 = add nsw i32 %449, 1
  store i32 %inc759, i32* %queue_end758, align 4
  %idxprom760 = sext i32 %449 to i64
  %450 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue761 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %450, i32 0, i32 5
  %arrayidx762 = getelementptr inbounds [400 x i32], [400 x i32]* %queue761, i32 0, i64 %idxprom760
  store i32 %447, i32* %arrayidx762, align 4
  br label %if.end.763

if.end.763:                                       ; preds = %if.then.755, %for.body.747
  %451 = load i32, i32* %distance, align 4
  %add764 = add nsw i32 %451, 100
  %452 = load i32, i32* %r741, align 4
  %idxprom765 = sext i32 %452 to i64
  %arrayidx766 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom765
  %453 = load i32, i32* %arrayidx766, align 4
  %idxprom767 = sext i32 %453 to i64
  %454 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances768 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %454, i32 0, i32 0
  %arrayidx769 = getelementptr inbounds [400 x i32], [400 x i32]* %distances768, i32 0, i64 %idxprom767
  store i32 %add764, i32* %arrayidx769, align 4
  %455 = load i32, i32* %r741, align 4
  %idxprom770 = sext i32 %455 to i64
  %arrayidx771 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom770
  %456 = load i32, i32* %arrayidx771, align 4
  %idxprom772 = sext i32 %456 to i64
  %457 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas773 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %457, i32 0, i32 1
  %arrayidx774 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas773, i32 0, i64 %idxprom772
  store i32 100, i32* %arrayidx774, align 4
  %458 = load i32, i32* %pos, align 4
  %459 = load i32, i32* %r741, align 4
  %idxprom775 = sext i32 %459 to i64
  %arrayidx776 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom775
  %460 = load i32, i32* %arrayidx776, align 4
  %idxprom777 = sext i32 %460 to i64
  %461 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from778 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %461, i32 0, i32 2
  %arrayidx779 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from778, i32 0, i64 %idxprom777
  store i32 %458, i32* %arrayidx779, align 4
  %462 = load i32, i32* %r741, align 4
  %idxprom780 = sext i32 %462 to i64
  %arrayidx781 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom780
  %463 = load i32, i32* %arrayidx781, align 4
  %idxprom782 = sext i32 %463 to i64
  %464 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1783 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %464, i32 0, i32 3
  %arrayidx784 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1783, i32 0, i64 %idxprom782
  store i32 0, i32* %arrayidx784, align 4
  %465 = load i32, i32* %r741, align 4
  %idxprom785 = sext i32 %465 to i64
  %arrayidx786 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom785
  %466 = load i32, i32* %arrayidx786, align 4
  %idxprom787 = sext i32 %466 to i64
  %467 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2788 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %467, i32 0, i32 4
  %arrayidx789 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2788, i32 0, i64 %idxprom787
  store i32 0, i32* %arrayidx789, align 4
  %468 = load i32, i32* %r741, align 4
  %idxprom790 = sext i32 %468 to i64
  %arrayidx791 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom790
  %469 = load i32, i32* %arrayidx791, align 4
  %470 = load i32, i32* %target.addr, align 4
  %cmp792 = icmp eq i32 %469, %470
  br i1 %cmp792, label %land.lhs.true.794, label %if.end.801

land.lhs.true.794:                                ; preds = %if.end.763
  %471 = load i32, i32* %distance, align 4
  %add795 = add nsw i32 %471, 100
  %472 = load i32, i32* %cutoff_distance, align 4
  %cmp796 = icmp slt i32 %add795, %472
  br i1 %cmp796, label %if.then.798, label %if.end.801

if.then.798:                                      ; preds = %land.lhs.true.794
  %473 = load i32, i32* %distance, align 4
  %add799 = add nsw i32 %473, 100
  %sub800 = sub nsw i32 %add799, 1
  store i32 %sub800, i32* %cutoff_distance, align 4
  br label %if.end.801

if.end.801:                                       ; preds = %if.then.798, %land.lhs.true.794, %if.end.763
  br label %for.inc.802

for.inc.802:                                      ; preds = %if.end.801
  %474 = load i32, i32* %r741, align 4
  %inc803 = add nsw i32 %474, 1
  store i32 %inc803, i32* %r741, align 4
  br label %for.cond.744

for.end.804:                                      ; preds = %for.cond.744
  br label %if.end.805

if.end.805:                                       ; preds = %for.end.804, %if.end.722
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %do.body.697
  br label %do.end.807

do.end.807:                                       ; preds = %if.end.806
  br label %if.end.808

if.end.808:                                       ; preds = %do.end.807, %land.lhs.true.579, %land.lhs.true.573, %land.lhs.true.567, %land.lhs.true.561, %if.end.555
  %475 = load i32, i32* %bpos, align 4
  %idxprom809 = sext i32 %475 to i64
  %arrayidx810 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom809
  %476 = load i8, i8* %arrayidx810, align 1
  %conv811 = zext i8 %476 to i32
  %477 = load i32, i32* %color, align 4
  %cmp812 = icmp eq i32 %conv811, %477
  br i1 %cmp812, label %land.lhs.true.814, label %if.end.954

land.lhs.true.814:                                ; preds = %if.end.808
  %478 = load i32, i32* %apos, align 4
  %idxprom815 = sext i32 %478 to i64
  %arrayidx816 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom815
  %479 = load i8, i8* %arrayidx816, align 1
  %conv817 = zext i8 %479 to i32
  %cmp818 = icmp eq i32 %conv817, 0
  br i1 %cmp818, label %land.lhs.true.820, label %if.end.954

land.lhs.true.820:                                ; preds = %land.lhs.true.814
  %480 = load i32, i32* %gpos, align 4
  %idxprom821 = sext i32 %480 to i64
  %arrayidx822 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom821
  %481 = load i8, i8* %arrayidx822, align 1
  %conv823 = zext i8 %481 to i32
  %cmp824 = icmp eq i32 %conv823, 0
  br i1 %cmp824, label %land.lhs.true.826, label %if.end.954

land.lhs.true.826:                                ; preds = %land.lhs.true.820
  %482 = load i32, i32* %pos, align 4
  %idxprom827 = sext i32 %482 to i64
  %483 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1828 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %483, i32 0, i32 3
  %arrayidx829 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1828, i32 0, i64 %idxprom827
  %484 = load i32, i32* %arrayidx829, align 4
  %485 = load i32, i32* %pos, align 4
  %idxprom830 = sext i32 %485 to i64
  %486 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2831 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %486, i32 0, i32 4
  %arrayidx832 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2831, i32 0, i64 %idxprom830
  %487 = load i32, i32* %arrayidx832, align 4
  %488 = load i32, i32* %apos, align 4
  %489 = load i32, i32* %gpos, align 4
  %490 = load i32, i32* %color, align 4
  %call833 = call i32 @common_vulnerabilities(i32 %484, i32 %487, i32 %488, i32 %489, i32 %490)
  %tobool834 = icmp ne i32 %call833, 0
  br i1 %tobool834, label %if.end.954, label %land.lhs.true.835

land.lhs.true.835:                                ; preds = %land.lhs.true.826
  %491 = load i32, i32* %bpos, align 4
  %idxprom836 = sext i32 %491 to i64
  %492 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances837 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %492, i32 0, i32 0
  %arrayidx838 = getelementptr inbounds [400 x i32], [400 x i32]* %distances837, i32 0, i64 %idxprom836
  %493 = load i32, i32* %arrayidx838, align 4
  %494 = load i32, i32* %distance, align 4
  %add839 = add nsw i32 %494, 100
  %cmp840 = icmp sgt i32 %493, %add839
  br i1 %cmp840, label %if.then.842, label %if.end.954

if.then.842:                                      ; preds = %land.lhs.true.835
  br label %do.body.843

do.body.843:                                      ; preds = %if.then.842
  %495 = load i32, i32* %distance, align 4
  %add844 = add nsw i32 %495, 100
  %496 = load i32, i32* %bpos, align 4
  %idxprom845 = sext i32 %496 to i64
  %497 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances846 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %497, i32 0, i32 0
  %arrayidx847 = getelementptr inbounds [400 x i32], [400 x i32]* %distances846, i32 0, i64 %idxprom845
  %498 = load i32, i32* %arrayidx847, align 4
  %cmp848 = icmp slt i32 %add844, %498
  br i1 %cmp848, label %if.then.850, label %if.end.952

if.then.850:                                      ; preds = %do.body.843
  %499 = load i32, i32* %bpos, align 4
  %idxprom851 = sext i32 %499 to i64
  %arrayidx852 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom851
  %500 = load i8, i8* %arrayidx852, align 1
  %conv853 = zext i8 %500 to i32
  %cmp854 = icmp eq i32 %conv853, 0
  br i1 %cmp854, label %if.then.856, label %if.else.885

if.then.856:                                      ; preds = %if.then.850
  %501 = load i32, i32* %bpos, align 4
  %idxprom857 = sext i32 %501 to i64
  %502 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances858 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %502, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [400 x i32], [400 x i32]* %distances858, i32 0, i64 %idxprom857
  %503 = load i32, i32* %arrayidx859, align 4
  %cmp860 = icmp eq i32 %503, 100000
  br i1 %cmp860, label %if.then.862, label %if.end.868

if.then.862:                                      ; preds = %if.then.856
  %504 = load i32, i32* %bpos, align 4
  %505 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end863 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %505, i32 0, i32 7
  %506 = load i32, i32* %queue_end863, align 4
  %inc864 = add nsw i32 %506, 1
  store i32 %inc864, i32* %queue_end863, align 4
  %idxprom865 = sext i32 %506 to i64
  %507 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue866 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %507, i32 0, i32 5
  %arrayidx867 = getelementptr inbounds [400 x i32], [400 x i32]* %queue866, i32 0, i64 %idxprom865
  store i32 %504, i32* %arrayidx867, align 4
  br label %if.end.868

if.end.868:                                       ; preds = %if.then.862, %if.then.856
  %508 = load i32, i32* %distance, align 4
  %add869 = add nsw i32 %508, 100
  %509 = load i32, i32* %bpos, align 4
  %idxprom870 = sext i32 %509 to i64
  %510 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances871 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %510, i32 0, i32 0
  %arrayidx872 = getelementptr inbounds [400 x i32], [400 x i32]* %distances871, i32 0, i64 %idxprom870
  store i32 %add869, i32* %arrayidx872, align 4
  %511 = load i32, i32* %bpos, align 4
  %idxprom873 = sext i32 %511 to i64
  %512 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas874 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %512, i32 0, i32 1
  %arrayidx875 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas874, i32 0, i64 %idxprom873
  store i32 100, i32* %arrayidx875, align 4
  %513 = load i32, i32* %pos, align 4
  %514 = load i32, i32* %bpos, align 4
  %idxprom876 = sext i32 %514 to i64
  %515 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from877 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %515, i32 0, i32 2
  %arrayidx878 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from877, i32 0, i64 %idxprom876
  store i32 %513, i32* %arrayidx878, align 4
  %516 = load i32, i32* %apos, align 4
  %517 = load i32, i32* %bpos, align 4
  %idxprom879 = sext i32 %517 to i64
  %518 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1880 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %518, i32 0, i32 3
  %arrayidx881 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1880, i32 0, i64 %idxprom879
  store i32 %516, i32* %arrayidx881, align 4
  %519 = load i32, i32* %gpos, align 4
  %520 = load i32, i32* %bpos, align 4
  %idxprom882 = sext i32 %520 to i64
  %521 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2883 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %521, i32 0, i32 4
  %arrayidx884 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2883, i32 0, i64 %idxprom882
  store i32 %519, i32* %arrayidx884, align 4
  br label %if.end.951

if.else.885:                                      ; preds = %if.then.850
  %522 = load i32, i32* %bpos, align 4
  %arraydecay888 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call889 = call i32 @findstones(i32 %522, i32 361, i32* %arraydecay888)
  store i32 %call889, i32* %num_stones, align 4
  store i32 0, i32* %r887, align 4
  br label %for.cond.890

for.cond.890:                                     ; preds = %for.inc.948, %if.else.885
  %523 = load i32, i32* %r887, align 4
  %524 = load i32, i32* %num_stones, align 4
  %cmp891 = icmp slt i32 %523, %524
  br i1 %cmp891, label %for.body.893, label %for.end.950

for.body.893:                                     ; preds = %for.cond.890
  %525 = load i32, i32* %r887, align 4
  %idxprom894 = sext i32 %525 to i64
  %arrayidx895 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom894
  %526 = load i32, i32* %arrayidx895, align 4
  %idxprom896 = sext i32 %526 to i64
  %527 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances897 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %527, i32 0, i32 0
  %arrayidx898 = getelementptr inbounds [400 x i32], [400 x i32]* %distances897, i32 0, i64 %idxprom896
  %528 = load i32, i32* %arrayidx898, align 4
  %cmp899 = icmp eq i32 %528, 100000
  br i1 %cmp899, label %if.then.901, label %if.end.909

if.then.901:                                      ; preds = %for.body.893
  %529 = load i32, i32* %r887, align 4
  %idxprom902 = sext i32 %529 to i64
  %arrayidx903 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom902
  %530 = load i32, i32* %arrayidx903, align 4
  %531 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end904 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %531, i32 0, i32 7
  %532 = load i32, i32* %queue_end904, align 4
  %inc905 = add nsw i32 %532, 1
  store i32 %inc905, i32* %queue_end904, align 4
  %idxprom906 = sext i32 %532 to i64
  %533 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue907 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %533, i32 0, i32 5
  %arrayidx908 = getelementptr inbounds [400 x i32], [400 x i32]* %queue907, i32 0, i64 %idxprom906
  store i32 %530, i32* %arrayidx908, align 4
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.901, %for.body.893
  %534 = load i32, i32* %distance, align 4
  %add910 = add nsw i32 %534, 100
  %535 = load i32, i32* %r887, align 4
  %idxprom911 = sext i32 %535 to i64
  %arrayidx912 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom911
  %536 = load i32, i32* %arrayidx912, align 4
  %idxprom913 = sext i32 %536 to i64
  %537 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances914 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %537, i32 0, i32 0
  %arrayidx915 = getelementptr inbounds [400 x i32], [400 x i32]* %distances914, i32 0, i64 %idxprom913
  store i32 %add910, i32* %arrayidx915, align 4
  %538 = load i32, i32* %r887, align 4
  %idxprom916 = sext i32 %538 to i64
  %arrayidx917 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom916
  %539 = load i32, i32* %arrayidx917, align 4
  %idxprom918 = sext i32 %539 to i64
  %540 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas919 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %540, i32 0, i32 1
  %arrayidx920 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas919, i32 0, i64 %idxprom918
  store i32 100, i32* %arrayidx920, align 4
  %541 = load i32, i32* %pos, align 4
  %542 = load i32, i32* %r887, align 4
  %idxprom921 = sext i32 %542 to i64
  %arrayidx922 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom921
  %543 = load i32, i32* %arrayidx922, align 4
  %idxprom923 = sext i32 %543 to i64
  %544 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from924 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %544, i32 0, i32 2
  %arrayidx925 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from924, i32 0, i64 %idxprom923
  store i32 %541, i32* %arrayidx925, align 4
  %545 = load i32, i32* %apos, align 4
  %546 = load i32, i32* %r887, align 4
  %idxprom926 = sext i32 %546 to i64
  %arrayidx927 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom926
  %547 = load i32, i32* %arrayidx927, align 4
  %idxprom928 = sext i32 %547 to i64
  %548 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1929 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %548, i32 0, i32 3
  %arrayidx930 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1929, i32 0, i64 %idxprom928
  store i32 %545, i32* %arrayidx930, align 4
  %549 = load i32, i32* %gpos, align 4
  %550 = load i32, i32* %r887, align 4
  %idxprom931 = sext i32 %550 to i64
  %arrayidx932 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom931
  %551 = load i32, i32* %arrayidx932, align 4
  %idxprom933 = sext i32 %551 to i64
  %552 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2934 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %552, i32 0, i32 4
  %arrayidx935 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2934, i32 0, i64 %idxprom933
  store i32 %549, i32* %arrayidx935, align 4
  %553 = load i32, i32* %r887, align 4
  %idxprom936 = sext i32 %553 to i64
  %arrayidx937 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom936
  %554 = load i32, i32* %arrayidx937, align 4
  %555 = load i32, i32* %target.addr, align 4
  %cmp938 = icmp eq i32 %554, %555
  br i1 %cmp938, label %land.lhs.true.940, label %if.end.947

land.lhs.true.940:                                ; preds = %if.end.909
  %556 = load i32, i32* %distance, align 4
  %add941 = add nsw i32 %556, 100
  %557 = load i32, i32* %cutoff_distance, align 4
  %cmp942 = icmp slt i32 %add941, %557
  br i1 %cmp942, label %if.then.944, label %if.end.947

if.then.944:                                      ; preds = %land.lhs.true.940
  %558 = load i32, i32* %distance, align 4
  %add945 = add nsw i32 %558, 100
  %sub946 = sub nsw i32 %add945, 1
  store i32 %sub946, i32* %cutoff_distance, align 4
  br label %if.end.947

if.end.947:                                       ; preds = %if.then.944, %land.lhs.true.940, %if.end.909
  br label %for.inc.948

for.inc.948:                                      ; preds = %if.end.947
  %559 = load i32, i32* %r887, align 4
  %inc949 = add nsw i32 %559, 1
  store i32 %inc949, i32* %r887, align 4
  br label %for.cond.890

for.end.950:                                      ; preds = %for.cond.890
  br label %if.end.951

if.end.951:                                       ; preds = %for.end.950, %if.end.868
  br label %if.end.952

if.end.952:                                       ; preds = %if.end.951, %do.body.843
  br label %do.end.953

do.end.953:                                       ; preds = %if.end.952
  br label %if.end.954

if.end.954:                                       ; preds = %do.end.953, %land.lhs.true.835, %land.lhs.true.826, %land.lhs.true.820, %land.lhs.true.814, %if.end.808
  %560 = load i32, i32* %gpos, align 4
  %idxprom955 = sext i32 %560 to i64
  %arrayidx956 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom955
  %561 = load i8, i8* %arrayidx956, align 1
  %conv957 = zext i8 %561 to i32
  %cmp958 = icmp eq i32 %conv957, 0
  br i1 %cmp958, label %land.lhs.true.960, label %if.end.2097

land.lhs.true.960:                                ; preds = %if.end.954
  %562 = load i32, i32* %epos, align 4
  %idxprom961 = sext i32 %562 to i64
  %arrayidx962 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom961
  %563 = load i8, i8* %arrayidx962, align 1
  %conv963 = zext i8 %563 to i32
  %564 = load i32, i32* %color, align 4
  %cmp964 = icmp eq i32 %conv963, %564
  br i1 %cmp964, label %land.lhs.true.966, label %if.end.2097

land.lhs.true.966:                                ; preds = %land.lhs.true.960
  %565 = load i32, i32* %epos, align 4
  %idxprom967 = sext i32 %565 to i64
  %566 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances968 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %566, i32 0, i32 0
  %arrayidx969 = getelementptr inbounds [400 x i32], [400 x i32]* %distances968, i32 0, i64 %idxprom967
  %567 = load i32, i32* %arrayidx969, align 4
  %568 = load i32, i32* %distance, align 4
  %add970 = add nsw i32 %568, 200
  %cmp971 = icmp sgt i32 %567, %add970
  br i1 %cmp971, label %land.lhs.true.973, label %if.end.2097

land.lhs.true.973:                                ; preds = %land.lhs.true.966
  %569 = load i32, i32* %gpos, align 4
  %570 = load i32, i32* %other, align 4
  %call974 = call i32 @approxlib(i32 %569, i32 %570, i32 3, i32* null)
  %cmp975 = icmp sle i32 %call974, 2
  br i1 %cmp975, label %if.then.977, label %if.end.2097

if.then.977:                                      ; preds = %land.lhs.true.973
  %571 = load i32, i32* %bpos, align 4
  %idxprom978 = sext i32 %571 to i64
  %arrayidx979 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom978
  %572 = load i8, i8* %arrayidx979, align 1
  %conv980 = zext i8 %572 to i32
  %cmp981 = icmp eq i32 %conv980, 0
  br i1 %cmp981, label %land.lhs.true.983, label %if.end.1536

land.lhs.true.983:                                ; preds = %if.then.977
  %573 = load i32, i32* %bpos, align 4
  %574 = load i32, i32* %color, align 4
  %call984 = call i32 @approxlib(i32 %573, i32 %574, i32 3, i32* null)
  %cmp985 = icmp sge i32 %call984, 3
  br i1 %cmp985, label %land.lhs.true.987, label %if.end.1536

land.lhs.true.987:                                ; preds = %land.lhs.true.983
  %575 = load i32, i32* %apos, align 4
  %idxprom988 = sext i32 %575 to i64
  %arrayidx989 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom988
  %576 = load i8, i8* %arrayidx989, align 1
  %conv990 = zext i8 %576 to i32
  %577 = load i32, i32* %color, align 4
  %cmp991 = icmp eq i32 %conv990, %577
  br i1 %cmp991, label %land.lhs.true.1011, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.987
  %578 = load i32, i32* %apos, align 4
  %idxprom993 = sext i32 %578 to i64
  %arrayidx994 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom993
  %579 = load i8, i8* %arrayidx994, align 1
  %conv995 = zext i8 %579 to i32
  %cmp996 = icmp eq i32 %conv995, 0
  br i1 %cmp996, label %land.lhs.true.998, label %if.end.1536

land.lhs.true.998:                                ; preds = %lor.lhs.false
  %580 = load i32, i32* %pos, align 4
  %idxprom999 = sext i32 %580 to i64
  %581 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11000 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %581, i32 0, i32 3
  %arrayidx1001 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11000, i32 0, i64 %idxprom999
  %582 = load i32, i32* %arrayidx1001, align 4
  %583 = load i32, i32* %pos, align 4
  %idxprom1002 = sext i32 %583 to i64
  %584 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21003 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %584, i32 0, i32 4
  %arrayidx1004 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21003, i32 0, i64 %idxprom1002
  %585 = load i32, i32* %arrayidx1004, align 4
  %586 = load i32, i32* %apos, align 4
  %587 = load i32, i32* %gpos, align 4
  %588 = load i32, i32* %color, align 4
  %call1005 = call i32 @common_vulnerabilities(i32 %582, i32 %585, i32 %586, i32 %587, i32 %588)
  %tobool1006 = icmp ne i32 %call1005, 0
  br i1 %tobool1006, label %if.end.1536, label %land.lhs.true.1007

land.lhs.true.1007:                               ; preds = %land.lhs.true.998
  %589 = load i32, i32* %apos, align 4
  %590 = load i32, i32* %other, align 4
  %call1008 = call i32 @approxlib(i32 %589, i32 %590, i32 3, i32* null)
  %cmp1009 = icmp sle i32 %call1008, 2
  br i1 %cmp1009, label %land.lhs.true.1011, label %if.end.1536

land.lhs.true.1011:                               ; preds = %land.lhs.true.1007, %land.lhs.true.987
  %591 = load i32, i32* %fpos, align 4
  %idxprom1012 = sext i32 %591 to i64
  %arrayidx1013 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1012
  %592 = load i8, i8* %arrayidx1013, align 1
  %conv1014 = zext i8 %592 to i32
  %593 = load i32, i32* %color, align 4
  %cmp1015 = icmp eq i32 %conv1014, %593
  br i1 %cmp1015, label %if.then.1036, label %lor.lhs.false.1017

lor.lhs.false.1017:                               ; preds = %land.lhs.true.1011
  %594 = load i32, i32* %fpos, align 4
  %idxprom1018 = sext i32 %594 to i64
  %arrayidx1019 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1018
  %595 = load i8, i8* %arrayidx1019, align 1
  %conv1020 = zext i8 %595 to i32
  %cmp1021 = icmp eq i32 %conv1020, 0
  br i1 %cmp1021, label %land.lhs.true.1023, label %if.end.1536

land.lhs.true.1023:                               ; preds = %lor.lhs.false.1017
  %596 = load i32, i32* %pos, align 4
  %idxprom1024 = sext i32 %596 to i64
  %597 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11025 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %597, i32 0, i32 3
  %arrayidx1026 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11025, i32 0, i64 %idxprom1024
  %598 = load i32, i32* %arrayidx1026, align 4
  %599 = load i32, i32* %pos, align 4
  %idxprom1027 = sext i32 %599 to i64
  %600 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21028 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %600, i32 0, i32 4
  %arrayidx1029 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21028, i32 0, i64 %idxprom1027
  %601 = load i32, i32* %arrayidx1029, align 4
  %602 = load i32, i32* %fpos, align 4
  %603 = load i32, i32* %gpos, align 4
  %604 = load i32, i32* %color, align 4
  %call1030 = call i32 @common_vulnerabilities(i32 %598, i32 %601, i32 %602, i32 %603, i32 %604)
  %tobool1031 = icmp ne i32 %call1030, 0
  br i1 %tobool1031, label %if.end.1536, label %land.lhs.true.1032

land.lhs.true.1032:                               ; preds = %land.lhs.true.1023
  %605 = load i32, i32* %fpos, align 4
  %606 = load i32, i32* %other, align 4
  %call1033 = call i32 @approxlib(i32 %605, i32 %606, i32 3, i32* null)
  %cmp1034 = icmp sle i32 %call1033, 2
  br i1 %cmp1034, label %if.then.1036, label %if.end.1536

if.then.1036:                                     ; preds = %land.lhs.true.1032, %land.lhs.true.1011
  %607 = load i32, i32* %apos, align 4
  %idxprom1037 = sext i32 %607 to i64
  %arrayidx1038 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1037
  %608 = load i8, i8* %arrayidx1038, align 1
  %conv1039 = zext i8 %608 to i32
  %cmp1040 = icmp eq i32 %conv1039, 0
  br i1 %cmp1040, label %land.lhs.true.1042, label %if.else.1160

land.lhs.true.1042:                               ; preds = %if.then.1036
  %609 = load i32, i32* %fpos, align 4
  %idxprom1043 = sext i32 %609 to i64
  %arrayidx1044 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1043
  %610 = load i8, i8* %arrayidx1044, align 1
  %conv1045 = zext i8 %610 to i32
  %cmp1046 = icmp eq i32 %conv1045, 0
  br i1 %cmp1046, label %if.then.1048, label %if.else.1160

if.then.1048:                                     ; preds = %land.lhs.true.1042
  br label %do.body.1049

do.body.1049:                                     ; preds = %if.then.1048
  %611 = load i32, i32* %distance, align 4
  %add1050 = add nsw i32 %611, 200
  %612 = load i32, i32* %epos, align 4
  %idxprom1051 = sext i32 %612 to i64
  %613 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1052 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %613, i32 0, i32 0
  %arrayidx1053 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1052, i32 0, i64 %idxprom1051
  %614 = load i32, i32* %arrayidx1053, align 4
  %cmp1054 = icmp slt i32 %add1050, %614
  br i1 %cmp1054, label %if.then.1056, label %if.end.1158

if.then.1056:                                     ; preds = %do.body.1049
  %615 = load i32, i32* %epos, align 4
  %idxprom1057 = sext i32 %615 to i64
  %arrayidx1058 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1057
  %616 = load i8, i8* %arrayidx1058, align 1
  %conv1059 = zext i8 %616 to i32
  %cmp1060 = icmp eq i32 %conv1059, 0
  br i1 %cmp1060, label %if.then.1062, label %if.else.1091

if.then.1062:                                     ; preds = %if.then.1056
  %617 = load i32, i32* %epos, align 4
  %idxprom1063 = sext i32 %617 to i64
  %618 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1064 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %618, i32 0, i32 0
  %arrayidx1065 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1064, i32 0, i64 %idxprom1063
  %619 = load i32, i32* %arrayidx1065, align 4
  %cmp1066 = icmp eq i32 %619, 100000
  br i1 %cmp1066, label %if.then.1068, label %if.end.1074

if.then.1068:                                     ; preds = %if.then.1062
  %620 = load i32, i32* %epos, align 4
  %621 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1069 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %621, i32 0, i32 7
  %622 = load i32, i32* %queue_end1069, align 4
  %inc1070 = add nsw i32 %622, 1
  store i32 %inc1070, i32* %queue_end1069, align 4
  %idxprom1071 = sext i32 %622 to i64
  %623 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %623, i32 0, i32 5
  %arrayidx1073 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1072, i32 0, i64 %idxprom1071
  store i32 %620, i32* %arrayidx1073, align 4
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.then.1068, %if.then.1062
  %624 = load i32, i32* %distance, align 4
  %add1075 = add nsw i32 %624, 200
  %625 = load i32, i32* %epos, align 4
  %idxprom1076 = sext i32 %625 to i64
  %626 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1077 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %626, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1077, i32 0, i64 %idxprom1076
  store i32 %add1075, i32* %arrayidx1078, align 4
  %627 = load i32, i32* %epos, align 4
  %idxprom1079 = sext i32 %627 to i64
  %628 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1080 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %628, i32 0, i32 1
  %arrayidx1081 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1080, i32 0, i64 %idxprom1079
  store i32 200, i32* %arrayidx1081, align 4
  %629 = load i32, i32* %pos, align 4
  %630 = load i32, i32* %epos, align 4
  %idxprom1082 = sext i32 %630 to i64
  %631 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1083 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %631, i32 0, i32 2
  %arrayidx1084 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1083, i32 0, i64 %idxprom1082
  store i32 %629, i32* %arrayidx1084, align 4
  %632 = load i32, i32* %apos, align 4
  %633 = load i32, i32* %epos, align 4
  %idxprom1085 = sext i32 %633 to i64
  %634 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11086 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %634, i32 0, i32 3
  %arrayidx1087 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11086, i32 0, i64 %idxprom1085
  store i32 %632, i32* %arrayidx1087, align 4
  %635 = load i32, i32* %fpos, align 4
  %636 = load i32, i32* %epos, align 4
  %idxprom1088 = sext i32 %636 to i64
  %637 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21089 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %637, i32 0, i32 4
  %arrayidx1090 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21089, i32 0, i64 %idxprom1088
  store i32 %635, i32* %arrayidx1090, align 4
  br label %if.end.1157

if.else.1091:                                     ; preds = %if.then.1056
  %638 = load i32, i32* %epos, align 4
  %arraydecay1094 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1095 = call i32 @findstones(i32 %638, i32 361, i32* %arraydecay1094)
  store i32 %call1095, i32* %num_stones, align 4
  store i32 0, i32* %r1093, align 4
  br label %for.cond.1096

for.cond.1096:                                    ; preds = %for.inc.1154, %if.else.1091
  %639 = load i32, i32* %r1093, align 4
  %640 = load i32, i32* %num_stones, align 4
  %cmp1097 = icmp slt i32 %639, %640
  br i1 %cmp1097, label %for.body.1099, label %for.end.1156

for.body.1099:                                    ; preds = %for.cond.1096
  %641 = load i32, i32* %r1093, align 4
  %idxprom1100 = sext i32 %641 to i64
  %arrayidx1101 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1100
  %642 = load i32, i32* %arrayidx1101, align 4
  %idxprom1102 = sext i32 %642 to i64
  %643 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1103 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %643, i32 0, i32 0
  %arrayidx1104 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1103, i32 0, i64 %idxprom1102
  %644 = load i32, i32* %arrayidx1104, align 4
  %cmp1105 = icmp eq i32 %644, 100000
  br i1 %cmp1105, label %if.then.1107, label %if.end.1115

if.then.1107:                                     ; preds = %for.body.1099
  %645 = load i32, i32* %r1093, align 4
  %idxprom1108 = sext i32 %645 to i64
  %arrayidx1109 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1108
  %646 = load i32, i32* %arrayidx1109, align 4
  %647 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1110 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %647, i32 0, i32 7
  %648 = load i32, i32* %queue_end1110, align 4
  %inc1111 = add nsw i32 %648, 1
  store i32 %inc1111, i32* %queue_end1110, align 4
  %idxprom1112 = sext i32 %648 to i64
  %649 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1113 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %649, i32 0, i32 5
  %arrayidx1114 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1113, i32 0, i64 %idxprom1112
  store i32 %646, i32* %arrayidx1114, align 4
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.then.1107, %for.body.1099
  %650 = load i32, i32* %distance, align 4
  %add1116 = add nsw i32 %650, 200
  %651 = load i32, i32* %r1093, align 4
  %idxprom1117 = sext i32 %651 to i64
  %arrayidx1118 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1117
  %652 = load i32, i32* %arrayidx1118, align 4
  %idxprom1119 = sext i32 %652 to i64
  %653 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1120 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %653, i32 0, i32 0
  %arrayidx1121 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1120, i32 0, i64 %idxprom1119
  store i32 %add1116, i32* %arrayidx1121, align 4
  %654 = load i32, i32* %r1093, align 4
  %idxprom1122 = sext i32 %654 to i64
  %arrayidx1123 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1122
  %655 = load i32, i32* %arrayidx1123, align 4
  %idxprom1124 = sext i32 %655 to i64
  %656 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1125 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %656, i32 0, i32 1
  %arrayidx1126 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1125, i32 0, i64 %idxprom1124
  store i32 200, i32* %arrayidx1126, align 4
  %657 = load i32, i32* %pos, align 4
  %658 = load i32, i32* %r1093, align 4
  %idxprom1127 = sext i32 %658 to i64
  %arrayidx1128 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1127
  %659 = load i32, i32* %arrayidx1128, align 4
  %idxprom1129 = sext i32 %659 to i64
  %660 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1130 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %660, i32 0, i32 2
  %arrayidx1131 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1130, i32 0, i64 %idxprom1129
  store i32 %657, i32* %arrayidx1131, align 4
  %661 = load i32, i32* %apos, align 4
  %662 = load i32, i32* %r1093, align 4
  %idxprom1132 = sext i32 %662 to i64
  %arrayidx1133 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1132
  %663 = load i32, i32* %arrayidx1133, align 4
  %idxprom1134 = sext i32 %663 to i64
  %664 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11135 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %664, i32 0, i32 3
  %arrayidx1136 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11135, i32 0, i64 %idxprom1134
  store i32 %661, i32* %arrayidx1136, align 4
  %665 = load i32, i32* %fpos, align 4
  %666 = load i32, i32* %r1093, align 4
  %idxprom1137 = sext i32 %666 to i64
  %arrayidx1138 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1137
  %667 = load i32, i32* %arrayidx1138, align 4
  %idxprom1139 = sext i32 %667 to i64
  %668 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21140 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %668, i32 0, i32 4
  %arrayidx1141 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21140, i32 0, i64 %idxprom1139
  store i32 %665, i32* %arrayidx1141, align 4
  %669 = load i32, i32* %r1093, align 4
  %idxprom1142 = sext i32 %669 to i64
  %arrayidx1143 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1142
  %670 = load i32, i32* %arrayidx1143, align 4
  %671 = load i32, i32* %target.addr, align 4
  %cmp1144 = icmp eq i32 %670, %671
  br i1 %cmp1144, label %land.lhs.true.1146, label %if.end.1153

land.lhs.true.1146:                               ; preds = %if.end.1115
  %672 = load i32, i32* %distance, align 4
  %add1147 = add nsw i32 %672, 200
  %673 = load i32, i32* %cutoff_distance, align 4
  %cmp1148 = icmp slt i32 %add1147, %673
  br i1 %cmp1148, label %if.then.1150, label %if.end.1153

if.then.1150:                                     ; preds = %land.lhs.true.1146
  %674 = load i32, i32* %distance, align 4
  %add1151 = add nsw i32 %674, 200
  %sub1152 = sub nsw i32 %add1151, 1
  store i32 %sub1152, i32* %cutoff_distance, align 4
  br label %if.end.1153

if.end.1153:                                      ; preds = %if.then.1150, %land.lhs.true.1146, %if.end.1115
  br label %for.inc.1154

for.inc.1154:                                     ; preds = %if.end.1153
  %675 = load i32, i32* %r1093, align 4
  %inc1155 = add nsw i32 %675, 1
  store i32 %inc1155, i32* %r1093, align 4
  br label %for.cond.1096

for.end.1156:                                     ; preds = %for.cond.1096
  br label %if.end.1157

if.end.1157:                                      ; preds = %for.end.1156, %if.end.1074
  br label %if.end.1158

if.end.1158:                                      ; preds = %if.end.1157, %do.body.1049
  br label %do.end.1159

do.end.1159:                                      ; preds = %if.end.1158
  br label %if.end.1535

if.else.1160:                                     ; preds = %land.lhs.true.1042, %if.then.1036
  %676 = load i32, i32* %apos, align 4
  %idxprom1161 = sext i32 %676 to i64
  %arrayidx1162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1161
  %677 = load i8, i8* %arrayidx1162, align 1
  %conv1163 = zext i8 %677 to i32
  %cmp1164 = icmp eq i32 %conv1163, 0
  br i1 %cmp1164, label %land.lhs.true.1166, label %if.else.1284

land.lhs.true.1166:                               ; preds = %if.else.1160
  %678 = load i32, i32* %fpos, align 4
  %idxprom1167 = sext i32 %678 to i64
  %arrayidx1168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1167
  %679 = load i8, i8* %arrayidx1168, align 1
  %conv1169 = zext i8 %679 to i32
  %cmp1170 = icmp ne i32 %conv1169, 0
  br i1 %cmp1170, label %if.then.1172, label %if.else.1284

if.then.1172:                                     ; preds = %land.lhs.true.1166
  br label %do.body.1173

do.body.1173:                                     ; preds = %if.then.1172
  %680 = load i32, i32* %distance, align 4
  %add1174 = add nsw i32 %680, 200
  %681 = load i32, i32* %epos, align 4
  %idxprom1175 = sext i32 %681 to i64
  %682 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1176 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %682, i32 0, i32 0
  %arrayidx1177 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1176, i32 0, i64 %idxprom1175
  %683 = load i32, i32* %arrayidx1177, align 4
  %cmp1178 = icmp slt i32 %add1174, %683
  br i1 %cmp1178, label %if.then.1180, label %if.end.1282

if.then.1180:                                     ; preds = %do.body.1173
  %684 = load i32, i32* %epos, align 4
  %idxprom1181 = sext i32 %684 to i64
  %arrayidx1182 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1181
  %685 = load i8, i8* %arrayidx1182, align 1
  %conv1183 = zext i8 %685 to i32
  %cmp1184 = icmp eq i32 %conv1183, 0
  br i1 %cmp1184, label %if.then.1186, label %if.else.1215

if.then.1186:                                     ; preds = %if.then.1180
  %686 = load i32, i32* %epos, align 4
  %idxprom1187 = sext i32 %686 to i64
  %687 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1188 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %687, i32 0, i32 0
  %arrayidx1189 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1188, i32 0, i64 %idxprom1187
  %688 = load i32, i32* %arrayidx1189, align 4
  %cmp1190 = icmp eq i32 %688, 100000
  br i1 %cmp1190, label %if.then.1192, label %if.end.1198

if.then.1192:                                     ; preds = %if.then.1186
  %689 = load i32, i32* %epos, align 4
  %690 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1193 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %690, i32 0, i32 7
  %691 = load i32, i32* %queue_end1193, align 4
  %inc1194 = add nsw i32 %691, 1
  store i32 %inc1194, i32* %queue_end1193, align 4
  %idxprom1195 = sext i32 %691 to i64
  %692 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1196 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %692, i32 0, i32 5
  %arrayidx1197 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1196, i32 0, i64 %idxprom1195
  store i32 %689, i32* %arrayidx1197, align 4
  br label %if.end.1198

if.end.1198:                                      ; preds = %if.then.1192, %if.then.1186
  %693 = load i32, i32* %distance, align 4
  %add1199 = add nsw i32 %693, 200
  %694 = load i32, i32* %epos, align 4
  %idxprom1200 = sext i32 %694 to i64
  %695 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1201 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %695, i32 0, i32 0
  %arrayidx1202 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1201, i32 0, i64 %idxprom1200
  store i32 %add1199, i32* %arrayidx1202, align 4
  %696 = load i32, i32* %epos, align 4
  %idxprom1203 = sext i32 %696 to i64
  %697 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %697, i32 0, i32 1
  %arrayidx1205 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1204, i32 0, i64 %idxprom1203
  store i32 200, i32* %arrayidx1205, align 4
  %698 = load i32, i32* %pos, align 4
  %699 = load i32, i32* %epos, align 4
  %idxprom1206 = sext i32 %699 to i64
  %700 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1207 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %700, i32 0, i32 2
  %arrayidx1208 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1207, i32 0, i64 %idxprom1206
  store i32 %698, i32* %arrayidx1208, align 4
  %701 = load i32, i32* %apos, align 4
  %702 = load i32, i32* %epos, align 4
  %idxprom1209 = sext i32 %702 to i64
  %703 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11210 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %703, i32 0, i32 3
  %arrayidx1211 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11210, i32 0, i64 %idxprom1209
  store i32 %701, i32* %arrayidx1211, align 4
  %704 = load i32, i32* %epos, align 4
  %idxprom1212 = sext i32 %704 to i64
  %705 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21213 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %705, i32 0, i32 4
  %arrayidx1214 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21213, i32 0, i64 %idxprom1212
  store i32 0, i32* %arrayidx1214, align 4
  br label %if.end.1281

if.else.1215:                                     ; preds = %if.then.1180
  %706 = load i32, i32* %epos, align 4
  %arraydecay1218 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1219 = call i32 @findstones(i32 %706, i32 361, i32* %arraydecay1218)
  store i32 %call1219, i32* %num_stones, align 4
  store i32 0, i32* %r1217, align 4
  br label %for.cond.1220

for.cond.1220:                                    ; preds = %for.inc.1278, %if.else.1215
  %707 = load i32, i32* %r1217, align 4
  %708 = load i32, i32* %num_stones, align 4
  %cmp1221 = icmp slt i32 %707, %708
  br i1 %cmp1221, label %for.body.1223, label %for.end.1280

for.body.1223:                                    ; preds = %for.cond.1220
  %709 = load i32, i32* %r1217, align 4
  %idxprom1224 = sext i32 %709 to i64
  %arrayidx1225 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1224
  %710 = load i32, i32* %arrayidx1225, align 4
  %idxprom1226 = sext i32 %710 to i64
  %711 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1227 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %711, i32 0, i32 0
  %arrayidx1228 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1227, i32 0, i64 %idxprom1226
  %712 = load i32, i32* %arrayidx1228, align 4
  %cmp1229 = icmp eq i32 %712, 100000
  br i1 %cmp1229, label %if.then.1231, label %if.end.1239

if.then.1231:                                     ; preds = %for.body.1223
  %713 = load i32, i32* %r1217, align 4
  %idxprom1232 = sext i32 %713 to i64
  %arrayidx1233 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1232
  %714 = load i32, i32* %arrayidx1233, align 4
  %715 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1234 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %715, i32 0, i32 7
  %716 = load i32, i32* %queue_end1234, align 4
  %inc1235 = add nsw i32 %716, 1
  store i32 %inc1235, i32* %queue_end1234, align 4
  %idxprom1236 = sext i32 %716 to i64
  %717 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1237 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %717, i32 0, i32 5
  %arrayidx1238 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1237, i32 0, i64 %idxprom1236
  store i32 %714, i32* %arrayidx1238, align 4
  br label %if.end.1239

if.end.1239:                                      ; preds = %if.then.1231, %for.body.1223
  %718 = load i32, i32* %distance, align 4
  %add1240 = add nsw i32 %718, 200
  %719 = load i32, i32* %r1217, align 4
  %idxprom1241 = sext i32 %719 to i64
  %arrayidx1242 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1241
  %720 = load i32, i32* %arrayidx1242, align 4
  %idxprom1243 = sext i32 %720 to i64
  %721 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1244 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %721, i32 0, i32 0
  %arrayidx1245 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1244, i32 0, i64 %idxprom1243
  store i32 %add1240, i32* %arrayidx1245, align 4
  %722 = load i32, i32* %r1217, align 4
  %idxprom1246 = sext i32 %722 to i64
  %arrayidx1247 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1246
  %723 = load i32, i32* %arrayidx1247, align 4
  %idxprom1248 = sext i32 %723 to i64
  %724 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1249 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %724, i32 0, i32 1
  %arrayidx1250 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1249, i32 0, i64 %idxprom1248
  store i32 200, i32* %arrayidx1250, align 4
  %725 = load i32, i32* %pos, align 4
  %726 = load i32, i32* %r1217, align 4
  %idxprom1251 = sext i32 %726 to i64
  %arrayidx1252 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1251
  %727 = load i32, i32* %arrayidx1252, align 4
  %idxprom1253 = sext i32 %727 to i64
  %728 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1254 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %728, i32 0, i32 2
  %arrayidx1255 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1254, i32 0, i64 %idxprom1253
  store i32 %725, i32* %arrayidx1255, align 4
  %729 = load i32, i32* %apos, align 4
  %730 = load i32, i32* %r1217, align 4
  %idxprom1256 = sext i32 %730 to i64
  %arrayidx1257 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1256
  %731 = load i32, i32* %arrayidx1257, align 4
  %idxprom1258 = sext i32 %731 to i64
  %732 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11259 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %732, i32 0, i32 3
  %arrayidx1260 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11259, i32 0, i64 %idxprom1258
  store i32 %729, i32* %arrayidx1260, align 4
  %733 = load i32, i32* %r1217, align 4
  %idxprom1261 = sext i32 %733 to i64
  %arrayidx1262 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1261
  %734 = load i32, i32* %arrayidx1262, align 4
  %idxprom1263 = sext i32 %734 to i64
  %735 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21264 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %735, i32 0, i32 4
  %arrayidx1265 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21264, i32 0, i64 %idxprom1263
  store i32 0, i32* %arrayidx1265, align 4
  %736 = load i32, i32* %r1217, align 4
  %idxprom1266 = sext i32 %736 to i64
  %arrayidx1267 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1266
  %737 = load i32, i32* %arrayidx1267, align 4
  %738 = load i32, i32* %target.addr, align 4
  %cmp1268 = icmp eq i32 %737, %738
  br i1 %cmp1268, label %land.lhs.true.1270, label %if.end.1277

land.lhs.true.1270:                               ; preds = %if.end.1239
  %739 = load i32, i32* %distance, align 4
  %add1271 = add nsw i32 %739, 200
  %740 = load i32, i32* %cutoff_distance, align 4
  %cmp1272 = icmp slt i32 %add1271, %740
  br i1 %cmp1272, label %if.then.1274, label %if.end.1277

if.then.1274:                                     ; preds = %land.lhs.true.1270
  %741 = load i32, i32* %distance, align 4
  %add1275 = add nsw i32 %741, 200
  %sub1276 = sub nsw i32 %add1275, 1
  store i32 %sub1276, i32* %cutoff_distance, align 4
  br label %if.end.1277

if.end.1277:                                      ; preds = %if.then.1274, %land.lhs.true.1270, %if.end.1239
  br label %for.inc.1278

for.inc.1278:                                     ; preds = %if.end.1277
  %742 = load i32, i32* %r1217, align 4
  %inc1279 = add nsw i32 %742, 1
  store i32 %inc1279, i32* %r1217, align 4
  br label %for.cond.1220

for.end.1280:                                     ; preds = %for.cond.1220
  br label %if.end.1281

if.end.1281:                                      ; preds = %for.end.1280, %if.end.1198
  br label %if.end.1282

if.end.1282:                                      ; preds = %if.end.1281, %do.body.1173
  br label %do.end.1283

do.end.1283:                                      ; preds = %if.end.1282
  br label %if.end.1534

if.else.1284:                                     ; preds = %land.lhs.true.1166, %if.else.1160
  %743 = load i32, i32* %apos, align 4
  %idxprom1285 = sext i32 %743 to i64
  %arrayidx1286 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1285
  %744 = load i8, i8* %arrayidx1286, align 1
  %conv1287 = zext i8 %744 to i32
  %cmp1288 = icmp ne i32 %conv1287, 0
  br i1 %cmp1288, label %land.lhs.true.1290, label %if.else.1408

land.lhs.true.1290:                               ; preds = %if.else.1284
  %745 = load i32, i32* %fpos, align 4
  %idxprom1291 = sext i32 %745 to i64
  %arrayidx1292 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1291
  %746 = load i8, i8* %arrayidx1292, align 1
  %conv1293 = zext i8 %746 to i32
  %cmp1294 = icmp eq i32 %conv1293, 0
  br i1 %cmp1294, label %if.then.1296, label %if.else.1408

if.then.1296:                                     ; preds = %land.lhs.true.1290
  br label %do.body.1297

do.body.1297:                                     ; preds = %if.then.1296
  %747 = load i32, i32* %distance, align 4
  %add1298 = add nsw i32 %747, 200
  %748 = load i32, i32* %epos, align 4
  %idxprom1299 = sext i32 %748 to i64
  %749 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1300 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %749, i32 0, i32 0
  %arrayidx1301 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1300, i32 0, i64 %idxprom1299
  %750 = load i32, i32* %arrayidx1301, align 4
  %cmp1302 = icmp slt i32 %add1298, %750
  br i1 %cmp1302, label %if.then.1304, label %if.end.1406

if.then.1304:                                     ; preds = %do.body.1297
  %751 = load i32, i32* %epos, align 4
  %idxprom1305 = sext i32 %751 to i64
  %arrayidx1306 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1305
  %752 = load i8, i8* %arrayidx1306, align 1
  %conv1307 = zext i8 %752 to i32
  %cmp1308 = icmp eq i32 %conv1307, 0
  br i1 %cmp1308, label %if.then.1310, label %if.else.1339

if.then.1310:                                     ; preds = %if.then.1304
  %753 = load i32, i32* %epos, align 4
  %idxprom1311 = sext i32 %753 to i64
  %754 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1312 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %754, i32 0, i32 0
  %arrayidx1313 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1312, i32 0, i64 %idxprom1311
  %755 = load i32, i32* %arrayidx1313, align 4
  %cmp1314 = icmp eq i32 %755, 100000
  br i1 %cmp1314, label %if.then.1316, label %if.end.1322

if.then.1316:                                     ; preds = %if.then.1310
  %756 = load i32, i32* %epos, align 4
  %757 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1317 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %757, i32 0, i32 7
  %758 = load i32, i32* %queue_end1317, align 4
  %inc1318 = add nsw i32 %758, 1
  store i32 %inc1318, i32* %queue_end1317, align 4
  %idxprom1319 = sext i32 %758 to i64
  %759 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1320 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %759, i32 0, i32 5
  %arrayidx1321 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1320, i32 0, i64 %idxprom1319
  store i32 %756, i32* %arrayidx1321, align 4
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.then.1316, %if.then.1310
  %760 = load i32, i32* %distance, align 4
  %add1323 = add nsw i32 %760, 200
  %761 = load i32, i32* %epos, align 4
  %idxprom1324 = sext i32 %761 to i64
  %762 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1325 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %762, i32 0, i32 0
  %arrayidx1326 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1325, i32 0, i64 %idxprom1324
  store i32 %add1323, i32* %arrayidx1326, align 4
  %763 = load i32, i32* %epos, align 4
  %idxprom1327 = sext i32 %763 to i64
  %764 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1328 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %764, i32 0, i32 1
  %arrayidx1329 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1328, i32 0, i64 %idxprom1327
  store i32 200, i32* %arrayidx1329, align 4
  %765 = load i32, i32* %pos, align 4
  %766 = load i32, i32* %epos, align 4
  %idxprom1330 = sext i32 %766 to i64
  %767 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1331 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %767, i32 0, i32 2
  %arrayidx1332 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1331, i32 0, i64 %idxprom1330
  store i32 %765, i32* %arrayidx1332, align 4
  %768 = load i32, i32* %fpos, align 4
  %769 = load i32, i32* %epos, align 4
  %idxprom1333 = sext i32 %769 to i64
  %770 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11334 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %770, i32 0, i32 3
  %arrayidx1335 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11334, i32 0, i64 %idxprom1333
  store i32 %768, i32* %arrayidx1335, align 4
  %771 = load i32, i32* %epos, align 4
  %idxprom1336 = sext i32 %771 to i64
  %772 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21337 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %772, i32 0, i32 4
  %arrayidx1338 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21337, i32 0, i64 %idxprom1336
  store i32 0, i32* %arrayidx1338, align 4
  br label %if.end.1405

if.else.1339:                                     ; preds = %if.then.1304
  %773 = load i32, i32* %epos, align 4
  %arraydecay1342 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1343 = call i32 @findstones(i32 %773, i32 361, i32* %arraydecay1342)
  store i32 %call1343, i32* %num_stones, align 4
  store i32 0, i32* %r1341, align 4
  br label %for.cond.1344

for.cond.1344:                                    ; preds = %for.inc.1402, %if.else.1339
  %774 = load i32, i32* %r1341, align 4
  %775 = load i32, i32* %num_stones, align 4
  %cmp1345 = icmp slt i32 %774, %775
  br i1 %cmp1345, label %for.body.1347, label %for.end.1404

for.body.1347:                                    ; preds = %for.cond.1344
  %776 = load i32, i32* %r1341, align 4
  %idxprom1348 = sext i32 %776 to i64
  %arrayidx1349 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1348
  %777 = load i32, i32* %arrayidx1349, align 4
  %idxprom1350 = sext i32 %777 to i64
  %778 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1351 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %778, i32 0, i32 0
  %arrayidx1352 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1351, i32 0, i64 %idxprom1350
  %779 = load i32, i32* %arrayidx1352, align 4
  %cmp1353 = icmp eq i32 %779, 100000
  br i1 %cmp1353, label %if.then.1355, label %if.end.1363

if.then.1355:                                     ; preds = %for.body.1347
  %780 = load i32, i32* %r1341, align 4
  %idxprom1356 = sext i32 %780 to i64
  %arrayidx1357 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1356
  %781 = load i32, i32* %arrayidx1357, align 4
  %782 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1358 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %782, i32 0, i32 7
  %783 = load i32, i32* %queue_end1358, align 4
  %inc1359 = add nsw i32 %783, 1
  store i32 %inc1359, i32* %queue_end1358, align 4
  %idxprom1360 = sext i32 %783 to i64
  %784 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1361 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %784, i32 0, i32 5
  %arrayidx1362 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1361, i32 0, i64 %idxprom1360
  store i32 %781, i32* %arrayidx1362, align 4
  br label %if.end.1363

if.end.1363:                                      ; preds = %if.then.1355, %for.body.1347
  %785 = load i32, i32* %distance, align 4
  %add1364 = add nsw i32 %785, 200
  %786 = load i32, i32* %r1341, align 4
  %idxprom1365 = sext i32 %786 to i64
  %arrayidx1366 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1365
  %787 = load i32, i32* %arrayidx1366, align 4
  %idxprom1367 = sext i32 %787 to i64
  %788 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1368 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %788, i32 0, i32 0
  %arrayidx1369 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1368, i32 0, i64 %idxprom1367
  store i32 %add1364, i32* %arrayidx1369, align 4
  %789 = load i32, i32* %r1341, align 4
  %idxprom1370 = sext i32 %789 to i64
  %arrayidx1371 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1370
  %790 = load i32, i32* %arrayidx1371, align 4
  %idxprom1372 = sext i32 %790 to i64
  %791 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1373 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %791, i32 0, i32 1
  %arrayidx1374 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1373, i32 0, i64 %idxprom1372
  store i32 200, i32* %arrayidx1374, align 4
  %792 = load i32, i32* %pos, align 4
  %793 = load i32, i32* %r1341, align 4
  %idxprom1375 = sext i32 %793 to i64
  %arrayidx1376 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1375
  %794 = load i32, i32* %arrayidx1376, align 4
  %idxprom1377 = sext i32 %794 to i64
  %795 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1378 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %795, i32 0, i32 2
  %arrayidx1379 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1378, i32 0, i64 %idxprom1377
  store i32 %792, i32* %arrayidx1379, align 4
  %796 = load i32, i32* %fpos, align 4
  %797 = load i32, i32* %r1341, align 4
  %idxprom1380 = sext i32 %797 to i64
  %arrayidx1381 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1380
  %798 = load i32, i32* %arrayidx1381, align 4
  %idxprom1382 = sext i32 %798 to i64
  %799 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11383 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %799, i32 0, i32 3
  %arrayidx1384 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11383, i32 0, i64 %idxprom1382
  store i32 %796, i32* %arrayidx1384, align 4
  %800 = load i32, i32* %r1341, align 4
  %idxprom1385 = sext i32 %800 to i64
  %arrayidx1386 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1385
  %801 = load i32, i32* %arrayidx1386, align 4
  %idxprom1387 = sext i32 %801 to i64
  %802 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21388 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %802, i32 0, i32 4
  %arrayidx1389 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21388, i32 0, i64 %idxprom1387
  store i32 0, i32* %arrayidx1389, align 4
  %803 = load i32, i32* %r1341, align 4
  %idxprom1390 = sext i32 %803 to i64
  %arrayidx1391 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1390
  %804 = load i32, i32* %arrayidx1391, align 4
  %805 = load i32, i32* %target.addr, align 4
  %cmp1392 = icmp eq i32 %804, %805
  br i1 %cmp1392, label %land.lhs.true.1394, label %if.end.1401

land.lhs.true.1394:                               ; preds = %if.end.1363
  %806 = load i32, i32* %distance, align 4
  %add1395 = add nsw i32 %806, 200
  %807 = load i32, i32* %cutoff_distance, align 4
  %cmp1396 = icmp slt i32 %add1395, %807
  br i1 %cmp1396, label %if.then.1398, label %if.end.1401

if.then.1398:                                     ; preds = %land.lhs.true.1394
  %808 = load i32, i32* %distance, align 4
  %add1399 = add nsw i32 %808, 200
  %sub1400 = sub nsw i32 %add1399, 1
  store i32 %sub1400, i32* %cutoff_distance, align 4
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1398, %land.lhs.true.1394, %if.end.1363
  br label %for.inc.1402

for.inc.1402:                                     ; preds = %if.end.1401
  %809 = load i32, i32* %r1341, align 4
  %inc1403 = add nsw i32 %809, 1
  store i32 %inc1403, i32* %r1341, align 4
  br label %for.cond.1344

for.end.1404:                                     ; preds = %for.cond.1344
  br label %if.end.1405

if.end.1405:                                      ; preds = %for.end.1404, %if.end.1322
  br label %if.end.1406

if.end.1406:                                      ; preds = %if.end.1405, %do.body.1297
  br label %do.end.1407

do.end.1407:                                      ; preds = %if.end.1406
  br label %if.end.1533

if.else.1408:                                     ; preds = %land.lhs.true.1290, %if.else.1284
  %810 = load i32, i32* %apos, align 4
  %idxprom1409 = sext i32 %810 to i64
  %arrayidx1410 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1409
  %811 = load i8, i8* %arrayidx1410, align 1
  %conv1411 = zext i8 %811 to i32
  %cmp1412 = icmp ne i32 %conv1411, 0
  br i1 %cmp1412, label %land.lhs.true.1414, label %if.end.1532

land.lhs.true.1414:                               ; preds = %if.else.1408
  %812 = load i32, i32* %fpos, align 4
  %idxprom1415 = sext i32 %812 to i64
  %arrayidx1416 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1415
  %813 = load i8, i8* %arrayidx1416, align 1
  %conv1417 = zext i8 %813 to i32
  %cmp1418 = icmp ne i32 %conv1417, 0
  br i1 %cmp1418, label %if.then.1420, label %if.end.1532

if.then.1420:                                     ; preds = %land.lhs.true.1414
  br label %do.body.1421

do.body.1421:                                     ; preds = %if.then.1420
  %814 = load i32, i32* %distance, align 4
  %add1422 = add nsw i32 %814, 200
  %815 = load i32, i32* %epos, align 4
  %idxprom1423 = sext i32 %815 to i64
  %816 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1424 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %816, i32 0, i32 0
  %arrayidx1425 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1424, i32 0, i64 %idxprom1423
  %817 = load i32, i32* %arrayidx1425, align 4
  %cmp1426 = icmp slt i32 %add1422, %817
  br i1 %cmp1426, label %if.then.1428, label %if.end.1530

if.then.1428:                                     ; preds = %do.body.1421
  %818 = load i32, i32* %epos, align 4
  %idxprom1429 = sext i32 %818 to i64
  %arrayidx1430 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1429
  %819 = load i8, i8* %arrayidx1430, align 1
  %conv1431 = zext i8 %819 to i32
  %cmp1432 = icmp eq i32 %conv1431, 0
  br i1 %cmp1432, label %if.then.1434, label %if.else.1463

if.then.1434:                                     ; preds = %if.then.1428
  %820 = load i32, i32* %epos, align 4
  %idxprom1435 = sext i32 %820 to i64
  %821 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1436 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %821, i32 0, i32 0
  %arrayidx1437 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1436, i32 0, i64 %idxprom1435
  %822 = load i32, i32* %arrayidx1437, align 4
  %cmp1438 = icmp eq i32 %822, 100000
  br i1 %cmp1438, label %if.then.1440, label %if.end.1446

if.then.1440:                                     ; preds = %if.then.1434
  %823 = load i32, i32* %epos, align 4
  %824 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1441 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %824, i32 0, i32 7
  %825 = load i32, i32* %queue_end1441, align 4
  %inc1442 = add nsw i32 %825, 1
  store i32 %inc1442, i32* %queue_end1441, align 4
  %idxprom1443 = sext i32 %825 to i64
  %826 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1444 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %826, i32 0, i32 5
  %arrayidx1445 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1444, i32 0, i64 %idxprom1443
  store i32 %823, i32* %arrayidx1445, align 4
  br label %if.end.1446

if.end.1446:                                      ; preds = %if.then.1440, %if.then.1434
  %827 = load i32, i32* %distance, align 4
  %add1447 = add nsw i32 %827, 200
  %828 = load i32, i32* %epos, align 4
  %idxprom1448 = sext i32 %828 to i64
  %829 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1449 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %829, i32 0, i32 0
  %arrayidx1450 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1449, i32 0, i64 %idxprom1448
  store i32 %add1447, i32* %arrayidx1450, align 4
  %830 = load i32, i32* %epos, align 4
  %idxprom1451 = sext i32 %830 to i64
  %831 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1452 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %831, i32 0, i32 1
  %arrayidx1453 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1452, i32 0, i64 %idxprom1451
  store i32 200, i32* %arrayidx1453, align 4
  %832 = load i32, i32* %pos, align 4
  %833 = load i32, i32* %epos, align 4
  %idxprom1454 = sext i32 %833 to i64
  %834 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1455 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %834, i32 0, i32 2
  %arrayidx1456 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1455, i32 0, i64 %idxprom1454
  store i32 %832, i32* %arrayidx1456, align 4
  %835 = load i32, i32* %epos, align 4
  %idxprom1457 = sext i32 %835 to i64
  %836 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11458 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %836, i32 0, i32 3
  %arrayidx1459 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11458, i32 0, i64 %idxprom1457
  store i32 0, i32* %arrayidx1459, align 4
  %837 = load i32, i32* %epos, align 4
  %idxprom1460 = sext i32 %837 to i64
  %838 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21461 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %838, i32 0, i32 4
  %arrayidx1462 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21461, i32 0, i64 %idxprom1460
  store i32 0, i32* %arrayidx1462, align 4
  br label %if.end.1529

if.else.1463:                                     ; preds = %if.then.1428
  %839 = load i32, i32* %epos, align 4
  %arraydecay1466 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1467 = call i32 @findstones(i32 %839, i32 361, i32* %arraydecay1466)
  store i32 %call1467, i32* %num_stones, align 4
  store i32 0, i32* %r1465, align 4
  br label %for.cond.1468

for.cond.1468:                                    ; preds = %for.inc.1526, %if.else.1463
  %840 = load i32, i32* %r1465, align 4
  %841 = load i32, i32* %num_stones, align 4
  %cmp1469 = icmp slt i32 %840, %841
  br i1 %cmp1469, label %for.body.1471, label %for.end.1528

for.body.1471:                                    ; preds = %for.cond.1468
  %842 = load i32, i32* %r1465, align 4
  %idxprom1472 = sext i32 %842 to i64
  %arrayidx1473 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1472
  %843 = load i32, i32* %arrayidx1473, align 4
  %idxprom1474 = sext i32 %843 to i64
  %844 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1475 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %844, i32 0, i32 0
  %arrayidx1476 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1475, i32 0, i64 %idxprom1474
  %845 = load i32, i32* %arrayidx1476, align 4
  %cmp1477 = icmp eq i32 %845, 100000
  br i1 %cmp1477, label %if.then.1479, label %if.end.1487

if.then.1479:                                     ; preds = %for.body.1471
  %846 = load i32, i32* %r1465, align 4
  %idxprom1480 = sext i32 %846 to i64
  %arrayidx1481 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1480
  %847 = load i32, i32* %arrayidx1481, align 4
  %848 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1482 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %848, i32 0, i32 7
  %849 = load i32, i32* %queue_end1482, align 4
  %inc1483 = add nsw i32 %849, 1
  store i32 %inc1483, i32* %queue_end1482, align 4
  %idxprom1484 = sext i32 %849 to i64
  %850 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1485 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %850, i32 0, i32 5
  %arrayidx1486 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1485, i32 0, i64 %idxprom1484
  store i32 %847, i32* %arrayidx1486, align 4
  br label %if.end.1487

if.end.1487:                                      ; preds = %if.then.1479, %for.body.1471
  %851 = load i32, i32* %distance, align 4
  %add1488 = add nsw i32 %851, 200
  %852 = load i32, i32* %r1465, align 4
  %idxprom1489 = sext i32 %852 to i64
  %arrayidx1490 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1489
  %853 = load i32, i32* %arrayidx1490, align 4
  %idxprom1491 = sext i32 %853 to i64
  %854 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1492 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %854, i32 0, i32 0
  %arrayidx1493 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1492, i32 0, i64 %idxprom1491
  store i32 %add1488, i32* %arrayidx1493, align 4
  %855 = load i32, i32* %r1465, align 4
  %idxprom1494 = sext i32 %855 to i64
  %arrayidx1495 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1494
  %856 = load i32, i32* %arrayidx1495, align 4
  %idxprom1496 = sext i32 %856 to i64
  %857 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1497 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %857, i32 0, i32 1
  %arrayidx1498 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1497, i32 0, i64 %idxprom1496
  store i32 200, i32* %arrayidx1498, align 4
  %858 = load i32, i32* %pos, align 4
  %859 = load i32, i32* %r1465, align 4
  %idxprom1499 = sext i32 %859 to i64
  %arrayidx1500 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1499
  %860 = load i32, i32* %arrayidx1500, align 4
  %idxprom1501 = sext i32 %860 to i64
  %861 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1502 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %861, i32 0, i32 2
  %arrayidx1503 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1502, i32 0, i64 %idxprom1501
  store i32 %858, i32* %arrayidx1503, align 4
  %862 = load i32, i32* %r1465, align 4
  %idxprom1504 = sext i32 %862 to i64
  %arrayidx1505 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1504
  %863 = load i32, i32* %arrayidx1505, align 4
  %idxprom1506 = sext i32 %863 to i64
  %864 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11507 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %864, i32 0, i32 3
  %arrayidx1508 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11507, i32 0, i64 %idxprom1506
  store i32 0, i32* %arrayidx1508, align 4
  %865 = load i32, i32* %r1465, align 4
  %idxprom1509 = sext i32 %865 to i64
  %arrayidx1510 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1509
  %866 = load i32, i32* %arrayidx1510, align 4
  %idxprom1511 = sext i32 %866 to i64
  %867 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21512 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %867, i32 0, i32 4
  %arrayidx1513 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21512, i32 0, i64 %idxprom1511
  store i32 0, i32* %arrayidx1513, align 4
  %868 = load i32, i32* %r1465, align 4
  %idxprom1514 = sext i32 %868 to i64
  %arrayidx1515 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1514
  %869 = load i32, i32* %arrayidx1515, align 4
  %870 = load i32, i32* %target.addr, align 4
  %cmp1516 = icmp eq i32 %869, %870
  br i1 %cmp1516, label %land.lhs.true.1518, label %if.end.1525

land.lhs.true.1518:                               ; preds = %if.end.1487
  %871 = load i32, i32* %distance, align 4
  %add1519 = add nsw i32 %871, 200
  %872 = load i32, i32* %cutoff_distance, align 4
  %cmp1520 = icmp slt i32 %add1519, %872
  br i1 %cmp1520, label %if.then.1522, label %if.end.1525

if.then.1522:                                     ; preds = %land.lhs.true.1518
  %873 = load i32, i32* %distance, align 4
  %add1523 = add nsw i32 %873, 200
  %sub1524 = sub nsw i32 %add1523, 1
  store i32 %sub1524, i32* %cutoff_distance, align 4
  br label %if.end.1525

if.end.1525:                                      ; preds = %if.then.1522, %land.lhs.true.1518, %if.end.1487
  br label %for.inc.1526

for.inc.1526:                                     ; preds = %if.end.1525
  %874 = load i32, i32* %r1465, align 4
  %inc1527 = add nsw i32 %874, 1
  store i32 %inc1527, i32* %r1465, align 4
  br label %for.cond.1468

for.end.1528:                                     ; preds = %for.cond.1468
  br label %if.end.1529

if.end.1529:                                      ; preds = %for.end.1528, %if.end.1446
  br label %if.end.1530

if.end.1530:                                      ; preds = %if.end.1529, %do.body.1421
  br label %do.end.1531

do.end.1531:                                      ; preds = %if.end.1530
  br label %if.end.1532

if.end.1532:                                      ; preds = %do.end.1531, %land.lhs.true.1414, %if.else.1408
  br label %if.end.1533

if.end.1533:                                      ; preds = %if.end.1532, %do.end.1407
  br label %if.end.1534

if.end.1534:                                      ; preds = %if.end.1533, %do.end.1283
  br label %if.end.1535

if.end.1535:                                      ; preds = %if.end.1534, %do.end.1159
  br label %if.end.1536

if.end.1536:                                      ; preds = %if.end.1535, %land.lhs.true.1032, %land.lhs.true.1023, %lor.lhs.false.1017, %land.lhs.true.1007, %land.lhs.true.998, %lor.lhs.false, %land.lhs.true.983, %if.then.977
  %875 = load i32, i32* %ipos, align 4
  %idxprom1537 = sext i32 %875 to i64
  %arrayidx1538 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1537
  %876 = load i8, i8* %arrayidx1538, align 1
  %conv1539 = zext i8 %876 to i32
  %cmp1540 = icmp eq i32 %conv1539, 0
  br i1 %cmp1540, label %land.lhs.true.1542, label %if.end.2096

land.lhs.true.1542:                               ; preds = %if.end.1536
  %877 = load i32, i32* %ipos, align 4
  %878 = load i32, i32* %color, align 4
  %call1543 = call i32 @approxlib(i32 %877, i32 %878, i32 3, i32* null)
  %cmp1544 = icmp sge i32 %call1543, 3
  br i1 %cmp1544, label %land.lhs.true.1546, label %if.end.2096

land.lhs.true.1546:                               ; preds = %land.lhs.true.1542
  %879 = load i32, i32* %hpos, align 4
  %idxprom1547 = sext i32 %879 to i64
  %arrayidx1548 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1547
  %880 = load i8, i8* %arrayidx1548, align 1
  %conv1549 = zext i8 %880 to i32
  %881 = load i32, i32* %color, align 4
  %cmp1550 = icmp eq i32 %conv1549, %881
  br i1 %cmp1550, label %land.lhs.true.1571, label %lor.lhs.false.1552

lor.lhs.false.1552:                               ; preds = %land.lhs.true.1546
  %882 = load i32, i32* %hpos, align 4
  %idxprom1553 = sext i32 %882 to i64
  %arrayidx1554 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1553
  %883 = load i8, i8* %arrayidx1554, align 1
  %conv1555 = zext i8 %883 to i32
  %cmp1556 = icmp eq i32 %conv1555, 0
  br i1 %cmp1556, label %land.lhs.true.1558, label %if.end.2096

land.lhs.true.1558:                               ; preds = %lor.lhs.false.1552
  %884 = load i32, i32* %pos, align 4
  %idxprom1559 = sext i32 %884 to i64
  %885 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11560 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %885, i32 0, i32 3
  %arrayidx1561 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11560, i32 0, i64 %idxprom1559
  %886 = load i32, i32* %arrayidx1561, align 4
  %887 = load i32, i32* %pos, align 4
  %idxprom1562 = sext i32 %887 to i64
  %888 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21563 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %888, i32 0, i32 4
  %arrayidx1564 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21563, i32 0, i64 %idxprom1562
  %889 = load i32, i32* %arrayidx1564, align 4
  %890 = load i32, i32* %hpos, align 4
  %891 = load i32, i32* %gpos, align 4
  %892 = load i32, i32* %color, align 4
  %call1565 = call i32 @common_vulnerabilities(i32 %886, i32 %889, i32 %890, i32 %891, i32 %892)
  %tobool1566 = icmp ne i32 %call1565, 0
  br i1 %tobool1566, label %if.end.2096, label %land.lhs.true.1567

land.lhs.true.1567:                               ; preds = %land.lhs.true.1558
  %893 = load i32, i32* %hpos, align 4
  %894 = load i32, i32* %other, align 4
  %call1568 = call i32 @approxlib(i32 %893, i32 %894, i32 3, i32* null)
  %cmp1569 = icmp sle i32 %call1568, 2
  br i1 %cmp1569, label %land.lhs.true.1571, label %if.end.2096

land.lhs.true.1571:                               ; preds = %land.lhs.true.1567, %land.lhs.true.1546
  %895 = load i32, i32* %jpos, align 4
  %idxprom1572 = sext i32 %895 to i64
  %arrayidx1573 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1572
  %896 = load i8, i8* %arrayidx1573, align 1
  %conv1574 = zext i8 %896 to i32
  %897 = load i32, i32* %color, align 4
  %cmp1575 = icmp eq i32 %conv1574, %897
  br i1 %cmp1575, label %if.then.1596, label %lor.lhs.false.1577

lor.lhs.false.1577:                               ; preds = %land.lhs.true.1571
  %898 = load i32, i32* %jpos, align 4
  %idxprom1578 = sext i32 %898 to i64
  %arrayidx1579 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1578
  %899 = load i8, i8* %arrayidx1579, align 1
  %conv1580 = zext i8 %899 to i32
  %cmp1581 = icmp eq i32 %conv1580, 0
  br i1 %cmp1581, label %land.lhs.true.1583, label %if.end.2096

land.lhs.true.1583:                               ; preds = %lor.lhs.false.1577
  %900 = load i32, i32* %pos, align 4
  %idxprom1584 = sext i32 %900 to i64
  %901 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11585 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %901, i32 0, i32 3
  %arrayidx1586 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11585, i32 0, i64 %idxprom1584
  %902 = load i32, i32* %arrayidx1586, align 4
  %903 = load i32, i32* %pos, align 4
  %idxprom1587 = sext i32 %903 to i64
  %904 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21588 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %904, i32 0, i32 4
  %arrayidx1589 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21588, i32 0, i64 %idxprom1587
  %905 = load i32, i32* %arrayidx1589, align 4
  %906 = load i32, i32* %jpos, align 4
  %907 = load i32, i32* %gpos, align 4
  %908 = load i32, i32* %color, align 4
  %call1590 = call i32 @common_vulnerabilities(i32 %902, i32 %905, i32 %906, i32 %907, i32 %908)
  %tobool1591 = icmp ne i32 %call1590, 0
  br i1 %tobool1591, label %if.end.2096, label %land.lhs.true.1592

land.lhs.true.1592:                               ; preds = %land.lhs.true.1583
  %909 = load i32, i32* %jpos, align 4
  %910 = load i32, i32* %other, align 4
  %call1593 = call i32 @approxlib(i32 %909, i32 %910, i32 3, i32* null)
  %cmp1594 = icmp sle i32 %call1593, 2
  br i1 %cmp1594, label %if.then.1596, label %if.end.2096

if.then.1596:                                     ; preds = %land.lhs.true.1592, %land.lhs.true.1571
  %911 = load i32, i32* %hpos, align 4
  %idxprom1597 = sext i32 %911 to i64
  %arrayidx1598 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1597
  %912 = load i8, i8* %arrayidx1598, align 1
  %conv1599 = zext i8 %912 to i32
  %cmp1600 = icmp eq i32 %conv1599, 0
  br i1 %cmp1600, label %land.lhs.true.1602, label %if.else.1720

land.lhs.true.1602:                               ; preds = %if.then.1596
  %913 = load i32, i32* %jpos, align 4
  %idxprom1603 = sext i32 %913 to i64
  %arrayidx1604 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1603
  %914 = load i8, i8* %arrayidx1604, align 1
  %conv1605 = zext i8 %914 to i32
  %cmp1606 = icmp eq i32 %conv1605, 0
  br i1 %cmp1606, label %if.then.1608, label %if.else.1720

if.then.1608:                                     ; preds = %land.lhs.true.1602
  br label %do.body.1609

do.body.1609:                                     ; preds = %if.then.1608
  %915 = load i32, i32* %distance, align 4
  %add1610 = add nsw i32 %915, 200
  %916 = load i32, i32* %epos, align 4
  %idxprom1611 = sext i32 %916 to i64
  %917 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1612 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %917, i32 0, i32 0
  %arrayidx1613 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1612, i32 0, i64 %idxprom1611
  %918 = load i32, i32* %arrayidx1613, align 4
  %cmp1614 = icmp slt i32 %add1610, %918
  br i1 %cmp1614, label %if.then.1616, label %if.end.1718

if.then.1616:                                     ; preds = %do.body.1609
  %919 = load i32, i32* %epos, align 4
  %idxprom1617 = sext i32 %919 to i64
  %arrayidx1618 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1617
  %920 = load i8, i8* %arrayidx1618, align 1
  %conv1619 = zext i8 %920 to i32
  %cmp1620 = icmp eq i32 %conv1619, 0
  br i1 %cmp1620, label %if.then.1622, label %if.else.1651

if.then.1622:                                     ; preds = %if.then.1616
  %921 = load i32, i32* %epos, align 4
  %idxprom1623 = sext i32 %921 to i64
  %922 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1624 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %922, i32 0, i32 0
  %arrayidx1625 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1624, i32 0, i64 %idxprom1623
  %923 = load i32, i32* %arrayidx1625, align 4
  %cmp1626 = icmp eq i32 %923, 100000
  br i1 %cmp1626, label %if.then.1628, label %if.end.1634

if.then.1628:                                     ; preds = %if.then.1622
  %924 = load i32, i32* %epos, align 4
  %925 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1629 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %925, i32 0, i32 7
  %926 = load i32, i32* %queue_end1629, align 4
  %inc1630 = add nsw i32 %926, 1
  store i32 %inc1630, i32* %queue_end1629, align 4
  %idxprom1631 = sext i32 %926 to i64
  %927 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1632 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %927, i32 0, i32 5
  %arrayidx1633 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1632, i32 0, i64 %idxprom1631
  store i32 %924, i32* %arrayidx1633, align 4
  br label %if.end.1634

if.end.1634:                                      ; preds = %if.then.1628, %if.then.1622
  %928 = load i32, i32* %distance, align 4
  %add1635 = add nsw i32 %928, 200
  %929 = load i32, i32* %epos, align 4
  %idxprom1636 = sext i32 %929 to i64
  %930 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1637 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %930, i32 0, i32 0
  %arrayidx1638 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1637, i32 0, i64 %idxprom1636
  store i32 %add1635, i32* %arrayidx1638, align 4
  %931 = load i32, i32* %epos, align 4
  %idxprom1639 = sext i32 %931 to i64
  %932 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1640 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %932, i32 0, i32 1
  %arrayidx1641 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1640, i32 0, i64 %idxprom1639
  store i32 200, i32* %arrayidx1641, align 4
  %933 = load i32, i32* %pos, align 4
  %934 = load i32, i32* %epos, align 4
  %idxprom1642 = sext i32 %934 to i64
  %935 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1643 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %935, i32 0, i32 2
  %arrayidx1644 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1643, i32 0, i64 %idxprom1642
  store i32 %933, i32* %arrayidx1644, align 4
  %936 = load i32, i32* %hpos, align 4
  %937 = load i32, i32* %epos, align 4
  %idxprom1645 = sext i32 %937 to i64
  %938 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11646 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %938, i32 0, i32 3
  %arrayidx1647 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11646, i32 0, i64 %idxprom1645
  store i32 %936, i32* %arrayidx1647, align 4
  %939 = load i32, i32* %jpos, align 4
  %940 = load i32, i32* %epos, align 4
  %idxprom1648 = sext i32 %940 to i64
  %941 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21649 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %941, i32 0, i32 4
  %arrayidx1650 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21649, i32 0, i64 %idxprom1648
  store i32 %939, i32* %arrayidx1650, align 4
  br label %if.end.1717

if.else.1651:                                     ; preds = %if.then.1616
  %942 = load i32, i32* %epos, align 4
  %arraydecay1654 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1655 = call i32 @findstones(i32 %942, i32 361, i32* %arraydecay1654)
  store i32 %call1655, i32* %num_stones, align 4
  store i32 0, i32* %r1653, align 4
  br label %for.cond.1656

for.cond.1656:                                    ; preds = %for.inc.1714, %if.else.1651
  %943 = load i32, i32* %r1653, align 4
  %944 = load i32, i32* %num_stones, align 4
  %cmp1657 = icmp slt i32 %943, %944
  br i1 %cmp1657, label %for.body.1659, label %for.end.1716

for.body.1659:                                    ; preds = %for.cond.1656
  %945 = load i32, i32* %r1653, align 4
  %idxprom1660 = sext i32 %945 to i64
  %arrayidx1661 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1660
  %946 = load i32, i32* %arrayidx1661, align 4
  %idxprom1662 = sext i32 %946 to i64
  %947 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1663 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %947, i32 0, i32 0
  %arrayidx1664 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1663, i32 0, i64 %idxprom1662
  %948 = load i32, i32* %arrayidx1664, align 4
  %cmp1665 = icmp eq i32 %948, 100000
  br i1 %cmp1665, label %if.then.1667, label %if.end.1675

if.then.1667:                                     ; preds = %for.body.1659
  %949 = load i32, i32* %r1653, align 4
  %idxprom1668 = sext i32 %949 to i64
  %arrayidx1669 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1668
  %950 = load i32, i32* %arrayidx1669, align 4
  %951 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1670 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %951, i32 0, i32 7
  %952 = load i32, i32* %queue_end1670, align 4
  %inc1671 = add nsw i32 %952, 1
  store i32 %inc1671, i32* %queue_end1670, align 4
  %idxprom1672 = sext i32 %952 to i64
  %953 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1673 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %953, i32 0, i32 5
  %arrayidx1674 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1673, i32 0, i64 %idxprom1672
  store i32 %950, i32* %arrayidx1674, align 4
  br label %if.end.1675

if.end.1675:                                      ; preds = %if.then.1667, %for.body.1659
  %954 = load i32, i32* %distance, align 4
  %add1676 = add nsw i32 %954, 200
  %955 = load i32, i32* %r1653, align 4
  %idxprom1677 = sext i32 %955 to i64
  %arrayidx1678 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1677
  %956 = load i32, i32* %arrayidx1678, align 4
  %idxprom1679 = sext i32 %956 to i64
  %957 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1680 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %957, i32 0, i32 0
  %arrayidx1681 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1680, i32 0, i64 %idxprom1679
  store i32 %add1676, i32* %arrayidx1681, align 4
  %958 = load i32, i32* %r1653, align 4
  %idxprom1682 = sext i32 %958 to i64
  %arrayidx1683 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1682
  %959 = load i32, i32* %arrayidx1683, align 4
  %idxprom1684 = sext i32 %959 to i64
  %960 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1685 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %960, i32 0, i32 1
  %arrayidx1686 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1685, i32 0, i64 %idxprom1684
  store i32 200, i32* %arrayidx1686, align 4
  %961 = load i32, i32* %pos, align 4
  %962 = load i32, i32* %r1653, align 4
  %idxprom1687 = sext i32 %962 to i64
  %arrayidx1688 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1687
  %963 = load i32, i32* %arrayidx1688, align 4
  %idxprom1689 = sext i32 %963 to i64
  %964 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1690 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %964, i32 0, i32 2
  %arrayidx1691 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1690, i32 0, i64 %idxprom1689
  store i32 %961, i32* %arrayidx1691, align 4
  %965 = load i32, i32* %hpos, align 4
  %966 = load i32, i32* %r1653, align 4
  %idxprom1692 = sext i32 %966 to i64
  %arrayidx1693 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1692
  %967 = load i32, i32* %arrayidx1693, align 4
  %idxprom1694 = sext i32 %967 to i64
  %968 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11695 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %968, i32 0, i32 3
  %arrayidx1696 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11695, i32 0, i64 %idxprom1694
  store i32 %965, i32* %arrayidx1696, align 4
  %969 = load i32, i32* %jpos, align 4
  %970 = load i32, i32* %r1653, align 4
  %idxprom1697 = sext i32 %970 to i64
  %arrayidx1698 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1697
  %971 = load i32, i32* %arrayidx1698, align 4
  %idxprom1699 = sext i32 %971 to i64
  %972 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21700 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %972, i32 0, i32 4
  %arrayidx1701 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21700, i32 0, i64 %idxprom1699
  store i32 %969, i32* %arrayidx1701, align 4
  %973 = load i32, i32* %r1653, align 4
  %idxprom1702 = sext i32 %973 to i64
  %arrayidx1703 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1702
  %974 = load i32, i32* %arrayidx1703, align 4
  %975 = load i32, i32* %target.addr, align 4
  %cmp1704 = icmp eq i32 %974, %975
  br i1 %cmp1704, label %land.lhs.true.1706, label %if.end.1713

land.lhs.true.1706:                               ; preds = %if.end.1675
  %976 = load i32, i32* %distance, align 4
  %add1707 = add nsw i32 %976, 200
  %977 = load i32, i32* %cutoff_distance, align 4
  %cmp1708 = icmp slt i32 %add1707, %977
  br i1 %cmp1708, label %if.then.1710, label %if.end.1713

if.then.1710:                                     ; preds = %land.lhs.true.1706
  %978 = load i32, i32* %distance, align 4
  %add1711 = add nsw i32 %978, 200
  %sub1712 = sub nsw i32 %add1711, 1
  store i32 %sub1712, i32* %cutoff_distance, align 4
  br label %if.end.1713

if.end.1713:                                      ; preds = %if.then.1710, %land.lhs.true.1706, %if.end.1675
  br label %for.inc.1714

for.inc.1714:                                     ; preds = %if.end.1713
  %979 = load i32, i32* %r1653, align 4
  %inc1715 = add nsw i32 %979, 1
  store i32 %inc1715, i32* %r1653, align 4
  br label %for.cond.1656

for.end.1716:                                     ; preds = %for.cond.1656
  br label %if.end.1717

if.end.1717:                                      ; preds = %for.end.1716, %if.end.1634
  br label %if.end.1718

if.end.1718:                                      ; preds = %if.end.1717, %do.body.1609
  br label %do.end.1719

do.end.1719:                                      ; preds = %if.end.1718
  br label %if.end.2095

if.else.1720:                                     ; preds = %land.lhs.true.1602, %if.then.1596
  %980 = load i32, i32* %hpos, align 4
  %idxprom1721 = sext i32 %980 to i64
  %arrayidx1722 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1721
  %981 = load i8, i8* %arrayidx1722, align 1
  %conv1723 = zext i8 %981 to i32
  %cmp1724 = icmp eq i32 %conv1723, 0
  br i1 %cmp1724, label %land.lhs.true.1726, label %if.else.1844

land.lhs.true.1726:                               ; preds = %if.else.1720
  %982 = load i32, i32* %jpos, align 4
  %idxprom1727 = sext i32 %982 to i64
  %arrayidx1728 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1727
  %983 = load i8, i8* %arrayidx1728, align 1
  %conv1729 = zext i8 %983 to i32
  %cmp1730 = icmp ne i32 %conv1729, 0
  br i1 %cmp1730, label %if.then.1732, label %if.else.1844

if.then.1732:                                     ; preds = %land.lhs.true.1726
  br label %do.body.1733

do.body.1733:                                     ; preds = %if.then.1732
  %984 = load i32, i32* %distance, align 4
  %add1734 = add nsw i32 %984, 200
  %985 = load i32, i32* %epos, align 4
  %idxprom1735 = sext i32 %985 to i64
  %986 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1736 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %986, i32 0, i32 0
  %arrayidx1737 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1736, i32 0, i64 %idxprom1735
  %987 = load i32, i32* %arrayidx1737, align 4
  %cmp1738 = icmp slt i32 %add1734, %987
  br i1 %cmp1738, label %if.then.1740, label %if.end.1842

if.then.1740:                                     ; preds = %do.body.1733
  %988 = load i32, i32* %epos, align 4
  %idxprom1741 = sext i32 %988 to i64
  %arrayidx1742 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1741
  %989 = load i8, i8* %arrayidx1742, align 1
  %conv1743 = zext i8 %989 to i32
  %cmp1744 = icmp eq i32 %conv1743, 0
  br i1 %cmp1744, label %if.then.1746, label %if.else.1775

if.then.1746:                                     ; preds = %if.then.1740
  %990 = load i32, i32* %epos, align 4
  %idxprom1747 = sext i32 %990 to i64
  %991 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1748 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %991, i32 0, i32 0
  %arrayidx1749 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1748, i32 0, i64 %idxprom1747
  %992 = load i32, i32* %arrayidx1749, align 4
  %cmp1750 = icmp eq i32 %992, 100000
  br i1 %cmp1750, label %if.then.1752, label %if.end.1758

if.then.1752:                                     ; preds = %if.then.1746
  %993 = load i32, i32* %epos, align 4
  %994 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1753 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %994, i32 0, i32 7
  %995 = load i32, i32* %queue_end1753, align 4
  %inc1754 = add nsw i32 %995, 1
  store i32 %inc1754, i32* %queue_end1753, align 4
  %idxprom1755 = sext i32 %995 to i64
  %996 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1756 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %996, i32 0, i32 5
  %arrayidx1757 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1756, i32 0, i64 %idxprom1755
  store i32 %993, i32* %arrayidx1757, align 4
  br label %if.end.1758

if.end.1758:                                      ; preds = %if.then.1752, %if.then.1746
  %997 = load i32, i32* %distance, align 4
  %add1759 = add nsw i32 %997, 200
  %998 = load i32, i32* %epos, align 4
  %idxprom1760 = sext i32 %998 to i64
  %999 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1761 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %999, i32 0, i32 0
  %arrayidx1762 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1761, i32 0, i64 %idxprom1760
  store i32 %add1759, i32* %arrayidx1762, align 4
  %1000 = load i32, i32* %epos, align 4
  %idxprom1763 = sext i32 %1000 to i64
  %1001 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1764 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1001, i32 0, i32 1
  %arrayidx1765 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1764, i32 0, i64 %idxprom1763
  store i32 200, i32* %arrayidx1765, align 4
  %1002 = load i32, i32* %pos, align 4
  %1003 = load i32, i32* %epos, align 4
  %idxprom1766 = sext i32 %1003 to i64
  %1004 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1767 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1004, i32 0, i32 2
  %arrayidx1768 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1767, i32 0, i64 %idxprom1766
  store i32 %1002, i32* %arrayidx1768, align 4
  %1005 = load i32, i32* %hpos, align 4
  %1006 = load i32, i32* %epos, align 4
  %idxprom1769 = sext i32 %1006 to i64
  %1007 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11770 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1007, i32 0, i32 3
  %arrayidx1771 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11770, i32 0, i64 %idxprom1769
  store i32 %1005, i32* %arrayidx1771, align 4
  %1008 = load i32, i32* %epos, align 4
  %idxprom1772 = sext i32 %1008 to i64
  %1009 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21773 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1009, i32 0, i32 4
  %arrayidx1774 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21773, i32 0, i64 %idxprom1772
  store i32 0, i32* %arrayidx1774, align 4
  br label %if.end.1841

if.else.1775:                                     ; preds = %if.then.1740
  %1010 = load i32, i32* %epos, align 4
  %arraydecay1778 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1779 = call i32 @findstones(i32 %1010, i32 361, i32* %arraydecay1778)
  store i32 %call1779, i32* %num_stones, align 4
  store i32 0, i32* %r1777, align 4
  br label %for.cond.1780

for.cond.1780:                                    ; preds = %for.inc.1838, %if.else.1775
  %1011 = load i32, i32* %r1777, align 4
  %1012 = load i32, i32* %num_stones, align 4
  %cmp1781 = icmp slt i32 %1011, %1012
  br i1 %cmp1781, label %for.body.1783, label %for.end.1840

for.body.1783:                                    ; preds = %for.cond.1780
  %1013 = load i32, i32* %r1777, align 4
  %idxprom1784 = sext i32 %1013 to i64
  %arrayidx1785 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1784
  %1014 = load i32, i32* %arrayidx1785, align 4
  %idxprom1786 = sext i32 %1014 to i64
  %1015 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1787 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1015, i32 0, i32 0
  %arrayidx1788 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1787, i32 0, i64 %idxprom1786
  %1016 = load i32, i32* %arrayidx1788, align 4
  %cmp1789 = icmp eq i32 %1016, 100000
  br i1 %cmp1789, label %if.then.1791, label %if.end.1799

if.then.1791:                                     ; preds = %for.body.1783
  %1017 = load i32, i32* %r1777, align 4
  %idxprom1792 = sext i32 %1017 to i64
  %arrayidx1793 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1792
  %1018 = load i32, i32* %arrayidx1793, align 4
  %1019 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1794 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1019, i32 0, i32 7
  %1020 = load i32, i32* %queue_end1794, align 4
  %inc1795 = add nsw i32 %1020, 1
  store i32 %inc1795, i32* %queue_end1794, align 4
  %idxprom1796 = sext i32 %1020 to i64
  %1021 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1797 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1021, i32 0, i32 5
  %arrayidx1798 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1797, i32 0, i64 %idxprom1796
  store i32 %1018, i32* %arrayidx1798, align 4
  br label %if.end.1799

if.end.1799:                                      ; preds = %if.then.1791, %for.body.1783
  %1022 = load i32, i32* %distance, align 4
  %add1800 = add nsw i32 %1022, 200
  %1023 = load i32, i32* %r1777, align 4
  %idxprom1801 = sext i32 %1023 to i64
  %arrayidx1802 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1801
  %1024 = load i32, i32* %arrayidx1802, align 4
  %idxprom1803 = sext i32 %1024 to i64
  %1025 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1804 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1025, i32 0, i32 0
  %arrayidx1805 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1804, i32 0, i64 %idxprom1803
  store i32 %add1800, i32* %arrayidx1805, align 4
  %1026 = load i32, i32* %r1777, align 4
  %idxprom1806 = sext i32 %1026 to i64
  %arrayidx1807 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1806
  %1027 = load i32, i32* %arrayidx1807, align 4
  %idxprom1808 = sext i32 %1027 to i64
  %1028 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1809 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1028, i32 0, i32 1
  %arrayidx1810 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1809, i32 0, i64 %idxprom1808
  store i32 200, i32* %arrayidx1810, align 4
  %1029 = load i32, i32* %pos, align 4
  %1030 = load i32, i32* %r1777, align 4
  %idxprom1811 = sext i32 %1030 to i64
  %arrayidx1812 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1811
  %1031 = load i32, i32* %arrayidx1812, align 4
  %idxprom1813 = sext i32 %1031 to i64
  %1032 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1814 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1032, i32 0, i32 2
  %arrayidx1815 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1814, i32 0, i64 %idxprom1813
  store i32 %1029, i32* %arrayidx1815, align 4
  %1033 = load i32, i32* %hpos, align 4
  %1034 = load i32, i32* %r1777, align 4
  %idxprom1816 = sext i32 %1034 to i64
  %arrayidx1817 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1816
  %1035 = load i32, i32* %arrayidx1817, align 4
  %idxprom1818 = sext i32 %1035 to i64
  %1036 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11819 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1036, i32 0, i32 3
  %arrayidx1820 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11819, i32 0, i64 %idxprom1818
  store i32 %1033, i32* %arrayidx1820, align 4
  %1037 = load i32, i32* %r1777, align 4
  %idxprom1821 = sext i32 %1037 to i64
  %arrayidx1822 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1821
  %1038 = load i32, i32* %arrayidx1822, align 4
  %idxprom1823 = sext i32 %1038 to i64
  %1039 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21824 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1039, i32 0, i32 4
  %arrayidx1825 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21824, i32 0, i64 %idxprom1823
  store i32 0, i32* %arrayidx1825, align 4
  %1040 = load i32, i32* %r1777, align 4
  %idxprom1826 = sext i32 %1040 to i64
  %arrayidx1827 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1826
  %1041 = load i32, i32* %arrayidx1827, align 4
  %1042 = load i32, i32* %target.addr, align 4
  %cmp1828 = icmp eq i32 %1041, %1042
  br i1 %cmp1828, label %land.lhs.true.1830, label %if.end.1837

land.lhs.true.1830:                               ; preds = %if.end.1799
  %1043 = load i32, i32* %distance, align 4
  %add1831 = add nsw i32 %1043, 200
  %1044 = load i32, i32* %cutoff_distance, align 4
  %cmp1832 = icmp slt i32 %add1831, %1044
  br i1 %cmp1832, label %if.then.1834, label %if.end.1837

if.then.1834:                                     ; preds = %land.lhs.true.1830
  %1045 = load i32, i32* %distance, align 4
  %add1835 = add nsw i32 %1045, 200
  %sub1836 = sub nsw i32 %add1835, 1
  store i32 %sub1836, i32* %cutoff_distance, align 4
  br label %if.end.1837

if.end.1837:                                      ; preds = %if.then.1834, %land.lhs.true.1830, %if.end.1799
  br label %for.inc.1838

for.inc.1838:                                     ; preds = %if.end.1837
  %1046 = load i32, i32* %r1777, align 4
  %inc1839 = add nsw i32 %1046, 1
  store i32 %inc1839, i32* %r1777, align 4
  br label %for.cond.1780

for.end.1840:                                     ; preds = %for.cond.1780
  br label %if.end.1841

if.end.1841:                                      ; preds = %for.end.1840, %if.end.1758
  br label %if.end.1842

if.end.1842:                                      ; preds = %if.end.1841, %do.body.1733
  br label %do.end.1843

do.end.1843:                                      ; preds = %if.end.1842
  br label %if.end.2094

if.else.1844:                                     ; preds = %land.lhs.true.1726, %if.else.1720
  %1047 = load i32, i32* %hpos, align 4
  %idxprom1845 = sext i32 %1047 to i64
  %arrayidx1846 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1845
  %1048 = load i8, i8* %arrayidx1846, align 1
  %conv1847 = zext i8 %1048 to i32
  %cmp1848 = icmp ne i32 %conv1847, 0
  br i1 %cmp1848, label %land.lhs.true.1850, label %if.else.1968

land.lhs.true.1850:                               ; preds = %if.else.1844
  %1049 = load i32, i32* %jpos, align 4
  %idxprom1851 = sext i32 %1049 to i64
  %arrayidx1852 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1851
  %1050 = load i8, i8* %arrayidx1852, align 1
  %conv1853 = zext i8 %1050 to i32
  %cmp1854 = icmp eq i32 %conv1853, 0
  br i1 %cmp1854, label %if.then.1856, label %if.else.1968

if.then.1856:                                     ; preds = %land.lhs.true.1850
  br label %do.body.1857

do.body.1857:                                     ; preds = %if.then.1856
  %1051 = load i32, i32* %distance, align 4
  %add1858 = add nsw i32 %1051, 200
  %1052 = load i32, i32* %epos, align 4
  %idxprom1859 = sext i32 %1052 to i64
  %1053 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1860 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1053, i32 0, i32 0
  %arrayidx1861 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1860, i32 0, i64 %idxprom1859
  %1054 = load i32, i32* %arrayidx1861, align 4
  %cmp1862 = icmp slt i32 %add1858, %1054
  br i1 %cmp1862, label %if.then.1864, label %if.end.1966

if.then.1864:                                     ; preds = %do.body.1857
  %1055 = load i32, i32* %epos, align 4
  %idxprom1865 = sext i32 %1055 to i64
  %arrayidx1866 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1865
  %1056 = load i8, i8* %arrayidx1866, align 1
  %conv1867 = zext i8 %1056 to i32
  %cmp1868 = icmp eq i32 %conv1867, 0
  br i1 %cmp1868, label %if.then.1870, label %if.else.1899

if.then.1870:                                     ; preds = %if.then.1864
  %1057 = load i32, i32* %epos, align 4
  %idxprom1871 = sext i32 %1057 to i64
  %1058 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1872 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1058, i32 0, i32 0
  %arrayidx1873 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1872, i32 0, i64 %idxprom1871
  %1059 = load i32, i32* %arrayidx1873, align 4
  %cmp1874 = icmp eq i32 %1059, 100000
  br i1 %cmp1874, label %if.then.1876, label %if.end.1882

if.then.1876:                                     ; preds = %if.then.1870
  %1060 = load i32, i32* %epos, align 4
  %1061 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1877 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1061, i32 0, i32 7
  %1062 = load i32, i32* %queue_end1877, align 4
  %inc1878 = add nsw i32 %1062, 1
  store i32 %inc1878, i32* %queue_end1877, align 4
  %idxprom1879 = sext i32 %1062 to i64
  %1063 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1880 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1063, i32 0, i32 5
  %arrayidx1881 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1880, i32 0, i64 %idxprom1879
  store i32 %1060, i32* %arrayidx1881, align 4
  br label %if.end.1882

if.end.1882:                                      ; preds = %if.then.1876, %if.then.1870
  %1064 = load i32, i32* %distance, align 4
  %add1883 = add nsw i32 %1064, 200
  %1065 = load i32, i32* %epos, align 4
  %idxprom1884 = sext i32 %1065 to i64
  %1066 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1885 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1066, i32 0, i32 0
  %arrayidx1886 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1885, i32 0, i64 %idxprom1884
  store i32 %add1883, i32* %arrayidx1886, align 4
  %1067 = load i32, i32* %epos, align 4
  %idxprom1887 = sext i32 %1067 to i64
  %1068 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1888 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1068, i32 0, i32 1
  %arrayidx1889 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1888, i32 0, i64 %idxprom1887
  store i32 200, i32* %arrayidx1889, align 4
  %1069 = load i32, i32* %pos, align 4
  %1070 = load i32, i32* %epos, align 4
  %idxprom1890 = sext i32 %1070 to i64
  %1071 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1891 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1071, i32 0, i32 2
  %arrayidx1892 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1891, i32 0, i64 %idxprom1890
  store i32 %1069, i32* %arrayidx1892, align 4
  %1072 = load i32, i32* %jpos, align 4
  %1073 = load i32, i32* %epos, align 4
  %idxprom1893 = sext i32 %1073 to i64
  %1074 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11894 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1074, i32 0, i32 3
  %arrayidx1895 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11894, i32 0, i64 %idxprom1893
  store i32 %1072, i32* %arrayidx1895, align 4
  %1075 = load i32, i32* %epos, align 4
  %idxprom1896 = sext i32 %1075 to i64
  %1076 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21897 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1076, i32 0, i32 4
  %arrayidx1898 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21897, i32 0, i64 %idxprom1896
  store i32 0, i32* %arrayidx1898, align 4
  br label %if.end.1965

if.else.1899:                                     ; preds = %if.then.1864
  %1077 = load i32, i32* %epos, align 4
  %arraydecay1902 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call1903 = call i32 @findstones(i32 %1077, i32 361, i32* %arraydecay1902)
  store i32 %call1903, i32* %num_stones, align 4
  store i32 0, i32* %r1901, align 4
  br label %for.cond.1904

for.cond.1904:                                    ; preds = %for.inc.1962, %if.else.1899
  %1078 = load i32, i32* %r1901, align 4
  %1079 = load i32, i32* %num_stones, align 4
  %cmp1905 = icmp slt i32 %1078, %1079
  br i1 %cmp1905, label %for.body.1907, label %for.end.1964

for.body.1907:                                    ; preds = %for.cond.1904
  %1080 = load i32, i32* %r1901, align 4
  %idxprom1908 = sext i32 %1080 to i64
  %arrayidx1909 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1908
  %1081 = load i32, i32* %arrayidx1909, align 4
  %idxprom1910 = sext i32 %1081 to i64
  %1082 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1911 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1082, i32 0, i32 0
  %arrayidx1912 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1911, i32 0, i64 %idxprom1910
  %1083 = load i32, i32* %arrayidx1912, align 4
  %cmp1913 = icmp eq i32 %1083, 100000
  br i1 %cmp1913, label %if.then.1915, label %if.end.1923

if.then.1915:                                     ; preds = %for.body.1907
  %1084 = load i32, i32* %r1901, align 4
  %idxprom1916 = sext i32 %1084 to i64
  %arrayidx1917 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1916
  %1085 = load i32, i32* %arrayidx1917, align 4
  %1086 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end1918 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1086, i32 0, i32 7
  %1087 = load i32, i32* %queue_end1918, align 4
  %inc1919 = add nsw i32 %1087, 1
  store i32 %inc1919, i32* %queue_end1918, align 4
  %idxprom1920 = sext i32 %1087 to i64
  %1088 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue1921 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1088, i32 0, i32 5
  %arrayidx1922 = getelementptr inbounds [400 x i32], [400 x i32]* %queue1921, i32 0, i64 %idxprom1920
  store i32 %1085, i32* %arrayidx1922, align 4
  br label %if.end.1923

if.end.1923:                                      ; preds = %if.then.1915, %for.body.1907
  %1089 = load i32, i32* %distance, align 4
  %add1924 = add nsw i32 %1089, 200
  %1090 = load i32, i32* %r1901, align 4
  %idxprom1925 = sext i32 %1090 to i64
  %arrayidx1926 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1925
  %1091 = load i32, i32* %arrayidx1926, align 4
  %idxprom1927 = sext i32 %1091 to i64
  %1092 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1928 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1092, i32 0, i32 0
  %arrayidx1929 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1928, i32 0, i64 %idxprom1927
  store i32 %add1924, i32* %arrayidx1929, align 4
  %1093 = load i32, i32* %r1901, align 4
  %idxprom1930 = sext i32 %1093 to i64
  %arrayidx1931 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1930
  %1094 = load i32, i32* %arrayidx1931, align 4
  %idxprom1932 = sext i32 %1094 to i64
  %1095 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas1933 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1095, i32 0, i32 1
  %arrayidx1934 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas1933, i32 0, i64 %idxprom1932
  store i32 200, i32* %arrayidx1934, align 4
  %1096 = load i32, i32* %pos, align 4
  %1097 = load i32, i32* %r1901, align 4
  %idxprom1935 = sext i32 %1097 to i64
  %arrayidx1936 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1935
  %1098 = load i32, i32* %arrayidx1936, align 4
  %idxprom1937 = sext i32 %1098 to i64
  %1099 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from1938 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1099, i32 0, i32 2
  %arrayidx1939 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from1938, i32 0, i64 %idxprom1937
  store i32 %1096, i32* %arrayidx1939, align 4
  %1100 = load i32, i32* %jpos, align 4
  %1101 = load i32, i32* %r1901, align 4
  %idxprom1940 = sext i32 %1101 to i64
  %arrayidx1941 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1940
  %1102 = load i32, i32* %arrayidx1941, align 4
  %idxprom1942 = sext i32 %1102 to i64
  %1103 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable11943 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1103, i32 0, i32 3
  %arrayidx1944 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable11943, i32 0, i64 %idxprom1942
  store i32 %1100, i32* %arrayidx1944, align 4
  %1104 = load i32, i32* %r1901, align 4
  %idxprom1945 = sext i32 %1104 to i64
  %arrayidx1946 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1945
  %1105 = load i32, i32* %arrayidx1946, align 4
  %idxprom1947 = sext i32 %1105 to i64
  %1106 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable21948 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1106, i32 0, i32 4
  %arrayidx1949 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable21948, i32 0, i64 %idxprom1947
  store i32 0, i32* %arrayidx1949, align 4
  %1107 = load i32, i32* %r1901, align 4
  %idxprom1950 = sext i32 %1107 to i64
  %arrayidx1951 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom1950
  %1108 = load i32, i32* %arrayidx1951, align 4
  %1109 = load i32, i32* %target.addr, align 4
  %cmp1952 = icmp eq i32 %1108, %1109
  br i1 %cmp1952, label %land.lhs.true.1954, label %if.end.1961

land.lhs.true.1954:                               ; preds = %if.end.1923
  %1110 = load i32, i32* %distance, align 4
  %add1955 = add nsw i32 %1110, 200
  %1111 = load i32, i32* %cutoff_distance, align 4
  %cmp1956 = icmp slt i32 %add1955, %1111
  br i1 %cmp1956, label %if.then.1958, label %if.end.1961

if.then.1958:                                     ; preds = %land.lhs.true.1954
  %1112 = load i32, i32* %distance, align 4
  %add1959 = add nsw i32 %1112, 200
  %sub1960 = sub nsw i32 %add1959, 1
  store i32 %sub1960, i32* %cutoff_distance, align 4
  br label %if.end.1961

if.end.1961:                                      ; preds = %if.then.1958, %land.lhs.true.1954, %if.end.1923
  br label %for.inc.1962

for.inc.1962:                                     ; preds = %if.end.1961
  %1113 = load i32, i32* %r1901, align 4
  %inc1963 = add nsw i32 %1113, 1
  store i32 %inc1963, i32* %r1901, align 4
  br label %for.cond.1904

for.end.1964:                                     ; preds = %for.cond.1904
  br label %if.end.1965

if.end.1965:                                      ; preds = %for.end.1964, %if.end.1882
  br label %if.end.1966

if.end.1966:                                      ; preds = %if.end.1965, %do.body.1857
  br label %do.end.1967

do.end.1967:                                      ; preds = %if.end.1966
  br label %if.end.2093

if.else.1968:                                     ; preds = %land.lhs.true.1850, %if.else.1844
  %1114 = load i32, i32* %hpos, align 4
  %idxprom1969 = sext i32 %1114 to i64
  %arrayidx1970 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1969
  %1115 = load i8, i8* %arrayidx1970, align 1
  %conv1971 = zext i8 %1115 to i32
  %cmp1972 = icmp ne i32 %conv1971, 0
  br i1 %cmp1972, label %land.lhs.true.1974, label %if.end.2092

land.lhs.true.1974:                               ; preds = %if.else.1968
  %1116 = load i32, i32* %jpos, align 4
  %idxprom1975 = sext i32 %1116 to i64
  %arrayidx1976 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1975
  %1117 = load i8, i8* %arrayidx1976, align 1
  %conv1977 = zext i8 %1117 to i32
  %cmp1978 = icmp ne i32 %conv1977, 0
  br i1 %cmp1978, label %if.then.1980, label %if.end.2092

if.then.1980:                                     ; preds = %land.lhs.true.1974
  br label %do.body.1981

do.body.1981:                                     ; preds = %if.then.1980
  %1118 = load i32, i32* %distance, align 4
  %add1982 = add nsw i32 %1118, 200
  %1119 = load i32, i32* %epos, align 4
  %idxprom1983 = sext i32 %1119 to i64
  %1120 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1984 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1120, i32 0, i32 0
  %arrayidx1985 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1984, i32 0, i64 %idxprom1983
  %1121 = load i32, i32* %arrayidx1985, align 4
  %cmp1986 = icmp slt i32 %add1982, %1121
  br i1 %cmp1986, label %if.then.1988, label %if.end.2090

if.then.1988:                                     ; preds = %do.body.1981
  %1122 = load i32, i32* %epos, align 4
  %idxprom1989 = sext i32 %1122 to i64
  %arrayidx1990 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1989
  %1123 = load i8, i8* %arrayidx1990, align 1
  %conv1991 = zext i8 %1123 to i32
  %cmp1992 = icmp eq i32 %conv1991, 0
  br i1 %cmp1992, label %if.then.1994, label %if.else.2023

if.then.1994:                                     ; preds = %if.then.1988
  %1124 = load i32, i32* %epos, align 4
  %idxprom1995 = sext i32 %1124 to i64
  %1125 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances1996 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1125, i32 0, i32 0
  %arrayidx1997 = getelementptr inbounds [400 x i32], [400 x i32]* %distances1996, i32 0, i64 %idxprom1995
  %1126 = load i32, i32* %arrayidx1997, align 4
  %cmp1998 = icmp eq i32 %1126, 100000
  br i1 %cmp1998, label %if.then.2000, label %if.end.2006

if.then.2000:                                     ; preds = %if.then.1994
  %1127 = load i32, i32* %epos, align 4
  %1128 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2001 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1128, i32 0, i32 7
  %1129 = load i32, i32* %queue_end2001, align 4
  %inc2002 = add nsw i32 %1129, 1
  store i32 %inc2002, i32* %queue_end2001, align 4
  %idxprom2003 = sext i32 %1129 to i64
  %1130 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2004 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1130, i32 0, i32 5
  %arrayidx2005 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2004, i32 0, i64 %idxprom2003
  store i32 %1127, i32* %arrayidx2005, align 4
  br label %if.end.2006

if.end.2006:                                      ; preds = %if.then.2000, %if.then.1994
  %1131 = load i32, i32* %distance, align 4
  %add2007 = add nsw i32 %1131, 200
  %1132 = load i32, i32* %epos, align 4
  %idxprom2008 = sext i32 %1132 to i64
  %1133 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2009 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1133, i32 0, i32 0
  %arrayidx2010 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2009, i32 0, i64 %idxprom2008
  store i32 %add2007, i32* %arrayidx2010, align 4
  %1134 = load i32, i32* %epos, align 4
  %idxprom2011 = sext i32 %1134 to i64
  %1135 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2012 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1135, i32 0, i32 1
  %arrayidx2013 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2012, i32 0, i64 %idxprom2011
  store i32 200, i32* %arrayidx2013, align 4
  %1136 = load i32, i32* %pos, align 4
  %1137 = load i32, i32* %epos, align 4
  %idxprom2014 = sext i32 %1137 to i64
  %1138 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2015 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1138, i32 0, i32 2
  %arrayidx2016 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2015, i32 0, i64 %idxprom2014
  store i32 %1136, i32* %arrayidx2016, align 4
  %1139 = load i32, i32* %epos, align 4
  %idxprom2017 = sext i32 %1139 to i64
  %1140 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12018 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1140, i32 0, i32 3
  %arrayidx2019 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12018, i32 0, i64 %idxprom2017
  store i32 0, i32* %arrayidx2019, align 4
  %1141 = load i32, i32* %epos, align 4
  %idxprom2020 = sext i32 %1141 to i64
  %1142 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22021 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1142, i32 0, i32 4
  %arrayidx2022 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22021, i32 0, i64 %idxprom2020
  store i32 0, i32* %arrayidx2022, align 4
  br label %if.end.2089

if.else.2023:                                     ; preds = %if.then.1988
  %1143 = load i32, i32* %epos, align 4
  %arraydecay2026 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2027 = call i32 @findstones(i32 %1143, i32 361, i32* %arraydecay2026)
  store i32 %call2027, i32* %num_stones, align 4
  store i32 0, i32* %r2025, align 4
  br label %for.cond.2028

for.cond.2028:                                    ; preds = %for.inc.2086, %if.else.2023
  %1144 = load i32, i32* %r2025, align 4
  %1145 = load i32, i32* %num_stones, align 4
  %cmp2029 = icmp slt i32 %1144, %1145
  br i1 %cmp2029, label %for.body.2031, label %for.end.2088

for.body.2031:                                    ; preds = %for.cond.2028
  %1146 = load i32, i32* %r2025, align 4
  %idxprom2032 = sext i32 %1146 to i64
  %arrayidx2033 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2032
  %1147 = load i32, i32* %arrayidx2033, align 4
  %idxprom2034 = sext i32 %1147 to i64
  %1148 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2035 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1148, i32 0, i32 0
  %arrayidx2036 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2035, i32 0, i64 %idxprom2034
  %1149 = load i32, i32* %arrayidx2036, align 4
  %cmp2037 = icmp eq i32 %1149, 100000
  br i1 %cmp2037, label %if.then.2039, label %if.end.2047

if.then.2039:                                     ; preds = %for.body.2031
  %1150 = load i32, i32* %r2025, align 4
  %idxprom2040 = sext i32 %1150 to i64
  %arrayidx2041 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2040
  %1151 = load i32, i32* %arrayidx2041, align 4
  %1152 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2042 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1152, i32 0, i32 7
  %1153 = load i32, i32* %queue_end2042, align 4
  %inc2043 = add nsw i32 %1153, 1
  store i32 %inc2043, i32* %queue_end2042, align 4
  %idxprom2044 = sext i32 %1153 to i64
  %1154 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2045 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1154, i32 0, i32 5
  %arrayidx2046 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2045, i32 0, i64 %idxprom2044
  store i32 %1151, i32* %arrayidx2046, align 4
  br label %if.end.2047

if.end.2047:                                      ; preds = %if.then.2039, %for.body.2031
  %1155 = load i32, i32* %distance, align 4
  %add2048 = add nsw i32 %1155, 200
  %1156 = load i32, i32* %r2025, align 4
  %idxprom2049 = sext i32 %1156 to i64
  %arrayidx2050 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2049
  %1157 = load i32, i32* %arrayidx2050, align 4
  %idxprom2051 = sext i32 %1157 to i64
  %1158 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2052 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1158, i32 0, i32 0
  %arrayidx2053 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2052, i32 0, i64 %idxprom2051
  store i32 %add2048, i32* %arrayidx2053, align 4
  %1159 = load i32, i32* %r2025, align 4
  %idxprom2054 = sext i32 %1159 to i64
  %arrayidx2055 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2054
  %1160 = load i32, i32* %arrayidx2055, align 4
  %idxprom2056 = sext i32 %1160 to i64
  %1161 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2057 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1161, i32 0, i32 1
  %arrayidx2058 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2057, i32 0, i64 %idxprom2056
  store i32 200, i32* %arrayidx2058, align 4
  %1162 = load i32, i32* %pos, align 4
  %1163 = load i32, i32* %r2025, align 4
  %idxprom2059 = sext i32 %1163 to i64
  %arrayidx2060 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2059
  %1164 = load i32, i32* %arrayidx2060, align 4
  %idxprom2061 = sext i32 %1164 to i64
  %1165 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2062 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1165, i32 0, i32 2
  %arrayidx2063 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2062, i32 0, i64 %idxprom2061
  store i32 %1162, i32* %arrayidx2063, align 4
  %1166 = load i32, i32* %r2025, align 4
  %idxprom2064 = sext i32 %1166 to i64
  %arrayidx2065 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2064
  %1167 = load i32, i32* %arrayidx2065, align 4
  %idxprom2066 = sext i32 %1167 to i64
  %1168 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12067 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1168, i32 0, i32 3
  %arrayidx2068 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12067, i32 0, i64 %idxprom2066
  store i32 0, i32* %arrayidx2068, align 4
  %1169 = load i32, i32* %r2025, align 4
  %idxprom2069 = sext i32 %1169 to i64
  %arrayidx2070 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2069
  %1170 = load i32, i32* %arrayidx2070, align 4
  %idxprom2071 = sext i32 %1170 to i64
  %1171 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1171, i32 0, i32 4
  %arrayidx2073 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22072, i32 0, i64 %idxprom2071
  store i32 0, i32* %arrayidx2073, align 4
  %1172 = load i32, i32* %r2025, align 4
  %idxprom2074 = sext i32 %1172 to i64
  %arrayidx2075 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2074
  %1173 = load i32, i32* %arrayidx2075, align 4
  %1174 = load i32, i32* %target.addr, align 4
  %cmp2076 = icmp eq i32 %1173, %1174
  br i1 %cmp2076, label %land.lhs.true.2078, label %if.end.2085

land.lhs.true.2078:                               ; preds = %if.end.2047
  %1175 = load i32, i32* %distance, align 4
  %add2079 = add nsw i32 %1175, 200
  %1176 = load i32, i32* %cutoff_distance, align 4
  %cmp2080 = icmp slt i32 %add2079, %1176
  br i1 %cmp2080, label %if.then.2082, label %if.end.2085

if.then.2082:                                     ; preds = %land.lhs.true.2078
  %1177 = load i32, i32* %distance, align 4
  %add2083 = add nsw i32 %1177, 200
  %sub2084 = sub nsw i32 %add2083, 1
  store i32 %sub2084, i32* %cutoff_distance, align 4
  br label %if.end.2085

if.end.2085:                                      ; preds = %if.then.2082, %land.lhs.true.2078, %if.end.2047
  br label %for.inc.2086

for.inc.2086:                                     ; preds = %if.end.2085
  %1178 = load i32, i32* %r2025, align 4
  %inc2087 = add nsw i32 %1178, 1
  store i32 %inc2087, i32* %r2025, align 4
  br label %for.cond.2028

for.end.2088:                                     ; preds = %for.cond.2028
  br label %if.end.2089

if.end.2089:                                      ; preds = %for.end.2088, %if.end.2006
  br label %if.end.2090

if.end.2090:                                      ; preds = %if.end.2089, %do.body.1981
  br label %do.end.2091

do.end.2091:                                      ; preds = %if.end.2090
  br label %if.end.2092

if.end.2092:                                      ; preds = %do.end.2091, %land.lhs.true.1974, %if.else.1968
  br label %if.end.2093

if.end.2093:                                      ; preds = %if.end.2092, %do.end.1967
  br label %if.end.2094

if.end.2094:                                      ; preds = %if.end.2093, %do.end.1843
  br label %if.end.2095

if.end.2095:                                      ; preds = %if.end.2094, %do.end.1719
  br label %if.end.2096

if.end.2096:                                      ; preds = %if.end.2095, %land.lhs.true.1592, %land.lhs.true.1583, %lor.lhs.false.1577, %land.lhs.true.1567, %land.lhs.true.1558, %lor.lhs.false.1552, %land.lhs.true.1542, %if.end.1536
  br label %if.end.2097

if.end.2097:                                      ; preds = %if.end.2096, %land.lhs.true.973, %land.lhs.true.966, %land.lhs.true.960, %if.end.954
  %1179 = load i32, i32* %apos, align 4
  %idxprom2098 = sext i32 %1179 to i64
  %arrayidx2099 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2098
  %1180 = load i8, i8* %arrayidx2099, align 1
  %conv2100 = zext i8 %1180 to i32
  %cmp2101 = icmp eq i32 %conv2100, 0
  br i1 %cmp2101, label %land.lhs.true.2103, label %if.end.2225

land.lhs.true.2103:                               ; preds = %if.end.2097
  %1181 = load i32, i32* %apos, align 4
  %idxprom2104 = sext i32 %1181 to i64
  %1182 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2105 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1182, i32 0, i32 0
  %arrayidx2106 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2105, i32 0, i64 %idxprom2104
  %1183 = load i32, i32* %arrayidx2106, align 4
  %1184 = load i32, i32* %distance, align 4
  %add2107 = add nsw i32 %1184, 700
  %cmp2108 = icmp sgt i32 %1183, %add2107
  br i1 %cmp2108, label %land.lhs.true.2110, label %if.end.2225

land.lhs.true.2110:                               ; preds = %land.lhs.true.2103
  %1185 = load i32, i32* %apos, align 4
  %1186 = load i32, i32* %other, align 4
  %call2111 = call i32 @ladder_capturable(i32 %1185, i32 %1186)
  %tobool2112 = icmp ne i32 %call2111, 0
  br i1 %tobool2112, label %if.then.2113, label %if.end.2225

if.then.2113:                                     ; preds = %land.lhs.true.2110
  br label %do.body.2114

do.body.2114:                                     ; preds = %if.then.2113
  %1187 = load i32, i32* %distance, align 4
  %add2115 = add nsw i32 %1187, 700
  %1188 = load i32, i32* %apos, align 4
  %idxprom2116 = sext i32 %1188 to i64
  %1189 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2117 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1189, i32 0, i32 0
  %arrayidx2118 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2117, i32 0, i64 %idxprom2116
  %1190 = load i32, i32* %arrayidx2118, align 4
  %cmp2119 = icmp slt i32 %add2115, %1190
  br i1 %cmp2119, label %if.then.2121, label %if.end.2223

if.then.2121:                                     ; preds = %do.body.2114
  %1191 = load i32, i32* %apos, align 4
  %idxprom2122 = sext i32 %1191 to i64
  %arrayidx2123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2122
  %1192 = load i8, i8* %arrayidx2123, align 1
  %conv2124 = zext i8 %1192 to i32
  %cmp2125 = icmp eq i32 %conv2124, 0
  br i1 %cmp2125, label %if.then.2127, label %if.else.2156

if.then.2127:                                     ; preds = %if.then.2121
  %1193 = load i32, i32* %apos, align 4
  %idxprom2128 = sext i32 %1193 to i64
  %1194 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2129 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1194, i32 0, i32 0
  %arrayidx2130 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2129, i32 0, i64 %idxprom2128
  %1195 = load i32, i32* %arrayidx2130, align 4
  %cmp2131 = icmp eq i32 %1195, 100000
  br i1 %cmp2131, label %if.then.2133, label %if.end.2139

if.then.2133:                                     ; preds = %if.then.2127
  %1196 = load i32, i32* %apos, align 4
  %1197 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2134 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1197, i32 0, i32 7
  %1198 = load i32, i32* %queue_end2134, align 4
  %inc2135 = add nsw i32 %1198, 1
  store i32 %inc2135, i32* %queue_end2134, align 4
  %idxprom2136 = sext i32 %1198 to i64
  %1199 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2137 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1199, i32 0, i32 5
  %arrayidx2138 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2137, i32 0, i64 %idxprom2136
  store i32 %1196, i32* %arrayidx2138, align 4
  br label %if.end.2139

if.end.2139:                                      ; preds = %if.then.2133, %if.then.2127
  %1200 = load i32, i32* %distance, align 4
  %add2140 = add nsw i32 %1200, 700
  %1201 = load i32, i32* %apos, align 4
  %idxprom2141 = sext i32 %1201 to i64
  %1202 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2142 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1202, i32 0, i32 0
  %arrayidx2143 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2142, i32 0, i64 %idxprom2141
  store i32 %add2140, i32* %arrayidx2143, align 4
  %1203 = load i32, i32* %apos, align 4
  %idxprom2144 = sext i32 %1203 to i64
  %1204 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2145 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1204, i32 0, i32 1
  %arrayidx2146 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2145, i32 0, i64 %idxprom2144
  store i32 700, i32* %arrayidx2146, align 4
  %1205 = load i32, i32* %pos, align 4
  %1206 = load i32, i32* %apos, align 4
  %idxprom2147 = sext i32 %1206 to i64
  %1207 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2148 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1207, i32 0, i32 2
  %arrayidx2149 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2148, i32 0, i64 %idxprom2147
  store i32 %1205, i32* %arrayidx2149, align 4
  %1208 = load i32, i32* %apos, align 4
  %1209 = load i32, i32* %apos, align 4
  %idxprom2150 = sext i32 %1209 to i64
  %1210 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12151 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1210, i32 0, i32 3
  %arrayidx2152 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12151, i32 0, i64 %idxprom2150
  store i32 %1208, i32* %arrayidx2152, align 4
  %1211 = load i32, i32* %apos, align 4
  %idxprom2153 = sext i32 %1211 to i64
  %1212 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22154 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1212, i32 0, i32 4
  %arrayidx2155 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22154, i32 0, i64 %idxprom2153
  store i32 0, i32* %arrayidx2155, align 4
  br label %if.end.2222

if.else.2156:                                     ; preds = %if.then.2121
  %1213 = load i32, i32* %apos, align 4
  %arraydecay2159 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2160 = call i32 @findstones(i32 %1213, i32 361, i32* %arraydecay2159)
  store i32 %call2160, i32* %num_stones, align 4
  store i32 0, i32* %r2158, align 4
  br label %for.cond.2161

for.cond.2161:                                    ; preds = %for.inc.2219, %if.else.2156
  %1214 = load i32, i32* %r2158, align 4
  %1215 = load i32, i32* %num_stones, align 4
  %cmp2162 = icmp slt i32 %1214, %1215
  br i1 %cmp2162, label %for.body.2164, label %for.end.2221

for.body.2164:                                    ; preds = %for.cond.2161
  %1216 = load i32, i32* %r2158, align 4
  %idxprom2165 = sext i32 %1216 to i64
  %arrayidx2166 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2165
  %1217 = load i32, i32* %arrayidx2166, align 4
  %idxprom2167 = sext i32 %1217 to i64
  %1218 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2168 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1218, i32 0, i32 0
  %arrayidx2169 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2168, i32 0, i64 %idxprom2167
  %1219 = load i32, i32* %arrayidx2169, align 4
  %cmp2170 = icmp eq i32 %1219, 100000
  br i1 %cmp2170, label %if.then.2172, label %if.end.2180

if.then.2172:                                     ; preds = %for.body.2164
  %1220 = load i32, i32* %r2158, align 4
  %idxprom2173 = sext i32 %1220 to i64
  %arrayidx2174 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2173
  %1221 = load i32, i32* %arrayidx2174, align 4
  %1222 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2175 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1222, i32 0, i32 7
  %1223 = load i32, i32* %queue_end2175, align 4
  %inc2176 = add nsw i32 %1223, 1
  store i32 %inc2176, i32* %queue_end2175, align 4
  %idxprom2177 = sext i32 %1223 to i64
  %1224 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2178 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1224, i32 0, i32 5
  %arrayidx2179 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2178, i32 0, i64 %idxprom2177
  store i32 %1221, i32* %arrayidx2179, align 4
  br label %if.end.2180

if.end.2180:                                      ; preds = %if.then.2172, %for.body.2164
  %1225 = load i32, i32* %distance, align 4
  %add2181 = add nsw i32 %1225, 700
  %1226 = load i32, i32* %r2158, align 4
  %idxprom2182 = sext i32 %1226 to i64
  %arrayidx2183 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2182
  %1227 = load i32, i32* %arrayidx2183, align 4
  %idxprom2184 = sext i32 %1227 to i64
  %1228 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2185 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1228, i32 0, i32 0
  %arrayidx2186 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2185, i32 0, i64 %idxprom2184
  store i32 %add2181, i32* %arrayidx2186, align 4
  %1229 = load i32, i32* %r2158, align 4
  %idxprom2187 = sext i32 %1229 to i64
  %arrayidx2188 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2187
  %1230 = load i32, i32* %arrayidx2188, align 4
  %idxprom2189 = sext i32 %1230 to i64
  %1231 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2190 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1231, i32 0, i32 1
  %arrayidx2191 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2190, i32 0, i64 %idxprom2189
  store i32 700, i32* %arrayidx2191, align 4
  %1232 = load i32, i32* %pos, align 4
  %1233 = load i32, i32* %r2158, align 4
  %idxprom2192 = sext i32 %1233 to i64
  %arrayidx2193 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2192
  %1234 = load i32, i32* %arrayidx2193, align 4
  %idxprom2194 = sext i32 %1234 to i64
  %1235 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2195 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1235, i32 0, i32 2
  %arrayidx2196 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2195, i32 0, i64 %idxprom2194
  store i32 %1232, i32* %arrayidx2196, align 4
  %1236 = load i32, i32* %apos, align 4
  %1237 = load i32, i32* %r2158, align 4
  %idxprom2197 = sext i32 %1237 to i64
  %arrayidx2198 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2197
  %1238 = load i32, i32* %arrayidx2198, align 4
  %idxprom2199 = sext i32 %1238 to i64
  %1239 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12200 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1239, i32 0, i32 3
  %arrayidx2201 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12200, i32 0, i64 %idxprom2199
  store i32 %1236, i32* %arrayidx2201, align 4
  %1240 = load i32, i32* %r2158, align 4
  %idxprom2202 = sext i32 %1240 to i64
  %arrayidx2203 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2202
  %1241 = load i32, i32* %arrayidx2203, align 4
  %idxprom2204 = sext i32 %1241 to i64
  %1242 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22205 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1242, i32 0, i32 4
  %arrayidx2206 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22205, i32 0, i64 %idxprom2204
  store i32 0, i32* %arrayidx2206, align 4
  %1243 = load i32, i32* %r2158, align 4
  %idxprom2207 = sext i32 %1243 to i64
  %arrayidx2208 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2207
  %1244 = load i32, i32* %arrayidx2208, align 4
  %1245 = load i32, i32* %target.addr, align 4
  %cmp2209 = icmp eq i32 %1244, %1245
  br i1 %cmp2209, label %land.lhs.true.2211, label %if.end.2218

land.lhs.true.2211:                               ; preds = %if.end.2180
  %1246 = load i32, i32* %distance, align 4
  %add2212 = add nsw i32 %1246, 700
  %1247 = load i32, i32* %cutoff_distance, align 4
  %cmp2213 = icmp slt i32 %add2212, %1247
  br i1 %cmp2213, label %if.then.2215, label %if.end.2218

if.then.2215:                                     ; preds = %land.lhs.true.2211
  %1248 = load i32, i32* %distance, align 4
  %add2216 = add nsw i32 %1248, 700
  %sub2217 = sub nsw i32 %add2216, 1
  store i32 %sub2217, i32* %cutoff_distance, align 4
  br label %if.end.2218

if.end.2218:                                      ; preds = %if.then.2215, %land.lhs.true.2211, %if.end.2180
  br label %for.inc.2219

for.inc.2219:                                     ; preds = %if.end.2218
  %1249 = load i32, i32* %r2158, align 4
  %inc2220 = add nsw i32 %1249, 1
  store i32 %inc2220, i32* %r2158, align 4
  br label %for.cond.2161

for.end.2221:                                     ; preds = %for.cond.2161
  br label %if.end.2222

if.end.2222:                                      ; preds = %for.end.2221, %if.end.2139
  br label %if.end.2223

if.end.2223:                                      ; preds = %if.end.2222, %do.body.2114
  br label %do.end.2224

do.end.2224:                                      ; preds = %if.end.2223
  br label %if.end.2225

if.end.2225:                                      ; preds = %do.end.2224, %land.lhs.true.2110, %land.lhs.true.2103, %if.end.2097
  %1250 = load i32, i32* %apos, align 4
  %idxprom2226 = sext i32 %1250 to i64
  %arrayidx2227 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2226
  %1251 = load i8, i8* %arrayidx2227, align 1
  %conv2228 = zext i8 %1251 to i32
  %cmp2229 = icmp eq i32 %conv2228, 0
  br i1 %cmp2229, label %land.lhs.true.2237, label %lor.lhs.false.2231

lor.lhs.false.2231:                               ; preds = %if.end.2225
  %1252 = load i32, i32* %apos, align 4
  %idxprom2232 = sext i32 %1252 to i64
  %arrayidx2233 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2232
  %1253 = load i8, i8* %arrayidx2233, align 1
  %conv2234 = zext i8 %1253 to i32
  %1254 = load i32, i32* %other, align 4
  %cmp2235 = icmp eq i32 %conv2234, %1254
  br i1 %cmp2235, label %land.lhs.true.2237, label %if.end.2356

land.lhs.true.2237:                               ; preds = %lor.lhs.false.2231, %if.end.2225
  %1255 = load i32, i32* %apos, align 4
  %idxprom2238 = sext i32 %1255 to i64
  %1256 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2239 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1256, i32 0, i32 0
  %arrayidx2240 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2239, i32 0, i64 %idxprom2238
  %1257 = load i32, i32* %arrayidx2240, align 4
  %1258 = load i32, i32* %distance, align 4
  %add2241 = add nsw i32 %1258, 1000
  %cmp2242 = icmp sgt i32 %1257, %add2241
  br i1 %cmp2242, label %if.then.2244, label %if.end.2356

if.then.2244:                                     ; preds = %land.lhs.true.2237
  br label %do.body.2245

do.body.2245:                                     ; preds = %if.then.2244
  %1259 = load i32, i32* %distance, align 4
  %add2246 = add nsw i32 %1259, 1000
  %1260 = load i32, i32* %apos, align 4
  %idxprom2247 = sext i32 %1260 to i64
  %1261 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2248 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1261, i32 0, i32 0
  %arrayidx2249 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2248, i32 0, i64 %idxprom2247
  %1262 = load i32, i32* %arrayidx2249, align 4
  %cmp2250 = icmp slt i32 %add2246, %1262
  br i1 %cmp2250, label %if.then.2252, label %if.end.2354

if.then.2252:                                     ; preds = %do.body.2245
  %1263 = load i32, i32* %apos, align 4
  %idxprom2253 = sext i32 %1263 to i64
  %arrayidx2254 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2253
  %1264 = load i8, i8* %arrayidx2254, align 1
  %conv2255 = zext i8 %1264 to i32
  %cmp2256 = icmp eq i32 %conv2255, 0
  br i1 %cmp2256, label %if.then.2258, label %if.else.2287

if.then.2258:                                     ; preds = %if.then.2252
  %1265 = load i32, i32* %apos, align 4
  %idxprom2259 = sext i32 %1265 to i64
  %1266 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2260 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1266, i32 0, i32 0
  %arrayidx2261 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2260, i32 0, i64 %idxprom2259
  %1267 = load i32, i32* %arrayidx2261, align 4
  %cmp2262 = icmp eq i32 %1267, 100000
  br i1 %cmp2262, label %if.then.2264, label %if.end.2270

if.then.2264:                                     ; preds = %if.then.2258
  %1268 = load i32, i32* %apos, align 4
  %1269 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2265 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1269, i32 0, i32 7
  %1270 = load i32, i32* %queue_end2265, align 4
  %inc2266 = add nsw i32 %1270, 1
  store i32 %inc2266, i32* %queue_end2265, align 4
  %idxprom2267 = sext i32 %1270 to i64
  %1271 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2268 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1271, i32 0, i32 5
  %arrayidx2269 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2268, i32 0, i64 %idxprom2267
  store i32 %1268, i32* %arrayidx2269, align 4
  br label %if.end.2270

if.end.2270:                                      ; preds = %if.then.2264, %if.then.2258
  %1272 = load i32, i32* %distance, align 4
  %add2271 = add nsw i32 %1272, 1000
  %1273 = load i32, i32* %apos, align 4
  %idxprom2272 = sext i32 %1273 to i64
  %1274 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2273 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1274, i32 0, i32 0
  %arrayidx2274 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2273, i32 0, i64 %idxprom2272
  store i32 %add2271, i32* %arrayidx2274, align 4
  %1275 = load i32, i32* %apos, align 4
  %idxprom2275 = sext i32 %1275 to i64
  %1276 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2276 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1276, i32 0, i32 1
  %arrayidx2277 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2276, i32 0, i64 %idxprom2275
  store i32 1000, i32* %arrayidx2277, align 4
  %1277 = load i32, i32* %pos, align 4
  %1278 = load i32, i32* %apos, align 4
  %idxprom2278 = sext i32 %1278 to i64
  %1279 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2279 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1279, i32 0, i32 2
  %arrayidx2280 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2279, i32 0, i64 %idxprom2278
  store i32 %1277, i32* %arrayidx2280, align 4
  %1280 = load i32, i32* %apos, align 4
  %idxprom2281 = sext i32 %1280 to i64
  %1281 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12282 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1281, i32 0, i32 3
  %arrayidx2283 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12282, i32 0, i64 %idxprom2281
  store i32 0, i32* %arrayidx2283, align 4
  %1282 = load i32, i32* %apos, align 4
  %idxprom2284 = sext i32 %1282 to i64
  %1283 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22285 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1283, i32 0, i32 4
  %arrayidx2286 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22285, i32 0, i64 %idxprom2284
  store i32 0, i32* %arrayidx2286, align 4
  br label %if.end.2353

if.else.2287:                                     ; preds = %if.then.2252
  %1284 = load i32, i32* %apos, align 4
  %arraydecay2290 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2291 = call i32 @findstones(i32 %1284, i32 361, i32* %arraydecay2290)
  store i32 %call2291, i32* %num_stones, align 4
  store i32 0, i32* %r2289, align 4
  br label %for.cond.2292

for.cond.2292:                                    ; preds = %for.inc.2350, %if.else.2287
  %1285 = load i32, i32* %r2289, align 4
  %1286 = load i32, i32* %num_stones, align 4
  %cmp2293 = icmp slt i32 %1285, %1286
  br i1 %cmp2293, label %for.body.2295, label %for.end.2352

for.body.2295:                                    ; preds = %for.cond.2292
  %1287 = load i32, i32* %r2289, align 4
  %idxprom2296 = sext i32 %1287 to i64
  %arrayidx2297 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2296
  %1288 = load i32, i32* %arrayidx2297, align 4
  %idxprom2298 = sext i32 %1288 to i64
  %1289 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2299 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1289, i32 0, i32 0
  %arrayidx2300 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2299, i32 0, i64 %idxprom2298
  %1290 = load i32, i32* %arrayidx2300, align 4
  %cmp2301 = icmp eq i32 %1290, 100000
  br i1 %cmp2301, label %if.then.2303, label %if.end.2311

if.then.2303:                                     ; preds = %for.body.2295
  %1291 = load i32, i32* %r2289, align 4
  %idxprom2304 = sext i32 %1291 to i64
  %arrayidx2305 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2304
  %1292 = load i32, i32* %arrayidx2305, align 4
  %1293 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2306 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1293, i32 0, i32 7
  %1294 = load i32, i32* %queue_end2306, align 4
  %inc2307 = add nsw i32 %1294, 1
  store i32 %inc2307, i32* %queue_end2306, align 4
  %idxprom2308 = sext i32 %1294 to i64
  %1295 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2309 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1295, i32 0, i32 5
  %arrayidx2310 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2309, i32 0, i64 %idxprom2308
  store i32 %1292, i32* %arrayidx2310, align 4
  br label %if.end.2311

if.end.2311:                                      ; preds = %if.then.2303, %for.body.2295
  %1296 = load i32, i32* %distance, align 4
  %add2312 = add nsw i32 %1296, 1000
  %1297 = load i32, i32* %r2289, align 4
  %idxprom2313 = sext i32 %1297 to i64
  %arrayidx2314 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2313
  %1298 = load i32, i32* %arrayidx2314, align 4
  %idxprom2315 = sext i32 %1298 to i64
  %1299 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2316 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1299, i32 0, i32 0
  %arrayidx2317 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2316, i32 0, i64 %idxprom2315
  store i32 %add2312, i32* %arrayidx2317, align 4
  %1300 = load i32, i32* %r2289, align 4
  %idxprom2318 = sext i32 %1300 to i64
  %arrayidx2319 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2318
  %1301 = load i32, i32* %arrayidx2319, align 4
  %idxprom2320 = sext i32 %1301 to i64
  %1302 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2321 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1302, i32 0, i32 1
  %arrayidx2322 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2321, i32 0, i64 %idxprom2320
  store i32 1000, i32* %arrayidx2322, align 4
  %1303 = load i32, i32* %pos, align 4
  %1304 = load i32, i32* %r2289, align 4
  %idxprom2323 = sext i32 %1304 to i64
  %arrayidx2324 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2323
  %1305 = load i32, i32* %arrayidx2324, align 4
  %idxprom2325 = sext i32 %1305 to i64
  %1306 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2326 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1306, i32 0, i32 2
  %arrayidx2327 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2326, i32 0, i64 %idxprom2325
  store i32 %1303, i32* %arrayidx2327, align 4
  %1307 = load i32, i32* %r2289, align 4
  %idxprom2328 = sext i32 %1307 to i64
  %arrayidx2329 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2328
  %1308 = load i32, i32* %arrayidx2329, align 4
  %idxprom2330 = sext i32 %1308 to i64
  %1309 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12331 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1309, i32 0, i32 3
  %arrayidx2332 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12331, i32 0, i64 %idxprom2330
  store i32 0, i32* %arrayidx2332, align 4
  %1310 = load i32, i32* %r2289, align 4
  %idxprom2333 = sext i32 %1310 to i64
  %arrayidx2334 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2333
  %1311 = load i32, i32* %arrayidx2334, align 4
  %idxprom2335 = sext i32 %1311 to i64
  %1312 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22336 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1312, i32 0, i32 4
  %arrayidx2337 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22336, i32 0, i64 %idxprom2335
  store i32 0, i32* %arrayidx2337, align 4
  %1313 = load i32, i32* %r2289, align 4
  %idxprom2338 = sext i32 %1313 to i64
  %arrayidx2339 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2338
  %1314 = load i32, i32* %arrayidx2339, align 4
  %1315 = load i32, i32* %target.addr, align 4
  %cmp2340 = icmp eq i32 %1314, %1315
  br i1 %cmp2340, label %land.lhs.true.2342, label %if.end.2349

land.lhs.true.2342:                               ; preds = %if.end.2311
  %1316 = load i32, i32* %distance, align 4
  %add2343 = add nsw i32 %1316, 1000
  %1317 = load i32, i32* %cutoff_distance, align 4
  %cmp2344 = icmp slt i32 %add2343, %1317
  br i1 %cmp2344, label %if.then.2346, label %if.end.2349

if.then.2346:                                     ; preds = %land.lhs.true.2342
  %1318 = load i32, i32* %distance, align 4
  %add2347 = add nsw i32 %1318, 1000
  %sub2348 = sub nsw i32 %add2347, 1
  store i32 %sub2348, i32* %cutoff_distance, align 4
  br label %if.end.2349

if.end.2349:                                      ; preds = %if.then.2346, %land.lhs.true.2342, %if.end.2311
  br label %for.inc.2350

for.inc.2350:                                     ; preds = %if.end.2349
  %1319 = load i32, i32* %r2289, align 4
  %inc2351 = add nsw i32 %1319, 1
  store i32 %inc2351, i32* %r2289, align 4
  br label %for.cond.2292

for.end.2352:                                     ; preds = %for.cond.2292
  br label %if.end.2353

if.end.2353:                                      ; preds = %for.end.2352, %if.end.2270
  br label %if.end.2354

if.end.2354:                                      ; preds = %if.end.2353, %do.body.2245
  br label %do.end.2355

do.end.2355:                                      ; preds = %if.end.2354
  br label %if.end.2356

if.end.2356:                                      ; preds = %do.end.2355, %land.lhs.true.2237, %lor.lhs.false.2231
  %1320 = load i32, i32* %bpos, align 4
  %idxprom2357 = sext i32 %1320 to i64
  %arrayidx2358 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2357
  %1321 = load i8, i8* %arrayidx2358, align 1
  %conv2359 = zext i8 %1321 to i32
  %cmp2360 = icmp eq i32 %conv2359, 0
  br i1 %cmp2360, label %land.lhs.true.2362, label %if.end.2490

land.lhs.true.2362:                               ; preds = %if.end.2356
  %1322 = load i32, i32* %apos, align 4
  %idxprom2363 = sext i32 %1322 to i64
  %arrayidx2364 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2363
  %1323 = load i8, i8* %arrayidx2364, align 1
  %conv2365 = zext i8 %1323 to i32
  %cmp2366 = icmp eq i32 %conv2365, 0
  br i1 %cmp2366, label %land.lhs.true.2368, label %if.end.2490

land.lhs.true.2368:                               ; preds = %land.lhs.true.2362
  %1324 = load i32, i32* %bpos, align 4
  %idxprom2369 = sext i32 %1324 to i64
  %1325 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2370 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1325, i32 0, i32 0
  %arrayidx2371 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2370, i32 0, i64 %idxprom2369
  %1326 = load i32, i32* %arrayidx2371, align 4
  %1327 = load i32, i32* %distance, align 4
  %add2372 = add nsw i32 %1327, 1100
  %cmp2373 = icmp sgt i32 %1326, %add2372
  br i1 %cmp2373, label %land.lhs.true.2375, label %if.end.2490

land.lhs.true.2375:                               ; preds = %land.lhs.true.2368
  %1328 = load i32, i32* %color, align 4
  %1329 = load i32, i32* %bpos, align 4
  %1330 = load i32, i32* %apos, align 4
  %call2376 = call i32 @does_secure(i32 %1328, i32 %1329, i32 %1330)
  %tobool2377 = icmp ne i32 %call2376, 0
  br i1 %tobool2377, label %if.then.2378, label %if.end.2490

if.then.2378:                                     ; preds = %land.lhs.true.2375
  br label %do.body.2379

do.body.2379:                                     ; preds = %if.then.2378
  %1331 = load i32, i32* %distance, align 4
  %add2380 = add nsw i32 %1331, 1100
  %1332 = load i32, i32* %bpos, align 4
  %idxprom2381 = sext i32 %1332 to i64
  %1333 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2382 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1333, i32 0, i32 0
  %arrayidx2383 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2382, i32 0, i64 %idxprom2381
  %1334 = load i32, i32* %arrayidx2383, align 4
  %cmp2384 = icmp slt i32 %add2380, %1334
  br i1 %cmp2384, label %if.then.2386, label %if.end.2488

if.then.2386:                                     ; preds = %do.body.2379
  %1335 = load i32, i32* %bpos, align 4
  %idxprom2387 = sext i32 %1335 to i64
  %arrayidx2388 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2387
  %1336 = load i8, i8* %arrayidx2388, align 1
  %conv2389 = zext i8 %1336 to i32
  %cmp2390 = icmp eq i32 %conv2389, 0
  br i1 %cmp2390, label %if.then.2392, label %if.else.2421

if.then.2392:                                     ; preds = %if.then.2386
  %1337 = load i32, i32* %bpos, align 4
  %idxprom2393 = sext i32 %1337 to i64
  %1338 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2394 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1338, i32 0, i32 0
  %arrayidx2395 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2394, i32 0, i64 %idxprom2393
  %1339 = load i32, i32* %arrayidx2395, align 4
  %cmp2396 = icmp eq i32 %1339, 100000
  br i1 %cmp2396, label %if.then.2398, label %if.end.2404

if.then.2398:                                     ; preds = %if.then.2392
  %1340 = load i32, i32* %bpos, align 4
  %1341 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2399 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1341, i32 0, i32 7
  %1342 = load i32, i32* %queue_end2399, align 4
  %inc2400 = add nsw i32 %1342, 1
  store i32 %inc2400, i32* %queue_end2399, align 4
  %idxprom2401 = sext i32 %1342 to i64
  %1343 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2402 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1343, i32 0, i32 5
  %arrayidx2403 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2402, i32 0, i64 %idxprom2401
  store i32 %1340, i32* %arrayidx2403, align 4
  br label %if.end.2404

if.end.2404:                                      ; preds = %if.then.2398, %if.then.2392
  %1344 = load i32, i32* %distance, align 4
  %add2405 = add nsw i32 %1344, 1100
  %1345 = load i32, i32* %bpos, align 4
  %idxprom2406 = sext i32 %1345 to i64
  %1346 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2407 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1346, i32 0, i32 0
  %arrayidx2408 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2407, i32 0, i64 %idxprom2406
  store i32 %add2405, i32* %arrayidx2408, align 4
  %1347 = load i32, i32* %bpos, align 4
  %idxprom2409 = sext i32 %1347 to i64
  %1348 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2410 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1348, i32 0, i32 1
  %arrayidx2411 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2410, i32 0, i64 %idxprom2409
  store i32 1000, i32* %arrayidx2411, align 4
  %1349 = load i32, i32* %pos, align 4
  %1350 = load i32, i32* %bpos, align 4
  %idxprom2412 = sext i32 %1350 to i64
  %1351 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2413 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1351, i32 0, i32 2
  %arrayidx2414 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2413, i32 0, i64 %idxprom2412
  store i32 %1349, i32* %arrayidx2414, align 4
  %1352 = load i32, i32* %apos, align 4
  %1353 = load i32, i32* %bpos, align 4
  %idxprom2415 = sext i32 %1353 to i64
  %1354 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12416 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1354, i32 0, i32 3
  %arrayidx2417 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12416, i32 0, i64 %idxprom2415
  store i32 %1352, i32* %arrayidx2417, align 4
  %1355 = load i32, i32* %bpos, align 4
  %idxprom2418 = sext i32 %1355 to i64
  %1356 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22419 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1356, i32 0, i32 4
  %arrayidx2420 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22419, i32 0, i64 %idxprom2418
  store i32 0, i32* %arrayidx2420, align 4
  br label %if.end.2487

if.else.2421:                                     ; preds = %if.then.2386
  %1357 = load i32, i32* %bpos, align 4
  %arraydecay2424 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2425 = call i32 @findstones(i32 %1357, i32 361, i32* %arraydecay2424)
  store i32 %call2425, i32* %num_stones, align 4
  store i32 0, i32* %r2423, align 4
  br label %for.cond.2426

for.cond.2426:                                    ; preds = %for.inc.2484, %if.else.2421
  %1358 = load i32, i32* %r2423, align 4
  %1359 = load i32, i32* %num_stones, align 4
  %cmp2427 = icmp slt i32 %1358, %1359
  br i1 %cmp2427, label %for.body.2429, label %for.end.2486

for.body.2429:                                    ; preds = %for.cond.2426
  %1360 = load i32, i32* %r2423, align 4
  %idxprom2430 = sext i32 %1360 to i64
  %arrayidx2431 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2430
  %1361 = load i32, i32* %arrayidx2431, align 4
  %idxprom2432 = sext i32 %1361 to i64
  %1362 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2433 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1362, i32 0, i32 0
  %arrayidx2434 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2433, i32 0, i64 %idxprom2432
  %1363 = load i32, i32* %arrayidx2434, align 4
  %cmp2435 = icmp eq i32 %1363, 100000
  br i1 %cmp2435, label %if.then.2437, label %if.end.2445

if.then.2437:                                     ; preds = %for.body.2429
  %1364 = load i32, i32* %r2423, align 4
  %idxprom2438 = sext i32 %1364 to i64
  %arrayidx2439 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2438
  %1365 = load i32, i32* %arrayidx2439, align 4
  %1366 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2440 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1366, i32 0, i32 7
  %1367 = load i32, i32* %queue_end2440, align 4
  %inc2441 = add nsw i32 %1367, 1
  store i32 %inc2441, i32* %queue_end2440, align 4
  %idxprom2442 = sext i32 %1367 to i64
  %1368 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2443 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1368, i32 0, i32 5
  %arrayidx2444 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2443, i32 0, i64 %idxprom2442
  store i32 %1365, i32* %arrayidx2444, align 4
  br label %if.end.2445

if.end.2445:                                      ; preds = %if.then.2437, %for.body.2429
  %1369 = load i32, i32* %distance, align 4
  %add2446 = add nsw i32 %1369, 1100
  %1370 = load i32, i32* %r2423, align 4
  %idxprom2447 = sext i32 %1370 to i64
  %arrayidx2448 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2447
  %1371 = load i32, i32* %arrayidx2448, align 4
  %idxprom2449 = sext i32 %1371 to i64
  %1372 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2450 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1372, i32 0, i32 0
  %arrayidx2451 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2450, i32 0, i64 %idxprom2449
  store i32 %add2446, i32* %arrayidx2451, align 4
  %1373 = load i32, i32* %r2423, align 4
  %idxprom2452 = sext i32 %1373 to i64
  %arrayidx2453 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2452
  %1374 = load i32, i32* %arrayidx2453, align 4
  %idxprom2454 = sext i32 %1374 to i64
  %1375 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2455 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1375, i32 0, i32 1
  %arrayidx2456 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2455, i32 0, i64 %idxprom2454
  store i32 1000, i32* %arrayidx2456, align 4
  %1376 = load i32, i32* %pos, align 4
  %1377 = load i32, i32* %r2423, align 4
  %idxprom2457 = sext i32 %1377 to i64
  %arrayidx2458 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2457
  %1378 = load i32, i32* %arrayidx2458, align 4
  %idxprom2459 = sext i32 %1378 to i64
  %1379 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2460 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1379, i32 0, i32 2
  %arrayidx2461 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2460, i32 0, i64 %idxprom2459
  store i32 %1376, i32* %arrayidx2461, align 4
  %1380 = load i32, i32* %apos, align 4
  %1381 = load i32, i32* %r2423, align 4
  %idxprom2462 = sext i32 %1381 to i64
  %arrayidx2463 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2462
  %1382 = load i32, i32* %arrayidx2463, align 4
  %idxprom2464 = sext i32 %1382 to i64
  %1383 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12465 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1383, i32 0, i32 3
  %arrayidx2466 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12465, i32 0, i64 %idxprom2464
  store i32 %1380, i32* %arrayidx2466, align 4
  %1384 = load i32, i32* %r2423, align 4
  %idxprom2467 = sext i32 %1384 to i64
  %arrayidx2468 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2467
  %1385 = load i32, i32* %arrayidx2468, align 4
  %idxprom2469 = sext i32 %1385 to i64
  %1386 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22470 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1386, i32 0, i32 4
  %arrayidx2471 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22470, i32 0, i64 %idxprom2469
  store i32 0, i32* %arrayidx2471, align 4
  %1387 = load i32, i32* %r2423, align 4
  %idxprom2472 = sext i32 %1387 to i64
  %arrayidx2473 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2472
  %1388 = load i32, i32* %arrayidx2473, align 4
  %1389 = load i32, i32* %target.addr, align 4
  %cmp2474 = icmp eq i32 %1388, %1389
  br i1 %cmp2474, label %land.lhs.true.2476, label %if.end.2483

land.lhs.true.2476:                               ; preds = %if.end.2445
  %1390 = load i32, i32* %distance, align 4
  %add2477 = add nsw i32 %1390, 1100
  %1391 = load i32, i32* %cutoff_distance, align 4
  %cmp2478 = icmp slt i32 %add2477, %1391
  br i1 %cmp2478, label %if.then.2480, label %if.end.2483

if.then.2480:                                     ; preds = %land.lhs.true.2476
  %1392 = load i32, i32* %distance, align 4
  %add2481 = add nsw i32 %1392, 1100
  %sub2482 = sub nsw i32 %add2481, 1
  store i32 %sub2482, i32* %cutoff_distance, align 4
  br label %if.end.2483

if.end.2483:                                      ; preds = %if.then.2480, %land.lhs.true.2476, %if.end.2445
  br label %for.inc.2484

for.inc.2484:                                     ; preds = %if.end.2483
  %1393 = load i32, i32* %r2423, align 4
  %inc2485 = add nsw i32 %1393, 1
  store i32 %inc2485, i32* %r2423, align 4
  br label %for.cond.2426

for.end.2486:                                     ; preds = %for.cond.2426
  br label %if.end.2487

if.end.2487:                                      ; preds = %for.end.2486, %if.end.2404
  br label %if.end.2488

if.end.2488:                                      ; preds = %if.end.2487, %do.body.2379
  br label %do.end.2489

do.end.2489:                                      ; preds = %if.end.2488
  br label %if.end.2490

if.end.2490:                                      ; preds = %do.end.2489, %land.lhs.true.2375, %land.lhs.true.2368, %land.lhs.true.2362, %if.end.2356
  %1394 = load i32, i32* %bpos, align 4
  %idxprom2491 = sext i32 %1394 to i64
  %arrayidx2492 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2491
  %1395 = load i8, i8* %arrayidx2492, align 1
  %conv2493 = zext i8 %1395 to i32
  %cmp2494 = icmp eq i32 %conv2493, 0
  br i1 %cmp2494, label %land.lhs.true.2496, label %if.end.2624

land.lhs.true.2496:                               ; preds = %if.end.2490
  %1396 = load i32, i32* %gpos, align 4
  %idxprom2497 = sext i32 %1396 to i64
  %arrayidx2498 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2497
  %1397 = load i8, i8* %arrayidx2498, align 1
  %conv2499 = zext i8 %1397 to i32
  %cmp2500 = icmp eq i32 %conv2499, 0
  br i1 %cmp2500, label %land.lhs.true.2502, label %if.end.2624

land.lhs.true.2502:                               ; preds = %land.lhs.true.2496
  %1398 = load i32, i32* %bpos, align 4
  %idxprom2503 = sext i32 %1398 to i64
  %1399 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2504 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1399, i32 0, i32 0
  %arrayidx2505 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2504, i32 0, i64 %idxprom2503
  %1400 = load i32, i32* %arrayidx2505, align 4
  %1401 = load i32, i32* %distance, align 4
  %add2506 = add nsw i32 %1401, 1100
  %cmp2507 = icmp sgt i32 %1400, %add2506
  br i1 %cmp2507, label %land.lhs.true.2509, label %if.end.2624

land.lhs.true.2509:                               ; preds = %land.lhs.true.2502
  %1402 = load i32, i32* %color, align 4
  %1403 = load i32, i32* %bpos, align 4
  %1404 = load i32, i32* %gpos, align 4
  %call2510 = call i32 @does_secure(i32 %1402, i32 %1403, i32 %1404)
  %tobool2511 = icmp ne i32 %call2510, 0
  br i1 %tobool2511, label %if.then.2512, label %if.end.2624

if.then.2512:                                     ; preds = %land.lhs.true.2509
  br label %do.body.2513

do.body.2513:                                     ; preds = %if.then.2512
  %1405 = load i32, i32* %distance, align 4
  %add2514 = add nsw i32 %1405, 1100
  %1406 = load i32, i32* %bpos, align 4
  %idxprom2515 = sext i32 %1406 to i64
  %1407 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2516 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1407, i32 0, i32 0
  %arrayidx2517 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2516, i32 0, i64 %idxprom2515
  %1408 = load i32, i32* %arrayidx2517, align 4
  %cmp2518 = icmp slt i32 %add2514, %1408
  br i1 %cmp2518, label %if.then.2520, label %if.end.2622

if.then.2520:                                     ; preds = %do.body.2513
  %1409 = load i32, i32* %bpos, align 4
  %idxprom2521 = sext i32 %1409 to i64
  %arrayidx2522 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2521
  %1410 = load i8, i8* %arrayidx2522, align 1
  %conv2523 = zext i8 %1410 to i32
  %cmp2524 = icmp eq i32 %conv2523, 0
  br i1 %cmp2524, label %if.then.2526, label %if.else.2555

if.then.2526:                                     ; preds = %if.then.2520
  %1411 = load i32, i32* %bpos, align 4
  %idxprom2527 = sext i32 %1411 to i64
  %1412 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2528 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1412, i32 0, i32 0
  %arrayidx2529 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2528, i32 0, i64 %idxprom2527
  %1413 = load i32, i32* %arrayidx2529, align 4
  %cmp2530 = icmp eq i32 %1413, 100000
  br i1 %cmp2530, label %if.then.2532, label %if.end.2538

if.then.2532:                                     ; preds = %if.then.2526
  %1414 = load i32, i32* %bpos, align 4
  %1415 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2533 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1415, i32 0, i32 7
  %1416 = load i32, i32* %queue_end2533, align 4
  %inc2534 = add nsw i32 %1416, 1
  store i32 %inc2534, i32* %queue_end2533, align 4
  %idxprom2535 = sext i32 %1416 to i64
  %1417 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2536 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1417, i32 0, i32 5
  %arrayidx2537 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2536, i32 0, i64 %idxprom2535
  store i32 %1414, i32* %arrayidx2537, align 4
  br label %if.end.2538

if.end.2538:                                      ; preds = %if.then.2532, %if.then.2526
  %1418 = load i32, i32* %distance, align 4
  %add2539 = add nsw i32 %1418, 1100
  %1419 = load i32, i32* %bpos, align 4
  %idxprom2540 = sext i32 %1419 to i64
  %1420 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2541 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1420, i32 0, i32 0
  %arrayidx2542 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2541, i32 0, i64 %idxprom2540
  store i32 %add2539, i32* %arrayidx2542, align 4
  %1421 = load i32, i32* %bpos, align 4
  %idxprom2543 = sext i32 %1421 to i64
  %1422 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2544 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1422, i32 0, i32 1
  %arrayidx2545 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2544, i32 0, i64 %idxprom2543
  store i32 1000, i32* %arrayidx2545, align 4
  %1423 = load i32, i32* %pos, align 4
  %1424 = load i32, i32* %bpos, align 4
  %idxprom2546 = sext i32 %1424 to i64
  %1425 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2547 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1425, i32 0, i32 2
  %arrayidx2548 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2547, i32 0, i64 %idxprom2546
  store i32 %1423, i32* %arrayidx2548, align 4
  %1426 = load i32, i32* %gpos, align 4
  %1427 = load i32, i32* %bpos, align 4
  %idxprom2549 = sext i32 %1427 to i64
  %1428 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12550 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1428, i32 0, i32 3
  %arrayidx2551 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12550, i32 0, i64 %idxprom2549
  store i32 %1426, i32* %arrayidx2551, align 4
  %1429 = load i32, i32* %bpos, align 4
  %idxprom2552 = sext i32 %1429 to i64
  %1430 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22553 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1430, i32 0, i32 4
  %arrayidx2554 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22553, i32 0, i64 %idxprom2552
  store i32 0, i32* %arrayidx2554, align 4
  br label %if.end.2621

if.else.2555:                                     ; preds = %if.then.2520
  %1431 = load i32, i32* %bpos, align 4
  %arraydecay2558 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2559 = call i32 @findstones(i32 %1431, i32 361, i32* %arraydecay2558)
  store i32 %call2559, i32* %num_stones, align 4
  store i32 0, i32* %r2557, align 4
  br label %for.cond.2560

for.cond.2560:                                    ; preds = %for.inc.2618, %if.else.2555
  %1432 = load i32, i32* %r2557, align 4
  %1433 = load i32, i32* %num_stones, align 4
  %cmp2561 = icmp slt i32 %1432, %1433
  br i1 %cmp2561, label %for.body.2563, label %for.end.2620

for.body.2563:                                    ; preds = %for.cond.2560
  %1434 = load i32, i32* %r2557, align 4
  %idxprom2564 = sext i32 %1434 to i64
  %arrayidx2565 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2564
  %1435 = load i32, i32* %arrayidx2565, align 4
  %idxprom2566 = sext i32 %1435 to i64
  %1436 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2567 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1436, i32 0, i32 0
  %arrayidx2568 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2567, i32 0, i64 %idxprom2566
  %1437 = load i32, i32* %arrayidx2568, align 4
  %cmp2569 = icmp eq i32 %1437, 100000
  br i1 %cmp2569, label %if.then.2571, label %if.end.2579

if.then.2571:                                     ; preds = %for.body.2563
  %1438 = load i32, i32* %r2557, align 4
  %idxprom2572 = sext i32 %1438 to i64
  %arrayidx2573 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2572
  %1439 = load i32, i32* %arrayidx2573, align 4
  %1440 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2574 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1440, i32 0, i32 7
  %1441 = load i32, i32* %queue_end2574, align 4
  %inc2575 = add nsw i32 %1441, 1
  store i32 %inc2575, i32* %queue_end2574, align 4
  %idxprom2576 = sext i32 %1441 to i64
  %1442 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2577 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1442, i32 0, i32 5
  %arrayidx2578 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2577, i32 0, i64 %idxprom2576
  store i32 %1439, i32* %arrayidx2578, align 4
  br label %if.end.2579

if.end.2579:                                      ; preds = %if.then.2571, %for.body.2563
  %1443 = load i32, i32* %distance, align 4
  %add2580 = add nsw i32 %1443, 1100
  %1444 = load i32, i32* %r2557, align 4
  %idxprom2581 = sext i32 %1444 to i64
  %arrayidx2582 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2581
  %1445 = load i32, i32* %arrayidx2582, align 4
  %idxprom2583 = sext i32 %1445 to i64
  %1446 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2584 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1446, i32 0, i32 0
  %arrayidx2585 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2584, i32 0, i64 %idxprom2583
  store i32 %add2580, i32* %arrayidx2585, align 4
  %1447 = load i32, i32* %r2557, align 4
  %idxprom2586 = sext i32 %1447 to i64
  %arrayidx2587 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2586
  %1448 = load i32, i32* %arrayidx2587, align 4
  %idxprom2588 = sext i32 %1448 to i64
  %1449 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2589 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1449, i32 0, i32 1
  %arrayidx2590 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2589, i32 0, i64 %idxprom2588
  store i32 1000, i32* %arrayidx2590, align 4
  %1450 = load i32, i32* %pos, align 4
  %1451 = load i32, i32* %r2557, align 4
  %idxprom2591 = sext i32 %1451 to i64
  %arrayidx2592 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2591
  %1452 = load i32, i32* %arrayidx2592, align 4
  %idxprom2593 = sext i32 %1452 to i64
  %1453 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2594 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1453, i32 0, i32 2
  %arrayidx2595 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2594, i32 0, i64 %idxprom2593
  store i32 %1450, i32* %arrayidx2595, align 4
  %1454 = load i32, i32* %gpos, align 4
  %1455 = load i32, i32* %r2557, align 4
  %idxprom2596 = sext i32 %1455 to i64
  %arrayidx2597 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2596
  %1456 = load i32, i32* %arrayidx2597, align 4
  %idxprom2598 = sext i32 %1456 to i64
  %1457 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12599 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1457, i32 0, i32 3
  %arrayidx2600 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12599, i32 0, i64 %idxprom2598
  store i32 %1454, i32* %arrayidx2600, align 4
  %1458 = load i32, i32* %r2557, align 4
  %idxprom2601 = sext i32 %1458 to i64
  %arrayidx2602 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2601
  %1459 = load i32, i32* %arrayidx2602, align 4
  %idxprom2603 = sext i32 %1459 to i64
  %1460 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22604 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1460, i32 0, i32 4
  %arrayidx2605 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22604, i32 0, i64 %idxprom2603
  store i32 0, i32* %arrayidx2605, align 4
  %1461 = load i32, i32* %r2557, align 4
  %idxprom2606 = sext i32 %1461 to i64
  %arrayidx2607 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2606
  %1462 = load i32, i32* %arrayidx2607, align 4
  %1463 = load i32, i32* %target.addr, align 4
  %cmp2608 = icmp eq i32 %1462, %1463
  br i1 %cmp2608, label %land.lhs.true.2610, label %if.end.2617

land.lhs.true.2610:                               ; preds = %if.end.2579
  %1464 = load i32, i32* %distance, align 4
  %add2611 = add nsw i32 %1464, 1100
  %1465 = load i32, i32* %cutoff_distance, align 4
  %cmp2612 = icmp slt i32 %add2611, %1465
  br i1 %cmp2612, label %if.then.2614, label %if.end.2617

if.then.2614:                                     ; preds = %land.lhs.true.2610
  %1466 = load i32, i32* %distance, align 4
  %add2615 = add nsw i32 %1466, 1100
  %sub2616 = sub nsw i32 %add2615, 1
  store i32 %sub2616, i32* %cutoff_distance, align 4
  br label %if.end.2617

if.end.2617:                                      ; preds = %if.then.2614, %land.lhs.true.2610, %if.end.2579
  br label %for.inc.2618

for.inc.2618:                                     ; preds = %if.end.2617
  %1467 = load i32, i32* %r2557, align 4
  %inc2619 = add nsw i32 %1467, 1
  store i32 %inc2619, i32* %r2557, align 4
  br label %for.cond.2560

for.end.2620:                                     ; preds = %for.cond.2560
  br label %if.end.2621

if.end.2621:                                      ; preds = %for.end.2620, %if.end.2538
  br label %if.end.2622

if.end.2622:                                      ; preds = %if.end.2621, %do.body.2513
  br label %do.end.2623

do.end.2623:                                      ; preds = %if.end.2622
  br label %if.end.2624

if.end.2624:                                      ; preds = %do.end.2623, %land.lhs.true.2509, %land.lhs.true.2502, %land.lhs.true.2496, %if.end.2490
  %1468 = load i32, i32* %gpos, align 4
  %idxprom2625 = sext i32 %1468 to i64
  %arrayidx2626 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2625
  %1469 = load i8, i8* %arrayidx2626, align 1
  %conv2627 = zext i8 %1469 to i32
  %cmp2628 = icmp eq i32 %conv2627, 0
  br i1 %cmp2628, label %land.lhs.true.2630, label %if.end.2758

land.lhs.true.2630:                               ; preds = %if.end.2624
  %1470 = load i32, i32* %epos, align 4
  %idxprom2631 = sext i32 %1470 to i64
  %arrayidx2632 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2631
  %1471 = load i8, i8* %arrayidx2632, align 1
  %conv2633 = zext i8 %1471 to i32
  %cmp2634 = icmp eq i32 %conv2633, 0
  br i1 %cmp2634, label %land.lhs.true.2636, label %if.end.2758

land.lhs.true.2636:                               ; preds = %land.lhs.true.2630
  %1472 = load i32, i32* %epos, align 4
  %idxprom2637 = sext i32 %1472 to i64
  %1473 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2638 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1473, i32 0, i32 0
  %arrayidx2639 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2638, i32 0, i64 %idxprom2637
  %1474 = load i32, i32* %arrayidx2639, align 4
  %1475 = load i32, i32* %distance, align 4
  %add2640 = add nsw i32 %1475, 1100
  %cmp2641 = icmp sgt i32 %1474, %add2640
  br i1 %cmp2641, label %land.lhs.true.2643, label %if.end.2758

land.lhs.true.2643:                               ; preds = %land.lhs.true.2636
  %1476 = load i32, i32* %color, align 4
  %1477 = load i32, i32* %epos, align 4
  %1478 = load i32, i32* %gpos, align 4
  %call2644 = call i32 @does_secure(i32 %1476, i32 %1477, i32 %1478)
  %tobool2645 = icmp ne i32 %call2644, 0
  br i1 %tobool2645, label %if.then.2646, label %if.end.2758

if.then.2646:                                     ; preds = %land.lhs.true.2643
  br label %do.body.2647

do.body.2647:                                     ; preds = %if.then.2646
  %1479 = load i32, i32* %distance, align 4
  %add2648 = add nsw i32 %1479, 1100
  %1480 = load i32, i32* %epos, align 4
  %idxprom2649 = sext i32 %1480 to i64
  %1481 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2650 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1481, i32 0, i32 0
  %arrayidx2651 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2650, i32 0, i64 %idxprom2649
  %1482 = load i32, i32* %arrayidx2651, align 4
  %cmp2652 = icmp slt i32 %add2648, %1482
  br i1 %cmp2652, label %if.then.2654, label %if.end.2756

if.then.2654:                                     ; preds = %do.body.2647
  %1483 = load i32, i32* %epos, align 4
  %idxprom2655 = sext i32 %1483 to i64
  %arrayidx2656 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2655
  %1484 = load i8, i8* %arrayidx2656, align 1
  %conv2657 = zext i8 %1484 to i32
  %cmp2658 = icmp eq i32 %conv2657, 0
  br i1 %cmp2658, label %if.then.2660, label %if.else.2689

if.then.2660:                                     ; preds = %if.then.2654
  %1485 = load i32, i32* %epos, align 4
  %idxprom2661 = sext i32 %1485 to i64
  %1486 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2662 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1486, i32 0, i32 0
  %arrayidx2663 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2662, i32 0, i64 %idxprom2661
  %1487 = load i32, i32* %arrayidx2663, align 4
  %cmp2664 = icmp eq i32 %1487, 100000
  br i1 %cmp2664, label %if.then.2666, label %if.end.2672

if.then.2666:                                     ; preds = %if.then.2660
  %1488 = load i32, i32* %epos, align 4
  %1489 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2667 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1489, i32 0, i32 7
  %1490 = load i32, i32* %queue_end2667, align 4
  %inc2668 = add nsw i32 %1490, 1
  store i32 %inc2668, i32* %queue_end2667, align 4
  %idxprom2669 = sext i32 %1490 to i64
  %1491 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2670 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1491, i32 0, i32 5
  %arrayidx2671 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2670, i32 0, i64 %idxprom2669
  store i32 %1488, i32* %arrayidx2671, align 4
  br label %if.end.2672

if.end.2672:                                      ; preds = %if.then.2666, %if.then.2660
  %1492 = load i32, i32* %distance, align 4
  %add2673 = add nsw i32 %1492, 1100
  %1493 = load i32, i32* %epos, align 4
  %idxprom2674 = sext i32 %1493 to i64
  %1494 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2675 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1494, i32 0, i32 0
  %arrayidx2676 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2675, i32 0, i64 %idxprom2674
  store i32 %add2673, i32* %arrayidx2676, align 4
  %1495 = load i32, i32* %epos, align 4
  %idxprom2677 = sext i32 %1495 to i64
  %1496 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2678 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1496, i32 0, i32 1
  %arrayidx2679 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2678, i32 0, i64 %idxprom2677
  store i32 1000, i32* %arrayidx2679, align 4
  %1497 = load i32, i32* %pos, align 4
  %1498 = load i32, i32* %epos, align 4
  %idxprom2680 = sext i32 %1498 to i64
  %1499 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2681 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1499, i32 0, i32 2
  %arrayidx2682 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2681, i32 0, i64 %idxprom2680
  store i32 %1497, i32* %arrayidx2682, align 4
  %1500 = load i32, i32* %gpos, align 4
  %1501 = load i32, i32* %epos, align 4
  %idxprom2683 = sext i32 %1501 to i64
  %1502 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12684 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1502, i32 0, i32 3
  %arrayidx2685 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12684, i32 0, i64 %idxprom2683
  store i32 %1500, i32* %arrayidx2685, align 4
  %1503 = load i32, i32* %epos, align 4
  %idxprom2686 = sext i32 %1503 to i64
  %1504 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22687 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1504, i32 0, i32 4
  %arrayidx2688 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22687, i32 0, i64 %idxprom2686
  store i32 0, i32* %arrayidx2688, align 4
  br label %if.end.2755

if.else.2689:                                     ; preds = %if.then.2654
  %1505 = load i32, i32* %epos, align 4
  %arraydecay2692 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2693 = call i32 @findstones(i32 %1505, i32 361, i32* %arraydecay2692)
  store i32 %call2693, i32* %num_stones, align 4
  store i32 0, i32* %r2691, align 4
  br label %for.cond.2694

for.cond.2694:                                    ; preds = %for.inc.2752, %if.else.2689
  %1506 = load i32, i32* %r2691, align 4
  %1507 = load i32, i32* %num_stones, align 4
  %cmp2695 = icmp slt i32 %1506, %1507
  br i1 %cmp2695, label %for.body.2697, label %for.end.2754

for.body.2697:                                    ; preds = %for.cond.2694
  %1508 = load i32, i32* %r2691, align 4
  %idxprom2698 = sext i32 %1508 to i64
  %arrayidx2699 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2698
  %1509 = load i32, i32* %arrayidx2699, align 4
  %idxprom2700 = sext i32 %1509 to i64
  %1510 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2701 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1510, i32 0, i32 0
  %arrayidx2702 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2701, i32 0, i64 %idxprom2700
  %1511 = load i32, i32* %arrayidx2702, align 4
  %cmp2703 = icmp eq i32 %1511, 100000
  br i1 %cmp2703, label %if.then.2705, label %if.end.2713

if.then.2705:                                     ; preds = %for.body.2697
  %1512 = load i32, i32* %r2691, align 4
  %idxprom2706 = sext i32 %1512 to i64
  %arrayidx2707 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2706
  %1513 = load i32, i32* %arrayidx2707, align 4
  %1514 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2708 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1514, i32 0, i32 7
  %1515 = load i32, i32* %queue_end2708, align 4
  %inc2709 = add nsw i32 %1515, 1
  store i32 %inc2709, i32* %queue_end2708, align 4
  %idxprom2710 = sext i32 %1515 to i64
  %1516 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2711 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1516, i32 0, i32 5
  %arrayidx2712 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2711, i32 0, i64 %idxprom2710
  store i32 %1513, i32* %arrayidx2712, align 4
  br label %if.end.2713

if.end.2713:                                      ; preds = %if.then.2705, %for.body.2697
  %1517 = load i32, i32* %distance, align 4
  %add2714 = add nsw i32 %1517, 1100
  %1518 = load i32, i32* %r2691, align 4
  %idxprom2715 = sext i32 %1518 to i64
  %arrayidx2716 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2715
  %1519 = load i32, i32* %arrayidx2716, align 4
  %idxprom2717 = sext i32 %1519 to i64
  %1520 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2718 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1520, i32 0, i32 0
  %arrayidx2719 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2718, i32 0, i64 %idxprom2717
  store i32 %add2714, i32* %arrayidx2719, align 4
  %1521 = load i32, i32* %r2691, align 4
  %idxprom2720 = sext i32 %1521 to i64
  %arrayidx2721 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2720
  %1522 = load i32, i32* %arrayidx2721, align 4
  %idxprom2722 = sext i32 %1522 to i64
  %1523 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2723 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1523, i32 0, i32 1
  %arrayidx2724 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2723, i32 0, i64 %idxprom2722
  store i32 1000, i32* %arrayidx2724, align 4
  %1524 = load i32, i32* %pos, align 4
  %1525 = load i32, i32* %r2691, align 4
  %idxprom2725 = sext i32 %1525 to i64
  %arrayidx2726 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2725
  %1526 = load i32, i32* %arrayidx2726, align 4
  %idxprom2727 = sext i32 %1526 to i64
  %1527 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2728 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1527, i32 0, i32 2
  %arrayidx2729 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2728, i32 0, i64 %idxprom2727
  store i32 %1524, i32* %arrayidx2729, align 4
  %1528 = load i32, i32* %gpos, align 4
  %1529 = load i32, i32* %r2691, align 4
  %idxprom2730 = sext i32 %1529 to i64
  %arrayidx2731 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2730
  %1530 = load i32, i32* %arrayidx2731, align 4
  %idxprom2732 = sext i32 %1530 to i64
  %1531 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12733 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1531, i32 0, i32 3
  %arrayidx2734 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12733, i32 0, i64 %idxprom2732
  store i32 %1528, i32* %arrayidx2734, align 4
  %1532 = load i32, i32* %r2691, align 4
  %idxprom2735 = sext i32 %1532 to i64
  %arrayidx2736 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2735
  %1533 = load i32, i32* %arrayidx2736, align 4
  %idxprom2737 = sext i32 %1533 to i64
  %1534 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22738 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1534, i32 0, i32 4
  %arrayidx2739 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22738, i32 0, i64 %idxprom2737
  store i32 0, i32* %arrayidx2739, align 4
  %1535 = load i32, i32* %r2691, align 4
  %idxprom2740 = sext i32 %1535 to i64
  %arrayidx2741 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2740
  %1536 = load i32, i32* %arrayidx2741, align 4
  %1537 = load i32, i32* %target.addr, align 4
  %cmp2742 = icmp eq i32 %1536, %1537
  br i1 %cmp2742, label %land.lhs.true.2744, label %if.end.2751

land.lhs.true.2744:                               ; preds = %if.end.2713
  %1538 = load i32, i32* %distance, align 4
  %add2745 = add nsw i32 %1538, 1100
  %1539 = load i32, i32* %cutoff_distance, align 4
  %cmp2746 = icmp slt i32 %add2745, %1539
  br i1 %cmp2746, label %if.then.2748, label %if.end.2751

if.then.2748:                                     ; preds = %land.lhs.true.2744
  %1540 = load i32, i32* %distance, align 4
  %add2749 = add nsw i32 %1540, 1100
  %sub2750 = sub nsw i32 %add2749, 1
  store i32 %sub2750, i32* %cutoff_distance, align 4
  br label %if.end.2751

if.end.2751:                                      ; preds = %if.then.2748, %land.lhs.true.2744, %if.end.2713
  br label %for.inc.2752

for.inc.2752:                                     ; preds = %if.end.2751
  %1541 = load i32, i32* %r2691, align 4
  %inc2753 = add nsw i32 %1541, 1
  store i32 %inc2753, i32* %r2691, align 4
  br label %for.cond.2694

for.end.2754:                                     ; preds = %for.cond.2694
  br label %if.end.2755

if.end.2755:                                      ; preds = %for.end.2754, %if.end.2672
  br label %if.end.2756

if.end.2756:                                      ; preds = %if.end.2755, %do.body.2647
  br label %do.end.2757

do.end.2757:                                      ; preds = %if.end.2756
  br label %if.end.2758

if.end.2758:                                      ; preds = %do.end.2757, %land.lhs.true.2643, %land.lhs.true.2636, %land.lhs.true.2630, %if.end.2624
  %1542 = load i32, i32* %gpos, align 4
  %idxprom2759 = sext i32 %1542 to i64
  %arrayidx2760 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2759
  %1543 = load i8, i8* %arrayidx2760, align 1
  %conv2761 = zext i8 %1543 to i32
  %cmp2762 = icmp eq i32 %conv2761, 0
  br i1 %cmp2762, label %land.lhs.true.2764, label %if.end.2925

land.lhs.true.2764:                               ; preds = %if.end.2758
  %1544 = load i32, i32* %epos, align 4
  %idxprom2765 = sext i32 %1544 to i64
  %arrayidx2766 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2765
  %1545 = load i8, i8* %arrayidx2766, align 1
  %conv2767 = zext i8 %1545 to i32
  %cmp2768 = icmp eq i32 %conv2767, 0
  br i1 %cmp2768, label %land.lhs.true.2770, label %if.end.2925

land.lhs.true.2770:                               ; preds = %land.lhs.true.2764
  %1546 = load i32, i32* %epos, align 4
  %idxprom2771 = sext i32 %1546 to i64
  %1547 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2772 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1547, i32 0, i32 0
  %arrayidx2773 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2772, i32 0, i64 %idxprom2771
  %1548 = load i32, i32* %arrayidx2773, align 4
  %1549 = load i32, i32* %distance, align 4
  %add2774 = add nsw i32 %1549, 1100
  %cmp2775 = icmp sgt i32 %1548, %add2774
  br i1 %cmp2775, label %land.lhs.true.2777, label %if.end.2925

land.lhs.true.2777:                               ; preds = %land.lhs.true.2770
  %1550 = load i32, i32* %apos, align 4
  %idxprom2778 = sext i32 %1550 to i64
  %arrayidx2779 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2778
  %1551 = load i8, i8* %arrayidx2779, align 1
  %conv2780 = zext i8 %1551 to i32
  %1552 = load i32, i32* %color, align 4
  %cmp2781 = icmp eq i32 %conv2780, %1552
  br i1 %cmp2781, label %land.lhs.true.2783, label %lor.lhs.false.2795

land.lhs.true.2783:                               ; preds = %land.lhs.true.2777
  %1553 = load i32, i32* %fpos, align 4
  %idxprom2784 = sext i32 %1553 to i64
  %arrayidx2785 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2784
  %1554 = load i8, i8* %arrayidx2785, align 1
  %conv2786 = zext i8 %1554 to i32
  %1555 = load i32, i32* %color, align 4
  %cmp2787 = icmp eq i32 %conv2786, %1555
  br i1 %cmp2787, label %land.lhs.true.2789, label %lor.lhs.false.2795

land.lhs.true.2789:                               ; preds = %land.lhs.true.2783
  %1556 = load i32, i32* %bpos, align 4
  %idxprom2790 = sext i32 %1556 to i64
  %arrayidx2791 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2790
  %1557 = load i8, i8* %arrayidx2791, align 1
  %conv2792 = zext i8 %1557 to i32
  %cmp2793 = icmp eq i32 %conv2792, 0
  br i1 %cmp2793, label %if.then.2813, label %lor.lhs.false.2795

lor.lhs.false.2795:                               ; preds = %land.lhs.true.2789, %land.lhs.true.2783, %land.lhs.true.2777
  %1558 = load i32, i32* %hpos, align 4
  %idxprom2796 = sext i32 %1558 to i64
  %arrayidx2797 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2796
  %1559 = load i8, i8* %arrayidx2797, align 1
  %conv2798 = zext i8 %1559 to i32
  %1560 = load i32, i32* %color, align 4
  %cmp2799 = icmp eq i32 %conv2798, %1560
  br i1 %cmp2799, label %land.lhs.true.2801, label %if.end.2925

land.lhs.true.2801:                               ; preds = %lor.lhs.false.2795
  %1561 = load i32, i32* %jpos, align 4
  %idxprom2802 = sext i32 %1561 to i64
  %arrayidx2803 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2802
  %1562 = load i8, i8* %arrayidx2803, align 1
  %conv2804 = zext i8 %1562 to i32
  %1563 = load i32, i32* %color, align 4
  %cmp2805 = icmp eq i32 %conv2804, %1563
  br i1 %cmp2805, label %land.lhs.true.2807, label %if.end.2925

land.lhs.true.2807:                               ; preds = %land.lhs.true.2801
  %1564 = load i32, i32* %ipos, align 4
  %idxprom2808 = sext i32 %1564 to i64
  %arrayidx2809 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2808
  %1565 = load i8, i8* %arrayidx2809, align 1
  %conv2810 = zext i8 %1565 to i32
  %cmp2811 = icmp eq i32 %conv2810, 0
  br i1 %cmp2811, label %if.then.2813, label %if.end.2925

if.then.2813:                                     ; preds = %land.lhs.true.2807, %land.lhs.true.2789
  br label %do.body.2814

do.body.2814:                                     ; preds = %if.then.2813
  %1566 = load i32, i32* %distance, align 4
  %add2815 = add nsw i32 %1566, 1100
  %1567 = load i32, i32* %epos, align 4
  %idxprom2816 = sext i32 %1567 to i64
  %1568 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2817 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1568, i32 0, i32 0
  %arrayidx2818 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2817, i32 0, i64 %idxprom2816
  %1569 = load i32, i32* %arrayidx2818, align 4
  %cmp2819 = icmp slt i32 %add2815, %1569
  br i1 %cmp2819, label %if.then.2821, label %if.end.2923

if.then.2821:                                     ; preds = %do.body.2814
  %1570 = load i32, i32* %epos, align 4
  %idxprom2822 = sext i32 %1570 to i64
  %arrayidx2823 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2822
  %1571 = load i8, i8* %arrayidx2823, align 1
  %conv2824 = zext i8 %1571 to i32
  %cmp2825 = icmp eq i32 %conv2824, 0
  br i1 %cmp2825, label %if.then.2827, label %if.else.2856

if.then.2827:                                     ; preds = %if.then.2821
  %1572 = load i32, i32* %epos, align 4
  %idxprom2828 = sext i32 %1572 to i64
  %1573 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2829 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1573, i32 0, i32 0
  %arrayidx2830 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2829, i32 0, i64 %idxprom2828
  %1574 = load i32, i32* %arrayidx2830, align 4
  %cmp2831 = icmp eq i32 %1574, 100000
  br i1 %cmp2831, label %if.then.2833, label %if.end.2839

if.then.2833:                                     ; preds = %if.then.2827
  %1575 = load i32, i32* %epos, align 4
  %1576 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2834 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1576, i32 0, i32 7
  %1577 = load i32, i32* %queue_end2834, align 4
  %inc2835 = add nsw i32 %1577, 1
  store i32 %inc2835, i32* %queue_end2834, align 4
  %idxprom2836 = sext i32 %1577 to i64
  %1578 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2837 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1578, i32 0, i32 5
  %arrayidx2838 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2837, i32 0, i64 %idxprom2836
  store i32 %1575, i32* %arrayidx2838, align 4
  br label %if.end.2839

if.end.2839:                                      ; preds = %if.then.2833, %if.then.2827
  %1579 = load i32, i32* %distance, align 4
  %add2840 = add nsw i32 %1579, 1100
  %1580 = load i32, i32* %epos, align 4
  %idxprom2841 = sext i32 %1580 to i64
  %1581 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2842 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1581, i32 0, i32 0
  %arrayidx2843 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2842, i32 0, i64 %idxprom2841
  store i32 %add2840, i32* %arrayidx2843, align 4
  %1582 = load i32, i32* %epos, align 4
  %idxprom2844 = sext i32 %1582 to i64
  %1583 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2845 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1583, i32 0, i32 1
  %arrayidx2846 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2845, i32 0, i64 %idxprom2844
  store i32 1000, i32* %arrayidx2846, align 4
  %1584 = load i32, i32* %pos, align 4
  %1585 = load i32, i32* %epos, align 4
  %idxprom2847 = sext i32 %1585 to i64
  %1586 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2848 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1586, i32 0, i32 2
  %arrayidx2849 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2848, i32 0, i64 %idxprom2847
  store i32 %1584, i32* %arrayidx2849, align 4
  %1587 = load i32, i32* %gpos, align 4
  %1588 = load i32, i32* %epos, align 4
  %idxprom2850 = sext i32 %1588 to i64
  %1589 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12851 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1589, i32 0, i32 3
  %arrayidx2852 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12851, i32 0, i64 %idxprom2850
  store i32 %1587, i32* %arrayidx2852, align 4
  %1590 = load i32, i32* %epos, align 4
  %idxprom2853 = sext i32 %1590 to i64
  %1591 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22854 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1591, i32 0, i32 4
  %arrayidx2855 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22854, i32 0, i64 %idxprom2853
  store i32 0, i32* %arrayidx2855, align 4
  br label %if.end.2922

if.else.2856:                                     ; preds = %if.then.2821
  %1592 = load i32, i32* %epos, align 4
  %arraydecay2859 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2860 = call i32 @findstones(i32 %1592, i32 361, i32* %arraydecay2859)
  store i32 %call2860, i32* %num_stones, align 4
  store i32 0, i32* %r2858, align 4
  br label %for.cond.2861

for.cond.2861:                                    ; preds = %for.inc.2919, %if.else.2856
  %1593 = load i32, i32* %r2858, align 4
  %1594 = load i32, i32* %num_stones, align 4
  %cmp2862 = icmp slt i32 %1593, %1594
  br i1 %cmp2862, label %for.body.2864, label %for.end.2921

for.body.2864:                                    ; preds = %for.cond.2861
  %1595 = load i32, i32* %r2858, align 4
  %idxprom2865 = sext i32 %1595 to i64
  %arrayidx2866 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2865
  %1596 = load i32, i32* %arrayidx2866, align 4
  %idxprom2867 = sext i32 %1596 to i64
  %1597 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2868 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1597, i32 0, i32 0
  %arrayidx2869 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2868, i32 0, i64 %idxprom2867
  %1598 = load i32, i32* %arrayidx2869, align 4
  %cmp2870 = icmp eq i32 %1598, 100000
  br i1 %cmp2870, label %if.then.2872, label %if.end.2880

if.then.2872:                                     ; preds = %for.body.2864
  %1599 = load i32, i32* %r2858, align 4
  %idxprom2873 = sext i32 %1599 to i64
  %arrayidx2874 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2873
  %1600 = load i32, i32* %arrayidx2874, align 4
  %1601 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2875 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1601, i32 0, i32 7
  %1602 = load i32, i32* %queue_end2875, align 4
  %inc2876 = add nsw i32 %1602, 1
  store i32 %inc2876, i32* %queue_end2875, align 4
  %idxprom2877 = sext i32 %1602 to i64
  %1603 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2878 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1603, i32 0, i32 5
  %arrayidx2879 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2878, i32 0, i64 %idxprom2877
  store i32 %1600, i32* %arrayidx2879, align 4
  br label %if.end.2880

if.end.2880:                                      ; preds = %if.then.2872, %for.body.2864
  %1604 = load i32, i32* %distance, align 4
  %add2881 = add nsw i32 %1604, 1100
  %1605 = load i32, i32* %r2858, align 4
  %idxprom2882 = sext i32 %1605 to i64
  %arrayidx2883 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2882
  %1606 = load i32, i32* %arrayidx2883, align 4
  %idxprom2884 = sext i32 %1606 to i64
  %1607 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2885 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1607, i32 0, i32 0
  %arrayidx2886 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2885, i32 0, i64 %idxprom2884
  store i32 %add2881, i32* %arrayidx2886, align 4
  %1608 = load i32, i32* %r2858, align 4
  %idxprom2887 = sext i32 %1608 to i64
  %arrayidx2888 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2887
  %1609 = load i32, i32* %arrayidx2888, align 4
  %idxprom2889 = sext i32 %1609 to i64
  %1610 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2890 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1610, i32 0, i32 1
  %arrayidx2891 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2890, i32 0, i64 %idxprom2889
  store i32 1000, i32* %arrayidx2891, align 4
  %1611 = load i32, i32* %pos, align 4
  %1612 = load i32, i32* %r2858, align 4
  %idxprom2892 = sext i32 %1612 to i64
  %arrayidx2893 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2892
  %1613 = load i32, i32* %arrayidx2893, align 4
  %idxprom2894 = sext i32 %1613 to i64
  %1614 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2895 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1614, i32 0, i32 2
  %arrayidx2896 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2895, i32 0, i64 %idxprom2894
  store i32 %1611, i32* %arrayidx2896, align 4
  %1615 = load i32, i32* %gpos, align 4
  %1616 = load i32, i32* %r2858, align 4
  %idxprom2897 = sext i32 %1616 to i64
  %arrayidx2898 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2897
  %1617 = load i32, i32* %arrayidx2898, align 4
  %idxprom2899 = sext i32 %1617 to i64
  %1618 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12900 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1618, i32 0, i32 3
  %arrayidx2901 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12900, i32 0, i64 %idxprom2899
  store i32 %1615, i32* %arrayidx2901, align 4
  %1619 = load i32, i32* %r2858, align 4
  %idxprom2902 = sext i32 %1619 to i64
  %arrayidx2903 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2902
  %1620 = load i32, i32* %arrayidx2903, align 4
  %idxprom2904 = sext i32 %1620 to i64
  %1621 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22905 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1621, i32 0, i32 4
  %arrayidx2906 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22905, i32 0, i64 %idxprom2904
  store i32 0, i32* %arrayidx2906, align 4
  %1622 = load i32, i32* %r2858, align 4
  %idxprom2907 = sext i32 %1622 to i64
  %arrayidx2908 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom2907
  %1623 = load i32, i32* %arrayidx2908, align 4
  %1624 = load i32, i32* %target.addr, align 4
  %cmp2909 = icmp eq i32 %1623, %1624
  br i1 %cmp2909, label %land.lhs.true.2911, label %if.end.2918

land.lhs.true.2911:                               ; preds = %if.end.2880
  %1625 = load i32, i32* %distance, align 4
  %add2912 = add nsw i32 %1625, 1100
  %1626 = load i32, i32* %cutoff_distance, align 4
  %cmp2913 = icmp slt i32 %add2912, %1626
  br i1 %cmp2913, label %if.then.2915, label %if.end.2918

if.then.2915:                                     ; preds = %land.lhs.true.2911
  %1627 = load i32, i32* %distance, align 4
  %add2916 = add nsw i32 %1627, 1100
  %sub2917 = sub nsw i32 %add2916, 1
  store i32 %sub2917, i32* %cutoff_distance, align 4
  br label %if.end.2918

if.end.2918:                                      ; preds = %if.then.2915, %land.lhs.true.2911, %if.end.2880
  br label %for.inc.2919

for.inc.2919:                                     ; preds = %if.end.2918
  %1628 = load i32, i32* %r2858, align 4
  %inc2920 = add nsw i32 %1628, 1
  store i32 %inc2920, i32* %r2858, align 4
  br label %for.cond.2861

for.end.2921:                                     ; preds = %for.cond.2861
  br label %if.end.2922

if.end.2922:                                      ; preds = %for.end.2921, %if.end.2839
  br label %if.end.2923

if.end.2923:                                      ; preds = %if.end.2922, %do.body.2814
  br label %do.end.2924

do.end.2924:                                      ; preds = %if.end.2923
  br label %if.end.2925

if.end.2925:                                      ; preds = %do.end.2924, %land.lhs.true.2807, %land.lhs.true.2801, %lor.lhs.false.2795, %land.lhs.true.2770, %land.lhs.true.2764, %if.end.2758
  %1629 = load i32, i32* %bpos, align 4
  %idxprom2926 = sext i32 %1629 to i64
  %arrayidx2927 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2926
  %1630 = load i8, i8* %arrayidx2927, align 1
  %conv2928 = zext i8 %1630 to i32
  %cmp2929 = icmp eq i32 %conv2928, 0
  br i1 %cmp2929, label %land.lhs.true.2931, label %if.end.3062

land.lhs.true.2931:                               ; preds = %if.end.2925
  %1631 = load i32, i32* %apos, align 4
  %idxprom2932 = sext i32 %1631 to i64
  %arrayidx2933 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2932
  %1632 = load i8, i8* %arrayidx2933, align 1
  %conv2934 = zext i8 %1632 to i32
  %cmp2935 = icmp eq i32 %conv2934, 0
  br i1 %cmp2935, label %land.lhs.true.2937, label %if.end.3062

land.lhs.true.2937:                               ; preds = %land.lhs.true.2931
  %1633 = load i32, i32* %gpos, align 4
  %idxprom2938 = sext i32 %1633 to i64
  %arrayidx2939 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2938
  %1634 = load i8, i8* %arrayidx2939, align 1
  %conv2940 = zext i8 %1634 to i32
  %cmp2941 = icmp eq i32 %conv2940, 0
  br i1 %cmp2941, label %land.lhs.true.2943, label %if.end.3062

land.lhs.true.2943:                               ; preds = %land.lhs.true.2937
  %1635 = load i32, i32* %bpos, align 4
  %idxprom2944 = sext i32 %1635 to i64
  %1636 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2945 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1636, i32 0, i32 0
  %arrayidx2946 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2945, i32 0, i64 %idxprom2944
  %1637 = load i32, i32* %arrayidx2946, align 4
  %1638 = load i32, i32* %distance, align 4
  %add2947 = add nsw i32 %1638, 1300
  %cmp2948 = icmp sgt i32 %1637, %add2947
  br i1 %cmp2948, label %if.then.2950, label %if.end.3062

if.then.2950:                                     ; preds = %land.lhs.true.2943
  br label %do.body.2951

do.body.2951:                                     ; preds = %if.then.2950
  %1639 = load i32, i32* %distance, align 4
  %add2952 = add nsw i32 %1639, 1300
  %1640 = load i32, i32* %bpos, align 4
  %idxprom2953 = sext i32 %1640 to i64
  %1641 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2954 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1641, i32 0, i32 0
  %arrayidx2955 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2954, i32 0, i64 %idxprom2953
  %1642 = load i32, i32* %arrayidx2955, align 4
  %cmp2956 = icmp slt i32 %add2952, %1642
  br i1 %cmp2956, label %if.then.2958, label %if.end.3060

if.then.2958:                                     ; preds = %do.body.2951
  %1643 = load i32, i32* %bpos, align 4
  %idxprom2959 = sext i32 %1643 to i64
  %arrayidx2960 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2959
  %1644 = load i8, i8* %arrayidx2960, align 1
  %conv2961 = zext i8 %1644 to i32
  %cmp2962 = icmp eq i32 %conv2961, 0
  br i1 %cmp2962, label %if.then.2964, label %if.else.2993

if.then.2964:                                     ; preds = %if.then.2958
  %1645 = load i32, i32* %bpos, align 4
  %idxprom2965 = sext i32 %1645 to i64
  %1646 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2966 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1646, i32 0, i32 0
  %arrayidx2967 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2966, i32 0, i64 %idxprom2965
  %1647 = load i32, i32* %arrayidx2967, align 4
  %cmp2968 = icmp eq i32 %1647, 100000
  br i1 %cmp2968, label %if.then.2970, label %if.end.2976

if.then.2970:                                     ; preds = %if.then.2964
  %1648 = load i32, i32* %bpos, align 4
  %1649 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end2971 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1649, i32 0, i32 7
  %1650 = load i32, i32* %queue_end2971, align 4
  %inc2972 = add nsw i32 %1650, 1
  store i32 %inc2972, i32* %queue_end2971, align 4
  %idxprom2973 = sext i32 %1650 to i64
  %1651 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue2974 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1651, i32 0, i32 5
  %arrayidx2975 = getelementptr inbounds [400 x i32], [400 x i32]* %queue2974, i32 0, i64 %idxprom2973
  store i32 %1648, i32* %arrayidx2975, align 4
  br label %if.end.2976

if.end.2976:                                      ; preds = %if.then.2970, %if.then.2964
  %1652 = load i32, i32* %distance, align 4
  %add2977 = add nsw i32 %1652, 1300
  %1653 = load i32, i32* %bpos, align 4
  %idxprom2978 = sext i32 %1653 to i64
  %1654 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances2979 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1654, i32 0, i32 0
  %arrayidx2980 = getelementptr inbounds [400 x i32], [400 x i32]* %distances2979, i32 0, i64 %idxprom2978
  store i32 %add2977, i32* %arrayidx2980, align 4
  %1655 = load i32, i32* %bpos, align 4
  %idxprom2981 = sext i32 %1655 to i64
  %1656 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas2982 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1656, i32 0, i32 1
  %arrayidx2983 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas2982, i32 0, i64 %idxprom2981
  store i32 1000, i32* %arrayidx2983, align 4
  %1657 = load i32, i32* %pos, align 4
  %1658 = load i32, i32* %bpos, align 4
  %idxprom2984 = sext i32 %1658 to i64
  %1659 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from2985 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1659, i32 0, i32 2
  %arrayidx2986 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from2985, i32 0, i64 %idxprom2984
  store i32 %1657, i32* %arrayidx2986, align 4
  %1660 = load i32, i32* %apos, align 4
  %1661 = load i32, i32* %bpos, align 4
  %idxprom2987 = sext i32 %1661 to i64
  %1662 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable12988 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1662, i32 0, i32 3
  %arrayidx2989 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable12988, i32 0, i64 %idxprom2987
  store i32 %1660, i32* %arrayidx2989, align 4
  %1663 = load i32, i32* %gpos, align 4
  %1664 = load i32, i32* %bpos, align 4
  %idxprom2990 = sext i32 %1664 to i64
  %1665 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable22991 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1665, i32 0, i32 4
  %arrayidx2992 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable22991, i32 0, i64 %idxprom2990
  store i32 %1663, i32* %arrayidx2992, align 4
  br label %if.end.3059

if.else.2993:                                     ; preds = %if.then.2958
  %1666 = load i32, i32* %bpos, align 4
  %arraydecay2996 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call2997 = call i32 @findstones(i32 %1666, i32 361, i32* %arraydecay2996)
  store i32 %call2997, i32* %num_stones, align 4
  store i32 0, i32* %r2995, align 4
  br label %for.cond.2998

for.cond.2998:                                    ; preds = %for.inc.3056, %if.else.2993
  %1667 = load i32, i32* %r2995, align 4
  %1668 = load i32, i32* %num_stones, align 4
  %cmp2999 = icmp slt i32 %1667, %1668
  br i1 %cmp2999, label %for.body.3001, label %for.end.3058

for.body.3001:                                    ; preds = %for.cond.2998
  %1669 = load i32, i32* %r2995, align 4
  %idxprom3002 = sext i32 %1669 to i64
  %arrayidx3003 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3002
  %1670 = load i32, i32* %arrayidx3003, align 4
  %idxprom3004 = sext i32 %1670 to i64
  %1671 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3005 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1671, i32 0, i32 0
  %arrayidx3006 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3005, i32 0, i64 %idxprom3004
  %1672 = load i32, i32* %arrayidx3006, align 4
  %cmp3007 = icmp eq i32 %1672, 100000
  br i1 %cmp3007, label %if.then.3009, label %if.end.3017

if.then.3009:                                     ; preds = %for.body.3001
  %1673 = load i32, i32* %r2995, align 4
  %idxprom3010 = sext i32 %1673 to i64
  %arrayidx3011 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3010
  %1674 = load i32, i32* %arrayidx3011, align 4
  %1675 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3012 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1675, i32 0, i32 7
  %1676 = load i32, i32* %queue_end3012, align 4
  %inc3013 = add nsw i32 %1676, 1
  store i32 %inc3013, i32* %queue_end3012, align 4
  %idxprom3014 = sext i32 %1676 to i64
  %1677 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3015 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1677, i32 0, i32 5
  %arrayidx3016 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3015, i32 0, i64 %idxprom3014
  store i32 %1674, i32* %arrayidx3016, align 4
  br label %if.end.3017

if.end.3017:                                      ; preds = %if.then.3009, %for.body.3001
  %1678 = load i32, i32* %distance, align 4
  %add3018 = add nsw i32 %1678, 1300
  %1679 = load i32, i32* %r2995, align 4
  %idxprom3019 = sext i32 %1679 to i64
  %arrayidx3020 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3019
  %1680 = load i32, i32* %arrayidx3020, align 4
  %idxprom3021 = sext i32 %1680 to i64
  %1681 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3022 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1681, i32 0, i32 0
  %arrayidx3023 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3022, i32 0, i64 %idxprom3021
  store i32 %add3018, i32* %arrayidx3023, align 4
  %1682 = load i32, i32* %r2995, align 4
  %idxprom3024 = sext i32 %1682 to i64
  %arrayidx3025 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3024
  %1683 = load i32, i32* %arrayidx3025, align 4
  %idxprom3026 = sext i32 %1683 to i64
  %1684 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3027 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1684, i32 0, i32 1
  %arrayidx3028 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3027, i32 0, i64 %idxprom3026
  store i32 1000, i32* %arrayidx3028, align 4
  %1685 = load i32, i32* %pos, align 4
  %1686 = load i32, i32* %r2995, align 4
  %idxprom3029 = sext i32 %1686 to i64
  %arrayidx3030 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3029
  %1687 = load i32, i32* %arrayidx3030, align 4
  %idxprom3031 = sext i32 %1687 to i64
  %1688 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3032 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1688, i32 0, i32 2
  %arrayidx3033 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3032, i32 0, i64 %idxprom3031
  store i32 %1685, i32* %arrayidx3033, align 4
  %1689 = load i32, i32* %apos, align 4
  %1690 = load i32, i32* %r2995, align 4
  %idxprom3034 = sext i32 %1690 to i64
  %arrayidx3035 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3034
  %1691 = load i32, i32* %arrayidx3035, align 4
  %idxprom3036 = sext i32 %1691 to i64
  %1692 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13037 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1692, i32 0, i32 3
  %arrayidx3038 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13037, i32 0, i64 %idxprom3036
  store i32 %1689, i32* %arrayidx3038, align 4
  %1693 = load i32, i32* %gpos, align 4
  %1694 = load i32, i32* %r2995, align 4
  %idxprom3039 = sext i32 %1694 to i64
  %arrayidx3040 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3039
  %1695 = load i32, i32* %arrayidx3040, align 4
  %idxprom3041 = sext i32 %1695 to i64
  %1696 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23042 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1696, i32 0, i32 4
  %arrayidx3043 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23042, i32 0, i64 %idxprom3041
  store i32 %1693, i32* %arrayidx3043, align 4
  %1697 = load i32, i32* %r2995, align 4
  %idxprom3044 = sext i32 %1697 to i64
  %arrayidx3045 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3044
  %1698 = load i32, i32* %arrayidx3045, align 4
  %1699 = load i32, i32* %target.addr, align 4
  %cmp3046 = icmp eq i32 %1698, %1699
  br i1 %cmp3046, label %land.lhs.true.3048, label %if.end.3055

land.lhs.true.3048:                               ; preds = %if.end.3017
  %1700 = load i32, i32* %distance, align 4
  %add3049 = add nsw i32 %1700, 1300
  %1701 = load i32, i32* %cutoff_distance, align 4
  %cmp3050 = icmp slt i32 %add3049, %1701
  br i1 %cmp3050, label %if.then.3052, label %if.end.3055

if.then.3052:                                     ; preds = %land.lhs.true.3048
  %1702 = load i32, i32* %distance, align 4
  %add3053 = add nsw i32 %1702, 1300
  %sub3054 = sub nsw i32 %add3053, 1
  store i32 %sub3054, i32* %cutoff_distance, align 4
  br label %if.end.3055

if.end.3055:                                      ; preds = %if.then.3052, %land.lhs.true.3048, %if.end.3017
  br label %for.inc.3056

for.inc.3056:                                     ; preds = %if.end.3055
  %1703 = load i32, i32* %r2995, align 4
  %inc3057 = add nsw i32 %1703, 1
  store i32 %inc3057, i32* %r2995, align 4
  br label %for.cond.2998

for.end.3058:                                     ; preds = %for.cond.2998
  br label %if.end.3059

if.end.3059:                                      ; preds = %for.end.3058, %if.end.2976
  br label %if.end.3060

if.end.3060:                                      ; preds = %if.end.3059, %do.body.2951
  br label %do.end.3061

do.end.3061:                                      ; preds = %if.end.3060
  br label %if.end.3062

if.end.3062:                                      ; preds = %do.end.3061, %land.lhs.true.2943, %land.lhs.true.2937, %land.lhs.true.2931, %if.end.2925
  %1704 = load i32, i32* %apos, align 4
  %idxprom3063 = sext i32 %1704 to i64
  %arrayidx3064 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3063
  %1705 = load i8, i8* %arrayidx3064, align 1
  %conv3065 = zext i8 %1705 to i32
  %cmp3066 = icmp eq i32 %conv3065, 0
  br i1 %cmp3066, label %land.lhs.true.3068, label %if.end.3345

land.lhs.true.3068:                               ; preds = %if.end.3062
  %1706 = load i32, i32* %bpos, align 4
  %idxprom3069 = sext i32 %1706 to i64
  %arrayidx3070 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3069
  %1707 = load i8, i8* %arrayidx3070, align 1
  %conv3071 = zext i8 %1707 to i32
  %cmp3072 = icmp eq i32 %conv3071, 0
  br i1 %cmp3072, label %land.lhs.true.3074, label %if.end.3345

land.lhs.true.3074:                               ; preds = %land.lhs.true.3068
  %1708 = load i32, i32* %gpos, align 4
  %idxprom3075 = sext i32 %1708 to i64
  %arrayidx3076 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3075
  %1709 = load i8, i8* %arrayidx3076, align 1
  %conv3077 = zext i8 %1709 to i32
  %cmp3078 = icmp eq i32 %conv3077, 0
  br i1 %cmp3078, label %land.lhs.true.3080, label %if.end.3345

land.lhs.true.3080:                               ; preds = %land.lhs.true.3074
  %1710 = load i32, i32* %epos, align 4
  %idxprom3081 = sext i32 %1710 to i64
  %arrayidx3082 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3081
  %1711 = load i8, i8* %arrayidx3082, align 1
  %conv3083 = zext i8 %1711 to i32
  %cmp3084 = icmp eq i32 %conv3083, 0
  br i1 %cmp3084, label %land.lhs.true.3086, label %if.end.3345

land.lhs.true.3086:                               ; preds = %land.lhs.true.3080
  %1712 = load i32, i32* %fpos, align 4
  %idxprom3087 = sext i32 %1712 to i64
  %arrayidx3088 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3087
  %1713 = load i8, i8* %arrayidx3088, align 1
  %conv3089 = zext i8 %1713 to i32
  %cmp3090 = icmp eq i32 %conv3089, 0
  br i1 %cmp3090, label %land.lhs.true.3092, label %if.end.3345

land.lhs.true.3092:                               ; preds = %land.lhs.true.3086
  %1714 = load i32, i32* %fpos, align 4
  %idxprom3093 = sext i32 %1714 to i64
  %1715 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3094 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1715, i32 0, i32 0
  %arrayidx3095 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3094, i32 0, i64 %idxprom3093
  %1716 = load i32, i32* %arrayidx3095, align 4
  %1717 = load i32, i32* %distance, align 4
  %add3096 = add nsw i32 %1717, 1300
  %cmp3097 = icmp sgt i32 %1716, %add3096
  br i1 %cmp3097, label %land.lhs.true.3106, label %lor.lhs.false.3099

lor.lhs.false.3099:                               ; preds = %land.lhs.true.3092
  %1718 = load i32, i32* %epos, align 4
  %idxprom3100 = sext i32 %1718 to i64
  %1719 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3101 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1719, i32 0, i32 0
  %arrayidx3102 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3101, i32 0, i64 %idxprom3100
  %1720 = load i32, i32* %arrayidx3102, align 4
  %1721 = load i32, i32* %distance, align 4
  %add3103 = add nsw i32 %1721, 1300
  %cmp3104 = icmp sgt i32 %1720, %add3103
  br i1 %cmp3104, label %land.lhs.true.3106, label %if.end.3345

land.lhs.true.3106:                               ; preds = %lor.lhs.false.3099, %land.lhs.true.3092
  %1722 = load i32, i32* %pos, align 4
  %call3107 = call i32 @countlib(i32 %1722)
  %cmp3108 = icmp sge i32 %call3107, 3
  br i1 %cmp3108, label %land.lhs.true.3110, label %if.end.3345

land.lhs.true.3110:                               ; preds = %land.lhs.true.3106
  %1723 = load i32, i32* %cpos, align 4
  %idxprom3111 = sext i32 %1723 to i64
  %arrayidx3112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3111
  %1724 = load i8, i8* %arrayidx3112, align 1
  %conv3113 = zext i8 %1724 to i32
  %cmp3114 = icmp ne i32 %conv3113, 3
  br i1 %cmp3114, label %lor.lhs.false.3116, label %if.then.3122

lor.lhs.false.3116:                               ; preds = %land.lhs.true.3110
  %1725 = load i32, i32* %hpos, align 4
  %idxprom3117 = sext i32 %1725 to i64
  %arrayidx3118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3117
  %1726 = load i8, i8* %arrayidx3118, align 1
  %conv3119 = zext i8 %1726 to i32
  %cmp3120 = icmp ne i32 %conv3119, 3
  br i1 %cmp3120, label %if.end.3345, label %if.then.3122

if.then.3122:                                     ; preds = %lor.lhs.false.3116, %land.lhs.true.3110
  br label %do.body.3123

do.body.3123:                                     ; preds = %if.then.3122
  %1727 = load i32, i32* %distance, align 4
  %add3124 = add nsw i32 %1727, 1300
  %1728 = load i32, i32* %fpos, align 4
  %idxprom3125 = sext i32 %1728 to i64
  %1729 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3126 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1729, i32 0, i32 0
  %arrayidx3127 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3126, i32 0, i64 %idxprom3125
  %1730 = load i32, i32* %arrayidx3127, align 4
  %cmp3128 = icmp slt i32 %add3124, %1730
  br i1 %cmp3128, label %if.then.3130, label %if.end.3232

if.then.3130:                                     ; preds = %do.body.3123
  %1731 = load i32, i32* %fpos, align 4
  %idxprom3131 = sext i32 %1731 to i64
  %arrayidx3132 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3131
  %1732 = load i8, i8* %arrayidx3132, align 1
  %conv3133 = zext i8 %1732 to i32
  %cmp3134 = icmp eq i32 %conv3133, 0
  br i1 %cmp3134, label %if.then.3136, label %if.else.3165

if.then.3136:                                     ; preds = %if.then.3130
  %1733 = load i32, i32* %fpos, align 4
  %idxprom3137 = sext i32 %1733 to i64
  %1734 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3138 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1734, i32 0, i32 0
  %arrayidx3139 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3138, i32 0, i64 %idxprom3137
  %1735 = load i32, i32* %arrayidx3139, align 4
  %cmp3140 = icmp eq i32 %1735, 100000
  br i1 %cmp3140, label %if.then.3142, label %if.end.3148

if.then.3142:                                     ; preds = %if.then.3136
  %1736 = load i32, i32* %fpos, align 4
  %1737 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3143 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1737, i32 0, i32 7
  %1738 = load i32, i32* %queue_end3143, align 4
  %inc3144 = add nsw i32 %1738, 1
  store i32 %inc3144, i32* %queue_end3143, align 4
  %idxprom3145 = sext i32 %1738 to i64
  %1739 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3146 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1739, i32 0, i32 5
  %arrayidx3147 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3146, i32 0, i64 %idxprom3145
  store i32 %1736, i32* %arrayidx3147, align 4
  br label %if.end.3148

if.end.3148:                                      ; preds = %if.then.3142, %if.then.3136
  %1740 = load i32, i32* %distance, align 4
  %add3149 = add nsw i32 %1740, 1300
  %1741 = load i32, i32* %fpos, align 4
  %idxprom3150 = sext i32 %1741 to i64
  %1742 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3151 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1742, i32 0, i32 0
  %arrayidx3152 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3151, i32 0, i64 %idxprom3150
  store i32 %add3149, i32* %arrayidx3152, align 4
  %1743 = load i32, i32* %fpos, align 4
  %idxprom3153 = sext i32 %1743 to i64
  %1744 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3154 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1744, i32 0, i32 1
  %arrayidx3155 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3154, i32 0, i64 %idxprom3153
  store i32 1000, i32* %arrayidx3155, align 4
  %1745 = load i32, i32* %pos, align 4
  %1746 = load i32, i32* %fpos, align 4
  %idxprom3156 = sext i32 %1746 to i64
  %1747 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3157 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1747, i32 0, i32 2
  %arrayidx3158 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3157, i32 0, i64 %idxprom3156
  store i32 %1745, i32* %arrayidx3158, align 4
  %1748 = load i32, i32* %fpos, align 4
  %idxprom3159 = sext i32 %1748 to i64
  %1749 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13160 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1749, i32 0, i32 3
  %arrayidx3161 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13160, i32 0, i64 %idxprom3159
  store i32 0, i32* %arrayidx3161, align 4
  %1750 = load i32, i32* %fpos, align 4
  %idxprom3162 = sext i32 %1750 to i64
  %1751 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23163 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1751, i32 0, i32 4
  %arrayidx3164 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23163, i32 0, i64 %idxprom3162
  store i32 0, i32* %arrayidx3164, align 4
  br label %if.end.3231

if.else.3165:                                     ; preds = %if.then.3130
  %1752 = load i32, i32* %fpos, align 4
  %arraydecay3168 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3169 = call i32 @findstones(i32 %1752, i32 361, i32* %arraydecay3168)
  store i32 %call3169, i32* %num_stones, align 4
  store i32 0, i32* %r3167, align 4
  br label %for.cond.3170

for.cond.3170:                                    ; preds = %for.inc.3228, %if.else.3165
  %1753 = load i32, i32* %r3167, align 4
  %1754 = load i32, i32* %num_stones, align 4
  %cmp3171 = icmp slt i32 %1753, %1754
  br i1 %cmp3171, label %for.body.3173, label %for.end.3230

for.body.3173:                                    ; preds = %for.cond.3170
  %1755 = load i32, i32* %r3167, align 4
  %idxprom3174 = sext i32 %1755 to i64
  %arrayidx3175 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3174
  %1756 = load i32, i32* %arrayidx3175, align 4
  %idxprom3176 = sext i32 %1756 to i64
  %1757 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3177 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1757, i32 0, i32 0
  %arrayidx3178 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3177, i32 0, i64 %idxprom3176
  %1758 = load i32, i32* %arrayidx3178, align 4
  %cmp3179 = icmp eq i32 %1758, 100000
  br i1 %cmp3179, label %if.then.3181, label %if.end.3189

if.then.3181:                                     ; preds = %for.body.3173
  %1759 = load i32, i32* %r3167, align 4
  %idxprom3182 = sext i32 %1759 to i64
  %arrayidx3183 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3182
  %1760 = load i32, i32* %arrayidx3183, align 4
  %1761 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3184 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1761, i32 0, i32 7
  %1762 = load i32, i32* %queue_end3184, align 4
  %inc3185 = add nsw i32 %1762, 1
  store i32 %inc3185, i32* %queue_end3184, align 4
  %idxprom3186 = sext i32 %1762 to i64
  %1763 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3187 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1763, i32 0, i32 5
  %arrayidx3188 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3187, i32 0, i64 %idxprom3186
  store i32 %1760, i32* %arrayidx3188, align 4
  br label %if.end.3189

if.end.3189:                                      ; preds = %if.then.3181, %for.body.3173
  %1764 = load i32, i32* %distance, align 4
  %add3190 = add nsw i32 %1764, 1300
  %1765 = load i32, i32* %r3167, align 4
  %idxprom3191 = sext i32 %1765 to i64
  %arrayidx3192 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3191
  %1766 = load i32, i32* %arrayidx3192, align 4
  %idxprom3193 = sext i32 %1766 to i64
  %1767 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3194 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1767, i32 0, i32 0
  %arrayidx3195 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3194, i32 0, i64 %idxprom3193
  store i32 %add3190, i32* %arrayidx3195, align 4
  %1768 = load i32, i32* %r3167, align 4
  %idxprom3196 = sext i32 %1768 to i64
  %arrayidx3197 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3196
  %1769 = load i32, i32* %arrayidx3197, align 4
  %idxprom3198 = sext i32 %1769 to i64
  %1770 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3199 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1770, i32 0, i32 1
  %arrayidx3200 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3199, i32 0, i64 %idxprom3198
  store i32 1000, i32* %arrayidx3200, align 4
  %1771 = load i32, i32* %pos, align 4
  %1772 = load i32, i32* %r3167, align 4
  %idxprom3201 = sext i32 %1772 to i64
  %arrayidx3202 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3201
  %1773 = load i32, i32* %arrayidx3202, align 4
  %idxprom3203 = sext i32 %1773 to i64
  %1774 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1774, i32 0, i32 2
  %arrayidx3205 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3204, i32 0, i64 %idxprom3203
  store i32 %1771, i32* %arrayidx3205, align 4
  %1775 = load i32, i32* %r3167, align 4
  %idxprom3206 = sext i32 %1775 to i64
  %arrayidx3207 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3206
  %1776 = load i32, i32* %arrayidx3207, align 4
  %idxprom3208 = sext i32 %1776 to i64
  %1777 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13209 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1777, i32 0, i32 3
  %arrayidx3210 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13209, i32 0, i64 %idxprom3208
  store i32 0, i32* %arrayidx3210, align 4
  %1778 = load i32, i32* %r3167, align 4
  %idxprom3211 = sext i32 %1778 to i64
  %arrayidx3212 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3211
  %1779 = load i32, i32* %arrayidx3212, align 4
  %idxprom3213 = sext i32 %1779 to i64
  %1780 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23214 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1780, i32 0, i32 4
  %arrayidx3215 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23214, i32 0, i64 %idxprom3213
  store i32 0, i32* %arrayidx3215, align 4
  %1781 = load i32, i32* %r3167, align 4
  %idxprom3216 = sext i32 %1781 to i64
  %arrayidx3217 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3216
  %1782 = load i32, i32* %arrayidx3217, align 4
  %1783 = load i32, i32* %target.addr, align 4
  %cmp3218 = icmp eq i32 %1782, %1783
  br i1 %cmp3218, label %land.lhs.true.3220, label %if.end.3227

land.lhs.true.3220:                               ; preds = %if.end.3189
  %1784 = load i32, i32* %distance, align 4
  %add3221 = add nsw i32 %1784, 1300
  %1785 = load i32, i32* %cutoff_distance, align 4
  %cmp3222 = icmp slt i32 %add3221, %1785
  br i1 %cmp3222, label %if.then.3224, label %if.end.3227

if.then.3224:                                     ; preds = %land.lhs.true.3220
  %1786 = load i32, i32* %distance, align 4
  %add3225 = add nsw i32 %1786, 1300
  %sub3226 = sub nsw i32 %add3225, 1
  store i32 %sub3226, i32* %cutoff_distance, align 4
  br label %if.end.3227

if.end.3227:                                      ; preds = %if.then.3224, %land.lhs.true.3220, %if.end.3189
  br label %for.inc.3228

for.inc.3228:                                     ; preds = %if.end.3227
  %1787 = load i32, i32* %r3167, align 4
  %inc3229 = add nsw i32 %1787, 1
  store i32 %inc3229, i32* %r3167, align 4
  br label %for.cond.3170

for.end.3230:                                     ; preds = %for.cond.3170
  br label %if.end.3231

if.end.3231:                                      ; preds = %for.end.3230, %if.end.3148
  br label %if.end.3232

if.end.3232:                                      ; preds = %if.end.3231, %do.body.3123
  br label %do.end.3233

do.end.3233:                                      ; preds = %if.end.3232
  br label %do.body.3234

do.body.3234:                                     ; preds = %do.end.3233
  %1788 = load i32, i32* %distance, align 4
  %add3235 = add nsw i32 %1788, 1300
  %1789 = load i32, i32* %epos, align 4
  %idxprom3236 = sext i32 %1789 to i64
  %1790 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3237 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1790, i32 0, i32 0
  %arrayidx3238 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3237, i32 0, i64 %idxprom3236
  %1791 = load i32, i32* %arrayidx3238, align 4
  %cmp3239 = icmp slt i32 %add3235, %1791
  br i1 %cmp3239, label %if.then.3241, label %if.end.3343

if.then.3241:                                     ; preds = %do.body.3234
  %1792 = load i32, i32* %epos, align 4
  %idxprom3242 = sext i32 %1792 to i64
  %arrayidx3243 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3242
  %1793 = load i8, i8* %arrayidx3243, align 1
  %conv3244 = zext i8 %1793 to i32
  %cmp3245 = icmp eq i32 %conv3244, 0
  br i1 %cmp3245, label %if.then.3247, label %if.else.3276

if.then.3247:                                     ; preds = %if.then.3241
  %1794 = load i32, i32* %epos, align 4
  %idxprom3248 = sext i32 %1794 to i64
  %1795 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3249 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1795, i32 0, i32 0
  %arrayidx3250 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3249, i32 0, i64 %idxprom3248
  %1796 = load i32, i32* %arrayidx3250, align 4
  %cmp3251 = icmp eq i32 %1796, 100000
  br i1 %cmp3251, label %if.then.3253, label %if.end.3259

if.then.3253:                                     ; preds = %if.then.3247
  %1797 = load i32, i32* %epos, align 4
  %1798 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3254 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1798, i32 0, i32 7
  %1799 = load i32, i32* %queue_end3254, align 4
  %inc3255 = add nsw i32 %1799, 1
  store i32 %inc3255, i32* %queue_end3254, align 4
  %idxprom3256 = sext i32 %1799 to i64
  %1800 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3257 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1800, i32 0, i32 5
  %arrayidx3258 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3257, i32 0, i64 %idxprom3256
  store i32 %1797, i32* %arrayidx3258, align 4
  br label %if.end.3259

if.end.3259:                                      ; preds = %if.then.3253, %if.then.3247
  %1801 = load i32, i32* %distance, align 4
  %add3260 = add nsw i32 %1801, 1300
  %1802 = load i32, i32* %epos, align 4
  %idxprom3261 = sext i32 %1802 to i64
  %1803 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3262 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1803, i32 0, i32 0
  %arrayidx3263 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3262, i32 0, i64 %idxprom3261
  store i32 %add3260, i32* %arrayidx3263, align 4
  %1804 = load i32, i32* %epos, align 4
  %idxprom3264 = sext i32 %1804 to i64
  %1805 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3265 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1805, i32 0, i32 1
  %arrayidx3266 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3265, i32 0, i64 %idxprom3264
  store i32 1000, i32* %arrayidx3266, align 4
  %1806 = load i32, i32* %pos, align 4
  %1807 = load i32, i32* %epos, align 4
  %idxprom3267 = sext i32 %1807 to i64
  %1808 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3268 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1808, i32 0, i32 2
  %arrayidx3269 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3268, i32 0, i64 %idxprom3267
  store i32 %1806, i32* %arrayidx3269, align 4
  %1809 = load i32, i32* %epos, align 4
  %idxprom3270 = sext i32 %1809 to i64
  %1810 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13271 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1810, i32 0, i32 3
  %arrayidx3272 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13271, i32 0, i64 %idxprom3270
  store i32 0, i32* %arrayidx3272, align 4
  %1811 = load i32, i32* %epos, align 4
  %idxprom3273 = sext i32 %1811 to i64
  %1812 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23274 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1812, i32 0, i32 4
  %arrayidx3275 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23274, i32 0, i64 %idxprom3273
  store i32 0, i32* %arrayidx3275, align 4
  br label %if.end.3342

if.else.3276:                                     ; preds = %if.then.3241
  %1813 = load i32, i32* %epos, align 4
  %arraydecay3279 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3280 = call i32 @findstones(i32 %1813, i32 361, i32* %arraydecay3279)
  store i32 %call3280, i32* %num_stones, align 4
  store i32 0, i32* %r3278, align 4
  br label %for.cond.3281

for.cond.3281:                                    ; preds = %for.inc.3339, %if.else.3276
  %1814 = load i32, i32* %r3278, align 4
  %1815 = load i32, i32* %num_stones, align 4
  %cmp3282 = icmp slt i32 %1814, %1815
  br i1 %cmp3282, label %for.body.3284, label %for.end.3341

for.body.3284:                                    ; preds = %for.cond.3281
  %1816 = load i32, i32* %r3278, align 4
  %idxprom3285 = sext i32 %1816 to i64
  %arrayidx3286 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3285
  %1817 = load i32, i32* %arrayidx3286, align 4
  %idxprom3287 = sext i32 %1817 to i64
  %1818 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3288 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1818, i32 0, i32 0
  %arrayidx3289 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3288, i32 0, i64 %idxprom3287
  %1819 = load i32, i32* %arrayidx3289, align 4
  %cmp3290 = icmp eq i32 %1819, 100000
  br i1 %cmp3290, label %if.then.3292, label %if.end.3300

if.then.3292:                                     ; preds = %for.body.3284
  %1820 = load i32, i32* %r3278, align 4
  %idxprom3293 = sext i32 %1820 to i64
  %arrayidx3294 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3293
  %1821 = load i32, i32* %arrayidx3294, align 4
  %1822 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3295 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1822, i32 0, i32 7
  %1823 = load i32, i32* %queue_end3295, align 4
  %inc3296 = add nsw i32 %1823, 1
  store i32 %inc3296, i32* %queue_end3295, align 4
  %idxprom3297 = sext i32 %1823 to i64
  %1824 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3298 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1824, i32 0, i32 5
  %arrayidx3299 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3298, i32 0, i64 %idxprom3297
  store i32 %1821, i32* %arrayidx3299, align 4
  br label %if.end.3300

if.end.3300:                                      ; preds = %if.then.3292, %for.body.3284
  %1825 = load i32, i32* %distance, align 4
  %add3301 = add nsw i32 %1825, 1300
  %1826 = load i32, i32* %r3278, align 4
  %idxprom3302 = sext i32 %1826 to i64
  %arrayidx3303 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3302
  %1827 = load i32, i32* %arrayidx3303, align 4
  %idxprom3304 = sext i32 %1827 to i64
  %1828 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3305 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1828, i32 0, i32 0
  %arrayidx3306 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3305, i32 0, i64 %idxprom3304
  store i32 %add3301, i32* %arrayidx3306, align 4
  %1829 = load i32, i32* %r3278, align 4
  %idxprom3307 = sext i32 %1829 to i64
  %arrayidx3308 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3307
  %1830 = load i32, i32* %arrayidx3308, align 4
  %idxprom3309 = sext i32 %1830 to i64
  %1831 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3310 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1831, i32 0, i32 1
  %arrayidx3311 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3310, i32 0, i64 %idxprom3309
  store i32 1000, i32* %arrayidx3311, align 4
  %1832 = load i32, i32* %pos, align 4
  %1833 = load i32, i32* %r3278, align 4
  %idxprom3312 = sext i32 %1833 to i64
  %arrayidx3313 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3312
  %1834 = load i32, i32* %arrayidx3313, align 4
  %idxprom3314 = sext i32 %1834 to i64
  %1835 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3315 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1835, i32 0, i32 2
  %arrayidx3316 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3315, i32 0, i64 %idxprom3314
  store i32 %1832, i32* %arrayidx3316, align 4
  %1836 = load i32, i32* %r3278, align 4
  %idxprom3317 = sext i32 %1836 to i64
  %arrayidx3318 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3317
  %1837 = load i32, i32* %arrayidx3318, align 4
  %idxprom3319 = sext i32 %1837 to i64
  %1838 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13320 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1838, i32 0, i32 3
  %arrayidx3321 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13320, i32 0, i64 %idxprom3319
  store i32 0, i32* %arrayidx3321, align 4
  %1839 = load i32, i32* %r3278, align 4
  %idxprom3322 = sext i32 %1839 to i64
  %arrayidx3323 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3322
  %1840 = load i32, i32* %arrayidx3323, align 4
  %idxprom3324 = sext i32 %1840 to i64
  %1841 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23325 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1841, i32 0, i32 4
  %arrayidx3326 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23325, i32 0, i64 %idxprom3324
  store i32 0, i32* %arrayidx3326, align 4
  %1842 = load i32, i32* %r3278, align 4
  %idxprom3327 = sext i32 %1842 to i64
  %arrayidx3328 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3327
  %1843 = load i32, i32* %arrayidx3328, align 4
  %1844 = load i32, i32* %target.addr, align 4
  %cmp3329 = icmp eq i32 %1843, %1844
  br i1 %cmp3329, label %land.lhs.true.3331, label %if.end.3338

land.lhs.true.3331:                               ; preds = %if.end.3300
  %1845 = load i32, i32* %distance, align 4
  %add3332 = add nsw i32 %1845, 1300
  %1846 = load i32, i32* %cutoff_distance, align 4
  %cmp3333 = icmp slt i32 %add3332, %1846
  br i1 %cmp3333, label %if.then.3335, label %if.end.3338

if.then.3335:                                     ; preds = %land.lhs.true.3331
  %1847 = load i32, i32* %distance, align 4
  %add3336 = add nsw i32 %1847, 1300
  %sub3337 = sub nsw i32 %add3336, 1
  store i32 %sub3337, i32* %cutoff_distance, align 4
  br label %if.end.3338

if.end.3338:                                      ; preds = %if.then.3335, %land.lhs.true.3331, %if.end.3300
  br label %for.inc.3339

for.inc.3339:                                     ; preds = %if.end.3338
  %1848 = load i32, i32* %r3278, align 4
  %inc3340 = add nsw i32 %1848, 1
  store i32 %inc3340, i32* %r3278, align 4
  br label %for.cond.3281

for.end.3341:                                     ; preds = %for.cond.3281
  br label %if.end.3342

if.end.3342:                                      ; preds = %for.end.3341, %if.end.3259
  br label %if.end.3343

if.end.3343:                                      ; preds = %if.end.3342, %do.body.3234
  br label %do.end.3344

do.end.3344:                                      ; preds = %if.end.3343
  br label %if.end.3345

if.end.3345:                                      ; preds = %do.end.3344, %lor.lhs.false.3116, %land.lhs.true.3106, %lor.lhs.false.3099, %land.lhs.true.3086, %land.lhs.true.3080, %land.lhs.true.3074, %land.lhs.true.3068, %if.end.3062
  %1849 = load i32, i32* %pos, align 4
  %call3346 = call i32 @countlib(i32 %1849)
  %cmp3347 = icmp sge i32 %call3346, 3
  br i1 %cmp3347, label %land.lhs.true.3349, label %if.end.3628

land.lhs.true.3349:                               ; preds = %if.end.3345
  %1850 = load i32, i32* %hpos, align 4
  %idxprom3350 = sext i32 %1850 to i64
  %arrayidx3351 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3350
  %1851 = load i8, i8* %arrayidx3351, align 1
  %conv3352 = zext i8 %1851 to i32
  %cmp3353 = icmp eq i32 %conv3352, 0
  br i1 %cmp3353, label %land.lhs.true.3355, label %if.end.3628

land.lhs.true.3355:                               ; preds = %land.lhs.true.3349
  %1852 = load i32, i32* %ipos, align 4
  %idxprom3356 = sext i32 %1852 to i64
  %arrayidx3357 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3356
  %1853 = load i8, i8* %arrayidx3357, align 1
  %conv3358 = zext i8 %1853 to i32
  %cmp3359 = icmp eq i32 %conv3358, 0
  br i1 %cmp3359, label %land.lhs.true.3361, label %if.end.3628

land.lhs.true.3361:                               ; preds = %land.lhs.true.3355
  %1854 = load i32, i32* %gpos, align 4
  %idxprom3362 = sext i32 %1854 to i64
  %arrayidx3363 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3362
  %1855 = load i8, i8* %arrayidx3363, align 1
  %conv3364 = zext i8 %1855 to i32
  %cmp3365 = icmp eq i32 %conv3364, 0
  br i1 %cmp3365, label %land.lhs.true.3367, label %if.end.3628

land.lhs.true.3367:                               ; preds = %land.lhs.true.3361
  %1856 = load i32, i32* %epos, align 4
  %idxprom3368 = sext i32 %1856 to i64
  %arrayidx3369 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3368
  %1857 = load i8, i8* %arrayidx3369, align 1
  %conv3370 = zext i8 %1857 to i32
  %cmp3371 = icmp eq i32 %conv3370, 0
  br i1 %cmp3371, label %land.lhs.true.3373, label %if.end.3628

land.lhs.true.3373:                               ; preds = %land.lhs.true.3367
  %1858 = load i32, i32* %jpos, align 4
  %idxprom3374 = sext i32 %1858 to i64
  %arrayidx3375 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3374
  %1859 = load i8, i8* %arrayidx3375, align 1
  %conv3376 = zext i8 %1859 to i32
  %cmp3377 = icmp eq i32 %conv3376, 0
  br i1 %cmp3377, label %land.lhs.true.3379, label %if.end.3628

land.lhs.true.3379:                               ; preds = %land.lhs.true.3373
  %1860 = load i32, i32* %jpos, align 4
  %idxprom3380 = sext i32 %1860 to i64
  %1861 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3381 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1861, i32 0, i32 0
  %arrayidx3382 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3381, i32 0, i64 %idxprom3380
  %1862 = load i32, i32* %arrayidx3382, align 4
  %1863 = load i32, i32* %distance, align 4
  %add3383 = add nsw i32 %1863, 1300
  %cmp3384 = icmp sgt i32 %1862, %add3383
  br i1 %cmp3384, label %land.lhs.true.3393, label %lor.lhs.false.3386

lor.lhs.false.3386:                               ; preds = %land.lhs.true.3379
  %1864 = load i32, i32* %epos, align 4
  %idxprom3387 = sext i32 %1864 to i64
  %1865 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3388 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1865, i32 0, i32 0
  %arrayidx3389 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3388, i32 0, i64 %idxprom3387
  %1866 = load i32, i32* %arrayidx3389, align 4
  %1867 = load i32, i32* %distance, align 4
  %add3390 = add nsw i32 %1867, 1300
  %cmp3391 = icmp sgt i32 %1866, %add3390
  br i1 %cmp3391, label %land.lhs.true.3393, label %if.end.3628

land.lhs.true.3393:                               ; preds = %lor.lhs.false.3386, %land.lhs.true.3379
  %1868 = load i32, i32* %apos, align 4
  %idxprom3394 = sext i32 %1868 to i64
  %arrayidx3395 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3394
  %1869 = load i8, i8* %arrayidx3395, align 1
  %conv3396 = zext i8 %1869 to i32
  %cmp3397 = icmp ne i32 %conv3396, 3
  br i1 %cmp3397, label %lor.lhs.false.3399, label %if.then.3405

lor.lhs.false.3399:                               ; preds = %land.lhs.true.3393
  %1870 = load i32, i32* %kpos, align 4
  %idxprom3400 = sext i32 %1870 to i64
  %arrayidx3401 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3400
  %1871 = load i8, i8* %arrayidx3401, align 1
  %conv3402 = zext i8 %1871 to i32
  %cmp3403 = icmp ne i32 %conv3402, 3
  br i1 %cmp3403, label %if.end.3628, label %if.then.3405

if.then.3405:                                     ; preds = %lor.lhs.false.3399, %land.lhs.true.3393
  br label %do.body.3406

do.body.3406:                                     ; preds = %if.then.3405
  %1872 = load i32, i32* %distance, align 4
  %add3407 = add nsw i32 %1872, 1300
  %1873 = load i32, i32* %jpos, align 4
  %idxprom3408 = sext i32 %1873 to i64
  %1874 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3409 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1874, i32 0, i32 0
  %arrayidx3410 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3409, i32 0, i64 %idxprom3408
  %1875 = load i32, i32* %arrayidx3410, align 4
  %cmp3411 = icmp slt i32 %add3407, %1875
  br i1 %cmp3411, label %if.then.3413, label %if.end.3515

if.then.3413:                                     ; preds = %do.body.3406
  %1876 = load i32, i32* %jpos, align 4
  %idxprom3414 = sext i32 %1876 to i64
  %arrayidx3415 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3414
  %1877 = load i8, i8* %arrayidx3415, align 1
  %conv3416 = zext i8 %1877 to i32
  %cmp3417 = icmp eq i32 %conv3416, 0
  br i1 %cmp3417, label %if.then.3419, label %if.else.3448

if.then.3419:                                     ; preds = %if.then.3413
  %1878 = load i32, i32* %jpos, align 4
  %idxprom3420 = sext i32 %1878 to i64
  %1879 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3421 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1879, i32 0, i32 0
  %arrayidx3422 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3421, i32 0, i64 %idxprom3420
  %1880 = load i32, i32* %arrayidx3422, align 4
  %cmp3423 = icmp eq i32 %1880, 100000
  br i1 %cmp3423, label %if.then.3425, label %if.end.3431

if.then.3425:                                     ; preds = %if.then.3419
  %1881 = load i32, i32* %jpos, align 4
  %1882 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3426 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1882, i32 0, i32 7
  %1883 = load i32, i32* %queue_end3426, align 4
  %inc3427 = add nsw i32 %1883, 1
  store i32 %inc3427, i32* %queue_end3426, align 4
  %idxprom3428 = sext i32 %1883 to i64
  %1884 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3429 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1884, i32 0, i32 5
  %arrayidx3430 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3429, i32 0, i64 %idxprom3428
  store i32 %1881, i32* %arrayidx3430, align 4
  br label %if.end.3431

if.end.3431:                                      ; preds = %if.then.3425, %if.then.3419
  %1885 = load i32, i32* %distance, align 4
  %add3432 = add nsw i32 %1885, 1300
  %1886 = load i32, i32* %jpos, align 4
  %idxprom3433 = sext i32 %1886 to i64
  %1887 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3434 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1887, i32 0, i32 0
  %arrayidx3435 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3434, i32 0, i64 %idxprom3433
  store i32 %add3432, i32* %arrayidx3435, align 4
  %1888 = load i32, i32* %jpos, align 4
  %idxprom3436 = sext i32 %1888 to i64
  %1889 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3437 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1889, i32 0, i32 1
  %arrayidx3438 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3437, i32 0, i64 %idxprom3436
  store i32 1000, i32* %arrayidx3438, align 4
  %1890 = load i32, i32* %pos, align 4
  %1891 = load i32, i32* %jpos, align 4
  %idxprom3439 = sext i32 %1891 to i64
  %1892 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3440 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1892, i32 0, i32 2
  %arrayidx3441 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3440, i32 0, i64 %idxprom3439
  store i32 %1890, i32* %arrayidx3441, align 4
  %1893 = load i32, i32* %jpos, align 4
  %idxprom3442 = sext i32 %1893 to i64
  %1894 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13443 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1894, i32 0, i32 3
  %arrayidx3444 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13443, i32 0, i64 %idxprom3442
  store i32 0, i32* %arrayidx3444, align 4
  %1895 = load i32, i32* %jpos, align 4
  %idxprom3445 = sext i32 %1895 to i64
  %1896 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23446 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1896, i32 0, i32 4
  %arrayidx3447 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23446, i32 0, i64 %idxprom3445
  store i32 0, i32* %arrayidx3447, align 4
  br label %if.end.3514

if.else.3448:                                     ; preds = %if.then.3413
  %1897 = load i32, i32* %jpos, align 4
  %arraydecay3451 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3452 = call i32 @findstones(i32 %1897, i32 361, i32* %arraydecay3451)
  store i32 %call3452, i32* %num_stones, align 4
  store i32 0, i32* %r3450, align 4
  br label %for.cond.3453

for.cond.3453:                                    ; preds = %for.inc.3511, %if.else.3448
  %1898 = load i32, i32* %r3450, align 4
  %1899 = load i32, i32* %num_stones, align 4
  %cmp3454 = icmp slt i32 %1898, %1899
  br i1 %cmp3454, label %for.body.3456, label %for.end.3513

for.body.3456:                                    ; preds = %for.cond.3453
  %1900 = load i32, i32* %r3450, align 4
  %idxprom3457 = sext i32 %1900 to i64
  %arrayidx3458 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3457
  %1901 = load i32, i32* %arrayidx3458, align 4
  %idxprom3459 = sext i32 %1901 to i64
  %1902 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3460 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1902, i32 0, i32 0
  %arrayidx3461 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3460, i32 0, i64 %idxprom3459
  %1903 = load i32, i32* %arrayidx3461, align 4
  %cmp3462 = icmp eq i32 %1903, 100000
  br i1 %cmp3462, label %if.then.3464, label %if.end.3472

if.then.3464:                                     ; preds = %for.body.3456
  %1904 = load i32, i32* %r3450, align 4
  %idxprom3465 = sext i32 %1904 to i64
  %arrayidx3466 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3465
  %1905 = load i32, i32* %arrayidx3466, align 4
  %1906 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3467 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1906, i32 0, i32 7
  %1907 = load i32, i32* %queue_end3467, align 4
  %inc3468 = add nsw i32 %1907, 1
  store i32 %inc3468, i32* %queue_end3467, align 4
  %idxprom3469 = sext i32 %1907 to i64
  %1908 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3470 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1908, i32 0, i32 5
  %arrayidx3471 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3470, i32 0, i64 %idxprom3469
  store i32 %1905, i32* %arrayidx3471, align 4
  br label %if.end.3472

if.end.3472:                                      ; preds = %if.then.3464, %for.body.3456
  %1909 = load i32, i32* %distance, align 4
  %add3473 = add nsw i32 %1909, 1300
  %1910 = load i32, i32* %r3450, align 4
  %idxprom3474 = sext i32 %1910 to i64
  %arrayidx3475 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3474
  %1911 = load i32, i32* %arrayidx3475, align 4
  %idxprom3476 = sext i32 %1911 to i64
  %1912 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3477 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1912, i32 0, i32 0
  %arrayidx3478 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3477, i32 0, i64 %idxprom3476
  store i32 %add3473, i32* %arrayidx3478, align 4
  %1913 = load i32, i32* %r3450, align 4
  %idxprom3479 = sext i32 %1913 to i64
  %arrayidx3480 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3479
  %1914 = load i32, i32* %arrayidx3480, align 4
  %idxprom3481 = sext i32 %1914 to i64
  %1915 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3482 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1915, i32 0, i32 1
  %arrayidx3483 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3482, i32 0, i64 %idxprom3481
  store i32 1000, i32* %arrayidx3483, align 4
  %1916 = load i32, i32* %pos, align 4
  %1917 = load i32, i32* %r3450, align 4
  %idxprom3484 = sext i32 %1917 to i64
  %arrayidx3485 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3484
  %1918 = load i32, i32* %arrayidx3485, align 4
  %idxprom3486 = sext i32 %1918 to i64
  %1919 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3487 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1919, i32 0, i32 2
  %arrayidx3488 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3487, i32 0, i64 %idxprom3486
  store i32 %1916, i32* %arrayidx3488, align 4
  %1920 = load i32, i32* %r3450, align 4
  %idxprom3489 = sext i32 %1920 to i64
  %arrayidx3490 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3489
  %1921 = load i32, i32* %arrayidx3490, align 4
  %idxprom3491 = sext i32 %1921 to i64
  %1922 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13492 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1922, i32 0, i32 3
  %arrayidx3493 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13492, i32 0, i64 %idxprom3491
  store i32 0, i32* %arrayidx3493, align 4
  %1923 = load i32, i32* %r3450, align 4
  %idxprom3494 = sext i32 %1923 to i64
  %arrayidx3495 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3494
  %1924 = load i32, i32* %arrayidx3495, align 4
  %idxprom3496 = sext i32 %1924 to i64
  %1925 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23497 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1925, i32 0, i32 4
  %arrayidx3498 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23497, i32 0, i64 %idxprom3496
  store i32 0, i32* %arrayidx3498, align 4
  %1926 = load i32, i32* %r3450, align 4
  %idxprom3499 = sext i32 %1926 to i64
  %arrayidx3500 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3499
  %1927 = load i32, i32* %arrayidx3500, align 4
  %1928 = load i32, i32* %target.addr, align 4
  %cmp3501 = icmp eq i32 %1927, %1928
  br i1 %cmp3501, label %land.lhs.true.3503, label %if.end.3510

land.lhs.true.3503:                               ; preds = %if.end.3472
  %1929 = load i32, i32* %distance, align 4
  %add3504 = add nsw i32 %1929, 1300
  %1930 = load i32, i32* %cutoff_distance, align 4
  %cmp3505 = icmp slt i32 %add3504, %1930
  br i1 %cmp3505, label %if.then.3507, label %if.end.3510

if.then.3507:                                     ; preds = %land.lhs.true.3503
  %1931 = load i32, i32* %distance, align 4
  %add3508 = add nsw i32 %1931, 1300
  %sub3509 = sub nsw i32 %add3508, 1
  store i32 %sub3509, i32* %cutoff_distance, align 4
  br label %if.end.3510

if.end.3510:                                      ; preds = %if.then.3507, %land.lhs.true.3503, %if.end.3472
  br label %for.inc.3511

for.inc.3511:                                     ; preds = %if.end.3510
  %1932 = load i32, i32* %r3450, align 4
  %inc3512 = add nsw i32 %1932, 1
  store i32 %inc3512, i32* %r3450, align 4
  br label %for.cond.3453

for.end.3513:                                     ; preds = %for.cond.3453
  br label %if.end.3514

if.end.3514:                                      ; preds = %for.end.3513, %if.end.3431
  br label %if.end.3515

if.end.3515:                                      ; preds = %if.end.3514, %do.body.3406
  br label %do.end.3516

do.end.3516:                                      ; preds = %if.end.3515
  br label %do.body.3517

do.body.3517:                                     ; preds = %do.end.3516
  %1933 = load i32, i32* %distance, align 4
  %add3518 = add nsw i32 %1933, 1300
  %1934 = load i32, i32* %epos, align 4
  %idxprom3519 = sext i32 %1934 to i64
  %1935 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3520 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1935, i32 0, i32 0
  %arrayidx3521 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3520, i32 0, i64 %idxprom3519
  %1936 = load i32, i32* %arrayidx3521, align 4
  %cmp3522 = icmp slt i32 %add3518, %1936
  br i1 %cmp3522, label %if.then.3524, label %if.end.3626

if.then.3524:                                     ; preds = %do.body.3517
  %1937 = load i32, i32* %epos, align 4
  %idxprom3525 = sext i32 %1937 to i64
  %arrayidx3526 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3525
  %1938 = load i8, i8* %arrayidx3526, align 1
  %conv3527 = zext i8 %1938 to i32
  %cmp3528 = icmp eq i32 %conv3527, 0
  br i1 %cmp3528, label %if.then.3530, label %if.else.3559

if.then.3530:                                     ; preds = %if.then.3524
  %1939 = load i32, i32* %epos, align 4
  %idxprom3531 = sext i32 %1939 to i64
  %1940 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3532 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1940, i32 0, i32 0
  %arrayidx3533 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3532, i32 0, i64 %idxprom3531
  %1941 = load i32, i32* %arrayidx3533, align 4
  %cmp3534 = icmp eq i32 %1941, 100000
  br i1 %cmp3534, label %if.then.3536, label %if.end.3542

if.then.3536:                                     ; preds = %if.then.3530
  %1942 = load i32, i32* %epos, align 4
  %1943 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3537 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1943, i32 0, i32 7
  %1944 = load i32, i32* %queue_end3537, align 4
  %inc3538 = add nsw i32 %1944, 1
  store i32 %inc3538, i32* %queue_end3537, align 4
  %idxprom3539 = sext i32 %1944 to i64
  %1945 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3540 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1945, i32 0, i32 5
  %arrayidx3541 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3540, i32 0, i64 %idxprom3539
  store i32 %1942, i32* %arrayidx3541, align 4
  br label %if.end.3542

if.end.3542:                                      ; preds = %if.then.3536, %if.then.3530
  %1946 = load i32, i32* %distance, align 4
  %add3543 = add nsw i32 %1946, 1300
  %1947 = load i32, i32* %epos, align 4
  %idxprom3544 = sext i32 %1947 to i64
  %1948 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3545 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1948, i32 0, i32 0
  %arrayidx3546 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3545, i32 0, i64 %idxprom3544
  store i32 %add3543, i32* %arrayidx3546, align 4
  %1949 = load i32, i32* %epos, align 4
  %idxprom3547 = sext i32 %1949 to i64
  %1950 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3548 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1950, i32 0, i32 1
  %arrayidx3549 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3548, i32 0, i64 %idxprom3547
  store i32 1000, i32* %arrayidx3549, align 4
  %1951 = load i32, i32* %pos, align 4
  %1952 = load i32, i32* %epos, align 4
  %idxprom3550 = sext i32 %1952 to i64
  %1953 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3551 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1953, i32 0, i32 2
  %arrayidx3552 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3551, i32 0, i64 %idxprom3550
  store i32 %1951, i32* %arrayidx3552, align 4
  %1954 = load i32, i32* %epos, align 4
  %idxprom3553 = sext i32 %1954 to i64
  %1955 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13554 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1955, i32 0, i32 3
  %arrayidx3555 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13554, i32 0, i64 %idxprom3553
  store i32 0, i32* %arrayidx3555, align 4
  %1956 = load i32, i32* %epos, align 4
  %idxprom3556 = sext i32 %1956 to i64
  %1957 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23557 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1957, i32 0, i32 4
  %arrayidx3558 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23557, i32 0, i64 %idxprom3556
  store i32 0, i32* %arrayidx3558, align 4
  br label %if.end.3625

if.else.3559:                                     ; preds = %if.then.3524
  %1958 = load i32, i32* %epos, align 4
  %arraydecay3562 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3563 = call i32 @findstones(i32 %1958, i32 361, i32* %arraydecay3562)
  store i32 %call3563, i32* %num_stones, align 4
  store i32 0, i32* %r3561, align 4
  br label %for.cond.3564

for.cond.3564:                                    ; preds = %for.inc.3622, %if.else.3559
  %1959 = load i32, i32* %r3561, align 4
  %1960 = load i32, i32* %num_stones, align 4
  %cmp3565 = icmp slt i32 %1959, %1960
  br i1 %cmp3565, label %for.body.3567, label %for.end.3624

for.body.3567:                                    ; preds = %for.cond.3564
  %1961 = load i32, i32* %r3561, align 4
  %idxprom3568 = sext i32 %1961 to i64
  %arrayidx3569 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3568
  %1962 = load i32, i32* %arrayidx3569, align 4
  %idxprom3570 = sext i32 %1962 to i64
  %1963 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3571 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1963, i32 0, i32 0
  %arrayidx3572 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3571, i32 0, i64 %idxprom3570
  %1964 = load i32, i32* %arrayidx3572, align 4
  %cmp3573 = icmp eq i32 %1964, 100000
  br i1 %cmp3573, label %if.then.3575, label %if.end.3583

if.then.3575:                                     ; preds = %for.body.3567
  %1965 = load i32, i32* %r3561, align 4
  %idxprom3576 = sext i32 %1965 to i64
  %arrayidx3577 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3576
  %1966 = load i32, i32* %arrayidx3577, align 4
  %1967 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3578 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1967, i32 0, i32 7
  %1968 = load i32, i32* %queue_end3578, align 4
  %inc3579 = add nsw i32 %1968, 1
  store i32 %inc3579, i32* %queue_end3578, align 4
  %idxprom3580 = sext i32 %1968 to i64
  %1969 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3581 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1969, i32 0, i32 5
  %arrayidx3582 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3581, i32 0, i64 %idxprom3580
  store i32 %1966, i32* %arrayidx3582, align 4
  br label %if.end.3583

if.end.3583:                                      ; preds = %if.then.3575, %for.body.3567
  %1970 = load i32, i32* %distance, align 4
  %add3584 = add nsw i32 %1970, 1300
  %1971 = load i32, i32* %r3561, align 4
  %idxprom3585 = sext i32 %1971 to i64
  %arrayidx3586 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3585
  %1972 = load i32, i32* %arrayidx3586, align 4
  %idxprom3587 = sext i32 %1972 to i64
  %1973 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3588 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1973, i32 0, i32 0
  %arrayidx3589 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3588, i32 0, i64 %idxprom3587
  store i32 %add3584, i32* %arrayidx3589, align 4
  %1974 = load i32, i32* %r3561, align 4
  %idxprom3590 = sext i32 %1974 to i64
  %arrayidx3591 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3590
  %1975 = load i32, i32* %arrayidx3591, align 4
  %idxprom3592 = sext i32 %1975 to i64
  %1976 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3593 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1976, i32 0, i32 1
  %arrayidx3594 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3593, i32 0, i64 %idxprom3592
  store i32 1000, i32* %arrayidx3594, align 4
  %1977 = load i32, i32* %pos, align 4
  %1978 = load i32, i32* %r3561, align 4
  %idxprom3595 = sext i32 %1978 to i64
  %arrayidx3596 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3595
  %1979 = load i32, i32* %arrayidx3596, align 4
  %idxprom3597 = sext i32 %1979 to i64
  %1980 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3598 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1980, i32 0, i32 2
  %arrayidx3599 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3598, i32 0, i64 %idxprom3597
  store i32 %1977, i32* %arrayidx3599, align 4
  %1981 = load i32, i32* %r3561, align 4
  %idxprom3600 = sext i32 %1981 to i64
  %arrayidx3601 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3600
  %1982 = load i32, i32* %arrayidx3601, align 4
  %idxprom3602 = sext i32 %1982 to i64
  %1983 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13603 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1983, i32 0, i32 3
  %arrayidx3604 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13603, i32 0, i64 %idxprom3602
  store i32 0, i32* %arrayidx3604, align 4
  %1984 = load i32, i32* %r3561, align 4
  %idxprom3605 = sext i32 %1984 to i64
  %arrayidx3606 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3605
  %1985 = load i32, i32* %arrayidx3606, align 4
  %idxprom3607 = sext i32 %1985 to i64
  %1986 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23608 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1986, i32 0, i32 4
  %arrayidx3609 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23608, i32 0, i64 %idxprom3607
  store i32 0, i32* %arrayidx3609, align 4
  %1987 = load i32, i32* %r3561, align 4
  %idxprom3610 = sext i32 %1987 to i64
  %arrayidx3611 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3610
  %1988 = load i32, i32* %arrayidx3611, align 4
  %1989 = load i32, i32* %target.addr, align 4
  %cmp3612 = icmp eq i32 %1988, %1989
  br i1 %cmp3612, label %land.lhs.true.3614, label %if.end.3621

land.lhs.true.3614:                               ; preds = %if.end.3583
  %1990 = load i32, i32* %distance, align 4
  %add3615 = add nsw i32 %1990, 1300
  %1991 = load i32, i32* %cutoff_distance, align 4
  %cmp3616 = icmp slt i32 %add3615, %1991
  br i1 %cmp3616, label %if.then.3618, label %if.end.3621

if.then.3618:                                     ; preds = %land.lhs.true.3614
  %1992 = load i32, i32* %distance, align 4
  %add3619 = add nsw i32 %1992, 1300
  %sub3620 = sub nsw i32 %add3619, 1
  store i32 %sub3620, i32* %cutoff_distance, align 4
  br label %if.end.3621

if.end.3621:                                      ; preds = %if.then.3618, %land.lhs.true.3614, %if.end.3583
  br label %for.inc.3622

for.inc.3622:                                     ; preds = %if.end.3621
  %1993 = load i32, i32* %r3561, align 4
  %inc3623 = add nsw i32 %1993, 1
  store i32 %inc3623, i32* %r3561, align 4
  br label %for.cond.3564

for.end.3624:                                     ; preds = %for.cond.3564
  br label %if.end.3625

if.end.3625:                                      ; preds = %for.end.3624, %if.end.3542
  br label %if.end.3626

if.end.3626:                                      ; preds = %if.end.3625, %do.body.3517
  br label %do.end.3627

do.end.3627:                                      ; preds = %if.end.3626
  br label %if.end.3628

if.end.3628:                                      ; preds = %do.end.3627, %lor.lhs.false.3399, %lor.lhs.false.3386, %land.lhs.true.3373, %land.lhs.true.3367, %land.lhs.true.3361, %land.lhs.true.3355, %land.lhs.true.3349, %if.end.3345
  %1994 = load i32, i32* %bpos, align 4
  %idxprom3629 = sext i32 %1994 to i64
  %arrayidx3630 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3629
  %1995 = load i8, i8* %arrayidx3630, align 1
  %conv3631 = zext i8 %1995 to i32
  %cmp3632 = icmp eq i32 %conv3631, 0
  br i1 %cmp3632, label %land.lhs.true.3634, label %if.end.3762

land.lhs.true.3634:                               ; preds = %if.end.3628
  %1996 = load i32, i32* %apos, align 4
  %idxprom3635 = sext i32 %1996 to i64
  %arrayidx3636 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3635
  %1997 = load i8, i8* %arrayidx3636, align 1
  %conv3637 = zext i8 %1997 to i32
  %cmp3638 = icmp eq i32 %conv3637, 0
  br i1 %cmp3638, label %land.lhs.true.3640, label %if.end.3762

land.lhs.true.3640:                               ; preds = %land.lhs.true.3634
  %1998 = load i32, i32* %bpos, align 4
  %idxprom3641 = sext i32 %1998 to i64
  %1999 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3642 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1999, i32 0, i32 0
  %arrayidx3643 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3642, i32 0, i64 %idxprom3641
  %2000 = load i32, i32* %arrayidx3643, align 4
  %2001 = load i32, i32* %distance, align 4
  %add3644 = add nsw i32 %2001, 1200
  %cmp3645 = icmp sgt i32 %2000, %add3644
  br i1 %cmp3645, label %land.lhs.true.3647, label %if.end.3762

land.lhs.true.3647:                               ; preds = %land.lhs.true.3640
  %2002 = load i32, i32* %color, align 4
  %2003 = load i32, i32* %bpos, align 4
  %2004 = load i32, i32* %apos, align 4
  %call3648 = call i32 @does_secure_through_ladder(i32 %2002, i32 %2003, i32 %2004)
  %tobool3649 = icmp ne i32 %call3648, 0
  br i1 %tobool3649, label %if.then.3650, label %if.end.3762

if.then.3650:                                     ; preds = %land.lhs.true.3647
  br label %do.body.3651

do.body.3651:                                     ; preds = %if.then.3650
  %2005 = load i32, i32* %distance, align 4
  %add3652 = add nsw i32 %2005, 1200
  %2006 = load i32, i32* %bpos, align 4
  %idxprom3653 = sext i32 %2006 to i64
  %2007 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3654 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2007, i32 0, i32 0
  %arrayidx3655 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3654, i32 0, i64 %idxprom3653
  %2008 = load i32, i32* %arrayidx3655, align 4
  %cmp3656 = icmp slt i32 %add3652, %2008
  br i1 %cmp3656, label %if.then.3658, label %if.end.3760

if.then.3658:                                     ; preds = %do.body.3651
  %2009 = load i32, i32* %bpos, align 4
  %idxprom3659 = sext i32 %2009 to i64
  %arrayidx3660 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3659
  %2010 = load i8, i8* %arrayidx3660, align 1
  %conv3661 = zext i8 %2010 to i32
  %cmp3662 = icmp eq i32 %conv3661, 0
  br i1 %cmp3662, label %if.then.3664, label %if.else.3693

if.then.3664:                                     ; preds = %if.then.3658
  %2011 = load i32, i32* %bpos, align 4
  %idxprom3665 = sext i32 %2011 to i64
  %2012 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3666 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2012, i32 0, i32 0
  %arrayidx3667 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3666, i32 0, i64 %idxprom3665
  %2013 = load i32, i32* %arrayidx3667, align 4
  %cmp3668 = icmp eq i32 %2013, 100000
  br i1 %cmp3668, label %if.then.3670, label %if.end.3676

if.then.3670:                                     ; preds = %if.then.3664
  %2014 = load i32, i32* %bpos, align 4
  %2015 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3671 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2015, i32 0, i32 7
  %2016 = load i32, i32* %queue_end3671, align 4
  %inc3672 = add nsw i32 %2016, 1
  store i32 %inc3672, i32* %queue_end3671, align 4
  %idxprom3673 = sext i32 %2016 to i64
  %2017 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3674 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2017, i32 0, i32 5
  %arrayidx3675 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3674, i32 0, i64 %idxprom3673
  store i32 %2014, i32* %arrayidx3675, align 4
  br label %if.end.3676

if.end.3676:                                      ; preds = %if.then.3670, %if.then.3664
  %2018 = load i32, i32* %distance, align 4
  %add3677 = add nsw i32 %2018, 1200
  %2019 = load i32, i32* %bpos, align 4
  %idxprom3678 = sext i32 %2019 to i64
  %2020 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3679 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2020, i32 0, i32 0
  %arrayidx3680 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3679, i32 0, i64 %idxprom3678
  store i32 %add3677, i32* %arrayidx3680, align 4
  %2021 = load i32, i32* %bpos, align 4
  %idxprom3681 = sext i32 %2021 to i64
  %2022 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2022, i32 0, i32 1
  %arrayidx3683 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3682, i32 0, i64 %idxprom3681
  store i32 1000, i32* %arrayidx3683, align 4
  %2023 = load i32, i32* %pos, align 4
  %2024 = load i32, i32* %bpos, align 4
  %idxprom3684 = sext i32 %2024 to i64
  %2025 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3685 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2025, i32 0, i32 2
  %arrayidx3686 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3685, i32 0, i64 %idxprom3684
  store i32 %2023, i32* %arrayidx3686, align 4
  %2026 = load i32, i32* %apos, align 4
  %2027 = load i32, i32* %bpos, align 4
  %idxprom3687 = sext i32 %2027 to i64
  %2028 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13688 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2028, i32 0, i32 3
  %arrayidx3689 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13688, i32 0, i64 %idxprom3687
  store i32 %2026, i32* %arrayidx3689, align 4
  %2029 = load i32, i32* %bpos, align 4
  %idxprom3690 = sext i32 %2029 to i64
  %2030 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23691 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2030, i32 0, i32 4
  %arrayidx3692 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23691, i32 0, i64 %idxprom3690
  store i32 0, i32* %arrayidx3692, align 4
  br label %if.end.3759

if.else.3693:                                     ; preds = %if.then.3658
  %2031 = load i32, i32* %bpos, align 4
  %arraydecay3696 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3697 = call i32 @findstones(i32 %2031, i32 361, i32* %arraydecay3696)
  store i32 %call3697, i32* %num_stones, align 4
  store i32 0, i32* %r3695, align 4
  br label %for.cond.3698

for.cond.3698:                                    ; preds = %for.inc.3756, %if.else.3693
  %2032 = load i32, i32* %r3695, align 4
  %2033 = load i32, i32* %num_stones, align 4
  %cmp3699 = icmp slt i32 %2032, %2033
  br i1 %cmp3699, label %for.body.3701, label %for.end.3758

for.body.3701:                                    ; preds = %for.cond.3698
  %2034 = load i32, i32* %r3695, align 4
  %idxprom3702 = sext i32 %2034 to i64
  %arrayidx3703 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3702
  %2035 = load i32, i32* %arrayidx3703, align 4
  %idxprom3704 = sext i32 %2035 to i64
  %2036 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3705 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2036, i32 0, i32 0
  %arrayidx3706 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3705, i32 0, i64 %idxprom3704
  %2037 = load i32, i32* %arrayidx3706, align 4
  %cmp3707 = icmp eq i32 %2037, 100000
  br i1 %cmp3707, label %if.then.3709, label %if.end.3717

if.then.3709:                                     ; preds = %for.body.3701
  %2038 = load i32, i32* %r3695, align 4
  %idxprom3710 = sext i32 %2038 to i64
  %arrayidx3711 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3710
  %2039 = load i32, i32* %arrayidx3711, align 4
  %2040 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3712 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2040, i32 0, i32 7
  %2041 = load i32, i32* %queue_end3712, align 4
  %inc3713 = add nsw i32 %2041, 1
  store i32 %inc3713, i32* %queue_end3712, align 4
  %idxprom3714 = sext i32 %2041 to i64
  %2042 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3715 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2042, i32 0, i32 5
  %arrayidx3716 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3715, i32 0, i64 %idxprom3714
  store i32 %2039, i32* %arrayidx3716, align 4
  br label %if.end.3717

if.end.3717:                                      ; preds = %if.then.3709, %for.body.3701
  %2043 = load i32, i32* %distance, align 4
  %add3718 = add nsw i32 %2043, 1200
  %2044 = load i32, i32* %r3695, align 4
  %idxprom3719 = sext i32 %2044 to i64
  %arrayidx3720 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3719
  %2045 = load i32, i32* %arrayidx3720, align 4
  %idxprom3721 = sext i32 %2045 to i64
  %2046 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3722 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2046, i32 0, i32 0
  %arrayidx3723 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3722, i32 0, i64 %idxprom3721
  store i32 %add3718, i32* %arrayidx3723, align 4
  %2047 = load i32, i32* %r3695, align 4
  %idxprom3724 = sext i32 %2047 to i64
  %arrayidx3725 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3724
  %2048 = load i32, i32* %arrayidx3725, align 4
  %idxprom3726 = sext i32 %2048 to i64
  %2049 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3727 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2049, i32 0, i32 1
  %arrayidx3728 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3727, i32 0, i64 %idxprom3726
  store i32 1000, i32* %arrayidx3728, align 4
  %2050 = load i32, i32* %pos, align 4
  %2051 = load i32, i32* %r3695, align 4
  %idxprom3729 = sext i32 %2051 to i64
  %arrayidx3730 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3729
  %2052 = load i32, i32* %arrayidx3730, align 4
  %idxprom3731 = sext i32 %2052 to i64
  %2053 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3732 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2053, i32 0, i32 2
  %arrayidx3733 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3732, i32 0, i64 %idxprom3731
  store i32 %2050, i32* %arrayidx3733, align 4
  %2054 = load i32, i32* %apos, align 4
  %2055 = load i32, i32* %r3695, align 4
  %idxprom3734 = sext i32 %2055 to i64
  %arrayidx3735 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3734
  %2056 = load i32, i32* %arrayidx3735, align 4
  %idxprom3736 = sext i32 %2056 to i64
  %2057 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13737 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2057, i32 0, i32 3
  %arrayidx3738 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13737, i32 0, i64 %idxprom3736
  store i32 %2054, i32* %arrayidx3738, align 4
  %2058 = load i32, i32* %r3695, align 4
  %idxprom3739 = sext i32 %2058 to i64
  %arrayidx3740 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3739
  %2059 = load i32, i32* %arrayidx3740, align 4
  %idxprom3741 = sext i32 %2059 to i64
  %2060 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23742 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2060, i32 0, i32 4
  %arrayidx3743 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23742, i32 0, i64 %idxprom3741
  store i32 0, i32* %arrayidx3743, align 4
  %2061 = load i32, i32* %r3695, align 4
  %idxprom3744 = sext i32 %2061 to i64
  %arrayidx3745 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3744
  %2062 = load i32, i32* %arrayidx3745, align 4
  %2063 = load i32, i32* %target.addr, align 4
  %cmp3746 = icmp eq i32 %2062, %2063
  br i1 %cmp3746, label %land.lhs.true.3748, label %if.end.3755

land.lhs.true.3748:                               ; preds = %if.end.3717
  %2064 = load i32, i32* %distance, align 4
  %add3749 = add nsw i32 %2064, 1200
  %2065 = load i32, i32* %cutoff_distance, align 4
  %cmp3750 = icmp slt i32 %add3749, %2065
  br i1 %cmp3750, label %if.then.3752, label %if.end.3755

if.then.3752:                                     ; preds = %land.lhs.true.3748
  %2066 = load i32, i32* %distance, align 4
  %add3753 = add nsw i32 %2066, 1200
  %sub3754 = sub nsw i32 %add3753, 1
  store i32 %sub3754, i32* %cutoff_distance, align 4
  br label %if.end.3755

if.end.3755:                                      ; preds = %if.then.3752, %land.lhs.true.3748, %if.end.3717
  br label %for.inc.3756

for.inc.3756:                                     ; preds = %if.end.3755
  %2067 = load i32, i32* %r3695, align 4
  %inc3757 = add nsw i32 %2067, 1
  store i32 %inc3757, i32* %r3695, align 4
  br label %for.cond.3698

for.end.3758:                                     ; preds = %for.cond.3698
  br label %if.end.3759

if.end.3759:                                      ; preds = %for.end.3758, %if.end.3676
  br label %if.end.3760

if.end.3760:                                      ; preds = %if.end.3759, %do.body.3651
  br label %do.end.3761

do.end.3761:                                      ; preds = %if.end.3760
  br label %if.end.3762

if.end.3762:                                      ; preds = %do.end.3761, %land.lhs.true.3647, %land.lhs.true.3640, %land.lhs.true.3634, %if.end.3628
  %2068 = load i32, i32* %bpos, align 4
  %idxprom3763 = sext i32 %2068 to i64
  %arrayidx3764 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3763
  %2069 = load i8, i8* %arrayidx3764, align 1
  %conv3765 = zext i8 %2069 to i32
  %cmp3766 = icmp eq i32 %conv3765, 0
  br i1 %cmp3766, label %land.lhs.true.3768, label %if.end.3896

land.lhs.true.3768:                               ; preds = %if.end.3762
  %2070 = load i32, i32* %gpos, align 4
  %idxprom3769 = sext i32 %2070 to i64
  %arrayidx3770 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3769
  %2071 = load i8, i8* %arrayidx3770, align 1
  %conv3771 = zext i8 %2071 to i32
  %cmp3772 = icmp eq i32 %conv3771, 0
  br i1 %cmp3772, label %land.lhs.true.3774, label %if.end.3896

land.lhs.true.3774:                               ; preds = %land.lhs.true.3768
  %2072 = load i32, i32* %bpos, align 4
  %idxprom3775 = sext i32 %2072 to i64
  %2073 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3776 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2073, i32 0, i32 0
  %arrayidx3777 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3776, i32 0, i64 %idxprom3775
  %2074 = load i32, i32* %arrayidx3777, align 4
  %2075 = load i32, i32* %distance, align 4
  %add3778 = add nsw i32 %2075, 1200
  %cmp3779 = icmp sgt i32 %2074, %add3778
  br i1 %cmp3779, label %land.lhs.true.3781, label %if.end.3896

land.lhs.true.3781:                               ; preds = %land.lhs.true.3774
  %2076 = load i32, i32* %color, align 4
  %2077 = load i32, i32* %bpos, align 4
  %2078 = load i32, i32* %gpos, align 4
  %call3782 = call i32 @does_secure_through_ladder(i32 %2076, i32 %2077, i32 %2078)
  %tobool3783 = icmp ne i32 %call3782, 0
  br i1 %tobool3783, label %if.then.3784, label %if.end.3896

if.then.3784:                                     ; preds = %land.lhs.true.3781
  br label %do.body.3785

do.body.3785:                                     ; preds = %if.then.3784
  %2079 = load i32, i32* %distance, align 4
  %add3786 = add nsw i32 %2079, 1200
  %2080 = load i32, i32* %bpos, align 4
  %idxprom3787 = sext i32 %2080 to i64
  %2081 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3788 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2081, i32 0, i32 0
  %arrayidx3789 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3788, i32 0, i64 %idxprom3787
  %2082 = load i32, i32* %arrayidx3789, align 4
  %cmp3790 = icmp slt i32 %add3786, %2082
  br i1 %cmp3790, label %if.then.3792, label %if.end.3894

if.then.3792:                                     ; preds = %do.body.3785
  %2083 = load i32, i32* %bpos, align 4
  %idxprom3793 = sext i32 %2083 to i64
  %arrayidx3794 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3793
  %2084 = load i8, i8* %arrayidx3794, align 1
  %conv3795 = zext i8 %2084 to i32
  %cmp3796 = icmp eq i32 %conv3795, 0
  br i1 %cmp3796, label %if.then.3798, label %if.else.3827

if.then.3798:                                     ; preds = %if.then.3792
  %2085 = load i32, i32* %bpos, align 4
  %idxprom3799 = sext i32 %2085 to i64
  %2086 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3800 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2086, i32 0, i32 0
  %arrayidx3801 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3800, i32 0, i64 %idxprom3799
  %2087 = load i32, i32* %arrayidx3801, align 4
  %cmp3802 = icmp eq i32 %2087, 100000
  br i1 %cmp3802, label %if.then.3804, label %if.end.3810

if.then.3804:                                     ; preds = %if.then.3798
  %2088 = load i32, i32* %bpos, align 4
  %2089 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3805 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2089, i32 0, i32 7
  %2090 = load i32, i32* %queue_end3805, align 4
  %inc3806 = add nsw i32 %2090, 1
  store i32 %inc3806, i32* %queue_end3805, align 4
  %idxprom3807 = sext i32 %2090 to i64
  %2091 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3808 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2091, i32 0, i32 5
  %arrayidx3809 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3808, i32 0, i64 %idxprom3807
  store i32 %2088, i32* %arrayidx3809, align 4
  br label %if.end.3810

if.end.3810:                                      ; preds = %if.then.3804, %if.then.3798
  %2092 = load i32, i32* %distance, align 4
  %add3811 = add nsw i32 %2092, 1200
  %2093 = load i32, i32* %bpos, align 4
  %idxprom3812 = sext i32 %2093 to i64
  %2094 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3813 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2094, i32 0, i32 0
  %arrayidx3814 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3813, i32 0, i64 %idxprom3812
  store i32 %add3811, i32* %arrayidx3814, align 4
  %2095 = load i32, i32* %bpos, align 4
  %idxprom3815 = sext i32 %2095 to i64
  %2096 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3816 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2096, i32 0, i32 1
  %arrayidx3817 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3816, i32 0, i64 %idxprom3815
  store i32 1000, i32* %arrayidx3817, align 4
  %2097 = load i32, i32* %pos, align 4
  %2098 = load i32, i32* %bpos, align 4
  %idxprom3818 = sext i32 %2098 to i64
  %2099 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3819 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2099, i32 0, i32 2
  %arrayidx3820 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3819, i32 0, i64 %idxprom3818
  store i32 %2097, i32* %arrayidx3820, align 4
  %2100 = load i32, i32* %gpos, align 4
  %2101 = load i32, i32* %bpos, align 4
  %idxprom3821 = sext i32 %2101 to i64
  %2102 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13822 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2102, i32 0, i32 3
  %arrayidx3823 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13822, i32 0, i64 %idxprom3821
  store i32 %2100, i32* %arrayidx3823, align 4
  %2103 = load i32, i32* %bpos, align 4
  %idxprom3824 = sext i32 %2103 to i64
  %2104 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23825 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2104, i32 0, i32 4
  %arrayidx3826 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23825, i32 0, i64 %idxprom3824
  store i32 0, i32* %arrayidx3826, align 4
  br label %if.end.3893

if.else.3827:                                     ; preds = %if.then.3792
  %2105 = load i32, i32* %bpos, align 4
  %arraydecay3830 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3831 = call i32 @findstones(i32 %2105, i32 361, i32* %arraydecay3830)
  store i32 %call3831, i32* %num_stones, align 4
  store i32 0, i32* %r3829, align 4
  br label %for.cond.3832

for.cond.3832:                                    ; preds = %for.inc.3890, %if.else.3827
  %2106 = load i32, i32* %r3829, align 4
  %2107 = load i32, i32* %num_stones, align 4
  %cmp3833 = icmp slt i32 %2106, %2107
  br i1 %cmp3833, label %for.body.3835, label %for.end.3892

for.body.3835:                                    ; preds = %for.cond.3832
  %2108 = load i32, i32* %r3829, align 4
  %idxprom3836 = sext i32 %2108 to i64
  %arrayidx3837 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3836
  %2109 = load i32, i32* %arrayidx3837, align 4
  %idxprom3838 = sext i32 %2109 to i64
  %2110 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3839 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2110, i32 0, i32 0
  %arrayidx3840 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3839, i32 0, i64 %idxprom3838
  %2111 = load i32, i32* %arrayidx3840, align 4
  %cmp3841 = icmp eq i32 %2111, 100000
  br i1 %cmp3841, label %if.then.3843, label %if.end.3851

if.then.3843:                                     ; preds = %for.body.3835
  %2112 = load i32, i32* %r3829, align 4
  %idxprom3844 = sext i32 %2112 to i64
  %arrayidx3845 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3844
  %2113 = load i32, i32* %arrayidx3845, align 4
  %2114 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3846 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2114, i32 0, i32 7
  %2115 = load i32, i32* %queue_end3846, align 4
  %inc3847 = add nsw i32 %2115, 1
  store i32 %inc3847, i32* %queue_end3846, align 4
  %idxprom3848 = sext i32 %2115 to i64
  %2116 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3849 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2116, i32 0, i32 5
  %arrayidx3850 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3849, i32 0, i64 %idxprom3848
  store i32 %2113, i32* %arrayidx3850, align 4
  br label %if.end.3851

if.end.3851:                                      ; preds = %if.then.3843, %for.body.3835
  %2117 = load i32, i32* %distance, align 4
  %add3852 = add nsw i32 %2117, 1200
  %2118 = load i32, i32* %r3829, align 4
  %idxprom3853 = sext i32 %2118 to i64
  %arrayidx3854 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3853
  %2119 = load i32, i32* %arrayidx3854, align 4
  %idxprom3855 = sext i32 %2119 to i64
  %2120 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3856 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2120, i32 0, i32 0
  %arrayidx3857 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3856, i32 0, i64 %idxprom3855
  store i32 %add3852, i32* %arrayidx3857, align 4
  %2121 = load i32, i32* %r3829, align 4
  %idxprom3858 = sext i32 %2121 to i64
  %arrayidx3859 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3858
  %2122 = load i32, i32* %arrayidx3859, align 4
  %idxprom3860 = sext i32 %2122 to i64
  %2123 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3861 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2123, i32 0, i32 1
  %arrayidx3862 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3861, i32 0, i64 %idxprom3860
  store i32 1000, i32* %arrayidx3862, align 4
  %2124 = load i32, i32* %pos, align 4
  %2125 = load i32, i32* %r3829, align 4
  %idxprom3863 = sext i32 %2125 to i64
  %arrayidx3864 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3863
  %2126 = load i32, i32* %arrayidx3864, align 4
  %idxprom3865 = sext i32 %2126 to i64
  %2127 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3866 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2127, i32 0, i32 2
  %arrayidx3867 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3866, i32 0, i64 %idxprom3865
  store i32 %2124, i32* %arrayidx3867, align 4
  %2128 = load i32, i32* %gpos, align 4
  %2129 = load i32, i32* %r3829, align 4
  %idxprom3868 = sext i32 %2129 to i64
  %arrayidx3869 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3868
  %2130 = load i32, i32* %arrayidx3869, align 4
  %idxprom3870 = sext i32 %2130 to i64
  %2131 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13871 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2131, i32 0, i32 3
  %arrayidx3872 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13871, i32 0, i64 %idxprom3870
  store i32 %2128, i32* %arrayidx3872, align 4
  %2132 = load i32, i32* %r3829, align 4
  %idxprom3873 = sext i32 %2132 to i64
  %arrayidx3874 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3873
  %2133 = load i32, i32* %arrayidx3874, align 4
  %idxprom3875 = sext i32 %2133 to i64
  %2134 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23876 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2134, i32 0, i32 4
  %arrayidx3877 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23876, i32 0, i64 %idxprom3875
  store i32 0, i32* %arrayidx3877, align 4
  %2135 = load i32, i32* %r3829, align 4
  %idxprom3878 = sext i32 %2135 to i64
  %arrayidx3879 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3878
  %2136 = load i32, i32* %arrayidx3879, align 4
  %2137 = load i32, i32* %target.addr, align 4
  %cmp3880 = icmp eq i32 %2136, %2137
  br i1 %cmp3880, label %land.lhs.true.3882, label %if.end.3889

land.lhs.true.3882:                               ; preds = %if.end.3851
  %2138 = load i32, i32* %distance, align 4
  %add3883 = add nsw i32 %2138, 1200
  %2139 = load i32, i32* %cutoff_distance, align 4
  %cmp3884 = icmp slt i32 %add3883, %2139
  br i1 %cmp3884, label %if.then.3886, label %if.end.3889

if.then.3886:                                     ; preds = %land.lhs.true.3882
  %2140 = load i32, i32* %distance, align 4
  %add3887 = add nsw i32 %2140, 1200
  %sub3888 = sub nsw i32 %add3887, 1
  store i32 %sub3888, i32* %cutoff_distance, align 4
  br label %if.end.3889

if.end.3889:                                      ; preds = %if.then.3886, %land.lhs.true.3882, %if.end.3851
  br label %for.inc.3890

for.inc.3890:                                     ; preds = %if.end.3889
  %2141 = load i32, i32* %r3829, align 4
  %inc3891 = add nsw i32 %2141, 1
  store i32 %inc3891, i32* %r3829, align 4
  br label %for.cond.3832

for.end.3892:                                     ; preds = %for.cond.3832
  br label %if.end.3893

if.end.3893:                                      ; preds = %for.end.3892, %if.end.3810
  br label %if.end.3894

if.end.3894:                                      ; preds = %if.end.3893, %do.body.3785
  br label %do.end.3895

do.end.3895:                                      ; preds = %if.end.3894
  br label %if.end.3896

if.end.3896:                                      ; preds = %do.end.3895, %land.lhs.true.3781, %land.lhs.true.3774, %land.lhs.true.3768, %if.end.3762
  %2142 = load i32, i32* %bpos, align 4
  %idxprom3897 = sext i32 %2142 to i64
  %arrayidx3898 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3897
  %2143 = load i8, i8* %arrayidx3898, align 1
  %conv3899 = zext i8 %2143 to i32
  %cmp3900 = icmp eq i32 %conv3899, 0
  br i1 %cmp3900, label %land.lhs.true.3902, label %if.end.4037

land.lhs.true.3902:                               ; preds = %if.end.3896
  %2144 = load i32, i32* %apos, align 4
  %idxprom3903 = sext i32 %2144 to i64
  %arrayidx3904 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3903
  %2145 = load i8, i8* %arrayidx3904, align 1
  %conv3905 = zext i8 %2145 to i32
  %cmp3906 = icmp eq i32 %conv3905, 0
  br i1 %cmp3906, label %land.lhs.true.3908, label %if.end.4037

land.lhs.true.3908:                               ; preds = %land.lhs.true.3902
  %2146 = load i32, i32* %gpos, align 4
  %idxprom3909 = sext i32 %2146 to i64
  %arrayidx3910 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3909
  %2147 = load i8, i8* %arrayidx3910, align 1
  %conv3911 = zext i8 %2147 to i32
  %2148 = load i32, i32* %other, align 4
  %cmp3912 = icmp eq i32 %conv3911, %2148
  br i1 %cmp3912, label %land.lhs.true.3914, label %if.end.4037

land.lhs.true.3914:                               ; preds = %land.lhs.true.3908
  %2149 = load i32, i32* %gpos, align 4
  %call3915 = call i32 @countlib(i32 %2149)
  %cmp3916 = icmp sle i32 %call3915, 3
  br i1 %cmp3916, label %land.lhs.true.3918, label %if.end.4037

land.lhs.true.3918:                               ; preds = %land.lhs.true.3914
  %2150 = load i32, i32* %bpos, align 4
  %idxprom3919 = sext i32 %2150 to i64
  %2151 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3920 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2151, i32 0, i32 0
  %arrayidx3921 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3920, i32 0, i64 %idxprom3919
  %2152 = load i32, i32* %arrayidx3921, align 4
  %2153 = load i32, i32* %distance, align 4
  %add3922 = add nsw i32 %2153, 1500
  %cmp3923 = icmp sgt i32 %2152, %add3922
  br i1 %cmp3923, label %if.then.3925, label %if.end.4037

if.then.3925:                                     ; preds = %land.lhs.true.3918
  br label %do.body.3926

do.body.3926:                                     ; preds = %if.then.3925
  %2154 = load i32, i32* %distance, align 4
  %add3927 = add nsw i32 %2154, 1500
  %2155 = load i32, i32* %bpos, align 4
  %idxprom3928 = sext i32 %2155 to i64
  %2156 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3929 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2156, i32 0, i32 0
  %arrayidx3930 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3929, i32 0, i64 %idxprom3928
  %2157 = load i32, i32* %arrayidx3930, align 4
  %cmp3931 = icmp slt i32 %add3927, %2157
  br i1 %cmp3931, label %if.then.3933, label %if.end.4035

if.then.3933:                                     ; preds = %do.body.3926
  %2158 = load i32, i32* %bpos, align 4
  %idxprom3934 = sext i32 %2158 to i64
  %arrayidx3935 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3934
  %2159 = load i8, i8* %arrayidx3935, align 1
  %conv3936 = zext i8 %2159 to i32
  %cmp3937 = icmp eq i32 %conv3936, 0
  br i1 %cmp3937, label %if.then.3939, label %if.else.3968

if.then.3939:                                     ; preds = %if.then.3933
  %2160 = load i32, i32* %bpos, align 4
  %idxprom3940 = sext i32 %2160 to i64
  %2161 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3941 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2161, i32 0, i32 0
  %arrayidx3942 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3941, i32 0, i64 %idxprom3940
  %2162 = load i32, i32* %arrayidx3942, align 4
  %cmp3943 = icmp eq i32 %2162, 100000
  br i1 %cmp3943, label %if.then.3945, label %if.end.3951

if.then.3945:                                     ; preds = %if.then.3939
  %2163 = load i32, i32* %bpos, align 4
  %2164 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3946 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2164, i32 0, i32 7
  %2165 = load i32, i32* %queue_end3946, align 4
  %inc3947 = add nsw i32 %2165, 1
  store i32 %inc3947, i32* %queue_end3946, align 4
  %idxprom3948 = sext i32 %2165 to i64
  %2166 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3949 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2166, i32 0, i32 5
  %arrayidx3950 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3949, i32 0, i64 %idxprom3948
  store i32 %2163, i32* %arrayidx3950, align 4
  br label %if.end.3951

if.end.3951:                                      ; preds = %if.then.3945, %if.then.3939
  %2167 = load i32, i32* %distance, align 4
  %add3952 = add nsw i32 %2167, 1500
  %2168 = load i32, i32* %bpos, align 4
  %idxprom3953 = sext i32 %2168 to i64
  %2169 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3954 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2169, i32 0, i32 0
  %arrayidx3955 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3954, i32 0, i64 %idxprom3953
  store i32 %add3952, i32* %arrayidx3955, align 4
  %2170 = load i32, i32* %bpos, align 4
  %idxprom3956 = sext i32 %2170 to i64
  %2171 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas3957 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2171, i32 0, i32 1
  %arrayidx3958 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas3957, i32 0, i64 %idxprom3956
  store i32 1000, i32* %arrayidx3958, align 4
  %2172 = load i32, i32* %pos, align 4
  %2173 = load i32, i32* %bpos, align 4
  %idxprom3959 = sext i32 %2173 to i64
  %2174 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from3960 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2174, i32 0, i32 2
  %arrayidx3961 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from3960, i32 0, i64 %idxprom3959
  store i32 %2172, i32* %arrayidx3961, align 4
  %2175 = load i32, i32* %apos, align 4
  %2176 = load i32, i32* %bpos, align 4
  %idxprom3962 = sext i32 %2176 to i64
  %2177 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable13963 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2177, i32 0, i32 3
  %arrayidx3964 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable13963, i32 0, i64 %idxprom3962
  store i32 %2175, i32* %arrayidx3964, align 4
  %2178 = load i32, i32* %bpos, align 4
  %idxprom3965 = sext i32 %2178 to i64
  %2179 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable23966 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2179, i32 0, i32 4
  %arrayidx3967 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable23966, i32 0, i64 %idxprom3965
  store i32 0, i32* %arrayidx3967, align 4
  br label %if.end.4034

if.else.3968:                                     ; preds = %if.then.3933
  %2180 = load i32, i32* %bpos, align 4
  %arraydecay3971 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call3972 = call i32 @findstones(i32 %2180, i32 361, i32* %arraydecay3971)
  store i32 %call3972, i32* %num_stones, align 4
  store i32 0, i32* %r3970, align 4
  br label %for.cond.3973

for.cond.3973:                                    ; preds = %for.inc.4031, %if.else.3968
  %2181 = load i32, i32* %r3970, align 4
  %2182 = load i32, i32* %num_stones, align 4
  %cmp3974 = icmp slt i32 %2181, %2182
  br i1 %cmp3974, label %for.body.3976, label %for.end.4033

for.body.3976:                                    ; preds = %for.cond.3973
  %2183 = load i32, i32* %r3970, align 4
  %idxprom3977 = sext i32 %2183 to i64
  %arrayidx3978 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3977
  %2184 = load i32, i32* %arrayidx3978, align 4
  %idxprom3979 = sext i32 %2184 to i64
  %2185 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3980 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2185, i32 0, i32 0
  %arrayidx3981 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3980, i32 0, i64 %idxprom3979
  %2186 = load i32, i32* %arrayidx3981, align 4
  %cmp3982 = icmp eq i32 %2186, 100000
  br i1 %cmp3982, label %if.then.3984, label %if.end.3992

if.then.3984:                                     ; preds = %for.body.3976
  %2187 = load i32, i32* %r3970, align 4
  %idxprom3985 = sext i32 %2187 to i64
  %arrayidx3986 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3985
  %2188 = load i32, i32* %arrayidx3986, align 4
  %2189 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end3987 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2189, i32 0, i32 7
  %2190 = load i32, i32* %queue_end3987, align 4
  %inc3988 = add nsw i32 %2190, 1
  store i32 %inc3988, i32* %queue_end3987, align 4
  %idxprom3989 = sext i32 %2190 to i64
  %2191 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue3990 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2191, i32 0, i32 5
  %arrayidx3991 = getelementptr inbounds [400 x i32], [400 x i32]* %queue3990, i32 0, i64 %idxprom3989
  store i32 %2188, i32* %arrayidx3991, align 4
  br label %if.end.3992

if.end.3992:                                      ; preds = %if.then.3984, %for.body.3976
  %2192 = load i32, i32* %distance, align 4
  %add3993 = add nsw i32 %2192, 1500
  %2193 = load i32, i32* %r3970, align 4
  %idxprom3994 = sext i32 %2193 to i64
  %arrayidx3995 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3994
  %2194 = load i32, i32* %arrayidx3995, align 4
  %idxprom3996 = sext i32 %2194 to i64
  %2195 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances3997 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2195, i32 0, i32 0
  %arrayidx3998 = getelementptr inbounds [400 x i32], [400 x i32]* %distances3997, i32 0, i64 %idxprom3996
  store i32 %add3993, i32* %arrayidx3998, align 4
  %2196 = load i32, i32* %r3970, align 4
  %idxprom3999 = sext i32 %2196 to i64
  %arrayidx4000 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom3999
  %2197 = load i32, i32* %arrayidx4000, align 4
  %idxprom4001 = sext i32 %2197 to i64
  %2198 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4002 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2198, i32 0, i32 1
  %arrayidx4003 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4002, i32 0, i64 %idxprom4001
  store i32 1000, i32* %arrayidx4003, align 4
  %2199 = load i32, i32* %pos, align 4
  %2200 = load i32, i32* %r3970, align 4
  %idxprom4004 = sext i32 %2200 to i64
  %arrayidx4005 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4004
  %2201 = load i32, i32* %arrayidx4005, align 4
  %idxprom4006 = sext i32 %2201 to i64
  %2202 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4007 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2202, i32 0, i32 2
  %arrayidx4008 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4007, i32 0, i64 %idxprom4006
  store i32 %2199, i32* %arrayidx4008, align 4
  %2203 = load i32, i32* %apos, align 4
  %2204 = load i32, i32* %r3970, align 4
  %idxprom4009 = sext i32 %2204 to i64
  %arrayidx4010 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4009
  %2205 = load i32, i32* %arrayidx4010, align 4
  %idxprom4011 = sext i32 %2205 to i64
  %2206 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14012 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2206, i32 0, i32 3
  %arrayidx4013 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14012, i32 0, i64 %idxprom4011
  store i32 %2203, i32* %arrayidx4013, align 4
  %2207 = load i32, i32* %r3970, align 4
  %idxprom4014 = sext i32 %2207 to i64
  %arrayidx4015 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4014
  %2208 = load i32, i32* %arrayidx4015, align 4
  %idxprom4016 = sext i32 %2208 to i64
  %2209 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24017 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2209, i32 0, i32 4
  %arrayidx4018 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24017, i32 0, i64 %idxprom4016
  store i32 0, i32* %arrayidx4018, align 4
  %2210 = load i32, i32* %r3970, align 4
  %idxprom4019 = sext i32 %2210 to i64
  %arrayidx4020 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4019
  %2211 = load i32, i32* %arrayidx4020, align 4
  %2212 = load i32, i32* %target.addr, align 4
  %cmp4021 = icmp eq i32 %2211, %2212
  br i1 %cmp4021, label %land.lhs.true.4023, label %if.end.4030

land.lhs.true.4023:                               ; preds = %if.end.3992
  %2213 = load i32, i32* %distance, align 4
  %add4024 = add nsw i32 %2213, 1500
  %2214 = load i32, i32* %cutoff_distance, align 4
  %cmp4025 = icmp slt i32 %add4024, %2214
  br i1 %cmp4025, label %if.then.4027, label %if.end.4030

if.then.4027:                                     ; preds = %land.lhs.true.4023
  %2215 = load i32, i32* %distance, align 4
  %add4028 = add nsw i32 %2215, 1500
  %sub4029 = sub nsw i32 %add4028, 1
  store i32 %sub4029, i32* %cutoff_distance, align 4
  br label %if.end.4030

if.end.4030:                                      ; preds = %if.then.4027, %land.lhs.true.4023, %if.end.3992
  br label %for.inc.4031

for.inc.4031:                                     ; preds = %if.end.4030
  %2216 = load i32, i32* %r3970, align 4
  %inc4032 = add nsw i32 %2216, 1
  store i32 %inc4032, i32* %r3970, align 4
  br label %for.cond.3973

for.end.4033:                                     ; preds = %for.cond.3973
  br label %if.end.4034

if.end.4034:                                      ; preds = %for.end.4033, %if.end.3951
  br label %if.end.4035

if.end.4035:                                      ; preds = %if.end.4034, %do.body.3926
  br label %do.end.4036

do.end.4036:                                      ; preds = %if.end.4035
  br label %if.end.4037

if.end.4037:                                      ; preds = %do.end.4036, %land.lhs.true.3918, %land.lhs.true.3914, %land.lhs.true.3908, %land.lhs.true.3902, %if.end.3896
  %2217 = load i32, i32* %bpos, align 4
  %idxprom4038 = sext i32 %2217 to i64
  %arrayidx4039 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4038
  %2218 = load i8, i8* %arrayidx4039, align 1
  %conv4040 = zext i8 %2218 to i32
  %cmp4041 = icmp eq i32 %conv4040, 0
  br i1 %cmp4041, label %land.lhs.true.4043, label %if.end.4178

land.lhs.true.4043:                               ; preds = %if.end.4037
  %2219 = load i32, i32* %gpos, align 4
  %idxprom4044 = sext i32 %2219 to i64
  %arrayidx4045 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4044
  %2220 = load i8, i8* %arrayidx4045, align 1
  %conv4046 = zext i8 %2220 to i32
  %cmp4047 = icmp eq i32 %conv4046, 0
  br i1 %cmp4047, label %land.lhs.true.4049, label %if.end.4178

land.lhs.true.4049:                               ; preds = %land.lhs.true.4043
  %2221 = load i32, i32* %apos, align 4
  %idxprom4050 = sext i32 %2221 to i64
  %arrayidx4051 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4050
  %2222 = load i8, i8* %arrayidx4051, align 1
  %conv4052 = zext i8 %2222 to i32
  %2223 = load i32, i32* %other, align 4
  %cmp4053 = icmp eq i32 %conv4052, %2223
  br i1 %cmp4053, label %land.lhs.true.4055, label %if.end.4178

land.lhs.true.4055:                               ; preds = %land.lhs.true.4049
  %2224 = load i32, i32* %apos, align 4
  %call4056 = call i32 @countlib(i32 %2224)
  %cmp4057 = icmp sle i32 %call4056, 3
  br i1 %cmp4057, label %land.lhs.true.4059, label %if.end.4178

land.lhs.true.4059:                               ; preds = %land.lhs.true.4055
  %2225 = load i32, i32* %bpos, align 4
  %idxprom4060 = sext i32 %2225 to i64
  %2226 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4061 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2226, i32 0, i32 0
  %arrayidx4062 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4061, i32 0, i64 %idxprom4060
  %2227 = load i32, i32* %arrayidx4062, align 4
  %2228 = load i32, i32* %distance, align 4
  %add4063 = add nsw i32 %2228, 1500
  %cmp4064 = icmp sgt i32 %2227, %add4063
  br i1 %cmp4064, label %if.then.4066, label %if.end.4178

if.then.4066:                                     ; preds = %land.lhs.true.4059
  br label %do.body.4067

do.body.4067:                                     ; preds = %if.then.4066
  %2229 = load i32, i32* %distance, align 4
  %add4068 = add nsw i32 %2229, 1500
  %2230 = load i32, i32* %bpos, align 4
  %idxprom4069 = sext i32 %2230 to i64
  %2231 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4070 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2231, i32 0, i32 0
  %arrayidx4071 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4070, i32 0, i64 %idxprom4069
  %2232 = load i32, i32* %arrayidx4071, align 4
  %cmp4072 = icmp slt i32 %add4068, %2232
  br i1 %cmp4072, label %if.then.4074, label %if.end.4176

if.then.4074:                                     ; preds = %do.body.4067
  %2233 = load i32, i32* %bpos, align 4
  %idxprom4075 = sext i32 %2233 to i64
  %arrayidx4076 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4075
  %2234 = load i8, i8* %arrayidx4076, align 1
  %conv4077 = zext i8 %2234 to i32
  %cmp4078 = icmp eq i32 %conv4077, 0
  br i1 %cmp4078, label %if.then.4080, label %if.else.4109

if.then.4080:                                     ; preds = %if.then.4074
  %2235 = load i32, i32* %bpos, align 4
  %idxprom4081 = sext i32 %2235 to i64
  %2236 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4082 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2236, i32 0, i32 0
  %arrayidx4083 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4082, i32 0, i64 %idxprom4081
  %2237 = load i32, i32* %arrayidx4083, align 4
  %cmp4084 = icmp eq i32 %2237, 100000
  br i1 %cmp4084, label %if.then.4086, label %if.end.4092

if.then.4086:                                     ; preds = %if.then.4080
  %2238 = load i32, i32* %bpos, align 4
  %2239 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4087 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2239, i32 0, i32 7
  %2240 = load i32, i32* %queue_end4087, align 4
  %inc4088 = add nsw i32 %2240, 1
  store i32 %inc4088, i32* %queue_end4087, align 4
  %idxprom4089 = sext i32 %2240 to i64
  %2241 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4090 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2241, i32 0, i32 5
  %arrayidx4091 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4090, i32 0, i64 %idxprom4089
  store i32 %2238, i32* %arrayidx4091, align 4
  br label %if.end.4092

if.end.4092:                                      ; preds = %if.then.4086, %if.then.4080
  %2242 = load i32, i32* %distance, align 4
  %add4093 = add nsw i32 %2242, 1500
  %2243 = load i32, i32* %bpos, align 4
  %idxprom4094 = sext i32 %2243 to i64
  %2244 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4095 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2244, i32 0, i32 0
  %arrayidx4096 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4095, i32 0, i64 %idxprom4094
  store i32 %add4093, i32* %arrayidx4096, align 4
  %2245 = load i32, i32* %bpos, align 4
  %idxprom4097 = sext i32 %2245 to i64
  %2246 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4098 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2246, i32 0, i32 1
  %arrayidx4099 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4098, i32 0, i64 %idxprom4097
  store i32 1000, i32* %arrayidx4099, align 4
  %2247 = load i32, i32* %pos, align 4
  %2248 = load i32, i32* %bpos, align 4
  %idxprom4100 = sext i32 %2248 to i64
  %2249 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4101 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2249, i32 0, i32 2
  %arrayidx4102 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4101, i32 0, i64 %idxprom4100
  store i32 %2247, i32* %arrayidx4102, align 4
  %2250 = load i32, i32* %gpos, align 4
  %2251 = load i32, i32* %bpos, align 4
  %idxprom4103 = sext i32 %2251 to i64
  %2252 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14104 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2252, i32 0, i32 3
  %arrayidx4105 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14104, i32 0, i64 %idxprom4103
  store i32 %2250, i32* %arrayidx4105, align 4
  %2253 = load i32, i32* %bpos, align 4
  %idxprom4106 = sext i32 %2253 to i64
  %2254 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24107 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2254, i32 0, i32 4
  %arrayidx4108 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24107, i32 0, i64 %idxprom4106
  store i32 0, i32* %arrayidx4108, align 4
  br label %if.end.4175

if.else.4109:                                     ; preds = %if.then.4074
  %2255 = load i32, i32* %bpos, align 4
  %arraydecay4112 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4113 = call i32 @findstones(i32 %2255, i32 361, i32* %arraydecay4112)
  store i32 %call4113, i32* %num_stones, align 4
  store i32 0, i32* %r4111, align 4
  br label %for.cond.4114

for.cond.4114:                                    ; preds = %for.inc.4172, %if.else.4109
  %2256 = load i32, i32* %r4111, align 4
  %2257 = load i32, i32* %num_stones, align 4
  %cmp4115 = icmp slt i32 %2256, %2257
  br i1 %cmp4115, label %for.body.4117, label %for.end.4174

for.body.4117:                                    ; preds = %for.cond.4114
  %2258 = load i32, i32* %r4111, align 4
  %idxprom4118 = sext i32 %2258 to i64
  %arrayidx4119 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4118
  %2259 = load i32, i32* %arrayidx4119, align 4
  %idxprom4120 = sext i32 %2259 to i64
  %2260 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4121 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2260, i32 0, i32 0
  %arrayidx4122 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4121, i32 0, i64 %idxprom4120
  %2261 = load i32, i32* %arrayidx4122, align 4
  %cmp4123 = icmp eq i32 %2261, 100000
  br i1 %cmp4123, label %if.then.4125, label %if.end.4133

if.then.4125:                                     ; preds = %for.body.4117
  %2262 = load i32, i32* %r4111, align 4
  %idxprom4126 = sext i32 %2262 to i64
  %arrayidx4127 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4126
  %2263 = load i32, i32* %arrayidx4127, align 4
  %2264 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4128 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2264, i32 0, i32 7
  %2265 = load i32, i32* %queue_end4128, align 4
  %inc4129 = add nsw i32 %2265, 1
  store i32 %inc4129, i32* %queue_end4128, align 4
  %idxprom4130 = sext i32 %2265 to i64
  %2266 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4131 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2266, i32 0, i32 5
  %arrayidx4132 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4131, i32 0, i64 %idxprom4130
  store i32 %2263, i32* %arrayidx4132, align 4
  br label %if.end.4133

if.end.4133:                                      ; preds = %if.then.4125, %for.body.4117
  %2267 = load i32, i32* %distance, align 4
  %add4134 = add nsw i32 %2267, 1500
  %2268 = load i32, i32* %r4111, align 4
  %idxprom4135 = sext i32 %2268 to i64
  %arrayidx4136 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4135
  %2269 = load i32, i32* %arrayidx4136, align 4
  %idxprom4137 = sext i32 %2269 to i64
  %2270 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4138 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2270, i32 0, i32 0
  %arrayidx4139 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4138, i32 0, i64 %idxprom4137
  store i32 %add4134, i32* %arrayidx4139, align 4
  %2271 = load i32, i32* %r4111, align 4
  %idxprom4140 = sext i32 %2271 to i64
  %arrayidx4141 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4140
  %2272 = load i32, i32* %arrayidx4141, align 4
  %idxprom4142 = sext i32 %2272 to i64
  %2273 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4143 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2273, i32 0, i32 1
  %arrayidx4144 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4143, i32 0, i64 %idxprom4142
  store i32 1000, i32* %arrayidx4144, align 4
  %2274 = load i32, i32* %pos, align 4
  %2275 = load i32, i32* %r4111, align 4
  %idxprom4145 = sext i32 %2275 to i64
  %arrayidx4146 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4145
  %2276 = load i32, i32* %arrayidx4146, align 4
  %idxprom4147 = sext i32 %2276 to i64
  %2277 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4148 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2277, i32 0, i32 2
  %arrayidx4149 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4148, i32 0, i64 %idxprom4147
  store i32 %2274, i32* %arrayidx4149, align 4
  %2278 = load i32, i32* %gpos, align 4
  %2279 = load i32, i32* %r4111, align 4
  %idxprom4150 = sext i32 %2279 to i64
  %arrayidx4151 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4150
  %2280 = load i32, i32* %arrayidx4151, align 4
  %idxprom4152 = sext i32 %2280 to i64
  %2281 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14153 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2281, i32 0, i32 3
  %arrayidx4154 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14153, i32 0, i64 %idxprom4152
  store i32 %2278, i32* %arrayidx4154, align 4
  %2282 = load i32, i32* %r4111, align 4
  %idxprom4155 = sext i32 %2282 to i64
  %arrayidx4156 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4155
  %2283 = load i32, i32* %arrayidx4156, align 4
  %idxprom4157 = sext i32 %2283 to i64
  %2284 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24158 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2284, i32 0, i32 4
  %arrayidx4159 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24158, i32 0, i64 %idxprom4157
  store i32 0, i32* %arrayidx4159, align 4
  %2285 = load i32, i32* %r4111, align 4
  %idxprom4160 = sext i32 %2285 to i64
  %arrayidx4161 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4160
  %2286 = load i32, i32* %arrayidx4161, align 4
  %2287 = load i32, i32* %target.addr, align 4
  %cmp4162 = icmp eq i32 %2286, %2287
  br i1 %cmp4162, label %land.lhs.true.4164, label %if.end.4171

land.lhs.true.4164:                               ; preds = %if.end.4133
  %2288 = load i32, i32* %distance, align 4
  %add4165 = add nsw i32 %2288, 1500
  %2289 = load i32, i32* %cutoff_distance, align 4
  %cmp4166 = icmp slt i32 %add4165, %2289
  br i1 %cmp4166, label %if.then.4168, label %if.end.4171

if.then.4168:                                     ; preds = %land.lhs.true.4164
  %2290 = load i32, i32* %distance, align 4
  %add4169 = add nsw i32 %2290, 1500
  %sub4170 = sub nsw i32 %add4169, 1
  store i32 %sub4170, i32* %cutoff_distance, align 4
  br label %if.end.4171

if.end.4171:                                      ; preds = %if.then.4168, %land.lhs.true.4164, %if.end.4133
  br label %for.inc.4172

for.inc.4172:                                     ; preds = %if.end.4171
  %2291 = load i32, i32* %r4111, align 4
  %inc4173 = add nsw i32 %2291, 1
  store i32 %inc4173, i32* %r4111, align 4
  br label %for.cond.4114

for.end.4174:                                     ; preds = %for.cond.4114
  br label %if.end.4175

if.end.4175:                                      ; preds = %for.end.4174, %if.end.4092
  br label %if.end.4176

if.end.4176:                                      ; preds = %if.end.4175, %do.body.4067
  br label %do.end.4177

do.end.4177:                                      ; preds = %if.end.4176
  br label %if.end.4178

if.end.4178:                                      ; preds = %do.end.4177, %land.lhs.true.4059, %land.lhs.true.4055, %land.lhs.true.4049, %land.lhs.true.4043, %if.end.4037
  %2292 = load i32, i32* %bpos, align 4
  %idxprom4179 = sext i32 %2292 to i64
  %arrayidx4180 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4179
  %2293 = load i8, i8* %arrayidx4180, align 1
  %conv4181 = zext i8 %2293 to i32
  %cmp4182 = icmp eq i32 %conv4181, 0
  br i1 %cmp4182, label %land.lhs.true.4184, label %if.end.4309

land.lhs.true.4184:                               ; preds = %if.end.4178
  %2294 = load i32, i32* %apos, align 4
  %idxprom4185 = sext i32 %2294 to i64
  %arrayidx4186 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4185
  %2295 = load i8, i8* %arrayidx4186, align 1
  %conv4187 = zext i8 %2295 to i32
  %cmp4188 = icmp eq i32 %conv4187, 0
  br i1 %cmp4188, label %land.lhs.true.4190, label %if.end.4309

land.lhs.true.4190:                               ; preds = %land.lhs.true.4184
  %2296 = load i32, i32* %bpos, align 4
  %idxprom4191 = sext i32 %2296 to i64
  %2297 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4192 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2297, i32 0, i32 0
  %arrayidx4193 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4192, i32 0, i64 %idxprom4191
  %2298 = load i32, i32* %arrayidx4193, align 4
  %2299 = load i32, i32* %distance, align 4
  %add4194 = add nsw i32 %2299, 1800
  %cmp4195 = icmp sgt i32 %2298, %add4194
  br i1 %cmp4195, label %if.then.4197, label %if.end.4309

if.then.4197:                                     ; preds = %land.lhs.true.4190
  br label %do.body.4198

do.body.4198:                                     ; preds = %if.then.4197
  %2300 = load i32, i32* %distance, align 4
  %add4199 = add nsw i32 %2300, 1800
  %2301 = load i32, i32* %bpos, align 4
  %idxprom4200 = sext i32 %2301 to i64
  %2302 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4201 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2302, i32 0, i32 0
  %arrayidx4202 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4201, i32 0, i64 %idxprom4200
  %2303 = load i32, i32* %arrayidx4202, align 4
  %cmp4203 = icmp slt i32 %add4199, %2303
  br i1 %cmp4203, label %if.then.4205, label %if.end.4307

if.then.4205:                                     ; preds = %do.body.4198
  %2304 = load i32, i32* %bpos, align 4
  %idxprom4206 = sext i32 %2304 to i64
  %arrayidx4207 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4206
  %2305 = load i8, i8* %arrayidx4207, align 1
  %conv4208 = zext i8 %2305 to i32
  %cmp4209 = icmp eq i32 %conv4208, 0
  br i1 %cmp4209, label %if.then.4211, label %if.else.4240

if.then.4211:                                     ; preds = %if.then.4205
  %2306 = load i32, i32* %bpos, align 4
  %idxprom4212 = sext i32 %2306 to i64
  %2307 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4213 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2307, i32 0, i32 0
  %arrayidx4214 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4213, i32 0, i64 %idxprom4212
  %2308 = load i32, i32* %arrayidx4214, align 4
  %cmp4215 = icmp eq i32 %2308, 100000
  br i1 %cmp4215, label %if.then.4217, label %if.end.4223

if.then.4217:                                     ; preds = %if.then.4211
  %2309 = load i32, i32* %bpos, align 4
  %2310 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4218 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2310, i32 0, i32 7
  %2311 = load i32, i32* %queue_end4218, align 4
  %inc4219 = add nsw i32 %2311, 1
  store i32 %inc4219, i32* %queue_end4218, align 4
  %idxprom4220 = sext i32 %2311 to i64
  %2312 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4221 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2312, i32 0, i32 5
  %arrayidx4222 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4221, i32 0, i64 %idxprom4220
  store i32 %2309, i32* %arrayidx4222, align 4
  br label %if.end.4223

if.end.4223:                                      ; preds = %if.then.4217, %if.then.4211
  %2313 = load i32, i32* %distance, align 4
  %add4224 = add nsw i32 %2313, 1800
  %2314 = load i32, i32* %bpos, align 4
  %idxprom4225 = sext i32 %2314 to i64
  %2315 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4226 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2315, i32 0, i32 0
  %arrayidx4227 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4226, i32 0, i64 %idxprom4225
  store i32 %add4224, i32* %arrayidx4227, align 4
  %2316 = load i32, i32* %bpos, align 4
  %idxprom4228 = sext i32 %2316 to i64
  %2317 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4229 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2317, i32 0, i32 1
  %arrayidx4230 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4229, i32 0, i64 %idxprom4228
  store i32 900, i32* %arrayidx4230, align 4
  %2318 = load i32, i32* %pos, align 4
  %2319 = load i32, i32* %bpos, align 4
  %idxprom4231 = sext i32 %2319 to i64
  %2320 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4232 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2320, i32 0, i32 2
  %arrayidx4233 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4232, i32 0, i64 %idxprom4231
  store i32 %2318, i32* %arrayidx4233, align 4
  %2321 = load i32, i32* %bpos, align 4
  %idxprom4234 = sext i32 %2321 to i64
  %2322 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14235 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2322, i32 0, i32 3
  %arrayidx4236 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14235, i32 0, i64 %idxprom4234
  store i32 0, i32* %arrayidx4236, align 4
  %2323 = load i32, i32* %bpos, align 4
  %idxprom4237 = sext i32 %2323 to i64
  %2324 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24238 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2324, i32 0, i32 4
  %arrayidx4239 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24238, i32 0, i64 %idxprom4237
  store i32 0, i32* %arrayidx4239, align 4
  br label %if.end.4306

if.else.4240:                                     ; preds = %if.then.4205
  %2325 = load i32, i32* %bpos, align 4
  %arraydecay4243 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4244 = call i32 @findstones(i32 %2325, i32 361, i32* %arraydecay4243)
  store i32 %call4244, i32* %num_stones, align 4
  store i32 0, i32* %r4242, align 4
  br label %for.cond.4245

for.cond.4245:                                    ; preds = %for.inc.4303, %if.else.4240
  %2326 = load i32, i32* %r4242, align 4
  %2327 = load i32, i32* %num_stones, align 4
  %cmp4246 = icmp slt i32 %2326, %2327
  br i1 %cmp4246, label %for.body.4248, label %for.end.4305

for.body.4248:                                    ; preds = %for.cond.4245
  %2328 = load i32, i32* %r4242, align 4
  %idxprom4249 = sext i32 %2328 to i64
  %arrayidx4250 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4249
  %2329 = load i32, i32* %arrayidx4250, align 4
  %idxprom4251 = sext i32 %2329 to i64
  %2330 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4252 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2330, i32 0, i32 0
  %arrayidx4253 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4252, i32 0, i64 %idxprom4251
  %2331 = load i32, i32* %arrayidx4253, align 4
  %cmp4254 = icmp eq i32 %2331, 100000
  br i1 %cmp4254, label %if.then.4256, label %if.end.4264

if.then.4256:                                     ; preds = %for.body.4248
  %2332 = load i32, i32* %r4242, align 4
  %idxprom4257 = sext i32 %2332 to i64
  %arrayidx4258 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4257
  %2333 = load i32, i32* %arrayidx4258, align 4
  %2334 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4259 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2334, i32 0, i32 7
  %2335 = load i32, i32* %queue_end4259, align 4
  %inc4260 = add nsw i32 %2335, 1
  store i32 %inc4260, i32* %queue_end4259, align 4
  %idxprom4261 = sext i32 %2335 to i64
  %2336 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4262 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2336, i32 0, i32 5
  %arrayidx4263 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4262, i32 0, i64 %idxprom4261
  store i32 %2333, i32* %arrayidx4263, align 4
  br label %if.end.4264

if.end.4264:                                      ; preds = %if.then.4256, %for.body.4248
  %2337 = load i32, i32* %distance, align 4
  %add4265 = add nsw i32 %2337, 1800
  %2338 = load i32, i32* %r4242, align 4
  %idxprom4266 = sext i32 %2338 to i64
  %arrayidx4267 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4266
  %2339 = load i32, i32* %arrayidx4267, align 4
  %idxprom4268 = sext i32 %2339 to i64
  %2340 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4269 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2340, i32 0, i32 0
  %arrayidx4270 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4269, i32 0, i64 %idxprom4268
  store i32 %add4265, i32* %arrayidx4270, align 4
  %2341 = load i32, i32* %r4242, align 4
  %idxprom4271 = sext i32 %2341 to i64
  %arrayidx4272 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4271
  %2342 = load i32, i32* %arrayidx4272, align 4
  %idxprom4273 = sext i32 %2342 to i64
  %2343 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4274 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2343, i32 0, i32 1
  %arrayidx4275 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4274, i32 0, i64 %idxprom4273
  store i32 900, i32* %arrayidx4275, align 4
  %2344 = load i32, i32* %pos, align 4
  %2345 = load i32, i32* %r4242, align 4
  %idxprom4276 = sext i32 %2345 to i64
  %arrayidx4277 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4276
  %2346 = load i32, i32* %arrayidx4277, align 4
  %idxprom4278 = sext i32 %2346 to i64
  %2347 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4279 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2347, i32 0, i32 2
  %arrayidx4280 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4279, i32 0, i64 %idxprom4278
  store i32 %2344, i32* %arrayidx4280, align 4
  %2348 = load i32, i32* %r4242, align 4
  %idxprom4281 = sext i32 %2348 to i64
  %arrayidx4282 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4281
  %2349 = load i32, i32* %arrayidx4282, align 4
  %idxprom4283 = sext i32 %2349 to i64
  %2350 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14284 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2350, i32 0, i32 3
  %arrayidx4285 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14284, i32 0, i64 %idxprom4283
  store i32 0, i32* %arrayidx4285, align 4
  %2351 = load i32, i32* %r4242, align 4
  %idxprom4286 = sext i32 %2351 to i64
  %arrayidx4287 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4286
  %2352 = load i32, i32* %arrayidx4287, align 4
  %idxprom4288 = sext i32 %2352 to i64
  %2353 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24289 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2353, i32 0, i32 4
  %arrayidx4290 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24289, i32 0, i64 %idxprom4288
  store i32 0, i32* %arrayidx4290, align 4
  %2354 = load i32, i32* %r4242, align 4
  %idxprom4291 = sext i32 %2354 to i64
  %arrayidx4292 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4291
  %2355 = load i32, i32* %arrayidx4292, align 4
  %2356 = load i32, i32* %target.addr, align 4
  %cmp4293 = icmp eq i32 %2355, %2356
  br i1 %cmp4293, label %land.lhs.true.4295, label %if.end.4302

land.lhs.true.4295:                               ; preds = %if.end.4264
  %2357 = load i32, i32* %distance, align 4
  %add4296 = add nsw i32 %2357, 1800
  %2358 = load i32, i32* %cutoff_distance, align 4
  %cmp4297 = icmp slt i32 %add4296, %2358
  br i1 %cmp4297, label %if.then.4299, label %if.end.4302

if.then.4299:                                     ; preds = %land.lhs.true.4295
  %2359 = load i32, i32* %distance, align 4
  %add4300 = add nsw i32 %2359, 1800
  %sub4301 = sub nsw i32 %add4300, 1
  store i32 %sub4301, i32* %cutoff_distance, align 4
  br label %if.end.4302

if.end.4302:                                      ; preds = %if.then.4299, %land.lhs.true.4295, %if.end.4264
  br label %for.inc.4303

for.inc.4303:                                     ; preds = %if.end.4302
  %2360 = load i32, i32* %r4242, align 4
  %inc4304 = add nsw i32 %2360, 1
  store i32 %inc4304, i32* %r4242, align 4
  br label %for.cond.4245

for.end.4305:                                     ; preds = %for.cond.4245
  br label %if.end.4306

if.end.4306:                                      ; preds = %for.end.4305, %if.end.4223
  br label %if.end.4307

if.end.4307:                                      ; preds = %if.end.4306, %do.body.4198
  br label %do.end.4308

do.end.4308:                                      ; preds = %if.end.4307
  br label %if.end.4309

if.end.4309:                                      ; preds = %do.end.4308, %land.lhs.true.4190, %land.lhs.true.4184, %if.end.4178
  %2361 = load i32, i32* %bpos, align 4
  %idxprom4310 = sext i32 %2361 to i64
  %arrayidx4311 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4310
  %2362 = load i8, i8* %arrayidx4311, align 1
  %conv4312 = zext i8 %2362 to i32
  %cmp4313 = icmp eq i32 %conv4312, 0
  br i1 %cmp4313, label %land.lhs.true.4315, label %if.end.4440

land.lhs.true.4315:                               ; preds = %if.end.4309
  %2363 = load i32, i32* %gpos, align 4
  %idxprom4316 = sext i32 %2363 to i64
  %arrayidx4317 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4316
  %2364 = load i8, i8* %arrayidx4317, align 1
  %conv4318 = zext i8 %2364 to i32
  %cmp4319 = icmp eq i32 %conv4318, 0
  br i1 %cmp4319, label %land.lhs.true.4321, label %if.end.4440

land.lhs.true.4321:                               ; preds = %land.lhs.true.4315
  %2365 = load i32, i32* %bpos, align 4
  %idxprom4322 = sext i32 %2365 to i64
  %2366 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4323 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2366, i32 0, i32 0
  %arrayidx4324 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4323, i32 0, i64 %idxprom4322
  %2367 = load i32, i32* %arrayidx4324, align 4
  %2368 = load i32, i32* %distance, align 4
  %add4325 = add nsw i32 %2368, 1800
  %cmp4326 = icmp sgt i32 %2367, %add4325
  br i1 %cmp4326, label %if.then.4328, label %if.end.4440

if.then.4328:                                     ; preds = %land.lhs.true.4321
  br label %do.body.4329

do.body.4329:                                     ; preds = %if.then.4328
  %2369 = load i32, i32* %distance, align 4
  %add4330 = add nsw i32 %2369, 1800
  %2370 = load i32, i32* %bpos, align 4
  %idxprom4331 = sext i32 %2370 to i64
  %2371 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4332 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2371, i32 0, i32 0
  %arrayidx4333 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4332, i32 0, i64 %idxprom4331
  %2372 = load i32, i32* %arrayidx4333, align 4
  %cmp4334 = icmp slt i32 %add4330, %2372
  br i1 %cmp4334, label %if.then.4336, label %if.end.4438

if.then.4336:                                     ; preds = %do.body.4329
  %2373 = load i32, i32* %bpos, align 4
  %idxprom4337 = sext i32 %2373 to i64
  %arrayidx4338 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4337
  %2374 = load i8, i8* %arrayidx4338, align 1
  %conv4339 = zext i8 %2374 to i32
  %cmp4340 = icmp eq i32 %conv4339, 0
  br i1 %cmp4340, label %if.then.4342, label %if.else.4371

if.then.4342:                                     ; preds = %if.then.4336
  %2375 = load i32, i32* %bpos, align 4
  %idxprom4343 = sext i32 %2375 to i64
  %2376 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4344 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2376, i32 0, i32 0
  %arrayidx4345 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4344, i32 0, i64 %idxprom4343
  %2377 = load i32, i32* %arrayidx4345, align 4
  %cmp4346 = icmp eq i32 %2377, 100000
  br i1 %cmp4346, label %if.then.4348, label %if.end.4354

if.then.4348:                                     ; preds = %if.then.4342
  %2378 = load i32, i32* %bpos, align 4
  %2379 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4349 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2379, i32 0, i32 7
  %2380 = load i32, i32* %queue_end4349, align 4
  %inc4350 = add nsw i32 %2380, 1
  store i32 %inc4350, i32* %queue_end4349, align 4
  %idxprom4351 = sext i32 %2380 to i64
  %2381 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4352 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2381, i32 0, i32 5
  %arrayidx4353 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4352, i32 0, i64 %idxprom4351
  store i32 %2378, i32* %arrayidx4353, align 4
  br label %if.end.4354

if.end.4354:                                      ; preds = %if.then.4348, %if.then.4342
  %2382 = load i32, i32* %distance, align 4
  %add4355 = add nsw i32 %2382, 1800
  %2383 = load i32, i32* %bpos, align 4
  %idxprom4356 = sext i32 %2383 to i64
  %2384 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4357 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2384, i32 0, i32 0
  %arrayidx4358 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4357, i32 0, i64 %idxprom4356
  store i32 %add4355, i32* %arrayidx4358, align 4
  %2385 = load i32, i32* %bpos, align 4
  %idxprom4359 = sext i32 %2385 to i64
  %2386 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4360 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2386, i32 0, i32 1
  %arrayidx4361 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4360, i32 0, i64 %idxprom4359
  store i32 900, i32* %arrayidx4361, align 4
  %2387 = load i32, i32* %pos, align 4
  %2388 = load i32, i32* %bpos, align 4
  %idxprom4362 = sext i32 %2388 to i64
  %2389 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4363 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2389, i32 0, i32 2
  %arrayidx4364 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4363, i32 0, i64 %idxprom4362
  store i32 %2387, i32* %arrayidx4364, align 4
  %2390 = load i32, i32* %bpos, align 4
  %idxprom4365 = sext i32 %2390 to i64
  %2391 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14366 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2391, i32 0, i32 3
  %arrayidx4367 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14366, i32 0, i64 %idxprom4365
  store i32 0, i32* %arrayidx4367, align 4
  %2392 = load i32, i32* %bpos, align 4
  %idxprom4368 = sext i32 %2392 to i64
  %2393 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24369 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2393, i32 0, i32 4
  %arrayidx4370 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24369, i32 0, i64 %idxprom4368
  store i32 0, i32* %arrayidx4370, align 4
  br label %if.end.4437

if.else.4371:                                     ; preds = %if.then.4336
  %2394 = load i32, i32* %bpos, align 4
  %arraydecay4374 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4375 = call i32 @findstones(i32 %2394, i32 361, i32* %arraydecay4374)
  store i32 %call4375, i32* %num_stones, align 4
  store i32 0, i32* %r4373, align 4
  br label %for.cond.4376

for.cond.4376:                                    ; preds = %for.inc.4434, %if.else.4371
  %2395 = load i32, i32* %r4373, align 4
  %2396 = load i32, i32* %num_stones, align 4
  %cmp4377 = icmp slt i32 %2395, %2396
  br i1 %cmp4377, label %for.body.4379, label %for.end.4436

for.body.4379:                                    ; preds = %for.cond.4376
  %2397 = load i32, i32* %r4373, align 4
  %idxprom4380 = sext i32 %2397 to i64
  %arrayidx4381 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4380
  %2398 = load i32, i32* %arrayidx4381, align 4
  %idxprom4382 = sext i32 %2398 to i64
  %2399 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4383 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2399, i32 0, i32 0
  %arrayidx4384 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4383, i32 0, i64 %idxprom4382
  %2400 = load i32, i32* %arrayidx4384, align 4
  %cmp4385 = icmp eq i32 %2400, 100000
  br i1 %cmp4385, label %if.then.4387, label %if.end.4395

if.then.4387:                                     ; preds = %for.body.4379
  %2401 = load i32, i32* %r4373, align 4
  %idxprom4388 = sext i32 %2401 to i64
  %arrayidx4389 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4388
  %2402 = load i32, i32* %arrayidx4389, align 4
  %2403 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4390 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2403, i32 0, i32 7
  %2404 = load i32, i32* %queue_end4390, align 4
  %inc4391 = add nsw i32 %2404, 1
  store i32 %inc4391, i32* %queue_end4390, align 4
  %idxprom4392 = sext i32 %2404 to i64
  %2405 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4393 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2405, i32 0, i32 5
  %arrayidx4394 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4393, i32 0, i64 %idxprom4392
  store i32 %2402, i32* %arrayidx4394, align 4
  br label %if.end.4395

if.end.4395:                                      ; preds = %if.then.4387, %for.body.4379
  %2406 = load i32, i32* %distance, align 4
  %add4396 = add nsw i32 %2406, 1800
  %2407 = load i32, i32* %r4373, align 4
  %idxprom4397 = sext i32 %2407 to i64
  %arrayidx4398 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4397
  %2408 = load i32, i32* %arrayidx4398, align 4
  %idxprom4399 = sext i32 %2408 to i64
  %2409 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4400 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2409, i32 0, i32 0
  %arrayidx4401 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4400, i32 0, i64 %idxprom4399
  store i32 %add4396, i32* %arrayidx4401, align 4
  %2410 = load i32, i32* %r4373, align 4
  %idxprom4402 = sext i32 %2410 to i64
  %arrayidx4403 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4402
  %2411 = load i32, i32* %arrayidx4403, align 4
  %idxprom4404 = sext i32 %2411 to i64
  %2412 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4405 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2412, i32 0, i32 1
  %arrayidx4406 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4405, i32 0, i64 %idxprom4404
  store i32 900, i32* %arrayidx4406, align 4
  %2413 = load i32, i32* %pos, align 4
  %2414 = load i32, i32* %r4373, align 4
  %idxprom4407 = sext i32 %2414 to i64
  %arrayidx4408 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4407
  %2415 = load i32, i32* %arrayidx4408, align 4
  %idxprom4409 = sext i32 %2415 to i64
  %2416 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4410 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2416, i32 0, i32 2
  %arrayidx4411 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4410, i32 0, i64 %idxprom4409
  store i32 %2413, i32* %arrayidx4411, align 4
  %2417 = load i32, i32* %r4373, align 4
  %idxprom4412 = sext i32 %2417 to i64
  %arrayidx4413 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4412
  %2418 = load i32, i32* %arrayidx4413, align 4
  %idxprom4414 = sext i32 %2418 to i64
  %2419 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14415 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2419, i32 0, i32 3
  %arrayidx4416 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14415, i32 0, i64 %idxprom4414
  store i32 0, i32* %arrayidx4416, align 4
  %2420 = load i32, i32* %r4373, align 4
  %idxprom4417 = sext i32 %2420 to i64
  %arrayidx4418 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4417
  %2421 = load i32, i32* %arrayidx4418, align 4
  %idxprom4419 = sext i32 %2421 to i64
  %2422 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24420 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2422, i32 0, i32 4
  %arrayidx4421 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24420, i32 0, i64 %idxprom4419
  store i32 0, i32* %arrayidx4421, align 4
  %2423 = load i32, i32* %r4373, align 4
  %idxprom4422 = sext i32 %2423 to i64
  %arrayidx4423 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4422
  %2424 = load i32, i32* %arrayidx4423, align 4
  %2425 = load i32, i32* %target.addr, align 4
  %cmp4424 = icmp eq i32 %2424, %2425
  br i1 %cmp4424, label %land.lhs.true.4426, label %if.end.4433

land.lhs.true.4426:                               ; preds = %if.end.4395
  %2426 = load i32, i32* %distance, align 4
  %add4427 = add nsw i32 %2426, 1800
  %2427 = load i32, i32* %cutoff_distance, align 4
  %cmp4428 = icmp slt i32 %add4427, %2427
  br i1 %cmp4428, label %if.then.4430, label %if.end.4433

if.then.4430:                                     ; preds = %land.lhs.true.4426
  %2428 = load i32, i32* %distance, align 4
  %add4431 = add nsw i32 %2428, 1800
  %sub4432 = sub nsw i32 %add4431, 1
  store i32 %sub4432, i32* %cutoff_distance, align 4
  br label %if.end.4433

if.end.4433:                                      ; preds = %if.then.4430, %land.lhs.true.4426, %if.end.4395
  br label %for.inc.4434

for.inc.4434:                                     ; preds = %if.end.4433
  %2429 = load i32, i32* %r4373, align 4
  %inc4435 = add nsw i32 %2429, 1
  store i32 %inc4435, i32* %r4373, align 4
  br label %for.cond.4376

for.end.4436:                                     ; preds = %for.cond.4376
  br label %if.end.4437

if.end.4437:                                      ; preds = %for.end.4436, %if.end.4354
  br label %if.end.4438

if.end.4438:                                      ; preds = %if.end.4437, %do.body.4329
  br label %do.end.4439

do.end.4439:                                      ; preds = %if.end.4438
  br label %if.end.4440

if.end.4440:                                      ; preds = %do.end.4439, %land.lhs.true.4321, %land.lhs.true.4315, %if.end.4309
  %2430 = load i32, i32* %gpos, align 4
  %idxprom4441 = sext i32 %2430 to i64
  %arrayidx4442 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4441
  %2431 = load i8, i8* %arrayidx4442, align 1
  %conv4443 = zext i8 %2431 to i32
  %2432 = load i32, i32* %other, align 4
  %cmp4444 = icmp eq i32 %conv4443, %2432
  br i1 %cmp4444, label %land.lhs.true.4446, label %if.end.4575

land.lhs.true.4446:                               ; preds = %if.end.4440
  %2433 = load i32, i32* %epos, align 4
  %idxprom4447 = sext i32 %2433 to i64
  %arrayidx4448 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4447
  %2434 = load i8, i8* %arrayidx4448, align 1
  %conv4449 = zext i8 %2434 to i32
  %cmp4450 = icmp eq i32 %conv4449, 0
  br i1 %cmp4450, label %land.lhs.true.4452, label %if.end.4575

land.lhs.true.4452:                               ; preds = %land.lhs.true.4446
  %2435 = load i32, i32* %epos, align 4
  %idxprom4453 = sext i32 %2435 to i64
  %2436 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4454 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2436, i32 0, i32 0
  %arrayidx4455 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4454, i32 0, i64 %idxprom4453
  %2437 = load i32, i32* %arrayidx4455, align 4
  %2438 = load i32, i32* %distance, align 4
  %add4456 = add nsw i32 %2438, 2000
  %cmp4457 = icmp sgt i32 %2437, %add4456
  br i1 %cmp4457, label %land.lhs.true.4459, label %if.end.4575

land.lhs.true.4459:                               ; preds = %land.lhs.true.4452
  %2439 = load i32, i32* %gpos, align 4
  %call4460 = call i32 @countstones(i32 %2439)
  %cmp4461 = icmp eq i32 %call4460, 1
  br i1 %cmp4461, label %if.then.4463, label %if.end.4575

if.then.4463:                                     ; preds = %land.lhs.true.4459
  br label %do.body.4464

do.body.4464:                                     ; preds = %if.then.4463
  %2440 = load i32, i32* %distance, align 4
  %add4465 = add nsw i32 %2440, 2000
  %2441 = load i32, i32* %epos, align 4
  %idxprom4466 = sext i32 %2441 to i64
  %2442 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4467 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2442, i32 0, i32 0
  %arrayidx4468 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4467, i32 0, i64 %idxprom4466
  %2443 = load i32, i32* %arrayidx4468, align 4
  %cmp4469 = icmp slt i32 %add4465, %2443
  br i1 %cmp4469, label %if.then.4471, label %if.end.4573

if.then.4471:                                     ; preds = %do.body.4464
  %2444 = load i32, i32* %epos, align 4
  %idxprom4472 = sext i32 %2444 to i64
  %arrayidx4473 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4472
  %2445 = load i8, i8* %arrayidx4473, align 1
  %conv4474 = zext i8 %2445 to i32
  %cmp4475 = icmp eq i32 %conv4474, 0
  br i1 %cmp4475, label %if.then.4477, label %if.else.4506

if.then.4477:                                     ; preds = %if.then.4471
  %2446 = load i32, i32* %epos, align 4
  %idxprom4478 = sext i32 %2446 to i64
  %2447 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4479 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2447, i32 0, i32 0
  %arrayidx4480 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4479, i32 0, i64 %idxprom4478
  %2448 = load i32, i32* %arrayidx4480, align 4
  %cmp4481 = icmp eq i32 %2448, 100000
  br i1 %cmp4481, label %if.then.4483, label %if.end.4489

if.then.4483:                                     ; preds = %if.then.4477
  %2449 = load i32, i32* %epos, align 4
  %2450 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4484 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2450, i32 0, i32 7
  %2451 = load i32, i32* %queue_end4484, align 4
  %inc4485 = add nsw i32 %2451, 1
  store i32 %inc4485, i32* %queue_end4484, align 4
  %idxprom4486 = sext i32 %2451 to i64
  %2452 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4487 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2452, i32 0, i32 5
  %arrayidx4488 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4487, i32 0, i64 %idxprom4486
  store i32 %2449, i32* %arrayidx4488, align 4
  br label %if.end.4489

if.end.4489:                                      ; preds = %if.then.4483, %if.then.4477
  %2453 = load i32, i32* %distance, align 4
  %add4490 = add nsw i32 %2453, 2000
  %2454 = load i32, i32* %epos, align 4
  %idxprom4491 = sext i32 %2454 to i64
  %2455 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4492 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2455, i32 0, i32 0
  %arrayidx4493 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4492, i32 0, i64 %idxprom4491
  store i32 %add4490, i32* %arrayidx4493, align 4
  %2456 = load i32, i32* %epos, align 4
  %idxprom4494 = sext i32 %2456 to i64
  %2457 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4495 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2457, i32 0, i32 1
  %arrayidx4496 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4495, i32 0, i64 %idxprom4494
  store i32 1000, i32* %arrayidx4496, align 4
  %2458 = load i32, i32* %pos, align 4
  %2459 = load i32, i32* %epos, align 4
  %idxprom4497 = sext i32 %2459 to i64
  %2460 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4498 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2460, i32 0, i32 2
  %arrayidx4499 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4498, i32 0, i64 %idxprom4497
  store i32 %2458, i32* %arrayidx4499, align 4
  %2461 = load i32, i32* %epos, align 4
  %idxprom4500 = sext i32 %2461 to i64
  %2462 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14501 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2462, i32 0, i32 3
  %arrayidx4502 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14501, i32 0, i64 %idxprom4500
  store i32 0, i32* %arrayidx4502, align 4
  %2463 = load i32, i32* %epos, align 4
  %idxprom4503 = sext i32 %2463 to i64
  %2464 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24504 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2464, i32 0, i32 4
  %arrayidx4505 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24504, i32 0, i64 %idxprom4503
  store i32 0, i32* %arrayidx4505, align 4
  br label %if.end.4572

if.else.4506:                                     ; preds = %if.then.4471
  %2465 = load i32, i32* %epos, align 4
  %arraydecay4509 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4510 = call i32 @findstones(i32 %2465, i32 361, i32* %arraydecay4509)
  store i32 %call4510, i32* %num_stones, align 4
  store i32 0, i32* %r4508, align 4
  br label %for.cond.4511

for.cond.4511:                                    ; preds = %for.inc.4569, %if.else.4506
  %2466 = load i32, i32* %r4508, align 4
  %2467 = load i32, i32* %num_stones, align 4
  %cmp4512 = icmp slt i32 %2466, %2467
  br i1 %cmp4512, label %for.body.4514, label %for.end.4571

for.body.4514:                                    ; preds = %for.cond.4511
  %2468 = load i32, i32* %r4508, align 4
  %idxprom4515 = sext i32 %2468 to i64
  %arrayidx4516 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4515
  %2469 = load i32, i32* %arrayidx4516, align 4
  %idxprom4517 = sext i32 %2469 to i64
  %2470 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4518 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2470, i32 0, i32 0
  %arrayidx4519 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4518, i32 0, i64 %idxprom4517
  %2471 = load i32, i32* %arrayidx4519, align 4
  %cmp4520 = icmp eq i32 %2471, 100000
  br i1 %cmp4520, label %if.then.4522, label %if.end.4530

if.then.4522:                                     ; preds = %for.body.4514
  %2472 = load i32, i32* %r4508, align 4
  %idxprom4523 = sext i32 %2472 to i64
  %arrayidx4524 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4523
  %2473 = load i32, i32* %arrayidx4524, align 4
  %2474 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4525 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2474, i32 0, i32 7
  %2475 = load i32, i32* %queue_end4525, align 4
  %inc4526 = add nsw i32 %2475, 1
  store i32 %inc4526, i32* %queue_end4525, align 4
  %idxprom4527 = sext i32 %2475 to i64
  %2476 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4528 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2476, i32 0, i32 5
  %arrayidx4529 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4528, i32 0, i64 %idxprom4527
  store i32 %2473, i32* %arrayidx4529, align 4
  br label %if.end.4530

if.end.4530:                                      ; preds = %if.then.4522, %for.body.4514
  %2477 = load i32, i32* %distance, align 4
  %add4531 = add nsw i32 %2477, 2000
  %2478 = load i32, i32* %r4508, align 4
  %idxprom4532 = sext i32 %2478 to i64
  %arrayidx4533 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4532
  %2479 = load i32, i32* %arrayidx4533, align 4
  %idxprom4534 = sext i32 %2479 to i64
  %2480 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4535 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2480, i32 0, i32 0
  %arrayidx4536 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4535, i32 0, i64 %idxprom4534
  store i32 %add4531, i32* %arrayidx4536, align 4
  %2481 = load i32, i32* %r4508, align 4
  %idxprom4537 = sext i32 %2481 to i64
  %arrayidx4538 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4537
  %2482 = load i32, i32* %arrayidx4538, align 4
  %idxprom4539 = sext i32 %2482 to i64
  %2483 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4540 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2483, i32 0, i32 1
  %arrayidx4541 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4540, i32 0, i64 %idxprom4539
  store i32 1000, i32* %arrayidx4541, align 4
  %2484 = load i32, i32* %pos, align 4
  %2485 = load i32, i32* %r4508, align 4
  %idxprom4542 = sext i32 %2485 to i64
  %arrayidx4543 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4542
  %2486 = load i32, i32* %arrayidx4543, align 4
  %idxprom4544 = sext i32 %2486 to i64
  %2487 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4545 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2487, i32 0, i32 2
  %arrayidx4546 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4545, i32 0, i64 %idxprom4544
  store i32 %2484, i32* %arrayidx4546, align 4
  %2488 = load i32, i32* %r4508, align 4
  %idxprom4547 = sext i32 %2488 to i64
  %arrayidx4548 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4547
  %2489 = load i32, i32* %arrayidx4548, align 4
  %idxprom4549 = sext i32 %2489 to i64
  %2490 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14550 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2490, i32 0, i32 3
  %arrayidx4551 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14550, i32 0, i64 %idxprom4549
  store i32 0, i32* %arrayidx4551, align 4
  %2491 = load i32, i32* %r4508, align 4
  %idxprom4552 = sext i32 %2491 to i64
  %arrayidx4553 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4552
  %2492 = load i32, i32* %arrayidx4553, align 4
  %idxprom4554 = sext i32 %2492 to i64
  %2493 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24555 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2493, i32 0, i32 4
  %arrayidx4556 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24555, i32 0, i64 %idxprom4554
  store i32 0, i32* %arrayidx4556, align 4
  %2494 = load i32, i32* %r4508, align 4
  %idxprom4557 = sext i32 %2494 to i64
  %arrayidx4558 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4557
  %2495 = load i32, i32* %arrayidx4558, align 4
  %2496 = load i32, i32* %target.addr, align 4
  %cmp4559 = icmp eq i32 %2495, %2496
  br i1 %cmp4559, label %land.lhs.true.4561, label %if.end.4568

land.lhs.true.4561:                               ; preds = %if.end.4530
  %2497 = load i32, i32* %distance, align 4
  %add4562 = add nsw i32 %2497, 2000
  %2498 = load i32, i32* %cutoff_distance, align 4
  %cmp4563 = icmp slt i32 %add4562, %2498
  br i1 %cmp4563, label %if.then.4565, label %if.end.4568

if.then.4565:                                     ; preds = %land.lhs.true.4561
  %2499 = load i32, i32* %distance, align 4
  %add4566 = add nsw i32 %2499, 2000
  %sub4567 = sub nsw i32 %add4566, 1
  store i32 %sub4567, i32* %cutoff_distance, align 4
  br label %if.end.4568

if.end.4568:                                      ; preds = %if.then.4565, %land.lhs.true.4561, %if.end.4530
  br label %for.inc.4569

for.inc.4569:                                     ; preds = %if.end.4568
  %2500 = load i32, i32* %r4508, align 4
  %inc4570 = add nsw i32 %2500, 1
  store i32 %inc4570, i32* %r4508, align 4
  br label %for.cond.4511

for.end.4571:                                     ; preds = %for.cond.4511
  br label %if.end.4572

if.end.4572:                                      ; preds = %for.end.4571, %if.end.4489
  br label %if.end.4573

if.end.4573:                                      ; preds = %if.end.4572, %do.body.4464
  br label %do.end.4574

do.end.4574:                                      ; preds = %if.end.4573
  br label %if.end.4575

if.end.4575:                                      ; preds = %do.end.4574, %land.lhs.true.4459, %land.lhs.true.4452, %land.lhs.true.4446, %if.end.4440
  %2501 = load i32, i32* %bpos, align 4
  %idxprom4576 = sext i32 %2501 to i64
  %arrayidx4577 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4576
  %2502 = load i8, i8* %arrayidx4577, align 1
  %conv4578 = zext i8 %2502 to i32
  %cmp4579 = icmp eq i32 %conv4578, 0
  br i1 %cmp4579, label %land.lhs.true.4581, label %if.end.4709

land.lhs.true.4581:                               ; preds = %if.end.4575
  %2503 = load i32, i32* %gpos, align 4
  %idxprom4582 = sext i32 %2503 to i64
  %arrayidx4583 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4582
  %2504 = load i8, i8* %arrayidx4583, align 1
  %conv4584 = zext i8 %2504 to i32
  %cmp4585 = icmp eq i32 %conv4584, 0
  br i1 %cmp4585, label %land.lhs.true.4587, label %if.end.4709

land.lhs.true.4587:                               ; preds = %land.lhs.true.4581
  %2505 = load i32, i32* %bpos, align 4
  %idxprom4588 = sext i32 %2505 to i64
  %2506 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4589 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2506, i32 0, i32 0
  %arrayidx4590 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4589, i32 0, i64 %idxprom4588
  %2507 = load i32, i32* %arrayidx4590, align 4
  %2508 = load i32, i32* %distance, align 4
  %add4591 = add nsw i32 %2508, 1800
  %cmp4592 = icmp sgt i32 %2507, %add4591
  br i1 %cmp4592, label %land.lhs.true.4594, label %if.end.4709

land.lhs.true.4594:                               ; preds = %land.lhs.true.4587
  %2509 = load i32, i32* %color, align 4
  %2510 = load i32, i32* %bpos, align 4
  %2511 = load i32, i32* %gpos, align 4
  %call4595 = call i32 @does_secure_through_ladder(i32 %2509, i32 %2510, i32 %2511)
  %tobool4596 = icmp ne i32 %call4595, 0
  br i1 %tobool4596, label %if.then.4597, label %if.end.4709

if.then.4597:                                     ; preds = %land.lhs.true.4594
  br label %do.body.4598

do.body.4598:                                     ; preds = %if.then.4597
  %2512 = load i32, i32* %distance, align 4
  %add4599 = add nsw i32 %2512, 1800
  %2513 = load i32, i32* %bpos, align 4
  %idxprom4600 = sext i32 %2513 to i64
  %2514 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4601 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2514, i32 0, i32 0
  %arrayidx4602 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4601, i32 0, i64 %idxprom4600
  %2515 = load i32, i32* %arrayidx4602, align 4
  %cmp4603 = icmp slt i32 %add4599, %2515
  br i1 %cmp4603, label %if.then.4605, label %if.end.4707

if.then.4605:                                     ; preds = %do.body.4598
  %2516 = load i32, i32* %bpos, align 4
  %idxprom4606 = sext i32 %2516 to i64
  %arrayidx4607 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4606
  %2517 = load i8, i8* %arrayidx4607, align 1
  %conv4608 = zext i8 %2517 to i32
  %cmp4609 = icmp eq i32 %conv4608, 0
  br i1 %cmp4609, label %if.then.4611, label %if.else.4640

if.then.4611:                                     ; preds = %if.then.4605
  %2518 = load i32, i32* %bpos, align 4
  %idxprom4612 = sext i32 %2518 to i64
  %2519 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4613 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2519, i32 0, i32 0
  %arrayidx4614 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4613, i32 0, i64 %idxprom4612
  %2520 = load i32, i32* %arrayidx4614, align 4
  %cmp4615 = icmp eq i32 %2520, 100000
  br i1 %cmp4615, label %if.then.4617, label %if.end.4623

if.then.4617:                                     ; preds = %if.then.4611
  %2521 = load i32, i32* %bpos, align 4
  %2522 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4618 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2522, i32 0, i32 7
  %2523 = load i32, i32* %queue_end4618, align 4
  %inc4619 = add nsw i32 %2523, 1
  store i32 %inc4619, i32* %queue_end4618, align 4
  %idxprom4620 = sext i32 %2523 to i64
  %2524 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4621 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2524, i32 0, i32 5
  %arrayidx4622 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4621, i32 0, i64 %idxprom4620
  store i32 %2521, i32* %arrayidx4622, align 4
  br label %if.end.4623

if.end.4623:                                      ; preds = %if.then.4617, %if.then.4611
  %2525 = load i32, i32* %distance, align 4
  %add4624 = add nsw i32 %2525, 1800
  %2526 = load i32, i32* %bpos, align 4
  %idxprom4625 = sext i32 %2526 to i64
  %2527 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4626 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2527, i32 0, i32 0
  %arrayidx4627 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4626, i32 0, i64 %idxprom4625
  store i32 %add4624, i32* %arrayidx4627, align 4
  %2528 = load i32, i32* %bpos, align 4
  %idxprom4628 = sext i32 %2528 to i64
  %2529 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4629 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2529, i32 0, i32 1
  %arrayidx4630 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4629, i32 0, i64 %idxprom4628
  store i32 900, i32* %arrayidx4630, align 4
  %2530 = load i32, i32* %pos, align 4
  %2531 = load i32, i32* %bpos, align 4
  %idxprom4631 = sext i32 %2531 to i64
  %2532 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4632 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2532, i32 0, i32 2
  %arrayidx4633 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4632, i32 0, i64 %idxprom4631
  store i32 %2530, i32* %arrayidx4633, align 4
  %2533 = load i32, i32* %bpos, align 4
  %idxprom4634 = sext i32 %2533 to i64
  %2534 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14635 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2534, i32 0, i32 3
  %arrayidx4636 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14635, i32 0, i64 %idxprom4634
  store i32 0, i32* %arrayidx4636, align 4
  %2535 = load i32, i32* %bpos, align 4
  %idxprom4637 = sext i32 %2535 to i64
  %2536 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24638 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2536, i32 0, i32 4
  %arrayidx4639 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24638, i32 0, i64 %idxprom4637
  store i32 0, i32* %arrayidx4639, align 4
  br label %if.end.4706

if.else.4640:                                     ; preds = %if.then.4605
  %2537 = load i32, i32* %bpos, align 4
  %arraydecay4643 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4644 = call i32 @findstones(i32 %2537, i32 361, i32* %arraydecay4643)
  store i32 %call4644, i32* %num_stones, align 4
  store i32 0, i32* %r4642, align 4
  br label %for.cond.4645

for.cond.4645:                                    ; preds = %for.inc.4703, %if.else.4640
  %2538 = load i32, i32* %r4642, align 4
  %2539 = load i32, i32* %num_stones, align 4
  %cmp4646 = icmp slt i32 %2538, %2539
  br i1 %cmp4646, label %for.body.4648, label %for.end.4705

for.body.4648:                                    ; preds = %for.cond.4645
  %2540 = load i32, i32* %r4642, align 4
  %idxprom4649 = sext i32 %2540 to i64
  %arrayidx4650 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4649
  %2541 = load i32, i32* %arrayidx4650, align 4
  %idxprom4651 = sext i32 %2541 to i64
  %2542 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4652 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2542, i32 0, i32 0
  %arrayidx4653 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4652, i32 0, i64 %idxprom4651
  %2543 = load i32, i32* %arrayidx4653, align 4
  %cmp4654 = icmp eq i32 %2543, 100000
  br i1 %cmp4654, label %if.then.4656, label %if.end.4664

if.then.4656:                                     ; preds = %for.body.4648
  %2544 = load i32, i32* %r4642, align 4
  %idxprom4657 = sext i32 %2544 to i64
  %arrayidx4658 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4657
  %2545 = load i32, i32* %arrayidx4658, align 4
  %2546 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4659 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2546, i32 0, i32 7
  %2547 = load i32, i32* %queue_end4659, align 4
  %inc4660 = add nsw i32 %2547, 1
  store i32 %inc4660, i32* %queue_end4659, align 4
  %idxprom4661 = sext i32 %2547 to i64
  %2548 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4662 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2548, i32 0, i32 5
  %arrayidx4663 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4662, i32 0, i64 %idxprom4661
  store i32 %2545, i32* %arrayidx4663, align 4
  br label %if.end.4664

if.end.4664:                                      ; preds = %if.then.4656, %for.body.4648
  %2549 = load i32, i32* %distance, align 4
  %add4665 = add nsw i32 %2549, 1800
  %2550 = load i32, i32* %r4642, align 4
  %idxprom4666 = sext i32 %2550 to i64
  %arrayidx4667 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4666
  %2551 = load i32, i32* %arrayidx4667, align 4
  %idxprom4668 = sext i32 %2551 to i64
  %2552 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4669 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2552, i32 0, i32 0
  %arrayidx4670 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4669, i32 0, i64 %idxprom4668
  store i32 %add4665, i32* %arrayidx4670, align 4
  %2553 = load i32, i32* %r4642, align 4
  %idxprom4671 = sext i32 %2553 to i64
  %arrayidx4672 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4671
  %2554 = load i32, i32* %arrayidx4672, align 4
  %idxprom4673 = sext i32 %2554 to i64
  %2555 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4674 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2555, i32 0, i32 1
  %arrayidx4675 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4674, i32 0, i64 %idxprom4673
  store i32 900, i32* %arrayidx4675, align 4
  %2556 = load i32, i32* %pos, align 4
  %2557 = load i32, i32* %r4642, align 4
  %idxprom4676 = sext i32 %2557 to i64
  %arrayidx4677 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4676
  %2558 = load i32, i32* %arrayidx4677, align 4
  %idxprom4678 = sext i32 %2558 to i64
  %2559 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4679 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2559, i32 0, i32 2
  %arrayidx4680 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4679, i32 0, i64 %idxprom4678
  store i32 %2556, i32* %arrayidx4680, align 4
  %2560 = load i32, i32* %r4642, align 4
  %idxprom4681 = sext i32 %2560 to i64
  %arrayidx4682 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4681
  %2561 = load i32, i32* %arrayidx4682, align 4
  %idxprom4683 = sext i32 %2561 to i64
  %2562 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14684 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2562, i32 0, i32 3
  %arrayidx4685 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14684, i32 0, i64 %idxprom4683
  store i32 0, i32* %arrayidx4685, align 4
  %2563 = load i32, i32* %r4642, align 4
  %idxprom4686 = sext i32 %2563 to i64
  %arrayidx4687 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4686
  %2564 = load i32, i32* %arrayidx4687, align 4
  %idxprom4688 = sext i32 %2564 to i64
  %2565 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24689 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2565, i32 0, i32 4
  %arrayidx4690 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24689, i32 0, i64 %idxprom4688
  store i32 0, i32* %arrayidx4690, align 4
  %2566 = load i32, i32* %r4642, align 4
  %idxprom4691 = sext i32 %2566 to i64
  %arrayidx4692 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4691
  %2567 = load i32, i32* %arrayidx4692, align 4
  %2568 = load i32, i32* %target.addr, align 4
  %cmp4693 = icmp eq i32 %2567, %2568
  br i1 %cmp4693, label %land.lhs.true.4695, label %if.end.4702

land.lhs.true.4695:                               ; preds = %if.end.4664
  %2569 = load i32, i32* %distance, align 4
  %add4696 = add nsw i32 %2569, 1800
  %2570 = load i32, i32* %cutoff_distance, align 4
  %cmp4697 = icmp slt i32 %add4696, %2570
  br i1 %cmp4697, label %if.then.4699, label %if.end.4702

if.then.4699:                                     ; preds = %land.lhs.true.4695
  %2571 = load i32, i32* %distance, align 4
  %add4700 = add nsw i32 %2571, 1800
  %sub4701 = sub nsw i32 %add4700, 1
  store i32 %sub4701, i32* %cutoff_distance, align 4
  br label %if.end.4702

if.end.4702:                                      ; preds = %if.then.4699, %land.lhs.true.4695, %if.end.4664
  br label %for.inc.4703

for.inc.4703:                                     ; preds = %if.end.4702
  %2572 = load i32, i32* %r4642, align 4
  %inc4704 = add nsw i32 %2572, 1
  store i32 %inc4704, i32* %r4642, align 4
  br label %for.cond.4645

for.end.4705:                                     ; preds = %for.cond.4645
  br label %if.end.4706

if.end.4706:                                      ; preds = %for.end.4705, %if.end.4623
  br label %if.end.4707

if.end.4707:                                      ; preds = %if.end.4706, %do.body.4598
  br label %do.end.4708

do.end.4708:                                      ; preds = %if.end.4707
  br label %if.end.4709

if.end.4709:                                      ; preds = %do.end.4708, %land.lhs.true.4594, %land.lhs.true.4587, %land.lhs.true.4581, %if.end.4575
  %2573 = load i32, i32* %bpos, align 4
  %idxprom4710 = sext i32 %2573 to i64
  %arrayidx4711 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4710
  %2574 = load i8, i8* %arrayidx4711, align 1
  %conv4712 = zext i8 %2574 to i32
  %cmp4713 = icmp eq i32 %conv4712, 0
  br i1 %cmp4713, label %land.lhs.true.4715, label %if.end.4852

land.lhs.true.4715:                               ; preds = %if.end.4709
  %2575 = load i32, i32* %apos, align 4
  %idxprom4716 = sext i32 %2575 to i64
  %arrayidx4717 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4716
  %2576 = load i8, i8* %arrayidx4717, align 1
  %conv4718 = zext i8 %2576 to i32
  %2577 = load i32, i32* %other, align 4
  %cmp4719 = icmp eq i32 %conv4718, %2577
  br i1 %cmp4719, label %land.lhs.true.4721, label %if.end.4852

land.lhs.true.4721:                               ; preds = %land.lhs.true.4715
  %2578 = load i32, i32* %gpos, align 4
  %idxprom4722 = sext i32 %2578 to i64
  %arrayidx4723 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4722
  %2579 = load i8, i8* %arrayidx4723, align 1
  %conv4724 = zext i8 %2579 to i32
  %2580 = load i32, i32* %other, align 4
  %cmp4725 = icmp eq i32 %conv4724, %2580
  br i1 %cmp4725, label %land.lhs.true.4727, label %if.end.4852

land.lhs.true.4727:                               ; preds = %land.lhs.true.4721
  %2581 = load i32, i32* %bpos, align 4
  %idxprom4728 = sext i32 %2581 to i64
  %2582 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4729 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2582, i32 0, i32 0
  %arrayidx4730 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4729, i32 0, i64 %idxprom4728
  %2583 = load i32, i32* %arrayidx4730, align 4
  %2584 = load i32, i32* %distance, align 4
  %add4731 = add nsw i32 %2584, 2000
  %cmp4732 = icmp sgt i32 %2583, %add4731
  br i1 %cmp4732, label %land.lhs.true.4734, label %if.end.4852

land.lhs.true.4734:                               ; preds = %land.lhs.true.4727
  %2585 = load i32, i32* %apos, align 4
  %call4735 = call i32 @countlib(i32 %2585)
  %2586 = load i32, i32* %gpos, align 4
  %call4736 = call i32 @countlib(i32 %2586)
  %add4737 = add nsw i32 %call4735, %call4736
  %cmp4738 = icmp sle i32 %add4737, 6
  br i1 %cmp4738, label %if.then.4740, label %if.end.4852

if.then.4740:                                     ; preds = %land.lhs.true.4734
  br label %do.body.4741

do.body.4741:                                     ; preds = %if.then.4740
  %2587 = load i32, i32* %distance, align 4
  %add4742 = add nsw i32 %2587, 2000
  %2588 = load i32, i32* %bpos, align 4
  %idxprom4743 = sext i32 %2588 to i64
  %2589 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4744 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2589, i32 0, i32 0
  %arrayidx4745 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4744, i32 0, i64 %idxprom4743
  %2590 = load i32, i32* %arrayidx4745, align 4
  %cmp4746 = icmp slt i32 %add4742, %2590
  br i1 %cmp4746, label %if.then.4748, label %if.end.4850

if.then.4748:                                     ; preds = %do.body.4741
  %2591 = load i32, i32* %bpos, align 4
  %idxprom4749 = sext i32 %2591 to i64
  %arrayidx4750 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4749
  %2592 = load i8, i8* %arrayidx4750, align 1
  %conv4751 = zext i8 %2592 to i32
  %cmp4752 = icmp eq i32 %conv4751, 0
  br i1 %cmp4752, label %if.then.4754, label %if.else.4783

if.then.4754:                                     ; preds = %if.then.4748
  %2593 = load i32, i32* %bpos, align 4
  %idxprom4755 = sext i32 %2593 to i64
  %2594 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4756 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2594, i32 0, i32 0
  %arrayidx4757 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4756, i32 0, i64 %idxprom4755
  %2595 = load i32, i32* %arrayidx4757, align 4
  %cmp4758 = icmp eq i32 %2595, 100000
  br i1 %cmp4758, label %if.then.4760, label %if.end.4766

if.then.4760:                                     ; preds = %if.then.4754
  %2596 = load i32, i32* %bpos, align 4
  %2597 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4761 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2597, i32 0, i32 7
  %2598 = load i32, i32* %queue_end4761, align 4
  %inc4762 = add nsw i32 %2598, 1
  store i32 %inc4762, i32* %queue_end4761, align 4
  %idxprom4763 = sext i32 %2598 to i64
  %2599 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4764 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2599, i32 0, i32 5
  %arrayidx4765 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4764, i32 0, i64 %idxprom4763
  store i32 %2596, i32* %arrayidx4765, align 4
  br label %if.end.4766

if.end.4766:                                      ; preds = %if.then.4760, %if.then.4754
  %2600 = load i32, i32* %distance, align 4
  %add4767 = add nsw i32 %2600, 2000
  %2601 = load i32, i32* %bpos, align 4
  %idxprom4768 = sext i32 %2601 to i64
  %2602 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4769 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2602, i32 0, i32 0
  %arrayidx4770 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4769, i32 0, i64 %idxprom4768
  store i32 %add4767, i32* %arrayidx4770, align 4
  %2603 = load i32, i32* %bpos, align 4
  %idxprom4771 = sext i32 %2603 to i64
  %2604 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4772 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2604, i32 0, i32 1
  %arrayidx4773 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4772, i32 0, i64 %idxprom4771
  store i32 1000, i32* %arrayidx4773, align 4
  %2605 = load i32, i32* %pos, align 4
  %2606 = load i32, i32* %bpos, align 4
  %idxprom4774 = sext i32 %2606 to i64
  %2607 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4775 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2607, i32 0, i32 2
  %arrayidx4776 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4775, i32 0, i64 %idxprom4774
  store i32 %2605, i32* %arrayidx4776, align 4
  %2608 = load i32, i32* %bpos, align 4
  %idxprom4777 = sext i32 %2608 to i64
  %2609 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14778 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2609, i32 0, i32 3
  %arrayidx4779 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14778, i32 0, i64 %idxprom4777
  store i32 0, i32* %arrayidx4779, align 4
  %2610 = load i32, i32* %bpos, align 4
  %idxprom4780 = sext i32 %2610 to i64
  %2611 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24781 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2611, i32 0, i32 4
  %arrayidx4782 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24781, i32 0, i64 %idxprom4780
  store i32 0, i32* %arrayidx4782, align 4
  br label %if.end.4849

if.else.4783:                                     ; preds = %if.then.4748
  %2612 = load i32, i32* %bpos, align 4
  %arraydecay4786 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4787 = call i32 @findstones(i32 %2612, i32 361, i32* %arraydecay4786)
  store i32 %call4787, i32* %num_stones, align 4
  store i32 0, i32* %r4785, align 4
  br label %for.cond.4788

for.cond.4788:                                    ; preds = %for.inc.4846, %if.else.4783
  %2613 = load i32, i32* %r4785, align 4
  %2614 = load i32, i32* %num_stones, align 4
  %cmp4789 = icmp slt i32 %2613, %2614
  br i1 %cmp4789, label %for.body.4791, label %for.end.4848

for.body.4791:                                    ; preds = %for.cond.4788
  %2615 = load i32, i32* %r4785, align 4
  %idxprom4792 = sext i32 %2615 to i64
  %arrayidx4793 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4792
  %2616 = load i32, i32* %arrayidx4793, align 4
  %idxprom4794 = sext i32 %2616 to i64
  %2617 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4795 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2617, i32 0, i32 0
  %arrayidx4796 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4795, i32 0, i64 %idxprom4794
  %2618 = load i32, i32* %arrayidx4796, align 4
  %cmp4797 = icmp eq i32 %2618, 100000
  br i1 %cmp4797, label %if.then.4799, label %if.end.4807

if.then.4799:                                     ; preds = %for.body.4791
  %2619 = load i32, i32* %r4785, align 4
  %idxprom4800 = sext i32 %2619 to i64
  %arrayidx4801 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4800
  %2620 = load i32, i32* %arrayidx4801, align 4
  %2621 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4802 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2621, i32 0, i32 7
  %2622 = load i32, i32* %queue_end4802, align 4
  %inc4803 = add nsw i32 %2622, 1
  store i32 %inc4803, i32* %queue_end4802, align 4
  %idxprom4804 = sext i32 %2622 to i64
  %2623 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4805 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2623, i32 0, i32 5
  %arrayidx4806 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4805, i32 0, i64 %idxprom4804
  store i32 %2620, i32* %arrayidx4806, align 4
  br label %if.end.4807

if.end.4807:                                      ; preds = %if.then.4799, %for.body.4791
  %2624 = load i32, i32* %distance, align 4
  %add4808 = add nsw i32 %2624, 2000
  %2625 = load i32, i32* %r4785, align 4
  %idxprom4809 = sext i32 %2625 to i64
  %arrayidx4810 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4809
  %2626 = load i32, i32* %arrayidx4810, align 4
  %idxprom4811 = sext i32 %2626 to i64
  %2627 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4812 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2627, i32 0, i32 0
  %arrayidx4813 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4812, i32 0, i64 %idxprom4811
  store i32 %add4808, i32* %arrayidx4813, align 4
  %2628 = load i32, i32* %r4785, align 4
  %idxprom4814 = sext i32 %2628 to i64
  %arrayidx4815 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4814
  %2629 = load i32, i32* %arrayidx4815, align 4
  %idxprom4816 = sext i32 %2629 to i64
  %2630 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4817 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2630, i32 0, i32 1
  %arrayidx4818 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4817, i32 0, i64 %idxprom4816
  store i32 1000, i32* %arrayidx4818, align 4
  %2631 = load i32, i32* %pos, align 4
  %2632 = load i32, i32* %r4785, align 4
  %idxprom4819 = sext i32 %2632 to i64
  %arrayidx4820 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4819
  %2633 = load i32, i32* %arrayidx4820, align 4
  %idxprom4821 = sext i32 %2633 to i64
  %2634 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4822 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2634, i32 0, i32 2
  %arrayidx4823 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4822, i32 0, i64 %idxprom4821
  store i32 %2631, i32* %arrayidx4823, align 4
  %2635 = load i32, i32* %r4785, align 4
  %idxprom4824 = sext i32 %2635 to i64
  %arrayidx4825 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4824
  %2636 = load i32, i32* %arrayidx4825, align 4
  %idxprom4826 = sext i32 %2636 to i64
  %2637 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14827 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2637, i32 0, i32 3
  %arrayidx4828 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14827, i32 0, i64 %idxprom4826
  store i32 0, i32* %arrayidx4828, align 4
  %2638 = load i32, i32* %r4785, align 4
  %idxprom4829 = sext i32 %2638 to i64
  %arrayidx4830 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4829
  %2639 = load i32, i32* %arrayidx4830, align 4
  %idxprom4831 = sext i32 %2639 to i64
  %2640 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24832 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2640, i32 0, i32 4
  %arrayidx4833 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24832, i32 0, i64 %idxprom4831
  store i32 0, i32* %arrayidx4833, align 4
  %2641 = load i32, i32* %r4785, align 4
  %idxprom4834 = sext i32 %2641 to i64
  %arrayidx4835 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4834
  %2642 = load i32, i32* %arrayidx4835, align 4
  %2643 = load i32, i32* %target.addr, align 4
  %cmp4836 = icmp eq i32 %2642, %2643
  br i1 %cmp4836, label %land.lhs.true.4838, label %if.end.4845

land.lhs.true.4838:                               ; preds = %if.end.4807
  %2644 = load i32, i32* %distance, align 4
  %add4839 = add nsw i32 %2644, 2000
  %2645 = load i32, i32* %cutoff_distance, align 4
  %cmp4840 = icmp slt i32 %add4839, %2645
  br i1 %cmp4840, label %if.then.4842, label %if.end.4845

if.then.4842:                                     ; preds = %land.lhs.true.4838
  %2646 = load i32, i32* %distance, align 4
  %add4843 = add nsw i32 %2646, 2000
  %sub4844 = sub nsw i32 %add4843, 1
  store i32 %sub4844, i32* %cutoff_distance, align 4
  br label %if.end.4845

if.end.4845:                                      ; preds = %if.then.4842, %land.lhs.true.4838, %if.end.4807
  br label %for.inc.4846

for.inc.4846:                                     ; preds = %if.end.4845
  %2647 = load i32, i32* %r4785, align 4
  %inc4847 = add nsw i32 %2647, 1
  store i32 %inc4847, i32* %r4785, align 4
  br label %for.cond.4788

for.end.4848:                                     ; preds = %for.cond.4788
  br label %if.end.4849

if.end.4849:                                      ; preds = %for.end.4848, %if.end.4766
  br label %if.end.4850

if.end.4850:                                      ; preds = %if.end.4849, %do.body.4741
  br label %do.end.4851

do.end.4851:                                      ; preds = %if.end.4850
  br label %if.end.4852

if.end.4852:                                      ; preds = %do.end.4851, %land.lhs.true.4734, %land.lhs.true.4727, %land.lhs.true.4721, %land.lhs.true.4715, %if.end.4709
  %2648 = load i32, i32* %bpos, align 4
  %idxprom4853 = sext i32 %2648 to i64
  %arrayidx4854 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4853
  %2649 = load i8, i8* %arrayidx4854, align 1
  %conv4855 = zext i8 %2649 to i32
  %2650 = load i32, i32* %color, align 4
  %cmp4856 = icmp eq i32 %conv4855, %2650
  br i1 %cmp4856, label %land.lhs.true.4858, label %if.end.4995

land.lhs.true.4858:                               ; preds = %if.end.4852
  %2651 = load i32, i32* %apos, align 4
  %idxprom4859 = sext i32 %2651 to i64
  %arrayidx4860 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4859
  %2652 = load i8, i8* %arrayidx4860, align 1
  %conv4861 = zext i8 %2652 to i32
  %2653 = load i32, i32* %other, align 4
  %cmp4862 = icmp eq i32 %conv4861, %2653
  br i1 %cmp4862, label %land.lhs.true.4864, label %if.end.4995

land.lhs.true.4864:                               ; preds = %land.lhs.true.4858
  %2654 = load i32, i32* %gpos, align 4
  %idxprom4865 = sext i32 %2654 to i64
  %arrayidx4866 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4865
  %2655 = load i8, i8* %arrayidx4866, align 1
  %conv4867 = zext i8 %2655 to i32
  %2656 = load i32, i32* %other, align 4
  %cmp4868 = icmp eq i32 %conv4867, %2656
  br i1 %cmp4868, label %land.lhs.true.4870, label %if.end.4995

land.lhs.true.4870:                               ; preds = %land.lhs.true.4864
  %2657 = load i32, i32* %bpos, align 4
  %idxprom4871 = sext i32 %2657 to i64
  %2658 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4872 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2658, i32 0, i32 0
  %arrayidx4873 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4872, i32 0, i64 %idxprom4871
  %2659 = load i32, i32* %arrayidx4873, align 4
  %2660 = load i32, i32* %distance, align 4
  %add4874 = add nsw i32 %2660, 2000
  %cmp4875 = icmp sgt i32 %2659, %add4874
  br i1 %cmp4875, label %land.lhs.true.4877, label %if.end.4995

land.lhs.true.4877:                               ; preds = %land.lhs.true.4870
  %2661 = load i32, i32* %apos, align 4
  %call4878 = call i32 @countlib(i32 %2661)
  %2662 = load i32, i32* %gpos, align 4
  %call4879 = call i32 @countlib(i32 %2662)
  %add4880 = add nsw i32 %call4878, %call4879
  %cmp4881 = icmp sle i32 %add4880, 5
  br i1 %cmp4881, label %if.then.4883, label %if.end.4995

if.then.4883:                                     ; preds = %land.lhs.true.4877
  br label %do.body.4884

do.body.4884:                                     ; preds = %if.then.4883
  %2663 = load i32, i32* %distance, align 4
  %add4885 = add nsw i32 %2663, 2000
  %2664 = load i32, i32* %bpos, align 4
  %idxprom4886 = sext i32 %2664 to i64
  %2665 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4887 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2665, i32 0, i32 0
  %arrayidx4888 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4887, i32 0, i64 %idxprom4886
  %2666 = load i32, i32* %arrayidx4888, align 4
  %cmp4889 = icmp slt i32 %add4885, %2666
  br i1 %cmp4889, label %if.then.4891, label %if.end.4993

if.then.4891:                                     ; preds = %do.body.4884
  %2667 = load i32, i32* %bpos, align 4
  %idxprom4892 = sext i32 %2667 to i64
  %arrayidx4893 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4892
  %2668 = load i8, i8* %arrayidx4893, align 1
  %conv4894 = zext i8 %2668 to i32
  %cmp4895 = icmp eq i32 %conv4894, 0
  br i1 %cmp4895, label %if.then.4897, label %if.else.4926

if.then.4897:                                     ; preds = %if.then.4891
  %2669 = load i32, i32* %bpos, align 4
  %idxprom4898 = sext i32 %2669 to i64
  %2670 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4899 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2670, i32 0, i32 0
  %arrayidx4900 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4899, i32 0, i64 %idxprom4898
  %2671 = load i32, i32* %arrayidx4900, align 4
  %cmp4901 = icmp eq i32 %2671, 100000
  br i1 %cmp4901, label %if.then.4903, label %if.end.4909

if.then.4903:                                     ; preds = %if.then.4897
  %2672 = load i32, i32* %bpos, align 4
  %2673 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4904 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2673, i32 0, i32 7
  %2674 = load i32, i32* %queue_end4904, align 4
  %inc4905 = add nsw i32 %2674, 1
  store i32 %inc4905, i32* %queue_end4904, align 4
  %idxprom4906 = sext i32 %2674 to i64
  %2675 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4907 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2675, i32 0, i32 5
  %arrayidx4908 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4907, i32 0, i64 %idxprom4906
  store i32 %2672, i32* %arrayidx4908, align 4
  br label %if.end.4909

if.end.4909:                                      ; preds = %if.then.4903, %if.then.4897
  %2676 = load i32, i32* %distance, align 4
  %add4910 = add nsw i32 %2676, 2000
  %2677 = load i32, i32* %bpos, align 4
  %idxprom4911 = sext i32 %2677 to i64
  %2678 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4912 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2678, i32 0, i32 0
  %arrayidx4913 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4912, i32 0, i64 %idxprom4911
  store i32 %add4910, i32* %arrayidx4913, align 4
  %2679 = load i32, i32* %bpos, align 4
  %idxprom4914 = sext i32 %2679 to i64
  %2680 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4915 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2680, i32 0, i32 1
  %arrayidx4916 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4915, i32 0, i64 %idxprom4914
  store i32 1000, i32* %arrayidx4916, align 4
  %2681 = load i32, i32* %pos, align 4
  %2682 = load i32, i32* %bpos, align 4
  %idxprom4917 = sext i32 %2682 to i64
  %2683 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4918 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2683, i32 0, i32 2
  %arrayidx4919 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4918, i32 0, i64 %idxprom4917
  store i32 %2681, i32* %arrayidx4919, align 4
  %2684 = load i32, i32* %bpos, align 4
  %idxprom4920 = sext i32 %2684 to i64
  %2685 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14921 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2685, i32 0, i32 3
  %arrayidx4922 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14921, i32 0, i64 %idxprom4920
  store i32 0, i32* %arrayidx4922, align 4
  %2686 = load i32, i32* %bpos, align 4
  %idxprom4923 = sext i32 %2686 to i64
  %2687 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24924 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2687, i32 0, i32 4
  %arrayidx4925 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24924, i32 0, i64 %idxprom4923
  store i32 0, i32* %arrayidx4925, align 4
  br label %if.end.4992

if.else.4926:                                     ; preds = %if.then.4891
  %2688 = load i32, i32* %bpos, align 4
  %arraydecay4929 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call4930 = call i32 @findstones(i32 %2688, i32 361, i32* %arraydecay4929)
  store i32 %call4930, i32* %num_stones, align 4
  store i32 0, i32* %r4928, align 4
  br label %for.cond.4931

for.cond.4931:                                    ; preds = %for.inc.4989, %if.else.4926
  %2689 = load i32, i32* %r4928, align 4
  %2690 = load i32, i32* %num_stones, align 4
  %cmp4932 = icmp slt i32 %2689, %2690
  br i1 %cmp4932, label %for.body.4934, label %for.end.4991

for.body.4934:                                    ; preds = %for.cond.4931
  %2691 = load i32, i32* %r4928, align 4
  %idxprom4935 = sext i32 %2691 to i64
  %arrayidx4936 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4935
  %2692 = load i32, i32* %arrayidx4936, align 4
  %idxprom4937 = sext i32 %2692 to i64
  %2693 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4938 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2693, i32 0, i32 0
  %arrayidx4939 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4938, i32 0, i64 %idxprom4937
  %2694 = load i32, i32* %arrayidx4939, align 4
  %cmp4940 = icmp eq i32 %2694, 100000
  br i1 %cmp4940, label %if.then.4942, label %if.end.4950

if.then.4942:                                     ; preds = %for.body.4934
  %2695 = load i32, i32* %r4928, align 4
  %idxprom4943 = sext i32 %2695 to i64
  %arrayidx4944 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4943
  %2696 = load i32, i32* %arrayidx4944, align 4
  %2697 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end4945 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2697, i32 0, i32 7
  %2698 = load i32, i32* %queue_end4945, align 4
  %inc4946 = add nsw i32 %2698, 1
  store i32 %inc4946, i32* %queue_end4945, align 4
  %idxprom4947 = sext i32 %2698 to i64
  %2699 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue4948 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2699, i32 0, i32 5
  %arrayidx4949 = getelementptr inbounds [400 x i32], [400 x i32]* %queue4948, i32 0, i64 %idxprom4947
  store i32 %2696, i32* %arrayidx4949, align 4
  br label %if.end.4950

if.end.4950:                                      ; preds = %if.then.4942, %for.body.4934
  %2700 = load i32, i32* %distance, align 4
  %add4951 = add nsw i32 %2700, 2000
  %2701 = load i32, i32* %r4928, align 4
  %idxprom4952 = sext i32 %2701 to i64
  %arrayidx4953 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4952
  %2702 = load i32, i32* %arrayidx4953, align 4
  %idxprom4954 = sext i32 %2702 to i64
  %2703 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances4955 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2703, i32 0, i32 0
  %arrayidx4956 = getelementptr inbounds [400 x i32], [400 x i32]* %distances4955, i32 0, i64 %idxprom4954
  store i32 %add4951, i32* %arrayidx4956, align 4
  %2704 = load i32, i32* %r4928, align 4
  %idxprom4957 = sext i32 %2704 to i64
  %arrayidx4958 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4957
  %2705 = load i32, i32* %arrayidx4958, align 4
  %idxprom4959 = sext i32 %2705 to i64
  %2706 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas4960 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2706, i32 0, i32 1
  %arrayidx4961 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas4960, i32 0, i64 %idxprom4959
  store i32 1000, i32* %arrayidx4961, align 4
  %2707 = load i32, i32* %pos, align 4
  %2708 = load i32, i32* %r4928, align 4
  %idxprom4962 = sext i32 %2708 to i64
  %arrayidx4963 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4962
  %2709 = load i32, i32* %arrayidx4963, align 4
  %idxprom4964 = sext i32 %2709 to i64
  %2710 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from4965 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2710, i32 0, i32 2
  %arrayidx4966 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from4965, i32 0, i64 %idxprom4964
  store i32 %2707, i32* %arrayidx4966, align 4
  %2711 = load i32, i32* %r4928, align 4
  %idxprom4967 = sext i32 %2711 to i64
  %arrayidx4968 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4967
  %2712 = load i32, i32* %arrayidx4968, align 4
  %idxprom4969 = sext i32 %2712 to i64
  %2713 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable14970 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2713, i32 0, i32 3
  %arrayidx4971 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable14970, i32 0, i64 %idxprom4969
  store i32 0, i32* %arrayidx4971, align 4
  %2714 = load i32, i32* %r4928, align 4
  %idxprom4972 = sext i32 %2714 to i64
  %arrayidx4973 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4972
  %2715 = load i32, i32* %arrayidx4973, align 4
  %idxprom4974 = sext i32 %2715 to i64
  %2716 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable24975 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2716, i32 0, i32 4
  %arrayidx4976 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable24975, i32 0, i64 %idxprom4974
  store i32 0, i32* %arrayidx4976, align 4
  %2717 = load i32, i32* %r4928, align 4
  %idxprom4977 = sext i32 %2717 to i64
  %arrayidx4978 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4977
  %2718 = load i32, i32* %arrayidx4978, align 4
  %2719 = load i32, i32* %target.addr, align 4
  %cmp4979 = icmp eq i32 %2718, %2719
  br i1 %cmp4979, label %land.lhs.true.4981, label %if.end.4988

land.lhs.true.4981:                               ; preds = %if.end.4950
  %2720 = load i32, i32* %distance, align 4
  %add4982 = add nsw i32 %2720, 2000
  %2721 = load i32, i32* %cutoff_distance, align 4
  %cmp4983 = icmp slt i32 %add4982, %2721
  br i1 %cmp4983, label %if.then.4985, label %if.end.4988

if.then.4985:                                     ; preds = %land.lhs.true.4981
  %2722 = load i32, i32* %distance, align 4
  %add4986 = add nsw i32 %2722, 2000
  %sub4987 = sub nsw i32 %add4986, 1
  store i32 %sub4987, i32* %cutoff_distance, align 4
  br label %if.end.4988

if.end.4988:                                      ; preds = %if.then.4985, %land.lhs.true.4981, %if.end.4950
  br label %for.inc.4989

for.inc.4989:                                     ; preds = %if.end.4988
  %2723 = load i32, i32* %r4928, align 4
  %inc4990 = add nsw i32 %2723, 1
  store i32 %inc4990, i32* %r4928, align 4
  br label %for.cond.4931

for.end.4991:                                     ; preds = %for.cond.4931
  br label %if.end.4992

if.end.4992:                                      ; preds = %for.end.4991, %if.end.4909
  br label %if.end.4993

if.end.4993:                                      ; preds = %if.end.4992, %do.body.4884
  br label %do.end.4994

do.end.4994:                                      ; preds = %if.end.4993
  br label %if.end.4995

if.end.4995:                                      ; preds = %do.end.4994, %land.lhs.true.4877, %land.lhs.true.4870, %land.lhs.true.4864, %land.lhs.true.4858, %if.end.4852
  %2724 = load i32, i32* %apos, align 4
  %idxprom4996 = sext i32 %2724 to i64
  %arrayidx4997 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4996
  %2725 = load i8, i8* %arrayidx4997, align 1
  %conv4998 = zext i8 %2725 to i32
  %2726 = load i32, i32* %other, align 4
  %cmp4999 = icmp eq i32 %conv4998, %2726
  br i1 %cmp4999, label %land.lhs.true.5001, label %if.end.5123

land.lhs.true.5001:                               ; preds = %if.end.4995
  %2727 = load i32, i32* %apos, align 4
  %idxprom5002 = sext i32 %2727 to i64
  %2728 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5003 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2728, i32 0, i32 0
  %arrayidx5004 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5003, i32 0, i64 %idxprom5002
  %2729 = load i32, i32* %arrayidx5004, align 4
  %2730 = load i32, i32* %distance, align 4
  %add5005 = add nsw i32 %2730, 100
  %cmp5006 = icmp sgt i32 %2729, %add5005
  br i1 %cmp5006, label %land.lhs.true.5008, label %if.end.5123

land.lhs.true.5008:                               ; preds = %land.lhs.true.5001
  %2731 = load i32, i32* %apos, align 4
  %call5009 = call i32 @no_escape_from_atari(i32 %2731)
  %tobool5010 = icmp ne i32 %call5009, 0
  br i1 %tobool5010, label %if.then.5011, label %if.end.5123

if.then.5011:                                     ; preds = %land.lhs.true.5008
  br label %do.body.5012

do.body.5012:                                     ; preds = %if.then.5011
  %2732 = load i32, i32* %distance, align 4
  %add5013 = add nsw i32 %2732, 100
  %2733 = load i32, i32* %apos, align 4
  %idxprom5014 = sext i32 %2733 to i64
  %2734 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5015 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2734, i32 0, i32 0
  %arrayidx5016 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5015, i32 0, i64 %idxprom5014
  %2735 = load i32, i32* %arrayidx5016, align 4
  %cmp5017 = icmp slt i32 %add5013, %2735
  br i1 %cmp5017, label %if.then.5019, label %if.end.5121

if.then.5019:                                     ; preds = %do.body.5012
  %2736 = load i32, i32* %apos, align 4
  %idxprom5020 = sext i32 %2736 to i64
  %arrayidx5021 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5020
  %2737 = load i8, i8* %arrayidx5021, align 1
  %conv5022 = zext i8 %2737 to i32
  %cmp5023 = icmp eq i32 %conv5022, 0
  br i1 %cmp5023, label %if.then.5025, label %if.else.5054

if.then.5025:                                     ; preds = %if.then.5019
  %2738 = load i32, i32* %apos, align 4
  %idxprom5026 = sext i32 %2738 to i64
  %2739 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5027 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2739, i32 0, i32 0
  %arrayidx5028 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5027, i32 0, i64 %idxprom5026
  %2740 = load i32, i32* %arrayidx5028, align 4
  %cmp5029 = icmp eq i32 %2740, 100000
  br i1 %cmp5029, label %if.then.5031, label %if.end.5037

if.then.5031:                                     ; preds = %if.then.5025
  %2741 = load i32, i32* %apos, align 4
  %2742 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5032 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2742, i32 0, i32 7
  %2743 = load i32, i32* %queue_end5032, align 4
  %inc5033 = add nsw i32 %2743, 1
  store i32 %inc5033, i32* %queue_end5032, align 4
  %idxprom5034 = sext i32 %2743 to i64
  %2744 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5035 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2744, i32 0, i32 5
  %arrayidx5036 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5035, i32 0, i64 %idxprom5034
  store i32 %2741, i32* %arrayidx5036, align 4
  br label %if.end.5037

if.end.5037:                                      ; preds = %if.then.5031, %if.then.5025
  %2745 = load i32, i32* %distance, align 4
  %add5038 = add nsw i32 %2745, 100
  %2746 = load i32, i32* %apos, align 4
  %idxprom5039 = sext i32 %2746 to i64
  %2747 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5040 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2747, i32 0, i32 0
  %arrayidx5041 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5040, i32 0, i64 %idxprom5039
  store i32 %add5038, i32* %arrayidx5041, align 4
  %2748 = load i32, i32* %apos, align 4
  %idxprom5042 = sext i32 %2748 to i64
  %2749 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5043 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2749, i32 0, i32 1
  %arrayidx5044 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5043, i32 0, i64 %idxprom5042
  store i32 100, i32* %arrayidx5044, align 4
  %2750 = load i32, i32* %pos, align 4
  %2751 = load i32, i32* %apos, align 4
  %idxprom5045 = sext i32 %2751 to i64
  %2752 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5046 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2752, i32 0, i32 2
  %arrayidx5047 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5046, i32 0, i64 %idxprom5045
  store i32 %2750, i32* %arrayidx5047, align 4
  %2753 = load i32, i32* %apos, align 4
  %idxprom5048 = sext i32 %2753 to i64
  %2754 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15049 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2754, i32 0, i32 3
  %arrayidx5050 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15049, i32 0, i64 %idxprom5048
  store i32 0, i32* %arrayidx5050, align 4
  %2755 = load i32, i32* %apos, align 4
  %idxprom5051 = sext i32 %2755 to i64
  %2756 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25052 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2756, i32 0, i32 4
  %arrayidx5053 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25052, i32 0, i64 %idxprom5051
  store i32 0, i32* %arrayidx5053, align 4
  br label %if.end.5120

if.else.5054:                                     ; preds = %if.then.5019
  %2757 = load i32, i32* %apos, align 4
  %arraydecay5057 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5058 = call i32 @findstones(i32 %2757, i32 361, i32* %arraydecay5057)
  store i32 %call5058, i32* %num_stones, align 4
  store i32 0, i32* %r5056, align 4
  br label %for.cond.5059

for.cond.5059:                                    ; preds = %for.inc.5117, %if.else.5054
  %2758 = load i32, i32* %r5056, align 4
  %2759 = load i32, i32* %num_stones, align 4
  %cmp5060 = icmp slt i32 %2758, %2759
  br i1 %cmp5060, label %for.body.5062, label %for.end.5119

for.body.5062:                                    ; preds = %for.cond.5059
  %2760 = load i32, i32* %r5056, align 4
  %idxprom5063 = sext i32 %2760 to i64
  %arrayidx5064 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5063
  %2761 = load i32, i32* %arrayidx5064, align 4
  %idxprom5065 = sext i32 %2761 to i64
  %2762 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5066 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2762, i32 0, i32 0
  %arrayidx5067 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5066, i32 0, i64 %idxprom5065
  %2763 = load i32, i32* %arrayidx5067, align 4
  %cmp5068 = icmp eq i32 %2763, 100000
  br i1 %cmp5068, label %if.then.5070, label %if.end.5078

if.then.5070:                                     ; preds = %for.body.5062
  %2764 = load i32, i32* %r5056, align 4
  %idxprom5071 = sext i32 %2764 to i64
  %arrayidx5072 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5071
  %2765 = load i32, i32* %arrayidx5072, align 4
  %2766 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5073 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2766, i32 0, i32 7
  %2767 = load i32, i32* %queue_end5073, align 4
  %inc5074 = add nsw i32 %2767, 1
  store i32 %inc5074, i32* %queue_end5073, align 4
  %idxprom5075 = sext i32 %2767 to i64
  %2768 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5076 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2768, i32 0, i32 5
  %arrayidx5077 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5076, i32 0, i64 %idxprom5075
  store i32 %2765, i32* %arrayidx5077, align 4
  br label %if.end.5078

if.end.5078:                                      ; preds = %if.then.5070, %for.body.5062
  %2769 = load i32, i32* %distance, align 4
  %add5079 = add nsw i32 %2769, 100
  %2770 = load i32, i32* %r5056, align 4
  %idxprom5080 = sext i32 %2770 to i64
  %arrayidx5081 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5080
  %2771 = load i32, i32* %arrayidx5081, align 4
  %idxprom5082 = sext i32 %2771 to i64
  %2772 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5083 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2772, i32 0, i32 0
  %arrayidx5084 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5083, i32 0, i64 %idxprom5082
  store i32 %add5079, i32* %arrayidx5084, align 4
  %2773 = load i32, i32* %r5056, align 4
  %idxprom5085 = sext i32 %2773 to i64
  %arrayidx5086 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5085
  %2774 = load i32, i32* %arrayidx5086, align 4
  %idxprom5087 = sext i32 %2774 to i64
  %2775 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5088 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2775, i32 0, i32 1
  %arrayidx5089 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5088, i32 0, i64 %idxprom5087
  store i32 100, i32* %arrayidx5089, align 4
  %2776 = load i32, i32* %pos, align 4
  %2777 = load i32, i32* %r5056, align 4
  %idxprom5090 = sext i32 %2777 to i64
  %arrayidx5091 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5090
  %2778 = load i32, i32* %arrayidx5091, align 4
  %idxprom5092 = sext i32 %2778 to i64
  %2779 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5093 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2779, i32 0, i32 2
  %arrayidx5094 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5093, i32 0, i64 %idxprom5092
  store i32 %2776, i32* %arrayidx5094, align 4
  %2780 = load i32, i32* %r5056, align 4
  %idxprom5095 = sext i32 %2780 to i64
  %arrayidx5096 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5095
  %2781 = load i32, i32* %arrayidx5096, align 4
  %idxprom5097 = sext i32 %2781 to i64
  %2782 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15098 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2782, i32 0, i32 3
  %arrayidx5099 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15098, i32 0, i64 %idxprom5097
  store i32 0, i32* %arrayidx5099, align 4
  %2783 = load i32, i32* %r5056, align 4
  %idxprom5100 = sext i32 %2783 to i64
  %arrayidx5101 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5100
  %2784 = load i32, i32* %arrayidx5101, align 4
  %idxprom5102 = sext i32 %2784 to i64
  %2785 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25103 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2785, i32 0, i32 4
  %arrayidx5104 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25103, i32 0, i64 %idxprom5102
  store i32 0, i32* %arrayidx5104, align 4
  %2786 = load i32, i32* %r5056, align 4
  %idxprom5105 = sext i32 %2786 to i64
  %arrayidx5106 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5105
  %2787 = load i32, i32* %arrayidx5106, align 4
  %2788 = load i32, i32* %target.addr, align 4
  %cmp5107 = icmp eq i32 %2787, %2788
  br i1 %cmp5107, label %land.lhs.true.5109, label %if.end.5116

land.lhs.true.5109:                               ; preds = %if.end.5078
  %2789 = load i32, i32* %distance, align 4
  %add5110 = add nsw i32 %2789, 100
  %2790 = load i32, i32* %cutoff_distance, align 4
  %cmp5111 = icmp slt i32 %add5110, %2790
  br i1 %cmp5111, label %if.then.5113, label %if.end.5116

if.then.5113:                                     ; preds = %land.lhs.true.5109
  %2791 = load i32, i32* %distance, align 4
  %add5114 = add nsw i32 %2791, 100
  %sub5115 = sub nsw i32 %add5114, 1
  store i32 %sub5115, i32* %cutoff_distance, align 4
  br label %if.end.5116

if.end.5116:                                      ; preds = %if.then.5113, %land.lhs.true.5109, %if.end.5078
  br label %for.inc.5117

for.inc.5117:                                     ; preds = %if.end.5116
  %2792 = load i32, i32* %r5056, align 4
  %inc5118 = add nsw i32 %2792, 1
  store i32 %inc5118, i32* %r5056, align 4
  br label %for.cond.5059

for.end.5119:                                     ; preds = %for.cond.5059
  br label %if.end.5120

if.end.5120:                                      ; preds = %for.end.5119, %if.end.5037
  br label %if.end.5121

if.end.5121:                                      ; preds = %if.end.5120, %do.body.5012
  br label %do.end.5122

do.end.5122:                                      ; preds = %if.end.5121
  br label %if.end.5123

if.end.5123:                                      ; preds = %do.end.5122, %land.lhs.true.5008, %land.lhs.true.5001, %if.end.4995
  %2793 = load i32, i32* %apos, align 4
  %idxprom5124 = sext i32 %2793 to i64
  %arrayidx5125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5124
  %2794 = load i8, i8* %arrayidx5125, align 1
  %conv5126 = zext i8 %2794 to i32
  %2795 = load i32, i32* %other, align 4
  %cmp5127 = icmp eq i32 %conv5126, %2795
  br i1 %cmp5127, label %land.lhs.true.5129, label %if.end.5251

land.lhs.true.5129:                               ; preds = %if.end.5123
  %2796 = load i32, i32* %apos, align 4
  %idxprom5130 = sext i32 %2796 to i64
  %2797 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5131 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2797, i32 0, i32 0
  %arrayidx5132 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5131, i32 0, i64 %idxprom5130
  %2798 = load i32, i32* %arrayidx5132, align 4
  %2799 = load i32, i32* %distance, align 4
  %add5133 = add nsw i32 %2799, 300
  %cmp5134 = icmp sgt i32 %2798, %add5133
  br i1 %cmp5134, label %land.lhs.true.5136, label %if.end.5251

land.lhs.true.5136:                               ; preds = %land.lhs.true.5129
  %2800 = load i32, i32* %apos, align 4
  %call5137 = call i32 @no_escape_from_ladder(i32 %2800)
  %tobool5138 = icmp ne i32 %call5137, 0
  br i1 %tobool5138, label %if.then.5139, label %if.end.5251

if.then.5139:                                     ; preds = %land.lhs.true.5136
  br label %do.body.5140

do.body.5140:                                     ; preds = %if.then.5139
  %2801 = load i32, i32* %distance, align 4
  %add5141 = add nsw i32 %2801, 300
  %2802 = load i32, i32* %apos, align 4
  %idxprom5142 = sext i32 %2802 to i64
  %2803 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5143 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2803, i32 0, i32 0
  %arrayidx5144 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5143, i32 0, i64 %idxprom5142
  %2804 = load i32, i32* %arrayidx5144, align 4
  %cmp5145 = icmp slt i32 %add5141, %2804
  br i1 %cmp5145, label %if.then.5147, label %if.end.5249

if.then.5147:                                     ; preds = %do.body.5140
  %2805 = load i32, i32* %apos, align 4
  %idxprom5148 = sext i32 %2805 to i64
  %arrayidx5149 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5148
  %2806 = load i8, i8* %arrayidx5149, align 1
  %conv5150 = zext i8 %2806 to i32
  %cmp5151 = icmp eq i32 %conv5150, 0
  br i1 %cmp5151, label %if.then.5153, label %if.else.5182

if.then.5153:                                     ; preds = %if.then.5147
  %2807 = load i32, i32* %apos, align 4
  %idxprom5154 = sext i32 %2807 to i64
  %2808 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5155 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2808, i32 0, i32 0
  %arrayidx5156 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5155, i32 0, i64 %idxprom5154
  %2809 = load i32, i32* %arrayidx5156, align 4
  %cmp5157 = icmp eq i32 %2809, 100000
  br i1 %cmp5157, label %if.then.5159, label %if.end.5165

if.then.5159:                                     ; preds = %if.then.5153
  %2810 = load i32, i32* %apos, align 4
  %2811 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5160 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2811, i32 0, i32 7
  %2812 = load i32, i32* %queue_end5160, align 4
  %inc5161 = add nsw i32 %2812, 1
  store i32 %inc5161, i32* %queue_end5160, align 4
  %idxprom5162 = sext i32 %2812 to i64
  %2813 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5163 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2813, i32 0, i32 5
  %arrayidx5164 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5163, i32 0, i64 %idxprom5162
  store i32 %2810, i32* %arrayidx5164, align 4
  br label %if.end.5165

if.end.5165:                                      ; preds = %if.then.5159, %if.then.5153
  %2814 = load i32, i32* %distance, align 4
  %add5166 = add nsw i32 %2814, 300
  %2815 = load i32, i32* %apos, align 4
  %idxprom5167 = sext i32 %2815 to i64
  %2816 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5168 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2816, i32 0, i32 0
  %arrayidx5169 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5168, i32 0, i64 %idxprom5167
  store i32 %add5166, i32* %arrayidx5169, align 4
  %2817 = load i32, i32* %apos, align 4
  %idxprom5170 = sext i32 %2817 to i64
  %2818 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5171 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2818, i32 0, i32 1
  %arrayidx5172 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5171, i32 0, i64 %idxprom5170
  store i32 300, i32* %arrayidx5172, align 4
  %2819 = load i32, i32* %pos, align 4
  %2820 = load i32, i32* %apos, align 4
  %idxprom5173 = sext i32 %2820 to i64
  %2821 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5174 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2821, i32 0, i32 2
  %arrayidx5175 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5174, i32 0, i64 %idxprom5173
  store i32 %2819, i32* %arrayidx5175, align 4
  %2822 = load i32, i32* %apos, align 4
  %idxprom5176 = sext i32 %2822 to i64
  %2823 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15177 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2823, i32 0, i32 3
  %arrayidx5178 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15177, i32 0, i64 %idxprom5176
  store i32 0, i32* %arrayidx5178, align 4
  %2824 = load i32, i32* %apos, align 4
  %idxprom5179 = sext i32 %2824 to i64
  %2825 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25180 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2825, i32 0, i32 4
  %arrayidx5181 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25180, i32 0, i64 %idxprom5179
  store i32 0, i32* %arrayidx5181, align 4
  br label %if.end.5248

if.else.5182:                                     ; preds = %if.then.5147
  %2826 = load i32, i32* %apos, align 4
  %arraydecay5185 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5186 = call i32 @findstones(i32 %2826, i32 361, i32* %arraydecay5185)
  store i32 %call5186, i32* %num_stones, align 4
  store i32 0, i32* %r5184, align 4
  br label %for.cond.5187

for.cond.5187:                                    ; preds = %for.inc.5245, %if.else.5182
  %2827 = load i32, i32* %r5184, align 4
  %2828 = load i32, i32* %num_stones, align 4
  %cmp5188 = icmp slt i32 %2827, %2828
  br i1 %cmp5188, label %for.body.5190, label %for.end.5247

for.body.5190:                                    ; preds = %for.cond.5187
  %2829 = load i32, i32* %r5184, align 4
  %idxprom5191 = sext i32 %2829 to i64
  %arrayidx5192 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5191
  %2830 = load i32, i32* %arrayidx5192, align 4
  %idxprom5193 = sext i32 %2830 to i64
  %2831 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5194 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2831, i32 0, i32 0
  %arrayidx5195 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5194, i32 0, i64 %idxprom5193
  %2832 = load i32, i32* %arrayidx5195, align 4
  %cmp5196 = icmp eq i32 %2832, 100000
  br i1 %cmp5196, label %if.then.5198, label %if.end.5206

if.then.5198:                                     ; preds = %for.body.5190
  %2833 = load i32, i32* %r5184, align 4
  %idxprom5199 = sext i32 %2833 to i64
  %arrayidx5200 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5199
  %2834 = load i32, i32* %arrayidx5200, align 4
  %2835 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5201 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2835, i32 0, i32 7
  %2836 = load i32, i32* %queue_end5201, align 4
  %inc5202 = add nsw i32 %2836, 1
  store i32 %inc5202, i32* %queue_end5201, align 4
  %idxprom5203 = sext i32 %2836 to i64
  %2837 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2837, i32 0, i32 5
  %arrayidx5205 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5204, i32 0, i64 %idxprom5203
  store i32 %2834, i32* %arrayidx5205, align 4
  br label %if.end.5206

if.end.5206:                                      ; preds = %if.then.5198, %for.body.5190
  %2838 = load i32, i32* %distance, align 4
  %add5207 = add nsw i32 %2838, 300
  %2839 = load i32, i32* %r5184, align 4
  %idxprom5208 = sext i32 %2839 to i64
  %arrayidx5209 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5208
  %2840 = load i32, i32* %arrayidx5209, align 4
  %idxprom5210 = sext i32 %2840 to i64
  %2841 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5211 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2841, i32 0, i32 0
  %arrayidx5212 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5211, i32 0, i64 %idxprom5210
  store i32 %add5207, i32* %arrayidx5212, align 4
  %2842 = load i32, i32* %r5184, align 4
  %idxprom5213 = sext i32 %2842 to i64
  %arrayidx5214 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5213
  %2843 = load i32, i32* %arrayidx5214, align 4
  %idxprom5215 = sext i32 %2843 to i64
  %2844 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5216 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2844, i32 0, i32 1
  %arrayidx5217 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5216, i32 0, i64 %idxprom5215
  store i32 300, i32* %arrayidx5217, align 4
  %2845 = load i32, i32* %pos, align 4
  %2846 = load i32, i32* %r5184, align 4
  %idxprom5218 = sext i32 %2846 to i64
  %arrayidx5219 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5218
  %2847 = load i32, i32* %arrayidx5219, align 4
  %idxprom5220 = sext i32 %2847 to i64
  %2848 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5221 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2848, i32 0, i32 2
  %arrayidx5222 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5221, i32 0, i64 %idxprom5220
  store i32 %2845, i32* %arrayidx5222, align 4
  %2849 = load i32, i32* %r5184, align 4
  %idxprom5223 = sext i32 %2849 to i64
  %arrayidx5224 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5223
  %2850 = load i32, i32* %arrayidx5224, align 4
  %idxprom5225 = sext i32 %2850 to i64
  %2851 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15226 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2851, i32 0, i32 3
  %arrayidx5227 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15226, i32 0, i64 %idxprom5225
  store i32 0, i32* %arrayidx5227, align 4
  %2852 = load i32, i32* %r5184, align 4
  %idxprom5228 = sext i32 %2852 to i64
  %arrayidx5229 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5228
  %2853 = load i32, i32* %arrayidx5229, align 4
  %idxprom5230 = sext i32 %2853 to i64
  %2854 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25231 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2854, i32 0, i32 4
  %arrayidx5232 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25231, i32 0, i64 %idxprom5230
  store i32 0, i32* %arrayidx5232, align 4
  %2855 = load i32, i32* %r5184, align 4
  %idxprom5233 = sext i32 %2855 to i64
  %arrayidx5234 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5233
  %2856 = load i32, i32* %arrayidx5234, align 4
  %2857 = load i32, i32* %target.addr, align 4
  %cmp5235 = icmp eq i32 %2856, %2857
  br i1 %cmp5235, label %land.lhs.true.5237, label %if.end.5244

land.lhs.true.5237:                               ; preds = %if.end.5206
  %2858 = load i32, i32* %distance, align 4
  %add5238 = add nsw i32 %2858, 300
  %2859 = load i32, i32* %cutoff_distance, align 4
  %cmp5239 = icmp slt i32 %add5238, %2859
  br i1 %cmp5239, label %if.then.5241, label %if.end.5244

if.then.5241:                                     ; preds = %land.lhs.true.5237
  %2860 = load i32, i32* %distance, align 4
  %add5242 = add nsw i32 %2860, 300
  %sub5243 = sub nsw i32 %add5242, 1
  store i32 %sub5243, i32* %cutoff_distance, align 4
  br label %if.end.5244

if.end.5244:                                      ; preds = %if.then.5241, %land.lhs.true.5237, %if.end.5206
  br label %for.inc.5245

for.inc.5245:                                     ; preds = %if.end.5244
  %2861 = load i32, i32* %r5184, align 4
  %inc5246 = add nsw i32 %2861, 1
  store i32 %inc5246, i32* %r5184, align 4
  br label %for.cond.5187

for.end.5247:                                     ; preds = %for.cond.5187
  br label %if.end.5248

if.end.5248:                                      ; preds = %for.end.5247, %if.end.5165
  br label %if.end.5249

if.end.5249:                                      ; preds = %if.end.5248, %do.body.5140
  br label %do.end.5250

do.end.5250:                                      ; preds = %if.end.5249
  br label %if.end.5251

if.end.5251:                                      ; preds = %do.end.5250, %land.lhs.true.5136, %land.lhs.true.5129, %if.end.5123
  br label %for.inc.5252

for.inc.5252:                                     ; preds = %if.end.5251
  %2862 = load i32, i32* %k, align 4
  %inc5253 = add nsw i32 %2862, 1
  store i32 %inc5253, i32* %k, align 4
  br label %for.cond.208

for.end.5254:                                     ; preds = %for.cond.208
  br label %if.end.5821

if.else.5255:                                     ; preds = %if.end.201
  %2863 = load i32, i32* %pos, align 4
  %idxprom5256 = sext i32 %2863 to i64
  %arrayidx5257 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5256
  %2864 = load i8, i8* %arrayidx5257, align 1
  %conv5258 = zext i8 %2864 to i32
  %cmp5259 = icmp eq i32 %conv5258, 0
  br i1 %cmp5259, label %if.then.5274, label %lor.lhs.false.5261

lor.lhs.false.5261:                               ; preds = %if.else.5255
  %2865 = load i32, i32* %pos, align 4
  %idxprom5262 = sext i32 %2865 to i64
  %arrayidx5263 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5262
  %2866 = load i8, i8* %arrayidx5263, align 1
  %conv5264 = zext i8 %2866 to i32
  %2867 = load i32, i32* %other, align 4
  %cmp5265 = icmp eq i32 %conv5264, %2867
  br i1 %cmp5265, label %land.lhs.true.5267, label %if.end.5820

land.lhs.true.5267:                               ; preds = %lor.lhs.false.5261
  %2868 = load i32, i32* %pos, align 4
  %call5268 = call i32 @no_escape_from_ladder(i32 %2868)
  %tobool5269 = icmp ne i32 %call5268, 0
  br i1 %tobool5269, label %land.lhs.true.5270, label %if.end.5820

land.lhs.true.5270:                               ; preds = %land.lhs.true.5267
  %2869 = load i32, i32* %pos, align 4
  %call5271 = call i32 @countlib(i32 %2869)
  %cmp5272 = icmp sle i32 %call5271, 2
  br i1 %cmp5272, label %if.then.5274, label %if.end.5820

if.then.5274:                                     ; preds = %land.lhs.true.5270, %if.else.5255
  store i32 0, i32* %k, align 4
  br label %for.cond.5275

for.cond.5275:                                    ; preds = %for.inc.5817, %if.then.5274
  %2870 = load i32, i32* %k, align 4
  %cmp5276 = icmp slt i32 %2870, 4
  br i1 %cmp5276, label %for.body.5278, label %for.end.5819

for.body.5278:                                    ; preds = %for.cond.5275
  %2871 = load i32, i32* %k, align 4
  %idxprom5281 = sext i32 %2871 to i64
  %arrayidx5282 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom5281
  %2872 = load i32, i32* %arrayidx5282, align 4
  store i32 %2872, i32* %right5280, align 4
  %2873 = load i32, i32* %k, align 4
  %add5285 = add nsw i32 %2873, 1
  %rem5286 = srem i32 %add5285, 4
  %idxprom5287 = sext i32 %rem5286 to i64
  %arrayidx5288 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom5287
  %2874 = load i32, i32* %arrayidx5288, align 4
  store i32 %2874, i32* %up5284, align 4
  %2875 = load i32, i32* %pos, align 4
  %2876 = load i32, i32* %right5280, align 4
  %add5291 = add nsw i32 %2875, %2876
  store i32 %add5291, i32* %apos5290, align 4
  %2877 = load i32, i32* %pos, align 4
  %2878 = load i32, i32* %right5280, align 4
  %add5294 = add nsw i32 %2877, %2878
  %2879 = load i32, i32* %up5284, align 4
  %add5295 = add nsw i32 %add5294, %2879
  store i32 %add5295, i32* %bpos5293, align 4
  %2880 = load i32, i32* %pos, align 4
  %2881 = load i32, i32* %up5284, align 4
  %add5298 = add nsw i32 %2880, %2881
  store i32 %add5298, i32* %gpos5297, align 4
  %2882 = load i32, i32* %apos5290, align 4
  %idxprom5299 = sext i32 %2882 to i64
  %arrayidx5300 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5299
  %2883 = load i8, i8* %arrayidx5300, align 1
  %conv5301 = zext i8 %2883 to i32
  %2884 = load i32, i32* %color, align 4
  %cmp5302 = icmp eq i32 %conv5301, %2884
  br i1 %cmp5302, label %if.then.5304, label %if.else.5423

if.then.5304:                                     ; preds = %for.body.5278
  br label %do.body.5305

do.body.5305:                                     ; preds = %if.then.5304
  %2885 = load i32, i32* %distance, align 4
  %2886 = load i32, i32* %apos5290, align 4
  %idxprom5306 = sext i32 %2886 to i64
  %2887 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5307 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2887, i32 0, i32 0
  %arrayidx5308 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5307, i32 0, i64 %idxprom5306
  %2888 = load i32, i32* %arrayidx5308, align 4
  %cmp5309 = icmp slt i32 %2885, %2888
  br i1 %cmp5309, label %if.then.5311, label %if.end.5421

if.then.5311:                                     ; preds = %do.body.5305
  %2889 = load i32, i32* %apos5290, align 4
  %idxprom5312 = sext i32 %2889 to i64
  %arrayidx5313 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5312
  %2890 = load i8, i8* %arrayidx5313, align 1
  %conv5314 = zext i8 %2890 to i32
  %cmp5315 = icmp eq i32 %conv5314, 0
  br i1 %cmp5315, label %if.then.5317, label %if.else.5351

if.then.5317:                                     ; preds = %if.then.5311
  %2891 = load i32, i32* %apos5290, align 4
  %idxprom5318 = sext i32 %2891 to i64
  %2892 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5319 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2892, i32 0, i32 0
  %arrayidx5320 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5319, i32 0, i64 %idxprom5318
  %2893 = load i32, i32* %arrayidx5320, align 4
  %cmp5321 = icmp eq i32 %2893, 100000
  br i1 %cmp5321, label %if.then.5323, label %if.end.5329

if.then.5323:                                     ; preds = %if.then.5317
  %2894 = load i32, i32* %apos5290, align 4
  %2895 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5324 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2895, i32 0, i32 7
  %2896 = load i32, i32* %queue_end5324, align 4
  %inc5325 = add nsw i32 %2896, 1
  store i32 %inc5325, i32* %queue_end5324, align 4
  %idxprom5326 = sext i32 %2896 to i64
  %2897 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5327 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2897, i32 0, i32 5
  %arrayidx5328 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5327, i32 0, i64 %idxprom5326
  store i32 %2894, i32* %arrayidx5328, align 4
  br label %if.end.5329

if.end.5329:                                      ; preds = %if.then.5323, %if.then.5317
  %2898 = load i32, i32* %distance, align 4
  %2899 = load i32, i32* %apos5290, align 4
  %idxprom5330 = sext i32 %2899 to i64
  %2900 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5331 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2900, i32 0, i32 0
  %arrayidx5332 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5331, i32 0, i64 %idxprom5330
  store i32 %2898, i32* %arrayidx5332, align 4
  %2901 = load i32, i32* %apos5290, align 4
  %idxprom5333 = sext i32 %2901 to i64
  %2902 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5334 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2902, i32 0, i32 1
  %arrayidx5335 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5334, i32 0, i64 %idxprom5333
  store i32 0, i32* %arrayidx5335, align 4
  %2903 = load i32, i32* %pos, align 4
  %2904 = load i32, i32* %apos5290, align 4
  %idxprom5336 = sext i32 %2904 to i64
  %2905 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5337 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2905, i32 0, i32 2
  %arrayidx5338 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5337, i32 0, i64 %idxprom5336
  store i32 %2903, i32* %arrayidx5338, align 4
  %2906 = load i32, i32* %pos, align 4
  %idxprom5339 = sext i32 %2906 to i64
  %2907 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15340 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2907, i32 0, i32 3
  %arrayidx5341 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15340, i32 0, i64 %idxprom5339
  %2908 = load i32, i32* %arrayidx5341, align 4
  %2909 = load i32, i32* %apos5290, align 4
  %idxprom5342 = sext i32 %2909 to i64
  %2910 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15343 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2910, i32 0, i32 3
  %arrayidx5344 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15343, i32 0, i64 %idxprom5342
  store i32 %2908, i32* %arrayidx5344, align 4
  %2911 = load i32, i32* %pos, align 4
  %idxprom5345 = sext i32 %2911 to i64
  %2912 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25346 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2912, i32 0, i32 4
  %arrayidx5347 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25346, i32 0, i64 %idxprom5345
  %2913 = load i32, i32* %arrayidx5347, align 4
  %2914 = load i32, i32* %apos5290, align 4
  %idxprom5348 = sext i32 %2914 to i64
  %2915 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25349 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2915, i32 0, i32 4
  %arrayidx5350 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25349, i32 0, i64 %idxprom5348
  store i32 %2913, i32* %arrayidx5350, align 4
  br label %if.end.5420

if.else.5351:                                     ; preds = %if.then.5311
  %2916 = load i32, i32* %apos5290, align 4
  %arraydecay5354 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5355 = call i32 @findstones(i32 %2916, i32 361, i32* %arraydecay5354)
  store i32 %call5355, i32* %num_stones, align 4
  store i32 0, i32* %r5353, align 4
  br label %for.cond.5356

for.cond.5356:                                    ; preds = %for.inc.5417, %if.else.5351
  %2917 = load i32, i32* %r5353, align 4
  %2918 = load i32, i32* %num_stones, align 4
  %cmp5357 = icmp slt i32 %2917, %2918
  br i1 %cmp5357, label %for.body.5359, label %for.end.5419

for.body.5359:                                    ; preds = %for.cond.5356
  %2919 = load i32, i32* %r5353, align 4
  %idxprom5360 = sext i32 %2919 to i64
  %arrayidx5361 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5360
  %2920 = load i32, i32* %arrayidx5361, align 4
  %idxprom5362 = sext i32 %2920 to i64
  %2921 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5363 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2921, i32 0, i32 0
  %arrayidx5364 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5363, i32 0, i64 %idxprom5362
  %2922 = load i32, i32* %arrayidx5364, align 4
  %cmp5365 = icmp eq i32 %2922, 100000
  br i1 %cmp5365, label %if.then.5367, label %if.end.5375

if.then.5367:                                     ; preds = %for.body.5359
  %2923 = load i32, i32* %r5353, align 4
  %idxprom5368 = sext i32 %2923 to i64
  %arrayidx5369 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5368
  %2924 = load i32, i32* %arrayidx5369, align 4
  %2925 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5370 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2925, i32 0, i32 7
  %2926 = load i32, i32* %queue_end5370, align 4
  %inc5371 = add nsw i32 %2926, 1
  store i32 %inc5371, i32* %queue_end5370, align 4
  %idxprom5372 = sext i32 %2926 to i64
  %2927 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5373 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2927, i32 0, i32 5
  %arrayidx5374 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5373, i32 0, i64 %idxprom5372
  store i32 %2924, i32* %arrayidx5374, align 4
  br label %if.end.5375

if.end.5375:                                      ; preds = %if.then.5367, %for.body.5359
  %2928 = load i32, i32* %distance, align 4
  %2929 = load i32, i32* %r5353, align 4
  %idxprom5376 = sext i32 %2929 to i64
  %arrayidx5377 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5376
  %2930 = load i32, i32* %arrayidx5377, align 4
  %idxprom5378 = sext i32 %2930 to i64
  %2931 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5379 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2931, i32 0, i32 0
  %arrayidx5380 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5379, i32 0, i64 %idxprom5378
  store i32 %2928, i32* %arrayidx5380, align 4
  %2932 = load i32, i32* %r5353, align 4
  %idxprom5381 = sext i32 %2932 to i64
  %arrayidx5382 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5381
  %2933 = load i32, i32* %arrayidx5382, align 4
  %idxprom5383 = sext i32 %2933 to i64
  %2934 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5384 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2934, i32 0, i32 1
  %arrayidx5385 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5384, i32 0, i64 %idxprom5383
  store i32 0, i32* %arrayidx5385, align 4
  %2935 = load i32, i32* %pos, align 4
  %2936 = load i32, i32* %r5353, align 4
  %idxprom5386 = sext i32 %2936 to i64
  %arrayidx5387 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5386
  %2937 = load i32, i32* %arrayidx5387, align 4
  %idxprom5388 = sext i32 %2937 to i64
  %2938 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5389 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2938, i32 0, i32 2
  %arrayidx5390 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5389, i32 0, i64 %idxprom5388
  store i32 %2935, i32* %arrayidx5390, align 4
  %2939 = load i32, i32* %pos, align 4
  %idxprom5391 = sext i32 %2939 to i64
  %2940 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15392 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2940, i32 0, i32 3
  %arrayidx5393 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15392, i32 0, i64 %idxprom5391
  %2941 = load i32, i32* %arrayidx5393, align 4
  %2942 = load i32, i32* %r5353, align 4
  %idxprom5394 = sext i32 %2942 to i64
  %arrayidx5395 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5394
  %2943 = load i32, i32* %arrayidx5395, align 4
  %idxprom5396 = sext i32 %2943 to i64
  %2944 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15397 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2944, i32 0, i32 3
  %arrayidx5398 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15397, i32 0, i64 %idxprom5396
  store i32 %2941, i32* %arrayidx5398, align 4
  %2945 = load i32, i32* %pos, align 4
  %idxprom5399 = sext i32 %2945 to i64
  %2946 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25400 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2946, i32 0, i32 4
  %arrayidx5401 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25400, i32 0, i64 %idxprom5399
  %2947 = load i32, i32* %arrayidx5401, align 4
  %2948 = load i32, i32* %r5353, align 4
  %idxprom5402 = sext i32 %2948 to i64
  %arrayidx5403 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5402
  %2949 = load i32, i32* %arrayidx5403, align 4
  %idxprom5404 = sext i32 %2949 to i64
  %2950 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25405 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2950, i32 0, i32 4
  %arrayidx5406 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25405, i32 0, i64 %idxprom5404
  store i32 %2947, i32* %arrayidx5406, align 4
  %2951 = load i32, i32* %r5353, align 4
  %idxprom5407 = sext i32 %2951 to i64
  %arrayidx5408 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5407
  %2952 = load i32, i32* %arrayidx5408, align 4
  %2953 = load i32, i32* %target.addr, align 4
  %cmp5409 = icmp eq i32 %2952, %2953
  br i1 %cmp5409, label %land.lhs.true.5411, label %if.end.5416

land.lhs.true.5411:                               ; preds = %if.end.5375
  %2954 = load i32, i32* %distance, align 4
  %2955 = load i32, i32* %cutoff_distance, align 4
  %cmp5412 = icmp slt i32 %2954, %2955
  br i1 %cmp5412, label %if.then.5414, label %if.end.5416

if.then.5414:                                     ; preds = %land.lhs.true.5411
  %2956 = load i32, i32* %distance, align 4
  %sub5415 = sub nsw i32 %2956, 1
  store i32 %sub5415, i32* %cutoff_distance, align 4
  br label %if.end.5416

if.end.5416:                                      ; preds = %if.then.5414, %land.lhs.true.5411, %if.end.5375
  br label %for.inc.5417

for.inc.5417:                                     ; preds = %if.end.5416
  %2957 = load i32, i32* %r5353, align 4
  %inc5418 = add nsw i32 %2957, 1
  store i32 %inc5418, i32* %r5353, align 4
  br label %for.cond.5356

for.end.5419:                                     ; preds = %for.cond.5356
  br label %if.end.5420

if.end.5420:                                      ; preds = %for.end.5419, %if.end.5329
  br label %if.end.5421

if.end.5421:                                      ; preds = %if.end.5420, %do.body.5305
  br label %do.end.5422

do.end.5422:                                      ; preds = %if.end.5421
  br label %if.end.5542

if.else.5423:                                     ; preds = %for.body.5278
  %2958 = load i32, i32* %apos5290, align 4
  %idxprom5424 = sext i32 %2958 to i64
  %arrayidx5425 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5424
  %2959 = load i8, i8* %arrayidx5425, align 1
  %conv5426 = zext i8 %2959 to i32
  %cmp5427 = icmp ne i32 %conv5426, 3
  br i1 %cmp5427, label %if.then.5429, label %if.end.5541

if.then.5429:                                     ; preds = %if.else.5423
  br label %do.body.5430

do.body.5430:                                     ; preds = %if.then.5429
  %2960 = load i32, i32* %distance, align 4
  %add5431 = add nsw i32 %2960, 1000
  %2961 = load i32, i32* %apos5290, align 4
  %idxprom5432 = sext i32 %2961 to i64
  %2962 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5433 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2962, i32 0, i32 0
  %arrayidx5434 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5433, i32 0, i64 %idxprom5432
  %2963 = load i32, i32* %arrayidx5434, align 4
  %cmp5435 = icmp slt i32 %add5431, %2963
  br i1 %cmp5435, label %if.then.5437, label %if.end.5539

if.then.5437:                                     ; preds = %do.body.5430
  %2964 = load i32, i32* %apos5290, align 4
  %idxprom5438 = sext i32 %2964 to i64
  %arrayidx5439 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5438
  %2965 = load i8, i8* %arrayidx5439, align 1
  %conv5440 = zext i8 %2965 to i32
  %cmp5441 = icmp eq i32 %conv5440, 0
  br i1 %cmp5441, label %if.then.5443, label %if.else.5472

if.then.5443:                                     ; preds = %if.then.5437
  %2966 = load i32, i32* %apos5290, align 4
  %idxprom5444 = sext i32 %2966 to i64
  %2967 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5445 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2967, i32 0, i32 0
  %arrayidx5446 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5445, i32 0, i64 %idxprom5444
  %2968 = load i32, i32* %arrayidx5446, align 4
  %cmp5447 = icmp eq i32 %2968, 100000
  br i1 %cmp5447, label %if.then.5449, label %if.end.5455

if.then.5449:                                     ; preds = %if.then.5443
  %2969 = load i32, i32* %apos5290, align 4
  %2970 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5450 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2970, i32 0, i32 7
  %2971 = load i32, i32* %queue_end5450, align 4
  %inc5451 = add nsw i32 %2971, 1
  store i32 %inc5451, i32* %queue_end5450, align 4
  %idxprom5452 = sext i32 %2971 to i64
  %2972 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5453 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2972, i32 0, i32 5
  %arrayidx5454 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5453, i32 0, i64 %idxprom5452
  store i32 %2969, i32* %arrayidx5454, align 4
  br label %if.end.5455

if.end.5455:                                      ; preds = %if.then.5449, %if.then.5443
  %2973 = load i32, i32* %distance, align 4
  %add5456 = add nsw i32 %2973, 1000
  %2974 = load i32, i32* %apos5290, align 4
  %idxprom5457 = sext i32 %2974 to i64
  %2975 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5458 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2975, i32 0, i32 0
  %arrayidx5459 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5458, i32 0, i64 %idxprom5457
  store i32 %add5456, i32* %arrayidx5459, align 4
  %2976 = load i32, i32* %apos5290, align 4
  %idxprom5460 = sext i32 %2976 to i64
  %2977 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5461 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2977, i32 0, i32 1
  %arrayidx5462 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5461, i32 0, i64 %idxprom5460
  store i32 1000, i32* %arrayidx5462, align 4
  %2978 = load i32, i32* %pos, align 4
  %2979 = load i32, i32* %apos5290, align 4
  %idxprom5463 = sext i32 %2979 to i64
  %2980 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5464 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2980, i32 0, i32 2
  %arrayidx5465 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5464, i32 0, i64 %idxprom5463
  store i32 %2978, i32* %arrayidx5465, align 4
  %2981 = load i32, i32* %apos5290, align 4
  %idxprom5466 = sext i32 %2981 to i64
  %2982 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15467 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2982, i32 0, i32 3
  %arrayidx5468 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15467, i32 0, i64 %idxprom5466
  store i32 0, i32* %arrayidx5468, align 4
  %2983 = load i32, i32* %apos5290, align 4
  %idxprom5469 = sext i32 %2983 to i64
  %2984 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25470 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2984, i32 0, i32 4
  %arrayidx5471 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25470, i32 0, i64 %idxprom5469
  store i32 0, i32* %arrayidx5471, align 4
  br label %if.end.5538

if.else.5472:                                     ; preds = %if.then.5437
  %2985 = load i32, i32* %apos5290, align 4
  %arraydecay5475 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5476 = call i32 @findstones(i32 %2985, i32 361, i32* %arraydecay5475)
  store i32 %call5476, i32* %num_stones, align 4
  store i32 0, i32* %r5474, align 4
  br label %for.cond.5477

for.cond.5477:                                    ; preds = %for.inc.5535, %if.else.5472
  %2986 = load i32, i32* %r5474, align 4
  %2987 = load i32, i32* %num_stones, align 4
  %cmp5478 = icmp slt i32 %2986, %2987
  br i1 %cmp5478, label %for.body.5480, label %for.end.5537

for.body.5480:                                    ; preds = %for.cond.5477
  %2988 = load i32, i32* %r5474, align 4
  %idxprom5481 = sext i32 %2988 to i64
  %arrayidx5482 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5481
  %2989 = load i32, i32* %arrayidx5482, align 4
  %idxprom5483 = sext i32 %2989 to i64
  %2990 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5484 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2990, i32 0, i32 0
  %arrayidx5485 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5484, i32 0, i64 %idxprom5483
  %2991 = load i32, i32* %arrayidx5485, align 4
  %cmp5486 = icmp eq i32 %2991, 100000
  br i1 %cmp5486, label %if.then.5488, label %if.end.5496

if.then.5488:                                     ; preds = %for.body.5480
  %2992 = load i32, i32* %r5474, align 4
  %idxprom5489 = sext i32 %2992 to i64
  %arrayidx5490 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5489
  %2993 = load i32, i32* %arrayidx5490, align 4
  %2994 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5491 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2994, i32 0, i32 7
  %2995 = load i32, i32* %queue_end5491, align 4
  %inc5492 = add nsw i32 %2995, 1
  store i32 %inc5492, i32* %queue_end5491, align 4
  %idxprom5493 = sext i32 %2995 to i64
  %2996 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5494 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2996, i32 0, i32 5
  %arrayidx5495 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5494, i32 0, i64 %idxprom5493
  store i32 %2993, i32* %arrayidx5495, align 4
  br label %if.end.5496

if.end.5496:                                      ; preds = %if.then.5488, %for.body.5480
  %2997 = load i32, i32* %distance, align 4
  %add5497 = add nsw i32 %2997, 1000
  %2998 = load i32, i32* %r5474, align 4
  %idxprom5498 = sext i32 %2998 to i64
  %arrayidx5499 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5498
  %2999 = load i32, i32* %arrayidx5499, align 4
  %idxprom5500 = sext i32 %2999 to i64
  %3000 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5501 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3000, i32 0, i32 0
  %arrayidx5502 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5501, i32 0, i64 %idxprom5500
  store i32 %add5497, i32* %arrayidx5502, align 4
  %3001 = load i32, i32* %r5474, align 4
  %idxprom5503 = sext i32 %3001 to i64
  %arrayidx5504 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5503
  %3002 = load i32, i32* %arrayidx5504, align 4
  %idxprom5505 = sext i32 %3002 to i64
  %3003 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5506 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3003, i32 0, i32 1
  %arrayidx5507 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5506, i32 0, i64 %idxprom5505
  store i32 1000, i32* %arrayidx5507, align 4
  %3004 = load i32, i32* %pos, align 4
  %3005 = load i32, i32* %r5474, align 4
  %idxprom5508 = sext i32 %3005 to i64
  %arrayidx5509 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5508
  %3006 = load i32, i32* %arrayidx5509, align 4
  %idxprom5510 = sext i32 %3006 to i64
  %3007 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5511 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3007, i32 0, i32 2
  %arrayidx5512 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5511, i32 0, i64 %idxprom5510
  store i32 %3004, i32* %arrayidx5512, align 4
  %3008 = load i32, i32* %r5474, align 4
  %idxprom5513 = sext i32 %3008 to i64
  %arrayidx5514 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5513
  %3009 = load i32, i32* %arrayidx5514, align 4
  %idxprom5515 = sext i32 %3009 to i64
  %3010 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15516 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3010, i32 0, i32 3
  %arrayidx5517 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15516, i32 0, i64 %idxprom5515
  store i32 0, i32* %arrayidx5517, align 4
  %3011 = load i32, i32* %r5474, align 4
  %idxprom5518 = sext i32 %3011 to i64
  %arrayidx5519 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5518
  %3012 = load i32, i32* %arrayidx5519, align 4
  %idxprom5520 = sext i32 %3012 to i64
  %3013 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25521 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3013, i32 0, i32 4
  %arrayidx5522 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25521, i32 0, i64 %idxprom5520
  store i32 0, i32* %arrayidx5522, align 4
  %3014 = load i32, i32* %r5474, align 4
  %idxprom5523 = sext i32 %3014 to i64
  %arrayidx5524 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5523
  %3015 = load i32, i32* %arrayidx5524, align 4
  %3016 = load i32, i32* %target.addr, align 4
  %cmp5525 = icmp eq i32 %3015, %3016
  br i1 %cmp5525, label %land.lhs.true.5527, label %if.end.5534

land.lhs.true.5527:                               ; preds = %if.end.5496
  %3017 = load i32, i32* %distance, align 4
  %add5528 = add nsw i32 %3017, 1000
  %3018 = load i32, i32* %cutoff_distance, align 4
  %cmp5529 = icmp slt i32 %add5528, %3018
  br i1 %cmp5529, label %if.then.5531, label %if.end.5534

if.then.5531:                                     ; preds = %land.lhs.true.5527
  %3019 = load i32, i32* %distance, align 4
  %add5532 = add nsw i32 %3019, 1000
  %sub5533 = sub nsw i32 %add5532, 1
  store i32 %sub5533, i32* %cutoff_distance, align 4
  br label %if.end.5534

if.end.5534:                                      ; preds = %if.then.5531, %land.lhs.true.5527, %if.end.5496
  br label %for.inc.5535

for.inc.5535:                                     ; preds = %if.end.5534
  %3020 = load i32, i32* %r5474, align 4
  %inc5536 = add nsw i32 %3020, 1
  store i32 %inc5536, i32* %r5474, align 4
  br label %for.cond.5477

for.end.5537:                                     ; preds = %for.cond.5477
  br label %if.end.5538

if.end.5538:                                      ; preds = %for.end.5537, %if.end.5455
  br label %if.end.5539

if.end.5539:                                      ; preds = %if.end.5538, %do.body.5430
  br label %do.end.5540

do.end.5540:                                      ; preds = %if.end.5539
  br label %if.end.5541

if.end.5541:                                      ; preds = %do.end.5540, %if.else.5423
  br label %if.end.5542

if.end.5542:                                      ; preds = %if.end.5541, %do.end.5422
  %3021 = load i32, i32* %bpos5293, align 4
  %idxprom5543 = sext i32 %3021 to i64
  %arrayidx5544 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5543
  %3022 = load i8, i8* %arrayidx5544, align 1
  %conv5545 = zext i8 %3022 to i32
  %cmp5546 = icmp eq i32 %conv5545, 0
  br i1 %cmp5546, label %land.lhs.true.5548, label %if.end.5679

land.lhs.true.5548:                               ; preds = %if.end.5542
  %3023 = load i32, i32* %apos5290, align 4
  %idxprom5549 = sext i32 %3023 to i64
  %arrayidx5550 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5549
  %3024 = load i8, i8* %arrayidx5550, align 1
  %conv5551 = zext i8 %3024 to i32
  %cmp5552 = icmp eq i32 %conv5551, 0
  br i1 %cmp5552, label %land.lhs.true.5554, label %if.end.5679

land.lhs.true.5554:                               ; preds = %land.lhs.true.5548
  %3025 = load i32, i32* %gpos5297, align 4
  %idxprom5555 = sext i32 %3025 to i64
  %arrayidx5556 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5555
  %3026 = load i8, i8* %arrayidx5556, align 1
  %conv5557 = zext i8 %3026 to i32
  %cmp5558 = icmp eq i32 %conv5557, 0
  br i1 %cmp5558, label %land.lhs.true.5560, label %if.end.5679

land.lhs.true.5560:                               ; preds = %land.lhs.true.5554
  %3027 = load i32, i32* %bpos5293, align 4
  %idxprom5561 = sext i32 %3027 to i64
  %3028 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5562 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3028, i32 0, i32 0
  %arrayidx5563 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5562, i32 0, i64 %idxprom5561
  %3029 = load i32, i32* %arrayidx5563, align 4
  %3030 = load i32, i32* %distance, align 4
  %add5564 = add nsw i32 %3030, 1500
  %cmp5565 = icmp sgt i32 %3029, %add5564
  br i1 %cmp5565, label %if.then.5567, label %if.end.5679

if.then.5567:                                     ; preds = %land.lhs.true.5560
  br label %do.body.5568

do.body.5568:                                     ; preds = %if.then.5567
  %3031 = load i32, i32* %distance, align 4
  %add5569 = add nsw i32 %3031, 1500
  %3032 = load i32, i32* %bpos5293, align 4
  %idxprom5570 = sext i32 %3032 to i64
  %3033 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5571 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3033, i32 0, i32 0
  %arrayidx5572 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5571, i32 0, i64 %idxprom5570
  %3034 = load i32, i32* %arrayidx5572, align 4
  %cmp5573 = icmp slt i32 %add5569, %3034
  br i1 %cmp5573, label %if.then.5575, label %if.end.5677

if.then.5575:                                     ; preds = %do.body.5568
  %3035 = load i32, i32* %bpos5293, align 4
  %idxprom5576 = sext i32 %3035 to i64
  %arrayidx5577 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5576
  %3036 = load i8, i8* %arrayidx5577, align 1
  %conv5578 = zext i8 %3036 to i32
  %cmp5579 = icmp eq i32 %conv5578, 0
  br i1 %cmp5579, label %if.then.5581, label %if.else.5610

if.then.5581:                                     ; preds = %if.then.5575
  %3037 = load i32, i32* %bpos5293, align 4
  %idxprom5582 = sext i32 %3037 to i64
  %3038 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5583 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3038, i32 0, i32 0
  %arrayidx5584 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5583, i32 0, i64 %idxprom5582
  %3039 = load i32, i32* %arrayidx5584, align 4
  %cmp5585 = icmp eq i32 %3039, 100000
  br i1 %cmp5585, label %if.then.5587, label %if.end.5593

if.then.5587:                                     ; preds = %if.then.5581
  %3040 = load i32, i32* %bpos5293, align 4
  %3041 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5588 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3041, i32 0, i32 7
  %3042 = load i32, i32* %queue_end5588, align 4
  %inc5589 = add nsw i32 %3042, 1
  store i32 %inc5589, i32* %queue_end5588, align 4
  %idxprom5590 = sext i32 %3042 to i64
  %3043 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5591 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3043, i32 0, i32 5
  %arrayidx5592 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5591, i32 0, i64 %idxprom5590
  store i32 %3040, i32* %arrayidx5592, align 4
  br label %if.end.5593

if.end.5593:                                      ; preds = %if.then.5587, %if.then.5581
  %3044 = load i32, i32* %distance, align 4
  %add5594 = add nsw i32 %3044, 1500
  %3045 = load i32, i32* %bpos5293, align 4
  %idxprom5595 = sext i32 %3045 to i64
  %3046 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5596 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3046, i32 0, i32 0
  %arrayidx5597 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5596, i32 0, i64 %idxprom5595
  store i32 %add5594, i32* %arrayidx5597, align 4
  %3047 = load i32, i32* %bpos5293, align 4
  %idxprom5598 = sext i32 %3047 to i64
  %3048 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5599 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3048, i32 0, i32 1
  %arrayidx5600 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5599, i32 0, i64 %idxprom5598
  store i32 1000, i32* %arrayidx5600, align 4
  %3049 = load i32, i32* %pos, align 4
  %3050 = load i32, i32* %bpos5293, align 4
  %idxprom5601 = sext i32 %3050 to i64
  %3051 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5602 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3051, i32 0, i32 2
  %arrayidx5603 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5602, i32 0, i64 %idxprom5601
  store i32 %3049, i32* %arrayidx5603, align 4
  %3052 = load i32, i32* %bpos5293, align 4
  %idxprom5604 = sext i32 %3052 to i64
  %3053 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15605 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3053, i32 0, i32 3
  %arrayidx5606 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15605, i32 0, i64 %idxprom5604
  store i32 0, i32* %arrayidx5606, align 4
  %3054 = load i32, i32* %bpos5293, align 4
  %idxprom5607 = sext i32 %3054 to i64
  %3055 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25608 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3055, i32 0, i32 4
  %arrayidx5609 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25608, i32 0, i64 %idxprom5607
  store i32 0, i32* %arrayidx5609, align 4
  br label %if.end.5676

if.else.5610:                                     ; preds = %if.then.5575
  %3056 = load i32, i32* %bpos5293, align 4
  %arraydecay5613 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5614 = call i32 @findstones(i32 %3056, i32 361, i32* %arraydecay5613)
  store i32 %call5614, i32* %num_stones, align 4
  store i32 0, i32* %r5612, align 4
  br label %for.cond.5615

for.cond.5615:                                    ; preds = %for.inc.5673, %if.else.5610
  %3057 = load i32, i32* %r5612, align 4
  %3058 = load i32, i32* %num_stones, align 4
  %cmp5616 = icmp slt i32 %3057, %3058
  br i1 %cmp5616, label %for.body.5618, label %for.end.5675

for.body.5618:                                    ; preds = %for.cond.5615
  %3059 = load i32, i32* %r5612, align 4
  %idxprom5619 = sext i32 %3059 to i64
  %arrayidx5620 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5619
  %3060 = load i32, i32* %arrayidx5620, align 4
  %idxprom5621 = sext i32 %3060 to i64
  %3061 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5622 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3061, i32 0, i32 0
  %arrayidx5623 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5622, i32 0, i64 %idxprom5621
  %3062 = load i32, i32* %arrayidx5623, align 4
  %cmp5624 = icmp eq i32 %3062, 100000
  br i1 %cmp5624, label %if.then.5626, label %if.end.5634

if.then.5626:                                     ; preds = %for.body.5618
  %3063 = load i32, i32* %r5612, align 4
  %idxprom5627 = sext i32 %3063 to i64
  %arrayidx5628 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5627
  %3064 = load i32, i32* %arrayidx5628, align 4
  %3065 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5629 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3065, i32 0, i32 7
  %3066 = load i32, i32* %queue_end5629, align 4
  %inc5630 = add nsw i32 %3066, 1
  store i32 %inc5630, i32* %queue_end5629, align 4
  %idxprom5631 = sext i32 %3066 to i64
  %3067 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5632 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3067, i32 0, i32 5
  %arrayidx5633 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5632, i32 0, i64 %idxprom5631
  store i32 %3064, i32* %arrayidx5633, align 4
  br label %if.end.5634

if.end.5634:                                      ; preds = %if.then.5626, %for.body.5618
  %3068 = load i32, i32* %distance, align 4
  %add5635 = add nsw i32 %3068, 1500
  %3069 = load i32, i32* %r5612, align 4
  %idxprom5636 = sext i32 %3069 to i64
  %arrayidx5637 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5636
  %3070 = load i32, i32* %arrayidx5637, align 4
  %idxprom5638 = sext i32 %3070 to i64
  %3071 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5639 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3071, i32 0, i32 0
  %arrayidx5640 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5639, i32 0, i64 %idxprom5638
  store i32 %add5635, i32* %arrayidx5640, align 4
  %3072 = load i32, i32* %r5612, align 4
  %idxprom5641 = sext i32 %3072 to i64
  %arrayidx5642 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5641
  %3073 = load i32, i32* %arrayidx5642, align 4
  %idxprom5643 = sext i32 %3073 to i64
  %3074 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5644 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3074, i32 0, i32 1
  %arrayidx5645 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5644, i32 0, i64 %idxprom5643
  store i32 1000, i32* %arrayidx5645, align 4
  %3075 = load i32, i32* %pos, align 4
  %3076 = load i32, i32* %r5612, align 4
  %idxprom5646 = sext i32 %3076 to i64
  %arrayidx5647 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5646
  %3077 = load i32, i32* %arrayidx5647, align 4
  %idxprom5648 = sext i32 %3077 to i64
  %3078 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5649 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3078, i32 0, i32 2
  %arrayidx5650 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5649, i32 0, i64 %idxprom5648
  store i32 %3075, i32* %arrayidx5650, align 4
  %3079 = load i32, i32* %r5612, align 4
  %idxprom5651 = sext i32 %3079 to i64
  %arrayidx5652 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5651
  %3080 = load i32, i32* %arrayidx5652, align 4
  %idxprom5653 = sext i32 %3080 to i64
  %3081 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15654 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3081, i32 0, i32 3
  %arrayidx5655 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15654, i32 0, i64 %idxprom5653
  store i32 0, i32* %arrayidx5655, align 4
  %3082 = load i32, i32* %r5612, align 4
  %idxprom5656 = sext i32 %3082 to i64
  %arrayidx5657 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5656
  %3083 = load i32, i32* %arrayidx5657, align 4
  %idxprom5658 = sext i32 %3083 to i64
  %3084 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25659 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3084, i32 0, i32 4
  %arrayidx5660 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25659, i32 0, i64 %idxprom5658
  store i32 0, i32* %arrayidx5660, align 4
  %3085 = load i32, i32* %r5612, align 4
  %idxprom5661 = sext i32 %3085 to i64
  %arrayidx5662 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5661
  %3086 = load i32, i32* %arrayidx5662, align 4
  %3087 = load i32, i32* %target.addr, align 4
  %cmp5663 = icmp eq i32 %3086, %3087
  br i1 %cmp5663, label %land.lhs.true.5665, label %if.end.5672

land.lhs.true.5665:                               ; preds = %if.end.5634
  %3088 = load i32, i32* %distance, align 4
  %add5666 = add nsw i32 %3088, 1500
  %3089 = load i32, i32* %cutoff_distance, align 4
  %cmp5667 = icmp slt i32 %add5666, %3089
  br i1 %cmp5667, label %if.then.5669, label %if.end.5672

if.then.5669:                                     ; preds = %land.lhs.true.5665
  %3090 = load i32, i32* %distance, align 4
  %add5670 = add nsw i32 %3090, 1500
  %sub5671 = sub nsw i32 %add5670, 1
  store i32 %sub5671, i32* %cutoff_distance, align 4
  br label %if.end.5672

if.end.5672:                                      ; preds = %if.then.5669, %land.lhs.true.5665, %if.end.5634
  br label %for.inc.5673

for.inc.5673:                                     ; preds = %if.end.5672
  %3091 = load i32, i32* %r5612, align 4
  %inc5674 = add nsw i32 %3091, 1
  store i32 %inc5674, i32* %r5612, align 4
  br label %for.cond.5615

for.end.5675:                                     ; preds = %for.cond.5615
  br label %if.end.5676

if.end.5676:                                      ; preds = %for.end.5675, %if.end.5593
  br label %if.end.5677

if.end.5677:                                      ; preds = %if.end.5676, %do.body.5568
  br label %do.end.5678

do.end.5678:                                      ; preds = %if.end.5677
  br label %if.end.5679

if.end.5679:                                      ; preds = %do.end.5678, %land.lhs.true.5560, %land.lhs.true.5554, %land.lhs.true.5548, %if.end.5542
  %3092 = load i32, i32* %bpos5293, align 4
  %idxprom5680 = sext i32 %3092 to i64
  %arrayidx5681 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5680
  %3093 = load i8, i8* %arrayidx5681, align 1
  %conv5682 = zext i8 %3093 to i32
  %3094 = load i32, i32* %color, align 4
  %cmp5683 = icmp eq i32 %conv5682, %3094
  br i1 %cmp5683, label %land.lhs.true.5685, label %if.end.5816

land.lhs.true.5685:                               ; preds = %if.end.5679
  %3095 = load i32, i32* %apos5290, align 4
  %idxprom5686 = sext i32 %3095 to i64
  %arrayidx5687 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5686
  %3096 = load i8, i8* %arrayidx5687, align 1
  %conv5688 = zext i8 %3096 to i32
  %cmp5689 = icmp eq i32 %conv5688, 0
  br i1 %cmp5689, label %land.lhs.true.5691, label %if.end.5816

land.lhs.true.5691:                               ; preds = %land.lhs.true.5685
  %3097 = load i32, i32* %gpos5297, align 4
  %idxprom5692 = sext i32 %3097 to i64
  %arrayidx5693 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5692
  %3098 = load i8, i8* %arrayidx5693, align 1
  %conv5694 = zext i8 %3098 to i32
  %cmp5695 = icmp eq i32 %conv5694, 0
  br i1 %cmp5695, label %land.lhs.true.5697, label %if.end.5816

land.lhs.true.5697:                               ; preds = %land.lhs.true.5691
  %3099 = load i32, i32* %bpos5293, align 4
  %idxprom5698 = sext i32 %3099 to i64
  %3100 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5699 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3100, i32 0, i32 0
  %arrayidx5700 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5699, i32 0, i64 %idxprom5698
  %3101 = load i32, i32* %arrayidx5700, align 4
  %3102 = load i32, i32* %distance, align 4
  %add5701 = add nsw i32 %3102, 1300
  %cmp5702 = icmp sgt i32 %3101, %add5701
  br i1 %cmp5702, label %if.then.5704, label %if.end.5816

if.then.5704:                                     ; preds = %land.lhs.true.5697
  br label %do.body.5705

do.body.5705:                                     ; preds = %if.then.5704
  %3103 = load i32, i32* %distance, align 4
  %add5706 = add nsw i32 %3103, 1300
  %3104 = load i32, i32* %bpos5293, align 4
  %idxprom5707 = sext i32 %3104 to i64
  %3105 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5708 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3105, i32 0, i32 0
  %arrayidx5709 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5708, i32 0, i64 %idxprom5707
  %3106 = load i32, i32* %arrayidx5709, align 4
  %cmp5710 = icmp slt i32 %add5706, %3106
  br i1 %cmp5710, label %if.then.5712, label %if.end.5814

if.then.5712:                                     ; preds = %do.body.5705
  %3107 = load i32, i32* %bpos5293, align 4
  %idxprom5713 = sext i32 %3107 to i64
  %arrayidx5714 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5713
  %3108 = load i8, i8* %arrayidx5714, align 1
  %conv5715 = zext i8 %3108 to i32
  %cmp5716 = icmp eq i32 %conv5715, 0
  br i1 %cmp5716, label %if.then.5718, label %if.else.5747

if.then.5718:                                     ; preds = %if.then.5712
  %3109 = load i32, i32* %bpos5293, align 4
  %idxprom5719 = sext i32 %3109 to i64
  %3110 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5720 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3110, i32 0, i32 0
  %arrayidx5721 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5720, i32 0, i64 %idxprom5719
  %3111 = load i32, i32* %arrayidx5721, align 4
  %cmp5722 = icmp eq i32 %3111, 100000
  br i1 %cmp5722, label %if.then.5724, label %if.end.5730

if.then.5724:                                     ; preds = %if.then.5718
  %3112 = load i32, i32* %bpos5293, align 4
  %3113 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5725 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3113, i32 0, i32 7
  %3114 = load i32, i32* %queue_end5725, align 4
  %inc5726 = add nsw i32 %3114, 1
  store i32 %inc5726, i32* %queue_end5725, align 4
  %idxprom5727 = sext i32 %3114 to i64
  %3115 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5728 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3115, i32 0, i32 5
  %arrayidx5729 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5728, i32 0, i64 %idxprom5727
  store i32 %3112, i32* %arrayidx5729, align 4
  br label %if.end.5730

if.end.5730:                                      ; preds = %if.then.5724, %if.then.5718
  %3116 = load i32, i32* %distance, align 4
  %add5731 = add nsw i32 %3116, 1300
  %3117 = load i32, i32* %bpos5293, align 4
  %idxprom5732 = sext i32 %3117 to i64
  %3118 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5733 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3118, i32 0, i32 0
  %arrayidx5734 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5733, i32 0, i64 %idxprom5732
  store i32 %add5731, i32* %arrayidx5734, align 4
  %3119 = load i32, i32* %bpos5293, align 4
  %idxprom5735 = sext i32 %3119 to i64
  %3120 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5736 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3120, i32 0, i32 1
  %arrayidx5737 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5736, i32 0, i64 %idxprom5735
  store i32 1000, i32* %arrayidx5737, align 4
  %3121 = load i32, i32* %pos, align 4
  %3122 = load i32, i32* %bpos5293, align 4
  %idxprom5738 = sext i32 %3122 to i64
  %3123 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5739 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3123, i32 0, i32 2
  %arrayidx5740 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5739, i32 0, i64 %idxprom5738
  store i32 %3121, i32* %arrayidx5740, align 4
  %3124 = load i32, i32* %bpos5293, align 4
  %idxprom5741 = sext i32 %3124 to i64
  %3125 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15742 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3125, i32 0, i32 3
  %arrayidx5743 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15742, i32 0, i64 %idxprom5741
  store i32 0, i32* %arrayidx5743, align 4
  %3126 = load i32, i32* %bpos5293, align 4
  %idxprom5744 = sext i32 %3126 to i64
  %3127 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25745 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3127, i32 0, i32 4
  %arrayidx5746 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25745, i32 0, i64 %idxprom5744
  store i32 0, i32* %arrayidx5746, align 4
  br label %if.end.5813

if.else.5747:                                     ; preds = %if.then.5712
  %3128 = load i32, i32* %bpos5293, align 4
  %arraydecay5750 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call5751 = call i32 @findstones(i32 %3128, i32 361, i32* %arraydecay5750)
  store i32 %call5751, i32* %num_stones, align 4
  store i32 0, i32* %r5749, align 4
  br label %for.cond.5752

for.cond.5752:                                    ; preds = %for.inc.5810, %if.else.5747
  %3129 = load i32, i32* %r5749, align 4
  %3130 = load i32, i32* %num_stones, align 4
  %cmp5753 = icmp slt i32 %3129, %3130
  br i1 %cmp5753, label %for.body.5755, label %for.end.5812

for.body.5755:                                    ; preds = %for.cond.5752
  %3131 = load i32, i32* %r5749, align 4
  %idxprom5756 = sext i32 %3131 to i64
  %arrayidx5757 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5756
  %3132 = load i32, i32* %arrayidx5757, align 4
  %idxprom5758 = sext i32 %3132 to i64
  %3133 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5759 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3133, i32 0, i32 0
  %arrayidx5760 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5759, i32 0, i64 %idxprom5758
  %3134 = load i32, i32* %arrayidx5760, align 4
  %cmp5761 = icmp eq i32 %3134, 100000
  br i1 %cmp5761, label %if.then.5763, label %if.end.5771

if.then.5763:                                     ; preds = %for.body.5755
  %3135 = load i32, i32* %r5749, align 4
  %idxprom5764 = sext i32 %3135 to i64
  %arrayidx5765 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5764
  %3136 = load i32, i32* %arrayidx5765, align 4
  %3137 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_end5766 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3137, i32 0, i32 7
  %3138 = load i32, i32* %queue_end5766, align 4
  %inc5767 = add nsw i32 %3138, 1
  store i32 %inc5767, i32* %queue_end5766, align 4
  %idxprom5768 = sext i32 %3138 to i64
  %3139 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue5769 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3139, i32 0, i32 5
  %arrayidx5770 = getelementptr inbounds [400 x i32], [400 x i32]* %queue5769, i32 0, i64 %idxprom5768
  store i32 %3136, i32* %arrayidx5770, align 4
  br label %if.end.5771

if.end.5771:                                      ; preds = %if.then.5763, %for.body.5755
  %3140 = load i32, i32* %distance, align 4
  %add5772 = add nsw i32 %3140, 1300
  %3141 = load i32, i32* %r5749, align 4
  %idxprom5773 = sext i32 %3141 to i64
  %arrayidx5774 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5773
  %3142 = load i32, i32* %arrayidx5774, align 4
  %idxprom5775 = sext i32 %3142 to i64
  %3143 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances5776 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3143, i32 0, i32 0
  %arrayidx5777 = getelementptr inbounds [400 x i32], [400 x i32]* %distances5776, i32 0, i64 %idxprom5775
  store i32 %add5772, i32* %arrayidx5777, align 4
  %3144 = load i32, i32* %r5749, align 4
  %idxprom5778 = sext i32 %3144 to i64
  %arrayidx5779 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5778
  %3145 = load i32, i32* %arrayidx5779, align 4
  %idxprom5780 = sext i32 %3145 to i64
  %3146 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %deltas5781 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3146, i32 0, i32 1
  %arrayidx5782 = getelementptr inbounds [400 x i32], [400 x i32]* %deltas5781, i32 0, i64 %idxprom5780
  store i32 1000, i32* %arrayidx5782, align 4
  %3147 = load i32, i32* %pos, align 4
  %3148 = load i32, i32* %r5749, align 4
  %idxprom5783 = sext i32 %3148 to i64
  %arrayidx5784 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5783
  %3149 = load i32, i32* %arrayidx5784, align 4
  %idxprom5785 = sext i32 %3149 to i64
  %3150 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %coming_from5786 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3150, i32 0, i32 2
  %arrayidx5787 = getelementptr inbounds [400 x i32], [400 x i32]* %coming_from5786, i32 0, i64 %idxprom5785
  store i32 %3147, i32* %arrayidx5787, align 4
  %3151 = load i32, i32* %r5749, align 4
  %idxprom5788 = sext i32 %3151 to i64
  %arrayidx5789 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5788
  %3152 = load i32, i32* %arrayidx5789, align 4
  %idxprom5790 = sext i32 %3152 to i64
  %3153 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable15791 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3153, i32 0, i32 3
  %arrayidx5792 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable15791, i32 0, i64 %idxprom5790
  store i32 0, i32* %arrayidx5792, align 4
  %3154 = load i32, i32* %r5749, align 4
  %idxprom5793 = sext i32 %3154 to i64
  %arrayidx5794 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5793
  %3155 = load i32, i32* %arrayidx5794, align 4
  %idxprom5795 = sext i32 %3155 to i64
  %3156 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable25796 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3156, i32 0, i32 4
  %arrayidx5797 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable25796, i32 0, i64 %idxprom5795
  store i32 0, i32* %arrayidx5797, align 4
  %3157 = load i32, i32* %r5749, align 4
  %idxprom5798 = sext i32 %3157 to i64
  %arrayidx5799 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom5798
  %3158 = load i32, i32* %arrayidx5799, align 4
  %3159 = load i32, i32* %target.addr, align 4
  %cmp5800 = icmp eq i32 %3158, %3159
  br i1 %cmp5800, label %land.lhs.true.5802, label %if.end.5809

land.lhs.true.5802:                               ; preds = %if.end.5771
  %3160 = load i32, i32* %distance, align 4
  %add5803 = add nsw i32 %3160, 1300
  %3161 = load i32, i32* %cutoff_distance, align 4
  %cmp5804 = icmp slt i32 %add5803, %3161
  br i1 %cmp5804, label %if.then.5806, label %if.end.5809

if.then.5806:                                     ; preds = %land.lhs.true.5802
  %3162 = load i32, i32* %distance, align 4
  %add5807 = add nsw i32 %3162, 1300
  %sub5808 = sub nsw i32 %add5807, 1
  store i32 %sub5808, i32* %cutoff_distance, align 4
  br label %if.end.5809

if.end.5809:                                      ; preds = %if.then.5806, %land.lhs.true.5802, %if.end.5771
  br label %for.inc.5810

for.inc.5810:                                     ; preds = %if.end.5809
  %3163 = load i32, i32* %r5749, align 4
  %inc5811 = add nsw i32 %3163, 1
  store i32 %inc5811, i32* %r5749, align 4
  br label %for.cond.5752

for.end.5812:                                     ; preds = %for.cond.5752
  br label %if.end.5813

if.end.5813:                                      ; preds = %for.end.5812, %if.end.5730
  br label %if.end.5814

if.end.5814:                                      ; preds = %if.end.5813, %do.body.5705
  br label %do.end.5815

do.end.5815:                                      ; preds = %if.end.5814
  br label %if.end.5816

if.end.5816:                                      ; preds = %do.end.5815, %land.lhs.true.5697, %land.lhs.true.5691, %land.lhs.true.5685, %if.end.5679
  br label %for.inc.5817

for.inc.5817:                                     ; preds = %if.end.5816
  %3164 = load i32, i32* %k, align 4
  %inc5818 = add nsw i32 %3164, 1
  store i32 %inc5818, i32* %k, align 4
  br label %for.cond.5275

for.end.5819:                                     ; preds = %for.cond.5275
  br label %if.end.5820

if.end.5820:                                      ; preds = %for.end.5819, %land.lhs.true.5270, %land.lhs.true.5267, %lor.lhs.false.5261
  br label %if.end.5821

if.end.5821:                                      ; preds = %if.end.5820, %for.end.5254
  br label %for.inc.5822

for.inc.5822:                                     ; preds = %if.end.5821
  %3165 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %queue_start5823 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3165, i32 0, i32 6
  %3166 = load i32, i32* %queue_start5823, align 4
  %inc5824 = add nsw i32 %3166, 1
  store i32 %inc5824, i32* %queue_start5823, align 4
  br label %for.cond.135

for.end.5825:                                     ; preds = %if.then.200, %for.cond.135
  ret void
}

declare i32 @findlib(i32, i32, i32*) #1

declare i32 @gprintf(i8*, ...) #1

declare void @dump_stack() #1

declare void @showboard(i32) #1

; Function Attrs: nounwind uwtable
define internal void @print_connection_distances(%struct.connection_data* %conn) #0 {
entry:
  %conn.addr = alloca %struct.connection_data*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ch = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.connection_data* %conn, %struct.connection_data** %conn.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  store i32 65, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %3, 73
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %ch, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %ch, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %j, align 4
  %8 = load i32, i32* %ch, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %ch, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.48, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @board_size, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.8, label %for.end.50

for.body.8:                                       ; preds = %for.cond.6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* @board_size, align 4
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, %14
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %sub)
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.44, %for.body.8
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* @board_size, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %for.body.12, label %for.end.46

for.body.12:                                      ; preds = %for.cond.10
  %17 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %17, 20
  %add = add nsw i32 21, %mul
  %18 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %add, %18
  store i32 %add13, i32* %pos, align 4
  %19 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances = getelementptr inbounds %struct.connection_data, %struct.connection_data* %20, i32 0, i32 0
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* %distances, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp eq i32 %21, 100000
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body.12
  %22 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %23 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %23 to i32
  %cmp18 = icmp eq i32 %conv, 1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.15
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.15
  %25 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.22
  %28 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.30
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.30
  br label %if.end.43

if.else:                                          ; preds = %for.body.12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances40 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %33, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [400 x i32], [400 x i32]* %distances40, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx41, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end.38
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %35 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond.10

for.end.46:                                       ; preds = %for.cond.10
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.46
  %37 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %37, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.6

for.end.50:                                       ; preds = %for.cond.6
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0))
  store i32 21, i32* %pos, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.96, %for.end.50
  %40 = load i32, i32* %pos, align 4
  %cmp54 = icmp slt i32 %40, 400
  br i1 %cmp54, label %for.body.56, label %for.end.98

for.body.56:                                      ; preds = %for.cond.53
  %41 = load i32, i32* %pos, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %distances58 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %42, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* %distances58, i32 0, i64 %idxprom57
  %43 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp slt i32 %43, 100000
  br i1 %cmp60, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %for.body.56
  %44 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable1 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %45, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable1, i32 0, i64 %idxprom62
  %46 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp ne i32 %46, 0
  br i1 %cmp64, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %47 = load i32, i32* %pos, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable2 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %48, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable2, i32 0, i64 %idxprom66
  %49 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp ne i32 %49, 0
  br i1 %cmp68, label %if.then.70, label %if.end.95

if.then.70:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %50 = load i32, i32* %pos, align 4
  %call71 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %50)
  %51 = load i32, i32* %pos, align 4
  %idxprom72 = sext i32 %51 to i64
  %52 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable173 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %52, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable173, i32 0, i64 %idxprom72
  %53 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp ne i32 %53, 0
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %if.then.70
  %54 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %54 to i64
  %55 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable179 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %55, i32 0, i32 3
  %arrayidx80 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable179, i32 0, i64 %idxprom78
  %56 = load i32, i32* %arrayidx80, align 4
  %call81 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 %56)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.then.70
  %57 = load i32, i32* %pos, align 4
  %idxprom83 = sext i32 %57 to i64
  %58 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable284 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %58, i32 0, i32 4
  %arrayidx85 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable284, i32 0, i64 %idxprom83
  %59 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp ne i32 %59, 0
  br i1 %cmp86, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.end.82
  %60 = load i32, i32* %pos, align 4
  %idxprom89 = sext i32 %60 to i64
  %61 = load %struct.connection_data*, %struct.connection_data** %conn.addr, align 8
  %vulnerable290 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %61, i32 0, i32 4
  %arrayidx91 = getelementptr inbounds [400 x i32], [400 x i32]* %vulnerable290, i32 0, i64 %idxprom89
  %62 = load i32, i32* %arrayidx91, align 4
  %call92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 %62)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.end.82
  %63 = load i32, i32* %pos, align 4
  %call94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 %63)
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.93, %lor.lhs.false, %for.body.56
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %64 = load i32, i32* %pos, align 4
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, i32* %pos, align 4
  br label %for.cond.53

for.end.98:                                       ; preds = %for.cond.53
  ret void
}

declare i32 @find_origin(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_self_atari(i32 %pos, i32 %color_to_move) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color_to_move.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color_to_move, i32* %color_to_move.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %color_to_move.addr, align 4
  %call = call i32 @is_self_atari(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %color_to_move.addr, align 4
  %call1 = call i32 @is_ko(i32 %2, i32 %3, i32* null)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @common_vulnerability(i32 %apos, i32 %bpos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bpos.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %apos.addr, align 4
  %3 = load i32, i32* %bpos.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %4, 4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %apos.addr, align 4
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %5, %7
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %color.addr, align 4
  %cmp8 = icmp eq i32 %conv, %9
  br i1 %cmp8, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %apos.addr, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %add12 = add nsw i32 %10, %12
  %call = call i32 @countlib(i32 %add12)
  %cmp13 = icmp sle i32 %call, 3
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %bpos.addr, align 4
  %14 = load i32, i32* %apos.addr, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %14, %16
  %call19 = call i32 @liberty_of_string(i32 %13, i32 %add18)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.15, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.20, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @countlib(i32) #1

declare i32 @is_edge_vertex(i32) #1

declare i32 @liberty_of_string(i32, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

declare i32 @findstones(i32, i32, i32*) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @is_suicide(i32, i32) #1

declare i32 @is_self_atari(i32, i32) #1

declare i32 @approxlib(i32, i32, i32, i32*) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ladder_capture(i32 %str, i32* %move) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %liberties = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  %2 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %2)
  store i32 %call, i32* %liberties, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %3 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %5 = load i32*, i32** %move.addr, align 8
  %call1 = call i32 @attack(i32 %4, i32* %5)
  store i32 %call1, i32* %result, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %liberties, align 4
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %7 = load i32, i32* %str.addr, align 4
  %8 = load i32*, i32** %move.addr, align 8
  %call4 = call i32 @simple_ladder(i32 %7, i32* %8)
  store i32 %call4, i32* %result, align 4
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %9, %struct.SGFTree_t** @sgf_dumptree, align 8
  %10 = load i32, i32* %save_count_variations, align 4
  store i32 %10, i32* @count_variations, align 4
  %11 = load i32, i32* %result, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @common_vulnerabilities(i32 %a1, i32 %a2, i32 %b1, i32 %b2, i32 %color) #0 {
entry:
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  %b1.addr = alloca i32, align 4
  %b2.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %a1, i32* %a1.addr, align 4
  store i32 %a2, i32* %a2.addr, align 4
  store i32 %b1, i32* %b1.addr, align 4
  store i32 %b2, i32* %b2.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %a1.addr, align 4
  %1 = load i32, i32* %b1.addr, align 4
  %2 = load i32, i32* %color.addr, align 4
  %call = call i32 @common_vulnerability(i32 %0, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %a1.addr, align 4
  %4 = load i32, i32* %b2.addr, align 4
  %5 = load i32, i32* %color.addr, align 4
  %call1 = call i32 @common_vulnerability(i32 %3, i32 %4, i32 %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %a2.addr, align 4
  %7 = load i32, i32* %b1.addr, align 4
  %8 = load i32, i32* %color.addr, align 4
  %call4 = call i32 @common_vulnerability(i32 %6, i32 %7, i32 %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.3
  %9 = load i32, i32* %a2.addr, align 4
  %10 = load i32, i32* %b2.addr, align 4
  %11 = load i32, i32* %color.addr, align 4
  %call6 = call i32 @common_vulnerability(i32 %9, i32 %10, i32 %11)
  %tobool7 = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.3, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @ladder_capturable(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %liberties = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* null, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %call1 = call i32 @countlib(i32 %2)
  store i32 %call1, i32* %liberties, align 4
  %3 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %pos.addr, align 4
  %call2 = call i32 @attack(i32 %4, i32* null)
  %cmp3 = icmp eq i32 %call2, 5
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %result, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %if.then
  %5 = load i32, i32* %liberties, align 4
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.else
  %6 = load i32, i32* %pos.addr, align 4
  %call7 = call i32 @simple_ladder(i32 %6, i32* null)
  %cmp8 = icmp eq i32 %call7, 5
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.6, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  call void @popgo()
  br label %if.end.12

if.else.11:                                       ; preds = %entry
  store i32 1, i32* %result, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end.10
  %7 = load i32, i32* %result, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @does_secure(i32 %color, i32 %move, i32 %pos) #0 {
entry:
  %color.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* null, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %3
  %call1 = call i32 @is_self_atari(i32 %2, i32 %sub)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  call void @popgo()
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %4 = load i32, i32* %result, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @does_secure_through_ladder(i32 %color, i32 %move, i32 %pos) #0 {
entry:
  %color.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* null, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %3
  %call1 = call i32 @ladder_capturable(i32 %2, i32 %sub)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  call void @popgo()
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %4 = load i32, i32* %result, align 4
  ret i32 %4
}

declare i32 @countstones(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @no_escape_from_atari(i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %lib = alloca i32, align 4
  %adj = alloca [160 x i32], align 16
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %call = call i32 @findlib(i32 %0, i32 1, i32* %lib)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %lib, align 4
  %2 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = call i32 @accuratelib(i32 %1, i32 %conv, i32 2, i32* null)
  %cmp2 = icmp sgt i32 %call1, 1
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adj, i32 0, i32 0
  %call6 = call i32 @chainlinks2(i32 %4, i32* %arraydecay, i32 1)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @no_escape_from_ladder(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %adj = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %1 = load i32, i32* @count_variations, align 4
  store i32 %1, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %2 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %2)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %str.addr, align 4
  %call1 = call i32 @find_defense(i32 %3, i32* null)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* %str.addr, align 4
  %call3 = call i32 @countlib(i32 %4)
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.31

land.lhs.true.5:                                  ; preds = %if.end
  %5 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adj, i32 0, i32 0
  %call6 = call i32 @chainlinks2(i32 %5, i32* %arraydecay, i32 1)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.31

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %6 = load i32, i32* %str.addr, align 4
  %arraydecay9 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call10 = call i32 @findlib(i32 %6, i32 2, i32* %arraydecay9)
  %cmp11 = icmp eq i32 %call10, 2
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %9 to i32
  %call14 = call i32 @approxlib(i32 %7, i32 %conv, i32 2, i32* null)
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.31

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %10 = load i32, i32* %arrayidx18, align 4
  %11 = load i32, i32* %str.addr, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %call22 = call i32 @approxlib(i32 %10, i32 %conv21, i32 2, i32* null)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %land.lhs.true.17
  %13 = load i32, i32* %str.addr, align 4
  %call26 = call i32 @ladder_capture(i32 %13, i32* null)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %14 = load i32, i32* %str.addr, align 4
  %call28 = call i32 @find_defense(i32 %14, i32* null)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %result, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.5, %if.end
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %15, %struct.SGFTree_t** @sgf_dumptree, align 8
  %16 = load i32, i32* %save_count_variations, align 4
  store i32 %16, i32* @count_variations, align 4
  %17 = load i32, i32* %result, align 4
  ret i32 %17
}

declare i32 @simple_ladder(i32, i32*) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @chainlinks2(i32, i32*, i32) #1

declare i32 @find_defense(i32, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @is_ko(i32, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
