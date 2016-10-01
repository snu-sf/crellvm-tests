; ModuleID = './MultiSource.Benchmarks.Prolangs-C/67.agrep.mgrep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pat_list = type { i32, %struct.pat_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@LONG = global i32 0, align 4
@SHORT = global i32 0, align 4
@p_size = global i32 0, align 4
@total_line = external global i32, align 4
@HASH = common global [8192 x %struct.pat_list*] zeroinitializer, align 16
@patt = common global [30000 x i8*] zeroinitializer, align 16
@tr = common global [256 x i8] zeroinitializer, align 16
@pat_len = common global [30000 x i8] zeroinitializer, align 16
@num_of_matched = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@SILENT = external global i32, align 4
@COUNT = external global i32, align 4
@FNAME = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = external global [0 x i8], align 1
@INVERSE = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SHIFT1 = common global [4096 x i8] zeroinitializer, align 16
@qt = common global %struct.pat_list* null, align 8
@pt = common global %struct.pat_list* null, align 8
@pat_spool = common global [320256 x i8] zeroinitializer, align 16
@buf = common global [268192 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@Progname = external global [0 x i8], align 1
@WORDBOUND = external global i32, align 4
@WHOLELINE = external global i32, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@NOUPPER = external global i32, align 4
@tr1 = common global [256 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"the pattern file is empty\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @countline(i8* %text, i32 %len) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
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
  %3 = load i8*, i8** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* @total_line, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @total_line, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @m_short(i8* %text, i32 %start, i32 %end) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %textend = alloca i8*, align 8
  %j = alloca i32, align 4
  %p = alloca %struct.pat_list*, align 8
  %pat_index = alloca i32, align 4
  %MATCHED = alloca i32, align 4
  %OUT = alloca i32, align 4
  %lastout = alloca i8*, align 8
  %qx = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 0, i32* %MATCHED, align 4
  store i32 0, i32* %OUT, align 4
  %0 = load i8*, i8** %text.addr, align 8
  %1 = load i32, i32* %end.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %textend, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 1
  store i8* %add.ptr3, i8** %lastout, align 8
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i32, i32* %start.addr, align 4
  %idx.ext4 = sext i32 %5 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %4, i64 %idx.ext4
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 -1
  store i8* %add.ptr6, i8** %text.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end.105, %entry
  %6 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  %7 = load i8*, i8** %textend, align 8
  %cmp = icmp ule i8* %incdec.ptr, %7
  br i1 %cmp, label %while.body, label %while.end.106

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %text.addr, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i32 0, i64 %idxprom
  %10 = load %struct.pat_list*, %struct.pat_list** %arrayidx, align 8
  store %struct.pat_list* %10, %struct.pat_list** %p, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %if.end.104, %while.body
  %11 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %cmp8 = icmp ne %struct.pat_list* %11, null
  br i1 %cmp8, label %while.body.9, label %while.end.105

while.body.9:                                     ; preds = %while.cond.7
  %12 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %index = getelementptr inbounds %struct.pat_list, %struct.pat_list* %12, i32 0, i32 0
  %13 = load i32, i32* %index, align 4
  store i32 %13, i32* %pat_index, align 4
  %14 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %next = getelementptr inbounds %struct.pat_list, %struct.pat_list* %14, i32 0, i32 1
  %15 = load %struct.pat_list*, %struct.pat_list** %next, align 8
  store %struct.pat_list* %15, %struct.pat_list** %p, align 8
  %16 = load i8*, i8** %text.addr, align 8
  store i8* %16, i8** %qx, align 8
  store i32 0, i32* %j, align 4
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.23, %while.body.9
  %17 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32, i32* %pat_index, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i32 0, i64 %idxprom12
  %19 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %19, i64 %idxprom11
  %20 = load i8, i8* %arrayidx14, align 1
  %idxprom15 = zext i8 %20 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom15
  %21 = load i8, i8* %arrayidx16, align 1
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %qx, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %qx, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom18 = zext i8 %23 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom18
  %24 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  br i1 %cmp21, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.10
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  %26 = load i32, i32* %pat_index, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i32 0, i64 %idxprom24
  %27 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %28 = load i32, i32* %j, align 4
  %cmp27 = icmp sle i32 %conv26, %28
  br i1 %cmp27, label %if.then, label %if.end.101

if.then:                                          ; preds = %while.end
  %29 = load i8*, i8** %text.addr, align 8
  %30 = load i8*, i8** %textend, align 8
  %cmp29 = icmp uge i8* %29, %30
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.then
  br label %if.end.118

if.end:                                           ; preds = %if.then
  %31 = load i32, i32* @num_of_matched, align 4
  %inc32 = add nsw i32 %31, 1
  store i32 %inc32, i32* @num_of_matched, align 4
  %32 = load i32, i32* @FILENAMEONLY, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %33 = load i32, i32* @SILENT, align 4
  %tobool33 = icmp ne i32 %33, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.118

if.end.35:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* @COUNT, align 4
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.35
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.42, %if.then.37
  %35 = load i8*, i8** %text.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv39 = zext i8 %36 to i32
  %cmp40 = icmp ne i32 %conv39, 10
  br i1 %cmp40, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %while.cond.38
  %37 = load i8*, i8** %text.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr43, i8** %text.addr, align 8
  br label %while.cond.38

while.end.44:                                     ; preds = %while.cond.38
  br label %if.end.100

if.else:                                          ; preds = %if.end.35
  %38 = load i32, i32* @FNAME, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.else
  %39 = load i32, i32* @INVERSE, align 4
  %tobool48 = icmp ne i32 %39, 0
  br i1 %tobool48, label %if.else.67, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  br label %while.cond.50

while.cond.50:                                    ; preds = %while.body.55, %if.then.49
  %40 = load i8*, i8** %text.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr51, i8** %text.addr, align 8
  %41 = load i8, i8* %incdec.ptr51, align 1
  %conv52 = zext i8 %41 to i32
  %cmp53 = icmp ne i32 %conv52, 10
  br i1 %cmp53, label %while.body.55, label %while.end.56

while.body.55:                                    ; preds = %while.cond.50
  br label %while.cond.50

while.end.56:                                     ; preds = %while.cond.50
  br label %while.cond.57

while.cond.57:                                    ; preds = %while.body.62, %while.end.56
  %42 = load i8*, i8** %text.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr58, i8** %text.addr, align 8
  %43 = load i8, i8* %incdec.ptr58, align 1
  %conv59 = zext i8 %43 to i32
  %cmp60 = icmp ne i32 %conv59, 10
  br i1 %cmp60, label %while.body.62, label %while.end.65

while.body.62:                                    ; preds = %while.cond.57
  %44 = load i8*, i8** %text.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv63 = zext i8 %45 to i32
  %call64 = call i32 @putchar(i32 %conv63)
  br label %while.cond.57

while.end.65:                                     ; preds = %while.cond.57
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %MATCHED, align 4
  br label %if.end.99

if.else.67:                                       ; preds = %if.end.47
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.73, %if.else.67
  %46 = load i8*, i8** %text.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr69, i8** %text.addr, align 8
  %47 = load i8, i8* %incdec.ptr69, align 1
  %conv70 = zext i8 %47 to i32
  %cmp71 = icmp ne i32 %conv70, 10
  br i1 %cmp71, label %while.body.73, label %while.end.74

while.body.73:                                    ; preds = %while.cond.68
  br label %while.cond.68

while.end.74:                                     ; preds = %while.cond.68
  %48 = load i8*, i8** %lastout, align 8
  %49 = load i8*, i8** %text.addr, align 8
  %cmp75 = icmp ult i8* %48, %49
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %while.end.74
  store i32 1, i32* %OUT, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.end.74
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.82, %if.end.78
  %50 = load i8*, i8** %lastout, align 8
  %51 = load i8*, i8** %text.addr, align 8
  %cmp80 = icmp ult i8* %50, %51
  br i1 %cmp80, label %while.body.82, label %while.end.86

while.body.82:                                    ; preds = %while.cond.79
  %52 = load i8*, i8** %lastout, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr83, i8** %lastout, align 8
  %53 = load i8, i8* %52, align 1
  %conv84 = zext i8 %53 to i32
  %call85 = call i32 @putchar(i32 %conv84)
  br label %while.cond.79

while.end.86:                                     ; preds = %while.cond.79
  %54 = load i32, i32* %OUT, align 4
  %tobool87 = icmp ne i32 %54, 0
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %while.end.86
  %call89 = call i32 @putchar(i32 10)
  store i32 0, i32* %OUT, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %while.end.86
  br label %while.cond.91

while.cond.91:                                    ; preds = %while.body.96, %if.end.90
  %55 = load i8*, i8** %text.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr92, i8** %text.addr, align 8
  %56 = load i8, i8* %incdec.ptr92, align 1
  %conv93 = zext i8 %56 to i32
  %cmp94 = icmp ne i32 %conv93, 10
  br i1 %cmp94, label %while.body.96, label %while.end.97

while.body.96:                                    ; preds = %while.cond.91
  br label %while.cond.91

while.end.97:                                     ; preds = %while.cond.91
  %57 = load i8*, i8** %text.addr, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %add.ptr98, i8** %lastout, align 8
  store i32 1, i32* %MATCHED, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.97, %while.end.65
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %while.end.44
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %while.end
  %58 = load i32, i32* %MATCHED, align 4
  %tobool102 = icmp ne i32 %58, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.101
  br label %while.end.105

if.end.104:                                       ; preds = %if.end.101
  br label %while.cond.7

while.end.105:                                    ; preds = %if.then.103, %while.cond.7
  store i32 0, i32* %MATCHED, align 4
  br label %while.cond

while.end.106:                                    ; preds = %while.cond
  %59 = load i32, i32* @INVERSE, align 4
  %tobool107 = icmp ne i32 %59, 0
  br i1 %tobool107, label %land.lhs.true, label %if.end.118

land.lhs.true:                                    ; preds = %while.end.106
  %60 = load i32, i32* @COUNT, align 4
  %tobool108 = icmp ne i32 %60, 0
  br i1 %tobool108, label %if.end.118, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.113, %if.then.109
  %61 = load i8*, i8** %lastout, align 8
  %62 = load i8*, i8** %textend, align 8
  %cmp111 = icmp ule i8* %61, %62
  br i1 %cmp111, label %while.body.113, label %while.end.117

while.body.113:                                   ; preds = %while.cond.110
  %63 = load i8*, i8** %lastout, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr114, i8** %lastout, align 8
  %64 = load i8, i8* %63, align 1
  %conv115 = zext i8 %64 to i32
  %call116 = call i32 @putchar(i32 %conv115)
  br label %while.cond.110

while.end.117:                                    ; preds = %while.cond.110
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.31, %if.then.34, %while.end.117, %land.lhs.true, %while.end.106
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define void @f_prep(i32 %pat_index, i8* %Pattern) #0 {
entry:
  %pat_index.addr = alloca i32, align 4
  %Pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %hash = alloca i32, align 4
  %Mask = alloca i32, align 4
  store i32 %pat_index, i32* %pat_index.addr, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 15, i32* %Mask, align 4
  %0 = load i32, i32* @p_size, align 4
  store i32 %0, i32* %m, align 4
  %1 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @LONG, align 4
  %add = add nsw i32 1, %3
  %cmp = icmp sge i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %Mask, align 4
  %and = and i32 %conv, %7
  store i32 %and, i32* %hash, align 4
  %8 = load i32, i32* %hash, align 4
  %shl = shl i32 %8, 4
  %9 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %9, 1
  %idxprom2 = sext i32 %sub1 to i64
  %10 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %11 to i32
  %12 = load i32, i32* %Mask, align 4
  %and5 = and i32 %conv4, %12
  %add6 = add i32 %shl, %and5
  store i32 %add6, i32* %hash, align 4
  %13 = load i32, i32* @LONG, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %hash, align 4
  %shl7 = shl i32 %14, 4
  %15 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 %15, 2
  %idxprom9 = sext i32 %sub8 to i64
  %16 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %18 = load i32, i32* %Mask, align 4
  %and12 = and i32 %conv11, %18
  %add13 = add i32 %shl7, %and12
  store i32 %add13, i32* %hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, i32* %hash, align 4
  %idxprom14 = zext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i32 0, i64 %idxprom14
  %20 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  %21 = load i32, i32* %m, align 4
  %sub17 = sub nsw i32 %21, 1
  %22 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 %sub17, %22
  %cmp19 = icmp sge i32 %conv16, %sub18
  br i1 %cmp19, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end
  %23 = load i32, i32* %m, align 4
  %sub22 = sub nsw i32 %23, 1
  %24 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %sub22, %24
  %conv24 = trunc i32 %sub23 to i8
  %25 = load i32, i32* %hash, align 4
  %idxprom25 = zext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i32 0, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* @SHORT, align 4
  %tobool28 = icmp ne i32 %27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  store i32 255, i32* %Mask, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.end
  store i32 0, i32* %hash, align 4
  %28 = load i32, i32* %m, align 4
  %sub31 = sub nsw i32 %28, 1
  store i32 %sub31, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.44, %if.end.30
  %29 = load i32, i32* %i, align 4
  %cmp33 = icmp sge i32 %29, 0
  br i1 %cmp33, label %for.body.35, label %for.end.46

for.body.35:                                      ; preds = %for.cond.32
  %30 = load i32, i32* %hash, align 4
  %shl36 = shl i32 %30, 4
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 %idxprom37
  %33 = load i8, i8* %arrayidx38, align 1
  %idxprom39 = zext i8 %33 to i64
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom39
  %34 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %34 to i32
  %35 = load i32, i32* %Mask, align 4
  %and42 = and i32 %conv41, %35
  %add43 = add i32 %shl36, %and42
  store i32 %add43, i32* %hash, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.35
  %36 = load i32, i32* %i, align 4
  %dec45 = add nsw i32 %36, -1
  store i32 %dec45, i32* %i, align 4
  br label %for.cond.32

for.end.46:                                       ; preds = %for.cond.32
  %37 = load i32, i32* %hash, align 4
  %and47 = and i32 %37, 8191
  store i32 %and47, i32* %hash, align 4
  %call = call noalias i8* @malloc(i64 16) #6
  %38 = bitcast i8* %call to %struct.pat_list*
  store %struct.pat_list* %38, %struct.pat_list** @qt, align 8
  %39 = load i32, i32* %pat_index.addr, align 4
  %40 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %index = getelementptr inbounds %struct.pat_list, %struct.pat_list* %40, i32 0, i32 0
  store i32 %39, i32* %index, align 4
  %41 = load i32, i32* %hash, align 4
  %idxprom48 = zext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i32 0, i64 %idxprom48
  %42 = load %struct.pat_list*, %struct.pat_list** %arrayidx49, align 8
  store %struct.pat_list* %42, %struct.pat_list** @pt, align 8
  %43 = load %struct.pat_list*, %struct.pat_list** @pt, align 8
  %44 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %next = getelementptr inbounds %struct.pat_list, %struct.pat_list* %44, i32 0, i32 1
  store %struct.pat_list* %43, %struct.pat_list** %next, align 8
  %45 = load %struct.pat_list*, %struct.pat_list** @qt, align 8
  %46 = load i32, i32* %hash, align 4
  %idxprom50 = zext i32 %46 to i64
  %arrayidx51 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i32 0, i64 %idxprom50
  store %struct.pat_list* %45, %struct.pat_list** %arrayidx51, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @prepf(i32 %fp) #0 {
entry:
  %fp.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %num_pat = alloca i32, align 4
  %pat_ptr = alloca i8*, align 8
  %Mask = alloca i32, align 4
  %num_read = alloca i32, align 4
  store i32 %fp, i32* %fp.addr, align 4
  store i32 0, i32* %length, align 4
  store i32 1, i32* %p, align 4
  store i8* getelementptr inbounds ([320256 x i8], [320256 x i8]* @pat_spool, i32 0, i32 0), i8** %pat_ptr, align 8
  store i32 15, i32* %Mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %fp.addr, align 4
  %1 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([268192 x i8], [268192 x i8]* @buf, i32 0, i32 0), i64 %idx.ext
  %call = call i64 @read(i32 %0, i8* %add.ptr, i64 8192)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %num_read, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %length, align 4
  %3 = load i32, i32* %num_read, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %length, align 4
  %4 = load i32, i32* %length, align 4
  %cmp2 = icmp sgt i32 %4, 260000
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0), i32 260000)
  call void @exit(i32 2) #7
  unreachable

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %length, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i32 0, i64 %idxprom
  store i8 10, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  store i32 1, i32* %p, align 4
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.33, %while.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %length, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %while.body.8, label %while.end.36

while.body.8:                                     ; preds = %while.cond.5
  %9 = load i8*, i8** %pat_ptr, align 8
  %10 = load i32, i32* %p, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i32 0, i64 %idxprom9
  store i8* %9, i8** %arrayidx10, align 8
  %11 = load i32, i32* @WORDBOUND, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body.8
  %12 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %pat_ptr, align 8
  store i8 -128, i8* %12, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %while.body.8
  %13 = load i32, i32* @WHOLELINE, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %14 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr15, i8** %pat_ptr, align 8
  store i8 10, i8* %14, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.23, %if.end.16
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [268192 x i8], [268192 x i8]* @buf, i32 0, i64 %idxprom18
  %16 = load i8, i8* %arrayidx19, align 1
  %17 = load i8*, i8** %pat_ptr, align 8
  store i8 %16, i8* %17, align 1
  %conv20 = zext i8 %16 to i32
  %cmp21 = icmp ne i32 %conv20, 10
  br i1 %cmp21, label %while.body.23, label %while.end.25

while.body.23:                                    ; preds = %while.cond.17
  %18 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr24, i8** %pat_ptr, align 8
  br label %while.cond.17

while.end.25:                                     ; preds = %while.cond.17
  %19 = load i32, i32* @WORDBOUND, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %while.end.25
  %20 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr28, i8** %pat_ptr, align 8
  store i8 -128, i8* %20, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %while.end.25
  %21 = load i32, i32* @WHOLELINE, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %22 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr32, i8** %pat_ptr, align 8
  store i8 10, i8* %22, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %23 = load i8*, i8** %pat_ptr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr34, i8** %pat_ptr, align 8
  store i8 0, i8* %23, align 1
  %24 = load i32, i32* %p, align 4
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, i32* %p, align 4
  br label %while.cond.5

while.end.36:                                     ; preds = %while.cond.5
  %25 = load i32, i32* %p, align 4
  %cmp37 = icmp sgt i32 %25, 30000
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %while.end.36
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0), i32 30000)
  call void @exit(i32 2) #7
  unreachable

if.end.41:                                        ; preds = %while.end.36
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %27 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %27, 20
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %conv44 = trunc i32 %28 to i8
  %29 = load i8*, i8** %pat_ptr, align 8
  store i8 %conv44, i8* %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.53, %for.end
  %31 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %31, 256
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.46
  %32 = load i32, i32* %i, align 4
  %conv50 = trunc i32 %32 to i8
  %33 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom51
  store i8 %conv50, i8* %arrayidx52, align 1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %34 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.46

for.end.55:                                       ; preds = %for.cond.46
  %35 = load i32, i32* @NOUPPER, align 4
  %tobool56 = icmp ne i32 %35, 0
  br i1 %tobool56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %for.end.55
  store i32 65, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.66, %if.then.57
  %36 = load i32, i32* %i, align 4
  %cmp59 = icmp sle i32 %36, 90
  br i1 %cmp59, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.58
  %37 = load i32, i32* %i, align 4
  %add62 = add nsw i32 %37, 97
  %sub = sub nsw i32 %add62, 65
  %conv63 = trunc i32 %sub to i8
  %38 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %38 to i64
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx65, align 1
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %39 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %39, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.58

for.end.68:                                       ; preds = %for.cond.58
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.55
  %40 = load i32, i32* @WORDBOUND, align 4
  %tobool70 = icmp ne i32 %40, 0
  br i1 %tobool70, label %if.then.71, label %if.end.88

if.then.71:                                       ; preds = %if.end.69
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.85, %if.then.71
  %41 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %41, 128
  br i1 %cmp73, label %for.body.75, label %for.end.87

for.body.75:                                      ; preds = %for.cond.72
  %42 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %42 to i64
  %call77 = call i16** @__ctype_b_loc() #8
  %43 = load i16*, i16** %call77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %43, i64 %idxprom76
  %44 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %44 to i32
  %and = and i32 %conv79, 8
  %tobool80 = icmp ne i32 %and, 0
  br i1 %tobool80, label %if.end.84, label %if.then.81

if.then.81:                                       ; preds = %for.body.75
  %45 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %45 to i64
  %arrayidx83 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom82
  store i8 -128, i8* %arrayidx83, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %for.body.75
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %46 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %46, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.72

for.end.87:                                       ; preds = %for.cond.72
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %if.end.69
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.100, %if.end.88
  %47 = load i32, i32* %i, align 4
  %cmp90 = icmp slt i32 %47, 256
  br i1 %cmp90, label %for.body.92, label %for.end.102

for.body.92:                                      ; preds = %for.cond.89
  %48 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %48 to i64
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom93
  %49 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %49 to i32
  %50 = load i32, i32* %Mask, align 4
  %and96 = and i32 %conv95, %50
  %conv97 = trunc i32 %and96 to i8
  %51 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %51 to i64
  %arrayidx99 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i32 0, i64 %idxprom98
  store i8 %conv97, i8* %arrayidx99, align 1
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.92
  %52 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %52, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.89

for.end.102:                                      ; preds = %for.cond.89
  %53 = load i32, i32* %p, align 4
  %sub103 = sub nsw i32 %53, 1
  store i32 %sub103, i32* %num_pat, align 4
  store i32 256, i32* @p_size, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.121, %for.end.102
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %num_pat, align 4
  %cmp105 = icmp sle i32 %54, %55
  br i1 %cmp105, label %for.body.107, label %for.end.123

for.body.107:                                     ; preds = %for.cond.104
  %56 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %56 to i64
  %arrayidx109 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i32 0, i64 %idxprom108
  %57 = load i8*, i8** %arrayidx109, align 8
  %call110 = call i64 @strlen(i8* %57) #9
  %conv111 = trunc i64 %call110 to i32
  store i32 %conv111, i32* %p, align 4
  %58 = load i32, i32* %p, align 4
  %conv112 = trunc i32 %58 to i8
  %59 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %59 to i64
  %arrayidx114 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i32 0, i64 %idxprom113
  store i8 %conv112, i8* %arrayidx114, align 1
  %60 = load i32, i32* %p, align 4
  %cmp115 = icmp ne i32 %60, 0
  br i1 %cmp115, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %for.body.107
  %61 = load i32, i32* %p, align 4
  %62 = load i32, i32* @p_size, align 4
  %cmp117 = icmp slt i32 %61, %62
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true
  %63 = load i32, i32* %p, align 4
  store i32 %63, i32* @p_size, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %land.lhs.true, %for.body.107
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %64 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %64, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.104

for.end.123:                                      ; preds = %for.cond.104
  %65 = load i32, i32* @p_size, align 4
  %cmp124 = icmp eq i32 %65, 0
  br i1 %cmp124, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %for.end.123
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end.128:                                       ; preds = %for.end.123
  %67 = load i32, i32* %length, align 4
  %cmp129 = icmp sgt i32 %67, 400
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.135

land.lhs.true.131:                                ; preds = %if.end.128
  %68 = load i32, i32* @p_size, align 4
  %cmp132 = icmp sgt i32 %68, 2
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %land.lhs.true.131
  store i32 1, i32* @LONG, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %land.lhs.true.131, %if.end.128
  %69 = load i32, i32* @p_size, align 4
  %cmp136 = icmp eq i32 %69, 1
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.135
  store i32 1, i32* @SHORT, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.end.135
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.148, %if.end.139
  %70 = load i32, i32* %i, align 4
  %cmp141 = icmp slt i32 %70, 4096
  br i1 %cmp141, label %for.body.143, label %for.end.150

for.body.143:                                     ; preds = %for.cond.140
  %71 = load i32, i32* @p_size, align 4
  %sub144 = sub nsw i32 %71, 2
  %conv145 = trunc i32 %sub144 to i8
  %72 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %72 to i64
  %arrayidx147 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i32 0, i64 %idxprom146
  store i8 %conv145, i8* %arrayidx147, align 1
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.143
  %73 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %73, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.140

for.end.150:                                      ; preds = %for.cond.140
  store i32 0, i32* %i, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.157, %for.end.150
  %74 = load i32, i32* %i, align 4
  %cmp152 = icmp slt i32 %74, 8192
  br i1 %cmp152, label %for.body.154, label %for.end.159

for.body.154:                                     ; preds = %for.cond.151
  %75 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %75 to i64
  %arrayidx156 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i32 0, i64 %idxprom155
  store %struct.pat_list* null, %struct.pat_list** %arrayidx156, align 8
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.154
  %76 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %76, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.151

for.end.159:                                      ; preds = %for.cond.151
  store i32 1, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.166, %for.end.159
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %num_pat, align 4
  %cmp161 = icmp sle i32 %77, %78
  br i1 %cmp161, label %for.body.163, label %for.end.168

for.body.163:                                     ; preds = %for.cond.160
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %80 to i64
  %arrayidx165 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i32 0, i64 %idxprom164
  %81 = load i8*, i8** %arrayidx165, align 8
  call void @f_prep(i32 %79, i8* %81)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.163
  %82 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %82, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond.160

for.end.168:                                      ; preds = %for.cond.160
  ret void
}

declare i64 @read(i32, i8*, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define void @monkey1(i8* %text, i32 %start, i32 %end) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %textend = alloca i8*, align 8
  %hash = alloca i32, align 4
  %i = alloca i32, align 4
  %shift = alloca i8, align 1
  %m1 = alloca i32, align 4
  %j = alloca i32, align 4
  %Long = alloca i32, align 4
  %pat_index = alloca i32, align 4
  %m = alloca i32, align 4
  %MATCHED = alloca i32, align 4
  %qx = alloca i8*, align 8
  %p = alloca %struct.pat_list*, align 8
  %lastout = alloca i8*, align 8
  %OUT = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* @LONG, align 4
  store i32 %0, i32* %Long, align 4
  %1 = load i32, i32* @p_size, align 4
  store i32 %1, i32* %m, align 4
  store i32 0, i32* %MATCHED, align 4
  store i32 0, i32* %OUT, align 4
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i32, i32* %end.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %textend, align 8
  %4 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %m1, align 4
  %5 = load i8*, i8** %text.addr, align 8
  %6 = load i32, i32* %start.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 1
  store i8* %add.ptr3, i8** %lastout, align 8
  %7 = load i8*, i8** %text.addr, align 8
  %8 = load i32, i32* %start.addr, align 4
  %idx.ext4 = sext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 %idx.ext4
  %9 = load i32, i32* %m1, align 4
  %idx.ext6 = sext i32 %9 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.ext6
  store i8* %add.ptr7, i8** %text.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.155, %entry
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i8*, i8** %textend, align 8
  %cmp = icmp ule i8* %10, %11
  br i1 %cmp, label %while.body, label %while.end.159

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %text.addr, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %hash, align 4
  %15 = load i32, i32* %hash, align 4
  %shl = shl i32 %15, 4
  %16 = load i8*, i8** %text.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 -1
  %17 = load i8, i8* %add.ptr8, align 1
  %idxprom9 = zext i8 %17 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i32 0, i64 %idxprom9
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  %add = add i32 %shl, %conv11
  store i32 %add, i32* %hash, align 4
  %19 = load i32, i32* %Long, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %hash, align 4
  %shl12 = shl i32 %20, 4
  %21 = load i8*, i8** %text.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %21, i64 -2
  %22 = load i8, i8* %add.ptr13, align 1
  %idxprom14 = zext i8 %22 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i32 0, i64 %idxprom14
  %23 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %23 to i32
  %add17 = add i32 %shl12, %conv16
  store i32 %add17, i32* %hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %24 = load i32, i32* %hash, align 4
  %idxprom18 = zext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT1, i32 0, i64 %idxprom18
  %25 = load i8, i8* %arrayidx19, align 1
  store i8 %25, i8* %shift, align 1
  %26 = load i8, i8* %shift, align 1
  %conv20 = zext i8 %26 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.155

if.then.23:                                       ; preds = %if.end
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %m1, align 4
  %cmp24 = icmp ule i32 %27, %28
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %hash, align 4
  %shl26 = shl i32 %29, 4
  %30 = load i8*, i8** %text.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idx.ext27 = zext i32 %31 to i64
  %idx.neg = sub i64 0, %idx.ext27
  %add.ptr28 = getelementptr inbounds i8, i8* %30, i64 %idx.neg
  %32 = load i8, i8* %add.ptr28, align 1
  %idxprom29 = zext i8 %32 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* @tr1, i32 0, i64 %idxprom29
  %33 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %33 to i32
  %add32 = add i32 %shl26, %conv31
  store i32 %add32, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %hash, align 4
  %and = and i32 %35, 8191
  store i32 %and, i32* %hash, align 4
  %36 = load i32, i32* %hash, align 4
  %idxprom33 = zext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [8192 x %struct.pat_list*], [8192 x %struct.pat_list*]* @HASH, i32 0, i64 %idxprom33
  %37 = load %struct.pat_list*, %struct.pat_list** %arrayidx34, align 8
  store %struct.pat_list* %37, %struct.pat_list** %p, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.148, %for.end
  %38 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %cmp36 = icmp ne %struct.pat_list* %38, null
  br i1 %cmp36, label %while.body.38, label %while.end.149

while.body.38:                                    ; preds = %while.cond.35
  %39 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %index = getelementptr inbounds %struct.pat_list, %struct.pat_list* %39, i32 0, i32 0
  %40 = load i32, i32* %index, align 4
  store i32 %40, i32* %pat_index, align 4
  %41 = load %struct.pat_list*, %struct.pat_list** %p, align 8
  %next = getelementptr inbounds %struct.pat_list, %struct.pat_list* %41, i32 0, i32 1
  %42 = load %struct.pat_list*, %struct.pat_list** %next, align 8
  store %struct.pat_list* %42, %struct.pat_list** %p, align 8
  %43 = load i8*, i8** %text.addr, align 8
  %44 = load i32, i32* %m1, align 4
  %idx.ext39 = sext i32 %44 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %43, i64 %idx.neg40
  store i8* %add.ptr41, i8** %qx, align 8
  store i32 0, i32* %j, align 4
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.55, %while.body.38
  %45 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = load i32, i32* %pat_index, align 4
  %idxprom44 = sext i32 %46 to i64
  %arrayidx45 = getelementptr inbounds [30000 x i8*], [30000 x i8*]* @patt, i32 0, i64 %idxprom44
  %47 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %47, i64 %idxprom43
  %48 = load i8, i8* %arrayidx46, align 1
  %idxprom47 = zext i8 %48 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom47
  %49 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %49 to i32
  %50 = load i8*, i8** %qx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %qx, align 8
  %51 = load i8, i8* %50, align 1
  %idxprom50 = zext i8 %51 to i64
  %arrayidx51 = getelementptr inbounds [256 x i8], [256 x i8]* @tr, i32 0, i64 %idxprom50
  %52 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %52 to i32
  %cmp53 = icmp eq i32 %conv49, %conv52
  br i1 %cmp53, label %while.body.55, label %while.end

while.body.55:                                    ; preds = %while.cond.42
  %53 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %53, 1
  store i32 %inc56, i32* %j, align 4
  br label %while.cond.42

while.end:                                        ; preds = %while.cond.42
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %m1, align 4
  %cmp57 = icmp sgt i32 %54, %55
  br i1 %cmp57, label %if.then.59, label %if.end.145

if.then.59:                                       ; preds = %while.end
  %56 = load i32, i32* %pat_index, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds [30000 x i8], [30000 x i8]* @pat_len, i32 0, i64 %idxprom60
  %57 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %57 to i32
  %58 = load i32, i32* %j, align 4
  %cmp63 = icmp sle i32 %conv62, %58
  br i1 %cmp63, label %if.then.65, label %if.end.144

if.then.65:                                       ; preds = %if.then.59
  %59 = load i8*, i8** %text.addr, align 8
  %60 = load i8*, i8** %textend, align 8
  %cmp66 = icmp ugt i8* %59, %60
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  br label %if.end.171

if.end.69:                                        ; preds = %if.then.65
  %61 = load i32, i32* @num_of_matched, align 4
  %inc70 = add nsw i32 %61, 1
  store i32 %inc70, i32* @num_of_matched, align 4
  %62 = load i32, i32* @FILENAMEONLY, align 4
  %tobool71 = icmp ne i32 %62, 0
  br i1 %tobool71, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.69
  %63 = load i32, i32* @SILENT, align 4
  %tobool72 = icmp ne i32 %63, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false, %if.end.69
  br label %if.end.171

if.end.74:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %MATCHED, align 4
  %64 = load i32, i32* @COUNT, align 4
  %tobool75 = icmp ne i32 %64, 0
  br i1 %tobool75, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.74
  br label %while.cond.77

while.cond.77:                                    ; preds = %while.body.81, %if.then.76
  %65 = load i8*, i8** %text.addr, align 8
  %66 = load i8, i8* %65, align 1
  %conv78 = zext i8 %66 to i32
  %cmp79 = icmp ne i32 %conv78, 10
  br i1 %cmp79, label %while.body.81, label %while.end.83

while.body.81:                                    ; preds = %while.cond.77
  %67 = load i8*, i8** %text.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr82, i8** %text.addr, align 8
  br label %while.cond.77

while.end.83:                                     ; preds = %while.cond.77
  br label %if.end.143

if.else:                                          ; preds = %if.end.74
  %68 = load i32, i32* @INVERSE, align 4
  %tobool84 = icmp ne i32 %68, 0
  br i1 %tobool84, label %if.else.106, label %if.then.85

if.then.85:                                       ; preds = %if.else
  %69 = load i32, i32* @FNAME, align 4
  %tobool86 = icmp ne i32 %69, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.85
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.85
  br label %while.cond.89

while.cond.89:                                    ; preds = %while.body.94, %if.end.88
  %70 = load i8*, i8** %text.addr, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %incdec.ptr90, i8** %text.addr, align 8
  %71 = load i8, i8* %incdec.ptr90, align 1
  %conv91 = zext i8 %71 to i32
  %cmp92 = icmp ne i32 %conv91, 10
  br i1 %cmp92, label %while.body.94, label %while.end.95

while.body.94:                                    ; preds = %while.cond.89
  br label %while.cond.89

while.end.95:                                     ; preds = %while.cond.89
  br label %while.cond.96

while.cond.96:                                    ; preds = %while.body.101, %while.end.95
  %72 = load i8*, i8** %text.addr, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr97, i8** %text.addr, align 8
  %73 = load i8, i8* %incdec.ptr97, align 1
  %conv98 = zext i8 %73 to i32
  %cmp99 = icmp ne i32 %conv98, 10
  br i1 %cmp99, label %while.body.101, label %while.end.104

while.body.101:                                   ; preds = %while.cond.96
  %74 = load i8*, i8** %text.addr, align 8
  %75 = load i8, i8* %74, align 1
  %conv102 = zext i8 %75 to i32
  %call103 = call i32 @putchar(i32 %conv102)
  br label %while.cond.96

while.end.104:                                    ; preds = %while.cond.96
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.142

if.else.106:                                      ; preds = %if.else
  %76 = load i32, i32* @FNAME, align 4
  %tobool107 = icmp ne i32 %76, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.else.106
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.else.106
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.116, %if.end.110
  %77 = load i8*, i8** %text.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %incdec.ptr112, i8** %text.addr, align 8
  %78 = load i8, i8* %incdec.ptr112, align 1
  %conv113 = zext i8 %78 to i32
  %cmp114 = icmp ne i32 %conv113, 10
  br i1 %cmp114, label %while.body.116, label %while.end.117

while.body.116:                                   ; preds = %while.cond.111
  br label %while.cond.111

while.end.117:                                    ; preds = %while.cond.111
  %79 = load i8*, i8** %lastout, align 8
  %80 = load i8*, i8** %text.addr, align 8
  %cmp118 = icmp ult i8* %79, %80
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %while.end.117
  store i32 1, i32* %OUT, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %while.end.117
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.125, %if.end.121
  %81 = load i8*, i8** %lastout, align 8
  %82 = load i8*, i8** %text.addr, align 8
  %cmp123 = icmp ult i8* %81, %82
  br i1 %cmp123, label %while.body.125, label %while.end.129

while.body.125:                                   ; preds = %while.cond.122
  %83 = load i8*, i8** %lastout, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr126, i8** %lastout, align 8
  %84 = load i8, i8* %83, align 1
  %conv127 = zext i8 %84 to i32
  %call128 = call i32 @putchar(i32 %conv127)
  br label %while.cond.122

while.end.129:                                    ; preds = %while.cond.122
  %85 = load i32, i32* %OUT, align 4
  %tobool130 = icmp ne i32 %85, 0
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %while.end.129
  %call132 = call i32 @putchar(i32 10)
  store i32 0, i32* %OUT, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %while.end.129
  br label %while.cond.134

while.cond.134:                                   ; preds = %while.body.139, %if.end.133
  %86 = load i8*, i8** %text.addr, align 8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr135, i8** %text.addr, align 8
  %87 = load i8, i8* %incdec.ptr135, align 1
  %conv136 = zext i8 %87 to i32
  %cmp137 = icmp ne i32 %conv136, 10
  br i1 %cmp137, label %while.body.139, label %while.end.140

while.body.139:                                   ; preds = %while.cond.134
  br label %while.cond.134

while.end.140:                                    ; preds = %while.cond.134
  %88 = load i8*, i8** %text.addr, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %add.ptr141, i8** %lastout, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %while.end.140, %while.end.104
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %while.end.83
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.59
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %while.end
  %89 = load i32, i32* %MATCHED, align 4
  %tobool146 = icmp ne i32 %89, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.145
  br label %while.end.149

if.end.148:                                       ; preds = %if.end.145
  br label %while.cond.35

while.end.149:                                    ; preds = %if.then.147, %while.cond.35
  %90 = load i32, i32* %MATCHED, align 4
  %tobool150 = icmp ne i32 %90, 0
  br i1 %tobool150, label %if.else.152, label %if.then.151

if.then.151:                                      ; preds = %while.end.149
  store i8 1, i8* %shift, align 1
  br label %if.end.154

if.else.152:                                      ; preds = %while.end.149
  store i32 0, i32* %MATCHED, align 4
  %91 = load i32, i32* %m1, align 4
  %conv153 = trunc i32 %91 to i8
  store i8 %conv153, i8* %shift, align 1
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.151
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end
  %92 = load i8*, i8** %text.addr, align 8
  %93 = load i8, i8* %shift, align 1
  %conv156 = zext i8 %93 to i32
  %idx.ext157 = sext i32 %conv156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %92, i64 %idx.ext157
  store i8* %add.ptr158, i8** %text.addr, align 8
  br label %while.cond

while.end.159:                                    ; preds = %while.cond
  %94 = load i32, i32* @INVERSE, align 4
  %tobool160 = icmp ne i32 %94, 0
  br i1 %tobool160, label %land.lhs.true, label %if.end.171

land.lhs.true:                                    ; preds = %while.end.159
  %95 = load i32, i32* @COUNT, align 4
  %tobool161 = icmp ne i32 %95, 0
  br i1 %tobool161, label %if.end.171, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true
  br label %while.cond.163

while.cond.163:                                   ; preds = %while.body.166, %if.then.162
  %96 = load i8*, i8** %lastout, align 8
  %97 = load i8*, i8** %textend, align 8
  %cmp164 = icmp ule i8* %96, %97
  br i1 %cmp164, label %while.body.166, label %while.end.170

while.body.166:                                   ; preds = %while.cond.163
  %98 = load i8*, i8** %lastout, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr167, i8** %lastout, align 8
  %99 = load i8, i8* %98, align 1
  %conv168 = zext i8 %99 to i32
  %call169 = call i32 @putchar(i32 %conv168)
  br label %while.cond.163

while.end.170:                                    ; preds = %while.cond.163
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.68, %if.then.73, %while.end.170, %land.lhs.true, %while.end.159
  ret void
}

; Function Attrs: nounwind uwtable
define void @mgrep(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %r_newline = alloca i8, align 1
  %text = alloca [17408 x i8], align 16
  %buf_end = alloca i32, align 4
  %num_read = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %residue = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8 10, i8* %r_newline, align 1
  store i32 0, i32* %residue, align 4
  %arrayidx = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i64 1023
  store i8 10, i8* %arrayidx, align 1
  store i32 1023, i32* %start, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1024
  %call = call i64 @read(i32 %0, i8* %add.ptr, i64 8192)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %num_read, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.42

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @INVERSE, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* @COUNT, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay3 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay3, i64 1024
  %3 = load i32, i32* %num_read, align 4
  call void @countline(i8* %add.ptr4, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %4 = load i32, i32* %num_read, align 4
  %add = add nsw i32 1024, %4
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %end, align 4
  store i32 %sub, i32* %buf_end, align 4
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.13, %if.end
  %5 = load i32, i32* %end, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i8, i8* %r_newline, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.5
  %8 = load i32, i32* %end, align 4
  %cmp11 = icmp sgt i32 %8, 1024
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.5
  %9 = phi i1 [ false, %while.cond.5 ], [ %cmp11, %land.rhs ]
  br i1 %9, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end
  %10 = load i32, i32* %end, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %end, align 4
  br label %while.cond.5

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %buf_end, align 4
  %12 = load i32, i32* %end, align 4
  %sub14 = sub nsw i32 %11, %12
  %add15 = add nsw i32 %sub14, 1
  store i32 %add15, i32* %residue, align 4
  %13 = load i8, i8* %r_newline, align 1
  %14 = load i32, i32* %start, align 4
  %sub16 = sub nsw i32 %14, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i64 %idxprom17
  store i8 %13, i8* %arrayidx18, align 1
  %15 = load i32, i32* @SHORT, align 4
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %while.end
  %arraydecay21 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %16 = load i32, i32* %start, align 4
  %17 = load i32, i32* %end, align 4
  call void @m_short(i8* %arraydecay21, i32 %16, i32 %17)
  br label %if.end.23

if.else:                                          ; preds = %while.end
  %arraydecay22 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %18 = load i32, i32* %start, align 4
  %19 = load i32, i32* %end, align 4
  call void @monkey1(i8* %arraydecay22, i32 %18, i32 %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.20
  %20 = load i32, i32* @FILENAMEONLY, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %if.end.23
  %21 = load i32, i32* @num_of_matched, align 4
  %tobool26 = icmp ne i32 %21, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true.25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.25, %if.end.23
  %22 = load i32, i32* %residue, align 4
  %sub30 = sub nsw i32 1024, %22
  store i32 %sub30, i32* %start, align 4
  %23 = load i32, i32* %start, align 4
  %cmp31 = icmp slt i32 %23, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 1, i32* %start, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.29
  %arraydecay35 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %24 = load i32, i32* %start, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext
  %arraydecay37 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %25 = load i32, i32* %end, align 4
  %idx.ext38 = sext i32 %25 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay37, i64 %idx.ext38
  %26 = load i32, i32* %residue, align 4
  %conv40 = sext i32 %26 to i64
  %call41 = call i8* @strncpy(i8* %add.ptr36, i8* %add.ptr39, i64 %conv40) #6
  br label %while.cond

while.end.42:                                     ; preds = %while.cond
  %arrayidx43 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i64 1024
  store i8 10, i8* %arrayidx43, align 1
  %27 = load i32, i32* %start, align 4
  %sub44 = sub nsw i32 %27, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i64 %idxprom45
  store i8 10, i8* %arrayidx46, align 1
  %28 = load i32, i32* %residue, align 4
  %cmp47 = icmp sgt i32 %28, 1
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %while.end.42
  %29 = load i32, i32* @SHORT, align 4
  %tobool50 = icmp ne i32 %29, 0
  br i1 %tobool50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.then.49
  %arraydecay52 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %30 = load i32, i32* %start, align 4
  %31 = load i32, i32* %end, align 4
  call void @m_short(i8* %arraydecay52, i32 %30, i32 %31)
  br label %if.end.55

if.else.53:                                       ; preds = %if.then.49
  %arraydecay54 = getelementptr inbounds [17408 x i8], [17408 x i8]* %text, i32 0, i32 0
  %32 = load i32, i32* %start, align 4
  %33 = load i32, i32* %end, align 4
  call void @monkey1(i8* %arraydecay54, i32 %32, i32 %33)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %while.end.42
  br label %return

return:                                           ; preds = %if.end.56, %if.then.27
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
