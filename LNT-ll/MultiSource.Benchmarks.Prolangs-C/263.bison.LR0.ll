; ModuleID = './MultiSource.Benchmarks.Prolangs-C/263.bison.LR0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }

@nsyms = external global i32, align 4
@ritem = external global i16*, align 8
@kernel_base = internal global i16** null, align 8
@kernel_items = internal global i16* null, align 8
@shift_symbol = internal global i16* null, align 8
@kernel_end = internal global i16** null, align 8
@shiftset = internal global i16* null, align 8
@nrules = external global i32, align 4
@redset = internal global i16* null, align 8
@state_table = internal global %struct.core** null, align 8
@nitems = external global i32, align 4
@this_state = internal global %struct.core* null, align 8
@nshifts = internal global i32 0, align 4
@itemset = external global i16*, align 8
@itemsetend = external global i16*, align 8
@nstates = common global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"states\00", align 1
@last_state = internal global %struct.core* null, align 8
@first_state = common global %struct.core* null, align 8
@last_shift = internal global %struct.shifts* null, align 8
@first_shift = common global %struct.shifts* null, align 8
@last_reduction = internal global %struct.reductions* null, align 8
@first_reduction = common global %struct.reductions* null, align 8
@start_symbol = external global i32, align 4
@final_state = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @allocate_itemsets() #0 {
entry:
  %itemp = alloca i16*, align 8
  %symbol = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %max = alloca i32, align 4
  %symbol_count = alloca i16*, align 8
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* @nsyms, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %symbol_count, align 8
  %2 = load i16*, i16** @ritem, align 8
  store i16* %2, i16** %itemp, align 8
  %3 = load i16*, i16** %itemp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %itemp, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = sext i16 %4 to i32
  store i32 %conv2, i32* %symbol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, i32* %symbol, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %symbol, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  %8 = load i32, i32* %symbol, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** %symbol_count, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %inc4 = add i16 %10, 1
  store i16 %inc4, i16* %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load i16*, i16** %itemp, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr5, i16** %itemp, align 8
  %12 = load i16, i16* %11, align 2
  %conv6 = sext i16 %12 to i32
  store i32 %conv6, i32* %symbol, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* @nsyms, align 4
  %conv7 = sext i32 %13 to i64
  %mul8 = mul i64 %conv7, 8
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv9)
  %14 = bitcast i8* %call10 to i16**
  store i16** %14, i16*** @kernel_base, align 8
  %15 = load i32, i32* %count, align 4
  %conv11 = sext i32 %15 to i64
  %mul12 = mul i64 %conv11, 2
  %conv13 = trunc i64 %mul12 to i32
  %call14 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv13)
  %16 = bitcast i8* %call14 to i16*
  store i16* %16, i16** @kernel_items, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* @nsyms, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i16*, i16** @kernel_items, align 8
  %20 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i16, i16* %19, i64 %idx.ext
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i16**, i16*** @kernel_base, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %22, i64 %idxprom17
  store i16* %add.ptr, i16** %arrayidx18, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i16*, i16** %symbol_count, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %24, i64 %idxprom19
  %25 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %25 to i32
  %26 = load i32, i32* %count, align 4
  %add = add nsw i32 %26, %conv21
  store i32 %add, i32* %count, align 4
  %27 = load i32, i32* %max, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i16*, i16** %symbol_count, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %29, i64 %idxprom22
  %30 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %30 to i32
  %cmp25 = icmp slt i32 %27, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i16*, i16** %symbol_count, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %32, i64 %idxprom28
  %33 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %33 to i32
  store i32 %conv30, i32* %max, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %34 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i16*, i16** %symbol_count, align 8
  store i16* %35, i16** @shift_symbol, align 8
  %36 = load i32, i32* @nsyms, align 4
  %conv33 = sext i32 %36 to i64
  %mul34 = mul i64 %conv33, 8
  %conv35 = trunc i64 %mul34 to i32
  %call36 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv35)
  %37 = bitcast i8* %call36 to i16**
  store i16** %37, i16*** @kernel_end, align 8
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind uwtable
define void @allocate_storage() #0 {
entry:
  call void @allocate_itemsets()
  %0 = load i32, i32* @nsyms, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @shiftset, align 8
  %2 = load i32, i32* @nrules, align 4
  %add = add nsw i32 %2, 1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %3 = bitcast i8* %call5 to i16*
  store i16* %3, i16** @redset, align 8
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 8072)
  %4 = bitcast i8* %call6 to %struct.core**
  store %struct.core** %4, %struct.core*** @state_table, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_storage() #0 {
entry:
  %0 = load i16*, i16** @shift_symbol, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** @shift_symbol, align 8
  %2 = bitcast i16* %1 to i8*
  call void @free(i8* %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i16*, i16** @redset, align 8
  %tobool1 = icmp ne i16* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i16*, i16** @redset, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i16*, i16** @shiftset, align 8
  %tobool4 = icmp ne i16* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %7 = load i16*, i16** @shiftset, align 8
  %8 = bitcast i16* %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load i16**, i16*** @kernel_base, align 8
  %tobool7 = icmp ne i16** %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %10 = load i16**, i16*** @kernel_base, align 8
  %11 = bitcast i16** %10 to i8*
  call void @free(i8* %11) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %12 = load i16**, i16*** @kernel_end, align 8
  %tobool10 = icmp ne i16** %12, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %13 = load i16**, i16*** @kernel_end, align 8
  %14 = bitcast i16** %13 to i8*
  call void @free(i8* %14) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %15 = load i16*, i16** @kernel_items, align 8
  %tobool13 = icmp ne i16* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %16 = load i16*, i16** @kernel_items, align 8
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* %17) #3
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %18 = load %struct.core**, %struct.core*** @state_table, align 8
  %tobool16 = icmp ne %struct.core** %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %19 = load %struct.core**, %struct.core*** @state_table, align 8
  %20 = bitcast %struct.core** %19 to i8*
  call void @free(i8* %20) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @generate_states() #0 {
entry:
  call void @allocate_storage()
  %0 = load i32, i32* @nitems, align 4
  call void @initialize_closure(i32 %0)
  call void @initialize_states()
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.core*, %struct.core** @this_state, align 8
  %tobool = icmp ne %struct.core* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.core*, %struct.core** @this_state, align 8
  %items = getelementptr inbounds %struct.core, %struct.core* %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %items, i32 0, i32 0
  %3 = load %struct.core*, %struct.core** @this_state, align 8
  %nitems = getelementptr inbounds %struct.core, %struct.core* %3, i32 0, i32 4
  %4 = load i16, i16* %nitems, align 2
  %conv = sext i16 %4 to i32
  call void @closure(i16* %arraydecay, i32 %conv)
  call void @save_reductions()
  call void @new_itemsets()
  call void @append_states()
  %5 = load i32, i32* @nshifts, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @save_shifts()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load %struct.core*, %struct.core** @this_state, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 0
  %7 = load %struct.core*, %struct.core** %next, align 8
  store %struct.core* %7, %struct.core** @this_state, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @finalize_closure()
  call void @free_storage()
  call void @augment_automaton()
  ret void
}

declare void @initialize_closure(i32) #1

; Function Attrs: nounwind uwtable
define void @initialize_states() #0 {
entry:
  %p = alloca %struct.core*, align 8
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 22)
  %0 = bitcast i8* %call to %struct.core*
  store %struct.core* %0, %struct.core** %p, align 8
  %1 = load %struct.core*, %struct.core** %p, align 8
  store %struct.core* %1, %struct.core** @this_state, align 8
  store %struct.core* %1, %struct.core** @last_state, align 8
  store %struct.core* %1, %struct.core** @first_state, align 8
  store i32 1, i32* @nstates, align 4
  ret void
}

declare void @closure(i16*, i32) #1

; Function Attrs: nounwind uwtable
define void @save_reductions() #0 {
entry:
  %isp = alloca i16*, align 8
  %rp1 = alloca i16*, align 8
  %rp2 = alloca i16*, align 8
  %item = alloca i32, align 4
  %count = alloca i32, align 4
  %p = alloca %struct.reductions*, align 8
  %rend = alloca i16*, align 8
  store i32 0, i32* %count, align 4
  %0 = load i16*, i16** @itemset, align 8
  store i16* %0, i16** %isp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16*, i16** %isp, align 8
  %2 = load i16*, i16** @itemsetend, align 8
  %cmp = icmp ult i16* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %isp, align 8
  %4 = load i16, i16* %3, align 2
  %idxprom = sext i16 %4 to i64
  %5 = load i16*, i16** @ritem, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %item, align 4
  %7 = load i32, i32* %item, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %item, align 4
  %sub = sub nsw i32 0, %8
  %conv3 = trunc i32 %sub to i16
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i16*, i16** @redset, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i64 %idxprom4
  store i16 %conv3, i16* %arrayidx5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i16*, i16** %isp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr, i16** %isp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %count, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %for.end
  %13 = load i32, i32* %count, align 4
  %sub7 = sub nsw i32 %13, 1
  %conv8 = sext i32 %sub7 to i64
  %mul = mul i64 %conv8, 2
  %add = add i64 16, %mul
  %conv9 = trunc i64 %add to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv9)
  %14 = bitcast i8* %call to %struct.reductions*
  store %struct.reductions* %14, %struct.reductions** %p, align 8
  %15 = load %struct.core*, %struct.core** @this_state, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %15, i32 0, i32 2
  %16 = load i16, i16* %number, align 2
  %17 = load %struct.reductions*, %struct.reductions** %p, align 8
  %number10 = getelementptr inbounds %struct.reductions, %struct.reductions* %17, i32 0, i32 1
  store i16 %16, i16* %number10, align 2
  %18 = load i32, i32* %count, align 4
  %conv11 = trunc i32 %18 to i16
  %19 = load %struct.reductions*, %struct.reductions** %p, align 8
  %nreds = getelementptr inbounds %struct.reductions, %struct.reductions* %19, i32 0, i32 2
  store i16 %conv11, i16* %nreds, align 2
  %20 = load i16*, i16** @redset, align 8
  store i16* %20, i16** %rp1, align 8
  %21 = load %struct.reductions*, %struct.reductions** %p, align 8
  %rules = getelementptr inbounds %struct.reductions, %struct.reductions* %21, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %rules, i32 0, i32 0
  store i16* %arraydecay, i16** %rp2, align 8
  %22 = load i16*, i16** %rp1, align 8
  %23 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i16, i16* %22, i64 %idx.ext
  store i16* %add.ptr, i16** %rend, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.6
  %24 = load i16*, i16** %rp1, align 8
  %25 = load i16*, i16** %rend, align 8
  %cmp12 = icmp ult i16* %24, %25
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i16*, i16** %rp1, align 8
  %incdec.ptr14 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr14, i16** %rp1, align 8
  %27 = load i16, i16* %26, align 2
  %28 = load i16*, i16** %rp2, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr15, i16** %rp2, align 8
  store i16 %27, i16* %28, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %tobool16 = icmp ne %struct.reductions* %29, null
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.end
  %30 = load %struct.reductions*, %struct.reductions** %p, align 8
  %31 = load %struct.reductions*, %struct.reductions** @last_reduction, align 8
  %next = getelementptr inbounds %struct.reductions, %struct.reductions* %31, i32 0, i32 0
  store %struct.reductions* %30, %struct.reductions** %next, align 8
  %32 = load %struct.reductions*, %struct.reductions** %p, align 8
  store %struct.reductions* %32, %struct.reductions** @last_reduction, align 8
  br label %if.end.18

if.else:                                          ; preds = %while.end
  %33 = load %struct.reductions*, %struct.reductions** %p, align 8
  store %struct.reductions* %33, %struct.reductions** @first_reduction, align 8
  %34 = load %struct.reductions*, %struct.reductions** %p, align 8
  store %struct.reductions* %34, %struct.reductions** @last_reduction, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @new_itemsets() #0 {
entry:
  %i = alloca i32, align 4
  %shiftcount = alloca i32, align 4
  %isp = alloca i16*, align 8
  %ksp = alloca i16*, align 8
  %symbol = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nsyms, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16**, i16*** @kernel_end, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %3, i64 %idxprom
  store i16* null, i16** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %shiftcount, align 4
  %5 = load i16*, i16** @itemset, align 8
  store i16* %5, i16** %isp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %for.end
  %6 = load i16*, i16** %isp, align 8
  %7 = load i16*, i16** @itemsetend, align 8
  %cmp1 = icmp ult i16* %6, %7
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i16*, i16** %isp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr, i16** %isp, align 8
  %9 = load i16, i16* %8, align 2
  %conv = sext i16 %9 to i32
  store i32 %conv, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i16*, i16** @ritem, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %11, i64 %idxprom2
  %12 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %12 to i32
  store i32 %conv4, i32* %symbol, align 4
  %13 = load i32, i32* %symbol, align 4
  %cmp5 = icmp sgt i32 %13, 0
  br i1 %cmp5, label %if.then, label %if.end.20

if.then:                                          ; preds = %while.body
  %14 = load i32, i32* %symbol, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i16**, i16*** @kernel_end, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %15, i64 %idxprom7
  %16 = load i16*, i16** %arrayidx8, align 8
  store i16* %16, i16** %ksp, align 8
  %17 = load i16*, i16** %ksp, align 8
  %tobool = icmp ne i16* %17, null
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %18 = load i32, i32* %symbol, align 4
  %conv10 = trunc i32 %18 to i16
  %19 = load i32, i32* %shiftcount, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %shiftcount, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i16*, i16** @shift_symbol, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %20, i64 %idxprom12
  store i16 %conv10, i16* %arrayidx13, align 2
  %21 = load i32, i32* %symbol, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i16**, i16*** @kernel_base, align 8
  %arrayidx15 = getelementptr inbounds i16*, i16** %22, i64 %idxprom14
  %23 = load i16*, i16** %arrayidx15, align 8
  store i16* %23, i16** %ksp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %24 = load i32, i32* %i, align 4
  %add = add nsw i32 %24, 1
  %conv16 = trunc i32 %add to i16
  %25 = load i16*, i16** %ksp, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr17, i16** %ksp, align 8
  store i16 %conv16, i16* %25, align 2
  %26 = load i16*, i16** %ksp, align 8
  %27 = load i32, i32* %symbol, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i16**, i16*** @kernel_end, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %28, i64 %idxprom18
  store i16* %26, i16** %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %shiftcount, align 4
  store i32 %29, i32* @nshifts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @append_states() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nshifts, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @shift_symbol, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  store i32 %conv, i32* %symbol, align 4
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp1 = icmp sgt i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom3 = sext i32 %sub to i64
  %8 = load i16*, i16** @shift_symbol, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 %idxprom3
  %9 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %9 to i32
  %10 = load i32, i32* %symbol, align 4
  %cmp6 = icmp sgt i32 %conv5, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %j, align 4
  %sub8 = sub nsw i32 %12, 1
  %idxprom9 = sext i32 %sub8 to i64
  %13 = load i16*, i16** @shift_symbol, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  %14 = load i16, i16* %arrayidx10, align 2
  %15 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i16*, i16** @shift_symbol, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %16, i64 %idxprom11
  store i16 %14, i16* %arrayidx12, align 2
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %symbol, align 4
  %conv13 = trunc i32 %18 to i16
  %19 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i16*, i16** @shift_symbol, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %20, i64 %idxprom14
  store i16 %conv13, i16* %arrayidx15, align 2
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @nshifts, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %for.body.19, label %for.end.28

for.body.19:                                      ; preds = %for.cond.16
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i16*, i16** @shift_symbol, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %25, i64 %idxprom20
  %26 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %26 to i32
  store i32 %conv22, i32* %symbol, align 4
  %27 = load i32, i32* %symbol, align 4
  %call = call i32 @get_state(i32 %27)
  %conv23 = trunc i32 %call to i16
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load i16*, i16** @shiftset, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %29, i64 %idxprom24
  store i16 %conv23, i16* %arrayidx25, align 2
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.19
  %30 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @save_shifts() #0 {
entry:
  %p = alloca %struct.shifts*, align 8
  %sp1 = alloca i16*, align 8
  %sp2 = alloca i16*, align 8
  %send = alloca i16*, align 8
  %0 = load i32, i32* @nshifts, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 2
  %add = add i64 16, %mul
  %conv1 = trunc i64 %add to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to %struct.shifts*
  store %struct.shifts* %1, %struct.shifts** %p, align 8
  %2 = load %struct.core*, %struct.core** @this_state, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %2, i32 0, i32 2
  %3 = load i16, i16* %number, align 2
  %4 = load %struct.shifts*, %struct.shifts** %p, align 8
  %number2 = getelementptr inbounds %struct.shifts, %struct.shifts* %4, i32 0, i32 1
  store i16 %3, i16* %number2, align 2
  %5 = load i32, i32* @nshifts, align 4
  %conv3 = trunc i32 %5 to i16
  %6 = load %struct.shifts*, %struct.shifts** %p, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %6, i32 0, i32 2
  store i16 %conv3, i16* %nshifts, align 2
  %7 = load i16*, i16** @shiftset, align 8
  store i16* %7, i16** %sp1, align 8
  %8 = load %struct.shifts*, %struct.shifts** %p, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i32 0
  store i16* %arraydecay, i16** %sp2, align 8
  %9 = load i16*, i16** @shiftset, align 8
  %10 = load i32, i32* @nshifts, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i16, i16* %9, i64 %idx.ext
  store i16* %add.ptr, i16** %send, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i16*, i16** %sp1, align 8
  %12 = load i16*, i16** %send, align 8
  %cmp = icmp ult i16* %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i16*, i16** %sp1, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr, i16** %sp1, align 8
  %14 = load i16, i16* %13, align 2
  %15 = load i16*, i16** %sp2, align 8
  %incdec.ptr5 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr5, i16** %sp2, align 8
  store i16 %14, i16* %15, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %tobool = icmp ne %struct.shifts* %16, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %17 = load %struct.shifts*, %struct.shifts** %p, align 8
  %18 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %next = getelementptr inbounds %struct.shifts, %struct.shifts* %18, i32 0, i32 0
  store %struct.shifts* %17, %struct.shifts** %next, align 8
  %19 = load %struct.shifts*, %struct.shifts** %p, align 8
  store %struct.shifts* %19, %struct.shifts** @last_shift, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %20 = load %struct.shifts*, %struct.shifts** %p, align 8
  store %struct.shifts* %20, %struct.shifts** @first_shift, align 8
  %21 = load %struct.shifts*, %struct.shifts** %p, align 8
  store %struct.shifts* %21, %struct.shifts** @last_shift, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @finalize_closure() #1

; Function Attrs: nounwind uwtable
define void @augment_automaton() #0 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %statep = alloca %struct.core*, align 8
  %sp = alloca %struct.shifts*, align 8
  %sp2 = alloca %struct.shifts*, align 8
  %sp1 = alloca %struct.shifts*, align 8
  %0 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %0, %struct.shifts** %sp, align 8
  %1 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool = icmp ne %struct.shifts* %1, null
  br i1 %tobool, label %if.then, label %if.else.134

if.then:                                          ; preds = %entry
  %2 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number = getelementptr inbounds %struct.shifts, %struct.shifts* %2, i32 0, i32 1
  %3 = load i16, i16* %number, align 2
  %conv = sext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else.126

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %4, i32 0, i32 2
  %5 = load i16, i16* %nshifts, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %k, align 4
  %6 = load %struct.core*, %struct.core** @first_state, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 0
  %7 = load %struct.core*, %struct.core** %next, align 8
  store %struct.core* %7, %struct.core** %statep, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.2
  %8 = load %struct.core*, %struct.core** %statep, align 8
  %accessing_symbol = getelementptr inbounds %struct.core, %struct.core* %8, i32 0, i32 3
  %9 = load i16, i16* %accessing_symbol, align 2
  %conv4 = sext i16 %9 to i32
  %10 = load i32, i32* @start_symbol, align 4
  %cmp5 = icmp slt i32 %conv4, %10
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.core*, %struct.core** %statep, align 8
  %number7 = getelementptr inbounds %struct.core, %struct.core* %11, i32 0, i32 2
  %12 = load i16, i16* %number7, align 2
  %conv8 = sext i16 %12 to i32
  %13 = load i32, i32* %k, align 4
  %cmp9 = icmp slt i32 %conv8, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %struct.core*, %struct.core** %statep, align 8
  %next11 = getelementptr inbounds %struct.core, %struct.core* %15, i32 0, i32 0
  %16 = load %struct.core*, %struct.core** %next11, align 8
  store %struct.core* %16, %struct.core** %statep, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %struct.core*, %struct.core** %statep, align 8
  %accessing_symbol12 = getelementptr inbounds %struct.core, %struct.core* %17, i32 0, i32 3
  %18 = load i16, i16* %accessing_symbol12, align 2
  %conv13 = sext i16 %18 to i32
  %19 = load i32, i32* @start_symbol, align 4
  %cmp14 = icmp eq i32 %conv13, %19
  br i1 %cmp14, label %if.then.16, label %if.else.70

if.then.16:                                       ; preds = %while.end
  %20 = load %struct.core*, %struct.core** %statep, align 8
  %number17 = getelementptr inbounds %struct.core, %struct.core* %20, i32 0, i32 2
  %21 = load i16, i16* %number17, align 2
  %conv18 = sext i16 %21 to i32
  store i32 %conv18, i32* %k, align 4
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.24, %if.then.16
  %22 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number20 = getelementptr inbounds %struct.shifts, %struct.shifts* %22, i32 0, i32 1
  %23 = load i16, i16* %number20, align 2
  %conv21 = sext i16 %23 to i32
  %24 = load i32, i32* %k, align 4
  %cmp22 = icmp slt i32 %conv21, %24
  br i1 %cmp22, label %while.body.24, label %while.end.26

while.body.24:                                    ; preds = %while.cond.19
  %25 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %25, %struct.shifts** %sp1, align 8
  %26 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next25 = getelementptr inbounds %struct.shifts, %struct.shifts* %26, i32 0, i32 0
  %27 = load %struct.shifts*, %struct.shifts** %next25, align 8
  store %struct.shifts* %27, %struct.shifts** %sp, align 8
  br label %while.cond.19

while.end.26:                                     ; preds = %while.cond.19
  %28 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number27 = getelementptr inbounds %struct.shifts, %struct.shifts* %28, i32 0, i32 1
  %29 = load i16, i16* %number27, align 2
  %conv28 = sext i16 %29 to i32
  %30 = load i32, i32* %k, align 4
  %cmp29 = icmp eq i32 %conv28, %30
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %while.end.26
  %31 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts32 = getelementptr inbounds %struct.shifts, %struct.shifts* %31, i32 0, i32 2
  %32 = load i16, i16* %nshifts32, align 2
  %conv33 = sext i16 %32 to i64
  %mul = mul i64 %conv33, 2
  %add = add i64 16, %mul
  %conv34 = trunc i64 %add to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv34)
  %33 = bitcast i8* %call to %struct.shifts*
  store %struct.shifts* %33, %struct.shifts** %sp2, align 8
  %34 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next35 = getelementptr inbounds %struct.shifts, %struct.shifts* %34, i32 0, i32 0
  %35 = load %struct.shifts*, %struct.shifts** %next35, align 8
  %36 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %next36 = getelementptr inbounds %struct.shifts, %struct.shifts* %36, i32 0, i32 0
  store %struct.shifts* %35, %struct.shifts** %next36, align 8
  %37 = load i32, i32* %k, align 4
  %conv37 = trunc i32 %37 to i16
  %38 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %number38 = getelementptr inbounds %struct.shifts, %struct.shifts* %38, i32 0, i32 1
  store i16 %conv37, i16* %number38, align 2
  %39 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts39 = getelementptr inbounds %struct.shifts, %struct.shifts* %39, i32 0, i32 2
  %40 = load i16, i16* %nshifts39, align 2
  %conv40 = sext i16 %40 to i32
  %add41 = add nsw i32 %conv40, 1
  %conv42 = trunc i32 %add41 to i16
  %41 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %nshifts43 = getelementptr inbounds %struct.shifts, %struct.shifts* %41, i32 0, i32 2
  store i16 %conv42, i16* %nshifts43, align 2
  %42 = load i32, i32* @nstates, align 4
  %conv44 = trunc i32 %42 to i16
  %43 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %43, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 0
  store i16 %conv44, i16* %arrayidx, align 2
  %44 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts45 = getelementptr inbounds %struct.shifts, %struct.shifts* %44, i32 0, i32 2
  %45 = load i16, i16* %nshifts45, align 2
  %conv46 = sext i16 %45 to i32
  store i32 %conv46, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.31
  %46 = load i32, i32* %i, align 4
  %cmp47 = icmp sgt i32 %46, 0
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %47, 1
  %idxprom = sext i32 %sub to i64
  %48 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts49 = getelementptr inbounds %struct.shifts, %struct.shifts* %48, i32 0, i32 3
  %arrayidx50 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts49, i32 0, i64 %idxprom
  %49 = load i16, i16* %arrayidx50, align 2
  %50 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %50 to i64
  %51 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts52 = getelementptr inbounds %struct.shifts, %struct.shifts* %51, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts52, i32 0, i64 %idxprom51
  store i16 %49, i16* %arrayidx53, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %54 = load %struct.shifts*, %struct.shifts** %sp1, align 8
  %next54 = getelementptr inbounds %struct.shifts, %struct.shifts* %54, i32 0, i32 0
  store %struct.shifts* %53, %struct.shifts** %next54, align 8
  %55 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool55 = icmp ne %struct.shifts* %55, null
  br i1 %tobool55, label %if.then.56, label %if.end

if.then.56:                                       ; preds = %for.end
  %56 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %57 = bitcast %struct.shifts* %56 to i8*
  call void @free(i8* %57) #3
  br label %if.end

if.end:                                           ; preds = %if.then.56, %for.end
  br label %if.end.69

if.else:                                          ; preds = %while.end.26
  %call57 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %58 = bitcast i8* %call57 to %struct.shifts*
  store %struct.shifts* %58, %struct.shifts** %sp2, align 8
  %59 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %60 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %next58 = getelementptr inbounds %struct.shifts, %struct.shifts* %60, i32 0, i32 0
  store %struct.shifts* %59, %struct.shifts** %next58, align 8
  %61 = load i32, i32* %k, align 4
  %conv59 = trunc i32 %61 to i16
  %62 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %number60 = getelementptr inbounds %struct.shifts, %struct.shifts* %62, i32 0, i32 1
  store i16 %conv59, i16* %number60, align 2
  %63 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %nshifts61 = getelementptr inbounds %struct.shifts, %struct.shifts* %63, i32 0, i32 2
  store i16 1, i16* %nshifts61, align 2
  %64 = load i32, i32* @nstates, align 4
  %conv62 = trunc i32 %64 to i16
  %65 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts63 = getelementptr inbounds %struct.shifts, %struct.shifts* %65, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts63, i32 0, i64 0
  store i16 %conv62, i16* %arrayidx64, align 2
  %66 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %67 = load %struct.shifts*, %struct.shifts** %sp1, align 8
  %next65 = getelementptr inbounds %struct.shifts, %struct.shifts* %67, i32 0, i32 0
  store %struct.shifts* %66, %struct.shifts** %next65, align 8
  %68 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool66 = icmp ne %struct.shifts* %68, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.else
  %69 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  store %struct.shifts* %69, %struct.shifts** @last_shift, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end
  br label %if.end.125

if.else.70:                                       ; preds = %while.end
  %70 = load %struct.core*, %struct.core** %statep, align 8
  %number71 = getelementptr inbounds %struct.core, %struct.core* %70, i32 0, i32 2
  %71 = load i16, i16* %number71, align 2
  %conv72 = sext i16 %71 to i32
  store i32 %conv72, i32* %k, align 4
  %72 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %72, %struct.shifts** %sp, align 8
  %73 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts73 = getelementptr inbounds %struct.shifts, %struct.shifts* %73, i32 0, i32 2
  %74 = load i16, i16* %nshifts73, align 2
  %conv74 = sext i16 %74 to i64
  %mul75 = mul i64 %conv74, 2
  %add76 = add i64 16, %mul75
  %conv77 = trunc i64 %add76 to i32
  %call78 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv77)
  %75 = bitcast i8* %call78 to %struct.shifts*
  store %struct.shifts* %75, %struct.shifts** %sp2, align 8
  %76 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next79 = getelementptr inbounds %struct.shifts, %struct.shifts* %76, i32 0, i32 0
  %77 = load %struct.shifts*, %struct.shifts** %next79, align 8
  %78 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %next80 = getelementptr inbounds %struct.shifts, %struct.shifts* %78, i32 0, i32 0
  store %struct.shifts* %77, %struct.shifts** %next80, align 8
  %79 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts81 = getelementptr inbounds %struct.shifts, %struct.shifts* %79, i32 0, i32 2
  %80 = load i16, i16* %nshifts81, align 2
  %conv82 = sext i16 %80 to i32
  %add83 = add nsw i32 %conv82, 1
  %conv84 = trunc i32 %add83 to i16
  %81 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %nshifts85 = getelementptr inbounds %struct.shifts, %struct.shifts* %81, i32 0, i32 2
  store i16 %conv84, i16* %nshifts85, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %if.else.70
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %k, align 4
  %cmp87 = icmp slt i32 %82, %83
  br i1 %cmp87, label %for.body.89, label %for.end.97

for.body.89:                                      ; preds = %for.cond.86
  %84 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %84 to i64
  %85 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts91 = getelementptr inbounds %struct.shifts, %struct.shifts* %85, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts91, i32 0, i64 %idxprom90
  %86 = load i16, i16* %arrayidx92, align 2
  %87 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %87 to i64
  %88 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts94 = getelementptr inbounds %struct.shifts, %struct.shifts* %88, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts94, i32 0, i64 %idxprom93
  store i16 %86, i16* %arrayidx95, align 2
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %89 = load i32, i32* %i, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.86

for.end.97:                                       ; preds = %for.cond.86
  %90 = load i32, i32* @nstates, align 4
  %conv98 = trunc i32 %90 to i16
  %91 = load i32, i32* %k, align 4
  %idxprom99 = sext i32 %91 to i64
  %92 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts100 = getelementptr inbounds %struct.shifts, %struct.shifts* %92, i32 0, i32 3
  %arrayidx101 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts100, i32 0, i64 %idxprom99
  store i16 %conv98, i16* %arrayidx101, align 2
  %93 = load i32, i32* %k, align 4
  store i32 %93, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.115, %for.end.97
  %94 = load i32, i32* %i, align 4
  %95 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts103 = getelementptr inbounds %struct.shifts, %struct.shifts* %95, i32 0, i32 2
  %96 = load i16, i16* %nshifts103, align 2
  %conv104 = sext i16 %96 to i32
  %cmp105 = icmp slt i32 %94, %conv104
  br i1 %cmp105, label %for.body.107, label %for.end.117

for.body.107:                                     ; preds = %for.cond.102
  %97 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts109 = getelementptr inbounds %struct.shifts, %struct.shifts* %98, i32 0, i32 3
  %arrayidx110 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts109, i32 0, i64 %idxprom108
  %99 = load i16, i16* %arrayidx110, align 2
  %100 = load i32, i32* %i, align 4
  %add111 = add nsw i32 %100, 1
  %idxprom112 = sext i32 %add111 to i64
  %101 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  %shifts113 = getelementptr inbounds %struct.shifts, %struct.shifts* %101, i32 0, i32 3
  %arrayidx114 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts113, i32 0, i64 %idxprom112
  store i16 %99, i16* %arrayidx114, align 2
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.107
  %102 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %102, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.102

for.end.117:                                      ; preds = %for.cond.102
  %103 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  store %struct.shifts* %103, %struct.shifts** @first_shift, align 8
  %104 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %105 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %cmp118 = icmp eq %struct.shifts* %104, %105
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %for.end.117
  %106 = load %struct.shifts*, %struct.shifts** %sp2, align 8
  store %struct.shifts* %106, %struct.shifts** @last_shift, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %for.end.117
  %107 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool122 = icmp ne %struct.shifts* %107, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.121
  %108 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %109 = bitcast %struct.shifts* %108 to i8*
  call void @free(i8* %109) #3
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.121
  call void @insert_start_shift()
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.69
  br label %if.end.133

if.else.126:                                      ; preds = %if.then
  %call127 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %110 = bitcast i8* %call127 to %struct.shifts*
  store %struct.shifts* %110, %struct.shifts** %sp, align 8
  %111 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  %112 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next128 = getelementptr inbounds %struct.shifts, %struct.shifts* %112, i32 0, i32 0
  store %struct.shifts* %111, %struct.shifts** %next128, align 8
  %113 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts129 = getelementptr inbounds %struct.shifts, %struct.shifts* %113, i32 0, i32 2
  store i16 1, i16* %nshifts129, align 2
  %114 = load i32, i32* @nstates, align 4
  %conv130 = trunc i32 %114 to i16
  %115 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts131 = getelementptr inbounds %struct.shifts, %struct.shifts* %115, i32 0, i32 3
  %arrayidx132 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts131, i32 0, i64 0
  store i16 %conv130, i16* %arrayidx132, align 2
  %116 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %116, %struct.shifts** @first_shift, align 8
  call void @insert_start_shift()
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.126, %if.end.125
  br label %if.end.140

if.else.134:                                      ; preds = %entry
  %call135 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %117 = bitcast i8* %call135 to %struct.shifts*
  store %struct.shifts* %117, %struct.shifts** %sp, align 8
  %118 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts136 = getelementptr inbounds %struct.shifts, %struct.shifts* %118, i32 0, i32 2
  store i16 1, i16* %nshifts136, align 2
  %119 = load i32, i32* @nstates, align 4
  %conv137 = trunc i32 %119 to i16
  %120 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts138 = getelementptr inbounds %struct.shifts, %struct.shifts* %120, i32 0, i32 3
  %arrayidx139 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts138, i32 0, i64 0
  store i16 %conv137, i16* %arrayidx139, align 2
  %121 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %121, %struct.shifts** @first_shift, align 8
  %122 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %122, %struct.shifts** @last_shift, align 8
  call void @insert_start_shift()
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.134, %if.end.133
  %call141 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 22)
  %123 = bitcast i8* %call141 to %struct.core*
  store %struct.core* %123, %struct.core** %statep, align 8
  %124 = load i32, i32* @nstates, align 4
  %conv142 = trunc i32 %124 to i16
  %125 = load %struct.core*, %struct.core** %statep, align 8
  %number143 = getelementptr inbounds %struct.core, %struct.core* %125, i32 0, i32 2
  store i16 %conv142, i16* %number143, align 2
  %126 = load %struct.core*, %struct.core** %statep, align 8
  %127 = load %struct.core*, %struct.core** @last_state, align 8
  %next144 = getelementptr inbounds %struct.core, %struct.core* %127, i32 0, i32 0
  store %struct.core* %126, %struct.core** %next144, align 8
  %128 = load %struct.core*, %struct.core** %statep, align 8
  store %struct.core* %128, %struct.core** @last_state, align 8
  %call145 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %129 = bitcast i8* %call145 to %struct.shifts*
  store %struct.shifts* %129, %struct.shifts** %sp, align 8
  %130 = load i32, i32* @nstates, align 4
  %inc146 = add nsw i32 %130, 1
  store i32 %inc146, i32* @nstates, align 4
  %conv147 = trunc i32 %130 to i16
  %131 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number148 = getelementptr inbounds %struct.shifts, %struct.shifts* %131, i32 0, i32 1
  store i16 %conv147, i16* %number148, align 2
  %132 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts149 = getelementptr inbounds %struct.shifts, %struct.shifts* %132, i32 0, i32 2
  store i16 1, i16* %nshifts149, align 2
  %133 = load i32, i32* @nstates, align 4
  %conv150 = trunc i32 %133 to i16
  %134 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts151 = getelementptr inbounds %struct.shifts, %struct.shifts* %134, i32 0, i32 3
  %arrayidx152 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts151, i32 0, i64 0
  store i16 %conv150, i16* %arrayidx152, align 2
  %135 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %136 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %next153 = getelementptr inbounds %struct.shifts, %struct.shifts* %136, i32 0, i32 0
  store %struct.shifts* %135, %struct.shifts** %next153, align 8
  %137 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %137, %struct.shifts** @last_shift, align 8
  %138 = load i32, i32* @nstates, align 4
  store i32 %138, i32* @final_state, align 4
  %call154 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 22)
  %139 = bitcast i8* %call154 to %struct.core*
  store %struct.core* %139, %struct.core** %statep, align 8
  %140 = load i32, i32* @nstates, align 4
  %inc155 = add nsw i32 %140, 1
  store i32 %inc155, i32* @nstates, align 4
  %conv156 = trunc i32 %140 to i16
  %141 = load %struct.core*, %struct.core** %statep, align 8
  %number157 = getelementptr inbounds %struct.core, %struct.core* %141, i32 0, i32 2
  store i16 %conv156, i16* %number157, align 2
  %142 = load %struct.core*, %struct.core** %statep, align 8
  %143 = load %struct.core*, %struct.core** @last_state, align 8
  %next158 = getelementptr inbounds %struct.core, %struct.core* %143, i32 0, i32 0
  store %struct.core* %142, %struct.core** %next158, align 8
  %144 = load %struct.core*, %struct.core** %statep, align 8
  store %struct.core* %144, %struct.core** @last_state, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_state(i32 %symbol) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %isp1 = alloca i16*, align 8
  %isp2 = alloca i16*, align 8
  %iend = alloca i16*, align 8
  %sp = alloca %struct.core*, align 8
  %found = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16**, i16*** @kernel_base, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  store i16* %2, i16** %isp1, align 8
  %3 = load i32, i32* %symbol.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16**, i16*** @kernel_end, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %4, i64 %idxprom1
  %5 = load i16*, i16** %arrayidx2, align 8
  store i16* %5, i16** %iend, align 8
  %6 = load i16*, i16** %iend, align 8
  %7 = load i16*, i16** %isp1, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* %key, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i16*, i16** %isp1, align 8
  %9 = load i16*, i16** %iend, align 8
  %cmp = icmp ult i16* %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16*, i16** %isp1, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr, i16** %isp1, align 8
  %11 = load i16, i16* %10, align 2
  %conv4 = sext i16 %11 to i32
  %12 = load i32, i32* %key, align 4
  %add = add nsw i32 %12, %conv4
  store i32 %add, i32* %key, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %key, align 4
  %rem = srem i32 %13, 1009
  store i32 %rem, i32* %key, align 4
  %14 = load i32, i32* %key, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct.core**, %struct.core*** @state_table, align 8
  %arrayidx6 = getelementptr inbounds %struct.core*, %struct.core** %15, i64 %idxprom5
  %16 = load %struct.core*, %struct.core** %arrayidx6, align 8
  store %struct.core* %16, %struct.core** %sp, align 8
  %17 = load %struct.core*, %struct.core** %sp, align 8
  %tobool = icmp ne %struct.core* %17, null
  br i1 %tobool, label %if.then, label %if.else.39

if.then:                                          ; preds = %while.end
  store i32 0, i32* %found, align 4
  br label %while.cond.7

while.cond.7:                                     ; preds = %if.end.37, %if.then
  %18 = load i32, i32* %found, align 4
  %tobool8 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body.9, label %while.end.38

while.body.9:                                     ; preds = %while.cond.7
  %19 = load %struct.core*, %struct.core** %sp, align 8
  %nitems = getelementptr inbounds %struct.core, %struct.core* %19, i32 0, i32 4
  %20 = load i16, i16* %nitems, align 2
  %conv10 = sext i16 %20 to i32
  %21 = load i32, i32* %n, align 4
  %cmp11 = icmp eq i32 %conv10, %21
  br i1 %cmp11, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %while.body.9
  store i32 1, i32* %found, align 4
  %22 = load i32, i32* %symbol.addr, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load i16**, i16*** @kernel_base, align 8
  %arrayidx15 = getelementptr inbounds i16*, i16** %23, i64 %idxprom14
  %24 = load i16*, i16** %arrayidx15, align 8
  store i16* %24, i16** %isp1, align 8
  %25 = load %struct.core*, %struct.core** %sp, align 8
  %items = getelementptr inbounds %struct.core, %struct.core* %25, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %items, i32 0, i32 0
  store i16* %arraydecay, i16** %isp2, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end, %if.then.13
  %26 = load i32, i32* %found, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.16
  %27 = load i16*, i16** %isp1, align 8
  %28 = load i16*, i16** %iend, align 8
  %cmp18 = icmp ult i16* %27, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.16
  %29 = phi i1 [ false, %while.cond.16 ], [ %cmp18, %land.rhs ]
  br i1 %29, label %while.body.20, label %while.end.28

while.body.20:                                    ; preds = %land.end
  %30 = load i16*, i16** %isp1, align 8
  %incdec.ptr21 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr21, i16** %isp1, align 8
  %31 = load i16, i16* %30, align 2
  %conv22 = sext i16 %31 to i32
  %32 = load i16*, i16** %isp2, align 8
  %incdec.ptr23 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr23, i16** %isp2, align 8
  %33 = load i16, i16* %32, align 2
  %conv24 = sext i16 %33 to i32
  %cmp25 = icmp ne i32 %conv22, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %while.body.20
  store i32 0, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %while.body.20
  br label %while.cond.16

while.end.28:                                     ; preds = %land.end
  br label %if.end.29

if.end.29:                                        ; preds = %while.end.28, %while.body.9
  %34 = load i32, i32* %found, align 4
  %tobool30 = icmp ne i32 %34, 0
  br i1 %tobool30, label %if.end.37, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  %35 = load %struct.core*, %struct.core** %sp, align 8
  %link = getelementptr inbounds %struct.core, %struct.core* %35, i32 0, i32 1
  %36 = load %struct.core*, %struct.core** %link, align 8
  %tobool32 = icmp ne %struct.core* %36, null
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.31
  %37 = load %struct.core*, %struct.core** %sp, align 8
  %link34 = getelementptr inbounds %struct.core, %struct.core* %37, i32 0, i32 1
  %38 = load %struct.core*, %struct.core** %link34, align 8
  store %struct.core* %38, %struct.core** %sp, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.then.31
  %39 = load i32, i32* %symbol.addr, align 4
  %call = call %struct.core* @new_state(i32 %39)
  %40 = load %struct.core*, %struct.core** %sp, align 8
  %link35 = getelementptr inbounds %struct.core, %struct.core* %40, i32 0, i32 1
  store %struct.core* %call, %struct.core** %link35, align 8
  store %struct.core* %call, %struct.core** %sp, align 8
  store i32 1, i32* %found, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.29
  br label %while.cond.7

while.end.38:                                     ; preds = %while.cond.7
  br label %if.end.43

if.else.39:                                       ; preds = %while.end
  %41 = load i32, i32* %symbol.addr, align 4
  %call40 = call %struct.core* @new_state(i32 %41)
  store %struct.core* %call40, %struct.core** %sp, align 8
  %42 = load i32, i32* %key, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load %struct.core**, %struct.core*** @state_table, align 8
  %arrayidx42 = getelementptr inbounds %struct.core*, %struct.core** %43, i64 %idxprom41
  store %struct.core* %call40, %struct.core** %arrayidx42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.39, %while.end.38
  %44 = load %struct.core*, %struct.core** %sp, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %44, i32 0, i32 2
  %45 = load i16, i16* %number, align 2
  %conv44 = sext i16 %45 to i32
  ret i32 %conv44
}

; Function Attrs: nounwind uwtable
define %struct.core* @new_state(i32 %symbol) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca %struct.core*, align 8
  %isp1 = alloca i16*, align 8
  %isp2 = alloca i16*, align 8
  %iend = alloca i16*, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* @nstates, align 4
  %cmp = icmp sge i32 %0, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @toomany(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16**, i16*** @kernel_base, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %2, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  store i16* %3, i16** %isp1, align 8
  %4 = load i32, i32* %symbol.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i16**, i16*** @kernel_end, align 8
  %arrayidx2 = getelementptr inbounds i16*, i16** %5, i64 %idxprom1
  %6 = load i16*, i16** %arrayidx2, align 8
  store i16* %6, i16** %iend, align 8
  %7 = load i16*, i16** %iend, align 8
  %8 = load i16*, i16** %isp1, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %n, align 4
  %9 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %9, 1
  %conv3 = sext i32 %sub to i64
  %mul = mul i64 %conv3, 2
  %add = add i64 24, %mul
  %conv4 = trunc i64 %add to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %10 = bitcast i8* %call to %struct.core*
  store %struct.core* %10, %struct.core** %p, align 8
  %11 = load i32, i32* %symbol.addr, align 4
  %conv5 = trunc i32 %11 to i16
  %12 = load %struct.core*, %struct.core** %p, align 8
  %accessing_symbol = getelementptr inbounds %struct.core, %struct.core* %12, i32 0, i32 3
  store i16 %conv5, i16* %accessing_symbol, align 2
  %13 = load i32, i32* @nstates, align 4
  %conv6 = trunc i32 %13 to i16
  %14 = load %struct.core*, %struct.core** %p, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %14, i32 0, i32 2
  store i16 %conv6, i16* %number, align 2
  %15 = load i32, i32* %n, align 4
  %conv7 = trunc i32 %15 to i16
  %16 = load %struct.core*, %struct.core** %p, align 8
  %nitems = getelementptr inbounds %struct.core, %struct.core* %16, i32 0, i32 4
  store i16 %conv7, i16* %nitems, align 2
  %17 = load %struct.core*, %struct.core** %p, align 8
  %items = getelementptr inbounds %struct.core, %struct.core* %17, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %items, i32 0, i32 0
  store i16* %arraydecay, i16** %isp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load i16*, i16** %isp1, align 8
  %19 = load i16*, i16** %iend, align 8
  %cmp8 = icmp ult i16* %18, %19
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i16*, i16** %isp1, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** %isp1, align 8
  %21 = load i16, i16* %20, align 2
  %22 = load i16*, i16** %isp2, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr10, i16** %isp2, align 8
  store i16 %21, i16* %22, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.core*, %struct.core** %p, align 8
  %24 = load %struct.core*, %struct.core** @last_state, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %24, i32 0, i32 0
  store %struct.core* %23, %struct.core** %next, align 8
  %25 = load %struct.core*, %struct.core** %p, align 8
  store %struct.core* %25, %struct.core** @last_state, align 8
  %26 = load i32, i32* @nstates, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @nstates, align 4
  %27 = load %struct.core*, %struct.core** %p, align 8
  ret %struct.core* %27
}

declare void @toomany(i8*) #1

; Function Attrs: nounwind uwtable
define void @insert_start_shift() #0 {
entry:
  %statep = alloca %struct.core*, align 8
  %sp = alloca %struct.shifts*, align 8
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 22)
  %0 = bitcast i8* %call to %struct.core*
  store %struct.core* %0, %struct.core** %statep, align 8
  %1 = load i32, i32* @nstates, align 4
  %conv = trunc i32 %1 to i16
  %2 = load %struct.core*, %struct.core** %statep, align 8
  %number = getelementptr inbounds %struct.core, %struct.core* %2, i32 0, i32 2
  store i16 %conv, i16* %number, align 2
  %3 = load i32, i32* @start_symbol, align 4
  %conv1 = trunc i32 %3 to i16
  %4 = load %struct.core*, %struct.core** %statep, align 8
  %accessing_symbol = getelementptr inbounds %struct.core, %struct.core* %4, i32 0, i32 3
  store i16 %conv1, i16* %accessing_symbol, align 2
  %5 = load %struct.core*, %struct.core** %statep, align 8
  %6 = load %struct.core*, %struct.core** @last_state, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %6, i32 0, i32 0
  store %struct.core* %5, %struct.core** %next, align 8
  %7 = load %struct.core*, %struct.core** %statep, align 8
  store %struct.core* %7, %struct.core** @last_state, align 8
  %call2 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 16)
  %8 = bitcast i8* %call2 to %struct.shifts*
  store %struct.shifts* %8, %struct.shifts** %sp, align 8
  %9 = load i32, i32* @nstates, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @nstates, align 4
  %conv3 = trunc i32 %9 to i16
  %10 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %number4 = getelementptr inbounds %struct.shifts, %struct.shifts* %10, i32 0, i32 1
  store i16 %conv3, i16* %number4, align 2
  %11 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %11, i32 0, i32 2
  store i16 1, i16* %nshifts, align 2
  %12 = load i32, i32* @nstates, align 4
  %conv5 = trunc i32 %12 to i16
  %13 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %13, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 0
  store i16 %conv5, i16* %arrayidx, align 2
  %14 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %15 = load %struct.shifts*, %struct.shifts** @last_shift, align 8
  %next6 = getelementptr inbounds %struct.shifts, %struct.shifts* %15, i32 0, i32 0
  store %struct.shifts* %14, %struct.shifts** %next6, align 8
  %16 = load %struct.shifts*, %struct.shifts** %sp, align 8
  store %struct.shifts* %16, %struct.shifts** @last_shift, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
