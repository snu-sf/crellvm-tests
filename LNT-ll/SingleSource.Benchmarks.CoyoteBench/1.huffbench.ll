; ModuleID = './SingleSource.Benchmarks.CoyoteBench/1.huffbench.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"error: bit code overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error: file has only one value!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error: no compression\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i64 1325, align 8

; Function Attrs: nounwind uwtable
define i8* @generate_test_data(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %codes = alloca i8*, align 8
  %result = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8** %codes, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #2
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  store i8* %1, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @random4()
  %4 = load i8*, i8** %codes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %call2
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i8*, i8** %ptr, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %result, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @compdecomp(i8* %data, i64 %data_len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %mask = alloca i64, align 8
  %k = alloca i64, align 8
  %t = alloca i64, align 8
  %c = alloca i8, align 1
  %cptr = alloca i8*, align 8
  %dptr = alloca i8*, align 8
  %comp = alloca i8*, align 8
  %freq = alloca [512 x i64], align 16
  %heap = alloca [256 x i64], align 16
  %link = alloca [512 x i32], align 16
  %code = alloca [256 x i64], align 16
  %clen = alloca [256 x i8], align 16
  %temp = alloca i64, align 8
  %m = alloca i64, align 8
  %x = alloca i64, align 8
  %maxx = alloca i64, align 8
  %maxi = alloca i64, align 8
  %l = alloca i32, align 4
  %comp_len = alloca i64, align 8
  %bout = alloca i8, align 1
  %bit = alloca i32, align 4
  %heap2 = alloca [256 x i64], align 16
  %outc = alloca [256 x i8], align 16
  %optr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %dptr, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %add = add i64 %1, 1
  %call = call noalias i8* @malloc(i64 %add) #2
  store i8* %call, i8** %comp, align 8
  %2 = load i8*, i8** %comp, align 8
  %3 = load i64, i64* %data_len.addr, align 8
  %add1 = add i64 %3, 1
  %mul = mul i64 1, %add1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 1, i1 false)
  %4 = bitcast [512 x i64]* %freq to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 4096, i32 16, i1 false)
  %5 = bitcast [256 x i64]* %heap to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 2048, i32 16, i1 false)
  %6 = bitcast [512 x i32]* %link to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 2048, i32 16, i1 false)
  %7 = bitcast [256 x i64]* %code to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 2048, i32 16, i1 false)
  %8 = bitcast [256 x i8]* %clen to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 256, i32 16, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %data_len.addr, align 8
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %dptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %conv
  %13 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %arrayidx, align 8
  %14 = load i8*, i8** %dptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc2 = add i64 %15, 1
  store i64 %inc2, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %16 = load i64, i64* %i, align 8
  %cmp4 = icmp ult i64 %16, 256
  br i1 %cmp4, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.3
  %17 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %17
  %18 = load i64, i64* %arrayidx7, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %n, align 8
  %arrayidx8 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 %20
  store i64 %19, i64* %arrayidx8, align 8
  %21 = load i64, i64* %n, align 8
  %inc9 = add i64 %21, 1
  store i64 %inc9, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %22 = load i64, i64* %i, align 8
  %inc11 = add i64 %22, 1
  store i64 %inc11, i64* %i, align 8
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  %23 = load i64, i64* %n, align 8
  store i64 %23, i64* %i, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end.12
  %24 = load i64, i64* %i, align 8
  %cmp14 = icmp ugt i64 %24, 0
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %arraydecay = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %25 = load i64, i64* %n, align 8
  %conv18 = trunc i64 %25 to i32
  %26 = load i64, i64* %i, align 8
  %conv19 = trunc i64 %26 to i32
  call void @heap_adjust(i64* %arraydecay, i64* %arraydecay17, i32 %conv18, i32 %conv19)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.16
  %27 = load i64, i64* %i, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.21
  %28 = load i64, i64* %n, align 8
  %cmp22 = icmp ugt i64 %28, 1
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i64, i64* %n, align 8
  %dec24 = add i64 %29, -1
  store i64 %dec24, i64* %n, align 8
  %arrayidx25 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 0
  %30 = load i64, i64* %arrayidx25, align 8
  store i64 %30, i64* %temp, align 8
  %31 = load i64, i64* %n, align 8
  %arrayidx26 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 %31
  %32 = load i64, i64* %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 0
  store i64 %32, i64* %arrayidx27, align 8
  %arraydecay28 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %33 = load i64, i64* %n, align 8
  %conv30 = trunc i64 %33 to i32
  call void @heap_adjust(i64* %arraydecay28, i64* %arraydecay29, i32 %conv30, i32 1)
  %arrayidx31 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 0
  %34 = load i64, i64* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %34
  %35 = load i64, i64* %arrayidx32, align 8
  %36 = load i64, i64* %temp, align 8
  %arrayidx33 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %36
  %37 = load i64, i64* %arrayidx33, align 8
  %add34 = add i64 %35, %37
  %38 = load i64, i64* %n, align 8
  %add35 = add i64 256, %38
  %arrayidx36 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %add35
  store i64 %add34, i64* %arrayidx36, align 8
  %39 = load i64, i64* %n, align 8
  %add37 = add i64 256, %39
  %conv38 = trunc i64 %add37 to i32
  %40 = load i64, i64* %temp, align 8
  %arrayidx39 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i64 %40
  store i32 %conv38, i32* %arrayidx39, align 4
  %41 = load i64, i64* %n, align 8
  %sub = sub i64 -256, %41
  %conv40 = trunc i64 %sub to i32
  %arrayidx41 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 0
  %42 = load i64, i64* %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i64 %42
  store i32 %conv40, i32* %arrayidx42, align 4
  %43 = load i64, i64* %n, align 8
  %add43 = add i64 256, %43
  %arrayidx44 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i64 0
  store i64 %add43, i64* %arrayidx44, align 8
  %arraydecay45 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %44 = load i64, i64* %n, align 8
  %conv47 = trunc i64 %44 to i32
  call void @heap_adjust(i64* %arraydecay45, i64* %arraydecay46, i32 %conv47, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i64, i64* %n, align 8
  %add48 = add i64 256, %45
  %arrayidx49 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i64 %add48
  store i32 0, i32* %arrayidx49, align 4
  store i64 0, i64* %maxx, align 8
  store i64 0, i64* %maxi, align 8
  store i64 0, i64* %m, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.84, %while.end
  %46 = load i64, i64* %m, align 8
  %cmp51 = icmp ult i64 %46, 256
  br i1 %cmp51, label %for.body.53, label %for.end.86

for.body.53:                                      ; preds = %for.cond.50
  %47 = load i64, i64* %m, align 8
  %arrayidx54 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i64 %47
  %48 = load i64, i64* %arrayidx54, align 8
  %tobool55 = icmp ne i64 %48, 0
  br i1 %tobool55, label %if.else, label %if.then.56

if.then.56:                                       ; preds = %for.body.53
  %49 = load i64, i64* %m, align 8
  %arrayidx57 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i64 %49
  store i64 0, i64* %arrayidx57, align 8
  %50 = load i64, i64* %m, align 8
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %50
  store i8 0, i8* %arrayidx58, align 1
  br label %if.end.83

if.else:                                          ; preds = %for.body.53
  store i64 0, i64* %i, align 8
  store i64 1, i64* %j, align 8
  store i64 0, i64* %x, align 8
  %51 = load i64, i64* %m, align 8
  %arrayidx59 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i64 %51
  %52 = load i32, i32* %arrayidx59, align 4
  store i32 %52, i32* %l, align 4
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.68, %if.else
  %53 = load i32, i32* %l, align 4
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %while.body.62, label %while.end.71

while.body.62:                                    ; preds = %while.cond.60
  %54 = load i32, i32* %l, align 4
  %cmp63 = icmp slt i32 %54, 0
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %while.body.62
  %55 = load i64, i64* %j, align 8
  %56 = load i64, i64* %x, align 8
  %add66 = add i64 %56, %55
  store i64 %add66, i64* %x, align 8
  %57 = load i32, i32* %l, align 4
  %sub67 = sub nsw i32 0, %57
  store i32 %sub67, i32* %l, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %while.body.62
  %58 = load i32, i32* %l, align 4
  %idxprom = sext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i64 %idxprom
  %59 = load i32, i32* %arrayidx69, align 4
  store i32 %59, i32* %l, align 4
  %60 = load i64, i64* %j, align 8
  %shl = shl i64 %60, 1
  store i64 %shl, i64* %j, align 8
  %61 = load i64, i64* %i, align 8
  %inc70 = add i64 %61, 1
  store i64 %inc70, i64* %i, align 8
  br label %while.cond.60

while.end.71:                                     ; preds = %while.cond.60
  %62 = load i64, i64* %x, align 8
  %63 = load i64, i64* %m, align 8
  %arrayidx72 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i64 %63
  store i64 %62, i64* %arrayidx72, align 8
  %64 = load i64, i64* %i, align 8
  %conv73 = trunc i64 %64 to i8
  %65 = load i64, i64* %m, align 8
  %arrayidx74 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %65
  store i8 %conv73, i8* %arrayidx74, align 1
  %66 = load i64, i64* %x, align 8
  %67 = load i64, i64* %maxx, align 8
  %cmp75 = icmp ugt i64 %66, %67
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %while.end.71
  %68 = load i64, i64* %x, align 8
  store i64 %68, i64* %maxx, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.end.71
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %maxi, align 8
  %cmp79 = icmp ugt i64 %69, %70
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  %71 = load i64, i64* %i, align 8
  store i64 %71, i64* %maxi, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.56
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %72 = load i64, i64* %m, align 8
  %inc85 = add i64 %72, 1
  store i64 %inc85, i64* %m, align 8
  br label %for.cond.50

for.end.86:                                       ; preds = %for.cond.50
  %73 = load i64, i64* %maxi, align 8
  %cmp87 = icmp ugt i64 %73, 64
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %for.end.86
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.91:                                        ; preds = %for.end.86
  store i64 0, i64* %comp_len, align 8
  store i8 0, i8* %bout, align 1
  store i32 -1, i32* %bit, align 4
  %75 = load i8*, i8** %data.addr, align 8
  store i8* %75, i8** %dptr, align 8
  %76 = load i64, i64* %maxx, align 8
  %cmp92 = icmp eq i64 %76, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.96:                                        ; preds = %if.end.91
  store i64 0, i64* %j, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.141, %if.end.96
  %78 = load i64, i64* %j, align 8
  %79 = load i64, i64* %data_len.addr, align 8
  %cmp98 = icmp ult i64 %78, %79
  br i1 %cmp98, label %for.body.100, label %for.end.143

for.body.100:                                     ; preds = %for.cond.97
  %80 = load i8*, i8** %dptr, align 8
  %81 = load i8, i8* %80, align 1
  %idxprom101 = zext i8 %81 to i64
  %arrayidx102 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %idxprom101
  %82 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %82 to i32
  %sub104 = sub nsw i32 %conv103, 1
  %shl105 = shl i32 1, %sub104
  %conv106 = sext i32 %shl105 to i64
  store i64 %conv106, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.137, %for.body.100
  %83 = load i64, i64* %i, align 8
  %84 = load i8*, i8** %dptr, align 8
  %85 = load i8, i8* %84, align 1
  %idxprom108 = zext i8 %85 to i64
  %arrayidx109 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %idxprom108
  %86 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %86 to i64
  %cmp111 = icmp ult i64 %83, %conv110
  br i1 %cmp111, label %for.body.113, label %for.end.139

for.body.113:                                     ; preds = %for.cond.107
  %87 = load i32, i32* %bit, align 4
  %cmp114 = icmp eq i32 %87, 7
  br i1 %cmp114, label %if.then.116, label %if.else.124

if.then.116:                                      ; preds = %for.body.113
  %88 = load i8, i8* %bout, align 1
  %89 = load i64, i64* %comp_len, align 8
  %90 = load i8*, i8** %comp, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8 %88, i8* %arrayidx117, align 1
  %91 = load i64, i64* %comp_len, align 8
  %inc118 = add i64 %91, 1
  store i64 %inc118, i64* %comp_len, align 8
  %92 = load i64, i64* %comp_len, align 8
  %93 = load i64, i64* %data_len.addr, align 8
  %cmp119 = icmp eq i64 %92, %93
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.then.116
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.123:                                       ; preds = %if.then.116
  store i32 0, i32* %bit, align 4
  store i8 0, i8* %bout, align 1
  br label %if.end.129

if.else.124:                                      ; preds = %for.body.113
  %95 = load i32, i32* %bit, align 4
  %inc125 = add nsw i32 %95, 1
  store i32 %inc125, i32* %bit, align 4
  %96 = load i8, i8* %bout, align 1
  %conv126 = sext i8 %96 to i32
  %shl127 = shl i32 %conv126, 1
  %conv128 = trunc i32 %shl127 to i8
  store i8 %conv128, i8* %bout, align 1
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.124, %if.end.123
  %97 = load i8*, i8** %dptr, align 8
  %98 = load i8, i8* %97, align 1
  %idxprom130 = zext i8 %98 to i64
  %arrayidx131 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i64 %idxprom130
  %99 = load i64, i64* %arrayidx131, align 8
  %100 = load i64, i64* %mask, align 8
  %and = and i64 %99, %100
  %tobool132 = icmp ne i64 %and, 0
  br i1 %tobool132, label %if.then.133, label %if.end.136

if.then.133:                                      ; preds = %if.end.129
  %101 = load i8, i8* %bout, align 1
  %conv134 = sext i8 %101 to i32
  %or = or i32 %conv134, 1
  %conv135 = trunc i32 %or to i8
  store i8 %conv135, i8* %bout, align 1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %if.end.129
  %102 = load i64, i64* %mask, align 8
  %shr = lshr i64 %102, 1
  store i64 %shr, i64* %mask, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %103 = load i64, i64* %i, align 8
  %inc138 = add i64 %103, 1
  store i64 %inc138, i64* %i, align 8
  br label %for.cond.107

for.end.139:                                      ; preds = %for.cond.107
  %104 = load i8*, i8** %dptr, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr140, i8** %dptr, align 8
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end.139
  %105 = load i64, i64* %j, align 8
  %inc142 = add i64 %105, 1
  store i64 %inc142, i64* %j, align 8
  br label %for.cond.97

for.end.143:                                      ; preds = %for.cond.97
  %106 = load i32, i32* %bit, align 4
  %sub144 = sub nsw i32 7, %106
  %107 = load i8, i8* %bout, align 1
  %conv145 = sext i8 %107 to i32
  %shl146 = shl i32 %conv145, %sub144
  %conv147 = trunc i32 %shl146 to i8
  store i8 %conv147, i8* %bout, align 1
  %108 = load i8, i8* %bout, align 1
  %109 = load i64, i64* %comp_len, align 8
  %110 = load i8*, i8** %comp, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8 %108, i8* %arrayidx148, align 1
  %111 = load i64, i64* %comp_len, align 8
  %inc149 = add i64 %111, 1
  store i64 %inc149, i64* %comp_len, align 8
  %112 = bitcast [256 x i64]* %heap2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %112, i8 0, i64 2048, i32 16, i1 false)
  %arraydecay150 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i32 0
  store i8* %arraydecay150, i8** %optr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.188, %for.end.143
  %113 = load i64, i64* %j, align 8
  %cmp152 = icmp ult i64 %113, 256
  br i1 %cmp152, label %for.body.154, label %for.end.190

for.body.154:                                     ; preds = %for.cond.151
  %114 = load i64, i64* %j, align 8
  %conv155 = trunc i64 %114 to i8
  %115 = load i8*, i8** %optr, align 8
  store i8 %conv155, i8* %115, align 1
  %116 = load i8*, i8** %optr, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr156, i8** %optr, align 8
  %117 = load i64, i64* %j, align 8
  %arrayidx157 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i64 %117
  %118 = load i64, i64* %arrayidx157, align 8
  %119 = load i64, i64* %j, align 8
  %arrayidx158 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %119
  %120 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %120 to i64
  %or160 = or i64 %118, %conv159
  %tobool161 = icmp ne i64 %or160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.187

if.then.162:                                      ; preds = %for.body.154
  store i64 0, i64* %k, align 8
  %121 = load i64, i64* %j, align 8
  %arrayidx163 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %121
  %122 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %122 to i32
  %sub165 = sub nsw i32 %conv164, 1
  %shl166 = shl i32 1, %sub165
  %conv167 = sext i32 %shl166 to i64
  store i64 %conv167, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.183, %if.then.162
  %123 = load i64, i64* %i, align 8
  %124 = load i64, i64* %j, align 8
  %arrayidx169 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i64 %124
  %125 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %125 to i64
  %cmp171 = icmp ult i64 %123, %conv170
  br i1 %cmp171, label %for.body.173, label %for.end.185

for.body.173:                                     ; preds = %for.cond.168
  %126 = load i64, i64* %k, align 8
  %mul174 = mul i64 %126, 2
  %add175 = add i64 %mul174, 1
  store i64 %add175, i64* %k, align 8
  %127 = load i64, i64* %j, align 8
  %arrayidx176 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i64 %127
  %128 = load i64, i64* %arrayidx176, align 8
  %129 = load i64, i64* %mask, align 8
  %and177 = and i64 %128, %129
  %tobool178 = icmp ne i64 %and177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %for.body.173
  %130 = load i64, i64* %k, align 8
  %inc180 = add i64 %130, 1
  store i64 %inc180, i64* %k, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %for.body.173
  %131 = load i64, i64* %mask, align 8
  %shr182 = lshr i64 %131, 1
  store i64 %shr182, i64* %mask, align 8
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.181
  %132 = load i64, i64* %i, align 8
  %inc184 = add i64 %132, 1
  store i64 %inc184, i64* %i, align 8
  br label %for.cond.168

for.end.185:                                      ; preds = %for.cond.168
  %133 = load i64, i64* %k, align 8
  %134 = load i64, i64* %j, align 8
  %arrayidx186 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %134
  store i64 %133, i64* %arrayidx186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %for.end.185, %for.body.154
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %135 = load i64, i64* %j, align 8
  %inc189 = add i64 %135, 1
  store i64 %inc189, i64* %j, align 8
  br label %for.cond.151

for.end.190:                                      ; preds = %for.cond.151
  store i64 1, i64* %i, align 8
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.214, %for.end.190
  %136 = load i64, i64* %i, align 8
  %cmp192 = icmp ult i64 %136, 256
  br i1 %cmp192, label %for.body.194, label %for.end.216

for.body.194:                                     ; preds = %for.cond.191
  %137 = load i64, i64* %i, align 8
  %arrayidx195 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %137
  %138 = load i64, i64* %arrayidx195, align 8
  store i64 %138, i64* %t, align 8
  %139 = load i64, i64* %i, align 8
  %arrayidx196 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i64 %139
  %140 = load i8, i8* %arrayidx196, align 1
  store i8 %140, i8* %c, align 1
  %141 = load i64, i64* %i, align 8
  store i64 %141, i64* %j, align 8
  br label %while.cond.197

while.cond.197:                                   ; preds = %while.body.203, %for.body.194
  %142 = load i64, i64* %j, align 8
  %tobool198 = icmp ne i64 %142, 0
  br i1 %tobool198, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.197
  %143 = load i64, i64* %j, align 8
  %sub199 = sub i64 %143, 1
  %arrayidx200 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %sub199
  %144 = load i64, i64* %arrayidx200, align 8
  %145 = load i64, i64* %t, align 8
  %cmp201 = icmp ugt i64 %144, %145
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.197
  %146 = phi i1 [ false, %while.cond.197 ], [ %cmp201, %land.rhs ]
  br i1 %146, label %while.body.203, label %while.end.211

while.body.203:                                   ; preds = %land.end
  %147 = load i64, i64* %j, align 8
  %sub204 = sub i64 %147, 1
  %arrayidx205 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %sub204
  %148 = load i64, i64* %arrayidx205, align 8
  %149 = load i64, i64* %j, align 8
  %arrayidx206 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %149
  store i64 %148, i64* %arrayidx206, align 8
  %150 = load i64, i64* %j, align 8
  %sub207 = sub i64 %150, 1
  %arrayidx208 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i64 %sub207
  %151 = load i8, i8* %arrayidx208, align 1
  %152 = load i64, i64* %j, align 8
  %arrayidx209 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i64 %152
  store i8 %151, i8* %arrayidx209, align 1
  %153 = load i64, i64* %j, align 8
  %dec210 = add i64 %153, -1
  store i64 %dec210, i64* %j, align 8
  br label %while.cond.197

while.end.211:                                    ; preds = %land.end
  %154 = load i64, i64* %t, align 8
  %155 = load i64, i64* %j, align 8
  %arrayidx212 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %155
  store i64 %154, i64* %arrayidx212, align 8
  %156 = load i8, i8* %c, align 1
  %157 = load i64, i64* %j, align 8
  %arrayidx213 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i64 %157
  store i8 %156, i8* %arrayidx213, align 1
  br label %for.inc.214

for.inc.214:                                      ; preds = %while.end.211
  %158 = load i64, i64* %i, align 8
  %inc215 = add i64 %158, 1
  store i64 %inc215, i64* %i, align 8
  br label %for.cond.191

for.end.216:                                      ; preds = %for.cond.191
  store i64 0, i64* %j, align 8
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.222, %for.end.216
  %159 = load i64, i64* %j, align 8
  %arrayidx218 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %159
  %160 = load i64, i64* %arrayidx218, align 8
  %cmp219 = icmp eq i64 %160, 0
  br i1 %cmp219, label %for.body.221, label %for.end.224

for.body.221:                                     ; preds = %for.cond.217
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.221
  %161 = load i64, i64* %j, align 8
  %inc223 = add i64 %161, 1
  store i64 %inc223, i64* %j, align 8
  br label %for.cond.217

for.end.224:                                      ; preds = %for.cond.217
  store i64 0, i64* %k, align 8
  %162 = load i64, i64* %j, align 8
  store i64 %162, i64* %i, align 8
  store i64 128, i64* %mask, align 8
  store i64 0, i64* %n, align 8
  %163 = load i8*, i8** %comp, align 8
  store i8* %163, i8** %cptr, align 8
  %164 = load i8*, i8** %data.addr, align 8
  store i8* %164, i8** %dptr, align 8
  br label %while.cond.225

while.cond.225:                                   ; preds = %if.end.258, %for.end.224
  %165 = load i64, i64* %n, align 8
  %166 = load i64, i64* %data_len.addr, align 8
  %cmp226 = icmp ult i64 %165, %166
  br i1 %cmp226, label %while.body.228, label %while.end.259

while.body.228:                                   ; preds = %while.cond.225
  %167 = load i64, i64* %k, align 8
  %mul229 = mul i64 %167, 2
  %add230 = add i64 %mul229, 1
  store i64 %add230, i64* %k, align 8
  %168 = load i8*, i8** %cptr, align 8
  %169 = load i8, i8* %168, align 1
  %conv231 = zext i8 %169 to i64
  %170 = load i64, i64* %mask, align 8
  %and232 = and i64 %conv231, %170
  %tobool233 = icmp ne i64 %and232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %while.body.228
  %171 = load i64, i64* %k, align 8
  %inc235 = add i64 %171, 1
  store i64 %inc235, i64* %k, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.234, %while.body.228
  br label %while.cond.237

while.cond.237:                                   ; preds = %while.body.241, %if.end.236
  %172 = load i64, i64* %i, align 8
  %arrayidx238 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %172
  %173 = load i64, i64* %arrayidx238, align 8
  %174 = load i64, i64* %k, align 8
  %cmp239 = icmp ult i64 %173, %174
  br i1 %cmp239, label %while.body.241, label %while.end.243

while.body.241:                                   ; preds = %while.cond.237
  %175 = load i64, i64* %i, align 8
  %inc242 = add i64 %175, 1
  store i64 %inc242, i64* %i, align 8
  br label %while.cond.237

while.end.243:                                    ; preds = %while.cond.237
  %176 = load i64, i64* %k, align 8
  %177 = load i64, i64* %i, align 8
  %arrayidx244 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i64 %177
  %178 = load i64, i64* %arrayidx244, align 8
  %cmp245 = icmp eq i64 %176, %178
  br i1 %cmp245, label %if.then.247, label %if.end.251

if.then.247:                                      ; preds = %while.end.243
  %179 = load i64, i64* %i, align 8
  %arrayidx248 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i64 %179
  %180 = load i8, i8* %arrayidx248, align 1
  %181 = load i8*, i8** %dptr, align 8
  store i8 %180, i8* %181, align 1
  %182 = load i8*, i8** %dptr, align 8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr249, i8** %dptr, align 8
  %183 = load i64, i64* %n, align 8
  %inc250 = add i64 %183, 1
  store i64 %inc250, i64* %n, align 8
  store i64 0, i64* %k, align 8
  %184 = load i64, i64* %j, align 8
  store i64 %184, i64* %i, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.247, %while.end.243
  %185 = load i64, i64* %mask, align 8
  %cmp252 = icmp ugt i64 %185, 1
  br i1 %cmp252, label %if.then.254, label %if.else.256

if.then.254:                                      ; preds = %if.end.251
  %186 = load i64, i64* %mask, align 8
  %shr255 = lshr i64 %186, 1
  store i64 %shr255, i64* %mask, align 8
  br label %if.end.258

if.else.256:                                      ; preds = %if.end.251
  store i64 128, i64* %mask, align 8
  %187 = load i8*, i8** %cptr, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr257, i8** %cptr, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.256, %if.then.254
  br label %while.cond.225

while.end.259:                                    ; preds = %while.cond.225
  %188 = load i8*, i8** %comp, align 8
  call void @free(i8* %188) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @heap_adjust(i64* %freq, i64* %heap, i32 %n, i32 %k) #0 {
entry:
  %freq.addr = alloca i64*, align 8
  %heap.addr = alloca i64*, align 8
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  store i64* %freq, i64** %freq.addr, align 8
  store i64* %heap, i64** %heap.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i64*, i64** %heap.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 -1
  store i64* %incdec.ptr, i64** %heap.addr, align 8
  %1 = load i32, i32* %k.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i64*, i64** %heap.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %entry
  %4 = load i32, i32* %k.addr, align 4
  %5 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %5, 2
  %cmp = icmp sle i32 %4, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %k.addr, align 4
  %7 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %j, align 4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i64*, i64** %heap.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %idxprom4
  %12 = load i64, i64* %arrayidx5, align 8
  %13 = load i64*, i64** %freq.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx6, align 8
  %15 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add7 to i64
  %16 = load i64*, i64** %heap.addr, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %16, i64 %idxprom8
  %17 = load i64, i64* %arrayidx9, align 8
  %18 = load i64*, i64** %freq.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ugt i64 %14, %19
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %21 = load i32, i32* %v, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i64*, i64** %freq.addr, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %22, i64 %idxprom13
  %23 = load i64, i64* %arrayidx14, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i64*, i64** %heap.addr, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %25, i64 %idxprom15
  %26 = load i64, i64* %arrayidx16, align 8
  %27 = load i64*, i64** %freq.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %27, i64 %26
  %28 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp ult i64 %23, %28
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  br label %while.end

if.end.21:                                        ; preds = %if.end
  %29 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i64*, i64** %heap.addr, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %30, i64 %idxprom22
  %31 = load i64, i64* %arrayidx23, align 8
  %32 = load i32, i32* %k.addr, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load i64*, i64** %heap.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %33, i64 %idxprom24
  store i64 %31, i64* %arrayidx25, align 8
  %34 = load i32, i32* %j, align 4
  store i32 %34, i32* %k.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %35 = load i32, i32* %v, align 4
  %conv26 = sext i32 %35 to i64
  %36 = load i32, i32* %k.addr, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i64*, i64** %heap.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %37, i64 %idxprom27
  store i64 %conv26, i64* %arrayidx28, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ga_testing = alloca i8, align 1
  %test_data = alloca i8*, align 8
  %run_time = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %ga_testing, align 1
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %for.body
  store i8 1, i8* %ga_testing, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  %call4 = call i8* @generate_test_data(i64 10000000)
  store i8* %call4, i8** %test_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.8, %if.end.3
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %6, 30
  br i1 %cmp6, label %for.body.7, label %for.end.10

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i8*, i8** %test_data, align 8
  call void @compdecomp(i8* %7, i64 10000000)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.7
  %8 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.5

for.end.10:                                       ; preds = %for.cond.5
  store double 0.000000e+00, double* %run_time, align 8
  %9 = load i8*, i8** %test_data, align 8
  call void @free(i8* %9) #2
  %10 = load i8, i8* %ga_testing, align 1
  %tobool11 = trunc i8 %10 to i1
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end.10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = load double, double* %run_time, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %12)
  br label %if.end.15

if.else:                                          ; preds = %for.end.10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = load double, double* %run_time, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), double %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %15)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i64 @random4() #0 {
entry:
  %k = alloca i64, align 8
  %result = alloca i64, align 8
  %0 = load i64, i64* @seed, align 8
  %xor = xor i64 %0, 123459876
  store i64 %xor, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %div = sdiv i64 %1, 127773
  store i64 %div, i64* %k, align 8
  %2 = load i64, i64* @seed, align 8
  %3 = load i64, i64* %k, align 8
  %mul = mul nsw i64 %3, 127773
  %sub = sub nsw i64 %2, %mul
  %mul1 = mul nsw i64 16807, %sub
  %4 = load i64, i64* %k, align 8
  %mul2 = mul nsw i64 2836, %4
  %sub3 = sub nsw i64 %mul1, %mul2
  store i64 %sub3, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @seed, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* @seed, align 8
  %rem = srem i64 %7, 32
  store i64 %rem, i64* %result, align 8
  %8 = load i64, i64* @seed, align 8
  %xor4 = xor i64 %8, 123459876
  store i64 %xor4, i64* @seed, align 8
  %9 = load i64, i64* %result, align 8
  ret i64 %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
