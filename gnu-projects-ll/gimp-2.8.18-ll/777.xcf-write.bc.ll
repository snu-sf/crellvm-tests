; ModuleID = './app/xcf/xcf-write.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [22 x i8] c"Error writing XCF: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xcf_write_int32(%struct._IO_FILE* %fp, i32* %data, i32 %count, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %data.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %and = and i32 %5, 255
  %shl = shl i32 %and, 24
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %8, 65280
  %shl5 = shl i32 %and4, 8
  %or = or i32 %shl, %shl5
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %11, 16711680
  %shr = lshr i32 %and8, 8
  %or9 = or i32 %or, %shr
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32*, i32** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %and12 = and i32 %14, -16777216
  %shr13 = lshr i32 %and12, 24
  %or14 = or i32 %or9, %shr13
  store i32 %or14, i32* %tmp, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = bitcast i32* %tmp to i8*
  %call = call i32 @xcf_write_int8(%struct._IO_FILE* %15, i8* %16, i32 4, %struct._GError** %tmp_error)
  %17 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool = icmp ne %struct._GError* %17, null
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.body
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %19 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %18, %struct._GError* %19)
  %20 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %20, 4
  store i32 %mul, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  %22 = load i32, i32* %count.addr, align 4
  %mul17 = mul nsw i32 %22, 4
  store i32 %mul17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @xcf_write_int8(%struct._IO_FILE* %fp, i8* %data, i32 %count, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %total = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv, %struct._IO_FILE* %3)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %bytes, align 4
  %4 = load i32, i32* %bytes, align 4
  %5 = load i32, i32* %total, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %total, align 4
  %6 = load i32, i32* %bytes, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %8)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #2
  %call8 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %9) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call4, i32 %call6, i8* %call7, i8* %call9)
  %10 = load i32, i32* %total, align 4
  store i32 %10, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %bytes, align 4
  %12 = load i32, i32* %count.addr, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %count.addr, align 4
  %13 = load i32, i32* %bytes, align 4
  %14 = load i8*, i8** %data.addr, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %total, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

; Function Attrs: nounwind uwtable
define i32 @xcf_write_zero_int32(%struct._IO_FILE* %fp, i32 %count, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %count.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %tmp = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %count.addr, align 4
  %mul = mul nsw i32 %1, 4
  %conv = sext i32 %mul to i64
  %2 = alloca i8, i64 %conv
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %tmp, align 8
  %4 = load i32*, i32** %tmp, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32, i32* %count.addr, align 4
  %mul1 = mul nsw i32 %6, 4
  %conv2 = sext i32 %mul1 to i64
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %conv2, i32 4, i1 false)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load i32*, i32** %tmp, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* %count.addr, align 4
  %mul3 = mul nsw i32 %10, 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @xcf_write_int8(%struct._IO_FILE* %7, i8* %9, i32 %mul3, %struct._GError** %11)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @xcf_write_float(%struct._IO_FILE* %fp, float* %data, i32 %count, %struct._GError** %error) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store float* %data, float** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load float*, float** %data.addr, align 8
  %2 = bitcast float* %1 to i8*
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %count.addr, align 4
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @xcf_write_int32(%struct._IO_FILE* %0, i32* %3, i32 %4, %struct._GError** %5)
  ret i32 %call
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind uwtable
define i32 @xcf_write_string(%struct._IO_FILE* %fp, i8** %data, i32 %count, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8**, align 8
  %count.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %tmp_error = alloca %struct._GError*, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %tmp_error, align 8
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strlen(i8* %7) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %tmp, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %tmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @xcf_write_int32(%struct._IO_FILE* %8, i32* %tmp, i32 1, %struct._GError** %tmp_error)
  %9 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool4 = icmp ne %struct._GError* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %11 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %10, %struct._GError* %11)
  %12 = load i32, i32* %total, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %tmp, align 4
  %cmp7 = icmp ugt i32 %13, 0
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8**, i8*** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %16, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx11, align 8
  %18 = load i32, i32* %tmp, align 4
  %call12 = call i32 @xcf_write_int8(%struct._IO_FILE* %14, i8* %17, i32 %18, %struct._GError** %tmp_error)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %19 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  %tobool14 = icmp ne %struct._GError* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %tmp_error, align 8
  call void @g_propagate_error(%struct._GError** %20, %struct._GError* %21)
  %22 = load i32, i32* %total, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %23 = load i32, i32* %tmp, align 4
  %add17 = add i32 4, %23
  %24 = load i32, i32* %total, align 4
  %add18 = add i32 %24, %add17
  store i32 %add18, i32* %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %total, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then.5
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
