; ModuleID = './MultiSource.Benchmarks.Prolangs-C/267.bison.lalr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }
%struct.shorts = type { %struct.shorts*, i16 }

@ntokens = external global i32, align 4
@tokensetsize = common global i32 0, align 4
@nstates = external global i32, align 4
@state_table = common global %struct.core** null, align 8
@first_state = external global %struct.core*, align 8
@accessing_symbol = common global i16* null, align 8
@shift_table = common global %struct.shifts** null, align 8
@first_shift = external global %struct.shifts*, align 8
@reduction_table = common global %struct.reductions** null, align 8
@first_reduction = external global %struct.reductions*, align 8
@ritem = external global i16*, align 8
@maxrhs = internal global i32 0, align 4
@consistent = common global i8* null, align 8
@lookaheads = common global i16* null, align 8
@error_token_number = external global i32, align 4
@LA = common global i32* null, align 8
@LAruleno = common global i16* null, align 8
@lookback = internal global %struct.shorts** null, align 8
@nvars = external global i32, align 4
@goto_map = common global i16* null, align 8
@ngotos = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gotos\00", align 1
@nsyms = external global i32, align 4
@from_state = common global i16* null, align 8
@to_state = common global i16* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"map_goto\00", align 1
@F = internal global i32* null, align 8
@nullable = external global i8*, align 8
@includes = internal global i16** null, align 8
@derives = external global i16**, align 8
@rrhs = external global i16*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"add_lookback_edge\00", align 1
@infinity = internal global i32 0, align 4
@INDEX = internal global i16* null, align 8
@VERTICES = internal global i16* null, align 8
@top = internal global i32 0, align 4
@R = internal global i16** null, align 8

; Function Attrs: nounwind uwtable
define void @lalr() #0 {
entry:
  %0 = load i32, i32* @ntokens, align 4
  %add = add nsw i32 %0, 31
  %div = sdiv i32 %add, 32
  store i32 %div, i32* @tokensetsize, align 4
  call void @set_state_table()
  call void @set_accessing_symbol()
  call void @set_shift_table()
  call void @set_reduction_table()
  call void @set_maxrhs()
  call void @initialize_LA()
  call void @set_goto_map()
  call void @initialize_F()
  call void @build_relations()
  call void @compute_FOLLOWS()
  call void @compute_lookaheads()
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_state_table() #0 {
entry:
  %sp = alloca %struct.core*, align 8
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to %struct.core**
  store %struct.core** %1, %struct.core*** @state_table, align 8
  %2 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %2, %struct.core** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.core*, %struct.core** %sp, align 8
  %tobool = icmp ne %struct.core* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.core*, %struct.core** %sp, align 8
  %5 = load %struct.core*, %struct.core** %sp, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %5, i32 0, i32 2
  %6 = load i16, i16* %number, align 2
  %idxprom = sext i16 %6 to i64
  %7 = load %struct.core**, %struct.core*** @state_table, align 8
  %arrayidx = getelementptr inbounds %struct.core*, %struct.core** %7, i64 %idxprom
  store %struct.core* %4, %struct.core** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.core*, %struct.core** %sp, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %8, i32 0, i32 0
  %9 = load %struct.core*, %struct.core** %next, align 8
  store %struct.core* %9, %struct.core** %sp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_accessing_symbol() #0 {
entry:
  %sp = alloca %struct.core*, align 8
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @accessing_symbol, align 8
  %2 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %2, %struct.core** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.core*, %struct.core** %sp, align 8
  %tobool = icmp ne %struct.core* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.core*, %struct.core** %sp, align 8
  %accessing_symbol = getelementptr inbounds %struct.core, %struct.core* %4, i32 0, i32 3
  %5 = load i16, i16* %accessing_symbol, align 2
  %6 = load %struct.core*, %struct.core** %sp, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 2
  %7 = load i16, i16* %number, align 2
  %idxprom = sext i16 %7 to i64
  %8 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  store i16 %5, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.core*, %struct.core** %sp, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %9, i32 0, i32 0
  %10 = load %struct.core*, %struct.core** %next, align 8
  store %struct.core* %10, %struct.core** %sp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_shift_table() #0 {
entry:
  %sp = alloca %struct.shifts*, align 8
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to %struct.shifts**
  store %struct.shifts** %1, %struct.shifts*** @shift_table, align 8
  %2 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %2, %struct.shifts** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool = icmp ne %struct.shifts* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %5 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number = getelementptr inbounds %struct.shifts, %struct.shifts* %5, i32 0, i32 1
  %6 = load i16, i16* %number, align 2
  %idxprom = sext i16 %6 to i64
  %7 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx = getelementptr inbounds %struct.shifts*, %struct.shifts** %7, i64 %idxprom
  store %struct.shifts* %4, %struct.shifts** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next = getelementptr inbounds %struct.shifts, %struct.shifts* %8, i32 0, i32 0
  %9 = load %struct.shifts*, %struct.shifts** %next, align 8
  store %struct.shifts* %9, %struct.shifts** %sp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_reduction_table() #0 {
entry:
  %rp = alloca %struct.reductions*, align 8
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to %struct.reductions**
  store %struct.reductions** %1, %struct.reductions*** @reduction_table, align 8
  %2 = load %struct.reductions*, %struct.reductions** @first_reduction, align 8
  store %struct.reductions* %2, %struct.reductions** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %tobool = icmp ne %struct.reductions* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %5 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %number = getelementptr inbounds %struct.reductions, %struct.reductions* %5, i32 0, i32 1
  %6 = load i16, i16* %number, align 2
  %idxprom = sext i16 %6 to i64
  %7 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %arrayidx = getelementptr inbounds %struct.reductions*, %struct.reductions** %7, i64 %idxprom
  store %struct.reductions* %4, %struct.reductions** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %next = getelementptr inbounds %struct.reductions, %struct.reductions* %8, i32 0, i32 0
  %9 = load %struct.reductions*, %struct.reductions** %next, align 8
  store %struct.reductions* %9, %struct.reductions** %rp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_maxrhs() #0 {
entry:
  %itemp = alloca i16*, align 8
  %length = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, i32* %length, align 4
  store i32 0, i32* %max, align 4
  %0 = load i16*, i16** @ritem, align 8
  store i16* %0, i16** %itemp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16*, i16** %itemp, align 8
  %2 = load i16, i16* %1, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %itemp, align 8
  %4 = load i16, i16* %3, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %length, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %length, align 4
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %length, align 4
  %7 = load i32, i32* %max, align 4
  %cmp2 = icmp sgt i32 %6, %7
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load i32, i32* %length, align 4
  store i32 %8, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  store i32 0, i32* %length, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %9 = load i16*, i16** %itemp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %itemp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %max, align 4
  store i32 %10, i32* @maxrhs, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_LA() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %rp = alloca %struct.reductions*, align 8
  %sp = alloca %struct.shifts*, align 8
  %np = alloca i16*, align 8
  %j7 = alloca i32, align 4
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  store i8* %call, i8** @consistent, align 8
  %1 = load i32, i32* @nstates, align 4
  %add = add nsw i32 %1, 1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %2 = bitcast i8* %call5 to i16*
  store i16* %2, i16** @lookaheads, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %count, align 4
  %conv8 = trunc i32 %5 to i16
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** @lookaheads, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  store i16 %conv8, i16* %arrayidx, align 2
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %arrayidx10 = getelementptr inbounds %struct.reductions*, %struct.reductions** %9, i64 %idxprom9
  %10 = load %struct.reductions*, %struct.reductions** %arrayidx10, align 8
  store %struct.reductions* %10, %struct.reductions** %rp, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx12 = getelementptr inbounds %struct.shifts*, %struct.shifts** %12, i64 %idxprom11
  %13 = load %struct.shifts*, %struct.shifts** %arrayidx12, align 8
  store %struct.shifts* %13, %struct.shifts** %sp, align 8
  %14 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %tobool = icmp ne %struct.reductions* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %nreds = getelementptr inbounds %struct.reductions, %struct.reductions* %15, i32 0, i32 2
  %16 = load i16, i16* %nreds, align 2
  %conv13 = sext i16 %16 to i32
  %cmp14 = icmp sgt i32 %conv13, 1
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool16 = icmp ne %struct.shifts* %17, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %18 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %18, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 0
  %19 = load i16, i16* %arrayidx18, align 2
  %idxprom19 = sext i16 %19 to i64
  %20 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %20, i64 %idxprom19
  %21 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %21 to i32
  %22 = load i32, i32* @ntokens, align 4
  %cmp22 = icmp sge i32 %conv21, %22
  br i1 %cmp22, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.17, %land.lhs.true
  %23 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %nreds24 = getelementptr inbounds %struct.reductions, %struct.reductions* %23, i32 0, i32 2
  %24 = load i16, i16* %nreds24, align 2
  %conv25 = sext i16 %24 to i32
  %25 = load i32, i32* %count, align 4
  %add26 = add nsw i32 %25, %conv25
  store i32 %add26, i32* %count, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.17, %lor.lhs.false, %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i8*, i8** @consistent, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 1, i8* %arrayidx28, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool29 = icmp ne %struct.shifts* %28, null
  br i1 %tobool29, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %if.end
  store i32 0, i32* %j7, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.30
  %29 = load i32, i32* %j7, align 4
  %30 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %30, i32 0, i32 2
  %31 = load i16, i16* %nshifts, align 2
  %conv32 = sext i16 %31 to i32
  %cmp33 = icmp slt i32 %29, %conv32
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.31
  %32 = load i32, i32* %j7, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts37 = getelementptr inbounds %struct.shifts, %struct.shifts* %33, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts37, i32 0, i64 %idxprom36
  %34 = load i16, i16* %arrayidx38, align 2
  %idxprom39 = sext i16 %34 to i64
  %35 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %35, i64 %idxprom39
  %36 = load i16, i16* %arrayidx40, align 2
  %conv41 = sext i16 %36 to i32
  %37 = load i32, i32* @error_token_number, align 4
  %cmp42 = icmp eq i32 %conv41, %37
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %for.body.35
  %38 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load i8*, i8** @consistent, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %39, i64 %idxprom45
  store i8 0, i8* %arrayidx46, align 1
  br label %for.end

if.end.47:                                        ; preds = %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %40 = load i32, i32* %j7, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j7, align 4
  br label %for.cond.31

for.end:                                          ; preds = %if.then.44, %for.cond.31
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.end
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %42 = load i32, i32* %count, align 4
  %conv52 = trunc i32 %42 to i16
  %43 = load i32, i32* @nstates, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load i16*, i16** @lookaheads, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %44, i64 %idxprom53
  store i16 %conv52, i16* %arrayidx54, align 2
  %45 = load i32, i32* %count, align 4
  %46 = load i32, i32* @tokensetsize, align 4
  %mul55 = mul nsw i32 %45, %46
  %conv56 = sext i32 %mul55 to i64
  %mul57 = mul i64 %conv56, 4
  %conv58 = trunc i64 %mul57 to i32
  %call59 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv58)
  %47 = bitcast i8* %call59 to i32*
  store i32* %47, i32** @LA, align 8
  %48 = load i32, i32* %count, align 4
  %conv60 = sext i32 %48 to i64
  %mul61 = mul i64 %conv60, 2
  %conv62 = trunc i64 %mul61 to i32
  %call63 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv62)
  %49 = bitcast i8* %call63 to i16*
  store i16* %49, i16** @LAruleno, align 8
  %50 = load i32, i32* %count, align 4
  %conv64 = sext i32 %50 to i64
  %mul65 = mul i64 %conv64, 8
  %conv66 = trunc i64 %mul65 to i32
  %call67 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv66)
  %51 = bitcast i8* %call67 to %struct.shorts**
  store %struct.shorts** %51, %struct.shorts*** @lookback, align 8
  %52 = load i16*, i16** @LAruleno, align 8
  store i16* %52, i16** %np, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.93, %for.end.51
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* @nstates, align 4
  %cmp69 = icmp slt i32 %53, %54
  br i1 %cmp69, label %for.body.71, label %for.end.95

for.body.71:                                      ; preds = %for.cond.68
  %55 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %55 to i64
  %56 = load i8*, i8** @consistent, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %56, i64 %idxprom72
  %57 = load i8, i8* %arrayidx73, align 1
  %tobool74 = icmp ne i8 %57, 0
  br i1 %tobool74, label %if.end.92, label %if.then.75

if.then.75:                                       ; preds = %for.body.71
  %58 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %58 to i64
  %59 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %arrayidx77 = getelementptr inbounds %struct.reductions*, %struct.reductions** %59, i64 %idxprom76
  %60 = load %struct.reductions*, %struct.reductions** %arrayidx77, align 8
  store %struct.reductions* %60, %struct.reductions** %rp, align 8
  %tobool78 = icmp ne %struct.reductions* %60, null
  br i1 %tobool78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %if.then.75
  store i32 0, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.88, %if.then.79
  %61 = load i32, i32* %j, align 4
  %62 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %nreds81 = getelementptr inbounds %struct.reductions, %struct.reductions* %62, i32 0, i32 2
  %63 = load i16, i16* %nreds81, align 2
  %conv82 = sext i16 %63 to i32
  %cmp83 = icmp slt i32 %61, %conv82
  br i1 %cmp83, label %for.body.85, label %for.end.90

for.body.85:                                      ; preds = %for.cond.80
  %64 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %64 to i64
  %65 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %rules = getelementptr inbounds %struct.reductions, %struct.reductions* %65, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [1 x i16], [1 x i16]* %rules, i32 0, i64 %idxprom86
  %66 = load i16, i16* %arrayidx87, align 2
  %67 = load i16*, i16** %np, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %67, i32 1
  store i16* %incdec.ptr, i16** %np, align 8
  store i16 %66, i16* %67, align 2
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.85
  %68 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %68, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.80

for.end.90:                                       ; preds = %for.cond.80
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.then.75
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.body.71
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %69 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %69, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.68

for.end.95:                                       ; preds = %for.cond.68
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_goto_map() #0 {
entry:
  %sp = alloca %struct.shifts*, align 8
  %i = alloca i32, align 4
  %symbol = alloca i32, align 4
  %k = alloca i32, align 4
  %temp_map = alloca i16*, align 8
  %state2 = alloca i32, align 4
  %state1 = alloca i32, align 4
  %0 = load i32, i32* @nvars, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  %2 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, i16* %1, i64 %idx.neg
  store i16* %add.ptr, i16** @goto_map, align 8
  %3 = load i32, i32* @nvars, align 4
  %add2 = add nsw i32 %3, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 2
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv5)
  %4 = bitcast i8* %call6 to i16*
  %5 = load i32, i32* @ntokens, align 4
  %idx.ext7 = sext i32 %5 to i64
  %idx.neg8 = sub i64 0, %idx.ext7
  %add.ptr9 = getelementptr inbounds i16, i16* %4, i64 %idx.neg8
  store i16* %add.ptr9, i16** %temp_map, align 8
  store i32 0, i32* @ngotos, align 4
  %6 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %6, %struct.shifts** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %7 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool = icmp ne %struct.shifts* %7, null
  br i1 %tobool, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %8 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %8, i32 0, i32 2
  %9 = load i16, i16* %nshifts, align 2
  %conv10 = sext i16 %9 to i32
  %sub = sub nsw i32 %conv10, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %12, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %idxprom14 = sext i16 %13 to i64
  %14 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %14, i64 %idxprom14
  %15 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %15 to i32
  store i32 %conv16, i32* %symbol, align 4
  %16 = load i32, i32* %symbol, align 4
  %17 = load i32, i32* @ntokens, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  br label %for.end

if.end:                                           ; preds = %for.body.13
  %18 = load i32, i32* @ngotos, align 4
  %cmp19 = icmp eq i32 %18, 32767
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  call void @toomany(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
  %19 = load i32, i32* @ngotos, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @ngotos, align 4
  %20 = load i32, i32* %symbol, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i16*, i16** @goto_map, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %21, i64 %idxprom23
  %22 = load i16, i16* %arrayidx24, align 2
  %inc25 = add i16 %22, 1
  store i16 %inc25, i16* %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then, %for.cond.11
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %24 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next = getelementptr inbounds %struct.shifts, %struct.shifts* %24, i32 0, i32 0
  %25 = load %struct.shifts*, %struct.shifts** %next, align 8
  store %struct.shifts* %25, %struct.shifts** %sp, align 8
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  store i32 0, i32* %k, align 4
  %26 = load i32, i32* @ntokens, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.39, %for.end.27
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* @nsyms, align 4
  %cmp29 = icmp slt i32 %27, %28
  br i1 %cmp29, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.28
  %29 = load i32, i32* %k, align 4
  %conv32 = trunc i32 %29 to i16
  %30 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %30 to i64
  %31 = load i16*, i16** %temp_map, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %31, i64 %idxprom33
  store i16 %conv32, i16* %arrayidx34, align 2
  %32 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load i16*, i16** @goto_map, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %33, i64 %idxprom35
  %34 = load i16, i16* %arrayidx36, align 2
  %conv37 = sext i16 %34 to i32
  %35 = load i32, i32* %k, align 4
  %add38 = add nsw i32 %35, %conv37
  store i32 %add38, i32* %k, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.31
  %36 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.28

for.end.41:                                       ; preds = %for.cond.28
  %37 = load i32, i32* @ntokens, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.end.41
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* @nsyms, align 4
  %cmp43 = icmp slt i32 %38, %39
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %40 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %40 to i64
  %41 = load i16*, i16** %temp_map, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %41, i64 %idxprom46
  %42 = load i16, i16* %arrayidx47, align 2
  %43 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load i16*, i16** @goto_map, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %44, i64 %idxprom48
  store i16 %42, i16* %arrayidx49, align 2
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %45 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %46 = load i32, i32* @ngotos, align 4
  %conv53 = trunc i32 %46 to i16
  %47 = load i32, i32* @nsyms, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load i16*, i16** @goto_map, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %48, i64 %idxprom54
  store i16 %conv53, i16* %arrayidx55, align 2
  %49 = load i32, i32* @ngotos, align 4
  %conv56 = trunc i32 %49 to i16
  %50 = load i32, i32* @nsyms, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load i16*, i16** %temp_map, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %51, i64 %idxprom57
  store i16 %conv56, i16* %arrayidx58, align 2
  %52 = load i32, i32* @ngotos, align 4
  %conv59 = sext i32 %52 to i64
  %mul60 = mul i64 %conv59, 2
  %conv61 = trunc i64 %mul60 to i32
  %call62 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv61)
  %53 = bitcast i8* %call62 to i16*
  store i16* %53, i16** @from_state, align 8
  %54 = load i32, i32* @ngotos, align 4
  %conv63 = sext i32 %54 to i64
  %mul64 = mul i64 %conv63, 2
  %conv65 = trunc i64 %mul64 to i32
  %call66 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv65)
  %55 = bitcast i8* %call66 to i16*
  store i16* %55, i16** @to_state, align 8
  %56 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %56, %struct.shifts** %sp, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.102, %for.end.52
  %57 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool68 = icmp ne %struct.shifts* %57, null
  br i1 %tobool68, label %for.body.69, label %for.end.104

for.body.69:                                      ; preds = %for.cond.67
  %58 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number = getelementptr inbounds %struct.shifts, %struct.shifts* %58, i32 0, i32 1
  %59 = load i16, i16* %number, align 2
  %conv70 = sext i16 %59 to i32
  store i32 %conv70, i32* %state1, align 4
  %60 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts71 = getelementptr inbounds %struct.shifts, %struct.shifts* %60, i32 0, i32 2
  %61 = load i16, i16* %nshifts71, align 2
  %conv72 = sext i16 %61 to i32
  %sub73 = sub nsw i32 %conv72, 1
  store i32 %sub73, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.99, %for.body.69
  %62 = load i32, i32* %i, align 4
  %cmp75 = icmp sge i32 %62, 0
  br i1 %cmp75, label %for.body.77, label %for.end.101

for.body.77:                                      ; preds = %for.cond.74
  %63 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %63 to i64
  %64 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts79 = getelementptr inbounds %struct.shifts, %struct.shifts* %64, i32 0, i32 3
  %arrayidx80 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts79, i32 0, i64 %idxprom78
  %65 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %65 to i32
  store i32 %conv81, i32* %state2, align 4
  %66 = load i32, i32* %state2, align 4
  %idxprom82 = sext i32 %66 to i64
  %67 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %67, i64 %idxprom82
  %68 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %68 to i32
  store i32 %conv84, i32* %symbol, align 4
  %69 = load i32, i32* %symbol, align 4
  %70 = load i32, i32* @ntokens, align 4
  %cmp85 = icmp slt i32 %69, %70
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.77
  br label %for.end.101

if.end.88:                                        ; preds = %for.body.77
  %71 = load i32, i32* %symbol, align 4
  %idxprom89 = sext i32 %71 to i64
  %72 = load i16*, i16** %temp_map, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %72, i64 %idxprom89
  %73 = load i16, i16* %arrayidx90, align 2
  %inc91 = add i16 %73, 1
  store i16 %inc91, i16* %arrayidx90, align 2
  %conv92 = sext i16 %73 to i32
  store i32 %conv92, i32* %k, align 4
  %74 = load i32, i32* %state1, align 4
  %conv93 = trunc i32 %74 to i16
  %75 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %75 to i64
  %76 = load i16*, i16** @from_state, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %76, i64 %idxprom94
  store i16 %conv93, i16* %arrayidx95, align 2
  %77 = load i32, i32* %state2, align 4
  %conv96 = trunc i32 %77 to i16
  %78 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %78 to i64
  %79 = load i16*, i16** @to_state, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %79, i64 %idxprom97
  store i16 %conv96, i16* %arrayidx98, align 2
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.88
  %80 = load i32, i32* %i, align 4
  %dec100 = add nsw i32 %80, -1
  store i32 %dec100, i32* %i, align 4
  br label %for.cond.74

for.end.101:                                      ; preds = %if.then.87, %for.cond.74
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %81 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next103 = getelementptr inbounds %struct.shifts, %struct.shifts* %81, i32 0, i32 0
  %82 = load %struct.shifts*, %struct.shifts** %next103, align 8
  store %struct.shifts* %82, %struct.shifts** %sp, align 8
  br label %for.cond.67

for.end.104:                                      ; preds = %for.cond.67
  %83 = load i16*, i16** %temp_map, align 8
  %84 = load i32, i32* @ntokens, align 4
  %idx.ext105 = sext i32 %84 to i64
  %add.ptr106 = getelementptr inbounds i16, i16* %83, i64 %idx.ext105
  %tobool107 = icmp ne i16* %add.ptr106, null
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %for.end.104
  %85 = load i16*, i16** %temp_map, align 8
  %86 = load i32, i32* @ntokens, align 4
  %idx.ext109 = sext i32 %86 to i64
  %add.ptr110 = getelementptr inbounds i16, i16* %85, i64 %idx.ext109
  %87 = bitcast i16* %add.ptr110 to i8*
  call void @free(i8* %87) #3
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %for.end.104
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_F() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sp = alloca %struct.shifts*, align 8
  %edge = alloca i16*, align 8
  %rowp = alloca i32*, align 8
  %rp = alloca i16*, align 8
  %reads = alloca i16**, align 8
  %nedges = alloca i32, align 4
  %stateno = alloca i32, align 4
  %symbol = alloca i32, align 4
  %nwords = alloca i32, align 4
  %0 = load i32, i32* @ngotos, align 4
  %1 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %nwords, align 4
  %2 = load i32, i32* %nwords, align 4
  %conv = sext i32 %2 to i64
  %mul1 = mul i64 %conv, 4
  %conv2 = trunc i64 %mul1 to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv2)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @F, align 8
  %4 = load i32, i32* @ngotos, align 4
  %conv3 = sext i32 %4 to i64
  %mul4 = mul i64 %conv3, 8
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv5)
  %5 = bitcast i8* %call6 to i16**
  store i16** %5, i16*** %reads, align 8
  %6 = load i32, i32* @ngotos, align 4
  %add = add nsw i32 %6, 1
  %conv7 = sext i32 %add to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv9)
  %7 = bitcast i8* %call10 to i16*
  store i16* %7, i16** %edge, align 8
  store i32 0, i32* %nedges, align 4
  %8 = load i32*, i32** @F, align 8
  store i32* %8, i32** %rowp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @ngotos, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i16*, i16** @to_state, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv12 = sext i16 %13 to i32
  store i32 %conv12, i32* %stateno, align 4
  %14 = load i32, i32* %stateno, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx14 = getelementptr inbounds %struct.shifts*, %struct.shifts** %15, i64 %idxprom13
  %16 = load %struct.shifts*, %struct.shifts** %arrayidx14, align 8
  store %struct.shifts* %16, %struct.shifts** %sp, align 8
  %17 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool = icmp ne %struct.shifts* %17, null
  br i1 %tobool, label %if.then, label %if.end.76

if.then:                                          ; preds = %for.body
  %18 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %18, i32 0, i32 2
  %19 = load i16, i16* %nshifts, align 2
  %conv15 = sext i16 %19 to i32
  store i32 %conv15, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %23, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom20
  %24 = load i16, i16* %arrayidx21, align 2
  %idxprom22 = sext i16 %24 to i64
  %25 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %25, i64 %idxprom22
  %26 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %26 to i32
  store i32 %conv24, i32* %symbol, align 4
  %27 = load i32, i32* %symbol, align 4
  %28 = load i32, i32* @ntokens, align 4
  %cmp25 = icmp sge i32 %27, %28
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body.19
  br label %for.end

if.end:                                           ; preds = %for.body.19
  %29 = load i32, i32* %symbol, align 4
  %and = and i32 %29, 31
  %shl = shl i32 1, %and
  %30 = load i32, i32* %symbol, align 4
  %shr = ashr i32 %30, 5
  %idxprom28 = sext i32 %shr to i64
  %31 = load i32*, i32** %rowp, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  %or = or i32 %32, %shl
  store i32 %or, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %if.then.27, %for.cond.16
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.50, %for.end
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body.33, label %for.end.52

for.body.33:                                      ; preds = %for.cond.30
  %36 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts35 = getelementptr inbounds %struct.shifts, %struct.shifts* %37, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts35, i32 0, i64 %idxprom34
  %38 = load i16, i16* %arrayidx36, align 2
  %idxprom37 = sext i16 %38 to i64
  %39 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %39, i64 %idxprom37
  %40 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %40 to i32
  store i32 %conv39, i32* %symbol, align 4
  %41 = load i32, i32* %symbol, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i8*, i8** @nullable, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %42, i64 %idxprom40
  %43 = load i8, i8* %arrayidx41, align 1
  %tobool42 = icmp ne i8 %43, 0
  br i1 %tobool42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %for.body.33
  %44 = load i32, i32* %stateno, align 4
  %45 = load i32, i32* %symbol, align 4
  %call44 = call i32 @map_goto(i32 %44, i32 %45)
  %conv45 = trunc i32 %call44 to i16
  %46 = load i32, i32* %nedges, align 4
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, i32* %nedges, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load i16*, i16** %edge, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %47, i64 %idxprom47
  store i16 %conv45, i16* %arrayidx48, align 2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %for.body.33
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %48 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.30

for.end.52:                                       ; preds = %for.cond.30
  %49 = load i32, i32* %nedges, align 4
  %tobool53 = icmp ne i32 %49, 0
  br i1 %tobool53, label %if.then.54, label %if.end.75

if.then.54:                                       ; preds = %for.end.52
  %50 = load i32, i32* %nedges, align 4
  %add55 = add nsw i32 %50, 1
  %conv56 = sext i32 %add55 to i64
  %mul57 = mul i64 %conv56, 2
  %conv58 = trunc i64 %mul57 to i32
  %call59 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv58)
  %51 = bitcast i8* %call59 to i16*
  store i16* %51, i16** %rp, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %52 to i64
  %53 = load i16**, i16*** %reads, align 8
  %arrayidx61 = getelementptr inbounds i16*, i16** %53, i64 %idxprom60
  store i16* %51, i16** %arrayidx61, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %if.then.54
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %nedges, align 4
  %cmp63 = icmp slt i32 %54, %55
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %56 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load i16*, i16** %edge, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %57, i64 %idxprom66
  %58 = load i16, i16* %arrayidx67, align 2
  %59 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %59 to i64
  %60 = load i16*, i16** %rp, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %60, i64 %idxprom68
  store i16 %58, i16* %arrayidx69, align 2
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %61 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %61, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  %62 = load i32, i32* %nedges, align 4
  %idxprom73 = sext i32 %62 to i64
  %63 = load i16*, i16** %rp, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %63, i64 %idxprom73
  store i16 -1, i16* %arrayidx74, align 2
  store i32 0, i32* %nedges, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.72, %for.end.52
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %for.body
  %64 = load i32, i32* @tokensetsize, align 4
  %65 = load i32*, i32** %rowp, align 8
  %idx.ext = sext i32 %64 to i64
  %add.ptr = getelementptr inbounds i32, i32* %65, i64 %idx.ext
  store i32* %add.ptr, i32** %rowp, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %66 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %66, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %67 = load i16**, i16*** %reads, align 8
  call void @digraph(i16** %67)
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.96, %for.end.79
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* @ngotos, align 4
  %cmp81 = icmp slt i32 %68, %69
  br i1 %cmp81, label %for.body.83, label %for.end.98

for.body.83:                                      ; preds = %for.cond.80
  %70 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %70 to i64
  %71 = load i16**, i16*** %reads, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %71, i64 %idxprom84
  %72 = load i16*, i16** %arrayidx85, align 8
  %tobool86 = icmp ne i16* %72, null
  br i1 %tobool86, label %if.then.87, label %if.end.95

if.then.87:                                       ; preds = %for.body.83
  %73 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load i16**, i16*** %reads, align 8
  %arrayidx89 = getelementptr inbounds i16*, i16** %74, i64 %idxprom88
  %75 = load i16*, i16** %arrayidx89, align 8
  %tobool90 = icmp ne i16* %75, null
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.then.87
  %76 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %76 to i64
  %77 = load i16**, i16*** %reads, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %77, i64 %idxprom92
  %78 = load i16*, i16** %arrayidx93, align 8
  %79 = bitcast i16* %78 to i8*
  call void @free(i8* %79) #3
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.then.87
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.body.83
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %80 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %80, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.80

for.end.98:                                       ; preds = %for.cond.80
  %81 = load i16**, i16*** %reads, align 8
  %tobool99 = icmp ne i16** %81, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.end.98
  %82 = load i16**, i16*** %reads, align 8
  %83 = bitcast i16** %82 to i8*
  call void @free(i8* %83) #3
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %for.end.98
  %84 = load i16*, i16** %edge, align 8
  %tobool102 = icmp ne i16* %84, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.101
  %85 = load i16*, i16** %edge, align 8
  %86 = bitcast i16* %85 to i8*
  call void @free(i8* %86) #3
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.101
  ret void
}

; Function Attrs: nounwind uwtable
define void @build_relations() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %rulep = alloca i16*, align 8
  %rp = alloca i16*, align 8
  %sp = alloca %struct.shifts*, align 8
  %length = alloca i32, align 4
  %nedges = alloca i32, align 4
  %done = alloca i32, align 4
  %state1 = alloca i32, align 4
  %stateno = alloca i32, align 4
  %symbol1 = alloca i32, align 4
  %symbol2 = alloca i32, align 4
  %shortp = alloca i16*, align 8
  %edge = alloca i16*, align 8
  %states = alloca i16*, align 8
  %new_includes = alloca i16**, align 8
  %0 = load i32, i32* @ngotos, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16**
  store i16** %1, i16*** @includes, align 8
  %2 = load i32, i32* @ngotos, align 4
  %add = add nsw i32 %2, 1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %3 = bitcast i8* %call5 to i16*
  store i16* %3, i16** %edge, align 8
  %4 = load i32, i32* @maxrhs, align 4
  %add6 = add nsw i32 %4, 1
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv9)
  %5 = bitcast i8* %call10 to i16*
  store i16* %5, i16** %states, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @ngotos, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %nedges, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @from_state, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv12 = sext i16 %10 to i32
  store i32 %conv12, i32* %state1, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load i16*, i16** @to_state, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %12, i64 %idxprom13
  %13 = load i16, i16* %arrayidx14, align 2
  %idxprom15 = sext i16 %13 to i64
  %14 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom15
  %15 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %15 to i32
  store i32 %conv17, i32* %symbol1, align 4
  %16 = load i32, i32* %symbol1, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i16**, i16*** @derives, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %17, i64 %idxprom18
  %18 = load i16*, i16** %arrayidx19, align 8
  store i16* %18, i16** %rulep, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.86, %for.body
  %19 = load i16*, i16** %rulep, align 8
  %20 = load i16, i16* %19, align 2
  %conv21 = sext i16 %20 to i32
  %cmp22 = icmp sgt i32 %conv21, 0
  br i1 %cmp22, label %for.body.24, label %for.end.88

for.body.24:                                      ; preds = %for.cond.20
  store i32 1, i32* %length, align 4
  %21 = load i32, i32* %state1, align 4
  %conv25 = trunc i32 %21 to i16
  %22 = load i16*, i16** %states, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %conv25, i16* %arrayidx26, align 2
  %23 = load i32, i32* %state1, align 4
  store i32 %23, i32* %stateno, align 4
  %24 = load i16*, i16** @ritem, align 8
  %25 = load i16*, i16** %rulep, align 8
  %26 = load i16, i16* %25, align 2
  %idxprom27 = sext i16 %26 to i64
  %27 = load i16*, i16** @rrhs, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %27, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  %idx.ext = sext i32 %conv29 to i64
  %add.ptr = getelementptr inbounds i16, i16* %24, i64 %idx.ext
  store i16* %add.ptr, i16** %rp, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.55, %for.body.24
  %29 = load i16*, i16** %rp, align 8
  %30 = load i16, i16* %29, align 2
  %conv31 = sext i16 %30 to i32
  %cmp32 = icmp sgt i32 %conv31, 0
  br i1 %cmp32, label %for.body.34, label %for.end.56

for.body.34:                                      ; preds = %for.cond.30
  %31 = load i16*, i16** %rp, align 8
  %32 = load i16, i16* %31, align 2
  %conv35 = sext i16 %32 to i32
  store i32 %conv35, i32* %symbol2, align 4
  %33 = load i32, i32* %stateno, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx37 = getelementptr inbounds %struct.shifts*, %struct.shifts** %34, i64 %idxprom36
  %35 = load %struct.shifts*, %struct.shifts** %arrayidx37, align 8
  store %struct.shifts* %35, %struct.shifts** %sp, align 8
  %36 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %36, i32 0, i32 2
  %37 = load i16, i16* %nshifts, align 2
  %conv38 = sext i16 %37 to i32
  store i32 %conv38, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body.34
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %40 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %41, i32 0, i32 3
  %arrayidx44 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom43
  %42 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %42 to i32
  store i32 %conv45, i32* %stateno, align 4
  %43 = load i32, i32* %stateno, align 4
  %idxprom46 = sext i32 %43 to i64
  %44 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %44, i64 %idxprom46
  %45 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %45 to i32
  %46 = load i32, i32* %symbol2, align 4
  %cmp49 = icmp eq i32 %conv48, %46
  br i1 %cmp49, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.42
  br label %for.end

if.end:                                           ; preds = %for.body.42
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.39

for.end:                                          ; preds = %if.then, %for.cond.39
  %48 = load i32, i32* %stateno, align 4
  %conv51 = trunc i32 %48 to i16
  %49 = load i32, i32* %length, align 4
  %inc52 = add nsw i32 %49, 1
  store i32 %inc52, i32* %length, align 4
  %idxprom53 = sext i32 %49 to i64
  %50 = load i16*, i16** %states, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %50, i64 %idxprom53
  store i16 %conv51, i16* %arrayidx54, align 2
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %51 = load i16*, i16** %rp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8
  br label %for.cond.30

for.end.56:                                       ; preds = %for.cond.30
  %52 = load i32, i32* %stateno, align 4
  %idxprom57 = sext i32 %52 to i64
  %53 = load i8*, i8** @consistent, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %53, i64 %idxprom57
  %54 = load i8, i8* %arrayidx58, align 1
  %tobool = icmp ne i8 %54, 0
  br i1 %tobool, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %for.end.56
  %55 = load i32, i32* %stateno, align 4
  %56 = load i16*, i16** %rulep, align 8
  %57 = load i16, i16* %56, align 2
  %conv60 = sext i16 %57 to i32
  %58 = load i32, i32* %i, align 4
  call void @add_lookback_edge(i32 %55, i32 %conv60, i32 %58)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end.56
  %59 = load i32, i32* %length, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %length, align 4
  store i32 0, i32* %done, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.end.61
  %60 = load i32, i32* %done, align 4
  %tobool62 = icmp ne i32 %60, 0
  %lnot = xor i1 %tobool62, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %done, align 4
  %61 = load i16*, i16** %rp, align 8
  %incdec.ptr63 = getelementptr inbounds i16, i16* %61, i32 -1
  store i16* %incdec.ptr63, i16** %rp, align 8
  %62 = load i16*, i16** %rp, align 8
  %63 = load i16*, i16** @ritem, align 8
  %cmp64 = icmp uge i16* %62, %63
  br i1 %cmp64, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %while.body
  %64 = load i16*, i16** %rp, align 8
  %65 = load i16, i16* %64, align 2
  %conv66 = sext i16 %65 to i32
  %66 = load i32, i32* @ntokens, align 4
  %cmp67 = icmp sge i32 %conv66, %66
  br i1 %cmp67, label %if.then.69, label %if.end.85

if.then.69:                                       ; preds = %land.lhs.true
  %67 = load i32, i32* %length, align 4
  %dec70 = add nsw i32 %67, -1
  store i32 %dec70, i32* %length, align 4
  %idxprom71 = sext i32 %dec70 to i64
  %68 = load i16*, i16** %states, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %68, i64 %idxprom71
  %69 = load i16, i16* %arrayidx72, align 2
  %conv73 = sext i16 %69 to i32
  store i32 %conv73, i32* %stateno, align 4
  %70 = load i32, i32* %stateno, align 4
  %71 = load i16*, i16** %rp, align 8
  %72 = load i16, i16* %71, align 2
  %conv74 = sext i16 %72 to i32
  %call75 = call i32 @map_goto(i32 %70, i32 %conv74)
  %conv76 = trunc i32 %call75 to i16
  %73 = load i32, i32* %nedges, align 4
  %inc77 = add nsw i32 %73, 1
  store i32 %inc77, i32* %nedges, align 4
  %idxprom78 = sext i32 %73 to i64
  %74 = load i16*, i16** %edge, align 8
  %arrayidx79 = getelementptr inbounds i16, i16* %74, i64 %idxprom78
  store i16 %conv76, i16* %arrayidx79, align 2
  %75 = load i16*, i16** %rp, align 8
  %76 = load i16, i16* %75, align 2
  %idxprom80 = sext i16 %76 to i64
  %77 = load i8*, i8** @nullable, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %77, i64 %idxprom80
  %78 = load i8, i8* %arrayidx81, align 1
  %tobool82 = icmp ne i8 %78, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.69
  store i32 0, i32* %done, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.then.69
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.86

for.inc.86:                                       ; preds = %while.end
  %79 = load i16*, i16** %rulep, align 8
  %incdec.ptr87 = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr87, i16** %rulep, align 8
  br label %for.cond.20

for.end.88:                                       ; preds = %for.cond.20
  %80 = load i32, i32* %nedges, align 4
  %tobool89 = icmp ne i32 %80, 0
  br i1 %tobool89, label %if.then.90, label %if.end.111

if.then.90:                                       ; preds = %for.end.88
  %81 = load i32, i32* %nedges, align 4
  %add91 = add nsw i32 %81, 1
  %conv92 = sext i32 %add91 to i64
  %mul93 = mul i64 %conv92, 2
  %conv94 = trunc i64 %mul93 to i32
  %call95 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv94)
  %82 = bitcast i8* %call95 to i16*
  store i16* %82, i16** %shortp, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %83 to i64
  %84 = load i16**, i16*** @includes, align 8
  %arrayidx97 = getelementptr inbounds i16*, i16** %84, i64 %idxprom96
  store i16* %82, i16** %arrayidx97, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.106, %if.then.90
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %nedges, align 4
  %cmp99 = icmp slt i32 %85, %86
  br i1 %cmp99, label %for.body.101, label %for.end.108

for.body.101:                                     ; preds = %for.cond.98
  %87 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %87 to i64
  %88 = load i16*, i16** %edge, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %88, i64 %idxprom102
  %89 = load i16, i16* %arrayidx103, align 2
  %90 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %90 to i64
  %91 = load i16*, i16** %shortp, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %91, i64 %idxprom104
  store i16 %89, i16* %arrayidx105, align 2
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.101
  %92 = load i32, i32* %j, align 4
  %inc107 = add nsw i32 %92, 1
  store i32 %inc107, i32* %j, align 4
  br label %for.cond.98

for.end.108:                                      ; preds = %for.cond.98
  %93 = load i32, i32* %nedges, align 4
  %idxprom109 = sext i32 %93 to i64
  %94 = load i16*, i16** %shortp, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %94, i64 %idxprom109
  store i16 -1, i16* %arrayidx110, align 2
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.108, %for.end.88
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %95 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %95, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %96 = load i16**, i16*** @includes, align 8
  %97 = load i32, i32* @ngotos, align 4
  %call115 = call i16** @transpose(i16** %96, i32 %97)
  store i16** %call115, i16*** %new_includes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.132, %for.end.114
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* @ngotos, align 4
  %cmp117 = icmp slt i32 %98, %99
  br i1 %cmp117, label %for.body.119, label %for.end.134

for.body.119:                                     ; preds = %for.cond.116
  %100 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %100 to i64
  %101 = load i16**, i16*** @includes, align 8
  %arrayidx121 = getelementptr inbounds i16*, i16** %101, i64 %idxprom120
  %102 = load i16*, i16** %arrayidx121, align 8
  %tobool122 = icmp ne i16* %102, null
  br i1 %tobool122, label %if.then.123, label %if.end.131

if.then.123:                                      ; preds = %for.body.119
  %103 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %103 to i64
  %104 = load i16**, i16*** @includes, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %104, i64 %idxprom124
  %105 = load i16*, i16** %arrayidx125, align 8
  %tobool126 = icmp ne i16* %105, null
  br i1 %tobool126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %if.then.123
  %106 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %106 to i64
  %107 = load i16**, i16*** @includes, align 8
  %arrayidx129 = getelementptr inbounds i16*, i16** %107, i64 %idxprom128
  %108 = load i16*, i16** %arrayidx129, align 8
  %109 = bitcast i16* %108 to i8*
  call void @free(i8* %109) #3
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %if.then.123
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %for.body.119
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %110 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %110, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.116

for.end.134:                                      ; preds = %for.cond.116
  %111 = load i16**, i16*** @includes, align 8
  %tobool135 = icmp ne i16** %111, null
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.134
  %112 = load i16**, i16*** @includes, align 8
  %113 = bitcast i16** %112 to i8*
  call void @free(i8* %113) #3
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.end.134
  %114 = load i16**, i16*** %new_includes, align 8
  store i16** %114, i16*** @includes, align 8
  %115 = load i16*, i16** %edge, align 8
  %tobool138 = icmp ne i16* %115, null
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.137
  %116 = load i16*, i16** %edge, align 8
  %117 = bitcast i16* %116 to i8*
  call void @free(i8* %117) #3
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.end.137
  %118 = load i16*, i16** %states, align 8
  %tobool141 = icmp ne i16* %118, null
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.140
  %119 = load i16*, i16** %states, align 8
  %120 = bitcast i16* %119 to i8*
  call void @free(i8* %120) #3
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.140
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_FOLLOWS() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i16**, i16*** @includes, align 8
  call void @digraph(i16** %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @ngotos, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16**, i16*** @includes, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %4, i64 %idxprom
  %5 = load i16*, i16** %arrayidx, align 8
  %tobool = icmp ne i16* %5, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i16**, i16*** @includes, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %7, i64 %idxprom1
  %8 = load i16*, i16** %arrayidx2, align 8
  %tobool3 = icmp ne i16* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i16**, i16*** @includes, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %10, i64 %idxprom5
  %11 = load i16*, i16** %arrayidx6, align 8
  %12 = bitcast i16* %11 to i8*
  call void @free(i8* %12) #3
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i16**, i16*** @includes, align 8
  %tobool8 = icmp ne i16** %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %15 = load i16**, i16*** @includes, align 8
  %16 = bitcast i16** %15 to i8*
  call void @free(i8* %16) #3
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @compute_lookaheads() #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %fp1 = alloca i32*, align 8
  %fp2 = alloca i32*, align 8
  %fp3 = alloca i32*, align 8
  %sp = alloca %struct.shorts*, align 8
  %rowp = alloca i32*, align 8
  %sptmp = alloca %struct.shorts*, align 8
  %0 = load i32*, i32** @LA, align 8
  store i32* %0, i32** %rowp, align 8
  %1 = load i32, i32* @nstates, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** @lookaheads, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %6 = load i32*, i32** %rowp, align 8
  %7 = load i32, i32* @tokensetsize, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %fp3, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %arrayidx3 = getelementptr inbounds %struct.shorts*, %struct.shorts** %9, i64 %idxprom2
  %10 = load %struct.shorts*, %struct.shorts** %arrayidx3, align 8
  store %struct.shorts* %10, %struct.shorts** %sp, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %tobool = icmp ne %struct.shorts* %11, null
  br i1 %tobool, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %12 = load i32*, i32** %rowp, align 8
  store i32* %12, i32** %fp1, align 8
  %13 = load i32*, i32** @F, align 8
  %14 = load i32, i32* @tokensetsize, align 4
  %15 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %value = getelementptr inbounds %struct.shorts, %struct.shorts* %15, i32 0, i32 1
  %16 = load i16, i16* %value, align 2
  %conv6 = sext i16 %16 to i32
  %mul = mul nsw i32 %14, %conv6
  %idx.ext7 = sext i32 %mul to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %13, i64 %idx.ext7
  store i32* %add.ptr8, i32** %fp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.5
  %17 = load i32*, i32** %fp1, align 8
  %18 = load i32*, i32** %fp3, align 8
  %cmp9 = icmp ult i32* %17, %18
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32*, i32** %fp2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr, i32** %fp2, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %fp1, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr11, i32** %fp1, align 8
  %22 = load i32, i32* %21, align 4
  %or = or i32 %22, %20
  store i32 %or, i32* %21, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %23 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %next = getelementptr inbounds %struct.shorts, %struct.shorts* %23, i32 0, i32 0
  %24 = load %struct.shorts*, %struct.shorts** %next, align 8
  store %struct.shorts* %24, %struct.shorts** %sp, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %25 = load i32*, i32** %fp3, align 8
  store i32* %25, i32** %rowp, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.end.13
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %27, %28
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %29 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %arrayidx19 = getelementptr inbounds %struct.shorts*, %struct.shorts** %30, i64 %idxprom18
  %31 = load %struct.shorts*, %struct.shorts** %arrayidx19, align 8
  store %struct.shorts* %31, %struct.shorts** %sp, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.25, %for.body.17
  %32 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %tobool21 = icmp ne %struct.shorts* %32, null
  br i1 %tobool21, label %for.body.22, label %for.end.26

for.body.22:                                      ; preds = %for.cond.20
  %33 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %next23 = getelementptr inbounds %struct.shorts, %struct.shorts* %33, i32 0, i32 0
  %34 = load %struct.shorts*, %struct.shorts** %next23, align 8
  store %struct.shorts* %34, %struct.shorts** %sptmp, align 8
  %35 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %tobool24 = icmp ne %struct.shorts* %35, null
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  %36 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %37 = bitcast %struct.shorts* %36 to i8*
  call void @free(i8* %37) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.22
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end
  %38 = load %struct.shorts*, %struct.shorts** %sptmp, align 8
  store %struct.shorts* %38, %struct.shorts** %sp, align 8
  br label %for.cond.20

for.end.26:                                       ; preds = %for.cond.20
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %39 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %39, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  %40 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %tobool30 = icmp ne %struct.shorts** %40, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end.29
  %41 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %42 = bitcast %struct.shorts** %41 to i8*
  call void @free(i8* %42) #3
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end.29
  %43 = load i32*, i32** @F, align 8
  %tobool33 = icmp ne i32* %43, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %44 = load i32*, i32** @F, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  ret void
}

declare i8* @mallocate(...) #1

declare void @toomany(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @map_goto(i32 %state, i32 %symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  %middle = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @goto_map, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %low, align 4
  %3 = load i32, i32* %symbol.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load i16*, i16** @goto_map, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %high, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %entry
  %6 = load i32, i32* %low, align 4
  %7 = load i32, i32* %high, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %low, align 4
  %9 = load i32, i32* %high, align 4
  %add5 = add nsw i32 %8, %9
  %div = sdiv i32 %add5, 2
  store i32 %div, i32* %middle, align 4
  %10 = load i32, i32* %middle, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i16*, i16** @from_state, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %11, i64 %idxprom6
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %12 to i32
  store i32 %conv8, i32* %s, align 4
  %13 = load i32, i32* %s, align 4
  %14 = load i32, i32* %state.addr, align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %middle, align 4
  store i32 %15, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %16 = load i32, i32* %s, align 4
  %17 = load i32, i32* %state.addr, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %18 = load i32, i32* %middle, align 4
  %add14 = add nsw i32 %18, 1
  store i32 %add14, i32* %low, align 4
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %19 = load i32, i32* %middle, align 4
  %sub = sub nsw i32 %19, 1
  store i32 %sub, i32* %high, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @berror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @berror(i8*) #1

; Function Attrs: nounwind uwtable
define void @digraph(i16** %relation) #0 {
entry:
  %relation.addr = alloca i16**, align 8
  %i = alloca i32, align 4
  store i16** %relation, i16*** %relation.addr, align 8
  %0 = load i32, i32* @ngotos, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* @infinity, align 4
  %1 = load i32, i32* @ngotos, align 4
  %add1 = add nsw i32 %1, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 %conv, 2
  %conv2 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv2)
  %2 = bitcast i8* %call to i16*
  store i16* %2, i16** @INDEX, align 8
  %3 = load i32, i32* @ngotos, align 4
  %add3 = add nsw i32 %3, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 %conv4, 2
  %conv6 = trunc i64 %mul5 to i32
  %call7 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv6)
  %4 = bitcast i8* %call7 to i16*
  store i16* %4, i16** @VERTICES, align 8
  store i32 0, i32* @top, align 4
  %5 = load i16**, i16*** %relation.addr, align 8
  store i16** %5, i16*** @R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @ngotos, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @INDEX, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.20, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @ngotos, align 4
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.9
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i16*, i16** @INDEX, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %14, i64 %idxprom13
  %15 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.12
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i16**, i16*** @R, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %17, i64 %idxprom18
  %18 = load i16*, i16** %arrayidx19, align 8
  %tobool = icmp ne i16* %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %i, align 4
  call void @traverse(i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.12
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.9

for.end.22:                                       ; preds = %for.cond.9
  %21 = load i16*, i16** @INDEX, align 8
  %tobool23 = icmp ne i16* %21, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end.22
  %22 = load i16*, i16** @INDEX, align 8
  %23 = bitcast i16* %22 to i8*
  call void @free(i8* %23) #3
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.end.22
  %24 = load i16*, i16** @VERTICES, align 8
  %tobool26 = icmp ne i16* %24, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %25 = load i16*, i16** @VERTICES, align 8
  %26 = bitcast i16* %25 to i8*
  call void @free(i8* %26) #3
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_lookback_edge(i32 %stateno, i32 %ruleno, i32 %gotono) #0 {
entry:
  %stateno.addr = alloca i32, align 4
  %ruleno.addr = alloca i32, align 4
  %gotono.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %found = alloca i32, align 4
  %sp = alloca %struct.shorts*, align 8
  store i32 %stateno, i32* %stateno.addr, align 4
  store i32 %ruleno, i32* %ruleno.addr, align 4
  store i32 %gotono, i32* %gotono.addr, align 4
  %0 = load i32, i32* %stateno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @lookaheads, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %stateno.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load i16*, i16** @lookaheads, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %k, align 4
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i16*, i16** @LAruleno, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom5
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %12 to i32
  %13 = load i32, i32* %ruleno.addr, align 4
  %cmp8 = icmp eq i32 %conv7, %13
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %found, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %found, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end
  call void @berror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.end
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %16 = bitcast i8* %call to %struct.shorts*
  store %struct.shorts* %16, %struct.shorts** %sp, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %arrayidx15 = getelementptr inbounds %struct.shorts*, %struct.shorts** %18, i64 %idxprom14
  %19 = load %struct.shorts*, %struct.shorts** %arrayidx15, align 8
  %20 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %next = getelementptr inbounds %struct.shorts, %struct.shorts* %20, i32 0, i32 0
  store %struct.shorts* %19, %struct.shorts** %next, align 8
  %21 = load i32, i32* %gotono.addr, align 4
  %conv16 = trunc i32 %21 to i16
  %22 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %value = getelementptr inbounds %struct.shorts, %struct.shorts* %22, i32 0, i32 1
  store i16 %conv16, i16* %value, align 2
  %23 = load %struct.shorts*, %struct.shorts** %sp, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.shorts**, %struct.shorts*** @lookback, align 8
  %arrayidx18 = getelementptr inbounds %struct.shorts*, %struct.shorts** %25, i64 %idxprom17
  store %struct.shorts* %23, %struct.shorts** %arrayidx18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i16** @transpose(i16** %R, i32 %n) #0 {
entry:
  %R.addr = alloca i16**, align 8
  %n.addr = alloca i32, align 4
  %new_R = alloca i16**, align 8
  %temp_R = alloca i16**, align 8
  %nedges = alloca i16*, align 8
  %sp = alloca i16*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i16** %R, i16*** %R.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %nedges, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16**, i16*** %R.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %5, i64 %idxprom
  %6 = load i16*, i16** %arrayidx, align 8
  store i16* %6, i16** %sp, align 8
  %7 = load i16*, i16** %sp, align 8
  %tobool = icmp ne i16* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i16*, i16** %sp, align 8
  %9 = load i16, i16* %8, align 2
  %conv3 = sext i16 %9 to i32
  %cmp4 = icmp sge i32 %conv3, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8
  %11 = load i16, i16* %10, align 2
  %idxprom6 = sext i16 %11 to i64
  %12 = load i16*, i16** %nedges, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %12, i64 %idxprom6
  %13 = load i16, i16* %arrayidx7, align 2
  %inc = add i16 %13, 1
  store i16 %inc, i16* %arrayidx7, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %n.addr, align 4
  %conv9 = sext i32 %15 to i64
  %mul10 = mul i64 %conv9, 8
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv11)
  %16 = bitcast i8* %call12 to i16**
  store i16** %16, i16*** %new_R, align 8
  %17 = load i32, i32* %n.addr, align 4
  %conv13 = sext i32 %17 to i64
  %mul14 = mul i64 %conv13, 8
  %conv15 = trunc i64 %mul14 to i32
  %call16 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv15)
  %18 = bitcast i8* %call16 to i16**
  store i16** %18, i16*** %temp_R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.38, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n.addr, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %for.body.20, label %for.end.40

for.body.20:                                      ; preds = %for.cond.17
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load i16*, i16** %nedges, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %22, i64 %idxprom21
  %23 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %23 to i32
  store i32 %conv23, i32* %k, align 4
  %24 = load i32, i32* %k, align 4
  %cmp24 = icmp sgt i32 %24, 0
  br i1 %cmp24, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %for.body.20
  %25 = load i32, i32* %k, align 4
  %add = add nsw i32 %25, 1
  %conv27 = sext i32 %add to i64
  %mul28 = mul i64 %conv27, 2
  %conv29 = trunc i64 %mul28 to i32
  %call30 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv29)
  %26 = bitcast i8* %call30 to i16*
  store i16* %26, i16** %sp, align 8
  %27 = load i16*, i16** %sp, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load i16**, i16*** %new_R, align 8
  %arrayidx32 = getelementptr inbounds i16*, i16** %29, i64 %idxprom31
  store i16* %27, i16** %arrayidx32, align 8
  %30 = load i16*, i16** %sp, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load i16**, i16*** %temp_R, align 8
  %arrayidx34 = getelementptr inbounds i16*, i16** %32, i64 %idxprom33
  store i16* %30, i16** %arrayidx34, align 8
  %33 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load i16*, i16** %sp, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %34, i64 %idxprom35
  store i16 -1, i16* %arrayidx36, align 2
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.26, %for.body.20
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %35 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %35, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.17

for.end.40:                                       ; preds = %for.cond.17
  %36 = load i16*, i16** %nedges, align 8
  %tobool41 = icmp ne i16* %36, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end.40
  %37 = load i16*, i16** %nedges, align 8
  %38 = bitcast i16* %37 to i8*
  call void @free(i8* %38) #3
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end.40
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.64, %if.end.43
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %n.addr, align 4
  %cmp45 = icmp slt i32 %39, %40
  br i1 %cmp45, label %for.body.47, label %for.end.66

for.body.47:                                      ; preds = %for.cond.44
  %41 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %41 to i64
  %42 = load i16**, i16*** %R.addr, align 8
  %arrayidx49 = getelementptr inbounds i16*, i16** %42, i64 %idxprom48
  %43 = load i16*, i16** %arrayidx49, align 8
  store i16* %43, i16** %sp, align 8
  %44 = load i16*, i16** %sp, align 8
  %tobool50 = icmp ne i16* %44, null
  br i1 %tobool50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %for.body.47
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.56, %if.then.51
  %45 = load i16*, i16** %sp, align 8
  %46 = load i16, i16* %45, align 2
  %conv53 = sext i16 %46 to i32
  %cmp54 = icmp sge i32 %conv53, 0
  br i1 %cmp54, label %while.body.56, label %while.end.62

while.body.56:                                    ; preds = %while.cond.52
  %47 = load i32, i32* %i, align 4
  %conv57 = trunc i32 %47 to i16
  %48 = load i16*, i16** %sp, align 8
  %incdec.ptr58 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %incdec.ptr58, i16** %sp, align 8
  %49 = load i16, i16* %48, align 2
  %idxprom59 = sext i16 %49 to i64
  %50 = load i16**, i16*** %temp_R, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %50, i64 %idxprom59
  %51 = load i16*, i16** %arrayidx60, align 8
  %incdec.ptr61 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr61, i16** %arrayidx60, align 8
  store i16 %conv57, i16* %51, align 2
  br label %while.cond.52

while.end.62:                                     ; preds = %while.cond.52
  br label %if.end.63

if.end.63:                                        ; preds = %while.end.62, %for.body.47
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %52 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.44

for.end.66:                                       ; preds = %for.cond.44
  %53 = load i16**, i16*** %temp_R, align 8
  %tobool67 = icmp ne i16** %53, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.end.66
  %54 = load i16**, i16*** %temp_R, align 8
  %55 = bitcast i16** %54 to i8*
  call void @free(i8* %55) #3
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %for.end.66
  %56 = load i16**, i16*** %new_R, align 8
  ret i16** %56
}

; Function Attrs: nounwind uwtable
define void @traverse(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %fp1 = alloca i32*, align 8
  %fp2 = alloca i32*, align 8
  %fp3 = alloca i32*, align 8
  %j = alloca i32, align 4
  %rp = alloca i16*, align 8
  %height = alloca i32, align 4
  %base = alloca i32*, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load i32, i32* @top, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @top, align 4
  %idxprom = sext i32 %inc to i64
  %2 = load i16*, i16** @VERTICES, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  %3 = load i32, i32* @top, align 4
  store i32 %3, i32* %height, align 4
  %conv1 = trunc i32 %3 to i16
  %4 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i16*, i16** @INDEX, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 %idxprom2
  store i16 %conv1, i16* %arrayidx3, align 2
  %6 = load i32*, i32** @F, align 8
  %7 = load i32, i32* %i.addr, align 4
  %8 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %7, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %base, align 8
  %9 = load i32*, i32** %base, align 8
  %10 = load i32, i32* @tokensetsize, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %9, i64 %idx.ext4
  store i32* %add.ptr5, i32** %fp3, align 8
  %11 = load i32, i32* %i.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i16**, i16*** @R, align 8
  %arrayidx7 = getelementptr inbounds i16*, i16** %12, i64 %idxprom6
  %13 = load i16*, i16** %arrayidx7, align 8
  store i16* %13, i16** %rp, align 8
  %14 = load i16*, i16** %rp, align 8
  %tobool = icmp ne i16* %14, null
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then
  %15 = load i16*, i16** %rp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr, i16** %rp, align 8
  %16 = load i16, i16* %15, align 2
  %conv8 = sext i16 %16 to i32
  store i32 %conv8, i32* %j, align 4
  %cmp = icmp sge i32 %conv8, 0
  br i1 %cmp, label %while.body, label %while.end.39

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i16*, i16** @INDEX, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %18, i64 %idxprom10
  %19 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %19 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %while.body
  %20 = load i32, i32* %j, align 4
  call void @traverse(i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %while.body
  %21 = load i32, i32* %i.addr, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i16*, i16** @INDEX, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %22, i64 %idxprom16
  %23 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %23 to i32
  %24 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load i16*, i16** @INDEX, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %25, i64 %idxprom19
  %26 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %26 to i32
  %cmp22 = icmp sgt i32 %conv18, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i16*, i16** @INDEX, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %28, i64 %idxprom25
  %29 = load i16, i16* %arrayidx26, align 2
  %30 = load i32, i32* %i.addr, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load i16*, i16** @INDEX, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %31, i64 %idxprom27
  store i16 %29, i16* %arrayidx28, align 2
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end
  %32 = load i32*, i32** %base, align 8
  store i32* %32, i32** %fp1, align 8
  %33 = load i32*, i32** @F, align 8
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* @tokensetsize, align 4
  %mul30 = mul nsw i32 %34, %35
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i32, i32* %33, i64 %idx.ext31
  store i32* %add.ptr32, i32** %fp2, align 8
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.36, %if.end.29
  %36 = load i32*, i32** %fp1, align 8
  %37 = load i32*, i32** %fp3, align 8
  %cmp34 = icmp ult i32* %36, %37
  br i1 %cmp34, label %while.body.36, label %while.end

while.body.36:                                    ; preds = %while.cond.33
  %38 = load i32*, i32** %fp2, align 8
  %incdec.ptr37 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr37, i32** %fp2, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %fp1, align 8
  %incdec.ptr38 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr38, i32** %fp1, align 8
  %41 = load i32, i32* %40, align 4
  %or = or i32 %41, %39
  store i32 %or, i32* %40, align 4
  br label %while.cond.33

while.end:                                        ; preds = %while.cond.33
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  br label %if.end.40

if.end.40:                                        ; preds = %while.end.39, %entry
  %42 = load i32, i32* %i.addr, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load i16*, i16** @INDEX, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %43, i64 %idxprom41
  %44 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %44 to i32
  %45 = load i32, i32* %height, align 4
  %cmp44 = icmp eq i32 %conv43, %45
  br i1 %cmp44, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %if.end.40
  br label %for.cond

for.cond:                                         ; preds = %while.end.66, %if.then.46
  %46 = load i32, i32* @top, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* @top, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load i16*, i16** @VERTICES, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %47, i64 %idxprom47
  %48 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %48 to i32
  store i32 %conv49, i32* %j, align 4
  %49 = load i32, i32* @infinity, align 4
  %conv50 = trunc i32 %49 to i16
  %50 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %50 to i64
  %51 = load i16*, i16** @INDEX, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %51, i64 %idxprom51
  store i16 %conv50, i16* %arrayidx52, align 2
  %52 = load i32, i32* %i.addr, align 4
  %53 = load i32, i32* %j, align 4
  %cmp53 = icmp eq i32 %52, %53
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.cond
  br label %for.end

if.end.56:                                        ; preds = %for.cond
  %54 = load i32*, i32** %base, align 8
  store i32* %54, i32** %fp1, align 8
  %55 = load i32*, i32** @F, align 8
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* @tokensetsize, align 4
  %mul57 = mul nsw i32 %56, %57
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds i32, i32* %55, i64 %idx.ext58
  store i32* %add.ptr59, i32** %fp2, align 8
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.63, %if.end.56
  %58 = load i32*, i32** %fp1, align 8
  %59 = load i32*, i32** %fp3, align 8
  %cmp61 = icmp ult i32* %58, %59
  br i1 %cmp61, label %while.body.63, label %while.end.66

while.body.63:                                    ; preds = %while.cond.60
  %60 = load i32*, i32** %fp1, align 8
  %incdec.ptr64 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %incdec.ptr64, i32** %fp1, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %fp2, align 8
  %incdec.ptr65 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %incdec.ptr65, i32** %fp2, align 8
  store i32 %61, i32* %62, align 4
  br label %while.cond.60

while.end.66:                                     ; preds = %while.cond.60
  br label %for.cond

for.end:                                          ; preds = %if.then.55
  br label %if.end.67

if.end.67:                                        ; preds = %for.end, %if.end.40
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
