; ModuleID = './MultiSource.Benchmarks.FreeBench/1.neural.neural.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@nmode = global i32 2, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Wrong number of arguments, 1 needed, %d specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"USAGE: %s <datafile>\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ABORT: Could not read datafile %s\0A\00", align 1
@NNWIDTH = common global i32 0, align 4
@NNHEIGHT = common global i32 0, align 4
@NUMPATS = common global i32 0, align 4
@NNTOT = common global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Matrix size is %dx%d\0A\00", align 1
@vnames = common global i8* null, align 8
@stored = common global i32* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"ABORT: Out of memory\0A\00", align 1
@Tmatrix = common global float** null, align 8
@vectors = common global i32** null, align 8
@newvectors = common global i32** null, align 8
@generators = common global i32** null, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"Checking hamming distances...\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Generating T matrix...\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Delta learning...\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Store check...\0A\00", align 1
@randnum = common global i64 0, align 8
@.str.14 = private unnamed_addr constant [78 x i8] c"WARNING: %d vectors have a hamming distance <2, please modify input vectors!\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\0Ac-cont, b-break: \00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Warning! No stable state reached after 500 iterations, aborting!\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Warning! No stable state reached after 500 iterations!\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Vectors read from file!\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Pattern %d stored.\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Pattern %d: hamming distance=%-.2d.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %c, i8** %v) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %v.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %indata = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %c, i32* %c.addr, align 4
  store i8** %v, i8*** %v.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %4, 1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i32 %sub)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i8**, i8*** %v.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx4, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8**, i8*** %v.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* %13)
  call void @exit(i32 1) #6
  unreachable

if.end.10:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i8* @fgets(i8* %arraydecay, i32 99, %struct._IO_FILE* %14)
  %arraydecay12 = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %call13 = call i32 @atoi(i8* %arraydecay12) #7
  store i32 %call13, i32* @NNWIDTH, align 4
  %arraydecay14 = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i8* @fgets(i8* %arraydecay14, i32 99, %struct._IO_FILE* %15)
  %arraydecay16 = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %call17 = call i32 @atoi(i8* %arraydecay16) #7
  store i32 %call17, i32* @NNHEIGHT, align 4
  %arraydecay18 = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i8* @fgets(i8* %arraydecay18, i32 99, %struct._IO_FILE* %16)
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %indata, i32 0, i32 0
  %call21 = call i32 @atoi(i8* %arraydecay20) #7
  store i32 %call21, i32* @NUMPATS, align 4
  %17 = load i32, i32* @NNWIDTH, align 4
  %18 = load i32, i32* @NNHEIGHT, align 4
  %mul = mul nsw i32 %17, %18
  store i32 %mul, i32* @NNTOT, align 4
  %19 = load i32, i32* @NNWIDTH, align 4
  %20 = load i32, i32* @NNHEIGHT, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %19, i32 %20)
  %21 = load i32, i32* @NUMPATS, align 4
  %conv = sext i32 %21 to i64
  %mul23 = mul i64 1, %conv
  %call24 = call noalias i8* @malloc(i64 %mul23) #8
  store i8* %call24, i8** @vnames, align 8
  %22 = load i32, i32* @NUMPATS, align 4
  %conv25 = sext i32 %22 to i64
  %mul26 = mul i64 4, %conv25
  %call27 = call noalias i8* @malloc(i64 %mul26) #8
  %23 = bitcast i8* %call27 to i32*
  store i32* %23, i32** @stored, align 8
  %24 = load i8*, i8** @vnames, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %if.end.10
  %25 = load i32*, i32** @stored, align 8
  %tobool28 = icmp ne i32* %25, null
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.10
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.31:                                        ; preds = %lor.lhs.false
  %27 = load i32, i32* @NNTOT, align 4
  %conv32 = sext i32 %27 to i64
  %mul33 = mul i64 8, %conv32
  %call34 = call noalias i8* @malloc(i64 %mul33) #8
  %28 = bitcast i8* %call34 to float**
  store float** %28, float*** @Tmatrix, align 8
  %29 = load float**, float*** @Tmatrix, align 8
  %tobool35 = icmp ne float** %29, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.38:                                        ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* @NNTOT, align 4
  %cmp39 = icmp slt i32 %31, %32
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* @NNTOT, align 4
  %conv41 = sext i32 %33 to i64
  %mul42 = mul i64 4, %conv41
  %call43 = call noalias i8* @malloc(i64 %mul42) #8
  %34 = bitcast i8* %call43 to float*
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load float**, float*** @Tmatrix, align 8
  %arrayidx44 = getelementptr inbounds float*, float** %36, i64 %idxprom
  store float* %34, float** %arrayidx44, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %38 = load float**, float*** @Tmatrix, align 8
  %arrayidx46 = getelementptr inbounds float*, float** %38, i64 %idxprom45
  %39 = load float*, float** %arrayidx46, align 8
  %tobool47 = icmp ne float* %39, null
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %for.body
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.50:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* @NUMPATS, align 4
  %conv51 = sext i32 %42 to i64
  %mul52 = mul i64 8, %conv51
  %call53 = call noalias i8* @malloc(i64 %mul52) #8
  %43 = bitcast i8* %call53 to i32**
  store i32** %43, i32*** @vectors, align 8
  %44 = load i32, i32* @NUMPATS, align 4
  %conv54 = sext i32 %44 to i64
  %mul55 = mul i64 8, %conv54
  %call56 = call noalias i8* @malloc(i64 %mul55) #8
  %45 = bitcast i8* %call56 to i32**
  store i32** %45, i32*** @newvectors, align 8
  %46 = load i32, i32* @NUMPATS, align 4
  %conv57 = sext i32 %46 to i64
  %mul58 = mul i64 8, %conv57
  %call59 = call noalias i8* @malloc(i64 %mul58) #8
  %47 = bitcast i8* %call59 to i32**
  store i32** %47, i32*** @generators, align 8
  %48 = load i32**, i32*** @vectors, align 8
  %tobool60 = icmp ne i32** %48, null
  br i1 %tobool60, label %lor.lhs.false.61, label %if.then.65

lor.lhs.false.61:                                 ; preds = %for.end
  %49 = load i32**, i32*** @newvectors, align 8
  %tobool62 = icmp ne i32** %49, null
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.65

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %50 = load i32**, i32*** @generators, align 8
  %tobool64 = icmp ne i32** %50, null
  br i1 %tobool64, label %if.end.67, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false.61, %for.end
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.67:                                        ; preds = %lor.lhs.false.63
  store i32 0, i32* %i, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.101, %if.end.67
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* @NUMPATS, align 4
  %cmp69 = icmp slt i32 %52, %53
  br i1 %cmp69, label %for.body.71, label %for.end.103

for.body.71:                                      ; preds = %for.cond.68
  %54 = load i32, i32* @NNTOT, align 4
  %conv72 = sext i32 %54 to i64
  %mul73 = mul i64 4, %conv72
  %call74 = call noalias i8* @malloc(i64 %mul73) #8
  %55 = bitcast i8* %call74 to i32*
  %56 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %57 = load i32**, i32*** @vectors, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %57, i64 %idxprom75
  store i32* %55, i32** %arrayidx76, align 8
  %58 = load i32, i32* @NNTOT, align 4
  %conv77 = sext i32 %58 to i64
  %mul78 = mul i64 4, %conv77
  %call79 = call noalias i8* @malloc(i64 %mul78) #8
  %59 = bitcast i8* %call79 to i32*
  %60 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %60 to i64
  %61 = load i32**, i32*** @newvectors, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %61, i64 %idxprom80
  store i32* %59, i32** %arrayidx81, align 8
  %62 = load i32, i32* @NNTOT, align 4
  %conv82 = sext i32 %62 to i64
  %mul83 = mul i64 4, %conv82
  %call84 = call noalias i8* @malloc(i64 %mul83) #8
  %63 = bitcast i8* %call84 to i32*
  %64 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %64 to i64
  %65 = load i32**, i32*** @generators, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %65, i64 %idxprom85
  store i32* %63, i32** %arrayidx86, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %66 to i64
  %67 = load i32**, i32*** @vectors, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %67, i64 %idxprom87
  %68 = load i32*, i32** %arrayidx88, align 8
  %tobool89 = icmp ne i32* %68, null
  br i1 %tobool89, label %lor.lhs.false.90, label %if.then.98

lor.lhs.false.90:                                 ; preds = %for.body.71
  %69 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %69 to i64
  %70 = load i32**, i32*** @newvectors, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %70, i64 %idxprom91
  %71 = load i32*, i32** %arrayidx92, align 8
  %tobool93 = icmp ne i32* %71, null
  br i1 %tobool93, label %lor.lhs.false.94, label %if.then.98

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.90
  %72 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %72 to i64
  %73 = load i32**, i32*** @generators, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %73, i64 %idxprom95
  %74 = load i32*, i32** %arrayidx96, align 8
  %tobool97 = icmp ne i32* %74, null
  br i1 %tobool97, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.94, %lor.lhs.false.90, %for.body.71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.100:                                       ; preds = %lor.lhs.false.94
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %76 = load i32, i32* %i, align 4
  %inc102 = add nsw i32 %76, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.68

for.end.103:                                      ; preds = %for.cond.68
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @readvector(%struct._IO_FILE* %77)
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  call void @checkham()
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  call void @generateT(i32 1)
  store i32 1, i32* @nmode, align 4
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  call void @delta(float 5.000000e-01)
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  call void @storecheck()
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define internal void @readvector(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %srow = alloca i8*, align 8
  %vec = alloca i32, align 4
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  %vpos = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32, i32* @NNWIDTH, align 4
  %add = add nsw i32 %0, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul) #8
  store i8* %call, i8** %srow, align 8
  %1 = load i8*, i8** %srow, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %vec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %3 = load i32, i32* %vec, align 4
  %4 = load i32, i32* @NUMPATS, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %vpos, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %6 = load i8*, i8** %srow, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %srow, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i32, i32* %vec, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** @vnames, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %8, i8* %arrayidx4, align 1
  store i32 0, i32* %row, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.24, %for.body
  %11 = load i32, i32* %row, align 4
  %12 = load i32, i32* @NNHEIGHT, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body.8, label %for.end.26

for.body.8:                                       ; preds = %for.cond.5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i8*, i8** %srow, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %14)
  store i32 0, i32* %column, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.8
  %15 = load i32, i32* %column, align 4
  %16 = load i32, i32* @NNWIDTH, align 4
  %cmp11 = icmp slt i32 %15, %16
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %17 = load i32, i32* %column, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load i8*, i8** %srow, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  %19 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 88
  %cond = select i1 %cmp17, i32 1, i32 -1
  %20 = load i32, i32* %vpos, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* %vec, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i32**, i32*** @vectors, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %22, i64 %idxprom20
  %23 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %23, i64 %idxprom19
  store i32 %cond, i32* %arrayidx22, align 4
  %24 = load i32, i32* %vpos, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %vpos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %25 = load i32, i32* %column, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %column, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %26 = load i32, i32* %row, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %row, align 4
  br label %for.cond.5

for.end.26:                                       ; preds = %for.cond.5
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %27 = load i32, i32* %vec, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %vec, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %28)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generateT(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %vec = alloca i32, align 4
  %option = alloca i8, align 1
  store i32 %mode, i32* %mode.addr, align 4
  store i8 48, i8* %option, align 1
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %row, align 4
  %1 = load i32, i32* @NNTOT, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %col, align 4
  %3 = load i32, i32* @NNTOT, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %col, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %row, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load float**, float*** @Tmatrix, align 8
  %arrayidx = getelementptr inbounds float*, float** %6, i64 %idxprom4
  %7 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %7, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %col, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %9 = load i32, i32* %row, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %row, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %vec, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.53, %for.end.8
  %10 = load i32, i32* %vec, align 4
  %cmp10 = icmp slt i32 %10, 10
  br i1 %cmp10, label %for.body.11, label %for.end.55

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %row, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.38, %for.body.11
  %11 = load i32, i32* %row, align 4
  %12 = load i32, i32* @NNTOT, align 4
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body.14, label %for.end.40

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %col, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.35, %for.body.14
  %13 = load i32, i32* %col, align 4
  %14 = load i32, i32* @NNTOT, align 4
  %cmp16 = icmp slt i32 %13, %14
  br i1 %cmp16, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.15
  %15 = load i32, i32* %row, align 4
  %16 = load i32, i32* %col, align 4
  %cmp18 = icmp eq i32 %15, %16
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.17
  %17 = load i32, i32* %col, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32, i32* %row, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load float**, float*** @Tmatrix, align 8
  %arrayidx21 = getelementptr inbounds float*, float** %19, i64 %idxprom20
  %20 = load float*, float** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds float, float* %20, i64 %idxprom19
  store float 0.000000e+00, float* %arrayidx22, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.17
  %21 = load i32, i32* %row, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load i32, i32* %vec, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32**, i32*** @vectors, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %23, i64 %idxprom24
  %24 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %24, i64 %idxprom23
  %25 = load i32, i32* %arrayidx26, align 4
  %26 = load i32, i32* %col, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i32, i32* %vec, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i32**, i32*** @vectors, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %28, i64 %idxprom28
  %29 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %29, i64 %idxprom27
  %30 = load i32, i32* %arrayidx30, align 4
  %mul = mul nsw i32 %25, %30
  %conv = sitofp i32 %mul to float
  %31 = load i32, i32* %col, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %row, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load float**, float*** @Tmatrix, align 8
  %arrayidx33 = getelementptr inbounds float*, float** %33, i64 %idxprom32
  %34 = load float*, float** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds float, float* %34, i64 %idxprom31
  %35 = load float, float* %arrayidx34, align 4
  %add = fadd float %35, %conv
  store float %add, float* %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end
  %36 = load i32, i32* %col, align 4
  %inc36 = add nsw i32 %36, 1
  store i32 %inc36, i32* %col, align 4
  br label %for.cond.15

for.end.37:                                       ; preds = %for.cond.15
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %37 = load i32, i32* %row, align 4
  %inc39 = add nsw i32 %37, 1
  store i32 %inc39, i32* %row, align 4
  br label %for.cond.12

for.end.40:                                       ; preds = %for.cond.12
  %38 = load i32, i32* %mode.addr, align 4
  %cmp41 = icmp eq i32 %38, 2
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %for.end.40
  call void @storecheck()
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  %call44 = call i32 @getchar()
  %conv45 = trunc i32 %call44 to i8
  store i8 %conv45, i8* %option, align 1
  %call46 = call i32 @getchar()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %for.end.40
  %39 = load i8, i8* %option, align 1
  %conv48 = sext i8 %39 to i32
  %cmp49 = icmp eq i32 %conv48, 98
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  br label %for.end.55

if.end.52:                                        ; preds = %if.end.47
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %40 = load i32, i32* %vec, align 4
  %inc54 = add nsw i32 %40, 1
  store i32 %inc54, i32* %vec, align 4
  br label %for.cond.9

for.end.55:                                       ; preds = %if.then.51, %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delta(float %n) #0 {
entry:
  %n.addr = alloca float, align 4
  %vec = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %neuron = alloca i32, align 4
  %tempvecC = alloca float*, align 8
  %status = alloca i32, align 4
  store float %n, float* %n.addr, align 4
  %0 = load i32, i32* @NNTOT, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #8
  %1 = bitcast i8* %call to float*
  store float* %1, float** %tempvecC, align 8
  %2 = load float*, float** %tempvecC, align 8
  %tobool = icmp ne float* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  store i32 1, i32* %status, align 4
  store i32 0, i32* %vec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %do.body
  %4 = load i32, i32* %vec, align 4
  %5 = load i32, i32* @NUMPATS, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @nmode, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %7 = load i32, i32* %vec, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32**, i32*** @vectors, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom
  %9 = load i32*, i32** %arrayidx, align 8
  %10 = load i32, i32* %vec, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32**, i32*** @newvectors, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %11, i64 %idxprom6
  %12 = load i32*, i32** %arrayidx7, align 8
  %call8 = call i32 @run(i32* %9, i32* %12)
  br label %if.end.14

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %vec, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32**, i32*** @vectors, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %14, i64 %idxprom9
  %15 = load i32*, i32** %arrayidx10, align 8
  %16 = load i32, i32* %vec, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i32**, i32*** @newvectors, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %17, i64 %idxprom11
  %18 = load i32*, i32** %arrayidx12, align 8
  %call13 = call i32 @runcont(i32* %15, i32* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.5
  store i32 0, i32* %neuron, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.14
  %19 = load i32, i32* %neuron, align 4
  %20 = load i32, i32* @NNTOT, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %neuron, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i32, i32* %vec, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i32**, i32*** @vectors, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %23, i64 %idxprom20
  %24 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %24, i64 %idxprom19
  %25 = load i32, i32* %arrayidx22, align 4
  %26 = load i32, i32* %neuron, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32, i32* %vec, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load i32**, i32*** @newvectors, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %28, i64 %idxprom24
  %29 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  %30 = load i32, i32* %arrayidx26, align 4
  %sub = sub nsw i32 %25, %30
  %conv27 = sitofp i32 %sub to float
  %31 = load float, float* %n.addr, align 4
  %mul28 = fmul float %conv27, %31
  %32 = load i32, i32* %neuron, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load float*, float** %tempvecC, align 8
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom29
  store float %mul28, float* %arrayidx30, align 4
  %conv31 = fpext float %mul28 to double
  %cmp32 = fcmp une double %conv31, 0.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.18
  store i32 0, i32* %status, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %34 = load i32, i32* %neuron, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %neuron, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  store i32 0, i32* %row, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.68, %for.end
  %35 = load i32, i32* %row, align 4
  %36 = load i32, i32* @NNTOT, align 4
  %cmp37 = icmp slt i32 %35, %36
  br i1 %cmp37, label %for.body.39, label %for.end.70

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %col, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.65, %for.body.39
  %37 = load i32, i32* %col, align 4
  %38 = load i32, i32* @NNTOT, align 4
  %cmp41 = icmp slt i32 %37, %38
  br i1 %cmp41, label %for.body.43, label %for.end.67

for.body.43:                                      ; preds = %for.cond.40
  %39 = load i32, i32* %row, align 4
  %40 = load i32, i32* %col, align 4
  %cmp44 = icmp eq i32 %39, %40
  br i1 %cmp44, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %for.body.43
  %41 = load i32, i32* %col, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i32, i32* %row, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load float**, float*** @Tmatrix, align 8
  %arrayidx49 = getelementptr inbounds float*, float** %43, i64 %idxprom48
  %44 = load float*, float** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds float, float* %44, i64 %idxprom47
  store float 0.000000e+00, float* %arrayidx50, align 4
  br label %if.end.64

if.else.51:                                       ; preds = %for.body.43
  %45 = load i32, i32* %row, align 4
  %idxprom52 = sext i32 %45 to i64
  %46 = load float*, float** %tempvecC, align 8
  %arrayidx53 = getelementptr inbounds float, float* %46, i64 %idxprom52
  %47 = load float, float* %arrayidx53, align 4
  %48 = load i32, i32* %col, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load i32, i32* %vec, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load i32**, i32*** @vectors, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %50, i64 %idxprom55
  %51 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %51, i64 %idxprom54
  %52 = load i32, i32* %arrayidx57, align 4
  %conv58 = sitofp i32 %52 to float
  %mul59 = fmul float %47, %conv58
  %53 = load i32, i32* %col, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load i32, i32* %row, align 4
  %idxprom61 = sext i32 %54 to i64
  %55 = load float**, float*** @Tmatrix, align 8
  %arrayidx62 = getelementptr inbounds float*, float** %55, i64 %idxprom61
  %56 = load float*, float** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds float, float* %56, i64 %idxprom60
  %57 = load float, float* %arrayidx63, align 4
  %add = fadd float %57, %mul59
  store float %add, float* %arrayidx63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.51, %if.then.46
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %58 = load i32, i32* %col, align 4
  %inc66 = add nsw i32 %58, 1
  store i32 %inc66, i32* %col, align 4
  br label %for.cond.40

for.end.67:                                       ; preds = %for.cond.40
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %59 = load i32, i32* %row, align 4
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, i32* %row, align 4
  br label %for.cond.36

for.end.70:                                       ; preds = %for.cond.36
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %60 = load i32, i32* %vec, align 4
  %inc72 = add nsw i32 %60, 1
  store i32 %inc72, i32* %vec, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end.73
  %61 = load i32, i32* %status, align 4
  %tobool74 = icmp ne i32 %61, 0
  %lnot = xor i1 %tobool74, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkham() #0 {
entry:
  %vec = alloca i32, align 4
  %comp = alloca i32, align 4
  %hd = alloca i32, align 4
  %hamwarn = alloca i32, align 4
  store i32 0, i32* %hamwarn, align 4
  store i32 0, i32* %vec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load i32, i32* %vec, align 4
  %1 = load i32, i32* @NUMPATS, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %vec, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %comp, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %comp, align 4
  %4 = load i32, i32* @NUMPATS, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %vec, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32**, i32*** @vectors, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 %idxprom
  %7 = load i32*, i32** %arrayidx, align 8
  %8 = load i32, i32* %comp, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32**, i32*** @vectors, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 %idxprom4
  %10 = load i32*, i32** %arrayidx5, align 8
  %call = call i32 @hamming(i32* %7, i32* %10, i32 1)
  store i32 %call, i32* %hd, align 4
  %cmp6 = icmp slt i32 %call, 2
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %11 = load i32, i32* %hamwarn, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %hamwarn, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %vec, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32**, i32*** @vectors, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %13, i64 %idxprom7
  %14 = load i32*, i32** %arrayidx8, align 8
  %15 = load i32, i32* %comp, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32**, i32*** @vectors, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %16, i64 %idxprom9
  %17 = load i32*, i32** %arrayidx10, align 8
  %call11 = call i32 @hamming(i32* %14, i32* %17, i32 -1)
  store i32 %call11, i32* %hd, align 4
  %cmp12 = icmp slt i32 %call11, 2
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end
  %18 = load i32, i32* %hamwarn, align 4
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, i32* %hamwarn, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %19 = load i32, i32* %comp, align 4
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %comp, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %20 = load i32, i32* %vec, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %vec, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %21 = load i32, i32* %hamwarn, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.end.20
  %22 = load i32, i32* %hamwarn, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i32 0, i32 0), i32 %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @hamming(i32* %ny, i32* %orig, i32 %mode) #0 {
entry:
  %ny.addr = alloca i32*, align 8
  %orig.addr = alloca i32*, align 8
  %mode.addr = alloca i32, align 4
  %hd = alloca i32, align 4
  %neuron = alloca i32, align 4
  store i32* %ny, i32** %ny.addr, align 8
  store i32* %orig, i32** %orig.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 0, i32* %hd, align 4
  store i32 0, i32* %neuron, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %neuron, align 4
  %1 = load i32, i32* @NNTOT, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %neuron, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %ny.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %neuron, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %orig.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %mode.addr, align 4
  %mul = mul nsw i32 %7, %8
  %cmp3 = icmp ne i32 %4, %mul
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %hd, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %hd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %neuron, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* %neuron, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %hd, align 4
  ret i32 %11
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define internal i32 @run(i32* %source, i32* %dest) #0 {
entry:
  %source.addr = alloca i32*, align 8
  %dest.addr = alloca i32*, align 8
  %neuron = alloca i32, align 4
  %thesum = alloca i32, align 4
  %row = alloca i32, align 4
  %max = alloca i32, align 4
  %tempvecA = alloca i32*, align 8
  %tempvecB = alloca i32*, align 8
  %stable = alloca i32, align 4
  store i32* %source, i32** %source.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32 0, i32* %max, align 4
  store i32 0, i32* %stable, align 4
  %0 = load i32, i32* @NNTOT, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #8
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %tempvecA, align 8
  %2 = load i32, i32* @NNTOT, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @malloc(i64 %mul2) #8
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %tempvecB, align 8
  %4 = load i32*, i32** %tempvecA, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32*, i32** %tempvecB, align 8
  %tobool4 = icmp ne i32* %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %neuron, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %neuron, align 4
  %8 = load i32, i32* @NNTOT, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %neuron, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %source.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %neuron, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %tempvecA, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  store i32 %11, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %neuron, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %neuron, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %for.end
  %15 = load i32, i32* %stable, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, i32* %max, align 4
  %cmp10 = icmp slt i32 %16, 500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %17, label %while.body, label %while.end.80

while.body:                                       ; preds = %land.end
  store i32 0, i32* %row, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.37, %while.body
  %18 = load i32, i32* %row, align 4
  %19 = load i32, i32* @NNTOT, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body.15, label %for.end.39

for.body.15:                                      ; preds = %for.cond.12
  store i32 0, i32* %thesum, align 4
  store i32 0, i32* %neuron, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.30, %for.body.15
  %20 = load i32, i32* %neuron, align 4
  %21 = load i32, i32* @NNTOT, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body.19, label %for.end.32

for.body.19:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %neuron, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i32, i32* %row, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load float**, float*** @Tmatrix, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %24, i64 %idxprom21
  %25 = load float*, float** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds float, float* %25, i64 %idxprom20
  %26 = load float, float* %arrayidx23, align 4
  %27 = load i32, i32* %neuron, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load i32*, i32** %tempvecA, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  %29 = load i32, i32* %arrayidx25, align 4
  %conv26 = sitofp i32 %29 to float
  %mul27 = fmul float %26, %conv26
  %30 = load i32, i32* %thesum, align 4
  %conv28 = sitofp i32 %30 to float
  %add = fadd float %conv28, %mul27
  %conv29 = fptosi float %add to i32
  store i32 %conv29, i32* %thesum, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.19
  %31 = load i32, i32* %neuron, align 4
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, i32* %neuron, align 4
  br label %for.cond.16

for.end.32:                                       ; preds = %for.cond.16
  %32 = load i32, i32* %thesum, align 4
  %cmp33 = icmp sge i32 %32, 0
  %cond = select i1 %cmp33, i32 1, i32 -1
  %33 = load i32, i32* %row, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load i32*, i32** %tempvecB, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %34, i64 %idxprom35
  store i32 %cond, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.32
  %35 = load i32, i32* %row, align 4
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %row, align 4
  br label %for.cond.12

for.end.39:                                       ; preds = %for.cond.12
  store i32 0, i32* %neuron, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.54, %for.end.39
  %36 = load i32, i32* %neuron, align 4
  %37 = load i32, i32* @NNTOT, align 4
  %cmp41 = icmp slt i32 %36, %37
  br i1 %cmp41, label %for.body.43, label %for.end.56

for.body.43:                                      ; preds = %for.cond.40
  %38 = load i32, i32* %neuron, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load i32*, i32** %tempvecA, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %39, i64 %idxprom44
  %40 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %40, 0
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %for.body.43
  %41 = load i32, i32* %neuron, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load i32*, i32** %tempvecB, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %42, i64 %idxprom49
  %43 = load i32, i32* %arrayidx50, align 4
  %44 = load i32, i32* %neuron, align 4
  %idxprom51 = sext i32 %44 to i64
  %45 = load i32*, i32** %tempvecA, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %45, i64 %idxprom51
  store i32 %43, i32* %arrayidx52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %for.body.43
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %46 = load i32, i32* %neuron, align 4
  %inc55 = add nsw i32 %46, 1
  store i32 %inc55, i32* %neuron, align 4
  br label %for.cond.40

for.end.56:                                       ; preds = %for.cond.40
  %47 = load i32*, i32** %tempvecB, align 8
  %48 = load i32*, i32** %tempvecA, align 8
  %call57 = call i32 @hamming(i32* %47, i32* %48, i32 1)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.end.56
  store i32 1, i32* %stable, align 4
  br label %if.end.78

if.else:                                          ; preds = %for.end.56
  store i32 0, i32* %neuron, align 4
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.72, %if.else
  %49 = load i32, i32* %neuron, align 4
  %50 = load i32, i32* @NNTOT, align 4
  %cmp62 = icmp slt i32 %49, %50
  br i1 %cmp62, label %land.rhs.64, label %land.end.71

land.rhs.64:                                      ; preds = %while.cond.61
  %51 = load i32, i32* %neuron, align 4
  %idxprom65 = sext i32 %51 to i64
  %52 = load i32*, i32** %tempvecB, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %52, i64 %idxprom65
  %53 = load i32, i32* %arrayidx66, align 4
  %54 = load i32, i32* %neuron, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load i32*, i32** %tempvecA, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %55, i64 %idxprom67
  %56 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp eq i32 %53, %56
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.64, %while.cond.61
  %57 = phi i1 [ false, %while.cond.61 ], [ %cmp69, %land.rhs.64 ]
  br i1 %57, label %while.body.72, label %while.end

while.body.72:                                    ; preds = %land.end.71
  %58 = load i32, i32* %neuron, align 4
  %inc73 = add nsw i32 %58, 1
  store i32 %inc73, i32* %neuron, align 4
  br label %while.cond.61

while.end:                                        ; preds = %land.end.71
  %59 = load i32, i32* %neuron, align 4
  %idxprom74 = sext i32 %59 to i64
  %60 = load i32*, i32** %tempvecB, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %60, i64 %idxprom74
  %61 = load i32, i32* %arrayidx75, align 4
  %62 = load i32, i32* %neuron, align 4
  %idxprom76 = sext i32 %62 to i64
  %63 = load i32*, i32** %tempvecA, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %63, i64 %idxprom76
  store i32 %61, i32* %arrayidx77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %while.end, %if.then.60
  %64 = load i32, i32* %max, align 4
  %inc79 = add nsw i32 %64, 1
  store i32 %inc79, i32* %max, align 4
  br label %while.cond

while.end.80:                                     ; preds = %land.end
  %65 = load i32, i32* %max, align 4
  %cmp81 = icmp eq i32 %65, 500
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %while.end.80
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %while.end.80
  store i32 0, i32* %neuron, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.94, %if.end.85
  %66 = load i32, i32* %neuron, align 4
  %67 = load i32, i32* @NNTOT, align 4
  %cmp87 = icmp slt i32 %66, %67
  br i1 %cmp87, label %for.body.89, label %for.end.96

for.body.89:                                      ; preds = %for.cond.86
  %68 = load i32, i32* %neuron, align 4
  %idxprom90 = sext i32 %68 to i64
  %69 = load i32*, i32** %tempvecA, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %69, i64 %idxprom90
  %70 = load i32, i32* %arrayidx91, align 4
  %71 = load i32, i32* %neuron, align 4
  %idxprom92 = sext i32 %71 to i64
  %72 = load i32*, i32** %dest.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %72, i64 %idxprom92
  store i32 %70, i32* %arrayidx93, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.89
  %73 = load i32, i32* %neuron, align 4
  %inc95 = add nsw i32 %73, 1
  store i32 %inc95, i32* %neuron, align 4
  br label %for.cond.86

for.end.96:                                       ; preds = %for.cond.86
  %74 = load i32, i32* %max, align 4
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @runcont(i32* %source, i32* %dest) #0 {
entry:
  %source.addr = alloca i32*, align 8
  %dest.addr = alloca i32*, align 8
  %neuron = alloca i32, align 4
  %row = alloca i32, align 4
  %max = alloca i32, align 4
  %maxcont = alloca i32, align 4
  %tempvecA = alloca float*, align 8
  %thesum = alloca float, align 4
  %tempvecC = alloca i32*, align 8
  %stable = alloca i32, align 4
  %threshold = alloca i32, align 4
  store i32* %source, i32** %source.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32 0, i32* %max, align 4
  store i32 0, i32* %maxcont, align 4
  store i32 0, i32* %stable, align 4
  store i32 0, i32* %threshold, align 4
  %0 = load i32, i32* @NNTOT, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #8
  %1 = bitcast i8* %call to float*
  store float* %1, float** %tempvecA, align 8
  %2 = load i32, i32* @NNTOT, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @malloc(i64 %mul2) #8
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %tempvecC, align 8
  %4 = load float*, float** %tempvecA, align 8
  %tobool = icmp ne float* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32*, i32** %tempvecC, align 8
  %tobool4 = icmp ne i32* %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %neuron, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %neuron, align 4
  %8 = load i32, i32* @NNTOT, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %neuron, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %source.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %neuron, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %dest.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  store i32 %11, i32* %arrayidx8, align 4
  %conv9 = sitofp i32 %11 to float
  %14 = load i32, i32* %neuron, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load float*, float** %tempvecA, align 8
  %arrayidx11 = getelementptr inbounds float, float* %15, i64 %idxprom10
  store float %conv9, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %neuron, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %neuron, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.149, %for.end
  %17 = load i32, i32* %stable, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %max, align 4
  %cmp13 = icmp slt i32 %18, 500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %19, label %while.body, label %while.end.151

while.body:                                       ; preds = %land.end
  store i32 0, i32* %maxcont, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.44, %while.body
  %20 = load i32, i32* %row, align 4
  %21 = load i32, i32* @NNTOT, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body.18, label %for.end.46

for.body.18:                                      ; preds = %for.cond.15
  store float 0.000000e+00, float* %thesum, align 4
  store i32 0, i32* %neuron, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %for.body.18
  %22 = load i32, i32* %neuron, align 4
  %23 = load i32, i32* @NNTOT, align 4
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %for.body.22, label %for.end.33

for.body.22:                                      ; preds = %for.cond.19
  %24 = load i32, i32* %neuron, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load i32, i32* %row, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load float**, float*** @Tmatrix, align 8
  %arrayidx25 = getelementptr inbounds float*, float** %26, i64 %idxprom24
  %27 = load float*, float** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds float, float* %27, i64 %idxprom23
  %28 = load float, float* %arrayidx26, align 4
  %29 = load i32, i32* %neuron, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i32*, i32** %source.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 %idxprom27
  %31 = load i32, i32* %arrayidx28, align 4
  %conv29 = sitofp i32 %31 to float
  %mul30 = fmul float %28, %conv29
  %32 = load float, float* %thesum, align 4
  %add = fadd float %32, %mul30
  store float %add, float* %thesum, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.22
  %33 = load i32, i32* %neuron, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %neuron, align 4
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  %34 = load float, float* %thesum, align 4
  %conv34 = fpext float %34 to double
  %mul35 = fmul double -1.000000e+00, %conv34
  %call36 = call double @myexp(double %mul35)
  %sub = fsub double 1.000000e+00, %call36
  %35 = load float, float* %thesum, align 4
  %conv37 = fpext float %35 to double
  %mul38 = fmul double -1.000000e+00, %conv37
  %call39 = call double @myexp(double %mul38)
  %add40 = fadd double 1.000000e+00, %call39
  %div = fdiv double %sub, %add40
  %conv41 = fptrunc double %div to float
  %36 = load i32, i32* %row, align 4
  %idxprom42 = sext i32 %36 to i64
  %37 = load float*, float** %tempvecA, align 8
  %arrayidx43 = getelementptr inbounds float, float* %37, i64 %idxprom42
  store float %conv41, float* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.33
  %38 = load i32, i32* %row, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %row, align 4
  br label %for.cond.15

for.end.46:                                       ; preds = %for.cond.15
  br label %while.cond.47

while.cond.47:                                    ; preds = %for.end.100, %for.end.46
  %39 = load i32, i32* %threshold, align 4
  %tobool48 = icmp ne i32 %39, 0
  br i1 %tobool48, label %land.end.52, label %land.rhs.49

land.rhs.49:                                      ; preds = %while.cond.47
  %40 = load i32, i32* %maxcont, align 4
  %cmp50 = icmp slt i32 %40, 50
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.49, %while.cond.47
  %41 = phi i1 [ false, %while.cond.47 ], [ %cmp50, %land.rhs.49 ]
  br i1 %41, label %while.body.53, label %while.end

while.body.53:                                    ; preds = %land.end.52
  store i32 1, i32* %threshold, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.98, %while.body.53
  %42 = load i32, i32* %row, align 4
  %43 = load i32, i32* @NNTOT, align 4
  %cmp55 = icmp slt i32 %42, %43
  br i1 %cmp55, label %for.body.57, label %for.end.100

for.body.57:                                      ; preds = %for.cond.54
  %44 = load i32, i32* %row, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load float*, float** %tempvecA, align 8
  %arrayidx59 = getelementptr inbounds float, float* %45, i64 %idxprom58
  %46 = load float, float* %arrayidx59, align 4
  %conv60 = fpext float %46 to double
  %call61 = call double @fabs(double %conv60) #9
  %cmp62 = fcmp olt double %call61, 7.000000e-01
  br i1 %cmp62, label %if.then.64, label %if.end.97

if.then.64:                                       ; preds = %for.body.57
  store float 0.000000e+00, float* %thesum, align 4
  store i32 0, i32* %neuron, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.77, %if.then.64
  %47 = load i32, i32* %neuron, align 4
  %48 = load i32, i32* @NNTOT, align 4
  %cmp66 = icmp slt i32 %47, %48
  br i1 %cmp66, label %for.body.68, label %for.end.79

for.body.68:                                      ; preds = %for.cond.65
  %49 = load i32, i32* %neuron, align 4
  %idxprom69 = sext i32 %49 to i64
  %50 = load i32, i32* %row, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load float**, float*** @Tmatrix, align 8
  %arrayidx71 = getelementptr inbounds float*, float** %51, i64 %idxprom70
  %52 = load float*, float** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds float, float* %52, i64 %idxprom69
  %53 = load float, float* %arrayidx72, align 4
  %54 = load i32, i32* %neuron, align 4
  %idxprom73 = sext i32 %54 to i64
  %55 = load float*, float** %tempvecA, align 8
  %arrayidx74 = getelementptr inbounds float, float* %55, i64 %idxprom73
  %56 = load float, float* %arrayidx74, align 4
  %mul75 = fmul float %53, %56
  %57 = load float, float* %thesum, align 4
  %add76 = fadd float %57, %mul75
  store float %add76, float* %thesum, align 4
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.68
  %58 = load i32, i32* %neuron, align 4
  %inc78 = add nsw i32 %58, 1
  store i32 %inc78, i32* %neuron, align 4
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  %59 = load float, float* %thesum, align 4
  %conv80 = fpext float %59 to double
  %mul81 = fmul double -1.000000e+00, %conv80
  %call82 = call double @myexp(double %mul81)
  %sub83 = fsub double 1.000000e+00, %call82
  %60 = load float, float* %thesum, align 4
  %conv84 = fpext float %60 to double
  %mul85 = fmul double -1.000000e+00, %conv84
  %call86 = call double @myexp(double %mul85)
  %add87 = fadd double 1.000000e+00, %call86
  %div88 = fdiv double %sub83, %add87
  %conv89 = fptrunc double %div88 to float
  %61 = load i32, i32* %row, align 4
  %idxprom90 = sext i32 %61 to i64
  %62 = load float*, float** %tempvecA, align 8
  %arrayidx91 = getelementptr inbounds float, float* %62, i64 %idxprom90
  store float %conv89, float* %arrayidx91, align 4
  %conv92 = fpext float %conv89 to double
  %cmp93 = fcmp olt double %conv92, 7.000000e-01
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.end.79
  store i32 0, i32* %threshold, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %for.end.79
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %for.body.57
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %63 = load i32, i32* %row, align 4
  %inc99 = add nsw i32 %63, 1
  store i32 %inc99, i32* %row, align 4
  br label %for.cond.54

for.end.100:                                      ; preds = %for.cond.54
  %64 = load i32, i32* %maxcont, align 4
  %inc101 = add nsw i32 %64, 1
  store i32 %inc101, i32* %maxcont, align 4
  br label %while.cond.47

while.end:                                        ; preds = %land.end.52
  store i32 0, i32* %neuron, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.112, %while.end
  %65 = load i32, i32* %neuron, align 4
  %66 = load i32, i32* @NNTOT, align 4
  %cmp103 = icmp slt i32 %65, %66
  br i1 %cmp103, label %for.body.105, label %for.end.114

for.body.105:                                     ; preds = %for.cond.102
  %67 = load i32, i32* %neuron, align 4
  %idxprom106 = sext i32 %67 to i64
  %68 = load float*, float** %tempvecA, align 8
  %arrayidx107 = getelementptr inbounds float, float* %68, i64 %idxprom106
  %69 = load float, float* %arrayidx107, align 4
  %cmp108 = fcmp ogt float %69, 0.000000e+00
  %cond = select i1 %cmp108, i32 1, i32 -1
  %70 = load i32, i32* %neuron, align 4
  %idxprom110 = sext i32 %70 to i64
  %71 = load i32*, i32** %tempvecC, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %71, i64 %idxprom110
  store i32 %cond, i32* %arrayidx111, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.105
  %72 = load i32, i32* %neuron, align 4
  %inc113 = add nsw i32 %72, 1
  store i32 %inc113, i32* %neuron, align 4
  br label %for.cond.102

for.end.114:                                      ; preds = %for.cond.102
  %73 = load i32*, i32** %dest.addr, align 8
  %74 = load i32*, i32** %tempvecC, align 8
  %call115 = call i32 @hamming(i32* %73, i32* %74, i32 1)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %for.end.114
  store i32 1, i32* %stable, align 4
  br label %if.end.149

if.else:                                          ; preds = %for.end.114
  store i32 0, i32* %neuron, align 4
  br label %while.cond.119

while.cond.119:                                   ; preds = %while.body.130, %if.else
  %75 = load i32, i32* %neuron, align 4
  %76 = load i32, i32* @NNTOT, align 4
  %cmp120 = icmp slt i32 %75, %76
  br i1 %cmp120, label %land.rhs.122, label %land.end.129

land.rhs.122:                                     ; preds = %while.cond.119
  %77 = load i32, i32* %neuron, align 4
  %idxprom123 = sext i32 %77 to i64
  %78 = load i32*, i32** %dest.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %78, i64 %idxprom123
  %79 = load i32, i32* %arrayidx124, align 4
  %80 = load i32, i32* %neuron, align 4
  %idxprom125 = sext i32 %80 to i64
  %81 = load i32*, i32** %tempvecC, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %81, i64 %idxprom125
  %82 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp eq i32 %79, %82
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.122, %while.cond.119
  %83 = phi i1 [ false, %while.cond.119 ], [ %cmp127, %land.rhs.122 ]
  br i1 %83, label %while.body.130, label %while.end.132

while.body.130:                                   ; preds = %land.end.129
  %84 = load i32, i32* %neuron, align 4
  %inc131 = add nsw i32 %84, 1
  store i32 %inc131, i32* %neuron, align 4
  br label %while.cond.119

while.end.132:                                    ; preds = %land.end.129
  %85 = load i32, i32* %neuron, align 4
  %idxprom133 = sext i32 %85 to i64
  %86 = load i32*, i32** %tempvecC, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %86, i64 %idxprom133
  %87 = load i32, i32* %arrayidx134, align 4
  %88 = load i32, i32* %neuron, align 4
  %idxprom135 = sext i32 %88 to i64
  %89 = load i32*, i32** %dest.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %89, i64 %idxprom135
  store i32 %87, i32* %arrayidx136, align 4
  store i32 0, i32* %neuron, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.146, %while.end.132
  %90 = load i32, i32* %neuron, align 4
  %91 = load i32, i32* @NNTOT, align 4
  %cmp138 = icmp slt i32 %90, %91
  br i1 %cmp138, label %for.body.140, label %for.end.148

for.body.140:                                     ; preds = %for.cond.137
  %92 = load i32, i32* %neuron, align 4
  %idxprom141 = sext i32 %92 to i64
  %93 = load i32*, i32** %dest.addr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %93, i64 %idxprom141
  %94 = load i32, i32* %arrayidx142, align 4
  %conv143 = sitofp i32 %94 to float
  %95 = load i32, i32* %neuron, align 4
  %idxprom144 = sext i32 %95 to i64
  %96 = load float*, float** %tempvecA, align 8
  %arrayidx145 = getelementptr inbounds float, float* %96, i64 %idxprom144
  store float %conv143, float* %arrayidx145, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.140
  %97 = load i32, i32* %neuron, align 4
  %inc147 = add nsw i32 %97, 1
  store i32 %inc147, i32* %neuron, align 4
  br label %for.cond.137

for.end.148:                                      ; preds = %for.cond.137
  br label %if.end.149

if.end.149:                                       ; preds = %for.end.148, %if.then.118
  %98 = load i32, i32* %max, align 4
  %inc150 = add nsw i32 %98, 1
  store i32 %inc150, i32* %max, align 4
  br label %while.cond

while.end.151:                                    ; preds = %land.end
  %99 = load i32, i32* %max, align 4
  %cmp152 = icmp eq i32 %99, 500
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %while.end.151
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %while.end.151
  %100 = load i32, i32* %max, align 4
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal double @myexp(double %in) #0 {
entry:
  %in.addr = alloca double, align 8
  store double %in, double* %in.addr, align 8
  %0 = load double, double* %in.addr, align 8
  %cmp = fcmp ogt double %0, 2.000000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 2.000000e+02, double* %in.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %in.addr, align 8
  %cmp1 = fcmp olt double %1, -2.000000e+02
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double -2.000000e+02, double* %in.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %in.addr, align 8
  %call = call double @exp(double %2) #8
  ret double %call
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @storecheck() #0 {
entry:
  %vec = alloca i32, align 4
  %hd = alloca i32, align 4
  %iter = alloca i32*, align 8
  %0 = load i32, i32* @NUMPATS, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #8
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %iter, align 8
  %2 = load i32*, i32** %iter, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %vec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %vec, align 4
  %5 = load i32, i32* @NUMPATS, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @nmode, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %7 = load i32, i32* %vec, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32**, i32*** @vectors, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom
  %9 = load i32*, i32** %arrayidx, align 8
  %10 = load i32, i32* %vec, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32**, i32*** @newvectors, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %11, i64 %idxprom6
  %12 = load i32*, i32** %arrayidx7, align 8
  %call8 = call i32 @run(i32* %9, i32* %12)
  %13 = load i32, i32* %vec, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i32*, i32** %iter, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  store i32 %call8, i32* %arrayidx10, align 4
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %vec, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i32**, i32*** @vectors, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 %idxprom11
  %17 = load i32*, i32** %arrayidx12, align 8
  %18 = load i32, i32* %vec, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load i32**, i32*** @newvectors, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %19, i64 %idxprom13
  %20 = load i32*, i32** %arrayidx14, align 8
  %call15 = call i32 @runcont(i32* %17, i32* %20)
  %21 = load i32, i32* %vec, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32*, i32** %iter, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 %idxprom16
  store i32 %call15, i32* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %23 = load i32, i32* %vec, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %vec, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %vec, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.39, %for.end
  %24 = load i32, i32* %vec, align 4
  %25 = load i32, i32* @NUMPATS, align 4
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body.22, label %for.end.41

for.body.22:                                      ; preds = %for.cond.19
  %26 = load i32, i32* %vec, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32**, i32*** @vectors, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %27, i64 %idxprom23
  %28 = load i32*, i32** %arrayidx24, align 8
  %29 = load i32, i32* %vec, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load i32**, i32*** @newvectors, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %30, i64 %idxprom25
  %31 = load i32*, i32** %arrayidx26, align 8
  %call27 = call i32 @hamming(i32* %28, i32* %31, i32 1)
  store i32 %call27, i32* %hd, align 4
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %for.body.22
  %32 = load i32, i32* %vec, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load i32*, i32** @stored, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %33, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4
  %34 = load i32, i32* %vec, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %34)
  br label %if.end.38

if.else.34:                                       ; preds = %for.body.22
  %35 = load i32, i32* %vec, align 4
  %idxprom35 = sext i32 %35 to i64
  %36 = load i32*, i32** @stored, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %36, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4
  %37 = load i32, i32* %vec, align 4
  %38 = load i32, i32* %hd, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i32 %37, i32 %38)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.then.30
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %39 = load i32, i32* %vec, align 4
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* %vec, align 4
  br label %for.cond.19

for.end.41:                                       ; preds = %for.cond.19
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
