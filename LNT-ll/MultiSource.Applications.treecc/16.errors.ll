; ModuleID = './MultiSource.Applications.treecc/16.errors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@TreeCCErrorFile = global %struct._IO_FILE* null, align 8
@TreeCCErrorStripPath = global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"line %ld: \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1

; Function Attrs: nounwind uwtable
define void @TreeCCError(%struct.TreeCCInput* %input, i8* %format, ...) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool = icmp ne %struct.TreeCCInput* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %1, i32 0, i32 4
  %2 = load i8*, i8** %filename, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ]
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool2 = icmp ne %struct.TreeCCInput* %3, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 5
  %5 = load i64, i64* %linenum, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i64 [ %5, %cond.true.3 ], [ 0, %cond.false.4 ]
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @ReportError(i8* %cond, i64 %cond6, i8* %6, %struct.__va_list_tag* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  %7 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool10 = icmp ne %struct.TreeCCInput* %7, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %errors = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %8, i32 0, i32 7
  store i32 1, i32* %errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ReportError(i8* %filename, i64 %linenum, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @TreeCCErrorFile, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* @TreeCCErrorStripPath, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.then.2
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %4) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %5 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv6, 47
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %len, align 4
  %sub9 = sub nsw i32 %9, 1
  %idxprom10 = sext i32 %sub9 to i64
  %10 = load i8*, i8** %filename.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp ne i32 %conv12, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %len, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %len, align 4
  %15 = load i8*, i8** %filename.addr, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %filename.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %while.end, %if.then.2
  %16 = load i8*, i8** %filename.addr, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %call16 = call i32 @fputs(i8* %16, %struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %call17 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %20 = load i64, i64* %linenum.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %22 = load i8*, i8** %format.addr, align 8
  %23 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call20 = call i32 @vfprintf(%struct._IO_FILE* %21, i8* %22, %struct.__va_list_tag* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %call21 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @TreeCCErrorFile, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %25)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define void @TreeCCErrorOnLine(%struct.TreeCCInput* %input, i8* %filename, i64 %linenum, i8* %format, ...) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %filename.addr = alloca i8*, align 8
  %linenum.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %linenum, i64* %linenum.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i64, i64* %linenum.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @ReportError(i8* %0, i64 %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool = icmp ne %struct.TreeCCInput* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %errors = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 7
  store i32 1, i32* %errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @TreeCCAbort(%struct.TreeCCInput* %input, i8* %format, ...) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool = icmp ne %struct.TreeCCInput* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %filename = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %1, i32 0, i32 4
  %2 = load i8*, i8** %filename, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ]
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool2 = icmp ne %struct.TreeCCInput* %3, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %4 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %linenum = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %4, i32 0, i32 5
  %5 = load i64, i64* %linenum, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i64 [ %5, %cond.true.3 ], [ 0, %cond.false.4 ]
  %6 = load i8*, i8** %format.addr, align 8
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @ReportError(i8* %cond, i64 %cond6, i8* %6, %struct.__va_list_tag* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @TreeCCDebug(i64 %linenum, i8* %format, ...) #0 {
entry:
  %linenum.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %linenum, i64* %linenum.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i64, i64* %linenum.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %4)
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @TreeCCOutOfMemory(%struct.TreeCCInput* %input) #0 {
entry:
  %input.addr = alloca %struct.TreeCCInput*, align 8
  store %struct.TreeCCInput* %input, %struct.TreeCCInput** %input.addr, align 8
  %0 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %tobool = icmp ne %struct.TreeCCInput* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %progname = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %1, i32 0, i32 2
  %2 = load i8*, i8** %progname, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.TreeCCInput*, %struct.TreeCCInput** %input.addr, align 8
  %progname2 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %3, i32 0, i32 2
  %4 = load i8*, i8** %progname2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* %4, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %7)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
