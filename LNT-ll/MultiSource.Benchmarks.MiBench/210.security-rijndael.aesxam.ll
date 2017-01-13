; ModuleID = './MultiSource.Benchmarks.MiBench/210.security-rijndael.aesxam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.aes = type { i32, i32, [64 x i32], [64 x i32], i8 }

@fillrand.a = internal global [2 x i64] zeroinitializer, align 16
@fillrand.mt = internal global i64 1, align 8
@fillrand.count = internal global i64 4, align 8
@fillrand.r = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The key value is too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @fillrand(i8* %buf, i32 %len) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i64, i64* @fillrand.mt, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* @fillrand.mt, align 8
  store i64 60147, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 0), align 8
  store i64 13822, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* @fillrand.count, align 8
  %cmp1 = icmp eq i64 %3, 4
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %for.body
  %4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 0), align 8
  %and = and i64 %4, 65535
  %mul = mul i64 36969, %and
  %5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 0), align 8
  %shr = lshr i64 %5, 16
  %add = add i64 %mul, %shr
  store i64 %add, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 0), align 8
  %shl = shl i64 %add, 16
  %6 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 1), align 8
  %and3 = and i64 %6, 65535
  %mul4 = mul i64 18000, %and3
  %7 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 1), align 8
  %shr5 = lshr i64 %7, 16
  %add6 = add i64 %mul4, %shr5
  store i64 %add6, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i32 0, i64 1), align 8
  %add7 = add i64 %shl, %add6
  store i64 %add7, i64* bitcast ([4 x i8]* @fillrand.r to i64*), align 8
  store i64 0, i64* @fillrand.count, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.2, %for.body
  %8 = load i64, i64* @fillrand.count, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* @fillrand.count, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @fillrand.r, i32 0, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %9, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %12 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @encfile(%struct._IO_FILE* %fin, %struct._IO_FILE* %fout, %struct.aes* %ctx, i8* %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %ctx.addr = alloca %struct.aes*, align 8
  %fn.addr = alloca i8*, align 8
  %inbuf = alloca [16 x i8], align 16
  %outbuf = alloca [16 x i8], align 16
  %flen = alloca i64, align 8
  %i = alloca i64, align 8
  %l = alloca i64, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  store %struct.aes* %ctx, %struct.aes** %ctx.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %l, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  call void @fillrand(i8* %arraydecay, i32 16)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %0, i64 0, i32 2)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %1)
  store i64 %call1, i64* %flen, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 0)
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call4 = call i64 @fwrite(i8* %arraydecay3, i64 1, i64 16, %struct._IO_FILE* %3)
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i32 0
  call void @fillrand(i8* %arraydecay5, i32 1)
  store i64 15, i64* %l, align 8
  %4 = load i64, i64* %flen, align 8
  %conv = trunc i64 %4 to i8
  %conv6 = sext i8 %conv to i32
  %and = and i32 %conv6, 15
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %5 to i32
  %and8 = and i32 %conv7, -16
  %or = or i32 %and, %and8
  %conv9 = trunc i32 %or to i8
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i64 0
  store i8 %conv9, i8* %arrayidx10, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call11 = call i32 @feof(%struct._IO_FILE* %6) #3
  %tobool = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 16
  %7 = load i64, i64* %l, align 8
  %idx.neg = sub i64 0, %7
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %8 = load i64, i64* %l, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call14 = call i64 @fread(i8* %add.ptr13, i64 1, i64 %8, %struct._IO_FILE* %9)
  store i64 %call14, i64* %i, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %l, align 8
  %cmp = icmp ult i64 %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, i64* %i, align 8
  %cmp16 = icmp ult i64 %12, 16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i64 %13
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %15 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i64 %15
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %xor = xor i32 %conv21, %conv19
  %conv22 = trunc i32 %xor to i8
  store i8 %conv22, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %18 = load %struct.aes*, %struct.aes** %ctx.addr, align 8
  %call25 = call signext i16 @encrypt(i8* %arraydecay23, i8* %arraydecay24, %struct.aes* %18)
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call27 = call i64 @fwrite(i8* %arraydecay26, i64 1, i64 16, %struct._IO_FILE* %19)
  %cmp28 = icmp ne i64 %call27, 16
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.end
  %20 = load i8*, i8** %fn.addr, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %20)
  store i32 -7, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.end
  store i64 16, i64* %l, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %21 = load i64, i64* %l, align 8
  %cmp33 = icmp eq i64 %21, 15
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.end
  %22 = load i64, i64* %i, align 8
  %inc36 = add i64 %22, 1
  store i64 %inc36, i64* %i, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %while.end
  %23 = load i64, i64* %i, align 8
  %tobool38 = icmp ne i64 %23, 0
  br i1 %tobool38, label %if.then.39, label %if.end.70

if.then.39:                                       ; preds = %if.end.37
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.43, %if.then.39
  %24 = load i64, i64* %i, align 8
  %cmp41 = icmp ult i64 %24, 16
  br i1 %cmp41, label %while.body.43, label %while.end.46

while.body.43:                                    ; preds = %while.cond.40
  %25 = load i64, i64* %i, align 8
  %inc44 = add i64 %25, 1
  store i64 %inc44, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i64 %25
  store i8 0, i8* %arrayidx45, align 1
  br label %while.cond.40

while.end.46:                                     ; preds = %while.cond.40
  store i64 0, i64* %i, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.57, %while.end.46
  %26 = load i64, i64* %i, align 8
  %cmp48 = icmp ult i64 %26, 16
  br i1 %cmp48, label %for.body.50, label %for.end.59

for.body.50:                                      ; preds = %for.cond.47
  %27 = load i64, i64* %i, align 8
  %arrayidx51 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i64 %27
  %28 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %28 to i32
  %29 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i64 %29
  %30 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %30 to i32
  %xor55 = xor i32 %conv54, %conv52
  %conv56 = trunc i32 %xor55 to i8
  store i8 %conv56, i8* %arrayidx53, align 1
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.50
  %31 = load i64, i64* %i, align 8
  %inc58 = add i64 %31, 1
  store i64 %inc58, i64* %i, align 8
  br label %for.cond.47

for.end.59:                                       ; preds = %for.cond.47
  %arraydecay60 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %32 = load %struct.aes*, %struct.aes** %ctx.addr, align 8
  %call62 = call signext i16 @encrypt(i8* %arraydecay60, i8* %arraydecay61, %struct.aes* %32)
  %arraydecay63 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call64 = call i64 @fwrite(i8* %arraydecay63, i64 1, i64 16, %struct._IO_FILE* %33)
  %cmp65 = icmp ne i64 %call64, 16
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %for.end.59
  %34 = load i8*, i8** %fn.addr, align 8
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %34)
  store i32 -8, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.end.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.37
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.67, %if.then.30
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare signext i16 @encrypt(i8*, i8*, %struct.aes*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @decfile(%struct._IO_FILE* %fin, %struct._IO_FILE* %fout, %struct.aes* %ctx, i8* %ifn, i8* %ofn) #0 {
entry:
  %retval = alloca i32, align 4
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %fout.addr = alloca %struct._IO_FILE*, align 8
  %ctx.addr = alloca %struct.aes*, align 8
  %ifn.addr = alloca i8*, align 8
  %ofn.addr = alloca i8*, align 8
  %inbuf1 = alloca [16 x i8], align 16
  %inbuf2 = alloca [16 x i8], align 16
  %outbuf = alloca [16 x i8], align 16
  %bp1 = alloca i8*, align 8
  %bp2 = alloca i8*, align 8
  %tp = alloca i8*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %flen = alloca i32, align 4
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store %struct._IO_FILE* %fout, %struct._IO_FILE** %fout.addr, align 8
  store %struct.aes* %ctx, %struct.aes** %ctx.addr, align 8
  store i8* %ifn, i8** %ifn.addr, align 8
  store i8* %ofn, i8** %ofn.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf1, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 16, %struct._IO_FILE* %0)
  %cmp = icmp ne i64 %call, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ifn.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %1)
  store i32 9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf2, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call3 = call i64 @fread(i8* %arraydecay2, i64 1, i64 16, %struct._IO_FILE* %2)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp ne i32 %4, 16
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 -10, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf2, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %5 = load %struct.aes*, %struct.aes** %ctx.addr, align 8
  %call11 = call signext i16 @decrypt(i8* %arraydecay9, i8* %arraydecay10, %struct.aes* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %6 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %6, 16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf1, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %8 to i32
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %xor = xor i32 %conv17, %conv14
  %conv18 = trunc i32 %xor to i8
  store i8 %conv18, i8* %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i64 0
  %12 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %12 to i32
  %and = and i32 %conv20, 15
  store i32 %and, i32* %flen, align 4
  store i32 15, i32* %l, align 4
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf1, i32 0, i32 0
  store i8* %arraydecay21, i8** %bp1, align 8
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %inbuf2, i32 0, i32 0
  store i8* %arraydecay22, i8** %bp2, align 8
  br label %while.body

while.body:                                       ; preds = %for.end, %for.end.55
  %13 = load i8*, i8** %bp1, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call23 = call i64 @fread(i8* %13, i64 1, i64 16, %struct._IO_FILE* %14)
  %conv24 = trunc i64 %call23 to i32
  store i32 %conv24, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %cmp25 = icmp ne i32 %15, 16
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.body
  br label %while.end

if.end.28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay29, i64 16
  %16 = load i32, i32* %l, align 4
  %idx.ext = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %17 = load i32, i32* %l, align 4
  %conv31 = sext i32 %17 to i64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call32 = call i64 @fwrite(i8* %add.ptr30, i64 1, i64 %conv31, %struct._IO_FILE* %18)
  %19 = load i32, i32* %l, align 4
  %conv33 = sext i32 %19 to i64
  %cmp34 = icmp ne i64 %call32, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.28
  %20 = load i8*, i8** %ofn.addr, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %20)
  store i32 -11, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.28
  %21 = load i8*, i8** %bp1, align 8
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %22 = load %struct.aes*, %struct.aes** %ctx.addr, align 8
  %call40 = call signext i16 @decrypt(i8* %21, i8* %arraydecay39, %struct.aes* %22)
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.53, %if.end.38
  %23 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %23, 16
  br i1 %cmp42, label %for.body.44, label %for.end.55

for.body.44:                                      ; preds = %for.cond.41
  %24 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %24 to i64
  %25 = load i8*, i8** %bp2, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %25, i64 %idxprom45
  %26 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %26 to i32
  %27 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i64 %idxprom48
  %28 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %28 to i32
  %xor51 = xor i32 %conv50, %conv47
  %conv52 = trunc i32 %xor51 to i8
  store i8 %conv52, i8* %arrayidx49, align 1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.44
  %29 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %29, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.41

for.end.55:                                       ; preds = %for.cond.41
  %30 = load i32, i32* %i, align 4
  store i32 %30, i32* %l, align 4
  %31 = load i8*, i8** %bp1, align 8
  store i8* %31, i8** %tp, align 8
  %32 = load i8*, i8** %bp2, align 8
  store i8* %32, i8** %bp1, align 8
  %33 = load i8*, i8** %tp, align 8
  store i8* %33, i8** %bp2, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.27
  %34 = load i32, i32* %l, align 4
  %cmp56 = icmp eq i32 %34, 15
  %cond = select i1 %cmp56, i32 1, i32 0
  store i32 %cond, i32* %l, align 4
  %35 = load i32, i32* %l, align 4
  %sub = sub nsw i32 1, %35
  %36 = load i32, i32* %flen, align 4
  %add = add nsw i32 %36, %sub
  store i32 %add, i32* %flen, align 4
  %37 = load i32, i32* %flen, align 4
  %tobool58 = icmp ne i32 %37, 0
  br i1 %tobool58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %while.end
  %arraydecay60 = getelementptr inbounds [16 x i8], [16 x i8]* %outbuf, i32 0, i32 0
  %38 = load i32, i32* %l, align 4
  %idx.ext61 = sext i32 %38 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %arraydecay60, i64 %idx.ext61
  %39 = load i32, i32* %flen, align 4
  %conv63 = sext i32 %39 to i64
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fout.addr, align 8
  %call64 = call i64 @fwrite(i8* %add.ptr62, i64 1, i64 %conv63, %struct._IO_FILE* %40)
  %41 = load i32, i32* %flen, align 4
  %conv65 = sext i32 %41 to i64
  %cmp66 = icmp ne i64 %call64, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.59
  %42 = load i8*, i8** %ofn.addr, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %42)
  store i32 -12, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.59
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.68, %if.then.36, %if.then.6, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare signext i16 @decrypt(i8*, i8*, %struct.aes*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  %fout = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %ch = alloca i8, align 1
  %key = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  %by = alloca i32, align 4
  %key_len = alloca i32, align 4
  %err = alloca i32, align 4
  %ctx = alloca [1 x %struct.aes], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fout, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %by, align 4
  store i32 0, i32* %key_len, align 4
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 3
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 @toupper(i32 %conv) #3
  %cmp1 = icmp ne i32 %call, 68
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 3
  %5 = load i8*, i8** %arrayidx3, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %call5 = call i32 @toupper(i32 %conv4) #3
  %cmp6 = icmp ne i32 %call5, 69
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %err, align 4
  br label %exit

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 4
  %8 = load i8*, i8** %arrayidx9, align 8
  store i8* %8, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %9, 64
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i8*, i8** %cp, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = sext i8 %14 to i32
  %call14 = call i32 @toupper(i32 %conv13) #3
  %conv15 = trunc i32 %call14 to i8
  store i8 %conv15, i8* %ch, align 1
  %15 = load i8, i8* %ch, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp sge i32 %conv16, 48
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %while.body
  %16 = load i8, i8* %ch, align 1
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.19
  %17 = load i32, i32* %by, align 4
  %shl = shl i32 %17, 4
  %18 = load i8, i8* %ch, align 1
  %conv24 = sext i8 %18 to i32
  %add = add nsw i32 %shl, %conv24
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %by, align 4
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.19, %while.body
  %19 = load i8, i8* %ch, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp sge i32 %conv25, 65
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.38

land.lhs.true.28:                                 ; preds = %if.else
  %20 = load i8, i8* %ch, align 1
  %conv29 = sext i8 %20 to i32
  %cmp30 = icmp sle i32 %conv29, 70
  br i1 %cmp30, label %if.then.32, label %if.else.38

if.then.32:                                       ; preds = %land.lhs.true.28
  %21 = load i32, i32* %by, align 4
  %shl33 = shl i32 %21, 4
  %22 = load i8, i8* %ch, align 1
  %conv34 = sext i8 %22 to i32
  %add35 = add nsw i32 %shl33, %conv34
  %sub36 = sub nsw i32 %add35, 65
  %add37 = add nsw i32 %sub36, 10
  store i32 %add37, i32* %by, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.28, %if.else
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0))
  store i32 -2, i32* %err, align 4
  br label %exit

if.end.40:                                        ; preds = %if.then.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.23
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %and = and i32 %23, 1
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %if.end.41
  %24 = load i32, i32* %by, align 4
  %and44 = and i32 %24, 255
  %conv45 = trunc i32 %and44 to i8
  %25 = load i32, i32* %i, align 4
  %div = sdiv i32 %25, 2
  %sub46 = sub nsw i32 %div, 1
  %idxprom = sext i32 %sub46 to i64
  %arrayidx47 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i64 %idxprom
  store i8 %conv45, i8* %arrayidx47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %if.end.41
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load i8*, i8** %cp, align 8
  %27 = load i8, i8* %26, align 1
  %tobool49 = icmp ne i8 %27, 0
  br i1 %tobool49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %while.end
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  store i32 -3, i32* %err, align 4
  br label %exit

if.else.52:                                       ; preds = %while.end
  %28 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %28, 32
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %if.else.52
  %29 = load i32, i32* %i, align 4
  %and56 = and i32 %29, 15
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %lor.lhs.false.55, %if.else.52
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0))
  store i32 -4, i32* %err, align 4
  br label %exit

if.end.60:                                        ; preds = %lor.lhs.false.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60
  %30 = load i32, i32* %i, align 4
  %div62 = sdiv i32 %30, 2
  store i32 %div62, i32* %key_len, align 4
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx63, align 8
  %call64 = call %struct._IO_FILE* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call64, %struct._IO_FILE** %fin, align 8
  %tobool65 = icmp ne %struct._IO_FILE* %call64, null
  br i1 %tobool65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %if.end.61
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %33, i64 1
  %34 = load i8*, i8** %arrayidx67, align 8
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8* %34)
  store i32 -5, i32* %err, align 4
  br label %exit

if.end.69:                                        ; preds = %if.end.61
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %35, i64 2
  %36 = load i8*, i8** %arrayidx70, align 8
  %call71 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call71, %struct._IO_FILE** %fout, align 8
  %tobool72 = icmp ne %struct._IO_FILE* %call71, null
  br i1 %tobool72, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %if.end.69
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx74, align 8
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %38)
  store i32 -6, i32* %err, align 4
  br label %exit

if.end.76:                                        ; preds = %if.end.69
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %39, i64 3
  %40 = load i8*, i8** %arrayidx77, align 8
  %41 = load i8, i8* %40, align 1
  %conv78 = sext i8 %41 to i32
  %call79 = call i32 @toupper(i32 %conv78) #3
  %cmp80 = icmp eq i32 %call79, 69
  br i1 %cmp80, label %if.then.82, label %if.else.88

if.then.82:                                       ; preds = %if.end.76
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %42 = load i32, i32* %key_len, align 4
  %arraydecay83 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %ctx, i32 0, i32 0
  %call84 = call signext i16 @set_key(i8* %arraydecay, i32 %42, i32 1, %struct.aes* %arraydecay83)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %arraydecay85 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %ctx, i32 0, i32 0
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %45, i64 1
  %46 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i32 @encfile(%struct._IO_FILE* %43, %struct._IO_FILE* %44, %struct.aes* %arraydecay85, i8* %46)
  store i32 %call87, i32* %err, align 4
  br label %if.end.96

if.else.88:                                       ; preds = %if.end.76
  %arraydecay89 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i32 0, i32 0
  %47 = load i32, i32* %key_len, align 4
  %arraydecay90 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %ctx, i32 0, i32 0
  %call91 = call signext i16 @set_key(i8* %arraydecay89, i32 %47, i32 2, %struct.aes* %arraydecay90)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay92 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %ctx, i32 0, i32 0
  %50 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %50, i64 1
  %51 = load i8*, i8** %arrayidx93, align 8
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %52, i64 2
  %53 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i32 @decfile(%struct._IO_FILE* %48, %struct._IO_FILE* %49, %struct.aes* %arraydecay92, i8* %51, i8* %53)
  store i32 %call95, i32* %err, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.88, %if.then.82
  br label %exit

exit:                                             ; preds = %if.end.96, %if.then.73, %if.then.66, %if.then.58, %if.then.50, %if.else.38, %if.then
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %tobool97 = icmp ne %struct._IO_FILE* %54, null
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %exit
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call99 = call i32 @fclose(%struct._IO_FILE* %55)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %exit
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %tobool101 = icmp ne %struct._IO_FILE* %56, null
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.100
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call103 = call i32 @fclose(%struct._IO_FILE* %57)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.100
  %58 = load i32, i32* %err, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare signext i16 @set_key(i8*, i32, i32, %struct.aes*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
