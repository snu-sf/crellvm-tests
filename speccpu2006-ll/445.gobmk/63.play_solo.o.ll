; ModuleID = 'interface/play_solo.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@random_seed = external global i32, align 4
@level = external global i32, align 4
@chinese_rules = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"random move\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s(%d): Pass\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@movenum = external global i32, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s(%d): %m\0A\00", align 1
@stats = external global %struct.stats_data, align 4
@stdout = external global %struct._IO_FILE*, align 8
@lower_bound = external global float, align 4
@upper_bound = external global float, align 4
@score = external global float, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%10d moves played in %0.3f seconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%10.3f seconds/move\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%10d nodes\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%10d positions entered\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%10d position hits\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%10d read results entered\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%10d hash collisions\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%10d owl nodes\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s move: PASS!\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"white (O)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"black (X)\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s move %m\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"load and analyze mode\00", align 1
@board_size = external global i32, align 4
@komi = external global float, align 4
@doing_scoring = external global i32, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"aftermath\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%d %s move %m\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%d %s move : PASS!\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Black wins by %1.1f points\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"White wins by %1.1f points\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Jigo\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%1c%f\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Result from file: %1.1f\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"GNU Go result and result from file are \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"identical\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"different\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Result from file: Resign\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"\0A%s seems to win by %1.1f points\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"W\00", align 1

; Function Attrs: nounwind uwtable
define void @play_solo(%struct.Gameinfo* %gameinfo, i32 %moves) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %moves.addr = alloca i32, align 4
  %sgftree = alloca %struct.SGFTree_t, align 8
  %passes = alloca i32, align 4
  %move_val = alloca i32, align 4
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %save_moves = alloca i32, align 4
  %boardsize = alloca i32, align 4
  %totalstats = alloca %struct.stats_data, align 4
  %total_owl_count = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i32 %moves, i32* %moves.addr, align 4
  store i32 0, i32* %passes, align 4
  %0 = load i32, i32* %moves.addr, align 4
  store i32 %0, i32* %save_moves, align 4
  %call = call i32 @gnugo_get_boardsize()
  store i32 %call, i32* %boardsize, align 4
  store i32 0, i32* %total_owl_count, align 4
  %call1 = call i32 @gg_rand()
  %mul = mul nsw i32 2, %call1
  %rem = srem i32 %mul, 5
  %add = add nsw i32 6, %rem
  store i32 %add, i32* %n, align 4
  call void @gnugo_set_komi(float 5.500000e+00)
  call void @sgftree_clear(%struct.SGFTree_t* %sgftree)
  %call2 = call i32 @gnugo_get_boardsize()
  %call3 = call float @gnugo_get_komi()
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %sgftree, i32 %call2, float %call3)
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %2 = load i32, i32* @random_seed, align 4
  %3 = load i32, i32* @level, align 4
  %4 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %1, i32 1, i32 %2, float 5.500000e+00, i32 %3, i32 %4)
  %5 = load i32, i32* %boardsize, align 4
  %cmp = icmp sgt i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.22, %if.then
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body
  %call5 = call i32 @gg_rand()
  %rem6 = srem i32 %call5, 4
  %call7 = call i32 @gg_rand()
  %6 = load i32, i32* %boardsize, align 4
  %sub = sub nsw i32 %6, 4
  %rem8 = srem i32 %call7, %sub
  %add9 = add nsw i32 %rem6, %rem8
  store i32 %add9, i32* %i, align 4
  %call10 = call i32 @gg_rand()
  %rem11 = srem i32 %call10, 4
  %call12 = call i32 @gg_rand()
  %7 = load i32, i32* %boardsize, align 4
  %sub13 = sub nsw i32 %7, 4
  %rem14 = srem i32 %call12, %sub13
  %add15 = add nsw i32 %rem11, %rem14
  store i32 %add15, i32* %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %10 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %10, i32 0, i32 1
  %11 = load i32, i32* %to_move, align 4
  %call16 = call i32 @gnugo_is_legal(i32 %8, i32 %9, i32 %11)
  %tobool = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move17 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %14, i32 0, i32 1
  %15 = load i32, i32* %to_move17, align 4
  call void @gnugo_play_move(i32 %12, i32 %13, i32 %15)
  %16 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move18 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %16, i32 0, i32 1
  %17 = load i32, i32* %to_move18, align 4
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %sgftree, i32 %17, i32 %18, i32 %19)
  call void @sgftreeAddComment(%struct.SGFTree_t* %sgftree, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %20 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move19 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %20, i32 0, i32 1
  %21 = load i32, i32* %to_move19, align 4
  %sub20 = sub nsw i32 3, %21
  %22 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move21 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %22, i32 0, i32 1
  store i32 %sub20, i32* %to_move21, align 4
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end
  %23 = load i32, i32* %n, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %n, align 4
  %cmp23 = icmp sgt i32 %dec, 0
  br i1 %cmp23, label %do.body, label %do.end.24

do.end.24:                                        ; preds = %do.cond.22
  br label %if.end

if.end:                                           ; preds = %do.end.24, %entry
  %call25 = call double @gg_cputime()
  store double %call25, double* %t1, align 8
  %24 = bitcast %struct.stats_data* %totalstats to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 24, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end
  %25 = load i32, i32* %passes, align 4
  %cmp26 = icmp slt i32 %25, 2
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load i32, i32* %moves.addr, align 4
  %dec27 = add nsw i32 %26, -1
  store i32 %dec27, i32* %moves.addr, align 4
  %cmp28 = icmp sge i32 %dec27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @reset_owl_node_counter()
  %28 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move29 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %28, i32 0, i32 1
  %29 = load i32, i32* %to_move29, align 4
  %call30 = call i32 @gnugo_genmove(i32* %i, i32* %j, i32 %29)
  store i32 %call30, i32* %move_val, align 4
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %32 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move31 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %32, i32 0, i32 1
  %33 = load i32, i32* %to_move31, align 4
  call void @gnugo_play_move(i32 %30, i32 %31, i32 %33)
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 1
  %34 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %35 = load i32, i32* %move_val, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %34, i32 %35)
  %36 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move32 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %36, i32 0, i32 1
  %37 = load i32, i32* %to_move32, align 4
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %sgftree, i32 %37, i32 %38, i32 %39)
  call void @sgffile_output(%struct.SGFTree_t* %sgftree)
  %40 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move33 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %40, i32 0, i32 1
  %41 = load i32, i32* %to_move33, align 4
  %sub34 = sub nsw i32 3, %41
  %42 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move35 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %42, i32 0, i32 1
  store i32 %sub34, i32* %to_move35, align 4
  %43 = load i32, i32* %move_val, align 4
  %cmp36 = icmp slt i32 %43, 0
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %while.body
  %44 = load i32, i32* %passes, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %passes, align 4
  %45 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move38 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %45, i32 0, i32 1
  %46 = load i32, i32* %to_move38, align 4
  %cmp39 = icmp eq i32 %46, 2
  %cond = select i1 %cmp39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %47 = load i32, i32* @movenum, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* %cond, i32 %47)
  br label %if.end.45

if.else:                                          ; preds = %while.body
  store i32 0, i32* %passes, align 4
  %48 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move41 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %48, i32 0, i32 1
  %49 = load i32, i32* %to_move41, align 4
  %cmp42 = icmp eq i32 %49, 2
  %cond43 = select i1 %cmp42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)
  %50 = load i32, i32* @movenum, align 4
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %j, align 4
  %call44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* %cond43, i32 %50, i32 %51, i32 %52)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.37
  %53 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %nodes = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 0
  %54 = load i32, i32* %nodes, align 4
  %add46 = add nsw i32 %54, %53
  store i32 %add46, i32* %nodes, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %position_entered = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 1
  %56 = load i32, i32* %position_entered, align 4
  %add47 = add nsw i32 %56, %55
  store i32 %add47, i32* %position_entered, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %position_hits = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 2
  %58 = load i32, i32* %position_hits, align 4
  %add48 = add nsw i32 %58, %57
  store i32 %add48, i32* %position_hits, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %read_result_entered = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 3
  %60 = load i32, i32* %read_result_entered, align 4
  %add49 = add nsw i32 %60, %59
  store i32 %add49, i32* %read_result_entered, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %hash_collisions = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 5
  %62 = load i32, i32* %hash_collisions, align 4
  %add50 = add nsw i32 %62, %61
  store i32 %add50, i32* %hash_collisions, align 4
  %call51 = call i32 @get_owl_node_counter()
  %63 = load i32, i32* %total_owl_count, align 4
  %add52 = add nsw i32 %63, %call51
  store i32 %add52, i32* %total_owl_count, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call53 = call double @gg_cputime()
  store double %call53, double* %t2, align 8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 0, %struct._IO_FILE* %64)
  %call54 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  store float %call54, float* @score, align 4
  %root55 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %65 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root55, align 8
  %66 = load float, float* @score, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %65, float %66, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* %sgftree)
  %67 = load i32, i32* %save_moves, align 4
  %68 = load i32, i32* %moves.addr, align 4
  %sub56 = sub nsw i32 %67, %68
  %69 = load double, double* %t2, align 8
  %70 = load double, double* %t1, align 8
  %sub57 = fsub double %69, %70
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 %sub56, double %sub57)
  %71 = load i32, i32* %save_moves, align 4
  %72 = load i32, i32* %moves.addr, align 4
  %cmp59 = icmp ne i32 %71, %72
  br i1 %cmp59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %while.end
  %73 = load double, double* %t2, align 8
  %74 = load double, double* %t1, align 8
  %sub61 = fsub double %73, %74
  %75 = load i32, i32* %save_moves, align 4
  %76 = load i32, i32* %moves.addr, align 4
  %sub62 = sub nsw i32 %75, %76
  %conv = sitofp i32 %sub62 to double
  %div = fdiv double %sub61, %conv
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), double %div)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %while.end
  %nodes65 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 0
  %77 = load i32, i32* %nodes65, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %77)
  %position_entered67 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 1
  %78 = load i32, i32* %position_entered67, align 4
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i32 %78)
  %position_hits69 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 2
  %79 = load i32, i32* %position_hits69, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 %79)
  %read_result_entered71 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 3
  %80 = load i32, i32* %read_result_entered71, align 4
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 %80)
  %hash_collisions73 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %totalstats, i32 0, i32 5
  %81 = load i32, i32* %hash_collisions73, align 4
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %81)
  %82 = load i32, i32* %total_owl_count, align 4
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 %82)
  ret void
}

declare i32 @gnugo_get_boardsize() #1

declare i32 @gg_rand() #1

declare void @gnugo_set_komi(float) #1

declare void @sgftree_clear(%struct.SGFTree_t*) #1

declare void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #1

declare float @gnugo_get_komi() #1

declare void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #1

declare i32 @gnugo_is_legal(i32, i32, i32) #1

declare void @gnugo_play_move(i32, i32, i32) #1

declare void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

declare double @gg_cputime() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @reset_owl_node_counter() #1

declare i32 @gnugo_genmove(i32*, i32*, i32) #1

declare void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #1

declare void @sgffile_output(%struct.SGFTree_t*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @gprintf(i8*, ...) #1

declare i32 @get_owl_node_counter() #1

declare void @gnugo_who_wins(i32, %struct._IO_FILE*) #1

declare float @gnugo_estimate_score(float*, float*) #1

declare void @sgfWriteResult(%struct.SGFNode_t*, float, i32) #1

; Function Attrs: nounwind uwtable
define void @load_and_analyze_sgf_file(%struct.Gameinfo* %gameinfo) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %sgftree = alloca %struct.SGFTree_t, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %next = alloca i32, align 4
  %move_val = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  %0 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %0, i32 0, i32 1
  %1 = load i32, i32* %to_move, align 4
  store i32 %1, i32* %next, align 4
  %2 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %game_record = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %2, i32 0, i32 2
  %3 = bitcast %struct.SGFTree_t* %sgftree to i8*
  %4 = bitcast %struct.SGFTree_t* %game_record to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = load i32, i32* %next, align 4
  %call = call i32 @gnugo_genmove(i32* %i, i32* %j, i32 %5)
  store i32 %call, i32* %move_val, align 4
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %6, 20
  %add = add nsw i32 21, %mul
  %7 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %add, %7
  %call2 = call i32 @is_pass(i32 %add1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %next, align 4
  %cmp = icmp eq i32 %8, 1
  %cond = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)
  %call3 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* %cond)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %next, align 4
  %cmp4 = icmp eq i32 %9, 1
  %cond5 = select i1 %cmp4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call6 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %cond5, i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %next, align 4
  call void @gnugo_play_move(i32 %12, i32 %13, i32 %14)
  %15 = load i32, i32* %next, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %sgftree, i32 %15, i32 %16, i32 %17)
  call void @sgftreeAddComment(%struct.SGFTree_t* %sgftree, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 1
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %19 = load i32, i32* %move_val, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %18, i32 %19)
  call void @sgffile_output(%struct.SGFTree_t* %sgftree)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @is_pass(i32) #1

; Function Attrs: nounwind uwtable
define void @load_and_score_sgf_file(%struct.SGFTree_t* %tree, %struct.Gameinfo* %gameinfo, i8* %scoringmode) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %scoringmode.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %move_val = alloca i32, align 4
  %result = alloca float, align 4
  %tempc = alloca i8*, align 8
  %dummy = alloca i8, align 1
  %text = alloca [250 x i8], align 16
  %winner = alloca i8, align 1
  %next = alloca i32, align 4
  %pass = alloca i32, align 4
  %score_tree = alloca %struct.SGFTree_t, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store i8* %scoringmode, i8** %scoringmode.addr, align 8
  store i8* null, i8** %tempc, align 8
  store i32 0, i32* %pass, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %score_tree)
  %0 = load i32, i32* @board_size, align 4
  %1 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %score_tree, i32 %0, float %1)
  call void @sgffile_printboard(%struct.SGFTree_t* %score_tree)
  %2 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %2, i32 0, i32 1
  %3 = load i32, i32* %to_move, align 4
  store i32 %3, i32* %next, align 4
  store i32 1, i32* @doing_scoring, align 4
  call void @reset_engine()
  %4 = load i8*, i8** %scoringmode.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %scoringmode.addr, align 8
  %call1 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.90, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %6 = load i32, i32* %next, align 4
  %call3 = call i32 @genmove_conservative(i32* %i, i32* %j, i32 %6)
  store i32 %call3, i32* %move_val, align 4
  %7 = load i32, i32* %move_val, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  store i32 0, i32* %pass, align 4
  %8 = load i32, i32* @movenum, align 4
  %9 = load i32, i32* %next, align 4
  %cmp5 = icmp eq i32 %9, 1
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call6 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %8, i8* %cond, i32 %10, i32 %11)
  br label %if.end

if.else:                                          ; preds = %do.body
  %12 = load i32, i32* %pass, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pass, align 4
  %13 = load i32, i32* @movenum, align 4
  %14 = load i32, i32* %next, align 4
  %cmp7 = icmp eq i32 %14, 1
  %cond8 = select i1 %cmp7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 %13, i8* %cond8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %15 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %15, 20
  %add = add nsw i32 21, %mul
  %16 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %add, %16
  %17 = load i32, i32* %next, align 4
  call void @play_move(i32 %add10, i32 %17)
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %score_tree, i32 0, i32 1
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %19 = load i32, i32* %move_val, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %18, i32 %19)
  %20 = load i32, i32* %next, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %score_tree, i32 %20, i32 %21, i32 %22)
  call void @sgffile_output(%struct.SGFTree_t* %score_tree)
  %23 = load i32, i32* %next, align 4
  %sub = sub nsw i32 3, %23
  store i32 %sub, i32* %next, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %24 = load i32, i32* @movenum, align 4
  %cmp11 = icmp sle i32 %24, 10000
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %25 = load i32, i32* %pass, align 4
  %cmp12 = icmp slt i32 %25, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %26 = phi i1 [ false, %do.cond ], [ %cmp12, %land.rhs ]
  br i1 %26, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %27 = load i32, i32* %pass, align 4
  %cmp13 = icmp sge i32 %27, 2
  br i1 %cmp13, label %if.then.14, label %if.end.89

if.then.14:                                       ; preds = %do.end
  %28 = load i8*, i8** %scoringmode.addr, align 8
  %call15 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  %29 = load i32, i32* %next, align 4
  %30 = load float, float* @komi, align 4
  %call18 = call float @aftermath_compute_score(i32 %29, float %30, %struct.SGFTree_t* %score_tree)
  store float %call18, float* @score, align 4
  br label %if.end.21

if.else.19:                                       ; preds = %if.then.14
  %call20 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  store float %call20, float* @score, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  %31 = load float, float* @score, align 4
  %conv = fpext float %31 to double
  %cmp22 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.end.21
  %arraydecay = getelementptr inbounds [250 x i8], [250 x i8]* %text, i32 0, i32 0
  %32 = load float, float* @score, align 4
  %sub25 = fsub float -0.000000e+00, %32
  %conv26 = fpext float %sub25 to double
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), double %conv26) #2
  store i8 66, i8* %winner, align 1
  br label %if.end.40

if.else.28:                                       ; preds = %if.end.21
  %33 = load float, float* @score, align 4
  %conv29 = fpext float %33 to double
  %cmp30 = fcmp ogt double %conv29, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.else.28
  %arraydecay33 = getelementptr inbounds [250 x i8], [250 x i8]* %text, i32 0, i32 0
  %34 = load float, float* @score, align 4
  %conv34 = fpext float %34 to double
  %call35 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), double %conv34) #2
  store i8 87, i8* %winner, align 1
  br label %if.end.39

if.else.36:                                       ; preds = %if.else.28
  %arraydecay37 = getelementptr inbounds [250 x i8], [250 x i8]* %text, i32 0, i32 0
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #2
  store i8 48, i8* %winner, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.24
  %arraydecay41 = getelementptr inbounds [250 x i8], [250 x i8]* %text, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i32 @fputs(i8* %arraydecay41, %struct._IO_FILE* %35)
  %arraydecay43 = getelementptr inbounds [250 x i8], [250 x i8]* %text, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %score_tree, i8* %arraydecay43)
  %36 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %36, i32 0, i32 0
  %37 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call44 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8** %tempc)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.87

if.then.46:                                       ; preds = %if.end.40
  %38 = load i8*, i8** %tempc, align 8
  %call47 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %dummy, float* %result) #2
  %cmp48 = icmp eq i32 %call47, 2
  br i1 %cmp48, label %if.then.50, label %if.else.68

if.then.50:                                       ; preds = %if.then.46
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load float, float* %result, align 4
  %conv51 = fpext float %40 to double
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), double %conv51)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load float, float* %result, align 4
  %conv54 = fpext float %42 to double
  %43 = load float, float* @score, align 4
  %conv55 = fpext float %43 to double
  %call56 = call double @fabs(double %conv55) #7
  %cmp57 = fcmp oeq double %conv54, %call56
  br i1 %cmp57, label %land.lhs.true, label %if.else.65

land.lhs.true:                                    ; preds = %if.then.50
  %44 = load i8, i8* %winner, align 1
  %conv59 = sext i8 %44 to i32
  %45 = load i8, i8* %dummy, align 1
  %conv60 = sext i8 %45 to i32
  %cmp61 = icmp eq i32 %conv59, %conv60
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %land.lhs.true
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %46)
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true, %if.then.50
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %47)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.86

if.else.68:                                       ; preds = %if.then.46
  %48 = load i8*, i8** %tempc, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx, align 1
  %conv69 = sext i8 %49 to i32
  %cmp70 = icmp eq i32 %conv69, 82
  br i1 %cmp70, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %if.else.68
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call74 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %51)
  %52 = load i8*, i8** %tempc, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %53 to i32
  %54 = load i8, i8* %winner, align 1
  %conv77 = sext i8 %54 to i32
  %cmp78 = icmp eq i32 %conv76, %conv77
  br i1 %cmp78, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.then.72
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call81 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %55)
  br label %if.end.84

if.else.82:                                       ; preds = %if.then.72
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call83 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %56)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.else.68
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.67
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.40
  %root88 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %score_tree, i32 0, i32 0
  %57 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root88, align 8
  %58 = load float, float* @score, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %57, float %58, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* %score_tree)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.87, %do.end
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %lor.lhs.false
  store i32 0, i32* @doing_scoring, align 4
  %59 = load i8*, i8** %scoringmode.addr, align 8
  %call91 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.104

if.then.93:                                       ; preds = %if.end.90
  %60 = load i32, i32* %next, align 4
  call void @examine_position(i32 %60, i32 99)
  %call94 = call float @estimate_score(float* null, float* null)
  store float %call94, float* @score, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = load float, float* @score, align 4
  %cmp95 = fcmp olt float %62, 0.000000e+00
  %cond97 = select i1 %cmp95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)
  %63 = load float, float* @score, align 4
  %cmp98 = fcmp olt float %63, 0.000000e+00
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.93
  %64 = load float, float* @score, align 4
  %sub100 = fsub float -0.000000e+00, %64
  br label %cond.end

cond.false:                                       ; preds = %if.then.93
  %65 = load float, float* @score, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond101 = phi float [ %sub100, %cond.true ], [ %65, %cond.false ]
  %conv102 = fpext float %cond101 to double
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0), i8* %cond97, double %conv102)
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end, %if.end.90
  ret void
}

declare void @sgffile_printboard(%struct.SGFTree_t*) #1

declare void @reset_engine() #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @genmove_conservative(i32*, i32*, i32) #1

declare void @play_move(i32, i32) #1

declare float @aftermath_compute_score(i32, float, %struct.SGFTree_t*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @sgfGetCharProperty(%struct.SGFNode_t*, i8*, i8**) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare void @examine_position(i32, i32) #1

declare float @estimate_score(float*, float*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
