; ModuleID = 'engine/influence.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.influence_data = type { [400 x i8], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x i32], [400 x i32], [400 x i32], [1084 x i32], [1084 x i32], [1084 x float], i32, i32, [400 x float], [400 x i32], i32, i32, [361 x i32], i32, [722 x %struct.intrusion_data] }
%struct.intrusion_data = type { i32, i32, float, float }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.interpolation_data = type { i32, float, float, [21 x float] }
%struct.moyo_data = type { i32, [400 x i32], [361 x i32], [361 x i32], [361 x float] }

@debug = external global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"  non-territory for %C at %1m\0A\00", align 1
@current_influence = internal global %struct.influence_data* null, align 8
@board = external global [421 x i8], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"engine/influence.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@initial_black_influence = common global %struct.influence_data zeroinitializer, align 4
@initial_white_influence = common global %struct.influence_data zeroinitializer, align 4
@barrierspat_db = external global %struct.pattern_db, align 8
@debug_influence = internal global i32 0, align 4
@compute_escape_influence.cached_board = internal global [400 x i32] zeroinitializer, align 16
@compute_escape_influence.escape_values = internal global [400 x [2 x i8]] zeroinitializer, align 16
@compute_escape_influence.active_caches = internal global [2 x i32] zeroinitializer, align 4
@escape_influence = internal global %struct.influence_data zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"IS_STONE(color)\00", align 1
@territory_cache_position_number = internal global i32 -1, align 4
@position_number = external global i32, align 4
@territory_cache_color = internal global i32 -1, align 4
@delta_territory_cache = internal global [400 x float] zeroinitializer, align 16
@followup_territory_cache = internal global [400 x float] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  %1m:   - %1m territory change %f (%f -> %f)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"  %1m:   - captured stones %f\0A\00", align 1
@printmoyo = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"white attenuation (%s):\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%3.2f\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"black attenuation (%s):\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"white permeability:\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"black permeability:\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"white strength:\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%5.1f\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%3.0f\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"black strength:\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"white influence (%s):\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"black influence (%s):\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"influence regions (%s):\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"territory (%s)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%5.2f\00", align 1
@move_influence = common global %struct.influence_data zeroinitializer, align 4
@followup_influence = common global %struct.influence_data zeroinitializer, align 4
@stackp = external global i32, align 4
@black_captured = external global i32, align 4
@white_captured = external global i32, align 4
@influencepat_db = external global %struct.pattern_db, align 8
@delta = external global [8 x i32], align 16
@transformation = external global [1369 x [8 x i32]], align 16
@doing_scoring = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@.str.22 = private unnamed_addr constant [26 x i8] c"pattern->patn[k].att == 2\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Influence pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"influence pattern '%s'+%d matched at %1m\0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"  low intensity influence source at %1m, strength %f, color %C\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"  extra %C source at %1m, strength %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"  barrier for %s influence at %1m\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"  intrusion at %1m\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"intrusion list exhausted\0A\00", align 1
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@segment_region.marked = internal global [400 x i8] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [38 x i8] c"  followup for %1m: intrusion at %1m\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Adding %s intrusion at %1m, value %f\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"Adding %s intrusion for %1m at %1m, value %f (correction %f)\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"  black block removed from %1m\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"  white block removed from %1m\0A\00", align 1
@accumulate_influence.queue = internal global [400 x i32] zeroinitializer, align 16
@accumulate_influence.working = internal global [400 x i32] zeroinitializer, align 16
@accumulate_influence.working_area_initialized = internal global i32 0, align 4
@deltai = external global [8 x i32], align 16
@deltaj = external global [8 x i32], align 16
@board_size = external global i32, align 4
@min_infl_for_territory = internal global %struct.interpolation_data { i32 6, float 0.000000e+00, float 2.400000e+01, [21 x float] [float 6.000000e+00, float 1.500000e+01, float 2.600000e+01, float 3.600000e+01, float 4.500000e+01, float 5.000000e+01, float 5.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, align 4
@territory_correction = internal global %struct.interpolation_data { i32 5, float 0.000000e+00, float 1.000000e+00, [21 x float] [float 0.000000e+00, float 2.500000e-01, float 0x3FDCCCCCC0000000, float 0x3FE4CCCCC0000000, float 0x3FEB333340000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @influence_mark_non_territory(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @debug, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %3 = load i32, i32* %color.addr, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.influence_data*, %struct.influence_data** @current_influence, align 8
  %non_territory = getelementptr inbounds %struct.influence_data, %struct.influence_data* %5, i32 0, i32 18
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* %non_territory, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %or = or i32 %6, %3
  store i32 %or, i32* %arrayidx, align 4
  ret void
}

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @compute_influence(i32 %color, i8* %safe_stones, float* %strength, %struct.influence_data* %q, i32 %move, i8* %trace_message) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %q.addr = alloca %struct.influence_data*, align 8
  %move.addr = alloca i32, align 4
  %trace_message.addr = alloca i8*, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i8* %trace_message, i8** %trace_message.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %0, i32 0, i32 16
  store i32 1, i32* %is_territorial_influence, align 4
  %1 = load i32, i32* %color.addr, align 4
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %color_to_move = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 20
  store i32 %1, i32* %color_to_move, align 4
  %3 = load i32, i32* %color.addr, align 4
  %4 = load i8*, i8** %safe_stones.addr, align 8
  %5 = load float*, float** %strength.addr, align 8
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i8*, i8** %trace_message.addr, align 8
  call void @do_compute_influence(i32 %3, i8* %4, float* %5, %struct.influence_data* %6, i32 %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_compute_influence(i32 %color, i8* %safe_stones, float* %strength, %struct.influence_data* %q, i32 %move, i8* %trace_message) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %q.addr = alloca %struct.influence_data*, align 8
  %move.addr = alloca i32, align 4
  %trace_message.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  %int_white_permeabilities = alloca [400 x i32], align 16
  %int_black_permeabilities = alloca [400 x i32], align 16
  %int_white_influence = alloca [400 x i32], align 16
  %int_black_influence = alloca [400 x i32], align 16
  %inv_diagonal_damping = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i8* %trace_message, i8** %trace_message.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i8*, i8** %safe_stones.addr, align 8
  %3 = load float*, float** %strength.addr, align 8
  call void @init_influence(%struct.influence_data* %0, i32 %1, i8* %2, float* %3)
  %4 = load i32, i32* @stackp, align 4
  %sub = sub nsw i32 %4, 1
  call void @modify_depth_values(i32 %sub)
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %cmp = icmp ne %struct.influence_data* %5, @escape_influence
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %color.addr, align 4
  call void @find_influence_patterns(%struct.influence_data* %6, i32 %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @find_influence_patterns(%struct.influence_data* %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* @stackp, align 4
  %sub1 = sub nsw i32 1, %9
  call void @modify_depth_values(i32 %sub1)
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 16
  %11 = load i32, i32* %is_territorial_influence, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  store i32 2409, i32* %inv_diagonal_damping, align 4
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  store i32 2048, i32* %inv_diagonal_damping, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %12 = bitcast [400 x i32]* %int_white_influence to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 1600, i32 16, i1 false)
  %13 = bitcast [400 x i32]* %int_black_influence to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %14 = load i32, i32* %ii, align 4
  %cmp5 = icmp slt i32 %14, 400
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 7
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom
  %17 = load float, float* %arrayidx, align 4
  %mul = fmul float %17, 4.096000e+03
  %conv = fptosi float %mul to i32
  %conv6 = sitofp i32 %conv to double
  %add = fadd double %conv6, 5.000000e-01
  %conv7 = fptosi double %add to i32
  %18 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* %int_white_permeabilities, i32 0, i64 %idxprom8
  store i32 %conv7, i32* %arrayidx9, align 4
  %19 = load i32, i32* %ii, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %20, i32 0, i32 8
  %arrayidx11 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom10
  %21 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %21, 4.096000e+03
  %conv13 = fptosi float %mul12 to i32
  %conv14 = sitofp i32 %conv13 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %conv16 = fptosi double %add15 to i32
  %22 = load i32, i32* %ii, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [400 x i32], [400 x i32]* %int_black_permeabilities, i32 0, i64 %idxprom17
  store i32 %conv16, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %ii, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.73, %for.end
  %24 = load i32, i32* %ii, align 4
  %cmp20 = icmp slt i32 %24, 400
  br i1 %cmp20, label %for.body.22, label %for.end.75

for.body.22:                                      ; preds = %for.cond.19
  %25 = load i32, i32* %ii, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %cmp26 = icmp ne i32 %conv25, 3
  br i1 %cmp26, label %if.then.28, label %if.end.72

if.then.28:                                       ; preds = %for.body.22
  %27 = load i32, i32* %ii, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %28, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom29
  %29 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %29 to double
  %cmp32 = fcmp ogt double %conv31, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.then.28
  %30 = load i32, i32* %ii, align 4
  %31 = load i32, i32* %ii, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength36 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %32, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [400 x float], [400 x float]* %white_strength36, i32 0, i64 %idxprom35
  %33 = load float, float* %arrayidx37, align 4
  %mul38 = fmul float %33, 4.096000e+03
  %conv39 = fptosi float %mul38 to i32
  %conv40 = sitofp i32 %conv39 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  %34 = load i32, i32* %ii, align 4
  %idxprom43 = sext i32 %34 to i64
  %35 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [400 x float], [400 x float]* %white_attenuation, i32 0, i64 %idxprom43
  %36 = load float, float* %arrayidx44, align 4
  %div = fdiv float 4.096000e+03, %36
  %conv45 = fptosi float %div to i32
  %37 = load i32, i32* %inv_diagonal_damping, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %int_white_permeabilities, i32 0, i32 0
  %38 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %38, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [400 x i32], [400 x i32]* %int_white_influence, i32 0, i32 0
  call void @accumulate_influence(i32 %30, i32 %conv42, i32 %conv45, i32 %37, i32* %arraydecay, i8* %arraydecay46, i32* %arraydecay47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.34, %if.then.28
  %39 = load i32, i32* %ii, align 4
  %idxprom49 = sext i32 %39 to i64
  %40 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %40, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom49
  %41 = load float, float* %arrayidx50, align 4
  %conv51 = fpext float %41 to double
  %cmp52 = fcmp ogt double %conv51, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.71

if.then.54:                                       ; preds = %if.end.48
  %42 = load i32, i32* %ii, align 4
  %43 = load i32, i32* %ii, align 4
  %idxprom55 = sext i32 %43 to i64
  %44 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength56 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %44, i32 0, i32 4
  %arrayidx57 = getelementptr inbounds [400 x float], [400 x float]* %black_strength56, i32 0, i64 %idxprom55
  %45 = load float, float* %arrayidx57, align 4
  %mul58 = fmul float %45, 4.096000e+03
  %conv59 = fptosi float %mul58 to i32
  %conv60 = sitofp i32 %conv59 to double
  %add61 = fadd double %conv60, 5.000000e-01
  %conv62 = fptosi double %add61 to i32
  %46 = load i32, i32* %ii, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %47, i32 0, i32 6
  %arrayidx64 = getelementptr inbounds [400 x float], [400 x float]* %black_attenuation, i32 0, i64 %idxprom63
  %48 = load float, float* %arrayidx64, align 4
  %div65 = fdiv float 4.096000e+03, %48
  %conv66 = fptosi float %div65 to i32
  %49 = load i32, i32* %inv_diagonal_damping, align 4
  %arraydecay67 = getelementptr inbounds [400 x i32], [400 x i32]* %int_black_permeabilities, i32 0, i32 0
  %50 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe68 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 0
  %arraydecay69 = getelementptr inbounds [400 x i8], [400 x i8]* %safe68, i32 0, i32 0
  %arraydecay70 = getelementptr inbounds [400 x i32], [400 x i32]* %int_black_influence, i32 0, i32 0
  call void @accumulate_influence(i32 %42, i32 %conv62, i32 %conv66, i32 %49, i32* %arraydecay67, i8* %arraydecay69, i32* %arraydecay70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.54, %if.end.48
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %for.body.22
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %51 = load i32, i32* %ii, align 4
  %inc74 = add nsw i32 %51, 1
  store i32 %inc74, i32* %ii, align 4
  br label %for.cond.19

for.end.75:                                       ; preds = %for.cond.19
  store i32 21, i32* %ii, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %for.end.75
  %52 = load i32, i32* %ii, align 4
  %cmp77 = icmp slt i32 %52, 400
  br i1 %cmp77, label %for.body.79, label %for.end.94

for.body.79:                                      ; preds = %for.cond.76
  %53 = load i32, i32* %ii, align 4
  %idxprom80 = sext i32 %53 to i64
  %arrayidx81 = getelementptr inbounds [400 x i32], [400 x i32]* %int_white_influence, i32 0, i64 %idxprom80
  %54 = load i32, i32* %arrayidx81, align 4
  %conv82 = sitofp i32 %54 to float
  %div83 = fdiv float %conv82, 4.096000e+03
  %55 = load i32, i32* %ii, align 4
  %idxprom84 = sext i32 %55 to i64
  %56 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom84
  store float %div83, float* %arrayidx85, align 4
  %57 = load i32, i32* %ii, align 4
  %idxprom86 = sext i32 %57 to i64
  %arrayidx87 = getelementptr inbounds [400 x i32], [400 x i32]* %int_black_influence, i32 0, i64 %idxprom86
  %58 = load i32, i32* %arrayidx87, align 4
  %conv88 = sitofp i32 %58 to float
  %div89 = fdiv float %conv88, 4.096000e+03
  %59 = load i32, i32* %ii, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %60, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom90
  store float %div89, float* %arrayidx91, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.79
  %61 = load i32, i32* %ii, align 4
  %inc93 = add nsw i32 %61, 1
  store i32 %inc93, i32* %ii, align 4
  br label %for.cond.76

for.end.94:                                       ; preds = %for.cond.76
  %62 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @value_territory(%struct.influence_data* %62)
  %63 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @segment_influence(%struct.influence_data* %63)
  %64 = load i32, i32* %move.addr, align 4
  %cmp95 = icmp eq i32 %64, 0
  br i1 %cmp95, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end.94
  %65 = load i32, i32* @printmoyo, align 4
  %and = and i32 %65, 8
  %tobool97 = icmp ne i32 %and, 0
  br i1 %tobool97, label %if.then.102, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end.94
  %66 = load i32, i32* @debug_influence, align 4
  %tobool98 = icmp ne i32 %66, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.103

land.lhs.true.99:                                 ; preds = %lor.lhs.false
  %67 = load i32, i32* %move.addr, align 4
  %68 = load i32, i32* @debug_influence, align 4
  %cmp100 = icmp eq i32 %67, %68
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.99, %land.lhs.true
  %69 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %70 = load i8*, i8** %trace_message.addr, align 8
  call void @print_influence(%struct.influence_data* %69, i8* %70)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %land.lhs.true.99, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @whose_territory(%struct.influence_data* %q, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  %pos.addr = alloca i32, align 4
  %bi = alloca float, align 4
  %wi = alloca float, align 4
  %terr = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  store float %2, float* %bi, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom1
  %5 = load float, float* %arrayidx2, align 4
  store float %5, float* %wi, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %7, i32 0, i32 17
  %arrayidx4 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom3
  %8 = load float, float* %arrayidx4, align 4
  store float %8, float* %terr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %9, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %11 to i32
  %cmp7 = icmp ne i32 %conv, 3
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %13, 20
  %sub9 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1017, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %sub, i32 %sub9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load float, float* %bi, align 4
  %conv10 = fpext float %14 to double
  %cmp11 = fcmp ogt double %conv10, 0.000000e+00
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.22

land.lhs.true.13:                                 ; preds = %if.end
  %15 = load float, float* %wi, align 4
  %conv14 = fpext float %15 to double
  %cmp15 = fcmp oeq double %conv14, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %16 = load float, float* %terr, align 4
  %conv18 = fpext float %16 to double
  %cmp19 = fcmp olt double %conv18, -9.500000e-01
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.17
  store i32 2, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.17, %land.lhs.true.13, %if.end
  %17 = load float, float* %wi, align 4
  %conv23 = fpext float %17 to double
  %cmp24 = fcmp ogt double %conv23, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.35

land.lhs.true.26:                                 ; preds = %if.end.22
  %18 = load float, float* %bi, align 4
  %conv27 = fpext float %18 to double
  %cmp28 = fcmp oeq double %conv27, 0.000000e+00
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %19 = load float, float* %terr, align 4
  %conv31 = fpext float %19 to double
  %cmp32 = fcmp ogt double %conv31, 9.500000e-01
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.30, %land.lhs.true.26, %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.then.21
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @whose_moyo(%struct.influence_data* %q, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  %pos.addr = alloca i32, align 4
  %bi = alloca float, align 4
  %wi = alloca float, align 4
  %territory_color = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  store float %2, float* %bi, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom1
  %5 = load float, float* %arrayidx2, align 4
  store float %5, float* %wi, align 4
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @whose_territory(%struct.influence_data* %6, i32 %7)
  store i32 %call, i32* %territory_color, align 4
  %8 = load i32, i32* %territory_color, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %territory_color, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load float, float* %bi, align 4
  %conv = fpext float %10 to double
  %11 = load float, float* %wi, align 4
  %conv3 = fpext float %11 to double
  %mul = fmul double 7.000000e+00, %conv3
  %cmp4 = fcmp ogt double %conv, %mul
  br i1 %cmp4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %12 = load float, float* %bi, align 4
  %conv6 = fpext float %12 to double
  %cmp7 = fcmp ogt double %conv6, 5.000000e+00
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %13 = load float, float* %wi, align 4
  %conv10 = fpext float %13 to double
  %cmp11 = fcmp olt double %conv10, 1.000000e+01
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 2, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %14 = load float, float* %wi, align 4
  %conv15 = fpext float %14 to double
  %15 = load float, float* %bi, align 4
  %conv16 = fpext float %15 to double
  %mul17 = fmul double 7.000000e+00, %conv16
  %cmp18 = fcmp ogt double %conv15, %mul17
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %if.end.14
  %16 = load float, float* %wi, align 4
  %conv21 = fpext float %16 to double
  %cmp22 = fcmp ogt double %conv21, 5.000000e+00
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %17 = load float, float* %bi, align 4
  %conv25 = fpext float %17 to double
  %cmp26 = fcmp olt double %conv25, 1.000000e+01
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %land.lhs.true.20, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.13, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @whose_area(%struct.influence_data* %q, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  %pos.addr = alloca i32, align 4
  %bi = alloca float, align 4
  %wi = alloca float, align 4
  %moyo_color = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  store float %2, float* %bi, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom1
  %5 = load float, float* %arrayidx2, align 4
  store float %5, float* %wi, align 4
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @whose_moyo(%struct.influence_data* %6, i32 %7)
  store i32 %call, i32* %moyo_color, align 4
  %8 = load i32, i32* %moyo_color, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %moyo_color, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load float, float* %bi, align 4
  %conv = fpext float %10 to double
  %11 = load float, float* %wi, align 4
  %conv3 = fpext float %11 to double
  %mul = fmul double 3.000000e+00, %conv3
  %cmp4 = fcmp ogt double %conv, %mul
  br i1 %cmp4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %12 = load float, float* %bi, align 4
  %conv6 = fpext float %12 to double
  %cmp7 = fcmp ogt double %conv6, 1.000000e+00
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %13 = load float, float* %wi, align 4
  %conv10 = fpext float %13 to double
  %cmp11 = fcmp olt double %conv10, 4.000000e+01
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 2, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.9, %land.lhs.true, %if.end
  %14 = load float, float* %wi, align 4
  %conv15 = fpext float %14 to double
  %15 = load float, float* %bi, align 4
  %conv16 = fpext float %15 to double
  %mul17 = fmul double 3.000000e+00, %conv16
  %cmp18 = fcmp ogt double %conv15, %mul17
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.29

land.lhs.true.20:                                 ; preds = %if.end.14
  %16 = load float, float* %wi, align 4
  %conv21 = fpext float %16 to double
  %cmp22 = fcmp ogt double %conv21, 1.000000e+00
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %17 = load float, float* %bi, align 4
  %conv25 = fpext float %17 to double
  %cmp26 = fcmp olt double %conv25, 4.000000e+01
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.24, %land.lhs.true.20, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.13, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @influence_get_moyo_segmentation(%struct.influence_data* %q, %struct.moyo_data* %moyos) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %moyos.addr = alloca %struct.moyo_data*, align 8
  %ii = alloca i32, align 4
  %min_moyo_id = alloca i32, align 4
  %max_moyo_id = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store %struct.moyo_data* %moyos, %struct.moyo_data** %moyos.addr, align 8
  store i32 1084, i32* %min_moyo_id, align 4
  store i32 0, i32* %max_moyo_id, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 10
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %min_moyo_id, align 4
  %7 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation9 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 10
  %arrayidx10 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation9, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp slt i32 %6, %9
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %10 = load i32, i32* %min_moyo_id, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %11 = load i32, i32* %ii, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %12, i32 0, i32 10
  %arrayidx15 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation14, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %min_moyo_id, align 4
  %14 = load i32, i32* %max_moyo_id, align 4
  %15 = load i32, i32* %ii, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation17 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 10
  %arrayidx18 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation17, i32 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp slt i32 %14, %17
  br i1 %cmp19, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %cond.end
  %18 = load i32, i32* %ii, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation23 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 10
  %arrayidx24 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation23, i32 0, i64 %idxprom22
  %20 = load i32, i32* %arrayidx24, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  %21 = load i32, i32* %max_moyo_id, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.21
  %cond27 = phi i32 [ %20, %cond.true.21 ], [ %21, %cond.false.25 ]
  store i32 %cond27, i32* %max_moyo_id, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.26, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %22 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %max_moyo_id, align 4
  %24 = load i32, i32* %min_moyo_id, align 4
  %sub = sub nsw i32 %23, %24
  %add = add nsw i32 %sub, 1
  %25 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %number = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %25, i32 0, i32 0
  store i32 %add, i32* %number, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.57, %for.end
  %26 = load i32, i32* %ii, align 4
  %cmp30 = icmp slt i32 %26, 400
  br i1 %cmp30, label %for.body.32, label %for.end.59

for.body.32:                                      ; preds = %for.cond.29
  %27 = load i32, i32* %ii, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %28 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %28 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %if.then.38, label %if.end.56

if.then.38:                                       ; preds = %for.body.32
  %29 = load i32, i32* %ii, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation40 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %30, i32 0, i32 10
  %arrayidx41 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation40, i32 0, i64 %idxprom39
  %31 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %31, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.38
  %32 = load i32, i32* %ii, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation46 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 10
  %arrayidx47 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation46, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx47, align 4
  %35 = load i32, i32* %min_moyo_id, align 4
  %sub48 = sub nsw i32 %34, %35
  %add49 = add nsw i32 %sub48, 1
  %36 = load i32, i32* %ii, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %segmentation = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %37, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [400 x i32], [400 x i32]* %segmentation, i32 0, i64 %idxprom50
  store i32 %add49, i32* %arrayidx51, align 4
  br label %if.end.55

if.else:                                          ; preds = %if.then.38
  %38 = load i32, i32* %ii, align 4
  %idxprom52 = sext i32 %38 to i64
  %39 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %segmentation53 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %39, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [400 x i32], [400 x i32]* %segmentation53, i32 0, i64 %idxprom52
  store i32 0, i32* %arrayidx54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.44
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body.32
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %40 = load i32, i32* %ii, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %ii, align 4
  br label %for.cond.29

for.end.59:                                       ; preds = %for.cond.29
  %41 = load i32, i32* %min_moyo_id, align 4
  store i32 %41, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.90, %for.end.59
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %max_moyo_id, align 4
  %cmp61 = icmp sle i32 %42, %43
  br i1 %cmp61, label %for.body.63, label %for.end.92

for.body.63:                                      ; preds = %for.cond.60
  %44 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_size = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 13
  %arrayidx65 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_size, i32 0, i64 %idxprom64
  %46 = load i32, i32* %arrayidx65, align 4
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %min_moyo_id, align 4
  %sub66 = sub nsw i32 %47, %48
  %add67 = add nsw i32 %sub66, 1
  %idxprom68 = sext i32 %add67 to i64
  %49 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %size = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %49, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [361 x i32], [361 x i32]* %size, i32 0, i64 %idxprom68
  store i32 %46, i32* %arrayidx69, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_territorial_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %51, i32 0, i32 14
  %arrayidx71 = getelementptr inbounds [1084 x float], [1084 x float]* %region_territorial_value, i32 0, i64 %idxprom70
  %52 = load float, float* %arrayidx71, align 4
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %min_moyo_id, align 4
  %sub72 = sub nsw i32 %53, %54
  %add73 = add nsw i32 %sub72, 1
  %idxprom74 = sext i32 %add73 to i64
  %55 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %territorial_value = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %55, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [361 x float], [361 x float]* %territorial_value, i32 0, i64 %idxprom74
  store float %52, float* %arrayidx75, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %56 to i64
  %57 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_type = getelementptr inbounds %struct.influence_data, %struct.influence_data* %57, i32 0, i32 12
  %arrayidx77 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_type, i32 0, i64 %idxprom76
  %58 = load i32, i32* %arrayidx77, align 4
  %and = and i32 %58, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.78, label %if.else.83

if.then.78:                                       ; preds = %for.body.63
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %min_moyo_id, align 4
  %sub79 = sub nsw i32 %59, %60
  %add80 = add nsw i32 %sub79, 1
  %idxprom81 = sext i32 %add80 to i64
  %61 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %owner = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %61, i32 0, i32 3
  %arrayidx82 = getelementptr inbounds [361 x i32], [361 x i32]* %owner, i32 0, i64 %idxprom81
  store i32 2, i32* %arrayidx82, align 4
  br label %if.end.89

if.else.83:                                       ; preds = %for.body.63
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %min_moyo_id, align 4
  %sub84 = sub nsw i32 %62, %63
  %add85 = add nsw i32 %sub84, 1
  %idxprom86 = sext i32 %add85 to i64
  %64 = load %struct.moyo_data*, %struct.moyo_data** %moyos.addr, align 8
  %owner87 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %64, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [361 x i32], [361 x i32]* %owner87, i32 0, i64 %idxprom86
  store i32 1, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.83, %if.then.78
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %65 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %65, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.60

for.end.92:                                       ; preds = %for.cond.60
  ret void
}

; Function Attrs: nounwind uwtable
define void @influence_get_moyo_data(%struct.influence_data* %q, i32* %moyo_color, float* %territory_value) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %moyo_color.addr = alloca i32*, align 8
  %territory_value.addr = alloca float*, align 8
  %ii = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32* %moyo_color, i32** %moyo_color.addr, align 8
  store float* %territory_value, float** %territory_value.addr, align 8
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %4 = load i32, i32* %ii, align 4
  %call = call i32 @whose_moyo_restricted(%struct.influence_data* %3, i32 %4)
  %5 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32*, i32** %moyo_color.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  store i32 %call, i32* %arrayidx4, align 4
  %7 = load i32, i32* %ii, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value6 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 17
  %arrayidx7 = getelementptr inbounds [400 x float], [400 x float]* %territory_value6, i32 0, i64 %idxprom5
  %9 = load float, float* %arrayidx7, align 4
  %cmp8 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i32, i32* %ii, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value11 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [400 x float], [400 x float]* %territory_value11, i32 0, i64 %idxprom10
  %12 = load float, float* %arrayidx12, align 4
  %sub = fsub float -0.000000e+00, %12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i32, i32* %ii, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %14, i32 0, i32 17
  %arrayidx15 = getelementptr inbounds [400 x float], [400 x float]* %territory_value14, i32 0, i64 %idxprom13
  %15 = load float, float* %arrayidx15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %15, %cond.false ]
  %16 = load i32, i32* %ii, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load float*, float** %territory_value.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %17, i64 %idxprom16
  store float %cond, float* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @whose_moyo_restricted(%struct.influence_data* %q, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  %pos.addr = alloca i32, align 4
  %bi = alloca float, align 4
  %wi = alloca float, align 4
  %color = alloca i32, align 4
  %territory_color = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  store float %2, float* %bi, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom1
  %5 = load float, float* %arrayidx2, align 4
  store float %5, float* %wi, align 4
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @whose_territory(%struct.influence_data* %6, i32 %7)
  store i32 %call, i32* %territory_color, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 16
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 18
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %11 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %11, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, i32* %territory_color, align 4
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %13 = load i32, i32* %territory_color, align 4
  store i32 %13, i32* %color, align 4
  br label %if.end.42

if.else:                                          ; preds = %if.end
  %14 = load float, float* %bi, align 4
  %conv = fpext float %14 to double
  %15 = load float, float* %wi, align 4
  %conv12 = fpext float %15 to double
  %mul = fmul double 1.000000e+01, %conv12
  %cmp13 = fcmp ogt double %conv, %mul
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.24

land.lhs.true.15:                                 ; preds = %if.else
  %16 = load float, float* %bi, align 4
  %conv16 = fpext float %16 to double
  %cmp17 = fcmp ogt double %conv16, 1.000000e+01
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.24

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %17 = load float, float* %wi, align 4
  %conv20 = fpext float %17 to double
  %cmp21 = fcmp olt double %conv20, 1.000000e+01
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.19
  store i32 2, i32* %color, align 4
  br label %if.end.41

if.else.24:                                       ; preds = %land.lhs.true.19, %land.lhs.true.15, %if.else
  %18 = load float, float* %wi, align 4
  %conv25 = fpext float %18 to double
  %19 = load float, float* %bi, align 4
  %conv26 = fpext float %19 to double
  %mul27 = fmul double 1.000000e+01, %conv26
  %cmp28 = fcmp ogt double %conv25, %mul27
  br i1 %cmp28, label %land.lhs.true.30, label %if.else.39

land.lhs.true.30:                                 ; preds = %if.else.24
  %20 = load float, float* %wi, align 4
  %conv31 = fpext float %20 to double
  %cmp32 = fcmp ogt double %conv31, 1.000000e+01
  br i1 %cmp32, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %land.lhs.true.30
  %21 = load float, float* %bi, align 4
  %conv35 = fpext float %21 to double
  %cmp36 = fcmp olt double %conv35, 1.000000e+01
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %color, align 4
  br label %if.end.40

if.else.39:                                       ; preds = %land.lhs.true.34, %land.lhs.true.30, %if.else.24
  store i32 0, i32* %color, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.23
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.11
  %22 = load i32, i32* %color, align 4
  %cmp43 = icmp eq i32 %22, 1
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.50

land.lhs.true.45:                                 ; preds = %if.end.42
  %23 = load i32, i32* %pos.addr, align 4
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom46
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx47, i32 0, i32 8
  %24 = load i8, i8* %type, align 1
  %conv48 = sext i8 %24 to i32
  %and = and i32 %conv48, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.45
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.45, %if.end.42
  %25 = load i32, i32* %color, align 4
  %cmp51 = icmp eq i32 %25, 2
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %if.end.50
  %26 = load i32, i32* %pos.addr, align 4
  %idxprom54 = sext i32 %26 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom54
  %type56 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx55, i32 0, i32 8
  %27 = load i8, i8* %type56, align 1
  %conv57 = sext i8 %27 to i32
  %and58 = and i32 %conv57, 4
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.53
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.53, %if.end.50
  %28 = load i32, i32* %color, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.then.49, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define float @influence_territory(%struct.influence_data* %q, i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca float, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 17
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  store float %3, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value2 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %5, i32 0, i32 17
  %arrayidx3 = getelementptr inbounds [400 x float], [400 x float]* %territory_value2, i32 0, i64 %idxprom1
  %6 = load float, float* %arrayidx3, align 4
  %sub = fsub float -0.000000e+00, %6
  store float %sub, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load float, float* %retval
  ret float %7
}

; Function Attrs: nounwind uwtable
define void @resegment_initial_influence() #0 {
entry:
  call void @segment_influence(%struct.influence_data* @initial_black_influence)
  call void @segment_influence(%struct.influence_data* @initial_white_influence)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @segment_influence(%struct.influence_data* %q) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %ii = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions = getelementptr inbounds %struct.influence_data, %struct.influence_data* %0, i32 0, i32 15
  store i32 0, i32* %number_of_regions, align 4
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_type = getelementptr inbounds %struct.influence_data, %struct.influence_data* %1, i32 0, i32 12
  %arrayidx = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_type, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_size = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 13
  %arrayidx1 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_size, i32 0, i64 0
  store i32 0, i32* %arrayidx1, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %3, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %ii, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_segmentation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %7, i32 0, i32 9
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* %territory_segmentation, i32 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  %8 = load i32, i32* %ii, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 10
  %arrayidx8 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation, i32 0, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  %10 = load i32, i32* %ii, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %area_segmentation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 11
  %arrayidx10 = getelementptr inbounds [400 x i32], [400 x i32]* %area_segmentation, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_segmentation11 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %14, i32 0, i32 9
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %territory_segmentation11, i32 0, i32 0
  call void @segment_region(%struct.influence_data* %13, i32 (%struct.influence_data*, i32)* @whose_territory, i32 2, i32* %arraydecay)
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %moyo_segmentation12 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 10
  %arraydecay13 = getelementptr inbounds [400 x i32], [400 x i32]* %moyo_segmentation12, i32 0, i32 0
  call void @segment_region(%struct.influence_data* %15, i32 (%struct.influence_data*, i32)* @whose_moyo_restricted, i32 4, i32* %arraydecay13)
  %17 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %area_segmentation14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %18, i32 0, i32 11
  %arraydecay15 = getelementptr inbounds [400 x i32], [400 x i32]* %area_segmentation14, i32 0, i32 0
  call void @segment_region(%struct.influence_data* %17, i32 (%struct.influence_data*, i32)* @whose_area, i32 8, i32* %arraydecay15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_followup_influence(%struct.influence_data* %base, %struct.influence_data* %q, i32 %move, i8* %trace_message) #0 {
entry:
  %base.addr = alloca %struct.influence_data*, align 8
  %q.addr = alloca %struct.influence_data*, align 8
  %move.addr = alloca i32, align 4
  %trace_message.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  %goal = alloca [400 x i8], align 16
  %color = alloca i32, align 4
  %inv_diagonal_damping = alloca i32, align 4
  %int_permeabilities = alloca [400 x i32], align 16
  %int_influence = alloca [400 x i32], align 16
  store %struct.influence_data* %base, %struct.influence_data** %base.addr, align 8
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i8* %trace_message, i8** %trace_message.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %color_to_move = getelementptr inbounds %struct.influence_data, %struct.influence_data* %0, i32 0, i32 20
  %1 = load i32, i32* %color_to_move, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, i32* %color, align 4
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %3 = bitcast %struct.influence_data* %2 to i8*
  %4 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %5 = bitcast %struct.influence_data* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %5, i64 47224, i32 4, i1 false)
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %6, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %12 = load i32, i32* %ii, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load i32, i32* %ii, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i64 %idxprom11
  store i8 0, i8* %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %14 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 22
  store i32 0, i32* %intrusion_counter, align 4
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  store %struct.influence_data* %16, %struct.influence_data** @current_influence, align 8
  %17 = load i32, i32* %color, align 4
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %19 = bitcast %struct.influence_data* %18 to i8*
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %goal, i32 0, i32 0
  call void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* @followup_influence_callback, i32 %17, %struct.pattern_db* @barrierspat_db, i8* %19, i8* %arraydecay, i32 1)
  %20 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %21 = load i32, i32* %color, align 4
  call void @add_marked_intrusions(%struct.influence_data* %20, i32 %21)
  %22 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @reset_unblocked_blocks(%struct.influence_data* %22)
  store i32 2409, i32* %inv_diagonal_damping, align 4
  %23 = bitcast [400 x i32]* %int_influence to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %ii, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.46, %for.end
  %24 = load i32, i32* %ii, align 4
  %cmp15 = icmp slt i32 %24, 400
  br i1 %cmp15, label %for.body.17, label %for.end.48

for.body.17:                                      ; preds = %for.cond.14
  %25 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %26 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %26 to i32
  %cmp21 = icmp ne i32 %conv20, 3
  br i1 %cmp21, label %if.then.23, label %if.end.45

if.then.23:                                       ; preds = %for.body.17
  %27 = load i32, i32* %color, align 4
  %cmp24 = icmp eq i32 %27, 1
  br i1 %cmp24, label %if.then.26, label %if.else.34

if.then.26:                                       ; preds = %if.then.23
  %28 = load i32, i32* %ii, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %29, i32 0, i32 7
  %arrayidx28 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom27
  %30 = load float, float* %arrayidx28, align 4
  %mul = fmul float %30, 4.096000e+03
  %conv29 = fptosi float %mul to i32
  %conv30 = sitofp i32 %conv29 to double
  %add = fadd double %conv30, 5.000000e-01
  %conv31 = fptosi double %add to i32
  %31 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [400 x i32], [400 x i32]* %int_permeabilities, i32 0, i64 %idxprom32
  store i32 %conv31, i32* %arrayidx33, align 4
  br label %if.end.44

if.else.34:                                       ; preds = %if.then.23
  %32 = load i32, i32* %ii, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 8
  %arrayidx36 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom35
  %34 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %34, 4.096000e+03
  %conv38 = fptosi float %mul37 to i32
  %conv39 = sitofp i32 %conv38 to double
  %add40 = fadd double %conv39, 5.000000e-01
  %conv41 = fptosi double %add40 to i32
  %35 = load i32, i32* %ii, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [400 x i32], [400 x i32]* %int_permeabilities, i32 0, i64 %idxprom42
  store i32 %conv41, i32* %arrayidx43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.34, %if.then.26
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %for.body.17
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %36 = load i32, i32* %ii, align 4
  %inc47 = add nsw i32 %36, 1
  store i32 %inc47, i32* %ii, align 4
  br label %for.cond.14

for.end.48:                                       ; preds = %for.cond.14
  store i32 21, i32* %ii, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.115, %for.end.48
  %37 = load i32, i32* %ii, align 4
  %cmp50 = icmp slt i32 %37, 400
  br i1 %cmp50, label %for.body.52, label %for.end.117

for.body.52:                                      ; preds = %for.cond.49
  %38 = load i32, i32* %ii, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %39 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %39 to i32
  %cmp56 = icmp ne i32 %conv55, 3
  br i1 %cmp56, label %if.then.58, label %if.end.114

if.then.58:                                       ; preds = %for.body.52
  %40 = load i32, i32* %color, align 4
  %cmp59 = icmp eq i32 %40, 2
  br i1 %cmp59, label %land.lhs.true, label %if.else.84

land.lhs.true:                                    ; preds = %if.then.58
  %41 = load i32, i32* %ii, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %42, i32 0, i32 4
  %arrayidx62 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom61
  %43 = load float, float* %arrayidx62, align 4
  %44 = load i32, i32* %ii, align 4
  %idxprom63 = sext i32 %44 to i64
  %45 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %black_strength64 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 4
  %arrayidx65 = getelementptr inbounds [400 x float], [400 x float]* %black_strength64, i32 0, i64 %idxprom63
  %46 = load float, float* %arrayidx65, align 4
  %cmp66 = fcmp ogt float %43, %46
  br i1 %cmp66, label %if.then.68, label %if.else.84

if.then.68:                                       ; preds = %land.lhs.true
  %47 = load i32, i32* %ii, align 4
  %48 = load i32, i32* %ii, align 4
  %idxprom69 = sext i32 %48 to i64
  %49 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength70 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %49, i32 0, i32 4
  %arrayidx71 = getelementptr inbounds [400 x float], [400 x float]* %black_strength70, i32 0, i64 %idxprom69
  %50 = load float, float* %arrayidx71, align 4
  %mul72 = fmul float %50, 4.096000e+03
  %conv73 = fptosi float %mul72 to i32
  %conv74 = sitofp i32 %conv73 to double
  %add75 = fadd double %conv74, 5.000000e-01
  %conv76 = fptosi double %add75 to i32
  %51 = load i32, i32* %ii, align 4
  %idxprom77 = sext i32 %51 to i64
  %52 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %52, i32 0, i32 6
  %arrayidx78 = getelementptr inbounds [400 x float], [400 x float]* %black_attenuation, i32 0, i64 %idxprom77
  %53 = load float, float* %arrayidx78, align 4
  %div = fdiv float 4.096000e+03, %53
  %conv79 = fptosi float %div to i32
  %54 = load i32, i32* %inv_diagonal_damping, align 4
  %arraydecay80 = getelementptr inbounds [400 x i32], [400 x i32]* %int_permeabilities, i32 0, i32 0
  %55 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe81 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %55, i32 0, i32 0
  %arraydecay82 = getelementptr inbounds [400 x i8], [400 x i8]* %safe81, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [400 x i32], [400 x i32]* %int_influence, i32 0, i32 0
  call void @accumulate_influence(i32 %47, i32 %conv76, i32 %conv79, i32 %54, i32* %arraydecay80, i8* %arraydecay82, i32* %arraydecay83)
  br label %if.end.113

if.else.84:                                       ; preds = %land.lhs.true, %if.then.58
  %56 = load i32, i32* %color, align 4
  %cmp85 = icmp eq i32 %56, 1
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.112

land.lhs.true.87:                                 ; preds = %if.else.84
  %57 = load i32, i32* %ii, align 4
  %idxprom88 = sext i32 %57 to i64
  %58 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %58, i32 0, i32 3
  %arrayidx89 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom88
  %59 = load float, float* %arrayidx89, align 4
  %60 = load i32, i32* %ii, align 4
  %idxprom90 = sext i32 %60 to i64
  %61 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %white_strength91 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %61, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [400 x float], [400 x float]* %white_strength91, i32 0, i64 %idxprom90
  %62 = load float, float* %arrayidx92, align 4
  %cmp93 = fcmp ogt float %59, %62
  br i1 %cmp93, label %if.then.95, label %if.end.112

if.then.95:                                       ; preds = %land.lhs.true.87
  %63 = load i32, i32* %ii, align 4
  %64 = load i32, i32* %ii, align 4
  %idxprom96 = sext i32 %64 to i64
  %65 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength97 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %65, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [400 x float], [400 x float]* %white_strength97, i32 0, i64 %idxprom96
  %66 = load float, float* %arrayidx98, align 4
  %mul99 = fmul float %66, 4.096000e+03
  %conv100 = fptosi float %mul99 to i32
  %conv101 = sitofp i32 %conv100 to double
  %add102 = fadd double %conv101, 5.000000e-01
  %conv103 = fptosi double %add102 to i32
  %67 = load i32, i32* %ii, align 4
  %idxprom104 = sext i32 %67 to i64
  %68 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %68, i32 0, i32 5
  %arrayidx105 = getelementptr inbounds [400 x float], [400 x float]* %white_attenuation, i32 0, i64 %idxprom104
  %69 = load float, float* %arrayidx105, align 4
  %div106 = fdiv float 4.096000e+03, %69
  %conv107 = fptosi float %div106 to i32
  %70 = load i32, i32* %inv_diagonal_damping, align 4
  %arraydecay108 = getelementptr inbounds [400 x i32], [400 x i32]* %int_permeabilities, i32 0, i32 0
  %71 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe109 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %71, i32 0, i32 0
  %arraydecay110 = getelementptr inbounds [400 x i8], [400 x i8]* %safe109, i32 0, i32 0
  %arraydecay111 = getelementptr inbounds [400 x i32], [400 x i32]* %int_influence, i32 0, i32 0
  call void @accumulate_influence(i32 %63, i32 %conv103, i32 %conv107, i32 %70, i32* %arraydecay108, i8* %arraydecay110, i32* %arraydecay111)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.95, %land.lhs.true.87, %if.else.84
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.68
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %for.body.52
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %72 = load i32, i32* %ii, align 4
  %inc116 = add nsw i32 %72, 1
  store i32 %inc116, i32* %ii, align 4
  br label %for.cond.49

for.end.117:                                      ; preds = %for.cond.49
  store i32 21, i32* %ii, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.148, %for.end.117
  %73 = load i32, i32* %ii, align 4
  %cmp119 = icmp slt i32 %73, 400
  br i1 %cmp119, label %for.body.121, label %for.end.150

for.body.121:                                     ; preds = %for.cond.118
  %74 = load i32, i32* %ii, align 4
  %idxprom122 = sext i32 %74 to i64
  %arrayidx123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom122
  %75 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %75 to i32
  %cmp125 = icmp ne i32 %conv124, 3
  br i1 %cmp125, label %if.then.127, label %if.end.147

if.then.127:                                      ; preds = %for.body.121
  %76 = load i32, i32* %color, align 4
  %cmp128 = icmp eq i32 %76, 1
  br i1 %cmp128, label %if.then.130, label %if.else.138

if.then.130:                                      ; preds = %if.then.127
  %77 = load i32, i32* %ii, align 4
  %idxprom131 = sext i32 %77 to i64
  %arrayidx132 = getelementptr inbounds [400 x i32], [400 x i32]* %int_influence, i32 0, i64 %idxprom131
  %78 = load i32, i32* %arrayidx132, align 4
  %conv133 = sitofp i32 %78 to float
  %div134 = fdiv float %conv133, 4.096000e+03
  %79 = load i32, i32* %ii, align 4
  %idxprom135 = sext i32 %79 to i64
  %80 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %80, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom135
  %81 = load float, float* %arrayidx136, align 4
  %add137 = fadd float %81, %div134
  store float %add137, float* %arrayidx136, align 4
  br label %if.end.146

if.else.138:                                      ; preds = %if.then.127
  %82 = load i32, i32* %ii, align 4
  %idxprom139 = sext i32 %82 to i64
  %arrayidx140 = getelementptr inbounds [400 x i32], [400 x i32]* %int_influence, i32 0, i64 %idxprom139
  %83 = load i32, i32* %arrayidx140, align 4
  %conv141 = sitofp i32 %83 to float
  %div142 = fdiv float %conv141, 4.096000e+03
  %84 = load i32, i32* %ii, align 4
  %idxprom143 = sext i32 %84 to i64
  %85 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %85, i32 0, i32 2
  %arrayidx144 = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom143
  %86 = load float, float* %arrayidx144, align 4
  %add145 = fadd float %86, %div142
  store float %add145, float* %arrayidx144, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.138, %if.then.130
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %for.body.121
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %87 = load i32, i32* %ii, align 4
  %inc149 = add nsw i32 %87, 1
  store i32 %inc149, i32* %ii, align 4
  br label %for.cond.118

for.end.150:                                      ; preds = %for.cond.118
  %88 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @value_territory(%struct.influence_data* %88)
  %89 = load i32, i32* @debug_influence, align 4
  %tobool = icmp ne i32 %89, 0
  br i1 %tobool, label %land.lhs.true.151, label %if.end.155

land.lhs.true.151:                                ; preds = %for.end.150
  %90 = load i32, i32* @debug_influence, align 4
  %91 = load i32, i32* %move.addr, align 4
  %cmp152 = icmp eq i32 %90, %91
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.151
  %92 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %93 = load i8*, i8** %trace_message.addr, align 8
  call void @print_influence(%struct.influence_data* %92, i8* %93)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.151, %for.end.150
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @followup_influence_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %q = alloca %struct.influence_data*, align 8
  %ii = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.influence_data*
  store %struct.influence_data* %1, %struct.influence_data** %q, align 8
  %2 = load i32, i32* %color.addr, align 4
  %3 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %3, i32 0, i32 14
  %4 = load i32, i32* %class, align 4
  %and = and i32 %4, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 11
  %7 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %t, align 4
  %10 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 22
  %11 = load i32, i32* %autohelper_flag, align 4
  %and3 = and i32 %11, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %12, i32 0, i32 24
  %13 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %14 = load i32, i32* %ll.addr, align 4
  %15 = load i32, i32* %t, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call = call i32 %13(i32 %14, i32 %15, i32 %16, i32 0)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  br label %for.end

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 23
  %18 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool10 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end.9
  %19 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper12 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 23
  %20 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper12, align 8
  %21 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %22 = load i32, i32* %ll.addr, align 4
  %23 = load i32, i32* %t, align 4
  %24 = load i32, i32* %color.addr, align 4
  %call13 = call i32 %20(%struct.pattern* %21, i32 %22, i32 %23, i32 %24)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.19, label %if.then.15

if.then.15:                                       ; preds = %if.then.11
  %25 = load i32, i32* @debug, align 4
  %and16 = and i32 %25, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.15
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  %26 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %26, i32 0, i32 3
  %27 = load i8*, i8** %name, align 8
  %28 = load i32, i32* %ll.addr, align 4
  %29 = load i32, i32* %t, align 4
  %call18 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0), i8* %27, i32 %28, i32 %29)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.end

if.end.19:                                        ; preds = %if.then.11
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.9
  %30 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag21 = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 22
  %31 = load i32, i32* %autohelper_flag21, align 4
  %and22 = and i32 %31, 2
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.20
  %32 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper24 = getelementptr inbounds %struct.pattern, %struct.pattern* %32, i32 0, i32 24
  %33 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper24, align 8
  %34 = load i32, i32* %ll.addr, align 4
  %35 = load i32, i32* %t, align 4
  %36 = load i32, i32* %color.addr, align 4
  %call25 = call i32 %33(i32 %34, i32 %35, i32 %36, i32 2)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.28:                                        ; preds = %land.lhs.true, %if.end.20
  %37 = load i32, i32* @debug, align 4
  %and29 = and i32 %37, 1
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.false.32, label %cond.true.31

cond.true.31:                                     ; preds = %if.end.28
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.end.28
  %38 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name33 = getelementptr inbounds %struct.pattern, %struct.pattern* %38, i32 0, i32 3
  %39 = load i8*, i8** %name33, align 8
  %40 = load i32, i32* %ll.addr, align 4
  %41 = load i32, i32* %anchor.addr, align 4
  %call34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* %39, i32 %40, i32 %41)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.31
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.35
  %42 = load i32, i32* %k, align 4
  %43 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %43, i32 0, i32 1
  %44 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %42, %44
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %46, i32 0, i32 0
  %47 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx37 = getelementptr inbounds %struct.patval, %struct.patval* %47, i64 %idxprom36
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx37, i32 0, i32 1
  %48 = load i32, i32* %att, align 4
  %cmp38 = icmp eq i32 %48, 7
  br i1 %cmp38, label %if.then.39, label %if.end.54

if.then.39:                                       ; preds = %for.body
  %49 = load i32, i32* %ll.addr, align 4
  %idxprom40 = sext i32 %49 to i64
  %50 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %50 to i64
  %51 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn42 = getelementptr inbounds %struct.pattern, %struct.pattern* %51, i32 0, i32 0
  %52 = load %struct.patval*, %struct.patval** %patn42, align 8
  %arrayidx43 = getelementptr inbounds %struct.patval, %struct.patval* %52, i64 %idxprom41
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx43, i32 0, i32 0
  %53 = load i32, i32* %offset, align 4
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx45, i32 0, i64 %idxprom40
  %54 = load i32, i32* %arrayidx46, align 4
  %55 = load i32, i32* %anchor.addr, align 4
  %add47 = add nsw i32 %54, %55
  store i32 %add47, i32* %ii, align 4
  %56 = load i32, i32* %anchor.addr, align 4
  %57 = load i32, i32* %ii, align 4
  %58 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %58, i32 0, i32 15
  %59 = load float, float* %value, align 4
  %60 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @enter_intrusion_source(i32 %56, i32 %57, float %59, float 0x4003333340000000, %struct.influence_data* %60)
  %61 = load i32, i32* @debug, align 4
  %and48 = and i32 %61, 1
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.false.51, label %cond.true.50

cond.true.50:                                     ; preds = %if.then.39
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.then.39
  %62 = load i32, i32* %anchor.addr, align 4
  %63 = load i32, i32* %ii, align 4
  %call52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i32 %62, i32 %63)
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.53, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %64 = load i32, i32* %k, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.7, %cond.end, %if.then.27, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_marked_intrusions(%struct.influence_data* %q, i32 %color) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %source_pos = alloca i32, align 4
  %strength_sum = alloca float, align 4
  %correction = alloca float, align 4
  %source_strength = alloca float, align 4
  %allowed_strength = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %j, align 4
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions = getelementptr inbounds %struct.influence_data, %struct.influence_data* %0, i32 0, i32 23
  %arraydecay = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions, i32 0, i32 0
  %1 = bitcast %struct.intrusion_data* %arraydecay to i8*
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 22
  %3 = load i32, i32* %intrusion_counter, align 4
  %conv = sext i32 %3 to i64
  call void @gg_sort(i8* %1, i64 %conv, i64 16, i32 (i8*, i8*)* @compare_intrusions)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.142, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter1 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %5, i32 0, i32 22
  %6 = load i32, i32* %intrusion_counter1, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.143

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %strength_sum, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions3 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 23
  %arrayidx = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions3, i32 0, i64 %idxprom
  %source_pos4 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %source_pos4, align 4
  store i32 %9, i32* %source_pos, align 4
  %10 = load i32, i32* %source_pos, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions8 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %12, i32 0, i32 23
  %arrayidx9 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions8, i32 0, i64 %idxprom7
  %strength_pos = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx9, i32 0, i32 1
  %13 = load i32, i32* %strength_pos, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions11 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 23
  %arrayidx12 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions11, i32 0, i64 %idxprom10
  %strength = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx12, i32 0, i32 2
  %17 = load float, float* %strength, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 23
  %arrayidx15 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions14, i32 0, i64 %idxprom13
  %attenuation = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx15, i32 0, i32 3
  %20 = load float, float* %attenuation, align 4
  %21 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @add_influence_source(i32 %13, i32 %14, float %17, float %20, %struct.influence_data* %21)
  %22 = load i32, i32* @debug, align 4
  %and = and i32 %22, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load i32, i32* %color.addr, align 4
  %cmp16 = icmp eq i32 %23, 2
  %cond = select i1 %cmp16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)
  %24 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions19 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 23
  %arrayidx20 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions19, i32 0, i64 %idxprom18
  %strength_pos21 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx20, i32 0, i32 1
  %26 = load i32, i32* %strength_pos21, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions23 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %28, i32 0, i32 23
  %arrayidx24 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions23, i32 0, i64 %idxprom22
  %strength25 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx24, i32 0, i32 2
  %29 = load float, float* %strength25, align 4
  %conv26 = fpext float %29 to double
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), i8* %cond, i32 %26, double %conv26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %30 = load i32, i32* %i, align 4
  %add = add nsw i32 %30, 1
  store i32 %add, i32* %j, align 4
  br label %for.inc.142

if.end:                                           ; preds = %for.body
  %31 = load i32, i32* %color.addr, align 4
  %cmp27 = icmp eq i32 %31, 2
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end
  %32 = load i32, i32* %source_pos, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom30
  %34 = load float, float* %arrayidx31, align 4
  store float %34, float* %source_strength, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %35 = load i32, i32* %source_pos, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %36, i32 0, i32 3
  %arrayidx33 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom32
  %37 = load float, float* %arrayidx33, align 4
  store float %37, float* %source_strength, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.29
  %38 = load i32, i32* %i, align 4
  store i32 %38, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %if.end.34
  %39 = load i32, i32* %j, align 4
  %40 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter36 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %40, i32 0, i32 22
  %41 = load i32, i32* %intrusion_counter36, align 4
  %cmp37 = icmp slt i32 %39, %41
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.35
  %42 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions40 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %43, i32 0, i32 23
  %arrayidx41 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions40, i32 0, i64 %idxprom39
  %source_pos42 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx41, i32 0, i32 0
  %44 = load i32, i32* %source_pos42, align 4
  %45 = load i32, i32* %source_pos, align 4
  %cmp43 = icmp eq i32 %44, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.35
  %46 = phi i1 [ false, %for.cond.35 ], [ %cmp43, %land.rhs ]
  br i1 %46, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %land.end
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %i, align 4
  %cmp46 = icmp eq i32 %47, %48
  br i1 %cmp46, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.45
  %49 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions49 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 23
  %arrayidx50 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions49, i32 0, i64 %idxprom48
  %strength_pos51 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx50, i32 0, i32 1
  %51 = load i32, i32* %strength_pos51, align 4
  %52 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %52, 1
  %idxprom52 = sext i32 %sub to i64
  %53 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions53 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %53, i32 0, i32 23
  %arrayidx54 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions53, i32 0, i64 %idxprom52
  %strength_pos55 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx54, i32 0, i32 1
  %54 = load i32, i32* %strength_pos55, align 4
  %cmp56 = icmp ne i32 %51, %54
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %lor.lhs.false, %for.body.45
  %55 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %55 to i64
  %56 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions60 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 23
  %arrayidx61 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions60, i32 0, i64 %idxprom59
  %strength62 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx61, i32 0, i32 2
  %57 = load float, float* %strength62, align 4
  %58 = load float, float* %strength_sum, align 4
  %add63 = fadd float %58, %57
  store float %add63, float* %strength_sum, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.35

for.end:                                          ; preds = %land.end
  %60 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %cmp65 = icmp eq %struct.influence_data* %60, @followup_influence
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %for.end
  %61 = load float, float* %source_strength, align 4
  store float %61, float* %allowed_strength, align 4
  br label %if.end.71

if.else.68:                                       ; preds = %for.end
  %62 = load float, float* %source_strength, align 4
  %conv69 = fpext float %62 to double
  %mul = fmul double 6.000000e-01, %conv69
  %conv70 = fptrunc double %mul to float
  store float %conv70, float* %allowed_strength, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  %63 = load float, float* %strength_sum, align 4
  %64 = load float, float* %allowed_strength, align 4
  %cmp72 = fcmp ogt float %63, %64
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.71
  %65 = load float, float* %allowed_strength, align 4
  %66 = load float, float* %strength_sum, align 4
  %div = fdiv float %65, %66
  store float %div, float* %correction, align 4
  br label %if.end.76

if.else.75:                                       ; preds = %if.end.71
  store float 1.000000e+00, float* %correction, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  %67 = load i32, i32* %i, align 4
  store i32 %67, i32* %j, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.139, %if.end.76
  %68 = load i32, i32* %j, align 4
  %69 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter78 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %69, i32 0, i32 22
  %70 = load i32, i32* %intrusion_counter78, align 4
  %cmp79 = icmp slt i32 %68, %70
  br i1 %cmp79, label %land.rhs.81, label %land.end.88

land.rhs.81:                                      ; preds = %for.cond.77
  %71 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %71 to i64
  %72 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions83 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %72, i32 0, i32 23
  %arrayidx84 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions83, i32 0, i64 %idxprom82
  %source_pos85 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx84, i32 0, i32 0
  %73 = load i32, i32* %source_pos85, align 4
  %74 = load i32, i32* %source_pos, align 4
  %cmp86 = icmp eq i32 %73, %74
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.81, %for.cond.77
  %75 = phi i1 [ false, %for.cond.77 ], [ %cmp86, %land.rhs.81 ]
  br i1 %75, label %for.body.89, label %for.end.141

for.body.89:                                      ; preds = %land.end.88
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %i, align 4
  %cmp90 = icmp eq i32 %76, %77
  br i1 %cmp90, label %if.then.104, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %for.body.89
  %78 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %78 to i64
  %79 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions94 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %79, i32 0, i32 23
  %arrayidx95 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions94, i32 0, i64 %idxprom93
  %strength_pos96 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx95, i32 0, i32 1
  %80 = load i32, i32* %strength_pos96, align 4
  %81 = load i32, i32* %j, align 4
  %sub97 = sub nsw i32 %81, 1
  %idxprom98 = sext i32 %sub97 to i64
  %82 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions99 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %82, i32 0, i32 23
  %arrayidx100 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions99, i32 0, i64 %idxprom98
  %strength_pos101 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx100, i32 0, i32 1
  %83 = load i32, i32* %strength_pos101, align 4
  %cmp102 = icmp ne i32 %80, %83
  br i1 %cmp102, label %if.then.104, label %if.end.138

if.then.104:                                      ; preds = %lor.lhs.false.92, %for.body.89
  %84 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %84 to i64
  %85 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions106 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %85, i32 0, i32 23
  %arrayidx107 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions106, i32 0, i64 %idxprom105
  %strength_pos108 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx107, i32 0, i32 1
  %86 = load i32, i32* %strength_pos108, align 4
  %87 = load i32, i32* %color.addr, align 4
  %88 = load float, float* %correction, align 4
  %89 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %89 to i64
  %90 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions110 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %90, i32 0, i32 23
  %arrayidx111 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions110, i32 0, i64 %idxprom109
  %strength112 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx111, i32 0, i32 2
  %91 = load float, float* %strength112, align 4
  %mul113 = fmul float %88, %91
  %92 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %92 to i64
  %93 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions115 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %93, i32 0, i32 23
  %arrayidx116 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions115, i32 0, i64 %idxprom114
  %attenuation117 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx116, i32 0, i32 3
  %94 = load float, float* %attenuation117, align 4
  %95 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @add_influence_source(i32 %86, i32 %87, float %mul113, float %94, %struct.influence_data* %95)
  %96 = load i32, i32* @debug, align 4
  %and118 = and i32 %96, 1
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %cond.false.121, label %cond.true.120

cond.true.120:                                    ; preds = %if.then.104
  br label %cond.end.137

cond.false.121:                                   ; preds = %if.then.104
  %97 = load i32, i32* %color.addr, align 4
  %cmp122 = icmp eq i32 %97, 2
  %cond124 = select i1 %cmp122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)
  %98 = load i32, i32* %source_pos, align 4
  %99 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %99 to i64
  %100 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions126 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %100, i32 0, i32 23
  %arrayidx127 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions126, i32 0, i64 %idxprom125
  %strength_pos128 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx127, i32 0, i32 1
  %101 = load i32, i32* %strength_pos128, align 4
  %102 = load float, float* %correction, align 4
  %103 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %103 to i64
  %104 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions130 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %104, i32 0, i32 23
  %arrayidx131 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions130, i32 0, i64 %idxprom129
  %strength132 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx131, i32 0, i32 2
  %105 = load float, float* %strength132, align 4
  %mul133 = fmul float %102, %105
  %conv134 = fpext float %mul133 to double
  %106 = load float, float* %correction, align 4
  %conv135 = fpext float %106 to double
  %call136 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i32 0, i32 0), i8* %cond124, i32 %98, i32 %101, double %conv134, double %conv135)
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.121, %cond.true.120
  br label %if.end.138

if.end.138:                                       ; preds = %cond.end.137, %lor.lhs.false.92
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %107 = load i32, i32* %j, align 4
  %inc140 = add nsw i32 %107, 1
  store i32 %inc140, i32* %j, align 4
  br label %for.cond.77

for.end.141:                                      ; preds = %land.end.88
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141, %cond.end
  %108 = load i32, i32* %j, align 4
  store i32 %108, i32* %i, align 4
  br label %for.cond

for.end.143:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_unblocked_blocks(%struct.influence_data* %q) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %pos = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
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
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.48

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %7, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom5
  %8 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %8 to double
  %cmp8 = fcmp ogt double %conv7, 0.000000e+00
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom11
  %11 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %11 to double
  %cmp14 = fcmp une double %conv13, 1.000000e+00
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true.10
  %12 = load i32, i32* @debug, align 4
  %and = and i32 %12, 1
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.16
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %13 = load i32, i32* %pos, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i32 %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability19 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 7
  %arrayidx20 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability19, i32 0, i64 %idxprom18
  store float 1.000000e+00, float* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.10, %land.lhs.true, %if.then
  %16 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe22 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %17, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [400 x i8], [400 x i8]* %safe22, i32 0, i64 %idxprom21
  %18 = load i8, i8* %arrayidx23, align 1
  %tobool24 = icmp ne i8 %18, 0
  br i1 %tobool24, label %if.end.47, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %if.end
  %19 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %20, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom26
  %21 = load float, float* %arrayidx27, align 4
  %conv28 = fpext float %21 to double
  %cmp29 = fcmp ogt double %conv28, 0.000000e+00
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.47

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %22 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 8
  %arrayidx33 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom32
  %24 = load float, float* %arrayidx33, align 4
  %conv34 = fpext float %24 to double
  %cmp35 = fcmp une double %conv34, 1.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %land.lhs.true.31
  %25 = load i32, i32* @debug, align 4
  %and38 = and i32 %25, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %cond.false.41, label %cond.true.40

cond.true.40:                                     ; preds = %if.then.37
  br label %cond.end.43

cond.false.41:                                    ; preds = %if.then.37
  %26 = load i32, i32* %pos, align 4
  %call42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i32 %26)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.40
  %27 = load i32, i32* %pos, align 4
  %idxprom44 = sext i32 %27 to i64
  %28 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability45 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %28, i32 0, i32 8
  %arrayidx46 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability45, i32 0, i64 %idxprom44
  store float 1.000000e+00, float* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end.43, %land.lhs.true.31, %land.lhs.true.25, %if.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %29 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @accumulate_influence(i32 %pos, i32 %strength, i32 %inv_attenuation, i32 %inv_diagonal_damping, i32* %permeability_array, i8* %safe, i32* %influence) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %strength.addr = alloca i32, align 4
  %inv_attenuation.addr = alloca i32, align 4
  %inv_diagonal_damping.addr = alloca i32, align 4
  %permeability_array.addr = alloca i32*, align 8
  %safe.addr = alloca i8*, align 8
  %influence.addr = alloca i32*, align 8
  %ii = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %b = alloca i32, align 4
  %queue_start = alloca i32, align 4
  %queue_end = alloca i32, align 4
  %current_strength = alloca i32, align 4
  %delta_i = alloca i32, align 4
  %delta_j = alloca i32, align 4
  %contribution = alloca i32, align 4
  %permeability = alloca i32, align 4
  %a = alloca i32, align 4
  %contribution144 = alloca i32, align 4
  %permeability145 = alloca i32, align 4
  %a187 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %strength, i32* %strength.addr, align 4
  store i32 %inv_attenuation, i32* %inv_attenuation.addr, align 4
  store i32 %inv_diagonal_damping, i32* %inv_diagonal_damping.addr, align 4
  store i32* %permeability_array, i32** %permeability_array.addr, align 8
  store i8* %safe, i8** %safe.addr, align 8
  store i32* %influence, i32** %influence.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %m, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %n, align 4
  store i32 0, i32* %queue_start, align 4
  store i32 1, i32* %queue_end, align 4
  %2 = load i32, i32* @accumulate_influence.working_area_initialized, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %3, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @accumulate_influence.working_area_initialized, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load i32, i32* %pos.addr, align 4
  store i32 %6, i32* getelementptr inbounds ([400 x i32], [400 x i32]* @accumulate_influence.queue, i32 0, i64 0), align 4
  %7 = load i32, i32* %strength.addr, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom2
  store i32 %7, i32* %arrayidx3, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.231, %if.then.17, %if.end
  %9 = load i32, i32* %queue_start, align 4
  %10 = load i32, i32* %queue_end, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %queue_start, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i32 0, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  store i32 %12, i32* %ii, align 4
  %13 = load i32, i32* %ii, align 4
  %div7 = sdiv i32 %13, 20
  %sub8 = sub nsw i32 %div7, 1
  %14 = load i32, i32* %m, align 4
  %sub9 = sub nsw i32 %sub8, %14
  store i32 %sub9, i32* %delta_i, align 4
  %15 = load i32, i32* %ii, align 4
  %rem10 = srem i32 %15, 20
  %sub11 = sub nsw i32 %rem10, 1
  %16 = load i32, i32* %n, align 4
  %sub12 = sub nsw i32 %sub11, %16
  store i32 %sub12, i32* %delta_j, align 4
  %17 = load i32, i32* %queue_start, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %queue_start, align 4
  %18 = load i32, i32* %ii, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 %idxprom14
  %20 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  br label %while.cond

if.end.18:                                        ; preds = %while.body
  %21 = load i32, i32* %queue_start, align 4
  %cmp19 = icmp eq i32 %21, 1
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  store i32 4096, i32* %b, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.18
  %22 = load i32, i32* %delta_i, align 4
  %23 = load i32, i32* %delta_i, align 4
  %mul = mul nsw i32 %22, %23
  %24 = load i32, i32* %delta_j, align 4
  %25 = load i32, i32* %delta_j, align 4
  %mul21 = mul nsw i32 %24, %25
  %add = add nsw i32 %mul, %mul21
  %div22 = sdiv i32 4096, %add
  store i32 %div22, i32* %b, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.20
  %26 = load i32, i32* %ii, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom24
  %27 = load i32, i32* %arrayidx25, align 4
  %28 = load i32, i32* %inv_attenuation.addr, align 4
  %mul26 = mul nsw i32 %27, %28
  %div27 = sdiv i32 %mul26, 4096
  store i32 %div27, i32* %current_strength, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.104, %if.end.23
  %29 = load i32, i32* %d, align 4
  %cmp29 = icmp slt i32 %29, 4
  br i1 %cmp29, label %for.body.30, label %for.end.106

for.body.30:                                      ; preds = %for.cond.28
  %30 = load i32, i32* %ii, align 4
  %31 = load i32, i32* %d, align 4
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom31
  %32 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %30, %32
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %33 = load i8, i8* %arrayidx35, align 1
  %conv = zext i8 %33 to i32
  %cmp36 = icmp ne i32 %conv, 3
  br i1 %cmp36, label %if.then.38, label %if.end.103

if.then.38:                                       ; preds = %for.body.30
  br label %do.body

do.body:                                          ; preds = %if.then.38
  %34 = load i32, i32* %ii, align 4
  %35 = load i32, i32* %d, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom39
  %36 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %34, %36
  %idxprom42 = sext i32 %add41 to i64
  %37 = load i8*, i8** %safe.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %37, i64 %idxprom42
  %38 = load i8, i8* %arrayidx43, align 1
  %tobool44 = icmp ne i8 %38, 0
  br i1 %tobool44, label %if.end.102, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %39 = load i32, i32* %d, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom45
  %40 = load i32, i32* %arrayidx46, align 4
  %41 = load i32, i32* %delta_i, align 4
  %mul47 = mul nsw i32 %40, %41
  %42 = load i32, i32* %d, align 4
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom48
  %43 = load i32, i32* %arrayidx49, align 4
  %44 = load i32, i32* %delta_j, align 4
  %mul50 = mul nsw i32 %43, %44
  %add51 = add nsw i32 %mul47, %mul50
  %cmp52 = icmp sgt i32 %add51, 0
  br i1 %cmp52, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %45 = load i32, i32* %queue_start, align 4
  %cmp54 = icmp eq i32 %45, 1
  br i1 %cmp54, label %if.then.56, label %if.end.102

if.then.56:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %46 = load i32, i32* %ii, align 4
  %idxprom57 = sext i32 %46 to i64
  %47 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %47, i64 %idxprom57
  %48 = load i32, i32* %arrayidx58, align 4
  store i32 %48, i32* %permeability, align 4
  %49 = load i32, i32* %current_strength, align 4
  %50 = load i32, i32* %permeability, align 4
  %mul59 = mul nsw i32 %49, %50
  %div60 = sdiv i32 %mul59, 4096
  store i32 %div60, i32* %contribution, align 4
  %51 = load i32, i32* %queue_start, align 4
  %cmp61 = icmp ne i32 %51, 1
  br i1 %cmp61, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %if.then.56
  %52 = load i32, i32* %d, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom64
  %53 = load i32, i32* %arrayidx65, align 4
  %54 = load i32, i32* %delta_i, align 4
  %mul66 = mul nsw i32 %53, %54
  %55 = load i32, i32* %d, align 4
  %idxprom67 = sext i32 %55 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom67
  %56 = load i32, i32* %arrayidx68, align 4
  %57 = load i32, i32* %delta_j, align 4
  %mul69 = mul nsw i32 %56, %57
  %add70 = add nsw i32 %mul66, %mul69
  store i32 %add70, i32* %a, align 4
  %58 = load i32, i32* %a, align 4
  %59 = load i32, i32* %a, align 4
  %mul71 = mul nsw i32 %58, %59
  %60 = load i32, i32* %contribution, align 4
  %mul72 = mul nsw i32 %60, %mul71
  store i32 %mul72, i32* %contribution, align 4
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %contribution, align 4
  %mul73 = mul nsw i32 %61, %62
  %div74 = sdiv i32 %mul73, 4096
  store i32 %div74, i32* %contribution, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.63, %if.then.56
  %63 = load i32, i32* %contribution, align 4
  %conv76 = sitofp i32 %63 to double
  %cmp77 = fcmp ole double %conv76, 8.150000e+01
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  br label %do.end

if.end.80:                                        ; preds = %if.end.75
  %64 = load i32, i32* %ii, align 4
  %65 = load i32, i32* %d, align 4
  %idxprom81 = sext i32 %65 to i64
  %arrayidx82 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom81
  %66 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %64, %66
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom84
  %67 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp eq i32 %67, 0
  br i1 %cmp86, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.80
  %68 = load i32, i32* %ii, align 4
  %69 = load i32, i32* %d, align 4
  %idxprom89 = sext i32 %69 to i64
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom89
  %70 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %68, %70
  %71 = load i32, i32* %queue_end, align 4
  %idxprom92 = sext i32 %71 to i64
  %arrayidx93 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i32 0, i64 %idxprom92
  store i32 %add91, i32* %arrayidx93, align 4
  %72 = load i32, i32* %queue_end, align 4
  %inc94 = add nsw i32 %72, 1
  store i32 %inc94, i32* %queue_end, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.88, %if.end.80
  %73 = load i32, i32* %contribution, align 4
  %74 = load i32, i32* %ii, align 4
  %75 = load i32, i32* %d, align 4
  %idxprom96 = sext i32 %75 to i64
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom96
  %76 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %74, %76
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom99
  %77 = load i32, i32* %arrayidx100, align 4
  %add101 = add nsw i32 %77, %73
  store i32 %add101, i32* %arrayidx100, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.95, %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.then.79, %if.end.102
  br label %if.end.103

if.end.103:                                       ; preds = %do.end, %for.body.30
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %78 = load i32, i32* %d, align 4
  %inc105 = add nsw i32 %78, 1
  store i32 %inc105, i32* %d, align 4
  br label %for.cond.28

for.end.106:                                      ; preds = %for.cond.28
  %79 = load i32, i32* %b, align 4
  %div107 = sdiv i32 %79, 2
  store i32 %div107, i32* %b, align 4
  %80 = load i32, i32* %current_strength, align 4
  %81 = load i32, i32* %inv_diagonal_damping.addr, align 4
  %mul108 = mul nsw i32 %80, %81
  %div109 = sdiv i32 %mul108, 4096
  store i32 %div109, i32* %current_strength, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.229, %for.end.106
  %82 = load i32, i32* %d, align 4
  %cmp111 = icmp slt i32 %82, 8
  br i1 %cmp111, label %for.body.113, label %for.end.231

for.body.113:                                     ; preds = %for.cond.110
  %83 = load i32, i32* %ii, align 4
  %84 = load i32, i32* %d, align 4
  %idxprom114 = sext i32 %84 to i64
  %arrayidx115 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom114
  %85 = load i32, i32* %arrayidx115, align 4
  %add116 = add nsw i32 %83, %85
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom117
  %86 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %86 to i32
  %cmp120 = icmp ne i32 %conv119, 3
  br i1 %cmp120, label %if.then.122, label %if.end.228

if.then.122:                                      ; preds = %for.body.113
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %87 = load i32, i32* %ii, align 4
  %88 = load i32, i32* %d, align 4
  %idxprom124 = sext i32 %88 to i64
  %arrayidx125 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom124
  %89 = load i32, i32* %arrayidx125, align 4
  %add126 = add nsw i32 %87, %89
  %idxprom127 = sext i32 %add126 to i64
  %90 = load i8*, i8** %safe.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %90, i64 %idxprom127
  %91 = load i8, i8* %arrayidx128, align 1
  %tobool129 = icmp ne i8 %91, 0
  br i1 %tobool129, label %if.end.226, label %land.lhs.true.130

land.lhs.true.130:                                ; preds = %do.body.123
  %92 = load i32, i32* %d, align 4
  %idxprom131 = sext i32 %92 to i64
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom131
  %93 = load i32, i32* %arrayidx132, align 4
  %94 = load i32, i32* %delta_i, align 4
  %mul133 = mul nsw i32 %93, %94
  %95 = load i32, i32* %d, align 4
  %idxprom134 = sext i32 %95 to i64
  %arrayidx135 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom134
  %96 = load i32, i32* %arrayidx135, align 4
  %97 = load i32, i32* %delta_j, align 4
  %mul136 = mul nsw i32 %96, %97
  %add137 = add nsw i32 %mul133, %mul136
  %cmp138 = icmp sgt i32 %add137, 0
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %land.lhs.true.130
  %98 = load i32, i32* %queue_start, align 4
  %cmp141 = icmp eq i32 %98, 1
  br i1 %cmp141, label %if.then.143, label %if.end.226

if.then.143:                                      ; preds = %lor.lhs.false.140, %land.lhs.true.130
  %99 = load i32, i32* %ii, align 4
  %idxprom146 = sext i32 %99 to i64
  %100 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %100, i64 %idxprom146
  %101 = load i32, i32* %arrayidx147, align 4
  store i32 %101, i32* %permeability145, align 4
  %102 = load i32, i32* %permeability145, align 4
  %103 = load i32, i32* %ii, align 4
  %104 = load i32, i32* %d, align 4
  %idxprom148 = sext i32 %104 to i64
  %arrayidx149 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom148
  %105 = load i32, i32* %arrayidx149, align 4
  %mul150 = mul nsw i32 %105, 20
  %add151 = add nsw i32 %mul150, 0
  %add152 = add nsw i32 %103, %add151
  %idxprom153 = sext i32 %add152 to i64
  %106 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %106, i64 %idxprom153
  %107 = load i32, i32* %arrayidx154, align 4
  %108 = load i32, i32* %ii, align 4
  %109 = load i32, i32* %d, align 4
  %idxprom155 = sext i32 %109 to i64
  %arrayidx156 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom155
  %110 = load i32, i32* %arrayidx156, align 4
  %add157 = add nsw i32 0, %110
  %add158 = add nsw i32 %108, %add157
  %idxprom159 = sext i32 %add158 to i64
  %111 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %111, i64 %idxprom159
  %112 = load i32, i32* %arrayidx160, align 4
  %cmp161 = icmp slt i32 %107, %112
  br i1 %cmp161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.143
  %113 = load i32, i32* %ii, align 4
  %114 = load i32, i32* %d, align 4
  %idxprom163 = sext i32 %114 to i64
  %arrayidx164 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom163
  %115 = load i32, i32* %arrayidx164, align 4
  %add165 = add nsw i32 0, %115
  %add166 = add nsw i32 %113, %add165
  %idxprom167 = sext i32 %add166 to i64
  %116 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %116, i64 %idxprom167
  %117 = load i32, i32* %arrayidx168, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.143
  %118 = load i32, i32* %ii, align 4
  %119 = load i32, i32* %d, align 4
  %idxprom169 = sext i32 %119 to i64
  %arrayidx170 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom169
  %120 = load i32, i32* %arrayidx170, align 4
  %mul171 = mul nsw i32 %120, 20
  %add172 = add nsw i32 %mul171, 0
  %add173 = add nsw i32 %118, %add172
  %idxprom174 = sext i32 %add173 to i64
  %121 = load i32*, i32** %permeability_array.addr, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %121, i64 %idxprom174
  %122 = load i32, i32* %arrayidx175, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %117, %cond.true ], [ %122, %cond.false ]
  %mul176 = mul nsw i32 %102, %cond
  %div177 = sdiv i32 %mul176, 4096
  store i32 %div177, i32* %permeability145, align 4
  %123 = load i32, i32* %permeability145, align 4
  %cmp178 = icmp eq i32 %123, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %cond.end
  br label %do.end.227

if.end.181:                                       ; preds = %cond.end
  %124 = load i32, i32* %current_strength, align 4
  %125 = load i32, i32* %permeability145, align 4
  %mul182 = mul nsw i32 %124, %125
  %div183 = sdiv i32 %mul182, 4096
  store i32 %div183, i32* %contribution144, align 4
  %126 = load i32, i32* %queue_start, align 4
  %cmp184 = icmp ne i32 %126, 1
  br i1 %cmp184, label %if.then.186, label %if.end.199

if.then.186:                                      ; preds = %if.end.181
  %127 = load i32, i32* %d, align 4
  %idxprom188 = sext i32 %127 to i64
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom188
  %128 = load i32, i32* %arrayidx189, align 4
  %129 = load i32, i32* %delta_i, align 4
  %mul190 = mul nsw i32 %128, %129
  %130 = load i32, i32* %d, align 4
  %idxprom191 = sext i32 %130 to i64
  %arrayidx192 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom191
  %131 = load i32, i32* %arrayidx192, align 4
  %132 = load i32, i32* %delta_j, align 4
  %mul193 = mul nsw i32 %131, %132
  %add194 = add nsw i32 %mul190, %mul193
  store i32 %add194, i32* %a187, align 4
  %133 = load i32, i32* %a187, align 4
  %134 = load i32, i32* %a187, align 4
  %mul195 = mul nsw i32 %133, %134
  %135 = load i32, i32* %contribution144, align 4
  %mul196 = mul nsw i32 %135, %mul195
  store i32 %mul196, i32* %contribution144, align 4
  %136 = load i32, i32* %b, align 4
  %137 = load i32, i32* %contribution144, align 4
  %mul197 = mul nsw i32 %136, %137
  %div198 = sdiv i32 %mul197, 4096
  store i32 %div198, i32* %contribution144, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.186, %if.end.181
  %138 = load i32, i32* %contribution144, align 4
  %conv200 = sitofp i32 %138 to double
  %cmp201 = fcmp ole double %conv200, 8.150000e+01
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.199
  br label %do.end.227

if.end.204:                                       ; preds = %if.end.199
  %139 = load i32, i32* %ii, align 4
  %140 = load i32, i32* %d, align 4
  %idxprom205 = sext i32 %140 to i64
  %arrayidx206 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom205
  %141 = load i32, i32* %arrayidx206, align 4
  %add207 = add nsw i32 %139, %141
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom208
  %142 = load i32, i32* %arrayidx209, align 4
  %cmp210 = icmp eq i32 %142, 0
  br i1 %cmp210, label %if.then.212, label %if.end.219

if.then.212:                                      ; preds = %if.end.204
  %143 = load i32, i32* %ii, align 4
  %144 = load i32, i32* %d, align 4
  %idxprom213 = sext i32 %144 to i64
  %arrayidx214 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom213
  %145 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %143, %145
  %146 = load i32, i32* %queue_end, align 4
  %idxprom216 = sext i32 %146 to i64
  %arrayidx217 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i32 0, i64 %idxprom216
  store i32 %add215, i32* %arrayidx217, align 4
  %147 = load i32, i32* %queue_end, align 4
  %inc218 = add nsw i32 %147, 1
  store i32 %inc218, i32* %queue_end, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.212, %if.end.204
  %148 = load i32, i32* %contribution144, align 4
  %149 = load i32, i32* %ii, align 4
  %150 = load i32, i32* %d, align 4
  %idxprom220 = sext i32 %150 to i64
  %arrayidx221 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom220
  %151 = load i32, i32* %arrayidx221, align 4
  %add222 = add nsw i32 %149, %151
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx224 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom223
  %152 = load i32, i32* %arrayidx224, align 4
  %add225 = add nsw i32 %152, %148
  store i32 %add225, i32* %arrayidx224, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.219, %lor.lhs.false.140, %do.body.123
  br label %do.end.227

do.end.227:                                       ; preds = %if.then.180, %if.then.203, %if.end.226
  br label %if.end.228

if.end.228:                                       ; preds = %do.end.227, %for.body.113
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %153 = load i32, i32* %d, align 4
  %inc230 = add nsw i32 %153, 1
  store i32 %inc230, i32* %d, align 4
  br label %for.cond.110

for.end.231:                                      ; preds = %for.cond.110
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.257, %while.end
  %154 = load i32, i32* %k, align 4
  %155 = load i32, i32* %queue_end, align 4
  %cmp233 = icmp slt i32 %154, %155
  br i1 %cmp233, label %for.body.235, label %for.end.259

for.body.235:                                     ; preds = %for.cond.232
  %156 = load i32, i32* %k, align 4
  %idxprom236 = sext i32 %156 to i64
  %arrayidx237 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i32 0, i64 %idxprom236
  %157 = load i32, i32* %arrayidx237, align 4
  store i32 %157, i32* %ii, align 4
  %158 = load i32, i32* %ii, align 4
  %idxprom238 = sext i32 %158 to i64
  %arrayidx239 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom238
  %159 = load i32, i32* %arrayidx239, align 4
  %conv240 = sitofp i32 %159 to double
  %cmp241 = fcmp ogt double %conv240, 8.150000e+01
  br i1 %cmp241, label %if.then.248, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %for.body.235
  %160 = load i32, i32* %ii, align 4
  %idxprom244 = sext i32 %160 to i64
  %161 = load i32*, i32** %influence.addr, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %161, i64 %idxprom244
  %162 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp eq i32 %162, 0
  br i1 %cmp246, label %if.then.248, label %if.end.254

if.then.248:                                      ; preds = %lor.lhs.false.243, %for.body.235
  %163 = load i32, i32* %ii, align 4
  %idxprom249 = sext i32 %163 to i64
  %arrayidx250 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom249
  %164 = load i32, i32* %arrayidx250, align 4
  %165 = load i32, i32* %ii, align 4
  %idxprom251 = sext i32 %165 to i64
  %166 = load i32*, i32** %influence.addr, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %166, i64 %idxprom251
  %167 = load i32, i32* %arrayidx252, align 4
  %add253 = add nsw i32 %167, %164
  store i32 %add253, i32* %arrayidx252, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.248, %lor.lhs.false.243
  %168 = load i32, i32* %ii, align 4
  %idxprom255 = sext i32 %168 to i64
  %arrayidx256 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i32 0, i64 %idxprom255
  store i32 0, i32* %arrayidx256, align 4
  br label %for.inc.257

for.inc.257:                                      ; preds = %if.end.254
  %169 = load i32, i32* %k, align 4
  %inc258 = add nsw i32 %169, 1
  store i32 %inc258, i32* %k, align 4
  br label %for.cond.232

for.end.259:                                      ; preds = %for.cond.232
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @value_territory(%struct.influence_data* %q) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %ii = alloca i32, align 4
  %dist_i = alloca i32, align 4
  %dist_j = alloca i32, align 4
  %central = alloca float, align 4
  %first_guess = alloca [400 x float], align 16
  %ratio = alloca float, align 4
  %k = alloca i32, align 4
  %diff = alloca float, align 4
  %neighbor_val = alloca float, align 4
  %neighbor_val251 = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.137

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom3
  store float 0.000000e+00, float* %arrayidx4, align 4
  %4 = load i32, i32* %ii, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end.132, label %if.then.7

if.then.7:                                        ; preds = %if.then
  store float 0.000000e+00, float* %diff, align 4
  %7 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %10 = load i32, i32* %ii, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom10
  %12 = load float, float* %arrayidx11, align 4
  %add = fadd float %9, %12
  %cmp12 = fcmp ogt float %add, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.7
  %13 = load i32, i32* %ii, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [400 x float], [400 x float]* %white_influence16, i32 0, i64 %idxprom15
  %15 = load float, float* %arrayidx17, align 4
  %16 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence19 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %17, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [400 x float], [400 x float]* %black_influence19, i32 0, i64 %idxprom18
  %18 = load float, float* %arrayidx20, align 4
  %sub = fsub float %15, %18
  %19 = load i32, i32* %ii, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence22 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [400 x float], [400 x float]* %white_influence22, i32 0, i64 %idxprom21
  %21 = load float, float* %arrayidx23, align 4
  %22 = load i32, i32* %ii, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence25 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [400 x float], [400 x float]* %black_influence25, i32 0, i64 %idxprom24
  %24 = load float, float* %arrayidx26, align 4
  %add27 = fadd float %21, %24
  %div = fdiv float %sub, %add27
  store float %div, float* %diff, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.7
  %25 = load float, float* %diff, align 4
  %26 = load float, float* %diff, align 4
  %mul = fmul float %25, %26
  %27 = load float, float* %diff, align 4
  %mul28 = fmul float %mul, %27
  %28 = load i32, i32* %ii, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom29
  store float %mul28, float* %arrayidx30, align 4
  %29 = load i32, i32* %ii, align 4
  %div31 = sdiv i32 %29, 20
  %sub32 = sub nsw i32 %div31, 1
  %30 = load i32, i32* @board_size, align 4
  %31 = load i32, i32* %ii, align 4
  %div33 = sdiv i32 %31, 20
  %sub34 = sub nsw i32 %div33, 1
  %sub35 = sub nsw i32 %30, %sub34
  %sub36 = sub nsw i32 %sub35, 1
  %cmp37 = icmp slt i32 %sub32, %sub36
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load i32, i32* %ii, align 4
  %div39 = sdiv i32 %32, 20
  %sub40 = sub nsw i32 %div39, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load i32, i32* @board_size, align 4
  %34 = load i32, i32* %ii, align 4
  %div41 = sdiv i32 %34, 20
  %sub42 = sub nsw i32 %div41, 1
  %sub43 = sub nsw i32 %33, %sub42
  %sub44 = sub nsw i32 %sub43, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub40, %cond.true ], [ %sub44, %cond.false ]
  store i32 %cond, i32* %dist_i, align 4
  %35 = load i32, i32* %ii, align 4
  %rem = srem i32 %35, 20
  %sub45 = sub nsw i32 %rem, 1
  %36 = load i32, i32* @board_size, align 4
  %37 = load i32, i32* %ii, align 4
  %rem46 = srem i32 %37, 20
  %sub47 = sub nsw i32 %rem46, 1
  %sub48 = sub nsw i32 %36, %sub47
  %sub49 = sub nsw i32 %sub48, 1
  %cmp50 = icmp slt i32 %sub45, %sub49
  br i1 %cmp50, label %cond.true.52, label %cond.false.55

cond.true.52:                                     ; preds = %cond.end
  %38 = load i32, i32* %ii, align 4
  %rem53 = srem i32 %38, 20
  %sub54 = sub nsw i32 %rem53, 1
  br label %cond.end.60

cond.false.55:                                    ; preds = %cond.end
  %39 = load i32, i32* @board_size, align 4
  %40 = load i32, i32* %ii, align 4
  %rem56 = srem i32 %40, 20
  %sub57 = sub nsw i32 %rem56, 1
  %sub58 = sub nsw i32 %39, %sub57
  %sub59 = sub nsw i32 %sub58, 1
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.55, %cond.true.52
  %cond61 = phi i32 [ %sub54, %cond.true.52 ], [ %sub59, %cond.false.55 ]
  store i32 %cond61, i32* %dist_j, align 4
  %41 = load i32, i32* %dist_i, align 4
  %42 = load i32, i32* %dist_j, align 4
  %cmp62 = icmp sgt i32 %41, %42
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %cond.end.60
  %43 = load i32, i32* %dist_i, align 4
  %cmp65 = icmp slt i32 4, %43
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.then.64
  br label %cond.end.69

cond.false.68:                                    ; preds = %if.then.64
  %44 = load i32, i32* %dist_i, align 4
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ 4, %cond.true.67 ], [ %44, %cond.false.68 ]
  store i32 %cond70, i32* %dist_i, align 4
  br label %if.end.77

if.else:                                          ; preds = %cond.end.60
  %45 = load i32, i32* %dist_j, align 4
  %cmp71 = icmp slt i32 4, %45
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.else
  br label %cond.end.75

cond.false.74:                                    ; preds = %if.else
  %46 = load i32, i32* %dist_j, align 4
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi i32 [ 4, %cond.true.73 ], [ %46, %cond.false.74 ]
  store i32 %cond76, i32* %dist_j, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end.75, %cond.end.69
  %47 = load i32, i32* %dist_i, align 4
  %48 = load i32, i32* %dist_j, align 4
  %cmp78 = icmp slt i32 %47, %48
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.end.77
  %49 = load i32, i32* %dist_i, align 4
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.end.77
  %50 = load i32, i32* %dist_j, align 4
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi i32 [ %49, %cond.true.80 ], [ %50, %cond.false.81 ]
  %conv84 = sitofp i32 %cond83 to float
  %mul85 = fmul float 2.000000e+00, %conv84
  %51 = load i32, i32* %dist_i, align 4
  %conv86 = sitofp i32 %51 to float
  %add87 = fadd float %mul85, %conv86
  %52 = load i32, i32* %dist_j, align 4
  %conv88 = sitofp i32 %52 to float
  %add89 = fadd float %add87, %conv88
  store float %add89, float* %central, align 4
  %53 = load i32, i32* %ii, align 4
  %idxprom90 = sext i32 %53 to i64
  %54 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence91 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %54, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [400 x float], [400 x float]* %black_influence91, i32 0, i64 %idxprom90
  %55 = load float, float* %arrayidx92, align 4
  %56 = load i32, i32* %ii, align 4
  %idxprom93 = sext i32 %56 to i64
  %57 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence94 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %57, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [400 x float], [400 x float]* %white_influence94, i32 0, i64 %idxprom93
  %58 = load float, float* %arrayidx95, align 4
  %cmp96 = fcmp olt float %55, %58
  br i1 %cmp96, label %cond.true.98, label %cond.false.102

cond.true.98:                                     ; preds = %cond.end.82
  %59 = load i32, i32* %ii, align 4
  %idxprom99 = sext i32 %59 to i64
  %60 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence100 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %60, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [400 x float], [400 x float]* %white_influence100, i32 0, i64 %idxprom99
  %61 = load float, float* %arrayidx101, align 4
  br label %cond.end.106

cond.false.102:                                   ; preds = %cond.end.82
  %62 = load i32, i32* %ii, align 4
  %idxprom103 = sext i32 %62 to i64
  %63 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence104 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %63, i32 0, i32 2
  %arrayidx105 = getelementptr inbounds [400 x float], [400 x float]* %black_influence104, i32 0, i64 %idxprom103
  %64 = load float, float* %arrayidx105, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.102, %cond.true.98
  %cond107 = phi float [ %61, %cond.true.98 ], [ %64, %cond.false.102 ]
  %65 = load float, float* %central, align 4
  %call = call float @gg_interpolate(%struct.interpolation_data* @min_infl_for_territory, float %65)
  %div108 = fdiv float %cond107, %call
  store float %div108, float* %ratio, align 4
  %66 = load float, float* %ratio, align 4
  %call109 = call float @gg_interpolate(%struct.interpolation_data* @territory_correction, float %66)
  %67 = load i32, i32* %ii, align 4
  %idxprom110 = sext i32 %67 to i64
  %arrayidx111 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom110
  %68 = load float, float* %arrayidx111, align 4
  %mul112 = fmul float %68, %call109
  store float %mul112, float* %arrayidx111, align 4
  %69 = load i32, i32* %ii, align 4
  %idxprom113 = sext i32 %69 to i64
  %arrayidx114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom113
  %70 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %70 to i32
  %cmp116 = icmp eq i32 %conv115, 2
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %cond.end.106
  %71 = load i32, i32* %ii, align 4
  %idxprom119 = sext i32 %71 to i64
  %arrayidx120 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom119
  store float 1.000000e+00, float* %arrayidx120, align 4
  br label %if.end.131

if.else.121:                                      ; preds = %cond.end.106
  %72 = load i32, i32* %ii, align 4
  %idxprom122 = sext i32 %72 to i64
  %arrayidx123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom122
  %73 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %73 to i32
  %cmp125 = icmp eq i32 %conv124, 1
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.else.121
  %74 = load i32, i32* %ii, align 4
  %idxprom128 = sext i32 %74 to i64
  %arrayidx129 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom128
  store float -1.000000e+00, float* %arrayidx129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.else.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.118
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then
  %75 = load i32, i32* %ii, align 4
  %idxprom133 = sext i32 %75 to i64
  %arrayidx134 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom133
  %76 = load float, float* %arrayidx134, align 4
  %77 = load i32, i32* %ii, align 4
  %idxprom135 = sext i32 %77 to i64
  %78 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %78, i32 0, i32 17
  %arrayidx136 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom135
  store float %76, float* %arrayidx136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.132, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %79 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %ii, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.314, %for.end
  %80 = load i32, i32* %ii, align 4
  %cmp139 = icmp slt i32 %80, 400
  br i1 %cmp139, label %for.body.141, label %for.end.316

for.body.141:                                     ; preds = %for.cond.138
  %81 = load i32, i32* %ii, align 4
  %idxprom142 = sext i32 %81 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %82 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %82 to i32
  %cmp145 = icmp ne i32 %conv144, 3
  br i1 %cmp145, label %if.then.147, label %if.end.313

if.then.147:                                      ; preds = %for.body.141
  %83 = load i32, i32* %ii, align 4
  %idxprom148 = sext i32 %83 to i64
  %84 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe149 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %84, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [400 x i8], [400 x i8]* %safe149, i32 0, i64 %idxprom148
  %85 = load i8, i8* %arrayidx150, align 1
  %tobool151 = icmp ne i8 %85, 0
  br i1 %tobool151, label %if.end.312, label %if.then.152

if.then.152:                                      ; preds = %if.then.147
  store i32 0, i32* %k, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.309, %if.then.152
  %86 = load i32, i32* %k, align 4
  %cmp154 = icmp slt i32 %86, 4
  br i1 %cmp154, label %for.body.156, label %for.end.311

for.body.156:                                     ; preds = %for.cond.153
  %87 = load i32, i32* %ii, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %88 to i64
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom157
  %89 = load i32, i32* %arrayidx158, align 4
  %add159 = add nsw i32 %87, %89
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom160
  %90 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %90 to i32
  %cmp163 = icmp ne i32 %conv162, 3
  br i1 %cmp163, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %for.body.156
  br label %for.inc.309

if.end.166:                                       ; preds = %for.body.156
  %91 = load i32, i32* %ii, align 4
  %idxprom167 = sext i32 %91 to i64
  %92 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value168 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %92, i32 0, i32 17
  %arrayidx169 = getelementptr inbounds [400 x float], [400 x float]* %territory_value168, i32 0, i64 %idxprom167
  %93 = load float, float* %arrayidx169, align 4
  %conv170 = fpext float %93 to double
  %cmp171 = fcmp ogt double %conv170, 0.000000e+00
  br i1 %cmp171, label %if.then.173, label %if.else.242

if.then.173:                                      ; preds = %if.end.166
  %94 = load i32, i32* %ii, align 4
  %95 = load i32, i32* %k, align 4
  %idxprom174 = sext i32 %95 to i64
  %arrayidx175 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom174
  %96 = load i32, i32* %arrayidx175, align 4
  %add176 = add nsw i32 %94, %96
  %idxprom177 = sext i32 %add176 to i64
  %97 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe178 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %97, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [400 x i8], [400 x i8]* %safe178, i32 0, i64 %idxprom177
  %98 = load i8, i8* %arrayidx179, align 1
  %tobool180 = icmp ne i8 %98, 0
  br i1 %tobool180, label %if.end.241, label %if.then.181

if.then.181:                                      ; preds = %if.then.173
  %99 = load i32, i32* %ii, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %100 to i64
  %arrayidx183 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom182
  %101 = load i32, i32* %arrayidx183, align 4
  %add184 = add nsw i32 %99, %101
  %idxprom185 = sext i32 %add184 to i64
  %102 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %102, i32 0, i32 8
  %arrayidx186 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom185
  %103 = load float, float* %arrayidx186, align 4
  %104 = load i32, i32* %ii, align 4
  %105 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %105 to i64
  %arrayidx188 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom187
  %106 = load i32, i32* %arrayidx188, align 4
  %add189 = add nsw i32 %104, %106
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom190
  %107 = load float, float* %arrayidx191, align 4
  %mul192 = fmul float %103, %107
  %conv193 = fpext float %mul192 to double
  %108 = load i32, i32* %ii, align 4
  %109 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %109 to i64
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom194
  %110 = load i32, i32* %arrayidx195, align 4
  %add196 = add nsw i32 %108, %110
  %idxprom197 = sext i32 %add196 to i64
  %111 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability198 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %111, i32 0, i32 8
  %arrayidx199 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability198, i32 0, i64 %idxprom197
  %112 = load float, float* %arrayidx199, align 4
  %conv200 = fpext float %112 to double
  %sub201 = fsub double 1.000000e+00, %conv200
  %113 = load i32, i32* %ii, align 4
  %idxprom202 = sext i32 %113 to i64
  %arrayidx203 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom202
  %114 = load float, float* %arrayidx203, align 4
  %conv204 = fpext float %114 to double
  %mul205 = fmul double %sub201, %conv204
  %add206 = fadd double %conv193, %mul205
  %conv207 = fptrunc double %add206 to float
  store float %conv207, float* %neighbor_val, align 4
  %115 = load i32, i32* %ii, align 4
  %idxprom208 = sext i32 %115 to i64
  %116 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value209 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %116, i32 0, i32 17
  %arrayidx210 = getelementptr inbounds [400 x float], [400 x float]* %territory_value209, i32 0, i64 %idxprom208
  %117 = load float, float* %arrayidx210, align 4
  %118 = load float, float* %neighbor_val, align 4
  %cmp211 = fcmp olt float %117, %118
  br i1 %cmp211, label %cond.true.213, label %cond.false.217

cond.true.213:                                    ; preds = %if.then.181
  %119 = load i32, i32* %ii, align 4
  %idxprom214 = sext i32 %119 to i64
  %120 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value215 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %120, i32 0, i32 17
  %arrayidx216 = getelementptr inbounds [400 x float], [400 x float]* %territory_value215, i32 0, i64 %idxprom214
  %121 = load float, float* %arrayidx216, align 4
  br label %cond.end.218

cond.false.217:                                   ; preds = %if.then.181
  %122 = load float, float* %neighbor_val, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.213
  %cond219 = phi float [ %121, %cond.true.213 ], [ %122, %cond.false.217 ]
  %cmp220 = fcmp olt float 0.000000e+00, %cond219
  br i1 %cmp220, label %cond.true.222, label %cond.false.235

cond.true.222:                                    ; preds = %cond.end.218
  %123 = load i32, i32* %ii, align 4
  %idxprom223 = sext i32 %123 to i64
  %124 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value224 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %124, i32 0, i32 17
  %arrayidx225 = getelementptr inbounds [400 x float], [400 x float]* %territory_value224, i32 0, i64 %idxprom223
  %125 = load float, float* %arrayidx225, align 4
  %126 = load float, float* %neighbor_val, align 4
  %cmp226 = fcmp olt float %125, %126
  br i1 %cmp226, label %cond.true.228, label %cond.false.232

cond.true.228:                                    ; preds = %cond.true.222
  %127 = load i32, i32* %ii, align 4
  %idxprom229 = sext i32 %127 to i64
  %128 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value230 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %128, i32 0, i32 17
  %arrayidx231 = getelementptr inbounds [400 x float], [400 x float]* %territory_value230, i32 0, i64 %idxprom229
  %129 = load float, float* %arrayidx231, align 4
  br label %cond.end.233

cond.false.232:                                   ; preds = %cond.true.222
  %130 = load float, float* %neighbor_val, align 4
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.228
  %cond234 = phi float [ %129, %cond.true.228 ], [ %130, %cond.false.232 ]
  br label %cond.end.236

cond.false.235:                                   ; preds = %cond.end.218
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.end.233
  %cond237 = phi float [ %cond234, %cond.end.233 ], [ 0.000000e+00, %cond.false.235 ]
  %131 = load i32, i32* %ii, align 4
  %idxprom238 = sext i32 %131 to i64
  %132 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value239 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %132, i32 0, i32 17
  %arrayidx240 = getelementptr inbounds [400 x float], [400 x float]* %territory_value239, i32 0, i64 %idxprom238
  store float %cond237, float* %arrayidx240, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %cond.end.236, %if.then.173
  br label %if.end.308

if.else.242:                                      ; preds = %if.end.166
  %133 = load i32, i32* %ii, align 4
  %134 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %134 to i64
  %arrayidx244 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom243
  %135 = load i32, i32* %arrayidx244, align 4
  %add245 = add nsw i32 %133, %135
  %idxprom246 = sext i32 %add245 to i64
  %136 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe247 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %136, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [400 x i8], [400 x i8]* %safe247, i32 0, i64 %idxprom246
  %137 = load i8, i8* %arrayidx248, align 1
  %tobool249 = icmp ne i8 %137, 0
  br i1 %tobool249, label %if.end.307, label %if.then.250

if.then.250:                                      ; preds = %if.else.242
  %138 = load i32, i32* %ii, align 4
  %139 = load i32, i32* %k, align 4
  %idxprom252 = sext i32 %139 to i64
  %arrayidx253 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom252
  %140 = load i32, i32* %arrayidx253, align 4
  %add254 = add nsw i32 %138, %140
  %idxprom255 = sext i32 %add254 to i64
  %141 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %141, i32 0, i32 7
  %arrayidx256 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom255
  %142 = load float, float* %arrayidx256, align 4
  %143 = load i32, i32* %ii, align 4
  %144 = load i32, i32* %k, align 4
  %idxprom257 = sext i32 %144 to i64
  %arrayidx258 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom257
  %145 = load i32, i32* %arrayidx258, align 4
  %add259 = add nsw i32 %143, %145
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom260
  %146 = load float, float* %arrayidx261, align 4
  %mul262 = fmul float %142, %146
  %147 = load i32, i32* %ii, align 4
  %148 = load i32, i32* %k, align 4
  %idxprom263 = sext i32 %148 to i64
  %arrayidx264 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom263
  %149 = load i32, i32* %arrayidx264, align 4
  %add265 = add nsw i32 %147, %149
  %idxprom266 = sext i32 %add265 to i64
  %150 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability267 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %150, i32 0, i32 7
  %arrayidx268 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability267, i32 0, i64 %idxprom266
  %151 = load float, float* %arrayidx268, align 4
  %sub269 = fsub float 1.000000e+00, %151
  %152 = load i32, i32* %ii, align 4
  %idxprom270 = sext i32 %152 to i64
  %arrayidx271 = getelementptr inbounds [400 x float], [400 x float]* %first_guess, i32 0, i64 %idxprom270
  %153 = load float, float* %arrayidx271, align 4
  %mul272 = fmul float %sub269, %153
  %add273 = fadd float %mul262, %mul272
  store float %add273, float* %neighbor_val251, align 4
  %154 = load i32, i32* %ii, align 4
  %idxprom274 = sext i32 %154 to i64
  %155 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value275 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %155, i32 0, i32 17
  %arrayidx276 = getelementptr inbounds [400 x float], [400 x float]* %territory_value275, i32 0, i64 %idxprom274
  %156 = load float, float* %arrayidx276, align 4
  %157 = load float, float* %neighbor_val251, align 4
  %cmp277 = fcmp olt float %156, %157
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %if.then.250
  %158 = load float, float* %neighbor_val251, align 4
  br label %cond.end.284

cond.false.280:                                   ; preds = %if.then.250
  %159 = load i32, i32* %ii, align 4
  %idxprom281 = sext i32 %159 to i64
  %160 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value282 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %160, i32 0, i32 17
  %arrayidx283 = getelementptr inbounds [400 x float], [400 x float]* %territory_value282, i32 0, i64 %idxprom281
  %161 = load float, float* %arrayidx283, align 4
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.280, %cond.true.279
  %cond285 = phi float [ %158, %cond.true.279 ], [ %161, %cond.false.280 ]
  %cmp286 = fcmp olt float 0.000000e+00, %cond285
  br i1 %cmp286, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %cond.end.284
  br label %cond.end.302

cond.false.289:                                   ; preds = %cond.end.284
  %162 = load i32, i32* %ii, align 4
  %idxprom290 = sext i32 %162 to i64
  %163 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value291 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %163, i32 0, i32 17
  %arrayidx292 = getelementptr inbounds [400 x float], [400 x float]* %territory_value291, i32 0, i64 %idxprom290
  %164 = load float, float* %arrayidx292, align 4
  %165 = load float, float* %neighbor_val251, align 4
  %cmp293 = fcmp olt float %164, %165
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.false.289
  %166 = load float, float* %neighbor_val251, align 4
  br label %cond.end.300

cond.false.296:                                   ; preds = %cond.false.289
  %167 = load i32, i32* %ii, align 4
  %idxprom297 = sext i32 %167 to i64
  %168 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value298 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %168, i32 0, i32 17
  %arrayidx299 = getelementptr inbounds [400 x float], [400 x float]* %territory_value298, i32 0, i64 %idxprom297
  %169 = load float, float* %arrayidx299, align 4
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.296, %cond.true.295
  %cond301 = phi float [ %166, %cond.true.295 ], [ %169, %cond.false.296 ]
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.end.300, %cond.true.288
  %cond303 = phi float [ 0.000000e+00, %cond.true.288 ], [ %cond301, %cond.end.300 ]
  %170 = load i32, i32* %ii, align 4
  %idxprom304 = sext i32 %170 to i64
  %171 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value305 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %171, i32 0, i32 17
  %arrayidx306 = getelementptr inbounds [400 x float], [400 x float]* %territory_value305, i32 0, i64 %idxprom304
  store float %cond303, float* %arrayidx306, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %cond.end.302, %if.else.242
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.241
  br label %for.inc.309

for.inc.309:                                      ; preds = %if.end.308, %if.then.165
  %172 = load i32, i32* %k, align 4
  %inc310 = add nsw i32 %172, 1
  store i32 %inc310, i32* %k, align 4
  br label %for.cond.153

for.end.311:                                      ; preds = %for.cond.153
  br label %if.end.312

if.end.312:                                       ; preds = %for.end.311, %if.then.147
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %for.body.141
  br label %for.inc.314

for.inc.314:                                      ; preds = %if.end.313
  %173 = load i32, i32* %ii, align 4
  %inc315 = add nsw i32 %173, 1
  store i32 %inc315, i32* %ii, align 4
  br label %for.cond.138

for.end.316:                                      ; preds = %for.cond.138
  store i32 21, i32* %ii, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.392, %for.end.316
  %174 = load i32, i32* %ii, align 4
  %cmp318 = icmp slt i32 %174, 400
  br i1 %cmp318, label %for.body.320, label %for.end.394

for.body.320:                                     ; preds = %for.cond.317
  %175 = load i32, i32* %ii, align 4
  %idxprom321 = sext i32 %175 to i64
  %arrayidx322 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom321
  %176 = load i8, i8* %arrayidx322, align 1
  %conv323 = zext i8 %176 to i32
  %cmp324 = icmp ne i32 %conv323, 3
  br i1 %cmp324, label %if.then.326, label %if.end.391

if.then.326:                                      ; preds = %for.body.320
  %177 = load i32, i32* %ii, align 4
  %idxprom327 = sext i32 %177 to i64
  %178 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe328 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %178, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [400 x i8], [400 x i8]* %safe328, i32 0, i64 %idxprom327
  %179 = load i8, i8* %arrayidx329, align 1
  %tobool330 = icmp ne i8 %179, 0
  br i1 %tobool330, label %if.end.390, label %if.then.331

if.then.331:                                      ; preds = %if.then.326
  %180 = load i32, i32* %ii, align 4
  %idxprom332 = sext i32 %180 to i64
  %181 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value333 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %181, i32 0, i32 17
  %arrayidx334 = getelementptr inbounds [400 x float], [400 x float]* %territory_value333, i32 0, i64 %idxprom332
  %182 = load float, float* %arrayidx334, align 4
  %conv335 = fpext float %182 to double
  %cmp336 = fcmp ogt double %conv335, 0.000000e+00
  br i1 %cmp336, label %land.lhs.true, label %if.end.345

land.lhs.true:                                    ; preds = %if.then.331
  %183 = load i32, i32* %ii, align 4
  %idxprom338 = sext i32 %183 to i64
  %184 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %non_territory = getelementptr inbounds %struct.influence_data, %struct.influence_data* %184, i32 0, i32 18
  %arrayidx339 = getelementptr inbounds [400 x i32], [400 x i32]* %non_territory, i32 0, i64 %idxprom338
  %185 = load i32, i32* %arrayidx339, align 4
  %and = and i32 %185, 1
  %tobool340 = icmp ne i32 %and, 0
  br i1 %tobool340, label %if.then.341, label %if.end.345

if.then.341:                                      ; preds = %land.lhs.true
  %186 = load i32, i32* %ii, align 4
  %idxprom342 = sext i32 %186 to i64
  %187 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value343 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %187, i32 0, i32 17
  %arrayidx344 = getelementptr inbounds [400 x float], [400 x float]* %territory_value343, i32 0, i64 %idxprom342
  store float 0.000000e+00, float* %arrayidx344, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.341, %land.lhs.true, %if.then.331
  %188 = load i32, i32* %ii, align 4
  %idxprom346 = sext i32 %188 to i64
  %189 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value347 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %189, i32 0, i32 17
  %arrayidx348 = getelementptr inbounds [400 x float], [400 x float]* %territory_value347, i32 0, i64 %idxprom346
  %190 = load float, float* %arrayidx348, align 4
  %conv349 = fpext float %190 to double
  %cmp350 = fcmp olt double %conv349, 0.000000e+00
  br i1 %cmp350, label %land.lhs.true.352, label %if.end.362

land.lhs.true.352:                                ; preds = %if.end.345
  %191 = load i32, i32* %ii, align 4
  %idxprom353 = sext i32 %191 to i64
  %192 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %non_territory354 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %192, i32 0, i32 18
  %arrayidx355 = getelementptr inbounds [400 x i32], [400 x i32]* %non_territory354, i32 0, i64 %idxprom353
  %193 = load i32, i32* %arrayidx355, align 4
  %and356 = and i32 %193, 2
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.362

if.then.358:                                      ; preds = %land.lhs.true.352
  %194 = load i32, i32* %ii, align 4
  %idxprom359 = sext i32 %194 to i64
  %195 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value360 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %195, i32 0, i32 17
  %arrayidx361 = getelementptr inbounds [400 x float], [400 x float]* %territory_value360, i32 0, i64 %idxprom359
  store float 0.000000e+00, float* %arrayidx361, align 4
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.358, %land.lhs.true.352, %if.end.345
  %196 = load i32, i32* %ii, align 4
  %idxprom363 = sext i32 %196 to i64
  %arrayidx364 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom363
  %197 = load i8, i8* %arrayidx364, align 1
  %conv365 = zext i8 %197 to i32
  %cmp366 = icmp eq i32 %conv365, 2
  br i1 %cmp366, label %if.then.368, label %if.else.375

if.then.368:                                      ; preds = %if.end.362
  %198 = load i32, i32* %ii, align 4
  %idxprom369 = sext i32 %198 to i64
  %199 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value370 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %199, i32 0, i32 17
  %arrayidx371 = getelementptr inbounds [400 x float], [400 x float]* %territory_value370, i32 0, i64 %idxprom369
  %200 = load float, float* %arrayidx371, align 4
  %conv372 = fpext float %200 to double
  %add373 = fadd double %conv372, 1.000000e+00
  %conv374 = fptrunc double %add373 to float
  store float %conv374, float* %arrayidx371, align 4
  br label %if.end.389

if.else.375:                                      ; preds = %if.end.362
  %201 = load i32, i32* %ii, align 4
  %idxprom376 = sext i32 %201 to i64
  %arrayidx377 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom376
  %202 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %202 to i32
  %cmp379 = icmp eq i32 %conv378, 1
  br i1 %cmp379, label %if.then.381, label %if.end.388

if.then.381:                                      ; preds = %if.else.375
  %203 = load i32, i32* %ii, align 4
  %idxprom382 = sext i32 %203 to i64
  %204 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value383 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %204, i32 0, i32 17
  %arrayidx384 = getelementptr inbounds [400 x float], [400 x float]* %territory_value383, i32 0, i64 %idxprom382
  %205 = load float, float* %arrayidx384, align 4
  %conv385 = fpext float %205 to double
  %sub386 = fsub double %conv385, 1.000000e+00
  %conv387 = fptrunc double %sub386 to float
  store float %conv387, float* %arrayidx384, align 4
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.381, %if.else.375
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.then.368
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.then.326
  br label %if.end.391

if.end.391:                                       ; preds = %if.end.390, %for.body.320
  br label %for.inc.392

for.inc.392:                                      ; preds = %if.end.391
  %206 = load i32, i32* %ii, align 4
  %inc393 = add nsw i32 %206, 1
  store i32 %inc393, i32* %ii, align 4
  br label %for.cond.317

for.end.394:                                      ; preds = %for.cond.317
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_influence(%struct.influence_data* %q, i8* %info_string) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %info_string.addr = alloca i8*, align 8
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i8* %info_string, i8** %info_string.addr, align 8
  %0 = load i32, i32* @printmoyo, align 4
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %info_string.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* %2)
  %3 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 5
  %arraydecay = getelementptr inbounds [400 x float], [400 x float]* %white_attenuation, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %3, float* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 0, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %info_string.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %6)
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 6
  %arraydecay2 = getelementptr inbounds [400 x float], [400 x float]* %black_attenuation, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %7, float* %arraydecay2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* @printmoyo, align 4
  %and3 = and i32 %9, 64
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  %11 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %12 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %12, i32 0, i32 7
  %arraydecay7 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %11, float* %arraydecay7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0, i32 0)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 8
  %arraydecay9 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %14, float* %arraydecay9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %16 = load i32, i32* @printmoyo, align 4
  %and11 = and i32 %16, 128
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.30

if.then.13:                                       ; preds = %if.end.10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %18, i32 0, i32 16
  %19 = load i32, i32* %is_territorial_influence, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %20 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %21 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %21, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %20, float* %arraydecay17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 0, i32 0)
  br label %if.end.20

if.else:                                          ; preds = %if.then.13
  %22 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %23 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength18 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 3
  %arraydecay19 = getelementptr inbounds [400 x float], [400 x float]* %white_strength18, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %22, float* %arraydecay19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 0, i32 1)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %25 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence22 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 16
  %26 = load i32, i32* %is_territorial_influence22, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.end.20
  %27 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %28 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %28, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %27, float* %arraydecay25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 0, i32 0)
  br label %if.end.29

if.else.26:                                       ; preds = %if.end.20
  %29 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %30 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength27 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %30, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [400 x float], [400 x float]* %black_strength27, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %29, float* %arraydecay28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 0, i32 1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.10
  %31 = load i32, i32* @printmoyo, align 4
  %and31 = and i32 %31, 32
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %if.end.30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %info_string.addr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %33)
  %34 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence35 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %34, i32 0, i32 16
  %35 = load i32, i32* %is_territorial_influence35, align 4
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.then.33
  %36 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %37 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %37, i32 0, i32 1
  %arraydecay38 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %36, float* %arraydecay38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 1, i32 0)
  br label %if.end.42

if.else.39:                                       ; preds = %if.then.33
  %38 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %39 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence40 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %39, i32 0, i32 1
  %arraydecay41 = getelementptr inbounds [400 x float], [400 x float]* %white_influence40, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %38, float* %arraydecay41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 1, i32 1)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.37
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** %info_string.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %41)
  %42 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence44 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %42, i32 0, i32 16
  %43 = load i32, i32* %is_territorial_influence44, align 4
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.end.42
  %44 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %45 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 2
  %arraydecay47 = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %44, float* %arraydecay47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 1, i32 0)
  br label %if.end.51

if.else.48:                                       ; preds = %if.end.42
  %46 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %47 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence49 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %47, i32 0, i32 2
  %arraydecay50 = getelementptr inbounds [400 x float], [400 x float]* %black_influence49, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %46, float* %arraydecay50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 1, i32 1)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.30
  %48 = load i32, i32* @printmoyo, align 4
  %and53 = and i32 %48, 16
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i8*, i8** %info_string.addr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %50)
  %51 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @print_influence_areas(%struct.influence_data* %51)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %52 = load i32, i32* @printmoyo, align 4
  %and58 = and i32 %52, 512
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.57
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i8*, i8** %info_string.addr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* %54)
  %55 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %56 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 17
  %arraydecay62 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i32 0
  call void @print_numeric_influence(%struct.influence_data* %55, float* %arraydecay62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 5, i32 1, i32 0)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.57
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_escape_influence(i32 %color, i8* %safe_stones, float* %strength, i8* %escape_value) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %escape_value.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %cache_number = alloca i32, align 4
  %board_was_cached = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store i8* %escape_value, i8** %escape_value.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %cache_number, align 4
  store i32 1, i32* %board_was_cached, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %ii, align 4
  %cmp1 = icmp slt i32 %1, 400
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @compute_escape_influence.cached_board, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp ne i32 %3, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %8 = load i32, i32* %ii, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* @compute_escape_influence.cached_board, i32 0, i64 %idxprom11
  store i32 %conv10, i32* %arrayidx12, align 4
  store i32 0, i32* %board_was_cached, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %board_was_cached, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.23, label %if.then.13

if.then.13:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %if.then.13
  %11 = load i32, i32* %k, align 4
  %cmp15 = icmp slt i32 %11, 2
  br i1 %cmp15, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.14
  %12 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i32 0, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %13 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %13, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %for.end
  %14 = load i32, i32* %cache_number, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i32 0, i64 %idxprom24
  %15 = load i32, i32* %arrayidx25, align 4
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %if.end.23
  store i32 21, i32* %ii, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.45, %if.then.27
  %16 = load i32, i32* %ii, align 4
  %cmp29 = icmp slt i32 %16, 400
  br i1 %cmp29, label %for.body.31, label %for.end.47

for.body.31:                                      ; preds = %for.cond.28
  %17 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %18 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %18 to i32
  %cmp35 = icmp ne i32 %conv34, 3
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %for.body.31
  %19 = load i32, i32* %cache_number, align 4
  %idxprom38 = sext i32 %19 to i64
  %20 = load i32, i32* %ii, align 4
  %idxprom39 = sext i32 %20 to i64
  %arrayidx40 = getelementptr inbounds [400 x [2 x i8]], [400 x [2 x i8]]* @compute_escape_influence.escape_values, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx40, i32 0, i64 %idxprom38
  %21 = load i8, i8* %arrayidx41, align 1
  %22 = load i32, i32* %ii, align 4
  %idxprom42 = sext i32 %22 to i64
  %23 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %23, i64 %idxprom42
  store i8 %21, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %for.body.31
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %24 = load i32, i32* %ii, align 4
  %inc46 = add nsw i32 %24, 1
  store i32 %inc46, i32* %ii, align 4
  br label %for.cond.28

for.end.47:                                       ; preds = %for.cond.28
  br label %return

if.end.48:                                        ; preds = %if.end.23
  store i32 0, i32* getelementptr inbounds (%struct.influence_data, %struct.influence_data* @escape_influence, i32 0, i32 16), align 4
  store i32 0, i32* getelementptr inbounds (%struct.influence_data, %struct.influence_data* @escape_influence, i32 0, i32 20), align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %25
  %26 = load i8*, i8** %safe_stones.addr, align 8
  %27 = load float*, float** %strength.addr, align 8
  call void @do_compute_influence(i32 %sub, i8* %26, float* %27, %struct.influence_data* @escape_influence, i32 -1, i8* null)
  store i32 21, i32* %ii, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.84, %if.end.48
  %28 = load i32, i32* %ii, align 4
  %cmp50 = icmp slt i32 %28, 400
  br i1 %cmp50, label %for.body.52, label %for.end.86

for.body.52:                                      ; preds = %for.cond.49
  %29 = load i32, i32* %ii, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %30 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %30 to i32
  %cmp56 = icmp ne i32 %conv55, 3
  br i1 %cmp56, label %if.then.58, label %if.end.83

if.then.58:                                       ; preds = %for.body.52
  %31 = load i32, i32* %ii, align 4
  %call = call i32 @whose_moyo(%struct.influence_data* @escape_influence, i32 %31)
  %32 = load i32, i32* %color.addr, align 4
  %cmp59 = icmp eq i32 %call, %32
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.then.58
  %33 = load i32, i32* %ii, align 4
  %idxprom62 = sext i32 %33 to i64
  %34 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %34, i64 %idxprom62
  store i8 4, i8* %arrayidx63, align 1
  br label %if.end.82

if.else:                                          ; preds = %if.then.58
  %35 = load i32, i32* %ii, align 4
  %call64 = call i32 @whose_area(%struct.influence_data* @escape_influence, i32 %35)
  %36 = load i32, i32* %color.addr, align 4
  %cmp65 = icmp eq i32 %call64, %36
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else
  %37 = load i32, i32* %ii, align 4
  %idxprom68 = sext i32 %37 to i64
  %38 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %38, i64 %idxprom68
  store i8 2, i8* %arrayidx69, align 1
  br label %if.end.81

if.else.70:                                       ; preds = %if.else
  %39 = load i32, i32* %ii, align 4
  %call71 = call i32 @whose_area(%struct.influence_data* @escape_influence, i32 %39)
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.else.70
  %40 = load i32, i32* %ii, align 4
  %idxprom75 = sext i32 %40 to i64
  %41 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %41, i64 %idxprom75
  store i8 1, i8* %arrayidx76, align 1
  br label %if.end.80

if.else.77:                                       ; preds = %if.else.70
  %42 = load i32, i32* %ii, align 4
  %idxprom78 = sext i32 %42 to i64
  %43 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %43, i64 %idxprom78
  store i8 0, i8* %arrayidx79, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.74
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.61
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.body.52
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %44 = load i32, i32* %ii, align 4
  %inc85 = add nsw i32 %44, 1
  store i32 %inc85, i32* %ii, align 4
  br label %for.cond.49

for.end.86:                                       ; preds = %for.cond.49
  store i32 21, i32* %ii, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.104, %for.end.86
  %45 = load i32, i32* %ii, align 4
  %cmp88 = icmp slt i32 %45, 400
  br i1 %cmp88, label %for.body.90, label %for.end.106

for.body.90:                                      ; preds = %for.cond.87
  %46 = load i32, i32* %ii, align 4
  %idxprom91 = sext i32 %46 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %47 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %47 to i32
  %cmp94 = icmp ne i32 %conv93, 3
  br i1 %cmp94, label %if.then.96, label %if.end.103

if.then.96:                                       ; preds = %for.body.90
  %48 = load i32, i32* %ii, align 4
  %idxprom97 = sext i32 %48 to i64
  %49 = load i8*, i8** %escape_value.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %49, i64 %idxprom97
  %50 = load i8, i8* %arrayidx98, align 1
  %51 = load i32, i32* %cache_number, align 4
  %idxprom99 = sext i32 %51 to i64
  %52 = load i32, i32* %ii, align 4
  %idxprom100 = sext i32 %52 to i64
  %arrayidx101 = getelementptr inbounds [400 x [2 x i8]], [400 x [2 x i8]]* @compute_escape_influence.escape_values, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx101, i32 0, i64 %idxprom99
  store i8 %50, i8* %arrayidx102, align 1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.96, %for.body.90
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %53 = load i32, i32* %ii, align 4
  %inc105 = add nsw i32 %53, 1
  store i32 %inc105, i32* %ii, align 4
  br label %for.cond.87

for.end.106:                                      ; preds = %for.cond.87
  %54 = load i32, i32* %cache_number, align 4
  %idxprom107 = sext i32 %54 to i64
  %arrayidx108 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i32 0, i64 %idxprom107
  store i32 1, i32* %arrayidx108, align 4
  br label %return

return:                                           ; preds = %for.end.106, %for.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @retrieve_delta_territory_cache(i32 %pos, i32 %color, float* %move_value, float* %followup_value) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %move_value.addr = alloca float*, align 8
  %followup_value.addr = alloca float*, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float* %move_value, float** %move_value.addr, align 8
  store float* %followup_value, float** %followup_value.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1618, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.14

if.else.9:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %pos.addr, align 4
  %div10 = sdiv i32 %7, 20
  %sub11 = sub nsw i32 %div10, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem12 = srem i32 %8, 20
  %sub13 = sub nsw i32 %rem12, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1619, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %sub11, i32 %sub13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.8
  %9 = load i32, i32* @territory_cache_position_number, align 4
  %10 = load i32, i32* @position_number, align 4
  %cmp15 = icmp eq i32 %9, %10
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.31

land.lhs.true.17:                                 ; preds = %if.end.14
  %11 = load i32, i32* @territory_cache_color, align 4
  %12 = load i32, i32* %color.addr, align 4
  %cmp18 = icmp eq i32 %11, %12
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.31

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i32 0, i64 %idxprom21
  %14 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %14 to double
  %cmp24 = fcmp une double %conv23, -7.220000e+02
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %land.lhs.true.20
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i32 0, i64 %idxprom27
  %16 = load float, float* %arrayidx28, align 4
  %17 = load float*, float** %move_value.addr, align 8
  store float %16, float* %17, align 4
  %18 = load i32, i32* %pos.addr, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [400 x float], [400 x float]* @followup_territory_cache, i32 0, i64 %idxprom29
  %19 = load float, float* %arrayidx30, align 4
  %20 = load float*, float** %followup_value.addr, align 8
  store float %19, float* %20, align 4
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.20, %land.lhs.true.17, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.26
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @store_delta_territory_cache(i32 %pos, i32 %color, float %move_value, float %followup_value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %move_value.addr = alloca float, align 4
  %followup_value.addr = alloca float, align 4
  %ii = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %move_value, float* %move_value.addr, align 4
  store float %followup_value, float* %followup_value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1638, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.14

if.else.9:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %pos.addr, align 4
  %div10 = sdiv i32 %7, 20
  %sub11 = sub nsw i32 %div10, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem12 = srem i32 %8, 20
  %sub13 = sub nsw i32 %rem12, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1639, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %sub11, i32 %sub13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.8
  %9 = load i32, i32* @territory_cache_position_number, align 4
  %10 = load i32, i32* @position_number, align 4
  %cmp15 = icmp ne i32 %9, %10
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.14
  %11 = load i32, i32* @territory_cache_color, align 4
  %12 = load i32, i32* %color.addr, align 4
  %cmp18 = icmp ne i32 %11, %12
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %13 = load i32, i32* %ii, align 4
  %cmp21 = icmp slt i32 %13, 400
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %ii, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i32 0, i64 %idxprom23
  store float -7.220000e+02, float* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* @position_number, align 4
  store i32 %16, i32* @territory_cache_position_number, align 4
  %17 = load i32, i32* %color.addr, align 4
  store i32 %17, i32* @territory_cache_color, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %lor.lhs.false.17
  %18 = load float, float* %move_value.addr, align 4
  %19 = load i32, i32* %pos.addr, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i32 0, i64 %idxprom26
  store float %18, float* %arrayidx27, align 4
  %20 = load float, float* %followup_value.addr, align 4
  %21 = load i32, i32* %pos.addr, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [400 x float], [400 x float]* @followup_territory_cache, i32 0, i64 %idxprom28
  store float %20, float* %arrayidx29, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define float @influence_delta_territory(%struct.influence_data* %base, %struct.influence_data* %q, i32 %color, i32 %move) #0 {
entry:
  %base.addr = alloca %struct.influence_data*, align 8
  %q.addr = alloca %struct.influence_data*, align 8
  %color.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %total_delta = alloca float, align 4
  %new_value = alloca float, align 4
  %old_value = alloca float, align 4
  %this_delta = alloca float, align 4
  %this_delta53 = alloca float, align 4
  store %struct.influence_data* %base, %struct.influence_data** %base.addr, align 8
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store float 0.000000e+00, float* %total_delta, align 4
  %0 = load i32, i32* %move.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1669, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.14

if.else.9:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %move.addr, align 4
  %div10 = sdiv i32 %7, 20
  %sub11 = sub nsw i32 %div10, 1
  %8 = load i32, i32* %move.addr, align 4
  %rem12 = srem i32 %8, 20
  %sub13 = sub nsw i32 %rem12, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 1670, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %sub11, i32 %sub13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.8
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %9 = load i32, i32* %ii, align 4
  %cmp15 = icmp slt i32 %9, 400
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ii, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %11 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp ne i32 %conv19, 3
  br i1 %cmp20, label %if.then.22, label %if.end.52

if.then.22:                                       ; preds = %for.body
  %12 = load i32, i32* %ii, align 4
  %idxprom23 = sext i32 %12 to i64
  %13 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %13, i32 0, i32 17
  %arrayidx24 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom23
  %14 = load float, float* %arrayidx24, align 4
  store float %14, float* %new_value, align 4
  %15 = load i32, i32* %ii, align 4
  %idxprom25 = sext i32 %15 to i64
  %16 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %territory_value26 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 17
  %arrayidx27 = getelementptr inbounds [400 x float], [400 x float]* %territory_value26, i32 0, i64 %idxprom25
  %17 = load float, float* %arrayidx27, align 4
  store float %17, float* %old_value, align 4
  %18 = load float, float* %new_value, align 4
  %19 = load float, float* %old_value, align 4
  %sub28 = fsub float %18, %19
  store float %sub28, float* %this_delta, align 4
  %20 = load i32, i32* %color.addr, align 4
  %cmp29 = icmp eq i32 %20, 2
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.then.22
  %21 = load float, float* %new_value, align 4
  %sub32 = fsub float -0.000000e+00, %21
  store float %sub32, float* %new_value, align 4
  %22 = load float, float* %old_value, align 4
  %sub33 = fsub float -0.000000e+00, %22
  store float %sub33, float* %old_value, align 4
  %23 = load float, float* %this_delta, align 4
  %sub34 = fsub float -0.000000e+00, %23
  store float %sub34, float* %this_delta, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.then.22
  %24 = load i32, i32* %move.addr, align 4
  %cmp36 = icmp ne i32 %24, -1
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.51

land.lhs.true.38:                                 ; preds = %if.end.35
  %25 = load float, float* %this_delta, align 4
  %conv39 = fpext float %25 to double
  %cmp40 = fcmp ogt double %conv39, 2.000000e-02
  br i1 %cmp40, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.38
  %26 = load float, float* %this_delta, align 4
  %sub43 = fsub float -0.000000e+00, %26
  %conv44 = fpext float %sub43 to double
  %cmp45 = fcmp ogt double %conv44, 2.000000e-02
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.38
  %27 = load i32, i32* @debug, align 4
  %and = and i32 %27, 1048576
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.47
  br label %cond.end

cond.false:                                       ; preds = %if.then.47
  %28 = load i32, i32* %move.addr, align 4
  %29 = load i32, i32* %ii, align 4
  %30 = load float, float* %this_delta, align 4
  %conv48 = fpext float %30 to double
  %31 = load float, float* %old_value, align 4
  %conv49 = fpext float %31 to double
  %32 = load float, float* %new_value, align 4
  %conv50 = fpext float %32 to double
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i32 %28, i32 %29, double %conv48, double %conv49, double %conv50)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end, %lor.lhs.false.42, %if.end.35
  %33 = load float, float* %this_delta, align 4
  %34 = load float, float* %total_delta, align 4
  %add = fadd float %34, %33
  store float %add, float* %total_delta, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %35 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %captured = getelementptr inbounds %struct.influence_data, %struct.influence_data* %36, i32 0, i32 19
  %37 = load i32, i32* %captured, align 4
  %38 = load %struct.influence_data*, %struct.influence_data** %base.addr, align 8
  %captured54 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %38, i32 0, i32 19
  %39 = load i32, i32* %captured54, align 4
  %sub55 = sub nsw i32 %37, %39
  %conv56 = sitofp i32 %sub55 to float
  store float %conv56, float* %this_delta53, align 4
  %40 = load i32, i32* %color.addr, align 4
  %cmp57 = icmp eq i32 %40, 2
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.end
  %41 = load float, float* %this_delta53, align 4
  %sub60 = fsub float -0.000000e+00, %41
  store float %sub60, float* %this_delta53, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end
  %42 = load i32, i32* %move.addr, align 4
  %cmp62 = icmp ne i32 %42, -1
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.76

land.lhs.true.64:                                 ; preds = %if.end.61
  %43 = load float, float* %this_delta53, align 4
  %conv65 = fpext float %43 to double
  %cmp66 = fcmp une double %conv65, 0.000000e+00
  br i1 %cmp66, label %if.then.68, label %if.end.76

if.then.68:                                       ; preds = %land.lhs.true.64
  %44 = load i32, i32* @debug, align 4
  %and69 = and i32 %44, 1048576
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %cond.false.72, label %cond.true.71

cond.true.71:                                     ; preds = %if.then.68
  br label %cond.end.75

cond.false.72:                                    ; preds = %if.then.68
  %45 = load i32, i32* %move.addr, align 4
  %46 = load float, float* %this_delta53, align 4
  %conv73 = fpext float %46 to double
  %call74 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i32 %45, double %conv73)
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.72, %cond.true.71
  br label %if.end.76

if.end.76:                                        ; preds = %cond.end.75, %land.lhs.true.64, %if.end.61
  %47 = load float, float* %this_delta53, align 4
  %48 = load float, float* %total_delta, align 4
  %add77 = fadd float %48, %47
  store float %add77, float* %total_delta, align 4
  %49 = load float, float* %total_delta, align 4
  ret float %49
}

; Function Attrs: nounwind uwtable
define void @debug_influence_move(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  store i32 %add1, i32* @debug_influence, align 4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_numeric_influence(%struct.influence_data* %q, float* %values, i8* %format, i32 %width, i32 %draw_stones, i32 %mark_epsilon) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %values.addr = alloca float*, align 8
  %format.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %draw_stones.addr = alloca i32, align 4
  %mark_epsilon.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ch = alloca i8, align 1
  %format_stone = alloca [20 x i8], align 16
  %ii = alloca i32, align 4
  %ii24 = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store float* %values, float** %values.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %draw_stones, i32* %draw_stones.addr, align 4
  store i32 %mark_epsilon, i32* %mark_epsilon.addr, align 4
  %0 = bitcast [20 x i8]* %format_stone to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 32, i64 20, i32 16, i1 false)
  %1 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %1, 1
  %div = sdiv i32 %add, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i64 %idxprom
  store i8 37, i8* %arrayidx, align 1
  %2 = load i32, i32* %width.addr, align 4
  %add1 = add nsw i32 %2, 3
  %div2 = sdiv i32 %add1, 2
  %idxprom3 = sext i32 %div2 to i64
  %arrayidx4 = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i64 %idxprom3
  store i8 99, i8* %arrayidx4, align 1
  %3 = load i32, i32* %width.addr, align 4
  %add5 = add nsw i32 %3, 2
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i8 65, i8* %ch, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8, i8* %ch, align 1
  %conv = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv, 73
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i8, i8* %ch, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i32 0
  %10 = load i8, i8* %ch, align 1
  %conv10 = sext i8 %10 to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* %arraydecay, i32 %conv10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  %12 = load i8, i8* %ch, align 1
  %inc13 = add i8 %12, 1
  store i8 %inc13, i8* %ch, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.71, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %for.body.18, label %for.end.73

for.body.18:                                      ; preds = %for.cond.15
  %16 = load i32, i32* @board_size, align 4
  %17 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %16, %17
  store i32 %sub, i32* %ii, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %ii, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 %19)
  store i32 0, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.67, %for.body.18
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* @board_size, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body.23, label %for.end.69

for.body.23:                                      ; preds = %for.cond.20
  %22 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %22, 20
  %add25 = add nsw i32 21, %mul
  %23 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %add25, %23
  store i32 %add26, i32* %ii24, align 4
  %24 = load i32, i32* %draw_stones.addr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %for.body.23
  %25 = load i32, i32* %ii24, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %27 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.43

if.then.31:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %ii24, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %29 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp eq i32 %conv34, 1
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.31
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay38 = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i32 0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* %arraydecay38, i32 79)
  br label %if.end.42

if.else:                                          ; preds = %if.then.31
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay40 = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i32 0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* %arraydecay40, i32 88)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.37
  br label %if.end.66

if.else.43:                                       ; preds = %land.lhs.true, %for.body.23
  %32 = load i32, i32* %mark_epsilon.addr, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.59

land.lhs.true.45:                                 ; preds = %if.else.43
  %33 = load i32, i32* %ii24, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load float*, float** %values.addr, align 8
  %arrayidx47 = getelementptr inbounds float, float* %34, i64 %idxprom46
  %35 = load float, float* %arrayidx47, align 4
  %conv48 = fpext float %35 to double
  %cmp49 = fcmp ogt double %conv48, 0.000000e+00
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.59

land.lhs.true.51:                                 ; preds = %land.lhs.true.45
  %36 = load i32, i32* %ii24, align 4
  %idxprom52 = sext i32 %36 to i64
  %37 = load float*, float** %values.addr, align 8
  %arrayidx53 = getelementptr inbounds float, float* %37, i64 %idxprom52
  %38 = load float, float* %arrayidx53, align 4
  %conv54 = fpext float %38 to double
  %cmp55 = fcmp olt double %conv54, 1.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %land.lhs.true.51
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.64

if.else.59:                                       ; preds = %land.lhs.true.51, %land.lhs.true.45, %if.else.43
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** %format.addr, align 8
  %42 = load i32, i32* %ii24, align 4
  %idxprom60 = sext i32 %42 to i64
  %43 = load float*, float** %values.addr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %43, i64 %idxprom60
  %44 = load float, float* %arrayidx61, align 4
  %conv62 = fpext float %44 to double
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* %41, double %conv62)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.59, %if.then.57
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %if.end.42
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %46 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %46, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.20

for.end.69:                                       ; preds = %for.cond.20
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i32, i32* %ii, align 4
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 %48)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.69
  %49 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %49, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.15

for.end.73:                                       ; preds = %for.cond.15
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  store i8 65, i8* %ch, align 1
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.88, %for.end.73
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* @board_size, align 4
  %cmp76 = icmp slt i32 %51, %52
  br i1 %cmp76, label %for.body.78, label %for.end.91

for.body.78:                                      ; preds = %for.cond.75
  %53 = load i8, i8* %ch, align 1
  %conv79 = sext i8 %53 to i32
  %cmp80 = icmp eq i32 %conv79, 73
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %for.body.78
  %54 = load i8, i8* %ch, align 1
  %inc83 = add i8 %54, 1
  store i8 %inc83, i8* %ch, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %for.body.78
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay85 = getelementptr inbounds [20 x i8], [20 x i8]* %format_stone, i32 0, i32 0
  %56 = load i8, i8* %ch, align 1
  %conv86 = sext i8 %56 to i32
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* %arraydecay85, i32 %conv86)
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.84
  %57 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %57, 1
  store i32 %inc89, i32* %i, align 4
  %58 = load i8, i8* %ch, align 1
  %inc90 = add i8 %58, 1
  store i8 %inc90, i8* %ch, align 1
  br label %for.cond.75

for.end.91:                                       ; preds = %for.cond.75
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_influence_areas(%struct.influence_data* %q) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %ii = alloca i32, align 4
  %c = alloca i32, align 4
  %color = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  call void @start_draw_board()
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.49

if.then:                                          ; preds = %for.body
  store i32 0, i32* %c, align 4
  store i32 0, i32* %color, align 4
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.5, label %if.else.12

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %color, align 4
  %6 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.5
  store i32 79, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.5
  store i32 88, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %if.end.47

if.else.12:                                       ; preds = %if.then
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %9 = load i32, i32* %ii, align 4
  %call = call i32 @whose_territory(%struct.influence_data* %8, i32 %9)
  %cmp13 = icmp eq i32 %call, 1
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 111, i32* %c, align 4
  store i32 6, i32* %color, align 4
  br label %if.end.46

if.else.16:                                       ; preds = %if.else.12
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %11 = load i32, i32* %ii, align 4
  %call17 = call i32 @whose_territory(%struct.influence_data* %10, i32 %11)
  %cmp18 = icmp eq i32 %call17, 2
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  store i32 120, i32* %c, align 4
  store i32 6, i32* %color, align 4
  br label %if.end.45

if.else.21:                                       ; preds = %if.else.16
  %12 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %13 = load i32, i32* %ii, align 4
  %call22 = call i32 @whose_moyo(%struct.influence_data* %12, i32 %13)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.21
  store i32 111, i32* %c, align 4
  store i32 3, i32* %color, align 4
  br label %if.end.44

if.else.26:                                       ; preds = %if.else.21
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %15 = load i32, i32* %ii, align 4
  %call27 = call i32 @whose_moyo(%struct.influence_data* %14, i32 %15)
  %cmp28 = icmp eq i32 %call27, 2
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.26
  store i32 120, i32* %c, align 4
  store i32 3, i32* %color, align 4
  br label %if.end.43

if.else.31:                                       ; preds = %if.else.26
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %17 = load i32, i32* %ii, align 4
  %call32 = call i32 @whose_area(%struct.influence_data* %16, i32 %17)
  %cmp33 = icmp eq i32 %call32, 1
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  store i32 111, i32* %c, align 4
  store i32 1, i32* %color, align 4
  br label %if.end.42

if.else.36:                                       ; preds = %if.else.31
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %19 = load i32, i32* %ii, align 4
  %call37 = call i32 @whose_area(%struct.influence_data* %18, i32 %19)
  %cmp38 = icmp eq i32 %call37, 2
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.36
  store i32 120, i32* %c, align 4
  store i32 1, i32* %color, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.30
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.25
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.20
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.15
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %20 = load i32, i32* %ii, align 4
  %div = sdiv i32 %20, 20
  %sub = sub nsw i32 %div, 1
  %21 = load i32, i32* %ii, align 4
  %rem = srem i32 %21, 20
  %sub48 = sub nsw i32 %rem, 1
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %color, align 4
  call void @draw_color_char(i32 %sub, i32 %sub48, i32 %22, i32 %23)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %24 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @end_draw_board()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_influence(%struct.influence_data* %q, i32 %color, i8* %safe_stones, float* %strength) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %ii = alloca i32, align 4
  %attenuation = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %cmp = icmp ne %struct.influence_data* %0, @escape_influence
  br i1 %cmp, label %if.then, label %if.else.2

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %color_to_move = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 20
  store i32 %1, i32* %color_to_move, align 4
  %3 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %3, i32 0, i32 16
  %4 = load i32, i32* %is_territorial_influence, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store float 0x4003333340000000, float* %attenuation, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store float 3.000000e+00, float* %attenuation, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.9

if.else.2:                                        ; preds = %entry
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %color_to_move3 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %5, i32 0, i32 20
  store i32 0, i32* %color_to_move3, align 4
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence4 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %6, i32 0, i32 16
  %7 = load i32, i32* %is_territorial_influence4, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.2
  store float 0x4013333340000000, float* %attenuation, align 4
  br label %if.end.8

if.else.7:                                        ; preds = %if.else.2
  store float 6.000000e+00, float* %attenuation, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 22
  store i32 0, i32* %intrusion_counter, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 0
  %10 = bitcast [400 x i8]* %safe to i8*
  %11 = load i8*, i8** %safe_stones.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 400, i32 1, i1 false)
  %12 = load i32, i32* @black_captured, align 4
  %13 = load i32, i32* @white_captured, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %captured = getelementptr inbounds %struct.influence_data, %struct.influence_data* %14, i32 0, i32 19
  store i32 %sub, i32* %captured, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %15 = load i32, i32* %ii, align 4
  %cmp10 = icmp slt i32 %15, 400
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %cmp11 = icmp ne i32 %conv, 3
  br i1 %cmp11, label %if.then.13, label %if.end.106

if.then.13:                                       ; preds = %for.body
  %18 = load i32, i32* %ii, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [400 x float], [400 x float]* %white_influence, i32 0, i64 %idxprom14
  store float 0.000000e+00, float* %arrayidx15, align 4
  %20 = load i32, i32* %ii, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %21, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [400 x float], [400 x float]* %black_influence, i32 0, i64 %idxprom16
  store float 0.000000e+00, float* %arrayidx17, align 4
  %22 = load float, float* %attenuation, align 4
  %23 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %24, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [400 x float], [400 x float]* %white_attenuation, i32 0, i64 %idxprom18
  store float %22, float* %arrayidx19, align 4
  %25 = load float, float* %attenuation, align 4
  %26 = load i32, i32* %ii, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %27, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [400 x float], [400 x float]* %black_attenuation, i32 0, i64 %idxprom20
  store float %25, float* %arrayidx21, align 4
  %28 = load i32, i32* %ii, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %29, i32 0, i32 7
  %arrayidx23 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom22
  store float 1.000000e+00, float* %arrayidx23, align 4
  %30 = load i32, i32* %ii, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %31, i32 0, i32 8
  %arrayidx25 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom24
  store float 1.000000e+00, float* %arrayidx25, align 4
  %32 = load i32, i32* %ii, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom26
  store float 0.000000e+00, float* %arrayidx27, align 4
  %34 = load i32, i32* %ii, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom28
  store float 0.000000e+00, float* %arrayidx29, align 4
  %36 = load i32, i32* %ii, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %non_territory = getelementptr inbounds %struct.influence_data, %struct.influence_data* %37, i32 0, i32 18
  %arrayidx31 = getelementptr inbounds [400 x i32], [400 x i32]* %non_territory, i32 0, i64 %idxprom30
  store i32 0, i32* %arrayidx31, align 4
  %38 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %39 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %39 to i32
  %cmp35 = icmp eq i32 %conv34, 1
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %40 = load i32, i32* %ii, align 4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom37
  %41 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %41 to i32
  %cmp40 = icmp eq i32 %conv39, 2
  br i1 %cmp40, label %if.then.42, label %if.else.101

if.then.42:                                       ; preds = %lor.lhs.false, %if.then.13
  %42 = load i32, i32* %ii, align 4
  %idxprom43 = sext i32 %42 to i64
  %43 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %43, i64 %idxprom43
  %44 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %44, 0
  br i1 %tobool45, label %if.else.61, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  %45 = load i32, i32* %ii, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %46 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %46 to i32
  %cmp50 = icmp eq i32 %conv49, 1
  br i1 %cmp50, label %if.then.52, label %if.else.56

if.then.52:                                       ; preds = %if.then.46
  %47 = load i32, i32* %ii, align 4
  %idxprom53 = sext i32 %47 to i64
  %48 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability54 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %48, i32 0, i32 7
  %arrayidx55 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability54, i32 0, i64 %idxprom53
  store float 0.000000e+00, float* %arrayidx55, align 4
  br label %if.end.60

if.else.56:                                       ; preds = %if.then.46
  %49 = load i32, i32* %ii, align 4
  %idxprom57 = sext i32 %49 to i64
  %50 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability58 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 8
  %arrayidx59 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability58, i32 0, i64 %idxprom57
  store float 0.000000e+00, float* %arrayidx59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.56, %if.then.52
  br label %if.end.100

if.else.61:                                       ; preds = %if.then.42
  %51 = load i32, i32* %ii, align 4
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom62
  %52 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %52 to i32
  %cmp65 = icmp eq i32 %conv64, 1
  br i1 %cmp65, label %if.then.67, label %if.else.83

if.then.67:                                       ; preds = %if.else.61
  %53 = load float*, float** %strength.addr, align 8
  %tobool68 = icmp ne float* %53, null
  br i1 %tobool68, label %if.then.69, label %if.else.75

if.then.69:                                       ; preds = %if.then.67
  %54 = load i32, i32* %ii, align 4
  %idxprom70 = sext i32 %54 to i64
  %55 = load float*, float** %strength.addr, align 8
  %arrayidx71 = getelementptr inbounds float, float* %55, i64 %idxprom70
  %56 = load float, float* %arrayidx71, align 4
  %57 = load i32, i32* %ii, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength73 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %58, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [400 x float], [400 x float]* %white_strength73, i32 0, i64 %idxprom72
  store float %56, float* %arrayidx74, align 4
  br label %if.end.79

if.else.75:                                       ; preds = %if.then.67
  %59 = load i32, i32* %ii, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength77 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %60, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [400 x float], [400 x float]* %white_strength77, i32 0, i64 %idxprom76
  store float 1.000000e+02, float* %arrayidx78, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %if.then.69
  %61 = load i32, i32* %ii, align 4
  %idxprom80 = sext i32 %61 to i64
  %62 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability81 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %62, i32 0, i32 8
  %arrayidx82 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability81, i32 0, i64 %idxprom80
  store float 0.000000e+00, float* %arrayidx82, align 4
  br label %if.end.99

if.else.83:                                       ; preds = %if.else.61
  %63 = load float*, float** %strength.addr, align 8
  %tobool84 = icmp ne float* %63, null
  br i1 %tobool84, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %if.else.83
  %64 = load i32, i32* %ii, align 4
  %idxprom86 = sext i32 %64 to i64
  %65 = load float*, float** %strength.addr, align 8
  %arrayidx87 = getelementptr inbounds float, float* %65, i64 %idxprom86
  %66 = load float, float* %arrayidx87, align 4
  %67 = load i32, i32* %ii, align 4
  %idxprom88 = sext i32 %67 to i64
  %68 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength89 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %68, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [400 x float], [400 x float]* %black_strength89, i32 0, i64 %idxprom88
  store float %66, float* %arrayidx90, align 4
  br label %if.end.95

if.else.91:                                       ; preds = %if.else.83
  %69 = load i32, i32* %ii, align 4
  %idxprom92 = sext i32 %69 to i64
  %70 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength93 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %70, i32 0, i32 4
  %arrayidx94 = getelementptr inbounds [400 x float], [400 x float]* %black_strength93, i32 0, i64 %idxprom92
  store float 1.000000e+02, float* %arrayidx94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.91, %if.then.85
  %71 = load i32, i32* %ii, align 4
  %idxprom96 = sext i32 %71 to i64
  %72 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability97 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %72, i32 0, i32 7
  %arrayidx98 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability97, i32 0, i64 %idxprom96
  store float 0.000000e+00, float* %arrayidx98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.95, %if.end.79
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.60
  br label %if.end.105

if.else.101:                                      ; preds = %lor.lhs.false
  %73 = load i32, i32* %ii, align 4
  %idxprom102 = sext i32 %73 to i64
  %74 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe103 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %74, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [400 x i8], [400 x i8]* %safe103, i32 0, i64 %idxprom102
  store i8 0, i8* %arrayidx104, align 1
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.end.100
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %75 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @modify_depth_values(i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_influence_patterns(%struct.influence_data* %q, i32 %color) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %color.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %reduction = alloca float, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  store %struct.influence_data* %0, %struct.influence_data** @current_influence, align 8
  %1 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %2 = bitcast %struct.influence_data* %1 to i8*
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @influence_callback, i32 6, %struct.pattern_db* @influencepat_db, i8* %2, i8* null)
  %3 = load i32, i32* %color.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %color.addr, align 4
  %5 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %6 = bitcast %struct.influence_data* %5 to i8*
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @influence_callback, i32 %4, %struct.pattern_db* @barrierspat_db, i8* %6, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %7, i32 0, i32 16
  %8 = load i32, i32* %is_territorial_influence, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %10 = load i32, i32* %color.addr, align 4
  call void @add_marked_intrusions(%struct.influence_data* %9, i32 %10)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end.2
  %11 = load i32, i32* %ii, align 4
  %cmp3 = icmp slt i32 %11, 400
  br i1 %cmp3, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %16 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.47

if.then.10:                                       ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %17 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %17, 8
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %18 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom15
  %19 = load i32, i32* %arrayidx16, align 4
  store i32 %19, i32* %d, align 4
  %20 = load i32, i32* %ii, align 4
  %21 = load i32, i32* %d, align 4
  %add = add nsw i32 %20, %21
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %22 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %22 to i32
  %cmp20 = icmp ne i32 %conv19, 3
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.46

land.lhs.true.22:                                 ; preds = %for.body.14
  %23 = load i32, i32* %ii, align 4
  %24 = load i32, i32* %d, align 4
  %add23 = add nsw i32 %23, %24
  %idxprom24 = sext i32 %add23 to i64
  %25 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe25 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [400 x i8], [400 x i8]* %safe25, i32 0, i64 %idxprom24
  %26 = load i8, i8* %arrayidx26, align 1
  %tobool27 = icmp ne i8 %26, 0
  br i1 %tobool27, label %if.end.46, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.22
  %27 = load i32, i32* %k, align 4
  %cmp29 = icmp slt i32 %27, 4
  %cond = select i1 %cmp29, double 2.500000e-01, double 6.500000e-01
  %conv31 = fptrunc double %cond to float
  store float %conv31, float* %reduction, align 4
  %28 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %29 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %29 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.28
  %30 = load float, float* %reduction, align 4
  %31 = load i32, i32* %ii, align 4
  %32 = load i32, i32* %d, align 4
  %add38 = add nsw i32 %31, %32
  %idxprom39 = sext i32 %add38 to i64
  %33 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 7
  %arrayidx40 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom39
  %34 = load float, float* %arrayidx40, align 4
  %mul = fmul float %34, %30
  store float %mul, float* %arrayidx40, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.then.28
  %35 = load float, float* %reduction, align 4
  %36 = load i32, i32* %ii, align 4
  %37 = load i32, i32* %d, align 4
  %add41 = add nsw i32 %36, %37
  %idxprom42 = sext i32 %add41 to i64
  %38 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %38, i32 0, i32 8
  %arrayidx43 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom42
  %39 = load float, float* %arrayidx43, align 4
  %mul44 = fmul float %39, %35
  store float %mul44, float* %arrayidx43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.22, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %41 = load i32, i32* %ii, align 4
  %inc49 = add nsw i32 %41, 1
  store i32 %inc49, i32* %ii, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %42 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  call void @reset_unblocked_blocks(%struct.influence_data* %42)
  ret void
}

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @influence_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca %struct.influence_data*, align 8
  %something_to_do = alloca i32, align 4
  %blocking_color = alloca i32, align 4
  %ii = alloca i32, align 4
  %ii112 = alloca i32, align 4
  %this_color = alloca i32, align 4
  %ii397 = alloca i32, align 4
  %blocking_color411 = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 11
  %2 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pos, align 4
  %5 = load i8*, i8** %data.addr, align 8
  %6 = bitcast i8* %5 to %struct.influence_data*
  store %struct.influence_data* %6, %struct.influence_data** %q, align 8
  %7 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i32 0, i32 14
  %8 = load i32, i32* %class, align 4
  %and = and i32 %8, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 16
  %10 = load i32, i32* %is_territorial_influence, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %11 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class4 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 14
  %12 = load i32, i32* %class4, align 4
  %and5 = and i32 %12, 4194304
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %13 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence8 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %13, i32 0, i32 16
  %14 = load i32, i32* %is_territorial_influence8, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  br label %for.end.486

if.end:                                           ; preds = %land.lhs.true.7, %lor.lhs.false
  %15 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class10 = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 14
  %16 = load i32, i32* %class10, align 4
  %and11 = and i32 %16, 8192
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.end
  %17 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %17, i32 0, i32 16
  %18 = load i32, i32* %is_territorial_influence14, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %for.end.486

if.end.17:                                        ; preds = %land.lhs.true.13, %if.end
  %19 = load i32, i32* @doing_scoring, align 4
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %if.end.17
  %20 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class20 = getelementptr inbounds %struct.pattern, %struct.pattern* %20, i32 0, i32 14
  %21 = load i32, i32* %class20, align 4
  %and21 = and i32 %21, 65536
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19
  br label %for.end.486

if.end.24:                                        ; preds = %land.lhs.true.19, %if.end.17
  %22 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class25 = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 14
  %23 = load i32, i32* %class25, align 4
  %and26 = and i32 %23, 1088
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.76

if.then.28:                                       ; preds = %if.end.24
  store i32 0, i32* %something_to_do, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %24 = load i32, i32* %k, align 4
  %25 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 1
  %26 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %24, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %28, i32 0, i32 0
  %29 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx30 = getelementptr inbounds %struct.patval, %struct.patval* %29, i64 %idxprom29
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx30, i32 0, i32 1
  %30 = load i32, i32* %att, align 4
  %cmp31 = icmp ne i32 %30, 5
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.42

land.lhs.true.32:                                 ; preds = %for.body
  %31 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence33 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %31, i32 0, i32 16
  %32 = load i32, i32* %is_territorial_influence33, align 4
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %lor.lhs.false.35, label %if.then.41

lor.lhs.false.35:                                 ; preds = %land.lhs.true.32
  %33 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn37 = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 0
  %35 = load %struct.patval*, %struct.patval** %patn37, align 8
  %arrayidx38 = getelementptr inbounds %struct.patval, %struct.patval* %35, i64 %idxprom36
  %att39 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx38, i32 0, i32 1
  %36 = load i32, i32* %att39, align 4
  %cmp40 = icmp ne i32 %36, 7
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.35, %land.lhs.true.32
  br label %for.end

if.end.42:                                        ; preds = %lor.lhs.false.35, %for.body
  %37 = load i32, i32* %ll.addr, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn45 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 0
  %40 = load %struct.patval*, %struct.patval** %patn45, align 8
  %arrayidx46 = getelementptr inbounds %struct.patval, %struct.patval* %40, i64 %idxprom44
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx46, i32 0, i32 0
  %41 = load i32, i32* %offset, align 4
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx48, i32 0, i64 %idxprom43
  %42 = load i32, i32* %arrayidx49, align 4
  %43 = load i32, i32* %anchor.addr, align 4
  %add50 = add nsw i32 %42, %43
  store i32 %add50, i32* %ii, align 4
  %44 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class51 = getelementptr inbounds %struct.pattern, %struct.pattern* %44, i32 0, i32 14
  %45 = load i32, i32* %class51, align 4
  %and52 = and i32 %45, 64
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.42
  %46 = load i32, i32* %color.addr, align 4
  store i32 %46, i32* %blocking_color, align 4
  br label %if.end.55

if.else:                                          ; preds = %if.end.42
  %47 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %47
  store i32 %sub, i32* %blocking_color, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.54
  %48 = load i32, i32* %blocking_color, align 4
  %cmp56 = icmp eq i32 %48, 1
  br i1 %cmp56, label %land.lhs.true.57, label %lor.lhs.false.62

land.lhs.true.57:                                 ; preds = %if.end.55
  %49 = load i32, i32* %ii, align 4
  %idxprom58 = sext i32 %49 to i64
  %50 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 8
  %arrayidx59 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability, i32 0, i64 %idxprom58
  %51 = load float, float* %arrayidx59, align 4
  %conv = fpext float %51 to double
  %cmp60 = fcmp une double %conv, 0.000000e+00
  br i1 %cmp60, label %if.then.71, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.57, %if.end.55
  %52 = load i32, i32* %blocking_color, align 4
  %cmp63 = icmp eq i32 %52, 2
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.72

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %53 = load i32, i32* %ii, align 4
  %idxprom66 = sext i32 %53 to i64
  %54 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_permeability = getelementptr inbounds %struct.influence_data, %struct.influence_data* %54, i32 0, i32 7
  %arrayidx67 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability, i32 0, i64 %idxprom66
  %55 = load float, float* %arrayidx67, align 4
  %conv68 = fpext float %55 to double
  %cmp69 = fcmp une double %conv68, 0.000000e+00
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.65, %land.lhs.true.57
  store i32 1, i32* %something_to_do, align 4
  br label %for.end

if.end.72:                                        ; preds = %land.lhs.true.65, %lor.lhs.false.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %56 = load i32, i32* %k, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.71, %if.then.41, %for.cond
  %57 = load i32, i32* %something_to_do, align 4
  %tobool73 = icmp ne i32 %57, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %for.end
  br label %for.end.486

if.end.75:                                        ; preds = %for.end
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.24
  %58 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class77 = getelementptr inbounds %struct.pattern, %struct.pattern* %58, i32 0, i32 14
  %59 = load i32, i32* %class77, align 4
  %and78 = and i32 %59, 534080
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.270

land.lhs.true.80:                                 ; preds = %if.end.76
  %60 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class81 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 14
  %61 = load i32, i32* %class81, align 4
  %and82 = and i32 %61, 16
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.end.270, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.80
  store i32 0, i32* %k, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.267, %if.then.84
  %62 = load i32, i32* %k, align 4
  %63 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen86 = getelementptr inbounds %struct.pattern, %struct.pattern* %63, i32 0, i32 1
  %64 = load i32, i32* %patlen86, align 4
  %cmp87 = icmp slt i32 %62, %64
  br i1 %cmp87, label %for.body.89, label %for.end.269

for.body.89:                                      ; preds = %for.cond.85
  %65 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %65 to i64
  %66 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn91 = getelementptr inbounds %struct.pattern, %struct.pattern* %66, i32 0, i32 0
  %67 = load %struct.patval*, %struct.patval** %patn91, align 8
  %arrayidx92 = getelementptr inbounds %struct.patval, %struct.patval* %67, i64 %idxprom90
  %att93 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx92, i32 0, i32 1
  %68 = load i32, i32* %att93, align 4
  %cmp94 = icmp eq i32 %68, 2
  br i1 %cmp94, label %land.lhs.true.96, label %lor.lhs.false.100

land.lhs.true.96:                                 ; preds = %for.body.89
  %69 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class97 = getelementptr inbounds %struct.pattern, %struct.pattern* %69, i32 0, i32 14
  %70 = load i32, i32* %class97, align 4
  %and98 = and i32 %70, 533056
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.111, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.96, %for.body.89
  %71 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn102 = getelementptr inbounds %struct.pattern, %struct.pattern* %72, i32 0, i32 0
  %73 = load %struct.patval*, %struct.patval** %patn102, align 8
  %arrayidx103 = getelementptr inbounds %struct.patval, %struct.patval* %73, i64 %idxprom101
  %att104 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx103, i32 0, i32 1
  %74 = load i32, i32* %att104, align 4
  %cmp105 = icmp eq i32 %74, 1
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.266

land.lhs.true.107:                                ; preds = %lor.lhs.false.100
  %75 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class108 = getelementptr inbounds %struct.pattern, %struct.pattern* %75, i32 0, i32 14
  %76 = load i32, i32* %class108, align 4
  %and109 = and i32 %76, 525824
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.266

if.then.111:                                      ; preds = %land.lhs.true.107, %land.lhs.true.96
  %77 = load i32, i32* %ll.addr, align 4
  %idxprom113 = sext i32 %77 to i64
  %78 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %78 to i64
  %79 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn115 = getelementptr inbounds %struct.pattern, %struct.pattern* %79, i32 0, i32 0
  %80 = load %struct.patval*, %struct.patval** %patn115, align 8
  %arrayidx116 = getelementptr inbounds %struct.patval, %struct.patval* %80, i64 %idxprom114
  %offset117 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx116, i32 0, i32 0
  %81 = load i32, i32* %offset117, align 4
  %idxprom118 = sext i32 %81 to i64
  %arrayidx119 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx119, i32 0, i64 %idxprom113
  %82 = load i32, i32* %arrayidx120, align 4
  %83 = load i32, i32* %anchor.addr, align 4
  %add121 = add nsw i32 %82, %83
  store i32 %add121, i32* %ii112, align 4
  %84 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class122 = getelementptr inbounds %struct.pattern, %struct.pattern* %84, i32 0, i32 14
  %85 = load i32, i32* %class122, align 4
  %and123 = and i32 %85, 8192
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.else.145

if.then.125:                                      ; preds = %if.then.111
  %86 = load i32, i32* %color.addr, align 4
  %cmp126 = icmp eq i32 %86, 1
  br i1 %cmp126, label %land.lhs.true.128, label %lor.lhs.false.134

land.lhs.true.128:                                ; preds = %if.then.125
  %87 = load i32, i32* %ii112, align 4
  %idxprom129 = sext i32 %87 to i64
  %88 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %88, i32 0, i32 3
  %arrayidx130 = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom129
  %89 = load float, float* %arrayidx130, align 4
  %conv131 = fpext float %89 to double
  %cmp132 = fcmp oeq double %conv131, 0.000000e+00
  br i1 %cmp132, label %if.then.143, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %land.lhs.true.128, %if.then.125
  %90 = load i32, i32* %color.addr, align 4
  %cmp135 = icmp eq i32 %90, 2
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.144

land.lhs.true.137:                                ; preds = %lor.lhs.false.134
  %91 = load i32, i32* %ii112, align 4
  %idxprom138 = sext i32 %91 to i64
  %92 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %92, i32 0, i32 4
  %arrayidx139 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom138
  %93 = load float, float* %arrayidx139, align 4
  %conv140 = fpext float %93 to double
  %cmp141 = fcmp oeq double %conv140, 0.000000e+00
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %land.lhs.true.137, %land.lhs.true.128
  br label %for.end.486

if.end.144:                                       ; preds = %land.lhs.true.137, %lor.lhs.false.134
  br label %if.end.164

if.else.145:                                      ; preds = %if.then.111
  %94 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class146 = getelementptr inbounds %struct.pattern, %struct.pattern* %94, i32 0, i32 14
  %95 = load i32, i32* %class146, align 4
  %and147 = and i32 %95, 524864
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.end.163, label %if.then.149

if.then.149:                                      ; preds = %if.else.145
  %96 = load i32, i32* @stackp, align 4
  %cmp150 = icmp eq i32 %96, 0
  br i1 %cmp150, label %land.lhs.true.152, label %lor.lhs.false.158

land.lhs.true.152:                                ; preds = %if.then.149
  %97 = load i32, i32* %ii112, align 4
  %idxprom153 = sext i32 %97 to i64
  %arrayidx154 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom153
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx154, i32 0, i32 16
  %arrayidx155 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %98 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp ne i32 %98, 0
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.152, %if.then.149
  %99 = load i32, i32* %ii112, align 4
  %call = call i32 @attack(i32 %99, i32* null)
  %cmp159 = icmp ne i32 %call, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %lor.lhs.false.158, %land.lhs.true.152
  br label %for.end.486

if.end.162:                                       ; preds = %lor.lhs.false.158
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.else.145
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.144
  %100 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class165 = getelementptr inbounds %struct.pattern, %struct.pattern* %100, i32 0, i32 14
  %101 = load i32, i32* %class165, align 4
  %and166 = and i32 %101, 524800
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %land.lhs.true.168, label %if.end.197

land.lhs.true.168:                                ; preds = %if.end.164
  %102 = load i32, i32* %k, align 4
  %idxprom169 = sext i32 %102 to i64
  %103 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn170 = getelementptr inbounds %struct.pattern, %struct.pattern* %103, i32 0, i32 0
  %104 = load %struct.patval*, %struct.patval** %patn170, align 8
  %arrayidx171 = getelementptr inbounds %struct.patval, %struct.patval* %104, i64 %idxprom169
  %att172 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx171, i32 0, i32 1
  %105 = load i32, i32* %att172, align 4
  %cmp173 = icmp eq i32 %105, 2
  br i1 %cmp173, label %if.then.175, label %if.end.197

if.then.175:                                      ; preds = %land.lhs.true.168
  %106 = load i32, i32* %color.addr, align 4
  %cmp176 = icmp eq i32 %106, 1
  br i1 %cmp176, label %land.lhs.true.178, label %lor.lhs.false.185

land.lhs.true.178:                                ; preds = %if.then.175
  %107 = load i32, i32* %ii112, align 4
  %idxprom179 = sext i32 %107 to i64
  %108 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_strength180 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %108, i32 0, i32 3
  %arrayidx181 = getelementptr inbounds [400 x float], [400 x float]* %white_strength180, i32 0, i64 %idxprom179
  %109 = load float, float* %arrayidx181, align 4
  %conv182 = fpext float %109 to double
  %cmp183 = fcmp oeq double %conv182, 0.000000e+00
  br i1 %cmp183, label %if.then.195, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %land.lhs.true.178, %if.then.175
  %110 = load i32, i32* %color.addr, align 4
  %cmp186 = icmp eq i32 %110, 2
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.196

land.lhs.true.188:                                ; preds = %lor.lhs.false.185
  %111 = load i32, i32* %ii112, align 4
  %idxprom189 = sext i32 %111 to i64
  %112 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_strength190 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %112, i32 0, i32 4
  %arrayidx191 = getelementptr inbounds [400 x float], [400 x float]* %black_strength190, i32 0, i64 %idxprom189
  %113 = load float, float* %arrayidx191, align 4
  %conv192 = fpext float %113 to double
  %cmp193 = fcmp oeq double %conv192, 0.000000e+00
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true.188, %land.lhs.true.178
  br label %for.end.486

if.end.196:                                       ; preds = %land.lhs.true.188, %lor.lhs.false.185
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %land.lhs.true.168, %if.end.164
  %114 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class198 = getelementptr inbounds %struct.pattern, %struct.pattern* %114, i32 0, i32 14
  %115 = load i32, i32* %class198, align 4
  %and199 = and i32 %115, 525312
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %land.lhs.true.201, label %if.end.230

land.lhs.true.201:                                ; preds = %if.end.197
  %116 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %116 to i64
  %117 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn203 = getelementptr inbounds %struct.pattern, %struct.pattern* %117, i32 0, i32 0
  %118 = load %struct.patval*, %struct.patval** %patn203, align 8
  %arrayidx204 = getelementptr inbounds %struct.patval, %struct.patval* %118, i64 %idxprom202
  %att205 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx204, i32 0, i32 1
  %119 = load i32, i32* %att205, align 4
  %cmp206 = icmp eq i32 %119, 1
  br i1 %cmp206, label %if.then.208, label %if.end.230

if.then.208:                                      ; preds = %land.lhs.true.201
  %120 = load i32, i32* %color.addr, align 4
  %cmp209 = icmp eq i32 %120, 2
  br i1 %cmp209, label %land.lhs.true.211, label %lor.lhs.false.218

land.lhs.true.211:                                ; preds = %if.then.208
  %121 = load i32, i32* %ii112, align 4
  %idxprom212 = sext i32 %121 to i64
  %122 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_strength213 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %122, i32 0, i32 3
  %arrayidx214 = getelementptr inbounds [400 x float], [400 x float]* %white_strength213, i32 0, i64 %idxprom212
  %123 = load float, float* %arrayidx214, align 4
  %conv215 = fpext float %123 to double
  %cmp216 = fcmp oeq double %conv215, 0.000000e+00
  br i1 %cmp216, label %if.then.228, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %land.lhs.true.211, %if.then.208
  %124 = load i32, i32* %color.addr, align 4
  %cmp219 = icmp eq i32 %124, 1
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.229

land.lhs.true.221:                                ; preds = %lor.lhs.false.218
  %125 = load i32, i32* %ii112, align 4
  %idxprom222 = sext i32 %125 to i64
  %126 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_strength223 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %126, i32 0, i32 4
  %arrayidx224 = getelementptr inbounds [400 x float], [400 x float]* %black_strength223, i32 0, i64 %idxprom222
  %127 = load float, float* %arrayidx224, align 4
  %conv225 = fpext float %127 to double
  %cmp226 = fcmp oeq double %conv225, 0.000000e+00
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %land.lhs.true.221, %land.lhs.true.211
  br label %for.end.486

if.end.229:                                       ; preds = %land.lhs.true.221, %lor.lhs.false.218
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %land.lhs.true.201, %if.end.197
  %128 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class231 = getelementptr inbounds %struct.pattern, %struct.pattern* %128, i32 0, i32 14
  %129 = load i32, i32* %class231, align 4
  %and232 = and i32 %129, 64
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.265

if.then.234:                                      ; preds = %if.end.230
  %130 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %130 to i64
  %131 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn236 = getelementptr inbounds %struct.pattern, %struct.pattern* %131, i32 0, i32 0
  %132 = load %struct.patval*, %struct.patval** %patn236, align 8
  %arrayidx237 = getelementptr inbounds %struct.patval, %struct.patval* %132, i64 %idxprom235
  %att238 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx237, i32 0, i32 1
  %133 = load i32, i32* %att238, align 4
  %cmp239 = icmp eq i32 %133, 2
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %if.then.234
  br label %if.end.243

if.else.242:                                      ; preds = %if.then.234
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 661, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.242, %if.then.241
  %134 = load i32, i32* %color.addr, align 4
  %cmp244 = icmp eq i32 %134, 1
  br i1 %cmp244, label %land.lhs.true.246, label %lor.lhs.false.253

land.lhs.true.246:                                ; preds = %if.end.243
  %135 = load i32, i32* %ii112, align 4
  %idxprom247 = sext i32 %135 to i64
  %136 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_strength248 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %136, i32 0, i32 3
  %arrayidx249 = getelementptr inbounds [400 x float], [400 x float]* %white_strength248, i32 0, i64 %idxprom247
  %137 = load float, float* %arrayidx249, align 4
  %conv250 = fpext float %137 to double
  %cmp251 = fcmp oeq double %conv250, 0.000000e+00
  br i1 %cmp251, label %if.then.263, label %lor.lhs.false.253

lor.lhs.false.253:                                ; preds = %land.lhs.true.246, %if.end.243
  %138 = load i32, i32* %color.addr, align 4
  %cmp254 = icmp eq i32 %138, 2
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.264

land.lhs.true.256:                                ; preds = %lor.lhs.false.253
  %139 = load i32, i32* %ii112, align 4
  %idxprom257 = sext i32 %139 to i64
  %140 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_strength258 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %140, i32 0, i32 4
  %arrayidx259 = getelementptr inbounds [400 x float], [400 x float]* %black_strength258, i32 0, i64 %idxprom257
  %141 = load float, float* %arrayidx259, align 4
  %conv260 = fpext float %141 to double
  %cmp261 = fcmp oeq double %conv260, 0.000000e+00
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %land.lhs.true.256, %land.lhs.true.246
  br label %for.end.486

if.end.264:                                       ; preds = %land.lhs.true.256, %lor.lhs.false.253
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.230
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %land.lhs.true.107, %lor.lhs.false.100
  br label %for.inc.267

for.inc.267:                                      ; preds = %if.end.266
  %142 = load i32, i32* %k, align 4
  %inc268 = add nsw i32 %142, 1
  store i32 %inc268, i32* %k, align 4
  br label %for.cond.85

for.end.269:                                      ; preds = %for.cond.85
  br label %if.end.270

if.end.270:                                       ; preds = %for.end.269, %land.lhs.true.80, %if.end.76
  %143 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %143, i32 0, i32 22
  %144 = load i32, i32* %autohelper_flag, align 4
  %and271 = and i32 %144, 1
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %if.then.273, label %if.end.278

if.then.273:                                      ; preds = %if.end.270
  %145 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %145, i32 0, i32 24
  %146 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %147 = load i32, i32* %ll.addr, align 4
  %148 = load i32, i32* %pos, align 4
  %149 = load i32, i32* %color.addr, align 4
  %call274 = call i32 %146(i32 %147, i32 %148, i32 %149, i32 0)
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %if.end.277, label %if.then.276

if.then.276:                                      ; preds = %if.then.273
  br label %for.end.486

if.end.277:                                       ; preds = %if.then.273
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.270
  %150 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %150, i32 0, i32 23
  %151 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool279 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %151, null
  br i1 %tobool279, label %if.then.280, label %if.end.289

if.then.280:                                      ; preds = %if.end.278
  %152 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper281 = getelementptr inbounds %struct.pattern, %struct.pattern* %152, i32 0, i32 23
  %153 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper281, align 8
  %154 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %155 = load i32, i32* %ll.addr, align 4
  %156 = load i32, i32* %pos, align 4
  %157 = load i32, i32* %color.addr, align 4
  %call282 = call i32 %153(%struct.pattern* %154, i32 %155, i32 %156, i32 %157)
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %if.end.288, label %if.then.284

if.then.284:                                      ; preds = %if.then.280
  %158 = load i32, i32* @debug, align 4
  %and285 = and i32 %158, 1
  %tobool286 = icmp ne i32 %and285, 0
  br i1 %tobool286, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.284
  br label %cond.end

cond.false:                                       ; preds = %if.then.284
  %159 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %159, i32 0, i32 3
  %160 = load i8*, i8** %name, align 8
  %161 = load i32, i32* %ll.addr, align 4
  %162 = load i32, i32* %pos, align 4
  %call287 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0), i8* %160, i32 %161, i32 %162)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.end.486

if.end.288:                                       ; preds = %if.then.280
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.278
  %163 = load i32, i32* @debug, align 4
  %and290 = and i32 %163, 1
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %cond.false.293, label %cond.true.292

cond.true.292:                                    ; preds = %if.end.289
  br label %cond.end.296

cond.false.293:                                   ; preds = %if.end.289
  %164 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name294 = getelementptr inbounds %struct.pattern, %struct.pattern* %164, i32 0, i32 3
  %165 = load i8*, i8** %name294, align 8
  %166 = load i32, i32* %ll.addr, align 4
  %167 = load i32, i32* %anchor.addr, align 4
  %call295 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0), i8* %165, i32 %166, i32 %167)
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.293, %cond.true.292
  %168 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class297 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 14
  %169 = load i32, i32* %class297, align 4
  %and298 = and i32 %169, 524288
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %land.lhs.true.300, label %if.end.307

land.lhs.true.300:                                ; preds = %cond.end.296
  %170 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag301 = getelementptr inbounds %struct.pattern, %struct.pattern* %170, i32 0, i32 22
  %171 = load i32, i32* %autohelper_flag301, align 4
  %and302 = and i32 %171, 2
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %if.then.304, label %if.end.307

if.then.304:                                      ; preds = %land.lhs.true.300
  %172 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper305 = getelementptr inbounds %struct.pattern, %struct.pattern* %172, i32 0, i32 24
  %173 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper305, align 8
  %174 = load i32, i32* %ll.addr, align 4
  %175 = load i32, i32* %pos, align 4
  %176 = load i32, i32* %color.addr, align 4
  %call306 = call i32 %173(i32 %174, i32 %175, i32 %176, i32 1)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.304, %land.lhs.true.300, %cond.end.296
  %177 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class308 = getelementptr inbounds %struct.pattern, %struct.pattern* %177, i32 0, i32 14
  %178 = load i32, i32* %class308, align 4
  %and309 = and i32 %178, 65536
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.then.311, label %if.end.345

if.then.311:                                      ; preds = %if.end.307
  store i32 0, i32* %this_color, align 4
  %179 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %color_to_move = getelementptr inbounds %struct.influence_data, %struct.influence_data* %179, i32 0, i32 20
  %180 = load i32, i32* %color_to_move, align 4
  %cmp312 = icmp eq i32 %180, 0
  br i1 %cmp312, label %if.then.318, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %if.then.311
  %181 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class315 = getelementptr inbounds %struct.pattern, %struct.pattern* %181, i32 0, i32 14
  %182 = load i32, i32* %class315, align 4
  %and316 = and i32 %182, 16
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %lor.lhs.false.314, %if.then.311
  store i32 3, i32* %this_color, align 4
  br label %if.end.326

if.else.319:                                      ; preds = %lor.lhs.false.314
  %183 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %color_to_move320 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %183, i32 0, i32 20
  %184 = load i32, i32* %color_to_move320, align 4
  %185 = load i32, i32* %color.addr, align 4
  %cmp321 = icmp ne i32 %184, %185
  br i1 %cmp321, label %if.then.323, label %if.end.325

if.then.323:                                      ; preds = %if.else.319
  %186 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %color_to_move324 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %186, i32 0, i32 20
  %187 = load i32, i32* %color_to_move324, align 4
  store i32 %187, i32* %this_color, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.323, %if.else.319
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.318
  %188 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %cmp327 = icmp eq %struct.influence_data* %188, @escape_influence
  br i1 %cmp327, label %land.lhs.true.329, label %if.else.334

land.lhs.true.329:                                ; preds = %if.end.326
  %189 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class330 = getelementptr inbounds %struct.pattern, %struct.pattern* %189, i32 0, i32 14
  %190 = load i32, i32* %class330, align 4
  %and331 = and i32 %190, 4096
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.else.334

if.then.333:                                      ; preds = %land.lhs.true.329
  %191 = load i32, i32* %pos, align 4
  %192 = load i32, i32* %this_color, align 4
  %193 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %193, i32 0, i32 15
  %194 = load float, float* %value, align 4
  %mul = fmul float 2.000000e+01, %194
  %195 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @add_influence_source(i32 %191, i32 %192, float %mul, float 1.500000e+00, %struct.influence_data* %195)
  br label %if.end.336

if.else.334:                                      ; preds = %land.lhs.true.329, %if.end.326
  %196 = load i32, i32* %pos, align 4
  %197 = load i32, i32* %this_color, align 4
  %198 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value335 = getelementptr inbounds %struct.pattern, %struct.pattern* %198, i32 0, i32 15
  %199 = load float, float* %value335, align 4
  %200 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @add_influence_source(i32 %196, i32 %197, float %199, float 1.500000e+00, %struct.influence_data* %200)
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.334, %if.then.333
  %201 = load i32, i32* @debug, align 4
  %and337 = and i32 %201, 1
  %tobool338 = icmp ne i32 %and337, 0
  br i1 %tobool338, label %cond.false.340, label %cond.true.339

cond.true.339:                                    ; preds = %if.end.336
  br label %cond.end.344

cond.false.340:                                   ; preds = %if.end.336
  %202 = load i32, i32* %pos, align 4
  %203 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value341 = getelementptr inbounds %struct.pattern, %struct.pattern* %203, i32 0, i32 15
  %204 = load float, float* %value341, align 4
  %conv342 = fpext float %204 to double
  %205 = load i32, i32* %this_color, align 4
  %call343 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i32 0, i32 0), i32 %202, double %conv342, i32 %205)
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.340, %cond.true.339
  br label %for.end.486

if.end.345:                                       ; preds = %if.end.307
  %206 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class346 = getelementptr inbounds %struct.pattern, %struct.pattern* %206, i32 0, i32 14
  %207 = load i32, i32* %class346, align 4
  %and347 = and i32 %207, 8192
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %if.then.349, label %if.end.359

if.then.349:                                      ; preds = %if.end.345
  %208 = load i32, i32* %pos, align 4
  %209 = load i32, i32* %color.addr, align 4
  %210 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value350 = getelementptr inbounds %struct.pattern, %struct.pattern* %210, i32 0, i32 15
  %211 = load float, float* %value350, align 4
  %212 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @add_influence_source(i32 %208, i32 %209, float %211, float 3.000000e+00, %struct.influence_data* %212)
  %213 = load i32, i32* @debug, align 4
  %and351 = and i32 %213, 1
  %tobool352 = icmp ne i32 %and351, 0
  br i1 %tobool352, label %cond.false.354, label %cond.true.353

cond.true.353:                                    ; preds = %if.then.349
  br label %cond.end.358

cond.false.354:                                   ; preds = %if.then.349
  %214 = load i32, i32* %color.addr, align 4
  %215 = load i32, i32* %pos, align 4
  %216 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value355 = getelementptr inbounds %struct.pattern, %struct.pattern* %216, i32 0, i32 15
  %217 = load float, float* %value355, align 4
  %conv356 = fpext float %217 to double
  %call357 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i32 %214, i32 %215, double %conv356)
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.354, %cond.true.353
  br label %for.end.486

if.end.359:                                       ; preds = %if.end.345
  store i32 0, i32* %k, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.484, %if.end.359
  %218 = load i32, i32* %k, align 4
  %219 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen361 = getelementptr inbounds %struct.pattern, %struct.pattern* %219, i32 0, i32 1
  %220 = load i32, i32* %patlen361, align 4
  %cmp362 = icmp slt i32 %218, %220
  br i1 %cmp362, label %for.body.364, label %for.end.486

for.body.364:                                     ; preds = %for.cond.360
  %221 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class365 = getelementptr inbounds %struct.pattern, %struct.pattern* %221, i32 0, i32 14
  %222 = load i32, i32* %class365, align 4
  %and366 = and i32 %222, 1088
  %tobool367 = icmp ne i32 %and366, 0
  br i1 %tobool367, label %land.lhs.true.368, label %lor.lhs.false.385

land.lhs.true.368:                                ; preds = %for.body.364
  %223 = load i32, i32* %k, align 4
  %idxprom369 = sext i32 %223 to i64
  %224 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn370 = getelementptr inbounds %struct.pattern, %struct.pattern* %224, i32 0, i32 0
  %225 = load %struct.patval*, %struct.patval** %patn370, align 8
  %arrayidx371 = getelementptr inbounds %struct.patval, %struct.patval* %225, i64 %idxprom369
  %att372 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx371, i32 0, i32 1
  %226 = load i32, i32* %att372, align 4
  %cmp373 = icmp eq i32 %226, 5
  br i1 %cmp373, label %if.then.396, label %lor.lhs.false.375

lor.lhs.false.375:                                ; preds = %land.lhs.true.368
  %227 = load i32, i32* %k, align 4
  %idxprom376 = sext i32 %227 to i64
  %228 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn377 = getelementptr inbounds %struct.pattern, %struct.pattern* %228, i32 0, i32 0
  %229 = load %struct.patval*, %struct.patval** %patn377, align 8
  %arrayidx378 = getelementptr inbounds %struct.patval, %struct.patval* %229, i64 %idxprom376
  %att379 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx378, i32 0, i32 1
  %230 = load i32, i32* %att379, align 4
  %cmp380 = icmp eq i32 %230, 7
  br i1 %cmp380, label %land.lhs.true.382, label %lor.lhs.false.385

land.lhs.true.382:                                ; preds = %lor.lhs.false.375
  %231 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence383 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %231, i32 0, i32 16
  %232 = load i32, i32* %is_territorial_influence383, align 4
  %tobool384 = icmp ne i32 %232, 0
  br i1 %tobool384, label %if.then.396, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %land.lhs.true.382, %lor.lhs.false.375, %for.body.364
  %233 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class386 = getelementptr inbounds %struct.pattern, %struct.pattern* %233, i32 0, i32 14
  %234 = load i32, i32* %class386, align 4
  %and387 = and i32 %234, 512
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %land.lhs.true.389, label %if.end.483

land.lhs.true.389:                                ; preds = %lor.lhs.false.385
  %235 = load i32, i32* %k, align 4
  %idxprom390 = sext i32 %235 to i64
  %236 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn391 = getelementptr inbounds %struct.pattern, %struct.pattern* %236, i32 0, i32 0
  %237 = load %struct.patval*, %struct.patval** %patn391, align 8
  %arrayidx392 = getelementptr inbounds %struct.patval, %struct.patval* %237, i64 %idxprom390
  %att393 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx392, i32 0, i32 1
  %238 = load i32, i32* %att393, align 4
  %cmp394 = icmp eq i32 %238, 7
  br i1 %cmp394, label %if.then.396, label %if.end.483

if.then.396:                                      ; preds = %land.lhs.true.389, %land.lhs.true.382, %land.lhs.true.368
  %239 = load i32, i32* %ll.addr, align 4
  %idxprom398 = sext i32 %239 to i64
  %240 = load i32, i32* %k, align 4
  %idxprom399 = sext i32 %240 to i64
  %241 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn400 = getelementptr inbounds %struct.pattern, %struct.pattern* %241, i32 0, i32 0
  %242 = load %struct.patval*, %struct.patval** %patn400, align 8
  %arrayidx401 = getelementptr inbounds %struct.patval, %struct.patval* %242, i64 %idxprom399
  %offset402 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx401, i32 0, i32 0
  %243 = load i32, i32* %offset402, align 4
  %idxprom403 = sext i32 %243 to i64
  %arrayidx404 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom403
  %arrayidx405 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx404, i32 0, i64 %idxprom398
  %244 = load i32, i32* %arrayidx405, align 4
  %245 = load i32, i32* %anchor.addr, align 4
  %add406 = add nsw i32 %244, %245
  store i32 %add406, i32* %ii397, align 4
  %246 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class407 = getelementptr inbounds %struct.pattern, %struct.pattern* %246, i32 0, i32 14
  %247 = load i32, i32* %class407, align 4
  %and408 = and i32 %247, 1088
  %tobool409 = icmp ne i32 %and408, 0
  br i1 %tobool409, label %if.then.410, label %if.end.464

if.then.410:                                      ; preds = %if.then.396
  %248 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class412 = getelementptr inbounds %struct.pattern, %struct.pattern* %248, i32 0, i32 14
  %249 = load i32, i32* %class412, align 4
  %and413 = and i32 %249, 64
  %tobool414 = icmp ne i32 %and413, 0
  br i1 %tobool414, label %if.then.415, label %if.else.416

if.then.415:                                      ; preds = %if.then.410
  %250 = load i32, i32* %color.addr, align 4
  store i32 %250, i32* %blocking_color411, align 4
  br label %if.end.418

if.else.416:                                      ; preds = %if.then.410
  %251 = load i32, i32* %color.addr, align 4
  %sub417 = sub nsw i32 3, %251
  store i32 %sub417, i32* %blocking_color411, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.else.416, %if.then.415
  %252 = load i32, i32* @debug, align 4
  %and419 = and i32 %252, 1
  %tobool420 = icmp ne i32 %and419, 0
  br i1 %tobool420, label %cond.false.422, label %cond.true.421

cond.true.421:                                    ; preds = %if.end.418
  br label %cond.end.426

cond.false.422:                                   ; preds = %if.end.418
  %253 = load i32, i32* %blocking_color411, align 4
  %sub423 = sub nsw i32 3, %253
  %call424 = call i8* @color_to_string(i32 %sub423)
  %254 = load i32, i32* %ii397, align 4
  %call425 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8* %call424, i32 %254)
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.422, %cond.true.421
  %255 = load i32, i32* %k, align 4
  %idxprom427 = sext i32 %255 to i64
  %256 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn428 = getelementptr inbounds %struct.pattern, %struct.pattern* %256, i32 0, i32 0
  %257 = load %struct.patval*, %struct.patval** %patn428, align 8
  %arrayidx429 = getelementptr inbounds %struct.patval, %struct.patval* %257, i64 %idxprom427
  %att430 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx429, i32 0, i32 1
  %258 = load i32, i32* %att430, align 4
  %cmp431 = icmp eq i32 %258, 5
  br i1 %cmp431, label %if.then.433, label %if.else.445

if.then.433:                                      ; preds = %cond.end.426
  %259 = load i32, i32* %blocking_color411, align 4
  %cmp434 = icmp eq i32 %259, 1
  br i1 %cmp434, label %if.then.436, label %if.else.440

if.then.436:                                      ; preds = %if.then.433
  %260 = load i32, i32* %ii397, align 4
  %idxprom437 = sext i32 %260 to i64
  %261 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_permeability438 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %261, i32 0, i32 8
  %arrayidx439 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability438, i32 0, i64 %idxprom437
  store float 0.000000e+00, float* %arrayidx439, align 4
  br label %if.end.444

if.else.440:                                      ; preds = %if.then.433
  %262 = load i32, i32* %ii397, align 4
  %idxprom441 = sext i32 %262 to i64
  %263 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_permeability442 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %263, i32 0, i32 7
  %arrayidx443 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability442, i32 0, i64 %idxprom441
  store float 0.000000e+00, float* %arrayidx443, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.440, %if.then.436
  br label %if.end.463

if.else.445:                                      ; preds = %cond.end.426
  %264 = load i32, i32* %blocking_color411, align 4
  %cmp446 = icmp eq i32 %264, 1
  br i1 %cmp446, label %if.then.448, label %if.else.455

if.then.448:                                      ; preds = %if.else.445
  %265 = load i32, i32* %ii397, align 4
  %idxprom449 = sext i32 %265 to i64
  %266 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %black_permeability450 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %266, i32 0, i32 8
  %arrayidx451 = getelementptr inbounds [400 x float], [400 x float]* %black_permeability450, i32 0, i64 %idxprom449
  %267 = load float, float* %arrayidx451, align 4
  %conv452 = fpext float %267 to double
  %mul453 = fmul double %conv452, 7.000000e-01
  %conv454 = fptrunc double %mul453 to float
  store float %conv454, float* %arrayidx451, align 4
  br label %if.end.462

if.else.455:                                      ; preds = %if.else.445
  %268 = load i32, i32* %ii397, align 4
  %idxprom456 = sext i32 %268 to i64
  %269 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %white_permeability457 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %269, i32 0, i32 7
  %arrayidx458 = getelementptr inbounds [400 x float], [400 x float]* %white_permeability457, i32 0, i64 %idxprom456
  %270 = load float, float* %arrayidx458, align 4
  %conv459 = fpext float %270 to double
  %mul460 = fmul double %conv459, 7.000000e-01
  %conv461 = fptrunc double %mul460 to float
  store float %conv461, float* %arrayidx458, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.455, %if.then.448
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.end.444
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.396
  %271 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class465 = getelementptr inbounds %struct.pattern, %struct.pattern* %271, i32 0, i32 14
  %272 = load i32, i32* %class465, align 4
  %and466 = and i32 %272, 512
  %tobool467 = icmp ne i32 %and466, 0
  br i1 %tobool467, label %if.then.468, label %if.end.482

if.then.468:                                      ; preds = %if.end.464
  %273 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  %is_territorial_influence469 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %273, i32 0, i32 16
  %274 = load i32, i32* %is_territorial_influence469, align 4
  %tobool470 = icmp ne i32 %274, 0
  br i1 %tobool470, label %if.then.471, label %if.else.473

if.then.471:                                      ; preds = %if.then.468
  %275 = load i32, i32* %anchor.addr, align 4
  %276 = load i32, i32* %ii397, align 4
  %277 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value472 = getelementptr inbounds %struct.pattern, %struct.pattern* %277, i32 0, i32 15
  %278 = load float, float* %value472, align 4
  %279 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @enter_intrusion_source(i32 %275, i32 %276, float %278, float 0x4003333340000000, %struct.influence_data* %279)
  br label %if.end.475

if.else.473:                                      ; preds = %if.then.468
  %280 = load i32, i32* %ii397, align 4
  %281 = load i32, i32* %color.addr, align 4
  %282 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value474 = getelementptr inbounds %struct.pattern, %struct.pattern* %282, i32 0, i32 15
  %283 = load float, float* %value474, align 4
  %284 = load %struct.influence_data*, %struct.influence_data** %q, align 8
  call void @add_influence_source(i32 %280, i32 %281, float %283, float 3.000000e+00, %struct.influence_data* %284)
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.473, %if.then.471
  %285 = load i32, i32* @debug, align 4
  %and476 = and i32 %285, 1
  %tobool477 = icmp ne i32 %and476, 0
  br i1 %tobool477, label %cond.false.479, label %cond.true.478

cond.true.478:                                    ; preds = %if.end.475
  br label %cond.end.481

cond.false.479:                                   ; preds = %if.end.475
  %286 = load i32, i32* %ii397, align 4
  %call480 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 %286)
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.false.479, %cond.true.478
  br label %if.end.482

if.end.482:                                       ; preds = %cond.end.481, %if.end.464
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %land.lhs.true.389, %lor.lhs.false.385
  br label %for.inc.484

for.inc.484:                                      ; preds = %if.end.483
  %287 = load i32, i32* %k, align 4
  %inc485 = add nsw i32 %287, 1
  store i32 %inc485, i32* %k, align 4
  br label %for.cond.360

for.end.486:                                      ; preds = %if.then, %if.then.16, %if.then.23, %if.then.74, %if.then.143, %if.then.161, %if.then.195, %if.then.228, %if.then.263, %if.then.276, %cond.end, %cond.end.344, %cond.end.358, %for.cond.360
  ret void
}

declare i32 @attack(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @add_influence_source(i32 %pos, i32 %color, float %strength, float %attenuation, %struct.influence_data* %q) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %strength.addr = alloca float, align 4
  %attenuation.addr = alloca float, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %strength, float* %strength.addr, align 4
  store float %attenuation, float* %attenuation.addr, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %white_strength, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load float, float* %strength.addr, align 4
  %cmp = fcmp olt float %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load float, float* %strength.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_strength2 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %7, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [400 x float], [400 x float]* %white_strength2, i32 0, i64 %idxprom1
  store float %5, float* %arrayidx3, align 4
  %8 = load float, float* %attenuation.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %white_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [400 x float], [400 x float]* %white_attenuation, i32 0, i64 %idxprom4
  store float %8, float* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i32, i32* %color.addr, align 4
  %and6 = and i32 %11, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.18

land.lhs.true.8:                                  ; preds = %if.end
  %12 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength = getelementptr inbounds %struct.influence_data, %struct.influence_data* %13, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [400 x float], [400 x float]* %black_strength, i32 0, i64 %idxprom9
  %14 = load float, float* %arrayidx10, align 4
  %15 = load float, float* %strength.addr, align 4
  %cmp11 = fcmp olt float %14, %15
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true.8
  %16 = load float, float* %strength.addr, align 4
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_strength14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %18, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [400 x float], [400 x float]* %black_strength14, i32 0, i64 %idxprom13
  store float %16, float* %arrayidx15, align 4
  %19 = load float, float* %attenuation.addr, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %black_attenuation = getelementptr inbounds %struct.influence_data, %struct.influence_data* %21, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [400 x float], [400 x float]* %black_attenuation, i32 0, i64 %idxprom16
  store float %19, float* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %land.lhs.true.8, %if.end
  ret void
}

declare i8* @color_to_string(i32) #1

; Function Attrs: nounwind uwtable
define internal void @enter_intrusion_source(i32 %source_pos, i32 %strength_pos, float %strength, float %attenuation, %struct.influence_data* %q) #0 {
entry:
  %source_pos.addr = alloca i32, align 4
  %strength_pos.addr = alloca i32, align 4
  %strength.addr = alloca float, align 4
  %attenuation.addr = alloca float, align 4
  %q.addr = alloca %struct.influence_data*, align 8
  store i32 %source_pos, i32* %source_pos.addr, align 4
  store i32 %strength_pos, i32* %strength_pos.addr, align 4
  store float %strength, float* %strength.addr, align 4
  store float %attenuation, float* %attenuation.addr, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  %0 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter = getelementptr inbounds %struct.influence_data, %struct.influence_data* %0, i32 0, i32 22
  %1 = load i32, i32* %intrusion_counter, align 4
  %cmp = icmp sge i32 %1, 722
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %source_pos.addr, align 4
  %4 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter1 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 22
  %5 = load i32, i32* %intrusion_counter1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions = getelementptr inbounds %struct.influence_data, %struct.influence_data* %6, i32 0, i32 23
  %arrayidx = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions, i32 0, i64 %idxprom
  %source_pos2 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx, i32 0, i32 0
  store i32 %3, i32* %source_pos2, align 4
  %7 = load i32, i32* %strength_pos.addr, align 4
  %8 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter3 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %8, i32 0, i32 22
  %9 = load i32, i32* %intrusion_counter3, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions5 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 23
  %arrayidx6 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions5, i32 0, i64 %idxprom4
  %strength_pos7 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx6, i32 0, i32 1
  store i32 %7, i32* %strength_pos7, align 4
  %11 = load float, float* %strength.addr, align 4
  %12 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter8 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %12, i32 0, i32 22
  %13 = load i32, i32* %intrusion_counter8, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions10 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %14, i32 0, i32 23
  %arrayidx11 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions10, i32 0, i64 %idxprom9
  %strength12 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx11, i32 0, i32 2
  store float %11, float* %strength12, align 4
  %15 = load float, float* %attenuation.addr, align 4
  %16 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter13 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 22
  %17 = load i32, i32* %intrusion_counter13, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusions15 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %18, i32 0, i32 23
  %arrayidx16 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %intrusions15, i32 0, i64 %idxprom14
  %attenuation17 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %arrayidx16, i32 0, i32 3
  store float %15, float* %attenuation17, align 4
  %19 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %intrusion_counter18 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 22
  %20 = load i32, i32* %intrusion_counter18, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %intrusion_counter18, align 4
  br label %return

return:                                           ; preds = %if.end, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @segment_region(%struct.influence_data* %q, i32 (%struct.influence_data*, i32)* %region_owner, i32 %type, i32* %segmentation) #0 {
entry:
  %q.addr = alloca %struct.influence_data*, align 8
  %region_owner.addr = alloca i32 (%struct.influence_data*, i32)*, align 8
  %type.addr = alloca i32, align 4
  %segmentation.addr = alloca i32*, align 8
  %ii = alloca i32, align 4
  %size = alloca i32, align 4
  %terr_val = alloca float, align 4
  %queue_start = alloca i32, align 4
  %queue_end = alloca i32, align 4
  %color = alloca i32, align 4
  %tt = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.influence_data* %q, %struct.influence_data** %q.addr, align 8
  store i32 (%struct.influence_data*, i32)* %region_owner, i32 (%struct.influence_data*, i32)** %region_owner.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32* %segmentation, i32** %segmentation.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @segment_region.marked, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.96

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end.95, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %region_owner.addr, align 8
  %6 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %7 = load i32, i32* %ii, align 4
  %call = call i32 %5(%struct.influence_data* %6, i32 %7)
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end.95

if.then.7:                                        ; preds = %land.lhs.true
  store i32 0, i32* %size, align 4
  store float 0.000000e+00, float* %terr_val, align 4
  store i32 0, i32* %queue_start, align 4
  store i32 1, i32* %queue_end, align 4
  %8 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %region_owner.addr, align 8
  %9 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %10 = load i32, i32* %ii, align 4
  %call8 = call i32 %8(%struct.influence_data* %9, i32 %10)
  store i32 %call8, i32* %color, align 4
  %11 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 15
  %12 = load i32, i32* %number_of_regions, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %number_of_regions, align 4
  %13 = load i32, i32* %ii, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i32 0, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  %14 = load i32, i32* %ii, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %queue = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 21
  %arrayidx11 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 0
  store i32 %14, i32* %arrayidx11, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.7
  %16 = load i32, i32* %queue_start, align 4
  %17 = load i32, i32* %queue_end, align 4
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %queue_start, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %queue15 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 21
  %arrayidx16 = getelementptr inbounds [361 x i32], [361 x i32]* %queue15, i32 0, i64 %idxprom14
  %20 = load i32, i32* %arrayidx16, align 4
  store i32 %20, i32* %tt, align 4
  %21 = load i32, i32* %queue_start, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %queue_start, align 4
  %22 = load i32, i32* %tt, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %safe = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [400 x i8], [400 x i8]* %safe, i32 0, i64 %idxprom18
  %24 = load i8, i8* %arrayidx19, align 1
  %tobool20 = icmp ne i8 %24, 0
  br i1 %tobool20, label %lor.lhs.false, label %if.then.26

lor.lhs.false:                                    ; preds = %while.body
  %25 = load i32, i32* %tt, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %26 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %26 to i32
  %27 = load i32, i32* %color, align 4
  %cmp24 = icmp ne i32 %conv23, %27
  br i1 %cmp24, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %lor.lhs.false, %while.body
  %28 = load i32, i32* %size, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %size, align 4
  %29 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %is_territorial_influence = getelementptr inbounds %struct.influence_data, %struct.influence_data* %29, i32 0, i32 16
  %30 = load i32, i32* %is_territorial_influence, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then.26
  %31 = load i32, i32* %tt, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %32, i32 0, i32 17
  %arrayidx31 = getelementptr inbounds [400 x float], [400 x float]* %territory_value, i32 0, i64 %idxprom30
  %33 = load float, float* %arrayidx31, align 4
  %cmp32 = fcmp olt float %33, 0.000000e+00
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.29
  %34 = load i32, i32* %tt, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value35 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 17
  %arrayidx36 = getelementptr inbounds [400 x float], [400 x float]* %territory_value35, i32 0, i64 %idxprom34
  %36 = load float, float* %arrayidx36, align 4
  %sub = fsub float -0.000000e+00, %36
  br label %cond.end

cond.false:                                       ; preds = %if.then.29
  %37 = load i32, i32* %tt, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %territory_value38 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %38, i32 0, i32 17
  %arrayidx39 = getelementptr inbounds [400 x float], [400 x float]* %territory_value38, i32 0, i64 %idxprom37
  %39 = load float, float* %arrayidx39, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub, %cond.true ], [ %39, %cond.false ]
  %40 = load float, float* %terr_val, align 4
  %add = fadd float %40, %cond
  store float %add, float* %terr_val, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %lor.lhs.false
  %41 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions41 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %41, i32 0, i32 15
  %42 = load i32, i32* %number_of_regions41, align 4
  %43 = load i32, i32* %tt, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i32*, i32** %segmentation.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %44, i64 %idxprom42
  store i32 %42, i32* %arrayidx43, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %if.end.40
  %45 = load i32, i32* %k, align 4
  %cmp45 = icmp slt i32 %45, 4
  br i1 %cmp45, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.44
  %46 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %46 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom48
  %47 = load i32, i32* %arrayidx49, align 4
  store i32 %47, i32* %d, align 4
  %48 = load i32, i32* %tt, align 4
  %49 = load i32, i32* %d, align 4
  %add50 = add nsw i32 %48, %49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %50 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %50 to i32
  %cmp54 = icmp ne i32 %conv53, 3
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.75

land.lhs.true.56:                                 ; preds = %for.body.47
  %51 = load i32, i32* %tt, align 4
  %52 = load i32, i32* %d, align 4
  %add57 = add nsw i32 %51, %52
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i32 0, i64 %idxprom58
  %53 = load i8, i8* %arrayidx59, align 1
  %tobool60 = icmp ne i8 %53, 0
  br i1 %tobool60, label %if.end.75, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %land.lhs.true.56
  %54 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %region_owner.addr, align 8
  %55 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %56 = load i32, i32* %tt, align 4
  %57 = load i32, i32* %d, align 4
  %add62 = add nsw i32 %56, %57
  %call63 = call i32 %54(%struct.influence_data* %55, i32 %add62)
  %58 = load i32, i32* %color, align 4
  %cmp64 = icmp eq i32 %call63, %58
  br i1 %cmp64, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %land.lhs.true.61
  %59 = load i32, i32* %tt, align 4
  %60 = load i32, i32* %d, align 4
  %add67 = add nsw i32 %59, %60
  %61 = load i32, i32* %queue_end, align 4
  %idxprom68 = sext i32 %61 to i64
  %62 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %queue69 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %62, i32 0, i32 21
  %arrayidx70 = getelementptr inbounds [361 x i32], [361 x i32]* %queue69, i32 0, i64 %idxprom68
  store i32 %add67, i32* %arrayidx70, align 4
  %63 = load i32, i32* %queue_end, align 4
  %inc71 = add nsw i32 %63, 1
  store i32 %inc71, i32* %queue_end, align 4
  %64 = load i32, i32* %tt, align 4
  %65 = load i32, i32* %d, align 4
  %add72 = add nsw i32 %64, %65
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i32 0, i64 %idxprom73
  store i8 1, i8* %arrayidx74, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.66, %land.lhs.true.61, %land.lhs.true.56, %for.body.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %66 = load i32, i32* %k, align 4
  %inc76 = add nsw i32 %66, 1
  store i32 %inc76, i32* %k, align 4
  br label %for.cond.44

for.end:                                          ; preds = %for.cond.44
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %67 = load i32, i32* %color, align 4
  %cmp77 = icmp eq i32 %67, 1
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %while.end
  %68 = load i32, i32* %type.addr, align 4
  %or = or i32 0, %68
  %69 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions80 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %69, i32 0, i32 15
  %70 = load i32, i32* %number_of_regions80, align 4
  %idxprom81 = sext i32 %70 to i64
  %71 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_type = getelementptr inbounds %struct.influence_data, %struct.influence_data* %71, i32 0, i32 12
  %arrayidx82 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_type, i32 0, i64 %idxprom81
  store i32 %or, i32* %arrayidx82, align 4
  br label %if.end.88

if.else:                                          ; preds = %while.end
  %72 = load i32, i32* %type.addr, align 4
  %or83 = or i32 1, %72
  %73 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions84 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %73, i32 0, i32 15
  %74 = load i32, i32* %number_of_regions84, align 4
  %idxprom85 = sext i32 %74 to i64
  %75 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_type86 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %75, i32 0, i32 12
  %arrayidx87 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_type86, i32 0, i64 %idxprom85
  store i32 %or83, i32* %arrayidx87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.79
  %76 = load i32, i32* %size, align 4
  %77 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions89 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %77, i32 0, i32 15
  %78 = load i32, i32* %number_of_regions89, align 4
  %idxprom90 = sext i32 %78 to i64
  %79 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_size = getelementptr inbounds %struct.influence_data, %struct.influence_data* %79, i32 0, i32 13
  %arrayidx91 = getelementptr inbounds [1084 x i32], [1084 x i32]* %region_size, i32 0, i64 %idxprom90
  store i32 %76, i32* %arrayidx91, align 4
  %80 = load float, float* %terr_val, align 4
  %81 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %number_of_regions92 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %81, i32 0, i32 15
  %82 = load i32, i32* %number_of_regions92, align 4
  %idxprom93 = sext i32 %82 to i64
  %83 = load %struct.influence_data*, %struct.influence_data** %q.addr, align 8
  %region_territorial_value = getelementptr inbounds %struct.influence_data, %struct.influence_data* %83, i32 0, i32 14
  %arrayidx94 = getelementptr inbounds [1084 x float], [1084 x float]* %region_territorial_value, i32 0, i64 %idxprom93
  store float %80, float* %arrayidx94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.88, %land.lhs.true, %if.then
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.body
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %84 = load i32, i32* %ii, align 4
  %inc98 = add nsw i32 %84, 1
  store i32 %inc98, i32* %ii, align 4
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  ret void
}

declare void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_intrusions(i8* %p1, i8* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %intr1 = alloca %struct.intrusion_data*, align 8
  %intr2 = alloca %struct.intrusion_data*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to %struct.intrusion_data*
  store %struct.intrusion_data* %1, %struct.intrusion_data** %intr1, align 8
  %2 = load i8*, i8** %p2.addr, align 8
  %3 = bitcast i8* %2 to %struct.intrusion_data*
  store %struct.intrusion_data* %3, %struct.intrusion_data** %intr2, align 8
  %4 = load %struct.intrusion_data*, %struct.intrusion_data** %intr1, align 8
  %source_pos = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %4, i32 0, i32 0
  %5 = load i32, i32* %source_pos, align 4
  %6 = load %struct.intrusion_data*, %struct.intrusion_data** %intr2, align 8
  %source_pos1 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %6, i32 0, i32 0
  %7 = load i32, i32* %source_pos1, align 4
  %sub = sub nsw i32 %5, %7
  %cmp = icmp ne i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.intrusion_data*, %struct.intrusion_data** %intr1, align 8
  %source_pos2 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %8, i32 0, i32 0
  %9 = load i32, i32* %source_pos2, align 4
  %10 = load %struct.intrusion_data*, %struct.intrusion_data** %intr2, align 8
  %source_pos3 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %10, i32 0, i32 0
  %11 = load i32, i32* %source_pos3, align 4
  %sub4 = sub nsw i32 %9, %11
  store i32 %sub4, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct.intrusion_data*, %struct.intrusion_data** %intr1, align 8
  %strength_pos = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %12, i32 0, i32 1
  %13 = load i32, i32* %strength_pos, align 4
  %14 = load %struct.intrusion_data*, %struct.intrusion_data** %intr2, align 8
  %strength_pos5 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %14, i32 0, i32 1
  %15 = load i32, i32* %strength_pos5, align 4
  %sub6 = sub nsw i32 %13, %15
  %cmp7 = icmp ne i32 %sub6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.else
  %16 = load %struct.intrusion_data*, %struct.intrusion_data** %intr1, align 8
  %strength_pos9 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %16, i32 0, i32 1
  %17 = load i32, i32* %strength_pos9, align 4
  %18 = load %struct.intrusion_data*, %struct.intrusion_data** %intr2, align 8
  %strength_pos10 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %18, i32 0, i32 1
  %19 = load i32, i32* %strength_pos10, align 4
  %sub11 = sub nsw i32 %17, %19
  store i32 %sub11, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %20 = load %struct.intrusion_data*, %struct.intrusion_data** %intr1, align 8
  %strength = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %20, i32 0, i32 2
  %21 = load float, float* %strength, align 4
  %22 = load %struct.intrusion_data*, %struct.intrusion_data** %intr2, align 8
  %strength13 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %22, i32 0, i32 2
  %23 = load float, float* %strength13, align 4
  %cmp14 = fcmp ogt float %21, %23
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.12
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.16, %if.then.15, %if.then.8, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare float @gg_interpolate(%struct.interpolation_data*, float) #1

declare void @start_draw_board() #1

declare void @draw_color_char(i32, i32, i32, i32) #1

declare void @end_draw_board() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
