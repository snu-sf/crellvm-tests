; ModuleID = './MultiSource.Benchmarks.Ptrdist/6.anagram.anagram.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Letter = type { i32, i32, i32, i32 }
%struct.Word = type { [2 x i64], i8*, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@cchMinLength = global i32 3, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cannot stat dictionary\0A\00", align 1
@pchDictionary = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot open dictionary\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"main dictionary has %u entries\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Dictionary too large; increase MAXWORDS\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%lu bytes wasted\0A\00", align 1
@alPhrase = common global [26 x %struct.Letter] zeroinitializer, align 16
@aqMainMask = common global [2 x i64] zeroinitializer, align 16
@aqMainSign = common global [2 x i64] zeroinitializer, align 16
@cchPhraseLength = common global i32 0, align 4
@auGlobalFrequency = common global [26 x i32] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [28 x i8] c"MAX_QUADS not large enough\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Out of memory after %d candidates\0A\00", align 1
@cpwCand = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Too many candidates\0A\00", align 1
@apwCand = common global [5000 x %struct.Word*] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [15 x i8] c"%d candidates\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%15s%c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DumpWords.X = internal global i32 0, align 4
@cpwLast = common global i32 0, align 4
@apwSol = common global [51 x %struct.Word*] zeroinitializer, align 16
@achByFrequency = common global [26 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [25 x i8] c"Order of search will be \00", align 1
@fInteractive = common global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"Usage: anagram dictionary [length]\0A\00", align 1
@achPhrase = common global [255 x i8] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [16 x i8] c"New length: %d\0A\00", align 1
@jbAnagram = common global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @Fatal(i8* %pchMsg, i32 %u) #0 {
entry:
  %pchMsg.addr = alloca i8*, align 8
  %u.addr = alloca i32, align 4
  store i8* %pchMsg, i8** %pchMsg.addr, align 8
  store i32 %u, i32* %u.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %pchMsg.addr, align 8
  %2 = load i32, i32* %u.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1, i32 %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @ReadDict(i8* %pchFile) #0 {
entry:
  %pchFile.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pch = alloca i8*, align 8
  %pchBase = alloca i8*, align 8
  %ulLen = alloca i64, align 8
  %cWords = alloca i32, align 4
  %cLetters = alloca i32, align 4
  %ch = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i8* %pchFile, i8** %pchFile.addr, align 8
  store i32 0, i32* %cWords, align 4
  %0 = load i8*, i8** %pchFile.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %statBuf) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %add = add i64 %1, 52000
  store i64 %add, i64* %ulLen, align 8
  %2 = load i64, i64* %ulLen, align 8
  %call1 = call noalias i8* @malloc(i64 %2) #5
  store i8* %call1, i8** @pchDictionary, align 8
  store i8* %call1, i8** %pchBase, align 8
  %3 = load i8*, i8** @pchDictionary, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @Fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 0)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** %pchFile.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8
  %cmp5 = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  call void @Fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @feof(%struct._IO_FILE* %5) #5
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end.25

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %pchBase, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 2
  store i8* %add.ptr, i8** %pch, align 8
  store i32 0, i32* %cLetters, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.18, %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @fgetc(%struct._IO_FILE* %7)
  store i32 %call11, i32* %ch, align 4
  %cmp12 = icmp ne i32 %call11, 10
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.10
  %8 = load i32, i32* %ch, align 4
  %cmp13 = icmp ne i32 %8, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.10
  %9 = phi i1 [ false, %while.cond.10 ], [ %cmp13, %land.rhs ]
  br i1 %9, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %land.end
  %10 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %10 to i64
  %call15 = call i16** @__ctype_b_loc() #9
  %11 = load i16*, i16** %call15, align 8
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 1024
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body.14
  %13 = load i32, i32* %cLetters, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %cLetters, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %while.body.14
  %14 = load i32, i32* %ch, align 4
  %conv19 = trunc i32 %14 to i8
  %15 = load i8*, i8** %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %pch, align 8
  store i8 %conv19, i8* %15, align 1
  br label %while.cond.10

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %pch, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr20, i8** %pch, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %pch, align 8
  %18 = load i8*, i8** %pchBase, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i8
  %19 = load i8*, i8** %pchBase, align 8
  store i8 %conv21, i8* %19, align 1
  %20 = load i32, i32* %cLetters, align 4
  %conv22 = trunc i32 %20 to i8
  %21 = load i8*, i8** %pchBase, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %22 = load i8*, i8** %pch, align 8
  store i8* %22, i8** %pchBase, align 8
  %23 = load i32, i32* %cWords, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, i32* %cWords, align 4
  br label %while.cond

while.end.25:                                     ; preds = %while.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load i8*, i8** %pchBase, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr27, i8** %pchBase, align 8
  store i8 0, i8* %25, align 1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i32, i32* %cWords, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %27)
  %28 = load i32, i32* %cWords, align 4
  %cmp29 = icmp uge i32 %28, 26000
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %while.end.25
  call void @Fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %while.end.25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i64, i64* %ulLen, align 8
  %31 = load i8*, i8** %pchBase, align 8
  %32 = load i8*, i8** @pchDictionary, align 8
  %sub.ptr.lhs.cast33 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %32 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %sub = sub i64 %30, %sub.ptr.sub35
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i64 %sub)
  ret void
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @BuildMask(i8* %pchPhrase) #0 {
entry:
  %pchPhrase.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %iq = alloca i32, align 4
  %cbtUsed = alloca i32, align 4
  %cbtNeed = alloca i32, align 4
  %qNeed = alloca i64, align 8
  store i8* %pchPhrase, i8** %pchPhrase.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([26 x %struct.Letter]* @alPhrase to i8*), i8 0, i64 416, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x i64]* @aqMainMask to i8*), i8 0, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x i64]* @aqMainSign to i8*), i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* @cchPhraseLength, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %pchPhrase.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %pchPhrase.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %ch, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %2 to i64
  %call = call i16** @__ctype_b_loc() #9
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %ch, align 4
  %call3 = call i32 @tolower(i32 %5) #5
  store i32 %call3, i32* %ch, align 4
  %6 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %6, 97
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom4
  %uFrequency = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %uFrequency, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %uFrequency, align 4
  %8 = load i32, i32* @cchPhraseLength, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* @cchPhraseLength, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %iq, align 4
  store i32 0, i32* %cbtUsed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %while.end
  %9 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %9, 26
  br i1 %cmp7, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom9
  %uFrequency11 = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx10, i32 0, i32 0
  %11 = load i32, i32* %uFrequency11, align 4
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom15
  store i32 -1, i32* %arrayidx16, align 4
  br label %if.end.63

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom17
  store i32 0, i32* %arrayidx18, align 4
  store i32 1, i32* %cbtNeed, align 4
  store i64 1, i64* %qNeed, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.else
  %14 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom20
  %uFrequency22 = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx21, i32 0, i32 0
  %15 = load i32, i32* %uFrequency22, align 4
  %conv23 = zext i32 %15 to i64
  %16 = load i64, i64* %qNeed, align 8
  %cmp24 = icmp uge i64 %conv23, %16
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.19
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %17 = load i32, i32* %cbtNeed, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %cbtNeed, align 4
  %18 = load i64, i64* %qNeed, align 8
  %shl = shl i64 %18, 1
  store i64 %shl, i64* %qNeed, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %19 = load i32, i32* %cbtUsed, align 4
  %20 = load i32, i32* %cbtNeed, align 4
  %add = add nsw i32 %19, %20
  %conv28 = sext i32 %add to i64
  %cmp29 = icmp ugt i64 %conv28, 64
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %for.end
  %21 = load i32, i32* %iq, align 4
  %inc32 = add i32 %21, 1
  store i32 %inc32, i32* %iq, align 4
  %cmp33 = icmp uge i32 %inc32, 2
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.31
  call void @Fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.31
  store i32 0, i32* %cbtUsed, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.end
  %22 = load i64, i64* %qNeed, align 8
  %sub38 = sub i64 %22, 1
  %conv39 = trunc i64 %sub38 to i32
  %23 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom40
  %uBits = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx41, i32 0, i32 2
  store i32 %conv39, i32* %uBits, align 4
  %24 = load i32, i32* %cbtUsed, align 4
  %tobool42 = icmp ne i32 %24, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.37
  %25 = load i32, i32* %cbtUsed, align 4
  %26 = load i64, i64* %qNeed, align 8
  %sh_prom = zext i32 %25 to i64
  %shl44 = shl i64 %26, %sh_prom
  store i64 %shl44, i64* %qNeed, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.37
  %27 = load i64, i64* %qNeed, align 8
  %28 = load i32, i32* %iq, align 4
  %idxprom46 = zext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainSign, i32 0, i64 %idxprom46
  %29 = load i64, i64* %arrayidx47, align 8
  %or = or i64 %29, %27
  store i64 %or, i64* %arrayidx47, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom48
  %uFrequency50 = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx49, i32 0, i32 0
  %31 = load i32, i32* %uFrequency50, align 4
  %conv51 = zext i32 %31 to i64
  %32 = load i32, i32* %cbtUsed, align 4
  %sh_prom52 = zext i32 %32 to i64
  %shl53 = shl i64 %conv51, %sh_prom52
  %33 = load i32, i32* %iq, align 4
  %idxprom54 = zext i32 %33 to i64
  %arrayidx55 = getelementptr inbounds [2 x i64], [2 x i64]* @aqMainMask, i32 0, i64 %idxprom54
  %34 = load i64, i64* %arrayidx55, align 8
  %or56 = or i64 %34, %shl53
  store i64 %or56, i64* %arrayidx55, align 8
  %35 = load i32, i32* %cbtUsed, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom57
  %uShift = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx58, i32 0, i32 1
  store i32 %35, i32* %uShift, align 4
  %37 = load i32, i32* %iq, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %38 to i64
  %arrayidx60 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom59
  %iq61 = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx60, i32 0, i32 3
  store i32 %37, i32* %iq61, align 4
  %39 = load i32, i32* %cbtNeed, align 4
  %40 = load i32, i32* %cbtUsed, align 4
  %add62 = add nsw i32 %40, %39
  store i32 %add62, i32* %cbtUsed, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.45, %if.then.14
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %41 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %41, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind uwtable
define %struct.Word* @NewWord() #0 {
entry:
  %pw = alloca %struct.Word*, align 8
  %call = call noalias i8* @malloc(i64 32) #5
  %0 = bitcast i8* %call to %struct.Word*
  store %struct.Word* %0, %struct.Word** %pw, align 8
  %1 = load %struct.Word*, %struct.Word** %pw, align 8
  %cmp = icmp eq %struct.Word* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @cpwCand, align 4
  call void @Fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.Word*, %struct.Word** %pw, align 8
  ret %struct.Word* %3
}

; Function Attrs: nounwind uwtable
define void @wprint(i8* %pch) #0 {
entry:
  %pch.addr = alloca i8*, align 8
  store i8* %pch, i8** %pch.addr, align 8
  %0 = load i8*, i8** %pch.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %0)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.Word* @NextWord() #0 {
entry:
  %retval = alloca %struct.Word*, align 8
  %pw = alloca %struct.Word*, align 8
  %0 = load i32, i32* @cpwCand, align 4
  %cmp = icmp uge i32 %0, 5000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @cpwCand, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @cpwCand, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 %idxprom
  %2 = load %struct.Word*, %struct.Word** %arrayidx, align 8
  store %struct.Word* %2, %struct.Word** %pw, align 8
  %3 = load %struct.Word*, %struct.Word** %pw, align 8
  %cmp1 = icmp ne %struct.Word* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.Word*, %struct.Word** %pw, align 8
  store %struct.Word* %4, %struct.Word** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call %struct.Word* @NewWord()
  %5 = load i32, i32* @cpwCand, align 4
  %sub = sub i32 %5, 1
  %idxprom4 = zext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 %idxprom4
  store %struct.Word* %call, %struct.Word** %arrayidx5, align 8
  %6 = load i32, i32* @cpwCand, align 4
  %sub6 = sub i32 %6, 1
  %idxprom7 = zext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 %idxprom7
  %7 = load %struct.Word*, %struct.Word** %arrayidx8, align 8
  store %struct.Word* %7, %struct.Word** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %8 = load %struct.Word*, %struct.Word** %retval
  ret %struct.Word* %8
}

; Function Attrs: nounwind uwtable
define void @BuildWord(i8* %pchWord) #0 {
entry:
  %pchWord.addr = alloca i8*, align 8
  %cchFrequency = alloca [26 x i8], align 16
  %i = alloca i32, align 4
  %pch = alloca i8*, align 8
  %pw = alloca %struct.Word*, align 8
  %cchLength = alloca i32, align 4
  store i8* %pchWord, i8** %pchWord.addr, align 8
  %0 = load i8*, i8** %pchWord.addr, align 8
  store i8* %0, i8** %pch, align 8
  store i32 0, i32* %cchLength, align 4
  %1 = bitcast [26 x i8]* %cchFrequency to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 26, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.then, %entry
  %2 = load i8*, i8** %pch, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %pch, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %i, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %call = call i16** @__ctype_b_loc() #9
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %6 to i32
  %and = and i32 %conv2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %7 = load i32, i32* %i, align 4
  %call3 = call i32 @tolower(i32 %7) #5
  %sub = sub nsw i32 %call3, 97
  store i32 %sub, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [26 x i8], [26 x i8]* %cchFrequency, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %inc = add i8 %9, 1
  store i8 %inc, i8* %arrayidx5, align 1
  %conv6 = zext i8 %inc to i32
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom7
  %uFrequency = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %uFrequency, align 4
  %cmp9 = icmp ugt i32 %conv6, %11
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %for.end.41

if.end.12:                                        ; preds = %if.end
  %12 = load i32, i32* %cchLength, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %cchLength, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %13 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %13, 26
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [26 x i8], [26 x i8]* %cchFrequency, i32 0, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %add = add i32 %17, %conv18
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call22 = call %struct.Word* @NextWord()
  store %struct.Word* %call22, %struct.Word** %pw, align 8
  %19 = load %struct.Word*, %struct.Word** %pw, align 8
  %aqMask = getelementptr inbounds %struct.Word, %struct.Word* %19, i32 0, i32 0
  %20 = bitcast [2 x i64]* %aqMask to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 16, i32 8, i1 false)
  %21 = load i8*, i8** %pchWord.addr, align 8
  %22 = load %struct.Word*, %struct.Word** %pw, align 8
  %pchWord23 = getelementptr inbounds %struct.Word, %struct.Word* %22, i32 0, i32 1
  store i8* %21, i8** %pchWord23, align 8
  %23 = load i32, i32* %cchLength, align 4
  %24 = load %struct.Word*, %struct.Word** %pw, align 8
  %cchLength24 = getelementptr inbounds %struct.Word, %struct.Word* %24, i32 0, i32 2
  store i32 %23, i32* %cchLength24, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.39, %for.end
  %25 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %25, 26
  br i1 %cmp26, label %for.body.28, label %for.end.41

for.body.28:                                      ; preds = %for.cond.25
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [26 x i8], [26 x i8]* %cchFrequency, i32 0, i64 %idxprom29
  %27 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %27 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom32
  %uShift = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx33, i32 0, i32 1
  %29 = load i32, i32* %uShift, align 4
  %sh_prom = zext i32 %29 to i64
  %shl = shl i64 %conv31, %sh_prom
  %30 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom34
  %iq = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx35, i32 0, i32 3
  %31 = load i32, i32* %iq, align 4
  %idxprom36 = zext i32 %31 to i64
  %32 = load %struct.Word*, %struct.Word** %pw, align 8
  %aqMask37 = getelementptr inbounds %struct.Word, %struct.Word* %32, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x i64], [2 x i64]* %aqMask37, i32 0, i64 %idxprom36
  %33 = load i64, i64* %arrayidx38, align 8
  %or = or i64 %33, %shl
  store i64 %or, i64* %arrayidx38, align 8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.28
  %34 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.25

for.end.41:                                       ; preds = %if.then.11, %for.cond.25
  ret void
}

; Function Attrs: nounwind uwtable
define void @AddWords() #0 {
entry:
  %pch = alloca i8*, align 8
  %0 = load i8*, i8** @pchDictionary, align 8
  store i8* %0, i8** %pch, align 8
  store i32 0, i32* @cpwCand, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8*, i8** %pch, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %pch, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %5 = load i32, i32* @cchMinLength, align 4
  %cmp = icmp sge i32 %conv, %5
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %pch, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %8 = load i32, i32* @cchMinLength, align 4
  %add = add nsw i32 %conv3, %8
  %9 = load i32, i32* @cchPhraseLength, align 4
  %cmp4 = icmp sle i32 %add, %9
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %10 = load i8*, i8** %pch, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  %12 = load i32, i32* @cchPhraseLength, align 4
  %cmp8 = icmp eq i32 %conv7, %12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load i8*, i8** %pch, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 2
  call void @BuildWord(i8* %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i8*, i8** %pch, align 8
  %15 = load i8, i8* %14, align 1
  %conv10 = sext i8 %15 to i32
  %16 = load i8*, i8** %pch, align 8
  %idx.ext = sext i32 %conv10 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr11, i8** %pch, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* @cpwCand, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 %18)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DumpCandidates() #0 {
entry:
  %u = alloca i32, align 4
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %u, align 4
  %1 = load i32, i32* @cpwCand, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %u, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 %idxprom
  %3 = load %struct.Word*, %struct.Word** %arrayidx, align 8
  %pchWord = getelementptr inbounds %struct.Word, %struct.Word* %3, i32 0, i32 1
  %4 = load i8*, i8** %pchWord, align 8
  %5 = load i32, i32* %u, align 4
  %rem = urem i32 %5, 4
  %cmp1 = icmp eq i32 %rem, 3
  %cond = select i1 %cmp1, i32 10, i32 32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %4, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %u, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @DumpWords() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @DumpWords.X, align 4
  %add = add nsw i32 %0, 1
  %and = and i32 %add, 1023
  store i32 %and, i32* @DumpWords.X, align 4
  %1 = load i32, i32* @DumpWords.X, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @cpwLast, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i32 0, i64 %idxprom
  %5 = load %struct.Word*, %struct.Word** %arrayidx, align 8
  %pchWord = getelementptr inbounds %struct.Word, %struct.Word* %5, i32 0, i32 1
  %6 = load i8*, i8** %pchWord, align 8
  call void @wprint(i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindAnagram(i64* %pqMask, %struct.Word** %ppwStart, i32 %iLetter) #0 {
entry:
  %pqMask.addr = alloca i64*, align 8
  %ppwStart.addr = alloca %struct.Word**, align 8
  %iLetter.addr = alloca i32, align 4
  %aqNext = alloca [2 x i64], align 16
  %pw = alloca %struct.Word*, align 8
  %qMask = alloca i64, align 8
  %iq = alloca i32, align 4
  %ppwEnd = alloca %struct.Word**, align 8
  store i64* %pqMask, i64** %pqMask.addr, align 8
  store %struct.Word** %ppwStart, %struct.Word*** %ppwStart.addr, align 8
  store i32 %iLetter, i32* %iLetter.addr, align 4
  store %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 0), %struct.Word*** %ppwEnd, align 8
  %0 = load i32, i32* @cpwCand, align 4
  %1 = load %struct.Word**, %struct.Word*** %ppwEnd, align 8
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.Word*, %struct.Word** %1, i64 %idx.ext
  store %struct.Word** %add.ptr, %struct.Word*** %ppwEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %iLetter.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom1 = sext i8 %3 to i64
  %arrayidx2 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom1
  %iq3 = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx2, i32 0, i32 3
  %4 = load i32, i32* %iq3, align 4
  store i32 %4, i32* %iq, align 4
  %5 = load i32, i32* %iLetter.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %idxprom6 = sext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom6
  %uBits = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx7, i32 0, i32 2
  %7 = load i32, i32* %uBits, align 4
  %8 = load i32, i32* %iLetter.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = sext i8 %9 to i64
  %arrayidx11 = getelementptr inbounds [26 x %struct.Letter], [26 x %struct.Letter]* @alPhrase, i32 0, i64 %idxprom10
  %uShift = getelementptr inbounds %struct.Letter, %struct.Letter* %arrayidx11, i32 0, i32 1
  %10 = load i32, i32* %uShift, align 4
  %shl = shl i32 %7, %10
  %conv = zext i32 %shl to i64
  store i64 %conv, i64* %qMask, align 8
  %11 = load i32, i32* %iq, align 4
  %idxprom12 = zext i32 %11 to i64
  %12 = load i64*, i64** %pqMask.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %12, i64 %idxprom12
  %13 = load i64, i64* %arrayidx13, align 8
  %14 = load i64, i64* %qMask, align 8
  %and = and i64 %13, %14
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %15 = load i32, i32* %iLetter.addr, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %iLetter.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.then.38, %if.then.29, %if.then.20, %for.end
  %16 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %17 = load %struct.Word**, %struct.Word*** %ppwEnd, align 8
  %cmp = icmp ult %struct.Word** %16, %17
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %19 = load %struct.Word*, %struct.Word** %18, align 8
  store %struct.Word* %19, %struct.Word** %pw, align 8
  %20 = load i64*, i64** %pqMask.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %20, i64 0
  %21 = load i64, i64* %arrayidx15, align 8
  %22 = load %struct.Word*, %struct.Word** %pw, align 8
  %aqMask = getelementptr inbounds %struct.Word, %struct.Word* %22, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x i64], [2 x i64]* %aqMask, i32 0, i64 0
  %23 = load i64, i64* %arrayidx16, align 8
  %sub = sub i64 %21, %23
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %aqNext, i32 0, i64 0
  store i64 %sub, i64* %arrayidx17, align 8
  %24 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i32 0, i64 0), align 8
  %and18 = and i64 %sub, %24
  %tobool19 = icmp ne i64 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  %25 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Word*, %struct.Word** %25, i32 1
  store %struct.Word** %incdec.ptr, %struct.Word*** %ppwStart.addr, align 8
  br label %while.cond

if.end.21:                                        ; preds = %while.body
  %26 = load i64*, i64** %pqMask.addr, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %26, i64 1
  %27 = load i64, i64* %arrayidx22, align 8
  %28 = load %struct.Word*, %struct.Word** %pw, align 8
  %aqMask23 = getelementptr inbounds %struct.Word, %struct.Word* %28, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x i64], [2 x i64]* %aqMask23, i32 0, i64 1
  %29 = load i64, i64* %arrayidx24, align 8
  %sub25 = sub i64 %27, %29
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %aqNext, i32 0, i64 1
  store i64 %sub25, i64* %arrayidx26, align 8
  %30 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainSign, i32 0, i64 1), align 8
  %and27 = and i64 %sub25, %30
  %tobool28 = icmp ne i64 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.21
  %31 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %incdec.ptr30 = getelementptr inbounds %struct.Word*, %struct.Word** %31, i32 1
  store %struct.Word** %incdec.ptr30, %struct.Word*** %ppwStart.addr, align 8
  br label %while.cond

if.end.31:                                        ; preds = %if.end.21
  %32 = load i32, i32* %iq, align 4
  %idxprom32 = zext i32 %32 to i64
  %33 = load %struct.Word*, %struct.Word** %pw, align 8
  %aqMask33 = getelementptr inbounds %struct.Word, %struct.Word* %33, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [2 x i64], [2 x i64]* %aqMask33, i32 0, i64 %idxprom32
  %34 = load i64, i64* %arrayidx34, align 8
  %35 = load i64, i64* %qMask, align 8
  %and35 = and i64 %34, %35
  %cmp36 = icmp eq i64 %and35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.31
  %36 = load %struct.Word**, %struct.Word*** %ppwEnd, align 8
  %incdec.ptr39 = getelementptr inbounds %struct.Word*, %struct.Word** %36, i32 -1
  store %struct.Word** %incdec.ptr39, %struct.Word*** %ppwEnd, align 8
  %37 = load %struct.Word*, %struct.Word** %incdec.ptr39, align 8
  %38 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  store %struct.Word* %37, %struct.Word** %38, align 8
  %39 = load %struct.Word*, %struct.Word** %pw, align 8
  %40 = load %struct.Word**, %struct.Word*** %ppwEnd, align 8
  store %struct.Word* %39, %struct.Word** %40, align 8
  br label %while.cond

if.end.40:                                        ; preds = %if.end.31
  %41 = load %struct.Word*, %struct.Word** %pw, align 8
  %42 = load i32, i32* @cpwLast, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* @cpwLast, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds [51 x %struct.Word*], [51 x %struct.Word*]* @apwSol, i32 0, i64 %idxprom42
  store %struct.Word* %41, %struct.Word** %arrayidx43, align 8
  %43 = load %struct.Word*, %struct.Word** %pw, align 8
  %cchLength = getelementptr inbounds %struct.Word, %struct.Word* %43, i32 0, i32 2
  %44 = load i32, i32* %cchLength, align 4
  %45 = load i32, i32* @cchPhraseLength, align 4
  %sub44 = sub i32 %45, %44
  store i32 %sub44, i32* @cchPhraseLength, align 4
  %tobool45 = icmp ne i32 %sub44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.40
  store %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 0), %struct.Word*** %ppwEnd, align 8
  %46 = load i32, i32* @cpwCand, align 4
  %47 = load %struct.Word**, %struct.Word*** %ppwEnd, align 8
  %idx.ext47 = zext i32 %46 to i64
  %add.ptr48 = getelementptr inbounds %struct.Word*, %struct.Word** %47, i64 %idx.ext47
  store %struct.Word** %add.ptr48, %struct.Word*** %ppwEnd, align 8
  %arrayidx49 = getelementptr inbounds [2 x i64], [2 x i64]* %aqNext, i32 0, i64 0
  %48 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %49 = load i32, i32* %iLetter.addr, align 4
  call void @FindAnagram(i64* %arrayidx49, %struct.Word** %48, i32 %49)
  br label %if.end.50

if.else:                                          ; preds = %if.end.40
  call void @DumpWords()
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.46
  %50 = load %struct.Word*, %struct.Word** %pw, align 8
  %cchLength51 = getelementptr inbounds %struct.Word, %struct.Word* %50, i32 0, i32 2
  %51 = load i32, i32* %cchLength51, align 4
  %52 = load i32, i32* @cchPhraseLength, align 4
  %add = add i32 %52, %51
  store i32 %add, i32* @cchPhraseLength, align 4
  %53 = load i32, i32* @cpwLast, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* @cpwLast, align 4
  %54 = load %struct.Word**, %struct.Word*** %ppwStart.addr, align 8
  %incdec.ptr52 = getelementptr inbounds %struct.Word*, %struct.Word** %54, i32 1
  store %struct.Word** %incdec.ptr52, %struct.Word*** %ppwStart.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CompareFrequency(i8* %pch1, i8* %pch2) #0 {
entry:
  %retval = alloca i32, align 4
  %pch1.addr = alloca i8*, align 8
  %pch2.addr = alloca i8*, align 8
  store i8* %pch1, i8** %pch1.addr, align 8
  store i8* %pch2, i8** %pch2.addr, align 8
  %0 = load i8*, i8** %pch1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i8*, i8** %pch2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom1 = sext i8 %4 to i64
  %arrayidx2 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp ult i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %pch1.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom3 = sext i8 %7 to i64
  %arrayidx4 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i8*, i8** %pch2.addr, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom5 = sext i8 %10 to i64
  %arrayidx6 = getelementptr inbounds [26 x i32], [26 x i32]* @auGlobalFrequency, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ugt i32 %8, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %12 = load i8*, i8** %pch1.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %14 = load i8*, i8** %pch2.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv10 = sext i8 %15 to i32
  %cmp11 = icmp slt i32 %conv, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %16 = load i8*, i8** %pch1.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %18 = load i8*, i8** %pch2.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp sgt i32 %conv15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.13, %if.then.8, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @SortCandidates() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @qsort(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @achByFrequency, i32 0, i32 0), i64 26, i64 1, i32 (i8*, i8*)* @CompareFrequency)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.9, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 26
  br i1 %cmp2, label %for.body.4, label %for.end.11

for.body.4:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [26 x i8], [26 x i8]* @achByFrequency, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %add = add nsw i32 %conv7, 97
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputc(i32 %add, %struct._IO_FILE* %8)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.4
  %9 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.1

for.end.11:                                       ; preds = %for.cond.1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @GetPhrase(i8* %pch, i32 %size) #0 {
entry:
  %pch.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %pch, i8** %pch.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @fInteractive, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load i8*, i8** %pch.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call2 = call i8* @fgets(i8* %2, i32 %3, %struct._IO_FILE* %4)
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @exit(i32 0) #8
  unreachable

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %pch.addr, align 8
  ret i8* %5
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %cpchArgc, i8** %ppchArgv) #0 {
entry:
  %retval = alloca i32, align 4
  %cpchArgc.addr = alloca i32, align 4
  %ppchArgv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %cpchArgc, i32* %cpchArgc.addr, align 4
  store i8** %ppchArgv, i8*** %ppchArgv.addr, align 8
  %0 = load i32, i32* %cpchArgc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %cpchArgc.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @Fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, i32* %cpchArgc.addr, align 4
  %cmp2 = icmp eq i32 %2, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load i8**, i8*** %ppchArgv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %4) #10
  store i32 %call, i32* @cchMinLength, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call i32 @isatty(i32 1) #5
  store i32 %call5, i32* @fInteractive, align 4
  %5 = load i8**, i8*** %ppchArgv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx6, align 8
  call void @ReadDict(i8* %6)
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.then.24, %if.end.4
  %call7 = call i8* @GetPhrase(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i32 0, i64 0), i32 255)
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i32 0, i64 0), align 1
  %conv = sext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %call9 = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %9 to i32
  %and = and i32 %conv11, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body
  %call13 = call i32 @atoi(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i32 0, i32 0)) #10
  store i32 %call13, i32* @cchMinLength, align 4
  %10 = load i32, i32* @cchMinLength, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 %10)
  br label %if.end.32

if.else:                                          ; preds = %while.body
  %11 = load i8, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i32 0, i64 0), align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 63
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else
  call void @DumpCandidates()
  br label %if.end.31

if.else.19:                                       ; preds = %if.else
  call void @BuildMask(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @achPhrase, i32 0, i64 0))
  call void @AddWords()
  %12 = load i32, i32* @cpwCand, align 4
  %cmp20 = icmp eq i32 %12, 0
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.19
  %13 = load i32, i32* @cchPhraseLength, align 4
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.else.19
  br label %while.cond

if.end.25:                                        ; preds = %lor.lhs.false
  store i32 0, i32* @cpwLast, align 4
  call void @SortCandidates()
  %call26 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @jbAnagram, i32 0, i32 0)) #11
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  call void @FindAnagram(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @aqMainMask, i32 0, i64 0), %struct.Word** getelementptr inbounds ([5000 x %struct.Word*], [5000 x %struct.Word*]* @apwCand, i32 0, i64 0), i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
