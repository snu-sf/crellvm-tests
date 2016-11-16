; ModuleID = './app/xcf/xcf-read.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [71 x i8] c"Maximum string length (%ld bytes) exceeded. Possibly corrupt XCF file.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid UTF-8 string in XCF file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Gimp-XCF\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xcf_read_int32(%struct._IO_FILE* %fp, i32* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %total, align 4
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i32*, i32** %data.addr, align 8
  %3 = bitcast i32* %2 to i8*
  %4 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %4, 4
  %call = call i32 @xcf_read_int8(%struct._IO_FILE* %1, i8* %3, i32 %mul)
  %5 = load i32, i32* %total, align 4
  %add = add i32 %5, %call
  store i32 %add, i32* %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %count.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i32, i32* %7, align 4
  %and = and i32 %8, 255
  %shl = shl i32 %and, 24
  %9 = load i32*, i32** %data.addr, align 8
  %10 = load i32, i32* %9, align 4
  %and1 = and i32 %10, 65280
  %shl2 = shl i32 %and1, 8
  %or = or i32 %shl, %shl2
  %11 = load i32*, i32** %data.addr, align 8
  %12 = load i32, i32* %11, align 4
  %and3 = and i32 %12, 16711680
  %shr = lshr i32 %and3, 8
  %or4 = or i32 %or, %shr
  %13 = load i32*, i32** %data.addr, align 8
  %14 = load i32, i32* %13, align 4
  %and5 = and i32 %14, -16777216
  %shr6 = lshr i32 %and5, 24
  %or7 = or i32 %or4, %shr6
  %15 = load i32*, i32** %data.addr, align 8
  store i32 %or7, i32* %15, align 4
  %16 = load i32*, i32** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr, i32** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %17 = load i32, i32* %total, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @xcf_read_int8(%struct._IO_FILE* %fp, i8* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %total, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i32, i32* %count.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %1, i64 1, i64 %conv, %struct._IO_FILE* %3)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %bytes, align 4
  %4 = load i32, i32* %bytes, align 4
  %cmp2 = icmp sle i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %bytes, align 4
  %6 = load i32, i32* %total, align 4
  %add = add i32 %6, %5
  store i32 %add, i32* %total, align 4
  %7 = load i32, i32* %bytes, align 4
  %8 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %count.addr, align 4
  %9 = load i32, i32* %bytes, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i32, i32* %total, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @xcf_read_float(%struct._IO_FILE* %fp, float* %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store float* %data, float** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load float*, float** %data.addr, align 8
  %2 = bitcast float* %1 to i8*
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %count.addr, align 4
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %0, i32* %3, i32 %4)
  ret i32 %call
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @xcf_read_string(%struct._IO_FILE* %fp, i8** %data, i32 %count) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8**, align 8
  %count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @xcf_read_int32(%struct._IO_FILE* %2, i32* %tmp, i32 1)
  %3 = load i32, i32* %total, align 4
  %add = add i32 %3, %call
  store i32 %add, i32* %total, align 4
  %4 = load i32, i32* %tmp, align 4
  %conv = zext i32 %4 to i64
  %cmp1 = icmp sgt i64 %conv, 16777216
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0), i64 16777216)
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %if.end.28

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %tmp, align 4
  %cmp3 = icmp ugt i32 %7, 0
  br i1 %cmp3, label %if.then.5, label %if.else.24

if.then.5:                                        ; preds = %if.else
  %8 = load i32, i32* %tmp, align 4
  %conv7 = zext i32 %8 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 1)
  store i8* %call8, i8** %str, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i8*, i8** %str, align 8
  %11 = load i32, i32* %tmp, align 4
  %call9 = call i32 @xcf_read_int8(%struct._IO_FILE* %9, i8* %10, i32 %11)
  %12 = load i32, i32* %total, align 4
  %add10 = add i32 %12, %call9
  store i32 %add10, i32* %total, align 4
  %13 = load i32, i32* %tmp, align 4
  %sub = sub i32 %13, 1
  %idxprom11 = zext i32 %sub to i64
  %14 = load i8*, i8** %str, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.5
  %16 = load i32, i32* %tmp, align 4
  %sub17 = sub i32 %16, 1
  %idxprom18 = zext i32 %sub17 to i64
  %17 = load i8*, i8** %str, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.5
  %18 = load i8*, i8** %str, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #3
  %call21 = call noalias i8* (i8*, i64, i8*, ...) @gimp_any_to_utf8(i8* %18, i64 -1, i8* %call20)
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i8**, i8*** %data.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %20, i64 %idxprom22
  store i8* %call21, i8** %arrayidx23, align 8
  %21 = load i8*, i8** %str, align 8
  call void @g_free(i8* %21)
  br label %if.end.27

if.else.24:                                       ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i8**, i8*** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %23, i64 %idxprom25
  store i8* null, i8** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %total, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @gimp_any_to_utf8(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
