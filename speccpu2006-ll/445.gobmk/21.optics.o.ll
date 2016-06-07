; ModuleID = 'engine/optics.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.eye_graph = type { %struct.eye_vertex*, i32, i32, i32, i32, i32, i32, %struct.eyevalue }
%struct.eye_vertex = type { i8, i8, i8, i8, [4 x i32] }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.vital_points = type { [80 x i32], [80 x i32], i32, i32 }
%struct.board_state = type { i32, [421 x i8], i32, i32, i32, [421 x i8], i32, i32, i32, [500 x i32], [500 x i32], i32, float, i32 }

@black_domain = internal global [400 x i32] zeroinitializer, align 16
@white_domain = internal global [400 x i32] zeroinitializer, align 16
@board = external global [421 x i8], align 16
@board_size = external global i32, align 4
@delta = external global [8 x i32], align 16
@debug = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"find_eye_dragons: %1m %C\0A\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"  dragon: %1m %1m\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"  graph matching - %s, pessimistic_min=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"  guess_eye - %s, pessimistic_min=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"  pessimistic min revised to 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"  pessimistic min revised to 1 (interior stones)\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"engine/optics.c\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ON_BOARD1(*defense_point)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"ON_BOARD1(*attack_point)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"heye[pos].type == FALSE_EYE\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"false eye found at %1m\0A\00", align 1
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@deltai = external global [8 x i32], align 16
@deltaj = external global [8 x i32], align 16
@.str.12 = private unnamed_addr constant [24 x i8] c"ON_BOARD1(attack_point)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"ON_BOARD1(defense_point)\00", align 1
@eyevalue_to_string.result = internal global [30 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"%d%d%d%d\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"[%d,%d,%d,%d]\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ON_BOARD1(eye_vertices[k])\00", align 1
@verbose = external global i32, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"%1m alive, but %1m attacks:\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"%1m alive, but almost filled with nakade:\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"%1m dead, but %1m defends:\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Bad attack point %1m:\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Attack point %1m failed:\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Bad defense point %1m:\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Defense point %1m failed:\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"heye[pos].num_attacks > 0\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"ON_BOARD1(heye[pos].attack_point[0])\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"heye[pos].num_defends > 0\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"ON_BOARD1(heye[pos].defense_point[0])\00", align 1
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@.str.28 = private unnamed_addr constant [29 x i8] c"False margin for %C at %1m.\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"ON_BOARD1(origin)\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"esize != ((void*)0)\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"msize != ((void*)0)\00", align 1
@experimental_connections = external global i32, align 4
@.str.33 = private unnamed_addr constant [47 x i8] c"Eyespace at %1m: color=%C, esize=%d, msize=%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"%1m (X!)\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%1m (XH)\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"%1m (XH) (topological eye value = %f)\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"%1m (X)\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%1m (!)\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"%1m (H)\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"%1m (H) (topological eye value = %f)\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%1m\0A\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%o!\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%oh\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%o.\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%oH\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%oX\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%o \00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"attack_point != ((void*)0)\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"defense_point != ((void*)0)\00", align 1
@graphs = external global [0 x %struct.eye_graph], align 8
@.str.51 = private unnamed_addr constant [44 x i8] c"vp->num_attacks > 0 && vp->num_defenses > 0\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"  vital points: %1m (attack) %1m (defense)\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"  pattern matched:  %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"eye space at %1m of type %d\0A\00", align 1
@map_size = internal global i32 0, align 4
@used_index = internal global [20 x i8] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(apos)\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(dpos)\00", align 1

; Function Attrs: nounwind uwtable
define void @make_domains(%struct.eye_data* %b_eye, %struct.eye_data* %w_eye, i32 %owl_call) #0 {
entry:
  %b_eye.addr = alloca %struct.eye_data*, align 8
  %w_eye.addr = alloca %struct.eye_data*, align 8
  %owl_call.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %lively = alloca [400 x i32], align 16
  %false_margins = alloca [400 x i32], align 16
  %apos = alloca i32, align 4
  %apos117 = alloca i32, align 4
  %apos159 = alloca i32, align 4
  %apos201 = alloca i32, align 4
  %esize = alloca i32, align 4
  %msize = alloca i32, align 4
  %esize311 = alloca i32, align 4
  %msize312 = alloca i32, align 4
  store %struct.eye_data* %b_eye, %struct.eye_data** %b_eye.addr, align 8
  store %struct.eye_data* %w_eye, %struct.eye_data** %w_eye.addr, align 8
  store i32 %owl_call, i32* %owl_call.addr, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @black_domain to i8*), i8 0, i64 1600, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @white_domain to i8*), i8 0, i64 1600, i32 16, i1 false)
  %0 = bitcast [400 x i32]* %false_margins to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %4 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool = icmp ne %struct.eye_data* %4, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %6, i64 %idxprom4
  call void @clear_eye(%struct.eye_data* %arrayidx5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool6 = icmp ne %struct.eye_data* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %9, i64 %idxprom8
  call void @clear_eye(%struct.eye_data* %arrayidx9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %10 = load i32, i32* %owl_call.addr, align 4
  %11 = load i32, i32* %pos, align 4
  %call = call i32 @is_lively(i32 %10, i32 %11)
  %12 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* %lively, i32 0, i64 %idxprom11
  store i32 %call, i32* %arrayidx12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %13 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %lively, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [400 x i32], [400 x i32]* %false_margins, i32 0, i32 0
  call void @compute_primary_domains(i32 2, i32* getelementptr inbounds ([400 x i32], [400 x i32]* @black_domain, i32 0, i32 0), i32* %arraydecay, i32* %arraydecay14, i32 1)
  %arraydecay15 = getelementptr inbounds [400 x i32], [400 x i32]* %lively, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [400 x i32], [400 x i32]* %false_margins, i32 0, i32 0
  call void @compute_primary_domains(i32 1, i32* getelementptr inbounds ([400 x i32], [400 x i32]* @white_domain, i32 0, i32 0), i32* %arraydecay15, i32* %arraydecay16, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.245, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp18 = icmp slt i32 %14, %15
  br i1 %cmp18, label %for.body.20, label %for.end.247

for.body.20:                                      ; preds = %for.cond.17
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.242, %for.body.20
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* @board_size, align 4
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body.24, label %for.end.244

for.body.24:                                      ; preds = %for.cond.21
  %18 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %18, 20
  %add = add nsw i32 21, %mul
  %19 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %add, %19
  store i32 %add25, i32* %pos, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.24
  %22 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [400 x i32], [400 x i32]* %lively, i32 0, i64 %idxprom31
  %23 = load i32, i32* %arrayidx32, align 4
  %tobool33 = icmp ne i32 %23, 0
  br i1 %tobool33, label %if.end.241, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %for.body.24
  %24 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom35
  %25 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %25, 0
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.34
  %26 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom39
  %27 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %land.lhs.true
  %28 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool44 = icmp ne %struct.eye_data* %28, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.43
  %29 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %29 to i64
  %30 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %30, i64 %idxprom46
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx47, i32 0, i32 0
  store i32 3, i32* %color, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.43
  %31 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool49 = icmp ne %struct.eye_data* %31, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %32 = load i32, i32* %pos, align 4
  %idxprom51 = sext i32 %32 to i64
  %33 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %33, i64 %idxprom51
  %color53 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx52, i32 0, i32 0
  store i32 3, i32* %color53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.48
  br label %if.end.240

if.else:                                          ; preds = %land.lhs.true, %if.then.34
  %34 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom55
  %35 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %35, 1
  br i1 %cmp57, label %land.lhs.true.59, label %if.else.97

land.lhs.true.59:                                 ; preds = %if.else
  %36 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom60
  %37 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %37, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.97

land.lhs.true.64:                                 ; preds = %land.lhs.true.59
  %38 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool65 = icmp ne %struct.eye_data* %38, null
  br i1 %tobool65, label %if.then.66, label %if.else.97

if.then.66:                                       ; preds = %land.lhs.true.64
  %39 = load i32, i32* %pos, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i64 %idxprom67
  %color69 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx68, i32 0, i32 0
  store i32 5, i32* %color69, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.94, %if.then.66
  %41 = load i32, i32* %k, align 4
  %cmp71 = icmp slt i32 %41, 4
  br i1 %cmp71, label %for.body.73, label %for.end.96

for.body.73:                                      ; preds = %for.cond.70
  %42 = load i32, i32* %pos, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom74
  %44 = load i32, i32* %arrayidx75, align 4
  %add76 = add nsw i32 %42, %44
  store i32 %add76, i32* %apos, align 4
  %45 = load i32, i32* %apos, align 4
  %idxprom77 = sext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %46 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %46 to i32
  %cmp80 = icmp ne i32 %conv79, 3
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.93

land.lhs.true.82:                                 ; preds = %for.body.73
  %47 = load i32, i32* %apos, align 4
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom83
  %48 = load i32, i32* %arrayidx84, align 4
  %tobool85 = icmp ne i32 %48, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.93

land.lhs.true.86:                                 ; preds = %land.lhs.true.82
  %49 = load i32, i32* %apos, align 4
  %idxprom87 = sext i32 %49 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom87
  %50 = load i32, i32* %arrayidx88, align 4
  %tobool89 = icmp ne i32 %50, 0
  br i1 %tobool89, label %if.end.93, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.86
  %51 = load i32, i32* %pos, align 4
  %idxprom91 = sext i32 %51 to i64
  %52 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %52, i64 %idxprom91
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx92, i32 0, i32 7
  store i8 1, i8* %marginal, align 1
  br label %for.end.96

if.end.93:                                        ; preds = %land.lhs.true.86, %land.lhs.true.82, %for.body.73
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %53 = load i32, i32* %k, align 4
  %inc95 = add nsw i32 %53, 1
  store i32 %inc95, i32* %k, align 4
  br label %for.cond.70

for.end.96:                                       ; preds = %if.then.90, %for.cond.70
  br label %if.end.239

if.else.97:                                       ; preds = %land.lhs.true.64, %land.lhs.true.59, %if.else
  %54 = load i32, i32* %pos, align 4
  %idxprom98 = sext i32 %54 to i64
  %arrayidx99 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom98
  %55 = load i32, i32* %arrayidx99, align 4
  %cmp100 = icmp eq i32 %55, 0
  br i1 %cmp100, label %land.lhs.true.102, label %if.else.142

land.lhs.true.102:                                ; preds = %if.else.97
  %56 = load i32, i32* %pos, align 4
  %idxprom103 = sext i32 %56 to i64
  %arrayidx104 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom103
  %57 = load i32, i32* %arrayidx104, align 4
  %cmp105 = icmp eq i32 %57, 1
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.142

land.lhs.true.107:                                ; preds = %land.lhs.true.102
  %58 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool108 = icmp ne %struct.eye_data* %58, null
  br i1 %tobool108, label %if.then.109, label %if.else.142

if.then.109:                                      ; preds = %land.lhs.true.107
  %59 = load i32, i32* %pos, align 4
  %idxprom110 = sext i32 %59 to i64
  %60 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %60, i64 %idxprom110
  %color112 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx111, i32 0, i32 0
  store i32 4, i32* %color112, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.139, %if.then.109
  %61 = load i32, i32* %k, align 4
  %cmp114 = icmp slt i32 %61, 4
  br i1 %cmp114, label %for.body.116, label %for.end.141

for.body.116:                                     ; preds = %for.cond.113
  %62 = load i32, i32* %pos, align 4
  %63 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %63 to i64
  %arrayidx119 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom118
  %64 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %62, %64
  store i32 %add120, i32* %apos117, align 4
  %65 = load i32, i32* %apos117, align 4
  %idxprom121 = sext i32 %65 to i64
  %arrayidx122 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom121
  %66 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %66 to i32
  %cmp124 = icmp ne i32 %conv123, 3
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.138

land.lhs.true.126:                                ; preds = %for.body.116
  %67 = load i32, i32* %apos117, align 4
  %idxprom127 = sext i32 %67 to i64
  %arrayidx128 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom127
  %68 = load i32, i32* %arrayidx128, align 4
  %tobool129 = icmp ne i32 %68, 0
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.138

land.lhs.true.130:                                ; preds = %land.lhs.true.126
  %69 = load i32, i32* %apos117, align 4
  %idxprom131 = sext i32 %69 to i64
  %arrayidx132 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom131
  %70 = load i32, i32* %arrayidx132, align 4
  %tobool133 = icmp ne i32 %70, 0
  br i1 %tobool133, label %if.end.138, label %if.then.134

if.then.134:                                      ; preds = %land.lhs.true.130
  %71 = load i32, i32* %pos, align 4
  %idxprom135 = sext i32 %71 to i64
  %72 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %72, i64 %idxprom135
  %marginal137 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx136, i32 0, i32 7
  store i8 1, i8* %marginal137, align 1
  br label %for.end.141

if.end.138:                                       ; preds = %land.lhs.true.130, %land.lhs.true.126, %for.body.116
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %73 = load i32, i32* %k, align 4
  %inc140 = add nsw i32 %73, 1
  store i32 %inc140, i32* %k, align 4
  br label %for.cond.113

for.end.141:                                      ; preds = %if.then.134, %for.cond.113
  br label %if.end.238

if.else.142:                                      ; preds = %land.lhs.true.107, %land.lhs.true.102, %if.else.97
  %74 = load i32, i32* %pos, align 4
  %idxprom143 = sext i32 %74 to i64
  %arrayidx144 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom143
  %75 = load i32, i32* %arrayidx144, align 4
  %cmp145 = icmp eq i32 %75, 1
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.237

land.lhs.true.147:                                ; preds = %if.else.142
  %76 = load i32, i32* %pos, align 4
  %idxprom148 = sext i32 %76 to i64
  %arrayidx149 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom148
  %77 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp eq i32 %77, 1
  br i1 %cmp150, label %if.then.152, label %if.end.237

if.then.152:                                      ; preds = %land.lhs.true.147
  %78 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool153 = icmp ne %struct.eye_data* %78, null
  br i1 %tobool153, label %if.then.154, label %if.end.194

if.then.154:                                      ; preds = %if.then.152
  store i32 0, i32* %k, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.184, %if.then.154
  %79 = load i32, i32* %k, align 4
  %cmp156 = icmp slt i32 %79, 4
  br i1 %cmp156, label %for.body.158, label %for.end.186

for.body.158:                                     ; preds = %for.cond.155
  %80 = load i32, i32* %pos, align 4
  %81 = load i32, i32* %k, align 4
  %idxprom160 = sext i32 %81 to i64
  %arrayidx161 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom160
  %82 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %80, %82
  store i32 %add162, i32* %apos159, align 4
  %83 = load i32, i32* %apos159, align 4
  %idxprom163 = sext i32 %83 to i64
  %arrayidx164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom163
  %84 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %84 to i32
  %cmp166 = icmp ne i32 %conv165, 3
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.183

land.lhs.true.168:                                ; preds = %for.body.158
  %85 = load i32, i32* %apos159, align 4
  %idxprom169 = sext i32 %85 to i64
  %arrayidx170 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom169
  %86 = load i32, i32* %arrayidx170, align 4
  %tobool171 = icmp ne i32 %86, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.183

land.lhs.true.172:                                ; preds = %land.lhs.true.168
  %87 = load i32, i32* %apos159, align 4
  %idxprom173 = sext i32 %87 to i64
  %arrayidx174 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom173
  %88 = load i32, i32* %arrayidx174, align 4
  %tobool175 = icmp ne i32 %88, 0
  br i1 %tobool175, label %if.end.183, label %if.then.176

if.then.176:                                      ; preds = %land.lhs.true.172
  %89 = load i32, i32* %pos, align 4
  %idxprom177 = sext i32 %89 to i64
  %90 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx178 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %90, i64 %idxprom177
  %marginal179 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx178, i32 0, i32 7
  store i8 1, i8* %marginal179, align 1
  %91 = load i32, i32* %pos, align 4
  %idxprom180 = sext i32 %91 to i64
  %92 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx181 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %92, i64 %idxprom180
  %color182 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx181, i32 0, i32 0
  store i32 5, i32* %color182, align 4
  br label %for.end.186

if.end.183:                                       ; preds = %land.lhs.true.172, %land.lhs.true.168, %for.body.158
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %93 = load i32, i32* %k, align 4
  %inc185 = add nsw i32 %93, 1
  store i32 %inc185, i32* %k, align 4
  br label %for.cond.155

for.end.186:                                      ; preds = %if.then.176, %for.cond.155
  %94 = load i32, i32* %k, align 4
  %cmp187 = icmp eq i32 %94, 4
  br i1 %cmp187, label %if.then.189, label %if.end.193

if.then.189:                                      ; preds = %for.end.186
  %95 = load i32, i32* %pos, align 4
  %idxprom190 = sext i32 %95 to i64
  %96 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx191 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %96, i64 %idxprom190
  %color192 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx191, i32 0, i32 0
  store i32 3, i32* %color192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.189, %for.end.186
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.152
  %97 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool195 = icmp ne %struct.eye_data* %97, null
  br i1 %tobool195, label %if.then.196, label %if.end.236

if.then.196:                                      ; preds = %if.end.194
  store i32 0, i32* %k, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.226, %if.then.196
  %98 = load i32, i32* %k, align 4
  %cmp198 = icmp slt i32 %98, 4
  br i1 %cmp198, label %for.body.200, label %for.end.228

for.body.200:                                     ; preds = %for.cond.197
  %99 = load i32, i32* %pos, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %100 to i64
  %arrayidx203 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom202
  %101 = load i32, i32* %arrayidx203, align 4
  %add204 = add nsw i32 %99, %101
  store i32 %add204, i32* %apos201, align 4
  %102 = load i32, i32* %apos201, align 4
  %idxprom205 = sext i32 %102 to i64
  %arrayidx206 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom205
  %103 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %103 to i32
  %cmp208 = icmp ne i32 %conv207, 3
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.225

land.lhs.true.210:                                ; preds = %for.body.200
  %104 = load i32, i32* %apos201, align 4
  %idxprom211 = sext i32 %104 to i64
  %arrayidx212 = getelementptr inbounds [400 x i32], [400 x i32]* @white_domain, i32 0, i64 %idxprom211
  %105 = load i32, i32* %arrayidx212, align 4
  %tobool213 = icmp ne i32 %105, 0
  br i1 %tobool213, label %land.lhs.true.214, label %if.end.225

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %106 = load i32, i32* %apos201, align 4
  %idxprom215 = sext i32 %106 to i64
  %arrayidx216 = getelementptr inbounds [400 x i32], [400 x i32]* @black_domain, i32 0, i64 %idxprom215
  %107 = load i32, i32* %arrayidx216, align 4
  %tobool217 = icmp ne i32 %107, 0
  br i1 %tobool217, label %if.end.225, label %if.then.218

if.then.218:                                      ; preds = %land.lhs.true.214
  %108 = load i32, i32* %pos, align 4
  %idxprom219 = sext i32 %108 to i64
  %109 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx220 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %109, i64 %idxprom219
  %marginal221 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx220, i32 0, i32 7
  store i8 1, i8* %marginal221, align 1
  %110 = load i32, i32* %pos, align 4
  %idxprom222 = sext i32 %110 to i64
  %111 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx223 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %111, i64 %idxprom222
  %color224 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx223, i32 0, i32 0
  store i32 4, i32* %color224, align 4
  br label %for.end.228

if.end.225:                                       ; preds = %land.lhs.true.214, %land.lhs.true.210, %for.body.200
  br label %for.inc.226

for.inc.226:                                      ; preds = %if.end.225
  %112 = load i32, i32* %k, align 4
  %inc227 = add nsw i32 %112, 1
  store i32 %inc227, i32* %k, align 4
  br label %for.cond.197

for.end.228:                                      ; preds = %if.then.218, %for.cond.197
  %113 = load i32, i32* %k, align 4
  %cmp229 = icmp eq i32 %113, 4
  br i1 %cmp229, label %if.then.231, label %if.end.235

if.then.231:                                      ; preds = %for.end.228
  %114 = load i32, i32* %pos, align 4
  %idxprom232 = sext i32 %114 to i64
  %115 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx233 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %115, i64 %idxprom232
  %color234 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx233, i32 0, i32 0
  store i32 3, i32* %color234, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.231, %for.end.228
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.194
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.lhs.true.147, %if.else.142
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %for.end.141
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %for.end.96
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.54
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %lor.lhs.false
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %116 = load i32, i32* %j, align 4
  %inc243 = add nsw i32 %116, 1
  store i32 %inc243, i32* %j, align 4
  br label %for.cond.21

for.end.244:                                      ; preds = %for.cond.21
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.end.244
  %117 = load i32, i32* %i, align 4
  %inc246 = add nsw i32 %117, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.17

for.end.247:                                      ; preds = %for.cond.17
  %118 = load i32, i32* %owl_call.addr, align 4
  %tobool248 = icmp ne i32 %118, 0
  br i1 %tobool248, label %if.end.250, label %if.then.249

if.then.249:                                      ; preds = %for.end.247
  call void @find_cuts()
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %for.end.247
  %119 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool251 = icmp ne %struct.eye_data* %119, null
  br i1 %tobool251, label %if.then.252, label %if.end.285

if.then.252:                                      ; preds = %if.end.250
  store i32 21, i32* %pos, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.282, %if.then.252
  %120 = load i32, i32* %pos, align 4
  %cmp254 = icmp slt i32 %120, 400
  br i1 %cmp254, label %for.body.256, label %for.end.284

for.body.256:                                     ; preds = %for.cond.253
  %121 = load i32, i32* %pos, align 4
  %idxprom257 = sext i32 %121 to i64
  %arrayidx258 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom257
  %122 = load i8, i8* %arrayidx258, align 1
  %conv259 = zext i8 %122 to i32
  %cmp260 = icmp ne i32 %conv259, 3
  br i1 %cmp260, label %if.end.263, label %if.then.262

if.then.262:                                      ; preds = %for.body.256
  br label %for.inc.282

if.end.263:                                       ; preds = %for.body.256
  %123 = load i32, i32* %pos, align 4
  %idxprom264 = sext i32 %123 to i64
  %124 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx265 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %124, i64 %idxprom264
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx265, i32 0, i32 3
  %125 = load i32, i32* %origin, align 4
  %cmp266 = icmp eq i32 %125, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.281

land.lhs.true.268:                                ; preds = %if.end.263
  %126 = load i32, i32* %pos, align 4
  %idxprom269 = sext i32 %126 to i64
  %127 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx270 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %127, i64 %idxprom269
  %color271 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx270, i32 0, i32 0
  %128 = load i32, i32* %color271, align 4
  %cmp272 = icmp eq i32 %128, 5
  br i1 %cmp272, label %if.then.274, label %if.end.281

if.then.274:                                      ; preds = %land.lhs.true.268
  store i32 0, i32* %esize, align 4
  store i32 0, i32* %msize, align 4
  %129 = load i32, i32* %pos, align 4
  %130 = load i32, i32* %pos, align 4
  %131 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  call void @originate_eye(i32 %129, i32 %130, i32* %esize, i32* %msize, %struct.eye_data* %131)
  %132 = load i32, i32* %esize, align 4
  %133 = load i32, i32* %pos, align 4
  %idxprom275 = sext i32 %133 to i64
  %134 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx276 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %134, i64 %idxprom275
  %esize277 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx276, i32 0, i32 1
  store i32 %132, i32* %esize277, align 4
  %135 = load i32, i32* %msize, align 4
  %136 = load i32, i32* %pos, align 4
  %idxprom278 = sext i32 %136 to i64
  %137 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %arrayidx279 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %137, i64 %idxprom278
  %msize280 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx279, i32 0, i32 2
  store i32 %135, i32* %msize280, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.274, %land.lhs.true.268, %if.end.263
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281, %if.then.262
  %138 = load i32, i32* %pos, align 4
  %inc283 = add nsw i32 %138, 1
  store i32 %inc283, i32* %pos, align 4
  br label %for.cond.253

for.end.284:                                      ; preds = %for.cond.253
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %if.end.250
  %139 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool286 = icmp ne %struct.eye_data* %139, null
  br i1 %tobool286, label %if.then.287, label %if.end.323

if.then.287:                                      ; preds = %if.end.285
  store i32 21, i32* %pos, align 4
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.320, %if.then.287
  %140 = load i32, i32* %pos, align 4
  %cmp289 = icmp slt i32 %140, 400
  br i1 %cmp289, label %for.body.291, label %for.end.322

for.body.291:                                     ; preds = %for.cond.288
  %141 = load i32, i32* %pos, align 4
  %idxprom292 = sext i32 %141 to i64
  %arrayidx293 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom292
  %142 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %142 to i32
  %cmp295 = icmp ne i32 %conv294, 3
  br i1 %cmp295, label %if.end.298, label %if.then.297

if.then.297:                                      ; preds = %for.body.291
  br label %for.inc.320

if.end.298:                                       ; preds = %for.body.291
  %143 = load i32, i32* %pos, align 4
  %idxprom299 = sext i32 %143 to i64
  %144 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx300 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %144, i64 %idxprom299
  %origin301 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx300, i32 0, i32 3
  %145 = load i32, i32* %origin301, align 4
  %cmp302 = icmp eq i32 %145, 0
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.319

land.lhs.true.304:                                ; preds = %if.end.298
  %146 = load i32, i32* %pos, align 4
  %idxprom305 = sext i32 %146 to i64
  %147 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx306 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %147, i64 %idxprom305
  %color307 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx306, i32 0, i32 0
  %148 = load i32, i32* %color307, align 4
  %cmp308 = icmp eq i32 %148, 4
  br i1 %cmp308, label %if.then.310, label %if.end.319

if.then.310:                                      ; preds = %land.lhs.true.304
  store i32 0, i32* %esize311, align 4
  store i32 0, i32* %msize312, align 4
  %149 = load i32, i32* %pos, align 4
  %150 = load i32, i32* %pos, align 4
  %151 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  call void @originate_eye(i32 %149, i32 %150, i32* %esize311, i32* %msize312, %struct.eye_data* %151)
  %152 = load i32, i32* %esize311, align 4
  %153 = load i32, i32* %pos, align 4
  %idxprom313 = sext i32 %153 to i64
  %154 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx314 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %154, i64 %idxprom313
  %esize315 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx314, i32 0, i32 1
  store i32 %152, i32* %esize315, align 4
  %155 = load i32, i32* %msize312, align 4
  %156 = load i32, i32* %pos, align 4
  %idxprom316 = sext i32 %156 to i64
  %157 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %arrayidx317 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %157, i64 %idxprom316
  %msize318 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx317, i32 0, i32 2
  store i32 %155, i32* %msize318, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.310, %land.lhs.true.304, %if.end.298
  br label %for.inc.320

for.inc.320:                                      ; preds = %if.end.319, %if.then.297
  %158 = load i32, i32* %pos, align 4
  %inc321 = add nsw i32 %158, 1
  store i32 %inc321, i32* %pos, align 4
  br label %for.cond.288

for.end.322:                                      ; preds = %for.cond.288
  br label %if.end.323

if.end.323:                                       ; preds = %for.end.322, %if.end.285
  %159 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  %tobool324 = icmp ne %struct.eye_data* %159, null
  br i1 %tobool324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.323
  %160 = load %struct.eye_data*, %struct.eye_data** %b_eye.addr, align 8
  call void @count_neighbours(%struct.eye_data* %160)
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %if.end.323
  %161 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  %tobool327 = icmp ne %struct.eye_data* %161, null
  br i1 %tobool327, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.end.326
  %162 = load %struct.eye_data*, %struct.eye_data** %w_eye.addr, align 8
  call void @count_neighbours(%struct.eye_data* %162)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.end.326
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @clear_eye(%struct.eye_data* %eye) #0 {
entry:
  %eye.addr = alloca %struct.eye_data*, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  %0 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %0, i32 0, i32 0
  store i32 0, i32* %color, align 4
  %1 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %1, i32 0, i32 1
  store i32 0, i32* %esize, align 4
  %2 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %2, i32 0, i32 2
  store i32 0, i32* %msize, align 4
  %3 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %3, i32 0, i32 3
  store i32 0, i32* %origin, align 4
  %4 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %4, i32 0, i32 4
  call void @set_eyevalue(%struct.eyevalue* %value, i32 0, i32 0, i32 0, i32 0)
  %5 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %attack_point = getelementptr inbounds %struct.eye_data, %struct.eye_data* %5, i32 0, i32 5
  store i32 0, i32* %attack_point, align 4
  %6 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %defense_point = getelementptr inbounds %struct.eye_data, %struct.eye_data* %6, i32 0, i32 6
  store i32 0, i32* %defense_point, align 4
  %7 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %7, i32 0, i32 7
  store i8 0, i8* %marginal, align 1
  %8 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %8, i32 0, i32 8
  store i8 0, i8* %type, align 1
  %9 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %9, i32 0, i32 9
  store i8 0, i8* %neighbors, align 1
  %10 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %marginal_neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %10, i32 0, i32 10
  store i8 0, i8* %marginal_neighbors, align 1
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %cut = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i32 0, i32 11
  store i8 0, i8* %cut, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_lively(i32 %owl_call, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %owl_call.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  store i32 %owl_call, i32* %owl_call.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %owl_call.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %pos.addr, align 4
  %call = call i32 @owl_lively(i32 %3)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 12
  %5 = load i32, i32* %inessential, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 16
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom11
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx12, i32 0, i32 18
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %9 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ne i32 %9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %cmp14, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.else
  %11 = phi i1 [ false, %if.else ], [ %10, %lor.end ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @compute_primary_domains(i32 %color, i32* %domain, i32* %lively, i32* %false_margins, i32 %first_time) #0 {
entry:
  %color.addr = alloca i32, align 4
  %domain.addr = alloca i32*, align 8
  %lively.addr = alloca i32*, align 8
  %false_margins.addr = alloca i32*, align 8
  %first_time.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %own = alloca i32, align 4
  %enemy = alloca i32, align 4
  %threshold = alloca [400 x i8], align 16
  %influence = alloca [400 x i8], align 16
  %list = alloca [400 x i32], align 16
  %size = alloca i32, align 4
  %lastchange = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %domain, i32** %domain.addr, align 8
  store i32* %lively, i32** %lively.addr, align 8
  store i32* %false_margins, i32** %false_margins.addr, align 8
  store i32 %first_time, i32* %first_time.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %size, align 4
  store i32 0, i32* %lastchange, align 4
  %1 = bitcast [400 x i8]* %threshold to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 400, i32 16, i1 false)
  %2 = bitcast [400 x i8]* %influence to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 400, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.103, %entry
  %3 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %3, 400
  br i1 %cmp, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.103

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** %lively.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %11 = load i32, i32* %color.addr, align 4
  %cmp9 = icmp eq i32 %conv8, %11
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.5
  %12 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32*, i32** %domain.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom12
  store i32 1, i32* %arrayidx13, align 4
  %14 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom14
  store i8 1, i8* %arrayidx15, align 1
  br label %if.end.18

if.else:                                          ; preds = %if.then.5
  %15 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom16
  store i8 -1, i8* %arrayidx17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.11
  br label %for.inc.103

if.end.19:                                        ; preds = %if.end
  store i32 0, i32* %enemy, align 4
  store i32 0, i32* %own, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end.19
  %16 = load i32, i32* %k, align 4
  %cmp21 = icmp slt i32 %16, 4
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom24
  %19 = load i32, i32* %arrayidx25, align 4
  %add = add nsw i32 %17, %19
  store i32 %add, i32* %pos2, align 4
  %20 = load i32, i32* %pos2, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %cmp29 = icmp ne i32 %conv28, 3
  br i1 %cmp29, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %for.body.23
  %22 = load i32, i32* %pos2, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load i32*, i32** %lively.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %23, i64 %idxprom31
  %24 = load i32, i32* %arrayidx32, align 4
  %tobool33 = icmp ne i32 %24, 0
  br i1 %tobool33, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %pos2, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %26 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %26 to i32
  %27 = load i32, i32* %color.addr, align 4
  %cmp38 = icmp eq i32 %conv37, %27
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.34
  store i32 1, i32* %own, align 4
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.34
  store i32 1, i32* %enemy, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %for.body.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %29 = load i32, i32* %own, align 4
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %if.then.45, label %if.else.83

if.then.45:                                       ; preds = %for.end
  %30 = load i32, i32* %first_time.addr, align 4
  %tobool46 = icmp ne i32 %30, 0
  br i1 %tobool46, label %if.then.47, label %if.else.66

if.then.47:                                       ; preds = %if.then.45
  %31 = load i32, i32* %pos, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %32 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %32 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.60

land.lhs.true.53:                                 ; preds = %if.then.47
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %color.addr, align 4
  %35 = load i32*, i32** %lively.addr, align 8
  %call = call i32 @false_margin(i32 %33, i32 %34, i32* %35)
  %tobool54 = icmp ne i32 %call, 0
  br i1 %tobool54, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.53
  %36 = load i32, i32* %pos, align 4
  %37 = load i32, i32* %other, align 4
  %38 = load i32*, i32** %lively.addr, align 8
  %call55 = call i32 @false_margin(i32 %36, i32 %37, i32* %38)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.60

if.then.57:                                       ; preds = %lor.lhs.false, %land.lhs.true.53
  %39 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %39 to i64
  %40 = load i32*, i32** %false_margins.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %40, i64 %idxprom58
  store i32 1, i32* %arrayidx59, align 4
  br label %if.end.65

if.else.60:                                       ; preds = %lor.lhs.false, %if.then.47
  %41 = load i32, i32* %pos, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load i32*, i32** %domain.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %42, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  %43 = load i32, i32* %pos, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom63
  store i8 1, i8* %arrayidx64, align 1
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.60, %if.then.57
  br label %if.end.82

if.else.66:                                       ; preds = %if.then.45
  %44 = load i32, i32* %pos, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %45 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %45 to i32
  %cmp70 = icmp ne i32 %conv69, 0
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.else.66
  %46 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %46 to i64
  %47 = load i32*, i32** %false_margins.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %47, i64 %idxprom73
  %48 = load i32, i32* %arrayidx74, align 4
  %tobool75 = icmp ne i32 %48, 0
  br i1 %tobool75, label %if.end.81, label %if.then.76

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.else.66
  %49 = load i32, i32* %pos, align 4
  %idxprom77 = sext i32 %49 to i64
  %50 = load i32*, i32** %domain.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %50, i64 %idxprom77
  store i32 1, i32* %arrayidx78, align 4
  %51 = load i32, i32* %pos, align 4
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom79
  store i8 1, i8* %arrayidx80, align 1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %lor.lhs.false.72
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.65
  br label %if.end.87

if.else.83:                                       ; preds = %for.end
  %52 = load i32, i32* %pos, align 4
  %53 = load i32, i32* %size, align 4
  %inc84 = add nsw i32 %53, 1
  store i32 %inc84, i32* %size, align 4
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [400 x i32], [400 x i32]* %list, i32 0, i64 %idxprom85
  store i32 %52, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.end.82
  %54 = load i32, i32* %enemy, align 4
  %tobool88 = icmp ne i32 %54, 0
  br i1 %tobool88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %if.end.87
  %55 = load i32, i32* %pos, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom90
  store i8 1, i8* %arrayidx91, align 1
  %56 = load i32, i32* %pos, align 4
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom92
  %57 = load i8, i8* %arrayidx93, align 1
  %dec = add i8 %57, -1
  store i8 %dec, i8* %arrayidx93, align 1
  br label %if.end.102

if.else.94:                                       ; preds = %if.end.87
  %58 = load i32, i32* %pos, align 4
  %call95 = call i32 @is_edge_vertex(i32 %58)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %if.else.94
  %59 = load i32, i32* %pos, align 4
  %idxprom98 = sext i32 %59 to i64
  %arrayidx99 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom98
  %60 = load i8, i8* %arrayidx99, align 1
  %dec100 = add i8 %60, -1
  store i8 %dec100, i8* %arrayidx99, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.97, %if.else.94
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.89
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102, %if.end.18, %if.then
  %61 = load i32, i32* %pos, align 4
  %inc104 = add nsw i32 %61, 1
  store i32 %inc104, i32* %pos, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %62 = load i32, i32* %size, align 4
  %tobool106 = icmp ne i32 %62, 0
  br i1 %tobool106, label %if.then.107, label %if.end.331

if.then.107:                                      ; preds = %for.end.105
  %63 = load i32, i32* %size, align 4
  store i32 %63, i32* %k, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.107, %if.end.330
  %64 = load i32, i32* %k, align 4
  %tobool108 = icmp ne i32 %64, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %while.body
  %65 = load i32, i32* %size, align 4
  store i32 %65, i32* %k, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %while.body
  %66 = load i32, i32* %k, align 4
  %dec111 = add nsw i32 %66, -1
  store i32 %dec111, i32* %k, align 4
  %idxprom112 = sext i32 %dec111 to i64
  %arrayidx113 = getelementptr inbounds [400 x i32], [400 x i32]* %list, i32 0, i64 %idxprom112
  %67 = load i32, i32* %arrayidx113, align 4
  store i32 %67, i32* %pos, align 4
  %68 = load i32, i32* %pos, align 4
  %add114 = add nsw i32 %68, 20
  %add115 = add nsw i32 %add114, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom116
  %69 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %69 to i32
  %cmp119 = icmp ne i32 %conv118, 3
  br i1 %cmp119, label %land.lhs.true.121, label %lor.lhs.false.137

land.lhs.true.121:                                ; preds = %if.end.110
  %70 = load i32, i32* %pos, align 4
  %add122 = add nsw i32 %70, 20
  %add123 = add nsw i32 %add122, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom124
  %71 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %71 to i32
  %72 = load i32, i32* %pos, align 4
  %idxprom127 = sext i32 %72 to i64
  %arrayidx128 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom127
  %73 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %73 to i32
  %74 = load i32, i32* %pos, align 4
  %add130 = add nsw i32 %74, 20
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom131
  %75 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %75 to i32
  %sub134 = sub nsw i32 %conv129, %conv133
  %cmp135 = icmp sgt i32 %conv126, %sub134
  br i1 %cmp135, label %if.then.305, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.lhs.true.121, %if.end.110
  %76 = load i32, i32* %pos, align 4
  %add138 = add nsw i32 %76, 20
  %sub139 = sub nsw i32 %add138, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom140
  %77 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %77 to i32
  %cmp143 = icmp ne i32 %conv142, 3
  br i1 %cmp143, label %land.lhs.true.145, label %lor.lhs.false.161

land.lhs.true.145:                                ; preds = %lor.lhs.false.137
  %78 = load i32, i32* %pos, align 4
  %add146 = add nsw i32 %78, 20
  %sub147 = sub nsw i32 %add146, 1
  %idxprom148 = sext i32 %sub147 to i64
  %arrayidx149 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom148
  %79 = load i8, i8* %arrayidx149, align 1
  %conv150 = sext i8 %79 to i32
  %80 = load i32, i32* %pos, align 4
  %idxprom151 = sext i32 %80 to i64
  %arrayidx152 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom151
  %81 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %81 to i32
  %82 = load i32, i32* %pos, align 4
  %add154 = add nsw i32 %82, 20
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom155
  %83 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %83 to i32
  %sub158 = sub nsw i32 %conv153, %conv157
  %cmp159 = icmp sgt i32 %conv150, %sub158
  br i1 %cmp159, label %if.then.305, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.145, %lor.lhs.false.137
  %84 = load i32, i32* %pos, align 4
  %add162 = add nsw i32 %84, 20
  %add163 = add nsw i32 %add162, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom164
  %85 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %85 to i32
  %cmp167 = icmp ne i32 %conv166, 3
  br i1 %cmp167, label %land.lhs.true.169, label %lor.lhs.false.185

land.lhs.true.169:                                ; preds = %lor.lhs.false.161
  %86 = load i32, i32* %pos, align 4
  %add170 = add nsw i32 %86, 20
  %add171 = add nsw i32 %add170, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom172
  %87 = load i8, i8* %arrayidx173, align 1
  %conv174 = sext i8 %87 to i32
  %88 = load i32, i32* %pos, align 4
  %idxprom175 = sext i32 %88 to i64
  %arrayidx176 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom175
  %89 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %89 to i32
  %90 = load i32, i32* %pos, align 4
  %add178 = add nsw i32 %90, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom179
  %91 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %91 to i32
  %sub182 = sub nsw i32 %conv177, %conv181
  %cmp183 = icmp sgt i32 %conv174, %sub182
  br i1 %cmp183, label %if.then.305, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %land.lhs.true.169, %lor.lhs.false.161
  %92 = load i32, i32* %pos, align 4
  %sub186 = sub nsw i32 %92, 20
  %add187 = add nsw i32 %sub186, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom188
  %93 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %93 to i32
  %cmp191 = icmp ne i32 %conv190, 3
  br i1 %cmp191, label %land.lhs.true.193, label %lor.lhs.false.209

land.lhs.true.193:                                ; preds = %lor.lhs.false.185
  %94 = load i32, i32* %pos, align 4
  %sub194 = sub nsw i32 %94, 20
  %add195 = add nsw i32 %sub194, 1
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom196
  %95 = load i8, i8* %arrayidx197, align 1
  %conv198 = sext i8 %95 to i32
  %96 = load i32, i32* %pos, align 4
  %idxprom199 = sext i32 %96 to i64
  %arrayidx200 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom199
  %97 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %97 to i32
  %98 = load i32, i32* %pos, align 4
  %add202 = add nsw i32 %98, 1
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom203
  %99 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %99 to i32
  %sub206 = sub nsw i32 %conv201, %conv205
  %cmp207 = icmp sgt i32 %conv198, %sub206
  br i1 %cmp207, label %if.then.305, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %land.lhs.true.193, %lor.lhs.false.185
  %100 = load i32, i32* %pos, align 4
  %add210 = add nsw i32 %100, 20
  %sub211 = sub nsw i32 %add210, 1
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom212
  %101 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %101 to i32
  %cmp215 = icmp ne i32 %conv214, 3
  br i1 %cmp215, label %land.lhs.true.217, label %lor.lhs.false.233

land.lhs.true.217:                                ; preds = %lor.lhs.false.209
  %102 = load i32, i32* %pos, align 4
  %add218 = add nsw i32 %102, 20
  %sub219 = sub nsw i32 %add218, 1
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx221 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom220
  %103 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %103 to i32
  %104 = load i32, i32* %pos, align 4
  %idxprom223 = sext i32 %104 to i64
  %arrayidx224 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom223
  %105 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %105 to i32
  %106 = load i32, i32* %pos, align 4
  %sub226 = sub nsw i32 %106, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom227
  %107 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %107 to i32
  %sub230 = sub nsw i32 %conv225, %conv229
  %cmp231 = icmp sgt i32 %conv222, %sub230
  br i1 %cmp231, label %if.then.305, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %land.lhs.true.217, %lor.lhs.false.209
  %108 = load i32, i32* %pos, align 4
  %sub234 = sub nsw i32 %108, 20
  %sub235 = sub nsw i32 %sub234, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom236
  %109 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %109 to i32
  %cmp239 = icmp ne i32 %conv238, 3
  br i1 %cmp239, label %land.lhs.true.241, label %lor.lhs.false.257

land.lhs.true.241:                                ; preds = %lor.lhs.false.233
  %110 = load i32, i32* %pos, align 4
  %sub242 = sub nsw i32 %110, 20
  %sub243 = sub nsw i32 %sub242, 1
  %idxprom244 = sext i32 %sub243 to i64
  %arrayidx245 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom244
  %111 = load i8, i8* %arrayidx245, align 1
  %conv246 = sext i8 %111 to i32
  %112 = load i32, i32* %pos, align 4
  %idxprom247 = sext i32 %112 to i64
  %arrayidx248 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom247
  %113 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %113 to i32
  %114 = load i32, i32* %pos, align 4
  %sub250 = sub nsw i32 %114, 1
  %idxprom251 = sext i32 %sub250 to i64
  %arrayidx252 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom251
  %115 = load i8, i8* %arrayidx252, align 1
  %conv253 = sext i8 %115 to i32
  %sub254 = sub nsw i32 %conv249, %conv253
  %cmp255 = icmp sgt i32 %conv246, %sub254
  br i1 %cmp255, label %if.then.305, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %land.lhs.true.241, %lor.lhs.false.233
  %116 = load i32, i32* %pos, align 4
  %sub258 = sub nsw i32 %116, 20
  %sub259 = sub nsw i32 %sub258, 1
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom260
  %117 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %117 to i32
  %cmp263 = icmp ne i32 %conv262, 3
  br i1 %cmp263, label %land.lhs.true.265, label %lor.lhs.false.281

land.lhs.true.265:                                ; preds = %lor.lhs.false.257
  %118 = load i32, i32* %pos, align 4
  %sub266 = sub nsw i32 %118, 20
  %sub267 = sub nsw i32 %sub266, 1
  %idxprom268 = sext i32 %sub267 to i64
  %arrayidx269 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom268
  %119 = load i8, i8* %arrayidx269, align 1
  %conv270 = sext i8 %119 to i32
  %120 = load i32, i32* %pos, align 4
  %idxprom271 = sext i32 %120 to i64
  %arrayidx272 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom271
  %121 = load i8, i8* %arrayidx272, align 1
  %conv273 = sext i8 %121 to i32
  %122 = load i32, i32* %pos, align 4
  %sub274 = sub nsw i32 %122, 20
  %idxprom275 = sext i32 %sub274 to i64
  %arrayidx276 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom275
  %123 = load i8, i8* %arrayidx276, align 1
  %conv277 = sext i8 %123 to i32
  %sub278 = sub nsw i32 %conv273, %conv277
  %cmp279 = icmp sgt i32 %conv270, %sub278
  br i1 %cmp279, label %if.then.305, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %land.lhs.true.265, %lor.lhs.false.257
  %124 = load i32, i32* %pos, align 4
  %sub282 = sub nsw i32 %124, 20
  %add283 = add nsw i32 %sub282, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom284
  %125 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %125 to i32
  %cmp287 = icmp ne i32 %conv286, 3
  br i1 %cmp287, label %land.lhs.true.289, label %if.else.325

land.lhs.true.289:                                ; preds = %lor.lhs.false.281
  %126 = load i32, i32* %pos, align 4
  %sub290 = sub nsw i32 %126, 20
  %add291 = add nsw i32 %sub290, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom292
  %127 = load i8, i8* %arrayidx293, align 1
  %conv294 = sext i8 %127 to i32
  %128 = load i32, i32* %pos, align 4
  %idxprom295 = sext i32 %128 to i64
  %arrayidx296 = getelementptr inbounds [400 x i8], [400 x i8]* %threshold, i32 0, i64 %idxprom295
  %129 = load i8, i8* %arrayidx296, align 1
  %conv297 = sext i8 %129 to i32
  %130 = load i32, i32* %pos, align 4
  %sub298 = sub nsw i32 %130, 20
  %idxprom299 = sext i32 %sub298 to i64
  %arrayidx300 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom299
  %131 = load i8, i8* %arrayidx300, align 1
  %conv301 = sext i8 %131 to i32
  %sub302 = sub nsw i32 %conv297, %conv301
  %cmp303 = icmp sgt i32 %conv294, %sub302
  br i1 %cmp303, label %if.then.305, label %if.else.325

if.then.305:                                      ; preds = %land.lhs.true.289, %land.lhs.true.265, %land.lhs.true.241, %land.lhs.true.217, %land.lhs.true.193, %land.lhs.true.169, %land.lhs.true.145, %land.lhs.true.121
  %132 = load i32, i32* %pos, align 4
  %idxprom306 = sext i32 %132 to i64
  %133 = load i32*, i32** %domain.addr, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %133, i64 %idxprom306
  store i32 1, i32* %arrayidx307, align 4
  %134 = load i32, i32* %pos, align 4
  %idxprom308 = sext i32 %134 to i64
  %arrayidx309 = getelementptr inbounds [400 x i8], [400 x i8]* %influence, i32 0, i64 %idxprom308
  %135 = load i8, i8* %arrayidx309, align 1
  %inc310 = add i8 %135, 1
  store i8 %inc310, i8* %arrayidx309, align 1
  %136 = load i32, i32* %size, align 4
  %dec311 = add nsw i32 %136, -1
  store i32 %dec311, i32* %size, align 4
  %tobool312 = icmp ne i32 %dec311, 0
  br i1 %tobool312, label %if.end.314, label %if.then.313

if.then.313:                                      ; preds = %if.then.305
  br label %while.end

if.end.314:                                       ; preds = %if.then.305
  %137 = load i32, i32* %k, align 4
  %138 = load i32, i32* %size, align 4
  %cmp315 = icmp slt i32 %137, %138
  br i1 %cmp315, label %if.then.317, label %if.else.322

if.then.317:                                      ; preds = %if.end.314
  %139 = load i32, i32* %size, align 4
  %idxprom318 = sext i32 %139 to i64
  %arrayidx319 = getelementptr inbounds [400 x i32], [400 x i32]* %list, i32 0, i64 %idxprom318
  %140 = load i32, i32* %arrayidx319, align 4
  %141 = load i32, i32* %k, align 4
  %idxprom320 = sext i32 %141 to i64
  %arrayidx321 = getelementptr inbounds [400 x i32], [400 x i32]* %list, i32 0, i64 %idxprom320
  store i32 %140, i32* %arrayidx321, align 4
  br label %if.end.324

if.else.322:                                      ; preds = %if.end.314
  %142 = load i32, i32* %k, align 4
  %dec323 = add nsw i32 %142, -1
  store i32 %dec323, i32* %k, align 4
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.322, %if.then.317
  %143 = load i32, i32* %k, align 4
  store i32 %143, i32* %lastchange, align 4
  br label %if.end.330

if.else.325:                                      ; preds = %land.lhs.true.289, %lor.lhs.false.281
  %144 = load i32, i32* %k, align 4
  %145 = load i32, i32* %lastchange, align 4
  %cmp326 = icmp eq i32 %144, %145
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.else.325
  br label %while.end

if.end.329:                                       ; preds = %if.else.325
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.end.324
  br label %while.body

while.end:                                        ; preds = %if.then.328, %if.then.313
  br label %if.end.331

if.end.331:                                       ; preds = %while.end, %for.end.105
  ret void
}

declare void @find_cuts() #2

; Function Attrs: nounwind uwtable
define internal void @originate_eye(i32 %origin, i32 %pos, i32* %esize, i32* %msize, %struct.eye_data* %eye) #0 {
entry:
  %origin.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %esize.addr = alloca i32*, align 8
  %msize.addr = alloca i32*, align 8
  %eye.addr = alloca %struct.eye_data*, align 8
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  store i32 %origin, i32* %origin.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %esize, i32** %esize.addr, align 8
  store i32* %msize, i32** %msize.addr, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  %0 = load i32, i32* %origin.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %origin.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %origin.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %origin.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 569, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32*, i32** %esize.addr, align 8
  %cmp19 = icmp ne i32* %10, null
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.18
  br label %if.end.23

if.else.22:                                       ; preds = %if.end.18
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  %11 = load i32*, i32** %msize.addr, align 8
  %cmp24 = icmp ne i32* %11, null
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.23
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.23
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %12 = load i32, i32* %origin.addr, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom29 = sext i32 %13 to i64
  %14 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %14, i64 %idxprom29
  %origin31 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 3
  store i32 %12, i32* %origin31, align 4
  %15 = load i32*, i32** %esize.addr, align 8
  %16 = load i32, i32* %15, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %15, align 4
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom32 = sext i32 %17 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom32
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx33, i32 0, i32 7
  %19 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.28
  %20 = load i32*, i32** %msize.addr, align 8
  %21 = load i32, i32* %20, align 4
  %inc35 = add nsw i32 %21, 1
  store i32 %inc35, i32* %20, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.28
  %22 = load i32, i32* @experimental_connections, align 4
  %tobool37 = icmp ne i32 %22, 0
  br i1 %tobool37, label %if.end.45, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  %23 = load i32, i32* %pos.addr, align 4
  %idxprom39 = sext i32 %23 to i64
  %24 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %24, i64 %idxprom39
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx40, i32 0, i32 8
  %25 = load i8, i8* %type, align 1
  %conv41 = sext i8 %25 to i32
  %and = and i32 %conv41, 4
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.38
  br label %for.end

if.end.44:                                        ; preds = %if.then.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %26 = load i32, i32* %k, align 4
  %cmp46 = icmp slt i32 %26, 4
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %28 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom48
  %29 = load i32, i32* %arrayidx49, align 4
  %add = add nsw i32 %27, %29
  store i32 %add, i32* %pos2, align 4
  %30 = load i32, i32* %pos2, align 4
  %idxprom50 = sext i32 %30 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %31 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %31 to i32
  %cmp53 = icmp ne i32 %conv52, 3
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.79

land.lhs.true.55:                                 ; preds = %for.body
  %32 = load i32, i32* %pos2, align 4
  %idxprom56 = sext i32 %32 to i64
  %33 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %33, i64 %idxprom56
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx57, i32 0, i32 0
  %34 = load i32, i32* %color, align 4
  %35 = load i32, i32* %pos.addr, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %36, i64 %idxprom58
  %color60 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx59, i32 0, i32 0
  %37 = load i32, i32* %color60, align 4
  %cmp61 = icmp eq i32 %34, %37
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.79

land.lhs.true.63:                                 ; preds = %land.lhs.true.55
  %38 = load i32, i32* %pos2, align 4
  %idxprom64 = sext i32 %38 to i64
  %39 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i64 %idxprom64
  %origin66 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx65, i32 0, i32 3
  %40 = load i32, i32* %origin66, align 4
  %cmp67 = icmp eq i32 %40, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.79

land.lhs.true.69:                                 ; preds = %land.lhs.true.63
  %41 = load i32, i32* %pos2, align 4
  %idxprom70 = sext i32 %41 to i64
  %42 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %42, i64 %idxprom70
  %marginal72 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx71, i32 0, i32 7
  %43 = load i8, i8* %marginal72, align 1
  %tobool73 = icmp ne i8 %43, 0
  br i1 %tobool73, label %lor.lhs.false, label %if.then.78

lor.lhs.false:                                    ; preds = %land.lhs.true.69
  %44 = load i32, i32* %pos.addr, align 4
  %idxprom74 = sext i32 %44 to i64
  %45 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %45, i64 %idxprom74
  %marginal76 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx75, i32 0, i32 7
  %46 = load i8, i8* %marginal76, align 1
  %tobool77 = icmp ne i8 %46, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %lor.lhs.false, %land.lhs.true.69
  %47 = load i32, i32* %origin.addr, align 4
  %48 = load i32, i32* %pos2, align 4
  %49 = load i32*, i32** %esize.addr, align 8
  %50 = load i32*, i32** %msize.addr, align 8
  %51 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  call void @originate_eye(i32 %47, i32 %48, i32* %49, i32* %50, %struct.eye_data* %51)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %lor.lhs.false, %land.lhs.true.63, %land.lhs.true.55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %52 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @count_neighbours(%struct.eye_data* %eyedata) #0 {
entry:
  %eyedata.addr = alloca %struct.eye_data*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  store %struct.eye_data* %eyedata, %struct.eye_data** %eyedata.addr, align 8
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %4, i64 %idxprom3
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 3
  %5 = load i32, i32* %origin, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.60

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %pos, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %7, i64 %idxprom7
  %origin9 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx8, i32 0, i32 3
  %8 = load i32, i32* %origin9, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %9, i64 %idxprom10
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx11, i32 0, i32 1
  %10 = load i32, i32* %esize, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %12, i64 %idxprom12
  %esize14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx13, i32 0, i32 1
  store i32 %10, i32* %esize14, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %14, i64 %idxprom15
  %origin17 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx16, i32 0, i32 3
  %15 = load i32, i32* %origin17, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %16, i64 %idxprom18
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 2
  %17 = load i32, i32* %msize, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %19, i64 %idxprom20
  %msize22 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx21, i32 0, i32 2
  store i32 %17, i32* %msize22, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %21, i64 %idxprom23
  %neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx24, i32 0, i32 9
  store i8 0, i8* %neighbors, align 1
  %22 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom25
  %marginal_neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx26, i32 0, i32 10
  store i8 0, i8* %marginal_neighbors, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end
  %24 = load i32, i32* %k, align 4
  %cmp28 = icmp slt i32 %24, 4
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %25 = load i32, i32* %pos, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom31
  %27 = load i32, i32* %arrayidx32, align 4
  %add = add nsw i32 %25, %27
  store i32 %add, i32* %pos2, align 4
  %28 = load i32, i32* %pos2, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.body.30
  %30 = load i32, i32* %pos2, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %31, i64 %idxprom38
  %origin40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx39, i32 0, i32 3
  %32 = load i32, i32* %origin40, align 4
  %33 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %34, i64 %idxprom41
  %origin43 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx42, i32 0, i32 3
  %35 = load i32, i32* %origin43, align 4
  %cmp44 = icmp eq i32 %32, %35
  br i1 %cmp44, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %land.lhs.true
  %36 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %36 to i64
  %37 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %37, i64 %idxprom47
  %neighbors49 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx48, i32 0, i32 9
  %38 = load i8, i8* %neighbors49, align 1
  %inc = add i8 %38, 1
  store i8 %inc, i8* %neighbors49, align 1
  %39 = load i32, i32* %pos2, align 4
  %idxprom50 = sext i32 %39 to i64
  %40 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i64 %idxprom50
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx51, i32 0, i32 7
  %41 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %41, 0
  br i1 %tobool, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %if.then.46
  %42 = load i32, i32* %pos, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load %struct.eye_data*, %struct.eye_data** %eyedata.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %43, i64 %idxprom53
  %marginal_neighbors55 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx54, i32 0, i32 10
  %44 = load i8, i8* %marginal_neighbors55, align 1
  %inc56 = add i8 %44, 1
  store i8 %inc56, i8* %marginal_neighbors55, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %if.then.46
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true, %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %45 = load i32, i32* %k, align 4
  %inc59 = add nsw i32 %45, 1
  store i32 %inc59, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end, %if.then
  %46 = load i32, i32* %pos, align 4
  %inc61 = add nsw i32 %46, 1
  store i32 %inc61, i32* %pos, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @propagate_eye(i32 %origin, %struct.eye_data* %eye) #0 {
entry:
  %origin.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %pos = alloca i32, align 4
  store i32 %origin, i32* %origin.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
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
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %4, i64 %idxprom3
  %origin5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 3
  %5 = load i32, i32* %origin5, align 4
  %6 = load i32, i32* %origin.addr, align 4
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %origin.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %8, i64 %idxprom8
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx9, i32 0, i32 0
  %9 = load i32, i32* %color, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom10
  %color12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx11, i32 0, i32 0
  store i32 %9, i32* %color12, align 4
  %12 = load i32, i32* %origin.addr, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %13, i64 %idxprom13
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx14, i32 0, i32 1
  %14 = load i32, i32* %esize, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %16, i64 %idxprom15
  %esize17 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx16, i32 0, i32 1
  store i32 %14, i32* %esize17, align 4
  %17 = load i32, i32* %origin.addr, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom18
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 2
  %19 = load i32, i32* %msize, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %21, i64 %idxprom20
  %msize22 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx21, i32 0, i32 2
  store i32 %19, i32* %msize22, align 4
  %22 = load i32, i32* %origin.addr, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom23
  %origin25 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx24, i32 0, i32 3
  %24 = load i32, i32* %origin25, align 4
  %25 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i64 %idxprom26
  %origin28 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx27, i32 0, i32 3
  store i32 %24, i32* %origin28, align 4
  %27 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %28, i64 %idxprom29
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 4
  %29 = load i32, i32* %origin.addr, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %30, i64 %idxprom31
  %value33 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx32, i32 0, i32 4
  %31 = bitcast %struct.eyevalue* %value to i8*
  %32 = bitcast %struct.eyevalue* %value33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 4, i32 1, i1 false)
  %33 = load i32, i32* %origin.addr, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %34, i64 %idxprom34
  %attack_point = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx35, i32 0, i32 5
  %35 = load i32, i32* %attack_point, align 4
  %36 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %36 to i64
  %37 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %37, i64 %idxprom36
  %attack_point38 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx37, i32 0, i32 5
  store i32 %35, i32* %attack_point38, align 4
  %38 = load i32, i32* %origin.addr, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i64 %idxprom39
  %defense_point = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx40, i32 0, i32 6
  %40 = load i32, i32* %defense_point, align 4
  %41 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %41 to i64
  %42 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %42, i64 %idxprom41
  %defense_point43 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx42, i32 0, i32 6
  store i32 %40, i32* %defense_point43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @find_eye_dragons(i32 %origin, %struct.eye_data* %eye, i32 %eye_color, i32* %dragons, i32 %max_dragons) #0 {
entry:
  %origin.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %eye_color.addr = alloca i32, align 4
  %dragons.addr = alloca i32*, align 8
  %max_dragons.addr = alloca i32, align 4
  %mx = alloca [400 x i32], align 16
  %num_dragons = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %origin, i32* %origin.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store i32 %eye_color, i32* %eye_color.addr, align 4
  store i32* %dragons, i32** %dragons.addr, align 8
  store i32 %max_dragons, i32* %max_dragons.addr, align 4
  store i32 0, i32* %num_dragons, align 4
  %0 = bitcast [400 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 8388608
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %origin.addr, align 4
  %3 = load i32, i32* %eye_color.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %2, i32 %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %4, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %eye_color.addr, align 4
  %cmp1 = icmp eq i32 %conv, %7
  br i1 %cmp1, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %origin5 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 2
  %9 = load i32, i32* %origin5, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.111

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %pos, align 4
  %add = add nsw i32 %11, 20
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %cmp14 = icmp ne i32 %conv13, 3
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false

land.lhs.true.16:                                 ; preds = %land.lhs.true.10
  %13 = load i32, i32* %pos, align 4
  %add17 = add nsw i32 %13, 20
  %idxprom18 = sext i32 %add17 to i64
  %14 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %14, i64 %idxprom18
  %origin20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 3
  %15 = load i32, i32* %origin20, align 4
  %16 = load i32, i32* %origin.addr, align 4
  %cmp21 = icmp eq i32 %15, %16
  br i1 %cmp21, label %land.lhs.true.23, label %lor.lhs.false

land.lhs.true.23:                                 ; preds = %land.lhs.true.16
  %17 = load i32, i32* %pos, align 4
  %add24 = add nsw i32 %17, 20
  %idxprom25 = sext i32 %add24 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom25
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx26, i32 0, i32 7
  %19 = load i8, i8* %marginal, align 1
  %tobool27 = icmp ne i8 %19, 0
  br i1 %tobool27, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.23, %land.lhs.true.16, %land.lhs.true.10
  %20 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom28 = sext i32 %sub to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %cmp31 = icmp ne i32 %conv30, 3
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false.46

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %pos, align 4
  %sub34 = sub nsw i32 %22, 1
  %idxprom35 = sext i32 %sub34 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom35
  %origin37 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx36, i32 0, i32 3
  %24 = load i32, i32* %origin37, align 4
  %25 = load i32, i32* %origin.addr, align 4
  %cmp38 = icmp eq i32 %24, %25
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.46

land.lhs.true.40:                                 ; preds = %land.lhs.true.33
  %26 = load i32, i32* %pos, align 4
  %sub41 = sub nsw i32 %26, 1
  %idxprom42 = sext i32 %sub41 to i64
  %27 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %27, i64 %idxprom42
  %marginal44 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx43, i32 0, i32 7
  %28 = load i8, i8* %marginal44, align 1
  %tobool45 = icmp ne i8 %28, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %if.then

lor.lhs.false.46:                                 ; preds = %land.lhs.true.40, %land.lhs.true.33, %lor.lhs.false
  %29 = load i32, i32* %pos, align 4
  %sub47 = sub nsw i32 %29, 20
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %30 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %30 to i32
  %cmp51 = icmp ne i32 %conv50, 3
  br i1 %cmp51, label %land.lhs.true.53, label %lor.lhs.false.66

land.lhs.true.53:                                 ; preds = %lor.lhs.false.46
  %31 = load i32, i32* %pos, align 4
  %sub54 = sub nsw i32 %31, 20
  %idxprom55 = sext i32 %sub54 to i64
  %32 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %32, i64 %idxprom55
  %origin57 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx56, i32 0, i32 3
  %33 = load i32, i32* %origin57, align 4
  %34 = load i32, i32* %origin.addr, align 4
  %cmp58 = icmp eq i32 %33, %34
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.66

land.lhs.true.60:                                 ; preds = %land.lhs.true.53
  %35 = load i32, i32* %pos, align 4
  %sub61 = sub nsw i32 %35, 20
  %idxprom62 = sext i32 %sub61 to i64
  %36 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %36, i64 %idxprom62
  %marginal64 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx63, i32 0, i32 7
  %37 = load i8, i8* %marginal64, align 1
  %tobool65 = icmp ne i8 %37, 0
  br i1 %tobool65, label %lor.lhs.false.66, label %if.then

lor.lhs.false.66:                                 ; preds = %land.lhs.true.60, %land.lhs.true.53, %lor.lhs.false.46
  %38 = load i32, i32* %pos, align 4
  %add67 = add nsw i32 %38, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %39 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %39 to i32
  %cmp71 = icmp ne i32 %conv70, 3
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.111

land.lhs.true.73:                                 ; preds = %lor.lhs.false.66
  %40 = load i32, i32* %pos, align 4
  %add74 = add nsw i32 %40, 1
  %idxprom75 = sext i32 %add74 to i64
  %41 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %41, i64 %idxprom75
  %origin77 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx76, i32 0, i32 3
  %42 = load i32, i32* %origin77, align 4
  %43 = load i32, i32* %origin.addr, align 4
  %cmp78 = icmp eq i32 %42, %43
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.111

land.lhs.true.80:                                 ; preds = %land.lhs.true.73
  %44 = load i32, i32* %pos, align 4
  %add81 = add nsw i32 %44, 1
  %idxprom82 = sext i32 %add81 to i64
  %45 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %45, i64 %idxprom82
  %marginal84 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx83, i32 0, i32 7
  %46 = load i8, i8* %marginal84, align 1
  %tobool85 = icmp ne i8 %46, 0
  br i1 %tobool85, label %if.end.111, label %if.then

if.then:                                          ; preds = %land.lhs.true.80, %land.lhs.true.60, %land.lhs.true.40, %land.lhs.true.23
  %47 = load i32, i32* @debug, align 4
  %and86 = and i32 %47, 8388608
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %cond.false.89, label %cond.true.88

cond.true.88:                                     ; preds = %if.then
  br label %cond.end.94

cond.false.89:                                    ; preds = %if.then
  %48 = load i32, i32* %pos, align 4
  %49 = load i32, i32* %pos, align 4
  %idxprom90 = sext i32 %49 to i64
  %arrayidx91 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom90
  %origin92 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx91, i32 0, i32 2
  %50 = load i32, i32* %origin92, align 4
  %call93 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %48, i32 %50)
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.89, %cond.true.88
  %51 = load i32, i32* %pos, align 4
  %idxprom95 = sext i32 %51 to i64
  %arrayidx96 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom95
  %origin97 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx96, i32 0, i32 2
  %52 = load i32, i32* %origin97, align 4
  %idxprom98 = sext i32 %52 to i64
  %arrayidx99 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom98
  store i32 1, i32* %arrayidx99, align 4
  %53 = load i32*, i32** %dragons.addr, align 8
  %cmp100 = icmp ne i32* %53, null
  br i1 %cmp100, label %land.lhs.true.102, label %if.end

land.lhs.true.102:                                ; preds = %cond.end.94
  %54 = load i32, i32* %num_dragons, align 4
  %55 = load i32, i32* %max_dragons.addr, align 4
  %cmp103 = icmp slt i32 %54, %55
  br i1 %cmp103, label %if.then.105, label %if.end

if.then.105:                                      ; preds = %land.lhs.true.102
  %56 = load i32, i32* %pos, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom106
  %origin108 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx107, i32 0, i32 2
  %57 = load i32, i32* %origin108, align 4
  %58 = load i32, i32* %num_dragons, align 4
  %idxprom109 = sext i32 %58 to i64
  %59 = load i32*, i32** %dragons.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %59, i64 %idxprom109
  store i32 %57, i32* %arrayidx110, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.105, %land.lhs.true.102, %cond.end.94
  %60 = load i32, i32* %num_dragons, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %num_dragons, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.end, %land.lhs.true.80, %land.lhs.true.73, %lor.lhs.false.66, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %61 = load i32, i32* %pos, align 4
  %inc112 = add nsw i32 %61, 1
  store i32 %inc112, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load i32, i32* %num_dragons, align 4
  ret i32 %62
}

declare i32 @gprintf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @compute_eyes(i32 %pos, %struct.eyevalue* %value, i32* %attack_point, i32* %defense_point, %struct.eye_data* %eye, %struct.half_eye_data* %heye, i32 %add_moves, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca %struct.eyevalue*, align 8
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %add_moves.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.eyevalue* %value, %struct.eyevalue** %value.addr, align 8
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 %add_moves, i32* %add_moves.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32*, i32** %attack_point.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %attack_point.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %defense_point.addr, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* @debug, align 4
  %and = and i32 %4, 2
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %5 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %6 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %7 = load i32, i32* %pos.addr, align 4
  call void @print_eye(%struct.eye_data* %5, %struct.half_eye_data* %6, i32 %7)
  %8 = load i32, i32* @debug, align 4
  %and6 = and i32 %8, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.8

if.end.8:                                         ; preds = %cond.end, %if.end.3
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32*, i32** %attack_point.addr, align 8
  %11 = load i32*, i32** %defense_point.addr, align 8
  %12 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %13 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %14 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %15 = load i32, i32* %add_moves.addr, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call9 = call i32 @read_eye(i32 %9, i32* %10, i32* %11, %struct.eyevalue* %12, %struct.eye_data* %13, %struct.half_eye_data* %14, i32 %15, i32 %16)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.28

if.end.12:                                        ; preds = %if.end.8
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 1
  %19 = load i32, i32* %esize, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %21, i64 %idxprom13
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx14, i32 0, i32 2
  %22 = load i32, i32* %msize, align 4
  %mul = mul nsw i32 2, %22
  %sub = sub nsw i32 %19, %mul
  %cmp = icmp sgt i32 %sub, 3
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  %23 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %23, i32 2, i32 2, i32 2, i32 2)
  br label %if.end.28

if.else:                                          ; preds = %if.end.12
  %24 = load i32, i32* %pos.addr, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %25, i64 %idxprom16
  %esize18 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx17, i32 0, i32 1
  %26 = load i32, i32* %esize18, align 4
  %27 = load i32, i32* %pos.addr, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %28, i64 %idxprom19
  %msize21 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx20, i32 0, i32 2
  %29 = load i32, i32* %msize21, align 4
  %mul22 = mul nsw i32 2, %29
  %sub23 = sub nsw i32 %26, %mul22
  %cmp24 = icmp sgt i32 %sub23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else
  %30 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %30, i32 1, i32 1, i32 1, i32 1)
  br label %if.end.27

if.else.26:                                       ; preds = %if.else
  %31 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %31, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.11, %if.end.27, %if.then.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_eye(%struct.eye_data* %eye, %struct.half_eye_data* %heye, i32 %pos) #0 {
entry:
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %pos.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %mini = alloca i32, align 4
  %maxi = alloca i32, align 4
  %minj = alloca i32, align 4
  %maxj = alloca i32, align 4
  %origin = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos2177 = alloca i32, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %1, i64 %idxprom
  %origin1 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 3
  %2 = load i32, i32* %origin1, align 4
  store i32 %2, i32* %origin, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %5, i64 %idxprom2
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx3, i32 0, i32 0
  %6 = load i32, i32* %color, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %8, i64 %idxprom4
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 1
  %9 = load i32, i32* %esize, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom6
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx7, i32 0, i32 2
  %12 = load i32, i32* %msize, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i32 0, i32 0), i32 %3, i32 %6, i32 %9, i32 %12)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.124, %entry
  %13 = load i32, i32* %m, align 4
  %14 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end.126

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %n, align 4
  %16 = load i32, i32* @board_size, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %17 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %17, 20
  %add = add nsw i32 21, %mul
  %18 = load i32, i32* %n, align 4
  %add11 = add nsw i32 %add, %18
  store i32 %add11, i32* %pos2, align 4
  %19 = load i32, i32* %pos2, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %20, i64 %idxprom12
  %origin14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx13, i32 0, i32 3
  %21 = load i32, i32* %origin14, align 4
  %22 = load i32, i32* %pos.addr, align 4
  %cmp15 = icmp ne i32 %21, %22
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  br label %for.inc

if.end:                                           ; preds = %for.body.10
  %23 = load i32, i32* %pos2, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %24, i64 %idxprom16
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx17, i32 0, i32 7
  %25 = load i8, i8* %marginal, align 1
  %conv = sext i8 %25 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %26 = load i32, i32* %pos2, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %27 to i32
  %cmp21 = icmp eq i32 %conv20, 1
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load i32, i32* %pos2, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %29 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %29 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %30 = load i32, i32* %pos2, align 4
  %call29 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 %30)
  br label %if.end.123

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %31 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %32 = load i32, i32* %pos2, align 4
  %call30 = call i32 @is_halfeye(%struct.half_eye_data* %31, i32 %32)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.59

land.lhs.true.32:                                 ; preds = %if.else
  %33 = load i32, i32* %pos2, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then.44, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %land.lhs.true.32
  %35 = load i32, i32* %pos2, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %36 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %36 to i32
  %cmp42 = icmp eq i32 %conv41, 2
  br i1 %cmp42, label %if.then.44, label %if.else.59

if.then.44:                                       ; preds = %lor.lhs.false.38, %land.lhs.true.32
  %37 = load i32, i32* %pos2, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %38, i64 %idxprom45
  %value = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx46, i32 0, i32 0
  %39 = load float, float* %value, align 4
  %conv47 = fpext float %39 to double
  %cmp48 = fcmp oeq double %conv47, 3.000000e+00
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.then.44
  %40 = load i32, i32* %pos2, align 4
  %call51 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 %40)
  br label %if.end.58

if.else.52:                                       ; preds = %if.then.44
  %41 = load i32, i32* %pos2, align 4
  %42 = load i32, i32* %pos2, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %43, i64 %idxprom53
  %value55 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx54, i32 0, i32 0
  %44 = load float, float* %value55, align 4
  %conv56 = fpext float %44 to double
  %call57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0), i32 %41, double %conv56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.52, %if.then.50
  br label %if.end.122

if.else.59:                                       ; preds = %lor.lhs.false.38, %if.else
  %45 = load i32, i32* %pos2, align 4
  %idxprom60 = sext i32 %45 to i64
  %46 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %46, i64 %idxprom60
  %marginal62 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx61, i32 0, i32 7
  %47 = load i8, i8* %marginal62, align 1
  %tobool63 = icmp ne i8 %47, 0
  br i1 %tobool63, label %if.else.78, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.else.59
  %48 = load i32, i32* %pos2, align 4
  %idxprom65 = sext i32 %48 to i64
  %arrayidx66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom65
  %49 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %49 to i32
  %cmp68 = icmp eq i32 %conv67, 1
  br i1 %cmp68, label %if.then.76, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.64
  %50 = load i32, i32* %pos2, align 4
  %idxprom71 = sext i32 %50 to i64
  %arrayidx72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom71
  %51 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %51 to i32
  %cmp74 = icmp eq i32 %conv73, 2
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %lor.lhs.false.70, %land.lhs.true.64
  %52 = load i32, i32* %pos2, align 4
  %call77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %52)
  br label %if.end.121

if.else.78:                                       ; preds = %lor.lhs.false.70, %if.else.59
  %53 = load i32, i32* %pos2, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %54, i64 %idxprom79
  %marginal81 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx80, i32 0, i32 7
  %55 = load i8, i8* %marginal81, align 1
  %conv82 = sext i8 %55 to i32
  %tobool83 = icmp ne i32 %conv82, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.else.92

land.lhs.true.84:                                 ; preds = %if.else.78
  %56 = load i32, i32* %pos2, align 4
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom85
  %57 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %57 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %land.lhs.true.84
  %58 = load i32, i32* %pos2, align 4
  %call91 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %58)
  br label %if.end.120

if.else.92:                                       ; preds = %land.lhs.true.84, %if.else.78
  %59 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %60 = load i32, i32* %pos2, align 4
  %call93 = call i32 @is_halfeye(%struct.half_eye_data* %59, i32 %60)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.117

land.lhs.true.95:                                 ; preds = %if.else.92
  %61 = load i32, i32* %pos2, align 4
  %idxprom96 = sext i32 %61 to i64
  %arrayidx97 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom96
  %62 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %62 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.117

if.then.101:                                      ; preds = %land.lhs.true.95
  %63 = load i32, i32* %pos2, align 4
  %idxprom102 = sext i32 %63 to i64
  %64 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %64, i64 %idxprom102
  %value104 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx103, i32 0, i32 0
  %65 = load float, float* %value104, align 4
  %conv105 = fpext float %65 to double
  %cmp106 = fcmp oeq double %conv105, 3.000000e+00
  br i1 %cmp106, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %if.then.101
  %66 = load i32, i32* %pos2, align 4
  %call109 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %66)
  br label %if.end.116

if.else.110:                                      ; preds = %if.then.101
  %67 = load i32, i32* %pos2, align 4
  %68 = load i32, i32* %pos2, align 4
  %idxprom111 = sext i32 %68 to i64
  %69 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %69, i64 %idxprom111
  %value113 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx112, i32 0, i32 0
  %70 = load float, float* %value113, align 4
  %conv114 = fpext float %70 to double
  %call115 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i32 %67, double %conv114)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.110, %if.then.108
  br label %if.end.119

if.else.117:                                      ; preds = %land.lhs.true.95, %if.else.92
  %71 = load i32, i32* %pos2, align 4
  %call118 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 %71)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.end.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.90
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.76
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.58
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.123, %if.then
  %72 = load i32, i32* %n, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end
  %73 = load i32, i32* %m, align 4
  %inc125 = add nsw i32 %73, 1
  store i32 %inc125, i32* %m, align 4
  br label %for.cond

for.end.126:                                      ; preds = %for.cond
  %call127 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %74 = load i32, i32* @board_size, align 4
  store i32 %74, i32* %mini, align 4
  store i32 -1, i32* %maxi, align 4
  %75 = load i32, i32* @board_size, align 4
  store i32 %75, i32* %minj, align 4
  store i32 -1, i32* %maxj, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.165, %for.end.126
  %76 = load i32, i32* %m, align 4
  %77 = load i32, i32* @board_size, align 4
  %cmp129 = icmp slt i32 %76, %77
  br i1 %cmp129, label %for.body.131, label %for.end.167

for.body.131:                                     ; preds = %for.cond.128
  store i32 0, i32* %n, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.162, %for.body.131
  %78 = load i32, i32* %n, align 4
  %79 = load i32, i32* @board_size, align 4
  %cmp133 = icmp slt i32 %78, %79
  br i1 %cmp133, label %for.body.135, label %for.end.164

for.body.135:                                     ; preds = %for.cond.132
  %80 = load i32, i32* %m, align 4
  %mul136 = mul nsw i32 %80, 20
  %add137 = add nsw i32 21, %mul136
  %81 = load i32, i32* %n, align 4
  %add138 = add nsw i32 %add137, %81
  %idxprom139 = sext i32 %add138 to i64
  %82 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx140 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %82, i64 %idxprom139
  %origin141 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx140, i32 0, i32 3
  %83 = load i32, i32* %origin141, align 4
  %84 = load i32, i32* %origin, align 4
  %cmp142 = icmp ne i32 %83, %84
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %for.body.135
  br label %for.inc.162

if.end.145:                                       ; preds = %for.body.135
  %85 = load i32, i32* %m, align 4
  %86 = load i32, i32* %mini, align 4
  %cmp146 = icmp slt i32 %85, %86
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.145
  %87 = load i32, i32* %m, align 4
  store i32 %87, i32* %mini, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.145
  %88 = load i32, i32* %m, align 4
  %89 = load i32, i32* %maxi, align 4
  %cmp150 = icmp sgt i32 %88, %89
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.149
  %90 = load i32, i32* %m, align 4
  store i32 %90, i32* %maxi, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.149
  %91 = load i32, i32* %n, align 4
  %92 = load i32, i32* %minj, align 4
  %cmp154 = icmp slt i32 %91, %92
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.153
  %93 = load i32, i32* %n, align 4
  store i32 %93, i32* %minj, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.153
  %94 = load i32, i32* %n, align 4
  %95 = load i32, i32* %maxj, align 4
  %cmp158 = icmp sgt i32 %94, %95
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.end.157
  %96 = load i32, i32* %n, align 4
  store i32 %96, i32* %maxj, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.end.157
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161, %if.then.144
  %97 = load i32, i32* %n, align 4
  %inc163 = add nsw i32 %97, 1
  store i32 %inc163, i32* %n, align 4
  br label %for.cond.132

for.end.164:                                      ; preds = %for.cond.132
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.end.164
  %98 = load i32, i32* %m, align 4
  %inc166 = add nsw i32 %98, 1
  store i32 %inc166, i32* %m, align 4
  br label %for.cond.128

for.end.167:                                      ; preds = %for.cond.128
  %99 = load i32, i32* %mini, align 4
  store i32 %99, i32* %m, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.224, %for.end.167
  %100 = load i32, i32* %m, align 4
  %101 = load i32, i32* %maxi, align 4
  %cmp169 = icmp sle i32 %100, %101
  br i1 %cmp169, label %for.body.171, label %for.end.226

for.body.171:                                     ; preds = %for.cond.168
  %call172 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i32 0, i32 0))
  %102 = load i32, i32* %minj, align 4
  store i32 %102, i32* %n, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.220, %for.body.171
  %103 = load i32, i32* %n, align 4
  %104 = load i32, i32* %maxj, align 4
  %cmp174 = icmp sle i32 %103, %104
  br i1 %cmp174, label %for.body.176, label %for.end.222

for.body.176:                                     ; preds = %for.cond.173
  %105 = load i32, i32* %m, align 4
  %mul178 = mul nsw i32 %105, 20
  %add179 = add nsw i32 21, %mul178
  %106 = load i32, i32* %n, align 4
  %add180 = add nsw i32 %add179, %106
  store i32 %add180, i32* %pos2177, align 4
  %107 = load i32, i32* %pos2177, align 4
  %idxprom181 = sext i32 %107 to i64
  %108 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %108, i64 %idxprom181
  %origin183 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx182, i32 0, i32 3
  %109 = load i32, i32* %origin183, align 4
  %110 = load i32, i32* %origin, align 4
  %cmp184 = icmp eq i32 %109, %110
  br i1 %cmp184, label %if.then.186, label %if.else.217

if.then.186:                                      ; preds = %for.body.176
  %111 = load i32, i32* %pos2177, align 4
  %idxprom187 = sext i32 %111 to i64
  %arrayidx188 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom187
  %112 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %112 to i32
  %cmp190 = icmp eq i32 %conv189, 0
  br i1 %cmp190, label %if.then.192, label %if.else.208

if.then.192:                                      ; preds = %if.then.186
  %113 = load i32, i32* %pos2177, align 4
  %idxprom193 = sext i32 %113 to i64
  %114 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx194 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %114, i64 %idxprom193
  %marginal195 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx194, i32 0, i32 7
  %115 = load i8, i8* %marginal195, align 1
  %tobool196 = icmp ne i8 %115, 0
  br i1 %tobool196, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.then.192
  %call198 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.207

if.else.199:                                      ; preds = %if.then.192
  %116 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %117 = load i32, i32* %pos2177, align 4
  %call200 = call i32 @is_halfeye(%struct.half_eye_data* %116, i32 %117)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.else.199
  %call203 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.206

if.else.204:                                      ; preds = %if.else.199
  %call205 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.then.202
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.197
  br label %if.end.216

if.else.208:                                      ; preds = %if.then.186
  %118 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %119 = load i32, i32* %pos2177, align 4
  %call209 = call i32 @is_halfeye(%struct.half_eye_data* %118, i32 %119)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.else.208
  %call212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.208
  %call214 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.then.211
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.207
  br label %if.end.219

if.else.217:                                      ; preds = %for.body.176
  %call218 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.217, %if.end.216
  br label %for.inc.220

for.inc.220:                                      ; preds = %if.end.219
  %120 = load i32, i32* %n, align 4
  %inc221 = add nsw i32 %120, 1
  store i32 %inc221, i32* %n, align 4
  br label %for.cond.173

for.end.222:                                      ; preds = %for.cond.173
  %call223 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.222
  %121 = load i32, i32* %m, align 4
  %inc225 = add nsw i32 %121, 1
  store i32 %inc225, i32* %m, align 4
  br label %for.cond.168

for.end.226:                                      ; preds = %for.cond.168
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_eye(i32 %pos, i32* %attack_point, i32* %defense_point, %struct.eyevalue* %value, %struct.eye_data* %eye, %struct.half_eye_data* %heye, i32 %add_moves, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %value.addr = alloca %struct.eyevalue*, align 8
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %add_moves.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %eye_color = alloca i32, align 4
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %ko_halfeye = alloca i32, align 4
  %apos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %ko_value = alloca %struct.eyevalue, align 1
  %vp = alloca %struct.vital_points, align 4
  %ko_vp = alloca %struct.vital_points, align 4
  %best_vp = alloca %struct.vital_points*, align 8
  %result = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store %struct.eyevalue* %value, %struct.eyevalue** %value.addr, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 %add_moves, i32* %add_moves.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %ko_halfeye, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %dpos, align 4
  store %struct.vital_points* %vp, %struct.vital_points** %best_vp, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32*, i32** %attack_point.addr, align 8
  %2 = load i32*, i32** %defense_point.addr, align 8
  %3 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %4 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %5 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %call = call i32 @recognize_eye(i32 %0, i32* %1, i32* %2, %struct.eyevalue* %3, %struct.eye_data* %4, %struct.half_eye_data* %5, %struct.vital_points* %vp)
  store i32 %call, i32* %eye_color, align 4
  %6 = load i32, i32* %eye_color, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 21, i32* %pos2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %pos2, align 4
  %cmp = icmp slt i32 %7, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %pos2, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %pos2, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom3
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 3
  %12 = load i32, i32* %origin, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp eq i32 %12, %13
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.25

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %pos2, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %15, i64 %idxprom8
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx9, i32 0, i32 1
  %16 = load i8, i8* %type, align 1
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.25

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %17 = load i32, i32* %pos2, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %18, i64 %idxprom14
  %value16 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx15, i32 0, i32 0
  %19 = load float, float* %value16, align 4
  %conv17 = fpext float %19 to double
  %cmp18 = fcmp olt double %conv17, 3.000000e+00
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %land.lhs.true.13
  %20 = load i32, i32* %ko_halfeye, align 4
  %cmp21 = icmp ne i32 %20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  store i32 0, i32* %ko_halfeye, align 4
  br label %for.end

if.end.24:                                        ; preds = %if.then.20
  %21 = load i32, i32* %pos2, align 4
  store i32 %21, i32* %ko_halfeye, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %22 = load i32, i32* %pos2, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %pos2, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %23 = load i32, i32* %ko_halfeye, align 4
  %cmp26 = icmp ne i32 %23, 0
  br i1 %cmp26, label %if.then.28, label %if.end.44

if.then.28:                                       ; preds = %for.end
  %24 = load i32, i32* %ko_halfeye, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %25, i64 %idxprom29
  %type31 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx30, i32 0, i32 1
  store i8 0, i8* %type31, align 1
  %26 = load i32, i32* %pos.addr, align 4
  %27 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %28 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %call32 = call i32 @recognize_eye(i32 %26, i32* %apos, i32* %dpos, %struct.eyevalue* %ko_value, %struct.eye_data* %27, %struct.half_eye_data* %28, %struct.vital_points* %ko_vp)
  store i32 %call32, i32* %result, align 4
  %29 = load i32, i32* %ko_halfeye, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %30, i64 %idxprom33
  %type35 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx34, i32 0, i32 1
  store i8 2, i8* %type35, align 1
  %31 = load i32, i32* %result, align 4
  %tobool36 = icmp ne i32 %31, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.43

land.lhs.true.37:                                 ; preds = %if.then.28
  %32 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call38 = call i32 @max_eyes(%struct.eyevalue* %32)
  %call39 = call i32 @max_eyes(%struct.eyevalue* %ko_value)
  %cmp40 = icmp slt i32 %call38, %call39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.37
  %33 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %34 = bitcast %struct.eyevalue* %33 to i8*
  %35 = bitcast %struct.eyevalue* %ko_value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 4, i32 1, i1 false)
  %36 = load i32, i32* %apos, align 4
  %37 = load i32*, i32** %attack_point.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %dpos, align 4
  %39 = load i32*, i32** %defense_point.addr, align 8
  store i32 %38, i32* %39, align 4
  store %struct.vital_points* %ko_vp, %struct.vital_points** %best_vp, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.37, %if.then.28
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.end
  %40 = load i32, i32* %add_moves.addr, align 4
  %tobool45 = icmp ne i32 %40, 0
  br i1 %tobool45, label %if.then.46, label %if.end.69

if.then.46:                                       ; preds = %if.end.44
  %41 = load i32, i32* %eye_color, align 4
  %42 = load i32, i32* %color.addr, align 4
  %cmp47 = icmp eq i32 %41, %42
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.46
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.56, %if.then.49
  %43 = load i32, i32* %k, align 4
  %44 = load %struct.vital_points*, %struct.vital_points** %best_vp, align 8
  %num_defenses = getelementptr inbounds %struct.vital_points, %struct.vital_points* %44, i32 0, i32 3
  %45 = load i32, i32* %num_defenses, align 4
  %cmp51 = icmp slt i32 %43, %45
  br i1 %cmp51, label %for.body.53, label %for.end.58

for.body.53:                                      ; preds = %for.cond.50
  %46 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load %struct.vital_points*, %struct.vital_points** %best_vp, align 8
  %defenses = getelementptr inbounds %struct.vital_points, %struct.vital_points* %47, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses, i32 0, i64 %idxprom54
  %48 = load i32, i32* %arrayidx55, align 4
  %49 = load i32, i32* %pos.addr, align 4
  %50 = load i32, i32* %eye_color, align 4
  call void @add_vital_eye_move(i32 %48, i32 %49, i32 %50)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.53
  %51 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %51, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond.50

for.end.58:                                       ; preds = %for.cond.50
  br label %if.end.68

if.else:                                          ; preds = %if.then.46
  store i32 0, i32* %k, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.65, %if.else
  %52 = load i32, i32* %k, align 4
  %53 = load %struct.vital_points*, %struct.vital_points** %best_vp, align 8
  %num_attacks = getelementptr inbounds %struct.vital_points, %struct.vital_points* %53, i32 0, i32 2
  %54 = load i32, i32* %num_attacks, align 4
  %cmp60 = icmp slt i32 %52, %54
  br i1 %cmp60, label %for.body.62, label %for.end.67

for.body.62:                                      ; preds = %for.cond.59
  %55 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.vital_points*, %struct.vital_points** %best_vp, align 8
  %attacks = getelementptr inbounds %struct.vital_points, %struct.vital_points* %56, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [80 x i32], [80 x i32]* %attacks, i32 0, i64 %idxprom63
  %57 = load i32, i32* %arrayidx64, align 4
  %58 = load i32, i32* %pos.addr, align 4
  %59 = load i32, i32* %eye_color, align 4
  call void @add_vital_eye_move(i32 %57, i32 %58, i32 %59)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.62
  %60 = load i32, i32* %k, align 4
  %inc66 = add nsw i32 %60, 1
  store i32 %inc66, i32* %k, align 4
  br label %for.cond.59

for.end.67:                                       ; preds = %for.cond.59
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.67, %for.end.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.44
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define void @set_eyevalue(%struct.eyevalue* %e, i32 %a, i32 %b, i32 %c, i32 %d) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a1 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %1, i32 0, i32 0
  store i8 %conv, i8* %a1, align 1
  %2 = load i32, i32* %b.addr, align 4
  %conv2 = trunc i32 %2 to i8
  %3 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b3 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %3, i32 0, i32 1
  store i8 %conv2, i8* %b3, align 1
  %4 = load i32, i32* %c.addr, align 4
  %conv4 = trunc i32 %4 to i8
  %5 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c5 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %5, i32 0, i32 2
  store i8 %conv4, i8* %c5, align 1
  %6 = load i32, i32* %d.addr, align 4
  %conv6 = trunc i32 %6 to i8
  %7 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d7 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %7, i32 0, i32 3
  store i8 %conv6, i8* %d7, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_eyes_pessimistic(i32 %pos, %struct.eyevalue* %value, i32* %pessimistic_min, i32* %attack_point, i32* %defense_point, %struct.eye_data* %eye, %struct.half_eye_data* %heye) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca %struct.eyevalue*, align 8
  %pessimistic_min.addr = alloca i32*, align 8
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %margins = alloca i32, align 4
  %halfeyes = alloca i32, align 4
  %margins_adjacent_to_margin = alloca i32, align 4
  %effective_eyesize = alloca i32, align 4
  %interior_stones = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %best_attack_point = alloca i32, align 4
  %best_defense_point = alloca i32, align 4
  %score = alloca float, align 4
  %pos2131 = alloca i32, align 4
  %this_score = alloca float, align 4
  %this_attack_point = alloca i32, align 4
  %this_defense_point = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.eyevalue* %value, %struct.eyevalue** %value.addr, align 8
  store i32* %pessimistic_min, i32** %pessimistic_min.addr, align 8
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 0, i32* %margins, align 4
  store i32 0, i32* %halfeyes, align 4
  store i32 0, i32* %margins_adjacent_to_margin, align 4
  store i32 0, i32* %interior_stones, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %5
  store i32 %add4, i32* %pos2, align 4
  %6 = load i32, i32* %pos2, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %7, i64 %idxprom
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 3
  %8 = load i32, i32* %origin, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.inc

if.end:                                           ; preds = %for.body.3
  %10 = load i32, i32* %pos2, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom6
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx7, i32 0, i32 7
  %12 = load i8, i8* %marginal, align 1
  %conv = sext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %14 = load i32, i32* %pos2, align 4
  %call = call i32 @is_halfeye(%struct.half_eye_data* %13, i32 %14)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load i32, i32* %margins, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %margins, align 4
  %16 = load i32, i32* %pos2, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %17, i64 %idxprom10
  %marginal12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx11, i32 0, i32 7
  %18 = load i8, i8* %marginal12, align 1
  %conv13 = sext i8 %18 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.then.9
  %19 = load i32, i32* %pos2, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %20, i64 %idxprom15
  %marginal_neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx16, i32 0, i32 10
  %21 = load i8, i8* %marginal_neighbors, align 1
  %conv17 = sext i8 %21 to i32
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %margins_adjacent_to_margin, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %margins_adjacent_to_margin, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.then.9
  %23 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %24 = load i32, i32* %pos2, align 4
  %call23 = call i32 @is_halfeye(%struct.half_eye_data* %23, i32 %24)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %25 = load i32, i32* %halfeyes, align 4
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, i32* %halfeyes, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  br label %if.end.42

if.else:                                          ; preds = %lor.lhs.false
  %26 = load i32, i32* %pos2, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %27 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %27 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %if.then.39, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.else
  %28 = load i32, i32* %pos2, align 4
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %29 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 2
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %lor.lhs.false.33, %if.else
  %30 = load i32, i32* %interior_stones, align 4
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, i32* %interior_stones, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %lor.lhs.false.33
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.42, %if.then
  %31 = load i32, i32* %n, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, i32* %n, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %32 = load i32, i32* %m, align 4
  %inc45 = add nsw i32 %32, 1
  store i32 %inc45, i32* %m, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %33 = load i32, i32* %pos.addr, align 4
  %idxprom47 = sext i32 %33 to i64
  %34 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %34, i64 %idxprom47
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx48, i32 0, i32 1
  %35 = load i32, i32* %esize, align 4
  %36 = load i32, i32* %halfeyes, align 4
  %add49 = add nsw i32 %35, %36
  %37 = load i32, i32* %margins, align 4
  %mul50 = mul nsw i32 2, %37
  %sub = sub nsw i32 %add49, %mul50
  %38 = load i32, i32* %margins_adjacent_to_margin, align 4
  %sub51 = sub nsw i32 %sub, %38
  store i32 %sub51, i32* %effective_eyesize, align 4
  %39 = load i32*, i32** %attack_point.addr, align 8
  %tobool52 = icmp ne i32* %39, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.end.46
  %40 = load i32*, i32** %attack_point.addr, align 8
  store i32 0, i32* %40, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %for.end.46
  %41 = load i32*, i32** %defense_point.addr, align 8
  %tobool55 = icmp ne i32* %41, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  %42 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %42, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  %43 = load i32, i32* @debug, align 4
  %and = and i32 %43, 2
  %tobool58 = icmp ne i32 %and, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.57
  %44 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %45 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %46 = load i32, i32* %pos.addr, align 4
  call void @print_eye(%struct.eye_data* %44, %struct.half_eye_data* %45, i32 %46)
  %47 = load i32, i32* @debug, align 4
  %and60 = and i32 %47, 2
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.59
  br label %cond.end

cond.false:                                       ; preds = %if.then.59
  %call62 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.63

if.end.63:                                        ; preds = %cond.end, %if.end.57
  %48 = load i32, i32* %pos.addr, align 4
  %49 = load i32*, i32** %attack_point.addr, align 8
  %50 = load i32*, i32** %defense_point.addr, align 8
  %51 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %52 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %53 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %call64 = call i32 @read_eye(i32 %48, i32* %49, i32* %50, %struct.eyevalue* %51, %struct.eye_data* %52, %struct.half_eye_data* %53, i32 0, i32 0)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.90

if.then.66:                                       ; preds = %if.end.63
  %54 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call67 = call i32 @min_eyes(%struct.eyevalue* %54)
  %55 = load i32, i32* %margins, align 4
  %sub68 = sub nsw i32 %call67, %55
  %56 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 %sub68, i32* %56, align 4
  %57 = load i32, i32* %pos.addr, align 4
  %idxprom69 = sext i32 %57 to i64
  %58 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %58, i64 %idxprom69
  %esize71 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx70, i32 0, i32 1
  %59 = load i32, i32* %esize71, align 4
  %cmp72 = icmp eq i32 %59, 1
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.82

land.lhs.true.74:                                 ; preds = %if.then.66
  %60 = load i32, i32* %pos.addr, align 4
  %61 = load i32, i32* %pos.addr, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %62, i64 %idxprom75
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx76, i32 0, i32 0
  %63 = load i32, i32* %color, align 4
  %cmp77 = icmp eq i32 %63, 4
  %cond = select i1 %cmp77, i32 2, i32 1
  %call79 = call i32 @is_ko(i32 %60, i32 %cond, i32* null)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true.74
  %64 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 0, i32* %64, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %land.lhs.true.74, %if.then.66
  %65 = load i32, i32* @debug, align 4
  %and83 = and i32 %65, 2
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %cond.false.86, label %cond.true.85

cond.true.85:                                     ; preds = %if.end.82
  br label %cond.end.89

cond.false.86:                                    ; preds = %if.end.82
  %66 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call87 = call i8* @eyevalue_to_string(%struct.eyevalue* %66)
  %67 = load i32*, i32** %pessimistic_min.addr, align 8
  %68 = load i32, i32* %67, align 4
  %call88 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i8* %call87, i32 %68)
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.86, %cond.true.85
  br label %if.end.98

if.else.90:                                       ; preds = %if.end.63
  %69 = load i32, i32* %pos.addr, align 4
  %70 = load i32, i32* %effective_eyesize, align 4
  %71 = load i32, i32* %margins, align 4
  %72 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %73 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %74 = load i32*, i32** %pessimistic_min.addr, align 8
  call void @guess_eye_space(i32 %69, i32 %70, i32 %71, %struct.eye_data* %72, %struct.eyevalue* %73, i32* %74)
  %75 = load i32, i32* @debug, align 4
  %and91 = and i32 %75, 2
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.false.94, label %cond.true.93

cond.true.93:                                     ; preds = %if.else.90
  br label %cond.end.97

cond.false.94:                                    ; preds = %if.else.90
  %76 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call95 = call i8* @eyevalue_to_string(%struct.eyevalue* %76)
  %77 = load i32*, i32** %pessimistic_min.addr, align 8
  %78 = load i32, i32* %77, align 4
  %call96 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %call95, i32 %78)
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.94, %cond.true.93
  br label %if.end.98

if.end.98:                                        ; preds = %cond.end.97, %cond.end.89
  %79 = load i32*, i32** %pessimistic_min.addr, align 8
  %80 = load i32, i32* %79, align 4
  %cmp99 = icmp slt i32 %80, 0
  br i1 %cmp99, label %if.then.101, label %if.end.108

if.then.101:                                      ; preds = %if.end.98
  %81 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @debug, align 4
  %and102 = and i32 %82, 2
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %cond.false.105, label %cond.true.104

cond.true.104:                                    ; preds = %if.then.101
  br label %cond.end.107

cond.false.105:                                   ; preds = %if.then.101
  %call106 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end.107, %if.end.98
  %83 = load i32*, i32** %pessimistic_min.addr, align 8
  %84 = load i32, i32* %83, align 4
  %cmp109 = icmp slt i32 %84, 1
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.121

land.lhs.true.111:                                ; preds = %if.end.108
  %85 = load i32, i32* %interior_stones, align 4
  %cmp112 = icmp sge i32 %85, 2
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %land.lhs.true.111
  %86 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @debug, align 4
  %and115 = and i32 %87, 2
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %cond.false.118, label %cond.true.117

cond.true.117:                                    ; preds = %if.then.114
  br label %cond.end.120

cond.false.118:                                   ; preds = %if.then.114
  %call119 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.117
  br label %if.end.121

if.end.121:                                       ; preds = %cond.end.120, %land.lhs.true.111, %if.end.108
  %88 = load i32*, i32** %attack_point.addr, align 8
  %tobool122 = icmp ne i32* %88, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.219

land.lhs.true.123:                                ; preds = %if.end.121
  %89 = load i32*, i32** %attack_point.addr, align 8
  %90 = load i32, i32* %89, align 4
  %cmp124 = icmp eq i32 %90, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.219

land.lhs.true.126:                                ; preds = %land.lhs.true.123
  %91 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call127 = call i32 @max_eyes(%struct.eyevalue* %91)
  %92 = load i32*, i32** %pessimistic_min.addr, align 8
  %93 = load i32, i32* %92, align 4
  %cmp128 = icmp ne i32 %call127, %93
  br i1 %cmp128, label %if.then.130, label %if.end.219

if.then.130:                                      ; preds = %land.lhs.true.126
  store i32 0, i32* %best_attack_point, align 4
  store i32 0, i32* %best_defense_point, align 4
  store float 0.000000e+00, float* %score, align 4
  store i32 21, i32* %pos2131, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.205, %if.then.130
  %94 = load i32, i32* %pos2131, align 4
  %cmp133 = icmp slt i32 %94, 400
  br i1 %cmp133, label %for.body.135, label %for.end.207

for.body.135:                                     ; preds = %for.cond.132
  %95 = load i32, i32* %pos2131, align 4
  %idxprom136 = sext i32 %95 to i64
  %arrayidx137 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom136
  %96 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %96 to i32
  %cmp139 = icmp ne i32 %conv138, 3
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.204

land.lhs.true.141:                                ; preds = %for.body.135
  %97 = load i32, i32* %pos2131, align 4
  %idxprom142 = sext i32 %97 to i64
  %98 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %98, i64 %idxprom142
  %origin144 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx143, i32 0, i32 3
  %99 = load i32, i32* %origin144, align 4
  %100 = load i32, i32* %pos.addr, align 4
  %cmp145 = icmp eq i32 %99, %100
  br i1 %cmp145, label %if.then.147, label %if.end.204

if.then.147:                                      ; preds = %land.lhs.true.141
  store float 0.000000e+00, float* %this_score, align 4
  store i32 0, i32* %this_attack_point, align 4
  store i32 0, i32* %this_defense_point, align 4
  %101 = load i32, i32* %pos2131, align 4
  %idxprom148 = sext i32 %101 to i64
  %102 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx149 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %102, i64 %idxprom148
  %marginal150 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx149, i32 0, i32 7
  %103 = load i8, i8* %marginal150, align 1
  %conv151 = sext i8 %103 to i32
  %tobool152 = icmp ne i32 %conv151, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.else.183

land.lhs.true.153:                                ; preds = %if.then.147
  %104 = load i32, i32* %pos2131, align 4
  %idxprom154 = sext i32 %104 to i64
  %arrayidx155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom154
  %105 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %105 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %if.then.159, label %if.else.183

if.then.159:                                      ; preds = %land.lhs.true.153
  %106 = load i32, i32* %pos2131, align 4
  %idxprom160 = sext i32 %106 to i64
  %107 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx161 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %107, i64 %idxprom160
  %neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx161, i32 0, i32 9
  %108 = load i8, i8* %neighbors, align 1
  %conv162 = sitofp i8 %108 to float
  store float %conv162, float* %this_score, align 4
  %109 = load i32, i32* %pos2131, align 4
  store i32 %109, i32* %this_attack_point, align 4
  %110 = load i32, i32* %pos2131, align 4
  store i32 %110, i32* %this_defense_point, align 4
  %111 = load i32, i32* %pos2131, align 4
  %112 = load i32, i32* %pos.addr, align 4
  %idxprom163 = sext i32 %112 to i64
  %113 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %113, i64 %idxprom163
  %color165 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx164, i32 0, i32 0
  %114 = load i32, i32* %color165, align 4
  %cmp166 = icmp eq i32 %114, 4
  %cond168 = select i1 %cmp166, i32 2, i32 1
  %call169 = call i32 @is_self_atari(i32 %111, i32 %cond168)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.175

if.then.171:                                      ; preds = %if.then.159
  %115 = load float, float* %this_score, align 4
  %conv172 = fpext float %115 to double
  %sub173 = fsub double %conv172, 5.000000e-01
  %conv174 = fptrunc double %sub173 to float
  store float %conv174, float* %this_score, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.171, %if.then.159
  %116 = load i32, i32* %pos2131, align 4
  %call176 = call i32 @is_edge_vertex(i32 %116)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %if.end.175
  %117 = load float, float* %this_score, align 4
  %conv179 = fpext float %117 to double
  %sub180 = fsub double %conv179, 1.000000e-01
  %conv181 = fptrunc double %sub180 to float
  store float %conv181, float* %this_score, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %if.end.175
  br label %if.end.197

if.else.183:                                      ; preds = %land.lhs.true.153, %if.then.147
  %118 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %119 = load i32, i32* %pos2131, align 4
  %call184 = call i32 @is_halfeye(%struct.half_eye_data* %118, i32 %119)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.else.195

if.then.186:                                      ; preds = %if.else.183
  store float 7.500000e-01, float* %this_score, align 4
  %120 = load i32, i32* %pos2131, align 4
  %idxprom187 = sext i32 %120 to i64
  %121 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx188 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %121, i64 %idxprom187
  %defense_point189 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx188, i32 0, i32 5
  %arrayidx190 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point189, i32 0, i64 0
  %122 = load i32, i32* %arrayidx190, align 4
  store i32 %122, i32* %this_defense_point, align 4
  %123 = load i32, i32* %pos2131, align 4
  %idxprom191 = sext i32 %123 to i64
  %124 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx192 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %124, i64 %idxprom191
  %attack_point193 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx192, i32 0, i32 3
  %arrayidx194 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point193, i32 0, i64 0
  %125 = load i32, i32* %arrayidx194, align 4
  store i32 %125, i32* %this_attack_point, align 4
  br label %if.end.196

if.else.195:                                      ; preds = %if.else.183
  br label %for.inc.205

if.end.196:                                       ; preds = %if.then.186
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.182
  %126 = load float, float* %this_score, align 4
  %call198 = call i32 @gg_normalize_float2int(float %126, float 0x3F847AE140000000)
  %127 = load float, float* %score, align 4
  %call199 = call i32 @gg_normalize_float2int(float %127, float 0x3F847AE140000000)
  %cmp200 = icmp sgt i32 %call198, %call199
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.197
  %128 = load i32, i32* %this_attack_point, align 4
  store i32 %128, i32* %best_attack_point, align 4
  %129 = load i32, i32* %this_defense_point, align 4
  store i32 %129, i32* %best_defense_point, align 4
  %130 = load float, float* %this_score, align 4
  store float %130, float* %score, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %if.end.197
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %land.lhs.true.141, %for.body.135
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204, %if.else.195
  %131 = load i32, i32* %pos2131, align 4
  %inc206 = add nsw i32 %131, 1
  store i32 %inc206, i32* %pos2131, align 4
  br label %for.cond.132

for.end.207:                                      ; preds = %for.cond.132
  %132 = load float, float* %score, align 4
  %conv208 = fpext float %132 to double
  %cmp209 = fcmp ogt double %conv208, 0.000000e+00
  br i1 %cmp209, label %if.then.211, label %if.end.218

if.then.211:                                      ; preds = %for.end.207
  %133 = load i32*, i32** %defense_point.addr, align 8
  %tobool212 = icmp ne i32* %133, null
  br i1 %tobool212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.211
  %134 = load i32, i32* %best_defense_point, align 4
  %135 = load i32*, i32** %defense_point.addr, align 8
  store i32 %134, i32* %135, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %if.then.211
  %136 = load i32*, i32** %attack_point.addr, align 8
  %tobool215 = icmp ne i32* %136, null
  br i1 %tobool215, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.214
  %137 = load i32, i32* %best_attack_point, align 4
  %138 = load i32*, i32** %attack_point.addr, align 8
  store i32 %137, i32* %138, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %if.end.214
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.end.207
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %land.lhs.true.126, %land.lhs.true.123, %if.end.121
  %139 = load i32*, i32** %defense_point.addr, align 8
  %tobool220 = icmp ne i32* %139, null
  br i1 %tobool220, label %land.lhs.true.221, label %if.end.238

land.lhs.true.221:                                ; preds = %if.end.219
  %140 = load i32*, i32** %defense_point.addr, align 8
  %141 = load i32, i32* %140, align 4
  %cmp222 = icmp ne i32 %141, 0
  br i1 %cmp222, label %if.then.224, label %if.end.238

if.then.224:                                      ; preds = %land.lhs.true.221
  %142 = load i32*, i32** %defense_point.addr, align 8
  %143 = load i32, i32* %142, align 4
  %cmp225 = icmp ult i32 %143, 421
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.234

land.lhs.true.227:                                ; preds = %if.then.224
  %144 = load i32*, i32** %defense_point.addr, align 8
  %145 = load i32, i32* %144, align 4
  %idxprom228 = sext i32 %145 to i64
  %arrayidx229 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom228
  %146 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %146 to i32
  %cmp231 = icmp ne i32 %conv230, 3
  br i1 %cmp231, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %land.lhs.true.227
  br label %if.end.237

if.else.234:                                      ; preds = %land.lhs.true.227, %if.then.224
  %147 = load i32*, i32** %defense_point.addr, align 8
  %148 = load i32, i32* %147, align 4
  %div = sdiv i32 %148, 20
  %sub235 = sub nsw i32 %div, 1
  %149 = load i32*, i32** %defense_point.addr, align 8
  %150 = load i32, i32* %149, align 4
  %rem = srem i32 %150, 20
  %sub236 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 953, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %sub235, i32 %sub236)
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.234, %if.then.233
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.221, %if.end.219
  %151 = load i32*, i32** %attack_point.addr, align 8
  %tobool239 = icmp ne i32* %151, null
  br i1 %tobool239, label %land.lhs.true.240, label %if.end.259

land.lhs.true.240:                                ; preds = %if.end.238
  %152 = load i32*, i32** %attack_point.addr, align 8
  %153 = load i32, i32* %152, align 4
  %cmp241 = icmp ne i32 %153, 0
  br i1 %cmp241, label %if.then.243, label %if.end.259

if.then.243:                                      ; preds = %land.lhs.true.240
  %154 = load i32*, i32** %attack_point.addr, align 8
  %155 = load i32, i32* %154, align 4
  %cmp244 = icmp ult i32 %155, 421
  br i1 %cmp244, label %land.lhs.true.246, label %if.else.253

land.lhs.true.246:                                ; preds = %if.then.243
  %156 = load i32*, i32** %attack_point.addr, align 8
  %157 = load i32, i32* %156, align 4
  %idxprom247 = sext i32 %157 to i64
  %arrayidx248 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom247
  %158 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %158 to i32
  %cmp250 = icmp ne i32 %conv249, 3
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %land.lhs.true.246
  br label %if.end.258

if.else.253:                                      ; preds = %land.lhs.true.246, %if.then.243
  %159 = load i32*, i32** %attack_point.addr, align 8
  %160 = load i32, i32* %159, align 4
  %div254 = sdiv i32 %160, 20
  %sub255 = sub nsw i32 %div254, 1
  %161 = load i32*, i32** %attack_point.addr, align 8
  %162 = load i32, i32* %161, align 4
  %rem256 = srem i32 %162, 20
  %sub257 = sub nsw i32 %rem256, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 956, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %sub255, i32 %sub257)
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.253, %if.then.252
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %land.lhs.true.240, %if.end.238
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_halfeye(%struct.half_eye_data* %heye, i32 %pos) #0 {
entry:
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %1, i64 %idxprom
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %type, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @min_eyes(%struct.eyevalue* %e) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 1
  %1 = load i8, i8* %b, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare i32 @is_ko(i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i8* @eyevalue_to_string(%struct.eyevalue* %e) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 0
  %1 = load i8, i8* %a, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %2, i32 0, i32 1
  %3 = load i8, i8* %b, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp slt i32 %conv2, 10
  br i1 %cmp3, label %land.lhs.true.5, label %if.else

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %4 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %4, i32 0, i32 2
  %5 = load i8, i8* %c, align 1
  %conv6 = zext i8 %5 to i32
  %cmp7 = icmp slt i32 %conv6, 10
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %6 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %6, i32 0, i32 3
  %7 = load i8, i8* %d, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp slt i32 %conv10, 10
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9
  %8 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a13 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %8, i32 0, i32 0
  %9 = load i8, i8* %a13, align 1
  %conv14 = zext i8 %9 to i32
  %10 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b15 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %10, i32 0, i32 1
  %11 = load i8, i8* %b15, align 1
  %conv16 = zext i8 %11 to i32
  %12 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c17 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %12, i32 0, i32 2
  %13 = load i8, i8* %c17, align 1
  %conv18 = zext i8 %13 to i32
  %14 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d19 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %14, i32 0, i32 3
  %15 = load i8, i8* %d19, align 1
  %conv20 = zext i8 %15 to i32
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @eyevalue_to_string.result, i32 0, i32 0), i64 29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %conv14, i32 %conv16, i32 %conv18, i32 %conv20)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %entry
  %16 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a21 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %16, i32 0, i32 0
  %17 = load i8, i8* %a21, align 1
  %conv22 = zext i8 %17 to i32
  %18 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b23 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %18, i32 0, i32 1
  %19 = load i8, i8* %b23, align 1
  %conv24 = zext i8 %19 to i32
  %20 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c25 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %20, i32 0, i32 2
  %21 = load i8, i8* %c25, align 1
  %conv26 = zext i8 %21 to i32
  %22 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d27 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %22, i32 0, i32 3
  %23 = load i8, i8* %d27, align 1
  %conv28 = zext i8 %23 to i32
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @eyevalue_to_string.result, i32 0, i32 0), i64 29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %conv22, i32 %conv24, i32 %conv26, i32 %conv28)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* getelementptr inbounds ([30 x i8], [30 x i8]* @eyevalue_to_string.result, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal void @guess_eye_space(i32 %pos, i32 %effective_eyesize, i32 %margins, %struct.eye_data* %eye, %struct.eyevalue* %value, i32* %pessimistic_min) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %effective_eyesize.addr = alloca i32, align 4
  %margins.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %value.addr = alloca %struct.eyevalue*, align 8
  %pessimistic_min.addr = alloca i32*, align 8
  %eyes = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %effective_eyesize, i32* %effective_eyesize.addr, align 4
  store i32 %margins, i32* %margins.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.eyevalue* %value, %struct.eyevalue** %value.addr, align 8
  store i32* %pessimistic_min, i32** %pessimistic_min.addr, align 8
  %0 = load i32, i32* %effective_eyesize.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %1 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %1, i32 2, i32 2, i32 2, i32 2)
  %2 = load i32, i32* %margins.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %effective_eyesize.addr, align 4
  %cmp2 = icmp sgt i32 %3, 7
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %4 = load i32, i32* %margins.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %effective_eyesize.addr, align 4
  %cmp5 = icmp sgt i32 %5, 9
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true.4, %land.lhs.true
  %6 = load i32, i32* %effective_eyesize.addr, align 4
  %7 = load i32, i32* %margins.addr, align 4
  %cmp7 = icmp sgt i32 %7, 0
  %conv = zext i1 %cmp7 to i32
  %mul = mul nsw i32 2, %conv
  %sub = sub nsw i32 %6, %mul
  %sub8 = sub nsw i32 %sub, 8
  %div = sdiv i32 %sub8, 2
  %add = add nsw i32 2, %div
  store i32 %add, i32* %eyes, align 4
  %8 = load i32, i32* %eyes, align 4
  %9 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %11 = load i32, i32* %eyes, align 4
  %12 = load i32, i32* %eyes, align 4
  %13 = load i32, i32* %eyes, align 4
  %14 = load i32, i32* %eyes, align 4
  call void @set_eyevalue(%struct.eyevalue* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %lor.lhs.false
  %15 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 1, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.26

if.else.9:                                        ; preds = %entry
  %16 = load i32, i32* %effective_eyesize.addr, align 4
  %cmp10 = icmp sgt i32 %16, 0
  br i1 %cmp10, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.else.9
  %17 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %17, i32 1, i32 1, i32 1, i32 1)
  %18 = load i32, i32* %margins.addr, align 4
  %cmp13 = icmp sgt i32 %18, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.12
  %19 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 0, i32* %19, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.12
  %20 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 1, i32* %20, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.25

if.else.18:                                       ; preds = %if.else.9
  %21 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %22, i64 %idxprom
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 1
  %23 = load i32, i32* %esize, align 4
  %24 = load i32, i32* %margins.addr, align 4
  %sub19 = sub nsw i32 %23, %24
  %cmp20 = icmp sgt i32 %sub19, 2
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.18
  %25 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %25, i32 0, i32 0, i32 1, i32 1)
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.18
  %26 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  call void @set_eyevalue(%struct.eyevalue* %26, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  %27 = load i32*, i32** %pessimistic_min.addr, align 8
  store i32 0, i32* %27, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @max_eyes(%struct.eyevalue* %e) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 2
  %1 = load i8, i8* %c, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

declare i32 @is_self_atari(i32, i32) #2

declare i32 @is_edge_vertex(i32) #2

declare i32 @gg_normalize_float2int(float, float) #2

declare void @abortgo(i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @add_false_eye(i32 %pos, %struct.eye_data* %eye, %struct.half_eye_data* %heye) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %1, i64 %idxprom
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %type, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1401, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @debug, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %8, i64 %idxprom3
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 0
  %9 = load i32, i32* %color, align 4
  %cmp5 = icmp eq i32 %9, 3
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom7
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx8, i32 0, i32 7
  %12 = load i8, i8* %marginal, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %cond.end
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %14, i64 %idxprom14
  %marginal16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx15, i32 0, i32 7
  store i8 1, i8* %marginal16, align 1
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %16, i64 %idxprom17
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx18, i32 0, i32 3
  %17 = load i32, i32* %origin, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom19
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx20, i32 0, i32 2
  %19 = load i32, i32* %msize, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %msize, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %20 = load i32, i32* %k, align 4
  %cmp21 = icmp slt i32 %20, 4
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %pos.addr, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom23
  %23 = load i32, i32* %arrayidx24, align 4
  %add = add nsw i32 %21, %23
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %24 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %cmp28 = icmp ne i32 %conv27, 3
  br i1 %cmp28, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body
  %25 = load i32, i32* %pos.addr, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom30
  %27 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %25, %27
  %idxprom33 = sext i32 %add32 to i64
  %28 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %28, i64 %idxprom33
  %origin35 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx34, i32 0, i32 3
  %29 = load i32, i32* %origin35, align 4
  %30 = load i32, i32* %pos.addr, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %31, i64 %idxprom36
  %origin38 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx37, i32 0, i32 3
  %32 = load i32, i32* %origin38, align 4
  %cmp39 = icmp eq i32 %29, %32
  br i1 %cmp39, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* %pos.addr, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom42
  %35 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %33, %35
  %idxprom45 = sext i32 %add44 to i64
  %36 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %36, i64 %idxprom45
  %marginal_neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx46, i32 0, i32 10
  %37 = load i8, i8* %marginal_neighbors, align 1
  %inc47 = add i8 %37, 1
  store i8 %inc47, i8* %marginal_neighbors, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.41, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %38 = load i32, i32* %k, align 4
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %pos.addr, align 4
  %idxprom50 = sext i32 %39 to i64
  %40 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i64 %idxprom50
  %origin52 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx51, i32 0, i32 3
  %41 = load i32, i32* %origin52, align 4
  %42 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  call void @propagate_eye(i32 %41, %struct.eye_data* %42)
  br label %return

return:                                           ; preds = %for.end, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_eye_space(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom1
  %color3 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 0
  %3 = load i32, i32* %color3, align 4
  %cmp4 = icmp eq i32 %3, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @is_proper_eye_space(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom1
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 7
  %3 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom3
  %color5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %color5, align 4
  %cmp6 = icmp eq i32 %5, 5
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom7
  %marginal9 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx8, i32 0, i32 7
  %7 = load i8, i8* %marginal9, align 1
  %tobool10 = icmp ne i8 %7, 0
  %lnot = xor i1 %tobool10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ %8, %land.end ]
  %lor.ext = zext i1 %9 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @max_eye_value(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %max_white = alloca i32, align 4
  %max_black = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %max_white, align 4
  store i32 0, i32* %max_black, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom1
  %value = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 4
  %call = call i32 @max_eyes(%struct.eyevalue* %value)
  store i32 %call, i32* %max_white, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom3
  %color5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 0
  %4 = load i32, i32* %color5, align 4
  %cmp6 = icmp eq i32 %4, 5
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom8
  %value10 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx9, i32 0, i32 4
  %call11 = call i32 @max_eyes(%struct.eyevalue* %value10)
  store i32 %call11, i32* %max_black, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %6 = load i32, i32* %max_white, align 4
  %7 = load i32, i32* %max_black, align 4
  %cmp13 = icmp slt i32 %6, %7
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %8 = load i32, i32* %max_black, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %9 = load i32, i32* %max_white, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @is_marginal_eye_space(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 7
  %1 = load i8, i8* %marginal, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom1
  %marginal3 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 7
  %3 = load i8, i8* %marginal3, align 1
  %conv4 = sext i8 %3 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @is_false_eye(%struct.half_eye_data* %heye, i32 %pos) #0 {
entry:
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %1, i64 %idxprom
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx, i32 0, i32 1
  %2 = load i8, i8* %type, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define float @topological_eye(i32 %pos, i32 %color, %struct.eye_data* %my_eye, %struct.half_eye_data* %heye) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %my_eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %sum = alloca float, align 4
  %val = alloca float, align 4
  %num_attacks = alloca i32, align 4
  %num_defenses = alloca i32, align 4
  %attack_values = alloca [4 x i32], align 16
  %defense_values = alloca [4 x i32], align 16
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %attack_value = alloca i32, align 4
  %defense_value = alloca i32, align 4
  %tmp_value = alloca i32, align 4
  %tmp_point = alloca i32, align 4
  %tmp_value86 = alloca i32, align 4
  %tmp_point89 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.eye_data* %my_eye, %struct.eye_data** %my_eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %num_attacks, align 4
  store i32 0, i32* %num_defenses, align 4
  %0 = bitcast [4 x i32]* %attack_values to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  %1 = bitcast [4 x i32]* %defense_values to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 16, i1 false)
  store i32 4, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.107, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %sub, %5
  %6 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %6, 20
  %sub1 = sub nsw i32 %rem, 1
  %7 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %add4 = add nsw i32 %sub1, %8
  %9 = load i32, i32* %color.addr, align 4
  %10 = load %struct.eye_data*, %struct.eye_data** %my_eye.addr, align 8
  %call = call float @evaluate_diagonal_intersection(i32 %add, i32 %add4, i32 %9, i32* %attack_point, i32* %defense_point, %struct.eye_data* %10)
  store float %call, float* %val, align 4
  %11 = load float, float* %val, align 4
  %12 = load float, float* %sum, align 4
  %add5 = fadd float %12, %11
  store float %add5, float* %sum, align 4
  %13 = load float, float* %val, align 4
  %conv = fpext float %13 to double
  %cmp6 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true, label %if.end.106

land.lhs.true:                                    ; preds = %for.body
  %14 = load float, float* %val, align 4
  %conv8 = fpext float %14 to double
  %cmp9 = fcmp olt double %conv8, 2.000000e+00
  br i1 %cmp9, label %if.then, label %if.end.106

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %attack_point, align 4
  %cmp11 = icmp ne i32 %15, 0
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.105

land.lhs.true.13:                                 ; preds = %if.then
  %16 = load i32, i32* %defense_point, align 4
  %cmp14 = icmp ne i32 %16, 0
  br i1 %cmp14, label %if.then.16, label %if.end.105

if.then.16:                                       ; preds = %land.lhs.true.13
  %17 = load i32, i32* %attack_point, align 4
  %cmp17 = icmp ult i32 %17, 421
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %if.then.16
  %18 = load i32, i32* %attack_point, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %cmp23 = icmp ne i32 %conv22, 3
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.19
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.19, %if.then.16
  %20 = load i32, i32* %attack_point, align 4
  %div26 = sdiv i32 %20, 20
  %sub27 = sub nsw i32 %div26, 1
  %21 = load i32, i32* %attack_point, align 4
  %rem28 = srem i32 %21, 20
  %sub29 = sub nsw i32 %rem28, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1520, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %sub27, i32 %sub29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.25
  %22 = load i32, i32* %defense_point, align 4
  %cmp30 = icmp ult i32 %22, 421
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.39

land.lhs.true.32:                                 ; preds = %if.end
  %23 = load i32, i32* %defense_point, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.32
  br label %if.end.44

if.else.39:                                       ; preds = %land.lhs.true.32, %if.end
  %25 = load i32, i32* %defense_point, align 4
  %div40 = sdiv i32 %25, 20
  %sub41 = sub nsw i32 %div40, 1
  %26 = load i32, i32* %defense_point, align 4
  %rem42 = srem i32 %26, 20
  %sub43 = sub nsw i32 %rem42, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1521, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 %sub41, i32 %sub43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.39, %if.then.38
  %27 = load float, float* %val, align 4
  %conv45 = fpext float %27 to double
  %cmp46 = fcmp oeq double %conv45, 1.000000e+00
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.44
  store i32 3, i32* %attack_value, align 4
  store i32 3, i32* %defense_value, align 4
  br label %if.end.56

if.else.49:                                       ; preds = %if.end.44
  %28 = load float, float* %val, align 4
  %conv50 = fpext float %28 to double
  %cmp51 = fcmp olt double %conv50, 1.000000e+00
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.49
  store i32 2, i32* %attack_value, align 4
  store i32 1, i32* %defense_value, align 4
  br label %if.end.55

if.else.54:                                       ; preds = %if.else.49
  store i32 1, i32* %attack_value, align 4
  store i32 2, i32* %defense_value, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.53
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.48
  store i32 0, i32* %r, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %if.end.56
  %29 = load i32, i32* %r, align 4
  %cmp58 = icmp slt i32 %29, 4
  br i1 %cmp58, label %for.body.60, label %for.end

for.body.60:                                      ; preds = %for.cond.57
  %30 = load i32, i32* %r, align 4
  %idxprom61 = sext i32 %30 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_values, i32 0, i64 %idxprom61
  %31 = load i32, i32* %arrayidx62, align 4
  %32 = load i32, i32* %attack_value, align 4
  %cmp63 = icmp slt i32 %31, %32
  br i1 %cmp63, label %if.then.65, label %if.end.80

if.then.65:                                       ; preds = %for.body.60
  %33 = load i32, i32* %r, align 4
  %idxprom66 = sext i32 %33 to i64
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_values, i32 0, i64 %idxprom66
  %34 = load i32, i32* %arrayidx67, align 4
  store i32 %34, i32* %tmp_value, align 4
  %35 = load i32, i32* %r, align 4
  %idxprom68 = sext i32 %35 to i64
  %36 = load i32, i32* %pos.addr, align 4
  %idxprom69 = sext i32 %36 to i64
  %37 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %37, i64 %idxprom69
  %attack_point71 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx70, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point71, i32 0, i64 %idxprom68
  %38 = load i32, i32* %arrayidx72, align 4
  store i32 %38, i32* %tmp_point, align 4
  %39 = load i32, i32* %attack_value, align 4
  %40 = load i32, i32* %r, align 4
  %idxprom73 = sext i32 %40 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_values, i32 0, i64 %idxprom73
  store i32 %39, i32* %arrayidx74, align 4
  %41 = load i32, i32* %attack_point, align 4
  %42 = load i32, i32* %r, align 4
  %idxprom75 = sext i32 %42 to i64
  %43 = load i32, i32* %pos.addr, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %44, i64 %idxprom76
  %attack_point78 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx77, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point78, i32 0, i64 %idxprom75
  store i32 %41, i32* %arrayidx79, align 4
  %45 = load i32, i32* %tmp_value, align 4
  store i32 %45, i32* %attack_value, align 4
  %46 = load i32, i32* %tmp_point, align 4
  store i32 %46, i32* %attack_point, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.65, %for.body.60
  %47 = load i32, i32* %r, align 4
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_values, i32 0, i64 %idxprom81
  %48 = load i32, i32* %arrayidx82, align 4
  %49 = load i32, i32* %defense_value, align 4
  %cmp83 = icmp slt i32 %48, %49
  br i1 %cmp83, label %if.then.85, label %if.end.102

if.then.85:                                       ; preds = %if.end.80
  %50 = load i32, i32* %r, align 4
  %idxprom87 = sext i32 %50 to i64
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_values, i32 0, i64 %idxprom87
  %51 = load i32, i32* %arrayidx88, align 4
  store i32 %51, i32* %tmp_value86, align 4
  %52 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %52 to i64
  %53 = load i32, i32* %pos.addr, align 4
  %idxprom91 = sext i32 %53 to i64
  %54 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %54, i64 %idxprom91
  %defense_point93 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx92, i32 0, i32 5
  %arrayidx94 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point93, i32 0, i64 %idxprom90
  %55 = load i32, i32* %arrayidx94, align 4
  store i32 %55, i32* %tmp_point89, align 4
  %56 = load i32, i32* %defense_value, align 4
  %57 = load i32, i32* %r, align 4
  %idxprom95 = sext i32 %57 to i64
  %arrayidx96 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_values, i32 0, i64 %idxprom95
  store i32 %56, i32* %arrayidx96, align 4
  %58 = load i32, i32* %defense_point, align 4
  %59 = load i32, i32* %r, align 4
  %idxprom97 = sext i32 %59 to i64
  %60 = load i32, i32* %pos.addr, align 4
  %idxprom98 = sext i32 %60 to i64
  %61 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %61, i64 %idxprom98
  %defense_point100 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx99, i32 0, i32 5
  %arrayidx101 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point100, i32 0, i64 %idxprom97
  store i32 %58, i32* %arrayidx101, align 4
  %62 = load i32, i32* %tmp_value86, align 4
  store i32 %62, i32* %defense_value, align 4
  %63 = load i32, i32* %tmp_point89, align 4
  store i32 %63, i32* %defense_point, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.85, %if.end.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %64 = load i32, i32* %r, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  %65 = load i32, i32* %num_attacks, align 4
  %inc103 = add nsw i32 %65, 1
  store i32 %inc103, i32* %num_attacks, align 4
  %66 = load i32, i32* %num_defenses, align 4
  %inc104 = add nsw i32 %66, 1
  store i32 %inc104, i32* %num_defenses, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %for.end, %land.lhs.true.13, %if.then
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true, %for.body
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %67 = load i32, i32* %k, align 4
  %inc108 = add nsw i32 %67, 1
  store i32 %inc108, i32* %k, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  %68 = load i32, i32* %num_attacks, align 4
  %69 = load i32, i32* %pos.addr, align 4
  %idxprom110 = sext i32 %69 to i64
  %70 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %70, i64 %idxprom110
  %num_attacks112 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx111, i32 0, i32 2
  store i32 %68, i32* %num_attacks112, align 4
  %71 = load i32, i32* %num_defenses, align 4
  %72 = load i32, i32* %pos.addr, align 4
  %idxprom113 = sext i32 %72 to i64
  %73 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %73, i64 %idxprom113
  %num_defends = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx114, i32 0, i32 4
  store i32 %71, i32* %num_defends, align 4
  %74 = load float, float* %sum, align 4
  %75 = load i32, i32* %pos.addr, align 4
  %idxprom115 = sext i32 %75 to i64
  %76 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %76, i64 %idxprom115
  %value = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx116, i32 0, i32 0
  store float %74, float* %value, align 4
  %77 = load float, float* %sum, align 4
  ret float %77
}

; Function Attrs: nounwind uwtable
define internal float @evaluate_diagonal_intersection(i32 %m, i32 %n, i32 %color, i32* %attack_point, i32* %defense_point, %struct.eye_data* %my_eye) #0 {
entry:
  %retval = alloca float, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %my_eye.addr = alloca %struct.eye_data*, align 8
  %value = alloca float, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %acode = alloca i32, align 4
  %apos = alloca i32, align 4
  %dcode = alloca i32, align 4
  %dpos = alloca i32, align 4
  %off_edge = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %your_safety = alloca i32, align 4
  %our_safety = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store %struct.eye_data* %my_eye, %struct.eye_data** %my_eye.addr, align 8
  store float 0.000000e+00, float* %value, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %1, 20
  %add = add nsw i32 21, %mul
  %2 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %add, %2
  store i32 %add1, i32* %pos, align 4
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %dpos, align 4
  store i32 0, i32* %off_edge, align 4
  store float 7.500000e-01, float* %a, align 4
  store float 1.250000e+00, float* %b, align 4
  %3 = load i32*, i32** %attack_point.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %m.addr, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp2 = icmp sge i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %off_edge, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %off_edge, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* @board_size, align 4
  %cmp5 = icmp sge i32 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  %12 = load i32, i32* %off_edge, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %off_edge, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %lor.lhs.false.4
  %13 = load i32, i32* %off_edge, align 4
  %cmp9 = icmp sgt i32 %13, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %14 = load i32, i32* %off_edge, align 4
  %rem = srem i32 %14, 2
  %conv = sitofp i32 %rem to float
  store float %conv, float* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %15 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.eye_data*, %struct.eye_data** %my_eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %16, i64 %idxprom
  %color12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %color12, align 4
  %18 = load i32, i32* %color.addr, align 4
  %add13 = add nsw i32 %18, 4
  %sub14 = sub nsw i32 %add13, 1
  %cmp15 = icmp eq i32 %17, %sub14
  br i1 %cmp15, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.11
  %19 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.eye_data*, %struct.eye_data** %my_eye.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %20, i64 %idxprom17
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx18, i32 0, i32 7
  %21 = load i8, i8* %marginal, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %if.end.34, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %my_eye.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom20
  %marginal_neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx21, i32 0, i32 10
  %24 = load i8, i8* %marginal_neighbors, align 1
  %conv22 = sext i8 %24 to i32
  %cmp23 = icmp slt i32 %conv22, 2
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %land.lhs.true.19
  %25 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %26 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %26 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.then.33

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %other, align 4
  %call = call i32 @does_capture_something(i32 %27, i32 %28)
  %tobool32 = icmp ne i32 %call, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31, %land.lhs.true.25
  store float 0.000000e+00, float* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.31, %land.lhs.true.19, %land.lhs.true, %if.end.11
  %29 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %30 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %30 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.62

if.then.40:                                       ; preds = %if.end.34
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %other, align 4
  %call41 = call i32 @safe_move(i32 %31, i32 %32)
  store i32 %call41, i32* %your_safety, align 4
  %33 = load i32, i32* %your_safety, align 4
  %cmp42 = icmp eq i32 %33, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.then.40
  store float 0.000000e+00, float* %value, align 4
  br label %if.end.61

if.else:                                          ; preds = %if.then.40
  %34 = load i32, i32* %your_safety, align 4
  %cmp45 = icmp ne i32 %34, 5
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else
  store float 7.500000e-01, float* %value, align 4
  br label %if.end.60

if.else.48:                                       ; preds = %if.else
  %35 = load i32, i32* %pos, align 4
  %36 = load i32, i32* %color.addr, align 4
  %call49 = call i32 @safe_move(i32 %35, i32 %36)
  store i32 %call49, i32* %our_safety, align 4
  %37 = load i32, i32* %our_safety, align 4
  %cmp50 = icmp eq i32 %37, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.48
  store float 2.000000e+00, float* %value, align 4
  br label %if.end.59

if.else.53:                                       ; preds = %if.else.48
  %38 = load i32, i32* %our_safety, align 4
  %cmp54 = icmp eq i32 %38, 5
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.53
  store float 1.000000e+00, float* %value, align 4
  br label %if.end.58

if.else.57:                                       ; preds = %if.else.53
  store float 1.250000e+00, float* %value, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.47
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.44
  %39 = load i32, i32* %pos, align 4
  store i32 %39, i32* %apos, align 4
  %40 = load i32, i32* %pos, align 4
  store i32 %40, i32* %dpos, align 4
  br label %if.end.137

if.else.62:                                       ; preds = %if.end.34
  %41 = load i32, i32* %pos, align 4
  %idxprom63 = sext i32 %41 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %42 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %42 to i32
  %43 = load i32, i32* %color.addr, align 4
  %cmp66 = icmp eq i32 %conv65, %43
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.62
  store float 0.000000e+00, float* %value, align 4
  br label %if.end.136

if.else.69:                                       ; preds = %if.else.62
  %44 = load i32, i32* %pos, align 4
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom70
  %45 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %45 to i32
  %46 = load i32, i32* %other, align 4
  %cmp73 = icmp eq i32 %conv72, %46
  br i1 %cmp73, label %if.then.75, label %if.end.135

if.then.75:                                       ; preds = %if.else.69
  %47 = load i32, i32* @stackp, align 4
  %cmp76 = icmp eq i32 %47, 0
  br i1 %cmp76, label %if.then.78, label %if.else.91

if.then.78:                                       ; preds = %if.then.75
  %48 = load i32, i32* %pos, align 4
  %idxprom79 = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom79
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx80, i32 0, i32 16
  %arrayidx81 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %49 = load i32, i32* %arrayidx81, align 4
  store i32 %49, i32* %acode, align 4
  %50 = load i32, i32* %pos, align 4
  %idxprom82 = sext i32 %50 to i64
  %arrayidx83 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom82
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx83, i32 0, i32 15
  %arrayidx84 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %51 = load i32, i32* %arrayidx84, align 4
  store i32 %51, i32* %apos, align 4
  %52 = load i32, i32* %pos, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom85
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx86, i32 0, i32 18
  %arrayidx87 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %53 = load i32, i32* %arrayidx87, align 4
  store i32 %53, i32* %dcode, align 4
  %54 = load i32, i32* %pos, align 4
  %idxprom88 = sext i32 %54 to i64
  %arrayidx89 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom88
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx89, i32 0, i32 17
  %arrayidx90 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %55 = load i32, i32* %arrayidx90, align 4
  store i32 %55, i32* %dpos, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %if.then.75
  %56 = load i32, i32* %pos, align 4
  %call92 = call i32 @attack_and_defend(i32 %56, i32* %acode, i32* %apos, i32* %dcode, i32* %dpos)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.78
  %57 = load i32, i32* %acode, align 4
  %cmp94 = icmp eq i32 %57, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.93
  store float 2.000000e+00, float* %value, align 4
  br label %if.end.134

if.else.97:                                       ; preds = %if.end.93
  %58 = load i32, i32* %dcode, align 4
  %cmp98 = icmp eq i32 %58, 0
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.else.97
  store float 0.000000e+00, float* %value, align 4
  br label %if.end.133

if.else.101:                                      ; preds = %if.else.97
  %59 = load i32, i32* %acode, align 4
  %cmp102 = icmp eq i32 %59, 5
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.108

land.lhs.true.104:                                ; preds = %if.else.101
  %60 = load i32, i32* %dcode, align 4
  %cmp105 = icmp eq i32 %60, 5
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %land.lhs.true.104
  store float 1.000000e+00, float* %value, align 4
  br label %if.end.132

if.else.108:                                      ; preds = %land.lhs.true.104, %if.else.101
  %61 = load i32, i32* %acode, align 4
  %cmp109 = icmp eq i32 %61, 5
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.115

land.lhs.true.111:                                ; preds = %if.else.108
  %62 = load i32, i32* %dcode, align 4
  %cmp112 = icmp ne i32 %62, 5
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %land.lhs.true.111
  store float 7.500000e-01, float* %value, align 4
  br label %if.end.131

if.else.115:                                      ; preds = %land.lhs.true.111, %if.else.108
  %63 = load i32, i32* %acode, align 4
  %cmp116 = icmp ne i32 %63, 5
  br i1 %cmp116, label %land.lhs.true.118, label %if.else.122

land.lhs.true.118:                                ; preds = %if.else.115
  %64 = load i32, i32* %dcode, align 4
  %cmp119 = icmp eq i32 %64, 5
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.118
  store float 1.250000e+00, float* %value, align 4
  br label %if.end.130

if.else.122:                                      ; preds = %land.lhs.true.118, %if.else.115
  %65 = load i32, i32* %acode, align 4
  %cmp123 = icmp ne i32 %65, 5
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.129

land.lhs.true.125:                                ; preds = %if.else.122
  %66 = load i32, i32* %dcode, align 4
  %cmp126 = icmp ne i32 %66, 5
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %land.lhs.true.125
  store float 1.000000e+00, float* %value, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %land.lhs.true.125, %if.else.122
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.114
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.107
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.100
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.96
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.else.69
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.68
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.61
  %67 = load float, float* %value, align 4
  %conv138 = fpext float %67 to double
  %cmp139 = fcmp ogt double %conv138, 0.000000e+00
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.175

land.lhs.true.141:                                ; preds = %if.end.137
  %68 = load float, float* %value, align 4
  %conv142 = fpext float %68 to double
  %cmp143 = fcmp olt double %conv142, 2.000000e+00
  br i1 %cmp143, label %if.then.145, label %if.end.175

if.then.145:                                      ; preds = %land.lhs.true.141
  %69 = load i32, i32* %apos, align 4
  %cmp146 = icmp ult i32 %69, 421
  br i1 %cmp146, label %land.lhs.true.148, label %if.else.155

land.lhs.true.148:                                ; preds = %if.then.145
  %70 = load i32, i32* %apos, align 4
  %idxprom149 = sext i32 %70 to i64
  %arrayidx150 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom149
  %71 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %71 to i32
  %cmp152 = icmp ne i32 %conv151, 3
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %land.lhs.true.148
  br label %if.end.159

if.else.155:                                      ; preds = %land.lhs.true.148, %if.then.145
  %72 = load i32, i32* %apos, align 4
  %div = sdiv i32 %72, 20
  %sub156 = sub nsw i32 %div, 1
  %73 = load i32, i32* %apos, align 4
  %rem157 = srem i32 %73, 20
  %sub158 = sub nsw i32 %rem157, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1758, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 %sub156, i32 %sub158)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.155, %if.then.154
  %74 = load i32, i32* %dpos, align 4
  %cmp160 = icmp ult i32 %74, 421
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.169

land.lhs.true.162:                                ; preds = %if.end.159
  %75 = load i32, i32* %dpos, align 4
  %idxprom163 = sext i32 %75 to i64
  %arrayidx164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom163
  %76 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %76 to i32
  %cmp166 = icmp ne i32 %conv165, 3
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %land.lhs.true.162
  br label %if.end.174

if.else.169:                                      ; preds = %land.lhs.true.162, %if.end.159
  %77 = load i32, i32* %dpos, align 4
  %div170 = sdiv i32 %77, 20
  %sub171 = sub nsw i32 %div170, 1
  %78 = load i32, i32* %dpos, align 4
  %rem172 = srem i32 %78, 20
  %sub173 = sub nsw i32 %rem172, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1759, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 %sub171, i32 %sub173)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.169, %if.then.168
  %79 = load i32, i32* %dpos, align 4
  %80 = load i32*, i32** %attack_point.addr, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %apos, align 4
  %82 = load i32*, i32** %defense_point.addr, align 8
  store i32 %81, i32* %82, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %land.lhs.true.141, %if.end.137
  %83 = load float, float* %value, align 4
  store float %83, float* %retval
  br label %return

return:                                           ; preds = %if.end.175, %if.then.33, %if.then.10
  %84 = load float, float* %retval
  ret float %84
}

; Function Attrs: nounwind uwtable
define i32 @min_eye_threat(%struct.eyevalue* %e) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 0
  %1 = load i8, i8* %a, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @max_eye_threat(%struct.eyevalue* %e) #0 {
entry:
  %e.addr = alloca %struct.eyevalue*, align 8
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 3
  %1 = load i8, i8* %d, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @add_eyevalues(%struct.eyevalue* %e1, %struct.eyevalue* %e2, %struct.eyevalue* %sum) #0 {
entry:
  %e1.addr = alloca %struct.eyevalue*, align 8
  %e2.addr = alloca %struct.eyevalue*, align 8
  %sum.addr = alloca %struct.eyevalue*, align 8
  %res = alloca %struct.eyevalue, align 1
  store %struct.eyevalue* %e1, %struct.eyevalue** %e1.addr, align 8
  store %struct.eyevalue* %e2, %struct.eyevalue** %e2.addr, align 8
  store %struct.eyevalue* %sum, %struct.eyevalue** %sum.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 0
  %1 = load i8, i8* %a, align 1
  %conv = zext i8 %1 to i32
  %2 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %2, i32 0, i32 2
  %3 = load i8, i8* %c, align 1
  %conv1 = zext i8 %3 to i32
  %add = add nsw i32 %conv, %conv1
  %4 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c2 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %4, i32 0, i32 2
  %5 = load i8, i8* %c2, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a4 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %6, i32 0, i32 0
  %7 = load i8, i8* %a4, align 1
  %conv5 = zext i8 %7 to i32
  %add6 = add nsw i32 %conv3, %conv5
  %cmp = icmp slt i32 %add, %add6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a8 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %8, i32 0, i32 0
  %9 = load i8, i8* %a8, align 1
  %conv9 = zext i8 %9 to i32
  %10 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c10 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %10, i32 0, i32 2
  %11 = load i8, i8* %c10, align 1
  %conv11 = zext i8 %11 to i32
  %add12 = add nsw i32 %conv9, %conv11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c13 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %12, i32 0, i32 2
  %13 = load i8, i8* %c13, align 1
  %conv14 = zext i8 %13 to i32
  %14 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a15 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %14, i32 0, i32 0
  %15 = load i8, i8* %a15, align 1
  %conv16 = zext i8 %15 to i32
  %add17 = add nsw i32 %conv14, %conv16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add12, %cond.true ], [ %add17, %cond.false ]
  %16 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a18 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %16, i32 0, i32 0
  %17 = load i8, i8* %a18, align 1
  %conv19 = zext i8 %17 to i32
  %18 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %18, i32 0, i32 1
  %19 = load i8, i8* %b, align 1
  %conv20 = zext i8 %19 to i32
  %add21 = add nsw i32 %conv19, %conv20
  %20 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b22 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %20, i32 0, i32 1
  %21 = load i8, i8* %b22, align 1
  %conv23 = zext i8 %21 to i32
  %22 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a24 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %22, i32 0, i32 0
  %23 = load i8, i8* %a24, align 1
  %conv25 = zext i8 %23 to i32
  %add26 = add nsw i32 %conv23, %conv25
  %cmp27 = icmp slt i32 %add21, %add26
  br i1 %cmp27, label %cond.true.29, label %cond.false.35

cond.true.29:                                     ; preds = %cond.end
  %24 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b30 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %24, i32 0, i32 1
  %25 = load i8, i8* %b30, align 1
  %conv31 = zext i8 %25 to i32
  %26 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a32 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %26, i32 0, i32 0
  %27 = load i8, i8* %a32, align 1
  %conv33 = zext i8 %27 to i32
  %add34 = add nsw i32 %conv31, %conv33
  br label %cond.end.41

cond.false.35:                                    ; preds = %cond.end
  %28 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a36 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %28, i32 0, i32 0
  %29 = load i8, i8* %a36, align 1
  %conv37 = zext i8 %29 to i32
  %30 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b38 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %30, i32 0, i32 1
  %31 = load i8, i8* %b38, align 1
  %conv39 = zext i8 %31 to i32
  %add40 = add nsw i32 %conv37, %conv39
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.35, %cond.true.29
  %cond42 = phi i32 [ %add34, %cond.true.29 ], [ %add40, %cond.false.35 ]
  %cmp43 = icmp slt i32 %cond, %cond42
  br i1 %cmp43, label %cond.true.45, label %cond.false.72

cond.true.45:                                     ; preds = %cond.end.41
  %32 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a46 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %32, i32 0, i32 0
  %33 = load i8, i8* %a46, align 1
  %conv47 = zext i8 %33 to i32
  %34 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c48 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %34, i32 0, i32 2
  %35 = load i8, i8* %c48, align 1
  %conv49 = zext i8 %35 to i32
  %add50 = add nsw i32 %conv47, %conv49
  %36 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c51 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %36, i32 0, i32 2
  %37 = load i8, i8* %c51, align 1
  %conv52 = zext i8 %37 to i32
  %38 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a53 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %38, i32 0, i32 0
  %39 = load i8, i8* %a53, align 1
  %conv54 = zext i8 %39 to i32
  %add55 = add nsw i32 %conv52, %conv54
  %cmp56 = icmp slt i32 %add50, %add55
  br i1 %cmp56, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %cond.true.45
  %40 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a59 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %40, i32 0, i32 0
  %41 = load i8, i8* %a59, align 1
  %conv60 = zext i8 %41 to i32
  %42 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c61 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %42, i32 0, i32 2
  %43 = load i8, i8* %c61, align 1
  %conv62 = zext i8 %43 to i32
  %add63 = add nsw i32 %conv60, %conv62
  br label %cond.end.70

cond.false.64:                                    ; preds = %cond.true.45
  %44 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c65 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %44, i32 0, i32 2
  %45 = load i8, i8* %c65, align 1
  %conv66 = zext i8 %45 to i32
  %46 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a67 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %46, i32 0, i32 0
  %47 = load i8, i8* %a67, align 1
  %conv68 = zext i8 %47 to i32
  %add69 = add nsw i32 %conv66, %conv68
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.64, %cond.true.58
  %cond71 = phi i32 [ %add63, %cond.true.58 ], [ %add69, %cond.false.64 ]
  br label %cond.end.99

cond.false.72:                                    ; preds = %cond.end.41
  %48 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a73 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %48, i32 0, i32 0
  %49 = load i8, i8* %a73, align 1
  %conv74 = zext i8 %49 to i32
  %50 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b75 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %50, i32 0, i32 1
  %51 = load i8, i8* %b75, align 1
  %conv76 = zext i8 %51 to i32
  %add77 = add nsw i32 %conv74, %conv76
  %52 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b78 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %52, i32 0, i32 1
  %53 = load i8, i8* %b78, align 1
  %conv79 = zext i8 %53 to i32
  %54 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a80 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %54, i32 0, i32 0
  %55 = load i8, i8* %a80, align 1
  %conv81 = zext i8 %55 to i32
  %add82 = add nsw i32 %conv79, %conv81
  %cmp83 = icmp slt i32 %add77, %add82
  br i1 %cmp83, label %cond.true.85, label %cond.false.91

cond.true.85:                                     ; preds = %cond.false.72
  %56 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b86 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %56, i32 0, i32 1
  %57 = load i8, i8* %b86, align 1
  %conv87 = zext i8 %57 to i32
  %58 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a88 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %58, i32 0, i32 0
  %59 = load i8, i8* %a88, align 1
  %conv89 = zext i8 %59 to i32
  %add90 = add nsw i32 %conv87, %conv89
  br label %cond.end.97

cond.false.91:                                    ; preds = %cond.false.72
  %60 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a92 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %60, i32 0, i32 0
  %61 = load i8, i8* %a92, align 1
  %conv93 = zext i8 %61 to i32
  %62 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b94 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %62, i32 0, i32 1
  %63 = load i8, i8* %b94, align 1
  %conv95 = zext i8 %63 to i32
  %add96 = add nsw i32 %conv93, %conv95
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.91, %cond.true.85
  %cond98 = phi i32 [ %add90, %cond.true.85 ], [ %add96, %cond.false.91 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.end.70
  %cond100 = phi i32 [ %cond71, %cond.end.70 ], [ %cond98, %cond.end.97 ]
  %conv101 = trunc i32 %cond100 to i8
  %a102 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 0
  store i8 %conv101, i8* %a102, align 1
  %64 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b103 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %64, i32 0, i32 1
  %65 = load i8, i8* %b103, align 1
  %conv104 = zext i8 %65 to i32
  %66 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b105 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %66, i32 0, i32 1
  %67 = load i8, i8* %b105, align 1
  %conv106 = zext i8 %67 to i32
  %add107 = add nsw i32 %conv104, %conv106
  %68 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a108 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %68, i32 0, i32 0
  %69 = load i8, i8* %a108, align 1
  %conv109 = zext i8 %69 to i32
  %70 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %70, i32 0, i32 3
  %71 = load i8, i8* %d, align 1
  %conv110 = zext i8 %71 to i32
  %add111 = add nsw i32 %conv109, %conv110
  %72 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b112 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %72, i32 0, i32 1
  %73 = load i8, i8* %b112, align 1
  %conv113 = zext i8 %73 to i32
  %74 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c114 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %74, i32 0, i32 2
  %75 = load i8, i8* %c114, align 1
  %conv115 = zext i8 %75 to i32
  %add116 = add nsw i32 %conv113, %conv115
  %cmp117 = icmp slt i32 %add111, %add116
  br i1 %cmp117, label %cond.true.119, label %cond.false.125

cond.true.119:                                    ; preds = %cond.end.99
  %76 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a120 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %76, i32 0, i32 0
  %77 = load i8, i8* %a120, align 1
  %conv121 = zext i8 %77 to i32
  %78 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d122 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %78, i32 0, i32 3
  %79 = load i8, i8* %d122, align 1
  %conv123 = zext i8 %79 to i32
  %add124 = add nsw i32 %conv121, %conv123
  br label %cond.end.131

cond.false.125:                                   ; preds = %cond.end.99
  %80 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b126 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %80, i32 0, i32 1
  %81 = load i8, i8* %b126, align 1
  %conv127 = zext i8 %81 to i32
  %82 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c128 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %82, i32 0, i32 2
  %83 = load i8, i8* %c128, align 1
  %conv129 = zext i8 %83 to i32
  %add130 = add nsw i32 %conv127, %conv129
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.125, %cond.true.119
  %cond132 = phi i32 [ %add124, %cond.true.119 ], [ %add130, %cond.false.125 ]
  %cmp133 = icmp slt i32 %add107, %cond132
  br i1 %cmp133, label %cond.true.135, label %cond.false.162

cond.true.135:                                    ; preds = %cond.end.131
  %84 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a136 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %84, i32 0, i32 0
  %85 = load i8, i8* %a136, align 1
  %conv137 = zext i8 %85 to i32
  %86 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d138 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %86, i32 0, i32 3
  %87 = load i8, i8* %d138, align 1
  %conv139 = zext i8 %87 to i32
  %add140 = add nsw i32 %conv137, %conv139
  %88 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b141 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %88, i32 0, i32 1
  %89 = load i8, i8* %b141, align 1
  %conv142 = zext i8 %89 to i32
  %90 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c143 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %90, i32 0, i32 2
  %91 = load i8, i8* %c143, align 1
  %conv144 = zext i8 %91 to i32
  %add145 = add nsw i32 %conv142, %conv144
  %cmp146 = icmp slt i32 %add140, %add145
  br i1 %cmp146, label %cond.true.148, label %cond.false.154

cond.true.148:                                    ; preds = %cond.true.135
  %92 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a149 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %92, i32 0, i32 0
  %93 = load i8, i8* %a149, align 1
  %conv150 = zext i8 %93 to i32
  %94 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d151 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %94, i32 0, i32 3
  %95 = load i8, i8* %d151, align 1
  %conv152 = zext i8 %95 to i32
  %add153 = add nsw i32 %conv150, %conv152
  br label %cond.end.160

cond.false.154:                                   ; preds = %cond.true.135
  %96 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b155 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %96, i32 0, i32 1
  %97 = load i8, i8* %b155, align 1
  %conv156 = zext i8 %97 to i32
  %98 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c157 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %98, i32 0, i32 2
  %99 = load i8, i8* %c157, align 1
  %conv158 = zext i8 %99 to i32
  %add159 = add nsw i32 %conv156, %conv158
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.154, %cond.true.148
  %cond161 = phi i32 [ %add153, %cond.true.148 ], [ %add159, %cond.false.154 ]
  br label %cond.end.168

cond.false.162:                                   ; preds = %cond.end.131
  %100 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b163 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %100, i32 0, i32 1
  %101 = load i8, i8* %b163, align 1
  %conv164 = zext i8 %101 to i32
  %102 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b165 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %102, i32 0, i32 1
  %103 = load i8, i8* %b165, align 1
  %conv166 = zext i8 %103 to i32
  %add167 = add nsw i32 %conv164, %conv166
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.162, %cond.end.160
  %cond169 = phi i32 [ %cond161, %cond.end.160 ], [ %add167, %cond.false.162 ]
  %104 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b170 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %104, i32 0, i32 1
  %105 = load i8, i8* %b170, align 1
  %conv171 = zext i8 %105 to i32
  %106 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b172 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %106, i32 0, i32 1
  %107 = load i8, i8* %b172, align 1
  %conv173 = zext i8 %107 to i32
  %add174 = add nsw i32 %conv171, %conv173
  %108 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d175 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %108, i32 0, i32 3
  %109 = load i8, i8* %d175, align 1
  %conv176 = zext i8 %109 to i32
  %110 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a177 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %110, i32 0, i32 0
  %111 = load i8, i8* %a177, align 1
  %conv178 = zext i8 %111 to i32
  %add179 = add nsw i32 %conv176, %conv178
  %112 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c180 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %112, i32 0, i32 2
  %113 = load i8, i8* %c180, align 1
  %conv181 = zext i8 %113 to i32
  %114 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b182 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %114, i32 0, i32 1
  %115 = load i8, i8* %b182, align 1
  %conv183 = zext i8 %115 to i32
  %add184 = add nsw i32 %conv181, %conv183
  %cmp185 = icmp slt i32 %add179, %add184
  br i1 %cmp185, label %cond.true.187, label %cond.false.193

cond.true.187:                                    ; preds = %cond.end.168
  %116 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d188 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %116, i32 0, i32 3
  %117 = load i8, i8* %d188, align 1
  %conv189 = zext i8 %117 to i32
  %118 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a190 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %118, i32 0, i32 0
  %119 = load i8, i8* %a190, align 1
  %conv191 = zext i8 %119 to i32
  %add192 = add nsw i32 %conv189, %conv191
  br label %cond.end.199

cond.false.193:                                   ; preds = %cond.end.168
  %120 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c194 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %120, i32 0, i32 2
  %121 = load i8, i8* %c194, align 1
  %conv195 = zext i8 %121 to i32
  %122 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b196 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %122, i32 0, i32 1
  %123 = load i8, i8* %b196, align 1
  %conv197 = zext i8 %123 to i32
  %add198 = add nsw i32 %conv195, %conv197
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.193, %cond.true.187
  %cond200 = phi i32 [ %add192, %cond.true.187 ], [ %add198, %cond.false.193 ]
  %cmp201 = icmp slt i32 %add174, %cond200
  br i1 %cmp201, label %cond.true.203, label %cond.false.230

cond.true.203:                                    ; preds = %cond.end.199
  %124 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d204 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %124, i32 0, i32 3
  %125 = load i8, i8* %d204, align 1
  %conv205 = zext i8 %125 to i32
  %126 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a206 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %126, i32 0, i32 0
  %127 = load i8, i8* %a206, align 1
  %conv207 = zext i8 %127 to i32
  %add208 = add nsw i32 %conv205, %conv207
  %128 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c209 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %128, i32 0, i32 2
  %129 = load i8, i8* %c209, align 1
  %conv210 = zext i8 %129 to i32
  %130 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b211 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %130, i32 0, i32 1
  %131 = load i8, i8* %b211, align 1
  %conv212 = zext i8 %131 to i32
  %add213 = add nsw i32 %conv210, %conv212
  %cmp214 = icmp slt i32 %add208, %add213
  br i1 %cmp214, label %cond.true.216, label %cond.false.222

cond.true.216:                                    ; preds = %cond.true.203
  %132 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d217 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %132, i32 0, i32 3
  %133 = load i8, i8* %d217, align 1
  %conv218 = zext i8 %133 to i32
  %134 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a219 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %134, i32 0, i32 0
  %135 = load i8, i8* %a219, align 1
  %conv220 = zext i8 %135 to i32
  %add221 = add nsw i32 %conv218, %conv220
  br label %cond.end.228

cond.false.222:                                   ; preds = %cond.true.203
  %136 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c223 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %136, i32 0, i32 2
  %137 = load i8, i8* %c223, align 1
  %conv224 = zext i8 %137 to i32
  %138 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b225 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %138, i32 0, i32 1
  %139 = load i8, i8* %b225, align 1
  %conv226 = zext i8 %139 to i32
  %add227 = add nsw i32 %conv224, %conv226
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.222, %cond.true.216
  %cond229 = phi i32 [ %add221, %cond.true.216 ], [ %add227, %cond.false.222 ]
  br label %cond.end.236

cond.false.230:                                   ; preds = %cond.end.199
  %140 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b231 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %140, i32 0, i32 1
  %141 = load i8, i8* %b231, align 1
  %conv232 = zext i8 %141 to i32
  %142 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b233 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %142, i32 0, i32 1
  %143 = load i8, i8* %b233, align 1
  %conv234 = zext i8 %143 to i32
  %add235 = add nsw i32 %conv232, %conv234
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.230, %cond.end.228
  %cond237 = phi i32 [ %cond229, %cond.end.228 ], [ %add235, %cond.false.230 ]
  %cmp238 = icmp slt i32 %cond169, %cond237
  br i1 %cmp238, label %cond.true.240, label %cond.false.309

cond.true.240:                                    ; preds = %cond.end.236
  %144 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b241 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %144, i32 0, i32 1
  %145 = load i8, i8* %b241, align 1
  %conv242 = zext i8 %145 to i32
  %146 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b243 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %146, i32 0, i32 1
  %147 = load i8, i8* %b243, align 1
  %conv244 = zext i8 %147 to i32
  %add245 = add nsw i32 %conv242, %conv244
  %148 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a246 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %148, i32 0, i32 0
  %149 = load i8, i8* %a246, align 1
  %conv247 = zext i8 %149 to i32
  %150 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d248 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %150, i32 0, i32 3
  %151 = load i8, i8* %d248, align 1
  %conv249 = zext i8 %151 to i32
  %add250 = add nsw i32 %conv247, %conv249
  %152 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b251 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %152, i32 0, i32 1
  %153 = load i8, i8* %b251, align 1
  %conv252 = zext i8 %153 to i32
  %154 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c253 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %154, i32 0, i32 2
  %155 = load i8, i8* %c253, align 1
  %conv254 = zext i8 %155 to i32
  %add255 = add nsw i32 %conv252, %conv254
  %cmp256 = icmp slt i32 %add250, %add255
  br i1 %cmp256, label %cond.true.258, label %cond.false.264

cond.true.258:                                    ; preds = %cond.true.240
  %156 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a259 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %156, i32 0, i32 0
  %157 = load i8, i8* %a259, align 1
  %conv260 = zext i8 %157 to i32
  %158 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d261 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %158, i32 0, i32 3
  %159 = load i8, i8* %d261, align 1
  %conv262 = zext i8 %159 to i32
  %add263 = add nsw i32 %conv260, %conv262
  br label %cond.end.270

cond.false.264:                                   ; preds = %cond.true.240
  %160 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b265 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %160, i32 0, i32 1
  %161 = load i8, i8* %b265, align 1
  %conv266 = zext i8 %161 to i32
  %162 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c267 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %162, i32 0, i32 2
  %163 = load i8, i8* %c267, align 1
  %conv268 = zext i8 %163 to i32
  %add269 = add nsw i32 %conv266, %conv268
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.264, %cond.true.258
  %cond271 = phi i32 [ %add263, %cond.true.258 ], [ %add269, %cond.false.264 ]
  %cmp272 = icmp slt i32 %add245, %cond271
  br i1 %cmp272, label %cond.true.274, label %cond.false.301

cond.true.274:                                    ; preds = %cond.end.270
  %164 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a275 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %164, i32 0, i32 0
  %165 = load i8, i8* %a275, align 1
  %conv276 = zext i8 %165 to i32
  %166 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d277 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %166, i32 0, i32 3
  %167 = load i8, i8* %d277, align 1
  %conv278 = zext i8 %167 to i32
  %add279 = add nsw i32 %conv276, %conv278
  %168 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b280 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %168, i32 0, i32 1
  %169 = load i8, i8* %b280, align 1
  %conv281 = zext i8 %169 to i32
  %170 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c282 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %170, i32 0, i32 2
  %171 = load i8, i8* %c282, align 1
  %conv283 = zext i8 %171 to i32
  %add284 = add nsw i32 %conv281, %conv283
  %cmp285 = icmp slt i32 %add279, %add284
  br i1 %cmp285, label %cond.true.287, label %cond.false.293

cond.true.287:                                    ; preds = %cond.true.274
  %172 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a288 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %172, i32 0, i32 0
  %173 = load i8, i8* %a288, align 1
  %conv289 = zext i8 %173 to i32
  %174 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d290 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %174, i32 0, i32 3
  %175 = load i8, i8* %d290, align 1
  %conv291 = zext i8 %175 to i32
  %add292 = add nsw i32 %conv289, %conv291
  br label %cond.end.299

cond.false.293:                                   ; preds = %cond.true.274
  %176 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b294 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %176, i32 0, i32 1
  %177 = load i8, i8* %b294, align 1
  %conv295 = zext i8 %177 to i32
  %178 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c296 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %178, i32 0, i32 2
  %179 = load i8, i8* %c296, align 1
  %conv297 = zext i8 %179 to i32
  %add298 = add nsw i32 %conv295, %conv297
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.293, %cond.true.287
  %cond300 = phi i32 [ %add292, %cond.true.287 ], [ %add298, %cond.false.293 ]
  br label %cond.end.307

cond.false.301:                                   ; preds = %cond.end.270
  %180 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b302 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %180, i32 0, i32 1
  %181 = load i8, i8* %b302, align 1
  %conv303 = zext i8 %181 to i32
  %182 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b304 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %182, i32 0, i32 1
  %183 = load i8, i8* %b304, align 1
  %conv305 = zext i8 %183 to i32
  %add306 = add nsw i32 %conv303, %conv305
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.301, %cond.end.299
  %cond308 = phi i32 [ %cond300, %cond.end.299 ], [ %add306, %cond.false.301 ]
  br label %cond.end.378

cond.false.309:                                   ; preds = %cond.end.236
  %184 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b310 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %184, i32 0, i32 1
  %185 = load i8, i8* %b310, align 1
  %conv311 = zext i8 %185 to i32
  %186 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b312 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %186, i32 0, i32 1
  %187 = load i8, i8* %b312, align 1
  %conv313 = zext i8 %187 to i32
  %add314 = add nsw i32 %conv311, %conv313
  %188 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d315 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %188, i32 0, i32 3
  %189 = load i8, i8* %d315, align 1
  %conv316 = zext i8 %189 to i32
  %190 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a317 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %190, i32 0, i32 0
  %191 = load i8, i8* %a317, align 1
  %conv318 = zext i8 %191 to i32
  %add319 = add nsw i32 %conv316, %conv318
  %192 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c320 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %192, i32 0, i32 2
  %193 = load i8, i8* %c320, align 1
  %conv321 = zext i8 %193 to i32
  %194 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b322 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %194, i32 0, i32 1
  %195 = load i8, i8* %b322, align 1
  %conv323 = zext i8 %195 to i32
  %add324 = add nsw i32 %conv321, %conv323
  %cmp325 = icmp slt i32 %add319, %add324
  br i1 %cmp325, label %cond.true.327, label %cond.false.333

cond.true.327:                                    ; preds = %cond.false.309
  %196 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d328 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %196, i32 0, i32 3
  %197 = load i8, i8* %d328, align 1
  %conv329 = zext i8 %197 to i32
  %198 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a330 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %198, i32 0, i32 0
  %199 = load i8, i8* %a330, align 1
  %conv331 = zext i8 %199 to i32
  %add332 = add nsw i32 %conv329, %conv331
  br label %cond.end.339

cond.false.333:                                   ; preds = %cond.false.309
  %200 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c334 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %200, i32 0, i32 2
  %201 = load i8, i8* %c334, align 1
  %conv335 = zext i8 %201 to i32
  %202 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b336 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %202, i32 0, i32 1
  %203 = load i8, i8* %b336, align 1
  %conv337 = zext i8 %203 to i32
  %add338 = add nsw i32 %conv335, %conv337
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.333, %cond.true.327
  %cond340 = phi i32 [ %add332, %cond.true.327 ], [ %add338, %cond.false.333 ]
  %cmp341 = icmp slt i32 %add314, %cond340
  br i1 %cmp341, label %cond.true.343, label %cond.false.370

cond.true.343:                                    ; preds = %cond.end.339
  %204 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d344 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %204, i32 0, i32 3
  %205 = load i8, i8* %d344, align 1
  %conv345 = zext i8 %205 to i32
  %206 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a346 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %206, i32 0, i32 0
  %207 = load i8, i8* %a346, align 1
  %conv347 = zext i8 %207 to i32
  %add348 = add nsw i32 %conv345, %conv347
  %208 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c349 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %208, i32 0, i32 2
  %209 = load i8, i8* %c349, align 1
  %conv350 = zext i8 %209 to i32
  %210 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b351 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %210, i32 0, i32 1
  %211 = load i8, i8* %b351, align 1
  %conv352 = zext i8 %211 to i32
  %add353 = add nsw i32 %conv350, %conv352
  %cmp354 = icmp slt i32 %add348, %add353
  br i1 %cmp354, label %cond.true.356, label %cond.false.362

cond.true.356:                                    ; preds = %cond.true.343
  %212 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d357 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %212, i32 0, i32 3
  %213 = load i8, i8* %d357, align 1
  %conv358 = zext i8 %213 to i32
  %214 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a359 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %214, i32 0, i32 0
  %215 = load i8, i8* %a359, align 1
  %conv360 = zext i8 %215 to i32
  %add361 = add nsw i32 %conv358, %conv360
  br label %cond.end.368

cond.false.362:                                   ; preds = %cond.true.343
  %216 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c363 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %216, i32 0, i32 2
  %217 = load i8, i8* %c363, align 1
  %conv364 = zext i8 %217 to i32
  %218 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b365 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %218, i32 0, i32 1
  %219 = load i8, i8* %b365, align 1
  %conv366 = zext i8 %219 to i32
  %add367 = add nsw i32 %conv364, %conv366
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.362, %cond.true.356
  %cond369 = phi i32 [ %add361, %cond.true.356 ], [ %add367, %cond.false.362 ]
  br label %cond.end.376

cond.false.370:                                   ; preds = %cond.end.339
  %220 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b371 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %220, i32 0, i32 1
  %221 = load i8, i8* %b371, align 1
  %conv372 = zext i8 %221 to i32
  %222 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b373 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %222, i32 0, i32 1
  %223 = load i8, i8* %b373, align 1
  %conv374 = zext i8 %223 to i32
  %add375 = add nsw i32 %conv372, %conv374
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.370, %cond.end.368
  %cond377 = phi i32 [ %cond369, %cond.end.368 ], [ %add375, %cond.false.370 ]
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.end.376, %cond.end.307
  %cond379 = phi i32 [ %cond308, %cond.end.307 ], [ %cond377, %cond.end.376 ]
  %conv380 = trunc i32 %cond379 to i8
  %b381 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 1
  store i8 %conv380, i8* %b381, align 1
  %224 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c382 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %224, i32 0, i32 2
  %225 = load i8, i8* %c382, align 1
  %conv383 = zext i8 %225 to i32
  %226 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c384 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %226, i32 0, i32 2
  %227 = load i8, i8* %c384, align 1
  %conv385 = zext i8 %227 to i32
  %add386 = add nsw i32 %conv383, %conv385
  %228 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d387 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %228, i32 0, i32 3
  %229 = load i8, i8* %d387, align 1
  %conv388 = zext i8 %229 to i32
  %230 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a389 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %230, i32 0, i32 0
  %231 = load i8, i8* %a389, align 1
  %conv390 = zext i8 %231 to i32
  %add391 = add nsw i32 %conv388, %conv390
  %232 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c392 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %232, i32 0, i32 2
  %233 = load i8, i8* %c392, align 1
  %conv393 = zext i8 %233 to i32
  %234 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b394 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %234, i32 0, i32 1
  %235 = load i8, i8* %b394, align 1
  %conv395 = zext i8 %235 to i32
  %add396 = add nsw i32 %conv393, %conv395
  %cmp397 = icmp slt i32 %add391, %add396
  br i1 %cmp397, label %cond.true.399, label %cond.false.405

cond.true.399:                                    ; preds = %cond.end.378
  %236 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c400 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %236, i32 0, i32 2
  %237 = load i8, i8* %c400, align 1
  %conv401 = zext i8 %237 to i32
  %238 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b402 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %238, i32 0, i32 1
  %239 = load i8, i8* %b402, align 1
  %conv403 = zext i8 %239 to i32
  %add404 = add nsw i32 %conv401, %conv403
  br label %cond.end.411

cond.false.405:                                   ; preds = %cond.end.378
  %240 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d406 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %240, i32 0, i32 3
  %241 = load i8, i8* %d406, align 1
  %conv407 = zext i8 %241 to i32
  %242 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a408 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %242, i32 0, i32 0
  %243 = load i8, i8* %a408, align 1
  %conv409 = zext i8 %243 to i32
  %add410 = add nsw i32 %conv407, %conv409
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.false.405, %cond.true.399
  %cond412 = phi i32 [ %add404, %cond.true.399 ], [ %add410, %cond.false.405 ]
  %cmp413 = icmp slt i32 %add386, %cond412
  br i1 %cmp413, label %cond.true.415, label %cond.false.421

cond.true.415:                                    ; preds = %cond.end.411
  %244 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c416 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %244, i32 0, i32 2
  %245 = load i8, i8* %c416, align 1
  %conv417 = zext i8 %245 to i32
  %246 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c418 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %246, i32 0, i32 2
  %247 = load i8, i8* %c418, align 1
  %conv419 = zext i8 %247 to i32
  %add420 = add nsw i32 %conv417, %conv419
  br label %cond.end.448

cond.false.421:                                   ; preds = %cond.end.411
  %248 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d422 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %248, i32 0, i32 3
  %249 = load i8, i8* %d422, align 1
  %conv423 = zext i8 %249 to i32
  %250 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a424 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %250, i32 0, i32 0
  %251 = load i8, i8* %a424, align 1
  %conv425 = zext i8 %251 to i32
  %add426 = add nsw i32 %conv423, %conv425
  %252 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c427 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %252, i32 0, i32 2
  %253 = load i8, i8* %c427, align 1
  %conv428 = zext i8 %253 to i32
  %254 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b429 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %254, i32 0, i32 1
  %255 = load i8, i8* %b429, align 1
  %conv430 = zext i8 %255 to i32
  %add431 = add nsw i32 %conv428, %conv430
  %cmp432 = icmp slt i32 %add426, %add431
  br i1 %cmp432, label %cond.true.434, label %cond.false.440

cond.true.434:                                    ; preds = %cond.false.421
  %256 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c435 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %256, i32 0, i32 2
  %257 = load i8, i8* %c435, align 1
  %conv436 = zext i8 %257 to i32
  %258 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b437 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %258, i32 0, i32 1
  %259 = load i8, i8* %b437, align 1
  %conv438 = zext i8 %259 to i32
  %add439 = add nsw i32 %conv436, %conv438
  br label %cond.end.446

cond.false.440:                                   ; preds = %cond.false.421
  %260 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d441 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %260, i32 0, i32 3
  %261 = load i8, i8* %d441, align 1
  %conv442 = zext i8 %261 to i32
  %262 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a443 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %262, i32 0, i32 0
  %263 = load i8, i8* %a443, align 1
  %conv444 = zext i8 %263 to i32
  %add445 = add nsw i32 %conv442, %conv444
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.440, %cond.true.434
  %cond447 = phi i32 [ %add439, %cond.true.434 ], [ %add445, %cond.false.440 ]
  br label %cond.end.448

cond.end.448:                                     ; preds = %cond.end.446, %cond.true.415
  %cond449 = phi i32 [ %add420, %cond.true.415 ], [ %cond447, %cond.end.446 ]
  %264 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c450 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %264, i32 0, i32 2
  %265 = load i8, i8* %c450, align 1
  %conv451 = zext i8 %265 to i32
  %266 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c452 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %266, i32 0, i32 2
  %267 = load i8, i8* %c452, align 1
  %conv453 = zext i8 %267 to i32
  %add454 = add nsw i32 %conv451, %conv453
  %268 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a455 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %268, i32 0, i32 0
  %269 = load i8, i8* %a455, align 1
  %conv456 = zext i8 %269 to i32
  %270 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d457 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %270, i32 0, i32 3
  %271 = load i8, i8* %d457, align 1
  %conv458 = zext i8 %271 to i32
  %add459 = add nsw i32 %conv456, %conv458
  %272 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b460 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %272, i32 0, i32 1
  %273 = load i8, i8* %b460, align 1
  %conv461 = zext i8 %273 to i32
  %274 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c462 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %274, i32 0, i32 2
  %275 = load i8, i8* %c462, align 1
  %conv463 = zext i8 %275 to i32
  %add464 = add nsw i32 %conv461, %conv463
  %cmp465 = icmp slt i32 %add459, %add464
  br i1 %cmp465, label %cond.true.467, label %cond.false.473

cond.true.467:                                    ; preds = %cond.end.448
  %276 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b468 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %276, i32 0, i32 1
  %277 = load i8, i8* %b468, align 1
  %conv469 = zext i8 %277 to i32
  %278 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c470 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %278, i32 0, i32 2
  %279 = load i8, i8* %c470, align 1
  %conv471 = zext i8 %279 to i32
  %add472 = add nsw i32 %conv469, %conv471
  br label %cond.end.479

cond.false.473:                                   ; preds = %cond.end.448
  %280 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a474 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %280, i32 0, i32 0
  %281 = load i8, i8* %a474, align 1
  %conv475 = zext i8 %281 to i32
  %282 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d476 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %282, i32 0, i32 3
  %283 = load i8, i8* %d476, align 1
  %conv477 = zext i8 %283 to i32
  %add478 = add nsw i32 %conv475, %conv477
  br label %cond.end.479

cond.end.479:                                     ; preds = %cond.false.473, %cond.true.467
  %cond480 = phi i32 [ %add472, %cond.true.467 ], [ %add478, %cond.false.473 ]
  %cmp481 = icmp slt i32 %add454, %cond480
  br i1 %cmp481, label %cond.true.483, label %cond.false.489

cond.true.483:                                    ; preds = %cond.end.479
  %284 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c484 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %284, i32 0, i32 2
  %285 = load i8, i8* %c484, align 1
  %conv485 = zext i8 %285 to i32
  %286 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c486 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %286, i32 0, i32 2
  %287 = load i8, i8* %c486, align 1
  %conv487 = zext i8 %287 to i32
  %add488 = add nsw i32 %conv485, %conv487
  br label %cond.end.516

cond.false.489:                                   ; preds = %cond.end.479
  %288 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a490 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %288, i32 0, i32 0
  %289 = load i8, i8* %a490, align 1
  %conv491 = zext i8 %289 to i32
  %290 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d492 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %290, i32 0, i32 3
  %291 = load i8, i8* %d492, align 1
  %conv493 = zext i8 %291 to i32
  %add494 = add nsw i32 %conv491, %conv493
  %292 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b495 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %292, i32 0, i32 1
  %293 = load i8, i8* %b495, align 1
  %conv496 = zext i8 %293 to i32
  %294 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c497 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %294, i32 0, i32 2
  %295 = load i8, i8* %c497, align 1
  %conv498 = zext i8 %295 to i32
  %add499 = add nsw i32 %conv496, %conv498
  %cmp500 = icmp slt i32 %add494, %add499
  br i1 %cmp500, label %cond.true.502, label %cond.false.508

cond.true.502:                                    ; preds = %cond.false.489
  %296 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b503 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %296, i32 0, i32 1
  %297 = load i8, i8* %b503, align 1
  %conv504 = zext i8 %297 to i32
  %298 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c505 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %298, i32 0, i32 2
  %299 = load i8, i8* %c505, align 1
  %conv506 = zext i8 %299 to i32
  %add507 = add nsw i32 %conv504, %conv506
  br label %cond.end.514

cond.false.508:                                   ; preds = %cond.false.489
  %300 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a509 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %300, i32 0, i32 0
  %301 = load i8, i8* %a509, align 1
  %conv510 = zext i8 %301 to i32
  %302 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d511 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %302, i32 0, i32 3
  %303 = load i8, i8* %d511, align 1
  %conv512 = zext i8 %303 to i32
  %add513 = add nsw i32 %conv510, %conv512
  br label %cond.end.514

cond.end.514:                                     ; preds = %cond.false.508, %cond.true.502
  %cond515 = phi i32 [ %add507, %cond.true.502 ], [ %add513, %cond.false.508 ]
  br label %cond.end.516

cond.end.516:                                     ; preds = %cond.end.514, %cond.true.483
  %cond517 = phi i32 [ %add488, %cond.true.483 ], [ %cond515, %cond.end.514 ]
  %cmp518 = icmp slt i32 %cond449, %cond517
  br i1 %cmp518, label %cond.true.520, label %cond.false.589

cond.true.520:                                    ; preds = %cond.end.516
  %304 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c521 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %304, i32 0, i32 2
  %305 = load i8, i8* %c521, align 1
  %conv522 = zext i8 %305 to i32
  %306 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c523 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %306, i32 0, i32 2
  %307 = load i8, i8* %c523, align 1
  %conv524 = zext i8 %307 to i32
  %add525 = add nsw i32 %conv522, %conv524
  %308 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a526 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %308, i32 0, i32 0
  %309 = load i8, i8* %a526, align 1
  %conv527 = zext i8 %309 to i32
  %310 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d528 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %310, i32 0, i32 3
  %311 = load i8, i8* %d528, align 1
  %conv529 = zext i8 %311 to i32
  %add530 = add nsw i32 %conv527, %conv529
  %312 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b531 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %312, i32 0, i32 1
  %313 = load i8, i8* %b531, align 1
  %conv532 = zext i8 %313 to i32
  %314 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c533 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %314, i32 0, i32 2
  %315 = load i8, i8* %c533, align 1
  %conv534 = zext i8 %315 to i32
  %add535 = add nsw i32 %conv532, %conv534
  %cmp536 = icmp slt i32 %add530, %add535
  br i1 %cmp536, label %cond.true.538, label %cond.false.544

cond.true.538:                                    ; preds = %cond.true.520
  %316 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b539 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %316, i32 0, i32 1
  %317 = load i8, i8* %b539, align 1
  %conv540 = zext i8 %317 to i32
  %318 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c541 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %318, i32 0, i32 2
  %319 = load i8, i8* %c541, align 1
  %conv542 = zext i8 %319 to i32
  %add543 = add nsw i32 %conv540, %conv542
  br label %cond.end.550

cond.false.544:                                   ; preds = %cond.true.520
  %320 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a545 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %320, i32 0, i32 0
  %321 = load i8, i8* %a545, align 1
  %conv546 = zext i8 %321 to i32
  %322 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d547 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %322, i32 0, i32 3
  %323 = load i8, i8* %d547, align 1
  %conv548 = zext i8 %323 to i32
  %add549 = add nsw i32 %conv546, %conv548
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.false.544, %cond.true.538
  %cond551 = phi i32 [ %add543, %cond.true.538 ], [ %add549, %cond.false.544 ]
  %cmp552 = icmp slt i32 %add525, %cond551
  br i1 %cmp552, label %cond.true.554, label %cond.false.560

cond.true.554:                                    ; preds = %cond.end.550
  %324 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c555 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %324, i32 0, i32 2
  %325 = load i8, i8* %c555, align 1
  %conv556 = zext i8 %325 to i32
  %326 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c557 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %326, i32 0, i32 2
  %327 = load i8, i8* %c557, align 1
  %conv558 = zext i8 %327 to i32
  %add559 = add nsw i32 %conv556, %conv558
  br label %cond.end.587

cond.false.560:                                   ; preds = %cond.end.550
  %328 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a561 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %328, i32 0, i32 0
  %329 = load i8, i8* %a561, align 1
  %conv562 = zext i8 %329 to i32
  %330 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d563 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %330, i32 0, i32 3
  %331 = load i8, i8* %d563, align 1
  %conv564 = zext i8 %331 to i32
  %add565 = add nsw i32 %conv562, %conv564
  %332 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b566 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %332, i32 0, i32 1
  %333 = load i8, i8* %b566, align 1
  %conv567 = zext i8 %333 to i32
  %334 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c568 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %334, i32 0, i32 2
  %335 = load i8, i8* %c568, align 1
  %conv569 = zext i8 %335 to i32
  %add570 = add nsw i32 %conv567, %conv569
  %cmp571 = icmp slt i32 %add565, %add570
  br i1 %cmp571, label %cond.true.573, label %cond.false.579

cond.true.573:                                    ; preds = %cond.false.560
  %336 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b574 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %336, i32 0, i32 1
  %337 = load i8, i8* %b574, align 1
  %conv575 = zext i8 %337 to i32
  %338 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c576 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %338, i32 0, i32 2
  %339 = load i8, i8* %c576, align 1
  %conv577 = zext i8 %339 to i32
  %add578 = add nsw i32 %conv575, %conv577
  br label %cond.end.585

cond.false.579:                                   ; preds = %cond.false.560
  %340 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %a580 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %340, i32 0, i32 0
  %341 = load i8, i8* %a580, align 1
  %conv581 = zext i8 %341 to i32
  %342 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d582 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %342, i32 0, i32 3
  %343 = load i8, i8* %d582, align 1
  %conv583 = zext i8 %343 to i32
  %add584 = add nsw i32 %conv581, %conv583
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.579, %cond.true.573
  %cond586 = phi i32 [ %add578, %cond.true.573 ], [ %add584, %cond.false.579 ]
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.end.585, %cond.true.554
  %cond588 = phi i32 [ %add559, %cond.true.554 ], [ %cond586, %cond.end.585 ]
  br label %cond.end.658

cond.false.589:                                   ; preds = %cond.end.516
  %344 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c590 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %344, i32 0, i32 2
  %345 = load i8, i8* %c590, align 1
  %conv591 = zext i8 %345 to i32
  %346 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c592 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %346, i32 0, i32 2
  %347 = load i8, i8* %c592, align 1
  %conv593 = zext i8 %347 to i32
  %add594 = add nsw i32 %conv591, %conv593
  %348 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d595 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %348, i32 0, i32 3
  %349 = load i8, i8* %d595, align 1
  %conv596 = zext i8 %349 to i32
  %350 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a597 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %350, i32 0, i32 0
  %351 = load i8, i8* %a597, align 1
  %conv598 = zext i8 %351 to i32
  %add599 = add nsw i32 %conv596, %conv598
  %352 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c600 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %352, i32 0, i32 2
  %353 = load i8, i8* %c600, align 1
  %conv601 = zext i8 %353 to i32
  %354 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b602 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %354, i32 0, i32 1
  %355 = load i8, i8* %b602, align 1
  %conv603 = zext i8 %355 to i32
  %add604 = add nsw i32 %conv601, %conv603
  %cmp605 = icmp slt i32 %add599, %add604
  br i1 %cmp605, label %cond.true.607, label %cond.false.613

cond.true.607:                                    ; preds = %cond.false.589
  %356 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c608 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %356, i32 0, i32 2
  %357 = load i8, i8* %c608, align 1
  %conv609 = zext i8 %357 to i32
  %358 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b610 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %358, i32 0, i32 1
  %359 = load i8, i8* %b610, align 1
  %conv611 = zext i8 %359 to i32
  %add612 = add nsw i32 %conv609, %conv611
  br label %cond.end.619

cond.false.613:                                   ; preds = %cond.false.589
  %360 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d614 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %360, i32 0, i32 3
  %361 = load i8, i8* %d614, align 1
  %conv615 = zext i8 %361 to i32
  %362 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a616 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %362, i32 0, i32 0
  %363 = load i8, i8* %a616, align 1
  %conv617 = zext i8 %363 to i32
  %add618 = add nsw i32 %conv615, %conv617
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.613, %cond.true.607
  %cond620 = phi i32 [ %add612, %cond.true.607 ], [ %add618, %cond.false.613 ]
  %cmp621 = icmp slt i32 %add594, %cond620
  br i1 %cmp621, label %cond.true.623, label %cond.false.629

cond.true.623:                                    ; preds = %cond.end.619
  %364 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c624 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %364, i32 0, i32 2
  %365 = load i8, i8* %c624, align 1
  %conv625 = zext i8 %365 to i32
  %366 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c626 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %366, i32 0, i32 2
  %367 = load i8, i8* %c626, align 1
  %conv627 = zext i8 %367 to i32
  %add628 = add nsw i32 %conv625, %conv627
  br label %cond.end.656

cond.false.629:                                   ; preds = %cond.end.619
  %368 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d630 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %368, i32 0, i32 3
  %369 = load i8, i8* %d630, align 1
  %conv631 = zext i8 %369 to i32
  %370 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a632 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %370, i32 0, i32 0
  %371 = load i8, i8* %a632, align 1
  %conv633 = zext i8 %371 to i32
  %add634 = add nsw i32 %conv631, %conv633
  %372 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c635 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %372, i32 0, i32 2
  %373 = load i8, i8* %c635, align 1
  %conv636 = zext i8 %373 to i32
  %374 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b637 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %374, i32 0, i32 1
  %375 = load i8, i8* %b637, align 1
  %conv638 = zext i8 %375 to i32
  %add639 = add nsw i32 %conv636, %conv638
  %cmp640 = icmp slt i32 %add634, %add639
  br i1 %cmp640, label %cond.true.642, label %cond.false.648

cond.true.642:                                    ; preds = %cond.false.629
  %376 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c643 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %376, i32 0, i32 2
  %377 = load i8, i8* %c643, align 1
  %conv644 = zext i8 %377 to i32
  %378 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b645 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %378, i32 0, i32 1
  %379 = load i8, i8* %b645, align 1
  %conv646 = zext i8 %379 to i32
  %add647 = add nsw i32 %conv644, %conv646
  br label %cond.end.654

cond.false.648:                                   ; preds = %cond.false.629
  %380 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d649 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %380, i32 0, i32 3
  %381 = load i8, i8* %d649, align 1
  %conv650 = zext i8 %381 to i32
  %382 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %a651 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %382, i32 0, i32 0
  %383 = load i8, i8* %a651, align 1
  %conv652 = zext i8 %383 to i32
  %add653 = add nsw i32 %conv650, %conv652
  br label %cond.end.654

cond.end.654:                                     ; preds = %cond.false.648, %cond.true.642
  %cond655 = phi i32 [ %add647, %cond.true.642 ], [ %add653, %cond.false.648 ]
  br label %cond.end.656

cond.end.656:                                     ; preds = %cond.end.654, %cond.true.623
  %cond657 = phi i32 [ %add628, %cond.true.623 ], [ %cond655, %cond.end.654 ]
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.end.656, %cond.end.587
  %cond659 = phi i32 [ %cond588, %cond.end.587 ], [ %cond657, %cond.end.656 ]
  %conv660 = trunc i32 %cond659 to i8
  %c661 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 2
  store i8 %conv660, i8* %c661, align 1
  %384 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d662 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %384, i32 0, i32 3
  %385 = load i8, i8* %d662, align 1
  %conv663 = zext i8 %385 to i32
  %386 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b664 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %386, i32 0, i32 1
  %387 = load i8, i8* %b664, align 1
  %conv665 = zext i8 %387 to i32
  %add666 = add nsw i32 %conv663, %conv665
  %388 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b667 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %388, i32 0, i32 1
  %389 = load i8, i8* %b667, align 1
  %conv668 = zext i8 %389 to i32
  %390 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d669 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %390, i32 0, i32 3
  %391 = load i8, i8* %d669, align 1
  %conv670 = zext i8 %391 to i32
  %add671 = add nsw i32 %conv668, %conv670
  %cmp672 = icmp slt i32 %add666, %add671
  br i1 %cmp672, label %cond.true.674, label %cond.false.680

cond.true.674:                                    ; preds = %cond.end.658
  %392 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b675 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %392, i32 0, i32 1
  %393 = load i8, i8* %b675, align 1
  %conv676 = zext i8 %393 to i32
  %394 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d677 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %394, i32 0, i32 3
  %395 = load i8, i8* %d677, align 1
  %conv678 = zext i8 %395 to i32
  %add679 = add nsw i32 %conv676, %conv678
  br label %cond.end.686

cond.false.680:                                   ; preds = %cond.end.658
  %396 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d681 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %396, i32 0, i32 3
  %397 = load i8, i8* %d681, align 1
  %conv682 = zext i8 %397 to i32
  %398 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b683 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %398, i32 0, i32 1
  %399 = load i8, i8* %b683, align 1
  %conv684 = zext i8 %399 to i32
  %add685 = add nsw i32 %conv682, %conv684
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.false.680, %cond.true.674
  %cond687 = phi i32 [ %add679, %cond.true.674 ], [ %add685, %cond.false.680 ]
  %400 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d688 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %400, i32 0, i32 3
  %401 = load i8, i8* %d688, align 1
  %conv689 = zext i8 %401 to i32
  %402 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c690 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %402, i32 0, i32 2
  %403 = load i8, i8* %c690, align 1
  %conv691 = zext i8 %403 to i32
  %add692 = add nsw i32 %conv689, %conv691
  %404 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c693 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %404, i32 0, i32 2
  %405 = load i8, i8* %c693, align 1
  %conv694 = zext i8 %405 to i32
  %406 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d695 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %406, i32 0, i32 3
  %407 = load i8, i8* %d695, align 1
  %conv696 = zext i8 %407 to i32
  %add697 = add nsw i32 %conv694, %conv696
  %cmp698 = icmp slt i32 %add692, %add697
  br i1 %cmp698, label %cond.true.700, label %cond.false.706

cond.true.700:                                    ; preds = %cond.end.686
  %408 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d701 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %408, i32 0, i32 3
  %409 = load i8, i8* %d701, align 1
  %conv702 = zext i8 %409 to i32
  %410 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c703 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %410, i32 0, i32 2
  %411 = load i8, i8* %c703, align 1
  %conv704 = zext i8 %411 to i32
  %add705 = add nsw i32 %conv702, %conv704
  br label %cond.end.712

cond.false.706:                                   ; preds = %cond.end.686
  %412 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c707 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %412, i32 0, i32 2
  %413 = load i8, i8* %c707, align 1
  %conv708 = zext i8 %413 to i32
  %414 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d709 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %414, i32 0, i32 3
  %415 = load i8, i8* %d709, align 1
  %conv710 = zext i8 %415 to i32
  %add711 = add nsw i32 %conv708, %conv710
  br label %cond.end.712

cond.end.712:                                     ; preds = %cond.false.706, %cond.true.700
  %cond713 = phi i32 [ %add705, %cond.true.700 ], [ %add711, %cond.false.706 ]
  %cmp714 = icmp slt i32 %cond687, %cond713
  br i1 %cmp714, label %cond.true.716, label %cond.false.743

cond.true.716:                                    ; preds = %cond.end.712
  %416 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d717 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %416, i32 0, i32 3
  %417 = load i8, i8* %d717, align 1
  %conv718 = zext i8 %417 to i32
  %418 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c719 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %418, i32 0, i32 2
  %419 = load i8, i8* %c719, align 1
  %conv720 = zext i8 %419 to i32
  %add721 = add nsw i32 %conv718, %conv720
  %420 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c722 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %420, i32 0, i32 2
  %421 = load i8, i8* %c722, align 1
  %conv723 = zext i8 %421 to i32
  %422 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d724 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %422, i32 0, i32 3
  %423 = load i8, i8* %d724, align 1
  %conv725 = zext i8 %423 to i32
  %add726 = add nsw i32 %conv723, %conv725
  %cmp727 = icmp slt i32 %add721, %add726
  br i1 %cmp727, label %cond.true.729, label %cond.false.735

cond.true.729:                                    ; preds = %cond.true.716
  %424 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d730 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %424, i32 0, i32 3
  %425 = load i8, i8* %d730, align 1
  %conv731 = zext i8 %425 to i32
  %426 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c732 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %426, i32 0, i32 2
  %427 = load i8, i8* %c732, align 1
  %conv733 = zext i8 %427 to i32
  %add734 = add nsw i32 %conv731, %conv733
  br label %cond.end.741

cond.false.735:                                   ; preds = %cond.true.716
  %428 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c736 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %428, i32 0, i32 2
  %429 = load i8, i8* %c736, align 1
  %conv737 = zext i8 %429 to i32
  %430 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d738 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %430, i32 0, i32 3
  %431 = load i8, i8* %d738, align 1
  %conv739 = zext i8 %431 to i32
  %add740 = add nsw i32 %conv737, %conv739
  br label %cond.end.741

cond.end.741:                                     ; preds = %cond.false.735, %cond.true.729
  %cond742 = phi i32 [ %add734, %cond.true.729 ], [ %add740, %cond.false.735 ]
  br label %cond.end.770

cond.false.743:                                   ; preds = %cond.end.712
  %432 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d744 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %432, i32 0, i32 3
  %433 = load i8, i8* %d744, align 1
  %conv745 = zext i8 %433 to i32
  %434 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b746 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %434, i32 0, i32 1
  %435 = load i8, i8* %b746, align 1
  %conv747 = zext i8 %435 to i32
  %add748 = add nsw i32 %conv745, %conv747
  %436 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b749 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %436, i32 0, i32 1
  %437 = load i8, i8* %b749, align 1
  %conv750 = zext i8 %437 to i32
  %438 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d751 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %438, i32 0, i32 3
  %439 = load i8, i8* %d751, align 1
  %conv752 = zext i8 %439 to i32
  %add753 = add nsw i32 %conv750, %conv752
  %cmp754 = icmp slt i32 %add748, %add753
  br i1 %cmp754, label %cond.true.756, label %cond.false.762

cond.true.756:                                    ; preds = %cond.false.743
  %440 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b757 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %440, i32 0, i32 1
  %441 = load i8, i8* %b757, align 1
  %conv758 = zext i8 %441 to i32
  %442 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d759 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %442, i32 0, i32 3
  %443 = load i8, i8* %d759, align 1
  %conv760 = zext i8 %443 to i32
  %add761 = add nsw i32 %conv758, %conv760
  br label %cond.end.768

cond.false.762:                                   ; preds = %cond.false.743
  %444 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d763 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %444, i32 0, i32 3
  %445 = load i8, i8* %d763, align 1
  %conv764 = zext i8 %445 to i32
  %446 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b765 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %446, i32 0, i32 1
  %447 = load i8, i8* %b765, align 1
  %conv766 = zext i8 %447 to i32
  %add767 = add nsw i32 %conv764, %conv766
  br label %cond.end.768

cond.end.768:                                     ; preds = %cond.false.762, %cond.true.756
  %cond769 = phi i32 [ %add761, %cond.true.756 ], [ %add767, %cond.false.762 ]
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.end.768, %cond.end.741
  %cond771 = phi i32 [ %cond742, %cond.end.741 ], [ %cond769, %cond.end.768 ]
  %conv772 = trunc i32 %cond771 to i8
  %d773 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 3
  store i8 %conv772, i8* %d773, align 1
  %448 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d774 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %448, i32 0, i32 3
  %449 = load i8, i8* %d774, align 1
  %conv775 = zext i8 %449 to i32
  %450 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c776 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %450, i32 0, i32 2
  %451 = load i8, i8* %c776, align 1
  %conv777 = zext i8 %451 to i32
  %sub = sub nsw i32 %conv775, %conv777
  %cmp778 = icmp eq i32 %sub, 2
  br i1 %cmp778, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end.770
  %452 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c780 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %452, i32 0, i32 2
  %453 = load i8, i8* %c780, align 1
  %conv781 = zext i8 %453 to i32
  %454 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b782 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %454, i32 0, i32 1
  %455 = load i8, i8* %b782, align 1
  %conv783 = zext i8 %455 to i32
  %sub784 = sub nsw i32 %conv781, %conv783
  %cmp785 = icmp eq i32 %sub784, 1
  br i1 %cmp785, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end.770
  %456 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c787 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %456, i32 0, i32 2
  %457 = load i8, i8* %c787, align 1
  %conv788 = zext i8 %457 to i32
  %458 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b789 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %458, i32 0, i32 1
  %459 = load i8, i8* %b789, align 1
  %conv790 = zext i8 %459 to i32
  %sub791 = sub nsw i32 %conv788, %conv790
  %cmp792 = icmp eq i32 %sub791, 1
  br i1 %cmp792, label %land.lhs.true.794, label %if.end

land.lhs.true.794:                                ; preds = %lor.lhs.false
  %460 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d795 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %460, i32 0, i32 3
  %461 = load i8, i8* %d795, align 1
  %conv796 = zext i8 %461 to i32
  %462 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c797 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %462, i32 0, i32 2
  %463 = load i8, i8* %c797, align 1
  %conv798 = zext i8 %463 to i32
  %sub799 = sub nsw i32 %conv796, %conv798
  %cmp800 = icmp eq i32 %sub799, 2
  br i1 %cmp800, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.794, %land.lhs.true
  %464 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c802 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %464, i32 0, i32 2
  %465 = load i8, i8* %c802, align 1
  %conv803 = zext i8 %465 to i32
  %466 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d804 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %466, i32 0, i32 3
  %467 = load i8, i8* %d804, align 1
  %conv805 = zext i8 %467 to i32
  %add806 = add nsw i32 %conv803, %conv805
  %468 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d807 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %468, i32 0, i32 3
  %469 = load i8, i8* %d807, align 1
  %conv808 = zext i8 %469 to i32
  %470 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b809 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %470, i32 0, i32 1
  %471 = load i8, i8* %b809, align 1
  %conv810 = zext i8 %471 to i32
  %add811 = add nsw i32 %conv808, %conv810
  %cmp812 = icmp slt i32 %add806, %add811
  br i1 %cmp812, label %cond.true.814, label %cond.false.820

cond.true.814:                                    ; preds = %if.then
  %472 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c815 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %472, i32 0, i32 2
  %473 = load i8, i8* %c815, align 1
  %conv816 = zext i8 %473 to i32
  %474 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d817 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %474, i32 0, i32 3
  %475 = load i8, i8* %d817, align 1
  %conv818 = zext i8 %475 to i32
  %add819 = add nsw i32 %conv816, %conv818
  br label %cond.end.826

cond.false.820:                                   ; preds = %if.then
  %476 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d821 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %476, i32 0, i32 3
  %477 = load i8, i8* %d821, align 1
  %conv822 = zext i8 %477 to i32
  %478 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b823 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %478, i32 0, i32 1
  %479 = load i8, i8* %b823, align 1
  %conv824 = zext i8 %479 to i32
  %add825 = add nsw i32 %conv822, %conv824
  br label %cond.end.826

cond.end.826:                                     ; preds = %cond.false.820, %cond.true.814
  %cond827 = phi i32 [ %add819, %cond.true.814 ], [ %add825, %cond.false.820 ]
  %480 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d828 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %480, i32 0, i32 3
  %481 = load i8, i8* %d828, align 1
  %conv829 = zext i8 %481 to i32
  %482 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c830 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %482, i32 0, i32 2
  %483 = load i8, i8* %c830, align 1
  %conv831 = zext i8 %483 to i32
  %add832 = add nsw i32 %conv829, %conv831
  %484 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b833 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %484, i32 0, i32 1
  %485 = load i8, i8* %b833, align 1
  %conv834 = zext i8 %485 to i32
  %486 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d835 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %486, i32 0, i32 3
  %487 = load i8, i8* %d835, align 1
  %conv836 = zext i8 %487 to i32
  %add837 = add nsw i32 %conv834, %conv836
  %cmp838 = icmp slt i32 %add832, %add837
  br i1 %cmp838, label %cond.true.840, label %cond.false.846

cond.true.840:                                    ; preds = %cond.end.826
  %488 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d841 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %488, i32 0, i32 3
  %489 = load i8, i8* %d841, align 1
  %conv842 = zext i8 %489 to i32
  %490 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c843 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %490, i32 0, i32 2
  %491 = load i8, i8* %c843, align 1
  %conv844 = zext i8 %491 to i32
  %add845 = add nsw i32 %conv842, %conv844
  br label %cond.end.852

cond.false.846:                                   ; preds = %cond.end.826
  %492 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b847 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %492, i32 0, i32 1
  %493 = load i8, i8* %b847, align 1
  %conv848 = zext i8 %493 to i32
  %494 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d849 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %494, i32 0, i32 3
  %495 = load i8, i8* %d849, align 1
  %conv850 = zext i8 %495 to i32
  %add851 = add nsw i32 %conv848, %conv850
  br label %cond.end.852

cond.end.852:                                     ; preds = %cond.false.846, %cond.true.840
  %cond853 = phi i32 [ %add845, %cond.true.840 ], [ %add851, %cond.false.846 ]
  %cmp854 = icmp slt i32 %cond827, %cond853
  br i1 %cmp854, label %cond.true.856, label %cond.false.883

cond.true.856:                                    ; preds = %cond.end.852
  %496 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d857 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %496, i32 0, i32 3
  %497 = load i8, i8* %d857, align 1
  %conv858 = zext i8 %497 to i32
  %498 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c859 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %498, i32 0, i32 2
  %499 = load i8, i8* %c859, align 1
  %conv860 = zext i8 %499 to i32
  %add861 = add nsw i32 %conv858, %conv860
  %500 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b862 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %500, i32 0, i32 1
  %501 = load i8, i8* %b862, align 1
  %conv863 = zext i8 %501 to i32
  %502 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d864 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %502, i32 0, i32 3
  %503 = load i8, i8* %d864, align 1
  %conv865 = zext i8 %503 to i32
  %add866 = add nsw i32 %conv863, %conv865
  %cmp867 = icmp slt i32 %add861, %add866
  br i1 %cmp867, label %cond.true.869, label %cond.false.875

cond.true.869:                                    ; preds = %cond.true.856
  %504 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d870 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %504, i32 0, i32 3
  %505 = load i8, i8* %d870, align 1
  %conv871 = zext i8 %505 to i32
  %506 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %c872 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %506, i32 0, i32 2
  %507 = load i8, i8* %c872, align 1
  %conv873 = zext i8 %507 to i32
  %add874 = add nsw i32 %conv871, %conv873
  br label %cond.end.881

cond.false.875:                                   ; preds = %cond.true.856
  %508 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %b876 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %508, i32 0, i32 1
  %509 = load i8, i8* %b876, align 1
  %conv877 = zext i8 %509 to i32
  %510 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d878 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %510, i32 0, i32 3
  %511 = load i8, i8* %d878, align 1
  %conv879 = zext i8 %511 to i32
  %add880 = add nsw i32 %conv877, %conv879
  br label %cond.end.881

cond.end.881:                                     ; preds = %cond.false.875, %cond.true.869
  %cond882 = phi i32 [ %add874, %cond.true.869 ], [ %add880, %cond.false.875 ]
  br label %cond.end.910

cond.false.883:                                   ; preds = %cond.end.852
  %512 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c884 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %512, i32 0, i32 2
  %513 = load i8, i8* %c884, align 1
  %conv885 = zext i8 %513 to i32
  %514 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d886 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %514, i32 0, i32 3
  %515 = load i8, i8* %d886, align 1
  %conv887 = zext i8 %515 to i32
  %add888 = add nsw i32 %conv885, %conv887
  %516 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d889 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %516, i32 0, i32 3
  %517 = load i8, i8* %d889, align 1
  %conv890 = zext i8 %517 to i32
  %518 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b891 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %518, i32 0, i32 1
  %519 = load i8, i8* %b891, align 1
  %conv892 = zext i8 %519 to i32
  %add893 = add nsw i32 %conv890, %conv892
  %cmp894 = icmp slt i32 %add888, %add893
  br i1 %cmp894, label %cond.true.896, label %cond.false.902

cond.true.896:                                    ; preds = %cond.false.883
  %520 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %c897 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %520, i32 0, i32 2
  %521 = load i8, i8* %c897, align 1
  %conv898 = zext i8 %521 to i32
  %522 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %d899 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %522, i32 0, i32 3
  %523 = load i8, i8* %d899, align 1
  %conv900 = zext i8 %523 to i32
  %add901 = add nsw i32 %conv898, %conv900
  br label %cond.end.908

cond.false.902:                                   ; preds = %cond.false.883
  %524 = load %struct.eyevalue*, %struct.eyevalue** %e1.addr, align 8
  %d903 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %524, i32 0, i32 3
  %525 = load i8, i8* %d903, align 1
  %conv904 = zext i8 %525 to i32
  %526 = load %struct.eyevalue*, %struct.eyevalue** %e2.addr, align 8
  %b905 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %526, i32 0, i32 1
  %527 = load i8, i8* %b905, align 1
  %conv906 = zext i8 %527 to i32
  %add907 = add nsw i32 %conv904, %conv906
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.false.902, %cond.true.896
  %cond909 = phi i32 [ %add901, %cond.true.896 ], [ %add907, %cond.false.902 ]
  br label %cond.end.910

cond.end.910:                                     ; preds = %cond.end.908, %cond.end.881
  %cond911 = phi i32 [ %cond882, %cond.end.881 ], [ %cond909, %cond.end.908 ]
  %conv912 = trunc i32 %cond911 to i8
  %d913 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 3
  store i8 %conv912, i8* %d913, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.910, %land.lhs.true.794, %lor.lhs.false
  %a914 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 0
  %528 = load i8, i8* %a914, align 1
  %529 = load %struct.eyevalue*, %struct.eyevalue** %sum.addr, align 8
  %a915 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %529, i32 0, i32 0
  store i8 %528, i8* %a915, align 1
  %b916 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 1
  %530 = load i8, i8* %b916, align 1
  %531 = load %struct.eyevalue*, %struct.eyevalue** %sum.addr, align 8
  %b917 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %531, i32 0, i32 1
  store i8 %530, i8* %b917, align 1
  %c918 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 2
  %532 = load i8, i8* %c918, align 1
  %533 = load %struct.eyevalue*, %struct.eyevalue** %sum.addr, align 8
  %c919 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %533, i32 0, i32 2
  store i8 %532, i8* %c919, align 1
  %d920 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %res, i32 0, i32 3
  %534 = load i8, i8* %d920, align 1
  %535 = load %struct.eyevalue*, %struct.eyevalue** %sum.addr, align 8
  %d921 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %535, i32 0, i32 3
  store i8 %534, i8* %d921, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @eye_move_urgency(%struct.eyevalue* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.eyevalue*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.eyevalue* %e, %struct.eyevalue** %e.addr, align 8
  %0 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a1 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %0, i32 0, i32 0
  %1 = load i8, i8* %a1, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %a3 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %2, i32 0, i32 0
  %3 = load i8, i8* %a3, align 1
  %conv4 = zext i8 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %a, align 4
  %4 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b5 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %4, i32 0, i32 1
  %5 = load i8, i8* %b5, align 1
  %conv6 = zext i8 %5 to i32
  %cmp7 = icmp slt i32 %conv6, 2
  br i1 %cmp7, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.end
  %6 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %b10 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %6, i32 0, i32 1
  %7 = load i8, i8* %b10, align 1
  %conv11 = zext i8 %7 to i32
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i32 [ %conv11, %cond.true.9 ], [ 2, %cond.false.12 ]
  store i32 %cond14, i32* %b, align 4
  %8 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c15 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %8, i32 0, i32 2
  %9 = load i8, i8* %c15, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp slt i32 %conv16, 2
  br i1 %cmp17, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.end.13
  %10 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %c20 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %10, i32 0, i32 2
  %11 = load i8, i8* %c20, align 1
  %conv21 = zext i8 %11 to i32
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end.13
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.19
  %cond24 = phi i32 [ %conv21, %cond.true.19 ], [ 2, %cond.false.22 ]
  store i32 %cond24, i32* %c, align 4
  %12 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d25 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %12, i32 0, i32 3
  %13 = load i8, i8* %d25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp slt i32 %conv26, 2
  br i1 %cmp27, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.end.23
  %14 = load %struct.eyevalue*, %struct.eyevalue** %e.addr, align 8
  %d30 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %14, i32 0, i32 3
  %15 = load i8, i8* %d30, align 1
  %conv31 = zext i8 %15 to i32
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.23
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.29
  %cond34 = phi i32 [ %conv31, %cond.true.29 ], [ 2, %cond.false.32 ]
  store i32 %cond34, i32* %d, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %16, %17
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.33
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end.33
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %c, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, i32* %b, align 4
  %sub = sub nsw i32 %add, %20
  %21 = load i32, i32* %a, align 4
  %sub37 = sub nsw i32 %sub, %21
  store i32 %sub37, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gg_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @test_eyeshape(i32 %eyesize, i32* %eye_vertices) #0 {
entry:
  %eyesize.addr = alloca i32, align 4
  %eye_vertices.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %N = alloca i32, align 4
  %mx = alloca [400 x i32], align 16
  %pos = alloca i32, align 4
  %str = alloca i32, align 4
  %attack_code = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %defense_code = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %starting_position = alloca %struct.board_state, align 4
  %valid = alloca i32, align 4
  %internal_stones = alloca i32, align 4
  store i32 %eyesize, i32* %eyesize.addr, align 4
  store i32* %eye_vertices, i32** %eye_vertices.addr, align 8
  store i32 0, i32* %str, align 4
  call void @clear_board()
  call void @reset_engine()
  %0 = bitcast [400 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %eyesize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ult i32 %5, 421
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %rem = srem i32 %15, 20
  %sub12 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1909, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %sub, i32 %sub12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %17, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom15
  store i32 1, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.56, %for.end
  %20 = load i32, i32* %pos, align 4
  %cmp18 = icmp slt i32 %20, 400
  br i1 %cmp18, label %for.body.20, label %for.end.58

for.body.20:                                      ; preds = %for.cond.17
  %21 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %22 to i32
  %cmp24 = icmp ne i32 %conv23, 3
  br i1 %cmp24, label %lor.lhs.false, label %if.then.30

lor.lhs.false:                                    ; preds = %for.body.20
  %23 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %24, 1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %for.body.20
  br label %for.inc.56

if.end.31:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.53, %if.end.31
  %25 = load i32, i32* %k, align 4
  %cmp33 = icmp slt i32 %25, 8
  br i1 %cmp33, label %for.body.35, label %for.end.55

for.body.35:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %pos, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %add = add nsw i32 %26, %28
  %idxprom38 = sext i32 %add to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %29 to i32
  %cmp41 = icmp ne i32 %conv40, 3
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.52

land.lhs.true.43:                                 ; preds = %for.body.35
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom44
  %32 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %30, %32
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom47
  %33 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %33, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.43
  %34 = load i32, i32* %pos, align 4
  call void @play_move(i32 %34, i32 1)
  %35 = load i32, i32* %pos, align 4
  store i32 %35, i32* %str, align 4
  br label %for.end.55

if.end.52:                                        ; preds = %land.lhs.true.43, %for.body.35
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %36 = load i32, i32* %k, align 4
  %inc54 = add nsw i32 %36, 1
  store i32 %inc54, i32* %k, align 4
  br label %for.cond.32

for.end.55:                                       ; preds = %if.then.51, %for.cond.32
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55, %if.then.30
  %37 = load i32, i32* %pos, align 4
  %inc57 = add nsw i32 %37, 1
  store i32 %inc57, i32* %pos, align 4
  br label %for.cond.17

for.end.58:                                       ; preds = %for.cond.17
  store i32 21, i32* %pos, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.99, %for.end.58
  %38 = load i32, i32* %pos, align 4
  %cmp60 = icmp slt i32 %38, 400
  br i1 %cmp60, label %for.body.62, label %for.end.101

for.body.62:                                      ; preds = %for.cond.59
  %39 = load i32, i32* %pos, align 4
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom63
  %40 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %40, 1
  br i1 %cmp65, label %if.then.74, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %for.body.62
  %41 = load i32, i32* %pos, align 4
  %idxprom68 = sext i32 %41 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %42 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %42 to i32
  %cmp71 = icmp ne i32 %conv70, 0
  br i1 %cmp71, label %if.then.74, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.67
  %43 = load i32, i32* %pos, align 4
  %44 = load i32, i32* %str, align 4
  %call = call i32 @liberty_of_string(i32 %43, i32 %44)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.73, %lor.lhs.false.67, %for.body.62
  br label %for.inc.99

if.end.75:                                        ; preds = %lor.lhs.false.73
  store i32 0, i32* %k, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.96, %if.end.75
  %45 = load i32, i32* %k, align 4
  %cmp77 = icmp slt i32 %45, 8
  br i1 %cmp77, label %for.body.79, label %for.end.98

for.body.79:                                      ; preds = %for.cond.76
  %46 = load i32, i32* %pos, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %47 to i64
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom80
  %48 = load i32, i32* %arrayidx81, align 4
  %add82 = add nsw i32 %46, %48
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom83
  %49 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %49 to i32
  %cmp86 = icmp ne i32 %conv85, 3
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.95

land.lhs.true.88:                                 ; preds = %for.body.79
  %50 = load i32, i32* %pos, align 4
  %51 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %51 to i64
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom89
  %52 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %50, %52
  %53 = load i32, i32* %str, align 4
  %call92 = call i32 @liberty_of_string(i32 %add91, i32 %53)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %land.lhs.true.88
  %54 = load i32, i32* %pos, align 4
  call void @play_move(i32 %54, i32 2)
  br label %for.end.98

if.end.95:                                        ; preds = %land.lhs.true.88, %for.body.79
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %55 = load i32, i32* %k, align 4
  %inc97 = add nsw i32 %55, 1
  store i32 %inc97, i32* %k, align 4
  br label %for.cond.76

for.end.98:                                       ; preds = %if.then.94, %for.cond.76
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.end.98, %if.then.74
  %56 = load i32, i32* %pos, align 4
  %inc100 = add nsw i32 %56, 1
  store i32 %inc100, i32* %pos, align 4
  br label %for.cond.59

for.end.101:                                      ; preds = %for.cond.59
  %57 = load i32, i32* @verbose, align 4
  %tobool102 = icmp ne i32 %57, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.101
  call void @showboard(i32 0)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %for.end.101
  %58 = load i32, i32* @verbose, align 4
  store i32 %58, i32* %save_verbose, align 4
  store i32 0, i32* @verbose, align 4
  call void @store_board(%struct.board_state* %starting_position)
  %59 = load i32, i32* %eyesize.addr, align 4
  %shl = shl i32 1, %59
  store i32 %shl, i32* %N, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.269, %if.end.104
  %60 = load i32, i32* %n, align 4
  %61 = load i32, i32* %N, align 4
  %cmp106 = icmp slt i32 %60, %61
  br i1 %cmp106, label %for.body.108, label %for.end.271

for.body.108:                                     ; preds = %for.cond.105
  store i32 1, i32* %valid, align 4
  store i32 0, i32* %internal_stones, align 4
  call void @restore_board(%struct.board_state* %starting_position)
  store i32 0, i32* %k, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.126, %for.body.108
  %62 = load i32, i32* %k, align 4
  %63 = load i32, i32* %eyesize.addr, align 4
  %cmp110 = icmp slt i32 %62, %63
  br i1 %cmp110, label %for.body.112, label %for.end.128

for.body.112:                                     ; preds = %for.cond.109
  %64 = load i32, i32* %n, align 4
  %65 = load i32, i32* %k, align 4
  %shl113 = shl i32 1, %65
  %and = and i32 %64, %shl113
  %tobool114 = icmp ne i32 %and, 0
  br i1 %tobool114, label %if.then.115, label %if.end.125

if.then.115:                                      ; preds = %for.body.112
  %66 = load i32, i32* %k, align 4
  %idxprom116 = sext i32 %66 to i64
  %67 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %67, i64 %idxprom116
  %68 = load i32, i32* %arrayidx117, align 4
  %call118 = call i32 @is_legal(i32 %68, i32 2)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %if.then.115
  store i32 0, i32* %valid, align 4
  br label %for.end.128

if.end.121:                                       ; preds = %if.then.115
  %69 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %69 to i64
  %70 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %70, i64 %idxprom122
  %71 = load i32, i32* %arrayidx123, align 4
  call void @play_move(i32 %71, i32 2)
  %72 = load i32, i32* %internal_stones, align 4
  %inc124 = add nsw i32 %72, 1
  store i32 %inc124, i32* %internal_stones, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.121, %for.body.112
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %73 = load i32, i32* %k, align 4
  %inc127 = add nsw i32 %73, 1
  store i32 %inc127, i32* %k, align 4
  br label %for.cond.109

for.end.128:                                      ; preds = %if.then.120, %for.cond.109
  %74 = load i32, i32* %valid, align 4
  %tobool129 = icmp ne i32 %74, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %for.end.128
  br label %for.inc.269

if.end.131:                                       ; preds = %for.end.128
  %75 = load i32, i32* %save_verbose, align 4
  %cmp132 = icmp sgt i32 %75, 1
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.131
  call void @showboard(i32 0)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.end.131
  call void @examine_position(i32 1, i32 3)
  %76 = load i32, i32* %str, align 4
  %call136 = call i32 @owl_attack(i32 %76, i32* %attack_point, i32* null, i32* null)
  store i32 %call136, i32* %attack_code, align 4
  %77 = load i32, i32* %attack_code, align 4
  %cmp137 = icmp eq i32 %77, 0
  br i1 %cmp137, label %if.then.139, label %if.else.197

if.then.139:                                      ; preds = %if.end.135
  store i32 0, i32* %k, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.167, %if.then.139
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %eyesize.addr, align 4
  %cmp141 = icmp slt i32 %78, %79
  br i1 %cmp141, label %for.body.143, label %for.end.169

for.body.143:                                     ; preds = %for.cond.140
  %80 = load i32, i32* %k, align 4
  %idxprom144 = sext i32 %80 to i64
  %81 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %81, i64 %idxprom144
  %82 = load i32, i32* %arrayidx145, align 4
  %idxprom146 = sext i32 %82 to i64
  %arrayidx147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom146
  %83 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %83 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.166

land.lhs.true.151:                                ; preds = %for.body.143
  %84 = load i32, i32* %k, align 4
  %idxprom152 = sext i32 %84 to i64
  %85 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %85, i64 %idxprom152
  %86 = load i32, i32* %arrayidx153, align 4
  %call154 = call i32 @is_legal(i32 %86, i32 2)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.166

land.lhs.true.156:                                ; preds = %land.lhs.true.151
  %87 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %87 to i64
  %88 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %88, i64 %idxprom157
  %89 = load i32, i32* %arrayidx158, align 4
  %90 = load i32, i32* %str, align 4
  %call159 = call i32 @owl_does_attack(i32 %89, i32 %90, i32* null)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %land.lhs.true.156
  %91 = load i32, i32* %str, align 4
  %92 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %92 to i64
  %93 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %93, i64 %idxprom162
  %94 = load i32, i32* %arrayidx163, align 4
  %call164 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i32 %91, i32 %94)
  call void @showboard(i32 0)
  %call165 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.161, %land.lhs.true.156, %land.lhs.true.151, %for.body.143
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %95 = load i32, i32* %k, align 4
  %inc168 = add nsw i32 %95, 1
  store i32 %inc168, i32* %k, align 4
  br label %for.cond.140

for.end.169:                                      ; preds = %for.cond.140
  %96 = load i32, i32* %internal_stones, align 4
  %97 = load i32, i32* %eyesize.addr, align 4
  %sub170 = sub nsw i32 %97, 1
  %cmp171 = icmp eq i32 %96, %sub170
  br i1 %cmp171, label %if.then.173, label %if.end.196

if.then.173:                                      ; preds = %for.end.169
  store i32 0, i32* %k, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.193, %if.then.173
  %98 = load i32, i32* %k, align 4
  %99 = load i32, i32* %eyesize.addr, align 4
  %cmp175 = icmp slt i32 %98, %99
  br i1 %cmp175, label %for.body.177, label %for.end.195

for.body.177:                                     ; preds = %for.cond.174
  %100 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %100 to i64
  %101 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %101, i64 %idxprom178
  %102 = load i32, i32* %arrayidx179, align 4
  %idxprom180 = sext i32 %102 to i64
  %arrayidx181 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom180
  %103 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %103 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.192

land.lhs.true.185:                                ; preds = %for.body.177
  %104 = load i32, i32* %k, align 4
  %idxprom186 = sext i32 %104 to i64
  %105 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %105, i64 %idxprom186
  %106 = load i32, i32* %arrayidx187, align 4
  %107 = load i32, i32* %str, align 4
  %call188 = call i32 @owl_does_defend(i32 %106, i32 %107, i32* null)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.end.192, label %if.then.190

if.then.190:                                      ; preds = %land.lhs.true.185
  %108 = load i32, i32* %str, align 4
  %call191 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0), i32 %108)
  call void @showboard(i32 0)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.190, %land.lhs.true.185, %for.body.177
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %109 = load i32, i32* %k, align 4
  %inc194 = add nsw i32 %109, 1
  store i32 %inc194, i32* %k, align 4
  br label %for.cond.174

for.end.195:                                      ; preds = %for.cond.174
  br label %if.end.196

if.end.196:                                       ; preds = %for.end.195, %for.end.169
  br label %if.end.268

if.else.197:                                      ; preds = %if.end.135
  %110 = load i32, i32* %str, align 4
  %call198 = call i32 @owl_defend(i32 %110, i32* %defense_point, i32* null, i32* null)
  store i32 %call198, i32* %defense_code, align 4
  %111 = load i32, i32* %defense_code, align 4
  %cmp199 = icmp eq i32 %111, 0
  br i1 %cmp199, label %if.then.201, label %if.else.232

if.then.201:                                      ; preds = %if.else.197
  store i32 0, i32* %k, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.229, %if.then.201
  %112 = load i32, i32* %k, align 4
  %113 = load i32, i32* %eyesize.addr, align 4
  %cmp203 = icmp slt i32 %112, %113
  br i1 %cmp203, label %for.body.205, label %for.end.231

for.body.205:                                     ; preds = %for.cond.202
  %114 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %114 to i64
  %115 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %115, i64 %idxprom206
  %116 = load i32, i32* %arrayidx207, align 4
  %idxprom208 = sext i32 %116 to i64
  %arrayidx209 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom208
  %117 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %117 to i32
  %cmp211 = icmp eq i32 %conv210, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.228

land.lhs.true.213:                                ; preds = %for.body.205
  %118 = load i32, i32* %k, align 4
  %idxprom214 = sext i32 %118 to i64
  %119 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %119, i64 %idxprom214
  %120 = load i32, i32* %arrayidx215, align 4
  %call216 = call i32 @is_legal(i32 %120, i32 1)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %land.lhs.true.218, label %if.end.228

land.lhs.true.218:                                ; preds = %land.lhs.true.213
  %121 = load i32, i32* %k, align 4
  %idxprom219 = sext i32 %121 to i64
  %122 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %122, i64 %idxprom219
  %123 = load i32, i32* %arrayidx220, align 4
  %124 = load i32, i32* %str, align 4
  %call221 = call i32 @owl_does_defend(i32 %123, i32 %124, i32* null)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.then.223, label %if.end.228

if.then.223:                                      ; preds = %land.lhs.true.218
  %125 = load i32, i32* %str, align 4
  %126 = load i32, i32* %k, align 4
  %idxprom224 = sext i32 %126 to i64
  %127 = load i32*, i32** %eye_vertices.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %127, i64 %idxprom224
  %128 = load i32, i32* %arrayidx225, align 4
  %call226 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i32 %125, i32 %128)
  call void @showboard(i32 0)
  %call227 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.223, %land.lhs.true.218, %land.lhs.true.213, %for.body.205
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %129 = load i32, i32* %k, align 4
  %inc230 = add nsw i32 %129, 1
  store i32 %inc230, i32* %k, align 4
  br label %for.cond.202

for.end.231:                                      ; preds = %for.cond.202
  br label %if.end.267

if.else.232:                                      ; preds = %if.else.197
  %130 = load i32, i32* %attack_point, align 4
  %idxprom233 = sext i32 %130 to i64
  %arrayidx234 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom233
  %131 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %131 to i32
  %cmp236 = icmp ne i32 %conv235, 0
  br i1 %cmp236, label %if.then.241, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.else.232
  %132 = load i32, i32* %attack_point, align 4
  %call239 = call i32 @is_legal(i32 %132, i32 2)
  %tobool240 = icmp ne i32 %call239, 0
  br i1 %tobool240, label %if.else.243, label %if.then.241

if.then.241:                                      ; preds = %lor.lhs.false.238, %if.else.232
  %133 = load i32, i32* %attack_point, align 4
  %call242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i32 %133)
  call void @showboard(i32 0)
  br label %if.end.249

if.else.243:                                      ; preds = %lor.lhs.false.238
  %134 = load i32, i32* %attack_point, align 4
  %135 = load i32, i32* %str, align 4
  %call244 = call i32 @owl_does_attack(i32 %134, i32 %135, i32* null)
  %tobool245 = icmp ne i32 %call244, 0
  br i1 %tobool245, label %if.end.248, label %if.then.246

if.then.246:                                      ; preds = %if.else.243
  %136 = load i32, i32* %attack_point, align 4
  %call247 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32 %136)
  call void @showboard(i32 0)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.246, %if.else.243
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.241
  %137 = load i32, i32* %defense_point, align 4
  %idxprom250 = sext i32 %137 to i64
  %arrayidx251 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom250
  %138 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %138 to i32
  %cmp253 = icmp ne i32 %conv252, 0
  br i1 %cmp253, label %if.then.258, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %if.end.249
  %139 = load i32, i32* %defense_point, align 4
  %call256 = call i32 @is_legal(i32 %139, i32 1)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.else.260, label %if.then.258

if.then.258:                                      ; preds = %lor.lhs.false.255, %if.end.249
  %140 = load i32, i32* %defense_point, align 4
  %call259 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 %140)
  call void @showboard(i32 0)
  br label %if.end.266

if.else.260:                                      ; preds = %lor.lhs.false.255
  %141 = load i32, i32* %defense_point, align 4
  %142 = load i32, i32* %str, align 4
  %call261 = call i32 @owl_does_defend(i32 %141, i32 %142, i32* null)
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end.265, label %if.then.263

if.then.263:                                      ; preds = %if.else.260
  %143 = load i32, i32* %defense_point, align 4
  %call264 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i32 %143)
  call void @showboard(i32 0)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %if.else.260
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.258
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %for.end.231
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.end.196
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268, %if.then.130
  %144 = load i32, i32* %n, align 4
  %inc270 = add nsw i32 %144, 1
  store i32 %inc270, i32* %n, align 4
  br label %for.cond.105

for.end.271:                                      ; preds = %for.cond.105
  %145 = load i32, i32* %save_verbose, align 4
  store i32 %145, i32* @verbose, align 4
  ret void
}

declare void @clear_board() #2

declare void @reset_engine() #2

declare void @play_move(i32, i32) #2

declare i32 @liberty_of_string(i32, i32) #2

declare void @showboard(i32) #2

declare void @store_board(%struct.board_state*) #2

declare void @restore_board(%struct.board_state*) #2

declare i32 @is_legal(i32, i32) #2

declare void @examine_position(i32, i32) #2

declare i32 @owl_attack(i32, i32*, i32*, i32*) #2

declare i32 @owl_does_attack(i32, i32, i32*) #2

declare i32 @owl_does_defend(i32, i32, i32*) #2

declare i32 @owl_defend(i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @find_half_and_false_eyes(i32 %color, %struct.eye_data* %eye, %struct.half_eye_data* %heye, i8* %find_mask) #0 {
entry:
  %color.addr = alloca i32, align 4
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %find_mask.addr = alloca i8*, align 8
  %eye_color = alloca i32, align 4
  %pos = alloca i32, align 4
  %sum = alloca float, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store i8* %find_mask, i8** %find_mask.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %cond = select i1 %cmp, i32 4, i32 5
  store i32 %cond, i32* %eye_color, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %cmp1 = icmp slt i32 %1, 400
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %find_mask.addr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %6, i64 %idxprom4
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %find_mask.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp sle i32 %conv8, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom11
  %color13 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 0
  %12 = load i32, i32* %color13, align 4
  %13 = load i32, i32* %eye_color, align 4
  %cmp14 = icmp ne i32 %12, %13
  br i1 %cmp14, label %if.then.27, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end
  %14 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %15, i64 %idxprom17
  %marginal = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx18, i32 0, i32 7
  %16 = load i8, i8* %marginal, align 1
  %conv19 = sext i8 %16 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %if.then.27, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.16
  %17 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i64 %idxprom22
  %neighbors = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx23, i32 0, i32 9
  %19 = load i8, i8* %neighbors, align 1
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp sgt i32 %conv24, 1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.16, %if.end
  br label %for.inc

if.end.28:                                        ; preds = %lor.lhs.false.21
  %20 = load i32, i32* %pos, align 4
  %21 = load i32, i32* %color.addr, align 4
  %22 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %23 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %call = call float @topological_eye(i32 %20, i32 %21, %struct.eye_data* %22, %struct.half_eye_data* %23)
  store float %call, float* %sum, align 4
  %24 = load float, float* %sum, align 4
  %conv29 = fpext float %24 to double
  %cmp30 = fcmp oge double %conv29, 4.000000e+00
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.28
  %25 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %26, i64 %idxprom33
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx34, i32 0, i32 1
  store i8 1, i8* %type, align 1
  %27 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %28, i64 %idxprom35
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx36, i32 0, i32 1
  %29 = load i32, i32* %esize, align 4
  %cmp37 = icmp eq i32 %29, 1
  br i1 %cmp37, label %if.then.49, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.then.32
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %31
  %call40 = call i32 @is_legal(i32 %30, i32 %sub)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.49, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %32 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom43
  %33 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %33 to i32
  %34 = load i32, i32* %color.addr, align 4
  %sub46 = sub nsw i32 3, %34
  %cmp47 = icmp eq i32 %conv45, %sub46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.42, %lor.lhs.false.39, %if.then.32
  %35 = load i32, i32* %pos, align 4
  %36 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %37 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  call void @add_false_eye(i32 %35, %struct.eye_data* %36, %struct.half_eye_data* %37)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %lor.lhs.false.42
  br label %if.end.139

if.else:                                          ; preds = %if.end.28
  %38 = load float, float* %sum, align 4
  %conv51 = fpext float %38 to double
  %cmp52 = fcmp ogt double %conv51, 2.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.end.138

if.then.54:                                       ; preds = %if.else
  %39 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %40, i64 %idxprom55
  %type57 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx56, i32 0, i32 1
  store i8 2, i8* %type57, align 1
  %41 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %41 to i64
  %42 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %42, i64 %idxprom58
  %num_attacks = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx59, i32 0, i32 2
  %43 = load i32, i32* %num_attacks, align 4
  %cmp60 = icmp sgt i32 %43, 0
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.54
  br label %if.end.66

if.else.63:                                       ; preds = %if.then.54
  %44 = load i32, i32* %pos, align 4
  %div = sdiv i32 %44, 20
  %sub64 = sub nsw i32 %div, 1
  %45 = load i32, i32* %pos, align 4
  %rem = srem i32 %45, 20
  %sub65 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 2099, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i32 %sub64, i32 %sub65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %46 = load i32, i32* %pos, align 4
  %idxprom67 = sext i32 %46 to i64
  %47 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %47, i64 %idxprom67
  %attack_point = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx68, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point, i32 0, i64 0
  %48 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp ult i32 %48, 421
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.83

land.lhs.true.72:                                 ; preds = %if.end.66
  %49 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %49 to i64
  %50 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %50, i64 %idxprom73
  %attack_point75 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx74, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point75, i32 0, i64 0
  %51 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %52 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %52 to i32
  %cmp80 = icmp ne i32 %conv79, 3
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %land.lhs.true.72
  br label %if.end.96

if.else.83:                                       ; preds = %land.lhs.true.72, %if.end.66
  %53 = load i32, i32* %pos, align 4
  %idxprom84 = sext i32 %53 to i64
  %54 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %54, i64 %idxprom84
  %attack_point86 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx85, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point86, i32 0, i64 0
  %55 = load i32, i32* %arrayidx87, align 4
  %div88 = sdiv i32 %55, 20
  %sub89 = sub nsw i32 %div88, 1
  %56 = load i32, i32* %pos, align 4
  %idxprom90 = sext i32 %56 to i64
  %57 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %57, i64 %idxprom90
  %attack_point92 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx91, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point92, i32 0, i64 0
  %58 = load i32, i32* %arrayidx93, align 4
  %rem94 = srem i32 %58, 20
  %sub95 = sub nsw i32 %rem94, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 2100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i32 %sub89, i32 %sub95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.83, %if.then.82
  %59 = load i32, i32* %pos, align 4
  %idxprom97 = sext i32 %59 to i64
  %60 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %60, i64 %idxprom97
  %num_defends = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx98, i32 0, i32 4
  %61 = load i32, i32* %num_defends, align 4
  %cmp99 = icmp sgt i32 %61, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %if.end.96
  br label %if.end.107

if.else.102:                                      ; preds = %if.end.96
  %62 = load i32, i32* %pos, align 4
  %div103 = sdiv i32 %62, 20
  %sub104 = sub nsw i32 %div103, 1
  %63 = load i32, i32* %pos, align 4
  %rem105 = srem i32 %63, 20
  %sub106 = sub nsw i32 %rem105, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 2101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 %sub104, i32 %sub106)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.102, %if.then.101
  %64 = load i32, i32* %pos, align 4
  %idxprom108 = sext i32 %64 to i64
  %65 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %65, i64 %idxprom108
  %defense_point = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx109, i32 0, i32 5
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point, i32 0, i64 0
  %66 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp ult i32 %66, 421
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.124

land.lhs.true.113:                                ; preds = %if.end.107
  %67 = load i32, i32* %pos, align 4
  %idxprom114 = sext i32 %67 to i64
  %68 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %68, i64 %idxprom114
  %defense_point116 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx115, i32 0, i32 5
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point116, i32 0, i64 0
  %69 = load i32, i32* %arrayidx117, align 4
  %idxprom118 = sext i32 %69 to i64
  %arrayidx119 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom118
  %70 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %70 to i32
  %cmp121 = icmp ne i32 %conv120, 3
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %land.lhs.true.113
  br label %if.end.137

if.else.124:                                      ; preds = %land.lhs.true.113, %if.end.107
  %71 = load i32, i32* %pos, align 4
  %idxprom125 = sext i32 %71 to i64
  %72 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %72, i64 %idxprom125
  %defense_point127 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx126, i32 0, i32 5
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point127, i32 0, i64 0
  %73 = load i32, i32* %arrayidx128, align 4
  %div129 = sdiv i32 %73, 20
  %sub130 = sub nsw i32 %div129, 1
  %74 = load i32, i32* %pos, align 4
  %idxprom131 = sext i32 %74 to i64
  %75 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx132 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %75, i64 %idxprom131
  %defense_point133 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx132, i32 0, i32 5
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point133, i32 0, i64 0
  %76 = load i32, i32* %arrayidx134, align 4
  %rem135 = srem i32 %76, 20
  %sub136 = sub nsw i32 %rem135, 1
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 2102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0), i32 %sub130, i32 %sub136)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.124, %if.then.123
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.else
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.139, %if.then.27, %if.then
  %77 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @false_margin(i32 %pos, i32 %color, i32* %lively) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %lively.addr = alloca i32*, align 8
  %other = alloca i32, align 4
  %neighbors = alloca i32, align 4
  %k = alloca i32, align 4
  %all_lively = alloca i32, align 4
  %potential_false_margin = alloca i32, align 4
  %apos = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %lively, i32** %lively.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %neighbors, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, %4
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %6, %8
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i32, i32* %neighbors, align 4
  %or = or i32 %10, %conv10
  store i32 %or, i32* %neighbors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %neighbors, align 4
  %cmp11 = icmp ne i32 %12, 3
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  store i32 1, i32* %all_lively, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.34, %if.end.14
  %13 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %13, 4
  br i1 %cmp16, label %for.body.18, label %for.end.36

for.body.18:                                      ; preds = %for.cond.15
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %14, %16
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %17 to i32
  %18 = load i32, i32* %other, align 4
  %cmp25 = icmp eq i32 %conv24, %18
  br i1 %cmp25, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body.18
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom27
  %21 = load i32, i32* %arrayidx28, align 4
  %add29 = add nsw i32 %19, %21
  %idxprom30 = sext i32 %add29 to i64
  %22 = load i32*, i32** %lively.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %22, i64 %idxprom30
  %23 = load i32, i32* %arrayidx31, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true
  store i32 0, i32* %all_lively, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true, %for.body.18
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %24 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, i32* %k, align 4
  br label %for.cond.15

for.end.36:                                       ; preds = %for.cond.15
  %25 = load i32, i32* %all_lively, align 4
  %tobool37 = icmp ne i32 %25, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.36
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %for.end.36
  store i32 0, i32* %potential_false_margin, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.73, %if.end.39
  %26 = load i32, i32* %k, align 4
  %cmp41 = icmp slt i32 %26, 4
  br i1 %cmp41, label %for.body.43, label %for.end.75

for.body.43:                                      ; preds = %for.cond.40
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %28 to i64
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom44
  %29 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %27, %29
  store i32 %add46, i32* %apos, align 4
  %30 = load i32, i32* %apos, align 4
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %31 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %31 to i32
  %32 = load i32, i32* %other, align 4
  %cmp50 = icmp ne i32 %conv49, %32
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.43
  %33 = load i32, i32* %apos, align 4
  %idxprom52 = sext i32 %33 to i64
  %34 = load i32*, i32** %lively.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %34, i64 %idxprom52
  %35 = load i32, i32* %arrayidx53, align 4
  %tobool54 = icmp ne i32 %35, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false, %for.body.43
  br label %for.inc.73

if.end.56:                                        ; preds = %lor.lhs.false
  %36 = load i32, i32* @stackp, align 4
  %cmp57 = icmp eq i32 %36, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.66

land.lhs.true.59:                                 ; preds = %if.end.56
  %37 = load i32, i32* %apos, align 4
  %idxprom60 = sext i32 %37 to i64
  %arrayidx61 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom60
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx61, i32 0, i32 16
  %arrayidx62 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %38 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %38, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %potential_false_margin, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %land.lhs.true.59, %if.end.56
  %39 = load i32, i32* @stackp, align 4
  %cmp67 = icmp sgt i32 %39, 0
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.72

land.lhs.true.69:                                 ; preds = %if.end.66
  %40 = load i32, i32* %apos, align 4
  %call = call i32 @attack(i32 %40, i32* null)
  %tobool70 = icmp ne i32 %call, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %potential_false_margin, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.69, %if.end.66
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72, %if.then.55
  %41 = load i32, i32* %k, align 4
  %inc74 = add nsw i32 %41, 1
  store i32 %inc74, i32* %k, align 4
  br label %for.cond.40

for.end.75:                                       ; preds = %for.cond.40
  %42 = load i32, i32* %potential_false_margin, align 4
  %tobool76 = icmp ne i32 %42, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.84

land.lhs.true.77:                                 ; preds = %for.end.75
  %43 = load i32, i32* %pos.addr, align 4
  %44 = load i32, i32* %other, align 4
  %call78 = call i32 @safe_move(i32 %43, i32 %44)
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %land.lhs.true.77
  %45 = load i32, i32* @debug, align 4
  %and = and i32 %45, 2
  %tobool82 = icmp ne i32 %and, 0
  br i1 %tobool82, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.81
  br label %cond.end

cond.false:                                       ; preds = %if.then.81
  %46 = load i32, i32* %color.addr, align 4
  %47 = load i32, i32* %pos.addr, align 4
  %call83 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0), i32 %46, i32 %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.77, %for.end.75
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %cond.end, %if.then.38, %if.then.13
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @attack(i32, i32*) #2

declare i32 @safe_move(i32, i32) #2

declare i32 @owl_lively(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @recognize_eye(i32 %pos, i32* %attack_point, i32* %defense_point, %struct.eyevalue* %value, %struct.eye_data* %eye, %struct.half_eye_data* %heye, %struct.vital_points* %vp) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %value.addr = alloca %struct.eyevalue*, align 8
  %eye.addr = alloca %struct.eye_data*, align 8
  %heye.addr = alloca %struct.half_eye_data*, align 8
  %vp.addr = alloca %struct.vital_points*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %eye_color = alloca i32, align 4
  %eye_size = alloca i32, align 4
  %num_marginals = alloca i32, align 4
  %vpos = alloca [20 x i32], align 16
  %marginal = alloca [20 x i8], align 16
  %edge = alloca [20 x i8], align 16
  %neighbors = alloca [20 x i8], align 16
  %graph = alloca i32, align 4
  %map = alloca [20 x i32], align 16
  %pos2 = alloca i32, align 4
  %q = alloca i32, align 4
  %gv = alloca %struct.eye_vertex*, align 8
  %mv = alloca i32, align 4
  %ok = alloca i32, align 4
  %k = alloca i32, align 4
  %mn = alloca i32, align 4
  %k285 = alloca i32, align 4
  %ev = alloca %struct.eye_vertex*, align 8
  %ix = alloca i32, align 4
  %he = alloca %struct.half_eye_data*, align 8
  %ix389 = alloca i32, align 4
  %he390 = alloca %struct.half_eye_data*, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store %struct.eyevalue* %value, %struct.eyevalue** %value.addr, align 8
  store %struct.eye_data* %eye, %struct.eye_data** %eye.addr, align 8
  store %struct.half_eye_data* %heye, %struct.half_eye_data** %heye.addr, align 8
  store %struct.vital_points* %vp, %struct.vital_points** %vp.addr, align 8
  store i32 0, i32* %eye_size, align 4
  store i32 0, i32* %num_marginals, align 4
  %0 = load i32*, i32** %attack_point.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32*, i32** %defense_point.addr, align 8
  %cmp1 = icmp ne i32* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eye_data, %struct.eye_data* %3, i64 %idxprom
  %color = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %color, align 4
  store i32 %4, i32* %eye_color, align 4
  %5 = load i32, i32* %eye_color, align 4
  %cmp5 = icmp eq i32 %5, 5
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 2, i32* %eye_color, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %6 = load i32, i32* %eye_color, align 4
  %cmp8 = icmp eq i32 %6, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 1, i32* %eye_color, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %8, i64 %idxprom11
  %esize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 1
  %9 = load i32, i32* %esize, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i64 %idxprom13
  %msize = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx14, i32 0, i32 2
  %12 = load i32, i32* %msize, align 4
  %sub = sub nsw i32 %9, %12
  %cmp15 = icmp sgt i32 %sub, 7
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom18 = sext i32 %13 to i64
  %14 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %14, i64 %idxprom18
  %msize20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx19, i32 0, i32 2
  %15 = load i32, i32* %msize20, align 4
  %cmp21 = icmp sgt i32 %15, 20
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %if.end.23
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* @board_size, align 4
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* @board_size, align 4
  %cmp26 = icmp slt i32 %18, %19
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %20 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %20, 20
  %add = add nsw i32 21, %mul
  %21 = load i32, i32* %n, align 4
  %add28 = add nsw i32 %add, %21
  store i32 %add28, i32* %pos2, align 4
  %22 = load i32, i32* %pos2, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i64 %idxprom29
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx30, i32 0, i32 3
  %24 = load i32, i32* %origin, align 4
  %25 = load i32, i32* %pos.addr, align 4
  %cmp31 = icmp eq i32 %24, %25
  br i1 %cmp31, label %if.then.32, label %if.end.85

if.then.32:                                       ; preds = %for.body.27
  %26 = load i32, i32* %pos2, align 4
  %27 = load i32, i32* %eye_size, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom33
  store i32 %26, i32* %arrayidx34, align 4
  %28 = load i32, i32* %pos2, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %29, i64 %idxprom35
  %marginal37 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx36, i32 0, i32 7
  %30 = load i8, i8* %marginal37, align 1
  %31 = load i32, i32* %eye_size, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds [20 x i8], [20 x i8]* %marginal, i32 0, i64 %idxprom38
  store i8 %30, i8* %arrayidx39, align 1
  %32 = load i32, i32* %eye_size, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds [20 x i8], [20 x i8]* %marginal, i32 0, i64 %idxprom40
  %33 = load i8, i8* %arrayidx41, align 1
  %tobool = icmp ne i8 %33, 0
  br i1 %tobool, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.32
  %34 = load i32, i32* %num_marginals, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %num_marginals, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.32
  %35 = load i32, i32* %pos2, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load %struct.eye_data*, %struct.eye_data** %eye.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %36, i64 %idxprom44
  %neighbors46 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx45, i32 0, i32 9
  %37 = load i8, i8* %neighbors46, align 1
  %38 = load i32, i32* %eye_size, align 4
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds [20 x i8], [20 x i8]* %neighbors, i32 0, i64 %idxprom47
  store i8 %37, i8* %arrayidx48, align 1
  %39 = load i32, i32* %eye_size, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [20 x i8], [20 x i8]* %edge, i32 0, i64 %idxprom49
  store i8 0, i8* %arrayidx50, align 1
  %40 = load i32, i32* %m, align 4
  %cmp51 = icmp eq i32 %40, 0
  br i1 %cmp51, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* @board_size, align 4
  %sub52 = sub nsw i32 %42, 1
  %cmp53 = icmp eq i32 %41, %sub52
  br i1 %cmp53, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.43
  %43 = load i32, i32* %eye_size, align 4
  %idxprom55 = sext i32 %43 to i64
  %arrayidx56 = getelementptr inbounds [20 x i8], [20 x i8]* %edge, i32 0, i64 %idxprom55
  %44 = load i8, i8* %arrayidx56, align 1
  %inc57 = add i8 %44, 1
  store i8 %inc57, i8* %arrayidx56, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %lor.lhs.false
  %45 = load i32, i32* %n, align 4
  %cmp59 = icmp eq i32 %45, 0
  br i1 %cmp59, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.58
  %46 = load i32, i32* %n, align 4
  %47 = load i32, i32* @board_size, align 4
  %sub61 = sub nsw i32 %47, 1
  %cmp62 = icmp eq i32 %46, %sub61
  br i1 %cmp62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %lor.lhs.false.60, %if.end.58
  %48 = load i32, i32* %eye_size, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [20 x i8], [20 x i8]* %edge, i32 0, i64 %idxprom64
  %49 = load i8, i8* %arrayidx65, align 1
  %inc66 = add i8 %49, 1
  store i8 %inc66, i8* %arrayidx65, align 1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %lor.lhs.false.60
  %50 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %51 = load i32, i32* %pos2, align 4
  %call = call i32 @is_halfeye(%struct.half_eye_data* %50, i32 %51)
  %tobool68 = icmp ne i32 %call, 0
  br i1 %tobool68, label %if.then.69, label %if.end.83

if.then.69:                                       ; preds = %if.end.67
  %52 = load i32, i32* %eye_size, align 4
  %idxprom70 = sext i32 %52 to i64
  %arrayidx71 = getelementptr inbounds [20 x i8], [20 x i8]* %neighbors, i32 0, i64 %idxprom70
  %53 = load i8, i8* %arrayidx71, align 1
  %inc72 = add i8 %53, 1
  store i8 %inc72, i8* %arrayidx71, align 1
  %54 = load i32, i32* %eye_size, align 4
  %inc73 = add nsw i32 %54, 1
  store i32 %inc73, i32* %eye_size, align 4
  %55 = load i32, i32* %eye_size, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom74
  store i32 0, i32* %arrayidx75, align 4
  %56 = load i32, i32* %eye_size, align 4
  %idxprom76 = sext i32 %56 to i64
  %arrayidx77 = getelementptr inbounds [20 x i8], [20 x i8]* %marginal, i32 0, i64 %idxprom76
  store i8 1, i8* %arrayidx77, align 1
  %57 = load i32, i32* %num_marginals, align 4
  %inc78 = add nsw i32 %57, 1
  store i32 %inc78, i32* %num_marginals, align 4
  %58 = load i32, i32* %eye_size, align 4
  %idxprom79 = sext i32 %58 to i64
  %arrayidx80 = getelementptr inbounds [20 x i8], [20 x i8]* %edge, i32 0, i64 %idxprom79
  store i8 0, i8* %arrayidx80, align 1
  %59 = load i32, i32* %eye_size, align 4
  %idxprom81 = sext i32 %59 to i64
  %arrayidx82 = getelementptr inbounds [20 x i8], [20 x i8]* %neighbors, i32 0, i64 %idxprom81
  store i8 1, i8* %arrayidx82, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.69, %if.end.67
  %60 = load i32, i32* %eye_size, align 4
  %inc84 = add nsw i32 %60, 1
  store i32 %inc84, i32* %eye_size, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.83, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %61 = load i32, i32* %n, align 4
  %inc86 = add nsw i32 %61, 1
  store i32 %inc86, i32* %n, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end
  %62 = load i32, i32* %m, align 4
  %inc88 = add nsw i32 %62, 1
  store i32 %inc88, i32* %m, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  store i32 0, i32* %graph, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.481, %for.end.89
  %63 = load i32, i32* %graph, align 4
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom91
  %vertex = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx92, i32 0, i32 0
  %64 = load %struct.eye_vertex*, %struct.eye_vertex** %vertex, align 8
  %cmp93 = icmp ne %struct.eye_vertex* %64, null
  br i1 %cmp93, label %for.body.94, label %for.end.483

for.body.94:                                      ; preds = %for.cond.90
  %65 = load i32, i32* %graph, align 4
  %idxprom95 = sext i32 %65 to i64
  %arrayidx96 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom95
  %esize97 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx96, i32 0, i32 2
  %66 = load i32, i32* %esize97, align 4
  %67 = load i32, i32* %eye_size, align 4
  %cmp98 = icmp ne i32 %66, %67
  br i1 %cmp98, label %if.then.104, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %for.body.94
  %68 = load i32, i32* %graph, align 4
  %idxprom100 = sext i32 %68 to i64
  %arrayidx101 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom100
  %msize102 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx101, i32 0, i32 3
  %69 = load i32, i32* %msize102, align 4
  %70 = load i32, i32* %num_marginals, align 4
  %cmp103 = icmp ne i32 %69, %70
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.99, %for.body.94
  br label %for.inc.481

if.end.105:                                       ; preds = %lor.lhs.false.99
  %71 = load i32, i32* %eye_size, align 4
  call void @reset_map(i32 %71)
  store i32 0, i32* %q, align 4
  %arrayidx106 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 0
  call void @first_map(i32* %arrayidx106)
  br label %while.body

while.body:                                       ; preds = %if.end.105, %if.end.274
  %72 = load i32, i32* %q, align 4
  %idxprom107 = sext i32 %72 to i64
  %73 = load i32, i32* %graph, align 4
  %idxprom108 = sext i32 %73 to i64
  %arrayidx109 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom108
  %vertex110 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx109, i32 0, i32 0
  %74 = load %struct.eye_vertex*, %struct.eye_vertex** %vertex110, align 8
  %arrayidx111 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %74, i64 %idxprom107
  store %struct.eye_vertex* %arrayidx111, %struct.eye_vertex** %gv, align 8
  %75 = load i32, i32* %q, align 4
  %idxprom112 = sext i32 %75 to i64
  %arrayidx113 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom112
  %76 = load i32, i32* %arrayidx113, align 4
  store i32 %76, i32* %mv, align 4
  store i32 1, i32* %ok, align 4
  %77 = load i32, i32* %mv, align 4
  %idxprom114 = sext i32 %77 to i64
  %arrayidx115 = getelementptr inbounds [20 x i8], [20 x i8]* %neighbors, i32 0, i64 %idxprom114
  %78 = load i8, i8* %arrayidx115, align 1
  %conv = sext i8 %78 to i32
  %79 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %neighbors116 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %79, i32 0, i32 3
  %80 = load i8, i8* %neighbors116, align 1
  %conv117 = sext i8 %80 to i32
  %cmp118 = icmp ne i32 %conv, %conv117
  br i1 %cmp118, label %if.then.136, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %while.body
  %81 = load i32, i32* %mv, align 4
  %idxprom121 = sext i32 %81 to i64
  %arrayidx122 = getelementptr inbounds [20 x i8], [20 x i8]* %marginal, i32 0, i64 %idxprom121
  %82 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %82 to i32
  %83 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %marginal124 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %83, i32 0, i32 0
  %84 = load i8, i8* %marginal124, align 1
  %conv125 = sext i8 %84 to i32
  %cmp126 = icmp ne i32 %conv123, %conv125
  br i1 %cmp126, label %if.then.136, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.120
  %85 = load i32, i32* %mv, align 4
  %idxprom129 = sext i32 %85 to i64
  %arrayidx130 = getelementptr inbounds [20 x i8], [20 x i8]* %edge, i32 0, i64 %idxprom129
  %86 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %86 to i32
  %87 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %edge132 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %87, i32 0, i32 1
  %88 = load i8, i8* %edge132, align 1
  %conv133 = sext i8 %88 to i32
  %cmp134 = icmp slt i32 %conv131, %conv133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %lor.lhs.false.128, %lor.lhs.false.120, %while.body
  store i32 0, i32* %ok, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %lor.lhs.false.128
  %89 = load i32, i32* %ok, align 4
  %tobool138 = icmp ne i32 %89, 0
  br i1 %tobool138, label %if.then.139, label %if.end.168

if.then.139:                                      ; preds = %if.end.137
  %90 = load i32, i32* %mv, align 4
  %idxprom140 = sext i32 %90 to i64
  %arrayidx141 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom140
  %91 = load i32, i32* %arrayidx141, align 4
  %idxprom142 = sext i32 %91 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %92 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %92 to i32
  %cmp145 = icmp eq i32 %conv144, 1
  br i1 %cmp145, label %if.then.155, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %if.then.139
  %93 = load i32, i32* %mv, align 4
  %idxprom148 = sext i32 %93 to i64
  %arrayidx149 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom148
  %94 = load i32, i32* %arrayidx149, align 4
  %idxprom150 = sext i32 %94 to i64
  %arrayidx151 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom150
  %95 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %95 to i32
  %cmp153 = icmp eq i32 %conv152, 2
  br i1 %cmp153, label %if.then.155, label %if.else.160

if.then.155:                                      ; preds = %lor.lhs.false.147, %if.then.139
  %96 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %flags = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %96, i32 0, i32 2
  %97 = load i8, i8* %flags, align 1
  %conv156 = sext i8 %97 to i32
  %and = and i32 %conv156, 2
  %tobool157 = icmp ne i32 %and, 0
  br i1 %tobool157, label %if.end.159, label %if.then.158

if.then.158:                                      ; preds = %if.then.155
  store i32 0, i32* %ok, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.then.155
  br label %if.end.167

if.else.160:                                      ; preds = %lor.lhs.false.147
  %98 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %flags161 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %98, i32 0, i32 2
  %99 = load i8, i8* %flags161, align 1
  %conv162 = sext i8 %99 to i32
  %and163 = and i32 %conv162, 1
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.else.160
  store i32 0, i32* %ok, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.else.160
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.159
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.137
  %100 = load i32, i32* %ok, align 4
  %tobool169 = icmp ne i32 %100, 0
  br i1 %tobool169, label %if.then.170, label %if.end.259

if.then.170:                                      ; preds = %if.end.168
  store i32 0, i32* %k, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.256, %if.then.170
  %101 = load i32, i32* %k, align 4
  %102 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %neighbors172 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %102, i32 0, i32 3
  %103 = load i8, i8* %neighbors172, align 1
  %conv173 = sext i8 %103 to i32
  %cmp174 = icmp slt i32 %101, %conv173
  br i1 %cmp174, label %for.body.176, label %for.end.258

for.body.176:                                     ; preds = %for.cond.171
  %104 = load i32, i32* %k, align 4
  %idxprom177 = sext i32 %104 to i64
  %105 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %n178 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %105, i32 0, i32 4
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %n178, i32 0, i64 %idxprom177
  %106 = load i32, i32* %arrayidx179, align 4
  %107 = load i32, i32* %q, align 4
  %cmp180 = icmp slt i32 %106, %107
  br i1 %cmp180, label %if.then.182, label %if.end.255

if.then.182:                                      ; preds = %for.body.176
  %108 = load i32, i32* %k, align 4
  %idxprom183 = sext i32 %108 to i64
  %109 = load %struct.eye_vertex*, %struct.eye_vertex** %gv, align 8
  %n184 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %109, i32 0, i32 4
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %n184, i32 0, i64 %idxprom183
  %110 = load i32, i32* %arrayidx185, align 4
  %idxprom186 = sext i32 %110 to i64
  %arrayidx187 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom186
  %111 = load i32, i32* %arrayidx187, align 4
  store i32 %111, i32* %mn, align 4
  %112 = load i32, i32* %mv, align 4
  %idxprom188 = sext i32 %112 to i64
  %arrayidx189 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom188
  %113 = load i32, i32* %arrayidx189, align 4
  %114 = load i32, i32* %mn, align 4
  %idxprom190 = sext i32 %114 to i64
  %arrayidx191 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom190
  %115 = load i32, i32* %arrayidx191, align 4
  %add192 = add nsw i32 %115, 20
  %cmp193 = icmp ne i32 %113, %add192
  br i1 %cmp193, label %land.lhs.true, label %if.end.254

land.lhs.true:                                    ; preds = %if.then.182
  %116 = load i32, i32* %mv, align 4
  %idxprom195 = sext i32 %116 to i64
  %arrayidx196 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom195
  %117 = load i32, i32* %arrayidx196, align 4
  %118 = load i32, i32* %mn, align 4
  %idxprom197 = sext i32 %118 to i64
  %arrayidx198 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom197
  %119 = load i32, i32* %arrayidx198, align 4
  %sub199 = sub nsw i32 %119, 1
  %cmp200 = icmp ne i32 %117, %sub199
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.254

land.lhs.true.202:                                ; preds = %land.lhs.true
  %120 = load i32, i32* %mv, align 4
  %idxprom203 = sext i32 %120 to i64
  %arrayidx204 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom203
  %121 = load i32, i32* %arrayidx204, align 4
  %122 = load i32, i32* %mn, align 4
  %idxprom205 = sext i32 %122 to i64
  %arrayidx206 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom205
  %123 = load i32, i32* %arrayidx206, align 4
  %sub207 = sub nsw i32 %123, 20
  %cmp208 = icmp ne i32 %121, %sub207
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.254

land.lhs.true.210:                                ; preds = %land.lhs.true.202
  %124 = load i32, i32* %mv, align 4
  %idxprom211 = sext i32 %124 to i64
  %arrayidx212 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom211
  %125 = load i32, i32* %arrayidx212, align 4
  %126 = load i32, i32* %mn, align 4
  %idxprom213 = sext i32 %126 to i64
  %arrayidx214 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom213
  %127 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %127, 1
  %cmp216 = icmp ne i32 %125, %add215
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.254

land.lhs.true.218:                                ; preds = %land.lhs.true.210
  %128 = load i32, i32* %mv, align 4
  %129 = load i32, i32* %mn, align 4
  %sub219 = sub nsw i32 %129, 1
  %cmp220 = icmp ne i32 %128, %sub219
  br i1 %cmp220, label %land.lhs.true.235, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %land.lhs.true.218
  %130 = load i32, i32* %mv, align 4
  %idxprom223 = sext i32 %130 to i64
  %arrayidx224 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom223
  %131 = load i32, i32* %arrayidx224, align 4
  %cmp225 = icmp eq i32 %131, 0
  br i1 %cmp225, label %land.lhs.true.235, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %lor.lhs.false.222
  %132 = load i32, i32* %mv, align 4
  %idxprom228 = sext i32 %132 to i64
  %arrayidx229 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom228
  %133 = load i32, i32* %arrayidx229, align 4
  %idxprom230 = sext i32 %133 to i64
  %134 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx231 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %134, i64 %idxprom230
  %type = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx231, i32 0, i32 1
  %135 = load i8, i8* %type, align 1
  %conv232 = sext i8 %135 to i32
  %cmp233 = icmp ne i32 %conv232, 2
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.254

land.lhs.true.235:                                ; preds = %lor.lhs.false.227, %lor.lhs.false.222, %land.lhs.true.218
  %136 = load i32, i32* %mn, align 4
  %137 = load i32, i32* %mv, align 4
  %sub236 = sub nsw i32 %137, 1
  %cmp237 = icmp ne i32 %136, %sub236
  br i1 %cmp237, label %if.then.253, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %land.lhs.true.235
  %138 = load i32, i32* %mn, align 4
  %idxprom240 = sext i32 %138 to i64
  %arrayidx241 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom240
  %139 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp eq i32 %139, 0
  br i1 %cmp242, label %if.then.253, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %lor.lhs.false.239
  %140 = load i32, i32* %mn, align 4
  %idxprom245 = sext i32 %140 to i64
  %arrayidx246 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom245
  %141 = load i32, i32* %arrayidx246, align 4
  %idxprom247 = sext i32 %141 to i64
  %142 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx248 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %142, i64 %idxprom247
  %type249 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %arrayidx248, i32 0, i32 1
  %143 = load i8, i8* %type249, align 1
  %conv250 = sext i8 %143 to i32
  %cmp251 = icmp ne i32 %conv250, 2
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %lor.lhs.false.244, %lor.lhs.false.239, %land.lhs.true.235
  store i32 0, i32* %ok, align 4
  br label %for.end.258

if.end.254:                                       ; preds = %lor.lhs.false.244, %lor.lhs.false.227, %land.lhs.true.210, %land.lhs.true.202, %land.lhs.true, %if.then.182
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %for.body.176
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %144 = load i32, i32* %k, align 4
  %inc257 = add nsw i32 %144, 1
  store i32 %inc257, i32* %k, align 4
  br label %for.cond.171

for.end.258:                                      ; preds = %if.then.253, %for.cond.171
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %if.end.168
  %145 = load i32, i32* %ok, align 4
  %tobool260 = icmp ne i32 %145, 0
  br i1 %tobool260, label %if.else.266, label %if.then.261

if.then.261:                                      ; preds = %if.end.259
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i32 0
  %call262 = call i32 @next_map(i32* %q, i32* %arraydecay)
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.end.265, label %if.then.264

if.then.264:                                      ; preds = %if.then.261
  br label %while.end

if.end.265:                                       ; preds = %if.then.261
  br label %if.end.274

if.else.266:                                      ; preds = %if.end.259
  %146 = load i32, i32* %q, align 4
  %inc267 = add nsw i32 %146, 1
  store i32 %inc267, i32* %q, align 4
  %147 = load i32, i32* %q, align 4
  %148 = load i32, i32* %eye_size, align 4
  %cmp268 = icmp eq i32 %147, %148
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.else.266
  br label %while.end

if.end.271:                                       ; preds = %if.else.266
  %149 = load i32, i32* %q, align 4
  %idxprom272 = sext i32 %149 to i64
  %arrayidx273 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom272
  call void @first_map(i32* %arrayidx273)
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.271, %if.end.265
  br label %while.body

while.end:                                        ; preds = %if.then.270, %if.then.264
  %150 = load i32, i32* %q, align 4
  %151 = load i32, i32* %eye_size, align 4
  %cmp275 = icmp eq i32 %150, %151
  br i1 %cmp275, label %if.then.277, label %if.end.480

if.then.277:                                      ; preds = %while.end
  %152 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %153 = load i32, i32* %graph, align 4
  %idxprom278 = sext i32 %153 to i64
  %arrayidx279 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom278
  %value280 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx279, i32 0, i32 7
  %154 = bitcast %struct.eyevalue* %152 to i8*
  %155 = bitcast %struct.eyevalue* %value280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 4, i32 1, i1 false)
  %156 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_attacks = getelementptr inbounds %struct.vital_points, %struct.vital_points* %156, i32 0, i32 2
  store i32 0, i32* %num_attacks, align 4
  %157 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_defenses = getelementptr inbounds %struct.vital_points, %struct.vital_points* %157, i32 0, i32 3
  store i32 0, i32* %num_defenses, align 4
  %158 = load %struct.eyevalue*, %struct.eyevalue** %value.addr, align 8
  %call281 = call i32 @eye_move_urgency(%struct.eyevalue* %158)
  %cmp282 = icmp sgt i32 %call281, 0
  br i1 %cmp282, label %if.then.284, label %if.end.471

if.then.284:                                      ; preds = %if.then.277
  store i32 0, i32* %k285, align 4
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.424, %if.then.284
  %159 = load i32, i32* %k285, align 4
  %160 = load i32, i32* %eye_size, align 4
  %cmp287 = icmp slt i32 %159, %160
  br i1 %cmp287, label %for.body.289, label %for.end.426

for.body.289:                                     ; preds = %for.cond.286
  %161 = load i32, i32* %k285, align 4
  %idxprom290 = sext i32 %161 to i64
  %162 = load i32, i32* %graph, align 4
  %idxprom291 = sext i32 %162 to i64
  %arrayidx292 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom291
  %vertex293 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx292, i32 0, i32 0
  %163 = load %struct.eye_vertex*, %struct.eye_vertex** %vertex293, align 8
  %arrayidx294 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %163, i64 %idxprom290
  store %struct.eye_vertex* %arrayidx294, %struct.eye_vertex** %ev, align 8
  %164 = load %struct.eye_vertex*, %struct.eye_vertex** %ev, align 8
  %flags295 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %164, i32 0, i32 2
  %165 = load i8, i8* %flags295, align 1
  %conv296 = sext i8 %165 to i32
  %and297 = and i32 %conv296, 8
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %if.then.299, label %if.end.358

if.then.299:                                      ; preds = %for.body.289
  %166 = load %struct.eye_vertex*, %struct.eye_vertex** %ev, align 8
  %marginal300 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %166, i32 0, i32 0
  %167 = load i8, i8* %marginal300, align 1
  %conv301 = sext i8 %167 to i32
  %tobool302 = icmp ne i32 %conv301, 0
  br i1 %tobool302, label %land.lhs.true.303, label %if.else.347

land.lhs.true.303:                                ; preds = %if.then.299
  %168 = load i32, i32* %k285, align 4
  %idxprom304 = sext i32 %168 to i64
  %arrayidx305 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom304
  %169 = load i32, i32* %arrayidx305, align 4
  %cmp306 = icmp sgt i32 %169, 0
  br i1 %cmp306, label %land.lhs.true.308, label %if.else.347

land.lhs.true.308:                                ; preds = %land.lhs.true.303
  %170 = load i32, i32* %k285, align 4
  %idxprom309 = sext i32 %170 to i64
  %arrayidx310 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom309
  %171 = load i32, i32* %arrayidx310, align 4
  %sub311 = sub nsw i32 %171, 1
  %idxprom312 = sext i32 %sub311 to i64
  %arrayidx313 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom312
  %172 = load i32, i32* %arrayidx313, align 4
  %cmp314 = icmp ne i32 %172, 0
  br i1 %cmp314, label %land.lhs.true.316, label %if.else.347

land.lhs.true.316:                                ; preds = %land.lhs.true.308
  %173 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %174 = load i32, i32* %k285, align 4
  %idxprom317 = sext i32 %174 to i64
  %arrayidx318 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom317
  %175 = load i32, i32* %arrayidx318, align 4
  %sub319 = sub nsw i32 %175, 1
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom320
  %176 = load i32, i32* %arrayidx321, align 4
  %call322 = call i32 @is_halfeye(%struct.half_eye_data* %173, i32 %176)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.then.324, label %if.else.347

if.then.324:                                      ; preds = %land.lhs.true.316
  %177 = load i32, i32* %k285, align 4
  %idxprom325 = sext i32 %177 to i64
  %arrayidx326 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom325
  %178 = load i32, i32* %arrayidx326, align 4
  %sub327 = sub nsw i32 %178, 1
  %idxprom328 = sext i32 %sub327 to i64
  %arrayidx329 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom328
  %179 = load i32, i32* %arrayidx329, align 4
  %idxprom330 = sext i32 %179 to i64
  %180 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx331 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %180, i64 %idxprom330
  store %struct.half_eye_data* %arrayidx331, %struct.half_eye_data** %he, align 8
  store i32 0, i32* %ix, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.344, %if.then.324
  %181 = load i32, i32* %ix, align 4
  %182 = load %struct.half_eye_data*, %struct.half_eye_data** %he, align 8
  %num_attacks333 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %182, i32 0, i32 2
  %183 = load i32, i32* %num_attacks333, align 4
  %cmp334 = icmp slt i32 %181, %183
  br i1 %cmp334, label %for.body.336, label %for.end.346

for.body.336:                                     ; preds = %for.cond.332
  %184 = load i32, i32* %ix, align 4
  %idxprom337 = sext i32 %184 to i64
  %185 = load %struct.half_eye_data*, %struct.half_eye_data** %he, align 8
  %attack_point338 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %185, i32 0, i32 3
  %arrayidx339 = getelementptr inbounds [4 x i32], [4 x i32]* %attack_point338, i32 0, i64 %idxprom337
  %186 = load i32, i32* %arrayidx339, align 4
  %187 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_attacks340 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %187, i32 0, i32 2
  %188 = load i32, i32* %num_attacks340, align 4
  %inc341 = add nsw i32 %188, 1
  store i32 %inc341, i32* %num_attacks340, align 4
  %idxprom342 = sext i32 %188 to i64
  %189 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %attacks = getelementptr inbounds %struct.vital_points, %struct.vital_points* %189, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [80 x i32], [80 x i32]* %attacks, i32 0, i64 %idxprom342
  store i32 %186, i32* %arrayidx343, align 4
  br label %for.inc.344

for.inc.344:                                      ; preds = %for.body.336
  %190 = load i32, i32* %ix, align 4
  %inc345 = add nsw i32 %190, 1
  store i32 %inc345, i32* %ix, align 4
  br label %for.cond.332

for.end.346:                                      ; preds = %for.cond.332
  br label %if.end.357

if.else.347:                                      ; preds = %land.lhs.true.316, %land.lhs.true.308, %land.lhs.true.303, %if.then.299
  %191 = load i32, i32* %k285, align 4
  %idxprom348 = sext i32 %191 to i64
  %arrayidx349 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom348
  %192 = load i32, i32* %arrayidx349, align 4
  %idxprom350 = sext i32 %192 to i64
  %arrayidx351 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom350
  %193 = load i32, i32* %arrayidx351, align 4
  %194 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_attacks352 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %194, i32 0, i32 2
  %195 = load i32, i32* %num_attacks352, align 4
  %inc353 = add nsw i32 %195, 1
  store i32 %inc353, i32* %num_attacks352, align 4
  %idxprom354 = sext i32 %195 to i64
  %196 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %attacks355 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %196, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [80 x i32], [80 x i32]* %attacks355, i32 0, i64 %idxprom354
  store i32 %193, i32* %arrayidx356, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.347, %for.end.346
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %for.body.289
  %197 = load %struct.eye_vertex*, %struct.eye_vertex** %ev, align 8
  %flags359 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %197, i32 0, i32 2
  %198 = load i8, i8* %flags359, align 1
  %conv360 = sext i8 %198 to i32
  %and361 = and i32 %conv360, 4
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %if.then.363, label %if.end.423

if.then.363:                                      ; preds = %if.end.358
  %199 = load %struct.eye_vertex*, %struct.eye_vertex** %ev, align 8
  %marginal364 = getelementptr inbounds %struct.eye_vertex, %struct.eye_vertex* %199, i32 0, i32 0
  %200 = load i8, i8* %marginal364, align 1
  %conv365 = sext i8 %200 to i32
  %tobool366 = icmp ne i32 %conv365, 0
  br i1 %tobool366, label %land.lhs.true.367, label %if.else.412

land.lhs.true.367:                                ; preds = %if.then.363
  %201 = load i32, i32* %k285, align 4
  %idxprom368 = sext i32 %201 to i64
  %arrayidx369 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom368
  %202 = load i32, i32* %arrayidx369, align 4
  %cmp370 = icmp sgt i32 %202, 0
  br i1 %cmp370, label %land.lhs.true.372, label %if.else.412

land.lhs.true.372:                                ; preds = %land.lhs.true.367
  %203 = load i32, i32* %k285, align 4
  %idxprom373 = sext i32 %203 to i64
  %arrayidx374 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom373
  %204 = load i32, i32* %arrayidx374, align 4
  %sub375 = sub nsw i32 %204, 1
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom376
  %205 = load i32, i32* %arrayidx377, align 4
  %cmp378 = icmp ne i32 %205, 0
  br i1 %cmp378, label %land.lhs.true.380, label %if.else.412

land.lhs.true.380:                                ; preds = %land.lhs.true.372
  %206 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %207 = load i32, i32* %k285, align 4
  %idxprom381 = sext i32 %207 to i64
  %arrayidx382 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom381
  %208 = load i32, i32* %arrayidx382, align 4
  %sub383 = sub nsw i32 %208, 1
  %idxprom384 = sext i32 %sub383 to i64
  %arrayidx385 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom384
  %209 = load i32, i32* %arrayidx385, align 4
  %call386 = call i32 @is_halfeye(%struct.half_eye_data* %206, i32 %209)
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.then.388, label %if.else.412

if.then.388:                                      ; preds = %land.lhs.true.380
  %210 = load i32, i32* %k285, align 4
  %idxprom391 = sext i32 %210 to i64
  %arrayidx392 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom391
  %211 = load i32, i32* %arrayidx392, align 4
  %sub393 = sub nsw i32 %211, 1
  %idxprom394 = sext i32 %sub393 to i64
  %arrayidx395 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom394
  %212 = load i32, i32* %arrayidx395, align 4
  %idxprom396 = sext i32 %212 to i64
  %213 = load %struct.half_eye_data*, %struct.half_eye_data** %heye.addr, align 8
  %arrayidx397 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %213, i64 %idxprom396
  store %struct.half_eye_data* %arrayidx397, %struct.half_eye_data** %he390, align 8
  store i32 0, i32* %ix389, align 4
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.409, %if.then.388
  %214 = load i32, i32* %ix389, align 4
  %215 = load %struct.half_eye_data*, %struct.half_eye_data** %he390, align 8
  %num_defends = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %215, i32 0, i32 4
  %216 = load i32, i32* %num_defends, align 4
  %cmp399 = icmp slt i32 %214, %216
  br i1 %cmp399, label %for.body.401, label %for.end.411

for.body.401:                                     ; preds = %for.cond.398
  %217 = load i32, i32* %ix389, align 4
  %idxprom402 = sext i32 %217 to i64
  %218 = load %struct.half_eye_data*, %struct.half_eye_data** %he390, align 8
  %defense_point403 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %218, i32 0, i32 5
  %arrayidx404 = getelementptr inbounds [4 x i32], [4 x i32]* %defense_point403, i32 0, i64 %idxprom402
  %219 = load i32, i32* %arrayidx404, align 4
  %220 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_defenses405 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %220, i32 0, i32 3
  %221 = load i32, i32* %num_defenses405, align 4
  %inc406 = add nsw i32 %221, 1
  store i32 %inc406, i32* %num_defenses405, align 4
  %idxprom407 = sext i32 %221 to i64
  %222 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %defenses = getelementptr inbounds %struct.vital_points, %struct.vital_points* %222, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses, i32 0, i64 %idxprom407
  store i32 %219, i32* %arrayidx408, align 4
  br label %for.inc.409

for.inc.409:                                      ; preds = %for.body.401
  %223 = load i32, i32* %ix389, align 4
  %inc410 = add nsw i32 %223, 1
  store i32 %inc410, i32* %ix389, align 4
  br label %for.cond.398

for.end.411:                                      ; preds = %for.cond.398
  br label %if.end.422

if.else.412:                                      ; preds = %land.lhs.true.380, %land.lhs.true.372, %land.lhs.true.367, %if.then.363
  %224 = load i32, i32* %k285, align 4
  %idxprom413 = sext i32 %224 to i64
  %arrayidx414 = getelementptr inbounds [20 x i32], [20 x i32]* %map, i32 0, i64 %idxprom413
  %225 = load i32, i32* %arrayidx414, align 4
  %idxprom415 = sext i32 %225 to i64
  %arrayidx416 = getelementptr inbounds [20 x i32], [20 x i32]* %vpos, i32 0, i64 %idxprom415
  %226 = load i32, i32* %arrayidx416, align 4
  %227 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_defenses417 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %227, i32 0, i32 3
  %228 = load i32, i32* %num_defenses417, align 4
  %inc418 = add nsw i32 %228, 1
  store i32 %inc418, i32* %num_defenses417, align 4
  %idxprom419 = sext i32 %228 to i64
  %229 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %defenses420 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %229, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses420, i32 0, i64 %idxprom419
  store i32 %226, i32* %arrayidx421, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.412, %for.end.411
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %if.end.358
  br label %for.inc.424

for.inc.424:                                      ; preds = %if.end.423
  %230 = load i32, i32* %k285, align 4
  %inc425 = add nsw i32 %230, 1
  store i32 %inc425, i32* %k285, align 4
  br label %for.cond.286

for.end.426:                                      ; preds = %for.cond.286
  %231 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_attacks427 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %231, i32 0, i32 2
  %232 = load i32, i32* %num_attacks427, align 4
  %cmp428 = icmp sgt i32 %232, 0
  br i1 %cmp428, label %land.lhs.true.430, label %if.else.435

land.lhs.true.430:                                ; preds = %for.end.426
  %233 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_defenses431 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %233, i32 0, i32 3
  %234 = load i32, i32* %num_defenses431, align 4
  %cmp432 = icmp sgt i32 %234, 0
  br i1 %cmp432, label %if.then.434, label %if.else.435

if.then.434:                                      ; preds = %land.lhs.true.430
  br label %if.end.436

if.else.435:                                      ; preds = %land.lhs.true.430, %for.end.426
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 1305, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.51, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.436

if.end.436:                                       ; preds = %if.else.435, %if.then.434
  %235 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %attacks437 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %235, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [80 x i32], [80 x i32]* %attacks437, i32 0, i64 0
  %236 = load i32, i32* %arrayidx438, align 4
  %237 = load i32*, i32** %attack_point.addr, align 8
  store i32 %236, i32* %237, align 4
  %238 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %defenses439 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %238, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses439, i32 0, i64 0
  %239 = load i32, i32* %arrayidx440, align 4
  %240 = load i32*, i32** %defense_point.addr, align 8
  store i32 %239, i32* %240, align 4
  store i32 0, i32* %k285, align 4
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.457, %if.end.436
  %241 = load i32, i32* %k285, align 4
  %242 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %num_defenses442 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %242, i32 0, i32 3
  %243 = load i32, i32* %num_defenses442, align 4
  %cmp443 = icmp slt i32 %241, %243
  br i1 %cmp443, label %for.body.445, label %for.end.459

for.body.445:                                     ; preds = %for.cond.441
  %244 = load i32, i32* %k285, align 4
  %idxprom446 = sext i32 %244 to i64
  %245 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %defenses447 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %245, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses447, i32 0, i64 %idxprom446
  %246 = load i32, i32* %arrayidx448, align 4
  %247 = load i32, i32* %eye_color, align 4
  %call449 = call i32 @safe_move(i32 %246, i32 %247)
  %cmp450 = icmp eq i32 %call449, 5
  br i1 %cmp450, label %if.then.452, label %if.end.456

if.then.452:                                      ; preds = %for.body.445
  %248 = load i32, i32* %k285, align 4
  %idxprom453 = sext i32 %248 to i64
  %249 = load %struct.vital_points*, %struct.vital_points** %vp.addr, align 8
  %defenses454 = getelementptr inbounds %struct.vital_points, %struct.vital_points* %249, i32 0, i32 1
  %arrayidx455 = getelementptr inbounds [80 x i32], [80 x i32]* %defenses454, i32 0, i64 %idxprom453
  %250 = load i32, i32* %arrayidx455, align 4
  %251 = load i32*, i32** %defense_point.addr, align 8
  store i32 %250, i32* %251, align 4
  br label %for.end.459

if.end.456:                                       ; preds = %for.body.445
  br label %for.inc.457

for.inc.457:                                      ; preds = %if.end.456
  %252 = load i32, i32* %k285, align 4
  %inc458 = add nsw i32 %252, 1
  store i32 %inc458, i32* %k285, align 4
  br label %for.cond.441

for.end.459:                                      ; preds = %if.then.452, %for.cond.441
  %253 = load i32, i32* @debug, align 4
  %and460 = and i32 %253, 2
  %tobool461 = icmp ne i32 %and460, 0
  br i1 %tobool461, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end.459
  br label %cond.end

cond.false:                                       ; preds = %for.end.459
  %254 = load i32*, i32** %attack_point.addr, align 8
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %defense_point.addr, align 8
  %257 = load i32, i32* %256, align 4
  %call462 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i32 0, i32 0), i32 %255, i32 %257)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %258 = load i32, i32* @debug, align 4
  %and463 = and i32 %258, 2
  %tobool464 = icmp ne i32 %and463, 0
  br i1 %tobool464, label %cond.false.466, label %cond.true.465

cond.true.465:                                    ; preds = %cond.end
  br label %cond.end.470

cond.false.466:                                   ; preds = %cond.end
  %259 = load i32, i32* %graph, align 4
  %idxprom467 = sext i32 %259 to i64
  %arrayidx468 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom467
  %patnum = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx468, i32 0, i32 1
  %260 = load i32, i32* %patnum, align 4
  %call469 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i32 %260)
  br label %cond.end.470

cond.end.470:                                     ; preds = %cond.false.466, %cond.true.465
  br label %if.end.471

if.end.471:                                       ; preds = %cond.end.470, %if.then.277
  %261 = load i32, i32* @verbose, align 4
  %tobool472 = icmp ne i32 %261, 0
  br i1 %tobool472, label %cond.false.474, label %cond.true.473

cond.true.473:                                    ; preds = %if.end.471
  br label %cond.end.479

cond.false.474:                                   ; preds = %if.end.471
  %262 = load i32, i32* %pos.addr, align 4
  %263 = load i32, i32* %graph, align 4
  %idxprom475 = sext i32 %263 to i64
  %arrayidx476 = getelementptr inbounds [0 x %struct.eye_graph], [0 x %struct.eye_graph]* @graphs, i32 0, i64 %idxprom475
  %patnum477 = getelementptr inbounds %struct.eye_graph, %struct.eye_graph* %arrayidx476, i32 0, i32 1
  %264 = load i32, i32* %patnum477, align 4
  %call478 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0), i32 %262, i32 %264)
  br label %cond.end.479

cond.end.479:                                     ; preds = %cond.false.474, %cond.true.473
  %265 = load i32, i32* %eye_color, align 4
  store i32 %265, i32* %retval
  br label %return

if.end.480:                                       ; preds = %while.end
  br label %for.inc.481

for.inc.481:                                      ; preds = %if.end.480, %if.then.104
  %266 = load i32, i32* %graph, align 4
  %inc482 = add nsw i32 %266, 1
  store i32 %inc482, i32* %graph, align 4
  br label %for.cond.90

for.end.483:                                      ; preds = %for.cond.90
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.483, %cond.end.479, %if.then.22, %if.then.16
  %267 = load i32, i32* %retval
  ret i32 %267
}

declare void @add_vital_eye_move(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @reset_map(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  store i32 %0, i32* @map_size, align 4
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 1
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @used_index, i32 0, i32 0), i8 0, i64 %mul, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @first_map(i32* %map_value) #0 {
entry:
  %map_value.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32* %map_value, i32** %map_value.addr, align 8
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %k, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* @used_index, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %k, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* @used_index, i32 0, i64 %idxprom1
  store i8 1, i8* %arrayidx2, align 1
  %4 = load i32, i32* %k, align 4
  %5 = load i32*, i32** %map_value.addr, align 8
  store i32 %4, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @next_map(i32* %q, i32* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca i32*, align 8
  %map.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32* %q, i32** %q.addr, align 8
  store i32* %map, i32** %map.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32*, i32** %q.addr, align 8
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %map.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* @used_index, i32 0, i64 %idxprom1
  store i8 0, i8* %arrayidx2, align 1
  %4 = load i32*, i32** %q.addr, align 8
  %5 = load i32, i32* %4, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32*, i32** %map.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  store i32 %7, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %do.body
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  %9 = load i32, i32* @map_size, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [20 x i8], [20 x i8]* @used_index, i32 0, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [20 x i8], [20 x i8]* @used_index, i32 0, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1
  %13 = load i32, i32* %k, align 4
  %14 = load i32*, i32** %q.addr, align 8
  %15 = load i32, i32* %14, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %map.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  store i32 %13, i32* %arrayidx10, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %q.addr, align 8
  %18 = load i32, i32* %17, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %17, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %19 = load i32*, i32** %q.addr, align 8
  %20 = load i32, i32* %19, align 4
  %cmp11 = icmp sge i32 %20, 0
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @does_capture_something(i32, i32) #2

declare i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
