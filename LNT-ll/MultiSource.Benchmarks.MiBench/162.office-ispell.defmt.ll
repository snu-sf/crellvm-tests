; ModuleID = './MultiSource.Benchmarks.MiBench/162.office-ispell.defmt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }

@TeX_comment = internal global i32 0, align 4
@save_math_mode = internal global i32 0, align 4
@math_mode = external global i32, align 4
@save_LaTeX_Mode = internal global i8 0, align 1
@LaTeX_Mode = external global i8, align 1
@hashheader = external global %struct.hashheader, align 4
@contextbufs = external global [10 x [8192 x i8]], align 16
@currentchar = external global i8*, align 8
@tflag = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"if t\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"if n\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ds \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"de \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nr \00", align 1
@lflag = external global i32, align 4
@aflag = external global i32, align 4
@ctoken = external global [120 x i8], align 16
@itoken = external global [120 x i8], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/defmt.c\00", align 1
@minword = external global i32, align 4
@cflag = external global i32, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@terse = external global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@hits = external global [10 x %struct.success], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"+ %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@pcount = external global i32, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@easypossibilities = external global i32, align 4
@contextoffset = external global i32, align 4
@possibilities = external global [100 x [120 x i8]], align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"# %s %d\0A\00", align 1
@quit = external global i32, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"****ERROR in parsing TeX math mode!\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\5Cend\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"equation\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"eqnarray\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"displaymath\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"minipage\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"tabular*\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"***ERROR in LR to math-mode switch.\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"makebox\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"fbox\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"framebox\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"parbox\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"raisebox\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"cite\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"nocite\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"includeonly\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"documentstyle\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"documentclass\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"usepackage\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pagestyle\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"pagenumbering\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"bibliography\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"bibitem\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"hyphenation\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"pageref\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"setcounter\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"addtocounter\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"setlength\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"addtolength\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"settowidth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"verb\00", align 1

; Function Attrs: nounwind uwtable
define i8* @skipoverword(i8* %bufp) #0 {
entry:
  %bufp.addr = alloca i8*, align 8
  %lastboundary = alloca i8*, align 8
  %scharlen = alloca i32, align 4
  store i8* %bufp, i8** %bufp.addr, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.33, %entry
  %0 = load i8*, i8** %bufp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %2 = load i32, i32* @TeX_comment, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @save_math_mode, align 4
  store i32 %3, i32* @math_mode, align 4
  %4 = load i8, i8* @save_LaTeX_Mode, align 1
  store i8 %4, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @TeX_comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %for.end

if.else:                                          ; preds = %for.cond
  %5 = load i8*, i8** %bufp.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %7 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %bufp.addr, align 8
  %call = call i32 @stringcharlen(i8* %8, i32 0)
  store i32 %call, i32* %scharlen, align 4
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %scharlen, align 4
  %10 = load i8*, i8** %bufp.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %bufp.addr, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %if.end.32

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %11 = load i8*, i8** %bufp.addr, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom9 = zext i8 %12 to i64
  %arrayidx10 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom9
  %13 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.8
  %14 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %bufp.addr, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %if.end.31

if.else.13:                                       ; preds = %if.else.8
  %15 = load i8*, i8** %bufp.addr, align 8
  %16 = load i8, i8* %15, align 1
  %idxprom14 = zext i8 %16 to i64
  %arrayidx15 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %tobool16 = icmp ne i8 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.else.29

if.then.17:                                       ; preds = %if.else.13
  %18 = load i8*, i8** %lastboundary, align 8
  %cmp18 = icmp eq i8* %18, null
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.then.17
  %19 = load i8*, i8** %bufp.addr, align 8
  store i8* %19, i8** %lastboundary, align 8
  br label %if.end.27

if.else.21:                                       ; preds = %if.then.17
  %20 = load i8*, i8** %lastboundary, align 8
  %21 = load i8*, i8** %bufp.addr, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %21, i64 -1
  %cmp23 = icmp eq i8* %20, %add.ptr22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else.21
  br label %for.end

if.end.26:                                        ; preds = %if.else.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.20
  %22 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr28, i8** %bufp.addr, align 8
  br label %if.end.30

if.else.29:                                       ; preds = %if.else.13
  br label %for.end

if.end.30:                                        ; preds = %if.end.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.12
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.7
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  br label %for.cond

for.end:                                          ; preds = %if.else.29, %if.then.25, %if.end
  %23 = load i8*, i8** %lastboundary, align 8
  %cmp34 = icmp ne i8* %23, null
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %24 = load i8*, i8** %lastboundary, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %25 = load i8*, i8** %bufp.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %24, %cond.true ], [ %25, %cond.false ]
  ret i8* %cond
}

declare i32 @stringcharlen(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @checkline(%struct._IO_FILE* %ofile) #0 {
entry:
  %ofile.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %hadlf = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %ilen = alloca i32, align 4
  store %struct._IO_FILE* %ofile, %struct._IO_FILE** %ofile.addr, align 8
  store i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** @currentchar, align 8
  %call = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) #4
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4
  %0 = load i32, i32* %len, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv1, 10
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %hadlf, align 4
  %2 = load i32, i32* %hadlf, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %len, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [8192 x i8], [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]], [10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @tflag, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.end.117, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %5 = load i8*, i8** @currentchar, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = sext i8 %6 to i32
  %7 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.then.6
  %8 = load i8*, i8** @currentchar, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call11 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4) #4
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i8*, i8** @currentchar, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %9, i64 1
  %call15 = call i32 @strncmp(i8* %add.ptr14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4) #4
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.36

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true
  call void @copyout(i8** @currentchar, i32 5)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.18
  %10 = load i8*, i8** @currentchar, align 8
  %11 = load i8, i8* %10, align 1
  %conv19 = sext i8 %11 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %land.rhs, label %land.end.35

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** @currentchar, align 8
  %13 = load i8, i8* %12, align 1
  %conv21 = zext i8 %13 to i32
  %cmp22 = icmp sgt i32 %conv21, 0
  br i1 %cmp22, label %land.lhs.true.24, label %land.end

land.lhs.true.24:                                 ; preds = %land.rhs
  %14 = load i8*, i8** @currentchar, align 8
  %15 = load i8, i8* %14, align 1
  %conv25 = zext i8 %15 to i32
  %cmp26 = icmp slt i32 %conv25, 128
  br i1 %cmp26, label %land.rhs.28, label %land.end

land.rhs.28:                                      ; preds = %land.lhs.true.24
  %16 = load i8*, i8** @currentchar, align 8
  %17 = load i8, i8* %16, align 1
  %conv29 = zext i8 %17 to i32
  %idxprom30 = sext i32 %conv29 to i64
  %call31 = call i16** @__ctype_b_loc() #5
  %18 = load i16*, i16** %call31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %18, i64 %idxprom30
  %19 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %19 to i32
  %and = and i32 %conv33, 8192
  %tobool34 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.28, %land.lhs.true.24, %land.rhs
  %20 = phi i1 [ false, %land.lhs.true.24 ], [ false, %land.rhs ], [ %tobool34, %land.rhs.28 ]
  br label %land.end.35

land.end.35:                                      ; preds = %land.end, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %20, %land.end ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.35
  call void @copyout(i8** @currentchar, i32 1)
  br label %while.cond

while.end:                                        ; preds = %land.end.35
  br label %if.end.36

if.end.36:                                        ; preds = %while.end, %lor.lhs.false, %if.then.6
  %22 = load i8*, i8** @currentchar, align 8
  %23 = load i8, i8* %22, align 1
  %conv37 = sext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %conv38 = sext i8 %24 to i32
  %cmp39 = icmp eq i32 %conv37, %conv38
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.116

land.lhs.true.41:                                 ; preds = %if.end.36
  %25 = load i8*, i8** @currentchar, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %25, i64 1
  %call43 = call i32 @strncmp(i8* %add.ptr42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 3) #4
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.56, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.41
  %26 = load i8*, i8** @currentchar, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %26, i64 1
  %call48 = call i32 @strncmp(i8* %add.ptr47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 3) #4
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.46
  %27 = load i8*, i8** @currentchar, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %27, i64 1
  %call53 = call i32 @strncmp(i8* %add.ptr52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3) #4
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.116

if.then.56:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.46, %land.lhs.true.41
  call void @copyout(i8** @currentchar, i32 4)
  br label %while.cond.57

while.cond.57:                                    ; preds = %while.body.78, %if.then.56
  %28 = load i8*, i8** @currentchar, align 8
  %29 = load i8, i8* %28, align 1
  %conv58 = sext i8 %29 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %land.rhs.60, label %land.end.77

land.rhs.60:                                      ; preds = %while.cond.57
  %30 = load i8*, i8** @currentchar, align 8
  %31 = load i8, i8* %30, align 1
  %conv61 = zext i8 %31 to i32
  %cmp62 = icmp sgt i32 %conv61, 0
  br i1 %cmp62, label %land.lhs.true.64, label %land.end.76

land.lhs.true.64:                                 ; preds = %land.rhs.60
  %32 = load i8*, i8** @currentchar, align 8
  %33 = load i8, i8* %32, align 1
  %conv65 = zext i8 %33 to i32
  %cmp66 = icmp slt i32 %conv65, 128
  br i1 %cmp66, label %land.rhs.68, label %land.end.76

land.rhs.68:                                      ; preds = %land.lhs.true.64
  %34 = load i8*, i8** @currentchar, align 8
  %35 = load i8, i8* %34, align 1
  %conv69 = zext i8 %35 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %call71 = call i16** @__ctype_b_loc() #5
  %36 = load i16*, i16** %call71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %36, i64 %idxprom70
  %37 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %37 to i32
  %and74 = and i32 %conv73, 8192
  %tobool75 = icmp ne i32 %and74, 0
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.68, %land.lhs.true.64, %land.rhs.60
  %38 = phi i1 [ false, %land.lhs.true.64 ], [ false, %land.rhs.60 ], [ %tobool75, %land.rhs.68 ]
  br label %land.end.77

land.end.77:                                      ; preds = %land.end.76, %while.cond.57
  %39 = phi i1 [ false, %while.cond.57 ], [ %38, %land.end.76 ]
  br i1 %39, label %while.body.78, label %while.end.79

while.body.78:                                    ; preds = %land.end.77
  call void @copyout(i8** @currentchar, i32 1)
  br label %while.cond.57

while.end.79:                                     ; preds = %land.end.77
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.101, %while.end.79
  %40 = load i8*, i8** @currentchar, align 8
  %41 = load i8, i8* %40, align 1
  %conv81 = sext i8 %41 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %land.rhs.83, label %land.end.100

land.rhs.83:                                      ; preds = %while.cond.80
  %42 = load i8*, i8** @currentchar, align 8
  %43 = load i8, i8* %42, align 1
  %conv84 = zext i8 %43 to i32
  %cmp85 = icmp sgt i32 %conv84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %land.end.99

land.lhs.true.87:                                 ; preds = %land.rhs.83
  %44 = load i8*, i8** @currentchar, align 8
  %45 = load i8, i8* %44, align 1
  %conv88 = zext i8 %45 to i32
  %cmp89 = icmp slt i32 %conv88, 128
  br i1 %cmp89, label %land.rhs.91, label %land.end.99

land.rhs.91:                                      ; preds = %land.lhs.true.87
  %46 = load i8*, i8** @currentchar, align 8
  %47 = load i8, i8* %46, align 1
  %conv92 = zext i8 %47 to i32
  %idxprom93 = sext i32 %conv92 to i64
  %call94 = call i16** @__ctype_b_loc() #5
  %48 = load i16*, i16** %call94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %48, i64 %idxprom93
  %49 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %49 to i32
  %and97 = and i32 %conv96, 8192
  %tobool98 = icmp ne i32 %and97, 0
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.91, %land.lhs.true.87, %land.rhs.83
  %50 = phi i1 [ false, %land.lhs.true.87 ], [ false, %land.rhs.83 ], [ %tobool98, %land.rhs.91 ]
  %lnot = xor i1 %50, true
  br label %land.end.100

land.end.100:                                     ; preds = %land.end.99, %while.cond.80
  %51 = phi i1 [ false, %while.cond.80 ], [ %lnot, %land.end.99 ]
  br i1 %51, label %while.body.101, label %while.end.102

while.body.101:                                   ; preds = %land.end.100
  call void @copyout(i8** @currentchar, i32 1)
  br label %while.cond.80

while.end.102:                                    ; preds = %land.end.100
  %52 = load i8*, i8** @currentchar, align 8
  %53 = load i8, i8* %52, align 1
  %conv103 = sext i8 %53 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %while.end.102
  %54 = load i32, i32* @lflag, align 4
  %tobool107 = icmp ne i32 %54, 0
  br i1 %tobool107, label %if.end.114, label %land.lhs.true.108

land.lhs.true.108:                                ; preds = %if.then.106
  %55 = load i32, i32* @aflag, align 4
  %tobool109 = icmp ne i32 %55, 0
  br i1 %tobool109, label %if.then.112, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.108
  %56 = load i32, i32* %hadlf, align 4
  %tobool111 = icmp ne i32 %56, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %lor.lhs.false.110, %land.lhs.true.108
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call113 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %57)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %lor.lhs.false.110, %if.then.106
  br label %if.end.310

if.end.115:                                       ; preds = %while.end.102
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %lor.lhs.false.51, %if.end.36
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end
  %58 = load i32, i32* @tflag, align 4
  %tobool118 = icmp ne i32 %58, 0
  br i1 %tobool118, label %if.end.169, label %land.lhs.true.119

land.lhs.true.119:                                ; preds = %if.end.117
  %59 = load i8*, i8** @currentchar, align 8
  %60 = load i8, i8* %59, align 1
  %conv120 = sext i8 %60 to i32
  %61 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %conv121 = sext i8 %61 to i32
  %cmp122 = icmp eq i32 %conv120, %conv121
  br i1 %cmp122, label %if.then.124, label %if.end.169

if.then.124:                                      ; preds = %land.lhs.true.119
  br label %while.cond.125

while.cond.125:                                   ; preds = %if.end.154, %if.then.124
  %62 = load i8*, i8** @currentchar, align 8
  %63 = load i8, i8* %62, align 1
  %conv126 = sext i8 %63 to i32
  %tobool127 = icmp ne i32 %conv126, 0
  br i1 %tobool127, label %land.rhs.128, label %land.end.146

land.rhs.128:                                     ; preds = %while.cond.125
  %64 = load i8*, i8** @currentchar, align 8
  %65 = load i8, i8* %64, align 1
  %conv129 = zext i8 %65 to i32
  %cmp130 = icmp sgt i32 %conv129, 0
  br i1 %cmp130, label %land.lhs.true.132, label %land.end.144

land.lhs.true.132:                                ; preds = %land.rhs.128
  %66 = load i8*, i8** @currentchar, align 8
  %67 = load i8, i8* %66, align 1
  %conv133 = zext i8 %67 to i32
  %cmp134 = icmp slt i32 %conv133, 128
  br i1 %cmp134, label %land.rhs.136, label %land.end.144

land.rhs.136:                                     ; preds = %land.lhs.true.132
  %68 = load i8*, i8** @currentchar, align 8
  %69 = load i8, i8* %68, align 1
  %conv137 = zext i8 %69 to i32
  %idxprom138 = sext i32 %conv137 to i64
  %call139 = call i16** @__ctype_b_loc() #5
  %70 = load i16*, i16** %call139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %70, i64 %idxprom138
  %71 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %71 to i32
  %and142 = and i32 %conv141, 8192
  %tobool143 = icmp ne i32 %and142, 0
  br label %land.end.144

land.end.144:                                     ; preds = %land.rhs.136, %land.lhs.true.132, %land.rhs.128
  %72 = phi i1 [ false, %land.lhs.true.132 ], [ false, %land.rhs.128 ], [ %tobool143, %land.rhs.136 ]
  %lnot145 = xor i1 %72, true
  br label %land.end.146

land.end.146:                                     ; preds = %land.end.144, %while.cond.125
  %73 = phi i1 [ false, %while.cond.125 ], [ %lnot145, %land.end.144 ]
  br i1 %73, label %while.body.147, label %while.end.155

while.body.147:                                   ; preds = %land.end.146
  %74 = load i32, i32* @aflag, align 4
  %tobool148 = icmp ne i32 %74, 0
  br i1 %tobool148, label %if.end.154, label %land.lhs.true.149

land.lhs.true.149:                                ; preds = %while.body.147
  %75 = load i32, i32* @lflag, align 4
  %tobool150 = icmp ne i32 %75, 0
  br i1 %tobool150, label %if.end.154, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.149
  %76 = load i8*, i8** @currentchar, align 8
  %77 = load i8, i8* %76, align 1
  %conv152 = sext i8 %77 to i32
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call153 = call i32 @_IO_putc(i32 %conv152, %struct._IO_FILE* %78)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %land.lhs.true.149, %while.body.147
  %79 = load i8*, i8** @currentchar, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr, i8** @currentchar, align 8
  br label %while.cond.125

while.end.155:                                    ; preds = %land.end.146
  %80 = load i8*, i8** @currentchar, align 8
  %81 = load i8, i8* %80, align 1
  %conv156 = sext i8 %81 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.168

if.then.159:                                      ; preds = %while.end.155
  %82 = load i32, i32* @lflag, align 4
  %tobool160 = icmp ne i32 %82, 0
  br i1 %tobool160, label %if.end.167, label %land.lhs.true.161

land.lhs.true.161:                                ; preds = %if.then.159
  %83 = load i32, i32* @aflag, align 4
  %tobool162 = icmp ne i32 %83, 0
  br i1 %tobool162, label %if.then.165, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %land.lhs.true.161
  %84 = load i32, i32* %hadlf, align 4
  %tobool164 = icmp ne i32 %84, 0
  br i1 %tobool164, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %lor.lhs.false.163, %land.lhs.true.161
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call166 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %85)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %lor.lhs.false.163, %if.then.159
  br label %if.end.310

if.end.168:                                       ; preds = %while.end.155
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.119, %if.end.117
  br label %for.cond

for.cond:                                         ; preds = %if.end.301, %if.end.223, %if.end.169
  %86 = load i8*, i8** @currentchar, align 8
  %call170 = call i8* @skiptoword(i8* %86)
  store i8* %call170, i8** %p, align 8
  %87 = load i8*, i8** %p, align 8
  %88 = load i8*, i8** @currentchar, align 8
  %cmp171 = icmp ne i8* %87, %88
  br i1 %cmp171, label %if.then.173, label %if.end.175

if.then.173:                                      ; preds = %for.cond
  %89 = load i8*, i8** %p, align 8
  %90 = load i8*, i8** @currentchar, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv174 = trunc i64 %sub.ptr.sub to i32
  call void @copyout(i8** @currentchar, i32 %conv174)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %for.cond
  %91 = load i8*, i8** @currentchar, align 8
  %92 = load i8, i8* %91, align 1
  %conv176 = sext i8 %92 to i32
  %cmp177 = icmp eq i32 %conv176, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.175
  br label %for.end.302

if.end.180:                                       ; preds = %if.end.175
  store i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i8** %p, align 8
  %93 = load i8*, i8** @currentchar, align 8
  %call181 = call i8* @skipoverword(i8* %93)
  store i8* %call181, i8** %endp, align 8
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.189, %if.end.180
  %94 = load i8*, i8** @currentchar, align 8
  %95 = load i8*, i8** %endp, align 8
  %cmp183 = icmp ult i8* %94, %95
  br i1 %cmp183, label %land.rhs.185, label %land.end.188

land.rhs.185:                                     ; preds = %while.cond.182
  %96 = load i8*, i8** %p, align 8
  %cmp186 = icmp ult i8* %96, getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i64 119)
  br label %land.end.188

land.end.188:                                     ; preds = %land.rhs.185, %while.cond.182
  %97 = phi i1 [ false, %while.cond.182 ], [ %cmp186, %land.rhs.185 ]
  br i1 %97, label %while.body.189, label %while.end.192

while.body.189:                                   ; preds = %land.end.188
  %98 = load i8*, i8** @currentchar, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr190, i8** @currentchar, align 8
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %p, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr191, i8** %p, align 8
  store i8 %99, i8* %100, align 1
  br label %while.cond.182

while.end.192:                                    ; preds = %land.end.188
  %101 = load i8*, i8** %p, align 8
  store i8 0, i8* %101, align 1
  %call193 = call i32 @strtoichar(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i32 100, i32 0)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %while.end.192
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i32 466, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %while.end.192
  %call198 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0)) #4
  %conv199 = trunc i64 %call198 to i32
  store i32 %conv199, i32* %ilen, align 4
  %103 = load i32, i32* @lflag, align 4
  %tobool200 = icmp ne i32 %103, 0
  br i1 %tobool200, label %if.then.201, label %if.else

if.then.201:                                      ; preds = %if.end.197
  %104 = load i32, i32* %ilen, align 4
  %105 = load i32, i32* @minword, align 4
  %cmp202 = icmp sgt i32 %104, %105
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.214

land.lhs.true.204:                                ; preds = %if.then.201
  %call205 = call i32 @good(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end.214, label %land.lhs.true.207

land.lhs.true.207:                                ; preds = %land.lhs.true.204
  %106 = load i32, i32* @cflag, align 4
  %tobool208 = icmp ne i32 %106, 0
  br i1 %tobool208, label %if.end.214, label %land.lhs.true.209

land.lhs.true.209:                                ; preds = %land.lhs.true.207
  %call210 = call i32 @compoundgood(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i32 0)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.end.214, label %if.then.212

if.then.212:                                      ; preds = %land.lhs.true.209
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0))
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %land.lhs.true.209, %land.lhs.true.207, %land.lhs.true.204, %if.then.201
  br label %if.end.295

if.else:                                          ; preds = %if.end.197
  %108 = load i32, i32* @aflag, align 4
  %tobool215 = icmp ne i32 %108, 0
  br i1 %tobool215, label %if.then.216, label %if.else.290

if.then.216:                                      ; preds = %if.else
  %109 = load i32, i32* %ilen, align 4
  %110 = load i32, i32* @minword, align 4
  %cmp217 = icmp sle i32 %109, %110
  br i1 %cmp217, label %if.then.219, label %if.end.224

if.then.219:                                      ; preds = %if.then.216
  %111 = load i32, i32* @terse, align 4
  %tobool220 = icmp ne i32 %111, 0
  br i1 %tobool220, label %if.end.223, label %if.then.221

if.then.221:                                      ; preds = %if.then.219
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %if.then.219
  br label %for.cond

if.end.224:                                       ; preds = %if.then.216
  %call225 = call i32 @good(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then.227, label %if.else.244

if.then.227:                                      ; preds = %if.end.224
  %113 = load %struct.flagent*, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 1), align 8
  %cmp228 = icmp eq %struct.flagent* %113, null
  br i1 %cmp228, label %land.lhs.true.230, label %if.else.238

land.lhs.true.230:                                ; preds = %if.then.227
  %114 = load %struct.flagent*, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 2), align 8
  %cmp231 = icmp eq %struct.flagent* %114, null
  br i1 %cmp231, label %if.then.233, label %if.else.238

if.then.233:                                      ; preds = %land.lhs.true.230
  %115 = load i32, i32* @terse, align 4
  %tobool234 = icmp ne i32 %115, 0
  br i1 %tobool234, label %if.end.237, label %if.then.235

if.then.235:                                      ; preds = %if.then.233
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.then.233
  br label %if.end.243

if.else.238:                                      ; preds = %land.lhs.true.230, %if.then.227
  %117 = load i32, i32* @terse, align 4
  %tobool239 = icmp ne i32 %117, 0
  br i1 %tobool239, label %if.end.242, label %if.then.240

if.then.240:                                      ; preds = %if.else.238
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %119 = load %struct.dent*, %struct.dent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 0), align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %119, i32 0, i32 1
  %120 = load i8*, i8** %word, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %120)
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %if.else.238
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.237
  br label %if.end.289

if.else.244:                                      ; preds = %if.end.224
  %call245 = call i32 @compoundgood(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i32 0)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then.247, label %if.else.252

if.then.247:                                      ; preds = %if.else.244
  %121 = load i32, i32* @terse, align 4
  %tobool248 = icmp ne i32 %121, 0
  br i1 %tobool248, label %if.end.251, label %if.then.249

if.then.249:                                      ; preds = %if.then.247
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.249, %if.then.247
  br label %if.end.288

if.else.252:                                      ; preds = %if.else.244
  call void @makepossibilities(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0))
  %123 = load i32, i32* @pcount, align 4
  %tobool253 = icmp ne i32 %123, 0
  br i1 %tobool253, label %if.then.254, label %if.else.279

if.then.254:                                      ; preds = %if.else.252
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %125 = load i32, i32* @easypossibilities, align 4
  %tobool255 = icmp ne i32 %125, 0
  %cond = select i1 %tobool255, i32 38, i32 63
  %126 = load i32, i32* @easypossibilities, align 4
  %127 = load i8*, i8** @currentchar, align 8
  %sub.ptr.lhs.cast256 = ptrtoint i8* %127 to i64
  %sub.ptr.sub257 = sub i64 %sub.ptr.lhs.cast256, ptrtoint ([10 x [8192 x i8]]* @contextbufs to i64)
  %call258 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0)) #4
  %sub259 = sub i64 %sub.ptr.sub257, %call258
  %conv260 = trunc i64 %sub259 to i32
  %128 = load i32, i32* @contextoffset, align 4
  %add = add nsw i32 %conv260, %128
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 %cond, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i32 %126, i32 %add)
  store i32 0, i32* %i, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc, %if.then.254
  %129 = load i32, i32* %i, align 4
  %cmp263 = icmp slt i32 %129, 100
  br i1 %cmp263, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.262
  %130 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %130 to i64
  %arrayidx266 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom265
  %arrayidx267 = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx266, i32 0, i64 0
  %131 = load i8, i8* %arrayidx267, align 1
  %conv268 = sext i8 %131 to i32
  %cmp269 = icmp eq i32 %conv268, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %for.body
  br label %for.end

if.end.272:                                       ; preds = %for.body
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %133 = load i32, i32* %i, align 4
  %tobool273 = icmp ne i32 %133, 0
  %cond274 = select i1 %tobool273, i32 44, i32 58
  %134 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %134 to i64
  %arrayidx276 = getelementptr inbounds [100 x [120 x i8]], [100 x [120 x i8]]* @possibilities, i32 0, i64 %idxprom275
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %arrayidx276, i32 0, i32 0
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %cond274, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %if.end.272
  %135 = load i32, i32* %i, align 4
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.262

for.end:                                          ; preds = %if.then.271, %for.cond.262
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.287

if.else.279:                                      ; preds = %if.else.252
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %138 = load i8*, i8** @currentchar, align 8
  %sub.ptr.lhs.cast280 = ptrtoint i8* %138 to i64
  %sub.ptr.sub281 = sub i64 %sub.ptr.lhs.cast280, ptrtoint ([10 x [8192 x i8]]* @contextbufs to i64)
  %call282 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0)) #4
  %sub283 = sub i64 %sub.ptr.sub281, %call282
  %conv284 = trunc i64 %sub283 to i32
  %139 = load i32, i32* @contextoffset, align 4
  %add285 = add nsw i32 %conv284, %139
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i32 %add285)
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.279, %for.end
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.251
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.243
  br label %if.end.294

if.else.290:                                      ; preds = %if.else
  %140 = load i32, i32* @quit, align 4
  %tobool291 = icmp ne i32 %140, 0
  br i1 %tobool291, label %if.end.293, label %if.then.292

if.then.292:                                      ; preds = %if.else.290
  call void @correct(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @itoken, i32 0, i32 0), i32 120, i8** @currentchar)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %if.else.290
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.289
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.214
  %141 = load i32, i32* @aflag, align 4
  %tobool296 = icmp ne i32 %141, 0
  br i1 %tobool296, label %if.end.301, label %land.lhs.true.297

land.lhs.true.297:                                ; preds = %if.end.295
  %142 = load i32, i32* @lflag, align 4
  %tobool298 = icmp ne i32 %142, 0
  br i1 %tobool298, label %if.end.301, label %if.then.299

if.then.299:                                      ; preds = %land.lhs.true.297
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @ctoken, i32 0, i32 0))
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.299, %land.lhs.true.297, %if.end.295
  br label %for.cond

for.end.302:                                      ; preds = %if.then.179
  %144 = load i32, i32* @lflag, align 4
  %tobool303 = icmp ne i32 %144, 0
  br i1 %tobool303, label %if.end.310, label %land.lhs.true.304

land.lhs.true.304:                                ; preds = %for.end.302
  %145 = load i32, i32* @aflag, align 4
  %tobool305 = icmp ne i32 %145, 0
  br i1 %tobool305, label %if.then.308, label %lor.lhs.false.306

lor.lhs.false.306:                                ; preds = %land.lhs.true.304
  %146 = load i32, i32* %hadlf, align 4
  %tobool307 = icmp ne i32 %146, 0
  br i1 %tobool307, label %if.then.308, label %if.end.310

if.then.308:                                      ; preds = %lor.lhs.false.306, %land.lhs.true.304
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %ofile.addr, align 8
  %call309 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %147)
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.114, %if.end.167, %if.then.308, %lor.lhs.false.306, %for.end.302
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare void @copyout(i8**, i32) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @skiptoword(i8* %bufp) #0 {
entry:
  %bufp.addr = alloca i8*, align 8
  store i8* %bufp, i8** %bufp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.244, %if.end.207, %if.then.189, %if.end.183, %if.end.160, %entry
  %0 = load i8*, i8** %bufp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end.15

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %bufp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %land.lhs.true, label %land.lhs.true.4

land.lhs.true:                                    ; preds = %land.rhs
  %5 = load i8*, i8** %bufp.addr, align 8
  %call = call i32 @stringcharlen(i8* %5, i32 0)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true, %land.rhs
  %6 = load i8*, i8** %bufp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom5 = zext i8 %7 to i64
  %arrayidx6 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %8, 0
  br i1 %tobool7, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %land.lhs.true.4, %land.lhs.true
  %9 = load i8*, i8** %bufp.addr, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom8 = zext i8 %10 to i64
  %arrayidx9 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %11 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* @tflag, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %land.rhs.13, label %land.end

land.rhs.13:                                      ; preds = %lor.rhs
  %13 = load i32, i32* @math_mode, align 4
  %and = and i32 %13, 1
  %tobool14 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.13, %lor.rhs
  %14 = phi i1 [ false, %lor.rhs ], [ %tobool14, %land.rhs.13 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %land.lhs.true.4
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.4 ], [ %14, %land.end ]
  br label %land.end.15

land.end.15:                                      ; preds = %lor.end, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %15, %lor.end ]
  br i1 %16, label %while.body, label %while.end.245

while.body:                                       ; preds = %land.end.15
  %17 = load i32, i32* @tflag, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then, label %if.else.144

if.then:                                          ; preds = %while.body
  %18 = load i8*, i8** %bufp.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %conv18 = sext i8 %20 to i32
  %cmp19 = icmp eq i32 %conv17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then
  %21 = load i32, i32* @TeX_comment, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  %22 = load i32, i32* @math_mode, align 4
  store i32 %22, i32* @save_math_mode, align 4
  %23 = load i8, i8* @LaTeX_Mode, align 1
  store i8 %23, i8* @save_LaTeX_Mode, align 1
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 1, i32* @TeX_comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then.21
  br label %if.end.138

if.else:                                          ; preds = %if.then
  %24 = load i32, i32* @math_mode, align 4
  %and24 = and i32 %24, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.79

if.then.26:                                       ; preds = %if.else
  %25 = load i8, i8* @LaTeX_Mode, align 1
  %conv27 = sext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv27, 101
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.33

land.lhs.true.30:                                 ; preds = %if.then.26
  %call31 = call i32 @TeX_math_check(i32 101, i8** %bufp.addr)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.40, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.30, %if.then.26
  %26 = load i8, i8* @LaTeX_Mode, align 1
  %conv34 = sext i8 %26 to i32
  %cmp35 = icmp eq i32 %conv34, 109
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.41

land.lhs.true.37:                                 ; preds = %lor.lhs.false.33
  %call38 = call i32 @TeX_LR_check(i32 1, i8** %bufp.addr)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.37, %land.lhs.true.30
  %27 = load i32, i32* @math_mode, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* @math_mode, align 4
  br label %if.end.73

if.else.41:                                       ; preds = %land.lhs.true.37, %lor.lhs.false.33
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.62, %if.else.41
  %28 = load i8*, i8** %bufp.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv43 = sext i8 %29 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %land.rhs.45, label %land.end.61

land.rhs.45:                                      ; preds = %while.cond.42
  %30 = load i8*, i8** %bufp.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv46 = sext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 8), align 1
  %conv47 = sext i8 %32 to i32
  %cmp48 = icmp eq i32 %conv46, %conv47
  br i1 %cmp48, label %lor.end.60, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.rhs.45
  %33 = load i8*, i8** %bufp.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv51 = sext i8 %34 to i32
  %35 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv52 = sext i8 %35 to i32
  %cmp53 = icmp eq i32 %conv51, %conv52
  br i1 %cmp53, label %lor.end.60, label %lor.rhs.55

lor.rhs.55:                                       ; preds = %lor.lhs.false.50
  %36 = load i8*, i8** %bufp.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv56 = sext i8 %37 to i32
  %38 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %conv57 = sext i8 %38 to i32
  %cmp58 = icmp eq i32 %conv56, %conv57
  br label %lor.end.60

lor.end.60:                                       ; preds = %lor.rhs.55, %lor.lhs.false.50, %land.rhs.45
  %39 = phi i1 [ true, %lor.lhs.false.50 ], [ true, %land.rhs.45 ], [ %cmp58, %lor.rhs.55 ]
  %lnot = xor i1 %39, true
  br label %land.end.61

land.end.61:                                      ; preds = %lor.end.60, %while.cond.42
  %40 = phi i1 [ false, %while.cond.42 ], [ %lnot, %lor.end.60 ]
  br i1 %40, label %while.body.62, label %while.end

while.body.62:                                    ; preds = %land.end.61
  %41 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %bufp.addr, align 8
  br label %while.cond.42

while.end:                                        ; preds = %land.end.61
  %42 = load i8*, i8** %bufp.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv63 = sext i8 %43 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %while.end
  br label %while.end.245

if.end.67:                                        ; preds = %while.end
  %call68 = call i32 @TeX_math_end(i8** %bufp.addr)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %44 = load i32, i32* @math_mode, align 4
  %dec71 = add nsw i32 %44, -1
  store i32 %dec71, i32* @math_mode, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.40
  %45 = load i32, i32* @math_mode, align 4
  %cmp74 = icmp slt i32 %45, 0
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.73
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* @math_mode, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  br label %if.end.137

if.else.79:                                       ; preds = %if.else
  %47 = load i32, i32* @math_mode, align 4
  %cmp80 = icmp sgt i32 %47, 1
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.93

land.lhs.true.82:                                 ; preds = %if.else.79
  %48 = load i8*, i8** %bufp.addr, align 8
  %49 = load i8, i8* %48, align 1
  %conv83 = sext i8 %49 to i32
  %50 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 5), align 1
  %conv84 = sext i8 %50 to i32
  %cmp85 = icmp eq i32 %conv83, %conv84
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.93

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %51 = load i32, i32* @math_mode, align 4
  %52 = load i32, i32* @math_mode, align 4
  %and88 = and i32 %52, 127
  %mul = mul nsw i32 %and88, 128
  %cmp89 = icmp slt i32 %51, %mul
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %land.lhs.true.87
  %53 = load i32, i32* @math_mode, align 4
  %dec92 = add nsw i32 %53, -1
  store i32 %dec92, i32* @math_mode, align 4
  br label %if.end.136

if.else.93:                                       ; preds = %land.lhs.true.87, %land.lhs.true.82, %if.else.79
  %54 = load i8, i8* @LaTeX_Mode, align 1
  %conv94 = sext i8 %54 to i32
  %cmp95 = icmp eq i32 %conv94, 109
  br i1 %cmp95, label %if.then.108, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %if.else.93
  %55 = load i32, i32* @math_mode, align 4
  %tobool98 = icmp ne i32 %55, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.else.114

land.lhs.true.99:                                 ; preds = %lor.lhs.false.97
  %56 = load i32, i32* @math_mode, align 4
  %57 = load i32, i32* @math_mode, align 4
  %and100 = and i32 %57, 127
  %mul101 = mul nsw i32 %and100, 128
  %cmp102 = icmp sge i32 %56, %mul101
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.114

land.lhs.true.104:                                ; preds = %land.lhs.true.99
  %58 = load i8*, i8** %bufp.addr, align 8
  %call105 = call i32 @TeX_strncmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 4)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.else.114

if.then.108:                                      ; preds = %land.lhs.true.104, %if.else.93
  %call109 = call i32 @TeX_LR_check(i32 0, i8** %bufp.addr)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.108
  %59 = load i32, i32* @math_mode, align 4
  %dec112 = add nsw i32 %59, -1
  store i32 %dec112, i32* @math_mode, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.then.108
  br label %if.end.135

if.else.114:                                      ; preds = %land.lhs.true.104, %land.lhs.true.99, %lor.lhs.false.97
  %60 = load i8, i8* @LaTeX_Mode, align 1
  %conv115 = sext i8 %60 to i32
  %cmp116 = icmp eq i32 %conv115, 98
  br i1 %cmp116, label %land.lhs.true.118, label %if.else.122

land.lhs.true.118:                                ; preds = %if.else.114
  %call119 = call i32 @TeX_math_check(i32 98, i8** %bufp.addr)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.118
  %61 = load i32, i32* @math_mode, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* @math_mode, align 4
  br label %if.end.134

if.else.122:                                      ; preds = %land.lhs.true.118, %if.else.114
  %62 = load i8, i8* @LaTeX_Mode, align 1
  %conv123 = sext i8 %62 to i32
  %cmp124 = icmp eq i32 %conv123, 114
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.else.122
  call void @TeX_skip_parens(i8** %bufp.addr)
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %if.end.133

if.else.127:                                      ; preds = %if.else.122
  %call128 = call i32 @TeX_math_begin(i8** %bufp.addr)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.else.127
  %63 = load i32, i32* @math_mode, align 4
  %inc131 = add nsw i32 %63, 1
  store i32 %inc131, i32* @math_mode, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.else.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.126
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.121
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.113
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.91
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.78
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end
  %64 = load i8*, i8** %bufp.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv139 = sext i8 %65 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  br label %while.end.245

if.end.143:                                       ; preds = %if.end.138
  br label %if.end.211

if.else.144:                                      ; preds = %while.body
  %66 = load i8*, i8** %bufp.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv145 = sext i8 %67 to i32
  %68 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 3), align 1
  %conv146 = sext i8 %68 to i32
  %cmp147 = icmp eq i32 %conv145, %conv146
  br i1 %cmp147, label %if.then.149, label %if.end.210

if.then.149:                                      ; preds = %if.else.144
  %69 = load i8*, i8** %bufp.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %70 to i32
  switch i32 %conv151, label %sw.default [
    i32 102, label %sw.bb
    i32 115, label %sw.bb.161
  ]

sw.bb:                                            ; preds = %if.then.149
  %71 = load i8*, i8** %bufp.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %71, i64 2
  %72 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %72 to i32
  %73 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %conv154 = sext i8 %73 to i32
  %cmp155 = icmp eq i32 %conv153, %conv154
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %sw.bb
  %74 = load i8*, i8** %bufp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %74, i64 5
  store i8* %add.ptr, i8** %bufp.addr, align 8
  br label %if.end.160

if.else.158:                                      ; preds = %sw.bb
  %75 = load i8*, i8** %bufp.addr, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %add.ptr159, i8** %bufp.addr, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.157
  br label %while.cond

sw.bb.161:                                        ; preds = %if.then.149
  %76 = load i8*, i8** %bufp.addr, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %add.ptr162, i8** %bufp.addr, align 8
  %77 = load i8*, i8** %bufp.addr, align 8
  %78 = load i8, i8* %77, align 1
  %conv163 = sext i8 %78 to i32
  %cmp164 = icmp eq i32 %conv163, 43
  br i1 %cmp164, label %if.then.170, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %sw.bb.161
  %79 = load i8*, i8** %bufp.addr, align 8
  %80 = load i8, i8* %79, align 1
  %conv167 = sext i8 %80 to i32
  %cmp168 = icmp eq i32 %conv167, 45
  br i1 %cmp168, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %lor.lhs.false.166, %sw.bb.161
  %81 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr171, i8** %bufp.addr, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %lor.lhs.false.166
  %82 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr173, i8** %bufp.addr, align 8
  %83 = load i8*, i8** %bufp.addr, align 8
  %84 = load i8, i8* %83, align 1
  %conv174 = sext i8 %84 to i32
  %idxprom175 = sext i32 %conv174 to i64
  %call176 = call i16** @__ctype_b_loc() #5
  %85 = load i16*, i16** %call176, align 8
  %arrayidx177 = getelementptr inbounds i16, i16* %85, i64 %idxprom175
  %86 = load i16, i16* %arrayidx177, align 2
  %conv178 = zext i16 %86 to i32
  %and179 = and i32 %conv178, 2048
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.end.172
  %87 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr182, i8** %bufp.addr, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.end.172
  br label %while.cond

sw.default:                                       ; preds = %if.then.149
  %88 = load i8*, i8** %bufp.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %89 to i32
  %90 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %conv186 = sext i8 %90 to i32
  %cmp187 = icmp eq i32 %conv185, %conv186
  br i1 %cmp187, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %sw.default
  %91 = load i8*, i8** %bufp.addr, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %add.ptr190, i8** %bufp.addr, align 8
  br label %while.cond

if.else.191:                                      ; preds = %sw.default
  %92 = load i8*, i8** %bufp.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %93 to i32
  %94 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 4), align 1
  %conv194 = sext i8 %94 to i32
  %cmp195 = icmp eq i32 %conv193, %conv194
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %if.else.191
  %95 = load i8*, i8** %bufp.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %95, i64 2
  %96 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %conv200 = sext i8 %97 to i32
  %cmp201 = icmp eq i32 %conv199, %conv200
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.then.197
  %98 = load i8*, i8** %bufp.addr, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %98, i64 5
  store i8* %add.ptr204, i8** %bufp.addr, align 8
  br label %if.end.207

if.else.205:                                      ; preds = %if.then.197
  %99 = load i8*, i8** %bufp.addr, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %99, i64 3
  store i8* %add.ptr206, i8** %bufp.addr, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.205, %if.then.203
  br label %while.cond

if.end.208:                                       ; preds = %if.else.191
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.209
  br label %if.end.210

if.end.210:                                       ; preds = %sw.epilog, %if.else.144
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.143
  %100 = load i8*, i8** %bufp.addr, align 8
  %101 = load i8, i8* %100, align 1
  %conv212 = sext i8 %101 to i32
  %cmp213 = icmp eq i32 %conv212, 48
  br i1 %cmp213, label %land.lhs.true.215, label %if.else.242

land.lhs.true.215:                                ; preds = %if.end.211
  %102 = load i8*, i8** %bufp.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx216, align 1
  %conv217 = sext i8 %103 to i32
  %cmp218 = icmp eq i32 %conv217, 120
  br i1 %cmp218, label %land.lhs.true.225, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %land.lhs.true.215
  %104 = load i8*, i8** %bufp.addr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %104, i64 1
  %105 = load i8, i8* %arrayidx221, align 1
  %conv222 = sext i8 %105 to i32
  %cmp223 = icmp eq i32 %conv222, 88
  br i1 %cmp223, label %land.lhs.true.225, label %if.else.242

land.lhs.true.225:                                ; preds = %lor.lhs.false.220, %land.lhs.true.215
  %106 = load i32, i32* @terse, align 4
  %tobool226 = icmp ne i32 %106, 0
  br i1 %tobool226, label %if.then.229, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %land.lhs.true.225
  %107 = load i32, i32* @aflag, align 4
  %tobool228 = icmp ne i32 %107, 0
  br i1 %tobool228, label %if.else.242, label %if.then.229

if.then.229:                                      ; preds = %lor.lhs.false.227, %land.lhs.true.225
  %108 = load i8*, i8** %bufp.addr, align 8
  %add.ptr230 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %add.ptr230, i8** %bufp.addr, align 8
  br label %while.cond.231

while.cond.231:                                   ; preds = %while.body.239, %if.then.229
  %109 = load i8*, i8** %bufp.addr, align 8
  %110 = load i8, i8* %109, align 1
  %conv232 = sext i8 %110 to i32
  %idxprom233 = sext i32 %conv232 to i64
  %call234 = call i16** @__ctype_b_loc() #5
  %111 = load i16*, i16** %call234, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %111, i64 %idxprom233
  %112 = load i16, i16* %arrayidx235, align 2
  %conv236 = zext i16 %112 to i32
  %and237 = and i32 %conv236, 4096
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %while.body.239, label %while.end.241

while.body.239:                                   ; preds = %while.cond.231
  %113 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr240 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr240, i8** %bufp.addr, align 8
  br label %while.cond.231

while.end.241:                                    ; preds = %while.cond.231
  br label %if.end.244

if.else.242:                                      ; preds = %lor.lhs.false.227, %lor.lhs.false.220, %if.end.211
  %114 = load i8*, i8** %bufp.addr, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr243, i8** %bufp.addr, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.242, %while.end.241
  br label %while.cond

while.end.245:                                    ; preds = %if.then.142, %if.then.66, %land.end.15
  %115 = load i8*, i8** %bufp.addr, align 8
  %116 = load i8, i8* %115, align 1
  %conv246 = sext i8 %116 to i32
  %cmp247 = icmp eq i32 %conv246, 0
  br i1 %cmp247, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %while.end.245
  %117 = load i32, i32* @TeX_comment, align 4
  %tobool250 = icmp ne i32 %117, 0
  br i1 %tobool250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.then.249
  %118 = load i32, i32* @save_math_mode, align 4
  store i32 %118, i32* @math_mode, align 4
  %119 = load i8, i8* @save_LaTeX_Mode, align 1
  store i8 %119, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @TeX_comment, align 4
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.then.249
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %while.end.245
  %120 = load i8*, i8** %bufp.addr, align 8
  ret i8* %120
}

declare i32 @strtoichar(i8*, i8*, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @good(i8*, i32, i32, i32, i32) #1

declare i32 @compoundgood(i8*, i32) #1

declare void @makepossibilities(i8*) #1

declare void @correct(i8*, i32, i8*, i32, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @TeX_math_check(i32 %cont_char, i8** %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %cont_char.addr = alloca i32, align 4
  %bufp.addr = alloca i8**, align 8
  store i32 %cont_char, i32* %cont_char.addr, align 4
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_open_paren(i8** %0)
  %1 = load i8**, i8*** %bufp.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %cont_char.addr, align 4
  %conv2 = trunc i32 %4 to i8
  store i8 %conv2, i8* @LaTeX_Mode, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %5 = load i8**, i8*** %bufp.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %5, align 8
  %call = call i32 @strncmp(i8* %incdec.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i64 8) #4
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i8**, i8*** %bufp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call5 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i64 8) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.20, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %9 = load i8**, i8*** %bufp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call9 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i64 11) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %11 = load i8**, i8*** %bufp.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %call13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 7) #4
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %13 = load i8**, i8*** %bufp.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %call17 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4) #4
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false, %if.end
  %15 = load i8**, i8*** %bufp.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %incdec.ptr21, i8** %15, align 8
  %17 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %17)
  store i32 1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.16
  %18 = load i32, i32* %cont_char.addr, align 4
  %cmp23 = icmp eq i32 %18, 98
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  %19 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_args(i8** %19)
  br label %if.end.27

if.else.26:                                       ; preds = %if.end.22
  %20 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %20)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.20, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @TeX_LR_check(i32 %begin_p, i8** %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %begin_p.addr = alloca i32, align 4
  %bufp.addr = alloca i8**, align 8
  store i32 %begin_p, i32* %begin_p.addr, align 4
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_open_paren(i8** %0)
  %1 = load i8**, i8*** %bufp.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 109, i8* @LaTeX_Mode, align 1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.else
  %4 = load i8**, i8*** %bufp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %4, align 8
  %call = call i32 @strncmp(i8* %incdec.ptr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 8) #4
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.21

if.then.4:                                        ; preds = %if.end
  %6 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %6)
  %7 = load i8**, i8*** %bufp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.4
  %10 = load i8**, i8*** %bufp.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %10, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.4
  %12 = load i32, i32* %begin_p.addr, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end.7
  %13 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %13)
  %14 = load i32, i32* @math_mode, align 4
  %add = add nsw i32 %14, 2
  store i32 %add, i32* @math_mode, align 4
  %15 = load i32, i32* @math_mode, align 4
  %and = and i32 %15, 127
  %sub = sub nsw i32 %and, 1
  %mul = mul nsw i32 %sub, 128
  %16 = load i32, i32* @math_mode, align 4
  %add10 = add nsw i32 %16, %mul
  store i32 %add10, i32* @math_mode, align 4
  br label %if.end.20

if.else.11:                                       ; preds = %if.end.7
  %17 = load i32, i32* @math_mode, align 4
  %and12 = and i32 %17, 127
  %mul13 = mul nsw i32 %and12, 128
  %18 = load i32, i32* @math_mode, align 4
  %sub14 = sub nsw i32 %18, %mul13
  store i32 %sub14, i32* @math_mode, align 4
  %19 = load i32, i32* @math_mode, align 4
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.else.11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  store i32 1, i32* @math_mode, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.else.11
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.9
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %21 = load i8**, i8*** %bufp.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr22, i8** %21, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.20, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @TeX_math_end(i8** %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca i8**, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %bufp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %7 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %8 = load i8**, i8*** %bufp.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i8**, i8*** %bufp.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.else
  %14 = load i32, i32* @TeX_comment, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.12
  %15 = load i32, i32* @math_mode, align 4
  store i32 %15, i32* @save_math_mode, align 4
  %16 = load i8, i8* @LaTeX_Mode, align 1
  store i8 %16, i8* @save_LaTeX_Mode, align 1
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 1, i32* @TeX_comment, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  %17 = load i8**, i8*** %bufp.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr17, i8** %17, align 8
  %19 = load i8**, i8*** %bufp.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %conv18 = sext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 1), align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %23 = load i8**, i8*** %bufp.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = sext i8 %25 to i32
  %26 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 3), align 1
  %conv23 = sext i8 %26 to i32
  %cmp24 = icmp eq i32 %conv22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.16
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  %27 = load i8**, i8*** %bufp.addr, align 8
  %call = call i32 @TeX_LR_begin(i8** %27)
  %tobool28 = icmp ne i32 %call, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %28 = load i8**, i8*** %bufp.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %call31 = call i32 @TeX_strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 3)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.30
  %30 = load i8**, i8*** %bufp.addr, align 8
  %call35 = call i32 @TeX_math_check(i32 101, i8** %30)
  store i32 %call35, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.36, %if.then.34, %if.then.29, %if.then.26, %if.end.14, %if.end
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @TeX_strncmp(i8* %a, i8* %b, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %cmpresult = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @strncmp(i8* %0, i8* %1, i64 %conv) #4
  store i32 %call, i32* %cmpresult, align 4
  %3 = load i32, i32* %cmpresult, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %and = and i32 %conv2, -128
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %n.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i8*, i8** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %call9 = call i16** @__ctype_b_loc() #5
  %10 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 %idxprom8
  %11 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %11 to i32
  %and12 = and i32 %conv11, 1024
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %12 = load i32, i32* %cmpresult, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @TeX_skip_parens(i8** %bufp) #0 {
entry:
  %bufp.addr = alloca i8**, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i8**, i8*** %bufp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %6 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 5), align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv1, %conv2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8**, i8*** %bufp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %10 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8**, i8*** %bufp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TeX_math_begin(i8** %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca i8**, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %bufp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %6 to i32
  %7 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %8 = load i8**, i8*** %bufp.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.then.29, %if.end.8
  %10 = load i8**, i8*** %bufp.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %13 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 8), align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8**, i8*** %bufp.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %14, align 8
  %16 = load i8**, i8*** %bufp.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %conv14 = sext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 0), align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %20 = load i8**, i8*** %bufp.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = sext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 2), align 1
  %conv19 = sext i8 %23 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i8**, i8*** %bufp.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv23 = sext i8 %26 to i32
  %idxprom = sext i32 %conv23 to i64
  %call = call i16** @__ctype_b_loc() #5
  %27 = load i16*, i16** %call, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %28 to i32
  %and = and i32 %conv25, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %29 = load i8**, i8*** %bufp.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %conv26 = sext i8 %31 to i32
  %cmp27 = icmp ne i32 %conv26, 64
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %land.lhs.true
  %32 = load i8**, i8*** %bufp.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr30, i8** %32, align 8
  br label %while.cond

if.else.31:                                       ; preds = %land.lhs.true, %if.else
  %34 = load i8**, i8*** %bufp.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %call32 = call i32 @TeX_strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 5)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.else.31
  %36 = load i8**, i8*** %bufp.addr, align 8
  %call36 = call i32 @TeX_math_check(i32 98, i8** %36)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.then.35
  store i32 1, i32* %retval
  br label %return

if.else.39:                                       ; preds = %if.then.35
  %37 = load i8**, i8*** %bufp.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr40, i8** %37, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39
  br label %if.end.43

if.else.42:                                       ; preds = %if.else.31
  %39 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_check(i8** %39)
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.41
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load i8**, i8*** %bufp.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %conv46 = sext i8 %42 to i32
  %43 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 2), align 1
  %conv47 = sext i8 %43 to i32
  %cmp48 = icmp eq i32 %conv46, %conv47
  br i1 %cmp48, label %land.lhs.true.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %while.end
  %44 = load i8**, i8*** %bufp.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %conv51 = sext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 6), align 1
  %conv52 = sext i8 %47 to i32
  %cmp53 = icmp eq i32 %conv51, %conv52
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.85

land.lhs.true.55:                                 ; preds = %lor.lhs.false.50, %while.end
  %48 = load i8**, i8*** %bufp.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %50 to i32
  %51 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 11), align 1
  %conv58 = sext i8 %51 to i32
  %cmp59 = icmp eq i32 %conv57, %conv58
  br i1 %cmp59, label %if.then.61, label %if.else.85

if.then.61:                                       ; preds = %land.lhs.true.55
  %52 = load i8**, i8*** %bufp.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr62, i8** %52, align 8
  br label %while.cond.63

while.cond.63:                                    ; preds = %if.end.83, %if.then.61
  %54 = load i8**, i8*** %bufp.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %tobool64 = icmp ne i8 %56, 0
  br i1 %tobool64, label %while.body.65, label %while.end.84

while.body.65:                                    ; preds = %while.cond.63
  %57 = load i8**, i8*** %bufp.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr66, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %conv67 = sext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 11), align 1
  %conv68 = sext i8 %60 to i32
  %cmp69 = icmp eq i32 %conv67, %conv68
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.83

land.lhs.true.71:                                 ; preds = %while.body.65
  %61 = load i8**, i8*** %bufp.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %conv72 = sext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 3), align 1
  %conv73 = sext i8 %64 to i32
  %cmp74 = icmp eq i32 %conv72, %conv73
  br i1 %cmp74, label %if.then.81, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.71
  %65 = load i8**, i8*** %bufp.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %conv77 = sext i8 %67 to i32
  %68 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 7), align 1
  %conv78 = sext i8 %68 to i32
  %cmp79 = icmp eq i32 %conv77, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false.76, %land.lhs.true.71
  %69 = load i8**, i8*** %bufp.addr, align 8
  %call82 = call i32 @TeX_math_begin(i8** %69)
  store i32 %call82, i32* %retval
  br label %return

if.end.83:                                        ; preds = %lor.lhs.false.76, %while.body.65
  br label %while.cond.63

while.end.84:                                     ; preds = %while.cond.63
  store i32 0, i32* %retval
  br label %return

if.else.85:                                       ; preds = %land.lhs.true.55, %lor.lhs.false.50
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.85, %while.end.84, %if.then.81, %if.else.42, %if.then.38, %if.then.22, %if.end
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal void @TeX_open_paren(i8** %bufp) #0 {
entry:
  %bufp.addr = alloca i8**, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i8**, i8*** %bufp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %6 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 4), align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv1, %conv2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i8**, i8*** %bufp.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %10 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8**, i8*** %bufp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TeX_skip_args(i8** %bufp) #0 {
entry:
  %bufp.addr = alloca i8**, align 8
  %skip_cnt = alloca i32, align 4
  store i8** %bufp, i8*** %bufp.addr, align 8
  store i32 0, i32* %skip_cnt, align 4
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 7) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8**, i8*** %bufp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call1 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 8) #4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %skip_cnt, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %skip_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8**, i8*** %bufp.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call3 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i64 8) #4
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %skip_cnt, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %skip_cnt, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %8 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %8)
  %9 = load i8**, i8*** %bufp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.7
  %12 = load i8**, i8*** %bufp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end.7
  br label %if.end.21

if.end.9:                                         ; preds = %if.then.8
  %14 = load i32, i32* %skip_cnt, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %skip_cnt, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %15 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %15)
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.9
  br label %if.end.21

if.end.13:                                        ; preds = %if.then.11
  %16 = load i8**, i8*** %bufp.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %tobool14 = icmp ne i8 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.13
  %19 = load i8**, i8*** %bufp.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr16, i8** %19, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.13
  br label %if.end.21

if.end.18:                                        ; preds = %if.then.15
  %21 = load i32, i32* %skip_cnt, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %22 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.else.12, %if.else.17, %if.then.20, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @TeX_LR_begin(i8** %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca i8**, align 8
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @TeX_strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 4)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8**, i8*** %bufp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call1 = call i32 @TeX_strncmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 7)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i8**, i8*** %bufp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %call4 = call i32 @TeX_strncmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %6 = load i8**, i8*** %bufp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call7 = call i32 @TeX_strncmp(i8* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 8)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %8 = load i32, i32* @math_mode, align 4
  %add = add nsw i32 %8, 2
  store i32 %add, i32* @math_mode, align 4
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false.6
  %9 = load i8**, i8*** %bufp.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call9 = call i32 @TeX_strncmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 6)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.else
  %11 = load i8**, i8*** %bufp.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %call12 = call i32 @TeX_strncmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 8)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %lor.lhs.false.11, %if.else
  %13 = load i32, i32* @math_mode, align 4
  %add15 = add nsw i32 %13, 2
  store i32 %add15, i32* @math_mode, align 4
  %14 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_open_paren(i8** %14)
  %15 = load i8**, i8*** %bufp.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.then.14
  %18 = load i8**, i8*** %bufp.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %18, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.then.14
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.24

if.else.18:                                       ; preds = %lor.lhs.false.11
  %20 = load i8**, i8*** %bufp.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %call19 = call i32 @TeX_strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 5)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.18
  %22 = load i8**, i8*** %bufp.addr, align 8
  %call22 = call i32 @TeX_LR_check(i32 1, i8** %22)
  store i32 %call22, i32* %retval
  br label %return

if.else.23:                                       ; preds = %if.else.18
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %23 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_open_paren(i8** %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.23, %if.then.21
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @TeX_skip_check(i8** %bufp) #0 {
entry:
  %bufp.addr = alloca i8**, align 8
  %skip_ch = alloca i32, align 4
  store i8** %bufp, i8*** %bufp.addr, align 8
  %0 = load i8**, i8*** %bufp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @TeX_strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8**, i8*** %bufp.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %call1 = call i32 @TeX_strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 6)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i8**, i8*** %bufp.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %call4 = call i32 @TeX_strncmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 6)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %6 = load i8**, i8*** %bufp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call7 = call i32 @TeX_strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 4)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %8 = load i8**, i8*** %bufp.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %call10 = call i32 @TeX_strncmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 3)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %10 = load i8**, i8*** %bufp.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call13 = call i32 @TeX_strncmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 6)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %12 = load i8**, i8*** %bufp.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call16 = call i32 @TeX_strncmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 5)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %14 = load i8**, i8*** %bufp.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %call19 = call i32 @TeX_strncmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 5)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %16 = load i8**, i8*** %bufp.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %call22 = call i32 @TeX_strncmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 6)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %18 = load i8**, i8*** %bufp.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call25 = call i32 @TeX_strncmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 7)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %20 = load i8**, i8*** %bufp.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %call28 = call i32 @TeX_strncmp(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 11)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %22 = load i8**, i8*** %bufp.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %call31 = call i32 @TeX_strncmp(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 13)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.30
  %24 = load i8**, i8*** %bufp.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %call34 = call i32 @TeX_strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 13)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %26 = load i8**, i8*** %bufp.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %call37 = call i32 @TeX_strncmp(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 10)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %28 = load i8**, i8*** %bufp.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %call40 = call i32 @TeX_strncmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 9)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.39
  %30 = load i8**, i8*** %bufp.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %call43 = call i32 @TeX_strncmp(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i32 13)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.42
  %32 = load i8**, i8*** %bufp.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %call46 = call i32 @TeX_strncmp(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 12)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.45
  %34 = load i8**, i8*** %bufp.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %call49 = call i32 @TeX_strncmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 7)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.48
  %36 = load i8**, i8*** %bufp.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %call52 = call i32 @TeX_strncmp(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32 11)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.51
  %38 = load i8**, i8*** %bufp.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %call55 = call i32 @TeX_strncmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32 7)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.54, %lor.lhs.false.51, %lor.lhs.false.48, %lor.lhs.false.45, %lor.lhs.false.42, %lor.lhs.false.39, %lor.lhs.false.36, %lor.lhs.false.33, %lor.lhs.false.30, %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %40 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %40)
  %41 = load i8**, i8*** %bufp.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %conv = sext i8 %43 to i32
  %cmp57 = icmp eq i32 %conv, 0
  br i1 %cmp57, label %if.then.59, label %if.end

if.then.59:                                       ; preds = %if.then
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.59, %if.then
  br label %if.end.123

if.else:                                          ; preds = %lor.lhs.false.54
  %44 = load i8**, i8*** %bufp.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %call60 = call i32 @TeX_strncmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 4)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.83, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.else
  %46 = load i8**, i8*** %bufp.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %call64 = call i32 @TeX_strncmp(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 10)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.83, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.63
  %48 = load i8**, i8*** %bufp.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %call68 = call i32 @TeX_strncmp(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 12)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then.83, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.67
  %50 = load i8**, i8*** %bufp.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %call72 = call i32 @TeX_strncmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 9)
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then.83, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.71
  %52 = load i8**, i8*** %bufp.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %call76 = call i32 @TeX_strncmp(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 11)
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.75
  %54 = load i8**, i8*** %bufp.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %call80 = call i32 @TeX_strncmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 10)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.else.95

if.then.83:                                       ; preds = %lor.lhs.false.79, %lor.lhs.false.75, %lor.lhs.false.71, %lor.lhs.false.67, %lor.lhs.false.63, %if.else
  %56 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %56)
  %57 = load i8**, i8*** %bufp.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %conv84 = sext i8 %59 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.then.83
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %if.end.94

if.else.88:                                       ; preds = %if.then.83
  %60 = load i8**, i8*** %bufp.addr, align 8
  %61 = load i8*, i8** %60, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %60, align 8
  %62 = load i8**, i8*** %bufp.addr, align 8
  call void @TeX_skip_parens(i8** %62)
  %63 = load i8**, i8*** %bufp.addr, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %conv89 = sext i8 %65 to i32
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.88
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.else.88
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.87
  br label %if.end.122

if.else.95:                                       ; preds = %lor.lhs.false.79
  %66 = load i8**, i8*** %bufp.addr, align 8
  %67 = load i8*, i8** %66, align 8
  %call96 = call i32 @TeX_strncmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 4)
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.108

if.then.99:                                       ; preds = %if.else.95
  %68 = load i8**, i8*** %bufp.addr, align 8
  %69 = load i8*, i8** %68, align 8
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 4
  %70 = load i8, i8* %arrayidx, align 1
  %conv100 = sext i8 %70 to i32
  store i32 %conv100, i32* %skip_ch, align 4
  %71 = load i8**, i8*** %bufp.addr, align 8
  %72 = load i8*, i8** %71, align 8
  %add.ptr = getelementptr inbounds i8, i8* %72, i64 5
  store i8* %add.ptr, i8** %71, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.99
  %73 = load i8**, i8*** %bufp.addr, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %conv101 = sext i8 %75 to i32
  %76 = load i32, i32* %skip_ch, align 4
  %cmp102 = icmp ne i32 %conv101, %76
  br i1 %cmp102, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8**, i8*** %bufp.addr, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %conv104 = sext i8 %79 to i32
  %cmp105 = icmp ne i32 %conv104, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp105, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %81 = load i8**, i8*** %bufp.addr, align 8
  %82 = load i8*, i8** %81, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr107, i8** %81, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.121

if.else.108:                                      ; preds = %if.else.95
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.117, %if.else.108
  %83 = load i8**, i8*** %bufp.addr, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %conv110 = sext i8 %85 to i32
  %idxprom = sext i32 %conv110 to i64
  %call111 = call i16** @__ctype_b_loc() #5
  %86 = load i16*, i16** %call111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %86, i64 %idxprom
  %87 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %87 to i32
  %and = and i32 %conv113, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.109
  %88 = load i8**, i8*** %bufp.addr, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %conv114 = sext i8 %90 to i32
  %cmp115 = icmp eq i32 %conv114, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.109
  %91 = phi i1 [ true, %while.cond.109 ], [ %cmp115, %lor.rhs ]
  br i1 %91, label %while.body.117, label %while.end.119

while.body.117:                                   ; preds = %lor.end
  %92 = load i8**, i8*** %bufp.addr, align 8
  %93 = load i8*, i8** %92, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr118, i8** %92, align 8
  br label %while.cond.109

while.end.119:                                    ; preds = %lor.end
  %94 = load i8**, i8*** %bufp.addr, align 8
  %95 = load i8*, i8** %94, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %incdec.ptr120, i8** %94, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %while.end.119, %while.end
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.94
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
