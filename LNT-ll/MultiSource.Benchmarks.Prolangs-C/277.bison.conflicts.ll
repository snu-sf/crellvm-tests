; ModuleID = './MultiSource.Benchmarks.Prolangs-C/277.bison.conflicts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errs = type { i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@nstates = external global i32, align 4
@conflicts = common global i8* null, align 8
@tokensetsize = external global i32, align 4
@shiftset = internal global i32* null, align 8
@lookaheadset = internal global i32* null, align 8
@err_table = common global %struct.errs** null, align 8
@any_conflicts = common global i8 0, align 1
@consistent = external global i8*, align 8
@shift_table = external global %struct.shifts**, align 8
@accessing_symbol = external global i16*, align 8
@ntokens = external global i32, align 4
@lookaheads = external global i16*, align 8
@LAruleno = external global i16*, align 8
@rprec = external global i16*, align 8
@LA = external global i32*, align 8
@sprec = external global i16*, align 8
@verboseflag = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@sassoc = external global i16*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"an error\00", align 1
@foutput = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"Conflict in state %d between rule %d and token %s resolved as %s.\0A\00", align 1
@tags = external global i8**, align 8
@src_total = internal global i32 0, align 4
@rrc_total = internal global i32 0, align 4
@src_count = internal global i32 0, align 4
@rrc_count = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"State %d contains\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" 1 shift/reduce conflict\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" %d shift/reduce conflicts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" 1 reduce/reduce conflict\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" %d reduce/reduce conflicts\00", align 1
@expected_conflicts = common global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"%s contains\00", align 1
@infile = external global i8*, align 8
@error_token_number = external global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"    %-4s\09[reduce  %d  (%s)]\0A\00", align 1
@rlhs = external global i16*, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"    %-4s\09reduce  %d  (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"    $default\09reduce  %d  (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @initialize_conflicts() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  store i8* %call, i8** @conflicts, align 8
  %1 = load i32, i32* @tokensetsize, align 4
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 %conv2, 4
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %2 = bitcast i8* %call5 to i32*
  store i32* %2, i32** @shiftset, align 8
  %3 = load i32, i32* @tokensetsize, align 4
  %conv6 = sext i32 %3 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv8)
  %4 = bitcast i8* %call9 to i32*
  store i32* %4, i32** @lookaheadset, align 8
  %5 = load i32, i32* @nstates, align 4
  %conv10 = sext i32 %5 to i64
  %mul11 = mul i64 %conv10, 8
  %conv12 = trunc i64 %mul11 to i32
  %call13 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv12)
  %6 = bitcast i8* %call13 to %struct.errs**
  store %struct.errs** %6, %struct.errs*** @err_table, align 8
  store i8 0, i8* @any_conflicts, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  call void @set_conflicts(i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind uwtable
define void @set_conflicts(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %shiftp = alloca %struct.shifts*, align 8
  %fp2 = alloca i32*, align 8
  %fp3 = alloca i32*, align 8
  %fp4 = alloca i32*, align 8
  %fp1 = alloca i32*, align 8
  %symbol = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** @consistent, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.88

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @tokensetsize, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** @lookaheadset, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %state.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.shifts*, %struct.shifts** %9, i64 %idxprom3
  %10 = load %struct.shifts*, %struct.shifts** %arrayidx4, align 8
  store %struct.shifts* %10, %struct.shifts** %shiftp, align 8
  %11 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool5 = icmp ne %struct.shifts* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %for.end
  %12 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %12, i32 0, i32 2
  %13 = load i16, i16* %nshifts, align 2
  %conv = sext i16 %13 to i32
  store i32 %conv, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.22, %if.then.6
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body.10, label %for.end.24

for.body.10:                                      ; preds = %for.cond.7
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom11
  %18 = load i16, i16* %arrayidx12, align 2
  %idxprom13 = sext i16 %18 to i64
  %19 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %19, i64 %idxprom13
  %20 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %20 to i32
  store i32 %conv15, i32* %symbol, align 4
  %21 = load i32, i32* %symbol, align 4
  %22 = load i32, i32* @ntokens, align 4
  %cmp16 = icmp sge i32 %21, %22
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.10
  br label %for.end.24

if.end.19:                                        ; preds = %for.body.10
  %23 = load i32, i32* %symbol, align 4
  %and = and i32 %23, 31
  %shl = shl i32 1, %and
  %24 = load i32, i32* %symbol, align 4
  %shr = ashr i32 %24, 5
  %idxprom20 = sext i32 %shr to i64
  %25 = load i32*, i32** @lookaheadset, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 %idxprom20
  %26 = load i32, i32* %arrayidx21, align 4
  %or = or i32 %26, %shl
  store i32 %or, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.19
  %27 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %27, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.7

for.end.24:                                       ; preds = %if.then.18, %for.cond.7
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %for.end
  %28 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %28, 1
  %idxprom26 = sext i32 %add to i64
  %29 = load i16*, i16** @lookaheads, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %29, i64 %idxprom26
  %30 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %30 to i32
  store i32 %conv28, i32* %k, align 4
  %31 = load i32*, i32** @lookaheadset, align 8
  %32 = load i32, i32* @tokensetsize, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i32, i32* %31, i64 %idx.ext
  store i32* %add.ptr, i32** %fp4, align 8
  %33 = load i32, i32* %state.addr, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load i16*, i16** @lookaheads, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %34, i64 %idxprom29
  %35 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %35 to i32
  store i32 %conv31, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.52, %if.end.25
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %k, align 4
  %cmp33 = icmp slt i32 %36, %37
  br i1 %cmp33, label %for.body.35, label %for.end.54

for.body.35:                                      ; preds = %for.cond.32
  %38 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load i16*, i16** @LAruleno, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %39, i64 %idxprom36
  %40 = load i16, i16* %arrayidx37, align 2
  %idxprom38 = sext i16 %40 to i64
  %41 = load i16*, i16** @rprec, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %41, i64 %idxprom38
  %42 = load i16, i16* %arrayidx39, align 2
  %tobool40 = icmp ne i16 %42, 0
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %for.body.35
  %43 = load i32*, i32** @LA, align 8
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %44, %45
  %idx.ext42 = sext i32 %mul to i64
  %add.ptr43 = getelementptr inbounds i32, i32* %43, i64 %idx.ext42
  store i32* %add.ptr43, i32** %fp1, align 8
  %46 = load i32*, i32** %fp1, align 8
  store i32* %46, i32** %fp2, align 8
  %47 = load i32*, i32** @lookaheadset, align 8
  store i32* %47, i32** %fp3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.then.41
  %48 = load i32*, i32** %fp3, align 8
  %49 = load i32*, i32** %fp4, align 8
  %cmp44 = icmp ult i32* %48, %49
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32*, i32** %fp2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr, i32** %fp2, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %fp3, align 8
  %incdec.ptr46 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %incdec.ptr46, i32** %fp3, align 8
  %53 = load i32, i32* %52, align 4
  %and47 = and i32 %51, %53
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %while.body
  %54 = load i32, i32* %state.addr, align 4
  %55 = load i32, i32* %i, align 4
  call void @resolve_sr_conflict(i32 %54, i32 %55)
  br label %while.end

if.end.50:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.49, %while.cond
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %for.body.35
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %56 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %56, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.32

for.end.54:                                       ; preds = %for.cond.32
  %57 = load i32, i32* %state.addr, align 4
  %idxprom55 = sext i32 %57 to i64
  %58 = load i16*, i16** @lookaheads, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %58, i64 %idxprom55
  %59 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %59 to i32
  store i32 %conv57, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.86, %for.end.54
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %k, align 4
  %cmp59 = icmp slt i32 %60, %61
  br i1 %cmp59, label %for.body.61, label %for.end.88

for.body.61:                                      ; preds = %for.cond.58
  %62 = load i32*, i32** @LA, align 8
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* @tokensetsize, align 4
  %mul62 = mul nsw i32 %63, %64
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds i32, i32* %62, i64 %idx.ext63
  store i32* %add.ptr64, i32** %fp1, align 8
  %65 = load i32*, i32** %fp1, align 8
  store i32* %65, i32** %fp2, align 8
  %66 = load i32*, i32** @lookaheadset, align 8
  store i32* %66, i32** %fp3, align 8
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.76, %for.body.61
  %67 = load i32*, i32** %fp3, align 8
  %68 = load i32*, i32** %fp4, align 8
  %cmp66 = icmp ult i32* %67, %68
  br i1 %cmp66, label %while.body.68, label %while.end.77

while.body.68:                                    ; preds = %while.cond.65
  %69 = load i32*, i32** %fp2, align 8
  %incdec.ptr69 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %incdec.ptr69, i32** %fp2, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %fp3, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr70, i32** %fp3, align 8
  %72 = load i32, i32* %71, align 4
  %and71 = and i32 %70, %72
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %while.body.68
  %73 = load i32, i32* %state.addr, align 4
  %idxprom74 = sext i32 %73 to i64
  %74 = load i8*, i8** @conflicts, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %74, i64 %idxprom74
  store i8 1, i8* %arrayidx75, align 1
  store i8 1, i8* @any_conflicts, align 1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %while.body.68
  br label %while.cond.65

while.end.77:                                     ; preds = %while.cond.65
  %75 = load i32*, i32** %fp1, align 8
  store i32* %75, i32** %fp2, align 8
  %76 = load i32*, i32** @lookaheadset, align 8
  store i32* %76, i32** %fp3, align 8
  br label %while.cond.78

while.cond.78:                                    ; preds = %while.body.81, %while.end.77
  %77 = load i32*, i32** %fp3, align 8
  %78 = load i32*, i32** %fp4, align 8
  %cmp79 = icmp ult i32* %77, %78
  br i1 %cmp79, label %while.body.81, label %while.end.85

while.body.81:                                    ; preds = %while.cond.78
  %79 = load i32*, i32** %fp2, align 8
  %incdec.ptr82 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr82, i32** %fp2, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %fp3, align 8
  %incdec.ptr83 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr83, i32** %fp3, align 8
  %82 = load i32, i32* %81, align 4
  %or84 = or i32 %82, %80
  store i32 %or84, i32* %81, align 4
  br label %while.cond.78

while.end.85:                                     ; preds = %while.cond.78
  br label %for.inc.86

for.inc.86:                                       ; preds = %while.end.85
  %83 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %83, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.58

for.end.88:                                       ; preds = %if.then, %for.cond.58
  ret void
}

; Function Attrs: nounwind uwtable
define void @resolve_sr_conflict(i32 %state, i32 %lookaheadnum) #0 {
entry:
  %state.addr = alloca i32, align 4
  %lookaheadnum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  %fp1 = alloca i32*, align 8
  %fp2 = alloca i32*, align 8
  %redprec = alloca i32, align 4
  %errp = alloca %struct.errs*, align 8
  %errtokens = alloca i16*, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %lookaheadnum, i32* %lookaheadnum.addr, align 4
  %0 = load i32, i32* @ntokens, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %add = add i64 4, %mul
  %call = call noalias i8* @malloc(i64 %add) #4
  %1 = bitcast i8* %call to %struct.errs*
  store %struct.errs* %1, %struct.errs** %errp, align 8
  %2 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs = getelementptr inbounds %struct.errs, %struct.errs* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %errs, i32 0, i32 0
  store i16* %arraydecay, i16** %errtokens, align 8
  %3 = load i32, i32* %lookaheadnum.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** @LAruleno, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %idxprom1 = sext i16 %5 to i64
  %6 = load i16*, i16** @rprec, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  %7 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %7 to i32
  store i32 %conv3, i32* %redprec, align 4
  store i32 1, i32* %mask, align 4
  %8 = load i32*, i32** @LA, align 8
  %9 = load i32, i32* %lookaheadnum.addr, align 4
  %10 = load i32, i32* @tokensetsize, align 4
  %mul4 = mul nsw i32 %9, %10
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %fp1, align 8
  %11 = load i32*, i32** @lookaheadset, align 8
  store i32* %11, i32** %fp2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @ntokens, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %mask, align 4
  %15 = load i32*, i32** %fp2, align 8
  %16 = load i32, i32* %15, align 4
  %and = and i32 %14, %16
  %17 = load i32*, i32** %fp1, align 8
  %18 = load i32, i32* %17, align 4
  %and6 = and i32 %and, %18
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load i16*, i16** @sprec, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %20, i64 %idxprom7
  %21 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %21 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then, label %if.end.74

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load i16*, i16** @sprec, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %23, i64 %idxprom11
  %24 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %24 to i32
  %25 = load i32, i32* %redprec, align 4
  %cmp14 = icmp slt i32 %conv13, %25
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %26 = load i32, i32* @verboseflag, align 4
  %tobool17 = icmp ne i32 %26, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.16
  %27 = load i32, i32* %state.addr, align 4
  %28 = load i32, i32* %lookaheadnum.addr, align 4
  %29 = load i32, i32* %i, align 4
  call void @log_resolution(i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.16
  %30 = load i32, i32* %mask, align 4
  %neg = xor i32 %30, -1
  %31 = load i32*, i32** %fp2, align 8
  %32 = load i32, i32* %31, align 4
  %and19 = and i32 %32, %neg
  store i32 %and19, i32* %31, align 4
  %33 = load i32, i32* %state.addr, align 4
  %34 = load i32, i32* %i, align 4
  call void @flush_shift(i32 %33, i32 %34)
  br label %if.end.73

if.else:                                          ; preds = %if.then
  %35 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %35 to i64
  %36 = load i16*, i16** @sprec, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %36, i64 %idxprom20
  %37 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %37 to i32
  %38 = load i32, i32* %redprec, align 4
  %cmp23 = icmp sgt i32 %conv22, %38
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else
  %39 = load i32, i32* @verboseflag, align 4
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %40 = load i32, i32* %state.addr, align 4
  %41 = load i32, i32* %lookaheadnum.addr, align 4
  %42 = load i32, i32* %i, align 4
  call void @log_resolution(i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  %43 = load i32, i32* %mask, align 4
  %neg29 = xor i32 %43, -1
  %44 = load i32*, i32** %fp1, align 8
  %45 = load i32, i32* %44, align 4
  %and30 = and i32 %45, %neg29
  store i32 %and30, i32* %44, align 4
  br label %if.end.72

if.else.31:                                       ; preds = %if.else
  %46 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %46 to i64
  %47 = load i16*, i16** @sassoc, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %47, i64 %idxprom32
  %48 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %48 to i32
  switch i32 %conv34, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.38
    i32 3, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.else.31
  %49 = load i32, i32* @verboseflag, align 4
  %tobool35 = icmp ne i32 %49, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb
  %50 = load i32, i32* %state.addr, align 4
  %51 = load i32, i32* %lookaheadnum.addr, align 4
  %52 = load i32, i32* %i, align 4
  call void @log_resolution(i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.else.31
  %53 = load i32, i32* @verboseflag, align 4
  %tobool39 = icmp ne i32 %53, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.38
  %54 = load i32, i32* %state.addr, align 4
  %55 = load i32, i32* %lookaheadnum.addr, align 4
  %56 = load i32, i32* %i, align 4
  call void @log_resolution(i32 %54, i32 %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %sw.bb.38
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.else.31
  %57 = load i32, i32* @verboseflag, align 4
  %tobool43 = icmp ne i32 %57, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.42
  %58 = load i32, i32* %state.addr, align 4
  %59 = load i32, i32* %lookaheadnum.addr, align 4
  %60 = load i32, i32* %i, align 4
  call void @log_resolution(i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %sw.bb.42
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.31, %if.end.45, %if.end.41, %if.end.37
  %61 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %61 to i64
  %62 = load i16*, i16** @sassoc, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %62, i64 %idxprom46
  %63 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %63 to i32
  %cmp49 = icmp ne i32 %conv48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %sw.epilog
  %64 = load i32, i32* %mask, align 4
  %neg52 = xor i32 %64, -1
  %65 = load i32*, i32** %fp2, align 8
  %66 = load i32, i32* %65, align 4
  %and53 = and i32 %66, %neg52
  store i32 %and53, i32* %65, align 4
  %67 = load i32, i32* %state.addr, align 4
  %68 = load i32, i32* %i, align 4
  call void @flush_shift(i32 %67, i32 %68)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %sw.epilog
  %69 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %69 to i64
  %70 = load i16*, i16** @sassoc, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %70, i64 %idxprom55
  %71 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %71 to i32
  %cmp58 = icmp ne i32 %conv57, 2
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.54
  %72 = load i32, i32* %mask, align 4
  %neg61 = xor i32 %72, -1
  %73 = load i32*, i32** %fp1, align 8
  %74 = load i32, i32* %73, align 4
  %and62 = and i32 %74, %neg61
  store i32 %and62, i32* %73, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.54
  %75 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %75 to i64
  %76 = load i16*, i16** @sassoc, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %76, i64 %idxprom64
  %77 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %77 to i32
  %cmp67 = icmp eq i32 %conv66, 3
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.63
  %78 = load i32, i32* %i, align 4
  %conv70 = trunc i32 %78 to i16
  %79 = load i16*, i16** %errtokens, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %79, i32 1
  store i16* %incdec.ptr, i16** %errtokens, align 8
  store i16 %conv70, i16* %79, align 2
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.28
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true, %for.body
  %80 = load i32, i32* %mask, align 4
  %shl = shl i32 %80, 1
  store i32 %shl, i32* %mask, align 4
  %81 = load i32, i32* %mask, align 4
  %cmp75 = icmp eq i32 %81, 0
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.74
  store i32 1, i32* %mask, align 4
  %82 = load i32*, i32** %fp2, align 8
  %incdec.ptr78 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %incdec.ptr78, i32** %fp2, align 8
  %83 = load i32*, i32** %fp1, align 8
  %incdec.ptr79 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %incdec.ptr79, i32** %fp1, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %84 = load i32, i32* %i, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i16*, i16** %errtokens, align 8
  %86 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs81 = getelementptr inbounds %struct.errs, %struct.errs* %86, i32 0, i32 1
  %arraydecay82 = getelementptr inbounds [1 x i16], [1 x i16]* %errs81, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %85 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv83 = trunc i64 %sub.ptr.div to i16
  %87 = load %struct.errs*, %struct.errs** %errp, align 8
  %nerrs = getelementptr inbounds %struct.errs, %struct.errs* %87, i32 0, i32 0
  store i16 %conv83, i16* %nerrs, align 2
  %88 = load %struct.errs*, %struct.errs** %errp, align 8
  %nerrs84 = getelementptr inbounds %struct.errs, %struct.errs* %88, i32 0, i32 0
  %89 = load i16, i16* %nerrs84, align 2
  %tobool85 = icmp ne i16 %89, 0
  br i1 %tobool85, label %if.then.86, label %if.else.97

if.then.86:                                       ; preds = %for.end
  %90 = load i16*, i16** %errtokens, align 8
  %91 = bitcast i16* %90 to i8*
  %92 = load %struct.errs*, %struct.errs** %errp, align 8
  %93 = bitcast %struct.errs* %92 to i8*
  %sub.ptr.lhs.cast87 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %93 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  store i32 %conv90, i32* %i, align 4
  %94 = load i32, i32* %i, align 4
  %call91 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %94)
  %95 = bitcast i8* %call91 to %struct.errs*
  %96 = load i32, i32* %state.addr, align 4
  %idxprom92 = sext i32 %96 to i64
  %97 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx93 = getelementptr inbounds %struct.errs*, %struct.errs** %97, i64 %idxprom92
  store %struct.errs* %95, %struct.errs** %arrayidx93, align 8
  %98 = load %struct.errs*, %struct.errs** %errp, align 8
  %99 = bitcast %struct.errs* %98 to i8*
  %100 = load i32, i32* %state.addr, align 4
  %idxprom94 = sext i32 %100 to i64
  %101 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx95 = getelementptr inbounds %struct.errs*, %struct.errs** %101, i64 %idxprom94
  %102 = load %struct.errs*, %struct.errs** %arrayidx95, align 8
  %103 = bitcast %struct.errs* %102 to i8*
  %104 = load i32, i32* %i, align 4
  %conv96 = sext i32 %104 to i64
  call void @bcopy(i8* %99, i8* %103, i64 %conv96) #4
  br label %if.end.100

if.else.97:                                       ; preds = %for.end
  %105 = load i32, i32* %state.addr, align 4
  %idxprom98 = sext i32 %105 to i64
  %106 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx99 = getelementptr inbounds %struct.errs*, %struct.errs** %106, i64 %idxprom98
  store %struct.errs* null, %struct.errs** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.86
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @log_resolution(i32 %state, i32 %LAno, i32 %token, i8* %resolution) #0 {
entry:
  %state.addr = alloca i32, align 4
  %LAno.addr = alloca i32, align 4
  %token.addr = alloca i32, align 4
  %resolution.addr = alloca i8*, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %LAno, i32* %LAno.addr, align 4
  store i32 %token, i32* %token.addr, align 4
  store i8* %resolution, i8** %resolution.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %1 = load i32, i32* %state.addr, align 4
  %2 = load i32, i32* %LAno.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @LAruleno, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %5 = load i32, i32* %token.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** @tags, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %8 = load i8*, i8** %resolution.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0), i32 %1, i32 %conv, i8* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @flush_shift(i32 %state, i32 %token) #0 {
entry:
  %state.addr = alloca i32, align 4
  %token.addr = alloca i32, align 4
  %shiftp = alloca %struct.shifts*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx = getelementptr inbounds %struct.shifts*, %struct.shifts** %1, i64 %idxprom
  %2 = load %struct.shifts*, %struct.shifts** %arrayidx, align 8
  store %struct.shifts* %2, %struct.shifts** %shiftp, align 8
  %3 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool = icmp ne %struct.shifts* %3, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %4 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %4, i32 0, i32 2
  %5 = load i16, i16* %nshifts, align 2
  %conv = sext i16 %5 to i32
  store i32 %conv, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %9, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom2
  %10 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %10 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %token.addr, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts7 = getelementptr inbounds %struct.shifts, %struct.shifts* %13, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts7, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx8, align 2
  %idxprom9 = sext i16 %14 to i64
  %15 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %15, i64 %idxprom9
  %16 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %16 to i32
  %cmp12 = icmp eq i32 %11, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts16 = getelementptr inbounds %struct.shifts, %struct.shifts* %18, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts16, i32 0, i64 %idxprom15
  store i16 0, i16* %arrayidx17, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @conflict_log() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @src_total, align 4
  store i32 0, i32* @rrc_total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** @conflicts, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  call void @count_sr_conflicts(i32 %5)
  %6 = load i32, i32* %i, align 4
  call void @count_rr_conflicts(i32 %6)
  %7 = load i32, i32* @src_count, align 4
  %8 = load i32, i32* @src_total, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* @src_total, align 4
  %9 = load i32, i32* @rrc_count, align 4
  %10 = load i32, i32* @rrc_total, align 4
  %add1 = add nsw i32 %10, %9
  store i32 %add1, i32* @rrc_total, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @total_conflicts()
  ret void
}

; Function Attrs: nounwind uwtable
define void @count_sr_conflicts(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %mask = alloca i32, align 4
  %shiftp = alloca %struct.shifts*, align 8
  %fp1 = alloca i32*, align 8
  %fp2 = alloca i32*, align 8
  %fp3 = alloca i32*, align 8
  %symbol = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* @src_count, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx = getelementptr inbounds %struct.shifts*, %struct.shifts** %1, i64 %idxprom
  %2 = load %struct.shifts*, %struct.shifts** %arrayidx, align 8
  store %struct.shifts* %2, %struct.shifts** %shiftp, align 8
  %3 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool = icmp ne %struct.shifts* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.73

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @tokensetsize, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32*, i32** @shiftset, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32*, i32** @lookaheadset, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %11, i32 0, i32 2
  %12 = load i16, i16* %nshifts, align 2
  %conv = sext i16 %12 to i32
  store i32 %conv, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.26, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body.8, label %for.end.28

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %16, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom9
  %17 = load i16, i16* %arrayidx10, align 2
  %tobool11 = icmp ne i16 %17, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body.8
  br label %for.inc.26

if.end.13:                                        ; preds = %for.body.8
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts15 = getelementptr inbounds %struct.shifts, %struct.shifts* %19, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts15, i32 0, i64 %idxprom14
  %20 = load i16, i16* %arrayidx16, align 2
  %idxprom17 = sext i16 %20 to i64
  %21 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %21, i64 %idxprom17
  %22 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %22 to i32
  store i32 %conv19, i32* %symbol, align 4
  %23 = load i32, i32* %symbol, align 4
  %24 = load i32, i32* @ntokens, align 4
  %cmp20 = icmp sge i32 %23, %24
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.13
  br label %for.end.28

if.end.23:                                        ; preds = %if.end.13
  %25 = load i32, i32* %symbol, align 4
  %and = and i32 %25, 31
  %shl = shl i32 1, %and
  %26 = load i32, i32* %symbol, align 4
  %shr = ashr i32 %26, 5
  %idxprom24 = sext i32 %shr to i64
  %27 = load i32*, i32** @shiftset, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %or = or i32 %28, %shl
  store i32 %or, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.23, %if.then.12
  %29 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.5

for.end.28:                                       ; preds = %if.then.22, %for.cond.5
  %30 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %30, 1
  %idxprom29 = sext i32 %add to i64
  %31 = load i16*, i16** @lookaheads, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %31, i64 %idxprom29
  %32 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %32 to i32
  store i32 %conv31, i32* %k, align 4
  %33 = load i32*, i32** @lookaheadset, align 8
  %34 = load i32, i32* @tokensetsize, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i32, i32* %33, i64 %idx.ext
  store i32* %add.ptr, i32** %fp3, align 8
  %35 = load i32, i32* %state.addr, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load i16*, i16** @lookaheads, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %36, i64 %idxprom32
  %37 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %37 to i32
  store i32 %conv34, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.45, %for.end.28
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %k, align 4
  %cmp36 = icmp slt i32 %38, %39
  br i1 %cmp36, label %for.body.38, label %for.end.47

for.body.38:                                      ; preds = %for.cond.35
  %40 = load i32*, i32** @LA, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %41, %42
  %idx.ext39 = sext i32 %mul to i64
  %add.ptr40 = getelementptr inbounds i32, i32* %40, i64 %idx.ext39
  store i32* %add.ptr40, i32** %fp1, align 8
  %43 = load i32*, i32** @lookaheadset, align 8
  store i32* %43, i32** %fp2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.38
  %44 = load i32*, i32** %fp2, align 8
  %45 = load i32*, i32** %fp3, align 8
  %cmp41 = icmp ult i32* %44, %45
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32*, i32** %fp1, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %incdec.ptr, i32** %fp1, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %fp2, align 8
  %incdec.ptr43 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %incdec.ptr43, i32** %fp2, align 8
  %49 = load i32, i32* %48, align 4
  %or44 = or i32 %49, %47
  store i32 %or44, i32* %48, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.45

for.inc.45:                                       ; preds = %while.end
  %50 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.35

for.end.47:                                       ; preds = %for.cond.35
  %51 = load i32*, i32** @shiftset, align 8
  store i32* %51, i32** %fp1, align 8
  %52 = load i32*, i32** @lookaheadset, align 8
  store i32* %52, i32** %fp2, align 8
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %for.end.47
  %53 = load i32*, i32** %fp2, align 8
  %54 = load i32*, i32** %fp3, align 8
  %cmp49 = icmp ult i32* %53, %54
  br i1 %cmp49, label %while.body.51, label %while.end.55

while.body.51:                                    ; preds = %while.cond.48
  %55 = load i32*, i32** %fp1, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr52, i32** %fp1, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %fp2, align 8
  %incdec.ptr53 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %incdec.ptr53, i32** %fp2, align 8
  %58 = load i32, i32* %57, align 4
  %and54 = and i32 %58, %56
  store i32 %and54, i32* %57, align 4
  br label %while.cond.48

while.end.55:                                     ; preds = %while.cond.48
  store i32 1, i32* %mask, align 4
  %59 = load i32*, i32** @lookaheadset, align 8
  store i32* %59, i32** %fp2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.71, %while.end.55
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* @ntokens, align 4
  %cmp57 = icmp slt i32 %60, %61
  br i1 %cmp57, label %for.body.59, label %for.end.73

for.body.59:                                      ; preds = %for.cond.56
  %62 = load i32, i32* %mask, align 4
  %63 = load i32*, i32** %fp2, align 8
  %64 = load i32, i32* %63, align 4
  %and60 = and i32 %62, %64
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.body.59
  %65 = load i32, i32* @src_count, align 4
  %inc63 = add nsw i32 %65, 1
  store i32 %inc63, i32* @src_count, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %for.body.59
  %66 = load i32, i32* %mask, align 4
  %shl65 = shl i32 %66, 1
  store i32 %shl65, i32* %mask, align 4
  %67 = load i32, i32* %mask, align 4
  %cmp66 = icmp eq i32 %67, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.64
  store i32 1, i32* %mask, align 4
  %68 = load i32*, i32** %fp2, align 8
  %incdec.ptr69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %incdec.ptr69, i32** %fp2, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.64
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %69 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %69, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.56

for.end.73:                                       ; preds = %if.then, %for.cond.56
  ret void
}

; Function Attrs: nounwind uwtable
define void @count_rr_conflicts(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %mask = alloca i32, align 4
  %baseword = alloca i32*, align 8
  %wordp = alloca i32*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* @rrc_count, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @lookaheads, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %m, align 4
  %3 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load i16*, i16** @lookaheads, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %6, %7
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.27

if.end:                                           ; preds = %entry
  store i32 1, i32* %mask, align 4
  %8 = load i32*, i32** @LA, align 8
  %9 = load i32, i32* %m, align 4
  %10 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %9, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %baseword, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @ntokens, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %13 = load i32*, i32** %baseword, align 8
  store i32* %13, i32** %wordp, align 8
  store i32 0, i32* %count, align 4
  %14 = load i32, i32* %m, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %n, align 4
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %17 = load i32, i32* %mask, align 4
  %18 = load i32*, i32** %wordp, align 8
  %19 = load i32, i32* %18, align 4
  %and = and i32 %17, %19
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.10
  %20 = load i32, i32* %count, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.body.10
  %21 = load i32, i32* @tokensetsize, align 4
  %22 = load i32*, i32** %wordp, align 8
  %idx.ext13 = sext i32 %21 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %22, i64 %idx.ext13
  store i32* %add.ptr14, i32** %wordp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %23 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %24 = load i32, i32* %count, align 4
  %cmp16 = icmp sge i32 %24, 2
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end
  %25 = load i32, i32* @rrc_count, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* @rrc_count, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end
  %26 = load i32, i32* %mask, align 4
  %shl = shl i32 %26, 1
  store i32 %shl, i32* %mask, align 4
  %27 = load i32, i32* %mask, align 4
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 1, i32* %mask, align 4
  %28 = load i32*, i32** %baseword, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr, i32** %baseword, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @total_conflicts() #0 {
entry:
  %0 = load i32, i32* @src_total, align 4
  %1 = load i32, i32* @expected_conflicts, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @rrc_total, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @infile, align 8
  %call2 = call i8* @mybasename(i8* %5)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* %call2)
  %6 = load i32, i32* @src_total, align 4
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* @src_total, align 4
  %cmp7 = icmp sgt i32 %8, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* @src_total, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.5
  %11 = load i32, i32* @src_total, align 4
  %cmp12 = icmp sgt i32 %11, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.end.11
  %12 = load i32, i32* @rrc_total, align 4
  %cmp14 = icmp sgt i32 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.13
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end.11
  %14 = load i32, i32* @rrc_total, align 4
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.end.17
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.26

if.else.21:                                       ; preds = %if.end.17
  %16 = load i32, i32* @rrc_total, align 4
  %cmp22 = icmp sgt i32 %16, 1
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else.21
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* @rrc_total, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 %18)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call27 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %20)
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @verbose_conflict_log() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @src_total, align 4
  store i32 0, i32* @rrc_total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** @conflicts, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  call void @count_sr_conflicts(i32 %5)
  %6 = load i32, i32* %i, align 4
  call void @count_rr_conflicts(i32 %6)
  %7 = load i32, i32* @src_count, align 4
  %8 = load i32, i32* @src_total, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* @src_total, align 4
  %9 = load i32, i32* @rrc_count, align 4
  %10 = load i32, i32* @rrc_total, align 4
  %add1 = add nsw i32 %10, %9
  store i32 %add1, i32* @rrc_total, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %12 = load i32, i32* %i, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %12)
  %13 = load i32, i32* @src_count, align 4
  %cmp2 = icmp eq i32 %13, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* @src_count, align 4
  %cmp5 = icmp sgt i32 %15, 1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %17 = load i32, i32* @src_count, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.3
  %18 = load i32, i32* @src_count, align 4
  %cmp9 = icmp sgt i32 %18, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %19 = load i32, i32* @rrc_count, align 4
  %cmp10 = icmp sgt i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %if.end.8
  %21 = load i32, i32* @rrc_count, align 4
  %cmp14 = icmp eq i32 %21, 1
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.else.17:                                       ; preds = %if.end.13
  %23 = load i32, i32* @rrc_count, align 4
  %cmp18 = icmp sgt i32 %23, 1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %25 = load i32, i32* @rrc_count, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call23 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call24 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %27)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @total_conflicts()
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define void @print_reductions(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fp1 = alloca i32*, align 8
  %fp2 = alloca i32*, align 8
  %fp3 = alloca i32*, align 8
  %fp4 = alloca i32*, align 8
  %rule = alloca i32, align 4
  %symbol = alloca i32, align 4
  %mask = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %default_LA = alloca i32, align 4
  %default_rule = alloca i32, align 4
  %cmax = alloca i32, align 4
  %count = alloca i32, align 4
  %shiftp = alloca %struct.shifts*, align 8
  %errp = alloca %struct.errs*, align 8
  %nodefault = alloca i32, align 4
  %defaulted = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* %nodefault, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @tokensetsize, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @shiftset, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %state.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.shifts*, %struct.shifts** %6, i64 %idxprom1
  %7 = load %struct.shifts*, %struct.shifts** %arrayidx2, align 8
  store %struct.shifts* %7, %struct.shifts** %shiftp, align 8
  %8 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool = icmp ne %struct.shifts* %8, null
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %for.end
  %9 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %9, i32 0, i32 2
  %10 = load i16, i16* %nshifts, align 2
  %conv = sext i16 %10 to i32
  store i32 %conv, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.27, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body.6, label %for.end.29

for.body.6:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %14, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom7
  %15 = load i16, i16* %arrayidx8, align 2
  %tobool9 = icmp ne i16 %15, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %for.body.6
  br label %for.inc.27

if.end:                                           ; preds = %for.body.6
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts12 = getelementptr inbounds %struct.shifts, %struct.shifts* %17, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts12, i32 0, i64 %idxprom11
  %18 = load i16, i16* %arrayidx13, align 2
  %idxprom14 = sext i16 %18 to i64
  %19 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %19, i64 %idxprom14
  %20 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %20 to i32
  store i32 %conv16, i32* %symbol, align 4
  %21 = load i32, i32* %symbol, align 4
  %22 = load i32, i32* @ntokens, align 4
  %cmp17 = icmp sge i32 %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  br label %for.end.29

if.end.20:                                        ; preds = %if.end
  %23 = load i32, i32* %symbol, align 4
  %24 = load i32, i32* @error_token_number, align 4
  %cmp21 = icmp eq i32 %23, %24
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 1, i32* %nodefault, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %25 = load i32, i32* %symbol, align 4
  %and = and i32 %25, 31
  %shl = shl i32 1, %and
  %26 = load i32, i32* %symbol, align 4
  %shr = ashr i32 %26, 5
  %idxprom25 = sext i32 %shr to i64
  %27 = load i32*, i32** @shiftset, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %27, i64 %idxprom25
  %28 = load i32, i32* %arrayidx26, align 4
  %or = or i32 %28, %shl
  store i32 %or, i32* %arrayidx26, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.24, %if.then.10
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.3

for.end.29:                                       ; preds = %if.then.19, %for.cond.3
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  %30 = load i32, i32* %state.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx32 = getelementptr inbounds %struct.errs*, %struct.errs** %31, i64 %idxprom31
  %32 = load %struct.errs*, %struct.errs** %arrayidx32, align 8
  store %struct.errs* %32, %struct.errs** %errp, align 8
  %33 = load %struct.errs*, %struct.errs** %errp, align 8
  %tobool33 = icmp ne %struct.errs* %33, null
  br i1 %tobool33, label %if.then.34, label %if.end.58

if.then.34:                                       ; preds = %if.end.30
  %34 = load %struct.errs*, %struct.errs** %errp, align 8
  %nerrs = getelementptr inbounds %struct.errs, %struct.errs* %34, i32 0, i32 0
  %35 = load i16, i16* %nerrs, align 2
  %conv35 = sext i16 %35 to i32
  store i32 %conv35, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %if.then.34
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %k, align 4
  %cmp37 = icmp slt i32 %36, %37
  br i1 %cmp37, label %for.body.39, label %for.end.57

for.body.39:                                      ; preds = %for.cond.36
  %38 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs = getelementptr inbounds %struct.errs, %struct.errs* %39, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x i16], [1 x i16]* %errs, i32 0, i64 %idxprom40
  %40 = load i16, i16* %arrayidx41, align 2
  %tobool42 = icmp ne i16 %40, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %for.body.39
  br label %for.inc.55

if.end.44:                                        ; preds = %for.body.39
  %41 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs46 = getelementptr inbounds %struct.errs, %struct.errs* %42, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x i16], [1 x i16]* %errs46, i32 0, i64 %idxprom45
  %43 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %43 to i32
  store i32 %conv48, i32* %symbol, align 4
  %44 = load i32, i32* %symbol, align 4
  %and49 = and i32 %44, 31
  %shl50 = shl i32 1, %and49
  %45 = load i32, i32* %symbol, align 4
  %shr51 = ashr i32 %45, 5
  %idxprom52 = sext i32 %shr51 to i64
  %46 = load i32*, i32** @shiftset, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %46, i64 %idxprom52
  %47 = load i32, i32* %arrayidx53, align 4
  %or54 = or i32 %47, %shl50
  store i32 %or54, i32* %arrayidx53, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.44, %if.then.43
  %48 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.36

for.end.57:                                       ; preds = %for.cond.36
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %if.end.30
  %49 = load i32, i32* %state.addr, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load i16*, i16** @lookaheads, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %50, i64 %idxprom59
  %51 = load i16, i16* %arrayidx60, align 2
  %conv61 = sext i16 %51 to i32
  store i32 %conv61, i32* %m, align 4
  %52 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %52, 1
  %idxprom62 = sext i32 %add to i64
  %53 = load i16*, i16** @lookaheads, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %53, i64 %idxprom62
  %54 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %54 to i32
  store i32 %conv64, i32* %n, align 4
  %55 = load i32, i32* %n, align 4
  %56 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %55, %56
  %cmp65 = icmp eq i32 %sub, 1
  br i1 %cmp65, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.58
  %57 = load i32, i32* %nodefault, align 4
  %tobool67 = icmp ne i32 %57, 0
  br i1 %tobool67, label %if.else, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true
  %58 = load i32, i32* %m, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load i16*, i16** @LAruleno, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %59, i64 %idxprom69
  %60 = load i16, i16* %arrayidx70, align 2
  %conv71 = sext i16 %60 to i32
  store i32 %conv71, i32* %default_rule, align 4
  %61 = load i32*, i32** @LA, align 8
  %62 = load i32, i32* %m, align 4
  %63 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %62, %63
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %61, i64 %idx.ext
  store i32* %add.ptr, i32** %fp1, align 8
  %64 = load i32*, i32** @shiftset, align 8
  store i32* %64, i32** %fp2, align 8
  %65 = load i32*, i32** @lookaheadset, align 8
  store i32* %65, i32** %fp3, align 8
  %66 = load i32*, i32** @lookaheadset, align 8
  %67 = load i32, i32* @tokensetsize, align 4
  %idx.ext72 = sext i32 %67 to i64
  %add.ptr73 = getelementptr inbounds i32, i32* %66, i64 %idx.ext72
  store i32* %add.ptr73, i32** %fp4, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.68
  %68 = load i32*, i32** %fp3, align 8
  %69 = load i32*, i32** %fp4, align 8
  %cmp74 = icmp ult i32* %68, %69
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load i32*, i32** %fp1, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %incdec.ptr, i32** %fp1, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %fp2, align 8
  %incdec.ptr76 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %incdec.ptr76, i32** %fp2, align 8
  %73 = load i32, i32* %72, align 4
  %and77 = and i32 %71, %73
  %74 = load i32*, i32** %fp3, align 8
  %incdec.ptr78 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %incdec.ptr78, i32** %fp3, align 8
  store i32 %and77, i32* %74, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %mask, align 4
  %75 = load i32*, i32** @lookaheadset, align 8
  store i32* %75, i32** %fp3, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.99, %while.end
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* @ntokens, align 4
  %cmp80 = icmp slt i32 %76, %77
  br i1 %cmp80, label %for.body.82, label %for.end.101

for.body.82:                                      ; preds = %for.cond.79
  %78 = load i32, i32* %mask, align 4
  %79 = load i32*, i32** %fp3, align 8
  %80 = load i32, i32* %79, align 4
  %and83 = and i32 %78, %80
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %for.body.82
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %82 to i64
  %83 = load i8**, i8*** @tags, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %83, i64 %idxprom86
  %84 = load i8*, i8** %arrayidx87, align 8
  %85 = load i32, i32* %default_rule, align 4
  %86 = load i32, i32* %default_rule, align 4
  %idxprom88 = sext i32 %86 to i64
  %87 = load i16*, i16** @rlhs, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %87, i64 %idxprom88
  %88 = load i16, i16* %arrayidx89, align 2
  %idxprom90 = sext i16 %88 to i64
  %89 = load i8**, i8*** @tags, align 8
  %arrayidx91 = getelementptr inbounds i8*, i8** %89, i64 %idxprom90
  %90 = load i8*, i8** %arrayidx91, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* %84, i32 %85, i8* %90)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.85, %for.body.82
  %91 = load i32, i32* %mask, align 4
  %shl93 = shl i32 %91, 1
  store i32 %shl93, i32* %mask, align 4
  %92 = load i32, i32* %mask, align 4
  %cmp94 = icmp eq i32 %92, 0
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.92
  store i32 1, i32* %mask, align 4
  %93 = load i32*, i32** %fp3, align 8
  %incdec.ptr97 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %incdec.ptr97, i32** %fp3, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.92
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %94 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %94, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.79

for.end.101:                                      ; preds = %for.cond.79
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %96 = load i32, i32* %default_rule, align 4
  %97 = load i32, i32* %default_rule, align 4
  %idxprom102 = sext i32 %97 to i64
  %98 = load i16*, i16** @rlhs, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %98, i64 %idxprom102
  %99 = load i16, i16* %arrayidx103, align 2
  %idxprom104 = sext i16 %99 to i64
  %100 = load i8**, i8*** @tags, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %100, i64 %idxprom104
  %101 = load i8*, i8** %arrayidx105, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 %96, i8* %101)
  br label %if.end.300

if.else:                                          ; preds = %land.lhs.true, %if.end.58
  %102 = load i32, i32* %n, align 4
  %103 = load i32, i32* %m, align 4
  %sub107 = sub nsw i32 %102, %103
  %cmp108 = icmp sge i32 %sub107, 1
  br i1 %cmp108, label %if.then.110, label %if.end.299

if.then.110:                                      ; preds = %if.else
  store i32 0, i32* %cmax, align 4
  store i32 -1, i32* %default_LA, align 4
  %104 = load i32*, i32** @lookaheadset, align 8
  %105 = load i32, i32* @tokensetsize, align 4
  %idx.ext111 = sext i32 %105 to i64
  %add.ptr112 = getelementptr inbounds i32, i32* %104, i64 %idx.ext111
  store i32* %add.ptr112, i32** %fp4, align 8
  %106 = load i32, i32* %nodefault, align 4
  %tobool113 = icmp ne i32 %106, 0
  br i1 %tobool113, label %if.end.167, label %if.then.114

if.then.114:                                      ; preds = %if.then.110
  %107 = load i32, i32* %m, align 4
  store i32 %107, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.164, %if.then.114
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %n, align 4
  %cmp116 = icmp slt i32 %108, %109
  br i1 %cmp116, label %for.body.118, label %for.end.166

for.body.118:                                     ; preds = %for.cond.115
  %110 = load i32*, i32** @LA, align 8
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* @tokensetsize, align 4
  %mul119 = mul nsw i32 %111, %112
  %idx.ext120 = sext i32 %mul119 to i64
  %add.ptr121 = getelementptr inbounds i32, i32* %110, i64 %idx.ext120
  store i32* %add.ptr121, i32** %fp1, align 8
  %113 = load i32*, i32** @shiftset, align 8
  store i32* %113, i32** %fp2, align 8
  %114 = load i32*, i32** @lookaheadset, align 8
  store i32* %114, i32** %fp3, align 8
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.125, %for.body.118
  %115 = load i32*, i32** %fp3, align 8
  %116 = load i32*, i32** %fp4, align 8
  %cmp123 = icmp ult i32* %115, %116
  br i1 %cmp123, label %while.body.125, label %while.end.130

while.body.125:                                   ; preds = %while.cond.122
  %117 = load i32*, i32** %fp1, align 8
  %incdec.ptr126 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %incdec.ptr126, i32** %fp1, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %fp2, align 8
  %incdec.ptr127 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr127, i32** %fp2, align 8
  %120 = load i32, i32* %119, align 4
  %neg = xor i32 %120, -1
  %and128 = and i32 %118, %neg
  %121 = load i32*, i32** %fp3, align 8
  %incdec.ptr129 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %incdec.ptr129, i32** %fp3, align 8
  store i32 %and128, i32* %121, align 4
  br label %while.cond.122

while.end.130:                                    ; preds = %while.cond.122
  store i32 0, i32* %count, align 4
  store i32 1, i32* %mask, align 4
  %122 = load i32*, i32** @lookaheadset, align 8
  store i32* %122, i32** %fp3, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.146, %while.end.130
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* @ntokens, align 4
  %cmp132 = icmp slt i32 %123, %124
  br i1 %cmp132, label %for.body.134, label %for.end.148

for.body.134:                                     ; preds = %for.cond.131
  %125 = load i32, i32* %mask, align 4
  %126 = load i32*, i32** %fp3, align 8
  %127 = load i32, i32* %126, align 4
  %and135 = and i32 %125, %127
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %for.body.134
  %128 = load i32, i32* %count, align 4
  %inc138 = add nsw i32 %128, 1
  store i32 %inc138, i32* %count, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %for.body.134
  %129 = load i32, i32* %mask, align 4
  %shl140 = shl i32 %129, 1
  store i32 %shl140, i32* %mask, align 4
  %130 = load i32, i32* %mask, align 4
  %cmp141 = icmp eq i32 %130, 0
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.end.139
  store i32 1, i32* %mask, align 4
  %131 = load i32*, i32** %fp3, align 8
  %incdec.ptr144 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %incdec.ptr144, i32** %fp3, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.end.139
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %132 = load i32, i32* %j, align 4
  %inc147 = add nsw i32 %132, 1
  store i32 %inc147, i32* %j, align 4
  br label %for.cond.131

for.end.148:                                      ; preds = %for.cond.131
  %133 = load i32, i32* %count, align 4
  %134 = load i32, i32* %cmax, align 4
  %cmp149 = icmp sgt i32 %133, %134
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %for.end.148
  %135 = load i32, i32* %count, align 4
  store i32 %135, i32* %cmax, align 4
  %136 = load i32, i32* %i, align 4
  store i32 %136, i32* %default_LA, align 4
  %137 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %137 to i64
  %138 = load i16*, i16** @LAruleno, align 8
  %arrayidx153 = getelementptr inbounds i16, i16* %138, i64 %idxprom152
  %139 = load i16, i16* %arrayidx153, align 2
  %conv154 = sext i16 %139 to i32
  store i32 %conv154, i32* %default_rule, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.151, %for.end.148
  %140 = load i32*, i32** @shiftset, align 8
  store i32* %140, i32** %fp2, align 8
  %141 = load i32*, i32** @lookaheadset, align 8
  store i32* %141, i32** %fp3, align 8
  br label %while.cond.156

while.cond.156:                                   ; preds = %while.body.159, %if.end.155
  %142 = load i32*, i32** %fp3, align 8
  %143 = load i32*, i32** %fp4, align 8
  %cmp157 = icmp ult i32* %142, %143
  br i1 %cmp157, label %while.body.159, label %while.end.163

while.body.159:                                   ; preds = %while.cond.156
  %144 = load i32*, i32** %fp3, align 8
  %incdec.ptr160 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %incdec.ptr160, i32** %fp3, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %fp2, align 8
  %incdec.ptr161 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %incdec.ptr161, i32** %fp2, align 8
  %147 = load i32, i32* %146, align 4
  %or162 = or i32 %147, %145
  store i32 %or162, i32* %146, align 4
  br label %while.cond.156

while.end.163:                                    ; preds = %while.cond.156
  br label %for.inc.164

for.inc.164:                                      ; preds = %while.end.163
  %148 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %148, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.115

for.end.166:                                      ; preds = %for.cond.115
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.then.110
  store i32 0, i32* %i, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.174, %if.end.167
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* @tokensetsize, align 4
  %cmp169 = icmp slt i32 %149, %150
  br i1 %cmp169, label %for.body.171, label %for.end.176

for.body.171:                                     ; preds = %for.cond.168
  %151 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %151 to i64
  %152 = load i32*, i32** @shiftset, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %152, i64 %idxprom172
  store i32 0, i32* %arrayidx173, align 4
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.171
  %153 = load i32, i32* %i, align 4
  %inc175 = add nsw i32 %153, 1
  store i32 %inc175, i32* %i, align 4
  br label %for.cond.168

for.end.176:                                      ; preds = %for.cond.168
  %154 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool177 = icmp ne %struct.shifts* %154, null
  br i1 %tobool177, label %if.then.178, label %if.end.210

if.then.178:                                      ; preds = %for.end.176
  %155 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts179 = getelementptr inbounds %struct.shifts, %struct.shifts* %155, i32 0, i32 2
  %156 = load i16, i16* %nshifts179, align 2
  %conv180 = sext i16 %156 to i32
  store i32 %conv180, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.207, %if.then.178
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %k, align 4
  %cmp182 = icmp slt i32 %157, %158
  br i1 %cmp182, label %for.body.184, label %for.end.209

for.body.184:                                     ; preds = %for.cond.181
  %159 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %159 to i64
  %160 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts186 = getelementptr inbounds %struct.shifts, %struct.shifts* %160, i32 0, i32 3
  %arrayidx187 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts186, i32 0, i64 %idxprom185
  %161 = load i16, i16* %arrayidx187, align 2
  %tobool188 = icmp ne i16 %161, 0
  br i1 %tobool188, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %for.body.184
  br label %for.inc.207

if.end.190:                                       ; preds = %for.body.184
  %162 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %162 to i64
  %163 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts192 = getelementptr inbounds %struct.shifts, %struct.shifts* %163, i32 0, i32 3
  %arrayidx193 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts192, i32 0, i64 %idxprom191
  %164 = load i16, i16* %arrayidx193, align 2
  %idxprom194 = sext i16 %164 to i64
  %165 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %165, i64 %idxprom194
  %166 = load i16, i16* %arrayidx195, align 2
  %conv196 = sext i16 %166 to i32
  store i32 %conv196, i32* %symbol, align 4
  %167 = load i32, i32* %symbol, align 4
  %168 = load i32, i32* @ntokens, align 4
  %cmp197 = icmp sge i32 %167, %168
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.190
  br label %for.end.209

if.end.200:                                       ; preds = %if.end.190
  %169 = load i32, i32* %symbol, align 4
  %and201 = and i32 %169, 31
  %shl202 = shl i32 1, %and201
  %170 = load i32, i32* %symbol, align 4
  %shr203 = ashr i32 %170, 5
  %idxprom204 = sext i32 %shr203 to i64
  %171 = load i32*, i32** @shiftset, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %171, i64 %idxprom204
  %172 = load i32, i32* %arrayidx205, align 4
  %or206 = or i32 %172, %shl202
  store i32 %or206, i32* %arrayidx205, align 4
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.200, %if.then.189
  %173 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %173, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond.181

for.end.209:                                      ; preds = %if.then.199, %for.cond.181
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %for.end.176
  store i32 1, i32* %mask, align 4
  %174 = load i32*, i32** @LA, align 8
  %175 = load i32, i32* %m, align 4
  %176 = load i32, i32* @tokensetsize, align 4
  %mul211 = mul nsw i32 %175, %176
  %idx.ext212 = sext i32 %mul211 to i64
  %add.ptr213 = getelementptr inbounds i32, i32* %174, i64 %idx.ext212
  store i32* %add.ptr213, i32** %fp1, align 8
  %177 = load i32*, i32** @shiftset, align 8
  store i32* %177, i32** %fp2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.286, %if.end.210
  %178 = load i32, i32* %i, align 4
  %179 = load i32, i32* @ntokens, align 4
  %cmp215 = icmp slt i32 %178, %179
  br i1 %cmp215, label %for.body.217, label %for.end.288

for.body.217:                                     ; preds = %for.cond.214
  store i32 0, i32* %defaulted, align 4
  %180 = load i32, i32* %mask, align 4
  %181 = load i32*, i32** %fp2, align 8
  %182 = load i32, i32* %181, align 4
  %and218 = and i32 %180, %182
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %for.body.217
  store i32 1, i32* %count, align 4
  br label %if.end.222

if.else.221:                                      ; preds = %for.body.217
  store i32 0, i32* %count, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.then.220
  %183 = load i32*, i32** %fp1, align 8
  store i32* %183, i32** %fp3, align 8
  %184 = load i32, i32* %m, align 4
  store i32 %184, i32* %j, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.277, %if.end.222
  %185 = load i32, i32* %j, align 4
  %186 = load i32, i32* %n, align 4
  %cmp224 = icmp slt i32 %185, %186
  br i1 %cmp224, label %for.body.226, label %for.end.279

for.body.226:                                     ; preds = %for.cond.223
  %187 = load i32, i32* %mask, align 4
  %188 = load i32*, i32** %fp3, align 8
  %189 = load i32, i32* %188, align 4
  %and227 = and i32 %187, %189
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.274

if.then.229:                                      ; preds = %for.body.226
  %190 = load i32, i32* %count, align 4
  %cmp230 = icmp eq i32 %190, 0
  br i1 %cmp230, label %if.then.232, label %if.else.249

if.then.232:                                      ; preds = %if.then.229
  %191 = load i32, i32* %j, align 4
  %192 = load i32, i32* %default_LA, align 4
  %cmp233 = icmp ne i32 %191, %192
  br i1 %cmp233, label %if.then.235, label %if.else.246

if.then.235:                                      ; preds = %if.then.232
  %193 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %193 to i64
  %194 = load i16*, i16** @LAruleno, align 8
  %arrayidx237 = getelementptr inbounds i16, i16* %194, i64 %idxprom236
  %195 = load i16, i16* %arrayidx237, align 2
  %conv238 = sext i16 %195 to i32
  store i32 %conv238, i32* %rule, align 4
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %197 to i64
  %198 = load i8**, i8*** @tags, align 8
  %arrayidx240 = getelementptr inbounds i8*, i8** %198, i64 %idxprom239
  %199 = load i8*, i8** %arrayidx240, align 8
  %200 = load i32, i32* %rule, align 4
  %201 = load i32, i32* %rule, align 4
  %idxprom241 = sext i32 %201 to i64
  %202 = load i16*, i16** @rlhs, align 8
  %arrayidx242 = getelementptr inbounds i16, i16* %202, i64 %idxprom241
  %203 = load i16, i16* %arrayidx242, align 2
  %idxprom243 = sext i16 %203 to i64
  %204 = load i8**, i8*** @tags, align 8
  %arrayidx244 = getelementptr inbounds i8*, i8** %204, i64 %idxprom243
  %205 = load i8*, i8** %arrayidx244, align 8
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* %199, i32 %200, i8* %205)
  br label %if.end.247

if.else.246:                                      ; preds = %if.then.232
  store i32 1, i32* %defaulted, align 4
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.246, %if.then.235
  %206 = load i32, i32* %count, align 4
  %inc248 = add nsw i32 %206, 1
  store i32 %inc248, i32* %count, align 4
  br label %if.end.273

if.else.249:                                      ; preds = %if.then.229
  %207 = load i32, i32* %defaulted, align 4
  %tobool250 = icmp ne i32 %207, 0
  br i1 %tobool250, label %if.then.251, label %if.end.262

if.then.251:                                      ; preds = %if.else.249
  %208 = load i32, i32* %default_LA, align 4
  %idxprom252 = sext i32 %208 to i64
  %209 = load i16*, i16** @LAruleno, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %209, i64 %idxprom252
  %210 = load i16, i16* %arrayidx253, align 2
  %conv254 = sext i16 %210 to i32
  store i32 %conv254, i32* %rule, align 4
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %212 to i64
  %213 = load i8**, i8*** @tags, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %213, i64 %idxprom255
  %214 = load i8*, i8** %arrayidx256, align 8
  %215 = load i32, i32* %rule, align 4
  %216 = load i32, i32* %rule, align 4
  %idxprom257 = sext i32 %216 to i64
  %217 = load i16*, i16** @rlhs, align 8
  %arrayidx258 = getelementptr inbounds i16, i16* %217, i64 %idxprom257
  %218 = load i16, i16* %arrayidx258, align 2
  %idxprom259 = sext i16 %218 to i64
  %219 = load i8**, i8*** @tags, align 8
  %arrayidx260 = getelementptr inbounds i8*, i8** %219, i64 %idxprom259
  %220 = load i8*, i8** %arrayidx260, align 8
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* %214, i32 %215, i8* %220)
  store i32 0, i32* %defaulted, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.251, %if.else.249
  %221 = load i32, i32* %j, align 4
  %idxprom263 = sext i32 %221 to i64
  %222 = load i16*, i16** @LAruleno, align 8
  %arrayidx264 = getelementptr inbounds i16, i16* %222, i64 %idxprom263
  %223 = load i16, i16* %arrayidx264, align 2
  %conv265 = sext i16 %223 to i32
  store i32 %conv265, i32* %rule, align 4
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %225 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %225 to i64
  %226 = load i8**, i8*** @tags, align 8
  %arrayidx267 = getelementptr inbounds i8*, i8** %226, i64 %idxprom266
  %227 = load i8*, i8** %arrayidx267, align 8
  %228 = load i32, i32* %rule, align 4
  %229 = load i32, i32* %rule, align 4
  %idxprom268 = sext i32 %229 to i64
  %230 = load i16*, i16** @rlhs, align 8
  %arrayidx269 = getelementptr inbounds i16, i16* %230, i64 %idxprom268
  %231 = load i16, i16* %arrayidx269, align 2
  %idxprom270 = sext i16 %231 to i64
  %232 = load i8**, i8*** @tags, align 8
  %arrayidx271 = getelementptr inbounds i8*, i8** %232, i64 %idxprom270
  %233 = load i8*, i8** %arrayidx271, align 8
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* %227, i32 %228, i8* %233)
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.262, %if.end.247
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %for.body.226
  %234 = load i32, i32* @tokensetsize, align 4
  %235 = load i32*, i32** %fp3, align 8
  %idx.ext275 = sext i32 %234 to i64
  %add.ptr276 = getelementptr inbounds i32, i32* %235, i64 %idx.ext275
  store i32* %add.ptr276, i32** %fp3, align 8
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.274
  %236 = load i32, i32* %j, align 4
  %inc278 = add nsw i32 %236, 1
  store i32 %inc278, i32* %j, align 4
  br label %for.cond.223

for.end.279:                                      ; preds = %for.cond.223
  %237 = load i32, i32* %mask, align 4
  %shl280 = shl i32 %237, 1
  store i32 %shl280, i32* %mask, align 4
  %238 = load i32, i32* %mask, align 4
  %cmp281 = icmp eq i32 %238, 0
  br i1 %cmp281, label %if.then.283, label %if.end.285

if.then.283:                                      ; preds = %for.end.279
  store i32 1, i32* %mask, align 4
  %239 = load i32*, i32** %fp1, align 8
  %incdec.ptr284 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %incdec.ptr284, i32** %fp1, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.283, %for.end.279
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %240 = load i32, i32* %i, align 4
  %inc287 = add nsw i32 %240, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond.214

for.end.288:                                      ; preds = %for.cond.214
  %241 = load i32, i32* %default_LA, align 4
  %cmp289 = icmp sge i32 %241, 0
  br i1 %cmp289, label %if.then.291, label %if.end.297

if.then.291:                                      ; preds = %for.end.288
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %243 = load i32, i32* %default_rule, align 4
  %244 = load i32, i32* %default_rule, align 4
  %idxprom292 = sext i32 %244 to i64
  %245 = load i16*, i16** @rlhs, align 8
  %arrayidx293 = getelementptr inbounds i16, i16* %245, i64 %idxprom292
  %246 = load i16, i16* %arrayidx293, align 2
  %idxprom294 = sext i16 %246 to i64
  %247 = load i8**, i8*** @tags, align 8
  %arrayidx295 = getelementptr inbounds i8*, i8** %247, i64 %idxprom294
  %248 = load i8*, i8** %arrayidx295, align 8
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i32 %243, i8* %248)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.291, %for.end.288
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call298 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %249)
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.297, %if.else
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %for.end.101
  ret void
}

; Function Attrs: nounwind uwtable
define void @finalize_conflicts() #0 {
entry:
  %0 = load i8*, i8** @conflicts, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @conflicts, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** @shiftset, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32*, i32** @shiftset, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32*, i32** @lookaheadset, align 8
  %tobool4 = icmp ne i32* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32*, i32** @lookaheadset, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
