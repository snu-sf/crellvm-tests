; ModuleID = './MultiSource.Benchmarks.MiBench/174.automotive-bitcount.bitfiles.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define %struct.bfile* @bfopen(i8* %name, i8* %mode) #0 {
entry:
  %retval = alloca %struct.bfile*, align 8
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %bf = alloca %struct.bfile*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.bfile*
  store %struct.bfile* %0, %struct.bfile** %bf, align 8
  %1 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %cmp = icmp eq %struct.bfile* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.bfile* null, %struct.bfile** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %mode.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* %3)
  %4 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i32 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8
  %5 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %file2 = getelementptr inbounds %struct.bfile, %struct.bfile* %5, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file2, align 8
  %cmp3 = icmp eq %struct._IO_FILE* null, %6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %8 = bitcast %struct.bfile* %7 to i8*
  call void @free(i8* %8) #3
  store %struct.bfile* null, %struct.bfile** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %rcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %9, i32 0, i32 2
  store i8 0, i8* %rcnt, align 1
  %10 = load %struct.bfile*, %struct.bfile** %bf, align 8
  %wcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %10, i32 0, i32 4
  store i8 0, i8* %wcnt, align 1
  %11 = load %struct.bfile*, %struct.bfile** %bf, align 8
  store %struct.bfile* %11, %struct.bfile** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %12 = load %struct.bfile*, %struct.bfile** %retval
  ret %struct.bfile* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @bfread(%struct.bfile* %bf) #0 {
entry:
  %bf.addr = alloca %struct.bfile*, align 8
  store %struct.bfile* %bf, %struct.bfile** %bf.addr, align 8
  %0 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i32 0, i32 2
  %1 = load i8, i8* %rcnt, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %3)
  %conv2 = trunc i32 %call to i8
  %4 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rbuf = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i32 0, i32 1
  store i8 %conv2, i8* %rbuf, align 1
  %5 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rcnt3 = getelementptr inbounds %struct.bfile, %struct.bfile* %5, i32 0, i32 2
  store i8 8, i8* %rcnt3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rcnt4 = getelementptr inbounds %struct.bfile, %struct.bfile* %6, i32 0, i32 2
  %7 = load i8, i8* %rcnt4, align 1
  %dec = add i8 %7, -1
  store i8 %dec, i8* %rcnt4, align 1
  %8 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rbuf5 = getelementptr inbounds %struct.bfile, %struct.bfile* %8, i32 0, i32 1
  %9 = load i8, i8* %rbuf5, align 1
  %conv6 = sext i8 %9 to i32
  %10 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %rcnt7 = getelementptr inbounds %struct.bfile, %struct.bfile* %10, i32 0, i32 2
  %11 = load i8, i8* %rcnt7, align 1
  %conv8 = sext i8 %11 to i32
  %shl = shl i32 1, %conv8
  %and = and i32 %conv6, %shl
  %cmp9 = icmp ne i32 %and, 0
  %conv10 = zext i1 %cmp9 to i32
  ret i32 %conv10
}

declare i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @bfwrite(i32 %bit, %struct.bfile* %bf) #0 {
entry:
  %bit.addr = alloca i32, align 4
  %bf.addr = alloca %struct.bfile*, align 8
  store i32 %bit, i32* %bit.addr, align 4
  store %struct.bfile* %bf, %struct.bfile** %bf.addr, align 8
  %0 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i32 0, i32 4
  %1 = load i8, i8* %wcnt, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 8, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wbuf = getelementptr inbounds %struct.bfile, %struct.bfile* %2, i32 0, i32 3
  %3 = load i8, i8* %wbuf, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %5)
  %6 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wcnt3 = getelementptr inbounds %struct.bfile, %struct.bfile* %6, i32 0, i32 4
  store i8 0, i8* %wcnt3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wcnt4 = getelementptr inbounds %struct.bfile, %struct.bfile* %7, i32 0, i32 4
  %8 = load i8, i8* %wcnt4, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %wcnt4, align 1
  %9 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wbuf5 = getelementptr inbounds %struct.bfile, %struct.bfile* %9, i32 0, i32 3
  %10 = load i8, i8* %wbuf5, align 1
  %conv6 = sext i8 %10 to i32
  %shl = shl i32 %conv6, 1
  %conv7 = trunc i32 %shl to i8
  store i8 %conv7, i8* %wbuf5, align 1
  %11 = load i32, i32* %bit.addr, align 4
  %and = and i32 %11, 1
  %12 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %wbuf8 = getelementptr inbounds %struct.bfile, %struct.bfile* %12, i32 0, i32 3
  %13 = load i8, i8* %wbuf8, align 1
  %conv9 = sext i8 %13 to i32
  %or = or i32 %conv9, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %wbuf8, align 1
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @bfclose(%struct.bfile* %bf) #0 {
entry:
  %bf.addr = alloca %struct.bfile*, align 8
  store %struct.bfile* %bf, %struct.bfile** %bf.addr, align 8
  %0 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  %2 = load %struct.bfile*, %struct.bfile** %bf.addr, align 8
  %3 = bitcast %struct.bfile* %2 to i8*
  call void @free(i8* %3) #3
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
