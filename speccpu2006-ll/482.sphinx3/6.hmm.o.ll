; ModuleID = 'hmm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_t = type { %struct.hmm_state_t*, %struct.hmm_state_t, %struct.hmm_state_t, i32**, i32 }
%struct.hmm_state_t = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c" %11d    \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %11d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"     %11d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" %-11s    \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"senid\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"senscr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"hmm.c\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"#States= %d unsupported\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @hmm_dump(%struct.hmm_t* %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* %fp) #0 {
entry:
  %hmm.addr = alloca %struct.hmm_t*, align 8
  %n_state.addr = alloca i32, align 4
  %senid.addr = alloca i16*, align 8
  %senscr.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct.hmm_t* %hmm, %struct.hmm_t** %hmm.addr, align 8
  store i32 %n_state, i32* %n_state.addr, align 4
  store i16* %senid, i16** %senid.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %1, i32 0, i32 1
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  %2 = load i32, i32* %score, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_state.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %7, i32 0, i32 0
  %8 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state, align 8
  %arrayidx = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %8, i64 %idxprom
  %score1 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %score1, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %12 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %12, i32 0, i32 2
  %score3 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out, i32 0, i32 0
  %13 = load i32, i32* %score3, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in5 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %15, i32 0, i32 1
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in5, i32 0, i32 1
  %16 = load i32, i32* %history, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %16)
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.15, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n_state.addr, align 4
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %for.body.9, label %for.end.17

for.body.9:                                       ; preds = %for.cond.7
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state11 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %21, i32 0, i32 0
  %22 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %22, i64 %idxprom10
  %history13 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx12, i32 0, i32 1
  %23 = load i32, i32* %history13, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %23)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.9
  %24 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %26 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out18 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %26, i32 0, i32 2
  %history19 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out18, i32 0, i32 1
  %27 = load i32, i32* %history19, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %27)
  %28 = load i16*, i16** %senid.addr, align 8
  %tobool = icmp ne i16* %28, null
  br i1 %tobool, label %if.then, label %if.end.48

if.then:                                          ; preds = %for.end.17
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %if.then
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %n_state.addr, align 4
  %cmp23 = icmp slt i32 %30, %31
  br i1 %cmp23, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i16*, i16** %senid.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %34, i64 %idxprom25
  %35 = load i16, i16* %arrayidx26, align 2
  %conv = sext i16 %35 to i32
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %36 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %38 = load i32*, i32** %senscr.addr, align 8
  %tobool32 = icmp ne i32* %38, null
  br i1 %tobool32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %for.end.30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.then.33
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %n_state.addr, align 4
  %cmp36 = icmp slt i32 %40, %41
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %43 to i64
  %44 = load i16*, i16** %senid.addr, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %44, i64 %idxprom39
  %45 = load i16, i16* %arrayidx40, align 2
  %idxprom41 = sext i16 %45 to i64
  %46 = load i32*, i32** %senscr.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %46, i64 %idxprom41
  %47 = load i32, i32* %arrayidx42, align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %47)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %48 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %48, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.46, %for.end.30
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %for.end.17
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call49 = call i32 @fflush(%struct._IO_FILE* %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @hmm_clear(%struct.hmm_t* %h, i32 %n_state) #0 {
entry:
  %h.addr = alloca %struct.hmm_t*, align 8
  %n_state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.hmm_t* %h, %struct.hmm_t** %h.addr, align 8
  store i32 %n_state, i32* %n_state.addr, align 4
  %0 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %0, i32 0, i32 1
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  store i32 -939524096, i32* %score, align 4
  %1 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %in1 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %1, i32 0, i32 1
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in1, i32 0, i32 1
  store i32 -1, i32* %history, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_state.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %state = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %5, i32 0, i32 0
  %6 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state, align 8
  %arrayidx = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %6, i64 %idxprom
  %score2 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx, i32 0, i32 0
  store i32 -939524096, i32* %score2, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %state4 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %8, i32 0, i32 0
  %9 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %9, i64 %idxprom3
  %history6 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx5, i32 0, i32 1
  store i32 -1, i32* %history6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %out = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %11, i32 0, i32 2
  %score7 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out, i32 0, i32 0
  store i32 -939524096, i32* %score7, align 4
  %12 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %out8 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %12, i32 0, i32 2
  %history9 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out8, i32 0, i32 1
  store i32 -1, i32* %history9, align 4
  %13 = load %struct.hmm_t*, %struct.hmm_t** %h.addr, align 8
  %bestscore = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %13, i32 0, i32 4
  store i32 -939524096, i32* %bestscore, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @hmm_vit_eval_5st(%struct.hmm_t* %hmm, i16* %senid, i32* %senscr) #0 {
entry:
  %hmm.addr = alloca %struct.hmm_t*, align 8
  %senid.addr = alloca i16*, align 8
  %senscr.addr = alloca i32*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %s4 = alloca i32, align 4
  %best = alloca i32, align 4
  %tp = alloca i32*, align 8
  store %struct.hmm_t* %hmm, %struct.hmm_t** %hmm.addr, align 8
  store i16* %senid, i16** %senid.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  %0 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %tp1 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %0, i32 0, i32 3
  %1 = load i32**, i32*** %tp1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %tp, align 8
  %3 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %3, i32 0, i32 0
  %4 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state, align 8
  %arrayidx2 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %4, i64 4
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %score, align 4
  %6 = load i32*, i32** %tp, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 28
  %7 = load i32, i32* %arrayidx3, align 4
  %call = call i32 @NO_UFLOW_ADD(i32 %5, i32 %7)
  store i32 %call, i32* %s4, align 4
  %8 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state4 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %8, i32 0, i32 0
  %9 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %9, i64 3
  %score6 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx5, i32 0, i32 0
  %10 = load i32, i32* %score6, align 4
  %11 = load i32*, i32** %tp, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 22
  %12 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 @NO_UFLOW_ADD(i32 %10, i32 %12)
  store i32 %call8, i32* %s3, align 4
  %13 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state9 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %13, i32 0, i32 0
  %14 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state9, align 8
  %arrayidx10 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %14, i64 2
  %score11 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx10, i32 0, i32 0
  %15 = load i32, i32* %score11, align 4
  %16 = load i32*, i32** %tp, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 16
  %17 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 @NO_UFLOW_ADD(i32 %15, i32 %17)
  store i32 %call13, i32* %s2, align 4
  %18 = load i32, i32* %s4, align 4
  %19 = load i32, i32* %s3, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %if.then, label %if.else.27

if.then:                                          ; preds = %entry
  %20 = load i32, i32* %s3, align 4
  %21 = load i32, i32* %s2, align 4
  %cmp14 = icmp sge i32 %20, %21
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %22 = load i32, i32* %s3, align 4
  store i32 %22, i32* %s4, align 4
  %23 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state16 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %23, i32 0, i32 0
  %24 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state16, align 8
  %arrayidx17 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %24, i64 3
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx17, i32 0, i32 1
  %25 = load i32, i32* %history, align 4
  %26 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state18 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %26, i32 0, i32 0
  %27 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state18, align 8
  %arrayidx19 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %27, i64 4
  %history20 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx19, i32 0, i32 1
  store i32 %25, i32* %history20, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %28 = load i32, i32* %s2, align 4
  store i32 %28, i32* %s4, align 4
  %29 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state21 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %29, i32 0, i32 0
  %30 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %30, i64 2
  %history23 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx22, i32 0, i32 1
  %31 = load i32, i32* %history23, align 4
  %32 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state24 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %32, i32 0, i32 0
  %33 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state24, align 8
  %arrayidx25 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %33, i64 4
  %history26 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx25, i32 0, i32 1
  store i32 %31, i32* %history26, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.37

if.else.27:                                       ; preds = %entry
  %34 = load i32, i32* %s4, align 4
  %35 = load i32, i32* %s2, align 4
  %cmp28 = icmp slt i32 %34, %35
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.else.27
  %36 = load i32, i32* %s2, align 4
  store i32 %36, i32* %s4, align 4
  %37 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state30 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %37, i32 0, i32 0
  %38 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state30, align 8
  %arrayidx31 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %38, i64 2
  %history32 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx31, i32 0, i32 1
  %39 = load i32, i32* %history32, align 4
  %40 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state33 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %40, i32 0, i32 0
  %41 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %41, i64 4
  %history35 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx34, i32 0, i32 1
  store i32 %39, i32* %history35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.else.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %42 = load i32, i32* %s4, align 4
  %43 = load i16*, i16** %senid.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %43, i64 4
  %44 = load i16, i16* %arrayidx38, align 2
  %idxprom = sext i16 %44 to i64
  %45 = load i32*, i32** %senscr.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %45, i64 %idxprom
  %46 = load i32, i32* %arrayidx39, align 4
  %call40 = call i32 @NO_UFLOW_ADD(i32 %42, i32 %46)
  store i32 %call40, i32* %s4, align 4
  %47 = load i32, i32* %s4, align 4
  %48 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state41 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %48, i32 0, i32 0
  %49 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %49, i64 4
  %score43 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx42, i32 0, i32 0
  store i32 %47, i32* %score43, align 4
  %50 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state44 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %50, i32 0, i32 0
  %51 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state44, align 8
  %arrayidx45 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %51, i64 3
  %score46 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx45, i32 0, i32 0
  %52 = load i32, i32* %score46, align 4
  %53 = load i32*, i32** %tp, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %53, i64 21
  %54 = load i32, i32* %arrayidx47, align 4
  %call48 = call i32 @NO_UFLOW_ADD(i32 %52, i32 %54)
  store i32 %call48, i32* %s3, align 4
  %55 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state49 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %55, i32 0, i32 0
  %56 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state49, align 8
  %arrayidx50 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %56, i64 2
  %score51 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx50, i32 0, i32 0
  %57 = load i32, i32* %score51, align 4
  %58 = load i32*, i32** %tp, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %58, i64 15
  %59 = load i32, i32* %arrayidx52, align 4
  %call53 = call i32 @NO_UFLOW_ADD(i32 %57, i32 %59)
  store i32 %call53, i32* %s2, align 4
  %60 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state54 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %60, i32 0, i32 0
  %61 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state54, align 8
  %arrayidx55 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %61, i64 1
  %score56 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx55, i32 0, i32 0
  %62 = load i32, i32* %score56, align 4
  %63 = load i32*, i32** %tp, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %63, i64 9
  %64 = load i32, i32* %arrayidx57, align 4
  %call58 = call i32 @NO_UFLOW_ADD(i32 %62, i32 %64)
  store i32 %call58, i32* %s1, align 4
  %65 = load i32, i32* %s3, align 4
  %66 = load i32, i32* %s2, align 4
  %cmp59 = icmp slt i32 %65, %66
  br i1 %cmp59, label %if.then.60, label %if.else.77

if.then.60:                                       ; preds = %if.end.37
  %67 = load i32, i32* %s2, align 4
  %68 = load i32, i32* %s1, align 4
  %cmp61 = icmp sge i32 %67, %68
  br i1 %cmp61, label %if.then.62, label %if.else.69

if.then.62:                                       ; preds = %if.then.60
  %69 = load i32, i32* %s2, align 4
  store i32 %69, i32* %s3, align 4
  %70 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state63 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %70, i32 0, i32 0
  %71 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %71, i64 2
  %history65 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx64, i32 0, i32 1
  %72 = load i32, i32* %history65, align 4
  %73 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state66 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %73, i32 0, i32 0
  %74 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %74, i64 3
  %history68 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx67, i32 0, i32 1
  store i32 %72, i32* %history68, align 4
  br label %if.end.76

if.else.69:                                       ; preds = %if.then.60
  %75 = load i32, i32* %s1, align 4
  store i32 %75, i32* %s3, align 4
  %76 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state70 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %76, i32 0, i32 0
  %77 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state70, align 8
  %arrayidx71 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %77, i64 1
  %history72 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx71, i32 0, i32 1
  %78 = load i32, i32* %history72, align 4
  %79 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state73 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %79, i32 0, i32 0
  %80 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %80, i64 3
  %history75 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx74, i32 0, i32 1
  store i32 %78, i32* %history75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.69, %if.then.62
  br label %if.end.87

if.else.77:                                       ; preds = %if.end.37
  %81 = load i32, i32* %s3, align 4
  %82 = load i32, i32* %s1, align 4
  %cmp78 = icmp slt i32 %81, %82
  br i1 %cmp78, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %if.else.77
  %83 = load i32, i32* %s1, align 4
  store i32 %83, i32* %s3, align 4
  %84 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state80 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %84, i32 0, i32 0
  %85 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state80, align 8
  %arrayidx81 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %85, i64 1
  %history82 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx81, i32 0, i32 1
  %86 = load i32, i32* %history82, align 4
  %87 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state83 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %87, i32 0, i32 0
  %88 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state83, align 8
  %arrayidx84 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %88, i64 3
  %history85 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx84, i32 0, i32 1
  store i32 %86, i32* %history85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %if.else.77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.76
  %89 = load i32, i32* %s3, align 4
  %90 = load i16*, i16** %senid.addr, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %90, i64 3
  %91 = load i16, i16* %arrayidx88, align 2
  %idxprom89 = sext i16 %91 to i64
  %92 = load i32*, i32** %senscr.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %92, i64 %idxprom89
  %93 = load i32, i32* %arrayidx90, align 4
  %call91 = call i32 @NO_UFLOW_ADD(i32 %89, i32 %93)
  store i32 %call91, i32* %s3, align 4
  %94 = load i32, i32* %s3, align 4
  %95 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state92 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %95, i32 0, i32 0
  %96 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state92, align 8
  %arrayidx93 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %96, i64 3
  %score94 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx93, i32 0, i32 0
  store i32 %94, i32* %score94, align 4
  %97 = load i32, i32* %s4, align 4
  %98 = load i32, i32* %s3, align 4
  %cmp95 = icmp sgt i32 %97, %98
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.87
  %99 = load i32, i32* %s4, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.87
  %100 = load i32, i32* %s3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %99, %cond.true ], [ %100, %cond.false ]
  store i32 %cond, i32* %best, align 4
  %101 = load i32, i32* %s4, align 4
  %102 = load i32*, i32** %tp, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %102, i64 29
  %103 = load i32, i32* %arrayidx96, align 4
  %call97 = call i32 @NO_UFLOW_ADD(i32 %101, i32 %103)
  store i32 %call97, i32* %s4, align 4
  %104 = load i32, i32* %s3, align 4
  %105 = load i32*, i32** %tp, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %105, i64 23
  %106 = load i32, i32* %arrayidx98, align 4
  %call99 = call i32 @NO_UFLOW_ADD(i32 %104, i32 %106)
  store i32 %call99, i32* %s3, align 4
  %107 = load i32, i32* %s4, align 4
  %108 = load i32, i32* %s3, align 4
  %cmp100 = icmp slt i32 %107, %108
  br i1 %cmp100, label %if.then.101, label %if.else.108

if.then.101:                                      ; preds = %cond.end
  %109 = load i32, i32* %s3, align 4
  %110 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %110, i32 0, i32 2
  %score102 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out, i32 0, i32 0
  store i32 %109, i32* %score102, align 4
  %111 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state103 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %111, i32 0, i32 0
  %112 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state103, align 8
  %arrayidx104 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %112, i64 3
  %history105 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx104, i32 0, i32 1
  %113 = load i32, i32* %history105, align 4
  %114 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out106 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %114, i32 0, i32 2
  %history107 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out106, i32 0, i32 1
  store i32 %113, i32* %history107, align 4
  br label %if.end.116

if.else.108:                                      ; preds = %cond.end
  %115 = load i32, i32* %s4, align 4
  %116 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out109 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %116, i32 0, i32 2
  %score110 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out109, i32 0, i32 0
  store i32 %115, i32* %score110, align 4
  %117 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state111 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %117, i32 0, i32 0
  %118 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state111, align 8
  %arrayidx112 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %118, i64 4
  %history113 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx112, i32 0, i32 1
  %119 = load i32, i32* %history113, align 4
  %120 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out114 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %120, i32 0, i32 2
  %history115 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out114, i32 0, i32 1
  store i32 %119, i32* %history115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.108, %if.then.101
  %121 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state117 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %121, i32 0, i32 0
  %122 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state117, align 8
  %arrayidx118 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %122, i64 2
  %score119 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx118, i32 0, i32 0
  %123 = load i32, i32* %score119, align 4
  %124 = load i32*, i32** %tp, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %124, i64 14
  %125 = load i32, i32* %arrayidx120, align 4
  %call121 = call i32 @NO_UFLOW_ADD(i32 %123, i32 %125)
  store i32 %call121, i32* %s2, align 4
  %126 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state122 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %126, i32 0, i32 0
  %127 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state122, align 8
  %arrayidx123 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %127, i64 1
  %score124 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx123, i32 0, i32 0
  %128 = load i32, i32* %score124, align 4
  %129 = load i32*, i32** %tp, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %129, i64 8
  %130 = load i32, i32* %arrayidx125, align 4
  %call126 = call i32 @NO_UFLOW_ADD(i32 %128, i32 %130)
  store i32 %call126, i32* %s1, align 4
  %131 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state127 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %131, i32 0, i32 0
  %132 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state127, align 8
  %arrayidx128 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %132, i64 0
  %score129 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx128, i32 0, i32 0
  %133 = load i32, i32* %score129, align 4
  %134 = load i32*, i32** %tp, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %134, i64 2
  %135 = load i32, i32* %arrayidx130, align 4
  %call131 = call i32 @NO_UFLOW_ADD(i32 %133, i32 %135)
  store i32 %call131, i32* %s0, align 4
  %136 = load i32, i32* %s2, align 4
  %137 = load i32, i32* %s1, align 4
  %cmp132 = icmp slt i32 %136, %137
  br i1 %cmp132, label %if.then.133, label %if.else.150

if.then.133:                                      ; preds = %if.end.116
  %138 = load i32, i32* %s1, align 4
  %139 = load i32, i32* %s0, align 4
  %cmp134 = icmp sge i32 %138, %139
  br i1 %cmp134, label %if.then.135, label %if.else.142

if.then.135:                                      ; preds = %if.then.133
  %140 = load i32, i32* %s1, align 4
  store i32 %140, i32* %s2, align 4
  %141 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state136 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %141, i32 0, i32 0
  %142 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state136, align 8
  %arrayidx137 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %142, i64 1
  %history138 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx137, i32 0, i32 1
  %143 = load i32, i32* %history138, align 4
  %144 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state139 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %144, i32 0, i32 0
  %145 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state139, align 8
  %arrayidx140 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %145, i64 2
  %history141 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx140, i32 0, i32 1
  store i32 %143, i32* %history141, align 4
  br label %if.end.149

if.else.142:                                      ; preds = %if.then.133
  %146 = load i32, i32* %s0, align 4
  store i32 %146, i32* %s2, align 4
  %147 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state143 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %147, i32 0, i32 0
  %148 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state143, align 8
  %arrayidx144 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %148, i64 0
  %history145 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx144, i32 0, i32 1
  %149 = load i32, i32* %history145, align 4
  %150 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state146 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %150, i32 0, i32 0
  %151 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state146, align 8
  %arrayidx147 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %151, i64 2
  %history148 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx147, i32 0, i32 1
  store i32 %149, i32* %history148, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.142, %if.then.135
  br label %if.end.160

if.else.150:                                      ; preds = %if.end.116
  %152 = load i32, i32* %s2, align 4
  %153 = load i32, i32* %s0, align 4
  %cmp151 = icmp slt i32 %152, %153
  br i1 %cmp151, label %if.then.152, label %if.end.159

if.then.152:                                      ; preds = %if.else.150
  %154 = load i32, i32* %s0, align 4
  store i32 %154, i32* %s2, align 4
  %155 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state153 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %155, i32 0, i32 0
  %156 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state153, align 8
  %arrayidx154 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %156, i64 0
  %history155 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx154, i32 0, i32 1
  %157 = load i32, i32* %history155, align 4
  %158 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state156 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %158, i32 0, i32 0
  %159 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state156, align 8
  %arrayidx157 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %159, i64 2
  %history158 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx157, i32 0, i32 1
  store i32 %157, i32* %history158, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.152, %if.else.150
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.149
  %160 = load i32, i32* %s2, align 4
  %161 = load i16*, i16** %senid.addr, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %161, i64 2
  %162 = load i16, i16* %arrayidx161, align 2
  %idxprom162 = sext i16 %162 to i64
  %163 = load i32*, i32** %senscr.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %163, i64 %idxprom162
  %164 = load i32, i32* %arrayidx163, align 4
  %call164 = call i32 @NO_UFLOW_ADD(i32 %160, i32 %164)
  store i32 %call164, i32* %s2, align 4
  %165 = load i32, i32* %s2, align 4
  %166 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state165 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %166, i32 0, i32 0
  %167 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state165, align 8
  %arrayidx166 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %167, i64 2
  %score167 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx166, i32 0, i32 0
  store i32 %165, i32* %score167, align 4
  %168 = load i32, i32* %best, align 4
  %169 = load i32, i32* %s2, align 4
  %cmp168 = icmp slt i32 %168, %169
  br i1 %cmp168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.160
  %170 = load i32, i32* %s2, align 4
  store i32 %170, i32* %best, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %if.end.160
  %171 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state171 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %171, i32 0, i32 0
  %172 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state171, align 8
  %arrayidx172 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %172, i64 1
  %score173 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx172, i32 0, i32 0
  %173 = load i32, i32* %score173, align 4
  %174 = load i32*, i32** %tp, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %174, i64 7
  %175 = load i32, i32* %arrayidx174, align 4
  %call175 = call i32 @NO_UFLOW_ADD(i32 %173, i32 %175)
  store i32 %call175, i32* %s1, align 4
  %176 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state176 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %176, i32 0, i32 0
  %177 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state176, align 8
  %arrayidx177 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %177, i64 0
  %score178 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx177, i32 0, i32 0
  %178 = load i32, i32* %score178, align 4
  %179 = load i32*, i32** %tp, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %179, i64 1
  %180 = load i32, i32* %arrayidx179, align 4
  %call180 = call i32 @NO_UFLOW_ADD(i32 %178, i32 %180)
  store i32 %call180, i32* %s0, align 4
  %181 = load i32, i32* %s1, align 4
  %182 = load i32, i32* %s0, align 4
  %cmp181 = icmp slt i32 %181, %182
  br i1 %cmp181, label %if.then.182, label %if.end.189

if.then.182:                                      ; preds = %if.end.170
  %183 = load i32, i32* %s0, align 4
  store i32 %183, i32* %s1, align 4
  %184 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state183 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %184, i32 0, i32 0
  %185 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state183, align 8
  %arrayidx184 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %185, i64 0
  %history185 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx184, i32 0, i32 1
  %186 = load i32, i32* %history185, align 4
  %187 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state186 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %187, i32 0, i32 0
  %188 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state186, align 8
  %arrayidx187 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %188, i64 1
  %history188 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx187, i32 0, i32 1
  store i32 %186, i32* %history188, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.182, %if.end.170
  %189 = load i32, i32* %s1, align 4
  %190 = load i16*, i16** %senid.addr, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %190, i64 1
  %191 = load i16, i16* %arrayidx190, align 2
  %idxprom191 = sext i16 %191 to i64
  %192 = load i32*, i32** %senscr.addr, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %192, i64 %idxprom191
  %193 = load i32, i32* %arrayidx192, align 4
  %call193 = call i32 @NO_UFLOW_ADD(i32 %189, i32 %193)
  store i32 %call193, i32* %s1, align 4
  %194 = load i32, i32* %s1, align 4
  %195 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state194 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %195, i32 0, i32 0
  %196 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state194, align 8
  %arrayidx195 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %196, i64 1
  %score196 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx195, i32 0, i32 0
  store i32 %194, i32* %score196, align 4
  %197 = load i32, i32* %best, align 4
  %198 = load i32, i32* %s1, align 4
  %cmp197 = icmp slt i32 %197, %198
  br i1 %cmp197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.189
  %199 = load i32, i32* %s1, align 4
  store i32 %199, i32* %best, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.end.189
  %200 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state200 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %200, i32 0, i32 0
  %201 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state200, align 8
  %arrayidx201 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %201, i64 0
  %score202 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx201, i32 0, i32 0
  %202 = load i32, i32* %score202, align 4
  %203 = load i32*, i32** %tp, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %203, i64 0
  %204 = load i32, i32* %arrayidx203, align 4
  %call204 = call i32 @NO_UFLOW_ADD(i32 %202, i32 %204)
  store i32 %call204, i32* %s0, align 4
  %205 = load i32, i32* %s0, align 4
  %206 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %206, i32 0, i32 1
  %score205 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  %207 = load i32, i32* %score205, align 4
  %cmp206 = icmp slt i32 %205, %207
  br i1 %cmp206, label %if.then.207, label %if.end.215

if.then.207:                                      ; preds = %if.end.199
  %208 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in208 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %208, i32 0, i32 1
  %score209 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in208, i32 0, i32 0
  %209 = load i32, i32* %score209, align 4
  store i32 %209, i32* %s0, align 4
  %210 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in210 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %210, i32 0, i32 1
  %history211 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in210, i32 0, i32 1
  %211 = load i32, i32* %history211, align 4
  %212 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state212 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %212, i32 0, i32 0
  %213 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state212, align 8
  %arrayidx213 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %213, i64 0
  %history214 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx213, i32 0, i32 1
  store i32 %211, i32* %history214, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.207, %if.end.199
  %214 = load i32, i32* %s0, align 4
  %215 = load i16*, i16** %senid.addr, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %215, i64 0
  %216 = load i16, i16* %arrayidx216, align 2
  %idxprom217 = sext i16 %216 to i64
  %217 = load i32*, i32** %senscr.addr, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %217, i64 %idxprom217
  %218 = load i32, i32* %arrayidx218, align 4
  %call219 = call i32 @NO_UFLOW_ADD(i32 %214, i32 %218)
  store i32 %call219, i32* %s0, align 4
  %219 = load i32, i32* %s0, align 4
  %220 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state220 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %220, i32 0, i32 0
  %221 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state220, align 8
  %arrayidx221 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %221, i64 0
  %score222 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx221, i32 0, i32 0
  store i32 %219, i32* %score222, align 4
  %222 = load i32, i32* %best, align 4
  %223 = load i32, i32* %s0, align 4
  %cmp223 = icmp slt i32 %222, %223
  br i1 %cmp223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.215
  %224 = load i32, i32* %s0, align 4
  store i32 %224, i32* %best, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.215
  %225 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in226 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %225, i32 0, i32 1
  %score227 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in226, i32 0, i32 0
  store i32 -939524096, i32* %score227, align 4
  %226 = load i32, i32* %best, align 4
  %227 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %bestscore = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %227, i32 0, i32 4
  store i32 %226, i32* %bestscore, align 4
  %228 = load i32, i32* %best, align 4
  ret i32 %228
}

; Function Attrs: nounwind uwtable
define internal i32 @NO_UFLOW_ADD(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.2, label %cond.false

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %b.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.2
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %5 = load i32, i32* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -2147483648, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hmm_vit_eval_3st(%struct.hmm_t* %hmm, i16* %senid, i32* %senscr) #0 {
entry:
  %hmm.addr = alloca %struct.hmm_t*, align 8
  %senid.addr = alloca i16*, align 8
  %senscr.addr = alloca i32*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %best = alloca i32, align 4
  %tp = alloca i32*, align 8
  store %struct.hmm_t* %hmm, %struct.hmm_t** %hmm.addr, align 8
  store i16* %senid, i16** %senid.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  %0 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %tp1 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %0, i32 0, i32 3
  %1 = load i32**, i32*** %tp1, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %tp, align 8
  %3 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %3, i32 0, i32 0
  %4 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state, align 8
  %arrayidx2 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %4, i64 2
  %score = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %score, align 4
  %6 = load i32*, i32** %tp, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 10
  %7 = load i32, i32* %arrayidx3, align 4
  %call = call i32 @NO_UFLOW_ADD(i32 %5, i32 %7)
  store i32 %call, i32* %s2, align 4
  %8 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state4 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %8, i32 0, i32 0
  %9 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %9, i64 1
  %score6 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx5, i32 0, i32 0
  %10 = load i32, i32* %score6, align 4
  %11 = load i32*, i32** %tp, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 6
  %12 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 @NO_UFLOW_ADD(i32 %10, i32 %12)
  store i32 %call8, i32* %s1, align 4
  %13 = load i32*, i32** %tp, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 2
  %14 = load i32, i32* %arrayidx9, align 4
  %cmp = icmp sgt i32 %14, -939524096
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %15 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state10 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %15, i32 0, i32 0
  %16 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state10, align 8
  %arrayidx11 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %16, i64 0
  %score12 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx11, i32 0, i32 0
  %17 = load i32, i32* %score12, align 4
  %18 = load i32*, i32** %tp, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 @NO_UFLOW_ADD(i32 %17, i32 %19)
  store i32 %call14, i32* %s0, align 4
  %20 = load i32, i32* %s2, align 4
  %21 = load i32, i32* %s1, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %if.then.16, label %if.else.30

if.then.16:                                       ; preds = %if.then
  %22 = load i32, i32* %s1, align 4
  %23 = load i32, i32* %s0, align 4
  %cmp17 = icmp sge i32 %22, %23
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.16
  %24 = load i32, i32* %s1, align 4
  store i32 %24, i32* %s2, align 4
  %25 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state19 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %25, i32 0, i32 0
  %26 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %26, i64 1
  %history = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx20, i32 0, i32 1
  %27 = load i32, i32* %history, align 4
  %28 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state21 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %28, i32 0, i32 0
  %29 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state21, align 8
  %arrayidx22 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %29, i64 2
  %history23 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx22, i32 0, i32 1
  store i32 %27, i32* %history23, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.16
  %30 = load i32, i32* %s0, align 4
  store i32 %30, i32* %s2, align 4
  %31 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state24 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %31, i32 0, i32 0
  %32 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state24, align 8
  %arrayidx25 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %32, i64 0
  %history26 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx25, i32 0, i32 1
  %33 = load i32, i32* %history26, align 4
  %34 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state27 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %34, i32 0, i32 0
  %35 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %35, i64 2
  %history29 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx28, i32 0, i32 1
  store i32 %33, i32* %history29, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.40

if.else.30:                                       ; preds = %if.then
  %36 = load i32, i32* %s2, align 4
  %37 = load i32, i32* %s0, align 4
  %cmp31 = icmp slt i32 %36, %37
  br i1 %cmp31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.else.30
  %38 = load i32, i32* %s0, align 4
  store i32 %38, i32* %s2, align 4
  %39 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state33 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %39, i32 0, i32 0
  %40 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state33, align 8
  %arrayidx34 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %40, i64 0
  %history35 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx34, i32 0, i32 1
  %41 = load i32, i32* %history35, align 4
  %42 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state36 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %42, i32 0, i32 0
  %43 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %43, i64 2
  %history38 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx37, i32 0, i32 1
  store i32 %41, i32* %history38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.32, %if.else.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  br label %if.end.51

if.else.41:                                       ; preds = %entry
  %44 = load i32, i32* %s2, align 4
  %45 = load i32, i32* %s1, align 4
  %cmp42 = icmp slt i32 %44, %45
  br i1 %cmp42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.else.41
  %46 = load i32, i32* %s1, align 4
  store i32 %46, i32* %s2, align 4
  %47 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state44 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %47, i32 0, i32 0
  %48 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state44, align 8
  %arrayidx45 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %48, i64 1
  %history46 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx45, i32 0, i32 1
  %49 = load i32, i32* %history46, align 4
  %50 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state47 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %50, i32 0, i32 0
  %51 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state47, align 8
  %arrayidx48 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %51, i64 2
  %history49 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx48, i32 0, i32 1
  store i32 %49, i32* %history49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.else.41
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.40
  %52 = load i32, i32* %s2, align 4
  %53 = load i16*, i16** %senid.addr, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %53, i64 2
  %54 = load i16, i16* %arrayidx52, align 2
  %idxprom = sext i16 %54 to i64
  %55 = load i32*, i32** %senscr.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %55, i64 %idxprom
  %56 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 @NO_UFLOW_ADD(i32 %52, i32 %56)
  store i32 %call54, i32* %s2, align 4
  %57 = load i32, i32* %s2, align 4
  %58 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state55 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %58, i32 0, i32 0
  %59 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state55, align 8
  %arrayidx56 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %59, i64 2
  %score57 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx56, i32 0, i32 0
  store i32 %57, i32* %score57, align 4
  %60 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state58 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %60, i32 0, i32 0
  %61 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state58, align 8
  %arrayidx59 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %61, i64 1
  %score60 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx59, i32 0, i32 0
  %62 = load i32, i32* %score60, align 4
  %63 = load i32*, i32** %tp, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %63, i64 5
  %64 = load i32, i32* %arrayidx61, align 4
  %call62 = call i32 @NO_UFLOW_ADD(i32 %62, i32 %64)
  store i32 %call62, i32* %s1, align 4
  %65 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state63 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %65, i32 0, i32 0
  %66 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state63, align 8
  %arrayidx64 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %66, i64 0
  %score65 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx64, i32 0, i32 0
  %67 = load i32, i32* %score65, align 4
  %68 = load i32*, i32** %tp, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %68, i64 1
  %69 = load i32, i32* %arrayidx66, align 4
  %call67 = call i32 @NO_UFLOW_ADD(i32 %67, i32 %69)
  store i32 %call67, i32* %s0, align 4
  %70 = load i32, i32* %s1, align 4
  %71 = load i32, i32* %s0, align 4
  %cmp68 = icmp slt i32 %70, %71
  br i1 %cmp68, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %if.end.51
  %72 = load i32, i32* %s0, align 4
  store i32 %72, i32* %s1, align 4
  %73 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state70 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %73, i32 0, i32 0
  %74 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state70, align 8
  %arrayidx71 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %74, i64 0
  %history72 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx71, i32 0, i32 1
  %75 = load i32, i32* %history72, align 4
  %76 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state73 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %76, i32 0, i32 0
  %77 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %77, i64 1
  %history75 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx74, i32 0, i32 1
  store i32 %75, i32* %history75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.69, %if.end.51
  %78 = load i32, i32* %s1, align 4
  %79 = load i16*, i16** %senid.addr, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %79, i64 1
  %80 = load i16, i16* %arrayidx77, align 2
  %idxprom78 = sext i16 %80 to i64
  %81 = load i32*, i32** %senscr.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %81, i64 %idxprom78
  %82 = load i32, i32* %arrayidx79, align 4
  %call80 = call i32 @NO_UFLOW_ADD(i32 %78, i32 %82)
  store i32 %call80, i32* %s1, align 4
  %83 = load i32, i32* %s1, align 4
  %84 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state81 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %84, i32 0, i32 0
  %85 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state81, align 8
  %arrayidx82 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %85, i64 1
  %score83 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx82, i32 0, i32 0
  store i32 %83, i32* %score83, align 4
  %86 = load i32, i32* %s2, align 4
  %87 = load i32, i32* %s1, align 4
  %cmp84 = icmp sgt i32 %86, %87
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.76
  %88 = load i32, i32* %s2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.76
  %89 = load i32, i32* %s1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ %89, %cond.false ]
  store i32 %cond, i32* %best, align 4
  %90 = load i32, i32* %s2, align 4
  %91 = load i32*, i32** %tp, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %91, i64 11
  %92 = load i32, i32* %arrayidx85, align 4
  %call86 = call i32 @NO_UFLOW_ADD(i32 %90, i32 %92)
  store i32 %call86, i32* %s2, align 4
  %93 = load i32*, i32** %tp, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %93, i64 7
  %94 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp sgt i32 %94, -939524096
  br i1 %cmp88, label %if.then.89, label %if.else.109

if.then.89:                                       ; preds = %cond.end
  %95 = load i32, i32* %s1, align 4
  %96 = load i32*, i32** %tp, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %96, i64 7
  %97 = load i32, i32* %arrayidx90, align 4
  %call91 = call i32 @NO_UFLOW_ADD(i32 %95, i32 %97)
  store i32 %call91, i32* %s1, align 4
  %98 = load i32, i32* %s2, align 4
  %99 = load i32, i32* %s1, align 4
  %cmp92 = icmp slt i32 %98, %99
  br i1 %cmp92, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.then.89
  %100 = load i32, i32* %s1, align 4
  %101 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %101, i32 0, i32 2
  %score94 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out, i32 0, i32 0
  store i32 %100, i32* %score94, align 4
  %102 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state95 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %102, i32 0, i32 0
  %103 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state95, align 8
  %arrayidx96 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %103, i64 1
  %history97 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx96, i32 0, i32 1
  %104 = load i32, i32* %history97, align 4
  %105 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out98 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %105, i32 0, i32 2
  %history99 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out98, i32 0, i32 1
  store i32 %104, i32* %history99, align 4
  br label %if.end.108

if.else.100:                                      ; preds = %if.then.89
  %106 = load i32, i32* %s2, align 4
  %107 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out101 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %107, i32 0, i32 2
  %score102 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out101, i32 0, i32 0
  store i32 %106, i32* %score102, align 4
  %108 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state103 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %108, i32 0, i32 0
  %109 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state103, align 8
  %arrayidx104 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %109, i64 2
  %history105 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx104, i32 0, i32 1
  %110 = load i32, i32* %history105, align 4
  %111 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out106 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %111, i32 0, i32 2
  %history107 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out106, i32 0, i32 1
  store i32 %110, i32* %history107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.100, %if.then.93
  br label %if.end.117

if.else.109:                                      ; preds = %cond.end
  %112 = load i32, i32* %s2, align 4
  %113 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out110 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %113, i32 0, i32 2
  %score111 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out110, i32 0, i32 0
  store i32 %112, i32* %score111, align 4
  %114 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state112 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %114, i32 0, i32 0
  %115 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state112, align 8
  %arrayidx113 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %115, i64 2
  %history114 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx113, i32 0, i32 1
  %116 = load i32, i32* %history114, align 4
  %117 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %out115 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %117, i32 0, i32 2
  %history116 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %out115, i32 0, i32 1
  store i32 %116, i32* %history116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.109, %if.end.108
  %118 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state118 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %118, i32 0, i32 0
  %119 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state118, align 8
  %arrayidx119 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %119, i64 0
  %score120 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx119, i32 0, i32 0
  %120 = load i32, i32* %score120, align 4
  %121 = load i32*, i32** %tp, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %121, i64 0
  %122 = load i32, i32* %arrayidx121, align 4
  %call122 = call i32 @NO_UFLOW_ADD(i32 %120, i32 %122)
  store i32 %call122, i32* %s0, align 4
  %123 = load i32, i32* %s0, align 4
  %124 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %124, i32 0, i32 1
  %score123 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in, i32 0, i32 0
  %125 = load i32, i32* %score123, align 4
  %cmp124 = icmp slt i32 %123, %125
  br i1 %cmp124, label %if.then.125, label %if.end.133

if.then.125:                                      ; preds = %if.end.117
  %126 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in126 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %126, i32 0, i32 1
  %score127 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in126, i32 0, i32 0
  %127 = load i32, i32* %score127, align 4
  store i32 %127, i32* %s0, align 4
  %128 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in128 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %128, i32 0, i32 1
  %history129 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in128, i32 0, i32 1
  %129 = load i32, i32* %history129, align 4
  %130 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state130 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %130, i32 0, i32 0
  %131 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state130, align 8
  %arrayidx131 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %131, i64 0
  %history132 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx131, i32 0, i32 1
  store i32 %129, i32* %history132, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.125, %if.end.117
  %132 = load i32, i32* %s0, align 4
  %133 = load i16*, i16** %senid.addr, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %133, i64 0
  %134 = load i16, i16* %arrayidx134, align 2
  %idxprom135 = sext i16 %134 to i64
  %135 = load i32*, i32** %senscr.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %135, i64 %idxprom135
  %136 = load i32, i32* %arrayidx136, align 4
  %call137 = call i32 @NO_UFLOW_ADD(i32 %132, i32 %136)
  store i32 %call137, i32* %s0, align 4
  %137 = load i32, i32* %s0, align 4
  %138 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %state138 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %138, i32 0, i32 0
  %139 = load %struct.hmm_state_t*, %struct.hmm_state_t** %state138, align 8
  %arrayidx139 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %139, i64 0
  %score140 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %arrayidx139, i32 0, i32 0
  store i32 %137, i32* %score140, align 4
  %140 = load i32, i32* %best, align 4
  %141 = load i32, i32* %s0, align 4
  %cmp141 = icmp slt i32 %140, %141
  br i1 %cmp141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.133
  %142 = load i32, i32* %s0, align 4
  store i32 %142, i32* %best, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.133
  %143 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %in144 = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %143, i32 0, i32 1
  %score145 = getelementptr inbounds %struct.hmm_state_t, %struct.hmm_state_t* %in144, i32 0, i32 0
  store i32 -939524096, i32* %score145, align 4
  %144 = load i32, i32* %best, align 4
  %145 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %bestscore = getelementptr inbounds %struct.hmm_t, %struct.hmm_t* %145, i32 0, i32 4
  store i32 %144, i32* %bestscore, align 4
  %146 = load i32, i32* %best, align 4
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define i32 @hmm_dump_vit_eval(%struct.hmm_t* %hmm, i32 %n_state, i16* %senid, i32* %senscr, %struct._IO_FILE* %fp) #0 {
entry:
  %hmm.addr = alloca %struct.hmm_t*, align 8
  %n_state.addr = alloca i32, align 4
  %senid.addr = alloca i16*, align 8
  %senscr.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bs = alloca i32, align 4
  store %struct.hmm_t* %hmm, %struct.hmm_t** %hmm.addr, align 8
  store i32 %n_state, i32* %n_state.addr, align 4
  store i16* %senid, i16** %senid.addr, align 8
  store i32* %senscr, i32** %senscr.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %bs, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %2 = load i32, i32* %n_state.addr, align 4
  %3 = load i16*, i16** %senid.addr, align 8
  %4 = load i32*, i32** %senscr.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @hmm_dump(%struct.hmm_t* %1, i32 %2, i16* %3, i32* %4, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %n_state.addr, align 4
  %cmp = icmp eq i32 %6, 5
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %8 = load i16*, i16** %senid.addr, align 8
  %9 = load i32*, i32** %senscr.addr, align 8
  %call = call i32 @hmm_vit_eval_5st(%struct.hmm_t* %7, i16* %8, i32* %9)
  store i32 %call, i32* %bs, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %n_state.addr, align 4
  %cmp2 = icmp eq i32 %10, 3
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %12 = load i16*, i16** %senid.addr, align 8
  %13 = load i32*, i32** %senscr.addr, align 8
  %call4 = call i32 @hmm_vit_eval_3st(%struct.hmm_t* %11, i16* %12, i32* %13)
  store i32 %call4, i32* %bs, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 427, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %14 = load i32, i32* %n_state.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool8 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %16 = load %struct.hmm_t*, %struct.hmm_t** %hmm.addr, align 8
  %17 = load i32, i32* %n_state.addr, align 4
  %18 = load i16*, i16** %senid.addr, align 8
  %19 = load i32*, i32** %senscr.addr, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @hmm_dump(%struct.hmm_t* %16, i32 %17, i16* %18, i32* %19, %struct._IO_FILE* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %21 = load i32, i32* %bs, align 4
  ret i32 %21
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
