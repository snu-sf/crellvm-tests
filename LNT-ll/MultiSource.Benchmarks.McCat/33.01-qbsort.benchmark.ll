; ModuleID = './MultiSource.Benchmarks.McCat/33.01-qbsort.benchmark.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"\0AList read (reverse order): \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ABubbleSort: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0AQuickSort:  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Comma expected in list number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Last list read\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Program Error: Unrecognized errorcode from ReadList\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LessThan(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %listno = alloca i32, align 4
  %err = alloca i32, align 4
  %ll = alloca %struct.LinkList*, align 8
  %l = alloca %struct.List*, align 8
  %origLinkList = alloca %struct.LinkList*, align 8
  %origList = alloca i32*, align 8
  %repeat = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %listno, align 4
  store i32 0, i32* %repeat, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strtol(i8* %2, i8** null, i32 0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %repeat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %call1 = call i32 @ReadList(%struct.LinkList** %ll, %struct.List** %l)
  store i32 %call1, i32* %err, align 4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.LinkList*, %struct.LinkList** %ll, align 8
  store %struct.LinkList* %3, %struct.LinkList** %origLinkList, align 8
  %4 = load %struct.List*, %struct.List** %l, align 8
  %l4 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 1
  %5 = load i32*, i32** %l4, align 8
  store i32* %5, i32** %origList, align 8
  %6 = load %struct.List*, %struct.List** %l, align 8
  %n = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %conv5 = sext i32 %7 to i64
  %mul = mul i64 4, %conv5
  %call6 = call noalias i8* @malloc(i64 %mul) #3
  %8 = bitcast i8* %call6 to i32*
  %9 = load %struct.List*, %struct.List** %l, align 8
  %l7 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 1
  store i32* %8, i32** %l7, align 8
  %10 = load %struct.List*, %struct.List** %l, align 8
  %l8 = getelementptr inbounds %struct.List, %struct.List* %10, i32 0, i32 1
  %11 = load i32*, i32** %l8, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load i32*, i32** %origList, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load %struct.List*, %struct.List** %l, align 8
  %n9 = getelementptr inbounds %struct.List, %struct.List* %15, i32 0, i32 0
  %16 = load i32, i32* %n9, align 4
  %conv10 = sext i32 %16 to i64
  %mul11 = mul i64 4, %conv10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 %mul11, i32 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %17 = load i32, i32* %repeat, align 4
  %cmp12 = icmp sgt i32 %17, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.List*, %struct.List** %l, align 8
  %call14 = call %struct.List* @BubbleSort(%struct.List* %18, i32 (i32, i32)* @LessThan)
  store %struct.List* %call14, %struct.List** %l, align 8
  %19 = load %struct.List*, %struct.List** %l, align 8
  %l15 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 1
  %20 = load i32*, i32** %l15, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32*, i32** %origList, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load %struct.List*, %struct.List** %l, align 8
  %n16 = getelementptr inbounds %struct.List, %struct.List* %24, i32 0, i32 0
  %25 = load i32, i32* %n16, align 4
  %conv17 = sext i32 %25 to i64
  %mul18 = mul i64 4, %conv17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %23, i64 %mul18, i32 4, i1 false)
  %26 = load %struct.LinkList*, %struct.LinkList** %origLinkList, align 8
  %call19 = call %struct.LinkList* @QuickSort(%struct.LinkList* %26, i32 (i32, i32)* @LessThan)
  store %struct.LinkList* %call19, %struct.LinkList** %ll, align 8
  %27 = load %struct.LinkList*, %struct.LinkList** %ll, align 8
  call void @FreeLinkList(%struct.LinkList* %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %repeat, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %repeat, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* %29)
  %30 = load %struct.List*, %struct.List** %l, align 8
  call void @PrintList(%struct.List* %30)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* %31)
  %32 = load %struct.List*, %struct.List** %l, align 8
  %call24 = call %struct.List* @BubbleSort(%struct.List* %32, i32 (i32, i32)* @LessThan)
  store %struct.List* %call24, %struct.List** %l, align 8
  %33 = load %struct.List*, %struct.List** %l, align 8
  call void @PrintList(%struct.List* %33)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fflush(%struct._IO_FILE* %34)
  %35 = load %struct.LinkList*, %struct.LinkList** %origLinkList, align 8
  %call27 = call %struct.LinkList* @QuickSort(%struct.LinkList* %35, i32 (i32, i32)* @LessThan)
  store %struct.LinkList* %call27, %struct.LinkList** %ll, align 8
  %36 = load %struct.LinkList*, %struct.LinkList** %ll, align 8
  call void @PrintLinkList(%struct.LinkList* %36)
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %37 = load %struct.LinkList*, %struct.LinkList** %ll, align 8
  call void @FreeLinkList(%struct.LinkList* %37)
  %38 = load %struct.LinkList*, %struct.LinkList** %origLinkList, align 8
  call void @FreeLinkList(%struct.LinkList* %38)
  %39 = load %struct.List*, %struct.List** %l, align 8
  %l29 = getelementptr inbounds %struct.List, %struct.List* %39, i32 0, i32 1
  %40 = load i32*, i32** %l29, align 8
  %41 = bitcast i32* %40 to i8*
  call void @free(i8* %41) #3
  %42 = load %struct.List*, %struct.List** %l, align 8
  %43 = bitcast %struct.List* %42 to i8*
  call void @free(i8* %43) #3
  %44 = load i32*, i32** %origList, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #3
  %46 = load i32, i32* %listno, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %listno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load i32, i32* %err, align 4
  switch i32 %47, label %sw.default [
    i32 42, label %sw.bb
    i32 7, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %while.end
  %48 = load i32, i32* %listno, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i32 %48)
  call void @exit(i32 1) #5
  unreachable

sw.bb.31:                                         ; preds = %while.end
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.31
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

declare i32 @ReadList(%struct.LinkList**, %struct.List**) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.List* @BubbleSort(%struct.List*, i32 (i32, i32)*) #2

declare %struct.LinkList* @QuickSort(%struct.LinkList*, i32 (i32, i32)*) #2

declare void @FreeLinkList(%struct.LinkList*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @PrintList(%struct.List*) #2

declare void @PrintLinkList(%struct.LinkList*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
