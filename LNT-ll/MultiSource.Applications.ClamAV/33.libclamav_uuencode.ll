; ModuleID = './MultiSource.Applications.ClamAV/33.libclamav_uuencode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.text = type { i8*, %struct.text* }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct.blob = type { i8*, i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open descriptor %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Message is not in uuencoded format\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"found uuencode file\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"uudecode %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"end\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_uuencode(i8* %dir, i32 %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %fin = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct.message*, align 8
  %buffer = alloca [1001 x i8], align 16
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @dup(i32 %0) #4
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %call1 = call %struct._IO_FILE* @fdopen(i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fin, align 8
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @close(i32 %3)
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %4)
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %5)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call9 = call i32 @isuuencodebegin(i8* %arraydecay8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %6)
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %call13 = call %struct.message* @messageCreate()
  store %struct.message* %call13, %struct.message** %m, align 8
  %7 = load %struct.message*, %struct.message** %m, align 8
  %cmp14 = icmp eq %struct.message* %7, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 -114, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  %9 = load %struct.message*, %struct.message** %m, align 8
  %arraydecay18 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %10 = load i8*, i8** %dir.addr, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call19 = call i32 @uudecodeFile(%struct.message* %9, i8* %arraydecay18, i8* %10, %struct._IO_FILE* %11)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %12 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %13)
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %14 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then.15, %if.then.10, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare i32 @dup(i32) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare void @cli_errmsg(i8*, ...) #2

declare i32 @close(i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @isuuencodebegin(i8*) #2

declare %struct.message* @messageCreate() #2

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @uudecodeFile(%struct.message* %m, i8* %firstline, i8* %dir, %struct._IO_FILE* %fin) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %firstline.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %buffer = alloca [1001 x i8], align 16
  %filename = alloca i8*, align 8
  %data = alloca [1024 x i8], align 16
  %uptr = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %firstline, i8** %firstline.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  %0 = load i8*, i8** %firstline.addr, align 8
  %call = call i8* @cli_strtok(i8* %0, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call1, %struct.fileblob** %fb, align 8
  %2 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %cmp2 = icmp eq %struct.fileblob* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %filename, align 8
  call void @free(i8* %3) #4
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %5 = load i8*, i8** %dir.addr, align 8
  %6 = load i8*, i8** %filename, align 8
  call void @fileblobSetFilename(%struct.fileblob* %4, i8* %5, i8* %6)
  %7 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* %7)
  %8 = load i8*, i8** %filename, align 8
  call void @free(i8* %8) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.4
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %9)
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call8 = call i32 @cli_chomp(i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call10 = call i32 @strcasecmp(i8* %arraydecay9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %while.end

if.end.17:                                        ; preds = %if.end.13
  %11 = load %struct.message*, %struct.message** %m.addr, align 8
  %arraydecay18 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %call20 = call i8* @decodeLine(%struct.message* %11, i32 5, i8* %arraydecay18, i8* %arraydecay19, i64 1024)
  store i8* %call20, i8** %uptr, align 8
  %12 = load i8*, i8** %uptr, align 8
  %cmp21 = icmp eq i8* %12, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  br label %while.end

if.end.24:                                        ; preds = %if.end.17
  %13 = load i8*, i8** %uptr, align 8
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %14 = load i64, i64* %len, align 8
  %cmp26 = icmp ugt i64 %14, 62
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %15 = load i64, i64* %len, align 8
  %cmp28 = icmp eq i64 %15, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.24
  br label %while.end

if.end.31:                                        ; preds = %lor.lhs.false
  %16 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %17 = load i64, i64* %len, align 8
  %call33 = call i32 @fileblobAddData(%struct.fileblob* %16, i8* %arraydecay32, i64 %17)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  br label %while.end

if.end.37:                                        ; preds = %if.end.31
  br label %while.cond

while.end:                                        ; preds = %if.then.36, %if.then.30, %if.then.23, %if.then.16, %if.then.12, %while.cond
  %18 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %18)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @messageDestroy(%struct.message*) #2

declare i8* @cli_strtok(i8*, i32, i8*) #2

declare %struct.fileblob* @fileblobCreate() #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @fileblobSetFilename(%struct.fileblob*, i8*, i8*) #2

declare i32 @cli_chomp(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare i8* @decodeLine(%struct.message*, i32, i8*, i8*, i64) #2

declare i32 @fileblobAddData(%struct.fileblob*, i8*, i64) #2

declare void @fileblobDestroy(%struct.fileblob*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
