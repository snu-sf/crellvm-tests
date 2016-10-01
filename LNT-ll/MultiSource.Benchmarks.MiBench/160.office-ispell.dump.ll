; ModuleID = './MultiSource.Benchmarks.MiBench/160.office-ispell.dump.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hashheader = external global %struct.hashheader, align 4
@.str = private unnamed_addr constant [16 x i8] c"flagmarker \5C%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"flagmarker \5C%3.3o\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@numpflags = external global i32, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"prefixes\0A\00", align 1
@pflaglist = external global %struct.flagent*, align 8
@numsflags = external global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"suffixes\0A\00", align 1
@sflaglist = external global %struct.flagent*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1

; Function Attrs: nounwind uwtable
define void @dumpmode() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 35
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %2 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 62
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %3 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp eq i32 %conv10, 58
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %4 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %5 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv18 = sext i8 %5 to i32
  %cmp19 = icmp eq i32 %conv18, 44
  br i1 %cmp19, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %6 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv22 = sext i8 %6 to i32
  %cmp23 = icmp eq i32 %conv22, 91
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %entry
  %7 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv25 = sext i8 %7 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %conv25)
  br label %if.end.39

if.else:                                          ; preds = %lor.lhs.false.21
  %8 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv26 = sext i8 %8 to i32
  %cmp27 = icmp slt i32 %conv26, 32
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.else
  %9 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv30 = sext i8 %9 to i32
  %cmp31 = icmp sge i32 %conv30, 127
  br i1 %cmp31, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %lor.lhs.false.29, %if.else
  %10 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv34 = sext i8 %10 to i32
  %and = and i32 %conv34, 255
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %and)
  br label %if.end

if.else.36:                                       ; preds = %lor.lhs.false.29
  %11 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv37 = sext i8 %11 to i32
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %conv37)
  br label %if.end

if.end:                                           ; preds = %if.else.36, %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then
  %12 = load i32, i32* @numpflags, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.39
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %13 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %14 = load i32, i32* @numpflags, align 4
  call void @tbldump(%struct.flagent* %13, i32 %14)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.39
  %15 = load i32, i32* @numsflags, align 4
  %tobool43 = icmp ne i32 %15, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.42
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %16 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %17 = load i32, i32* @numsflags, align 4
  call void @tbldump(%struct.flagent* %16, i32 %17)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.42
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @tbldump(%struct.flagent* %flagp, i32 %numflags) #0 {
entry:
  %flagp.addr = alloca %struct.flagent*, align 8
  %numflags.addr = alloca i32, align 4
  store %struct.flagent* %flagp, %struct.flagent** %flagp.addr, align 8
  store i32 %numflags, i32* %numflags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %numflags.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %numflags.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.flagent, %struct.flagent* %1, i32 1
  store %struct.flagent* %incdec.ptr, %struct.flagent** %flagp.addr, align 8
  call void @entdump(%struct.flagent* %1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @entdump(%struct.flagent* %flagp) #0 {
entry:
  %flagp.addr = alloca %struct.flagent*, align 8
  %cond = alloca i32, align 4
  store %struct.flagent* %flagp, %struct.flagent** %flagp.addr, align 8
  %0 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %flagflags = getelementptr inbounds %struct.flagent, %struct.flagent* %0, i32 0, i32 6
  %1 = load i16, i16* %flagflags, align 2
  %conv = sext i16 %1 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  %cond1 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %2 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %2, i32 0, i32 2
  %3 = load i16, i16* %flagbit, align 2
  %conv2 = sext i16 %3 to i32
  %add = add nsw i32 %conv2, 65
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %cond1, i32 %add)
  store i32 0, i32* %cond, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %cond, align 4
  %5 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %numconds = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i32 0, i32 5
  %6 = load i16, i16* %numconds, align 2
  %conv3 = sext i16 %6 to i32
  %cmp = icmp slt i32 %4, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %conds = getelementptr inbounds %struct.flagent, %struct.flagent* %7, i32 0, i32 7
  %arraydecay = getelementptr inbounds [228 x i8], [228 x i8]* %conds, i32 0, i32 0
  %8 = load i32, i32* %cond, align 4
  %shl = shl i32 1, %8
  call void @setdump(i8* %arraydecay, i32 %shl)
  %9 = load i32, i32* %cond, align 4
  %10 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %numconds5 = getelementptr inbounds %struct.flagent, %struct.flagent* %10, i32 0, i32 5
  %11 = load i16, i16* %numconds5, align 2
  %conv6 = sext i16 %11 to i32
  %sub = sub nsw i32 %conv6, 1
  %cmp7 = icmp slt i32 %9, %sub
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %cond, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %cond, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %cond, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.end
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %16)
  %17 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %17, i32 0, i32 3
  %18 = load i16, i16* %stripl, align 2
  %tobool17 = icmp ne i16 %18, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.14
  %19 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %strip = getelementptr inbounds %struct.flagent, %struct.flagent* %19, i32 0, i32 0
  %20 = load i8*, i8** %strip, align 8
  %call19 = call i8* @ichartosstr(i8* %20, i32 1)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %call19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.14
  %21 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %21, i32 0, i32 4
  %22 = load i16, i16* %affl, align 2
  %conv22 = sext i16 %22 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %23 = load %struct.flagent*, %struct.flagent** %flagp.addr, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %23, i32 0, i32 1
  %24 = load i8*, i8** %affix, align 8
  %call24 = call i8* @ichartosstr(i8* %24, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi i8* [ %call24, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %cond25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setdump(i8* %setp, i32 %mask) #0 {
entry:
  %setp.addr = alloca i8*, align 8
  %mask.addr = alloca i32, align 4
  %cnum = alloca i32, align 4
  %firstnz = alloca i32, align 4
  %numnz = alloca i32, align 4
  store i8* %setp, i8** %setp.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store i32 0, i32* %numnz, align 4
  store i32 0, i32* %firstnz, align 4
  store i32 128, i32* %cnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i32, i32* %cnum, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %cnum, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %cnum, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %setp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %mask.addr, align 4
  %and = and i32 %conv, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %numnz, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %numnz, align 4
  %6 = load i32, i32* %cnum, align 4
  store i32 %6, i32* %firstnz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %numnz, align 4
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  %8 = load i32, i32* %firstnz, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @_IO_putc(i32 %8, %struct._IO_FILE* %9)
  br label %if.end.19

if.else:                                          ; preds = %for.end
  %10 = load i32, i32* %numnz, align 4
  %cmp4 = icmp eq i32 %10, 128
  br i1 %cmp4, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %11)
  br label %if.end.18

if.else.8:                                        ; preds = %if.else
  %12 = load i32, i32* %numnz, align 4
  %cmp9 = icmp sgt i32 %12, 64
  br i1 %cmp9, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else.8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %13 = load i8*, i8** %setp.addr, align 8
  %14 = load i32, i32* %mask.addr, align 4
  call void @subsetdump(i8* %13, i32 %14, i32 0)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %15)
  br label %if.end.17

if.else.14:                                       ; preds = %if.else.8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @_IO_putc(i32 91, %struct._IO_FILE* %16)
  %17 = load i8*, i8** %setp.addr, align 8
  %18 = load i32, i32* %mask.addr, align 4
  %19 = load i32, i32* %mask.addr, align 4
  call void @subsetdump(i8* %17, i32 %18, i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.6
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.3
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i8* @ichartosstr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @subsetdump(i8* %setp, i32 %mask, i32 %dumpval) #0 {
entry:
  %setp.addr = alloca i8*, align 8
  %mask.addr = alloca i32, align 4
  %dumpval.addr = alloca i32, align 4
  %cnum = alloca i32, align 4
  %rangestart = alloca i32, align 4
  store i8* %setp, i8** %setp.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store i32 %dumpval, i32* %dumpval.addr, align 4
  store i32 0, i32* %cnum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %0 = load i32, i32* %cnum, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %setp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* %dumpval.addr, align 4
  %xor = xor i32 %conv, %3
  %4 = load i32, i32* %mask.addr, align 4
  %and = and i32 %xor, %4
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %cnum, align 4
  store i32 %5, i32* %rangestart, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %6 = load i32, i32* %cnum, align 4
  %cmp4 = icmp slt i32 %6, 128
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i8*, i8** %setp.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %9 = load i32, i32* %dumpval.addr, align 4
  %xor8 = xor i32 %conv7, %9
  %10 = load i32, i32* %mask.addr, align 4
  %and9 = and i32 %xor8, %10
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body.6
  br label %for.end

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i8*, i8** %setp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %setp.addr, align 8
  %12 = load i32, i32* %cnum, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %cnum, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then.10, %for.cond.3
  %13 = load i32, i32* %cnum, align 4
  %14 = load i32, i32* %rangestart, align 4
  %add = add nsw i32 %14, 1
  %cmp11 = icmp eq i32 %13, %add
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.end
  %15 = load i32, i32* %rangestart, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @_IO_putc(i32 %15, %struct._IO_FILE* %16)
  br label %if.end.25

if.else:                                          ; preds = %for.end
  %17 = load i32, i32* %cnum, align 4
  %18 = load i32, i32* %rangestart, align 4
  %add14 = add nsw i32 %18, 3
  %cmp15 = icmp sle i32 %17, %add14
  br i1 %cmp15, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.17
  %19 = load i32, i32* %rangestart, align 4
  %20 = load i32, i32* %cnum, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %rangestart, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @_IO_putc(i32 %21, %struct._IO_FILE* %22)
  %23 = load i32, i32* %rangestart, align 4
  %inc21 = add nsw i32 %23, 1
  store i32 %inc21, i32* %rangestart, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.24

if.else.22:                                       ; preds = %if.else
  %24 = load i32, i32* %rangestart, align 4
  %25 = load i32, i32* %cnum, align 4
  %sub = sub nsw i32 %25, 1
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %24, i32 %sub)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %while.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %26 = load i8*, i8** %setp.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr28, i8** %setp.addr, align 8
  %27 = load i32, i32* %cnum, align 4
  %inc29 = add nsw i32 %27, 1
  store i32 %inc29, i32* %cnum, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
