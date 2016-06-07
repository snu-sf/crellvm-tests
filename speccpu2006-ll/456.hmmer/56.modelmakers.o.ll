; ModuleID = 'modelmakers.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [55 x i8] c"Alignment must have RF annotation to hand-build an HMM\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"modelmakers.c\00", align 1
@Alphabet_size = external global i32, align 4
@.str.2 = private unnamed_addr constant [302 x i8] c"No conserved consensus columns found; aborting construction!\0AThis is an unusual situation. Reexamine your sequence alignment. It is\0Aprobably unusually full of gaps, or lots of sequence fragments. You may be\0Aable to force HMMER to model it; see the --fast (and --gapmax), or --hand\0Aoptions to hmmbuild.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"X-PRM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"X-PRI\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"X-PRT\00", align 1

; Function Attrs: nounwind uwtable
define void @P7Handmodelmaker(%struct.msa_struct* %msa, i8** %dsq, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %dsq.addr = alloca i8**, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %matassign = alloca i32*, align 8
  %apos = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 13
  %1 = load i8*, i8** %rf, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %alen, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 111, i64 %mul)
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %matassign, align 8
  %5 = load i32*, i32** %matassign, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %apos, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 3
  %8 = load i32, i32* %alen1, align 4
  %cmp2 = icmp slt i32 %6, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %apos, align 4
  %add4 = add nsw i32 %9, 1
  %idxprom = sext i32 %add4 to i64
  %10 = load i32*, i32** %matassign, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  %11 = load i32, i32* %apos, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf7 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 13
  %13 = load i8*, i8** %rf7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, i32* %apos, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf13 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 13
  %17 = load i8*, i8** %rf13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom12
  %18 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp eq i32 %conv15, 46
  br i1 %cmp16, label %if.else, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %apos, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf20 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 13
  %21 = load i8*, i8** %rf20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom19
  %22 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 95
  br i1 %cmp23, label %if.else, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.18
  %23 = load i32, i32* %apos, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 13
  %25 = load i8*, i8** %rf27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom26
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 45
  br i1 %cmp30, label %if.else, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.25
  %27 = load i32, i32* %apos, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 13
  %29 = load i8*, i8** %rf34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %29, i64 %idxprom33
  %30 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %30 to i32
  %cmp37 = icmp eq i32 %conv36, 126
  br i1 %cmp37, label %if.else, label %if.then.39

if.then.39:                                       ; preds = %lor.lhs.false.32
  %31 = load i32, i32* %apos, align 4
  %add40 = add nsw i32 %31, 1
  %idxprom41 = sext i32 %add40 to i64
  %32 = load i32*, i32** %matassign, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %32, i64 %idxprom41
  %33 = load i32, i32* %arrayidx42, align 4
  %or = or i32 %33, 1
  store i32 %or, i32* %arrayidx42, align 4
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false.32, %lor.lhs.false.25, %lor.lhs.false.18, %lor.lhs.false, %for.body
  %34 = load i32, i32* %apos, align 4
  %add43 = add nsw i32 %34, 1
  %idxprom44 = sext i32 %add43 to i64
  %35 = load i32*, i32** %matassign, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %35, i64 %idxprom44
  %36 = load i32, i32* %arrayidx45, align 4
  %or46 = or i32 %36, 8
  store i32 %or46, i32* %arrayidx45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %37 = load i32, i32* %apos, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %39 = load i8**, i8*** %dsq.addr, align 8
  %40 = load i32*, i32** %matassign, align 8
  %41 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  %42 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  call void @matassign2hmm(%struct.msa_struct* %38, i8** %39, i32* %40, %struct.plan7_s** %41, %struct.p7trace_s*** %42)
  %43 = load i32*, i32** %matassign, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #4
  ret void
}

declare void @Die(i8*, ...) #1

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %matassign, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %dsq.addr = alloca i8**, align 8
  %matassign.addr = alloca i32*, align 8
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %hmm = alloca %struct.plan7_s*, align 8
  %tr = alloca %struct.p7trace_s**, align 8
  %M = alloca i32, align 4
  %idx = alloca i32, align 4
  %apos = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store i32* %matassign, i32** %matassign.addr, align 8
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  store i32 0, i32* %M, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %apos, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 3
  %2 = load i32, i32* %alen, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %matassign.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %M, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %M, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %apos, align 4
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %M, align 4
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.end
  store i32 1, i32* %apos, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %if.end.4
  %9 = load i32, i32* %apos, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %matassign.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %11, 8
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.5
  %12 = load i32, i32* %apos, align 4
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen10 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 3
  %14 = load i32, i32* %alen10, align 4
  %cmp11 = icmp sle i32 %12, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.5
  %15 = phi i1 [ false, %for.cond.5 ], [ %cmp11, %land.rhs ]
  br i1 %15, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %land.end
  %16 = load i32, i32* %apos, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i32*, i32** %matassign.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %17, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %or = or i32 %18, 16
  store i32 %or, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %19 = load i32, i32* %apos, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %apos, align 4
  br label %for.cond.5

for.end.17:                                       ; preds = %land.end
  %20 = load i32, i32* %apos, align 4
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen18 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 3
  %22 = load i32, i32* %alen18, align 4
  %cmp19 = icmp sle i32 %20, %22
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %for.end.17
  %23 = load i32, i32* %apos, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i32*, i32** %matassign.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %24, i64 %idxprom21
  %25 = load i32, i32* %arrayidx22, align 4
  %or23 = or i32 %25, 2
  store i32 %or23, i32* %arrayidx22, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %for.end.17
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen25 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 3
  %27 = load i32, i32* %alen25, align 4
  store i32 %27, i32* %apos, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.38, %if.end.24
  %28 = load i32, i32* %apos, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load i32*, i32** %matassign.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %29, i64 %idxprom27
  %30 = load i32, i32* %arrayidx28, align 4
  %and29 = and i32 %30, 8
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.rhs.31, label %land.end.33

land.rhs.31:                                      ; preds = %for.cond.26
  %31 = load i32, i32* %apos, align 4
  %cmp32 = icmp sgt i32 %31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.31, %for.cond.26
  %32 = phi i1 [ false, %for.cond.26 ], [ %cmp32, %land.rhs.31 ]
  br i1 %32, label %for.body.34, label %for.end.39

for.body.34:                                      ; preds = %land.end.33
  %33 = load i32, i32* %apos, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load i32*, i32** %matassign.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %34, i64 %idxprom35
  %35 = load i32, i32* %arrayidx36, align 4
  %or37 = or i32 %35, 32
  store i32 %or37, i32* %arrayidx36, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.34
  %36 = load i32, i32* %apos, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %apos, align 4
  br label %for.cond.26

for.end.39:                                       ; preds = %land.end.33
  %37 = load i32, i32* %apos, align 4
  %cmp40 = icmp sgt i32 %37, 0
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %for.end.39
  %38 = load i32, i32* %apos, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i32*, i32** %matassign.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %39, i64 %idxprom42
  %40 = load i32, i32* %arrayidx43, align 4
  %or44 = or i32 %40, 4
  store i32 %or44, i32* %arrayidx43, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %for.end.39
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 0
  %42 = load i8**, i8*** %aseq, align 8
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 4
  %44 = load i32, i32* %nseq, align 4
  %45 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen46 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 3
  %46 = load i32, i32* %alen46, align 4
  %47 = load i32*, i32** %matassign.addr, align 8
  call void @fake_tracebacks(i8** %42, i32 %44, i32 %46, i32* %47, %struct.p7trace_s*** %tr)
  %48 = load i32, i32* %M, align 4
  %call = call %struct.plan7_s* @AllocPlan7(i32 %48)
  store %struct.plan7_s* %call, %struct.plan7_s** %hmm, align 8
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @ZeroPlan7(%struct.plan7_s* %49)
  store i32 0, i32* %idx, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.57, %if.end.45
  %50 = load i32, i32* %idx, align 4
  %51 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq48 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %51, i32 0, i32 4
  %52 = load i32, i32* %nseq48, align 4
  %cmp49 = icmp slt i32 %50, %52
  br i1 %cmp49, label %for.body.50, label %for.end.59

for.body.50:                                      ; preds = %for.cond.47
  %53 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %54 = load i32, i32* %idx, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %55, i64 %idxprom51
  %56 = load i8*, i8** %arrayidx52, align 8
  %57 = load i32, i32* %idx, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %58, i32 0, i32 2
  %59 = load float*, float** %wgt, align 8
  %arrayidx54 = getelementptr inbounds float, float* %59, i64 %idxprom53
  %60 = load float, float* %arrayidx54, align 4
  %61 = load i32, i32* %idx, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %62, i64 %idxprom55
  %63 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx56, align 8
  call void @P7TraceCount(%struct.plan7_s* %53, i8* %56, float %60, %struct.p7trace_s* %63)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.50
  %64 = load i32, i32* %idx, align 4
  %inc58 = add nsw i32 %64, 1
  store i32 %inc58, i32* %idx, align 4
  br label %for.cond.47

for.end.59:                                       ; preds = %for.cond.47
  %65 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %66 = load i32*, i32** %matassign.addr, align 8
  %67 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  call void @annotate_model(%struct.plan7_s* %65, i32* %66, %struct.msa_struct* %67)
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 13
  %69 = load i8*, i8** %rf, align 8
  %cmp60 = icmp ne i8* %69, null
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.end.59
  %70 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf62 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %70, i32 0, i32 13
  %71 = load i8*, i8** %rf62, align 8
  call void @free(i8* %71) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.end.59
  %72 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen64 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %72, i32 0, i32 3
  %73 = load i32, i32* %alen64, align 4
  %add = add nsw i32 %73, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call65 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 564, i64 %mul)
  %74 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf66 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %74, i32 0, i32 13
  store i8* %call65, i8** %rf66, align 8
  store i32 0, i32* %apos, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.81, %if.end.63
  %75 = load i32, i32* %apos, align 4
  %76 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen68 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %76, i32 0, i32 3
  %77 = load i32, i32* %alen68, align 4
  %cmp69 = icmp slt i32 %75, %77
  br i1 %cmp69, label %for.body.71, label %for.end.83

for.body.71:                                      ; preds = %for.cond.67
  %78 = load i32, i32* %apos, align 4
  %add72 = add nsw i32 %78, 1
  %idxprom73 = sext i32 %add72 to i64
  %79 = load i32*, i32** %matassign.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %79, i64 %idxprom73
  %80 = load i32, i32* %arrayidx74, align 4
  %and75 = and i32 %80, 1
  %tobool76 = icmp ne i32 %and75, 0
  %cond = select i1 %tobool76, i32 120, i32 46
  %conv77 = trunc i32 %cond to i8
  %81 = load i32, i32* %apos, align 4
  %idxprom78 = sext i32 %81 to i64
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf79 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 13
  %83 = load i8*, i8** %rf79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %83, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx80, align 1
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.71
  %84 = load i32, i32* %apos, align 4
  %inc82 = add nsw i32 %84, 1
  store i32 %inc82, i32* %apos, align 4
  br label %for.cond.67

for.end.83:                                       ; preds = %for.cond.67
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen84 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 3
  %86 = load i32, i32* %alen84, align 4
  %idxprom85 = sext i32 %86 to i64
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf86 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 13
  %88 = load i8*, i8** %rf86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %88, i64 %idxprom85
  store i8 0, i8* %arrayidx87, align 1
  %89 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  %cmp88 = icmp ne %struct.p7trace_s*** %89, null
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %for.end.83
  %90 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %91 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  store %struct.p7trace_s** %90, %struct.p7trace_s*** %91, align 8
  br label %if.end.101

if.else:                                          ; preds = %for.end.83
  store i32 0, i32* %idx, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.98, %if.else
  %92 = load i32, i32* %idx, align 4
  %93 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq92 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %93, i32 0, i32 4
  %94 = load i32, i32* %nseq92, align 4
  %cmp93 = icmp slt i32 %92, %94
  br i1 %cmp93, label %for.body.95, label %for.end.100

for.body.95:                                      ; preds = %for.cond.91
  %95 = load i32, i32* %idx, align 4
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx97 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %96, i64 %idxprom96
  %97 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx97, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %97)
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.95
  %98 = load i32, i32* %idx, align 4
  %inc99 = add nsw i32 %98, 1
  store i32 %inc99, i32* %idx, align 4
  br label %for.cond.91

for.end.100:                                      ; preds = %for.cond.91
  %99 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %100 = bitcast %struct.p7trace_s** %99 to i8*
  call void @free(i8* %100) #4
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %if.then.90
  %101 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  %cmp102 = icmp ne %struct.plan7_s** %101, null
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.end.101
  %102 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %103 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.plan7_s* %102, %struct.plan7_s** %103, align 8
  br label %if.end.106

if.else.105:                                      ; preds = %if.end.101
  %104 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  call void @FreePlan7(%struct.plan7_s* %104)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.104
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @P7Fastmodelmaker(%struct.msa_struct* %msa, i8** %dsq, float %maxgap, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %dsq.addr = alloca i8**, align 8
  %maxgap.addr = alloca float, align 4
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %matassign = alloca i32*, align 8
  %idx = alloca i32, align 4
  %apos = alloca i32, align 4
  %ngap = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store float %maxgap, float* %maxgap.addr, align 4
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %alen, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 172, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %matassign, align 8
  %3 = load i32*, i32** %matassign, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %entry
  %4 = load i32, i32* %apos, align 4
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 3
  %6 = load i32, i32* %alen1, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %apos, align 4
  %add3 = add nsw i32 %7, 1
  %idxprom = sext i32 %add3 to i64
  %8 = load i32*, i32** %matassign, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 0, i32* %arrayidx4, align 4
  store i32 0, i32* %ngap, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %idx, align 4
  %10 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %10, i32 0, i32 4
  %11 = load i32, i32* %nseq, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %12 = load i32, i32* %apos, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %14, i32 0, i32 0
  %15 = load i8**, i8*** %aseq, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 %idxprom10
  %16 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 32
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %18 = load i32, i32* %apos, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i32, i32* %idx, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq18 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %20, i32 0, i32 0
  %21 = load i8**, i8*** %aseq18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %21, i64 %idxprom17
  %22 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %idxprom16
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %apos, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq27 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %26, i32 0, i32 0
  %27 = load i8**, i8*** %aseq27, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %27, i64 %idxprom26
  %28 = load i8*, i8** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %28, i64 %idxprom25
  %29 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %29 to i32
  %cmp31 = icmp eq i32 %conv30, 95
  br i1 %cmp31, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.24
  %30 = load i32, i32* %apos, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq36 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 0
  %33 = load i8**, i8*** %aseq36, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %33, i64 %idxprom35
  %34 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %34, i64 %idxprom34
  %35 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %35 to i32
  %cmp40 = icmp eq i32 %conv39, 45
  br i1 %cmp40, label %if.then, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.33
  %36 = load i32, i32* %apos, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 0
  %39 = load i8**, i8*** %aseq45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %39, i64 %idxprom44
  %40 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %40, i64 %idxprom43
  %41 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %41 to i32
  %cmp49 = icmp eq i32 %conv48, 126
  br i1 %cmp49, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.42, %lor.lhs.false.33, %lor.lhs.false.24, %lor.lhs.false, %for.body.8
  %42 = load i32, i32* %ngap, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %ngap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.42
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %idx, align 4
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, i32* %idx, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %44 = load i32, i32* %ngap, align 4
  %conv52 = sitofp i32 %44 to float
  %45 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq53 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %45, i32 0, i32 4
  %46 = load i32, i32* %nseq53, align 4
  %conv54 = sitofp i32 %46 to float
  %div = fdiv float %conv52, %conv54
  %47 = load float, float* %maxgap.addr, align 4
  %cmp55 = fcmp ogt float %div, %47
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %for.end
  %48 = load i32, i32* %apos, align 4
  %add58 = add nsw i32 %48, 1
  %idxprom59 = sext i32 %add58 to i64
  %49 = load i32*, i32** %matassign, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %49, i64 %idxprom59
  %50 = load i32, i32* %arrayidx60, align 4
  %or = or i32 %50, 8
  store i32 %or, i32* %arrayidx60, align 4
  br label %if.end.65

if.else:                                          ; preds = %for.end
  %51 = load i32, i32* %apos, align 4
  %add61 = add nsw i32 %51, 1
  %idxprom62 = sext i32 %add61 to i64
  %52 = load i32*, i32** %matassign, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %52, i64 %idxprom62
  %53 = load i32, i32* %arrayidx63, align 4
  %or64 = or i32 %53, 1
  store i32 %or64, i32* %arrayidx63, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.57
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %54 = load i32, i32* %apos, align 4
  %inc67 = add nsw i32 %54, 1
  store i32 %inc67, i32* %apos, align 4
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %56 = load i8**, i8*** %dsq.addr, align 8
  %57 = load i32*, i32** %matassign, align 8
  %58 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  %59 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  call void @matassign2hmm(%struct.msa_struct* %55, i8** %56, i32* %57, %struct.plan7_s** %58, %struct.p7trace_s*** %59)
  %60 = load i32*, i32** %matassign, align 8
  %61 = bitcast i32* %60 to i8*
  call void @free(i8* %61) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7Maxmodelmaker(%struct.msa_struct* %msa, i8** %dsq, float %maxgap, %struct.p7prior_s* %prior, float* %null, float %null_p1, float %mpri, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %dsq.addr = alloca i8**, align 8
  %maxgap.addr = alloca float, align 4
  %prior.addr = alloca %struct.p7prior_s*, align 8
  %null.addr = alloca float*, align 8
  %null_p1.addr = alloca float, align 4
  %mpri.addr = alloca float, align 4
  %ret_hmm.addr = alloca %struct.plan7_s**, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %matc = alloca float**, align 8
  %cij = alloca [8 x float], align 16
  %tij = alloca [8 x float], align 16
  %matp = alloca [20 x float], align 16
  %insp = alloca [20 x float], align 16
  %insc = alloca [20 x float], align 16
  %sc = alloca float*, align 8
  %tbck = alloca i32*, align 8
  %matassign = alloca i32*, align 8
  %insopt = alloca i32*, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %bm1 = alloca float, align 4
  %bm2 = alloca float, align 4
  %est_M = alloca i32, align 4
  %t_me = alloca float, align 4
  %new = alloca float, align 4
  %bestsc = alloca float, align 4
  %code = alloca i32, align 4
  %ngap = alloca i32, align 4
  %wgtsum = alloca float, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store float %maxgap, float* %maxgap.addr, align 4
  store %struct.p7prior_s* %prior, %struct.p7prior_s** %prior.addr, align 8
  store float* %null, float** %null.addr, align 8
  store float %null_p1, float* %null_p1.addr, align 4
  store float %mpri, float* %mpri.addr, align 4
  store %struct.plan7_s** %ret_hmm, %struct.plan7_s*** %ret_hmm.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %alen, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 255, i64 %mul)
  %2 = bitcast i8* %call to float**
  store float** %2, float*** %matc, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %alen1, align 4
  %add2 = add nsw i32 %4, 2
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 4, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 256, i64 %mul4)
  %5 = bitcast i8* %call5 to float*
  store float* %5, float** %sc, align 8
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %alen6, align 4
  %add7 = add nsw i32 %7, 2
  %conv8 = sext i32 %add7 to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 257, i64 %mul9)
  %8 = bitcast i8* %call10 to i32*
  store i32* %8, i32** %tbck, align 8
  %9 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %9, i32 0, i32 3
  %10 = load i32, i32* %alen11, align 4
  %add12 = add nsw i32 %10, 1
  %conv13 = sext i32 %add12 to i64
  %mul14 = mul i64 4, %conv13
  %call15 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 258, i64 %mul14)
  %11 = bitcast i8* %call15 to i32*
  store i32* %11, i32** %matassign, align 8
  %12 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %nseq, align 4
  %conv16 = sext i32 %13 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 259, i64 %mul17)
  %14 = bitcast i8* %call18 to i32*
  store i32* %14, i32** %insopt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen19 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %16, i32 0, i32 3
  %17 = load i32, i32* %alen19, align 4
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* @Alphabet_size, align 4
  %conv21 = sext i32 %18 to i64
  %mul22 = mul i64 %conv21, 4
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 261, i64 %mul22)
  %19 = bitcast i8* %call23 to float*
  %20 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %20, 1
  %idxprom = sext i32 %add24 to i64
  %21 = load float**, float*** %matc, align 8
  %arrayidx = getelementptr inbounds float*, float** %21, i64 %idxprom
  store float* %19, float** %arrayidx, align 8
  %22 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %22, 1
  %idxprom26 = sext i32 %add25 to i64
  %23 = load float**, float*** %matc, align 8
  %arrayidx27 = getelementptr inbounds float*, float** %23, i64 %idxprom26
  %24 = load float*, float** %arrayidx27, align 8
  %25 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %24, i32 %25, float 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.95, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %28, i32 0, i32 3
  %29 = load i32, i32* %alen29, align 4
  %cmp30 = icmp slt i32 %27, %29
  br i1 %cmp30, label %for.body.32, label %for.end.97

for.body.32:                                      ; preds = %for.cond.28
  store i32 0, i32* %idx, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.92, %for.body.32
  %30 = load i32, i32* %idx, align 4
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq34 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 4
  %32 = load i32, i32* %nseq34, align 4
  %cmp35 = icmp slt i32 %30, %32
  br i1 %cmp35, label %for.body.37, label %for.end.94

for.body.37:                                      ; preds = %for.cond.33
  %33 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %34 = load i32, i32* %idx, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %35, i32 0, i32 0
  %36 = load i8**, i8*** %aseq, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %36, i64 %idxprom39
  %37 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %37, i64 %idxprom38
  %38 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %38 to i32
  %cmp43 = icmp eq i32 %conv42, 32
  br i1 %cmp43, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.37
  %39 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %40 to i64
  %41 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq47 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %41, i32 0, i32 0
  %42 = load i8**, i8*** %aseq47, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %42, i64 %idxprom46
  %43 = load i8*, i8** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %43, i64 %idxprom45
  %44 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %44 to i32
  %cmp51 = icmp eq i32 %conv50, 46
  br i1 %cmp51, label %if.end, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false
  %45 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %45 to i64
  %46 = load i32, i32* %idx, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq56 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %47, i32 0, i32 0
  %48 = load i8**, i8*** %aseq56, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %48, i64 %idxprom55
  %49 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %49, i64 %idxprom54
  %50 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %50 to i32
  %cmp60 = icmp eq i32 %conv59, 95
  br i1 %cmp60, label %if.end, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.53
  %51 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %51 to i64
  %52 = load i32, i32* %idx, align 4
  %idxprom64 = sext i32 %52 to i64
  %53 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %53, i32 0, i32 0
  %54 = load i8**, i8*** %aseq65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %54, i64 %idxprom64
  %55 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %55, i64 %idxprom63
  %56 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %56 to i32
  %cmp69 = icmp eq i32 %conv68, 45
  br i1 %cmp69, label %if.end, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.62
  %57 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load i32, i32* %idx, align 4
  %idxprom73 = sext i32 %58 to i64
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 0
  %60 = load i8**, i8*** %aseq74, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %60, i64 %idxprom73
  %61 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %61, i64 %idxprom72
  %62 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %62 to i32
  %cmp78 = icmp eq i32 %conv77, 126
  br i1 %cmp78, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.71
  %63 = load i32, i32* %i, align 4
  %add80 = add nsw i32 %63, 1
  %idxprom81 = sext i32 %add80 to i64
  %64 = load float**, float*** %matc, align 8
  %arrayidx82 = getelementptr inbounds float*, float** %64, i64 %idxprom81
  %65 = load float*, float** %arrayidx82, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load i32, i32* %idx, align 4
  %idxprom84 = sext i32 %67 to i64
  %68 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %68, i32 0, i32 0
  %69 = load i8**, i8*** %aseq85, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %69, i64 %idxprom84
  %70 = load i8*, i8** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %70, i64 %idxprom83
  %71 = load i8, i8* %arrayidx87, align 1
  %call88 = call i32 @SymbolIndex(i8 signext %71)
  %conv89 = trunc i32 %call88 to i8
  %72 = load i32, i32* %idx, align 4
  %idxprom90 = sext i32 %72 to i64
  %73 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %73, i32 0, i32 2
  %74 = load float*, float** %wgt, align 8
  %arrayidx91 = getelementptr inbounds float, float* %74, i64 %idxprom90
  %75 = load float, float* %arrayidx91, align 4
  call void @P7CountSymbol(float* %65, i8 signext %conv89, float %75)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.71, %lor.lhs.false.62, %lor.lhs.false.53, %lor.lhs.false, %for.body.37
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end
  %76 = load i32, i32* %idx, align 4
  %inc93 = add nsw i32 %76, 1
  store i32 %inc93, i32* %idx, align 4
  br label %for.cond.33

for.end.94:                                       ; preds = %for.cond.33
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %77 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %77, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.28

for.end.97:                                       ; preds = %for.cond.28
  %78 = load float, float* %mpri.addr, align 4
  %cmp98 = fcmp ogt float %78, 0.000000e+00
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.97
  %79 = load float, float* %mpri.addr, align 4
  %conv100 = fpext float %79 to double
  %call101 = call double @log(double %conv100) #4
  %mul102 = fmul double %call101, 0x3FF7154764EE6C2F
  br label %cond.end

cond.false:                                       ; preds = %for.end.97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul102, %cond.true ], [ -9.999000e+03, %cond.false ]
  %conv103 = fptrunc double %cond to float
  store float %conv103, float* %mpri.addr, align 4
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i32 0
  %80 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %i104 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %80, i32 0, i32 9
  %arrayidx105 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i104, i32 0, i64 0
  %arraydecay106 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx105, i32 0, i32 0
  %81 = load i32, i32* @Alphabet_size, align 4
  call void @FCopy(float* %arraydecay, float* %arraydecay106, i32 %81)
  %arraydecay107 = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i32 0
  %82 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay107, i32 %82)
  %83 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt108 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %83, i32 0, i32 2
  %84 = load float*, float** %wgt108, align 8
  %85 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq109 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %85, i32 0, i32 4
  %86 = load i32, i32* %nseq109, align 4
  %call110 = call float @FSum(float* %84, i32 %86)
  store float %call110, float* %wgtsum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.136, %cond.end
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* @Alphabet_size, align 4
  %cmp112 = icmp slt i32 %87, %88
  br i1 %cmp112, label %for.body.114, label %for.end.138

for.body.114:                                     ; preds = %for.cond.111
  %89 = load i32, i32* %x, align 4
  %idxprom115 = sext i32 %89 to i64
  %arrayidx116 = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i64 %idxprom115
  %90 = load float, float* %arrayidx116, align 4
  %91 = load i32, i32* %x, align 4
  %idxprom117 = sext i32 %91 to i64
  %92 = load float*, float** %null.addr, align 8
  %arrayidx118 = getelementptr inbounds float, float* %92, i64 %idxprom117
  %93 = load float, float* %arrayidx118, align 4
  %div = fdiv float %90, %93
  %cmp119 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp119, label %cond.true.121, label %cond.false.130

cond.true.121:                                    ; preds = %for.body.114
  %94 = load i32, i32* %x, align 4
  %idxprom122 = sext i32 %94 to i64
  %arrayidx123 = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i64 %idxprom122
  %95 = load float, float* %arrayidx123, align 4
  %96 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %96 to i64
  %97 = load float*, float** %null.addr, align 8
  %arrayidx125 = getelementptr inbounds float, float* %97, i64 %idxprom124
  %98 = load float, float* %arrayidx125, align 4
  %div126 = fdiv float %95, %98
  %conv127 = fpext float %div126 to double
  %call128 = call double @log(double %conv127) #4
  %mul129 = fmul double %call128, 0x3FF7154764EE6C2F
  br label %cond.end.131

cond.false.130:                                   ; preds = %for.body.114
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.121
  %cond132 = phi double [ %mul129, %cond.true.121 ], [ -9.999000e+03, %cond.false.130 ]
  %conv133 = fptrunc double %cond132 to float
  %99 = load i32, i32* %x, align 4
  %idxprom134 = sext i32 %99 to i64
  %arrayidx135 = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i64 %idxprom134
  store float %conv133, float* %arrayidx135, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %cond.end.131
  %100 = load i32, i32* %x, align 4
  %inc137 = add nsw i32 %100, 1
  store i32 %inc137, i32* %x, align 4
  br label %for.cond.111

for.end.138:                                      ; preds = %for.cond.111
  %101 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %call139 = call i32 @estimate_model_length(%struct.msa_struct* %101)
  store i32 %call139, i32* %est_M, align 4
  %102 = load i32, i32* %est_M, align 4
  %sub = sub nsw i32 %102, 1
  %conv140 = sitofp i32 %sub to float
  %conv141 = fpext float %conv140 to double
  %div142 = fdiv double 5.000000e-01, %conv141
  %conv143 = fptrunc double %div142 to float
  store float %conv143, float* %t_me, align 4
  store float 5.000000e-01, float* %bm1, align 4
  %103 = load i32, i32* %est_M, align 4
  %sub144 = sub nsw i32 %103, 1
  %conv145 = sitofp i32 %sub144 to float
  %conv146 = fpext float %conv145 to double
  %div147 = fdiv double 5.000000e-01, %conv146
  %conv148 = fptrunc double %div147 to float
  store float %conv148, float* %bm2, align 4
  %104 = load float, float* %bm1, align 4
  %105 = load float, float* %null_p1.addr, align 4
  %div149 = fdiv float %104, %105
  %cmp150 = fcmp ogt float %div149, 0.000000e+00
  br i1 %cmp150, label %cond.true.152, label %cond.false.157

cond.true.152:                                    ; preds = %for.end.138
  %106 = load float, float* %bm1, align 4
  %107 = load float, float* %null_p1.addr, align 4
  %div153 = fdiv float %106, %107
  %conv154 = fpext float %div153 to double
  %call155 = call double @log(double %conv154) #4
  %mul156 = fmul double %call155, 0x3FF7154764EE6C2F
  br label %cond.end.158

cond.false.157:                                   ; preds = %for.end.138
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.152
  %cond159 = phi double [ %mul156, %cond.true.152 ], [ -9.999000e+03, %cond.false.157 ]
  %conv160 = fptrunc double %cond159 to float
  store float %conv160, float* %bm1, align 4
  %108 = load float, float* %bm2, align 4
  %109 = load float, float* %null_p1.addr, align 4
  %div161 = fdiv float %108, %109
  %cmp162 = fcmp ogt float %div161, 0.000000e+00
  br i1 %cmp162, label %cond.true.164, label %cond.false.169

cond.true.164:                                    ; preds = %cond.end.158
  %110 = load float, float* %bm2, align 4
  %111 = load float, float* %null_p1.addr, align 4
  %div165 = fdiv float %110, %111
  %conv166 = fpext float %div165 to double
  %call167 = call double @log(double %conv166) #4
  %mul168 = fmul double %call167, 0x3FF7154764EE6C2F
  br label %cond.end.170

cond.false.169:                                   ; preds = %cond.end.158
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.164
  %cond171 = phi double [ %mul168, %cond.true.164 ], [ -9.999000e+03, %cond.false.169 ]
  %conv172 = fptrunc double %cond171 to float
  store float %conv172, float* %bm2, align 4
  store float 5.000000e-01, float* %maxgap.addr, align 4
  %112 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen173 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %112, i32 0, i32 3
  %113 = load i32, i32* %alen173, align 4
  store i32 %113, i32* %last, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.246, %cond.end.170
  %114 = load i32, i32* %last, align 4
  %cmp175 = icmp sge i32 %114, 1
  br i1 %cmp175, label %for.body.177, label %for.end.247

for.body.177:                                     ; preds = %for.cond.174
  store i32 0, i32* %ngap, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.235, %for.body.177
  %115 = load i32, i32* %idx, align 4
  %116 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq179 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %116, i32 0, i32 4
  %117 = load i32, i32* %nseq179, align 4
  %cmp180 = icmp slt i32 %115, %117
  br i1 %cmp180, label %for.body.182, label %for.end.237

for.body.182:                                     ; preds = %for.cond.178
  %118 = load i32, i32* %last, align 4
  %sub183 = sub nsw i32 %118, 1
  %idxprom184 = sext i32 %sub183 to i64
  %119 = load i32, i32* %idx, align 4
  %idxprom185 = sext i32 %119 to i64
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq186 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 0
  %121 = load i8**, i8*** %aseq186, align 8
  %arrayidx187 = getelementptr inbounds i8*, i8** %121, i64 %idxprom185
  %122 = load i8*, i8** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %122, i64 %idxprom184
  %123 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %123 to i32
  %cmp190 = icmp eq i32 %conv189, 32
  br i1 %cmp190, label %if.then.232, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %for.body.182
  %124 = load i32, i32* %last, align 4
  %sub193 = sub nsw i32 %124, 1
  %idxprom194 = sext i32 %sub193 to i64
  %125 = load i32, i32* %idx, align 4
  %idxprom195 = sext i32 %125 to i64
  %126 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq196 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %126, i32 0, i32 0
  %127 = load i8**, i8*** %aseq196, align 8
  %arrayidx197 = getelementptr inbounds i8*, i8** %127, i64 %idxprom195
  %128 = load i8*, i8** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %128, i64 %idxprom194
  %129 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %129 to i32
  %cmp200 = icmp eq i32 %conv199, 46
  br i1 %cmp200, label %if.then.232, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.192
  %130 = load i32, i32* %last, align 4
  %sub203 = sub nsw i32 %130, 1
  %idxprom204 = sext i32 %sub203 to i64
  %131 = load i32, i32* %idx, align 4
  %idxprom205 = sext i32 %131 to i64
  %132 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq206 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %132, i32 0, i32 0
  %133 = load i8**, i8*** %aseq206, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %133, i64 %idxprom205
  %134 = load i8*, i8** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %134, i64 %idxprom204
  %135 = load i8, i8* %arrayidx208, align 1
  %conv209 = sext i8 %135 to i32
  %cmp210 = icmp eq i32 %conv209, 95
  br i1 %cmp210, label %if.then.232, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.202
  %136 = load i32, i32* %last, align 4
  %sub213 = sub nsw i32 %136, 1
  %idxprom214 = sext i32 %sub213 to i64
  %137 = load i32, i32* %idx, align 4
  %idxprom215 = sext i32 %137 to i64
  %138 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq216 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %138, i32 0, i32 0
  %139 = load i8**, i8*** %aseq216, align 8
  %arrayidx217 = getelementptr inbounds i8*, i8** %139, i64 %idxprom215
  %140 = load i8*, i8** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %140, i64 %idxprom214
  %141 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %141 to i32
  %cmp220 = icmp eq i32 %conv219, 45
  br i1 %cmp220, label %if.then.232, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %lor.lhs.false.212
  %142 = load i32, i32* %last, align 4
  %sub223 = sub nsw i32 %142, 1
  %idxprom224 = sext i32 %sub223 to i64
  %143 = load i32, i32* %idx, align 4
  %idxprom225 = sext i32 %143 to i64
  %144 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq226 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %144, i32 0, i32 0
  %145 = load i8**, i8*** %aseq226, align 8
  %arrayidx227 = getelementptr inbounds i8*, i8** %145, i64 %idxprom225
  %146 = load i8*, i8** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %146, i64 %idxprom224
  %147 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %147 to i32
  %cmp230 = icmp eq i32 %conv229, 126
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %lor.lhs.false.222, %lor.lhs.false.212, %lor.lhs.false.202, %lor.lhs.false.192, %for.body.182
  %148 = load i32, i32* %ngap, align 4
  %inc233 = add nsw i32 %148, 1
  store i32 %inc233, i32* %ngap, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %lor.lhs.false.222
  br label %for.inc.235

for.inc.235:                                      ; preds = %if.end.234
  %149 = load i32, i32* %idx, align 4
  %inc236 = add nsw i32 %149, 1
  store i32 %inc236, i32* %idx, align 4
  br label %for.cond.178

for.end.237:                                      ; preds = %for.cond.178
  %150 = load i32, i32* %ngap, align 4
  %conv238 = sitofp i32 %150 to float
  %151 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq239 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %151, i32 0, i32 4
  %152 = load i32, i32* %nseq239, align 4
  %conv240 = sitofp i32 %152 to float
  %div241 = fdiv float %conv238, %conv240
  %153 = load float, float* %maxgap.addr, align 4
  %cmp242 = fcmp ole float %div241, %153
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %for.end.237
  br label %for.end.247

if.end.245:                                       ; preds = %for.end.237
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %154 = load i32, i32* %last, align 4
  %dec = add nsw i32 %154, -1
  store i32 %dec, i32* %last, align 4
  br label %for.cond.174

for.end.247:                                      ; preds = %if.then.244, %for.cond.174
  %155 = load i32, i32* %last, align 4
  %idxprom248 = sext i32 %155 to i64
  %156 = load float*, float** %sc, align 8
  %arrayidx249 = getelementptr inbounds float, float* %156, i64 %idxprom248
  store float 0.000000e+00, float* %arrayidx249, align 4
  %157 = load i32, i32* %last, align 4
  %idxprom250 = sext i32 %157 to i64
  %158 = load i32*, i32** %tbck, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %158, i64 %idxprom250
  store i32 0, i32* %arrayidx251, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.318, %for.end.247
  %159 = load i32, i32* %idx, align 4
  %160 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq253 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %160, i32 0, i32 4
  %161 = load i32, i32* %nseq253, align 4
  %cmp254 = icmp slt i32 %159, %161
  br i1 %cmp254, label %for.body.256, label %for.end.320

for.body.256:                                     ; preds = %for.cond.252
  %162 = load i32, i32* %last, align 4
  store i32 %162, i32* %i, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.315, %for.body.256
  %163 = load i32, i32* %i, align 4
  %cmp258 = icmp sgt i32 %163, 0
  br i1 %cmp258, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.257
  %164 = load i32, i32* %i, align 4
  %sub260 = sub nsw i32 %164, 1
  %idxprom261 = sext i32 %sub260 to i64
  %165 = load i32, i32* %idx, align 4
  %idxprom262 = sext i32 %165 to i64
  %166 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq263 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %166, i32 0, i32 0
  %167 = load i8**, i8*** %aseq263, align 8
  %arrayidx264 = getelementptr inbounds i8*, i8** %167, i64 %idxprom262
  %168 = load i8*, i8** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %168, i64 %idxprom261
  %169 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %169 to i32
  %cmp267 = icmp eq i32 %conv266, 32
  br i1 %cmp267, label %lor.end, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %land.rhs
  %170 = load i32, i32* %i, align 4
  %sub270 = sub nsw i32 %170, 1
  %idxprom271 = sext i32 %sub270 to i64
  %171 = load i32, i32* %idx, align 4
  %idxprom272 = sext i32 %171 to i64
  %172 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq273 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %172, i32 0, i32 0
  %173 = load i8**, i8*** %aseq273, align 8
  %arrayidx274 = getelementptr inbounds i8*, i8** %173, i64 %idxprom272
  %174 = load i8*, i8** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i8, i8* %174, i64 %idxprom271
  %175 = load i8, i8* %arrayidx275, align 1
  %conv276 = sext i8 %175 to i32
  %cmp277 = icmp eq i32 %conv276, 46
  br i1 %cmp277, label %lor.end, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %lor.lhs.false.269
  %176 = load i32, i32* %i, align 4
  %sub280 = sub nsw i32 %176, 1
  %idxprom281 = sext i32 %sub280 to i64
  %177 = load i32, i32* %idx, align 4
  %idxprom282 = sext i32 %177 to i64
  %178 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq283 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %178, i32 0, i32 0
  %179 = load i8**, i8*** %aseq283, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %179, i64 %idxprom282
  %180 = load i8*, i8** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %180, i64 %idxprom281
  %181 = load i8, i8* %arrayidx285, align 1
  %conv286 = sext i8 %181 to i32
  %cmp287 = icmp eq i32 %conv286, 95
  br i1 %cmp287, label %lor.end, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %lor.lhs.false.279
  %182 = load i32, i32* %i, align 4
  %sub290 = sub nsw i32 %182, 1
  %idxprom291 = sext i32 %sub290 to i64
  %183 = load i32, i32* %idx, align 4
  %idxprom292 = sext i32 %183 to i64
  %184 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq293 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %184, i32 0, i32 0
  %185 = load i8**, i8*** %aseq293, align 8
  %arrayidx294 = getelementptr inbounds i8*, i8** %185, i64 %idxprom292
  %186 = load i8*, i8** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %186, i64 %idxprom291
  %187 = load i8, i8* %arrayidx295, align 1
  %conv296 = sext i8 %187 to i32
  %cmp297 = icmp eq i32 %conv296, 45
  br i1 %cmp297, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.289
  %188 = load i32, i32* %i, align 4
  %sub299 = sub nsw i32 %188, 1
  %idxprom300 = sext i32 %sub299 to i64
  %189 = load i32, i32* %idx, align 4
  %idxprom301 = sext i32 %189 to i64
  %190 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq302 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %190, i32 0, i32 0
  %191 = load i8**, i8*** %aseq302, align 8
  %arrayidx303 = getelementptr inbounds i8*, i8** %191, i64 %idxprom301
  %192 = load i8*, i8** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i8, i8* %192, i64 %idxprom300
  %193 = load i8, i8* %arrayidx304, align 1
  %conv305 = sext i8 %193 to i32
  %cmp306 = icmp eq i32 %conv305, 126
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.289, %lor.lhs.false.279, %lor.lhs.false.269, %land.rhs
  %194 = phi i1 [ true, %lor.lhs.false.289 ], [ true, %lor.lhs.false.279 ], [ true, %lor.lhs.false.269 ], [ true, %land.rhs ], [ %cmp306, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond.257
  %195 = phi i1 [ false, %for.cond.257 ], [ %194, %lor.end ]
  br i1 %195, label %for.body.308, label %for.end.317

for.body.308:                                     ; preds = %land.end
  %196 = load i32, i32* %i, align 4
  %sub309 = sub nsw i32 %196, 1
  %idxprom310 = sext i32 %sub309 to i64
  %197 = load i32, i32* %idx, align 4
  %idxprom311 = sext i32 %197 to i64
  %198 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq312 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 0
  %199 = load i8**, i8*** %aseq312, align 8
  %arrayidx313 = getelementptr inbounds i8*, i8** %199, i64 %idxprom311
  %200 = load i8*, i8** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %200, i64 %idxprom310
  store i8 95, i8* %arrayidx314, align 1
  br label %for.inc.315

for.inc.315:                                      ; preds = %for.body.308
  %201 = load i32, i32* %i, align 4
  %dec316 = add nsw i32 %201, -1
  store i32 %dec316, i32* %i, align 4
  br label %for.cond.257

for.end.317:                                      ; preds = %land.end
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.end.317
  %202 = load i32, i32* %idx, align 4
  %inc319 = add nsw i32 %202, 1
  store i32 %inc319, i32* %idx, align 4
  br label %for.cond.252

for.end.320:                                      ; preds = %for.cond.252
  %203 = load i32, i32* %last, align 4
  %sub321 = sub nsw i32 %203, 1
  store i32 %sub321, i32* %i, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.595, %for.end.320
  %204 = load i32, i32* %i, align 4
  %cmp323 = icmp sgt i32 %204, 0
  br i1 %cmp323, label %for.body.325, label %for.end.597

for.body.325:                                     ; preds = %for.cond.322
  %arraydecay326 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i32 0
  %205 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %205 to i64
  %206 = load float**, float*** %matc, align 8
  %arrayidx328 = getelementptr inbounds float*, float** %206, i64 %idxprom327
  %207 = load float*, float** %arrayidx328, align 8
  %208 = load i32, i32* @Alphabet_size, align 4
  call void @FCopy(float* %arraydecay326, float* %207, i32 %208)
  %arraydecay329 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i32 0
  %209 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %210 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %210, i32 0, i32 4
  %211 = load i32, i32* %mnum, align 4
  %212 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %212, i32 0, i32 5
  %arraydecay330 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i32 0
  %213 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %213, i32 0, i32 6
  %arraydecay331 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i32 0
  call void @P7PriorifyEmissionVector(float* %arraydecay329, %struct.p7prior_s* %209, i32 %211, float* %arraydecay330, [20 x float]* %arraydecay331, float* null)
  store i32 0, i32* %x, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.358, %for.body.325
  %214 = load i32, i32* %x, align 4
  %215 = load i32, i32* @Alphabet_size, align 4
  %cmp333 = icmp slt i32 %214, %215
  br i1 %cmp333, label %for.body.335, label %for.end.360

for.body.335:                                     ; preds = %for.cond.332
  %216 = load i32, i32* %x, align 4
  %idxprom336 = sext i32 %216 to i64
  %arrayidx337 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i64 %idxprom336
  %217 = load float, float* %arrayidx337, align 4
  %218 = load i32, i32* %x, align 4
  %idxprom338 = sext i32 %218 to i64
  %219 = load float*, float** %null.addr, align 8
  %arrayidx339 = getelementptr inbounds float, float* %219, i64 %idxprom338
  %220 = load float, float* %arrayidx339, align 4
  %div340 = fdiv float %217, %220
  %cmp341 = fcmp ogt float %div340, 0.000000e+00
  br i1 %cmp341, label %cond.true.343, label %cond.false.352

cond.true.343:                                    ; preds = %for.body.335
  %221 = load i32, i32* %x, align 4
  %idxprom344 = sext i32 %221 to i64
  %arrayidx345 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i64 %idxprom344
  %222 = load float, float* %arrayidx345, align 4
  %223 = load i32, i32* %x, align 4
  %idxprom346 = sext i32 %223 to i64
  %224 = load float*, float** %null.addr, align 8
  %arrayidx347 = getelementptr inbounds float, float* %224, i64 %idxprom346
  %225 = load float, float* %arrayidx347, align 4
  %div348 = fdiv float %222, %225
  %conv349 = fpext float %div348 to double
  %call350 = call double @log(double %conv349) #4
  %mul351 = fmul double %call350, 0x3FF7154764EE6C2F
  br label %cond.end.353

cond.false.352:                                   ; preds = %for.body.335
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.343
  %cond354 = phi double [ %mul351, %cond.true.343 ], [ -9.999000e+03, %cond.false.352 ]
  %conv355 = fptrunc double %cond354 to float
  %226 = load i32, i32* %x, align 4
  %idxprom356 = sext i32 %226 to i64
  %arrayidx357 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i64 %idxprom356
  store float %conv355, float* %arrayidx357, align 4
  br label %for.inc.358

for.inc.358:                                      ; preds = %cond.end.353
  %227 = load i32, i32* %x, align 4
  %inc359 = add nsw i32 %227, 1
  store i32 %inc359, i32* %x, align 4
  br label %for.cond.332

for.end.360:                                      ; preds = %for.cond.332
  %arraydecay361 = getelementptr inbounds [20 x float], [20 x float]* %insc, i32 0, i32 0
  %228 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay361, i32 %228, float 0.000000e+00)
  store i32 0, i32* %idx, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.369, %for.end.360
  %229 = load i32, i32* %idx, align 4
  %230 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq363 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %230, i32 0, i32 4
  %231 = load i32, i32* %nseq363, align 4
  %cmp364 = icmp slt i32 %229, %231
  br i1 %cmp364, label %for.body.366, label %for.end.371

for.body.366:                                     ; preds = %for.cond.362
  %232 = load i32, i32* %idx, align 4
  %idxprom367 = sext i32 %232 to i64
  %233 = load i32*, i32** %insopt, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %233, i64 %idxprom367
  store i32 0, i32* %arrayidx368, align 4
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.body.366
  %234 = load i32, i32* %idx, align 4
  %inc370 = add nsw i32 %234, 1
  store i32 %inc370, i32* %idx, align 4
  br label %for.cond.362

for.end.371:                                      ; preds = %for.cond.362
  %235 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %235 to i64
  %236 = load float*, float** %sc, align 8
  %arrayidx373 = getelementptr inbounds float, float* %236, i64 %idxprom372
  store float 0xC7EFFFFFE0000000, float* %arrayidx373, align 4
  %237 = load i32, i32* %i, align 4
  %add374 = add nsw i32 %237, 1
  store i32 %add374, i32* %j, align 4
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.583, %for.end.371
  %238 = load i32, i32* %j, align 4
  %239 = load i32, i32* %last, align 4
  %cmp376 = icmp sle i32 %238, %239
  br i1 %cmp376, label %for.body.378, label %for.end.585

for.body.378:                                     ; preds = %for.cond.375
  %240 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq379 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %240, i32 0, i32 0
  %241 = load i8**, i8*** %aseq379, align 8
  %242 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq380 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %242, i32 0, i32 4
  %243 = load i32, i32* %nseq380, align 4
  %244 = load i32*, i32** %insopt, align 8
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %j, align 4
  %247 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt381 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %247, i32 0, i32 2
  %248 = load float*, float** %wgt381, align 8
  %arraydecay382 = getelementptr inbounds [8 x float], [8 x float]* %cij, i32 0, i32 0
  %call383 = call i32 @build_cij(i8** %241, i32 %243, i32* %244, i32 %245, i32 %246, float* %248, float* %arraydecay382)
  store i32 %call383, i32* %code, align 4
  %249 = load i32, i32* %code, align 4
  %cmp384 = icmp eq i32 %249, -1
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %for.body.378
  br label %for.end.585

if.end.387:                                       ; preds = %for.body.378
  %250 = load i32, i32* %code, align 4
  %cmp388 = icmp eq i32 %250, 1
  br i1 %cmp388, label %if.then.390, label %if.end.517

if.then.390:                                      ; preds = %if.end.387
  %arraydecay391 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i32 0
  %arraydecay392 = getelementptr inbounds [8 x float], [8 x float]* %cij, i32 0, i32 0
  call void @FCopy(float* %arraydecay391, float* %arraydecay392, i32 7)
  %arraydecay393 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i32 0
  %251 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %252 = load %struct.p7prior_s*, %struct.p7prior_s** %prior.addr, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %252, i32 0, i32 2
  %arraydecay394 = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i32 0
  call void @P7PriorifyTransitionVector(float* %arraydecay393, %struct.p7prior_s* %251, float* %arraydecay394)
  %arraydecay395 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i32 0
  call void @FNorm(float* %arraydecay395, i32 3)
  %arrayidx396 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 0
  %253 = load float, float* %arrayidx396, align 4
  %254 = load float, float* %null_p1.addr, align 4
  %div397 = fdiv float %253, %254
  %cmp398 = fcmp ogt float %div397, 0.000000e+00
  br i1 %cmp398, label %cond.true.400, label %cond.false.406

cond.true.400:                                    ; preds = %if.then.390
  %arrayidx401 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 0
  %255 = load float, float* %arrayidx401, align 4
  %256 = load float, float* %null_p1.addr, align 4
  %div402 = fdiv float %255, %256
  %conv403 = fpext float %div402 to double
  %call404 = call double @log(double %conv403) #4
  %mul405 = fmul double %call404, 0x3FF7154764EE6C2F
  br label %cond.end.407

cond.false.406:                                   ; preds = %if.then.390
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.406, %cond.true.400
  %cond408 = phi double [ %mul405, %cond.true.400 ], [ -9.999000e+03, %cond.false.406 ]
  %conv409 = fptrunc double %cond408 to float
  %arrayidx410 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 0
  store float %conv409, float* %arrayidx410, align 4
  %arrayidx411 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 1
  %257 = load float, float* %arrayidx411, align 4
  %258 = load float, float* %null_p1.addr, align 4
  %div412 = fdiv float %257, %258
  %cmp413 = fcmp ogt float %div412, 0.000000e+00
  br i1 %cmp413, label %cond.true.415, label %cond.false.421

cond.true.415:                                    ; preds = %cond.end.407
  %arrayidx416 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 1
  %259 = load float, float* %arrayidx416, align 4
  %260 = load float, float* %null_p1.addr, align 4
  %div417 = fdiv float %259, %260
  %conv418 = fpext float %div417 to double
  %call419 = call double @log(double %conv418) #4
  %mul420 = fmul double %call419, 0x3FF7154764EE6C2F
  br label %cond.end.422

cond.false.421:                                   ; preds = %cond.end.407
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.421, %cond.true.415
  %cond423 = phi double [ %mul420, %cond.true.415 ], [ -9.999000e+03, %cond.false.421 ]
  %conv424 = fptrunc double %cond423 to float
  %arrayidx425 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 1
  store float %conv424, float* %arrayidx425, align 4
  %arrayidx426 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 2
  %261 = load float, float* %arrayidx426, align 4
  %cmp427 = fcmp ogt float %261, 0.000000e+00
  br i1 %cmp427, label %cond.true.429, label %cond.false.434

cond.true.429:                                    ; preds = %cond.end.422
  %arrayidx430 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 2
  %262 = load float, float* %arrayidx430, align 4
  %conv431 = fpext float %262 to double
  %call432 = call double @log(double %conv431) #4
  %mul433 = fmul double %call432, 0x3FF7154764EE6C2F
  br label %cond.end.435

cond.false.434:                                   ; preds = %cond.end.422
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.434, %cond.true.429
  %cond436 = phi double [ %mul433, %cond.true.429 ], [ -9.999000e+03, %cond.false.434 ]
  %conv437 = fptrunc double %cond436 to float
  %arrayidx438 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 2
  store float %conv437, float* %arrayidx438, align 4
  %arrayidx439 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 3
  %263 = load float, float* %arrayidx439, align 4
  %264 = load float, float* %null_p1.addr, align 4
  %div440 = fdiv float %263, %264
  %cmp441 = fcmp ogt float %div440, 0.000000e+00
  br i1 %cmp441, label %cond.true.443, label %cond.false.449

cond.true.443:                                    ; preds = %cond.end.435
  %arrayidx444 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 3
  %265 = load float, float* %arrayidx444, align 4
  %266 = load float, float* %null_p1.addr, align 4
  %div445 = fdiv float %265, %266
  %conv446 = fpext float %div445 to double
  %call447 = call double @log(double %conv446) #4
  %mul448 = fmul double %call447, 0x3FF7154764EE6C2F
  br label %cond.end.450

cond.false.449:                                   ; preds = %cond.end.435
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.false.449, %cond.true.443
  %cond451 = phi double [ %mul448, %cond.true.443 ], [ -9.999000e+03, %cond.false.449 ]
  %conv452 = fptrunc double %cond451 to float
  %arrayidx453 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 3
  store float %conv452, float* %arrayidx453, align 4
  %arrayidx454 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 4
  %267 = load float, float* %arrayidx454, align 4
  %268 = load float, float* %null_p1.addr, align 4
  %div455 = fdiv float %267, %268
  %cmp456 = fcmp ogt float %div455, 0.000000e+00
  br i1 %cmp456, label %cond.true.458, label %cond.false.464

cond.true.458:                                    ; preds = %cond.end.450
  %arrayidx459 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 4
  %269 = load float, float* %arrayidx459, align 4
  %270 = load float, float* %null_p1.addr, align 4
  %div460 = fdiv float %269, %270
  %conv461 = fpext float %div460 to double
  %call462 = call double @log(double %conv461) #4
  %mul463 = fmul double %call462, 0x3FF7154764EE6C2F
  br label %cond.end.465

cond.false.464:                                   ; preds = %cond.end.450
  br label %cond.end.465

cond.end.465:                                     ; preds = %cond.false.464, %cond.true.458
  %cond466 = phi double [ %mul463, %cond.true.458 ], [ -9.999000e+03, %cond.false.464 ]
  %conv467 = fptrunc double %cond466 to float
  %arrayidx468 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 4
  store float %conv467, float* %arrayidx468, align 4
  %arrayidx469 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 5
  %271 = load float, float* %arrayidx469, align 4
  %272 = load float, float* %null_p1.addr, align 4
  %div470 = fdiv float %271, %272
  %cmp471 = fcmp ogt float %div470, 0.000000e+00
  br i1 %cmp471, label %cond.true.473, label %cond.false.479

cond.true.473:                                    ; preds = %cond.end.465
  %arrayidx474 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 5
  %273 = load float, float* %arrayidx474, align 4
  %274 = load float, float* %null_p1.addr, align 4
  %div475 = fdiv float %273, %274
  %conv476 = fpext float %div475 to double
  %call477 = call double @log(double %conv476) #4
  %mul478 = fmul double %call477, 0x3FF7154764EE6C2F
  br label %cond.end.480

cond.false.479:                                   ; preds = %cond.end.465
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.false.479, %cond.true.473
  %cond481 = phi double [ %mul478, %cond.true.473 ], [ -9.999000e+03, %cond.false.479 ]
  %conv482 = fptrunc double %cond481 to float
  %arrayidx483 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 5
  store float %conv482, float* %arrayidx483, align 4
  %arrayidx484 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 6
  %275 = load float, float* %arrayidx484, align 4
  %cmp485 = fcmp ogt float %275, 0.000000e+00
  br i1 %cmp485, label %cond.true.487, label %cond.false.492

cond.true.487:                                    ; preds = %cond.end.480
  %arrayidx488 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 6
  %276 = load float, float* %arrayidx488, align 4
  %conv489 = fpext float %276 to double
  %call490 = call double @log(double %conv489) #4
  %mul491 = fmul double %call490, 0x3FF7154764EE6C2F
  br label %cond.end.493

cond.false.492:                                   ; preds = %cond.end.480
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.492, %cond.true.487
  %cond494 = phi double [ %mul491, %cond.true.487 ], [ -9.999000e+03, %cond.false.492 ]
  %conv495 = fptrunc double %cond494 to float
  %arrayidx496 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i64 6
  store float %conv495, float* %arrayidx496, align 4
  %277 = load i32, i32* %j, align 4
  %idxprom497 = sext i32 %277 to i64
  %278 = load float*, float** %sc, align 8
  %arrayidx498 = getelementptr inbounds float, float* %278, i64 %idxprom497
  %279 = load float, float* %arrayidx498, align 4
  %arraydecay499 = getelementptr inbounds [8 x float], [8 x float]* %tij, i32 0, i32 0
  %arraydecay500 = getelementptr inbounds [8 x float], [8 x float]* %cij, i32 0, i32 0
  %call501 = call float @FDot(float* %arraydecay499, float* %arraydecay500, i32 7)
  %add502 = fadd float %279, %call501
  %arraydecay503 = getelementptr inbounds [20 x float], [20 x float]* %insp, i32 0, i32 0
  %arraydecay504 = getelementptr inbounds [20 x float], [20 x float]* %insc, i32 0, i32 0
  %280 = load i32, i32* @Alphabet_size, align 4
  %call505 = call float @FDot(float* %arraydecay503, float* %arraydecay504, i32 %280)
  %add506 = fadd float %add502, %call505
  store float %add506, float* %new, align 4
  %281 = load float, float* %new, align 4
  %282 = load i32, i32* %i, align 4
  %idxprom507 = sext i32 %282 to i64
  %283 = load float*, float** %sc, align 8
  %arrayidx508 = getelementptr inbounds float, float* %283, i64 %idxprom507
  %284 = load float, float* %arrayidx508, align 4
  %cmp509 = fcmp ogt float %281, %284
  br i1 %cmp509, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %cond.end.493
  %285 = load float, float* %new, align 4
  %286 = load i32, i32* %i, align 4
  %idxprom512 = sext i32 %286 to i64
  %287 = load float*, float** %sc, align 8
  %arrayidx513 = getelementptr inbounds float, float* %287, i64 %idxprom512
  store float %285, float* %arrayidx513, align 4
  %288 = load i32, i32* %j, align 4
  %289 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %289 to i64
  %290 = load i32*, i32** %tbck, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %290, i64 %idxprom514
  store i32 %288, i32* %arrayidx515, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.511, %cond.end.493
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %if.end.387
  %arraydecay518 = getelementptr inbounds [20 x float], [20 x float]* %insc, i32 0, i32 0
  %291 = load i32, i32* %j, align 4
  %idxprom519 = sext i32 %291 to i64
  %292 = load float**, float*** %matc, align 8
  %arrayidx520 = getelementptr inbounds float*, float** %292, i64 %idxprom519
  %293 = load float*, float** %arrayidx520, align 8
  %294 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %arraydecay518, float* %293, i32 %294)
  store i32 0, i32* %idx, align 4
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.580, %if.end.517
  %295 = load i32, i32* %idx, align 4
  %296 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq522 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %296, i32 0, i32 4
  %297 = load i32, i32* %nseq522, align 4
  %cmp523 = icmp slt i32 %295, %297
  br i1 %cmp523, label %for.body.525, label %for.end.582

for.body.525:                                     ; preds = %for.cond.521
  %298 = load i32, i32* %j, align 4
  %sub526 = sub nsw i32 %298, 1
  %idxprom527 = sext i32 %sub526 to i64
  %299 = load i32, i32* %idx, align 4
  %idxprom528 = sext i32 %299 to i64
  %300 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq529 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %300, i32 0, i32 0
  %301 = load i8**, i8*** %aseq529, align 8
  %arrayidx530 = getelementptr inbounds i8*, i8** %301, i64 %idxprom528
  %302 = load i8*, i8** %arrayidx530, align 8
  %arrayidx531 = getelementptr inbounds i8, i8* %302, i64 %idxprom527
  %303 = load i8, i8* %arrayidx531, align 1
  %conv532 = sext i8 %303 to i32
  %cmp533 = icmp eq i32 %conv532, 32
  br i1 %cmp533, label %if.end.579, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %for.body.525
  %304 = load i32, i32* %j, align 4
  %sub536 = sub nsw i32 %304, 1
  %idxprom537 = sext i32 %sub536 to i64
  %305 = load i32, i32* %idx, align 4
  %idxprom538 = sext i32 %305 to i64
  %306 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq539 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %306, i32 0, i32 0
  %307 = load i8**, i8*** %aseq539, align 8
  %arrayidx540 = getelementptr inbounds i8*, i8** %307, i64 %idxprom538
  %308 = load i8*, i8** %arrayidx540, align 8
  %arrayidx541 = getelementptr inbounds i8, i8* %308, i64 %idxprom537
  %309 = load i8, i8* %arrayidx541, align 1
  %conv542 = sext i8 %309 to i32
  %cmp543 = icmp eq i32 %conv542, 46
  br i1 %cmp543, label %if.end.579, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %lor.lhs.false.535
  %310 = load i32, i32* %j, align 4
  %sub546 = sub nsw i32 %310, 1
  %idxprom547 = sext i32 %sub546 to i64
  %311 = load i32, i32* %idx, align 4
  %idxprom548 = sext i32 %311 to i64
  %312 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq549 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %312, i32 0, i32 0
  %313 = load i8**, i8*** %aseq549, align 8
  %arrayidx550 = getelementptr inbounds i8*, i8** %313, i64 %idxprom548
  %314 = load i8*, i8** %arrayidx550, align 8
  %arrayidx551 = getelementptr inbounds i8, i8* %314, i64 %idxprom547
  %315 = load i8, i8* %arrayidx551, align 1
  %conv552 = sext i8 %315 to i32
  %cmp553 = icmp eq i32 %conv552, 95
  br i1 %cmp553, label %if.end.579, label %lor.lhs.false.555

lor.lhs.false.555:                                ; preds = %lor.lhs.false.545
  %316 = load i32, i32* %j, align 4
  %sub556 = sub nsw i32 %316, 1
  %idxprom557 = sext i32 %sub556 to i64
  %317 = load i32, i32* %idx, align 4
  %idxprom558 = sext i32 %317 to i64
  %318 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq559 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %318, i32 0, i32 0
  %319 = load i8**, i8*** %aseq559, align 8
  %arrayidx560 = getelementptr inbounds i8*, i8** %319, i64 %idxprom558
  %320 = load i8*, i8** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %320, i64 %idxprom557
  %321 = load i8, i8* %arrayidx561, align 1
  %conv562 = sext i8 %321 to i32
  %cmp563 = icmp eq i32 %conv562, 45
  br i1 %cmp563, label %if.end.579, label %lor.lhs.false.565

lor.lhs.false.565:                                ; preds = %lor.lhs.false.555
  %322 = load i32, i32* %j, align 4
  %sub566 = sub nsw i32 %322, 1
  %idxprom567 = sext i32 %sub566 to i64
  %323 = load i32, i32* %idx, align 4
  %idxprom568 = sext i32 %323 to i64
  %324 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq569 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %324, i32 0, i32 0
  %325 = load i8**, i8*** %aseq569, align 8
  %arrayidx570 = getelementptr inbounds i8*, i8** %325, i64 %idxprom568
  %326 = load i8*, i8** %arrayidx570, align 8
  %arrayidx571 = getelementptr inbounds i8, i8* %326, i64 %idxprom567
  %327 = load i8, i8* %arrayidx571, align 1
  %conv572 = sext i8 %327 to i32
  %cmp573 = icmp eq i32 %conv572, 126
  br i1 %cmp573, label %if.end.579, label %if.then.575

if.then.575:                                      ; preds = %lor.lhs.false.565
  %328 = load i32, i32* %idx, align 4
  %idxprom576 = sext i32 %328 to i64
  %329 = load i32*, i32** %insopt, align 8
  %arrayidx577 = getelementptr inbounds i32, i32* %329, i64 %idxprom576
  %330 = load i32, i32* %arrayidx577, align 4
  %inc578 = add nsw i32 %330, 1
  store i32 %inc578, i32* %arrayidx577, align 4
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.575, %lor.lhs.false.565, %lor.lhs.false.555, %lor.lhs.false.545, %lor.lhs.false.535, %for.body.525
  br label %for.inc.580

for.inc.580:                                      ; preds = %if.end.579
  %331 = load i32, i32* %idx, align 4
  %inc581 = add nsw i32 %331, 1
  store i32 %inc581, i32* %idx, align 4
  br label %for.cond.521

for.end.582:                                      ; preds = %for.cond.521
  br label %for.inc.583

for.inc.583:                                      ; preds = %for.end.582
  %332 = load i32, i32* %j, align 4
  %inc584 = add nsw i32 %332, 1
  store i32 %inc584, i32* %j, align 4
  br label %for.cond.375

for.end.585:                                      ; preds = %if.then.386, %for.cond.375
  %arraydecay586 = getelementptr inbounds [20 x float], [20 x float]* %matp, i32 0, i32 0
  %333 = load i32, i32* %i, align 4
  %idxprom587 = sext i32 %333 to i64
  %334 = load float**, float*** %matc, align 8
  %arrayidx588 = getelementptr inbounds float*, float** %334, i64 %idxprom587
  %335 = load float*, float** %arrayidx588, align 8
  %336 = load i32, i32* @Alphabet_size, align 4
  %call589 = call float @FDot(float* %arraydecay586, float* %335, i32 %336)
  %337 = load float, float* %mpri.addr, align 4
  %338 = load float, float* %wgtsum, align 4
  %mul590 = fmul float %337, %338
  %add591 = fadd float %call589, %mul590
  %339 = load i32, i32* %i, align 4
  %idxprom592 = sext i32 %339 to i64
  %340 = load float*, float** %sc, align 8
  %arrayidx593 = getelementptr inbounds float, float* %340, i64 %idxprom592
  %341 = load float, float* %arrayidx593, align 4
  %add594 = fadd float %341, %add591
  store float %add594, float* %arrayidx593, align 4
  br label %for.inc.595

for.inc.595:                                      ; preds = %for.end.585
  %342 = load i32, i32* %i, align 4
  %dec596 = add nsw i32 %342, -1
  store i32 %dec596, i32* %i, align 4
  br label %for.cond.322

for.end.597:                                      ; preds = %for.cond.322
  store float 0xC7EFFFFFE0000000, float* %bestsc, align 4
  store i32 0, i32* %first, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.598

for.cond.598:                                     ; preds = %for.inc.669, %for.end.597
  %343 = load i32, i32* %i, align 4
  %344 = load i32, i32* %last, align 4
  %cmp599 = icmp sle i32 %343, %344
  br i1 %cmp599, label %for.body.601, label %for.end.671

for.body.601:                                     ; preds = %for.cond.598
  %345 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %345 to i64
  %346 = load float*, float** %sc, align 8
  %arrayidx603 = getelementptr inbounds float, float* %346, i64 %idxprom602
  %347 = load float, float* %arrayidx603, align 4
  store float %347, float* %new, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.604

for.cond.604:                                     ; preds = %for.inc.662, %for.body.601
  %348 = load i32, i32* %idx, align 4
  %349 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq605 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %349, i32 0, i32 4
  %350 = load i32, i32* %nseq605, align 4
  %cmp606 = icmp slt i32 %348, %350
  br i1 %cmp606, label %for.body.608, label %for.end.664

for.body.608:                                     ; preds = %for.cond.604
  %351 = load i32, i32* %i, align 4
  %sub609 = sub nsw i32 %351, 1
  %idxprom610 = sext i32 %sub609 to i64
  %352 = load i32, i32* %idx, align 4
  %idxprom611 = sext i32 %352 to i64
  %353 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq612 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %353, i32 0, i32 0
  %354 = load i8**, i8*** %aseq612, align 8
  %arrayidx613 = getelementptr inbounds i8*, i8** %354, i64 %idxprom611
  %355 = load i8*, i8** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i8, i8* %355, i64 %idxprom610
  %356 = load i8, i8* %arrayidx614, align 1
  %conv615 = sext i8 %356 to i32
  %cmp616 = icmp eq i32 %conv615, 32
  br i1 %cmp616, label %if.then.658, label %lor.lhs.false.618

lor.lhs.false.618:                                ; preds = %for.body.608
  %357 = load i32, i32* %i, align 4
  %sub619 = sub nsw i32 %357, 1
  %idxprom620 = sext i32 %sub619 to i64
  %358 = load i32, i32* %idx, align 4
  %idxprom621 = sext i32 %358 to i64
  %359 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq622 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %359, i32 0, i32 0
  %360 = load i8**, i8*** %aseq622, align 8
  %arrayidx623 = getelementptr inbounds i8*, i8** %360, i64 %idxprom621
  %361 = load i8*, i8** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i8, i8* %361, i64 %idxprom620
  %362 = load i8, i8* %arrayidx624, align 1
  %conv625 = sext i8 %362 to i32
  %cmp626 = icmp eq i32 %conv625, 46
  br i1 %cmp626, label %if.then.658, label %lor.lhs.false.628

lor.lhs.false.628:                                ; preds = %lor.lhs.false.618
  %363 = load i32, i32* %i, align 4
  %sub629 = sub nsw i32 %363, 1
  %idxprom630 = sext i32 %sub629 to i64
  %364 = load i32, i32* %idx, align 4
  %idxprom631 = sext i32 %364 to i64
  %365 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq632 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %365, i32 0, i32 0
  %366 = load i8**, i8*** %aseq632, align 8
  %arrayidx633 = getelementptr inbounds i8*, i8** %366, i64 %idxprom631
  %367 = load i8*, i8** %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds i8, i8* %367, i64 %idxprom630
  %368 = load i8, i8* %arrayidx634, align 1
  %conv635 = sext i8 %368 to i32
  %cmp636 = icmp eq i32 %conv635, 95
  br i1 %cmp636, label %if.then.658, label %lor.lhs.false.638

lor.lhs.false.638:                                ; preds = %lor.lhs.false.628
  %369 = load i32, i32* %i, align 4
  %sub639 = sub nsw i32 %369, 1
  %idxprom640 = sext i32 %sub639 to i64
  %370 = load i32, i32* %idx, align 4
  %idxprom641 = sext i32 %370 to i64
  %371 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq642 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %371, i32 0, i32 0
  %372 = load i8**, i8*** %aseq642, align 8
  %arrayidx643 = getelementptr inbounds i8*, i8** %372, i64 %idxprom641
  %373 = load i8*, i8** %arrayidx643, align 8
  %arrayidx644 = getelementptr inbounds i8, i8* %373, i64 %idxprom640
  %374 = load i8, i8* %arrayidx644, align 1
  %conv645 = sext i8 %374 to i32
  %cmp646 = icmp eq i32 %conv645, 45
  br i1 %cmp646, label %if.then.658, label %lor.lhs.false.648

lor.lhs.false.648:                                ; preds = %lor.lhs.false.638
  %375 = load i32, i32* %i, align 4
  %sub649 = sub nsw i32 %375, 1
  %idxprom650 = sext i32 %sub649 to i64
  %376 = load i32, i32* %idx, align 4
  %idxprom651 = sext i32 %376 to i64
  %377 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq652 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %377, i32 0, i32 0
  %378 = load i8**, i8*** %aseq652, align 8
  %arrayidx653 = getelementptr inbounds i8*, i8** %378, i64 %idxprom651
  %379 = load i8*, i8** %arrayidx653, align 8
  %arrayidx654 = getelementptr inbounds i8, i8* %379, i64 %idxprom650
  %380 = load i8, i8* %arrayidx654, align 1
  %conv655 = sext i8 %380 to i32
  %cmp656 = icmp eq i32 %conv655, 126
  br i1 %cmp656, label %if.then.658, label %if.else

if.then.658:                                      ; preds = %lor.lhs.false.648, %lor.lhs.false.638, %lor.lhs.false.628, %lor.lhs.false.618, %for.body.608
  %381 = load float, float* %bm2, align 4
  %382 = load float, float* %new, align 4
  %add659 = fadd float %382, %381
  store float %add659, float* %new, align 4
  br label %if.end.661

if.else:                                          ; preds = %lor.lhs.false.648
  %383 = load float, float* %bm1, align 4
  %384 = load float, float* %new, align 4
  %add660 = fadd float %384, %383
  store float %add660, float* %new, align 4
  br label %if.end.661

if.end.661:                                       ; preds = %if.else, %if.then.658
  br label %for.inc.662

for.inc.662:                                      ; preds = %if.end.661
  %385 = load i32, i32* %idx, align 4
  %inc663 = add nsw i32 %385, 1
  store i32 %inc663, i32* %idx, align 4
  br label %for.cond.604

for.end.664:                                      ; preds = %for.cond.604
  %386 = load float, float* %new, align 4
  %387 = load float, float* %bestsc, align 4
  %cmp665 = fcmp ogt float %386, %387
  br i1 %cmp665, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %for.end.664
  %388 = load float, float* %new, align 4
  store float %388, float* %bestsc, align 4
  %389 = load i32, i32* %i, align 4
  store i32 %389, i32* %first, align 4
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.667, %for.end.664
  br label %for.inc.669

for.inc.669:                                      ; preds = %if.end.668
  %390 = load i32, i32* %i, align 4
  %inc670 = add nsw i32 %390, 1
  store i32 %inc670, i32* %i, align 4
  br label %for.cond.598

for.end.671:                                      ; preds = %for.cond.598
  %391 = load i32*, i32** %matassign, align 8
  %arrayidx672 = getelementptr inbounds i32, i32* %391, i64 0
  store i32 0, i32* %arrayidx672, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.673

for.cond.673:                                     ; preds = %for.inc.680, %for.end.671
  %392 = load i32, i32* %i, align 4
  %393 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen674 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %393, i32 0, i32 3
  %394 = load i32, i32* %alen674, align 4
  %cmp675 = icmp sle i32 %392, %394
  br i1 %cmp675, label %for.body.677, label %for.end.682

for.body.677:                                     ; preds = %for.cond.673
  %395 = load i32, i32* %i, align 4
  %idxprom678 = sext i32 %395 to i64
  %396 = load i32*, i32** %matassign, align 8
  %arrayidx679 = getelementptr inbounds i32, i32* %396, i64 %idxprom678
  store i32 8, i32* %arrayidx679, align 4
  br label %for.inc.680

for.inc.680:                                      ; preds = %for.body.677
  %397 = load i32, i32* %i, align 4
  %inc681 = add nsw i32 %397, 1
  store i32 %inc681, i32* %i, align 4
  br label %for.cond.673

for.end.682:                                      ; preds = %for.cond.673
  %398 = load i32, i32* %first, align 4
  store i32 %398, i32* %i, align 4
  br label %for.cond.683

for.cond.683:                                     ; preds = %for.inc.691, %for.end.682
  %399 = load i32, i32* %i, align 4
  %cmp684 = icmp ne i32 %399, 0
  br i1 %cmp684, label %for.body.686, label %for.end.694

for.body.686:                                     ; preds = %for.cond.683
  %400 = load i32, i32* %i, align 4
  %idxprom687 = sext i32 %400 to i64
  %401 = load i32*, i32** %matassign, align 8
  %arrayidx688 = getelementptr inbounds i32, i32* %401, i64 %idxprom687
  %402 = load i32, i32* %arrayidx688, align 4
  %and = and i32 %402, -9
  store i32 %and, i32* %arrayidx688, align 4
  %403 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %403 to i64
  %404 = load i32*, i32** %matassign, align 8
  %arrayidx690 = getelementptr inbounds i32, i32* %404, i64 %idxprom689
  %405 = load i32, i32* %arrayidx690, align 4
  %or = or i32 %405, 1
  store i32 %or, i32* %arrayidx690, align 4
  br label %for.inc.691

for.inc.691:                                      ; preds = %for.body.686
  %406 = load i32, i32* %i, align 4
  %idxprom692 = sext i32 %406 to i64
  %407 = load i32*, i32** %tbck, align 8
  %arrayidx693 = getelementptr inbounds i32, i32* %407, i64 %idxprom692
  %408 = load i32, i32* %arrayidx693, align 4
  store i32 %408, i32* %i, align 4
  br label %for.cond.683

for.end.694:                                      ; preds = %for.cond.683
  %409 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %410 = load i8**, i8*** %dsq.addr, align 8
  %411 = load i32*, i32** %matassign, align 8
  %412 = load %struct.plan7_s**, %struct.plan7_s*** %ret_hmm.addr, align 8
  %413 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  call void @matassign2hmm(%struct.msa_struct* %409, i8** %410, i32* %411, %struct.plan7_s** %412, %struct.p7trace_s*** %413)
  store i32 1, i32* %i, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.702, %for.end.694
  %414 = load i32, i32* %i, align 4
  %415 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen696 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %415, i32 0, i32 3
  %416 = load i32, i32* %alen696, align 4
  %cmp697 = icmp sle i32 %414, %416
  br i1 %cmp697, label %for.body.699, label %for.end.704

for.body.699:                                     ; preds = %for.cond.695
  %417 = load i32, i32* %i, align 4
  %idxprom700 = sext i32 %417 to i64
  %418 = load float**, float*** %matc, align 8
  %arrayidx701 = getelementptr inbounds float*, float** %418, i64 %idxprom700
  %419 = load float*, float** %arrayidx701, align 8
  %420 = bitcast float* %419 to i8*
  call void @free(i8* %420) #4
  br label %for.inc.702

for.inc.702:                                      ; preds = %for.body.699
  %421 = load i32, i32* %i, align 4
  %inc703 = add nsw i32 %421, 1
  store i32 %inc703, i32* %i, align 4
  br label %for.cond.695

for.end.704:                                      ; preds = %for.cond.695
  %422 = load float**, float*** %matc, align 8
  %423 = bitcast float** %422 to i8*
  call void @free(i8* %423) #4
  %424 = load float*, float** %sc, align 8
  %425 = bitcast float* %424 to i8*
  call void @free(i8* %425) #4
  %426 = load i32*, i32** %tbck, align 8
  %427 = bitcast i32* %426 to i8*
  call void @free(i8* %427) #4
  %428 = load i32*, i32** %matassign, align 8
  %429 = bitcast i32* %428 to i8*
  call void @free(i8* %429) #4
  %430 = load i32*, i32** %insopt, align 8
  %431 = bitcast i32* %430 to i8*
  call void @free(i8* %431) #4
  ret void
}

declare void @FSet(float*, i32, float) #1

declare void @P7CountSymbol(float*, i8 signext, float) #1

declare i32 @SymbolIndex(i8 signext) #1

; Function Attrs: nounwind
declare double @log(double) #2

declare void @FCopy(float*, float*, i32) #1

declare void @FNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @estimate_model_length(%struct.msa_struct* %msa) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %total = alloca float, align 4
  %wgtsum = alloca float, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store float 0.000000e+00, float* %total, align 4
  store float 0.000000e+00, float* %wgtsum, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %nseq, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 2
  %5 = load float*, float** %wgt, align 8
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %8, i32 0, i32 0
  %9 = load i8**, i8*** %aseq, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  %call = call i32 @DealignedLength(i8* %10)
  %conv = sitofp i32 %call to float
  %mul = fmul float %6, %conv
  %11 = load float, float* %total, align 4
  %add = fadd float %11, %mul
  store float %add, float* %total, align 4
  %12 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt4 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %13, i32 0, i32 2
  %14 = load float*, float** %wgt4, align 8
  %arrayidx5 = getelementptr inbounds float, float* %14, i64 %idxprom3
  %15 = load float, float* %arrayidx5, align 4
  %16 = load float, float* %wgtsum, align 4
  %add6 = fadd float %16, %15
  store float %add6, float* %wgtsum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load float, float* %total, align 4
  %19 = load float, float* %wgtsum, align 4
  %div = fdiv float %18, %19
  %conv7 = fptosi float %div to i32
  ret i32 %conv7
}

declare void @P7PriorifyEmissionVector(float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*) #1

; Function Attrs: nounwind uwtable
define internal i32 @build_cij(i8** %aseqs, i32 %nseq, i32* %insopt, i32 %i, i32 %j, float* %wgt, float* %cij) #0 {
entry:
  %retval = alloca i32, align 4
  %aseqs.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %insopt.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %wgt.addr = alloca float*, align 8
  %cij.addr = alloca float*, align 8
  %idx = alloca i32, align 4
  store i8** %aseqs, i8*** %aseqs.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32* %insopt, i32** %insopt.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store float* %wgt, float** %wgt.addr, align 8
  store float* %cij, float** %cij.addr, align 8
  %0 = load i32, i32* %i.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %dec1 = add nsw i32 %1, -1
  store i32 %dec1, i32* %j.addr, align 4
  %2 = load float*, float** %cij.addr, align 8
  call void @FSet(float* %2, i32 8, float 0.000000e+00)
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %idx, align 4
  %4 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %insopt.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom4
  %11 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  %12 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv, 32
  br i1 %cmp7, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %15, i64 %idxprom10
  %16 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 46
  br i1 %cmp14, label %if.then.40, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %i.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32, i32* %idx, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %20, i64 %idxprom18
  %21 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 %idxprom17
  %22 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 95
  br i1 %cmp22, label %if.then.40, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.16
  %23 = load i32, i32* %i.addr, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %25, i64 %idxprom26
  %26 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom25
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %27 to i32
  %cmp30 = icmp eq i32 %conv29, 45
  br i1 %cmp30, label %if.then.40, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.24
  %28 = load i32, i32* %i.addr, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32, i32* %idx, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %30, i64 %idxprom34
  %31 = load i8*, i8** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %idxprom33
  %32 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %32 to i32
  %cmp38 = icmp eq i32 %conv37, 126
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.24, %lor.lhs.false.16, %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.32
  %33 = load i32, i32* %j.addr, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %35, i64 %idxprom42
  %36 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %36, i64 %idxprom41
  %37 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %37 to i32
  %cmp46 = icmp eq i32 %conv45, 32
  br i1 %cmp46, label %if.then.80, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.end
  %38 = load i32, i32* %j.addr, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %39 to i64
  %40 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %40, i64 %idxprom50
  %41 = load i8*, i8** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %41, i64 %idxprom49
  %42 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %42 to i32
  %cmp54 = icmp eq i32 %conv53, 46
  br i1 %cmp54, label %if.then.80, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.48
  %43 = load i32, i32* %j.addr, align 4
  %idxprom57 = sext i32 %43 to i64
  %44 = load i32, i32* %idx, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %45, i64 %idxprom58
  %46 = load i8*, i8** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %46, i64 %idxprom57
  %47 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %47 to i32
  %cmp62 = icmp eq i32 %conv61, 95
  br i1 %cmp62, label %if.then.80, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.56
  %48 = load i32, i32* %j.addr, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load i32, i32* %idx, align 4
  %idxprom66 = sext i32 %49 to i64
  %50 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %50, i64 %idxprom66
  %51 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %51, i64 %idxprom65
  %52 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %52 to i32
  %cmp70 = icmp eq i32 %conv69, 45
  br i1 %cmp70, label %if.then.80, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.64
  %53 = load i32, i32* %j.addr, align 4
  %idxprom73 = sext i32 %53 to i64
  %54 = load i32, i32* %idx, align 4
  %idxprom74 = sext i32 %54 to i64
  %55 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %55, i64 %idxprom74
  %56 = load i8*, i8** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %56, i64 %idxprom73
  %57 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %57 to i32
  %cmp78 = icmp eq i32 %conv77, 126
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.64, %lor.lhs.false.56, %lor.lhs.false.48, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false.72
  %58 = load i32, i32* %idx, align 4
  %idxprom82 = sext i32 %58 to i64
  %59 = load float*, float** %wgt.addr, align 8
  %arrayidx83 = getelementptr inbounds float, float* %59, i64 %idxprom82
  %60 = load float, float* %arrayidx83, align 4
  %61 = load float*, float** %cij.addr, align 8
  %arrayidx84 = getelementptr inbounds float, float* %61, i64 1
  %62 = load float, float* %arrayidx84, align 4
  %add = fadd float %62, %60
  store float %add, float* %arrayidx84, align 4
  %63 = load i32, i32* %idx, align 4
  %idxprom85 = sext i32 %63 to i64
  %64 = load i32*, i32** %insopt.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %64, i64 %idxprom85
  %65 = load i32, i32* %arrayidx86, align 4
  %sub = sub nsw i32 %65, 1
  %conv87 = sitofp i32 %sub to float
  %66 = load i32, i32* %idx, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load float*, float** %wgt.addr, align 8
  %arrayidx89 = getelementptr inbounds float, float* %67, i64 %idxprom88
  %68 = load float, float* %arrayidx89, align 4
  %mul = fmul float %conv87, %68
  %69 = load float*, float** %cij.addr, align 8
  %arrayidx90 = getelementptr inbounds float, float* %69, i64 4
  %70 = load float, float* %arrayidx90, align 4
  %add91 = fadd float %70, %mul
  store float %add91, float* %arrayidx90, align 4
  %71 = load i32, i32* %idx, align 4
  %idxprom92 = sext i32 %71 to i64
  %72 = load float*, float** %wgt.addr, align 8
  %arrayidx93 = getelementptr inbounds float, float* %72, i64 %idxprom92
  %73 = load float, float* %arrayidx93, align 4
  %74 = load float*, float** %cij.addr, align 8
  %arrayidx94 = getelementptr inbounds float, float* %74, i64 3
  %75 = load float, float* %arrayidx94, align 4
  %add95 = fadd float %75, %73
  store float %add95, float* %arrayidx94, align 4
  br label %if.end.258

if.else:                                          ; preds = %for.body
  %76 = load i32, i32* %i.addr, align 4
  %idxprom96 = sext i32 %76 to i64
  %77 = load i32, i32* %idx, align 4
  %idxprom97 = sext i32 %77 to i64
  %78 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %78, i64 %idxprom97
  %79 = load i8*, i8** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %79, i64 %idxprom96
  %80 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %80 to i32
  %cmp101 = icmp eq i32 %conv100, 32
  br i1 %cmp101, label %if.else.196, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.else
  %81 = load i32, i32* %i.addr, align 4
  %idxprom104 = sext i32 %81 to i64
  %82 = load i32, i32* %idx, align 4
  %idxprom105 = sext i32 %82 to i64
  %83 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx106 = getelementptr inbounds i8*, i8** %83, i64 %idxprom105
  %84 = load i8*, i8** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %84, i64 %idxprom104
  %85 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %85 to i32
  %cmp109 = icmp eq i32 %conv108, 46
  br i1 %cmp109, label %if.else.196, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.103
  %86 = load i32, i32* %i.addr, align 4
  %idxprom112 = sext i32 %86 to i64
  %87 = load i32, i32* %idx, align 4
  %idxprom113 = sext i32 %87 to i64
  %88 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %88, i64 %idxprom113
  %89 = load i8*, i8** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %89, i64 %idxprom112
  %90 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %90 to i32
  %cmp117 = icmp eq i32 %conv116, 95
  br i1 %cmp117, label %if.else.196, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.111
  %91 = load i32, i32* %i.addr, align 4
  %idxprom120 = sext i32 %91 to i64
  %92 = load i32, i32* %idx, align 4
  %idxprom121 = sext i32 %92 to i64
  %93 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %93, i64 %idxprom121
  %94 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %94, i64 %idxprom120
  %95 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %95 to i32
  %cmp125 = icmp eq i32 %conv124, 45
  br i1 %cmp125, label %if.else.196, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.119
  %96 = load i32, i32* %i.addr, align 4
  %idxprom128 = sext i32 %96 to i64
  %97 = load i32, i32* %idx, align 4
  %idxprom129 = sext i32 %97 to i64
  %98 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %98, i64 %idxprom129
  %99 = load i8*, i8** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %99, i64 %idxprom128
  %100 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %100 to i32
  %cmp133 = icmp eq i32 %conv132, 126
  br i1 %cmp133, label %if.else.196, label %if.then.135

if.then.135:                                      ; preds = %lor.lhs.false.127
  %101 = load i32, i32* %j.addr, align 4
  %idxprom136 = sext i32 %101 to i64
  %102 = load i32, i32* %idx, align 4
  %idxprom137 = sext i32 %102 to i64
  %103 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx138 = getelementptr inbounds i8*, i8** %103, i64 %idxprom137
  %104 = load i8*, i8** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %104, i64 %idxprom136
  %105 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %105 to i32
  %cmp141 = icmp eq i32 %conv140, 95
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.then.135
  br label %if.end.195

if.else.144:                                      ; preds = %if.then.135
  %106 = load i32, i32* %j.addr, align 4
  %idxprom145 = sext i32 %106 to i64
  %107 = load i32, i32* %idx, align 4
  %idxprom146 = sext i32 %107 to i64
  %108 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %108, i64 %idxprom146
  %109 = load i8*, i8** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %109, i64 %idxprom145
  %110 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %110 to i32
  %cmp150 = icmp eq i32 %conv149, 32
  br i1 %cmp150, label %if.then.184, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %if.else.144
  %111 = load i32, i32* %j.addr, align 4
  %idxprom153 = sext i32 %111 to i64
  %112 = load i32, i32* %idx, align 4
  %idxprom154 = sext i32 %112 to i64
  %113 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx155 = getelementptr inbounds i8*, i8** %113, i64 %idxprom154
  %114 = load i8*, i8** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %114, i64 %idxprom153
  %115 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %115 to i32
  %cmp158 = icmp eq i32 %conv157, 46
  br i1 %cmp158, label %if.then.184, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.152
  %116 = load i32, i32* %j.addr, align 4
  %idxprom161 = sext i32 %116 to i64
  %117 = load i32, i32* %idx, align 4
  %idxprom162 = sext i32 %117 to i64
  %118 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx163 = getelementptr inbounds i8*, i8** %118, i64 %idxprom162
  %119 = load i8*, i8** %arrayidx163, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %119, i64 %idxprom161
  %120 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %120 to i32
  %cmp166 = icmp eq i32 %conv165, 95
  br i1 %cmp166, label %if.then.184, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.160
  %121 = load i32, i32* %j.addr, align 4
  %idxprom169 = sext i32 %121 to i64
  %122 = load i32, i32* %idx, align 4
  %idxprom170 = sext i32 %122 to i64
  %123 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %123, i64 %idxprom170
  %124 = load i8*, i8** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %124, i64 %idxprom169
  %125 = load i8, i8* %arrayidx172, align 1
  %conv173 = sext i8 %125 to i32
  %cmp174 = icmp eq i32 %conv173, 45
  br i1 %cmp174, label %if.then.184, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %lor.lhs.false.168
  %126 = load i32, i32* %j.addr, align 4
  %idxprom177 = sext i32 %126 to i64
  %127 = load i32, i32* %idx, align 4
  %idxprom178 = sext i32 %127 to i64
  %128 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx179 = getelementptr inbounds i8*, i8** %128, i64 %idxprom178
  %129 = load i8*, i8** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %129, i64 %idxprom177
  %130 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %130 to i32
  %cmp182 = icmp eq i32 %conv181, 126
  br i1 %cmp182, label %if.then.184, label %if.else.189

if.then.184:                                      ; preds = %lor.lhs.false.176, %lor.lhs.false.168, %lor.lhs.false.160, %lor.lhs.false.152, %if.else.144
  %131 = load i32, i32* %idx, align 4
  %idxprom185 = sext i32 %131 to i64
  %132 = load float*, float** %wgt.addr, align 8
  %arrayidx186 = getelementptr inbounds float, float* %132, i64 %idxprom185
  %133 = load float, float* %arrayidx186, align 4
  %134 = load float*, float** %cij.addr, align 8
  %arrayidx187 = getelementptr inbounds float, float* %134, i64 2
  %135 = load float, float* %arrayidx187, align 4
  %add188 = fadd float %135, %133
  store float %add188, float* %arrayidx187, align 4
  br label %if.end.194

if.else.189:                                      ; preds = %lor.lhs.false.176
  %136 = load i32, i32* %idx, align 4
  %idxprom190 = sext i32 %136 to i64
  %137 = load float*, float** %wgt.addr, align 8
  %arrayidx191 = getelementptr inbounds float, float* %137, i64 %idxprom190
  %138 = load float, float* %arrayidx191, align 4
  %139 = load float*, float** %cij.addr, align 8
  %arrayidx192 = getelementptr inbounds float, float* %139, i64 0
  %140 = load float, float* %arrayidx192, align 4
  %add193 = fadd float %140, %138
  store float %add193, float* %arrayidx192, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.189, %if.then.184
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.143
  br label %if.end.257

if.else.196:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false.119, %lor.lhs.false.111, %lor.lhs.false.103, %if.else
  %141 = load i32, i32* %j.addr, align 4
  %idxprom197 = sext i32 %141 to i64
  %142 = load i32, i32* %idx, align 4
  %idxprom198 = sext i32 %142 to i64
  %143 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %143, i64 %idxprom198
  %144 = load i8*, i8** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %144, i64 %idxprom197
  %145 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %145 to i32
  %cmp202 = icmp eq i32 %conv201, 95
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.else.196
  br label %for.inc

if.else.205:                                      ; preds = %if.else.196
  %146 = load i32, i32* %j.addr, align 4
  %idxprom206 = sext i32 %146 to i64
  %147 = load i32, i32* %idx, align 4
  %idxprom207 = sext i32 %147 to i64
  %148 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx208 = getelementptr inbounds i8*, i8** %148, i64 %idxprom207
  %149 = load i8*, i8** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %149, i64 %idxprom206
  %150 = load i8, i8* %arrayidx209, align 1
  %conv210 = sext i8 %150 to i32
  %cmp211 = icmp eq i32 %conv210, 32
  br i1 %cmp211, label %if.then.245, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %if.else.205
  %151 = load i32, i32* %j.addr, align 4
  %idxprom214 = sext i32 %151 to i64
  %152 = load i32, i32* %idx, align 4
  %idxprom215 = sext i32 %152 to i64
  %153 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx216 = getelementptr inbounds i8*, i8** %153, i64 %idxprom215
  %154 = load i8*, i8** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %154, i64 %idxprom214
  %155 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %155 to i32
  %cmp219 = icmp eq i32 %conv218, 46
  br i1 %cmp219, label %if.then.245, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %lor.lhs.false.213
  %156 = load i32, i32* %j.addr, align 4
  %idxprom222 = sext i32 %156 to i64
  %157 = load i32, i32* %idx, align 4
  %idxprom223 = sext i32 %157 to i64
  %158 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx224 = getelementptr inbounds i8*, i8** %158, i64 %idxprom223
  %159 = load i8*, i8** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %159, i64 %idxprom222
  %160 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %160 to i32
  %cmp227 = icmp eq i32 %conv226, 95
  br i1 %cmp227, label %if.then.245, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.221
  %161 = load i32, i32* %j.addr, align 4
  %idxprom230 = sext i32 %161 to i64
  %162 = load i32, i32* %idx, align 4
  %idxprom231 = sext i32 %162 to i64
  %163 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %163, i64 %idxprom231
  %164 = load i8*, i8** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %164, i64 %idxprom230
  %165 = load i8, i8* %arrayidx233, align 1
  %conv234 = sext i8 %165 to i32
  %cmp235 = icmp eq i32 %conv234, 45
  br i1 %cmp235, label %if.then.245, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %lor.lhs.false.229
  %166 = load i32, i32* %j.addr, align 4
  %idxprom238 = sext i32 %166 to i64
  %167 = load i32, i32* %idx, align 4
  %idxprom239 = sext i32 %167 to i64
  %168 = load i8**, i8*** %aseqs.addr, align 8
  %arrayidx240 = getelementptr inbounds i8*, i8** %168, i64 %idxprom239
  %169 = load i8*, i8** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %169, i64 %idxprom238
  %170 = load i8, i8* %arrayidx241, align 1
  %conv242 = sext i8 %170 to i32
  %cmp243 = icmp eq i32 %conv242, 126
  br i1 %cmp243, label %if.then.245, label %if.else.250

if.then.245:                                      ; preds = %lor.lhs.false.237, %lor.lhs.false.229, %lor.lhs.false.221, %lor.lhs.false.213, %if.else.205
  %171 = load i32, i32* %idx, align 4
  %idxprom246 = sext i32 %171 to i64
  %172 = load float*, float** %wgt.addr, align 8
  %arrayidx247 = getelementptr inbounds float, float* %172, i64 %idxprom246
  %173 = load float, float* %arrayidx247, align 4
  %174 = load float*, float** %cij.addr, align 8
  %arrayidx248 = getelementptr inbounds float, float* %174, i64 6
  %175 = load float, float* %arrayidx248, align 4
  %add249 = fadd float %175, %173
  store float %add249, float* %arrayidx248, align 4
  br label %if.end.255

if.else.250:                                      ; preds = %lor.lhs.false.237
  %176 = load i32, i32* %idx, align 4
  %idxprom251 = sext i32 %176 to i64
  %177 = load float*, float** %wgt.addr, align 8
  %arrayidx252 = getelementptr inbounds float, float* %177, i64 %idxprom251
  %178 = load float, float* %arrayidx252, align 4
  %179 = load float*, float** %cij.addr, align 8
  %arrayidx253 = getelementptr inbounds float, float* %179, i64 5
  %180 = load float, float* %arrayidx253, align 4
  %add254 = fadd float %180, %178
  store float %add254, float* %arrayidx253, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.250, %if.then.245
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.end.195
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.258, %if.then.204
  %181 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.80, %if.then.40
  %182 = load i32, i32* %retval
  ret i32 %182
}

declare void @P7PriorifyTransitionVector(float*, %struct.p7prior_s*, float*) #1

declare float @FDot(float*, float*, i32) #1

declare void @FAdd(float*, float*, i32) #1

declare i32 @DealignedLength(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fake_tracebacks(i8** %aseq, i32 %nseq, i32 %alen, i32* %matassign, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %matassign.addr = alloca i32*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %tr = alloca %struct.p7trace_s**, align 8
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %tpos = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  store i32* %matassign, i32** %matassign.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 607, i64 %mul)
  %1 = bitcast i8* %call to %struct.p7trace_s**
  store %struct.p7trace_s** %1, %struct.p7trace_s*** %tr, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.405, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.407

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %4, 6
  %5 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %6, i64 %idxprom
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %arrayidx)
  %7 = load i32, i32* %idx, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx3 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %8, i64 %idxprom2
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx3, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %statetype, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 4, i8* %arrayidx4, align 1
  %11 = load i32, i32* %idx, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx6 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %12, i64 %idxprom5
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx6, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %13, i32 0, i32 2
  %14 = load i32*, i32** %nodeidx, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %arrayidx7, align 4
  %15 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx9 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %16, i64 %idxprom8
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx9, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %17, i32 0, i32 3
  %18 = load i32*, i32** %pos, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %arrayidx10, align 4
  %19 = load i32, i32* %idx, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx12 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %20, i64 %idxprom11
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx12, align 8
  %statetype13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %statetype13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 5, i8* %arrayidx14, align 1
  %23 = load i32, i32* %idx, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx16 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %24, i64 %idxprom15
  %25 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx16, align 8
  %nodeidx17 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %25, i32 0, i32 2
  %26 = load i32*, i32** %nodeidx17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %arrayidx18, align 4
  %27 = load i32, i32* %idx, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx20 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %28, i64 %idxprom19
  %29 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx20, align 8
  %pos21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %29, i32 0, i32 3
  %30 = load i32*, i32** %pos21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 0, i32* %arrayidx22, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %k, align 4
  store i32 2, i32* %tpos, align 4
  store i32 0, i32* %apos, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %apos, align 4
  %32 = load i32, i32* %alen.addr, align 4
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %33 = load i32, i32* %tpos, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32, i32* %idx, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx29 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %35, i64 %idxprom28
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx29, align 8
  %statetype30 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %statetype30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i64 %idxprom27
  store i8 0, i8* %arrayidx31, align 1
  %38 = load i32, i32* %apos, align 4
  %add32 = add nsw i32 %38, 1
  %idxprom33 = sext i32 %add32 to i64
  %39 = load i32*, i32** %matassign.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  %and = and i32 %40, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.26
  %41 = load i32, i32* %tpos, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load i32, i32* %idx, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx37 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %43, i64 %idxprom36
  %44 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx37, align 8
  %statetype38 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %44, i32 0, i32 1
  %45 = load i8*, i8** %statetype38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %45, i64 %idxprom35
  store i8 6, i8* %arrayidx39, align 1
  %46 = load i32, i32* %tpos, align 4
  %idxprom40 = sext i32 %46 to i64
  %47 = load i32, i32* %idx, align 4
  %idxprom41 = sext i32 %47 to i64
  %48 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx42 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %48, i64 %idxprom41
  %49 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx42, align 8
  %nodeidx43 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %49, i32 0, i32 2
  %50 = load i32*, i32** %nodeidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %50, i64 %idxprom40
  store i32 0, i32* %arrayidx44, align 4
  %51 = load i32, i32* %tpos, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %52 to i64
  %53 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx47 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %53, i64 %idxprom46
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx47, align 8
  %pos48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 3
  %55 = load i32*, i32** %pos48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom45
  store i32 0, i32* %arrayidx49, align 4
  %56 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %tpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.26
  %57 = load i32, i32* %apos, align 4
  %add50 = add nsw i32 %57, 1
  %idxprom51 = sext i32 %add50 to i64
  %58 = load i32*, i32** %matassign.addr, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %58, i64 %idxprom51
  %59 = load i32, i32* %arrayidx52, align 4
  %and53 = and i32 %59, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %60 = load i32, i32* %apos, align 4
  %idxprom55 = sext i32 %60 to i64
  %61 = load i32, i32* %idx, align 4
  %idxprom56 = sext i32 %61 to i64
  %62 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %62, i64 %idxprom56
  %63 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %63, i64 %idxprom55
  %64 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %64 to i32
  %cmp60 = icmp eq i32 %conv59, 32
  br i1 %cmp60, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %65 = load i32, i32* %apos, align 4
  %idxprom62 = sext i32 %65 to i64
  %66 = load i32, i32* %idx, align 4
  %idxprom63 = sext i32 %66 to i64
  %67 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %67, i64 %idxprom63
  %68 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %68, i64 %idxprom62
  %69 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %69 to i32
  %cmp67 = icmp eq i32 %conv66, 46
  br i1 %cmp67, label %if.else, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false
  %70 = load i32, i32* %apos, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load i32, i32* %idx, align 4
  %idxprom71 = sext i32 %71 to i64
  %72 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %72, i64 %idxprom71
  %73 = load i8*, i8** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %73, i64 %idxprom70
  %74 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %74 to i32
  %cmp75 = icmp eq i32 %conv74, 95
  br i1 %cmp75, label %if.else, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.69
  %75 = load i32, i32* %apos, align 4
  %idxprom78 = sext i32 %75 to i64
  %76 = load i32, i32* %idx, align 4
  %idxprom79 = sext i32 %76 to i64
  %77 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %77, i64 %idxprom79
  %78 = load i8*, i8** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %78, i64 %idxprom78
  %79 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %79 to i32
  %cmp83 = icmp eq i32 %conv82, 45
  br i1 %cmp83, label %if.else, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.77
  %80 = load i32, i32* %apos, align 4
  %idxprom86 = sext i32 %80 to i64
  %81 = load i32, i32* %idx, align 4
  %idxprom87 = sext i32 %81 to i64
  %82 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx88 = getelementptr inbounds i8*, i8** %82, i64 %idxprom87
  %83 = load i8*, i8** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %83, i64 %idxprom86
  %84 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %84 to i32
  %cmp91 = icmp eq i32 %conv90, 126
  br i1 %cmp91, label %if.else, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false.85
  %85 = load i32, i32* %k, align 4
  %inc94 = add nsw i32 %85, 1
  store i32 %inc94, i32* %k, align 4
  %86 = load i32, i32* %tpos, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load i32, i32* %idx, align 4
  %idxprom96 = sext i32 %87 to i64
  %88 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx97 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %88, i64 %idxprom96
  %89 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx97, align 8
  %statetype98 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %89, i32 0, i32 1
  %90 = load i8*, i8** %statetype98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %90, i64 %idxprom95
  store i8 1, i8* %arrayidx99, align 1
  %91 = load i32, i32* %k, align 4
  %92 = load i32, i32* %tpos, align 4
  %idxprom100 = sext i32 %92 to i64
  %93 = load i32, i32* %idx, align 4
  %idxprom101 = sext i32 %93 to i64
  %94 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx102 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %94, i64 %idxprom101
  %95 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx102, align 8
  %nodeidx103 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %95, i32 0, i32 2
  %96 = load i32*, i32** %nodeidx103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %96, i64 %idxprom100
  store i32 %91, i32* %arrayidx104, align 4
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %tpos, align 4
  %idxprom105 = sext i32 %98 to i64
  %99 = load i32, i32* %idx, align 4
  %idxprom106 = sext i32 %99 to i64
  %100 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx107 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %100, i64 %idxprom106
  %101 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx107, align 8
  %pos108 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %101, i32 0, i32 3
  %102 = load i32*, i32** %pos108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %102, i64 %idxprom105
  store i32 %97, i32* %arrayidx109, align 4
  %103 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %103, 1
  store i32 %inc110, i32* %i, align 4
  %104 = load i32, i32* %tpos, align 4
  %inc111 = add nsw i32 %104, 1
  store i32 %inc111, i32* %tpos, align 4
  br label %if.end.335

if.else:                                          ; preds = %lor.lhs.false.85, %lor.lhs.false.77, %lor.lhs.false.69, %lor.lhs.false, %land.lhs.true, %if.end
  %105 = load i32, i32* %apos, align 4
  %add112 = add nsw i32 %105, 1
  %idxprom113 = sext i32 %add112 to i64
  %106 = load i32*, i32** %matassign.addr, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %106, i64 %idxprom113
  %107 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %107, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.145

if.then.117:                                      ; preds = %if.else
  %108 = load i32, i32* %k, align 4
  %inc118 = add nsw i32 %108, 1
  store i32 %inc118, i32* %k, align 4
  %109 = load i32, i32* %tpos, align 4
  %sub = sub nsw i32 %109, 1
  %idxprom119 = sext i32 %sub to i64
  %110 = load i32, i32* %idx, align 4
  %idxprom120 = sext i32 %110 to i64
  %111 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx121 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %111, i64 %idxprom120
  %112 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx121, align 8
  %statetype122 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %112, i32 0, i32 1
  %113 = load i8*, i8** %statetype122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %113, i64 %idxprom119
  %114 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %114 to i32
  %cmp125 = icmp ne i32 %conv124, 6
  br i1 %cmp125, label %if.then.127, label %if.end.144

if.then.127:                                      ; preds = %if.then.117
  %115 = load i32, i32* %tpos, align 4
  %idxprom128 = sext i32 %115 to i64
  %116 = load i32, i32* %idx, align 4
  %idxprom129 = sext i32 %116 to i64
  %117 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx130 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %117, i64 %idxprom129
  %118 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx130, align 8
  %statetype131 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %118, i32 0, i32 1
  %119 = load i8*, i8** %statetype131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %119, i64 %idxprom128
  store i8 2, i8* %arrayidx132, align 1
  %120 = load i32, i32* %k, align 4
  %121 = load i32, i32* %tpos, align 4
  %idxprom133 = sext i32 %121 to i64
  %122 = load i32, i32* %idx, align 4
  %idxprom134 = sext i32 %122 to i64
  %123 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx135 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %123, i64 %idxprom134
  %124 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx135, align 8
  %nodeidx136 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %124, i32 0, i32 2
  %125 = load i32*, i32** %nodeidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %125, i64 %idxprom133
  store i32 %120, i32* %arrayidx137, align 4
  %126 = load i32, i32* %tpos, align 4
  %idxprom138 = sext i32 %126 to i64
  %127 = load i32, i32* %idx, align 4
  %idxprom139 = sext i32 %127 to i64
  %128 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx140 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %128, i64 %idxprom139
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx140, align 8
  %pos141 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %129, i32 0, i32 3
  %130 = load i32*, i32** %pos141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %130, i64 %idxprom138
  store i32 0, i32* %arrayidx142, align 4
  %131 = load i32, i32* %tpos, align 4
  %inc143 = add nsw i32 %131, 1
  store i32 %inc143, i32* %tpos, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.127, %if.then.117
  br label %if.end.334

if.else.145:                                      ; preds = %if.else
  %132 = load i32, i32* %apos, align 4
  %add146 = add nsw i32 %132, 1
  %idxprom147 = sext i32 %add146 to i64
  %133 = load i32*, i32** %matassign.addr, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %133, i64 %idxprom147
  %134 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %134, 16
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.else.209

land.lhs.true.151:                                ; preds = %if.else.145
  %135 = load i32, i32* %apos, align 4
  %idxprom152 = sext i32 %135 to i64
  %136 = load i32, i32* %idx, align 4
  %idxprom153 = sext i32 %136 to i64
  %137 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx154 = getelementptr inbounds i8*, i8** %137, i64 %idxprom153
  %138 = load i8*, i8** %arrayidx154, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %138, i64 %idxprom152
  %139 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %139 to i32
  %cmp157 = icmp eq i32 %conv156, 32
  br i1 %cmp157, label %if.else.209, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.151
  %140 = load i32, i32* %apos, align 4
  %idxprom160 = sext i32 %140 to i64
  %141 = load i32, i32* %idx, align 4
  %idxprom161 = sext i32 %141 to i64
  %142 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx162 = getelementptr inbounds i8*, i8** %142, i64 %idxprom161
  %143 = load i8*, i8** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %143, i64 %idxprom160
  %144 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %144 to i32
  %cmp165 = icmp eq i32 %conv164, 46
  br i1 %cmp165, label %if.else.209, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %lor.lhs.false.159
  %145 = load i32, i32* %apos, align 4
  %idxprom168 = sext i32 %145 to i64
  %146 = load i32, i32* %idx, align 4
  %idxprom169 = sext i32 %146 to i64
  %147 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx170 = getelementptr inbounds i8*, i8** %147, i64 %idxprom169
  %148 = load i8*, i8** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %148, i64 %idxprom168
  %149 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %149 to i32
  %cmp173 = icmp eq i32 %conv172, 95
  br i1 %cmp173, label %if.else.209, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.167
  %150 = load i32, i32* %apos, align 4
  %idxprom176 = sext i32 %150 to i64
  %151 = load i32, i32* %idx, align 4
  %idxprom177 = sext i32 %151 to i64
  %152 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx178 = getelementptr inbounds i8*, i8** %152, i64 %idxprom177
  %153 = load i8*, i8** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %153, i64 %idxprom176
  %154 = load i8, i8* %arrayidx179, align 1
  %conv180 = sext i8 %154 to i32
  %cmp181 = icmp eq i32 %conv180, 45
  br i1 %cmp181, label %if.else.209, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %lor.lhs.false.175
  %155 = load i32, i32* %apos, align 4
  %idxprom184 = sext i32 %155 to i64
  %156 = load i32, i32* %idx, align 4
  %idxprom185 = sext i32 %156 to i64
  %157 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx186 = getelementptr inbounds i8*, i8** %157, i64 %idxprom185
  %158 = load i8*, i8** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %158, i64 %idxprom184
  %159 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %159 to i32
  %cmp189 = icmp eq i32 %conv188, 126
  br i1 %cmp189, label %if.else.209, label %if.then.191

if.then.191:                                      ; preds = %lor.lhs.false.183
  %160 = load i32, i32* %tpos, align 4
  %idxprom192 = sext i32 %160 to i64
  %161 = load i32, i32* %idx, align 4
  %idxprom193 = sext i32 %161 to i64
  %162 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx194 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %162, i64 %idxprom193
  %163 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx194, align 8
  %statetype195 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %163, i32 0, i32 1
  %164 = load i8*, i8** %statetype195, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %164, i64 %idxprom192
  store i8 5, i8* %arrayidx196, align 1
  %165 = load i32, i32* %tpos, align 4
  %idxprom197 = sext i32 %165 to i64
  %166 = load i32, i32* %idx, align 4
  %idxprom198 = sext i32 %166 to i64
  %167 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx199 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %167, i64 %idxprom198
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx199, align 8
  %nodeidx200 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 2
  %169 = load i32*, i32** %nodeidx200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %169, i64 %idxprom197
  store i32 0, i32* %arrayidx201, align 4
  %170 = load i32, i32* %i, align 4
  %171 = load i32, i32* %tpos, align 4
  %idxprom202 = sext i32 %171 to i64
  %172 = load i32, i32* %idx, align 4
  %idxprom203 = sext i32 %172 to i64
  %173 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx204 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %173, i64 %idxprom203
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx204, align 8
  %pos205 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 3
  %175 = load i32*, i32** %pos205, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %175, i64 %idxprom202
  store i32 %170, i32* %arrayidx206, align 4
  %176 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %176, 1
  store i32 %inc207, i32* %i, align 4
  %177 = load i32, i32* %tpos, align 4
  %inc208 = add nsw i32 %177, 1
  store i32 %inc208, i32* %tpos, align 4
  br label %if.end.333

if.else.209:                                      ; preds = %lor.lhs.false.183, %lor.lhs.false.175, %lor.lhs.false.167, %lor.lhs.false.159, %land.lhs.true.151, %if.else.145
  %178 = load i32, i32* %apos, align 4
  %add210 = add nsw i32 %178, 1
  %idxprom211 = sext i32 %add210 to i64
  %179 = load i32*, i32** %matassign.addr, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %179, i64 %idxprom211
  %180 = load i32, i32* %arrayidx212, align 4
  %and213 = and i32 %180, 32
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %land.lhs.true.215, label %if.else.273

land.lhs.true.215:                                ; preds = %if.else.209
  %181 = load i32, i32* %apos, align 4
  %idxprom216 = sext i32 %181 to i64
  %182 = load i32, i32* %idx, align 4
  %idxprom217 = sext i32 %182 to i64
  %183 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %183, i64 %idxprom217
  %184 = load i8*, i8** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %184, i64 %idxprom216
  %185 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %185 to i32
  %cmp221 = icmp eq i32 %conv220, 32
  br i1 %cmp221, label %if.else.273, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %land.lhs.true.215
  %186 = load i32, i32* %apos, align 4
  %idxprom224 = sext i32 %186 to i64
  %187 = load i32, i32* %idx, align 4
  %idxprom225 = sext i32 %187 to i64
  %188 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %188, i64 %idxprom225
  %189 = load i8*, i8** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %189, i64 %idxprom224
  %190 = load i8, i8* %arrayidx227, align 1
  %conv228 = sext i8 %190 to i32
  %cmp229 = icmp eq i32 %conv228, 46
  br i1 %cmp229, label %if.else.273, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.223
  %191 = load i32, i32* %apos, align 4
  %idxprom232 = sext i32 %191 to i64
  %192 = load i32, i32* %idx, align 4
  %idxprom233 = sext i32 %192 to i64
  %193 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %193, i64 %idxprom233
  %194 = load i8*, i8** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %194, i64 %idxprom232
  %195 = load i8, i8* %arrayidx235, align 1
  %conv236 = sext i8 %195 to i32
  %cmp237 = icmp eq i32 %conv236, 95
  br i1 %cmp237, label %if.else.273, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.231
  %196 = load i32, i32* %apos, align 4
  %idxprom240 = sext i32 %196 to i64
  %197 = load i32, i32* %idx, align 4
  %idxprom241 = sext i32 %197 to i64
  %198 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx242 = getelementptr inbounds i8*, i8** %198, i64 %idxprom241
  %199 = load i8*, i8** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %199, i64 %idxprom240
  %200 = load i8, i8* %arrayidx243, align 1
  %conv244 = sext i8 %200 to i32
  %cmp245 = icmp eq i32 %conv244, 45
  br i1 %cmp245, label %if.else.273, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.239
  %201 = load i32, i32* %apos, align 4
  %idxprom248 = sext i32 %201 to i64
  %202 = load i32, i32* %idx, align 4
  %idxprom249 = sext i32 %202 to i64
  %203 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx250 = getelementptr inbounds i8*, i8** %203, i64 %idxprom249
  %204 = load i8*, i8** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %204, i64 %idxprom248
  %205 = load i8, i8* %arrayidx251, align 1
  %conv252 = sext i8 %205 to i32
  %cmp253 = icmp eq i32 %conv252, 126
  br i1 %cmp253, label %if.else.273, label %if.then.255

if.then.255:                                      ; preds = %lor.lhs.false.247
  %206 = load i32, i32* %tpos, align 4
  %idxprom256 = sext i32 %206 to i64
  %207 = load i32, i32* %idx, align 4
  %idxprom257 = sext i32 %207 to i64
  %208 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx258 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %208, i64 %idxprom257
  %209 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx258, align 8
  %statetype259 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %209, i32 0, i32 1
  %210 = load i8*, i8** %statetype259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %210, i64 %idxprom256
  store i8 8, i8* %arrayidx260, align 1
  %211 = load i32, i32* %tpos, align 4
  %idxprom261 = sext i32 %211 to i64
  %212 = load i32, i32* %idx, align 4
  %idxprom262 = sext i32 %212 to i64
  %213 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx263 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %213, i64 %idxprom262
  %214 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx263, align 8
  %nodeidx264 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %214, i32 0, i32 2
  %215 = load i32*, i32** %nodeidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %215, i64 %idxprom261
  store i32 0, i32* %arrayidx265, align 4
  %216 = load i32, i32* %i, align 4
  %217 = load i32, i32* %tpos, align 4
  %idxprom266 = sext i32 %217 to i64
  %218 = load i32, i32* %idx, align 4
  %idxprom267 = sext i32 %218 to i64
  %219 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx268 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %219, i64 %idxprom267
  %220 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx268, align 8
  %pos269 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %220, i32 0, i32 3
  %221 = load i32*, i32** %pos269, align 8
  %arrayidx270 = getelementptr inbounds i32, i32* %221, i64 %idxprom266
  store i32 %216, i32* %arrayidx270, align 4
  %222 = load i32, i32* %i, align 4
  %inc271 = add nsw i32 %222, 1
  store i32 %inc271, i32* %i, align 4
  %223 = load i32, i32* %tpos, align 4
  %inc272 = add nsw i32 %223, 1
  store i32 %inc272, i32* %tpos, align 4
  br label %if.end.332

if.else.273:                                      ; preds = %lor.lhs.false.247, %lor.lhs.false.239, %lor.lhs.false.231, %lor.lhs.false.223, %land.lhs.true.215, %if.else.209
  %224 = load i32, i32* %apos, align 4
  %idxprom274 = sext i32 %224 to i64
  %225 = load i32, i32* %idx, align 4
  %idxprom275 = sext i32 %225 to i64
  %226 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx276 = getelementptr inbounds i8*, i8** %226, i64 %idxprom275
  %227 = load i8*, i8** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %227, i64 %idxprom274
  %228 = load i8, i8* %arrayidx277, align 1
  %conv278 = sext i8 %228 to i32
  %cmp279 = icmp eq i32 %conv278, 32
  br i1 %cmp279, label %if.end.331, label %lor.lhs.false.281

lor.lhs.false.281:                                ; preds = %if.else.273
  %229 = load i32, i32* %apos, align 4
  %idxprom282 = sext i32 %229 to i64
  %230 = load i32, i32* %idx, align 4
  %idxprom283 = sext i32 %230 to i64
  %231 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %231, i64 %idxprom283
  %232 = load i8*, i8** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %232, i64 %idxprom282
  %233 = load i8, i8* %arrayidx285, align 1
  %conv286 = sext i8 %233 to i32
  %cmp287 = icmp eq i32 %conv286, 46
  br i1 %cmp287, label %if.end.331, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %lor.lhs.false.281
  %234 = load i32, i32* %apos, align 4
  %idxprom290 = sext i32 %234 to i64
  %235 = load i32, i32* %idx, align 4
  %idxprom291 = sext i32 %235 to i64
  %236 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx292 = getelementptr inbounds i8*, i8** %236, i64 %idxprom291
  %237 = load i8*, i8** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %237, i64 %idxprom290
  %238 = load i8, i8* %arrayidx293, align 1
  %conv294 = sext i8 %238 to i32
  %cmp295 = icmp eq i32 %conv294, 95
  br i1 %cmp295, label %if.end.331, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %lor.lhs.false.289
  %239 = load i32, i32* %apos, align 4
  %idxprom298 = sext i32 %239 to i64
  %240 = load i32, i32* %idx, align 4
  %idxprom299 = sext i32 %240 to i64
  %241 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx300 = getelementptr inbounds i8*, i8** %241, i64 %idxprom299
  %242 = load i8*, i8** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %242, i64 %idxprom298
  %243 = load i8, i8* %arrayidx301, align 1
  %conv302 = sext i8 %243 to i32
  %cmp303 = icmp eq i32 %conv302, 45
  br i1 %cmp303, label %if.end.331, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %lor.lhs.false.297
  %244 = load i32, i32* %apos, align 4
  %idxprom306 = sext i32 %244 to i64
  %245 = load i32, i32* %idx, align 4
  %idxprom307 = sext i32 %245 to i64
  %246 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %246, i64 %idxprom307
  %247 = load i8*, i8** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %247, i64 %idxprom306
  %248 = load i8, i8* %arrayidx309, align 1
  %conv310 = sext i8 %248 to i32
  %cmp311 = icmp eq i32 %conv310, 126
  br i1 %cmp311, label %if.end.331, label %if.then.313

if.then.313:                                      ; preds = %lor.lhs.false.305
  %249 = load i32, i32* %tpos, align 4
  %idxprom314 = sext i32 %249 to i64
  %250 = load i32, i32* %idx, align 4
  %idxprom315 = sext i32 %250 to i64
  %251 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx316 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %251, i64 %idxprom315
  %252 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx316, align 8
  %statetype317 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %252, i32 0, i32 1
  %253 = load i8*, i8** %statetype317, align 8
  %arrayidx318 = getelementptr inbounds i8, i8* %253, i64 %idxprom314
  store i8 3, i8* %arrayidx318, align 1
  %254 = load i32, i32* %k, align 4
  %255 = load i32, i32* %tpos, align 4
  %idxprom319 = sext i32 %255 to i64
  %256 = load i32, i32* %idx, align 4
  %idxprom320 = sext i32 %256 to i64
  %257 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx321 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %257, i64 %idxprom320
  %258 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx321, align 8
  %nodeidx322 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %258, i32 0, i32 2
  %259 = load i32*, i32** %nodeidx322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %259, i64 %idxprom319
  store i32 %254, i32* %arrayidx323, align 4
  %260 = load i32, i32* %i, align 4
  %261 = load i32, i32* %tpos, align 4
  %idxprom324 = sext i32 %261 to i64
  %262 = load i32, i32* %idx, align 4
  %idxprom325 = sext i32 %262 to i64
  %263 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx326 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %263, i64 %idxprom325
  %264 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx326, align 8
  %pos327 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %264, i32 0, i32 3
  %265 = load i32*, i32** %pos327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %265, i64 %idxprom324
  store i32 %260, i32* %arrayidx328, align 4
  %266 = load i32, i32* %i, align 4
  %inc329 = add nsw i32 %266, 1
  store i32 %inc329, i32* %i, align 4
  %267 = load i32, i32* %tpos, align 4
  %inc330 = add nsw i32 %267, 1
  store i32 %inc330, i32* %tpos, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.313, %lor.lhs.false.305, %lor.lhs.false.297, %lor.lhs.false.289, %lor.lhs.false.281, %if.else.273
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.then.255
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.191
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end.144
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.then.93
  %268 = load i32, i32* %apos, align 4
  %add336 = add nsw i32 %268, 1
  %idxprom337 = sext i32 %add336 to i64
  %269 = load i32*, i32** %matassign.addr, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %269, i64 %idxprom337
  %270 = load i32, i32* %arrayidx338, align 4
  %and339 = and i32 %270, 4
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %if.then.341, label %if.end.383

if.then.341:                                      ; preds = %if.end.335
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.341
  %271 = load i32, i32* %tpos, align 4
  %sub342 = sub nsw i32 %271, 1
  %idxprom343 = sext i32 %sub342 to i64
  %272 = load i32, i32* %idx, align 4
  %idxprom344 = sext i32 %272 to i64
  %273 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx345 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %273, i64 %idxprom344
  %274 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx345, align 8
  %statetype346 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %274, i32 0, i32 1
  %275 = load i8*, i8** %statetype346, align 8
  %arrayidx347 = getelementptr inbounds i8, i8* %275, i64 %idxprom343
  %276 = load i8, i8* %arrayidx347, align 1
  %conv348 = sext i8 %276 to i32
  %cmp349 = icmp eq i32 %conv348, 2
  br i1 %cmp349, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %277 = load i32, i32* %tpos, align 4
  %dec = add nsw i32 %277, -1
  store i32 %dec, i32* %tpos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %278 = load i32, i32* %tpos, align 4
  %idxprom351 = sext i32 %278 to i64
  %279 = load i32, i32* %idx, align 4
  %idxprom352 = sext i32 %279 to i64
  %280 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx353 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %280, i64 %idxprom352
  %281 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx353, align 8
  %statetype354 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %281, i32 0, i32 1
  %282 = load i8*, i8** %statetype354, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %282, i64 %idxprom351
  store i8 7, i8* %arrayidx355, align 1
  %283 = load i32, i32* %tpos, align 4
  %idxprom356 = sext i32 %283 to i64
  %284 = load i32, i32* %idx, align 4
  %idxprom357 = sext i32 %284 to i64
  %285 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx358 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %285, i64 %idxprom357
  %286 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx358, align 8
  %nodeidx359 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %286, i32 0, i32 2
  %287 = load i32*, i32** %nodeidx359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %287, i64 %idxprom356
  store i32 0, i32* %arrayidx360, align 4
  %288 = load i32, i32* %tpos, align 4
  %idxprom361 = sext i32 %288 to i64
  %289 = load i32, i32* %idx, align 4
  %idxprom362 = sext i32 %289 to i64
  %290 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx363 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %290, i64 %idxprom362
  %291 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx363, align 8
  %pos364 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %291, i32 0, i32 3
  %292 = load i32*, i32** %pos364, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %292, i64 %idxprom361
  store i32 0, i32* %arrayidx365, align 4
  %293 = load i32, i32* %tpos, align 4
  %inc366 = add nsw i32 %293, 1
  store i32 %inc366, i32* %tpos, align 4
  %294 = load i32, i32* %tpos, align 4
  %idxprom367 = sext i32 %294 to i64
  %295 = load i32, i32* %idx, align 4
  %idxprom368 = sext i32 %295 to i64
  %296 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx369 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %296, i64 %idxprom368
  %297 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx369, align 8
  %statetype370 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %297, i32 0, i32 1
  %298 = load i8*, i8** %statetype370, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %298, i64 %idxprom367
  store i8 8, i8* %arrayidx371, align 1
  %299 = load i32, i32* %tpos, align 4
  %idxprom372 = sext i32 %299 to i64
  %300 = load i32, i32* %idx, align 4
  %idxprom373 = sext i32 %300 to i64
  %301 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx374 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %301, i64 %idxprom373
  %302 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx374, align 8
  %nodeidx375 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %302, i32 0, i32 2
  %303 = load i32*, i32** %nodeidx375, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %303, i64 %idxprom372
  store i32 0, i32* %arrayidx376, align 4
  %304 = load i32, i32* %tpos, align 4
  %idxprom377 = sext i32 %304 to i64
  %305 = load i32, i32* %idx, align 4
  %idxprom378 = sext i32 %305 to i64
  %306 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx379 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %306, i64 %idxprom378
  %307 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx379, align 8
  %pos380 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %307, i32 0, i32 3
  %308 = load i32*, i32** %pos380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %308, i64 %idxprom377
  store i32 0, i32* %arrayidx381, align 4
  %309 = load i32, i32* %tpos, align 4
  %inc382 = add nsw i32 %309, 1
  store i32 %inc382, i32* %tpos, align 4
  br label %if.end.383

if.end.383:                                       ; preds = %while.end, %if.end.335
  br label %for.inc

for.inc:                                          ; preds = %if.end.383
  %310 = load i32, i32* %apos, align 4
  %inc384 = add nsw i32 %310, 1
  store i32 %inc384, i32* %apos, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %311 = load i32, i32* %tpos, align 4
  %idxprom385 = sext i32 %311 to i64
  %312 = load i32, i32* %idx, align 4
  %idxprom386 = sext i32 %312 to i64
  %313 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx387 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %313, i64 %idxprom386
  %314 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx387, align 8
  %statetype388 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %314, i32 0, i32 1
  %315 = load i8*, i8** %statetype388, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %315, i64 %idxprom385
  store i8 9, i8* %arrayidx389, align 1
  %316 = load i32, i32* %tpos, align 4
  %idxprom390 = sext i32 %316 to i64
  %317 = load i32, i32* %idx, align 4
  %idxprom391 = sext i32 %317 to i64
  %318 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx392 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %318, i64 %idxprom391
  %319 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx392, align 8
  %nodeidx393 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %319, i32 0, i32 2
  %320 = load i32*, i32** %nodeidx393, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %320, i64 %idxprom390
  store i32 0, i32* %arrayidx394, align 4
  %321 = load i32, i32* %tpos, align 4
  %idxprom395 = sext i32 %321 to i64
  %322 = load i32, i32* %idx, align 4
  %idxprom396 = sext i32 %322 to i64
  %323 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx397 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %323, i64 %idxprom396
  %324 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx397, align 8
  %pos398 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %324, i32 0, i32 3
  %325 = load i32*, i32** %pos398, align 8
  %arrayidx399 = getelementptr inbounds i32, i32* %325, i64 %idxprom395
  store i32 0, i32* %arrayidx399, align 4
  %326 = load i32, i32* %tpos, align 4
  %inc400 = add nsw i32 %326, 1
  store i32 %inc400, i32* %tpos, align 4
  %327 = load i32, i32* %idx, align 4
  %idxprom401 = sext i32 %327 to i64
  %328 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx402 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %328, i64 %idxprom401
  %329 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx402, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %329, i32 0, i32 0
  store i32 %inc400, i32* %tlen, align 4
  %330 = load i32, i32* %idx, align 4
  %idxprom403 = sext i32 %330 to i64
  %331 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx404 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %331, i64 %idxprom403
  %332 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx404, align 8
  %333 = load i32, i32* %k, align 4
  call void @trace_doctor(%struct.p7trace_s* %332, i32 %333, i32* null, i32* null)
  br label %for.inc.405

for.inc.405:                                      ; preds = %for.end
  %334 = load i32, i32* %idx, align 4
  %inc406 = add nsw i32 %334, 1
  store i32 %inc406, i32* %idx, align 4
  br label %for.cond

for.end.407:                                      ; preds = %for.cond
  %335 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %336 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  store %struct.p7trace_s** %335, %struct.p7trace_s*** %336, align 8
  ret void
}

declare %struct.plan7_s* @AllocPlan7(i32) #1

declare void @ZeroPlan7(%struct.plan7_s*) #1

declare void @P7TraceCount(%struct.plan7_s*, i8*, float, %struct.p7trace_s*) #1

; Function Attrs: nounwind uwtable
define internal void @annotate_model(%struct.plan7_s* %hmm, i32* %matassign, %struct.msa_struct* %msa) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %matassign.addr = alloca i32*, align 8
  %msa.addr = alloca %struct.msa_struct*, align 8
  %apos = alloca i32, align 4
  %k = alloca i32, align 4
  %pri = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32* %matassign, i32** %matassign.addr, align 8
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 13
  %1 = load i8*, i8** %rf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 3
  %3 = load i8*, i8** %rf1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 32, i8* %arrayidx, align 1
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %apos, align 4
  %5 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %5, i32 0, i32 3
  %6 = load i32, i32* %alen, align 4
  %cmp2 = icmp sle i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %matassign.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %10 = load i32, i32* %apos, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom5 = sext i32 %sub to i64
  %11 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %11, i32 0, i32 13
  %12 = load i8*, i8** %rf6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  %13 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv, 32
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %14 = load i32, i32* %apos, align 4
  %sub10 = sub nsw i32 %14, 1
  %idxprom11 = sext i32 %sub10 to i64
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %rf12 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 13
  %16 = load i8*, i8** %rf12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom11
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 46, %cond.true ], [ %conv14, %cond.false ]
  %conv15 = trunc i32 %cond to i8
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 3
  %20 = load i8*, i8** %rf17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom16
  store i8 %conv15, i8* %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %apos, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 3
  %24 = load i8*, i8** %rf21, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  store i8 0, i8* %arrayidx22, align 1
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 47
  %26 = load i32, i32* %flags, align 4
  %or = or i32 %26, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %entry
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 11
  %28 = load i8*, i8** %ss_cons, align 8
  %cmp24 = icmp ne i8* %28, null
  br i1 %cmp24, label %if.then.26, label %if.end.68

if.then.26:                                       ; preds = %if.end.23
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 4
  %30 = load i8*, i8** %cs, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 32, i8* %arrayidx27, align 1
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.60, %if.then.26
  %31 = load i32, i32* %apos, align 4
  %32 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen29 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %32, i32 0, i32 3
  %33 = load i32, i32* %alen29, align 4
  %cmp30 = icmp sle i32 %31, %33
  br i1 %cmp30, label %for.body.32, label %for.end.62

for.body.32:                                      ; preds = %for.cond.28
  %34 = load i32, i32* %apos, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load i32*, i32** %matassign.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %35, i64 %idxprom33
  %36 = load i32, i32* %arrayidx34, align 4
  %and35 = and i32 %36, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.59

if.then.37:                                       ; preds = %for.body.32
  %37 = load i32, i32* %apos, align 4
  %sub38 = sub nsw i32 %37, 1
  %idxprom39 = sext i32 %sub38 to i64
  %38 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons40 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %38, i32 0, i32 11
  %39 = load i8*, i8** %ss_cons40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %39, i64 %idxprom39
  %40 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %40 to i32
  %cmp43 = icmp eq i32 %conv42, 32
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.then.37
  br label %cond.end.52

cond.false.46:                                    ; preds = %if.then.37
  %41 = load i32, i32* %apos, align 4
  %sub47 = sub nsw i32 %41, 1
  %idxprom48 = sext i32 %sub47 to i64
  %42 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %ss_cons49 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %42, i32 0, i32 11
  %43 = load i8*, i8** %ss_cons49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %43, i64 %idxprom48
  %44 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %44 to i32
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.46, %cond.true.45
  %cond53 = phi i32 [ 46, %cond.true.45 ], [ %conv51, %cond.false.46 ]
  %conv54 = trunc i32 %cond53 to i8
  %45 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %k, align 4
  %idxprom56 = sext i32 %45 to i64
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs57 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 4
  %47 = load i8*, i8** %cs57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %47, i64 %idxprom56
  store i8 %conv54, i8* %arrayidx58, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %cond.end.52, %for.body.32
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %48 = load i32, i32* %apos, align 4
  %inc61 = add nsw i32 %48, 1
  store i32 %inc61, i32* %apos, align 4
  br label %for.cond.28

for.end.62:                                       ; preds = %for.cond.28
  %49 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %49 to i64
  %50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %50, i32 0, i32 4
  %51 = load i8*, i8** %cs64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %51, i64 %idxprom63
  store i8 0, i8* %arrayidx65, align 1
  %52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %52, i32 0, i32 47
  %53 = load i32, i32* %flags66, align 4
  %or67 = or i32 %53, 8
  store i32 %or67, i32* %flags66, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.62, %if.end.23
  %54 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %54, i32 0, i32 12
  %55 = load i8*, i8** %sa_cons, align 8
  %cmp69 = icmp ne i8* %55, null
  br i1 %cmp69, label %if.then.71, label %if.end.113

if.then.71:                                       ; preds = %if.end.68
  %56 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %56, i32 0, i32 5
  %57 = load i8*, i8** %ca, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 32, i8* %arrayidx72, align 1
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.105, %if.then.71
  %58 = load i32, i32* %apos, align 4
  %59 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen74 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %59, i32 0, i32 3
  %60 = load i32, i32* %alen74, align 4
  %cmp75 = icmp sle i32 %58, %60
  br i1 %cmp75, label %for.body.77, label %for.end.107

for.body.77:                                      ; preds = %for.cond.73
  %61 = load i32, i32* %apos, align 4
  %idxprom78 = sext i32 %61 to i64
  %62 = load i32*, i32** %matassign.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %62, i64 %idxprom78
  %63 = load i32, i32* %arrayidx79, align 4
  %and80 = and i32 %63, 1
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.104

if.then.82:                                       ; preds = %for.body.77
  %64 = load i32, i32* %apos, align 4
  %sub83 = sub nsw i32 %64, 1
  %idxprom84 = sext i32 %sub83 to i64
  %65 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons85 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %65, i32 0, i32 12
  %66 = load i8*, i8** %sa_cons85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %66, i64 %idxprom84
  %67 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %67 to i32
  %cmp88 = icmp eq i32 %conv87, 32
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %if.then.82
  br label %cond.end.97

cond.false.91:                                    ; preds = %if.then.82
  %68 = load i32, i32* %apos, align 4
  %sub92 = sub nsw i32 %68, 1
  %idxprom93 = sext i32 %sub92 to i64
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %sa_cons94 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 12
  %70 = load i8*, i8** %sa_cons94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %70, i64 %idxprom93
  %71 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %71 to i32
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.91, %cond.true.90
  %cond98 = phi i32 [ 46, %cond.true.90 ], [ %conv96, %cond.false.91 ]
  %conv99 = trunc i32 %cond98 to i8
  %72 = load i32, i32* %k, align 4
  %inc100 = add nsw i32 %72, 1
  store i32 %inc100, i32* %k, align 4
  %idxprom101 = sext i32 %72 to i64
  %73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 5
  %74 = load i8*, i8** %ca102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %74, i64 %idxprom101
  store i8 %conv99, i8* %arrayidx103, align 1
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.97, %for.body.77
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %75 = load i32, i32* %apos, align 4
  %inc106 = add nsw i32 %75, 1
  store i32 %inc106, i32* %apos, align 4
  br label %for.cond.73

for.end.107:                                      ; preds = %for.cond.73
  %76 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %76 to i64
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca109 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 5
  %78 = load i8*, i8** %ca109, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %78, i64 %idxprom108
  store i8 0, i8* %arrayidx110, align 1
  %79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %79, i32 0, i32 47
  %80 = load i32, i32* %flags111, align 4
  %or112 = or i32 %80, 8192
  store i32 %or112, i32* %flags111, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.107, %if.end.68
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.128, %if.end.113
  %81 = load i32, i32* %apos, align 4
  %82 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen115 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %82, i32 0, i32 3
  %83 = load i32, i32* %alen115, align 4
  %cmp116 = icmp sle i32 %81, %83
  br i1 %cmp116, label %for.body.118, label %for.end.130

for.body.118:                                     ; preds = %for.cond.114
  %84 = load i32, i32* %apos, align 4
  %idxprom119 = sext i32 %84 to i64
  %85 = load i32*, i32** %matassign.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %85, i64 %idxprom119
  %86 = load i32, i32* %arrayidx120, align 4
  %and121 = and i32 %86, 1
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.127

if.then.123:                                      ; preds = %for.body.118
  %87 = load i32, i32* %apos, align 4
  %88 = load i32, i32* %k, align 4
  %inc124 = add nsw i32 %88, 1
  store i32 %inc124, i32* %k, align 4
  %idxprom125 = sext i32 %88 to i64
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 9
  %90 = load i32*, i32** %map, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %90, i64 %idxprom125
  store i32 %87, i32* %arrayidx126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.123, %for.body.118
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %91 = load i32, i32* %apos, align 4
  %inc129 = add nsw i32 %91, 1
  store i32 %inc129, i32* %apos, align 4
  br label %for.cond.114

for.end.130:                                      ; preds = %for.cond.114
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 47
  %93 = load i32, i32* %flags131, align 4
  %or132 = or i32 %93, 256
  store i32 %or132, i32* %flags131, align 4
  %94 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %call = call i8* @MSAGetGC(%struct.msa_struct* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call, i8** %pri, align 8
  %cmp133 = icmp ne i8* %call, null
  br i1 %cmp133, label %if.then.135, label %if.end.220

if.then.135:                                      ; preds = %for.end.130
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 20
  %96 = load i32, i32* %M, align 4
  %add = add nsw i32 %96, 1
  %conv136 = sext i32 %add to i64
  %mul = mul i64 4, %conv136
  %call137 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 896, i64 %mul)
  %97 = bitcast i8* %call137 to i32*
  %98 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %98, i32 0, i32 12
  store i32* %97, i32** %mpri, align 8
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.217, %if.then.135
  %99 = load i32, i32* %apos, align 4
  %100 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen139 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %100, i32 0, i32 3
  %101 = load i32, i32* %alen139, align 4
  %cmp140 = icmp sle i32 %99, %101
  br i1 %cmp140, label %for.body.142, label %for.end.219

for.body.142:                                     ; preds = %for.cond.138
  %102 = load i32, i32* %apos, align 4
  %idxprom143 = sext i32 %102 to i64
  %103 = load i32*, i32** %matassign.addr, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %103, i64 %idxprom143
  %104 = load i32, i32* %arrayidx144, align 4
  %and145 = and i32 %104, 1
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.216

if.then.147:                                      ; preds = %for.body.142
  %105 = load i32, i32* %apos, align 4
  %sub148 = sub nsw i32 %105, 1
  %idxprom149 = sext i32 %sub148 to i64
  %106 = load i8*, i8** %pri, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %106, i64 %idxprom149
  %107 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %107 to i32
  %idxprom152 = sext i32 %conv151 to i64
  %call153 = call i16** @__ctype_b_loc() #5
  %108 = load i16*, i16** %call153, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %108, i64 %idxprom152
  %109 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %109 to i32
  %and156 = and i32 %conv155, 2048
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then.158, label %if.else

if.then.158:                                      ; preds = %if.then.147
  %110 = load i32, i32* %apos, align 4
  %sub159 = sub nsw i32 %110, 1
  %idxprom160 = sext i32 %sub159 to i64
  %111 = load i8*, i8** %pri, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %111, i64 %idxprom160
  %112 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %112 to i32
  %sub163 = sub nsw i32 %conv162, 48
  %113 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %113 to i64
  %114 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri165 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 12
  %115 = load i32*, i32** %mpri165, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %115, i64 %idxprom164
  store i32 %sub163, i32* %arrayidx166, align 4
  br label %if.end.214

if.else:                                          ; preds = %if.then.147
  %116 = load i32, i32* %apos, align 4
  %sub167 = sub nsw i32 %116, 1
  %idxprom168 = sext i32 %sub167 to i64
  %117 = load i8*, i8** %pri, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %117, i64 %idxprom168
  %118 = load i8, i8* %arrayidx169, align 1
  %conv170 = sext i8 %118 to i32
  %idxprom171 = sext i32 %conv170 to i64
  %call172 = call i16** @__ctype_b_loc() #5
  %119 = load i16*, i16** %call172, align 8
  %arrayidx173 = getelementptr inbounds i16, i16* %119, i64 %idxprom171
  %120 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %120 to i32
  %and175 = and i32 %conv174, 512
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %if.then.177, label %if.else.187

if.then.177:                                      ; preds = %if.else
  %121 = load i32, i32* %apos, align 4
  %sub178 = sub nsw i32 %121, 1
  %idxprom179 = sext i32 %sub178 to i64
  %122 = load i8*, i8** %pri, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %122, i64 %idxprom179
  %123 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %123 to i32
  %sub182 = sub nsw i32 %conv181, 97
  %add183 = add nsw i32 %sub182, 10
  %124 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %124 to i64
  %125 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri185 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %125, i32 0, i32 12
  %126 = load i32*, i32** %mpri185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %126, i64 %idxprom184
  store i32 %add183, i32* %arrayidx186, align 4
  br label %if.end.213

if.else.187:                                      ; preds = %if.else
  %127 = load i32, i32* %apos, align 4
  %sub188 = sub nsw i32 %127, 1
  %idxprom189 = sext i32 %sub188 to i64
  %128 = load i8*, i8** %pri, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %128, i64 %idxprom189
  %129 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %129 to i32
  %idxprom192 = sext i32 %conv191 to i64
  %call193 = call i16** @__ctype_b_loc() #5
  %130 = load i16*, i16** %call193, align 8
  %arrayidx194 = getelementptr inbounds i16, i16* %130, i64 %idxprom192
  %131 = load i16, i16* %arrayidx194, align 2
  %conv195 = zext i16 %131 to i32
  %and196 = and i32 %conv195, 256
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then.198, label %if.else.208

if.then.198:                                      ; preds = %if.else.187
  %132 = load i32, i32* %apos, align 4
  %sub199 = sub nsw i32 %132, 1
  %idxprom200 = sext i32 %sub199 to i64
  %133 = load i8*, i8** %pri, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %133, i64 %idxprom200
  %134 = load i8, i8* %arrayidx201, align 1
  %conv202 = sext i8 %134 to i32
  %sub203 = sub nsw i32 %conv202, 65
  %add204 = add nsw i32 %sub203, 10
  %135 = load i32, i32* %k, align 4
  %idxprom205 = sext i32 %135 to i64
  %136 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri206 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %136, i32 0, i32 12
  %137 = load i32*, i32** %mpri206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %137, i64 %idxprom205
  store i32 %add204, i32* %arrayidx207, align 4
  br label %if.end.212

if.else.208:                                      ; preds = %if.else.187
  %138 = load i32, i32* %k, align 4
  %idxprom209 = sext i32 %138 to i64
  %139 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri210 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %139, i32 0, i32 12
  %140 = load i32*, i32** %mpri210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %140, i64 %idxprom209
  store i32 -1, i32* %arrayidx211, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.208, %if.then.198
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.177
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.158
  %141 = load i32, i32* %k, align 4
  %inc215 = add nsw i32 %141, 1
  store i32 %inc215, i32* %k, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.214, %for.body.142
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %142 = load i32, i32* %apos, align 4
  %inc218 = add nsw i32 %142, 1
  store i32 %inc218, i32* %apos, align 4
  br label %for.cond.138

for.end.219:                                      ; preds = %for.cond.138
  br label %if.end.220

if.end.220:                                       ; preds = %for.end.219, %for.end.130
  %143 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %call221 = call i8* @MSAGetGC(%struct.msa_struct* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call221, i8** %pri, align 8
  %cmp222 = icmp ne i8* %call221, null
  br i1 %cmp222, label %if.then.224, label %if.end.313

if.then.224:                                      ; preds = %if.end.220
  %144 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M225 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %144, i32 0, i32 20
  %145 = load i32, i32* %M225, align 4
  %add226 = add nsw i32 %145, 1
  %conv227 = sext i32 %add226 to i64
  %mul228 = mul i64 4, %conv227
  %call229 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 911, i64 %mul228)
  %146 = bitcast i8* %call229 to i32*
  %147 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 13
  store i32* %146, i32** %ipri, align 8
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.310, %if.then.224
  %148 = load i32, i32* %apos, align 4
  %149 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen231 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %149, i32 0, i32 3
  %150 = load i32, i32* %alen231, align 4
  %cmp232 = icmp sle i32 %148, %150
  br i1 %cmp232, label %for.body.234, label %for.end.312

for.body.234:                                     ; preds = %for.cond.230
  %151 = load i32, i32* %apos, align 4
  %idxprom235 = sext i32 %151 to i64
  %152 = load i32*, i32** %matassign.addr, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %152, i64 %idxprom235
  %153 = load i32, i32* %arrayidx236, align 4
  %and237 = and i32 %153, 1
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.then.239, label %if.end.309

if.then.239:                                      ; preds = %for.body.234
  %154 = load i32, i32* %apos, align 4
  %sub240 = sub nsw i32 %154, 1
  %idxprom241 = sext i32 %sub240 to i64
  %155 = load i8*, i8** %pri, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %155, i64 %idxprom241
  %156 = load i8, i8* %arrayidx242, align 1
  %conv243 = sext i8 %156 to i32
  %idxprom244 = sext i32 %conv243 to i64
  %call245 = call i16** @__ctype_b_loc() #5
  %157 = load i16*, i16** %call245, align 8
  %arrayidx246 = getelementptr inbounds i16, i16* %157, i64 %idxprom244
  %158 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %158 to i32
  %and248 = and i32 %conv247, 2048
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.then.250, label %if.else.259

if.then.250:                                      ; preds = %if.then.239
  %159 = load i32, i32* %apos, align 4
  %sub251 = sub nsw i32 %159, 1
  %idxprom252 = sext i32 %sub251 to i64
  %160 = load i8*, i8** %pri, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %160, i64 %idxprom252
  %161 = load i8, i8* %arrayidx253, align 1
  %conv254 = sext i8 %161 to i32
  %sub255 = sub nsw i32 %conv254, 48
  %162 = load i32, i32* %k, align 4
  %idxprom256 = sext i32 %162 to i64
  %163 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri257 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 13
  %164 = load i32*, i32** %ipri257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %164, i64 %idxprom256
  store i32 %sub255, i32* %arrayidx258, align 4
  br label %if.end.307

if.else.259:                                      ; preds = %if.then.239
  %165 = load i32, i32* %apos, align 4
  %sub260 = sub nsw i32 %165, 1
  %idxprom261 = sext i32 %sub260 to i64
  %166 = load i8*, i8** %pri, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %166, i64 %idxprom261
  %167 = load i8, i8* %arrayidx262, align 1
  %conv263 = sext i8 %167 to i32
  %idxprom264 = sext i32 %conv263 to i64
  %call265 = call i16** @__ctype_b_loc() #5
  %168 = load i16*, i16** %call265, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %168, i64 %idxprom264
  %169 = load i16, i16* %arrayidx266, align 2
  %conv267 = zext i16 %169 to i32
  %and268 = and i32 %conv267, 512
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %if.then.270, label %if.else.280

if.then.270:                                      ; preds = %if.else.259
  %170 = load i32, i32* %apos, align 4
  %sub271 = sub nsw i32 %170, 1
  %idxprom272 = sext i32 %sub271 to i64
  %171 = load i8*, i8** %pri, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %171, i64 %idxprom272
  %172 = load i8, i8* %arrayidx273, align 1
  %conv274 = sext i8 %172 to i32
  %sub275 = sub nsw i32 %conv274, 97
  %add276 = add nsw i32 %sub275, 10
  %173 = load i32, i32* %k, align 4
  %idxprom277 = sext i32 %173 to i64
  %174 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri278 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %174, i32 0, i32 13
  %175 = load i32*, i32** %ipri278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %175, i64 %idxprom277
  store i32 %add276, i32* %arrayidx279, align 4
  br label %if.end.306

if.else.280:                                      ; preds = %if.else.259
  %176 = load i32, i32* %apos, align 4
  %sub281 = sub nsw i32 %176, 1
  %idxprom282 = sext i32 %sub281 to i64
  %177 = load i8*, i8** %pri, align 8
  %arrayidx283 = getelementptr inbounds i8, i8* %177, i64 %idxprom282
  %178 = load i8, i8* %arrayidx283, align 1
  %conv284 = sext i8 %178 to i32
  %idxprom285 = sext i32 %conv284 to i64
  %call286 = call i16** @__ctype_b_loc() #5
  %179 = load i16*, i16** %call286, align 8
  %arrayidx287 = getelementptr inbounds i16, i16* %179, i64 %idxprom285
  %180 = load i16, i16* %arrayidx287, align 2
  %conv288 = zext i16 %180 to i32
  %and289 = and i32 %conv288, 256
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then.291, label %if.else.301

if.then.291:                                      ; preds = %if.else.280
  %181 = load i32, i32* %apos, align 4
  %sub292 = sub nsw i32 %181, 1
  %idxprom293 = sext i32 %sub292 to i64
  %182 = load i8*, i8** %pri, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %182, i64 %idxprom293
  %183 = load i8, i8* %arrayidx294, align 1
  %conv295 = sext i8 %183 to i32
  %sub296 = sub nsw i32 %conv295, 65
  %add297 = add nsw i32 %sub296, 10
  %184 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %184 to i64
  %185 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri299 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %185, i32 0, i32 13
  %186 = load i32*, i32** %ipri299, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %186, i64 %idxprom298
  store i32 %add297, i32* %arrayidx300, align 4
  br label %if.end.305

if.else.301:                                      ; preds = %if.else.280
  %187 = load i32, i32* %k, align 4
  %idxprom302 = sext i32 %187 to i64
  %188 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri303 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %188, i32 0, i32 13
  %189 = load i32*, i32** %ipri303, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %189, i64 %idxprom302
  store i32 -1, i32* %arrayidx304, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.else.301, %if.then.291
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.then.270
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.then.250
  %190 = load i32, i32* %k, align 4
  %inc308 = add nsw i32 %190, 1
  store i32 %inc308, i32* %k, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.307, %for.body.234
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %191 = load i32, i32* %apos, align 4
  %inc311 = add nsw i32 %191, 1
  store i32 %inc311, i32* %apos, align 4
  br label %for.cond.230

for.end.312:                                      ; preds = %for.cond.230
  br label %if.end.313

if.end.313:                                       ; preds = %for.end.312, %if.end.220
  %192 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %call314 = call i8* @MSAGetGC(%struct.msa_struct* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call314, i8** %pri, align 8
  %cmp315 = icmp ne i8* %call314, null
  br i1 %cmp315, label %if.then.317, label %if.end.406

if.then.317:                                      ; preds = %if.end.313
  %193 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M318 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %193, i32 0, i32 20
  %194 = load i32, i32* %M318, align 4
  %add319 = add nsw i32 %194, 1
  %conv320 = sext i32 %add319 to i64
  %mul321 = mul i64 4, %conv320
  %call322 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 926, i64 %mul321)
  %195 = bitcast i8* %call322 to i32*
  %196 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %196, i32 0, i32 11
  store i32* %195, i32** %tpri, align 8
  store i32 1, i32* %k, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.403, %if.then.317
  %197 = load i32, i32* %apos, align 4
  %198 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen324 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %198, i32 0, i32 3
  %199 = load i32, i32* %alen324, align 4
  %cmp325 = icmp sle i32 %197, %199
  br i1 %cmp325, label %for.body.327, label %for.end.405

for.body.327:                                     ; preds = %for.cond.323
  %200 = load i32, i32* %apos, align 4
  %idxprom328 = sext i32 %200 to i64
  %201 = load i32*, i32** %matassign.addr, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %201, i64 %idxprom328
  %202 = load i32, i32* %arrayidx329, align 4
  %and330 = and i32 %202, 1
  %tobool331 = icmp ne i32 %and330, 0
  br i1 %tobool331, label %if.then.332, label %if.end.402

if.then.332:                                      ; preds = %for.body.327
  %203 = load i32, i32* %apos, align 4
  %sub333 = sub nsw i32 %203, 1
  %idxprom334 = sext i32 %sub333 to i64
  %204 = load i8*, i8** %pri, align 8
  %arrayidx335 = getelementptr inbounds i8, i8* %204, i64 %idxprom334
  %205 = load i8, i8* %arrayidx335, align 1
  %conv336 = sext i8 %205 to i32
  %idxprom337 = sext i32 %conv336 to i64
  %call338 = call i16** @__ctype_b_loc() #5
  %206 = load i16*, i16** %call338, align 8
  %arrayidx339 = getelementptr inbounds i16, i16* %206, i64 %idxprom337
  %207 = load i16, i16* %arrayidx339, align 2
  %conv340 = zext i16 %207 to i32
  %and341 = and i32 %conv340, 2048
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %if.then.343, label %if.else.352

if.then.343:                                      ; preds = %if.then.332
  %208 = load i32, i32* %apos, align 4
  %sub344 = sub nsw i32 %208, 1
  %idxprom345 = sext i32 %sub344 to i64
  %209 = load i8*, i8** %pri, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %209, i64 %idxprom345
  %210 = load i8, i8* %arrayidx346, align 1
  %conv347 = sext i8 %210 to i32
  %sub348 = sub nsw i32 %conv347, 48
  %211 = load i32, i32* %k, align 4
  %idxprom349 = sext i32 %211 to i64
  %212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri350 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 11
  %213 = load i32*, i32** %tpri350, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %213, i64 %idxprom349
  store i32 %sub348, i32* %arrayidx351, align 4
  br label %if.end.400

if.else.352:                                      ; preds = %if.then.332
  %214 = load i32, i32* %apos, align 4
  %sub353 = sub nsw i32 %214, 1
  %idxprom354 = sext i32 %sub353 to i64
  %215 = load i8*, i8** %pri, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %215, i64 %idxprom354
  %216 = load i8, i8* %arrayidx355, align 1
  %conv356 = sext i8 %216 to i32
  %idxprom357 = sext i32 %conv356 to i64
  %call358 = call i16** @__ctype_b_loc() #5
  %217 = load i16*, i16** %call358, align 8
  %arrayidx359 = getelementptr inbounds i16, i16* %217, i64 %idxprom357
  %218 = load i16, i16* %arrayidx359, align 2
  %conv360 = zext i16 %218 to i32
  %and361 = and i32 %conv360, 512
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %if.then.363, label %if.else.373

if.then.363:                                      ; preds = %if.else.352
  %219 = load i32, i32* %apos, align 4
  %sub364 = sub nsw i32 %219, 1
  %idxprom365 = sext i32 %sub364 to i64
  %220 = load i8*, i8** %pri, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %220, i64 %idxprom365
  %221 = load i8, i8* %arrayidx366, align 1
  %conv367 = sext i8 %221 to i32
  %sub368 = sub nsw i32 %conv367, 97
  %add369 = add nsw i32 %sub368, 10
  %222 = load i32, i32* %k, align 4
  %idxprom370 = sext i32 %222 to i64
  %223 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri371 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %223, i32 0, i32 11
  %224 = load i32*, i32** %tpri371, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %224, i64 %idxprom370
  store i32 %add369, i32* %arrayidx372, align 4
  br label %if.end.399

if.else.373:                                      ; preds = %if.else.352
  %225 = load i32, i32* %apos, align 4
  %sub374 = sub nsw i32 %225, 1
  %idxprom375 = sext i32 %sub374 to i64
  %226 = load i8*, i8** %pri, align 8
  %arrayidx376 = getelementptr inbounds i8, i8* %226, i64 %idxprom375
  %227 = load i8, i8* %arrayidx376, align 1
  %conv377 = sext i8 %227 to i32
  %idxprom378 = sext i32 %conv377 to i64
  %call379 = call i16** @__ctype_b_loc() #5
  %228 = load i16*, i16** %call379, align 8
  %arrayidx380 = getelementptr inbounds i16, i16* %228, i64 %idxprom378
  %229 = load i16, i16* %arrayidx380, align 2
  %conv381 = zext i16 %229 to i32
  %and382 = and i32 %conv381, 256
  %tobool383 = icmp ne i32 %and382, 0
  br i1 %tobool383, label %if.then.384, label %if.else.394

if.then.384:                                      ; preds = %if.else.373
  %230 = load i32, i32* %apos, align 4
  %sub385 = sub nsw i32 %230, 1
  %idxprom386 = sext i32 %sub385 to i64
  %231 = load i8*, i8** %pri, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %231, i64 %idxprom386
  %232 = load i8, i8* %arrayidx387, align 1
  %conv388 = sext i8 %232 to i32
  %sub389 = sub nsw i32 %conv388, 65
  %add390 = add nsw i32 %sub389, 10
  %233 = load i32, i32* %k, align 4
  %idxprom391 = sext i32 %233 to i64
  %234 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri392 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %234, i32 0, i32 11
  %235 = load i32*, i32** %tpri392, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %235, i64 %idxprom391
  store i32 %add390, i32* %arrayidx393, align 4
  br label %if.end.398

if.else.394:                                      ; preds = %if.else.373
  %236 = load i32, i32* %k, align 4
  %idxprom395 = sext i32 %236 to i64
  %237 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri396 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %237, i32 0, i32 11
  %238 = load i32*, i32** %tpri396, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %238, i64 %idxprom395
  store i32 -1, i32* %arrayidx397, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.394, %if.then.384
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %if.then.363
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %if.then.343
  %239 = load i32, i32* %k, align 4
  %inc401 = add nsw i32 %239, 1
  store i32 %inc401, i32* %k, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.400, %for.body.327
  br label %for.inc.403

for.inc.403:                                      ; preds = %if.end.402
  %240 = load i32, i32* %apos, align 4
  %inc404 = add nsw i32 %240, 1
  store i32 %inc404, i32* %apos, align 4
  br label %for.cond.323

for.end.405:                                      ; preds = %for.cond.323
  br label %if.end.406

if.end.406:                                       ; preds = %for.end.405, %if.end.313
  ret void
}

declare void @P7FreeTrace(%struct.p7trace_s*) #1

declare void @FreePlan7(%struct.plan7_s*) #1

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: nounwind uwtable
define internal void @trace_doctor(%struct.p7trace_s* %tr, i32 %mlen, i32* %ret_ndi, i32* %ret_nid) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %mlen.addr = alloca i32, align 4
  %ret_ndi.addr = alloca i32*, align 8
  %ret_nid.addr = alloca i32*, align 8
  %opos = alloca i32, align 4
  %npos = alloca i32, align 4
  %ndi = alloca i32, align 4
  %nid = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 %mlen, i32* %mlen.addr, align 4
  store i32* %ret_ndi, i32** %ret_ndi.addr, align 8
  store i32* %ret_nid, i32** %ret_nid.addr, align 8
  store i32 0, i32* %nid, align 4
  store i32 0, i32* %ndi, align 4
  store i32 0, i32* %npos, align 4
  store i32 0, i32* %opos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.279, %entry
  %0 = load i32, i32* %opos, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %opos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, i32* %opos, align 4
  %add = add nsw i32 %7, 1
  %idxprom3 = sext i32 %add to i64
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype4 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %statetype4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom3
  %10 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %npos, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype10 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %statetype10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  store i8 1, i8* %arrayidx11, align 1
  %14 = load i32, i32* %opos, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 2
  %16 = load i32*, i32** %nodeidx, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %17 = load i32, i32* %arrayidx13, align 4
  %18 = load i32, i32* %npos, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %19, i32 0, i32 2
  %20 = load i32*, i32** %nodeidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  store i32 %17, i32* %arrayidx16, align 4
  %21 = load i32, i32* %opos, align 4
  %add17 = add nsw i32 %21, 1
  %idxprom18 = sext i32 %add17 to i64
  %22 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %22, i32 0, i32 3
  %23 = load i32*, i32** %pos, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32, i32* %npos, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  %27 = load i32*, i32** %pos21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  store i32 %24, i32* %arrayidx22, align 4
  %28 = load i32, i32* %opos, align 4
  %add23 = add nsw i32 %28, 2
  store i32 %add23, i32* %opos, align 4
  %29 = load i32, i32* %npos, align 4
  %add24 = add nsw i32 %29, 1
  store i32 %add24, i32* %npos, align 4
  %30 = load i32, i32* %ndi, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %ndi, align 4
  br label %if.end.279

if.else:                                          ; preds = %land.lhs.true, %while.body
  %31 = load i32, i32* %opos, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype26 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %32, i32 0, i32 1
  %33 = load i8*, i8** %statetype26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom25
  %34 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %34 to i32
  %cmp29 = icmp eq i32 %conv28, 3
  br i1 %cmp29, label %land.lhs.true.31, label %if.else.59

land.lhs.true.31:                                 ; preds = %if.else
  %35 = load i32, i32* %opos, align 4
  %add32 = add nsw i32 %35, 1
  %idxprom33 = sext i32 %add32 to i64
  %36 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %statetype34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %37, i64 %idxprom33
  %38 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %38 to i32
  %cmp37 = icmp eq i32 %conv36, 2
  br i1 %cmp37, label %if.then.39, label %if.else.59

if.then.39:                                       ; preds = %land.lhs.true.31
  %39 = load i32, i32* %npos, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype41 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %40, i32 0, i32 1
  %41 = load i8*, i8** %statetype41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %41, i64 %idxprom40
  store i8 1, i8* %arrayidx42, align 1
  %42 = load i32, i32* %opos, align 4
  %add43 = add nsw i32 %42, 1
  %idxprom44 = sext i32 %add43 to i64
  %43 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx45 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %43, i32 0, i32 2
  %44 = load i32*, i32** %nodeidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %44, i64 %idxprom44
  %45 = load i32, i32* %arrayidx46, align 4
  %46 = load i32, i32* %npos, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 2
  %48 = load i32*, i32** %nodeidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %48, i64 %idxprom47
  store i32 %45, i32* %arrayidx49, align 4
  %49 = load i32, i32* %opos, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos51 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 3
  %51 = load i32*, i32** %pos51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %51, i64 %idxprom50
  %52 = load i32, i32* %arrayidx52, align 4
  %53 = load i32, i32* %npos, align 4
  %idxprom53 = sext i32 %53 to i64
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos54 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 3
  %55 = load i32*, i32** %pos54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %55, i64 %idxprom53
  store i32 %52, i32* %arrayidx55, align 4
  %56 = load i32, i32* %opos, align 4
  %add56 = add nsw i32 %56, 2
  store i32 %add56, i32* %opos, align 4
  %57 = load i32, i32* %npos, align 4
  %add57 = add nsw i32 %57, 1
  store i32 %add57, i32* %npos, align 4
  %58 = load i32, i32* %nid, align 4
  %inc58 = add nsw i32 %58, 1
  store i32 %inc58, i32* %nid, align 4
  br label %if.end.278

if.else.59:                                       ; preds = %land.lhs.true.31, %if.else
  %59 = load i32, i32* %opos, align 4
  %idxprom60 = sext i32 %59 to i64
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %statetype61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %61, i64 %idxprom60
  %62 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %62 to i32
  %cmp64 = icmp eq i32 %conv63, 3
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.91

land.lhs.true.66:                                 ; preds = %if.else.59
  %63 = load i32, i32* %opos, align 4
  %sub = sub nsw i32 %63, 1
  %idxprom67 = sext i32 %sub to i64
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype68 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %statetype68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %65, i64 %idxprom67
  %66 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %66 to i32
  %cmp71 = icmp eq i32 %conv70, 6
  br i1 %cmp71, label %if.then.73, label %if.else.91

if.then.73:                                       ; preds = %land.lhs.true.66
  %67 = load i32, i32* %npos, align 4
  %idxprom74 = sext i32 %67 to i64
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype75 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 1
  %69 = load i8*, i8** %statetype75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %69, i64 %idxprom74
  store i8 1, i8* %arrayidx76, align 1
  %70 = load i32, i32* %opos, align 4
  %idxprom77 = sext i32 %70 to i64
  %71 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx78 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %71, i32 0, i32 2
  %72 = load i32*, i32** %nodeidx78, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 %idxprom77
  %73 = load i32, i32* %arrayidx79, align 4
  %74 = load i32, i32* %npos, align 4
  %idxprom80 = sext i32 %74 to i64
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx81 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %75, i32 0, i32 2
  %76 = load i32*, i32** %nodeidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %76, i64 %idxprom80
  store i32 %73, i32* %arrayidx82, align 4
  %77 = load i32, i32* %opos, align 4
  %idxprom83 = sext i32 %77 to i64
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos84 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %78, i32 0, i32 3
  %79 = load i32*, i32** %pos84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %79, i64 %idxprom83
  %80 = load i32, i32* %arrayidx85, align 4
  %81 = load i32, i32* %npos, align 4
  %idxprom86 = sext i32 %81 to i64
  %82 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos87 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %82, i32 0, i32 3
  %83 = load i32*, i32** %pos87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %83, i64 %idxprom86
  store i32 %80, i32* %arrayidx88, align 4
  %84 = load i32, i32* %opos, align 4
  %inc89 = add nsw i32 %84, 1
  store i32 %inc89, i32* %opos, align 4
  %85 = load i32, i32* %npos, align 4
  %inc90 = add nsw i32 %85, 1
  store i32 %inc90, i32* %npos, align 4
  br label %if.end.277

if.else.91:                                       ; preds = %land.lhs.true.66, %if.else.59
  %86 = load i32, i32* %opos, align 4
  %idxprom92 = sext i32 %86 to i64
  %87 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype93 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %87, i32 0, i32 1
  %88 = load i8*, i8** %statetype93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %88, i64 %idxprom92
  %89 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %89 to i32
  %cmp96 = icmp eq i32 %conv95, 3
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.125

land.lhs.true.98:                                 ; preds = %if.else.91
  %90 = load i32, i32* %opos, align 4
  %add99 = add nsw i32 %90, 1
  %idxprom100 = sext i32 %add99 to i64
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 1
  %92 = load i8*, i8** %statetype101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %92, i64 %idxprom100
  %93 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %93 to i32
  %cmp104 = icmp eq i32 %conv103, 7
  br i1 %cmp104, label %if.then.106, label %if.else.125

if.then.106:                                      ; preds = %land.lhs.true.98
  %94 = load i32, i32* %npos, align 4
  %idxprom107 = sext i32 %94 to i64
  %95 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype108 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %95, i32 0, i32 1
  %96 = load i8*, i8** %statetype108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %96, i64 %idxprom107
  store i8 1, i8* %arrayidx109, align 1
  %97 = load i32, i32* %opos, align 4
  %idxprom110 = sext i32 %97 to i64
  %98 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx111 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %98, i32 0, i32 2
  %99 = load i32*, i32** %nodeidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %99, i64 %idxprom110
  %100 = load i32, i32* %arrayidx112, align 4
  %add113 = add nsw i32 %100, 1
  %101 = load i32, i32* %npos, align 4
  %idxprom114 = sext i32 %101 to i64
  %102 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx115 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %102, i32 0, i32 2
  %103 = load i32*, i32** %nodeidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %103, i64 %idxprom114
  store i32 %add113, i32* %arrayidx116, align 4
  %104 = load i32, i32* %opos, align 4
  %idxprom117 = sext i32 %104 to i64
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos118 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 3
  %106 = load i32*, i32** %pos118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %106, i64 %idxprom117
  %107 = load i32, i32* %arrayidx119, align 4
  %108 = load i32, i32* %npos, align 4
  %idxprom120 = sext i32 %108 to i64
  %109 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos121 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %109, i32 0, i32 3
  %110 = load i32*, i32** %pos121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %110, i64 %idxprom120
  store i32 %107, i32* %arrayidx122, align 4
  %111 = load i32, i32* %opos, align 4
  %inc123 = add nsw i32 %111, 1
  store i32 %inc123, i32* %opos, align 4
  %112 = load i32, i32* %npos, align 4
  %inc124 = add nsw i32 %112, 1
  store i32 %inc124, i32* %npos, align 4
  br label %if.end.276

if.else.125:                                      ; preds = %land.lhs.true.98, %if.else.91
  %113 = load i32, i32* %opos, align 4
  %idxprom126 = sext i32 %113 to i64
  %114 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype127 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %114, i32 0, i32 1
  %115 = load i8*, i8** %statetype127, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %115, i64 %idxprom126
  %116 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %116 to i32
  %cmp130 = icmp eq i32 %conv129, 6
  br i1 %cmp130, label %land.lhs.true.132, label %if.else.183

land.lhs.true.132:                                ; preds = %if.else.125
  %117 = load i32, i32* %opos, align 4
  %add133 = add nsw i32 %117, 1
  %idxprom134 = sext i32 %add133 to i64
  %118 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype135 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %118, i32 0, i32 1
  %119 = load i8*, i8** %statetype135, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %119, i64 %idxprom134
  %120 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %120 to i32
  %cmp138 = icmp eq i32 %conv137, 7
  br i1 %cmp138, label %land.lhs.true.140, label %if.else.183

land.lhs.true.140:                                ; preds = %land.lhs.true.132
  %121 = load i32, i32* %opos, align 4
  %sub141 = sub nsw i32 %121, 1
  %idxprom142 = sext i32 %sub141 to i64
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype143 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 1
  %123 = load i8*, i8** %statetype143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %123, i64 %idxprom142
  %124 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %124 to i32
  %cmp146 = icmp eq i32 %conv145, 5
  br i1 %cmp146, label %land.lhs.true.148, label %if.else.183

land.lhs.true.148:                                ; preds = %land.lhs.true.140
  %125 = load i32, i32* %opos, align 4
  %sub149 = sub nsw i32 %125, 1
  %idxprom150 = sext i32 %sub149 to i64
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos151 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 3
  %127 = load i32*, i32** %pos151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %127, i64 %idxprom150
  %128 = load i32, i32* %arrayidx152, align 4
  %cmp153 = icmp sgt i32 %128, 0
  br i1 %cmp153, label %if.then.155, label %if.else.183

if.then.155:                                      ; preds = %land.lhs.true.148
  %129 = load i32, i32* %npos, align 4
  %idxprom156 = sext i32 %129 to i64
  %130 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype157 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %130, i32 0, i32 1
  %131 = load i8*, i8** %statetype157, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %131, i64 %idxprom156
  store i8 1, i8* %arrayidx158, align 1
  %132 = load i32, i32* %npos, align 4
  %idxprom159 = sext i32 %132 to i64
  %133 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx160 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %133, i32 0, i32 2
  %134 = load i32*, i32** %nodeidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %134, i64 %idxprom159
  store i32 1, i32* %arrayidx161, align 4
  %135 = load i32, i32* %opos, align 4
  %sub162 = sub nsw i32 %135, 1
  %idxprom163 = sext i32 %sub162 to i64
  %136 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos164 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %136, i32 0, i32 3
  %137 = load i32*, i32** %pos164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %137, i64 %idxprom163
  %138 = load i32, i32* %arrayidx165, align 4
  %139 = load i32, i32* %npos, align 4
  %idxprom166 = sext i32 %139 to i64
  %140 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos167 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %140, i32 0, i32 3
  %141 = load i32*, i32** %pos167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %141, i64 %idxprom166
  store i32 %138, i32* %arrayidx168, align 4
  %142 = load i32, i32* %npos, align 4
  %sub169 = sub nsw i32 %142, 1
  %idxprom170 = sext i32 %sub169 to i64
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype171 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %143, i32 0, i32 1
  %144 = load i8*, i8** %statetype171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %144, i64 %idxprom170
  store i8 6, i8* %arrayidx172, align 1
  %145 = load i32, i32* %npos, align 4
  %sub173 = sub nsw i32 %145, 1
  %idxprom174 = sext i32 %sub173 to i64
  %146 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx175 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %146, i32 0, i32 2
  %147 = load i32*, i32** %nodeidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %147, i64 %idxprom174
  store i32 0, i32* %arrayidx176, align 4
  %148 = load i32, i32* %npos, align 4
  %sub177 = sub nsw i32 %148, 1
  %idxprom178 = sext i32 %sub177 to i64
  %149 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos179 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %149, i32 0, i32 3
  %150 = load i32*, i32** %pos179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %150, i64 %idxprom178
  store i32 0, i32* %arrayidx180, align 4
  %151 = load i32, i32* %opos, align 4
  %inc181 = add nsw i32 %151, 1
  store i32 %inc181, i32* %opos, align 4
  %152 = load i32, i32* %npos, align 4
  %inc182 = add nsw i32 %152, 1
  store i32 %inc182, i32* %npos, align 4
  br label %if.end.275

if.else.183:                                      ; preds = %land.lhs.true.148, %land.lhs.true.140, %land.lhs.true.132, %if.else.125
  %153 = load i32, i32* %opos, align 4
  %idxprom184 = sext i32 %153 to i64
  %154 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype185 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %154, i32 0, i32 1
  %155 = load i8*, i8** %statetype185, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %155, i64 %idxprom184
  %156 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %156 to i32
  %cmp188 = icmp eq i32 %conv187, 7
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.254

land.lhs.true.190:                                ; preds = %if.else.183
  %157 = load i32, i32* %opos, align 4
  %sub191 = sub nsw i32 %157, 1
  %idxprom192 = sext i32 %sub191 to i64
  %158 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype193 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %158, i32 0, i32 1
  %159 = load i8*, i8** %statetype193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %159, i64 %idxprom192
  %160 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %160 to i32
  %cmp196 = icmp eq i32 %conv195, 6
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.254

land.lhs.true.198:                                ; preds = %land.lhs.true.190
  %161 = load i32, i32* %opos, align 4
  %add199 = add nsw i32 %161, 1
  %idxprom200 = sext i32 %add199 to i64
  %162 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype201 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %162, i32 0, i32 1
  %163 = load i8*, i8** %statetype201, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %163, i64 %idxprom200
  %164 = load i8, i8* %arrayidx202, align 1
  %conv203 = sext i8 %164 to i32
  %cmp204 = icmp eq i32 %conv203, 8
  br i1 %cmp204, label %land.lhs.true.206, label %if.else.254

land.lhs.true.206:                                ; preds = %land.lhs.true.198
  %165 = load i32, i32* %opos, align 4
  %add207 = add nsw i32 %165, 2
  %idxprom208 = sext i32 %add207 to i64
  %166 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype209 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %166, i32 0, i32 1
  %167 = load i8*, i8** %statetype209, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %167, i64 %idxprom208
  %168 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %168 to i32
  %cmp212 = icmp eq i32 %conv211, 8
  br i1 %cmp212, label %if.then.214, label %if.else.254

if.then.214:                                      ; preds = %land.lhs.true.206
  %169 = load i32, i32* %npos, align 4
  %idxprom215 = sext i32 %169 to i64
  %170 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype216 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %170, i32 0, i32 1
  %171 = load i8*, i8** %statetype216, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %171, i64 %idxprom215
  store i8 1, i8* %arrayidx217, align 1
  %172 = load i32, i32* %mlen.addr, align 4
  %173 = load i32, i32* %npos, align 4
  %idxprom218 = sext i32 %173 to i64
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx219 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 2
  %175 = load i32*, i32** %nodeidx219, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %175, i64 %idxprom218
  store i32 %172, i32* %arrayidx220, align 4
  %176 = load i32, i32* %opos, align 4
  %add221 = add nsw i32 %176, 2
  %idxprom222 = sext i32 %add221 to i64
  %177 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos223 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %177, i32 0, i32 3
  %178 = load i32*, i32** %pos223, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %178, i64 %idxprom222
  %179 = load i32, i32* %arrayidx224, align 4
  %180 = load i32, i32* %npos, align 4
  %idxprom225 = sext i32 %180 to i64
  %181 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos226 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %181, i32 0, i32 3
  %182 = load i32*, i32** %pos226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %182, i64 %idxprom225
  store i32 %179, i32* %arrayidx227, align 4
  %183 = load i32, i32* %npos, align 4
  %add228 = add nsw i32 %183, 1
  %idxprom229 = sext i32 %add228 to i64
  %184 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype230 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %184, i32 0, i32 1
  %185 = load i8*, i8** %statetype230, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %185, i64 %idxprom229
  store i8 7, i8* %arrayidx231, align 1
  %186 = load i32, i32* %npos, align 4
  %add232 = add nsw i32 %186, 1
  %idxprom233 = sext i32 %add232 to i64
  %187 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx234 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %187, i32 0, i32 2
  %188 = load i32*, i32** %nodeidx234, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %188, i64 %idxprom233
  store i32 0, i32* %arrayidx235, align 4
  %189 = load i32, i32* %npos, align 4
  %add236 = add nsw i32 %189, 1
  %idxprom237 = sext i32 %add236 to i64
  %190 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos238 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %190, i32 0, i32 3
  %191 = load i32*, i32** %pos238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %191, i64 %idxprom237
  store i32 0, i32* %arrayidx239, align 4
  %192 = load i32, i32* %npos, align 4
  %add240 = add nsw i32 %192, 2
  %idxprom241 = sext i32 %add240 to i64
  %193 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype242 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %193, i32 0, i32 1
  %194 = load i8*, i8** %statetype242, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %194, i64 %idxprom241
  store i8 8, i8* %arrayidx243, align 1
  %195 = load i32, i32* %npos, align 4
  %add244 = add nsw i32 %195, 2
  %idxprom245 = sext i32 %add244 to i64
  %196 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx246 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %196, i32 0, i32 2
  %197 = load i32*, i32** %nodeidx246, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %197, i64 %idxprom245
  store i32 0, i32* %arrayidx247, align 4
  %198 = load i32, i32* %npos, align 4
  %add248 = add nsw i32 %198, 2
  %idxprom249 = sext i32 %add248 to i64
  %199 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos250 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %199, i32 0, i32 3
  %200 = load i32*, i32** %pos250, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %200, i64 %idxprom249
  store i32 0, i32* %arrayidx251, align 4
  %201 = load i32, i32* %opos, align 4
  %add252 = add nsw i32 %201, 3
  store i32 %add252, i32* %opos, align 4
  %202 = load i32, i32* %npos, align 4
  %add253 = add nsw i32 %202, 3
  store i32 %add253, i32* %npos, align 4
  br label %if.end

if.else.254:                                      ; preds = %land.lhs.true.206, %land.lhs.true.198, %land.lhs.true.190, %if.else.183
  %203 = load i32, i32* %opos, align 4
  %idxprom255 = sext i32 %203 to i64
  %204 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype256 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %204, i32 0, i32 1
  %205 = load i8*, i8** %statetype256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %205, i64 %idxprom255
  %206 = load i8, i8* %arrayidx257, align 1
  %207 = load i32, i32* %npos, align 4
  %idxprom258 = sext i32 %207 to i64
  %208 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype259 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %208, i32 0, i32 1
  %209 = load i8*, i8** %statetype259, align 8
  %arrayidx260 = getelementptr inbounds i8, i8* %209, i64 %idxprom258
  store i8 %206, i8* %arrayidx260, align 1
  %210 = load i32, i32* %opos, align 4
  %idxprom261 = sext i32 %210 to i64
  %211 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx262 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %211, i32 0, i32 2
  %212 = load i32*, i32** %nodeidx262, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %212, i64 %idxprom261
  %213 = load i32, i32* %arrayidx263, align 4
  %214 = load i32, i32* %npos, align 4
  %idxprom264 = sext i32 %214 to i64
  %215 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx265 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %215, i32 0, i32 2
  %216 = load i32*, i32** %nodeidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %216, i64 %idxprom264
  store i32 %213, i32* %arrayidx266, align 4
  %217 = load i32, i32* %opos, align 4
  %idxprom267 = sext i32 %217 to i64
  %218 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos268 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %218, i32 0, i32 3
  %219 = load i32*, i32** %pos268, align 8
  %arrayidx269 = getelementptr inbounds i32, i32* %219, i64 %idxprom267
  %220 = load i32, i32* %arrayidx269, align 4
  %221 = load i32, i32* %npos, align 4
  %idxprom270 = sext i32 %221 to i64
  %222 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos271 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %222, i32 0, i32 3
  %223 = load i32*, i32** %pos271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %223, i64 %idxprom270
  store i32 %220, i32* %arrayidx272, align 4
  %224 = load i32, i32* %opos, align 4
  %inc273 = add nsw i32 %224, 1
  store i32 %inc273, i32* %opos, align 4
  %225 = load i32, i32* %npos, align 4
  %inc274 = add nsw i32 %225, 1
  store i32 %inc274, i32* %npos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.254, %if.then.214
  br label %if.end.275

if.end.275:                                       ; preds = %if.end, %if.then.155
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.106
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.73
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.39
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %226 = load i32, i32* %npos, align 4
  %227 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen280 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %227, i32 0, i32 0
  store i32 %226, i32* %tlen280, align 4
  %228 = load i32*, i32** %ret_ndi.addr, align 8
  %cmp281 = icmp ne i32* %228, null
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %while.end
  %229 = load i32, i32* %ndi, align 4
  %230 = load i32*, i32** %ret_ndi.addr, align 8
  store i32 %229, i32* %230, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %while.end
  %231 = load i32*, i32** %ret_nid.addr, align 8
  %cmp285 = icmp ne i32* %231, null
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %if.end.284
  %232 = load i32, i32* %nid, align 4
  %233 = load i32*, i32** %ret_nid.addr, align 8
  store i32 %232, i32* %233, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %if.end.284
  ret void
}

declare i8* @MSAGetGC(%struct.msa_struct*, i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
