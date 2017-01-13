; ModuleID = './MultiSource.Benchmarks.MiBench/72.consumer-typeset.z45.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"run out of memory when reading index file %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ReadLines: lines and buff overlap!\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"line too long when reading index file %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseCollate = external global i32, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot open index file %s for reading\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"cannot open index file %s for writing\00", align 1

; Function Attrs: nounwind uwtable
define i8** @ReadLines(%struct._IO_FILE* %fp, i8* %fname, i8* %first_line, i32* %len) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %fname.addr = alloca i8*, align 8
  %first_line.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  %buff = alloca i8*, align 8
  %buff_top = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %lines = alloca i8**, align 8
  %lines_length = alloca i32, align 4
  %lines_top = alloca i8**, align 8
  %lp = alloca i8**, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i8* %first_line, i8** %first_line.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  %call = call noalias i8* @malloc(i64 4096) #4
  store i8* %call, i8** %buff, align 8
  %0 = load i8*, i8** %buff, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2 = load i8*, i8** %fname.addr, align 8
  %call1 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1, i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %buff, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 4096
  store i8* %add.ptr, i8** %buff_top, align 8
  %4 = load i8*, i8** %buff, align 8
  store i8* %4, i8** %bp, align 8
  store i32 2000, i32* %lines_length, align 4
  %5 = load i32, i32* %lines_length, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 %mul) #4
  %6 = bitcast i8* %call2 to i8**
  store i8** %6, i8*** %lines, align 8
  %7 = load i32, i32* %lines_length, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %lines, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  store i8** %arrayidx, i8*** %lines_top, align 8
  %9 = load i8**, i8*** %lines, align 8
  store i8** %9, i8*** %lp, align 8
  %10 = load i8*, i8** %first_line.addr, align 8
  %cmp3 = icmp ne i8* %10, null
  br i1 %cmp3, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %11 = load i8*, i8** %first_line.addr, align 8
  %call6 = call i64 @strlen(i8* %11) #5
  %add = add i64 %call6, 1
  %mul7 = mul i64 %add, 1
  %call8 = call noalias i8* @malloc(i64 %mul7) #4
  %12 = load i8**, i8*** %lp, align 8
  store i8* %call8, i8** %12, align 8
  %13 = load i8**, i8*** %lp, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %first_line.addr, align 8
  %call9 = call i8* @strcpy(i8* %14, i8* %15) #4
  %16 = load i8**, i8*** %lp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %lp, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  %17 = load i8*, i8** %bp, align 8
  %18 = load i8**, i8*** %lp, align 8
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr11, i8*** %lp, align 8
  store i8* %17, i8** %18, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %if.end.10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %call12, i32* %ch, align 4
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %buff, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load i8**, i8*** %lines_top, align 8
  %23 = ptrtoint i8** %22 to i32
  %cmp15 = icmp sge i32 %21, %23
  br i1 %cmp15, label %if.end.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %24 = load i8*, i8** %buff_top, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load i8**, i8*** %lines, align 8
  %27 = ptrtoint i8** %26 to i32
  %cmp17 = icmp sle i32 %25, %27
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %lor.lhs.false, %while.body
  %29 = load i8*, i8** %bp, align 8
  %30 = load i8*, i8** %buff_top, align 8
  %cmp22 = icmp eq i8* %29, %30
  br i1 %cmp22, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %if.end.21
  %call25 = call noalias i8* @malloc(i64 4096) #4
  store i8* %call25, i8** %buff, align 8
  %31 = load i8*, i8** %buff, align 8
  %cmp26 = icmp eq i8* %31, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.24
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %33 = load i8*, i8** %fname.addr, align 8
  %call29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %32, i8* %33)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.24
  %34 = load i8*, i8** %buff, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %34, i64 4096
  store i8* %add.ptr31, i8** %buff_top, align 8
  %35 = load i8*, i8** %buff, align 8
  store i8* %35, i8** %p, align 8
  %36 = load i8**, i8*** %lp, align 8
  %add.ptr32 = getelementptr inbounds i8*, i8** %36, i64 -1
  %37 = load i8*, i8** %add.ptr32, align 8
  store i8* %37, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %38 = load i8*, i8** %q, align 8
  %39 = load i8*, i8** %bp, align 8
  %cmp33 = icmp ne i8* %38, %39
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i8*, i8** %q, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr35, i8** %q, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  store i8 %41, i8* %42, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %p, align 8
  store i8* %43, i8** %bp, align 8
  %44 = load i8*, i8** %bp, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %buff, align 8
  %46 = load i8**, i8*** %lp, align 8
  %add.ptr37 = getelementptr inbounds i8*, i8** %46, i64 -1
  store i8* %45, i8** %add.ptr37, align 8
  %47 = load i8*, i8** %bp, align 8
  %48 = load i8*, i8** %buff_top, align 8
  %cmp38 = icmp eq i8* %47, %48
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.end
  %49 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %50 = load i8*, i8** %fname.addr, align 8
  %call41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %49, i8* %50)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %for.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.21
  %51 = load i32, i32* %ch, align 4
  %cmp44 = icmp eq i32 %51, 10
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.43
  %52 = load i8*, i8** %bp, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr47, i8** %bp, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8**, i8*** %lp, align 8
  %54 = load i8**, i8*** %lines_top, align 8
  %cmp48 = icmp eq i8** %53, %54
  br i1 %cmp48, label %if.then.50, label %if.end.65

if.then.50:                                       ; preds = %if.then.46
  %55 = load i8**, i8*** %lines, align 8
  %56 = bitcast i8** %55 to i8*
  %57 = load i32, i32* %lines_length, align 4
  %mul51 = mul nsw i32 2, %57
  %conv52 = sext i32 %mul51 to i64
  %mul53 = mul i64 %conv52, 8
  %call54 = call i8* @realloc(i8* %56, i64 %mul53) #4
  %58 = bitcast i8* %call54 to i8**
  store i8** %58, i8*** %lines, align 8
  %59 = load i8**, i8*** %lines, align 8
  %cmp55 = icmp eq i8** %59, null
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.50
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %61 = load i8*, i8** %fname.addr, align 8
  %call58 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %60, i8* %61)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.50
  %62 = load i32, i32* %lines_length, align 4
  %idxprom60 = sext i32 %62 to i64
  %63 = load i8**, i8*** %lines, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %63, i64 %idxprom60
  store i8** %arrayidx61, i8*** %lp, align 8
  %64 = load i32, i32* %lines_length, align 4
  %mul62 = mul nsw i32 2, %64
  store i32 %mul62, i32* %lines_length, align 4
  %65 = load i32, i32* %lines_length, align 4
  %idxprom63 = sext i32 %65 to i64
  %66 = load i8**, i8*** %lines, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %66, i64 %idxprom63
  store i8** %arrayidx64, i8*** %lines_top, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.59, %if.then.46
  %67 = load i8*, i8** %bp, align 8
  %68 = load i8**, i8*** %lp, align 8
  %incdec.ptr66 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %incdec.ptr66, i8*** %lp, align 8
  store i8* %67, i8** %68, align 8
  br label %if.end.69

if.else:                                          ; preds = %if.end.43
  %69 = load i32, i32* %ch, align 4
  %conv67 = trunc i32 %69 to i8
  %70 = load i8*, i8** %bp, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr68, i8** %bp, align 8
  store i8 %conv67, i8* %70, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.end.65
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load i8**, i8*** %lp, align 8
  %72 = load i8**, i8*** %lines, align 8
  %sub.ptr.lhs.cast = ptrtoint i8** %71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %72 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %sub = sub nsw i64 %sub.ptr.div, 1
  %conv70 = trunc i64 %sub to i32
  %73 = load i32*, i32** %len.addr, align 8
  store i32 %conv70, i32* %73, align 4
  %74 = load i8**, i8*** %lines, align 8
  ret i8** %74
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @WriteLines(%struct._IO_FILE* %fp, i8** %lines, i32 %len) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lines.addr = alloca i8**, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %lines, i8*** %lines.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %lines.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* %4, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @SortLines(i8** %lines, i32 %lines_len) #0 {
entry:
  %lines.addr = alloca i8**, align 8
  %lines_len.addr = alloca i32, align 4
  store i8** %lines, i8*** %lines.addr, align 8
  store i32 %lines_len, i32* %lines_len.addr, align 4
  %0 = load i8**, i8*** %lines.addr, align 8
  %1 = bitcast i8** %0 to i8*
  %2 = load i32, i32* %lines_len.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* @UseCollate, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 (i8*, i8*)* @pstrcollcmp, i32 (i8*, i8*)* @pstrcmp
  call void @qsort(i8* %1, i64 %conv, i64 8, i32 (i8*, i8*)* %cond)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pstrcollcmp(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i32 @strcollcmp(i8* %2, i8* %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @pstrcmp(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i32 @strcmp(i8* %2, i8* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @SortFile(i8* %infile, i8* %outfile) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %lines = alloca i8**, align 8
  %lines_len = alloca i32, align 4
  %in_fp = alloca %struct._IO_FILE*, align 8
  %out_fp = alloca %struct._IO_FILE*, align 8
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  %0 = load i8*, i8** %infile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in_fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = load i8*, i8** %outfile.addr, align 8
  %call1 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %outfile.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %out_fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = load i8*, i8** %outfile.addr, align 8
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 45, i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %6, i8* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %9 = load i8*, i8** %infile.addr, align 8
  %call7 = call i8** @ReadLines(%struct._IO_FILE* %8, i8* %9, i8* null, i32* %lines_len)
  store i8** %call7, i8*** %lines, align 8
  %10 = load i8**, i8*** %lines, align 8
  %11 = load i32, i32* %lines_len, align 4
  call void @SortLines(i8** %10, i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %14 = load i8**, i8*** %lines, align 8
  %15 = load i32, i32* %lines_len, align 4
  call void @WriteLines(%struct._IO_FILE* %13, i8** %14, i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out_fp, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %16)
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @strcollcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
