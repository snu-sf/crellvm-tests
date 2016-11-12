; ModuleID = './lib/str_ht.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_htable = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.string_htable* @string_htable_new() #0 {
entry:
  %res = alloca %struct.string_htable*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.string_htable*
  store %struct.string_htable* %0, %struct.string_htable** %res, align 8
  %1 = load %struct.string_htable*, %struct.string_htable** %res, align 8
  call void @hash_init(%struct.string_htable* %1, i64 8, i64 (i8*)* @string_hash_1, i64 (i8*)* @string_hash_2, i32 (i8*, i8*)* @string_hash_cmp)
  %2 = load %struct.string_htable*, %struct.string_htable** %res, align 8
  ret %struct.string_htable* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.string_htable*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @string_hash_1(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %string.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %1 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %2 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %kk, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %7 = load i64, i64* %result, align 8
  %add = add i64 %7, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %8 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @string_hash_2(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %string.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %1 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %2 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %kk, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %6 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %7 = load i64, i64* %result, align 8
  %add = add i64 %7, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %8 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @string_hash_cmp(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %x.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %1 = load i8*, i8** %y.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr2, i8** %yy, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.cond, %do.body.1
  %2 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.3
  %4 = load i8*, i8** %yy, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr5, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i8*, i8** %xx, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8*, i8** %yy, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr7, i8** %yy, align 8
  %8 = load i8, i8* %incdec.ptr7, align 1
  %conv8 = zext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %do.body.3, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv11 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv11, %conv12
  store i32 %sub, i32* %result, align 4
  br label %do.end.14

do.end.14:                                        ; preds = %do.end
  %13 = load i32, i32* %result, align 4
  br label %do.end.16

do.end.16:                                        ; preds = %do.end.14
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @string_htable_free(%struct.string_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.string_htable*, align 8
  store %struct.string_htable* %table, %struct.string_htable** %table.addr, align 8
  %0 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  call void @hash_free(%struct.string_htable* %0, void (i8*)* @free)
  %1 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %2 = bitcast %struct.string_htable* %1 to i8*
  call void @free(i8* %2) #3
  ret void
}

declare void @hash_free(%struct.string_htable*, void (i8*)*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @string_htable_add(%struct.string_htable* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.string_htable*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.string_htable* %table, %struct.string_htable** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8* @hash_find_item(%struct.string_htable* %0, i8* %1)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @xstrdup(i8* %3)
  %call2 = call i8* @hash_insert(%struct.string_htable* %2, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @hash_find_item(%struct.string_htable*, i8*) #1

declare i8* @hash_insert(%struct.string_htable*, i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @string_htable_get(%struct.string_htable* %table, i8* %key) #0 {
entry:
  %table.addr = alloca %struct.string_htable*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.string_htable* %table, %struct.string_htable** %table.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8* @hash_find_item(%struct.string_htable* %0, i8* %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @string_htable_self_print(%struct.string_htable* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.string_htable*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %entries = alloca i8**, align 8
  store %struct.string_htable* %table, %struct.string_htable** %table.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.string_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (i8**, i8**)* @string_hash_qcmp to i32 (i8*, i8*)*))
  store i8** %call, i8*** %entries, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %entries, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8**, i8*** %entries, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %9)
  %10 = load i8**, i8*** %entries, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* %11) #3
  ret void
}

declare i8** @hash_dump(%struct.string_htable*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @string_hash_qcmp(i8** %x, i8** %y) #0 {
entry:
  %x.addr = alloca i8**, align 8
  %y.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8** %x, i8*** %x.addr, align 8
  store i8** %y, i8*** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8**, i8*** %x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load i8**, i8*** %y.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr2, i8** %yy, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.3
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr5, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr7, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr7, align 1
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %do.body.3, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv11, %conv12
  store i32 %sub, i32* %result, align 4
  br label %do.end.14

do.end.14:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.16

do.end.16:                                        ; preds = %do.end.14
  ret i32 %15
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8** @string_htable_dump_sorted(%struct.string_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.string_htable*, align 8
  store %struct.string_htable* %table, %struct.string_htable** %table.addr, align 8
  %0 = load %struct.string_htable*, %struct.string_htable** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.string_htable* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (i8**, i8**)* @string_hash_qcmp to i32 (i8*, i8*)*))
  ret i8** %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
