; ModuleID = './MultiSource.Benchmarks.MallocBench/5.espresso.opo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@opo_no_make_sparse = internal global i32 0, align 4
@skip_make_sparse = external global i32, align 4
@opo_repeated = internal global i32 0, align 4
@opo_exact = internal global i32 0, align 4
@cube = external global %struct.cube_struct, align 8
@trace = external global i32, align 4
@summary = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0AOPO loop for output #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"PLA->phase is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"phase      is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"OPO-SETUP \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OPO       \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"error in output phase assignment\00", align 1
@opo_recur.level = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"# OPO[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"output_phase_setup: must have an output\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"# phase is %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"EXACT\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ESPRESSO  \00", align 1

; Function Attrs: nounwind uwtable
define void @phase_assignment(%struct.PLA_t* %PLA, i32 %opo_strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %opo_strategy.addr = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %opo_strategy, i32* %opo_strategy.addr, align 4
  %0 = load i32, i32* %opo_strategy.addr, align 4
  %rem = srem i32 %0, 2
  store i32 %rem, i32* @opo_no_make_sparse, align 4
  %1 = load i32, i32* @opo_no_make_sparse, align 4
  store i32 %1, i32* @skip_make_sparse, align 4
  %2 = load i32, i32* %opo_strategy.addr, align 4
  %div = sdiv i32 %2, 2
  %rem1 = srem i32 %div, 2
  store i32 %rem1, i32* @opo_repeated, align 4
  %3 = load i32, i32* %opo_strategy.addr, align 4
  %div2 = sdiv i32 %3, 4
  %rem3 = srem i32 %div2, 2
  store i32 %rem3, i32* @opo_exact, align 4
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %4, i32 0, i32 5
  %5 = load i32*, i32** %phase, align 8
  %cmp = icmp ne i32* %5, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 5
  %7 = load i32*, i32** %phase4, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase6 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 5
  %9 = load i32*, i32** %phase6, align 8
  %10 = bitcast i32* %9 to i8*
  call void @free(i8* %10)
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase7 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 5
  store i32* null, i32** %phase7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %12 = load i32, i32* @opo_repeated, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx, align 4
  %and = and i32 %14, 1023
  %mul = mul i32 32, %and
  %cmp11 = icmp ule i32 %mul, 32
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %and13 = and i32 %16, 1023
  %mul14 = mul i32 32, %and13
  %sub = sub i32 %mul14, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add15 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add15, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul16 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul16)
  %17 = bitcast i8* %call to i32*
  %18 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call17 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %17, i32* %18)
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 5
  store i32* %call17, i32** %phase18, align 8
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @repeated_phase_assignment(%struct.PLA_t* %20)
  br label %if.end.21

if.else:                                          ; preds = %if.end.8
  %21 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call19 = call i32* @find_phase(%struct.PLA_t* %21, i32 0, i32* null)
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase20 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 5
  store i32* %call19, i32** %phase20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %cond.end
  store i32 0, i32* @skip_make_sparse, align 4
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call22 = call %struct.PLA_t* @set_phase(%struct.PLA_t* %23)
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @minimize(%struct.PLA_t* %24)
  ret void
}

declare void @free(i8*) #1

declare i32* @set_copy(...) #1

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @repeated_phase_assignment(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %i = alloca i32, align 4
  %phase = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 5
  %7 = load i32*, i32** %phase1, align 8
  %call = call i32* @find_phase(%struct.PLA_t* %4, i32 %5, i32* %7)
  store i32* %call, i32** %phase, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %11
  %shr = ashr i32 %add, 5
  %add4 = add nsw i32 %shr, 1
  %idxprom5 = sext i32 %add4 to i64
  %12 = load i32*, i32** %phase, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %16, %17
  %and = and i32 %add9, 31
  %shl = shl i32 1, %and
  %and10 = and i32 %13, %shl
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %21 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %20, %21
  %and14 = and i32 %add13, 31
  %shl15 = shl i32 1, %and14
  %neg = xor i32 %shl15, -1
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  %25 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %24, %25
  %shr19 = ashr i32 %add18, 5
  %add20 = add nsw i32 %shr19, 1
  %idxprom21 = sext i32 %add20 to i64
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase22 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 5
  %27 = load i32*, i32** %phase22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i64 %idxprom21
  %28 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %28, %neg
  store i32 %and24, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %29 = load i32, i32* @trace, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load i32, i32* @summary, align 4
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %lor.lhs.false, %if.end
  %31 = load i32, i32* %i, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %31)
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase29 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 5
  %33 = load i32*, i32** %phase29, align 8
  %call30 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %33)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %call30)
  %34 = load i32*, i32** %phase, align 8
  %call32 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %34)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %call32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %lor.lhs.false
  %35 = load i32*, i32** %phase, align 8
  %tobool35 = icmp ne i32* %35, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %36 = load i32*, i32** %phase, align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* %37)
  store i32* null, i32** %phase, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i8* @pc1(...) #1

; Function Attrs: nounwind uwtable
define i32* @find_phase(%struct.PLA_t* %PLA, i32 %first_output, i32* %phase1) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %first_output.addr = alloca i32, align 4
  %phase1.addr = alloca i32*, align 8
  %phase = alloca i32*, align 8
  %PLA1 = alloca %struct.PLA_t*, align 8
  %t = alloca i64, align 8
  %t45 = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %first_output, i32* %first_output.addr, align 4
  store i32* %phase1, i32** %phase1.addr, align 8
  %0 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  %mul = mul i32 32, %and
  %cmp = icmp ule i32 %mul, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, 1023
  %mul3 = mul i32 32, %and2
  %sub = sub i32 %mul3, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add4 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add4, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul5 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul5)
  %4 = bitcast i8* %call to i32*
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call6 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %4, i32* %5)
  store i32* %call6, i32** %phase, align 8
  %call7 = call %struct.PLA_t* (...) @new_PLA()
  store %struct.PLA_t* %call7, %struct.PLA_t** %PLA1, align 8
  %6 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %6, i32 0, i32 0
  %7 = load %struct.set_family*, %struct.set_family** %F, align 8
  %call8 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %7)
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F9 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 0
  store %struct.set_family* %call8, %struct.set_family** %F9, align 8
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 2
  %10 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call10 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %10)
  %11 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %11, i32 0, i32 2
  store %struct.set_family* %call10, %struct.set_family** %R11, align 8
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 1
  %13 = load %struct.set_family*, %struct.set_family** %D, align 8
  %call12 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %13)
  %14 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %D13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %14, i32 0, i32 1
  store %struct.set_family* %call12, %struct.set_family** %D13, align 8
  %15 = load i32*, i32** %phase1.addr, align 8
  %cmp14 = icmp ne i32* %15, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32*, i32** %phase1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %17, 1023
  %mul18 = mul i32 32, %and17
  %cmp19 = icmp ule i32 %mul18, 32
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %if.then
  br label %cond.end.30

cond.false.22:                                    ; preds = %if.then
  %18 = load i32*, i32** %phase1.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx23, align 4
  %and24 = and i32 %19, 1023
  %mul25 = mul i32 32, %and24
  %sub26 = sub i32 %mul25, 1
  %shr27 = lshr i32 %sub26, 5
  %add28 = add i32 %shr27, 1
  %add29 = add i32 %add28, 1
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.22, %cond.true.21
  %cond31 = phi i32 [ 2, %cond.true.21 ], [ %add29, %cond.false.22 ]
  %conv32 = zext i32 %cond31 to i64
  %mul33 = mul i64 4, %conv32
  %call34 = call i8* @malloc(i64 %mul33)
  %20 = bitcast i8* %call34 to i32*
  %21 = load i32*, i32** %phase1.addr, align 8
  %call35 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %20, i32* %21)
  %22 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %phase36 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %22, i32 0, i32 5
  store i32* %call35, i32** %phase36, align 8
  %23 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %call37 = call %struct.PLA_t* @set_phase(%struct.PLA_t* %23)
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %cond.end
  %call38 = call i64 (...) @util_cpu_time()
  store i64 %call38, i64* %t, align 8
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %25 = load i32, i32* %first_output.addr, align 4
  %call39 = call i32 @output_phase_setup(%struct.PLA_t* %24, i32 %25)
  %26 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.end
  %27 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F41 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %27, i32 0, i32 0
  %28 = load %struct.set_family*, %struct.set_family** %F41, align 8
  %call42 = call i64 (...) @util_cpu_time()
  %29 = load i64, i64* %t, align 8
  %sub43 = sub nsw i64 %call42, %29
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 %sub43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end
  %30 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void @minimize(%struct.PLA_t* %30)
  %call46 = call i64 (...) @util_cpu_time()
  store i64 %call46, i64* %t45, align 8
  %31 = load i32*, i32** %phase, align 8
  %32 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F47 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %32, i32 0, i32 0
  %33 = load %struct.set_family*, %struct.set_family** %F47, align 8
  %34 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %D48 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 1
  %35 = load %struct.set_family*, %struct.set_family** %D48, align 8
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R49 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 2
  %37 = load %struct.set_family*, %struct.set_family** %R49, align 8
  %38 = load i32, i32* %first_output.addr, align 4
  %call50 = call %struct.set_family* @opo(i32* %31, %struct.set_family* %33, %struct.set_family* %35, %struct.set_family* %37, i32 %38)
  %39 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F51 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %39, i32 0, i32 0
  store %struct.set_family* %call50, %struct.set_family** %F51, align 8
  %40 = load i32, i32* @summary, align 4
  %tobool52 = icmp ne i32 %40, 0
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.44
  %41 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F54 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %41, i32 0, i32 0
  %42 = load %struct.set_family*, %struct.set_family** %F54, align 8
  %call55 = call i64 (...) @util_cpu_time()
  %43 = load i64, i64* %t45, align 8
  %sub56 = sub nsw i64 %call55, %43
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 %sub56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.44
  %44 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %44)
  call void (...) @setdown_cube()
  %45 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %45 to i64
  %46 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %46, i64 %idxprom
  %47 = load i32, i32* %arrayidx58, align 4
  %48 = load i32, i32* %first_output.addr, align 4
  %sub59 = sub nsw i32 %47, %48
  %div = sdiv i32 %sub59, 2
  %49 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %50, i64 %idxprom60
  %51 = load i32, i32* %arrayidx61, align 4
  %sub62 = sub nsw i32 %51, %div
  store i32 %sub62, i32* %arrayidx61, align 4
  call void (...) @cube_setup()
  %52 = load i32*, i32** %phase, align 8
  ret i32* %52
}

declare %struct.PLA_t* @new_PLA(...) #1

declare %struct.set_family* @sf_save(...) #1

declare i64 @util_cpu_time(...) #1

declare void @print_trace(...) #1

declare void @free_PLA(...) #1

declare void @setdown_cube(...) #1

declare void @cube_setup(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @opo(i32* %phase, %struct.set_family* %T, %struct.set_family* %D, %struct.set_family* %R, i32 %first_output) #0 {
entry:
  %phase.addr = alloca i32*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %R.addr = alloca %struct.set_family*, align 8
  %first_output.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %output = alloca i32, align 4
  %i = alloca i32, align 4
  %last_output = alloca i32, align 4
  %ind = alloca i32, align 4
  %pdest = alloca i32*, align 8
  %select = alloca i32*, align 8
  %p = alloca i32*, align 8
  %p1 = alloca i32*, align 8
  %last = alloca i32*, align 8
  %last1 = alloca i32*, align 8
  %not_covered = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  %temp = alloca %struct.set_family*, align 8
  %T1 = alloca %struct.set_family*, align 8
  %T2 = alloca %struct.set_family*, align 8
  store i32* %phase, i32** %phase.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store i32 %first_output, i32* %first_output.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count4, align 4
  %sub = sub nsw i32 %3, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add5 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add5, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count6 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %6 = load i32, i32* %count6, align 4
  %call7 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* %4, i32 %6)
  store i32* %call7, i32** %select, align 8
  store i32 0, i32* %output, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %cond.end
  %7 = load i32, i32* %output, align 4
  %8 = load i32, i32* %first_output.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %output, align 4
  %add10 = add nsw i32 %11, %12
  store i32 %add10, i32* %ind, align 4
  %13 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 5
  %14 = load i32*, i32** %data, align 8
  store i32* %14, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count12 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 3
  %17 = load i32, i32* %count12, align 4
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.11
  %18 = load i32, i32* %ind, align 4
  %shr16 = ashr i32 %18, 5
  %add17 = add nsw i32 %shr16, 1
  %idxprom18 = sext i32 %add17 to i64
  %19 = load i32*, i32** %p, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %19, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %21 = load i32, i32* %ind, align 4
  %and = and i32 %21, 31
  %shl = shl i32 1, %and
  %and20 = and i32 %20, %shl
  %tobool = icmp ne i32 %and20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.15
  %22 = load i32, i32* %i, align 4
  %and21 = and i32 %22, 31
  %shl22 = shl i32 1, %and21
  %neg = xor i32 %shl22, -1
  %23 = load i32, i32* %i, align 4
  %shr23 = ashr i32 %23, 5
  %add24 = add nsw i32 %shr23, 1
  %idxprom25 = sext i32 %add24 to i64
  %24 = load i32*, i32** %select, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %24, i64 %idxprom25
  %25 = load i32, i32* %arrayidx26, align 4
  %and27 = and i32 %25, %neg
  store i32 %and27, i32* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize, align 4
  %28 = load i32*, i32** %p, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %30 = load i32, i32* %output, align 4
  %inc29 = add nsw i32 %30, 1
  store i32 %inc29, i32* %output, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %32, i64 %idxprom31
  %33 = load i32, i32* %arrayidx32, align 4
  %34 = load i32, i32* %first_output.addr, align 4
  %sub33 = sub nsw i32 %33, %34
  %div = sdiv i32 %sub33, 2
  store i32 %div, i32* %offset, align 4
  %35 = load i32, i32* %first_output.addr, align 4
  %36 = load i32, i32* %offset, align 4
  %add34 = add nsw i32 %35, %36
  %sub35 = sub nsw i32 %add34, 1
  store i32 %sub35, i32* %last_output, align 4
  %37 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %38 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %39 = load i32*, i32** %select, align 8
  %40 = load i32, i32* %offset, align 4
  %41 = load i32, i32* %first_output.addr, align 4
  %42 = load i32, i32* %last_output, align 4
  %call36 = call %struct.set_family* @opo_recur(%struct.set_family* %37, %struct.set_family* %38, i32* %39, i32 %40, i32 %41, i32 %42)
  store %struct.set_family* %call36, %struct.set_family** %temp, align 8
  %43 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %data37 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 5
  %44 = load i32*, i32** %data37, align 8
  store i32* %44, i32** %pdest, align 8
  %45 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count38 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 3
  %46 = load i32, i32* %count38, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call39 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %46, i32 %47)
  store %struct.set_family* %call39, %struct.set_family** %T1, align 8
  %48 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data40 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 5
  %49 = load i32*, i32** %data40, align 8
  store i32* %49, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.57, %for.end.30
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count42 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 3
  %52 = load i32, i32* %count42, align 4
  %cmp43 = icmp slt i32 %50, %52
  br i1 %cmp43, label %for.body.45, label %for.end.62

for.body.45:                                      ; preds = %for.cond.41
  %53 = load i32, i32* %i, align 4
  %shr46 = ashr i32 %53, 5
  %add47 = add nsw i32 %shr46, 1
  %idxprom48 = sext i32 %add47 to i64
  %54 = load i32*, i32** %pdest, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %54, i64 %idxprom48
  %55 = load i32, i32* %arrayidx49, align 4
  %56 = load i32, i32* %i, align 4
  %and50 = and i32 %56, 31
  %shl51 = shl i32 1, %and50
  %and52 = and i32 %55, %shl51
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %for.body.45
  %57 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %58 = load i32*, i32** %p, align 8
  %call55 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %57, i32* %58)
  store %struct.set_family* %call55, %struct.set_family** %T1, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.body.45
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %59 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize58 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 0
  %60 = load i32, i32* %wsize58, align 4
  %61 = load i32*, i32** %p, align 8
  %idx.ext59 = sext i32 %60 to i64
  %add.ptr60 = getelementptr inbounds i32, i32* %61, i64 %idx.ext59
  store i32* %add.ptr60, i32** %p, align 8
  %62 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %62, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.41

for.end.62:                                       ; preds = %for.cond.41
  %63 = load i32*, i32** %select, align 8
  %tobool63 = icmp ne i32* %63, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.end.62
  %64 = load i32*, i32** %select, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65)
  store i32* null, i32** %select, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %for.end.62
  %66 = load %struct.set_family*, %struct.set_family** %temp, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %66)
  %67 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %call66 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %67)
  %call67 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call66)
  store %struct.set_family* %call67, %struct.set_family** %T2, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp68 = icmp sle i32 %68, 32
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %if.end.65
  br label %cond.end.76

cond.false.71:                                    ; preds = %if.end.65
  %69 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub72 = sub nsw i32 %69, 1
  %shr73 = ashr i32 %sub72, 5
  %add74 = add nsw i32 %shr73, 1
  %add75 = add nsw i32 %add74, 1
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.71, %cond.true.70
  %cond77 = phi i32 [ 2, %cond.true.70 ], [ %add75, %cond.false.71 ]
  %conv78 = sext i32 %cond77 to i64
  %mul79 = mul i64 4, %conv78
  %call80 = call i8* @malloc(i64 %mul79)
  %70 = bitcast i8* %call80 to i32*
  %71 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call81 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %70, i32 %71)
  store i32* %call81, i32** %not_covered, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp82 = icmp sle i32 %72, 32
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.76
  br label %cond.end.90

cond.false.85:                                    ; preds = %cond.end.76
  %73 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub86 = sub nsw i32 %73, 1
  %shr87 = ashr i32 %sub86, 5
  %add88 = add nsw i32 %shr87, 1
  %add89 = add nsw i32 %add88, 1
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.85, %cond.true.84
  %cond91 = phi i32 [ 2, %cond.true.84 ], [ %add89, %cond.false.85 ]
  %conv92 = sext i32 %cond91 to i64
  %mul93 = mul i64 4, %conv92
  %call94 = call i8* @malloc(i64 %mul93)
  %74 = bitcast i8* %call94 to i32*
  %75 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call95 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %74, i32 %75)
  store i32* %call95, i32** %tmp, align 8
  %76 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data96 = getelementptr inbounds %struct.set_family, %struct.set_family* %76, i32 0, i32 5
  %77 = load i32*, i32** %data96, align 8
  store i32* %77, i32** %p, align 8
  %78 = load i32*, i32** %p, align 8
  %79 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count97 = getelementptr inbounds %struct.set_family, %struct.set_family* %79, i32 0, i32 3
  %80 = load i32, i32* %count97, align 4
  %81 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize98 = getelementptr inbounds %struct.set_family, %struct.set_family* %81, i32 0, i32 0
  %82 = load i32, i32* %wsize98, align 4
  %mul99 = mul nsw i32 %80, %82
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds i32, i32* %78, i64 %idx.ext100
  store i32* %add.ptr101, i32** %last, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.127, %cond.end.90
  %83 = load i32*, i32** %p, align 8
  %84 = load i32*, i32** %last, align 8
  %cmp103 = icmp ult i32* %83, %84
  br i1 %cmp103, label %for.body.105, label %for.end.131

for.body.105:                                     ; preds = %for.cond.102
  %85 = load %struct.set_family*, %struct.set_family** %T2, align 8
  %data106 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 5
  %86 = load i32*, i32** %data106, align 8
  store i32* %86, i32** %p1, align 8
  %87 = load i32*, i32** %p1, align 8
  %88 = load %struct.set_family*, %struct.set_family** %T2, align 8
  %count107 = getelementptr inbounds %struct.set_family, %struct.set_family* %88, i32 0, i32 3
  %89 = load i32, i32* %count107, align 4
  %90 = load %struct.set_family*, %struct.set_family** %T2, align 8
  %wsize108 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 0
  %91 = load i32, i32* %wsize108, align 4
  %mul109 = mul nsw i32 %89, %91
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds i32, i32* %87, i64 %idx.ext110
  store i32* %add.ptr111, i32** %last1, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.122, %for.body.105
  %92 = load i32*, i32** %p1, align 8
  %93 = load i32*, i32** %last1, align 8
  %cmp113 = icmp ult i32* %92, %93
  br i1 %cmp113, label %for.body.115, label %for.end.126

for.body.115:                                     ; preds = %for.cond.112
  %94 = load i32*, i32** %p, align 8
  %95 = load i32*, i32** %p1, align 8
  %call116 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* %94, i32* %95)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %for.body.115
  %96 = load i32*, i32** %not_covered, align 8
  %97 = load i32*, i32** %not_covered, align 8
  %98 = load i32*, i32** %tmp, align 8
  %99 = load i32*, i32** %p, align 8
  %100 = load i32*, i32** %p1, align 8
  %call119 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %98, i32* %99, i32* %100)
  %call120 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %96, i32* %97, i32* %call119)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %for.body.115
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %101 = load %struct.set_family*, %struct.set_family** %T2, align 8
  %wsize123 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i32 0, i32 0
  %102 = load i32, i32* %wsize123, align 4
  %103 = load i32*, i32** %p1, align 8
  %idx.ext124 = sext i32 %102 to i64
  %add.ptr125 = getelementptr inbounds i32, i32* %103, i64 %idx.ext124
  store i32* %add.ptr125, i32** %p1, align 8
  br label %for.cond.112

for.end.126:                                      ; preds = %for.cond.112
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.126
  %104 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize128 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 0
  %105 = load i32, i32* %wsize128, align 4
  %106 = load i32*, i32** %p, align 8
  %idx.ext129 = sext i32 %105 to i64
  %add.ptr130 = getelementptr inbounds i32, i32* %106, i64 %idx.ext129
  store i32* %add.ptr130, i32** %p, align 8
  br label %for.cond.102

for.end.131:                                      ; preds = %for.cond.102
  %107 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %107)
  %108 = load %struct.set_family*, %struct.set_family** %T2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %108)
  %109 = load i32*, i32** %tmp, align 8
  %tobool132 = icmp ne i32* %109, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.end.131
  %110 = load i32*, i32** %tmp, align 8
  %111 = bitcast i32* %110 to i8*
  call void @free(i8* %111)
  store i32* null, i32** %tmp, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %for.end.131
  %112 = load i32, i32* %first_output.addr, align 4
  store i32 %112, i32* %output, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.172, %if.end.134
  %113 = load i32, i32* %output, align 4
  %114 = load i32, i32* %last_output, align 4
  %cmp136 = icmp sle i32 %113, %114
  br i1 %cmp136, label %for.body.138, label %for.end.174

for.body.138:                                     ; preds = %for.cond.135
  %115 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom139 = sext i32 %115 to i64
  %116 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %116, i64 %idxprom139
  %117 = load i32, i32* %arrayidx140, align 4
  %118 = load i32, i32* %output, align 4
  %add141 = add nsw i32 %117, %118
  store i32 %add141, i32* %ind, align 4
  %119 = load i32, i32* %ind, align 4
  %shr142 = ashr i32 %119, 5
  %add143 = add nsw i32 %shr142, 1
  %idxprom144 = sext i32 %add143 to i64
  %120 = load i32*, i32** %not_covered, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %120, i64 %idxprom144
  %121 = load i32, i32* %arrayidx145, align 4
  %122 = load i32, i32* %ind, align 4
  %and146 = and i32 %122, 31
  %shl147 = shl i32 1, %and146
  %and148 = and i32 %121, %shl147
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.171

if.then.150:                                      ; preds = %for.body.138
  %123 = load i32, i32* %ind, align 4
  %124 = load i32, i32* %offset, align 4
  %add151 = add nsw i32 %123, %124
  %shr152 = ashr i32 %add151, 5
  %add153 = add nsw i32 %shr152, 1
  %idxprom154 = sext i32 %add153 to i64
  %125 = load i32*, i32** %not_covered, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %125, i64 %idxprom154
  %126 = load i32, i32* %arrayidx155, align 4
  %127 = load i32, i32* %ind, align 4
  %128 = load i32, i32* %offset, align 4
  %add156 = add nsw i32 %127, %128
  %and157 = and i32 %add156, 31
  %shl158 = shl i32 1, %and157
  %and159 = and i32 %126, %shl158
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else

if.then.161:                                      ; preds = %if.then.150
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.170

if.else:                                          ; preds = %if.then.150
  %129 = load i32, i32* %ind, align 4
  %and162 = and i32 %129, 31
  %shl163 = shl i32 1, %and162
  %neg164 = xor i32 %shl163, -1
  %130 = load i32, i32* %ind, align 4
  %shr165 = ashr i32 %130, 5
  %add166 = add nsw i32 %shr165, 1
  %idxprom167 = sext i32 %add166 to i64
  %131 = load i32*, i32** %phase.addr, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %131, i64 %idxprom167
  %132 = load i32, i32* %arrayidx168, align 4
  %and169 = and i32 %132, %neg164
  store i32 %and169, i32* %arrayidx168, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else, %if.then.161
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %for.body.138
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %133 = load i32, i32* %output, align 4
  %inc173 = add nsw i32 %133, 1
  store i32 %inc173, i32* %output, align 4
  br label %for.cond.135

for.end.174:                                      ; preds = %for.cond.135
  %134 = load i32*, i32** %not_covered, align 8
  %tobool175 = icmp ne i32* %134, null
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %for.end.174
  %135 = load i32*, i32** %not_covered, align 8
  %136 = bitcast i32* %135 to i8*
  call void @free(i8* %136)
  store i32* null, i32** %not_covered, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %for.end.174
  %137 = load %struct.set_family*, %struct.set_family** %T1, align 8
  ret %struct.set_family* %137
}

declare i32* @set_fill(...) #1

declare %struct.set_family* @sf_new(...) #1

declare %struct.set_family* @sf_addset(...) #1

declare void @sf_free(...) #1

declare %struct.set_family* @complement(...) #1

declare i32** @cube1list(...) #1

declare i32* @set_clear(...) #1

declare i32 @cdist0(...) #1

declare i32* @set_or(...) #1

declare i32* @set_and(...) #1

declare void @fatal(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @opo_recur(%struct.set_family* %T, %struct.set_family* %D, i32* %select, i32 %offset, i32 %first, i32 %last) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %D.addr = alloca %struct.set_family*, align 8
  %select.addr = alloca i32*, align 8
  %offset.addr = alloca i32, align 4
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %middle = alloca i32, align 4
  %sl = alloca %struct.set_family*, align 8
  %sr = alloca %struct.set_family*, align 8
  %temp = alloca %struct.set_family*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store %struct.set_family* %D, %struct.set_family** %D.addr, align 8
  store i32* %select, i32** %select.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load i32, i32* @opo_recur.level, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @opo_recur.level, align 4
  %1 = load i32, i32* %first.addr, align 4
  %2 = load i32, i32* %last.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %4 = load i32*, i32** %select.addr, align 8
  %5 = load i32, i32* %first.addr, align 4
  %6 = load i32, i32* %first.addr, align 4
  %7 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %6, %7
  %call = call %struct.set_family* @opo_leaf(%struct.set_family* %3, i32* %4, i32 %5, i32 %add)
  store %struct.set_family* %call, %struct.set_family** %temp, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %first.addr, align 4
  %9 = load i32, i32* %last.addr, align 4
  %add1 = add nsw i32 %8, %9
  %div = sdiv i32 %add1, 2
  store i32 %div, i32* %middle, align 4
  %10 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %11 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %12 = load i32*, i32** %select.addr, align 8
  %13 = load i32, i32* %offset.addr, align 4
  %14 = load i32, i32* %first.addr, align 4
  %15 = load i32, i32* %middle, align 4
  %call2 = call %struct.set_family* @opo_recur(%struct.set_family* %10, %struct.set_family* %11, i32* %12, i32 %13, i32 %14, i32 %15)
  store %struct.set_family* %call2, %struct.set_family** %sl, align 8
  %16 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %17 = load %struct.set_family*, %struct.set_family** %D.addr, align 8
  %18 = load i32*, i32** %select.addr, align 8
  %19 = load i32, i32* %offset.addr, align 4
  %20 = load i32, i32* %middle, align 4
  %add3 = add nsw i32 %20, 1
  %21 = load i32, i32* %last.addr, align 4
  %call4 = call %struct.set_family* @opo_recur(%struct.set_family* %16, %struct.set_family* %17, i32* %18, i32 %19, i32 %add3, i32 %21)
  store %struct.set_family* %call4, %struct.set_family** %sr, align 8
  %22 = load %struct.set_family*, %struct.set_family** %sl, align 8
  %23 = load %struct.set_family*, %struct.set_family** %sr, align 8
  %24 = load i32, i32* @opo_recur.level, align 4
  %cmp5 = icmp eq i32 %24, 1
  %conv = zext i1 %cmp5 to i32
  %call6 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unate_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %22, %struct.set_family* %23, i32 %conv)
  store %struct.set_family* %call6, %struct.set_family** %temp, align 8
  %25 = load i32, i32* @trace, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %26 = load i32, i32* @opo_recur.level, align 4
  %sub = sub nsw i32 %26, 1
  %27 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  %28 = load i32, i32* %count, align 4
  %29 = load %struct.set_family*, %struct.set_family** %sl, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 3
  %30 = load i32, i32* %count8, align 4
  %31 = load %struct.set_family*, %struct.set_family** %sr, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 3
  %32 = load i32, i32* %count9, align 4
  %call10 = call i64 (...) @util_cpu_time()
  %call11 = call i8* @util_print_time(i64 %call10)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %28, i32 %30, i32 %32, i8* %call11)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* %33)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  %34 = load %struct.set_family*, %struct.set_family** %sl, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %34)
  %35 = load %struct.set_family*, %struct.set_family** %sr, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %35)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %36 = load i32, i32* @opo_recur.level, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* @opo_recur.level, align 4
  %37 = load %struct.set_family*, %struct.set_family** %temp, align 8
  ret %struct.set_family* %37
}

declare %struct.set_family* @unate_intersect(...) #1

declare i8* @util_print_time(i64) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @opo_leaf(%struct.set_family* %T, i32* %select, i32 %out1, i32 %out2) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %select.addr = alloca i32*, align 8
  %out1.addr = alloca i32, align 4
  %out2.addr = alloca i32, align 4
  %temp = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32* %select, i32** %select.addr, align 8
  store i32 %out1, i32* %out1.addr, align 4
  store i32 %out2, i32* %out2.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %out1.addr, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %out1.addr, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %out2.addr, align 4
  %add3 = add nsw i32 %7, %6
  store i32 %add3, i32* %out2.addr, align 4
  %8 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count, align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 2, i32 %9)
  store %struct.set_family* %call, %struct.set_family** %temp, align 8
  %10 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %11 = load i32*, i32** %data, align 8
  %12 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %14 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count4, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %count4, align 4
  %mul = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %pdest, align 8
  %16 = load i32*, i32** %pdest, align 8
  %17 = load i32*, i32** %select.addr, align 8
  %call5 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %16, i32* %17)
  %18 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data6 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %19 = load i32*, i32** %data6, align 8
  store i32* %19, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %22 = load i32, i32* %count7, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %out1.addr, align 4
  %shr = ashr i32 %23, 5
  %add8 = add nsw i32 %shr, 1
  %idxprom9 = sext i32 %add8 to i64
  %24 = load i32*, i32** %p, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 %idxprom9
  %25 = load i32, i32* %arrayidx10, align 4
  %26 = load i32, i32* %out1.addr, align 4
  %and = and i32 %26, 31
  %shl = shl i32 1, %and
  %and11 = and i32 %25, %shl
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %and12 = and i32 %27, 31
  %shl13 = shl i32 1, %and12
  %neg = xor i32 %shl13, -1
  %28 = load i32, i32* %i, align 4
  %shr14 = ashr i32 %28, 5
  %add15 = add nsw i32 %shr14, 1
  %idxprom16 = sext i32 %add15 to i64
  %29 = load i32*, i32** %pdest, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 %idxprom16
  %30 = load i32, i32* %arrayidx17, align 4
  %and18 = and i32 %30, %neg
  store i32 %and18, i32* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize19 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 0
  %32 = load i32, i32* %wsize19, align 4
  %33 = load i32*, i32** %p, align 8
  %idx.ext20 = sext i32 %32 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %33, i64 %idx.ext20
  store i32* %add.ptr21, i32** %p, align 8
  %34 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %34, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %data23 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 5
  %36 = load i32*, i32** %data23, align 8
  %37 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %wsize24 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %38 = load i32, i32* %wsize24, align 4
  %39 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count25 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 3
  %40 = load i32, i32* %count25, align 4
  %inc26 = add nsw i32 %40, 1
  store i32 %inc26, i32* %count25, align 4
  %mul27 = mul nsw i32 %38, %40
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %36, i64 %idx.ext28
  store i32* %add.ptr29, i32** %pdest, align 8
  %41 = load i32*, i32** %pdest, align 8
  %42 = load i32*, i32** %select.addr, align 8
  %call30 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %41, i32* %42)
  %43 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data31 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 5
  %44 = load i32*, i32** %data31, align 8
  store i32* %44, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.54, %for.end
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count33 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 3
  %47 = load i32, i32* %count33, align 4
  %cmp34 = icmp slt i32 %45, %47
  br i1 %cmp34, label %for.body.35, label %for.end.59

for.body.35:                                      ; preds = %for.cond.32
  %48 = load i32, i32* %out2.addr, align 4
  %shr36 = ashr i32 %48, 5
  %add37 = add nsw i32 %shr36, 1
  %idxprom38 = sext i32 %add37 to i64
  %49 = load i32*, i32** %p, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %49, i64 %idxprom38
  %50 = load i32, i32* %arrayidx39, align 4
  %51 = load i32, i32* %out2.addr, align 4
  %and40 = and i32 %51, 31
  %shl41 = shl i32 1, %and40
  %and42 = and i32 %50, %shl41
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %for.body.35
  %52 = load i32, i32* %i, align 4
  %and45 = and i32 %52, 31
  %shl46 = shl i32 1, %and45
  %neg47 = xor i32 %shl46, -1
  %53 = load i32, i32* %i, align 4
  %shr48 = ashr i32 %53, 5
  %add49 = add nsw i32 %shr48, 1
  %idxprom50 = sext i32 %add49 to i64
  %54 = load i32*, i32** %pdest, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %54, i64 %idxprom50
  %55 = load i32, i32* %arrayidx51, align 4
  %and52 = and i32 %55, %neg47
  store i32 %and52, i32* %arrayidx51, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.44, %for.body.35
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %56 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize55 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 0
  %57 = load i32, i32* %wsize55, align 4
  %58 = load i32*, i32** %p, align 8
  %idx.ext56 = sext i32 %57 to i64
  %add.ptr57 = getelementptr inbounds i32, i32* %58, i64 %idx.ext56
  store i32* %add.ptr57, i32** %p, align 8
  %59 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %59, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.32

for.end.59:                                       ; preds = %for.cond.32
  %60 = load %struct.set_family*, %struct.set_family** %temp, align 8
  ret %struct.set_family* %60
}

; Function Attrs: nounwind uwtable
define i32 @output_phase_setup(%struct.PLA_t* %PLA, i32 %first_output) #0 {
entry:
  %retval = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %first_output.addr = alloca i32, align 4
  %F = alloca %struct.set_family*, align 8
  %R = alloca %struct.set_family*, align 8
  %D = alloca %struct.set_family*, align 8
  %mask = alloca i32*, align 8
  %mask1 = alloca i32*, align 8
  %last = alloca i32*, align 8
  %first_part = alloca i32, align 4
  %offset = alloca i32, align 4
  %save = alloca i32, align 4
  %p = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %pf = alloca i32*, align 8
  %i = alloca i32, align 4
  %last_part = alloca i32, align 4
  %i_ = alloca i32, align 4
  %i_118 = alloca i32, align 4
  %i_228 = alloca i32, align 4
  %i_248 = alloca i32, align 4
  %i_349 = alloca i32, align 4
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %first_output, i32* %first_output.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F1, align 8
  store %struct.set_family* %2, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D2 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D2, align 8
  store %struct.set_family* %4, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R3, align 8
  store %struct.set_family* %6, %struct.set_family** %R, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %10 = load i32, i32* %first_output.addr, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* %first_part, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  store i32 %13, i32* %last_part, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %17 = load i32, i32* %first_output.addr, align 4
  %sub = sub nsw i32 %16, %17
  store i32 %sub, i32* %offset, align 4
  call void (...) @setdown_cube()
  %18 = load i32, i32* %offset, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %21, %18
  store i32 %add10, i32* %arrayidx9, align 4
  call void (...) @cube_setup()
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i64 0
  %23 = load i32, i32* %arrayidx11, align 4
  %and = and i32 %23, 1023
  %mul = mul i32 32, %and
  %cmp12 = icmp ule i32 %mul, 32
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %25, 1023
  %mul15 = mul i32 32, %and14
  %sub16 = sub i32 %mul15, 1
  %shr = lshr i32 %sub16, 5
  %add17 = add i32 %shr, 1
  %add18 = add i32 %add17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add18, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul19 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul19)
  %26 = bitcast i8* %call to i32*
  %27 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call20 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %26, i32* %27)
  store i32* %call20, i32** %mask, align 8
  %28 = load i32, i32* %first_part, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp21 = icmp slt i32 %29, %30
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %and23 = and i32 %31, 31
  %shl = shl i32 1, %and23
  %neg = xor i32 %shl, -1
  %32 = load i32, i32* %i, align 4
  %shr24 = ashr i32 %32, 5
  %add25 = add nsw i32 %shr24, 1
  %idxprom26 = sext i32 %add25 to i64
  %33 = load i32*, i32** %mask, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 %idxprom26
  %34 = load i32, i32* %arrayidx27, align 4
  %and28 = and i32 %34, %neg
  store i32 %and28, i32* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32*, i32** %mask, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 0
  %37 = load i32, i32* %arrayidx29, align 4
  %and30 = and i32 %37, 1023
  %mul31 = mul i32 32, %and30
  %cmp32 = icmp ule i32 %mul31, 32
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %for.end
  br label %cond.end.43

cond.false.35:                                    ; preds = %for.end
  %38 = load i32*, i32** %mask, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx36, align 4
  %and37 = and i32 %39, 1023
  %mul38 = mul i32 32, %and37
  %sub39 = sub i32 %mul38, 1
  %shr40 = lshr i32 %sub39, 5
  %add41 = add i32 %shr40, 1
  %add42 = add i32 %add41, 1
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.35, %cond.true.34
  %cond44 = phi i32 [ 2, %cond.true.34 ], [ %add42, %cond.false.35 ]
  %conv45 = zext i32 %cond44 to i64
  %mul46 = mul i64 4, %conv45
  %call47 = call i8* @malloc(i64 %mul46)
  %40 = bitcast i8* %call47 to i32*
  %41 = load i32*, i32** %mask, align 8
  %call48 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %40, i32* %41)
  store i32* %call48, i32** %mask1, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %43, i64 %idxprom49
  %44 = load i32, i32* %arrayidx50, align 4
  store i32 %44, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.63, %cond.end.43
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %first_part, align 4
  %cmp52 = icmp slt i32 %45, %46
  br i1 %cmp52, label %for.body.54, label %for.end.65

for.body.54:                                      ; preds = %for.cond.51
  %47 = load i32, i32* %i, align 4
  %and55 = and i32 %47, 31
  %shl56 = shl i32 1, %and55
  %neg57 = xor i32 %shl56, -1
  %48 = load i32, i32* %i, align 4
  %shr58 = ashr i32 %48, 5
  %add59 = add nsw i32 %shr58, 1
  %idxprom60 = sext i32 %add59 to i64
  %49 = load i32*, i32** %mask1, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %49, i64 %idxprom60
  %50 = load i32, i32* %arrayidx61, align 4
  %and62 = and i32 %50, %neg57
  store i32 %and62, i32* %arrayidx61, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.54
  %51 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.51

for.end.65:                                       ; preds = %for.cond.51
  %52 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 3
  %53 = load i32, i32* %count, align 4
  %54 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count66 = getelementptr inbounds %struct.set_family, %struct.set_family* %54, i32 0, i32 3
  %55 = load i32, i32* %count66, align 4
  %add67 = add nsw i32 %53, %55
  %56 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call68 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %add67, i32 %56)
  %57 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F69 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %57, i32 0, i32 0
  store %struct.set_family* %call68, %struct.set_family** %F69, align 8
  %58 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count70 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 3
  %59 = load i32, i32* %count70, align 4
  %60 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count71 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 3
  %61 = load i32, i32* %count71, align 4
  %add72 = add nsw i32 %59, %61
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call73 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %add72, i32 %62)
  %63 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R74 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %63, i32 0, i32 2
  store %struct.set_family* %call73, %struct.set_family** %R74, align 8
  %64 = load %struct.set_family*, %struct.set_family** %D, align 8
  %count75 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 3
  %65 = load i32, i32* %count75, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call76 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %65, i32 %66)
  %67 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D77 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %67, i32 0, i32 1
  store %struct.set_family* %call76, %struct.set_family** %D77, align 8
  %68 = load %struct.set_family*, %struct.set_family** %F, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %68, i32 0, i32 5
  %69 = load i32*, i32** %data, align 8
  store i32* %69, i32** %p, align 8
  %70 = load i32*, i32** %p, align 8
  %71 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count78 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 3
  %72 = load i32, i32* %count78, align 4
  %73 = load %struct.set_family*, %struct.set_family** %F, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %73, i32 0, i32 0
  %74 = load i32, i32* %wsize, align 4
  %mul79 = mul nsw i32 %72, %74
  %idx.ext = sext i32 %mul79 to i64
  %add.ptr = getelementptr inbounds i32, i32* %70, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.193, %for.end.65
  %75 = load i32*, i32** %p, align 8
  %76 = load i32*, i32** %last, align 8
  %cmp81 = icmp ult i32* %75, %76
  br i1 %cmp81, label %for.body.83, label %for.end.197

for.body.83:                                      ; preds = %for.cond.80
  %77 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F84 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %77, i32 0, i32 0
  %78 = load %struct.set_family*, %struct.set_family** %F84, align 8
  %data85 = getelementptr inbounds %struct.set_family, %struct.set_family* %78, i32 0, i32 5
  %79 = load i32*, i32** %data85, align 8
  %80 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F86 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %80, i32 0, i32 0
  %81 = load %struct.set_family*, %struct.set_family** %F86, align 8
  %wsize87 = getelementptr inbounds %struct.set_family, %struct.set_family* %81, i32 0, i32 0
  %82 = load i32, i32* %wsize87, align 4
  %83 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F88 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %83, i32 0, i32 0
  %84 = load %struct.set_family*, %struct.set_family** %F88, align 8
  %count89 = getelementptr inbounds %struct.set_family, %struct.set_family* %84, i32 0, i32 3
  %85 = load i32, i32* %count89, align 4
  %inc90 = add nsw i32 %85, 1
  store i32 %inc90, i32* %count89, align 4
  %mul91 = mul nsw i32 %82, %85
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i32, i32* %79, i64 %idx.ext92
  store i32* %add.ptr93, i32** %pf, align 8
  %86 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R94 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %86, i32 0, i32 2
  %87 = load %struct.set_family*, %struct.set_family** %R94, align 8
  %data95 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 5
  %88 = load i32*, i32** %data95, align 8
  %89 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R96 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %89, i32 0, i32 2
  %90 = load %struct.set_family*, %struct.set_family** %R96, align 8
  %wsize97 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 0
  %91 = load i32, i32* %wsize97, align 4
  %92 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R98 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %92, i32 0, i32 2
  %93 = load %struct.set_family*, %struct.set_family** %R98, align 8
  %count99 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %94 = load i32, i32* %count99, align 4
  %inc100 = add nsw i32 %94, 1
  store i32 %inc100, i32* %count99, align 4
  %mul101 = mul nsw i32 %91, %94
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i32, i32* %88, i64 %idx.ext102
  store i32* %add.ptr103, i32** %pr, align 8
  %95 = load i32*, i32** %mask, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx104, align 4
  %and105 = and i32 %96, 1023
  store i32 %and105, i32* %i_, align 4
  %97 = load i32*, i32** %pf, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx106, align 4
  %and107 = and i32 %98, -1024
  store i32 %and107, i32* %arrayidx106, align 4
  %99 = load i32, i32* %i_, align 4
  %100 = load i32*, i32** %pf, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %100, i64 0
  %101 = load i32, i32* %arrayidx108, align 4
  %or = or i32 %101, %99
  store i32 %or, i32* %arrayidx108, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.83
  %102 = load i32, i32* %i_, align 4
  %idxprom109 = sext i32 %102 to i64
  %103 = load i32*, i32** %mask, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %103, i64 %idxprom109
  %104 = load i32, i32* %arrayidx110, align 4
  %105 = load i32, i32* %i_, align 4
  %idxprom111 = sext i32 %105 to i64
  %106 = load i32*, i32** %p, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %106, i64 %idxprom111
  %107 = load i32, i32* %arrayidx112, align 4
  %and113 = and i32 %104, %107
  %108 = load i32, i32* %i_, align 4
  %idxprom114 = sext i32 %108 to i64
  %109 = load i32*, i32** %pf, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %109, i64 %idxprom114
  store i32 %and113, i32* %arrayidx115, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %110 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %110, -1
  store i32 %dec, i32* %i_, align 4
  %cmp116 = icmp sgt i32 %dec, 0
  br i1 %cmp116, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %111 = load i32*, i32** %mask1, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %111, i64 0
  %112 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %112, 1023
  store i32 %and120, i32* %i_118, align 4
  %113 = load i32*, i32** %pr, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %113, i64 0
  %114 = load i32, i32* %arrayidx121, align 4
  %and122 = and i32 %114, -1024
  store i32 %and122, i32* %arrayidx121, align 4
  %115 = load i32, i32* %i_118, align 4
  %116 = load i32*, i32** %pr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %116, i64 0
  %117 = load i32, i32* %arrayidx123, align 4
  %or124 = or i32 %117, %115
  store i32 %or124, i32* %arrayidx123, align 4
  br label %do.body.125

do.body.125:                                      ; preds = %do.cond.133, %do.end
  %118 = load i32, i32* %i_118, align 4
  %idxprom126 = sext i32 %118 to i64
  %119 = load i32*, i32** %mask1, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %119, i64 %idxprom126
  %120 = load i32, i32* %arrayidx127, align 4
  %121 = load i32, i32* %i_118, align 4
  %idxprom128 = sext i32 %121 to i64
  %122 = load i32*, i32** %p, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %122, i64 %idxprom128
  %123 = load i32, i32* %arrayidx129, align 4
  %and130 = and i32 %120, %123
  %124 = load i32, i32* %i_118, align 4
  %idxprom131 = sext i32 %124 to i64
  %125 = load i32*, i32** %pr, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %125, i64 %idxprom131
  store i32 %and130, i32* %arrayidx132, align 4
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.125
  %126 = load i32, i32* %i_118, align 4
  %dec134 = add nsw i32 %126, -1
  store i32 %dec134, i32* %i_118, align 4
  %cmp135 = icmp sgt i32 %dec134, 0
  br i1 %cmp135, label %do.body.125, label %do.end.137

do.end.137:                                       ; preds = %do.cond.133
  %127 = load i32, i32* %first_part, align 4
  store i32 %127, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.158, %do.end.137
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %last_part, align 4
  %cmp139 = icmp sle i32 %128, %129
  br i1 %cmp139, label %for.body.141, label %for.end.160

for.body.141:                                     ; preds = %for.cond.138
  %130 = load i32, i32* %i, align 4
  %shr142 = ashr i32 %130, 5
  %add143 = add nsw i32 %shr142, 1
  %idxprom144 = sext i32 %add143 to i64
  %131 = load i32*, i32** %p, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %131, i64 %idxprom144
  %132 = load i32, i32* %arrayidx145, align 4
  %133 = load i32, i32* %i, align 4
  %and146 = and i32 %133, 31
  %shl147 = shl i32 1, %and146
  %and148 = and i32 %132, %shl147
  %tobool = icmp ne i32 %and148, 0
  br i1 %tobool, label %if.then.149, label %if.end.157

if.then.149:                                      ; preds = %for.body.141
  %134 = load i32, i32* %i, align 4
  %and150 = and i32 %134, 31
  %shl151 = shl i32 1, %and150
  %135 = load i32, i32* %i, align 4
  %shr152 = ashr i32 %135, 5
  %add153 = add nsw i32 %shr152, 1
  %idxprom154 = sext i32 %add153 to i64
  %136 = load i32*, i32** %pf, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %136, i64 %idxprom154
  %137 = load i32, i32* %arrayidx155, align 4
  %or156 = or i32 %137, %shl151
  store i32 %or156, i32* %arrayidx155, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.149, %for.body.141
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %138 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %138, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.138

for.end.160:                                      ; preds = %for.cond.138
  store i32 0, i32* %save, align 4
  %139 = load i32, i32* %first_part, align 4
  store i32 %139, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.184, %for.end.160
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %last_part, align 4
  %cmp162 = icmp sle i32 %140, %141
  br i1 %cmp162, label %for.body.164, label %for.end.186

for.body.164:                                     ; preds = %for.cond.161
  %142 = load i32, i32* %i, align 4
  %shr165 = ashr i32 %142, 5
  %add166 = add nsw i32 %shr165, 1
  %idxprom167 = sext i32 %add166 to i64
  %143 = load i32*, i32** %p, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %143, i64 %idxprom167
  %144 = load i32, i32* %arrayidx168, align 4
  %145 = load i32, i32* %i, align 4
  %and169 = and i32 %145, 31
  %shl170 = shl i32 1, %and169
  %and171 = and i32 %144, %shl170
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.183

if.then.173:                                      ; preds = %for.body.164
  store i32 1, i32* %save, align 4
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %offset, align 4
  %add174 = add nsw i32 %146, %147
  %and175 = and i32 %add174, 31
  %shl176 = shl i32 1, %and175
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %offset, align 4
  %add177 = add nsw i32 %148, %149
  %shr178 = ashr i32 %add177, 5
  %add179 = add nsw i32 %shr178, 1
  %idxprom180 = sext i32 %add179 to i64
  %150 = load i32*, i32** %pr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %150, i64 %idxprom180
  %151 = load i32, i32* %arrayidx181, align 4
  %or182 = or i32 %151, %shl176
  store i32 %or182, i32* %arrayidx181, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.173, %for.body.164
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.183
  %152 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %152, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.161

for.end.186:                                      ; preds = %for.cond.161
  %153 = load i32, i32* %save, align 4
  %tobool187 = icmp ne i32 %153, 0
  br i1 %tobool187, label %if.end.192, label %if.then.188

if.then.188:                                      ; preds = %for.end.186
  %154 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R189 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %154, i32 0, i32 2
  %155 = load %struct.set_family*, %struct.set_family** %R189, align 8
  %count190 = getelementptr inbounds %struct.set_family, %struct.set_family* %155, i32 0, i32 3
  %156 = load i32, i32* %count190, align 4
  %dec191 = add nsw i32 %156, -1
  store i32 %dec191, i32* %count190, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.188, %for.end.186
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %157 = load %struct.set_family*, %struct.set_family** %F, align 8
  %wsize194 = getelementptr inbounds %struct.set_family, %struct.set_family* %157, i32 0, i32 0
  %158 = load i32, i32* %wsize194, align 4
  %159 = load i32*, i32** %p, align 8
  %idx.ext195 = sext i32 %158 to i64
  %add.ptr196 = getelementptr inbounds i32, i32* %159, i64 %idx.ext195
  store i32* %add.ptr196, i32** %p, align 8
  br label %for.cond.80

for.end.197:                                      ; preds = %for.cond.80
  %160 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data198 = getelementptr inbounds %struct.set_family, %struct.set_family* %160, i32 0, i32 5
  %161 = load i32*, i32** %data198, align 8
  store i32* %161, i32** %p, align 8
  %162 = load i32*, i32** %p, align 8
  %163 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count199 = getelementptr inbounds %struct.set_family, %struct.set_family* %163, i32 0, i32 3
  %164 = load i32, i32* %count199, align 4
  %165 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize200 = getelementptr inbounds %struct.set_family, %struct.set_family* %165, i32 0, i32 0
  %166 = load i32, i32* %wsize200, align 4
  %mul201 = mul nsw i32 %164, %166
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds i32, i32* %162, i64 %idx.ext202
  store i32* %add.ptr203, i32** %last, align 8
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.324, %for.end.197
  %167 = load i32*, i32** %p, align 8
  %168 = load i32*, i32** %last, align 8
  %cmp205 = icmp ult i32* %167, %168
  br i1 %cmp205, label %for.body.207, label %for.end.328

for.body.207:                                     ; preds = %for.cond.204
  %169 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F208 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %169, i32 0, i32 0
  %170 = load %struct.set_family*, %struct.set_family** %F208, align 8
  %data209 = getelementptr inbounds %struct.set_family, %struct.set_family* %170, i32 0, i32 5
  %171 = load i32*, i32** %data209, align 8
  %172 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F210 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %172, i32 0, i32 0
  %173 = load %struct.set_family*, %struct.set_family** %F210, align 8
  %wsize211 = getelementptr inbounds %struct.set_family, %struct.set_family* %173, i32 0, i32 0
  %174 = load i32, i32* %wsize211, align 4
  %175 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F212 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %175, i32 0, i32 0
  %176 = load %struct.set_family*, %struct.set_family** %F212, align 8
  %count213 = getelementptr inbounds %struct.set_family, %struct.set_family* %176, i32 0, i32 3
  %177 = load i32, i32* %count213, align 4
  %inc214 = add nsw i32 %177, 1
  store i32 %inc214, i32* %count213, align 4
  %mul215 = mul nsw i32 %174, %177
  %idx.ext216 = sext i32 %mul215 to i64
  %add.ptr217 = getelementptr inbounds i32, i32* %171, i64 %idx.ext216
  store i32* %add.ptr217, i32** %pf, align 8
  %178 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R218 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %178, i32 0, i32 2
  %179 = load %struct.set_family*, %struct.set_family** %R218, align 8
  %data219 = getelementptr inbounds %struct.set_family, %struct.set_family* %179, i32 0, i32 5
  %180 = load i32*, i32** %data219, align 8
  %181 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R220 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %181, i32 0, i32 2
  %182 = load %struct.set_family*, %struct.set_family** %R220, align 8
  %wsize221 = getelementptr inbounds %struct.set_family, %struct.set_family* %182, i32 0, i32 0
  %183 = load i32, i32* %wsize221, align 4
  %184 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R222 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %184, i32 0, i32 2
  %185 = load %struct.set_family*, %struct.set_family** %R222, align 8
  %count223 = getelementptr inbounds %struct.set_family, %struct.set_family* %185, i32 0, i32 3
  %186 = load i32, i32* %count223, align 4
  %inc224 = add nsw i32 %186, 1
  store i32 %inc224, i32* %count223, align 4
  %mul225 = mul nsw i32 %183, %186
  %idx.ext226 = sext i32 %mul225 to i64
  %add.ptr227 = getelementptr inbounds i32, i32* %180, i64 %idx.ext226
  store i32* %add.ptr227, i32** %pr, align 8
  %187 = load i32*, i32** %mask1, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %187, i64 0
  %188 = load i32, i32* %arrayidx229, align 4
  %and230 = and i32 %188, 1023
  store i32 %and230, i32* %i_228, align 4
  %189 = load i32*, i32** %pf, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %189, i64 0
  %190 = load i32, i32* %arrayidx231, align 4
  %and232 = and i32 %190, -1024
  store i32 %and232, i32* %arrayidx231, align 4
  %191 = load i32, i32* %i_228, align 4
  %192 = load i32*, i32** %pf, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %192, i64 0
  %193 = load i32, i32* %arrayidx233, align 4
  %or234 = or i32 %193, %191
  store i32 %or234, i32* %arrayidx233, align 4
  br label %do.body.235

do.body.235:                                      ; preds = %do.cond.243, %for.body.207
  %194 = load i32, i32* %i_228, align 4
  %idxprom236 = sext i32 %194 to i64
  %195 = load i32*, i32** %mask1, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %195, i64 %idxprom236
  %196 = load i32, i32* %arrayidx237, align 4
  %197 = load i32, i32* %i_228, align 4
  %idxprom238 = sext i32 %197 to i64
  %198 = load i32*, i32** %p, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %198, i64 %idxprom238
  %199 = load i32, i32* %arrayidx239, align 4
  %and240 = and i32 %196, %199
  %200 = load i32, i32* %i_228, align 4
  %idxprom241 = sext i32 %200 to i64
  %201 = load i32*, i32** %pf, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %201, i64 %idxprom241
  store i32 %and240, i32* %arrayidx242, align 4
  br label %do.cond.243

do.cond.243:                                      ; preds = %do.body.235
  %202 = load i32, i32* %i_228, align 4
  %dec244 = add nsw i32 %202, -1
  store i32 %dec244, i32* %i_228, align 4
  %cmp245 = icmp sgt i32 %dec244, 0
  br i1 %cmp245, label %do.body.235, label %do.end.247

do.end.247:                                       ; preds = %do.cond.243
  %203 = load i32*, i32** %mask, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %203, i64 0
  %204 = load i32, i32* %arrayidx249, align 4
  %and250 = and i32 %204, 1023
  store i32 %and250, i32* %i_248, align 4
  %205 = load i32*, i32** %pr, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %205, i64 0
  %206 = load i32, i32* %arrayidx251, align 4
  %and252 = and i32 %206, -1024
  store i32 %and252, i32* %arrayidx251, align 4
  %207 = load i32, i32* %i_248, align 4
  %208 = load i32*, i32** %pr, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %208, i64 0
  %209 = load i32, i32* %arrayidx253, align 4
  %or254 = or i32 %209, %207
  store i32 %or254, i32* %arrayidx253, align 4
  br label %do.body.255

do.body.255:                                      ; preds = %do.cond.263, %do.end.247
  %210 = load i32, i32* %i_248, align 4
  %idxprom256 = sext i32 %210 to i64
  %211 = load i32*, i32** %mask, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %211, i64 %idxprom256
  %212 = load i32, i32* %arrayidx257, align 4
  %213 = load i32, i32* %i_248, align 4
  %idxprom258 = sext i32 %213 to i64
  %214 = load i32*, i32** %p, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %214, i64 %idxprom258
  %215 = load i32, i32* %arrayidx259, align 4
  %and260 = and i32 %212, %215
  %216 = load i32, i32* %i_248, align 4
  %idxprom261 = sext i32 %216 to i64
  %217 = load i32*, i32** %pr, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %217, i64 %idxprom261
  store i32 %and260, i32* %arrayidx262, align 4
  br label %do.cond.263

do.cond.263:                                      ; preds = %do.body.255
  %218 = load i32, i32* %i_248, align 4
  %dec264 = add nsw i32 %218, -1
  store i32 %dec264, i32* %i_248, align 4
  %cmp265 = icmp sgt i32 %dec264, 0
  br i1 %cmp265, label %do.body.255, label %do.end.267

do.end.267:                                       ; preds = %do.cond.263
  store i32 0, i32* %save, align 4
  %219 = load i32, i32* %first_part, align 4
  store i32 %219, i32* %i, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.291, %do.end.267
  %220 = load i32, i32* %i, align 4
  %221 = load i32, i32* %last_part, align 4
  %cmp269 = icmp sle i32 %220, %221
  br i1 %cmp269, label %for.body.271, label %for.end.293

for.body.271:                                     ; preds = %for.cond.268
  %222 = load i32, i32* %i, align 4
  %shr272 = ashr i32 %222, 5
  %add273 = add nsw i32 %shr272, 1
  %idxprom274 = sext i32 %add273 to i64
  %223 = load i32*, i32** %p, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %223, i64 %idxprom274
  %224 = load i32, i32* %arrayidx275, align 4
  %225 = load i32, i32* %i, align 4
  %and276 = and i32 %225, 31
  %shl277 = shl i32 1, %and276
  %and278 = and i32 %224, %shl277
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.290

if.then.280:                                      ; preds = %for.body.271
  store i32 1, i32* %save, align 4
  %226 = load i32, i32* %i, align 4
  %227 = load i32, i32* %offset, align 4
  %add281 = add nsw i32 %226, %227
  %and282 = and i32 %add281, 31
  %shl283 = shl i32 1, %and282
  %228 = load i32, i32* %i, align 4
  %229 = load i32, i32* %offset, align 4
  %add284 = add nsw i32 %228, %229
  %shr285 = ashr i32 %add284, 5
  %add286 = add nsw i32 %shr285, 1
  %idxprom287 = sext i32 %add286 to i64
  %230 = load i32*, i32** %pf, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %230, i64 %idxprom287
  %231 = load i32, i32* %arrayidx288, align 4
  %or289 = or i32 %231, %shl283
  store i32 %or289, i32* %arrayidx288, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.280, %for.body.271
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290
  %232 = load i32, i32* %i, align 4
  %inc292 = add nsw i32 %232, 1
  store i32 %inc292, i32* %i, align 4
  br label %for.cond.268

for.end.293:                                      ; preds = %for.cond.268
  %233 = load i32, i32* %save, align 4
  %tobool294 = icmp ne i32 %233, 0
  br i1 %tobool294, label %if.end.299, label %if.then.295

if.then.295:                                      ; preds = %for.end.293
  %234 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F296 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %234, i32 0, i32 0
  %235 = load %struct.set_family*, %struct.set_family** %F296, align 8
  %count297 = getelementptr inbounds %struct.set_family, %struct.set_family* %235, i32 0, i32 3
  %236 = load i32, i32* %count297, align 4
  %dec298 = add nsw i32 %236, -1
  store i32 %dec298, i32* %count297, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.295, %for.end.293
  %237 = load i32, i32* %first_part, align 4
  store i32 %237, i32* %i, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.321, %if.end.299
  %238 = load i32, i32* %i, align 4
  %239 = load i32, i32* %last_part, align 4
  %cmp301 = icmp sle i32 %238, %239
  br i1 %cmp301, label %for.body.303, label %for.end.323

for.body.303:                                     ; preds = %for.cond.300
  %240 = load i32, i32* %i, align 4
  %shr304 = ashr i32 %240, 5
  %add305 = add nsw i32 %shr304, 1
  %idxprom306 = sext i32 %add305 to i64
  %241 = load i32*, i32** %p, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %241, i64 %idxprom306
  %242 = load i32, i32* %arrayidx307, align 4
  %243 = load i32, i32* %i, align 4
  %and308 = and i32 %243, 31
  %shl309 = shl i32 1, %and308
  %and310 = and i32 %242, %shl309
  %tobool311 = icmp ne i32 %and310, 0
  br i1 %tobool311, label %if.then.312, label %if.end.320

if.then.312:                                      ; preds = %for.body.303
  %244 = load i32, i32* %i, align 4
  %and313 = and i32 %244, 31
  %shl314 = shl i32 1, %and313
  %245 = load i32, i32* %i, align 4
  %shr315 = ashr i32 %245, 5
  %add316 = add nsw i32 %shr315, 1
  %idxprom317 = sext i32 %add316 to i64
  %246 = load i32*, i32** %pr, align 8
  %arrayidx318 = getelementptr inbounds i32, i32* %246, i64 %idxprom317
  %247 = load i32, i32* %arrayidx318, align 4
  %or319 = or i32 %247, %shl314
  store i32 %or319, i32* %arrayidx318, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.312, %for.body.303
  br label %for.inc.321

for.inc.321:                                      ; preds = %if.end.320
  %248 = load i32, i32* %i, align 4
  %inc322 = add nsw i32 %248, 1
  store i32 %inc322, i32* %i, align 4
  br label %for.cond.300

for.end.323:                                      ; preds = %for.cond.300
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.end.323
  %249 = load %struct.set_family*, %struct.set_family** %R, align 8
  %wsize325 = getelementptr inbounds %struct.set_family, %struct.set_family* %249, i32 0, i32 0
  %250 = load i32, i32* %wsize325, align 4
  %251 = load i32*, i32** %p, align 8
  %idx.ext326 = sext i32 %250 to i64
  %add.ptr327 = getelementptr inbounds i32, i32* %251, i64 %idx.ext326
  store i32* %add.ptr327, i32** %p, align 8
  br label %for.cond.204

for.end.328:                                      ; preds = %for.cond.204
  %252 = load %struct.set_family*, %struct.set_family** %D, align 8
  %data329 = getelementptr inbounds %struct.set_family, %struct.set_family* %252, i32 0, i32 5
  %253 = load i32*, i32** %data329, align 8
  store i32* %253, i32** %p, align 8
  %254 = load i32*, i32** %p, align 8
  %255 = load %struct.set_family*, %struct.set_family** %D, align 8
  %count330 = getelementptr inbounds %struct.set_family, %struct.set_family* %255, i32 0, i32 3
  %256 = load i32, i32* %count330, align 4
  %257 = load %struct.set_family*, %struct.set_family** %D, align 8
  %wsize331 = getelementptr inbounds %struct.set_family, %struct.set_family* %257, i32 0, i32 0
  %258 = load i32, i32* %wsize331, align 4
  %mul332 = mul nsw i32 %256, %258
  %idx.ext333 = sext i32 %mul332 to i64
  %add.ptr334 = getelementptr inbounds i32, i32* %254, i64 %idx.ext333
  store i32* %add.ptr334, i32** %last, align 8
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.402, %for.end.328
  %259 = load i32*, i32** %p, align 8
  %260 = load i32*, i32** %last, align 8
  %cmp336 = icmp ult i32* %259, %260
  br i1 %cmp336, label %for.body.338, label %for.end.406

for.body.338:                                     ; preds = %for.cond.335
  %261 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D339 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %261, i32 0, i32 1
  %262 = load %struct.set_family*, %struct.set_family** %D339, align 8
  %data340 = getelementptr inbounds %struct.set_family, %struct.set_family* %262, i32 0, i32 5
  %263 = load i32*, i32** %data340, align 8
  %264 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D341 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %264, i32 0, i32 1
  %265 = load %struct.set_family*, %struct.set_family** %D341, align 8
  %wsize342 = getelementptr inbounds %struct.set_family, %struct.set_family* %265, i32 0, i32 0
  %266 = load i32, i32* %wsize342, align 4
  %267 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D343 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %267, i32 0, i32 1
  %268 = load %struct.set_family*, %struct.set_family** %D343, align 8
  %count344 = getelementptr inbounds %struct.set_family, %struct.set_family* %268, i32 0, i32 3
  %269 = load i32, i32* %count344, align 4
  %inc345 = add nsw i32 %269, 1
  store i32 %inc345, i32* %count344, align 4
  %mul346 = mul nsw i32 %266, %269
  %idx.ext347 = sext i32 %mul346 to i64
  %add.ptr348 = getelementptr inbounds i32, i32* %263, i64 %idx.ext347
  store i32* %add.ptr348, i32** %pf, align 8
  %270 = load i32*, i32** %mask, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %270, i64 0
  %271 = load i32, i32* %arrayidx350, align 4
  %and351 = and i32 %271, 1023
  store i32 %and351, i32* %i_349, align 4
  %272 = load i32*, i32** %pf, align 8
  %arrayidx352 = getelementptr inbounds i32, i32* %272, i64 0
  %273 = load i32, i32* %arrayidx352, align 4
  %and353 = and i32 %273, -1024
  store i32 %and353, i32* %arrayidx352, align 4
  %274 = load i32, i32* %i_349, align 4
  %275 = load i32*, i32** %pf, align 8
  %arrayidx354 = getelementptr inbounds i32, i32* %275, i64 0
  %276 = load i32, i32* %arrayidx354, align 4
  %or355 = or i32 %276, %274
  store i32 %or355, i32* %arrayidx354, align 4
  br label %do.body.356

do.body.356:                                      ; preds = %do.cond.364, %for.body.338
  %277 = load i32, i32* %i_349, align 4
  %idxprom357 = sext i32 %277 to i64
  %278 = load i32*, i32** %mask, align 8
  %arrayidx358 = getelementptr inbounds i32, i32* %278, i64 %idxprom357
  %279 = load i32, i32* %arrayidx358, align 4
  %280 = load i32, i32* %i_349, align 4
  %idxprom359 = sext i32 %280 to i64
  %281 = load i32*, i32** %p, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %281, i64 %idxprom359
  %282 = load i32, i32* %arrayidx360, align 4
  %and361 = and i32 %279, %282
  %283 = load i32, i32* %i_349, align 4
  %idxprom362 = sext i32 %283 to i64
  %284 = load i32*, i32** %pf, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %284, i64 %idxprom362
  store i32 %and361, i32* %arrayidx363, align 4
  br label %do.cond.364

do.cond.364:                                      ; preds = %do.body.356
  %285 = load i32, i32* %i_349, align 4
  %dec365 = add nsw i32 %285, -1
  store i32 %dec365, i32* %i_349, align 4
  %cmp366 = icmp sgt i32 %dec365, 0
  br i1 %cmp366, label %do.body.356, label %do.end.368

do.end.368:                                       ; preds = %do.cond.364
  %286 = load i32, i32* %first_part, align 4
  store i32 %286, i32* %i, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.399, %do.end.368
  %287 = load i32, i32* %i, align 4
  %288 = load i32, i32* %last_part, align 4
  %cmp370 = icmp sle i32 %287, %288
  br i1 %cmp370, label %for.body.372, label %for.end.401

for.body.372:                                     ; preds = %for.cond.369
  %289 = load i32, i32* %i, align 4
  %shr373 = ashr i32 %289, 5
  %add374 = add nsw i32 %shr373, 1
  %idxprom375 = sext i32 %add374 to i64
  %290 = load i32*, i32** %p, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %290, i64 %idxprom375
  %291 = load i32, i32* %arrayidx376, align 4
  %292 = load i32, i32* %i, align 4
  %and377 = and i32 %292, 31
  %shl378 = shl i32 1, %and377
  %and379 = and i32 %291, %shl378
  %tobool380 = icmp ne i32 %and379, 0
  br i1 %tobool380, label %if.then.381, label %if.end.398

if.then.381:                                      ; preds = %for.body.372
  %293 = load i32, i32* %i, align 4
  %and382 = and i32 %293, 31
  %shl383 = shl i32 1, %and382
  %294 = load i32, i32* %i, align 4
  %shr384 = ashr i32 %294, 5
  %add385 = add nsw i32 %shr384, 1
  %idxprom386 = sext i32 %add385 to i64
  %295 = load i32*, i32** %pf, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %295, i64 %idxprom386
  %296 = load i32, i32* %arrayidx387, align 4
  %or388 = or i32 %296, %shl383
  store i32 %or388, i32* %arrayidx387, align 4
  %297 = load i32, i32* %i, align 4
  %298 = load i32, i32* %offset, align 4
  %add389 = add nsw i32 %297, %298
  %and390 = and i32 %add389, 31
  %shl391 = shl i32 1, %and390
  %299 = load i32, i32* %i, align 4
  %300 = load i32, i32* %offset, align 4
  %add392 = add nsw i32 %299, %300
  %shr393 = ashr i32 %add392, 5
  %add394 = add nsw i32 %shr393, 1
  %idxprom395 = sext i32 %add394 to i64
  %301 = load i32*, i32** %pf, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %301, i64 %idxprom395
  %302 = load i32, i32* %arrayidx396, align 4
  %or397 = or i32 %302, %shl391
  store i32 %or397, i32* %arrayidx396, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.381, %for.body.372
  br label %for.inc.399

for.inc.399:                                      ; preds = %if.end.398
  %303 = load i32, i32* %i, align 4
  %inc400 = add nsw i32 %303, 1
  store i32 %inc400, i32* %i, align 4
  br label %for.cond.369

for.end.401:                                      ; preds = %for.cond.369
  br label %for.inc.402

for.inc.402:                                      ; preds = %for.end.401
  %304 = load %struct.set_family*, %struct.set_family** %D, align 8
  %wsize403 = getelementptr inbounds %struct.set_family, %struct.set_family* %304, i32 0, i32 0
  %305 = load i32, i32* %wsize403, align 4
  %306 = load i32*, i32** %p, align 8
  %idx.ext404 = sext i32 %305 to i64
  %add.ptr405 = getelementptr inbounds i32, i32* %306, i64 %idx.ext404
  store i32* %add.ptr405, i32** %p, align 8
  br label %for.cond.335

for.end.406:                                      ; preds = %for.cond.335
  %307 = load %struct.set_family*, %struct.set_family** %F, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %307)
  %308 = load %struct.set_family*, %struct.set_family** %D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %308)
  %309 = load %struct.set_family*, %struct.set_family** %R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %309)
  %310 = load i32*, i32** %mask, align 8
  %tobool407 = icmp ne i32* %310, null
  br i1 %tobool407, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %for.end.406
  %311 = load i32*, i32** %mask, align 8
  %312 = bitcast i32* %311 to i8*
  call void @free(i8* %312)
  store i32* null, i32** %mask, align 8
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.408, %for.end.406
  %313 = load i32*, i32** %mask1, align 8
  %tobool410 = icmp ne i32* %313, null
  br i1 %tobool410, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.409
  %314 = load i32*, i32** %mask1, align 8
  %315 = bitcast i32* %314 to i8*
  call void @free(i8* %315)
  store i32* null, i32** %mask1, align 8
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %if.end.409
  %316 = load i32, i32* %retval
  ret i32 %316
}

; Function Attrs: nounwind uwtable
define %struct.PLA_t* @set_phase(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %F1 = alloca %struct.set_family*, align 8
  %R1 = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %outmask = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %phase = alloca i32*, align 8
  %phase12 = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp, align 8
  %2 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %2, i32 0, i32 5
  %3 = load i32*, i32** %phase1, align 8
  store i32* %3, i32** %phase, align 8
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %4, i64 1
  %5 = load i32*, i32** %arrayidx3, align 8
  store i32* %5, i32** %phase12, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 %idxprom
  %8 = load i32*, i32** %arrayidx4, align 8
  store i32* %8, i32** %outmask, align 8
  %9 = load i32*, i32** %phase12, align 8
  %10 = load i32*, i32** %outmask, align 8
  %11 = load i32*, i32** %phase, align 8
  %call = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %9, i32* %10, i32* %11)
  %12 = load i32*, i32** %phase12, align 8
  %13 = load i32*, i32** %temp, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %15 = load i32*, i32** %outmask, align 8
  %call5 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %13, i32* %14, i32* %15)
  %16 = load i32*, i32** %phase12, align 8
  %call6 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %12, i32* %call5, i32* %16)
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 0
  %18 = load %struct.set_family*, %struct.set_family** %F, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count, align 4
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 2
  %21 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %22 = load i32, i32* %count7, align 4
  %add = add nsw i32 %19, %22
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call8 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %add, i32 %23)
  store %struct.set_family* %call8, %struct.set_family** %F1, align 8
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F9 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 0
  %25 = load %struct.set_family*, %struct.set_family** %F9, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count10, align 4
  %27 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %27, i32 0, i32 2
  %28 = load %struct.set_family*, %struct.set_family** %R11, align 8
  %count12 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count12, align 4
  %add13 = add nsw i32 %26, %29
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call14 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %add13, i32 %30)
  store %struct.set_family* %call14, %struct.set_family** %R1, align 8
  %31 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %31, i32 0, i32 0
  %32 = load %struct.set_family*, %struct.set_family** %F15, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 5
  %33 = load i32*, i32** %data, align 8
  store i32* %33, i32** %p, align 8
  %34 = load i32*, i32** %p, align 8
  %35 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F16 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %35, i32 0, i32 0
  %36 = load %struct.set_family*, %struct.set_family** %F16, align 8
  %count17 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 3
  %37 = load i32, i32* %count17, align 4
  %38 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F18 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %38, i32 0, i32 0
  %39 = load %struct.set_family*, %struct.set_family** %F18, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 0
  %40 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %37, %40
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %34, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %41 = load i32*, i32** %p, align 8
  %42 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %41, %42
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32*, i32** %temp, align 8
  %44 = load i32*, i32** %p, align 8
  %45 = load i32*, i32** %phase, align 8
  %call19 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %43, i32* %44, i32* %45)
  %46 = load i32*, i32** %outmask, align 8
  %call20 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %call19, i32* %46)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %47 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data21 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 5
  %48 = load i32*, i32** %data21, align 8
  %49 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize22 = getelementptr inbounds %struct.set_family, %struct.set_family* %49, i32 0, i32 0
  %50 = load i32, i32* %wsize22, align 4
  %51 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count23 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 3
  %52 = load i32, i32* %count23, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %count23, align 4
  %mul24 = mul nsw i32 %50, %52
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i32, i32* %48, i64 %idx.ext25
  %53 = load i32*, i32** %temp, align 8
  %call27 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr26, i32* %53)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %54 = load i32*, i32** %temp, align 8
  %55 = load i32*, i32** %p, align 8
  %56 = load i32*, i32** %phase12, align 8
  %call28 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %54, i32* %55, i32* %56)
  %57 = load i32*, i32** %outmask, align 8
  %call29 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %call28, i32* %57)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.40, label %if.then.31

if.then.31:                                       ; preds = %if.end
  %58 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %data32 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 5
  %59 = load i32*, i32** %data32, align 8
  %60 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %wsize33 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 0
  %61 = load i32, i32* %wsize33, align 4
  %62 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %count34 = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %63 = load i32, i32* %count34, align 4
  %inc35 = add nsw i32 %63, 1
  store i32 %inc35, i32* %count34, align 4
  %mul36 = mul nsw i32 %61, %63
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i32, i32* %59, i64 %idx.ext37
  %64 = load i32*, i32** %temp, align 8
  %call39 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr38, i32* %64)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.31, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %65 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F41 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %65, i32 0, i32 0
  %66 = load %struct.set_family*, %struct.set_family** %F41, align 8
  %wsize42 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 0
  %67 = load i32, i32* %wsize42, align 4
  %68 = load i32*, i32** %p, align 8
  %idx.ext43 = sext i32 %67 to i64
  %add.ptr44 = getelementptr inbounds i32, i32* %68, i64 %idx.ext43
  store i32* %add.ptr44, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R45 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %69, i32 0, i32 2
  %70 = load %struct.set_family*, %struct.set_family** %R45, align 8
  %data46 = getelementptr inbounds %struct.set_family, %struct.set_family* %70, i32 0, i32 5
  %71 = load i32*, i32** %data46, align 8
  store i32* %71, i32** %p, align 8
  %72 = load i32*, i32** %p, align 8
  %73 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R47 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %73, i32 0, i32 2
  %74 = load %struct.set_family*, %struct.set_family** %R47, align 8
  %count48 = getelementptr inbounds %struct.set_family, %struct.set_family* %74, i32 0, i32 3
  %75 = load i32, i32* %count48, align 4
  %76 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R49 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %76, i32 0, i32 2
  %77 = load %struct.set_family*, %struct.set_family** %R49, align 8
  %wsize50 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 0
  %78 = load i32, i32* %wsize50, align 4
  %mul51 = mul nsw i32 %75, %78
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds i32, i32* %72, i64 %idx.ext52
  store i32* %add.ptr53, i32** %last, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.83, %for.end
  %79 = load i32*, i32** %p, align 8
  %80 = load i32*, i32** %last, align 8
  %cmp55 = icmp ult i32* %79, %80
  br i1 %cmp55, label %for.body.56, label %for.end.88

for.body.56:                                      ; preds = %for.cond.54
  %81 = load i32*, i32** %temp, align 8
  %82 = load i32*, i32** %p, align 8
  %83 = load i32*, i32** %phase, align 8
  %call57 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %81, i32* %82, i32* %83)
  %84 = load i32*, i32** %outmask, align 8
  %call58 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %call57, i32* %84)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.69, label %if.then.60

if.then.60:                                       ; preds = %for.body.56
  %85 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %data61 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 5
  %86 = load i32*, i32** %data61, align 8
  %87 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %wsize62 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 0
  %88 = load i32, i32* %wsize62, align 4
  %89 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %count63 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 3
  %90 = load i32, i32* %count63, align 4
  %inc64 = add nsw i32 %90, 1
  store i32 %inc64, i32* %count63, align 4
  %mul65 = mul nsw i32 %88, %90
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i32, i32* %86, i64 %idx.ext66
  %91 = load i32*, i32** %temp, align 8
  %call68 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr67, i32* %91)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.60, %for.body.56
  %92 = load i32*, i32** %temp, align 8
  %93 = load i32*, i32** %p, align 8
  %94 = load i32*, i32** %phase12, align 8
  %call70 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %92, i32* %93, i32* %94)
  %95 = load i32*, i32** %outmask, align 8
  %call71 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %call70, i32* %95)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.82, label %if.then.73

if.then.73:                                       ; preds = %if.end.69
  %96 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %data74 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 5
  %97 = load i32*, i32** %data74, align 8
  %98 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %wsize75 = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 0
  %99 = load i32, i32* %wsize75, align 4
  %100 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %count76 = getelementptr inbounds %struct.set_family, %struct.set_family* %100, i32 0, i32 3
  %101 = load i32, i32* %count76, align 4
  %inc77 = add nsw i32 %101, 1
  store i32 %inc77, i32* %count76, align 4
  %mul78 = mul nsw i32 %99, %101
  %idx.ext79 = sext i32 %mul78 to i64
  %add.ptr80 = getelementptr inbounds i32, i32* %97, i64 %idx.ext79
  %102 = load i32*, i32** %temp, align 8
  %call81 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr80, i32* %102)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.73, %if.end.69
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %103 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R84 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %103, i32 0, i32 2
  %104 = load %struct.set_family*, %struct.set_family** %R84, align 8
  %wsize85 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 0
  %105 = load i32, i32* %wsize85, align 4
  %106 = load i32*, i32** %p, align 8
  %idx.ext86 = sext i32 %105 to i64
  %add.ptr87 = getelementptr inbounds i32, i32* %106, i64 %idx.ext86
  store i32* %add.ptr87, i32** %p, align 8
  br label %for.cond.54

for.end.88:                                       ; preds = %for.cond.54
  %107 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F89 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %107, i32 0, i32 0
  %108 = load %struct.set_family*, %struct.set_family** %F89, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %108)
  %109 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %109, i32 0, i32 2
  %110 = load %struct.set_family*, %struct.set_family** %R90, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %110)
  %111 = load %struct.set_family*, %struct.set_family** %F1, align 8
  %112 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F91 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %112, i32 0, i32 0
  store %struct.set_family* %111, %struct.set_family** %F91, align 8
  %113 = load %struct.set_family*, %struct.set_family** %R1, align 8
  %114 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %114, i32 0, i32 2
  store %struct.set_family* %113, %struct.set_family** %R92, align 8
  %115 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  ret %struct.PLA_t* %115
}

declare i32* @set_diff(...) #1

declare i32 @setp_disjoint(...) #1

; Function Attrs: nounwind uwtable
define void @opoall(%struct.PLA_t* %PLA, i32 %first_output, i32 %last_output, i32 %opo_strategy) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %first_output.addr = alloca i32, align 4
  %last_output.addr = alloca i32, align 4
  %opo_strategy.addr = alloca i32, align 4
  %F = alloca %struct.set_family*, align 8
  %D = alloca %struct.set_family*, align 8
  %R = alloca %struct.set_family*, align 8
  %best_F = alloca %struct.set_family*, align 8
  %best_D = alloca %struct.set_family*, align 8
  %best_R = alloca %struct.set_family*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ind = alloca i32, align 4
  %num = alloca i32, align 4
  %bestphase = alloca i32*, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  store i32 %first_output, i32* %first_output.addr, align 4
  store i32 %last_output, i32* %last_output.addr, align 4
  store i32 %opo_strategy, i32* %opo_strategy.addr, align 4
  %0 = load i32, i32* %opo_strategy.addr, align 4
  store i32 %0, i32* @opo_exact, align 4
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 5
  %2 = load i32*, i32** %phase, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase1 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 5
  %4 = load i32*, i32** %phase1, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase3 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 5
  %6 = load i32*, i32** %phase3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7)
  %8 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase4 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %8, i32 0, i32 5
  store i32* null, i32** %phase4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %and = and i32 %10, 1023
  %mul = mul i32 32, %and
  %cmp6 = icmp ule i32 %mul, 32
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %11 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %12, 1023
  %mul9 = mul i32 32, %and8
  %sub = sub i32 %mul9, 1
  %shr = lshr i32 %sub, 5
  %add = add i32 %shr, 1
  %add10 = add i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add10, %cond.false ]
  %conv = zext i32 %cond to i64
  %mul11 = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul11)
  %13 = bitcast i8* %call to i32*
  %14 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call12 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %13, i32* %14)
  store i32* %call12, i32** %bestphase, align 8
  %15 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %15, i32 0, i32 0
  %16 = load %struct.set_family*, %struct.set_family** %F13, align 8
  %call14 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %16)
  store %struct.set_family* %call14, %struct.set_family** %best_F, align 8
  %17 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D15 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %17, i32 0, i32 1
  %18 = load %struct.set_family*, %struct.set_family** %D15, align 8
  %call16 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %18)
  store %struct.set_family* %call16, %struct.set_family** %best_D, align 8
  %19 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R17 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %19, i32 0, i32 2
  %20 = load %struct.set_family*, %struct.set_family** %R17, align 8
  %call18 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %20)
  store %struct.set_family* %call18, %struct.set_family** %best_R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %cond.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %last_output.addr, align 4
  %23 = load i32, i32* %first_output.addr, align 4
  %sub19 = sub nsw i32 %22, %23
  %add20 = add nsw i32 %sub19, 1
  %shl = shl i32 1, %add20
  %cmp21 = icmp slt i32 %21, %shl
  br i1 %cmp21, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %24 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F23 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %24, i32 0, i32 0
  %25 = load %struct.set_family*, %struct.set_family** %F23, align 8
  %call24 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %25)
  store %struct.set_family* %call24, %struct.set_family** %F, align 8
  %26 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D25 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %26, i32 0, i32 1
  %27 = load %struct.set_family*, %struct.set_family** %D25, align 8
  %call26 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %27)
  store %struct.set_family* %call26, %struct.set_family** %D, align 8
  %28 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R27 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %28, i32 0, i32 2
  %29 = load %struct.set_family*, %struct.set_family** %R27, align 8
  %call28 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %29)
  store %struct.set_family* %call28, %struct.set_family** %R, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx29, align 4
  %and30 = and i32 %31, 1023
  %mul31 = mul i32 32, %and30
  %cmp32 = icmp ule i32 %mul31, 32
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %for.body
  br label %cond.end.43

cond.false.35:                                    ; preds = %for.body
  %32 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %32, i64 0
  %33 = load i32, i32* %arrayidx36, align 4
  %and37 = and i32 %33, 1023
  %mul38 = mul i32 32, %and37
  %sub39 = sub i32 %mul38, 1
  %shr40 = lshr i32 %sub39, 5
  %add41 = add i32 %shr40, 1
  %add42 = add i32 %add41, 1
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.35, %cond.true.34
  %cond44 = phi i32 [ 2, %cond.true.34 ], [ %add42, %cond.false.35 ]
  %conv45 = zext i32 %cond44 to i64
  %mul46 = mul i64 4, %conv45
  %call47 = call i8* @malloc(i64 %mul46)
  %34 = bitcast i8* %call47 to i32*
  %35 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %call48 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %34, i32* %35)
  %36 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase49 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 5
  store i32* %call48, i32** %phase49, align 8
  %37 = load i32, i32* %i, align 4
  store i32 %37, i32* %num, align 4
  %38 = load i32, i32* %last_output.addr, align 4
  store i32 %38, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %cond.end.43
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %first_output.addr, align 4
  %cmp51 = icmp sge i32 %39, %40
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.50
  %41 = load i32, i32* %num, align 4
  %rem = srem i32 %41, 2
  %cmp54 = icmp eq i32 %rem, 0
  br i1 %cmp54, label %if.then.56, label %if.end.67

if.then.56:                                       ; preds = %for.body.53
  %42 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom = sext i32 %42 to i64
  %43 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %43, i64 %idxprom
  %44 = load i32, i32* %arrayidx57, align 4
  %45 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %44, %45
  store i32 %add58, i32* %ind, align 4
  %46 = load i32, i32* %ind, align 4
  %and59 = and i32 %46, 31
  %shl60 = shl i32 1, %and59
  %neg = xor i32 %shl60, -1
  %47 = load i32, i32* %ind, align 4
  %shr61 = ashr i32 %47, 5
  %add62 = add nsw i32 %shr61, 1
  %idxprom63 = sext i32 %add62 to i64
  %48 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase64 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %48, i32 0, i32 5
  %49 = load i32*, i32** %phase64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %49, i64 %idxprom63
  %50 = load i32, i32* %arrayidx65, align 4
  %and66 = and i32 %50, %neg
  store i32 %and66, i32* %arrayidx65, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.56, %for.body.53
  %51 = load i32, i32* %num, align 4
  %div = sdiv i32 %51, 2
  store i32 %div, i32* %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %52 = load i32, i32* %j, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.50

for.end:                                          ; preds = %for.cond.50
  %53 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %call68 = call %struct.PLA_t* @set_phase(%struct.PLA_t* %53)
  %54 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase69 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %54, i32 0, i32 5
  %55 = load i32*, i32** %phase69, align 8
  %call70 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* %55)
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %call70)
  store i32 1, i32* @summary, align 4
  %56 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  call void @minimize(%struct.PLA_t* %56)
  %57 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F72 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %57, i32 0, i32 0
  %58 = load %struct.set_family*, %struct.set_family** %F72, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 3
  %59 = load i32, i32* %count, align 4
  %60 = load %struct.set_family*, %struct.set_family** %best_F, align 8
  %count73 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 3
  %61 = load i32, i32* %count73, align 4
  %cmp74 = icmp slt i32 %59, %61
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %for.end
  %62 = load i32*, i32** %bestphase, align 8
  %63 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase77 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %63, i32 0, i32 5
  %64 = load i32*, i32** %phase77, align 8
  %call78 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %62, i32* %64)
  %65 = load %struct.set_family*, %struct.set_family** %best_F, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %65)
  %66 = load %struct.set_family*, %struct.set_family** %best_D, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %66)
  %67 = load %struct.set_family*, %struct.set_family** %best_R, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %67)
  %68 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F79 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %68, i32 0, i32 0
  %69 = load %struct.set_family*, %struct.set_family** %F79, align 8
  store %struct.set_family* %69, %struct.set_family** %best_F, align 8
  %70 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D80 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %70, i32 0, i32 1
  %71 = load %struct.set_family*, %struct.set_family** %D80, align 8
  store %struct.set_family* %71, %struct.set_family** %best_D, align 8
  %72 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R81 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %72, i32 0, i32 2
  %73 = load %struct.set_family*, %struct.set_family** %R81, align 8
  store %struct.set_family* %73, %struct.set_family** %best_R, align 8
  br label %if.end.85

if.else:                                          ; preds = %for.end
  %74 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F82 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %74, i32 0, i32 0
  %75 = load %struct.set_family*, %struct.set_family** %F82, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %75)
  %76 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D83 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %76, i32 0, i32 1
  %77 = load %struct.set_family*, %struct.set_family** %D83, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %77)
  %78 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R84 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %78, i32 0, i32 2
  %79 = load %struct.set_family*, %struct.set_family** %R84, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %79)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.76
  %80 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase86 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %80, i32 0, i32 5
  %81 = load i32*, i32** %phase86, align 8
  %tobool87 = icmp ne i32* %81, null
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.85
  %82 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase89 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %82, i32 0, i32 5
  %83 = load i32*, i32** %phase89, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* %84)
  %85 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase90 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %85, i32 0, i32 5
  store i32* null, i32** %phase90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.end.85
  %86 = load %struct.set_family*, %struct.set_family** %F, align 8
  %87 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F92 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %87, i32 0, i32 0
  store %struct.set_family* %86, %struct.set_family** %F92, align 8
  %88 = load %struct.set_family*, %struct.set_family** %D, align 8
  %89 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D93 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %89, i32 0, i32 1
  store %struct.set_family* %88, %struct.set_family** %D93, align 8
  %90 = load %struct.set_family*, %struct.set_family** %R, align 8
  %91 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R94 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %91, i32 0, i32 2
  store %struct.set_family* %90, %struct.set_family** %R94, align 8
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.91
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %93 = load i32*, i32** %bestphase, align 8
  %94 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %phase97 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %94, i32 0, i32 5
  store i32* %93, i32** %phase97, align 8
  %95 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F98 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %95, i32 0, i32 0
  %96 = load %struct.set_family*, %struct.set_family** %F98, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %96)
  %97 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D99 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %97, i32 0, i32 1
  %98 = load %struct.set_family*, %struct.set_family** %D99, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %98)
  %99 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R100 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %99, i32 0, i32 2
  %100 = load %struct.set_family*, %struct.set_family** %R100, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %100)
  %101 = load %struct.set_family*, %struct.set_family** %best_F, align 8
  %102 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F101 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %102, i32 0, i32 0
  store %struct.set_family* %101, %struct.set_family** %F101, align 8
  %103 = load %struct.set_family*, %struct.set_family** %best_D, align 8
  %104 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D102 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %104, i32 0, i32 1
  store %struct.set_family* %103, %struct.set_family** %D102, align 8
  %105 = load %struct.set_family*, %struct.set_family** %best_R, align 8
  %106 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R103 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %106, i32 0, i32 2
  store %struct.set_family* %105, %struct.set_family** %R103, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @minimize(%struct.PLA_t* %PLA) #0 {
entry:
  %PLA.addr = alloca %struct.PLA_t*, align 8
  %t = alloca i64, align 8
  %t7 = alloca i64, align 8
  store %struct.PLA_t* %PLA, %struct.PLA_t** %PLA.addr, align 8
  %0 = load i32, i32* @opo_exact, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %t, align 8
  %1 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %1, i32 0, i32 0
  %2 = load %struct.set_family*, %struct.set_family** %F, align 8
  %3 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %3, i32 0, i32 1
  %4 = load %struct.set_family*, %struct.set_family** %D, align 8
  %5 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %5, i32 0, i32 2
  %6 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %2, %struct.set_family* %4, %struct.set_family* %6, i32 1)
  %7 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F2 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %7, i32 0, i32 0
  store %struct.set_family* %call1, %struct.set_family** %F2, align 8
  %8 = load i32, i32* @summary, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F5 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %9, i32 0, i32 0
  %10 = load %struct.set_family*, %struct.set_family** %F5, align 8
  %call6 = call i64 (...) @util_cpu_time()
  %11 = load i64, i64* %t, align 8
  %sub = sub nsw i64 %call6, %11
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i64 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.20

if.else:                                          ; preds = %entry
  %call8 = call i64 (...) @util_cpu_time()
  store i64 %call8, i64* %t7, align 8
  %12 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F9 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %12, i32 0, i32 0
  %13 = load %struct.set_family*, %struct.set_family** %F9, align 8
  %14 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %D10 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %14, i32 0, i32 1
  %15 = load %struct.set_family*, %struct.set_family** %D10, align 8
  %16 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %R11 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %16, i32 0, i32 2
  %17 = load %struct.set_family*, %struct.set_family** %R11, align 8
  %call12 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %13, %struct.set_family* %15, %struct.set_family* %17)
  %18 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F13 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %18, i32 0, i32 0
  store %struct.set_family* %call12, %struct.set_family** %F13, align 8
  %19 = load i32, i32* @summary, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.else
  %20 = load %struct.PLA_t*, %struct.PLA_t** %PLA.addr, align 8
  %F16 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %20, i32 0, i32 0
  %21 = load %struct.set_family*, %struct.set_family** %F16, align 8
  %call17 = call i64 (...) @util_cpu_time()
  %22 = load i64, i64* %t7, align 8
  %sub18 = sub nsw i64 %call17, %22
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i64 %sub18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  ret void
}

declare %struct.set_family* @minimize_exact(...) #1

declare %struct.set_family* @espresso(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
