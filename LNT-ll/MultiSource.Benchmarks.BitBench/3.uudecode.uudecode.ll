; ModuleID = './MultiSource.Benchmarks.BitBench/3.uudecode.uudecode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"begin %o %s \0A\00", align 1
@main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Usage: uudecode [infile]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @skip_to_newline(i8* %input, i32 %offset) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %offset.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %offset.addr, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %offset.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %offset.addr, align 4
  %inc2 = add nsw i32 %4, 1
  store i32 %inc2, i32* %offset.addr, align 4
  ret i32 %inc2
}

; Function Attrs: nounwind uwtable
define i32 @decode_char(i8 signext %in) #0 {
entry:
  %in.addr = alloca i8, align 1
  store i8 %in, i8* %in.addr, align 1
  %0 = load i8, i8* %in.addr, align 1
  %conv = sext i8 %0 to i32
  %sub = sub nsw i32 %conv, 32
  %and = and i32 %sub, 63
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @decode(i8* %input, i32 %offset, i8* %output) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %offset.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %ooffset = alloca i32, align 4
  %encodedoctets = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %input, i8** %input.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %ooffset, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, i32* %offset.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %offset.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %call = call i32 @decode_char(i8 signext %5)
  store i32 %call, i32* %encodedoctets, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %offset.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, i32* %encodedoctets, align 4
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %encodedoctets, align 4
  %cmp6 = icmp sge i32 %8, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %offset.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %11 = load i8, i8* %arrayidx9, align 1
  %call10 = call i32 @decode_char(i8 signext %11)
  %shl = shl i32 %call10, 2
  %12 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %12, 1
  %idxprom11 = sext i32 %add to i64
  %13 = load i8*, i8** %input.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %call13 = call i32 @decode_char(i8 signext %14)
  %shr = ashr i32 %call13, 4
  %or = or i32 %shl, %shr
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, i8* %ch, align 1
  %15 = load i8, i8* %ch, align 1
  %16 = load i32, i32* %ooffset, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %ooffset, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i8*, i8** %output.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  store i8 %15, i8* %arrayidx17, align 1
  %18 = load i32, i32* %offset.addr, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %19 = load i8*, i8** %input.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  %20 = load i8, i8* %arrayidx20, align 1
  %call21 = call i32 @decode_char(i8 signext %20)
  %shl22 = shl i32 %call21, 4
  %21 = load i32, i32* %offset.addr, align 4
  %add23 = add nsw i32 %21, 2
  %idxprom24 = sext i32 %add23 to i64
  %22 = load i8*, i8** %input.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %22, i64 %idxprom24
  %23 = load i8, i8* %arrayidx25, align 1
  %call26 = call i32 @decode_char(i8 signext %23)
  %shr27 = ashr i32 %call26, 2
  %or28 = or i32 %shl22, %shr27
  %conv29 = trunc i32 %or28 to i8
  store i8 %conv29, i8* %ch, align 1
  %24 = load i8, i8* %ch, align 1
  %25 = load i32, i32* %ooffset, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, i32* %ooffset, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i8*, i8** %output.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %26, i64 %idxprom31
  store i8 %24, i8* %arrayidx32, align 1
  %27 = load i32, i32* %offset.addr, align 4
  %add33 = add nsw i32 %27, 2
  %idxprom34 = sext i32 %add33 to i64
  %28 = load i8*, i8** %input.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 %idxprom34
  %29 = load i8, i8* %arrayidx35, align 1
  %call36 = call i32 @decode_char(i8 signext %29)
  %shl37 = shl i32 %call36, 6
  %30 = load i32, i32* %offset.addr, align 4
  %add38 = add nsw i32 %30, 3
  %idxprom39 = sext i32 %add38 to i64
  %31 = load i8*, i8** %input.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 %idxprom39
  %32 = load i8, i8* %arrayidx40, align 1
  %call41 = call i32 @decode_char(i8 signext %32)
  %or42 = or i32 %shl37, %call41
  %conv43 = trunc i32 %or42 to i8
  store i8 %conv43, i8* %ch, align 1
  %33 = load i8, i8* %ch, align 1
  %34 = load i32, i32* %ooffset, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %ooffset, align 4
  %idxprom45 = sext i32 %34 to i64
  %35 = load i8*, i8** %output.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %35, i64 %idxprom45
  store i8 %33, i8* %arrayidx46, align 1
  br label %if.end.83

if.else:                                          ; preds = %for.body
  %36 = load i32, i32* %encodedoctets, align 4
  %cmp47 = icmp sge i32 %36, 1
  br i1 %cmp47, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %if.else
  %37 = load i32, i32* %offset.addr, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i8*, i8** %input.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 %idxprom50
  %39 = load i8, i8* %arrayidx51, align 1
  %call52 = call i32 @decode_char(i8 signext %39)
  %shl53 = shl i32 %call52, 2
  %40 = load i32, i32* %offset.addr, align 4
  %add54 = add nsw i32 %40, 1
  %idxprom55 = sext i32 %add54 to i64
  %41 = load i8*, i8** %input.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %41, i64 %idxprom55
  %42 = load i8, i8* %arrayidx56, align 1
  %call57 = call i32 @decode_char(i8 signext %42)
  %shr58 = ashr i32 %call57, 4
  %or59 = or i32 %shl53, %shr58
  %conv60 = trunc i32 %or59 to i8
  store i8 %conv60, i8* %ch, align 1
  %43 = load i8, i8* %ch, align 1
  %44 = load i32, i32* %ooffset, align 4
  %inc61 = add nsw i32 %44, 1
  store i32 %inc61, i32* %ooffset, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load i8*, i8** %output.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %45, i64 %idxprom62
  store i8 %43, i8* %arrayidx63, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.49, %if.else
  %46 = load i32, i32* %encodedoctets, align 4
  %cmp64 = icmp sge i32 %46, 2
  br i1 %cmp64, label %if.then.66, label %if.end.82

if.then.66:                                       ; preds = %if.end
  %47 = load i32, i32* %offset.addr, align 4
  %add67 = add nsw i32 %47, 1
  %idxprom68 = sext i32 %add67 to i64
  %48 = load i8*, i8** %input.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  %49 = load i8, i8* %arrayidx69, align 1
  %call70 = call i32 @decode_char(i8 signext %49)
  %shl71 = shl i32 %call70, 4
  %50 = load i32, i32* %offset.addr, align 4
  %add72 = add nsw i32 %50, 2
  %idxprom73 = sext i32 %add72 to i64
  %51 = load i8*, i8** %input.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %51, i64 %idxprom73
  %52 = load i8, i8* %arrayidx74, align 1
  %call75 = call i32 @decode_char(i8 signext %52)
  %shr76 = ashr i32 %call75, 2
  %or77 = or i32 %shl71, %shr76
  %conv78 = trunc i32 %or77 to i8
  store i8 %conv78, i8* %ch, align 1
  %53 = load i8, i8* %ch, align 1
  %54 = load i32, i32* %ooffset, align 4
  %inc79 = add nsw i32 %54, 1
  store i32 %inc79, i32* %ooffset, align 4
  %idxprom80 = sext i32 %54 to i64
  %55 = load i8*, i8** %output.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %55, i64 %idxprom80
  store i8 %53, i8* %arrayidx81, align 1
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.66, %if.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %56 = load i32, i32* %offset.addr, align 4
  %add84 = add nsw i32 %56, 4
  store i32 %add84, i32* %offset.addr, align 4
  %57 = load i32, i32* %encodedoctets, align 4
  %sub = sub nsw i32 %57, 3
  store i32 %sub, i32* %encodedoctets, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i8*, i8** %input.addr, align 8
  %59 = load i32, i32* %offset.addr, align 4
  %call85 = call i32 @skip_to_newline(i8* %58, i32 %59)
  store i32 %call85, i32* %offset.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load i8*, i8** %input.addr, align 8
  %61 = load i32, i32* %offset.addr, align 4
  %call86 = call i32 @skip_to_newline(i8* %60, i32 %61)
  store i32 %call86, i32* %offset.addr, align 4
  %62 = load i32, i32* %offset.addr, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i8*, i8** %input.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %63, i64 %idxprom87
  %64 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %64 to i32
  %cmp90 = icmp eq i32 %conv89, 101
  br i1 %cmp90, label %land.lhs.true, label %if.end.106

land.lhs.true:                                    ; preds = %while.end
  %65 = load i32, i32* %offset.addr, align 4
  %add92 = add nsw i32 %65, 1
  %idxprom93 = sext i32 %add92 to i64
  %66 = load i8*, i8** %input.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %66, i64 %idxprom93
  %67 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %67 to i32
  %cmp96 = icmp eq i32 %conv95, 110
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.106

land.lhs.true.98:                                 ; preds = %land.lhs.true
  %68 = load i32, i32* %offset.addr, align 4
  %add99 = add nsw i32 %68, 2
  %idxprom100 = sext i32 %add99 to i64
  %69 = load i8*, i8** %input.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %69, i64 %idxprom100
  %70 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %70 to i32
  %cmp103 = icmp eq i32 %conv102, 100
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.98
  %71 = load i32, i32* %ooffset, align 4
  ret i32 %71

if.end.106:                                       ; preds = %land.lhs.true.98, %land.lhs.true, %while.end
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind uwtable
define i32 @do_decode(i8* %input, i8* %output, i8* %outfilename) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %outfilename.addr = alloca i8*, align 8
  %mode = alloca i32, align 4
  %namelen = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %outfilename, i8** %outfilename.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i8*, i8** %outfilename.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32* %mode, i8* %1) #4
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %outfilename.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #7
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %namelen, align 4
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i32, i32* %namelen, align 4
  %add = add nsw i32 %4, 12
  %5 = load i8*, i8** %output.addr, align 8
  %call2 = call i32 @decode(i8* %3, i32 %add, i8* %5)
  ret i32 %call2

if.end:                                           ; preds = %entry
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %outsize = alloca i32, align 4
  %time = alloca i32, align 4
  %inbuf = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %outfilename = alloca [100 x i8], align 16
  %postfix = alloca [3 x i8], align 1
  %pre = alloca %struct.timeval, align 8
  %post = alloca %struct.timeval, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [3 x i8]* %postfix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @main.postfix, i32 0, i32 0), i64 3, i32 1, i1 false)
  %call = call noalias i8* @malloc(i64 10000000) #4
  store i8* %call, i8** %inbuf, align 8
  %call1 = call noalias i8* @malloc(i64 10000000) #4
  store i8* %call1, i8** %outbuf, align 8
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %in, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx5, align 8
  call void @perror(i8* %5)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %7 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %in, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %out, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %10 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp ne i32 %10, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end.10:                                        ; preds = %if.end.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %12 = load i8*, i8** %inbuf, align 8
  %call11 = call i64 @read_data(%struct._IO_FILE* %11, i8* %12)
  store i64 %call11, i64* %size, align 8
  %call12 = call i32 @gettimeofday(%struct.timeval* %pre, %struct.timezone* null) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %13 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %13, 100
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %inbuf, align 8
  %15 = load i8*, i8** %outbuf, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %outfilename, i32 0, i32 0
  %call14 = call i32 @do_decode(i8* %14, i8* %15, i8* %arraydecay)
  store i32 %call14, i32* %outsize, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %outsize, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %17)
  call void @exit(i32 0) #6
  unreachable

return:                                           ; No predecessors!
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare void @perror(i8*) #5

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %in, i8* %buffer) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 10000000, %struct._IO_FILE* %1)
  ret i64 %call
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
