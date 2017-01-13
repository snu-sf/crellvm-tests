; ModuleID = './MultiSource.Benchmarks.McCat/34.15-trie.trie.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.trie = type { i8, i32, i8*, %struct.trie*, %struct.trie* }
%struct.TrieRoot = type { %struct.trie* }
%struct.SString = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s <sourcefile>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.trie* @tAlloc() #0 {
entry:
  %t = alloca %struct.trie*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %0 = bitcast i8* %call to %struct.trie*
  store %struct.trie* %0, %struct.trie** %t, align 8
  %1 = load %struct.trie*, %struct.trie** %t, align 8
  %cmp = icmp eq %struct.trie* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.trie*, %struct.trie** %t, align 8
  ret %struct.trie* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define %struct.trie* @tNew(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %t = alloca %struct.trie*, align 8
  store i8 %c, i8* %c.addr, align 1
  %call = call %struct.trie* @tAlloc()
  store %struct.trie* %call, %struct.trie** %t, align 8
  %0 = load i8, i8* %c.addr, align 1
  %1 = load %struct.trie*, %struct.trie** %t, align 8
  %val = getelementptr inbounds %struct.trie, %struct.trie* %1, i32 0, i32 0
  store i8 %0, i8* %val, align 1
  %2 = load %struct.trie*, %struct.trie** %t, align 8
  %word = getelementptr inbounds %struct.trie, %struct.trie* %2, i32 0, i32 1
  store i32 0, i32* %word, align 4
  %3 = load %struct.trie*, %struct.trie** %t, align 8
  %data = getelementptr inbounds %struct.trie, %struct.trie* %3, i32 0, i32 2
  store i8* null, i8** %data, align 8
  %4 = load %struct.trie*, %struct.trie** %t, align 8
  %otherChar = getelementptr inbounds %struct.trie, %struct.trie* %4, i32 0, i32 4
  store %struct.trie* null, %struct.trie** %otherChar, align 8
  %5 = load %struct.trie*, %struct.trie** %t, align 8
  %postfix = getelementptr inbounds %struct.trie, %struct.trie* %5, i32 0, i32 3
  store %struct.trie* null, %struct.trie** %postfix, align 8
  %6 = load %struct.trie*, %struct.trie** %t, align 8
  ret %struct.trie* %6
}

; Function Attrs: nounwind uwtable
define void @insertWord(%struct.TrieRoot* %r, i8* %w) #0 {
entry:
  %r.addr = alloca %struct.TrieRoot*, align 8
  %w.addr = alloca i8*, align 8
  store %struct.TrieRoot* %r, %struct.TrieRoot** %r.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load i8*, i8** %w.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.8

if.else:                                          ; preds = %entry
  %2 = load %struct.TrieRoot*, %struct.TrieRoot** %r.addr, align 8
  %t = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %2, i32 0, i32 0
  %3 = load %struct.trie*, %struct.trie** %t, align 8
  %cmp2 = icmp eq %struct.trie* %3, null
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %4 = load i8*, i8** %w.addr, align 8
  %call = call %struct.trie* @insertRestOfWord(i8* %4)
  %5 = load %struct.TrieRoot*, %struct.TrieRoot** %r.addr, align 8
  %t5 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %5, i32 0, i32 0
  store %struct.trie* %call, %struct.trie** %t5, align 8
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %6 = load %struct.TrieRoot*, %struct.TrieRoot** %r.addr, align 8
  %t7 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %6, i32 0, i32 0
  %7 = load %struct.trie*, %struct.trie** %t7, align 8
  %8 = load i8*, i8** %w.addr, align 8
  call void @insertW(%struct.trie* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.trie* @insertRestOfWord(i8* %w) #0 {
entry:
  %retval = alloca %struct.trie*, align 8
  %w.addr = alloca i8*, align 8
  %t = alloca %struct.trie*, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load i8*, i8** %w.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %w.addr, align 8
  %3 = load i8, i8* %2, align 1
  %call = call %struct.trie* @tNew(i8 signext %3)
  store %struct.trie* %call, %struct.trie** %t, align 8
  %4 = load i8*, i8** %w.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %w.addr, align 8
  %5 = load i8*, i8** %w.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.trie*, %struct.trie** %t, align 8
  %word = getelementptr inbounds %struct.trie, %struct.trie* %7, i32 0, i32 1
  store i32 -1, i32* %word, align 4
  %8 = load %struct.trie*, %struct.trie** %t, align 8
  store %struct.trie* %8, %struct.trie** %retval
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %9 = load i8*, i8** %w.addr, align 8
  %call7 = call %struct.trie* @insertRestOfWord(i8* %9)
  %10 = load %struct.trie*, %struct.trie** %t, align 8
  %postfix = getelementptr inbounds %struct.trie, %struct.trie* %10, i32 0, i32 3
  store %struct.trie* %call7, %struct.trie** %postfix, align 8
  %11 = load %struct.trie*, %struct.trie** %t, align 8
  store %struct.trie* %11, %struct.trie** %retval
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else.6, %if.then
  %12 = load %struct.trie*, %struct.trie** %retval
  ret %struct.trie* %12
}

; Function Attrs: nounwind uwtable
define void @insertW(%struct.trie* %tr, i8* %w) #0 {
entry:
  %tr.addr = alloca %struct.trie*, align 8
  %w.addr = alloca i8*, align 8
  store %struct.trie* %tr, %struct.trie** %tr.addr, align 8
  store i8* %w, i8** %w.addr, align 8
  %0 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %cmp = icmp eq %struct.trie* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %w.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  br label %return

if.else.4:                                        ; preds = %if.else
  %3 = load i8*, i8** %w.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv5 = sext i8 %4 to i32
  %5 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %val = getelementptr inbounds %struct.trie, %struct.trie* %5, i32 0, i32 0
  %6 = load i8, i8* %val, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv5, %conv6
  br i1 %cmp7, label %if.then.9, label %if.else.22

if.then.9:                                        ; preds = %if.else.4
  %7 = load i8*, i8** %w.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %add.ptr, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.then.9
  %9 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %word = getelementptr inbounds %struct.trie, %struct.trie* %9, i32 0, i32 1
  store i32 -1, i32* %word, align 4
  br label %return

if.else.14:                                       ; preds = %if.then.9
  %10 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %postfix = getelementptr inbounds %struct.trie, %struct.trie* %10, i32 0, i32 3
  %11 = load %struct.trie*, %struct.trie** %postfix, align 8
  %cmp15 = icmp eq %struct.trie* %11, null
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.14
  %12 = load i8*, i8** %w.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %w.addr, align 8
  %call = call %struct.trie* @insertRestOfWord(i8* %incdec.ptr)
  %13 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %postfix18 = getelementptr inbounds %struct.trie, %struct.trie* %13, i32 0, i32 3
  store %struct.trie* %call, %struct.trie** %postfix18, align 8
  br label %return

if.else.19:                                       ; preds = %if.else.14
  %14 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %postfix20 = getelementptr inbounds %struct.trie, %struct.trie* %14, i32 0, i32 3
  %15 = load %struct.trie*, %struct.trie** %postfix20, align 8
  %16 = load i8*, i8** %w.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr21, i8** %w.addr, align 8
  call void @insertW(%struct.trie* %15, i8* %incdec.ptr21)
  br label %return

if.else.22:                                       ; preds = %if.else.4
  %17 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %otherChar = getelementptr inbounds %struct.trie, %struct.trie* %17, i32 0, i32 4
  %18 = load %struct.trie*, %struct.trie** %otherChar, align 8
  %cmp23 = icmp eq %struct.trie* %18, null
  br i1 %cmp23, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.22
  %19 = load i8*, i8** %w.addr, align 8
  %call26 = call %struct.trie* @insertRestOfWord(i8* %19)
  %20 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %otherChar27 = getelementptr inbounds %struct.trie, %struct.trie* %20, i32 0, i32 4
  store %struct.trie* %call26, %struct.trie** %otherChar27, align 8
  br label %return

if.else.28:                                       ; preds = %if.else.22
  %21 = load %struct.trie*, %struct.trie** %tr.addr, align 8
  %otherChar29 = getelementptr inbounds %struct.trie, %struct.trie* %21, i32 0, i32 4
  %22 = load %struct.trie*, %struct.trie** %otherChar29, align 8
  %23 = load i8*, i8** %w.addr, align 8
  call void @insertW(%struct.trie* %22, i8* %23)
  br label %return

return:                                           ; preds = %if.else.28, %if.then.25, %if.else.19, %if.then.17, %if.then.13, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @insertChar(%struct.SString* %word, i8 signext %c) #0 {
entry:
  %word.addr = alloca %struct.SString*, align 8
  %c.addr = alloca i8, align 1
  %sTemp = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.SString* %word, %struct.SString** %word.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %cmp = icmp eq %struct.SString* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.else:                                          ; preds = %entry
  %1 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s = getelementptr inbounds %struct.SString, %struct.SString* %1, i32 0, i32 0
  %2 = load i8*, i8** %s, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.else
  %call = call noalias i8* @calloc(i64 1, i64 2) #5
  store i8* %call, i8** %sTemp, align 8
  %3 = load i8*, i8** %sTemp, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.then.2
  call void @abort() #6
  unreachable

if.else.5:                                        ; preds = %if.then.2
  %4 = load i8*, i8** %sTemp, align 8
  %5 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s6 = getelementptr inbounds %struct.SString, %struct.SString* %5, i32 0, i32 0
  store i8* %4, i8** %s6, align 8
  %6 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %max = getelementptr inbounds %struct.SString, %struct.SString* %6, i32 0, i32 1
  store i32 1, i32* %max, align 4
  %7 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len = getelementptr inbounds %struct.SString, %struct.SString* %7, i32 0, i32 2
  store i32 0, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5
  br label %if.end.27

if.else.7:                                        ; preds = %if.else
  %8 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len8 = getelementptr inbounds %struct.SString, %struct.SString* %8, i32 0, i32 2
  %9 = load i32, i32* %len8, align 4
  %10 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %max9 = getelementptr inbounds %struct.SString, %struct.SString* %10, i32 0, i32 1
  %11 = load i32, i32* %max9, align 4
  %cmp10 = icmp eq i32 %9, %11
  br i1 %cmp10, label %if.then.11, label %if.end.26

if.then.11:                                       ; preds = %if.else.7
  %12 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %max12 = getelementptr inbounds %struct.SString, %struct.SString* %12, i32 0, i32 1
  %13 = load i32, i32* %max12, align 4
  %mul = mul nsw i32 2, %13
  %conv = sext i32 %mul to i64
  %mul13 = mul i64 %conv, 1
  %add = add i64 %mul13, 1
  %call14 = call noalias i8* @calloc(i64 1, i64 %add) #5
  store i8* %call14, i8** %tmp, align 8
  %14 = load i8*, i8** %tmp, align 8
  %cmp15 = icmp eq i8* %14, null
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.11
  call void @abort() #6
  unreachable

if.else.18:                                       ; preds = %if.then.11
  %15 = load i8*, i8** %tmp, align 8
  %16 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s19 = getelementptr inbounds %struct.SString, %struct.SString* %16, i32 0, i32 0
  %17 = load i8*, i8** %s19, align 8
  %call20 = call i8* @strcpy(i8* %15, i8* %17) #5
  store i8* %call20, i8** %tmp, align 8
  %18 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s21 = getelementptr inbounds %struct.SString, %struct.SString* %18, i32 0, i32 0
  %19 = load i8*, i8** %s21, align 8
  call void @free(i8* %19) #5
  %20 = load i8*, i8** %tmp, align 8
  %21 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s22 = getelementptr inbounds %struct.SString, %struct.SString* %21, i32 0, i32 0
  store i8* %20, i8** %s22, align 8
  %22 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %max23 = getelementptr inbounds %struct.SString, %struct.SString* %22, i32 0, i32 1
  %23 = load i32, i32* %max23, align 4
  %mul24 = mul nsw i32 %23, 2
  store i32 %mul24, i32* %max23, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else.7
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %24 = load i8, i8* %c.addr, align 1
  %25 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len28 = getelementptr inbounds %struct.SString, %struct.SString* %25, i32 0, i32 2
  %26 = load i32, i32* %len28, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %len28, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s29 = getelementptr inbounds %struct.SString, %struct.SString* %27, i32 0, i32 0
  %28 = load i8*, i8** %s29, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  store i8 %24, i8* %arrayidx, align 1
  %29 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len30 = getelementptr inbounds %struct.SString, %struct.SString* %29, i32 0, i32 2
  %30 = load i32, i32* %len30, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s32 = getelementptr inbounds %struct.SString, %struct.SString* %31, i32 0, i32 0
  %32 = load i8*, i8** %s32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  store i8 0, i8* %arrayidx33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.27
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @deleteChar(%struct.SString* %word) #0 {
entry:
  %word.addr = alloca %struct.SString*, align 8
  store %struct.SString* %word, %struct.SString** %word.addr, align 8
  %0 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %cmp = icmp eq %struct.SString* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.else:                                          ; preds = %entry
  %1 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s = getelementptr inbounds %struct.SString, %struct.SString* %1, i32 0, i32 0
  %2 = load i8*, i8** %s, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @abort() #6
  unreachable

if.else.3:                                        ; preds = %if.else
  %3 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len = getelementptr inbounds %struct.SString, %struct.SString* %3, i32 0, i32 2
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else.3
  %5 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %len6 = getelementptr inbounds %struct.SString, %struct.SString* %5, i32 0, i32 2
  %6 = load i32, i32* %len6, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %len6, align 4
  %idxprom = sext i32 %dec to i64
  %7 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s7 = getelementptr inbounds %struct.SString, %struct.SString* %7, i32 0, i32 0
  %8 = load i8*, i8** %s7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else.8:                                        ; preds = %if.else.3
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @printT(%struct.TrieRoot* %tr) #0 {
entry:
  %tr.addr = alloca %struct.TrieRoot*, align 8
  %word = alloca %struct.SString*, align 8
  store %struct.TrieRoot* %tr, %struct.TrieRoot** %tr.addr, align 8
  %call = call %struct.SString* @ssInit()
  store %struct.SString* %call, %struct.SString** %word, align 8
  %0 = load %struct.TrieRoot*, %struct.TrieRoot** %tr.addr, align 8
  %cmp = icmp eq %struct.TrieRoot* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.else:                                          ; preds = %entry
  %1 = load %struct.TrieRoot*, %struct.TrieRoot** %tr.addr, align 8
  %t = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %1, i32 0, i32 0
  %2 = load %struct.trie*, %struct.trie** %t, align 8
  %3 = load %struct.SString*, %struct.SString** %word, align 8
  call void @printTheRest(%struct.trie* %2, %struct.SString* %3)
  br label %if.end

if.end:                                           ; preds = %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SString* @ssInit() #0 {
entry:
  %word = alloca %struct.SString*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 16) #5
  %0 = bitcast i8* %call to %struct.SString*
  store %struct.SString* %0, %struct.SString** %word, align 8
  %1 = load %struct.SString*, %struct.SString** %word, align 8
  %cmp = icmp eq %struct.SString* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.else:                                          ; preds = %entry
  %2 = load %struct.SString*, %struct.SString** %word, align 8
  %s = getelementptr inbounds %struct.SString, %struct.SString* %2, i32 0, i32 0
  store i8* null, i8** %s, align 8
  %3 = load %struct.SString*, %struct.SString** %word, align 8
  %max = getelementptr inbounds %struct.SString, %struct.SString* %3, i32 0, i32 1
  store i32 0, i32* %max, align 4
  %4 = load %struct.SString*, %struct.SString** %word, align 8
  %len = getelementptr inbounds %struct.SString, %struct.SString* %4, i32 0, i32 2
  store i32 0, i32* %len, align 4
  %5 = load %struct.SString*, %struct.SString** %word, align 8
  ret %struct.SString* %5
}

; Function Attrs: nounwind uwtable
define void @printTheRest(%struct.trie* %t, %struct.SString* %word) #0 {
entry:
  %t.addr = alloca %struct.trie*, align 8
  %word.addr = alloca %struct.SString*, align 8
  store %struct.trie* %t, %struct.trie** %t.addr, align 8
  store %struct.SString* %word, %struct.SString** %word.addr, align 8
  %0 = load %struct.trie*, %struct.trie** %t.addr, align 8
  %cmp = icmp eq %struct.trie* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.5

if.else:                                          ; preds = %entry
  %1 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %2 = load %struct.trie*, %struct.trie** %t.addr, align 8
  %val = getelementptr inbounds %struct.trie, %struct.trie* %2, i32 0, i32 0
  %3 = load i8, i8* %val, align 1
  call void @insertChar(%struct.SString* %1, i8 signext %3)
  %4 = load %struct.trie*, %struct.trie** %t.addr, align 8
  %word1 = getelementptr inbounds %struct.trie, %struct.trie* %4, i32 0, i32 1
  %5 = load i32, i32* %word1, align 4
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.SString*, %struct.SString** %word.addr, align 8
  %s = getelementptr inbounds %struct.SString, %struct.SString* %6, i32 0, i32 0
  %7 = load i8*, i8** %s, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  %8 = load %struct.trie*, %struct.trie** %t.addr, align 8
  %postfix = getelementptr inbounds %struct.trie, %struct.trie* %8, i32 0, i32 3
  %9 = load %struct.trie*, %struct.trie** %postfix, align 8
  %10 = load %struct.SString*, %struct.SString** %word.addr, align 8
  call void @printTheRest(%struct.trie* %9, %struct.SString* %10)
  %11 = load %struct.SString*, %struct.SString** %word.addr, align 8
  call void @deleteChar(%struct.SString* %11)
  %12 = load %struct.trie*, %struct.trie** %t.addr, align 8
  %otherChar = getelementptr inbounds %struct.trie, %struct.trie* %12, i32 0, i32 4
  %13 = load %struct.trie*, %struct.trie** %otherChar, align 8
  %14 = load %struct.SString*, %struct.SString** %word.addr, align 8
  call void @printTheRest(%struct.trie* %13, %struct.SString* %14)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.end
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.TrieRoot* @trInit() #0 {
entry:
  %tr = alloca %struct.TrieRoot*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 8) #5
  %0 = bitcast i8* %call to %struct.TrieRoot*
  store %struct.TrieRoot* %0, %struct.TrieRoot** %tr, align 8
  %1 = load %struct.TrieRoot*, %struct.TrieRoot** %tr, align 8
  %t = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %1, i32 0, i32 0
  store %struct.trie* null, %struct.trie** %t, align 8
  %2 = load %struct.TrieRoot*, %struct.TrieRoot** %tr, align 8
  ret %struct.TrieRoot* %2
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %word = alloca [1000 x i8], align 16
  %buffer = alloca [500 x i8], align 16
  %pos = alloca i32, align 4
  %tr = alloca %struct.TrieRoot*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %pos, align 4
  %call = call %struct.TrieRoot* @trInit()
  store %struct.TrieRoot* %call, %struct.TrieRoot** %tr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %call3, null
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx5, align 8
  call void @perror(i8* %7)
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call7 = call i32 @feof(%struct._IO_FILE* %8) #5
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %word, i32 0, i32 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %arraydecay12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %word, i32 0, i32 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #7
  %10 = load i32, i32* %pos, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %call13, %conv
  %add14 = add i64 %add, 1
  %conv15 = trunc i64 %add14 to i32
  store i32 %conv15, i32* %pos, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %12 = load i32, i32* %pos, align 4
  %conv16 = sext i32 %12 to i64
  %call17 = call i32 @fseek(%struct._IO_FILE* %11, i64 %conv16, i32 0)
  %13 = load %struct.TrieRoot*, %struct.TrieRoot** %tr, align 8
  %arraydecay18 = getelementptr inbounds [1000 x i8], [1000 x i8]* %word, i32 0, i32 0
  call void @insertWord(%struct.TrieRoot* %13, i8* %arraydecay18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %14)
  %15 = load %struct.TrieRoot*, %struct.TrieRoot** %tr, align 8
  call void @printT(%struct.TrieRoot* %15)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @perror(i8*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
