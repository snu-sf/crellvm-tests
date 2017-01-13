; ModuleID = './MultiSource.Benchmarks.MallocBench/21.espresso.pair.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@cube = external global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [38 x i8] c"can only pair binary-valued variables\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@summary = external global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ESPRESSO  \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pair is\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" (%d %d)\00", align 1
@best_cost = internal global i32 0, align 4
@best_pair = internal global %struct.pair_struct* null, align 8
@cost_array = internal global i32** null, align 8
@debug = external global i32, align 4
@trace = external global i32, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cost is %d \00", align 1
@global_PLA = internal global %struct.PLA_t* null, align 8
@pair_minim_strategy = internal global i32 0, align 4
@best_phase = internal global i32* null, align 8
@best_R = internal global %struct.set_family* null, align 8
@best_D = internal global %struct.set_family* null, align 8
@best_F = internal global %struct.set_family* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"OPO       \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"# phase is %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"EXACT     \00", align 1

; Function Attrs: nounwind uwtable
define void @set_pair(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @set_pair1(%struct.PLA_t* %0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_pair1(%struct.PLA_t* %PLA, i32 %adjust_labels) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %adjust_labels.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %paired = alloca i32*, align 8
  %newvar = alloca i32, align 4
  %old_num_vars = alloca i32, align 4
  %old_num_binary_vars = alloca i32, align 4
  %old_size = alloca i32, align 4
  %old_mv_start = alloca i32, align 4
  %new_part_size = alloca i32*, align 8
  %new_num_vars = alloca i32, align 4
  %new_num_binary_vars = alloca i32, align 4
  %new_mv_start = alloca i32, align 4
  %pair = alloca %struct.pair_struct*, align 8
  %scratch = alloca [1000 x i8], align 16
  %oldlabel = alloca i8**, align 8
  %var1 = alloca i8*, align 8
  %var1bar = alloca i8*, align 8
  %var2 = alloca i8*, align 8
  %var2bar = alloca i8*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %adjust_labels, i32* %adjust_labels.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 6
  %1 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  store %struct.pair_struct* %1, %struct.pair_struct** %pair, align 8
  %2 = load i32, i32* %adjust_labels.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @makeup_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call2 = call i8* @malloc(i64 %mul)
  %5 = bitcast i8* %call2 to i32*
  store i32* %5, i32** %paired, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %var, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %var, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %paired, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %var, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.43, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %cnt, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body.7, label %for.end.45

for.body.7:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var19 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %15, i32 0, i32 1
  %16 = load i32*, i32** %var19, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %17, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.7
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var114 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %19, i32 0, i32 1
  %20 = load i32*, i32** %var114, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom13
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp16 = icmp sle i32 %21, %22
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var220 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %24, i32 0, i32 2
  %25 = load i32*, i32** %var220, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 %idxprom19
  %26 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp sgt i32 %26, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var226 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %28, i32 0, i32 2
  %29 = load i32*, i32** %var226, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %29, i64 %idxprom25
  %30 = load i32, i32* %arrayidx27, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp28 = icmp sle i32 %30, %31
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.24
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var132 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %33, i32 0, i32 1
  %34 = load i32*, i32** %var132, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 %idxprom31
  %35 = load i32, i32* %arrayidx33, align 4
  %sub = sub nsw i32 %35, 1
  %idxprom34 = sext i32 %sub to i64
  %36 = load i32*, i32** %paired, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %36, i64 %idxprom34
  store i32 1, i32* %arrayidx35, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var237 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %38, i32 0, i32 2
  %39 = load i32*, i32** %var237, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %39, i64 %idxprom36
  %40 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %40, 1
  %idxprom40 = sext i32 %sub39 to i64
  %41 = load i32*, i32** %paired, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %41, i64 %idxprom40
  store i32 1, i32* %arrayidx41, align 4
  br label %if.end.42

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true.18, %land.lhs.true, %for.body.7
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.30
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %42 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %42, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.4

for.end.45:                                       ; preds = %for.cond.4
  %43 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %43, i32 0, i32 0
  %44 = load %struct.set_family*, %struct.set_family** %F, align 8
  %45 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %call46 = call %struct.set_family* @pairvar(%struct.set_family* %44, %struct.pair_struct* %45)
  %46 = load i32*, i32** %paired, align 8
  %call47 = call %struct.set_family* @delvar(%struct.set_family* %call46, i32* %46)
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F48 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 0
  store %struct.set_family* %call47, %struct.set_family** %F48, align 8
  %48 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %48, i32 0, i32 2
  %49 = load %struct.set_family*, %struct.set_family** %R, align 8
  %50 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %call49 = call %struct.set_family* @pairvar(%struct.set_family* %49, %struct.pair_struct* %50)
  %51 = load i32*, i32** %paired, align 8
  %call50 = call %struct.set_family* @delvar(%struct.set_family* %call49, i32* %51)
  %52 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R51 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %52, i32 0, i32 2
  store %struct.set_family* %call50, %struct.set_family** %R51, align 8
  %53 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %53, i32 0, i32 1
  %54 = load %struct.set_family*, %struct.set_family** %D, align 8
  %55 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %call52 = call %struct.set_family* @pairvar(%struct.set_family* %54, %struct.pair_struct* %55)
  %56 = load i32*, i32** %paired, align 8
  %call53 = call %struct.set_family* @delvar(%struct.set_family* %call52, i32* %56)
  %57 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D54 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %57, i32 0, i32 1
  store %struct.set_family* %call53, %struct.set_family** %D54, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  store i32 %58, i32* %old_size, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  store i32 %59, i32* %old_num_vars, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %60, i32* %old_num_binary_vars, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %62, i64 %idxprom55
  %63 = load i32, i32* %arrayidx56, align 4
  store i32 %63, i32* %old_mv_start, align 4
  store i32 0, i32* %new_num_binary_vars, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.end.45
  %64 = load i32, i32* %var, align 4
  %65 = load i32, i32* %old_num_binary_vars, align 4
  %cmp58 = icmp slt i32 %64, %65
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.57
  %66 = load i32, i32* %var, align 4
  %idxprom61 = sext i32 %66 to i64
  %67 = load i32*, i32** %paired, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %67, i64 %idxprom61
  %68 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %68, 0
  %conv64 = zext i1 %cmp63 to i32
  %69 = load i32, i32* %new_num_binary_vars, align 4
  %add = add nsw i32 %69, %conv64
  store i32 %add, i32* %new_num_binary_vars, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.60
  %70 = load i32, i32* %var, align 4
  %inc66 = add nsw i32 %70, 1
  store i32 %inc66, i32* %var, align 4
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  %71 = load i32, i32* %new_num_binary_vars, align 4
  %72 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt68 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %72, i32 0, i32 0
  %73 = load i32, i32* %cnt68, align 4
  %add69 = add nsw i32 %71, %73
  store i32 %add69, i32* %new_num_vars, align 4
  %74 = load i32, i32* %old_num_vars, align 4
  %75 = load i32, i32* %old_num_binary_vars, align 4
  %sub70 = sub nsw i32 %74, %75
  %76 = load i32, i32* %new_num_vars, align 4
  %add71 = add nsw i32 %76, %sub70
  store i32 %add71, i32* %new_num_vars, align 4
  %77 = load i32, i32* %new_num_vars, align 4
  %conv72 = sext i32 %77 to i64
  %mul73 = mul i64 4, %conv72
  %call74 = call i8* @malloc(i64 %mul73)
  %78 = bitcast i8* %call74 to i32*
  store i32* %78, i32** %new_part_size, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.83, %for.end.67
  %79 = load i32, i32* %var, align 4
  %80 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt76 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %80, i32 0, i32 0
  %81 = load i32, i32* %cnt76, align 4
  %cmp77 = icmp slt i32 %79, %81
  br i1 %cmp77, label %for.body.79, label %for.end.85

for.body.79:                                      ; preds = %for.cond.75
  %82 = load i32, i32* %new_num_binary_vars, align 4
  %83 = load i32, i32* %var, align 4
  %add80 = add nsw i32 %82, %83
  %idxprom81 = sext i32 %add80 to i64
  %84 = load i32*, i32** %new_part_size, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %84, i64 %idxprom81
  store i32 4, i32* %arrayidx82, align 4
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.79
  %85 = load i32, i32* %var, align 4
  %inc84 = add nsw i32 %85, 1
  store i32 %inc84, i32* %var, align 4
  br label %for.cond.75

for.end.85:                                       ; preds = %for.cond.75
  store i32 0, i32* %var, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.99, %for.end.85
  %86 = load i32, i32* %var, align 4
  %87 = load i32, i32* %old_num_vars, align 4
  %88 = load i32, i32* %old_num_binary_vars, align 4
  %sub87 = sub nsw i32 %87, %88
  %cmp88 = icmp slt i32 %86, %sub87
  br i1 %cmp88, label %for.body.90, label %for.end.101

for.body.90:                                      ; preds = %for.cond.86
  %89 = load i32, i32* %old_num_binary_vars, align 4
  %90 = load i32, i32* %var, align 4
  %add91 = add nsw i32 %89, %90
  %idxprom92 = sext i32 %add91 to i64
  %91 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %91, i64 %idxprom92
  %92 = load i32, i32* %arrayidx93, align 4
  %93 = load i32, i32* %new_num_binary_vars, align 4
  %94 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt94 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %94, i32 0, i32 0
  %95 = load i32, i32* %cnt94, align 4
  %add95 = add nsw i32 %93, %95
  %96 = load i32, i32* %var, align 4
  %add96 = add nsw i32 %add95, %96
  %idxprom97 = sext i32 %add96 to i64
  %97 = load i32*, i32** %new_part_size, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %97, i64 %idxprom97
  store i32 %92, i32* %arrayidx98, align 4
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.90
  %98 = load i32, i32* %var, align 4
  %inc100 = add nsw i32 %98, 1
  store i32 %inc100, i32* %var, align 4
  br label %for.cond.86

for.end.101:                                      ; preds = %for.cond.86
  call void (...) @setdown_cube()
  %99 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool102 = icmp ne i32* %99, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.101
  %100 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %101 = bitcast i32* %100 to i8*
  call void @free(i8* %101)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %for.end.101
  %102 = load i32, i32* %new_num_vars, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %103 = load i32, i32* %new_num_binary_vars, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %104 = load i32*, i32** %new_part_size, align 8
  store i32* %104, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  call void (...) @cube_setup()
  %105 = load i32, i32* %adjust_labels.addr, align 4
  %tobool105 = icmp ne i32 %105, 0
  br i1 %tobool105, label %if.then.106, label %if.end.264

if.then.106:                                      ; preds = %if.end.104
  %106 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %106, i32 0, i32 7
  %107 = load i8**, i8*** %label, align 8
  store i8** %107, i8*** %oldlabel, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %conv107 = sext i32 %108 to i64
  %mul108 = mul i64 8, %conv107
  %call109 = call i8* @malloc(i64 %mul108)
  %109 = bitcast i8* %call109 to i8**
  %110 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label110 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %110, i32 0, i32 7
  store i8** %109, i8*** %label110, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.179, %if.then.106
  %111 = load i32, i32* %var, align 4
  %112 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt112 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %112, i32 0, i32 0
  %113 = load i32, i32* %cnt112, align 4
  %cmp113 = icmp slt i32 %111, %113
  br i1 %cmp113, label %for.body.115, label %for.end.181

for.body.115:                                     ; preds = %for.cond.111
  %114 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %mul116 = mul nsw i32 %114, 2
  %115 = load i32, i32* %var, align 4
  %mul117 = mul nsw i32 %115, 4
  %add118 = add nsw i32 %mul116, %mul117
  store i32 %add118, i32* %newvar, align 4
  %116 = load i32, i32* %var, align 4
  %idxprom119 = sext i32 %116 to i64
  %117 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var1120 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %117, i32 0, i32 1
  %118 = load i32*, i32** %var1120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %118, i64 %idxprom119
  %119 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %119, 1
  %mul123 = mul nsw i32 %sub122, 2
  %add124 = add nsw i32 %mul123, 1
  %idxprom125 = sext i32 %add124 to i64
  %120 = load i8**, i8*** %oldlabel, align 8
  %arrayidx126 = getelementptr inbounds i8*, i8** %120, i64 %idxprom125
  %121 = load i8*, i8** %arrayidx126, align 8
  store i8* %121, i8** %var1, align 8
  %122 = load i32, i32* %var, align 4
  %idxprom127 = sext i32 %122 to i64
  %123 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var2128 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %123, i32 0, i32 2
  %124 = load i32*, i32** %var2128, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %124, i64 %idxprom127
  %125 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %125, 1
  %mul131 = mul nsw i32 %sub130, 2
  %add132 = add nsw i32 %mul131, 1
  %idxprom133 = sext i32 %add132 to i64
  %126 = load i8**, i8*** %oldlabel, align 8
  %arrayidx134 = getelementptr inbounds i8*, i8** %126, i64 %idxprom133
  %127 = load i8*, i8** %arrayidx134, align 8
  store i8* %127, i8** %var2, align 8
  %128 = load i32, i32* %var, align 4
  %idxprom135 = sext i32 %128 to i64
  %129 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var1136 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %129, i32 0, i32 1
  %130 = load i32*, i32** %var1136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %130, i64 %idxprom135
  %131 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %131, 1
  %mul139 = mul nsw i32 %sub138, 2
  %idxprom140 = sext i32 %mul139 to i64
  %132 = load i8**, i8*** %oldlabel, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %132, i64 %idxprom140
  %133 = load i8*, i8** %arrayidx141, align 8
  store i8* %133, i8** %var1bar, align 8
  %134 = load i32, i32* %var, align 4
  %idxprom142 = sext i32 %134 to i64
  %135 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var2143 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %135, i32 0, i32 2
  %136 = load i32*, i32** %var2143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %136, i64 %idxprom142
  %137 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %137, 1
  %mul146 = mul nsw i32 %sub145, 2
  %idxprom147 = sext i32 %mul146 to i64
  %138 = load i8**, i8*** %oldlabel, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %138, i64 %idxprom147
  %139 = load i8*, i8** %arrayidx148, align 8
  store i8* %139, i8** %var2bar, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %140 = load i8*, i8** %var1bar, align 8
  %141 = load i8*, i8** %var2bar, align 8
  %call149 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %140, i8* %141) #3
  %arraydecay150 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %call151 = call i8* @util_strsav(i8* %arraydecay150)
  %142 = load i32, i32* %newvar, align 4
  %idxprom152 = sext i32 %142 to i64
  %143 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label153 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %143, i32 0, i32 7
  %144 = load i8**, i8*** %label153, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %144, i64 %idxprom152
  store i8* %call151, i8** %arrayidx154, align 8
  %arraydecay155 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %145 = load i8*, i8** %var1bar, align 8
  %146 = load i8*, i8** %var2, align 8
  %call156 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %145, i8* %146) #3
  %arraydecay157 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %call158 = call i8* @util_strsav(i8* %arraydecay157)
  %147 = load i32, i32* %newvar, align 4
  %add159 = add nsw i32 %147, 1
  %idxprom160 = sext i32 %add159 to i64
  %148 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label161 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %148, i32 0, i32 7
  %149 = load i8**, i8*** %label161, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %149, i64 %idxprom160
  store i8* %call158, i8** %arrayidx162, align 8
  %arraydecay163 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %150 = load i8*, i8** %var1, align 8
  %151 = load i8*, i8** %var2bar, align 8
  %call164 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %150, i8* %151) #3
  %arraydecay165 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %call166 = call i8* @util_strsav(i8* %arraydecay165)
  %152 = load i32, i32* %newvar, align 4
  %add167 = add nsw i32 %152, 2
  %idxprom168 = sext i32 %add167 to i64
  %153 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label169 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %153, i32 0, i32 7
  %154 = load i8**, i8*** %label169, align 8
  %arrayidx170 = getelementptr inbounds i8*, i8** %154, i64 %idxprom168
  store i8* %call166, i8** %arrayidx170, align 8
  %arraydecay171 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %155 = load i8*, i8** %var1, align 8
  %156 = load i8*, i8** %var2, align 8
  %call172 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %155, i8* %156) #3
  %arraydecay173 = getelementptr inbounds [1000 x i8], [1000 x i8]* %scratch, i32 0, i32 0
  %call174 = call i8* @util_strsav(i8* %arraydecay173)
  %157 = load i32, i32* %newvar, align 4
  %add175 = add nsw i32 %157, 3
  %idxprom176 = sext i32 %add175 to i64
  %158 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label177 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %158, i32 0, i32 7
  %159 = load i8**, i8*** %label177, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %159, i64 %idxprom176
  store i8* %call174, i8** %arrayidx178, align 8
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.115
  %160 = load i32, i32* %var, align 4
  %inc180 = add nsw i32 %160, 1
  store i32 %inc180, i32* %var, align 4
  br label %for.cond.111

for.end.181:                                      ; preds = %for.cond.111
  store i32 0, i32* %i, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.216, %for.end.181
  %161 = load i32, i32* %var, align 4
  %162 = load i32, i32* %old_num_binary_vars, align 4
  %cmp183 = icmp slt i32 %161, %162
  br i1 %cmp183, label %for.body.185, label %for.end.218

for.body.185:                                     ; preds = %for.cond.182
  %163 = load i32, i32* %var, align 4
  %idxprom186 = sext i32 %163 to i64
  %164 = load i32*, i32** %paired, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %164, i64 %idxprom186
  %165 = load i32, i32* %arrayidx187, align 4
  %cmp188 = icmp eq i32 %165, 0
  br i1 %cmp188, label %if.then.190, label %if.end.215

if.then.190:                                      ; preds = %for.body.185
  %166 = load i32, i32* %var, align 4
  %mul191 = mul nsw i32 2, %166
  %idxprom192 = sext i32 %mul191 to i64
  %167 = load i8**, i8*** %oldlabel, align 8
  %arrayidx193 = getelementptr inbounds i8*, i8** %167, i64 %idxprom192
  %168 = load i8*, i8** %arrayidx193, align 8
  %169 = load i32, i32* %i, align 4
  %mul194 = mul nsw i32 2, %169
  %idxprom195 = sext i32 %mul194 to i64
  %170 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label196 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %170, i32 0, i32 7
  %171 = load i8**, i8*** %label196, align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %171, i64 %idxprom195
  store i8* %168, i8** %arrayidx197, align 8
  %172 = load i32, i32* %var, align 4
  %mul198 = mul nsw i32 2, %172
  %add199 = add nsw i32 %mul198, 1
  %idxprom200 = sext i32 %add199 to i64
  %173 = load i8**, i8*** %oldlabel, align 8
  %arrayidx201 = getelementptr inbounds i8*, i8** %173, i64 %idxprom200
  %174 = load i8*, i8** %arrayidx201, align 8
  %175 = load i32, i32* %i, align 4
  %mul202 = mul nsw i32 2, %175
  %add203 = add nsw i32 %mul202, 1
  %idxprom204 = sext i32 %add203 to i64
  %176 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label205 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %176, i32 0, i32 7
  %177 = load i8**, i8*** %label205, align 8
  %arrayidx206 = getelementptr inbounds i8*, i8** %177, i64 %idxprom204
  store i8* %174, i8** %arrayidx206, align 8
  %178 = load i32, i32* %var, align 4
  %mul207 = mul nsw i32 2, %178
  %add208 = add nsw i32 %mul207, 1
  %idxprom209 = sext i32 %add208 to i64
  %179 = load i8**, i8*** %oldlabel, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %179, i64 %idxprom209
  store i8* null, i8** %arrayidx210, align 8
  %180 = load i32, i32* %var, align 4
  %mul211 = mul nsw i32 2, %180
  %idxprom212 = sext i32 %mul211 to i64
  %181 = load i8**, i8*** %oldlabel, align 8
  %arrayidx213 = getelementptr inbounds i8*, i8** %181, i64 %idxprom212
  store i8* null, i8** %arrayidx213, align 8
  %182 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %182, 1
  store i32 %inc214, i32* %i, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.190, %for.body.185
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %183 = load i32, i32* %var, align 4
  %inc217 = add nsw i32 %183, 1
  store i32 %inc217, i32* %var, align 4
  br label %for.cond.182

for.end.218:                                      ; preds = %for.cond.182
  %184 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %mul219 = mul nsw i32 %184, 2
  %185 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt220 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %185, i32 0, i32 0
  %186 = load i32, i32* %cnt220, align 4
  %mul221 = mul nsw i32 %186, 4
  %add222 = add nsw i32 %mul219, %mul221
  store i32 %add222, i32* %new_mv_start, align 4
  %187 = load i32, i32* %old_mv_start, align 4
  store i32 %187, i32* %i, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.236, %for.end.218
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* %old_size, align 4
  %cmp224 = icmp slt i32 %188, %189
  br i1 %cmp224, label %for.body.226, label %for.end.238

for.body.226:                                     ; preds = %for.cond.223
  %190 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %190 to i64
  %191 = load i8**, i8*** %oldlabel, align 8
  %arrayidx228 = getelementptr inbounds i8*, i8** %191, i64 %idxprom227
  %192 = load i8*, i8** %arrayidx228, align 8
  %193 = load i32, i32* %new_mv_start, align 4
  %194 = load i32, i32* %i, align 4
  %add229 = add nsw i32 %193, %194
  %195 = load i32, i32* %old_mv_start, align 4
  %sub230 = sub nsw i32 %add229, %195
  %idxprom231 = sext i32 %sub230 to i64
  %196 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %label232 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %196, i32 0, i32 7
  %197 = load i8**, i8*** %label232, align 8
  %arrayidx233 = getelementptr inbounds i8*, i8** %197, i64 %idxprom231
  store i8* %192, i8** %arrayidx233, align 8
  %198 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %198 to i64
  %199 = load i8**, i8*** %oldlabel, align 8
  %arrayidx235 = getelementptr inbounds i8*, i8** %199, i64 %idxprom234
  store i8* null, i8** %arrayidx235, align 8
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.226
  %200 = load i32, i32* %i, align 4
  %inc237 = add nsw i32 %200, 1
  store i32 %inc237, i32* %i, align 4
  br label %for.cond.223

for.end.238:                                      ; preds = %for.cond.223
  store i32 0, i32* %i, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.258, %for.end.238
  %201 = load i32, i32* %i, align 4
  %202 = load i32, i32* %old_size, align 4
  %cmp240 = icmp slt i32 %201, %202
  br i1 %cmp240, label %for.body.242, label %for.end.260

for.body.242:                                     ; preds = %for.cond.239
  %203 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %203 to i64
  %204 = load i8**, i8*** %oldlabel, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %204, i64 %idxprom243
  %205 = load i8*, i8** %arrayidx244, align 8
  %cmp245 = icmp ne i8* %205, null
  br i1 %cmp245, label %if.then.247, label %if.end.257

if.then.247:                                      ; preds = %for.body.242
  %206 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %206 to i64
  %207 = load i8**, i8*** %oldlabel, align 8
  %arrayidx249 = getelementptr inbounds i8*, i8** %207, i64 %idxprom248
  %208 = load i8*, i8** %arrayidx249, align 8
  %tobool250 = icmp ne i8* %208, null
  br i1 %tobool250, label %if.then.251, label %if.end.256

if.then.251:                                      ; preds = %if.then.247
  %209 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %209 to i64
  %210 = load i8**, i8*** %oldlabel, align 8
  %arrayidx253 = getelementptr inbounds i8*, i8** %210, i64 %idxprom252
  %211 = load i8*, i8** %arrayidx253, align 8
  call void @free(i8* %211)
  %212 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %212 to i64
  %213 = load i8**, i8*** %oldlabel, align 8
  %arrayidx255 = getelementptr inbounds i8*, i8** %213, i64 %idxprom254
  store i8* null, i8** %arrayidx255, align 8
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.251, %if.then.247
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %for.body.242
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.257
  %214 = load i32, i32* %i, align 4
  %inc259 = add nsw i32 %214, 1
  store i32 %inc259, i32* %i, align 4
  br label %for.cond.239

for.end.260:                                      ; preds = %for.cond.239
  %215 = load i8**, i8*** %oldlabel, align 8
  %tobool261 = icmp ne i8** %215, null
  br i1 %tobool261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %for.end.260
  %216 = load i8**, i8*** %oldlabel, align 8
  %217 = bitcast i8** %216 to i8*
  call void @free(i8* %217)
  store i8** null, i8*** %oldlabel, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %for.end.260
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.end.104
  store i32 0, i32* %var, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.273, %if.end.264
  %218 = load i32, i32* %var, align 4
  %219 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt266 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %219, i32 0, i32 0
  %220 = load i32, i32* %cnt266, align 4
  %cmp267 = icmp slt i32 %218, %220
  br i1 %cmp267, label %for.body.269, label %for.end.275

for.body.269:                                     ; preds = %for.cond.265
  %221 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %222 = load i32, i32* %var, align 4
  %add270 = add nsw i32 %221, %222
  %idxprom271 = sext i32 %add270 to i64
  %223 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %223, i64 %idxprom271
  store i32 0, i32* %arrayidx272, align 4
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.body.269
  %224 = load i32, i32* %var, align 4
  %inc274 = add nsw i32 %224, 1
  store i32 %inc274, i32* %var, align 4
  br label %for.cond.265

for.end.275:                                      ; preds = %for.cond.265
  %225 = load i32*, i32** %paired, align 8
  %tobool276 = icmp ne i32* %225, null
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %for.end.275
  %226 = load i32*, i32** %paired, align 8
  %227 = bitcast i32* %226 to i8*
  call void @free(i8* %227)
  store i32* null, i32** %paired, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %for.end.275
  ret void
}

declare i32 @makeup_labels(...) #1

declare i8* @malloc(i64) #1

declare void @fatal(...) #1

declare void @setdown_cube(...) #1

declare void @free(i8*) #1

declare void @cube_setup(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @util_strsav(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @pairvar(%struct.set_family* %A, %struct.pair_struct* %pair) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %pair.addr = alloca %struct.pair_struct*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %val = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b0 = alloca i32, align 4
  %insert_col = alloca i32, align 4
  %pairnum = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %insert_col, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %4 = load i32, i32* %insert_col, align 4
  %5 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %cnt, align 4
  %mul = mul nsw i32 -4, %6
  %call = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_delcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %3, i32 %4, i32 %mul)
  store %struct.set_family* %call, %struct.set_family** %A.addr, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  store i32* %8, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %10 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count, align 4
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %mul1 = mul nsw i32 %11, %13
  %idx.ext = sext i32 %mul1 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %entry
  %14 = load i32*, i32** %p, align 8
  %15 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %14, %15
  br i1 %cmp, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %pairnum, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %pairnum, align 4
  %17 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt3 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %cnt3, align 4
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %19 = load i32, i32* %pairnum, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %20, i32 0, i32 1
  %21 = load i32*, i32** %var1, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %21, i64 %idxprom6
  %22 = load i32, i32* %arrayidx7, align 4
  %sub8 = sub nsw i32 %22, 1
  %idxprom9 = sext i32 %sub8 to i64
  %23 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %idxprom9
  %24 = load i32, i32* %arrayidx10, align 4
  store i32 %24, i32* %p1, align 4
  %25 = load i32, i32* %pairnum, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %26, i32 0, i32 2
  %27 = load i32*, i32** %var2, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  %28 = load i32, i32* %arrayidx12, align 4
  %sub13 = sub nsw i32 %28, 1
  %idxprom14 = sext i32 %sub13 to i64
  %29 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  %30 = load i32, i32* %arrayidx15, align 4
  store i32 %30, i32* %p2, align 4
  %31 = load i32, i32* %p2, align 4
  %add = add nsw i32 %31, 1
  %shr = ashr i32 %add, 5
  %add16 = add nsw i32 %shr, 1
  %idxprom17 = sext i32 %add16 to i64
  %32 = load i32*, i32** %p, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %32, i64 %idxprom17
  %33 = load i32, i32* %arrayidx18, align 4
  %34 = load i32, i32* %p2, align 4
  %add19 = add nsw i32 %34, 1
  %and = and i32 %add19, 31
  %shl = shl i32 1, %and
  %and20 = and i32 %33, %shl
  store i32 %and20, i32* %b1, align 4
  %35 = load i32, i32* %p2, align 4
  %shr21 = ashr i32 %35, 5
  %add22 = add nsw i32 %shr21, 1
  %idxprom23 = sext i32 %add22 to i64
  %36 = load i32*, i32** %p, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %36, i64 %idxprom23
  %37 = load i32, i32* %arrayidx24, align 4
  %38 = load i32, i32* %p2, align 4
  %and25 = and i32 %38, 31
  %shl26 = shl i32 1, %and25
  %and27 = and i32 %37, %shl26
  store i32 %and27, i32* %b0, align 4
  %39 = load i32, i32* %insert_col, align 4
  %40 = load i32, i32* %pairnum, align 4
  %mul28 = mul nsw i32 %40, 4
  %add29 = add nsw i32 %39, %mul28
  store i32 %add29, i32* %val, align 4
  %41 = load i32, i32* %p1, align 4
  %shr30 = ashr i32 %41, 5
  %add31 = add nsw i32 %shr30, 1
  %idxprom32 = sext i32 %add31 to i64
  %42 = load i32*, i32** %p, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %42, i64 %idxprom32
  %43 = load i32, i32* %arrayidx33, align 4
  %44 = load i32, i32* %p1, align 4
  %and34 = and i32 %44, 31
  %shl35 = shl i32 1, %and34
  %and36 = and i32 %43, %shl35
  %tobool = icmp ne i32 %and36, 0
  br i1 %tobool, label %if.then, label %if.end.59

if.then:                                          ; preds = %for.body.5
  %45 = load i32, i32* %b0, align 4
  %tobool37 = icmp ne i32 %45, 0
  br i1 %tobool37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %if.then
  %46 = load i32, i32* %val, align 4
  %add39 = add nsw i32 %46, 3
  %and40 = and i32 %add39, 31
  %shl41 = shl i32 1, %and40
  %47 = load i32, i32* %val, align 4
  %add42 = add nsw i32 %47, 3
  %shr43 = ashr i32 %add42, 5
  %add44 = add nsw i32 %shr43, 1
  %idxprom45 = sext i32 %add44 to i64
  %48 = load i32*, i32** %p, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %48, i64 %idxprom45
  %49 = load i32, i32* %arrayidx46, align 4
  %or = or i32 %49, %shl41
  store i32 %or, i32* %arrayidx46, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.38, %if.then
  %50 = load i32, i32* %b1, align 4
  %tobool47 = icmp ne i32 %50, 0
  br i1 %tobool47, label %if.then.48, label %if.end.58

if.then.48:                                       ; preds = %if.end
  %51 = load i32, i32* %val, align 4
  %add49 = add nsw i32 %51, 2
  %and50 = and i32 %add49, 31
  %shl51 = shl i32 1, %and50
  %52 = load i32, i32* %val, align 4
  %add52 = add nsw i32 %52, 2
  %shr53 = ashr i32 %add52, 5
  %add54 = add nsw i32 %shr53, 1
  %idxprom55 = sext i32 %add54 to i64
  %53 = load i32*, i32** %p, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %53, i64 %idxprom55
  %54 = load i32, i32* %arrayidx56, align 4
  %or57 = or i32 %54, %shl51
  store i32 %or57, i32* %arrayidx56, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.48, %if.end
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %for.body.5
  %55 = load i32, i32* %p1, align 4
  %add60 = add nsw i32 %55, 1
  %shr61 = ashr i32 %add60, 5
  %add62 = add nsw i32 %shr61, 1
  %idxprom63 = sext i32 %add62 to i64
  %56 = load i32*, i32** %p, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %56, i64 %idxprom63
  %57 = load i32, i32* %arrayidx64, align 4
  %58 = load i32, i32* %p1, align 4
  %add65 = add nsw i32 %58, 1
  %and66 = and i32 %add65, 31
  %shl67 = shl i32 1, %and66
  %and68 = and i32 %57, %shl67
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.93

if.then.70:                                       ; preds = %if.end.59
  %59 = load i32, i32* %b0, align 4
  %tobool71 = icmp ne i32 %59, 0
  br i1 %tobool71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %if.then.70
  %60 = load i32, i32* %val, align 4
  %add73 = add nsw i32 %60, 1
  %and74 = and i32 %add73, 31
  %shl75 = shl i32 1, %and74
  %61 = load i32, i32* %val, align 4
  %add76 = add nsw i32 %61, 1
  %shr77 = ashr i32 %add76, 5
  %add78 = add nsw i32 %shr77, 1
  %idxprom79 = sext i32 %add78 to i64
  %62 = load i32*, i32** %p, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %62, i64 %idxprom79
  %63 = load i32, i32* %arrayidx80, align 4
  %or81 = or i32 %63, %shl75
  store i32 %or81, i32* %arrayidx80, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.72, %if.then.70
  %64 = load i32, i32* %b1, align 4
  %tobool83 = icmp ne i32 %64, 0
  br i1 %tobool83, label %if.then.84, label %if.end.92

if.then.84:                                       ; preds = %if.end.82
  %65 = load i32, i32* %val, align 4
  %and85 = and i32 %65, 31
  %shl86 = shl i32 1, %and85
  %66 = load i32, i32* %val, align 4
  %shr87 = ashr i32 %66, 5
  %add88 = add nsw i32 %shr87, 1
  %idxprom89 = sext i32 %add88 to i64
  %67 = load i32*, i32** %p, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %67, i64 %idxprom89
  %68 = load i32, i32* %arrayidx90, align 4
  %or91 = or i32 %68, %shl86
  store i32 %or91, i32* %arrayidx90, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.84, %if.end.82
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.93
  %69 = load i32, i32* %pairnum, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %pairnum, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %70 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize95 = getelementptr inbounds %struct.set_family, %struct.set_family* %70, i32 0, i32 0
  %71 = load i32, i32* %wsize95, align 4
  %72 = load i32*, i32** %p, align 8
  %idx.ext96 = sext i32 %71 to i64
  %add.ptr97 = getelementptr inbounds i32, i32* %72, i64 %idx.ext96
  store i32* %add.ptr97, i32** %p, align 8
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  %73 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %73
}

declare %struct.set_family* @sf_delcol(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @delvar(%struct.set_family* %A, i32* %paired) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %paired.addr = alloca i32*, align 8
  %run = alloca i32, align 4
  %first_run = alloca i32, align 4
  %run_length = alloca i32, align 4
  %var = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %paired, i32** %paired.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %run, align 4
  store i32 0, i32* %run_length, align 4
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %var, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %var, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %paired.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else.9

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %run, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %var, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %run_length, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %run_length, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 1, i32* %run, align 4
  %10 = load i32, i32* %var, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  store i32 %12, i32* %first_run, align 4
  %13 = load i32, i32* %var, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  store i32 %15, i32* %run_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.14

if.else.9:                                        ; preds = %for.body
  %16 = load i32, i32* %run, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else.9
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %18 = load i32, i32* %first_run, align 4
  %19 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* %run_length, align 4
  %call = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_delcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %17, i32 %sub, i32 %20)
  store %struct.set_family* %call, %struct.set_family** %A.addr, align 8
  store i32 0, i32* %run, align 4
  %21 = load i32, i32* %run_length, align 4
  %22 = load i32, i32* %offset, align 4
  %add12 = add nsw i32 %22, %21
  store i32 %add12, i32* %offset, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %23 = load i32, i32* %var, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %run, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.end
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %26 = load i32, i32* %first_run, align 4
  %27 = load i32, i32* %offset, align 4
  %sub17 = sub nsw i32 %26, %27
  %28 = load i32, i32* %run_length, align 4
  %call18 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_delcol to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %25, i32 %sub17, i32 %28)
  store %struct.set_family* %call18, %struct.set_family** %A.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %for.end
  %29 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %29
}

; Function Attrs: nounwind uwtable
define void @find_optimal_pairing(%struct.PLA_t* %PLA, i32 %strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %strategy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cost_array = alloca i32**, align 8
  %t = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %1 = load i32, i32* %strategy.addr, align 4
  %call = call i32** @find_pairing_cost(%struct.PLA_t* %0, i32 %1)
  store i32** %call, i32*** %cost_array, align 8
  %2 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.19, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body.6, label %for.end.21

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %9, 1
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %add7)
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.body.6
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.9
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32**, i32*** %cost_array, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %14, i64 %idxprom12
  %15 = load i32*, i32** %arrayidx, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %16)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.11
  %17 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.17
  %18 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.4

for.end.21:                                       ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end.21, %entry
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp22 = icmp sle i32 %19, 14
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %20 = load i32**, i32*** %cost_array, align 8
  %call24 = call %struct.pair_struct* @pair_best_cost(i32** %20)
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 6
  store %struct.pair_struct* %call24, %struct.pair_struct** %pair, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %22 = load i32**, i32*** %cost_array, align 8
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair25 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %23, i32 0, i32 6
  %call26 = call i32 @greedy_best_cost(i32** %22, %struct.pair_struct** %pair25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.23
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair29 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 6
  %25 = load %struct.pair_struct*, %struct.pair_struct** %pair29, align 8
  %call30 = call i32 @print_pair(%struct.pair_struct* %25)
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %if.end.27
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp32 = icmp slt i32 %26, %27
  br i1 %cmp32, label %for.body.33, label %for.end.45

for.body.33:                                      ; preds = %for.cond.31
  %28 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load i32**, i32*** %cost_array, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %29, i64 %idxprom34
  %30 = load i32*, i32** %arrayidx35, align 8
  %tobool36 = icmp ne i32* %30, null
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %for.body.33
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load i32**, i32*** %cost_array, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %32, i64 %idxprom38
  %33 = load i32*, i32** %arrayidx39, align 8
  %34 = bitcast i32* %33 to i8*
  call void @free(i8* %34)
  %35 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load i32**, i32*** %cost_array, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %36, i64 %idxprom40
  store i32* null, i32** %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %for.body.33
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %37 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %37, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  %38 = load i32**, i32*** %cost_array, align 8
  %tobool46 = icmp ne i32** %38, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end.45
  %39 = load i32**, i32*** %cost_array, align 8
  %40 = bitcast i32** %39 to i8*
  call void @free(i8* %40)
  store i32** null, i32*** %cost_array, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.end.45
  %41 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @set_pair(%struct.PLA_t* %41)
  %call49 = call i64 (...) @util_cpu_time()
  store i64 %call49, i64* %t, align 8
  %42 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %42, i32 0, i32 0
  %43 = load %struct.set_family*, %struct.set_family** %F, align 8
  %44 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %44, i32 0, i32 1
  %45 = load %struct.set_family*, %struct.set_family** %D, align 8
  %46 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %46, i32 0, i32 2
  %47 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call50 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %43, %struct.set_family* %45, %struct.set_family* %47)
  %48 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F51 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %48, i32 0, i32 0
  store %struct.set_family* %call50, %struct.set_family** %F51, align 8
  %49 = load i32, i32* @summary, align 4
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.48
  %50 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F54 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %50, i32 0, i32 0
  %51 = load %struct.set_family*, %struct.set_family** %F54, align 8
  %call55 = call i64 (...) @util_cpu_time()
  %52 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call55, %52
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 %sub)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.48
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i64 @util_cpu_time(...) #1

declare %struct.set_family* @espresso(...) #1

declare void @print_trace(...) #1

; Function Attrs: nounwind uwtable
define i32** @find_pairing_cost(%struct.PLA_t* %PLA, i32 %strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %strategy.addr = alloca i32, align 4
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  %cost_array = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xnum_binary_vars = alloca i32, align 4
  %xnum_vars = alloca i32, align 4
  %xpart_size = alloca i32*, align 8
  %cost = alloca i32, align 4
  %T = alloca %struct.set_family*, align 8
  %Fsave = alloca %struct.set_family*, align 8
  %Dsave = alloca %struct.set_family*, align 8
  %Rsave = alloca %struct.set_family*, align 8
  %mask = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @malloc(i64 %mul)
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %cost_array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @malloc(i64 %mul3)
  %5 = bitcast i8* %call4 to i32*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32**, i32*** %cost_array, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 %idxprom
  store i32* %5, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.20, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body.8, label %for.end.22

for.body.8:                                       ; preds = %for.cond.5
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.17, %for.body.8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.12, label %for.end.19

for.body.12:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32**, i32*** %cost_array, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %15, i64 %idxprom14
  %16 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 %idxprom13
  store i32 0, i32* %arrayidx16, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.12
  %17 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.9

for.end.19:                                       ; preds = %for.cond.9
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.5

for.end.22:                                       ; preds = %for.cond.5
  %call23 = call %struct.pair_struct* @pair_new(i32 1)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 6
  store %struct.pair_struct* %call23, %struct.pair_struct** %pair, align 8
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair24 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 6
  %21 = load %struct.pair_struct*, %struct.pair_struct** %pair24, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %21, i32 0, i32 0
  store i32 1, i32* %cnt, align 4
  store i32 0, i32* %var1, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.139, %for.end.22
  %22 = load i32, i32* %var1, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %23, 1
  %cmp26 = icmp slt i32 %22, %sub
  br i1 %cmp26, label %for.body.28, label %for.end.141

for.body.28:                                      ; preds = %for.cond.25
  %24 = load i32, i32* %var1, align 4
  %add = add nsw i32 %24, 1
  store i32 %add, i32* %var2, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.136, %for.body.28
  %25 = load i32, i32* %var2, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp30 = icmp slt i32 %25, %26
  br i1 %cmp30, label %for.body.32, label %for.end.138

for.body.32:                                      ; preds = %for.cond.29
  %27 = load i32, i32* %strategy.addr, align 4
  %cmp33 = icmp sgt i32 %27, 0
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.32
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %28, i32 0, i32 0
  %29 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call35 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %29)
  store %struct.set_family* %call35, %struct.set_family** %Fsave, align 8
  %30 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %30, i32 0, i32 1
  %31 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call36 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %31)
  store %struct.set_family* %call36, %struct.set_family** %Dsave, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 2
  %33 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call37 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %33)
  store %struct.set_family* %call37, %struct.set_family** %Rsave, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %34, i32* %xnum_binary_vars, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  store i32 %35, i32* %xnum_vars, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv38 = sext i32 %36 to i64
  %mul39 = mul i64 4, %conv38
  %call40 = call i8* @malloc(i64 %mul39)
  %37 = bitcast i8* %call40 to i32*
  store i32* %37, i32** %xpart_size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.49, %if.then
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp42 = icmp slt i32 %38, %39
  br i1 %cmp42, label %for.body.44, label %for.end.51

for.body.44:                                      ; preds = %for.cond.41
  %40 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %41, i64 %idxprom45
  %42 = load i32, i32* %arrayidx46, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %43 to i64
  %44 = load i32*, i32** %xpart_size, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %44, i64 %idxprom47
  store i32 %42, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.44
  %45 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.41

for.end.51:                                       ; preds = %for.cond.41
  %46 = load i32, i32* %var1, align 4
  %add52 = add nsw i32 %46, 1
  %47 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair53 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 6
  %48 = load %struct.pair_struct*, %struct.pair_struct** %pair53, align 8
  %var154 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %48, i32 0, i32 1
  %49 = load i32*, i32** %var154, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %add52, i32* %arrayidx55, align 4
  %50 = load i32, i32* %var2, align 4
  %add56 = add nsw i32 %50, 1
  %51 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair57 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %51, i32 0, i32 6
  %52 = load %struct.pair_struct*, %struct.pair_struct** %pair57, align 8
  %var258 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %52, i32 0, i32 2
  %53 = load i32*, i32** %var258, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %add56, i32* %arrayidx59, align 4
  %54 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @set_pair1(%struct.PLA_t* %54, i32 0)
  br label %if.end

if.end:                                           ; preds = %for.end.51, %for.body.32
  %55 = load i32, i32* %strategy.addr, align 4
  switch i32 %55, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.68
    i32 1, label %sw.bb.78
    i32 0, label %sw.bb.95
  ]

sw.bb:                                            ; preds = %if.end
  %56 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F60 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %56, i32 0, i32 0
  %57 = load %struct.set_family*, %struct.set_family** %F60, align 8
  %58 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D61 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %58, i32 0, i32 1
  %59 = load %struct.set_family*, %struct.set_family** %D61, align 8
  %60 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R62 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %60, i32 0, i32 2
  %61 = load %struct.set_family*, %struct.set_family** %R62, align 8
  %call63 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %57, %struct.set_family* %59, %struct.set_family* %61, i32 1)
  %62 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F64 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %62, i32 0, i32 0
  store %struct.set_family* %call63, %struct.set_family** %F64, align 8
  %63 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 3
  %64 = load i32, i32* %count, align 4
  %65 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F65 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %65, i32 0, i32 0
  %66 = load %struct.set_family*, %struct.set_family** %F65, align 8
  %count66 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 3
  %67 = load i32, i32* %count66, align 4
  %sub67 = sub nsw i32 %64, %67
  store i32 %sub67, i32* %cost, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %68 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F69 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %68, i32 0, i32 0
  %69 = load %struct.set_family*, %struct.set_family** %F69, align 8
  %70 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D70 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %70, i32 0, i32 1
  %71 = load %struct.set_family*, %struct.set_family** %D70, align 8
  %72 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R71 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %72, i32 0, i32 2
  %73 = load %struct.set_family*, %struct.set_family** %R71, align 8
  %call72 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %69, %struct.set_family* %71, %struct.set_family* %73)
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F73 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 0
  store %struct.set_family* %call72, %struct.set_family** %F73, align 8
  %75 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %count74 = getelementptr inbounds %struct.set_family, %struct.set_family* %75, i32 0, i32 3
  %76 = load i32, i32* %count74, align 4
  %77 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F75 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %77, i32 0, i32 0
  %78 = load %struct.set_family*, %struct.set_family** %F75, align 8
  %count76 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 3
  %79 = load i32, i32* %count76, align 4
  %sub77 = sub nsw i32 %76, %79
  store i32 %sub77, i32* %cost, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end
  %80 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F79 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %80, i32 0, i32 0
  %81 = load %struct.set_family*, %struct.set_family** %F79, align 8
  %82 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D80 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %82, i32 0, i32 1
  %83 = load %struct.set_family*, %struct.set_family** %D80, align 8
  %call81 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @reduce to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %81, %struct.set_family* %83)
  %84 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F82 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %84, i32 0, i32 0
  store %struct.set_family* %call81, %struct.set_family** %F82, align 8
  %85 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F83 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %85, i32 0, i32 0
  %86 = load %struct.set_family*, %struct.set_family** %F83, align 8
  %87 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R84 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %87, i32 0, i32 2
  %88 = load %struct.set_family*, %struct.set_family** %R84, align 8
  %call85 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %86, %struct.set_family* %88, i32 0)
  %89 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F86 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %89, i32 0, i32 0
  store %struct.set_family* %call85, %struct.set_family** %F86, align 8
  %90 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F87 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %90, i32 0, i32 0
  %91 = load %struct.set_family*, %struct.set_family** %F87, align 8
  %92 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D88 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %92, i32 0, i32 1
  %93 = load %struct.set_family*, %struct.set_family** %D88, align 8
  %call89 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %91, %struct.set_family* %93)
  %94 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %94, i32 0, i32 0
  store %struct.set_family* %call89, %struct.set_family** %F90, align 8
  %95 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %count91 = getelementptr inbounds %struct.set_family, %struct.set_family* %95, i32 0, i32 3
  %96 = load i32, i32* %count91, align 4
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 0
  %98 = load %struct.set_family*, %struct.set_family** %F92, align 8
  %count93 = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 3
  %99 = load i32, i32* %count93, align 4
  %sub94 = sub nsw i32 %96, %99
  store i32 %sub94, i32* %cost, align 4
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end
  %100 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp96 = icmp sle i32 %100, 32
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.95
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.95
  %101 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub98 = sub nsw i32 %101, 1
  %shr = ashr i32 %sub98, 5
  %add99 = add nsw i32 %shr, 1
  %add100 = add nsw i32 %add99, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add100, %cond.false ]
  %conv101 = sext i32 %cond to i64
  %mul102 = mul i64 4, %conv101
  %call103 = call i8* @malloc(i64 %mul102)
  %102 = bitcast i8* %call103 to i32*
  %103 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call104 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %102, i32 %103)
  store i32* %call104, i32** %mask, align 8
  %104 = load i32*, i32** %mask, align 8
  %105 = load i32, i32* %var1, align 4
  %idxprom105 = sext i32 %105 to i64
  %106 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %106, i64 %idxprom105
  %107 = load i32*, i32** %arrayidx106, align 8
  %108 = load i32, i32* %var2, align 4
  %idxprom107 = sext i32 %108 to i64
  %109 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %109, i64 %idxprom107
  %110 = load i32*, i32** %arrayidx108, align 8
  %call109 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %104, i32* %107, i32* %110)
  %111 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F110 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %111, i32 0, i32 0
  %112 = load %struct.set_family*, %struct.set_family** %F110, align 8
  %call111 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %112)
  %113 = load i32*, i32** %mask, align 8
  %call112 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @dist_merge to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call111, i32* %113)
  store %struct.set_family* %call112, %struct.set_family** %T, align 8
  %114 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F113 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %114, i32 0, i32 0
  %115 = load %struct.set_family*, %struct.set_family** %F113, align 8
  %count114 = getelementptr inbounds %struct.set_family, %struct.set_family* %115, i32 0, i32 3
  %116 = load i32, i32* %count114, align 4
  %117 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count115 = getelementptr inbounds %struct.set_family, %struct.set_family* %117, i32 0, i32 3
  %118 = load i32, i32* %count115, align 4
  %sub116 = sub nsw i32 %116, %118
  store i32 %sub116, i32* %cost, align 4
  %119 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %119)
  %120 = load i32*, i32** %mask, align 8
  %tobool = icmp ne i32* %120, null
  br i1 %tobool, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %cond.end
  %121 = load i32*, i32** %mask, align 8
  %122 = bitcast i32* %121 to i8*
  call void @free(i8* %122)
  store i32* null, i32** %mask, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.118, %if.end, %sw.bb.78, %sw.bb.68, %sw.bb
  %123 = load i32, i32* %cost, align 4
  %124 = load i32, i32* %var2, align 4
  %idxprom119 = sext i32 %124 to i64
  %125 = load i32, i32* %var1, align 4
  %idxprom120 = sext i32 %125 to i64
  %126 = load i32**, i32*** %cost_array, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %126, i64 %idxprom120
  %127 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %127, i64 %idxprom119
  store i32 %123, i32* %arrayidx122, align 4
  %128 = load i32, i32* %strategy.addr, align 4
  %cmp123 = icmp sgt i32 %128, 0
  br i1 %cmp123, label %if.then.125, label %if.end.135

if.then.125:                                      ; preds = %sw.epilog
  call void (...) @setdown_cube()
  %129 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool126 = icmp ne i32* %129, null
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.then.125
  %130 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %131 = bitcast i32* %130 to i8*
  call void @free(i8* %131)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.then.125
  %132 = load i32, i32* %xnum_binary_vars, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %133 = load i32, i32* %xnum_vars, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %134 = load i32*, i32** %xpart_size, align 8
  store i32* %134, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  call void (...) @cube_setup()
  %135 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F129 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %135, i32 0, i32 0
  %136 = load %struct.set_family*, %struct.set_family** %F129, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %136)
  %137 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D130 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %137, i32 0, i32 1
  %138 = load %struct.set_family*, %struct.set_family** %D130, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %138)
  %139 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R131 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %139, i32 0, i32 2
  %140 = load %struct.set_family*, %struct.set_family** %R131, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %140)
  %141 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %142 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F132 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %142, i32 0, i32 0
  store %struct.set_family* %141, %struct.set_family** %F132, align 8
  %143 = load %struct.set_family*, %struct.set_family** %Dsave, align 8
  %144 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D133 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %144, i32 0, i32 1
  store %struct.set_family* %143, %struct.set_family** %D133, align 8
  %145 = load %struct.set_family*, %struct.set_family** %Rsave, align 8
  %146 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R134 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %146, i32 0, i32 2
  store %struct.set_family* %145, %struct.set_family** %R134, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.128, %sw.epilog
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %147 = load i32, i32* %var2, align 4
  %inc137 = add nsw i32 %147, 1
  store i32 %inc137, i32* %var2, align 4
  br label %for.cond.29

for.end.138:                                      ; preds = %for.cond.29
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end.138
  %148 = load i32, i32* %var1, align 4
  %inc140 = add nsw i32 %148, 1
  store i32 %inc140, i32* %var1, align 4
  br label %for.cond.25

for.end.141:                                      ; preds = %for.cond.25
  %149 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair142 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %149, i32 0, i32 6
  %150 = load %struct.pair_struct*, %struct.pair_struct** %pair142, align 8
  %call143 = call i32 @pair_free(%struct.pair_struct* %150)
  %151 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair144 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %151, i32 0, i32 6
  store %struct.pair_struct* null, %struct.pair_struct** %pair144, align 8
  %152 = load i32**, i32*** %cost_array, align 8
  ret i32** %152
}

declare %struct.set_family* @sf_save(...) #1

declare %struct.set_family* @minimize_exact(...) #1

declare %struct.set_family* @reduce(...) #1

declare %struct.set_family* @expand(...) #1

declare %struct.set_family* @irredundant(...) #1

declare i32* @set_clear(...) #1

declare i32* @set_or(...) #1

declare %struct.set_family* @dist_merge(...) #1

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define i32 @print_pair(%struct.pair_struct* %pair) #0 {
entry:
  %retval = alloca i32, align 4
  %pair.addr = alloca %struct.pair_struct*, align 8
  %i = alloca i32, align 4
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %cnt, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %4, i32 0, i32 1
  %5 = load i32*, i32** %var1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %8, i32 0, i32 2
  %9 = load i32*, i32** %var2, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %6, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @greedy_best_cost(i32** %cost_array_local, %struct.pair_struct** %pair_p) #0 {
entry:
  %cost_array_local.addr = alloca i32**, align 8
  %pair_p.addr = alloca %struct.pair_struct**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %besti = alloca i32, align 4
  %bestj = alloca i32, align 4
  %maxcost = alloca i32, align 4
  %total_cost = alloca i32, align 4
  %cand = alloca i32*, align 8
  %pair = alloca %struct.pair_struct*, align 8
  store i32** %cost_array_local, i32*** %cost_array_local.addr, align 8
  store %struct.pair_struct** %pair_p, %struct.pair_struct*** %pair_p.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call = call %struct.pair_struct* @pair_new(i32 %0)
  store %struct.pair_struct* %call, %struct.pair_struct** %pair, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %2, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add1 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add1, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call2 = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call3 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %3, i32 %4)
  store i32* %call3, i32** %cand, align 8
  store i32 0, i32* %total_cost, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.41, %cond.end
  %5 = load i32*, i32** %cand, align 8
  %call4 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %5)
  %cmp5 = icmp sge i32 %call4, 2
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 -1, i32* %maxcost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %while.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body, label %for.end.41

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %shr9 = ashr i32 %8, 5
  %add10 = add nsw i32 %shr9, 1
  %idxprom = sext i32 %add10 to i64
  %9 = load i32*, i32** %cand, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %and = and i32 %11, 31
  %shl = shl i32 1, %and
  %and11 = and i32 %10, %shl
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %12, 1
  store i32 %add12, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %15 = load i32, i32* %j, align 4
  %shr17 = ashr i32 %15, 5
  %add18 = add nsw i32 %shr17, 1
  %idxprom19 = sext i32 %add18 to i64
  %16 = load i32*, i32** %cand, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %16, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %18 = load i32, i32* %j, align 4
  %and21 = and i32 %18, 31
  %shl22 = shl i32 1, %and21
  %and23 = and i32 %17, %shl22
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %for.body.16
  %19 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %21 = load i32**, i32*** %cost_array_local.addr, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %21, i64 %idxprom27
  %22 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %22, i64 %idxprom26
  %23 = load i32, i32* %arrayidx29, align 4
  %24 = load i32, i32* %maxcost, align 4
  %cmp30 = icmp sgt i32 %23, %24
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.25
  %25 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i32**, i32*** %cost_array_local.addr, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %27, i64 %idxprom34
  %28 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %28, i64 %idxprom33
  %29 = load i32, i32* %arrayidx36, align 4
  store i32 %29, i32* %maxcost, align 4
  %30 = load i32, i32* %i, align 4
  store i32 %30, i32* %besti, align 4
  %31 = load i32, i32* %j, align 4
  store i32 %31, i32* %bestj, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %for.body
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %33 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end.41:                                       ; preds = %for.cond
  %34 = load i32, i32* %besti, align 4
  %add42 = add nsw i32 %34, 1
  %35 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %35, i32 0, i32 0
  %36 = load i32, i32* %cnt, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %37, i32 0, i32 1
  %38 = load i32*, i32** %var1, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %38, i64 %idxprom43
  store i32 %add42, i32* %arrayidx44, align 4
  %39 = load i32, i32* %bestj, align 4
  %add45 = add nsw i32 %39, 1
  %40 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt46 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %40, i32 0, i32 0
  %41 = load i32, i32* %cnt46, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %42, i32 0, i32 2
  %43 = load i32*, i32** %var2, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %43, i64 %idxprom47
  store i32 %add45, i32* %arrayidx48, align 4
  %44 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %cnt49 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %44, i32 0, i32 0
  %45 = load i32, i32* %cnt49, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %cnt49, align 4
  %46 = load i32, i32* %besti, align 4
  %and51 = and i32 %46, 31
  %shl52 = shl i32 1, %and51
  %neg = xor i32 %shl52, -1
  %47 = load i32, i32* %besti, align 4
  %shr53 = ashr i32 %47, 5
  %add54 = add nsw i32 %shr53, 1
  %idxprom55 = sext i32 %add54 to i64
  %48 = load i32*, i32** %cand, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %48, i64 %idxprom55
  %49 = load i32, i32* %arrayidx56, align 4
  %and57 = and i32 %49, %neg
  store i32 %and57, i32* %arrayidx56, align 4
  %50 = load i32, i32* %bestj, align 4
  %and58 = and i32 %50, 31
  %shl59 = shl i32 1, %and58
  %neg60 = xor i32 %shl59, -1
  %51 = load i32, i32* %bestj, align 4
  %shr61 = ashr i32 %51, 5
  %add62 = add nsw i32 %shr61, 1
  %idxprom63 = sext i32 %add62 to i64
  %52 = load i32*, i32** %cand, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %52, i64 %idxprom63
  %53 = load i32, i32* %arrayidx64, align 4
  %and65 = and i32 %53, %neg60
  store i32 %and65, i32* %arrayidx64, align 4
  %54 = load i32, i32* %maxcost, align 4
  %55 = load i32, i32* %total_cost, align 4
  %add66 = add nsw i32 %55, %54
  store i32 %add66, i32* %total_cost, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load i32*, i32** %cand, align 8
  %tobool67 = icmp ne i32* %56, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.end
  %57 = load i32*, i32** %cand, align 8
  %58 = bitcast i32* %57 to i8*
  call void @free(i8* %58)
  store i32* null, i32** %cand, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %while.end
  %59 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %60 = load %struct.pair_struct**, %struct.pair_struct*** %pair_p.addr, align 8
  store %struct.pair_struct* %59, %struct.pair_struct** %60, align 8
  %61 = load i32, i32* %total_cost, align 4
  ret i32 %61
}

declare i32* @set_fill(...) #1

declare i32 @set_ord(...) #1

; Function Attrs: nounwind uwtable
define %struct.pair_struct* @pair_best_cost(i32** %cost_array_local) #0 {
entry:
  %cost_array_local.addr = alloca i32**, align 8
  %pair = alloca %struct.pair_struct*, align 8
  %candidate = alloca i32*, align 8
  store i32** %cost_array_local, i32*** %cost_array_local.addr, align 8
  store i32 -1, i32* @best_cost, align 4
  store %struct.pair_struct* null, %struct.pair_struct** @best_pair, align 8
  %0 = load i32**, i32*** %cost_array_local.addr, align 8
  store i32** %0, i32*** @cost_array, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call = call %struct.pair_struct* @pair_new(i32 %1)
  store %struct.pair_struct* %call, %struct.pair_struct** %pair, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp sle i32 %2, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %3, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add1 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add1, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call2 = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call2 to i32*
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call3 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %4, i32 %5)
  store i32* %call3, i32** %candidate, align 8
  %6 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %8 = load i32*, i32** %candidate, align 8
  %call4 = call i32 @generate_all_pairs(%struct.pair_struct* %6, i32 %7, i32* %8, i32 (...)* bitcast (i32 (%struct.pair_struct*)* @find_best_cost to i32 (...)*))
  %9 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %call5 = call i32 @pair_free(%struct.pair_struct* %9)
  %10 = load i32*, i32** %candidate, align 8
  %tobool = icmp ne i32* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32*, i32** %candidate, align 8
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12)
  store i32* null, i32** %candidate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %13 = load %struct.pair_struct*, %struct.pair_struct** @best_pair, align 8
  ret %struct.pair_struct* %13
}

; Function Attrs: nounwind uwtable
define i32 @find_best_cost(%struct.pair_struct* %pair) #0 {
entry:
  %retval = alloca i32, align 4
  %pair.addr = alloca %struct.pair_struct*, align 8
  %i = alloca i32, align 4
  %cost = alloca i32, align 4
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  store i32 0, i32* %cost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %cnt, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %4, i32 0, i32 2
  %5 = load i32*, i32** %var2, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom1 = sext i32 %sub to i64
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %8, i32 0, i32 1
  %9 = load i32*, i32** %var1, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %sub4 = sub nsw i32 %10, 1
  %idxprom5 = sext i32 %sub4 to i64
  %11 = load i32**, i32*** @cost_array, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %11, i64 %idxprom5
  %12 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom1
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32, i32* %cost, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %cost, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %cost, align 4
  %17 = load i32, i32* @best_cost, align 4
  %cmp8 = icmp sgt i32 %16, %17
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load i32, i32* %cost, align 4
  store i32 %18, i32* @best_cost, align 4
  %19 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %20 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt9 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %20, i32 0, i32 0
  %21 = load i32, i32* %cnt9, align 4
  %call = call %struct.pair_struct* @pair_save(%struct.pair_struct* %19, i32 %21)
  store %struct.pair_struct* %call, %struct.pair_struct** @best_pair, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %22 = load i32, i32* @debug, align 4
  %and = and i32 %22, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, i32* @trace, align 4
  %tobool10 = icmp ne i32 %23, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %cost, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %24)
  %25 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %call13 = call i32 @print_pair(%struct.pair_struct* %25)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @pair_all(%struct.PLA_t* %PLA, i32 %pair_strategy) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %pair_strategy.addr = alloca i32, align 4
  %pair = alloca %struct.pair_struct*, align 8
  %candidate = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %pair_strategy, i32* %pair_strategy.addr, align 4
  %0 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  store %struct.PLA_t* %0, %struct.PLA_t** @global_PLA, align 8
  %1 = load i32, i32* %pair_strategy.addr, align 4
  store i32 %1, i32* @pair_minim_strategy, align 4
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 0
  %3 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @best_cost, align 4
  store %struct.pair_struct* null, %struct.pair_struct** @best_pair, align 8
  store i32* null, i32** @best_phase, align 8
  store %struct.set_family* null, %struct.set_family** @best_R, align 8
  store %struct.set_family* null, %struct.set_family** @best_D, align 8
  store %struct.set_family* null, %struct.set_family** @best_F, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call = call %struct.pair_struct* @pair_new(i32 %5)
  store %struct.pair_struct* %call, %struct.pair_struct** %pair, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp = icmp sle i32 %6, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %sub = sub nsw i32 %7, 1
  %shr = ashr i32 %sub, 5
  %add1 = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add1, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %8 = bitcast i8* %call3 to i32*
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %8, i32 %9)
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %call5 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %call4, i32 %10)
  store i32* %call5, i32** %candidate, align 8
  %11 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %13 = load i32*, i32** %candidate, align 8
  %call6 = call i32 @generate_all_pairs(%struct.pair_struct* %11, i32 %12, i32* %13, i32 (...)* bitcast (i32 (%struct.pair_struct*)* @minimize_pair to i32 (...)*))
  %14 = load %struct.pair_struct*, %struct.pair_struct** %pair, align 8
  %call7 = call i32 @pair_free(%struct.pair_struct* %14)
  %15 = load i32*, i32** %candidate, align 8
  %tobool = icmp ne i32* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32*, i32** %candidate, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17)
  store i32* null, i32** %candidate, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %18 = load %struct.pair_struct*, %struct.pair_struct** @best_pair, align 8
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair8 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 6
  store %struct.pair_struct* %18, %struct.pair_struct** %pair8, align 8
  %20 = load i32*, i32** @best_phase, align 8
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %21, i32 0, i32 5
  store i32* %20, i32** %phase, align 8
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @set_pair(%struct.PLA_t* %22)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %pair10 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %23, i32 0, i32 6
  %24 = load %struct.pair_struct*, %struct.pair_struct** %pair10, align 8
  %call11 = call i32 @print_pair(%struct.pair_struct* %24)
  %25 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %25, i32 0, i32 0
  %26 = load %struct.set_family*, %struct.set_family** %F12, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %26)
  %27 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %27, i32 0, i32 1
  %28 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %28)
  %29 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %29, i32 0, i32 2
  %30 = load %struct.set_family*, %struct.set_family** %R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %30)
  %31 = load %struct.set_family*, %struct.set_family** @best_F, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 0
  store %struct.set_family* %31, %struct.set_family** %F13, align 8
  %33 = load %struct.set_family*, %struct.set_family** @best_D, align 8
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D14 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 1
  store %struct.set_family* %33, %struct.set_family** %D14, align 8
  %35 = load %struct.set_family*, %struct.set_family** @best_R, align 8
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 2
  store %struct.set_family* %35, %struct.set_family** %R15, align 8
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @minimize_pair(%struct.pair_struct* %pair) #0 {
entry:
  %retval = alloca i32, align 4
  %pair.addr = alloca %struct.pair_struct*, align 8
  %Fsave = alloca %struct.set_family*, align 8
  %Dsave = alloca %struct.set_family*, align 8
  %Rsave = alloca %struct.set_family*, align 8
  %i = alloca i32, align 4
  %xnum_binary_vars = alloca i32, align 4
  %xnum_vars = alloca i32, align 4
  %xpart_size = alloca i32*, align 8
  %t = alloca i64, align 8
  %t21 = alloca i64, align 8
  %t35 = alloca i64, align 8
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  %0 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %0, i32 0, i32 0
  %1 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %1)
  store %struct.set_family* %call, %struct.set_family** %Fsave, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 1
  %3 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %3)
  store %struct.set_family* %call1, %struct.set_family** %Dsave, align 8
  %4 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 2
  %5 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %5)
  store %struct.set_family* %call2, %struct.set_family** %Rsave, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  store i32 %6, i32* %xnum_binary_vars, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  store i32 %7, i32* %xnum_vars, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %9 = bitcast i8* %call3 to i32*
  store i32* %9, i32** %xpart_size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load i32*, i32** %xpart_size, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %16, i64 %idxprom5
  store i32 %14, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %19 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %pair7 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 6
  store %struct.pair_struct* %18, %struct.pair_struct** %pair7, align 8
  %20 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  call void @set_pair1(%struct.PLA_t* %20, i32 0)
  %21 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %22 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %call8 = call i32 @print_pair(%struct.pair_struct* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load i32, i32* @pair_minim_strategy, align 4
  switch i32 %23, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.20
    i32 0, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end
  %call9 = call i64 (...) @util_cpu_time()
  store i64 %call9, i64* %t, align 8
  %24 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  call void (%struct.PLA_t*, i32, ...) bitcast (void (...)* @phase_assignment to void (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %24, i32 0)
  %25 = load i32, i32* @summary, align 4
  %tobool10 = icmp ne i32 %25, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %sw.bb
  %26 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F12 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 0
  %27 = load %struct.set_family*, %struct.set_family** %F12, align 8
  %call13 = call i64 (...) @util_cpu_time()
  %28 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call13, %28
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 %sub)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %sw.bb
  %29 = load i32, i32* @summary, align 4
  %tobool15 = icmp ne i32 %29, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %30 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %30, i32 0, i32 5
  %31 = load i32*, i32** %phase, align 8
  %call17 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %31)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* %call17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %call22 = call i64 (...) @util_cpu_time()
  store i64 %call22, i64* %t21, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F23 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 0
  %33 = load %struct.set_family*, %struct.set_family** %F23, align 8
  %34 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D24 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 1
  %35 = load %struct.set_family*, %struct.set_family** %D24, align 8
  %36 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R25 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 2
  %37 = load %struct.set_family*, %struct.set_family** %R25, align 8
  %call26 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %33, %struct.set_family* %35, %struct.set_family* %37, i32 1)
  %38 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F27 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %38, i32 0, i32 0
  store %struct.set_family* %call26, %struct.set_family** %F27, align 8
  %39 = load i32, i32* @summary, align 4
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %sw.bb.20
  %40 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F30 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %40, i32 0, i32 0
  %41 = load %struct.set_family*, %struct.set_family** %F30, align 8
  %call31 = call i64 (...) @util_cpu_time()
  %42 = load i64, i64* %t21, align 8
  %sub32 = sub nsw i64 %call31, %42
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i64 %sub32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %sw.bb.20
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  %call36 = call i64 (...) @util_cpu_time()
  store i64 %call36, i64* %t35, align 8
  %43 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F37 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %43, i32 0, i32 0
  %44 = load %struct.set_family*, %struct.set_family** %F37, align 8
  %45 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D38 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %45, i32 0, i32 1
  %46 = load %struct.set_family*, %struct.set_family** %D38, align 8
  %47 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R39 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 2
  %48 = load %struct.set_family*, %struct.set_family** %R39, align 8
  %call40 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %44, %struct.set_family* %46, %struct.set_family* %48)
  %49 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F41 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %49, i32 0, i32 0
  store %struct.set_family* %call40, %struct.set_family** %F41, align 8
  %50 = load i32, i32* @summary, align 4
  %tobool42 = icmp ne i32 %50, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %sw.bb.34
  %51 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F44 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %51, i32 0, i32 0
  %52 = load %struct.set_family*, %struct.set_family** %F44, align 8
  %call45 = call i64 (...) @util_cpu_time()
  %53 = load i64, i64* %t35, align 8
  %sub46 = sub nsw i64 %call45, %53
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 %sub46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %sw.bb.34
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.47, %if.end.33, %if.end.19
  %54 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F48 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %54, i32 0, i32 0
  %55 = load %struct.set_family*, %struct.set_family** %F48, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %55, i32 0, i32 3
  %56 = load i32, i32* %count, align 4
  %57 = load i32, i32* @best_cost, align 4
  %cmp49 = icmp slt i32 %56, %57
  br i1 %cmp49, label %if.then.51, label %if.end.96

if.then.51:                                       ; preds = %sw.epilog
  %58 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F52 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %58, i32 0, i32 0
  %59 = load %struct.set_family*, %struct.set_family** %F52, align 8
  %count53 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 3
  %60 = load i32, i32* %count53, align 4
  store i32 %60, i32* @best_cost, align 4
  %61 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %62 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %62, i32 0, i32 0
  %63 = load i32, i32* %cnt, align 4
  %call54 = call %struct.pair_struct* @pair_save(%struct.pair_struct* %61, i32 %63)
  store %struct.pair_struct* %call54, %struct.pair_struct** @best_pair, align 8
  %64 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase55 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %64, i32 0, i32 5
  %65 = load i32*, i32** %phase55, align 8
  %cmp56 = icmp ne i32* %65, null
  br i1 %cmp56, label %cond.true, label %cond.false.75

cond.true:                                        ; preds = %if.then.51
  %66 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase58 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %66, i32 0, i32 5
  %67 = load i32*, i32** %phase58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx59, align 4
  %and = and i32 %68, 1023
  %mul60 = mul i32 32, %and
  %cmp61 = icmp ule i32 %mul60, 32
  br i1 %cmp61, label %cond.true.63, label %cond.false

cond.true.63:                                     ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %69 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase64 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %69, i32 0, i32 5
  %70 = load i32*, i32** %phase64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx65, align 4
  %and66 = and i32 %71, 1023
  %mul67 = mul i32 32, %and66
  %sub68 = sub i32 %mul67, 1
  %shr = lshr i32 %sub68, 5
  %add = add i32 %shr, 1
  %add69 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.63
  %cond = phi i32 [ 2, %cond.true.63 ], [ %add69, %cond.false ]
  %conv70 = zext i32 %cond to i64
  %mul71 = mul i64 4, %conv70
  %call72 = call i8* @malloc(i64 %mul71)
  %72 = bitcast i8* %call72 to i32*
  %73 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase73 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %73, i32 0, i32 5
  %74 = load i32*, i32** %phase73, align 8
  %call74 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %72, i32* %74)
  br label %cond.end.76

cond.false.75:                                    ; preds = %if.then.51
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.end
  %cond77 = phi i32* [ %call74, %cond.end ], [ null, %cond.false.75 ]
  store i32* %cond77, i32** @best_phase, align 8
  %75 = load %struct.set_family*, %struct.set_family** @best_F, align 8
  %cmp78 = icmp ne %struct.set_family* %75, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %cond.end.76
  %76 = load %struct.set_family*, %struct.set_family** @best_F, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %76)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %cond.end.76
  %77 = load %struct.set_family*, %struct.set_family** @best_D, align 8
  %cmp82 = icmp ne %struct.set_family* %77, null
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %78 = load %struct.set_family*, %struct.set_family** @best_D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %78)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.81
  %79 = load %struct.set_family*, %struct.set_family** @best_R, align 8
  %cmp86 = icmp ne %struct.set_family* %79, null
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.85
  %80 = load %struct.set_family*, %struct.set_family** @best_R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %80)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.85
  %81 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %81, i32 0, i32 0
  %82 = load %struct.set_family*, %struct.set_family** %F90, align 8
  %call91 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %82)
  store %struct.set_family* %call91, %struct.set_family** @best_F, align 8
  %83 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %83, i32 0, i32 1
  %84 = load %struct.set_family*, %struct.set_family** %D92, align 8
  %call93 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %84)
  store %struct.set_family* %call93, %struct.set_family** @best_D, align 8
  %85 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R94 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %85, i32 0, i32 2
  %86 = load %struct.set_family*, %struct.set_family** %R94, align 8
  %call95 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %86)
  store %struct.set_family* %call95, %struct.set_family** @best_R, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.89, %sw.epilog
  call void (...) @setdown_cube()
  %87 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool97 = icmp ne i32* %87, null
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  %88 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %89 = bitcast i32* %88 to i8*
  call void @free(i8* %89)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.96
  %90 = load i32, i32* %xnum_binary_vars, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %91 = load i32, i32* %xnum_vars, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %92 = load i32*, i32** %xpart_size, align 8
  store i32* %92, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  call void (...) @cube_setup()
  %93 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F100 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %93, i32 0, i32 0
  %94 = load %struct.set_family*, %struct.set_family** %F100, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %94)
  %95 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %95, i32 0, i32 1
  %96 = load %struct.set_family*, %struct.set_family** %D101, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %96)
  %97 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R102 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 2
  %98 = load %struct.set_family*, %struct.set_family** %R102, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %98)
  %99 = load %struct.set_family*, %struct.set_family** %Fsave, align 8
  %100 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %F103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %100, i32 0, i32 0
  store %struct.set_family* %99, %struct.set_family** %F103, align 8
  %101 = load %struct.set_family*, %struct.set_family** %Dsave, align 8
  %102 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %D104 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %102, i32 0, i32 1
  store %struct.set_family* %101, %struct.set_family** %D104, align 8
  %103 = load %struct.set_family*, %struct.set_family** %Rsave, align 8
  %104 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %R105 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %104, i32 0, i32 2
  store %struct.set_family* %103, %struct.set_family** %R105, align 8
  %105 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %pair106 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %105, i32 0, i32 6
  store %struct.pair_struct* null, %struct.pair_struct** %pair106, align 8
  %106 = load %struct.PLA_t*, %struct.PLA_t** @global_PLA, align 8
  %phase107 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %106, i32 0, i32 5
  store i32* null, i32** %phase107, align 8
  %107 = load i32, i32* %retval
  ret i32 %107
}

declare void @phase_assignment(...) #1

declare i8* @pc1(...) #1

declare i32* @set_copy(...) #1

; Function Attrs: nounwind uwtable
define i32 @generate_all_pairs(%struct.pair_struct* %pair, i32 %n, i32* %candidate, i32 (...)* %action) #0 {
entry:
  %retval = alloca i32, align 4
  %pair.addr = alloca %struct.pair_struct*, align 8
  %n.addr = alloca i32, align 4
  %candidate.addr = alloca i32*, align 8
  %action.addr = alloca i32 (...)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %recur_candidate = alloca i32*, align 8
  %recur_pair = alloca %struct.pair_struct*, align 8
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %candidate, i32** %candidate.addr, align 8
  store i32 (...)* %action, i32 (...)** %action.addr, align 8
  %0 = load i32*, i32** %candidate.addr, align 8
  %call = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %0)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (...)*, i32 (...)** %action.addr, align 8
  %2 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %callee.knr.cast = bitcast i32 (...)* %1 to i32 (%struct.pair_struct*, ...)*
  %call1 = call i32 (%struct.pair_struct*, ...) %callee.knr.cast(%struct.pair_struct* %2)
  store i32 0, i32* %retval
  br label %if.end.94

if.end:                                           ; preds = %entry
  %3 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %4 = load i32, i32* %n.addr, align 4
  %call2 = call %struct.pair_struct* @pair_save(%struct.pair_struct* %3, i32 %4)
  store %struct.pair_struct* %call2, %struct.pair_struct** %recur_pair, align 8
  %5 = load i32*, i32** %candidate.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %and = and i32 %6, 1023
  %mul = mul i32 32, %and
  %cmp3 = icmp ule i32 %mul, 32
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32*, i32** %candidate.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %8, 1023
  %mul6 = mul i32 32, %and5
  %sub = sub i32 %mul6, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add7 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add7, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul8 = mul i64 4, %conv
  %call9 = call i8* @malloc(i64 %mul8)
  %9 = bitcast i8* %call9 to i32*
  %10 = load i32*, i32** %candidate.addr, align 8
  %call10 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %9, i32* %10)
  store i32* %call10, i32** %recur_candidate, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %shr13 = ashr i32 %13, 5
  %add14 = add nsw i32 %shr13, 1
  %idxprom = sext i32 %add14 to i64
  %14 = load i32*, i32** %candidate.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx15, align 4
  %16 = load i32, i32* %i, align 4
  %and16 = and i32 %16, 31
  %shl = shl i32 1, %and16
  %and17 = and i32 %15, %shl
  %tobool = icmp ne i32 %and17, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %18 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %18, 1
  store i32 %add20, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.74, %for.end
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %n.addr, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body.24, label %for.end.76

for.body.24:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %j, align 4
  %shr25 = ashr i32 %21, 5
  %add26 = add nsw i32 %shr25, 1
  %idxprom27 = sext i32 %add26 to i64
  %22 = load i32*, i32** %candidate.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %22, i64 %idxprom27
  %23 = load i32, i32* %arrayidx28, align 4
  %24 = load i32, i32* %j, align 4
  %and29 = and i32 %24, 31
  %shl30 = shl i32 1, %and29
  %and31 = and i32 %23, %shl30
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.73

if.then.33:                                       ; preds = %for.body.24
  %25 = load i32, i32* %i, align 4
  %and34 = and i32 %25, 31
  %shl35 = shl i32 1, %and34
  %neg = xor i32 %shl35, -1
  %26 = load i32, i32* %i, align 4
  %shr36 = ashr i32 %26, 5
  %add37 = add nsw i32 %shr36, 1
  %idxprom38 = sext i32 %add37 to i64
  %27 = load i32*, i32** %recur_candidate, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %27, i64 %idxprom38
  %28 = load i32, i32* %arrayidx39, align 4
  %and40 = and i32 %28, %neg
  store i32 %and40, i32* %arrayidx39, align 4
  %29 = load i32, i32* %j, align 4
  %and41 = and i32 %29, 31
  %shl42 = shl i32 1, %and41
  %neg43 = xor i32 %shl42, -1
  %30 = load i32, i32* %j, align 4
  %shr44 = ashr i32 %30, 5
  %add45 = add nsw i32 %shr44, 1
  %idxprom46 = sext i32 %add45 to i64
  %31 = load i32*, i32** %recur_candidate, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %31, i64 %idxprom46
  %32 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %32, %neg43
  store i32 %and48, i32* %arrayidx47, align 4
  %33 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %33, 1
  %34 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %34, i32 0, i32 0
  %35 = load i32, i32* %cnt, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %36, i32 0, i32 1
  %37 = load i32*, i32** %var1, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %37, i64 %idxprom50
  store i32 %add49, i32* %arrayidx51, align 4
  %38 = load i32, i32* %j, align 4
  %add52 = add nsw i32 %38, 1
  %39 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %cnt53 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %39, i32 0, i32 0
  %40 = load i32, i32* %cnt53, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %41, i32 0, i32 2
  %42 = load i32*, i32** %var2, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %42, i64 %idxprom54
  store i32 %add52, i32* %arrayidx55, align 4
  %43 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %cnt56 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %43, i32 0, i32 0
  %44 = load i32, i32* %cnt56, align 4
  %inc57 = add nsw i32 %44, 1
  store i32 %inc57, i32* %cnt56, align 4
  %45 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %46 = load i32, i32* %n.addr, align 4
  %47 = load i32*, i32** %recur_candidate, align 8
  %48 = load i32 (...)*, i32 (...)** %action.addr, align 8
  %call58 = call i32 @generate_all_pairs(%struct.pair_struct* %45, i32 %46, i32* %47, i32 (...)* %48)
  %49 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %cnt59 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %49, i32 0, i32 0
  %50 = load i32, i32* %cnt59, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %cnt59, align 4
  %51 = load i32, i32* %i, align 4
  %and60 = and i32 %51, 31
  %shl61 = shl i32 1, %and60
  %52 = load i32, i32* %i, align 4
  %shr62 = ashr i32 %52, 5
  %add63 = add nsw i32 %shr62, 1
  %idxprom64 = sext i32 %add63 to i64
  %53 = load i32*, i32** %recur_candidate, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %53, i64 %idxprom64
  %54 = load i32, i32* %arrayidx65, align 4
  %or = or i32 %54, %shl61
  store i32 %or, i32* %arrayidx65, align 4
  %55 = load i32, i32* %j, align 4
  %and66 = and i32 %55, 31
  %shl67 = shl i32 1, %and66
  %56 = load i32, i32* %j, align 4
  %shr68 = ashr i32 %56, 5
  %add69 = add nsw i32 %shr68, 1
  %idxprom70 = sext i32 %add69 to i64
  %57 = load i32*, i32** %recur_candidate, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %57, i64 %idxprom70
  %58 = load i32, i32* %arrayidx71, align 4
  %or72 = or i32 %58, %shl67
  store i32 %or72, i32* %arrayidx71, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.33, %for.body.24
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %59 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %59, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.21

for.end.76:                                       ; preds = %for.cond.21
  %60 = load i32*, i32** %candidate.addr, align 8
  %call77 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* %60)
  %rem = srem i32 %call77, 2
  %cmp78 = icmp eq i32 %rem, 1
  br i1 %cmp78, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %for.end.76
  %61 = load i32, i32* %i, align 4
  %and81 = and i32 %61, 31
  %shl82 = shl i32 1, %and81
  %neg83 = xor i32 %shl82, -1
  %62 = load i32, i32* %i, align 4
  %shr84 = ashr i32 %62, 5
  %add85 = add nsw i32 %shr84, 1
  %idxprom86 = sext i32 %add85 to i64
  %63 = load i32*, i32** %recur_candidate, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %63, i64 %idxprom86
  %64 = load i32, i32* %arrayidx87, align 4
  %and88 = and i32 %64, %neg83
  store i32 %and88, i32* %arrayidx87, align 4
  %65 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %66 = load i32, i32* %n.addr, align 4
  %67 = load i32*, i32** %recur_candidate, align 8
  %68 = load i32 (...)*, i32 (...)** %action.addr, align 8
  %call89 = call i32 @generate_all_pairs(%struct.pair_struct* %65, i32 %66, i32* %67, i32 (...)* %68)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.80, %for.end.76
  %69 = load %struct.pair_struct*, %struct.pair_struct** %recur_pair, align 8
  %call91 = call i32 @pair_free(%struct.pair_struct* %69)
  %70 = load i32*, i32** %recur_candidate, align 8
  %tobool92 = icmp ne i32* %70, null
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  %71 = load i32*, i32** %recur_candidate, align 8
  %72 = bitcast i32* %71 to i8*
  call void @free(i8* %72)
  store i32* null, i32** %recur_candidate, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then, %if.then.93, %if.end.90
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define %struct.pair_struct* @pair_new(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pair1 = alloca %struct.pair_struct*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call i8* @malloc(i64 24)
  %0 = bitcast i8* %call to %struct.pair_struct*
  store %struct.pair_struct* %0, %struct.pair_struct** %pair1, align 8
  %1 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %1, i32 0, i32 0
  store i32 0, i32* %cnt, align 4
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 4, %conv
  %call1 = call i8* @malloc(i64 %mul)
  %3 = bitcast i8* %call1 to i32*
  %4 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %4, i32 0, i32 1
  store i32* %3, i32** %var1, align 8
  %5 = load i32, i32* %n.addr, align 4
  %conv2 = sext i32 %5 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @malloc(i64 %mul3)
  %6 = bitcast i8* %call4 to i32*
  %7 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %7, i32 0, i32 2
  store i32* %6, i32** %var2, align 8
  %8 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  ret %struct.pair_struct* %8
}

; Function Attrs: nounwind uwtable
define %struct.pair_struct* @pair_save(%struct.pair_struct* %pair, i32 %n) #0 {
entry:
  %pair.addr = alloca %struct.pair_struct*, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %pair1 = alloca %struct.pair_struct*, align 8
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call %struct.pair_struct* @pair_new(i32 %0)
  store %struct.pair_struct* %call, %struct.pair_struct** %pair1, align 8
  %1 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %cnt, align 4
  %3 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %cnt1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %3, i32 0, i32 0
  store i32 %2, i32* %cnt1, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %k, align 4
  %5 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %cnt2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %cnt2, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %8, i32 0, i32 1
  %9 = load i32*, i32** %var1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %var14 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %12, i32 0, i32 1
  %13 = load i32*, i32** %var14, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  store i32 %10, i32* %arrayidx5, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %15, i32 0, i32 2
  %16 = load i32*, i32** %var2, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %16, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  %var29 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %19, i32 0, i32 2
  %20 = load i32*, i32** %var29, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  store i32 %17, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.pair_struct*, %struct.pair_struct** %pair1, align 8
  ret %struct.pair_struct* %22
}

; Function Attrs: nounwind uwtable
define i32 @pair_free(%struct.pair_struct* %pair) #0 {
entry:
  %retval = alloca i32, align 4
  %pair.addr = alloca %struct.pair_struct*, align 8
  store %struct.pair_struct* %pair, %struct.pair_struct** %pair.addr, align 8
  %0 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var1 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %0, i32 0, i32 1
  %1 = load i32*, i32** %var1, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var11 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %2, i32 0, i32 1
  %3 = load i32*, i32** %var11, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4)
  %5 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var12 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %5, i32 0, i32 1
  store i32* null, i32** %var12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var2 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %6, i32 0, i32 2
  %7 = load i32*, i32** %var2, align 8
  %tobool3 = icmp ne i32* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var25 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %8, i32 0, i32 2
  %9 = load i32*, i32** %var25, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10)
  %11 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %var26 = getelementptr inbounds %struct.pair_struct, %struct.pair_struct* %11, i32 0, i32 2
  store i32* null, i32** %var26, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %tobool8 = icmp ne %struct.pair_struct* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %13 = load %struct.pair_struct*, %struct.pair_struct** %pair.addr, align 8
  %14 = bitcast %struct.pair_struct* %13 to i8*
  call void @free(i8* %14)
  store %struct.pair_struct* null, %struct.pair_struct** %pair.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
