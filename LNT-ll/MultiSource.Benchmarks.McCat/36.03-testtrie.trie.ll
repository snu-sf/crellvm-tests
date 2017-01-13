; ModuleID = './MultiSource.Benchmarks.McCat/36.03-testtrie.trie.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.charsequence = type { i8*, i64, i64 }
%struct.trie_s = type { [26 x %struct.trie_s*], i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@trie_scan_buffer = global %struct.charsequence zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define %struct.trie_s* @trie_init() #0 {
entry:
  %t = alloca %struct.trie_s*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 216) #4
  %0 = bitcast i8* %call to %struct.trie_s*
  store %struct.trie_s* %0, %struct.trie_s** %t, align 8
  %cmp = icmp eq %struct.trie_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.trie_s*, %struct.trie_s** %t, align 8
  ret %struct.trie_s* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define %struct.trie_s* @trie_insert(%struct.trie_s* %t, i8* %s) #0 {
entry:
  %t.addr = alloca %struct.trie_s*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.trie_s* %t, %struct.trie_s** %t.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %cmp = icmp eq %struct.trie_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.trie_s* @trie_init()
  store %struct.trie_s* %call, %struct.trie_s** %t.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %number = getelementptr inbounds %struct.trie_s, %struct.trie_s* %3, i32 0, i32 1
  %4 = load i32, i32* %number, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %number, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  %call6 = call i32 @tolower(i32 %conv5) #4
  %sub = sub nsw i32 %call6, 97
  %idxprom = sext i32 %sub to i64
  %7 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next = getelementptr inbounds %struct.trie_s, %struct.trie_s* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next, i32 0, i64 %idxprom
  %8 = load %struct.trie_s*, %struct.trie_s** %arrayidx7, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %call8 = call %struct.trie_s* @trie_insert(%struct.trie_s* %8, i8* %add.ptr)
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %11 to i32
  %call11 = call i32 @tolower(i32 %conv10) #4
  %sub12 = sub nsw i32 %call11, 97
  %idxprom13 = sext i32 %sub12 to i64
  %12 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next14 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %12, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next14, i32 0, i64 %idxprom13
  store %struct.trie_s* %call8, %struct.trie_s** %arrayidx15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.3
  %13 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  ret %struct.trie_s* %13
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind uwtable
define i32 @trie_lookup(%struct.trie_s* %t, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.trie_s*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.trie_s* %t, %struct.trie_s** %t.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %cmp = icmp eq %struct.trie_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %4 to i32
  %call = call i32 @tolower(i32 %conv5) #4
  %sub = sub nsw i32 %call, 97
  %idxprom = sext i32 %sub to i64
  %5 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next = getelementptr inbounds %struct.trie_s, %struct.trie_s* %5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next, i32 0, i64 %idxprom
  %6 = load %struct.trie_s*, %struct.trie_s** %arrayidx6, align 8
  %number = getelementptr inbounds %struct.trie_s, %struct.trie_s* %6, i32 0, i32 1
  %7 = load i32, i32* %number, align 4
  store i32 %7, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i8*, i8** %s.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %call9 = call i32 @tolower(i32 %conv8) #4
  %sub10 = sub nsw i32 %call9, 97
  %idxprom11 = sext i32 %sub10 to i64
  %10 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next12 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %10, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next12, i32 0, i64 %idxprom11
  %11 = load %struct.trie_s*, %struct.trie_s** %arrayidx13, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %call14 = call i32 @trie_lookup(%struct.trie_s* %11, i8* %add.ptr)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @trie_scan(%struct.trie_s* %t, void (i32, i8*)* %f) #0 {
entry:
  %t.addr = alloca %struct.trie_s*, align 8
  %f.addr = alloca void (i32, i8*)*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.trie_s* %t, %struct.trie_s** %t.addr, align 8
  store void (i32, i8*)* %f, void (i32, i8*)** %f.addr, align 8
  %0 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %cmp = icmp ne %struct.trie_s* %0, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %number = getelementptr inbounds %struct.trie_s, %struct.trie_s* %1, i32 0, i32 1
  %2 = load i32, i32* %number, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i8* @charsequence_val(%struct.charsequence* @trie_scan_buffer)
  store i8* %call, i8** %str, align 8
  %3 = load void (i32, i8*)*, void (i32, i8*)** %f.addr, align 8
  %4 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %number3 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %4, i32 0, i32 1
  %5 = load i32, i32* %number3, align 4
  %6 = load i8*, i8** %str, align 8
  call void %3(i32 %5, i8* %6)
  %7 = load i8*, i8** %str, align 8
  call void @free(i8* %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %8, 26
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next = getelementptr inbounds %struct.trie_s, %struct.trie_s* %10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next, i32 0, i64 %idxprom
  %11 = load %struct.trie_s*, %struct.trie_s** %arrayidx, align 8
  %cmp5 = icmp ne %struct.trie_s* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 97
  %conv = trunc i32 %add to i8
  call void @charsequence_push(%struct.charsequence* @trie_scan_buffer, i8 signext %conv)
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.trie_s*, %struct.trie_s** %t.addr, align 8
  %next8 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %14, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %next8, i32 0, i64 %idxprom7
  %15 = load %struct.trie_s*, %struct.trie_s** %arrayidx9, align 8
  %16 = load void (i32, i8*)*, void (i32, i8*)** %f.addr, align 8
  call void @trie_scan(%struct.trie_s* %15, void (i32, i8*)* %16)
  %call10 = call signext i8 @charsequence_pop(%struct.charsequence* @trie_scan_buffer)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  ret void
}

declare i8* @charsequence_val(%struct.charsequence*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @charsequence_push(%struct.charsequence*, i8 signext) #2

declare signext i8 @charsequence_pop(%struct.charsequence*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
