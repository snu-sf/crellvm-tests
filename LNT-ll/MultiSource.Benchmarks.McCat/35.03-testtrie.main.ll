; ModuleID = './MultiSource.Benchmarks.McCat/35.03-testtrie.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie_s = type { [26 x %struct.trie_s*], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.charsequence = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"%5d : '%s'\0A\00", align 1
@t = common global %struct.trie_s* null, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to open file '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printit(i32 %i, i8* %str) #0 {
entry:
  %i.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %0, i8* %1)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @addfile(%struct.trie_s* %t, %struct._IO_FILE* %f) #0 {
entry:
  %t.addr = alloca %struct.trie_s*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  %wstate = alloca i32, align 4
  %cs = alloca %struct.charsequence, align 8
  %str = alloca i8*, align 8
  store %struct.trie_s* %t, %struct.trie_s** %t.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 0, i32* %wstate, align 4
  %0 = bitcast %struct.charsequence* %cs to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #2
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  %call2 = call i32 @tolower(i32 %call1) #2
  %conv = trunc i32 %call2 to i8
  store i8 %conv, i8* %c, align 1
  %3 = load i32, i32* %wstate, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then, label %if.else.12

if.then:                                          ; preds = %while.body
  %4 = load i8, i8* %c, align 1
  %conv4 = sext i8 %4 to i32
  %cmp = icmp sge i32 %conv4, 97
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8, i8* %c, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sle i32 %conv6, 122
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %6 = load i8, i8* %c, align 1
  call void @charsequence_push(%struct.charsequence* %cs, i8 signext %6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %call10 = call i8* @charsequence_val(%struct.charsequence* %cs)
  store i8* %call10, i8** %str, align 8
  %7 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %8 = load i8*, i8** %str, align 8
  %call11 = call %struct.trie_s* @trie_insert(%struct.trie_s* %7, i8* %8)
  %9 = load i8*, i8** %str, align 8
  call void @free(i8* %9) #2
  store i32 0, i32* %wstate, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.22

if.else.12:                                       ; preds = %while.body
  %10 = load i8, i8* %c, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp sge i32 %conv13, 97
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %if.else.12
  %11 = load i8, i8* %c, align 1
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp sle i32 %conv17, 122
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.16
  call void @charsequence_reset(%struct.charsequence* %cs)
  %12 = load i8, i8* %c, align 1
  call void @charsequence_push(%struct.charsequence* %cs, i8 signext %12)
  store i32 1, i32* %wstate, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.16, %if.else.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @charsequence_push(%struct.charsequence*, i8 signext) #1

declare i8* @charsequence_val(%struct.charsequence*) #1

declare %struct.trie_s* @trie_insert(%struct.trie_s*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @charsequence_reset(%struct.charsequence*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %input = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct.trie_s* @trie_init()
  store %struct.trie_s* %call, %struct.trie_s** @t, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @addfile(%struct.trie_s* %1, %struct._IO_FILE* %2)
  br label %if.end.8

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %input, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* %9)
  br label %if.end

if.else.7:                                        ; preds = %while.body
  %10 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  call void @addfile(%struct.trie_s* %10, %struct._IO_FILE* %11)
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.4
  %12 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %argc.addr, align 4
  %13 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %if.then
  %14 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  call void @trie_scan(%struct.trie_s* %14, void (i32, i8*)* @printit)
  ret i32 0
}

declare %struct.trie_s* @trie_init() #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @trie_scan(%struct.trie_s*, void (i32, i8*)*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
