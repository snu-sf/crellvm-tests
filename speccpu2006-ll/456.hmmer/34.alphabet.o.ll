; ModuleID = 'alphabet.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [22 x i8] c"No such alphabet type\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Looks like nucleic acid sequence, hope that's right\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Looks like amino acid sequence, hope that's right\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Sorry, I can't tell if that's protein or DNA\00", align 1
@Alphabet_type = external global i32, align 4
@.str.4 = private unnamed_addr constant [107 x i8] c"An alphabet type conflict occurred.\0AYou probably mixed a DNA seq file with a protein model, or vice versa.\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.5 = private unnamed_addr constant [25 x i8] c"ACDEFGHIKLMNPQRSTVWYUBZX\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet_iupac = external global i32, align 4
@Degenerate = external global [24 x [20 x i8]], align 16
@DegenCount = external global [24 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ND\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"QE\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ACDEFGHIKLMNPQRSTVWY\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ACGTUNRYMKSWHBVDX\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ACGT\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ACT\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"CGT\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ACG\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"AGT\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"No support for non-nucleic or protein alphabets\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"alphabet.c\00", align 1
@stdcode1 = external global [0 x i8*], align 8

; Function Attrs: nounwind uwtable
define void @DetermineAlphabet(i8** %rseqs, i32 %nseq) #0 {
entry:
  %rseqs.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %other = alloca i32, align 4
  %nucleic = alloca i32, align 4
  %amino = alloca i32, align 4
  %type = alloca i32, align 4
  store i8** %rseqs, i8*** %rseqs.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 0, i32* %type, align 4
  store i32 0, i32* %amino, align 4
  store i32 0, i32* %nucleic, align 4
  store i32 0, i32* %other, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %rseqs.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @Seqtype(i8* %4)
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.3
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load i32, i32* %nucleic, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nucleic, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %6 = load i32, i32* %nucleic, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, i32* %nucleic, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %7 = load i32, i32* %amino, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %amino, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body
  %8 = load i32, i32* %other, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* %other, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %9 = load i32, i32* %idx, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %nucleic, align 4
  %11 = load i32, i32* %nseq.addr, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 2, i32* %type, align 4
  br label %if.end.23

if.else:                                          ; preds = %for.end
  %12 = load i32, i32* %amino, align 4
  %13 = load i32, i32* %nseq.addr, align 4
  %cmp9 = icmp eq i32 %12, %13
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 3, i32* %type, align 4
  br label %if.end.22

if.else.11:                                       ; preds = %if.else
  %14 = load i32, i32* %nucleic, align 4
  %15 = load i32, i32* %amino, align 4
  %cmp12 = icmp sgt i32 %14, %15
  br i1 %cmp12, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else.11
  %16 = load i32, i32* %nucleic, align 4
  %17 = load i32, i32* %other, align 4
  %cmp13 = icmp sgt i32 %16, %17
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0))
  store i32 2, i32* %type, align 4
  br label %if.end.21

if.else.15:                                       ; preds = %land.lhs.true, %if.else.11
  %18 = load i32, i32* %amino, align 4
  %19 = load i32, i32* %nucleic, align 4
  %cmp16 = icmp sgt i32 %18, %19
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.20

land.lhs.true.17:                                 ; preds = %if.else.15
  %20 = load i32, i32* %amino, align 4
  %21 = load i32, i32* %other, align 4
  %cmp18 = icmp sgt i32 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.17
  call void (i8*, ...) @Warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0))
  store i32 3, i32* %type, align 4
  br label %if.end

if.else.20:                                       ; preds = %land.lhs.true.17, %if.else.15
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.19
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.10
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  %22 = load i32, i32* %type, align 4
  call void @SetAlphabet(i32 %22)
  ret void
}

declare i32 @Seqtype(i8*) #1

declare void @Die(i8*, ...) #1

declare void @Warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @SetAlphabet(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i32, i32* @Alphabet_type, align 4
  %cmp1 = icmp ne i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %sw.epilog

if.end.3:                                         ; preds = %entry
  %3 = load i32, i32* %type.addr, align 4
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.3
  %4 = load i32, i32* %type.addr, align 4
  store i32 %4, i32* @Alphabet_type, align 4
  %call = call i8* @strcpy(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #3
  store i32 20, i32* @Alphabet_size, align 4
  store i32 24, i32* @Alphabet_iupac, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* @Alphabet_iupac, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %x, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom
  %8 = bitcast [20 x i8]* %arrayidx to i8*
  %9 = load i32, i32* @Alphabet_size, align 4
  %conv = sext i32 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %for.end
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* @Alphabet_size, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body.8, label %for.end.17

for.body.8:                                       ; preds = %for.cond.5
  %13 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx11, i32 0, i64 %idxprom9
  store i8 1, i8* %arrayidx12, align 1
  %15 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i32 0, i64 %idxprom13
  store i32 1, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.8
  %16 = load i32, i32* %x, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %x, align 4
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  call void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  call void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  call void @set_degenerate(i8 signext 90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  call void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.3
  %17 = load i32, i32* %type.addr, align 4
  store i32 %17, i32* @Alphabet_type, align 4
  %call19 = call i8* @strcpy(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #3
  store i32 4, i32* @Alphabet_size, align 4
  store i32 17, i32* @Alphabet_iupac, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %sw.bb.18
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* @Alphabet_iupac, align 4
  %cmp21 = icmp slt i32 %18, %19
  br i1 %cmp21, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.20
  %20 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom24
  %21 = bitcast [20 x i8]* %arrayidx25 to i8*
  %22 = load i32, i32* @Alphabet_size, align 4
  %conv26 = sext i32 %22 to i64
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %conv26, i32 1, i1 false)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %23 = load i32, i32* %x, align 4
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, i32* %x, align 4
  br label %for.cond.20

for.end.29:                                       ; preds = %for.cond.20
  store i32 0, i32* %x, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %for.end.29
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* @Alphabet_size, align 4
  %cmp31 = icmp slt i32 %24, %25
  br i1 %cmp31, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.30
  %26 = load i32, i32* %x, align 4
  %idxprom34 = sext i32 %26 to i64
  %27 = load i32, i32* %x, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx36, i32 0, i64 %idxprom34
  store i8 1, i8* %arrayidx37, align 1
  %28 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i32 0, i64 %idxprom38
  store i32 1, i32* %arrayidx39, align 4
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.33
  %29 = load i32, i32* %x, align 4
  %inc41 = add nsw i32 %29, 1
  store i32 %inc41, i32* %x, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  call void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @set_degenerate(i8 signext 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  call void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  call void @set_degenerate(i8 signext 82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  call void @set_degenerate(i8 signext 89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  call void @set_degenerate(i8 signext 77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  call void @set_degenerate(i8 signext 75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  call void @set_degenerate(i8 signext 83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  call void @set_degenerate(i8 signext 87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  call void @set_degenerate(i8 signext 72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  call void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  call void @set_degenerate(i8 signext 86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  call void @set_degenerate(i8 signext 68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default, %for.end.42, %for.end.17
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @set_degenerate(i8 signext %iupac, i8* %syms) #0 {
entry:
  %iupac.addr = alloca i8, align 1
  %syms.addr = alloca i8*, align 8
  store i8 %iupac, i8* %iupac.addr, align 1
  store i8* %syms, i8** %syms.addr, align 8
  %0 = load i8*, i8** %syms.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  %1 = load i8, i8* %iupac.addr, align 1
  %conv1 = sext i8 %1 to i32
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv1) #5
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i32 0, i64 %sub.ptr.sub
  store i32 %conv, i32* %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %syms.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %syms.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %call4 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv3) #5
  %sub.ptr.lhs.cast5 = ptrtoint i8* %call4 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast5, ptrtoint ([25 x i8]* @Alphabet to i64)
  %6 = load i8, i8* %iupac.addr, align 1
  %conv7 = sext i8 %6 to i32
  %call8 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv7) #5
  %sub.ptr.lhs.cast9 = ptrtoint i8* %call8 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast9, ptrtoint ([25 x i8]* @Alphabet to i64)
  %arrayidx11 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %sub.ptr.sub10
  %arrayidx12 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx11, i32 0, i64 %sub.ptr.sub6
  store i8 1, i8* %arrayidx12, align 1
  %7 = load i8*, i8** %syms.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %syms.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SymbolIndex(i8 signext %sym) #0 {
entry:
  %sym.addr = alloca i8, align 1
  %s = alloca i8*, align 8
  store i8 %sym, i8* %sym.addr, align 1
  %0 = load i8, i8* %sym.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @toupper(i32 %conv) #3
  %conv1 = trunc i32 %call to i8
  %conv2 = sext i8 %conv1 to i32
  %call3 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv2) #5
  store i8* %call3, i8** %s, align 8
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @Alphabet_iupac, align 4
  %sub = sub nsw i32 %1, 1
  %conv5 = sext i32 %sub to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv5, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %conv6 = trunc i64 %cond to i32
  ret i32 %conv6
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i8* @DigitizeSequence(i8* %seq, i32 %L) #0 {
entry:
  %seq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %dsq = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %seq, i8** %seq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 215, i64 %mul)
  store i8* %call, i8** %dsq, align 8
  %1 = load i32, i32* @Alphabet_iupac, align 4
  %conv1 = trunc i32 %1 to i8
  %2 = load i32, i32* %L.addr, align 4
  %add2 = add nsw i32 %2, 1
  %idxprom = sext i32 %add2 to i64
  %3 = load i8*, i8** %dsq, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %conv1, i8* %arrayidx, align 1
  %4 = load i8*, i8** %dsq, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %conv1, i8* %arrayidx3, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %L.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom5 = sext i32 %sub to i64
  %8 = load i8*, i8** %seq.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %call7 = call i32 @SymbolIndex(i8 signext %9)
  %conv8 = trunc i32 %call7 to i8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8*, i8** %dsq, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %dsq, align 8
  ret i8* %13
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define i8* @DedigitizeSequence(i8* %dsq, i32 %L) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %seq = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 235, i64 %mul)
  store i8* %call, i8** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %L.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %3, 1
  %idxprom = sext i32 %add2 to i64
  %4 = load i8*, i8** %dsq.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %seq, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %6, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %L.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %seq, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1
  %12 = load i8*, i8** %seq, align 8
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define void @DigitizeAlignment(%struct.msa_struct* %msa, i8*** %ret_dsqs) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %ret_dsqs.addr = alloca i8***, align 8
  %dsq = alloca i8**, align 8
  %idx = alloca i32, align 4
  %dpos = alloca i32, align 4
  %apos = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store i8*** %ret_dsqs, i8**** %ret_dsqs.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %nseq, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 264, i64 %mul)
  %2 = bitcast i8* %call to i8**
  store i8** %2, i8*** %dsq, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %entry
  %3 = load i32, i32* %idx, align 4
  %4 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %4, i32 0, i32 4
  %5 = load i32, i32* %nseq1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %6 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %alen, align 4
  %add = add nsw i32 %7, 2
  %conv3 = sext i32 %add to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 266, i64 %mul4)
  %8 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %dsq, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  store i8* %call5, i8** %arrayidx, align 8
  %10 = load i32, i32* @Alphabet_iupac, align 4
  %conv6 = trunc i32 %10 to i8
  %11 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8**, i8*** %dsq, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %12, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %conv6, i8* %arrayidx9, align 1
  store i32 0, i32* %apos, align 4
  store i32 1, i32* %dpos, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %14 = load i32, i32* %apos, align 4
  %15 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen11 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %15, i32 0, i32 3
  %16 = load i32, i32* %alen11, align 4
  %cmp12 = icmp slt i32 %14, %16
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %17 = load i32, i32* %apos, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i32, i32* %idx, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 0
  %20 = load i8**, i8*** %aseq, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %20, i64 %idxprom16
  %21 = load i8*, i8** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %21, i64 %idxprom15
  %22 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 32
  br i1 %cmp20, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.14
  %23 = load i32, i32* %apos, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq24 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %25, i32 0, i32 0
  %26 = load i8**, i8*** %aseq24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %26, i64 %idxprom23
  %27 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %idxprom22
  %28 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp eq i32 %conv27, 46
  br i1 %cmp28, label %if.end, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* %apos, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq33 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 0
  %32 = load i8**, i8*** %aseq33, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %32, i64 %idxprom32
  %33 = load i8*, i8** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %33, i64 %idxprom31
  %34 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %34 to i32
  %cmp37 = icmp eq i32 %conv36, 95
  br i1 %cmp37, label %if.end, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.30
  %35 = load i32, i32* %apos, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load i32, i32* %idx, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq42 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 0
  %38 = load i8**, i8*** %aseq42, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %38, i64 %idxprom41
  %39 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %39, i64 %idxprom40
  %40 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %40 to i32
  %cmp46 = icmp eq i32 %conv45, 45
  br i1 %cmp46, label %if.end, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.39
  %41 = load i32, i32* %apos, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq51 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 0
  %44 = load i8**, i8*** %aseq51, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %44, i64 %idxprom50
  %45 = load i8*, i8** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %45, i64 %idxprom49
  %46 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %46 to i32
  %cmp55 = icmp eq i32 %conv54, 126
  br i1 %cmp55, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.48
  %47 = load i32, i32* %apos, align 4
  %idxprom57 = sext i32 %47 to i64
  %48 = load i32, i32* %idx, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq59 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 0
  %50 = load i8**, i8*** %aseq59, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %50, i64 %idxprom58
  %51 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %51, i64 %idxprom57
  %52 = load i8, i8* %arrayidx61, align 1
  %call62 = call i32 @SymbolIndex(i8 signext %52)
  %conv63 = trunc i32 %call62 to i8
  %53 = load i32, i32* %dpos, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %dpos, align 4
  %idxprom64 = sext i32 %53 to i64
  %54 = load i32, i32* %idx, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load i8**, i8*** %dsq, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %55, i64 %idxprom65
  %56 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %56, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx67, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.48, %lor.lhs.false.39, %lor.lhs.false.30, %lor.lhs.false, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %57 = load i32, i32* %apos, align 4
  %inc68 = add nsw i32 %57, 1
  store i32 %inc68, i32* %apos, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %58 = load i32, i32* @Alphabet_iupac, align 4
  %conv69 = trunc i32 %58 to i8
  %59 = load i32, i32* %dpos, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load i32, i32* %idx, align 4
  %idxprom71 = sext i32 %60 to i64
  %61 = load i8**, i8*** %dsq, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %61, i64 %idxprom71
  %62 = load i8*, i8** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %62, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx73, align 1
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %63 = load i32, i32* %idx, align 4
  %inc75 = add nsw i32 %63, 1
  store i32 %inc75, i32* %idx, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %64 = load i8**, i8*** %dsq, align 8
  %65 = load i8***, i8**** %ret_dsqs.addr, align 8
  store i8** %64, i8*** %65, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7CountSymbol(float* %counters, i8 signext %symidx, float %wt) #0 {
entry:
  %counters.addr = alloca float*, align 8
  %symidx.addr = alloca i8, align 1
  %wt.addr = alloca float, align 4
  %x = alloca i32, align 4
  store float* %counters, float** %counters.addr, align 8
  store i8 %symidx, i8* %symidx.addr, align 1
  store float %wt, float* %wt.addr, align 4
  %0 = load i8, i8* %symidx.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i32, i32* @Alphabet_size, align 4
  %cmp = icmp slt i32 %conv, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, float* %wt.addr, align 4
  %3 = load i8, i8* %symidx.addr, align 1
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %4 = load float*, float** %counters.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %add = fadd float %5, %2
  store float %add, float* %arrayidx, align 4
  br label %if.end.18

if.else:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* @Alphabet_size, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i8, i8* %symidx.addr, align 1
  %conv6 = sext i8 %9 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx8, i32 0, i64 %idxprom5
  %10 = load i8, i8* %arrayidx9, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %11 = load float, float* %wt.addr, align 4
  %12 = load i8, i8* %symidx.addr, align 1
  %conv11 = sext i8 %12 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds [24 x i32], [24 x i32]* @DegenCount, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %conv14 = sitofp i32 %13 to float
  %div = fdiv float %11, %conv14
  %14 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load float*, float** %counters.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  %16 = load float, float* %arrayidx16, align 4
  %add17 = fadd float %16, %div
  store float %add17, float* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %x, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @DefaultGeneticCode(i32* %aacode) #0 {
entry:
  %aacode.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  store i32* %aacode, i32** %aacode.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %x, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @stdcode1, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 42
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32*, i32** %aacode.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3
  store i32 -1, i32* %arrayidx4, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @stdcode1, i32 0, i64 %idxprom5
  %7 = load i8*, i8** %arrayidx6, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv7) #5
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %conv8 = trunc i64 %sub.ptr.sub to i32
  %9 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i32*, i32** %aacode.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %10, i64 %idxprom9
  store i32 %conv8, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DefaultCodonBias(float* %codebias) #0 {
entry:
  %codebias.addr = alloca float*, align 8
  store float* %codebias, float** %codebias.addr, align 8
  %0 = load float*, float** %codebias.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  store float 5.000000e-01, float* %arrayidx, align 4
  %1 = load float*, float** %codebias.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %1, i64 1
  store float 5.000000e-01, float* %arrayidx1, align 4
  %2 = load float*, float** %codebias.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %2, i64 2
  store float 5.000000e-01, float* %arrayidx2, align 4
  %3 = load float*, float** %codebias.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %3, i64 3
  store float 5.000000e-01, float* %arrayidx3, align 4
  %4 = load float*, float** %codebias.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %4, i64 4
  store float 2.500000e-01, float* %arrayidx4, align 4
  %5 = load float*, float** %codebias.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %5, i64 5
  store float 2.500000e-01, float* %arrayidx5, align 4
  %6 = load float*, float** %codebias.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %6, i64 6
  store float 2.500000e-01, float* %arrayidx6, align 4
  %7 = load float*, float** %codebias.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %7, i64 7
  store float 2.500000e-01, float* %arrayidx7, align 4
  %8 = load float*, float** %codebias.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %8, i64 8
  store float 0x3FC5555560000000, float* %arrayidx8, align 4
  %9 = load float*, float** %codebias.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %9, i64 9
  store float 0x3FC5555560000000, float* %arrayidx9, align 4
  %10 = load float*, float** %codebias.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %10, i64 10
  store float 0x3FC5555560000000, float* %arrayidx10, align 4
  %11 = load float*, float** %codebias.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 11
  store float 0x3FC5555560000000, float* %arrayidx11, align 4
  %12 = load float*, float** %codebias.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %12, i64 12
  store float 0x3FD5555560000000, float* %arrayidx12, align 4
  %13 = load float*, float** %codebias.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %13, i64 13
  store float 0x3FD5555560000000, float* %arrayidx13, align 4
  %14 = load float*, float** %codebias.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %14, i64 14
  store float 1.000000e+00, float* %arrayidx14, align 4
  %15 = load float*, float** %codebias.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %15, i64 15
  store float 0x3FD5555560000000, float* %arrayidx15, align 4
  %16 = load float*, float** %codebias.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %16, i64 16
  store float 5.000000e-01, float* %arrayidx16, align 4
  %17 = load float*, float** %codebias.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %17, i64 17
  store float 5.000000e-01, float* %arrayidx17, align 4
  %18 = load float*, float** %codebias.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %18, i64 18
  store float 5.000000e-01, float* %arrayidx18, align 4
  %19 = load float*, float** %codebias.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %19, i64 19
  store float 5.000000e-01, float* %arrayidx19, align 4
  %20 = load float*, float** %codebias.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %20, i64 20
  store float 2.500000e-01, float* %arrayidx20, align 4
  %21 = load float*, float** %codebias.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %21, i64 21
  store float 2.500000e-01, float* %arrayidx21, align 4
  %22 = load float*, float** %codebias.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %22, i64 22
  store float 2.500000e-01, float* %arrayidx22, align 4
  %23 = load float*, float** %codebias.addr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %23, i64 23
  store float 2.500000e-01, float* %arrayidx23, align 4
  %24 = load float*, float** %codebias.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %24, i64 24
  store float 0x3FC5555560000000, float* %arrayidx24, align 4
  %25 = load float*, float** %codebias.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %25, i64 25
  store float 0x3FC5555560000000, float* %arrayidx25, align 4
  %26 = load float*, float** %codebias.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %26, i64 26
  store float 0x3FC5555560000000, float* %arrayidx26, align 4
  %27 = load float*, float** %codebias.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %27, i64 27
  store float 0x3FC5555560000000, float* %arrayidx27, align 4
  %28 = load float*, float** %codebias.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %28, i64 28
  store float 0x3FC5555560000000, float* %arrayidx28, align 4
  %29 = load float*, float** %codebias.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %29, i64 29
  store float 0x3FC5555560000000, float* %arrayidx29, align 4
  %30 = load float*, float** %codebias.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %30, i64 30
  store float 0x3FC5555560000000, float* %arrayidx30, align 4
  %31 = load float*, float** %codebias.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %31, i64 31
  store float 0x3FC5555560000000, float* %arrayidx31, align 4
  %32 = load float*, float** %codebias.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %32, i64 32
  store float 5.000000e-01, float* %arrayidx32, align 4
  %33 = load float*, float** %codebias.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %33, i64 33
  store float 5.000000e-01, float* %arrayidx33, align 4
  %34 = load float*, float** %codebias.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %34, i64 34
  store float 5.000000e-01, float* %arrayidx34, align 4
  %35 = load float*, float** %codebias.addr, align 8
  %arrayidx35 = getelementptr inbounds float, float* %35, i64 35
  store float 5.000000e-01, float* %arrayidx35, align 4
  %36 = load float*, float** %codebias.addr, align 8
  %arrayidx36 = getelementptr inbounds float, float* %36, i64 36
  store float 2.500000e-01, float* %arrayidx36, align 4
  %37 = load float*, float** %codebias.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %37, i64 37
  store float 2.500000e-01, float* %arrayidx37, align 4
  %38 = load float*, float** %codebias.addr, align 8
  %arrayidx38 = getelementptr inbounds float, float* %38, i64 38
  store float 2.500000e-01, float* %arrayidx38, align 4
  %39 = load float*, float** %codebias.addr, align 8
  %arrayidx39 = getelementptr inbounds float, float* %39, i64 39
  store float 2.500000e-01, float* %arrayidx39, align 4
  %40 = load float*, float** %codebias.addr, align 8
  %arrayidx40 = getelementptr inbounds float, float* %40, i64 40
  store float 2.500000e-01, float* %arrayidx40, align 4
  %41 = load float*, float** %codebias.addr, align 8
  %arrayidx41 = getelementptr inbounds float, float* %41, i64 41
  store float 2.500000e-01, float* %arrayidx41, align 4
  %42 = load float*, float** %codebias.addr, align 8
  %arrayidx42 = getelementptr inbounds float, float* %42, i64 42
  store float 2.500000e-01, float* %arrayidx42, align 4
  %43 = load float*, float** %codebias.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %43, i64 43
  store float 2.500000e-01, float* %arrayidx43, align 4
  %44 = load float*, float** %codebias.addr, align 8
  %arrayidx44 = getelementptr inbounds float, float* %44, i64 44
  store float 2.500000e-01, float* %arrayidx44, align 4
  %45 = load float*, float** %codebias.addr, align 8
  %arrayidx45 = getelementptr inbounds float, float* %45, i64 45
  store float 2.500000e-01, float* %arrayidx45, align 4
  %46 = load float*, float** %codebias.addr, align 8
  %arrayidx46 = getelementptr inbounds float, float* %46, i64 46
  store float 2.500000e-01, float* %arrayidx46, align 4
  %47 = load float*, float** %codebias.addr, align 8
  %arrayidx47 = getelementptr inbounds float, float* %47, i64 47
  store float 2.500000e-01, float* %arrayidx47, align 4
  %48 = load float*, float** %codebias.addr, align 8
  %arrayidx48 = getelementptr inbounds float, float* %48, i64 48
  store float 0.000000e+00, float* %arrayidx48, align 4
  %49 = load float*, float** %codebias.addr, align 8
  %arrayidx49 = getelementptr inbounds float, float* %49, i64 49
  store float 5.000000e-01, float* %arrayidx49, align 4
  %50 = load float*, float** %codebias.addr, align 8
  %arrayidx50 = getelementptr inbounds float, float* %50, i64 50
  store float 0.000000e+00, float* %arrayidx50, align 4
  %51 = load float*, float** %codebias.addr, align 8
  %arrayidx51 = getelementptr inbounds float, float* %51, i64 51
  store float 5.000000e-01, float* %arrayidx51, align 4
  %52 = load float*, float** %codebias.addr, align 8
  %arrayidx52 = getelementptr inbounds float, float* %52, i64 52
  store float 0x3FC5555560000000, float* %arrayidx52, align 4
  %53 = load float*, float** %codebias.addr, align 8
  %arrayidx53 = getelementptr inbounds float, float* %53, i64 53
  store float 0x3FC5555560000000, float* %arrayidx53, align 4
  %54 = load float*, float** %codebias.addr, align 8
  %arrayidx54 = getelementptr inbounds float, float* %54, i64 54
  store float 0x3FC5555560000000, float* %arrayidx54, align 4
  %55 = load float*, float** %codebias.addr, align 8
  %arrayidx55 = getelementptr inbounds float, float* %55, i64 55
  store float 0x3FC5555560000000, float* %arrayidx55, align 4
  %56 = load float*, float** %codebias.addr, align 8
  %arrayidx56 = getelementptr inbounds float, float* %56, i64 56
  store float 0.000000e+00, float* %arrayidx56, align 4
  %57 = load float*, float** %codebias.addr, align 8
  %arrayidx57 = getelementptr inbounds float, float* %57, i64 57
  store float 5.000000e-01, float* %arrayidx57, align 4
  %58 = load float*, float** %codebias.addr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %58, i64 58
  store float 1.000000e+00, float* %arrayidx58, align 4
  %59 = load float*, float** %codebias.addr, align 8
  %arrayidx59 = getelementptr inbounds float, float* %59, i64 59
  store float 5.000000e-01, float* %arrayidx59, align 4
  %60 = load float*, float** %codebias.addr, align 8
  %arrayidx60 = getelementptr inbounds float, float* %60, i64 60
  store float 0x3FC5555560000000, float* %arrayidx60, align 4
  %61 = load float*, float** %codebias.addr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %61, i64 61
  store float 5.000000e-01, float* %arrayidx61, align 4
  %62 = load float*, float** %codebias.addr, align 8
  %arrayidx62 = getelementptr inbounds float, float* %62, i64 62
  store float 0x3FC5555560000000, float* %arrayidx62, align 4
  %63 = load float*, float** %codebias.addr, align 8
  %arrayidx63 = getelementptr inbounds float, float* %63, i64 63
  store float 5.000000e-01, float* %arrayidx63, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
