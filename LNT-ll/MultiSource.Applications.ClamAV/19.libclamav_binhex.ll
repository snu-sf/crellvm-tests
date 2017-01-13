; ModuleID = './MultiSource.Applications.ClamAV/19.libclamav_binhex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.text = type { i8*, %struct.text* }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.blob = type { i8*, i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"mmap'ed binhex file\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No binhex line found\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"x-binhex\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Binhex file decoded to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Couldn't decode binhex file to %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_binhex(i8* %dir, i32 %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %statb = alloca %struct.stat, align 8
  %buf = alloca i8*, align 8
  %start = alloca i8*, align 8
  %line = alloca i8*, align 8
  %size = alloca i64, align 8
  %bytesleft = alloca i64, align 8
  %m = alloca %struct.message*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %length = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %newline = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %statb) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct.message* @messageCreate()
  store %struct.message* %call4, %struct.message** %m, align 8
  %3 = load %struct.message*, %struct.message** %m, align 8
  %cmp5 = icmp eq %struct.message* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -114, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i64, i64* %size, align 8
  %5 = load i32, i32* %desc.addr, align 4
  %call8 = call i8* @mmap(i8* null, i64 %4, i32 1, i32 2, i32 %5, i64 0) #3
  store i8* %call8, i8** %buf, align 8
  store i8* %call8, i8** %start, align 8
  %6 = load i8*, i8** %buf, align 8
  %cmp9 = icmp eq i8* %6, inttoptr (i64 -1 to i8*)
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %7 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %7)
  store i32 -114, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %8 = load i64, i64* %size, align 8
  store i64 %8, i64* %bytesleft, align 8
  store i8* null, i8** %line, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end.11
  %9 = load i64, i64* %bytesleft, align 8
  %cmp12 = icmp sgt i64 %9, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %length, align 4
  %10 = load i8*, i8** %buf, align 8
  store i8* %10, i8** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %11 = load i64, i64* %bytesleft, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %12 = load i8*, i8** %ptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp13 = icmp ne i32 %conv, 10
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp ne i32 %conv15, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %16 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp16, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load i32, i32* %length, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %length, align 4
  %18 = load i64, i64* %bytesleft, align 8
  %dec = add nsw i64 %18, -1
  store i64 %dec, i64* %bytesleft, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i8*, i8** %line, align 8
  %21 = load i32, i32* %length, align 4
  %add = add nsw i32 %21, 1
  %conv18 = sext i32 %add to i64
  %call19 = call i8* @cli_realloc(i8* %20, i64 %conv18)
  store i8* %call19, i8** %newline, align 8
  %22 = load i8*, i8** %newline, align 8
  %cmp20 = icmp eq i8* %22, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  br label %while.end

if.end.23:                                        ; preds = %for.end
  %23 = load i8*, i8** %newline, align 8
  store i8* %23, i8** %line, align 8
  %24 = load i8*, i8** %line, align 8
  %25 = load i8*, i8** %buf, align 8
  %26 = load i32, i32* %length, align 4
  %conv24 = sext i32 %26 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %conv24, i32 1, i1 false)
  %27 = load i32, i32* %length, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %29 = load %struct.message*, %struct.message** %m, align 8
  %30 = load i8*, i8** %line, align 8
  %call25 = call i32 @messageAddStr(%struct.message* %29, i8* %30)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  br label %while.end

if.end.29:                                        ; preds = %if.end.23
  %31 = load i64, i64* %bytesleft, align 8
  %cmp30 = icmp sgt i64 %31, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.39

land.lhs.true.32:                                 ; preds = %if.end.29
  %32 = load i8*, i8** %ptr, align 8
  %33 = load i8, i8* %32, align 1
  %conv33 = sext i8 %33 to i32
  %cmp34 = icmp eq i32 %conv33, 13
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %land.lhs.true.32
  %34 = load i8*, i8** %ptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr37, i8** %ptr, align 8
  %35 = load i64, i64* %bytesleft, align 8
  %dec38 = add nsw i64 %35, -1
  store i64 %dec38, i64* %bytesleft, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %land.lhs.true.32, %if.end.29
  %36 = load i8*, i8** %ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr40, i8** %ptr, align 8
  store i8* %incdec.ptr40, i8** %buf, align 8
  %37 = load i64, i64* %bytesleft, align 8
  %dec41 = add nsw i64 %37, -1
  store i64 %dec41, i64* %bytesleft, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.28, %if.then.22, %while.cond
  %38 = load i8*, i8** %start, align 8
  %39 = load i64, i64* %size, align 8
  %call42 = call i32 @munmap(i8* %38, i64 %39) #3
  %40 = load i8*, i8** %line, align 8
  %tobool43 = icmp ne i8* %40, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.end
  %41 = load i8*, i8** %line, align 8
  call void @free(i8* %41) #3
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %while.end
  %42 = load %struct.message*, %struct.message** %m, align 8
  %call46 = call %struct.text* @binhexBegin(%struct.message* %42)
  %cmp47 = icmp eq %struct.text* %call46, null
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  %43 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %43)
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.45
  %44 = load %struct.message*, %struct.message** %m, align 8
  call void @messageSetEncoding(%struct.message* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %45 = load %struct.message*, %struct.message** %m, align 8
  %46 = load i8*, i8** %dir.addr, align 8
  %call51 = call %struct.fileblob* @messageToFileblob(%struct.message* %45, i8* %46, i32 1)
  store %struct.fileblob* %call51, %struct.fileblob** %fb, align 8
  %47 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool52 = icmp ne %struct.fileblob* %47, null
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.50
  %48 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call54 = call i8* @fileblobGetFilename(%struct.fileblob* %48)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* %call54)
  %49 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %49)
  br label %if.end.55

if.else:                                          ; preds = %if.end.50
  %50 = load i8*, i8** %dir.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %50)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.53
  %51 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %51)
  %52 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool56 = icmp ne %struct.fileblob* %52, null
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.55
  store i32 -123, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.57, %if.then.49, %if.then.10, %if.then.6, %if.then.2, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

declare %struct.message* @messageCreate() #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

declare void @messageDestroy(%struct.message*) #2

declare void @cli_dbgmsg(i8*, ...) #2

declare i8* @cli_realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @messageAddStr(%struct.message*, i8*) #2

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

declare %struct.text* @binhexBegin(%struct.message*) #2

declare void @cli_errmsg(i8*, ...) #2

declare void @messageSetEncoding(%struct.message*, i8*) #2

declare %struct.fileblob* @messageToFileblob(%struct.message*, i8*, i32) #2

declare i8* @fileblobGetFilename(%struct.fileblob*) #2

declare void @fileblobDestroy(%struct.fileblob*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
