; ModuleID = './MultiSource.Benchmarks.Prolangs-C/269.bison.print.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }
%struct.errs = type { i16, [1 x i16] }

@any_conflicts = external global i8, align 1
@foutput = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0A\0Atoken types:\0A\00", align 1
@translations = external global i32, align 4
@max_user_token_number = external global i32, align 4
@token_translations = external global i16*, align 8
@ntokens = external global i32, align 4
@nstates = external global i32, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" type %d is %s\0A\00", align 1
@tags = external global i8**, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"\0A\0Astate %d\0A\0A\00", align 1
@state_table = external global %struct.core**, align 8
@ritem = external global i16*, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"    %s  ->  \00", align 1
@rlhs = external global i16*, align 8
@rrhs = external global i16*, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"   (%d)\00", align 1
@shift_table = external global %struct.shifts**, align 8
@reduction_table = external global %struct.reductions**, align 8
@err_table = external global %struct.errs**, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"    NO ACTIONS\0A\00", align 1
@accessing_symbol = external global i16*, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"    %-4s\09shift  %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"    %-4s\09error (nonassociative)\0A\00", align 1
@consistent = external global i8*, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"    %-4s\09goto  %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @terse() #0 {
entry:
  %0 = load i8, i8* @any_conflicts, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @conflict_log()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @conflict_log() #1

; Function Attrs: nounwind uwtable
define void @verbose() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8, i8* @any_conflicts, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @verbose_conflict_log()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  call void @print_token(i32 -1, i32 0)
  %2 = load i32, i32* @translations, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @max_user_token_number, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** @token_translations, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %7 to i32
  %cmp3 = icmp ne i32 %conv, 2
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i16*, i16** @token_translations, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %10, i64 %idxprom6
  %11 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %11 to i32
  call void @print_token(i32 %8, i32 %conv8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.else:                                          ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.14, %if.else
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @ntokens, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %for.body.13, label %for.end.16

for.body.13:                                      ; preds = %for.cond.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %i, align 4
  call void @print_token(i32 %15, i32 %16)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.13
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.10

for.end.16:                                       ; preds = %for.cond.10
  br label %if.end.17

if.end.17:                                        ; preds = %for.end.16, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.22, %if.end.17
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @nstates, align 4
  %cmp19 = icmp slt i32 %18, %19
  br i1 %cmp19, label %for.body.21, label %for.end.24

for.body.21:                                      ; preds = %for.cond.18
  %20 = load i32, i32* %i, align 4
  call void @print_state(i32 %20)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.21
  %21 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.18

for.end.24:                                       ; preds = %for.cond.18
  ret void
}

declare void @verbose_conflict_log() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @print_token(i32 %extnum, i32 %token) #0 {
entry:
  %extnum.addr = alloca i32, align 4
  %token.addr = alloca i32, align 4
  store i32 %extnum, i32* %extnum.addr, align 4
  store i32 %token, i32* %token.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %1 = load i32, i32* %extnum.addr, align 4
  %2 = load i32, i32* %token.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %1, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_state(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %1 = load i32, i32* %state.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %1)
  %2 = load i32, i32* %state.addr, align 4
  call void @print_core(i32 %2)
  %3 = load i32, i32* %state.addr, align 4
  call void @print_actions(i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_core(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %rule = alloca i32, align 4
  %statep = alloca %struct.core*, align 8
  %sp = alloca i16*, align 8
  %sp1 = alloca i16*, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.core**, %struct.core*** @state_table, align 8
  %arrayidx = getelementptr inbounds %struct.core*, %struct.core** %1, i64 %idxprom
  %2 = load %struct.core*, %struct.core** %arrayidx, align 8
  store %struct.core* %2, %struct.core** %statep, align 8
  %3 = load %struct.core*, %struct.core** %statep, align 8
  %nitems = getelementptr inbounds %struct.core, %struct.core* %3, i32 0, i32 4
  %4 = load i16, i16* %nitems, align 2
  %conv = sext i16 %4 to i32
  store i32 %conv, i32* %k, align 4
  %5 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %8 = load i16*, i16** @ritem, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.core*, %struct.core** %statep, align 8
  %items = getelementptr inbounds %struct.core, %struct.core* %10, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [1 x i16], [1 x i16]* %items, i32 0, i64 %idxprom4
  %11 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %11 to i32
  %idx.ext = sext i32 %conv6 to i64
  %add.ptr = getelementptr inbounds i16, i16* %8, i64 %idx.ext
  store i16* %add.ptr, i16** %sp, align 8
  store i16* %add.ptr, i16** %sp1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %12 = load i16*, i16** %sp, align 8
  %13 = load i16, i16* %12, align 2
  %conv7 = sext i16 %13 to i32
  %cmp8 = icmp sgt i32 %conv7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i16*, i16** %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i16*, i16** %sp, align 8
  %16 = load i16, i16* %15, align 2
  %conv10 = sext i16 %16 to i32
  %sub = sub nsw i32 0, %conv10
  store i32 %sub, i32* %rule, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %18 = load i32, i32* %rule, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i16*, i16** @rlhs, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %19, i64 %idxprom11
  %20 = load i16, i16* %arrayidx12, align 2
  %idxprom13 = sext i16 %20 to i64
  %21 = load i8**, i8*** @tags, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %21, i64 %idxprom13
  %22 = load i8*, i8** %arrayidx14, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %22)
  %23 = load i16*, i16** @ritem, align 8
  %24 = load i32, i32* %rule, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i16*, i16** @rrhs, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %25, i64 %idxprom15
  %26 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %26 to i32
  %idx.ext18 = sext i32 %conv17 to i64
  %add.ptr19 = getelementptr inbounds i16, i16* %23, i64 %idx.ext18
  store i16* %add.ptr19, i16** %sp, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %while.end
  %27 = load i16*, i16** %sp, align 8
  %28 = load i16*, i16** %sp1, align 8
  %cmp21 = icmp ult i16* %27, %28
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %30 = load i16*, i16** %sp, align 8
  %31 = load i16, i16* %30, align 2
  %idxprom24 = sext i16 %31 to i64
  %32 = load i8**, i8*** @tags, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %32, i64 %idxprom24
  %33 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %34 = load i16*, i16** %sp, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr27, i16** %sp, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call28 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %35)
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.33, %for.end
  %36 = load i16*, i16** %sp, align 8
  %37 = load i16, i16* %36, align 2
  %conv30 = sext i16 %37 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  br i1 %cmp31, label %while.body.33, label %while.end.38

while.body.33:                                    ; preds = %while.cond.29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %39 = load i16*, i16** %sp, align 8
  %40 = load i16, i16* %39, align 2
  %idxprom34 = sext i16 %40 to i64
  %41 = load i8**, i8*** @tags, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %41, i64 %idxprom34
  %42 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %42)
  %43 = load i16*, i16** %sp, align 8
  %incdec.ptr37 = getelementptr inbounds i16, i16* %43, i32 1
  store i16* %incdec.ptr37, i16** %sp, align 8
  br label %while.cond.29

while.end.38:                                     ; preds = %while.cond.29
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %45 = load i32, i32* %rule, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call40 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %46)
  br label %for.inc.41

for.inc.41:                                       ; preds = %while.end.38
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call43 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %48)
  br label %return

return:                                           ; preds = %for.end.42, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_actions(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %state1 = alloca i32, align 4
  %symbol = alloca i32, align 4
  %shiftp = alloca %struct.shifts*, align 8
  %errp = alloca %struct.errs*, align 8
  %redp = alloca %struct.reductions*, align 8
  %rule = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx = getelementptr inbounds %struct.shifts*, %struct.shifts** %1, i64 %idxprom
  %2 = load %struct.shifts*, %struct.shifts** %arrayidx, align 8
  store %struct.shifts* %2, %struct.shifts** %shiftp, align 8
  %3 = load i32, i32* %state.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.reductions*, %struct.reductions** %4, i64 %idxprom1
  %5 = load %struct.reductions*, %struct.reductions** %arrayidx2, align 8
  store %struct.reductions* %5, %struct.reductions** %redp, align 8
  %6 = load i32, i32* %state.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.errs*, %struct.errs** %7, i64 %idxprom3
  %8 = load %struct.errs*, %struct.errs** %arrayidx4, align 8
  store %struct.errs* %8, %struct.errs** %errp, align 8
  %9 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool = icmp ne %struct.shifts* %9, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %tobool5 = icmp ne %struct.reductions* %10, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.106

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool6 = icmp ne %struct.shifts* %12, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %13, i32 0, i32 2
  %14 = load i16, i16* %nshifts, align 2
  %conv = sext i16 %14 to i32
  store i32 %conv, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %18, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom9
  %19 = load i16, i16* %arrayidx10, align 2
  %tobool11 = icmp ne i16 %19, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.body
  br label %for.inc

if.end.13:                                        ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts15 = getelementptr inbounds %struct.shifts, %struct.shifts* %21, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts15, i32 0, i64 %idxprom14
  %22 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %22 to i32
  store i32 %conv17, i32* %state1, align 4
  %23 = load i32, i32* %state1, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %24, i64 %idxprom18
  %25 = load i16, i16* %arrayidx19, align 2
  %conv20 = sext i16 %25 to i32
  store i32 %conv20, i32* %symbol, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %27 = load i32, i32* %symbol, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i8**, i8*** @tags, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %28, i64 %idxprom21
  %29 = load i8*, i8** %arrayidx22, align 8
  %30 = load i32, i32* %state1, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* %29, i32 %30)
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.12
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %cmp24 = icmp sgt i32 %32, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %for.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call27 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %33)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %for.end
  br label %if.end.29

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.end.28
  %34 = load %struct.errs*, %struct.errs** %errp, align 8
  %tobool30 = icmp ne %struct.errs* %34, null
  br i1 %tobool30, label %if.then.31, label %if.else.57

if.then.31:                                       ; preds = %if.end.29
  %35 = load %struct.errs*, %struct.errs** %errp, align 8
  %nerrs = getelementptr inbounds %struct.errs, %struct.errs* %35, i32 0, i32 0
  %36 = load i16, i16* %nerrs, align 2
  %conv32 = sext i16 %36 to i32
  store i32 %conv32, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.49, %if.then.31
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %k, align 4
  %cmp34 = icmp slt i32 %37, %38
  br i1 %cmp34, label %for.body.36, label %for.end.51

for.body.36:                                      ; preds = %for.cond.33
  %39 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs = getelementptr inbounds %struct.errs, %struct.errs* %40, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x i16], [1 x i16]* %errs, i32 0, i64 %idxprom37
  %41 = load i16, i16* %arrayidx38, align 2
  %tobool39 = icmp ne i16 %41, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %for.body.36
  br label %for.inc.49

if.end.41:                                        ; preds = %for.body.36
  %42 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %42 to i64
  %43 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs43 = getelementptr inbounds %struct.errs, %struct.errs* %43, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x i16], [1 x i16]* %errs43, i32 0, i64 %idxprom42
  %44 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %44 to i32
  store i32 %conv45, i32* %symbol, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %46 = load i32, i32* %symbol, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load i8**, i8*** @tags, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %47, i64 %idxprom46
  %48 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %48)
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.41, %if.then.40
  %49 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %49, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.33

for.end.51:                                       ; preds = %for.cond.33
  %50 = load i32, i32* %i, align 4
  %cmp52 = icmp sgt i32 %50, 0
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end.51
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call55 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %51)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end.51
  br label %if.end.58

if.else.57:                                       ; preds = %if.end.29
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.end.56
  %52 = load i32, i32* %state.addr, align 4
  %idxprom59 = sext i32 %52 to i64
  %53 = load i8*, i8** @consistent, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %53, i64 %idxprom59
  %54 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %54 to i32
  %tobool62 = icmp ne i32 %conv61, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.74

land.lhs.true.63:                                 ; preds = %if.end.58
  %55 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %tobool64 = icmp ne %struct.reductions* %55, null
  br i1 %tobool64, label %if.then.65, label %if.else.74

if.then.65:                                       ; preds = %land.lhs.true.63
  %56 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %rules = getelementptr inbounds %struct.reductions, %struct.reductions* %56, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [1 x i16], [1 x i16]* %rules, i32 0, i64 0
  %57 = load i16, i16* %arrayidx66, align 2
  %conv67 = sext i16 %57 to i32
  store i32 %conv67, i32* %rule, align 4
  %58 = load i32, i32* %rule, align 4
  %idxprom68 = sext i32 %58 to i64
  %59 = load i16*, i16** @rlhs, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %59, i64 %idxprom68
  %60 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %60 to i32
  store i32 %conv70, i32* %symbol, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %62 = load i32, i32* %rule, align 4
  %63 = load i32, i32* %symbol, align 4
  %idxprom71 = sext i32 %63 to i64
  %64 = load i8**, i8*** @tags, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %64, i64 %idxprom71
  %65 = load i8*, i8** %arrayidx72, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 %62, i8* %65)
  br label %if.end.78

if.else.74:                                       ; preds = %land.lhs.true.63, %if.end.58
  %66 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %tobool75 = icmp ne %struct.reductions* %66, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else.74
  %67 = load i32, i32* %state.addr, align 4
  call void @print_reductions(i32 %67)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.65
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %k, align 4
  %cmp79 = icmp slt i32 %68, %69
  br i1 %cmp79, label %if.then.81, label %if.end.106

if.then.81:                                       ; preds = %if.end.78
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.102, %if.then.81
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %k, align 4
  %cmp83 = icmp slt i32 %70, %71
  br i1 %cmp83, label %for.body.85, label %for.end.104

for.body.85:                                      ; preds = %for.cond.82
  %72 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %72 to i64
  %73 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts87 = getelementptr inbounds %struct.shifts, %struct.shifts* %73, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts87, i32 0, i64 %idxprom86
  %74 = load i16, i16* %arrayidx88, align 2
  %tobool89 = icmp ne i16 %74, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %for.body.85
  br label %for.inc.102

if.end.91:                                        ; preds = %for.body.85
  %75 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %75 to i64
  %76 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts93 = getelementptr inbounds %struct.shifts, %struct.shifts* %76, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts93, i32 0, i64 %idxprom92
  %77 = load i16, i16* %arrayidx94, align 2
  %conv95 = sext i16 %77 to i32
  store i32 %conv95, i32* %state1, align 4
  %78 = load i32, i32* %state1, align 4
  %idxprom96 = sext i32 %78 to i64
  %79 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %79, i64 %idxprom96
  %80 = load i16, i16* %arrayidx97, align 2
  %conv98 = sext i16 %80 to i32
  store i32 %conv98, i32* %symbol, align 4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %82 = load i32, i32* %symbol, align 4
  %idxprom99 = sext i32 %82 to i64
  %83 = load i8**, i8*** @tags, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %83, i64 %idxprom99
  %84 = load i8*, i8** %arrayidx100, align 8
  %85 = load i32, i32* %state1, align 4
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* %84, i32 %85)
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.91, %if.then.90
  %86 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %86, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.82

for.end.104:                                      ; preds = %for.cond.82
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @foutput, align 8
  %call105 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %87)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then, %for.end.104, %if.end.78
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @print_reductions(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
