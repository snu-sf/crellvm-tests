; ModuleID = './MultiSource.Benchmarks.Prolangs-C/274.bison.closure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itemset = common global i16* null, align 8
@nrules = external global i32, align 4
@rulesetsize = internal global i32 0, align 4
@ruleset = internal global i32* null, align 8
@nvars = external global i32, align 4
@ntokens = external global i32, align 4
@fderives = internal global i32* null, align 8
@nsyms = external global i32, align 4
@firsts = internal global i32* null, align 8
@varsetsize = internal global i32 0, align 4
@derives = external global i16**, align 8
@rrhs = external global i16*, align 8
@ritem = external global i16*, align 8
@start_symbol = external global i32, align 4
@itemsetend = common global i16* null, align 8

; Function Attrs: nounwind uwtable
define void @initialize_closure(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @itemset, align 8
  %2 = load i32, i32* @nrules, align 4
  %add = add nsw i32 %2, 1
  %add2 = add nsw i32 %add, 31
  %div = sdiv i32 %add2, 32
  store i32 %div, i32* @rulesetsize, align 4
  %3 = load i32, i32* @rulesetsize, align 4
  %conv3 = sext i32 %3 to i64
  %mul4 = mul i64 %conv3, 4
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv5)
  %4 = bitcast i8* %call6 to i32*
  store i32* %4, i32** @ruleset, align 8
  call void @set_fderives()
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind uwtable
define void @set_fderives() #0 {
entry:
  %rrow = alloca i32*, align 8
  %vrow = alloca i32*, align 8
  %j = alloca i32, align 4
  %mask = alloca i32, align 4
  %cword = alloca i32, align 4
  %rp = alloca i16*, align 8
  %ruleno = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @nvars, align 4
  %1 = load i32, i32* @rulesetsize, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %conv2 = trunc i64 %mul1 to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv2)
  %2 = bitcast i8* %call to i32*
  %3 = load i32, i32* @ntokens, align 4
  %4 = load i32, i32* @rulesetsize, align 4
  %mul3 = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.neg
  store i32* %add.ptr, i32** @fderives, align 8
  call void @set_firsts()
  %5 = load i32*, i32** @fderives, align 8
  %6 = load i32, i32* @ntokens, align 4
  %7 = load i32, i32* @rulesetsize, align 4
  %mul4 = mul nsw i32 %6, %7
  %idx.ext5 = sext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %5, i64 %idx.ext5
  store i32* %add.ptr6, i32** %rrow, align 8
  %8 = load i32, i32* @ntokens, align 4
  store i32 %8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @nsyms, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** @firsts, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @ntokens, align 4
  %sub = sub nsw i32 %12, %13
  %14 = load i32, i32* @varsetsize, align 4
  %mul8 = mul nsw i32 %sub, %14
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds i32, i32* %11, i64 %idx.ext9
  store i32* %add.ptr10, i32** %vrow, align 8
  %15 = load i32*, i32** %vrow, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %vrow, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %cword, align 4
  store i32 1, i32* %mask, align 4
  %17 = load i32, i32* @ntokens, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* @nsyms, align 4
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %20 = load i32, i32* %cword, align 4
  %21 = load i32, i32* %mask, align 4
  %and = and i32 %20, %21
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %22 = load i32, i32* %j, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i16**, i16*** @derives, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %23, i64 %idxprom
  %24 = load i16*, i16** %arrayidx, align 8
  store i16* %24, i16** %rp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %25 = load i16*, i16** %rp, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr15, i16** %rp, align 8
  %26 = load i16, i16* %25, align 2
  %conv16 = sext i16 %26 to i32
  store i32 %conv16, i32* %ruleno, align 4
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %ruleno, align 4
  %and19 = and i32 %27, 31
  %shl = shl i32 1, %and19
  %28 = load i32, i32* %ruleno, align 4
  %shr = ashr i32 %28, 5
  %idxprom20 = sext i32 %shr to i64
  %29 = load i32*, i32** %rrow, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %29, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  %or = or i32 %30, %shl
  store i32 %or, i32* %arrayidx21, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body.14
  %31 = load i32, i32* %mask, align 4
  %shl22 = shl i32 %31, 1
  store i32 %shl22, i32* %mask, align 4
  %32 = load i32, i32* %mask, align 4
  %cmp23 = icmp eq i32 %32, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end
  %33 = load i32, i32* %j, align 4
  %add = add nsw i32 %33, 1
  %34 = load i32, i32* @nsyms, align 4
  %cmp25 = icmp slt i32 %add, %34
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true
  %35 = load i32*, i32** %vrow, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr28, i32** %vrow, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %cword, align 4
  store i32 1, i32* %mask, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %38 = load i32, i32* @varsetsize, align 4
  %39 = load i32*, i32** %vrow, align 8
  %idx.ext30 = sext i32 %38 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %39, i64 %idx.ext30
  store i32* %add.ptr31, i32** %vrow, align 8
  %40 = load i32, i32* @rulesetsize, align 4
  %41 = load i32*, i32** %rrow, align 8
  %idx.ext32 = sext i32 %40 to i64
  %add.ptr33 = getelementptr inbounds i32, i32* %41, i64 %idx.ext32
  store i32* %add.ptr33, i32** %rrow, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %42 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %42, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %43 = load i32*, i32** @firsts, align 8
  %tobool37 = icmp ne i32* %43, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.36
  %44 = load i32*, i32** @firsts, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #3
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %for.end.36
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_firsts() #0 {
entry:
  %row = alloca i32*, align 8
  %symbol = alloca i32, align 4
  %sp = alloca i16*, align 8
  %rowsize = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @nvars, align 4
  %add = add nsw i32 %0, 31
  %div = sdiv i32 %add, 32
  store i32 %div, i32* %rowsize, align 4
  store i32 %div, i32* @varsetsize, align 4
  %1 = load i32, i32* @nvars, align 4
  %2 = load i32, i32* %rowsize, align 4
  %mul = mul nsw i32 %1, %2
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %conv2 = trunc i64 %mul1 to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv2)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** @firsts, align 8
  %4 = load i32*, i32** @firsts, align 8
  store i32* %4, i32** %row, align 8
  %5 = load i32, i32* @ntokens, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @nsyms, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16**, i16*** @derives, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %9, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  store i16* %10, i16** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %11 = load i16*, i16** %sp, align 8
  %12 = load i16, i16* %11, align 2
  %conv4 = sext i16 %12 to i32
  %cmp5 = icmp sge i32 %conv4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i16*, i16** %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8
  %14 = load i16, i16* %13, align 2
  %idxprom7 = sext i16 %14 to i64
  %15 = load i16*, i16** @rrhs, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %15, i64 %idxprom7
  %16 = load i16, i16* %arrayidx8, align 2
  %idxprom9 = sext i16 %16 to i64
  %17 = load i16*, i16** @ritem, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %17, i64 %idxprom9
  %18 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %18 to i32
  store i32 %conv11, i32* %symbol, align 4
  %19 = load i32, i32* %symbol, align 4
  %20 = load i32, i32* @ntokens, align 4
  %cmp12 = icmp sge i32 %19, %20
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %21 = load i32, i32* @ntokens, align 4
  %22 = load i32, i32* %symbol, align 4
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %symbol, align 4
  %23 = load i32, i32* %symbol, align 4
  %and = and i32 %23, 31
  %shl = shl i32 1, %and
  %24 = load i32, i32* %symbol, align 4
  %shr = ashr i32 %24, 5
  %idxprom14 = sext i32 %shr to i64
  %25 = load i32*, i32** %row, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %25, i64 %idxprom14
  %26 = load i32, i32* %arrayidx15, align 4
  %or = or i32 %26, %shl
  store i32 %or, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load i32, i32* %rowsize, align 4
  %28 = load i32*, i32** %row, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 %idx.ext
  store i32* %add.ptr, i32** %row, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32*, i32** @firsts, align 8
  %31 = load i32, i32* @nvars, align 4
  call void @RTC(i32* %30, i32 %31)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @RTC(i32*, i32) #1

; Function Attrs: nounwind uwtable
define void @closure(i16* %core, i32 %n) #0 {
entry:
  %core.addr = alloca i16*, align 8
  %n.addr = alloca i32, align 4
  %ruleno = alloca i32, align 4
  %word = alloca i32, align 4
  %mask = alloca i32, align 4
  %csp = alloca i16*, align 8
  %dsp = alloca i32*, align 8
  %rsp = alloca i32*, align 8
  %csend = alloca i16*, align 8
  %rsend = alloca i32*, align 8
  %symbol = alloca i32, align 4
  %itemno = alloca i32, align 4
  store i16* %core, i16** %core.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** @ruleset, align 8
  store i32* %0, i32** %rsp, align 8
  %1 = load i32*, i32** @ruleset, align 8
  %2 = load i32, i32* @rulesetsize, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  store i32* %add.ptr, i32** %rsend, align 8
  %3 = load i16*, i16** %core.addr, align 8
  %4 = load i32, i32* %n.addr, align 4
  %idx.ext1 = sext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %3, i64 %idx.ext1
  store i16* %add.ptr2, i16** %csend, align 8
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** @fderives, align 8
  %7 = load i32, i32* @start_symbol, align 4
  %8 = load i32, i32* @rulesetsize, align 4
  %mul = mul nsw i32 %7, %8
  %idx.ext3 = sext i32 %mul to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %6, i64 %idx.ext3
  store i32* %add.ptr4, i32** %dsp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i32*, i32** %rsp, align 8
  %10 = load i32*, i32** %rsend, align 8
  %cmp5 = icmp ult i32* %9, %10
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32*, i32** %dsp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %dsp, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %rsp, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr6, i32** %rsp, align 8
  store i32 %12, i32* %13, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.30

if.else:                                          ; preds = %entry
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %if.else
  %14 = load i32*, i32** %rsp, align 8
  %15 = load i32*, i32** %rsend, align 8
  %cmp8 = icmp ult i32* %14, %15
  br i1 %cmp8, label %while.body.9, label %while.end.11

while.body.9:                                     ; preds = %while.cond.7
  %16 = load i32*, i32** %rsp, align 8
  %incdec.ptr10 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr10, i32** %rsp, align 8
  store i32 0, i32* %16, align 4
  br label %while.cond.7

while.end.11:                                     ; preds = %while.cond.7
  %17 = load i16*, i16** %core.addr, align 8
  store i16* %17, i16** %csp, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end, %while.end.11
  %18 = load i16*, i16** %csp, align 8
  %19 = load i16*, i16** %csend, align 8
  %cmp13 = icmp ult i16* %18, %19
  br i1 %cmp13, label %while.body.14, label %while.end.29

while.body.14:                                    ; preds = %while.cond.12
  %20 = load i16*, i16** %csp, align 8
  %incdec.ptr15 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr15, i16** %csp, align 8
  %21 = load i16, i16* %20, align 2
  %idxprom = sext i16 %21 to i64
  %22 = load i16*, i16** @ritem, align 8
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %23 to i32
  store i32 %conv, i32* %symbol, align 4
  %24 = load i32, i32* %symbol, align 4
  %25 = load i32, i32* @ntokens, align 4
  %cmp16 = icmp sge i32 %24, %25
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %while.body.14
  %26 = load i32*, i32** @fderives, align 8
  %27 = load i32, i32* %symbol, align 4
  %28 = load i32, i32* @rulesetsize, align 4
  %mul19 = mul nsw i32 %27, %28
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, i32* %26, i64 %idx.ext20
  store i32* %add.ptr21, i32** %dsp, align 8
  %29 = load i32*, i32** @ruleset, align 8
  store i32* %29, i32** %rsp, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.then.18
  %30 = load i32*, i32** %rsp, align 8
  %31 = load i32*, i32** %rsend, align 8
  %cmp23 = icmp ult i32* %30, %31
  br i1 %cmp23, label %while.body.25, label %while.end.28

while.body.25:                                    ; preds = %while.cond.22
  %32 = load i32*, i32** %dsp, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %incdec.ptr26, i32** %dsp, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %rsp, align 8
  %incdec.ptr27 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr27, i32** %rsp, align 8
  %35 = load i32, i32* %34, align 4
  %or = or i32 %35, %33
  store i32 %or, i32* %34, align 4
  br label %while.cond.22

while.end.28:                                     ; preds = %while.cond.22
  br label %if.end

if.end:                                           ; preds = %while.end.28, %while.body.14
  br label %while.cond.12

while.end.29:                                     ; preds = %while.cond.12
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %while.end
  store i32 0, i32* %ruleno, align 4
  %36 = load i16*, i16** @itemset, align 8
  store i16* %36, i16** @itemsetend, align 8
  %37 = load i16*, i16** %core.addr, align 8
  store i16* %37, i16** %csp, align 8
  %38 = load i32*, i32** @ruleset, align 8
  store i32* %38, i32** %rsp, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %if.end.61, %if.end.30
  %39 = load i32*, i32** %rsp, align 8
  %40 = load i32*, i32** %rsend, align 8
  %cmp32 = icmp ult i32* %39, %40
  br i1 %cmp32, label %while.body.34, label %while.end.62

while.body.34:                                    ; preds = %while.cond.31
  %41 = load i32*, i32** %rsp, align 8
  %incdec.ptr35 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %incdec.ptr35, i32** %rsp, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %word, align 4
  %43 = load i32, i32* %word, align 4
  %cmp36 = icmp eq i32 %43, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %while.body.34
  %44 = load i32, i32* %ruleno, align 4
  %add = add nsw i32 %44, 32
  store i32 %add, i32* %ruleno, align 4
  br label %if.end.61

if.else.39:                                       ; preds = %while.body.34
  store i32 1, i32* %mask, align 4
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.59, %if.else.39
  %45 = load i32, i32* %mask, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %while.body.41, label %while.end.60

while.body.41:                                    ; preds = %while.cond.40
  %46 = load i32, i32* %word, align 4
  %47 = load i32, i32* %mask, align 4
  %and = and i32 %46, %47
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %while.body.41
  %48 = load i32, i32* %ruleno, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load i16*, i16** @rrhs, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %49, i64 %idxprom44
  %50 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %50 to i32
  store i32 %conv46, i32* %itemno, align 4
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.53, %if.then.43
  %51 = load i16*, i16** %csp, align 8
  %52 = load i16*, i16** %csend, align 8
  %cmp48 = icmp ult i16* %51, %52
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.47
  %53 = load i16*, i16** %csp, align 8
  %54 = load i16, i16* %53, align 2
  %conv50 = sext i16 %54 to i32
  %55 = load i32, i32* %itemno, align 4
  %cmp51 = icmp slt i32 %conv50, %55
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.47
  %56 = phi i1 [ false, %while.cond.47 ], [ %cmp51, %land.rhs ]
  br i1 %56, label %while.body.53, label %while.end.56

while.body.53:                                    ; preds = %land.end
  %57 = load i16*, i16** %csp, align 8
  %incdec.ptr54 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %incdec.ptr54, i16** %csp, align 8
  %58 = load i16, i16* %57, align 2
  %59 = load i16*, i16** @itemsetend, align 8
  %incdec.ptr55 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr55, i16** @itemsetend, align 8
  store i16 %58, i16* %59, align 2
  br label %while.cond.47

while.end.56:                                     ; preds = %land.end
  %60 = load i32, i32* %itemno, align 4
  %conv57 = trunc i32 %60 to i16
  %61 = load i16*, i16** @itemsetend, align 8
  %incdec.ptr58 = getelementptr inbounds i16, i16* %61, i32 1
  store i16* %incdec.ptr58, i16** @itemsetend, align 8
  store i16 %conv57, i16* %61, align 2
  br label %if.end.59

if.end.59:                                        ; preds = %while.end.56, %while.body.41
  %62 = load i32, i32* %mask, align 4
  %shl = shl i32 %62, 1
  store i32 %shl, i32* %mask, align 4
  %63 = load i32, i32* %ruleno, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %ruleno, align 4
  br label %while.cond.40

while.end.60:                                     ; preds = %while.cond.40
  br label %if.end.61

if.end.61:                                        ; preds = %while.end.60, %if.then.38
  br label %while.cond.31

while.end.62:                                     ; preds = %while.cond.31
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.66, %while.end.62
  %64 = load i16*, i16** %csp, align 8
  %65 = load i16*, i16** %csend, align 8
  %cmp64 = icmp ult i16* %64, %65
  br i1 %cmp64, label %while.body.66, label %while.end.69

while.body.66:                                    ; preds = %while.cond.63
  %66 = load i16*, i16** %csp, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %incdec.ptr67, i16** %csp, align 8
  %67 = load i16, i16* %66, align 2
  %68 = load i16*, i16** @itemsetend, align 8
  %incdec.ptr68 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %incdec.ptr68, i16** @itemsetend, align 8
  store i16 %67, i16* %68, align 2
  br label %while.cond.63

while.end.69:                                     ; preds = %while.cond.63
  ret void
}

; Function Attrs: nounwind uwtable
define void @finalize_closure() #0 {
entry:
  %0 = load i16*, i16** @itemset, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** @itemset, align 8
  %2 = bitcast i16* %1 to i8*
  call void @free(i8* %2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** @ruleset, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32*, i32** @ruleset, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32*, i32** @fderives, align 8
  %7 = load i32, i32* @ntokens, align 4
  %8 = load i32, i32* @rulesetsize, align 4
  %mul = mul nsw i32 %7, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  %tobool4 = icmp ne i32* %add.ptr, null
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %9 = load i32*, i32** @fderives, align 8
  %10 = load i32, i32* @ntokens, align 4
  %11 = load i32, i32* @rulesetsize, align 4
  %mul6 = mul nsw i32 %10, %11
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %9, i64 %idx.ext7
  %12 = bitcast i32* %add.ptr8 to i8*
  call void @free(i8* %12) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end.3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
