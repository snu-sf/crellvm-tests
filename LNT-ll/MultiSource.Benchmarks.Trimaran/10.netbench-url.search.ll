; ModuleID = './MultiSource.Benchmarks.Trimaran/10.netbench-url.search.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._StrTreeNode = type { i32, i8*, i32, i32*, %struct._StrTreeNode*, %struct._PatternNode* }
%struct._PatternNode = type { i32, i32, i32, %struct._IO_FILE*, i8*, i32, i32, i32*, %struct.rtentry*, %struct._PatternNode* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtentry = type opaque

@.str = private unnamed_addr constant [96 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/search.c\00", align 1
@__FUNCTION__.calculate_bm_table = private unnamed_addr constant [19 x i8] c"calculate_bm_table\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Not enough virtual memory \0A\00", align 1
@tree_head = external global %struct._StrTreeNode*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Source: %x Destination %x \0A\00", align 1
@__FUNCTION__.NewPatternNode = private unnamed_addr constant [15 x i8] c"NewPatternNode\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Run out of virtual memory \0A\00", align 1
@__FUNCTION__.NewStrTreeNode = private unnamed_addr constant [15 x i8] c"NewStrTreeNode\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__FUNCTION__.db_init = private unnamed_addr constant [8 x i8] c"db_init\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can not open the input file\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(%d:%d)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unrecognized input line start: %c \0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: nounwind uwtable
define i32* @calculate_bm_table(i8* %pattern, i32 %pattern_length) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %pattern_length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %returnval = alloca i32*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %pattern_length, i32* %pattern_length.addr, align 4
  %call = call noalias i8* @malloc(i64 1024) #5
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %returnval, align 8
  %1 = load i32*, i32** %returnval, align 8
  %cmp = icmp eq i32* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.calculate_bm_table, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 256
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pattern_length.addr, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %returnval, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.10, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %pattern_length.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %pattern_length.addr, align 4
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, %10
  %sub5 = sub nsw i32 %sub, 1
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8*, i8** %pattern.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %idxprom8 = zext i8 %13 to i64
  %14 = load i32*, i32** %returnval, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %sub5, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.4
  %15 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.2

for.end.12:                                       ; preds = %for.cond.2
  %16 = load i32*, i32** %returnval, align 8
  ret i32* %16
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn
declare void @_fatal(i8*, i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @boyer_moore(i8* %y, i32 %n, i8* %x, i32 %m, i32* %bmBc) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %bmBc.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %shift = alloca i32, align 4
  store i8* %y, i8** %y.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %x, i8** %x.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32* %bmBc, i32** %bmBc.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %shift, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %1, %2
  %sub1 = sub nsw i32 %add, 1
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %sub1, %3
  br i1 %cmp, label %while.body, label %while.end.26

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %m.addr, align 4
  %add2 = add nsw i32 %4, %5
  %sub3 = sub nsw i32 %add2, 1
  %idxprom = sext i32 %sub3 to i64
  %6 = load i8*, i8** %y.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load i32*, i32** %bmBc.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  store i32 %9, i32* %k, align 4
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.12, %while.body
  %10 = load i32, i32* %k, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.6
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %11, %12
  %13 = load i32, i32* %m.addr, align 4
  %add9 = add nsw i32 %add8, %13
  %sub10 = sub nsw i32 %add9, 1
  %14 = load i32, i32* %n.addr, align 4
  %cmp11 = icmp slt i32 %sub10, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.6
  %15 = phi i1 [ false, %while.cond.6 ], [ %cmp11, %land.rhs ]
  br i1 %15, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %land.end
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %17, %16
  store i32 %add13, i32* %j, align 4
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %m.addr, align 4
  %add14 = add nsw i32 %18, %19
  %sub15 = sub nsw i32 %add14, 1
  %idxprom16 = sext i32 %sub15 to i64
  %20 = load i8*, i8** %y.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom16
  %21 = load i8, i8* %arrayidx17, align 1
  %idxprom18 = zext i8 %21 to i64
  %22 = load i32*, i32** %bmBc.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  store i32 %23, i32* %k, align 4
  br label %while.cond.6

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %x.addr, align 8
  %25 = load i8*, i8** %y.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %27 = load i32, i32* %m.addr, align 4
  %sub20 = sub nsw i32 %27, 1
  %conv = sext i32 %sub20 to i64
  %call = call i32 @memcmp(i8* %24, i8* %add.ptr, i64 %conv) #7
  %cmp21 = icmp eq i32 %call, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n.addr, align 4
  %cmp23 = icmp slt i32 %28, %29
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load i32, i32* %j, align 4
  store i32 %30, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.end
  %31 = load i32, i32* %shift, align 4
  %32 = load i32, i32* %j, align 4
  %add25 = add nsw i32 %32, %31
  store i32 %add25, i32* %j, align 4
  br label %while.cond

while.end.26:                                     ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.26, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define %struct.rtentry* @find_destination(i8* %packet, i32 %packet_size) #0 {
entry:
  %retval = alloca %struct.rtentry*, align 8
  %packet.addr = alloca i8*, align 8
  %packet_size.addr = alloca i32, align 4
  %iterator = alloca %struct._StrTreeNode*, align 8
  %list = alloca %struct._PatternNode*, align 8
  %search_result = alloca i32, align 4
  store i8* %packet, i8** %packet.addr, align 8
  store i32 %packet_size, i32* %packet_size.addr, align 4
  %0 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  store %struct._StrTreeNode* %0, %struct._StrTreeNode** %iterator, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %1 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %tobool = icmp ne %struct._StrTreeNode* %1, null
  br i1 %tobool, label %while.body, label %while.end.25

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %packet.addr, align 8
  %3 = load i32, i32* %packet_size.addr, align 4
  %4 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %common_pattern = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %4, i32 0, i32 1
  %5 = load i8*, i8** %common_pattern, align 8
  %6 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %common_pattern_length = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %6, i32 0, i32 2
  %7 = load i32, i32* %common_pattern_length, align 4
  %8 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %bm_table = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %8, i32 0, i32 3
  %9 = load i32*, i32** %bm_table, align 8
  %call = call i32 @boyer_moore(i8* %2, i32 %3, i8* %5, i32 %7, i32* %9)
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %while.body
  %10 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %list1 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %10, i32 0, i32 5
  %11 = load %struct._PatternNode*, %struct._PatternNode** %list1, align 8
  store %struct._PatternNode* %11, %struct._PatternNode** %list, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.23, %if.then
  %12 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %tobool3 = icmp ne %struct._PatternNode* %12, null
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.2
  %13 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %search_depth = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %13, i32 0, i32 6
  %14 = load i32, i32* %search_depth, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body.4
  %15 = load i8*, i8** %packet.addr, align 8
  %16 = load i32, i32* %packet_size.addr, align 4
  %17 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %pattern = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %17, i32 0, i32 4
  %18 = load i8*, i8** %pattern, align 8
  %19 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %pattern_length = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %19, i32 0, i32 5
  %20 = load i32, i32* %pattern_length, align 4
  %21 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %bm_table7 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %21, i32 0, i32 7
  %22 = load i32*, i32** %bm_table7, align 8
  %call8 = call i32 @boyer_moore(i8* %15, i32 %16, i8* %18, i32 %20, i32* %22)
  store i32 %call8, i32* %search_result, align 4
  br label %if.end

if.else:                                          ; preds = %while.body.4
  %23 = load i8*, i8** %packet.addr, align 8
  %24 = load i32, i32* %packet_size.addr, align 4
  %25 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %search_depth9 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %25, i32 0, i32 6
  %26 = load i32, i32* %search_depth9, align 4
  %cmp10 = icmp sgt i32 %24, %26
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %27 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %search_depth11 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %27, i32 0, i32 6
  %28 = load i32, i32* %search_depth11, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %29 = load i32, i32* %packet_size.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  %30 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %pattern12 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %30, i32 0, i32 4
  %31 = load i8*, i8** %pattern12, align 8
  %32 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %pattern_length13 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %32, i32 0, i32 5
  %33 = load i32, i32* %pattern_length13, align 4
  %34 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %bm_table14 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %34, i32 0, i32 7
  %35 = load i32*, i32** %bm_table14, align 8
  %call15 = call i32 @boyer_moore(i8* %23, i32 %cond, i8* %31, i32 %33, i32* %35)
  store i32 %call15, i32* %search_result, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.6
  %36 = load i32, i32* %search_result, align 4
  %cmp16 = icmp ne i32 %36, -1
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.end
  %37 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %type = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %37, i32 0, i32 1
  %38 = load i32, i32* %type, align 4
  %cmp18 = icmp eq i32 %38, 0
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.17
  %39 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %logto = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %39, i32 0, i32 3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %logto, align 8
  %41 = load i8*, i8** %packet.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 12
  %42 = bitcast i8* %arrayidx to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %packet.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %44, i64 16
  %45 = bitcast i8* %arrayidx20 to i32*
  %46 = load i32, i32* %45, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %43, i32 %46)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.17
  %47 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %destination = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %47, i32 0, i32 8
  %48 = load %struct.rtentry*, %struct.rtentry** %destination, align 8
  store %struct.rtentry* %48, %struct.rtentry** %retval
  br label %return

if.end.23:                                        ; preds = %if.end
  %49 = load %struct._PatternNode*, %struct._PatternNode** %list, align 8
  %below = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %49, i32 0, i32 9
  %50 = load %struct._PatternNode*, %struct._PatternNode** %below, align 8
  store %struct._PatternNode* %50, %struct._PatternNode** %list, align 8
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  br label %if.end.24

if.end.24:                                        ; preds = %while.end, %while.body
  %51 = load %struct._StrTreeNode*, %struct._StrTreeNode** %iterator, align 8
  %next = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %51, i32 0, i32 4
  %52 = load %struct._StrTreeNode*, %struct._StrTreeNode** %next, align 8
  store %struct._StrTreeNode* %52, %struct._StrTreeNode** %iterator, align 8
  br label %while.cond

while.end.25:                                     ; preds = %while.cond
  store %struct.rtentry* null, %struct.rtentry** %retval
  br label %return

return:                                           ; preds = %while.end.25, %if.end.22
  %53 = load %struct.rtentry*, %struct.rtentry** %retval
  ret %struct.rtentry* %53
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct._PatternNode* @NewPatternNode(i32 %chainno, i32 %type, i8* %pattern, i32 %pattern_length, i32 %search_depth) #0 {
entry:
  %chainno.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %pattern_length.addr = alloca i32, align 4
  %search_depth.addr = alloca i32, align 4
  %returnval = alloca %struct._PatternNode*, align 8
  store i32 %chainno, i32* %chainno.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %pattern_length, i32* %pattern_length.addr, align 4
  store i32 %search_depth, i32* %search_depth.addr, align 4
  %call = call noalias i8* @malloc(i64 64) #5
  %0 = bitcast i8* %call to %struct._PatternNode*
  store %struct._PatternNode* %0, %struct._PatternNode** %returnval, align 8
  %cmp = icmp eq %struct._PatternNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i32 0, i32 0), i32 170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %chainno.addr, align 4
  %2 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %chain_node_number = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %2, i32 0, i32 0
  store i32 %1, i32* %chain_node_number, align 4
  %3 = load i32, i32* %type.addr, align 4
  %4 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %type1 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %4, i32 0, i32 1
  store i32 %3, i32* %type1, align 4
  %5 = load i32, i32* %pattern_length.addr, align 4
  %conv = sext i32 %5 to i64
  %call2 = call noalias i8* @malloc(i64 %conv) #5
  %6 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %pattern3 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %6, i32 0, i32 4
  store i8* %call2, i8** %pattern3, align 8
  %cmp4 = icmp eq i8* %call2, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewPatternNode, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.7:                                         ; preds = %if.end
  %7 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %pattern8 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %7, i32 0, i32 4
  %8 = load i8*, i8** %pattern8, align 8
  %9 = load i8*, i8** %pattern.addr, align 8
  %10 = load i32, i32* %pattern_length.addr, align 4
  %conv9 = sext i32 %10 to i64
  %call10 = call i8* @strncpy(i8* %8, i8* %9, i64 %conv9) #5
  %11 = load i32, i32* %pattern_length.addr, align 4
  %12 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %pattern_length11 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %12, i32 0, i32 5
  store i32 %11, i32* %pattern_length11, align 4
  %13 = load i32, i32* %search_depth.addr, align 4
  %14 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %search_depth12 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %14, i32 0, i32 6
  store i32 %13, i32* %search_depth12, align 4
  %15 = load i8*, i8** %pattern.addr, align 8
  %16 = load i32, i32* %pattern_length.addr, align 4
  %call13 = call i32* @calculate_bm_table(i8* %15, i32 %16)
  %17 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  %bm_table = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %17, i32 0, i32 7
  store i32* %call13, i32** %bm_table, align 8
  %18 = load %struct._PatternNode*, %struct._PatternNode** %returnval, align 8
  ret %struct._PatternNode* %18
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._StrTreeNode* @NewStrTreeNode(i32 %chainno, i8* %pattern, i32 %pattern_length) #0 {
entry:
  %chainno.addr = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %pattern_length.addr = alloca i32, align 4
  %returnval = alloca %struct._StrTreeNode*, align 8
  store i32 %chainno, i32* %chainno.addr, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %pattern_length, i32* %pattern_length.addr, align 4
  %call = call noalias i8* @malloc(i64 48) #5
  %0 = bitcast i8* %call to %struct._StrTreeNode*
  store %struct._StrTreeNode* %0, %struct._StrTreeNode** %returnval, align 8
  %cmp = icmp eq %struct._StrTreeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i32 0, i32 0), i32 190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %chainno.addr, align 4
  %2 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %chain_node_number = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %2, i32 0, i32 0
  store i32 %1, i32* %chain_node_number, align 4
  %3 = load i32, i32* %pattern_length.addr, align 4
  %conv = sext i32 %3 to i64
  %call1 = call noalias i8* @malloc(i64 %conv) #5
  %4 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %common_pattern = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %4, i32 0, i32 1
  store i8* %call1, i8** %common_pattern, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.NewStrTreeNode, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %common_pattern6 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %5, i32 0, i32 1
  %6 = load i8*, i8** %common_pattern6, align 8
  %7 = load i8*, i8** %pattern.addr, align 8
  %8 = load i32, i32* %pattern_length.addr, align 4
  %conv7 = sext i32 %8 to i64
  %call8 = call i8* @strncpy(i8* %6, i8* %7, i64 %conv7) #5
  %9 = load i32, i32* %pattern_length.addr, align 4
  %10 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %common_pattern_length = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %10, i32 0, i32 2
  store i32 %9, i32* %common_pattern_length, align 4
  %11 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %common_pattern9 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %11, i32 0, i32 1
  %12 = load i8*, i8** %common_pattern9, align 8
  %13 = load i32, i32* %pattern_length.addr, align 4
  %call10 = call i32* @calculate_bm_table(i8* %12, i32 %13)
  %14 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  %bm_table = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %14, i32 0, i32 3
  store i32* %call10, i32** %bm_table, align 8
  %15 = load %struct._StrTreeNode*, %struct._StrTreeNode** %returnval, align 8
  ret %struct._StrTreeNode* %15
}

; Function Attrs: nounwind uwtable
define i8* @find_lcs(i8* %largepattern, i32 %largepatternsize, i8* %smallpattern, i32 %smallpatternsize, i32* %lcssize) #0 {
entry:
  %retval = alloca i8*, align 8
  %largepattern.addr = alloca i8*, align 8
  %largepatternsize.addr = alloca i32, align 4
  %smallpattern.addr = alloca i8*, align 8
  %smallpatternsize.addr = alloca i32, align 4
  %lcssize.addr = alloca i32*, align 8
  %sub_pattern = alloca i8*, align 8
  %exchanger = alloca i8*, align 8
  %sub_pat_size = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %shift = alloca i32, align 4
  %exchangersize = alloca i32, align 4
  %bmBc = alloca i32*, align 8
  %first_char = alloca i32, align 4
  %temp_sub_size = alloca i32, align 4
  store i8* %largepattern, i8** %largepattern.addr, align 8
  store i32 %largepatternsize, i32* %largepatternsize.addr, align 4
  store i8* %smallpattern, i8** %smallpattern.addr, align 8
  store i32 %smallpatternsize, i32* %smallpatternsize.addr, align 4
  store i32* %lcssize, i32** %lcssize.addr, align 8
  store i8* null, i8** %sub_pattern, align 8
  store i32 0, i32* %sub_pat_size, align 4
  %0 = load i32, i32* %smallpatternsize.addr, align 4
  %1 = load i32, i32* %largepatternsize.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %smallpattern.addr, align 8
  store i8* %2, i8** %exchanger, align 8
  %3 = load i8*, i8** %largepattern.addr, align 8
  store i8* %3, i8** %smallpattern.addr, align 8
  %4 = load i8*, i8** %exchanger, align 8
  store i8* %4, i8** %largepattern.addr, align 8
  %5 = load i32, i32* %smallpatternsize.addr, align 4
  store i32 %5, i32* %exchangersize, align 4
  %6 = load i32, i32* %largepatternsize.addr, align 4
  store i32 %6, i32* %smallpatternsize.addr, align 4
  %7 = load i32, i32* %exchangersize, align 4
  store i32 %7, i32* %largepatternsize.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %smallpattern.addr, align 8
  %9 = load i32, i32* %smallpatternsize.addr, align 4
  %call = call i32* @calculate_bm_table(i8* %8, i32 %9)
  store i32* %call, i32** %bmBc, align 8
  store i32 1, i32* %shift, align 4
  store i32 0, i32* %j, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %smallpatternsize.addr, align 4
  %add = add nsw i32 %10, %11
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %12 = load i8*, i8** %largepattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %idxprom1 = zext i8 %13 to i64
  %14 = load i32*, i32** %bmBc, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %14, i64 %idxprom1
  %15 = load i32, i32* %arrayidx2, align 4
  store i32 %15, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %if.end
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %largepatternsize.addr, align 4
  %cmp3 = icmp slt i32 %16, %17
  br i1 %cmp3, label %while.body, label %while.end.62

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %19, %18
  store i32 %add4, i32* %j, align 4
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %smallpatternsize.addr, align 4
  %add5 = add nsw i32 %20, %21
  %sub6 = sub nsw i32 %add5, 1
  %idxprom7 = sext i32 %sub6 to i64
  %22 = load i8*, i8** %largepattern.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %22, i64 %idxprom7
  %23 = load i8, i8* %arrayidx8, align 1
  %idxprom9 = zext i8 %23 to i64
  %24 = load i32*, i32** %bmBc, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 %idxprom9
  %25 = load i32, i32* %arrayidx10, align 4
  store i32 %25, i32* %k, align 4
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %smallpatternsize.addr, align 4
  %cmp11 = icmp eq i32 %26, %27
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body
  %28 = load i32, i32* %sub_pat_size, align 4
  %add13 = add nsw i32 %28, 1
  store i32 %add13, i32* %k, align 4
  br label %if.end.61

if.else:                                          ; preds = %while.body
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %smallpatternsize.addr, align 4
  %add14 = add nsw i32 %29, %30
  %sub15 = sub nsw i32 %add14, 1
  store i32 %sub15, i32* %first_char, align 4
  store i32 0, i32* %temp_sub_size, align 4
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.27, %if.else
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %smallpatternsize.addr, align 4
  %cmp17 = icmp slt i32 %31, %32
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.16
  %33 = load i32, i32* %smallpatternsize.addr, align 4
  %34 = load i32, i32* %k, align 4
  %sub18 = sub nsw i32 %33, %34
  %sub19 = sub nsw i32 %sub18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %35 = load i8*, i8** %smallpattern.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %35, i64 %idxprom20
  %36 = load i8, i8* %arrayidx21, align 1
  %conv = sext i8 %36 to i32
  %37 = load i32, i32* %first_char, align 4
  %idxprom22 = sext i32 %37 to i64
  %38 = load i8*, i8** %largepattern.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 %idxprom22
  %39 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %39 to i32
  %cmp25 = icmp eq i32 %conv, %conv24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.16
  %40 = phi i1 [ false, %while.cond.16 ], [ %cmp25, %land.rhs ]
  br i1 %40, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %land.end
  %41 = load i32, i32* %first_char, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %first_char, align 4
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond.16

while.end:                                        ; preds = %land.end
  %43 = load i32, i32* %k, align 4
  %dec28 = add nsw i32 %43, -1
  store i32 %dec28, i32* %k, align 4
  %44 = load i32, i32* %first_char, align 4
  %inc29 = add nsw i32 %44, 1
  store i32 %inc29, i32* %first_char, align 4
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.45, %while.end
  %45 = load i32, i32* %k, align 4
  %cmp31 = icmp sge i32 %45, 0
  br i1 %cmp31, label %land.rhs.33, label %land.end.44

land.rhs.33:                                      ; preds = %while.cond.30
  %46 = load i32, i32* %smallpatternsize.addr, align 4
  %47 = load i32, i32* %k, align 4
  %sub34 = sub nsw i32 %46, %47
  %sub35 = sub nsw i32 %sub34, 1
  %idxprom36 = sext i32 %sub35 to i64
  %48 = load i8*, i8** %smallpattern.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %48, i64 %idxprom36
  %49 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %49 to i32
  %50 = load i32, i32* %first_char, align 4
  %idxprom39 = sext i32 %50 to i64
  %51 = load i8*, i8** %largepattern.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %51, i64 %idxprom39
  %52 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %52 to i32
  %cmp42 = icmp eq i32 %conv38, %conv41
  br label %land.end.44

land.end.44:                                      ; preds = %land.rhs.33, %while.cond.30
  %53 = phi i1 [ false, %while.cond.30 ], [ %cmp42, %land.rhs.33 ]
  br i1 %53, label %while.body.45, label %while.end.49

while.body.45:                                    ; preds = %land.end.44
  %54 = load i32, i32* %temp_sub_size, align 4
  %inc46 = add nsw i32 %54, 1
  store i32 %inc46, i32* %temp_sub_size, align 4
  %55 = load i32, i32* %k, align 4
  %dec47 = add nsw i32 %55, -1
  store i32 %dec47, i32* %k, align 4
  %56 = load i32, i32* %first_char, align 4
  %inc48 = add nsw i32 %56, 1
  store i32 %inc48, i32* %first_char, align 4
  br label %while.cond.30

while.end.49:                                     ; preds = %land.end.44
  %57 = load i32, i32* %temp_sub_size, align 4
  %58 = load i32, i32* %sub_pat_size, align 4
  %cmp50 = icmp sgt i32 %57, %58
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %while.end.49
  %59 = load i32, i32* %temp_sub_size, align 4
  store i32 %59, i32* %sub_pat_size, align 4
  %60 = load i32, i32* %first_char, align 4
  %61 = load i32, i32* %temp_sub_size, align 4
  %sub53 = sub nsw i32 %60, %61
  %idxprom54 = sext i32 %sub53 to i64
  %62 = load i8*, i8** %largepattern.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %62, i64 %idxprom54
  store i8* %arrayidx55, i8** %sub_pattern, align 8
  %63 = load i32, i32* %sub_pat_size, align 4
  %64 = load i32, i32* %smallpatternsize.addr, align 4
  %cmp56 = icmp eq i32 %63, %64
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.52
  %65 = load i32, i32* %sub_pat_size, align 4
  %66 = load i32*, i32** %lcssize.addr, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %sub_pattern, align 8
  store i8* %67, i8** %retval
  br label %return

if.end.59:                                        ; preds = %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %while.end.49
  store i32 1, i32* %k, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.12
  br label %while.cond

while.end.62:                                     ; preds = %while.cond
  %68 = load i32, i32* %sub_pat_size, align 4
  %69 = load i32*, i32** %lcssize.addr, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %bmBc, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #5
  %72 = load i8*, i8** %sub_pattern, align 8
  store i8* %72, i8** %retval
  br label %return

return:                                           ; preds = %while.end.62, %if.then.58
  %73 = load i8*, i8** %retval
  ret i8* %73
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @insert_rule(i8* %pattern, i32 %pattern_length, i32 %depth) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %pattern_length.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %head_iterator = alloca %struct._StrTreeNode*, align 8
  %found_largestcommon = alloca %struct._StrTreeNode*, align 8
  %largest_common = alloca i32, align 4
  %sub_str = alloca i8*, align 8
  %temp_common = alloca i32, align 4
  %temp_str = alloca i8*, align 8
  %new_node = alloca %struct._PatternNode*, align 8
  %new_head = alloca %struct._StrTreeNode*, align 8
  %new_node11 = alloca %struct._PatternNode*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %pattern_length, i32* %pattern_length.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  store %struct._StrTreeNode* %0, %struct._StrTreeNode** %head_iterator, align 8
  store %struct._StrTreeNode* null, %struct._StrTreeNode** %found_largestcommon, align 8
  store i32 0, i32* %largest_common, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._StrTreeNode*, %struct._StrTreeNode** %head_iterator, align 8
  %tobool = icmp ne %struct._StrTreeNode* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._StrTreeNode*, %struct._StrTreeNode** %head_iterator, align 8
  %common_pattern = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %2, i32 0, i32 1
  %3 = load i8*, i8** %common_pattern, align 8
  %4 = load %struct._StrTreeNode*, %struct._StrTreeNode** %head_iterator, align 8
  %common_pattern_length = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %4, i32 0, i32 2
  %5 = load i32, i32* %common_pattern_length, align 4
  %6 = load i8*, i8** %pattern.addr, align 8
  %7 = load i32, i32* %pattern_length.addr, align 4
  %call = call i8* @find_lcs(i8* %3, i32 %5, i8* %6, i32 %7, i32* %temp_common)
  store i8* %call, i8** %temp_str, align 8
  %8 = load i32, i32* %temp_common, align 4
  %9 = load i32, i32* %largest_common, align 4
  %cmp = icmp ugt i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %temp_common, align 4
  store i32 %10, i32* %largest_common, align 4
  %11 = load %struct._StrTreeNode*, %struct._StrTreeNode** %head_iterator, align 8
  store %struct._StrTreeNode* %11, %struct._StrTreeNode** %found_largestcommon, align 8
  %12 = load i8*, i8** %temp_str, align 8
  store i8* %12, i8** %sub_str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct._StrTreeNode*, %struct._StrTreeNode** %head_iterator, align 8
  %next = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %13, i32 0, i32 4
  %14 = load %struct._StrTreeNode*, %struct._StrTreeNode** %next, align 8
  store %struct._StrTreeNode* %14, %struct._StrTreeNode** %head_iterator, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %largest_common, align 4
  %cmp1 = icmp ult i32 %15, 3
  br i1 %cmp1, label %if.then.2, label %if.else.10

if.then.2:                                        ; preds = %while.end
  %16 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %cmp3 = icmp ne %struct._StrTreeNode* %16, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %17 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %chain_node_number = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %17, i32 0, i32 0
  %18 = load i32, i32* %chain_node_number, align 4
  %add = add nsw i32 %18, 1
  %19 = load i8*, i8** %pattern.addr, align 8
  %20 = load i32, i32* %pattern_length.addr, align 4
  %call5 = call %struct._StrTreeNode* @NewStrTreeNode(i32 %add, i8* %19, i32 %20)
  store %struct._StrTreeNode* %call5, %struct._StrTreeNode** %new_head, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %21 = load i8*, i8** %pattern.addr, align 8
  %22 = load i32, i32* %pattern_length.addr, align 4
  %call6 = call %struct._StrTreeNode* @NewStrTreeNode(i32 0, i8* %21, i32 %22)
  store %struct._StrTreeNode* %call6, %struct._StrTreeNode** %new_head, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %23 = load i8*, i8** %pattern.addr, align 8
  %24 = load i32, i32* %pattern_length.addr, align 4
  %25 = load i32, i32* %depth.addr, align 4
  %call8 = call %struct._PatternNode* @NewPatternNode(i32 0, i32 1, i8* %23, i32 %24, i32 %25)
  store %struct._PatternNode* %call8, %struct._PatternNode** %new_node, align 8
  %26 = load %struct._PatternNode*, %struct._PatternNode** %new_node, align 8
  %below = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %26, i32 0, i32 9
  store %struct._PatternNode* null, %struct._PatternNode** %below, align 8
  %27 = load %struct._PatternNode*, %struct._PatternNode** %new_node, align 8
  %28 = load %struct._StrTreeNode*, %struct._StrTreeNode** %new_head, align 8
  %list = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %28, i32 0, i32 5
  store %struct._PatternNode* %27, %struct._PatternNode** %list, align 8
  %29 = load %struct._StrTreeNode*, %struct._StrTreeNode** @tree_head, align 8
  %30 = load %struct._StrTreeNode*, %struct._StrTreeNode** %new_head, align 8
  %next9 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %30, i32 0, i32 4
  store %struct._StrTreeNode* %29, %struct._StrTreeNode** %next9, align 8
  %31 = load %struct._StrTreeNode*, %struct._StrTreeNode** %new_head, align 8
  store %struct._StrTreeNode* %31, %struct._StrTreeNode** @tree_head, align 8
  br label %if.end.22

if.else.10:                                       ; preds = %while.end
  %32 = load %struct._StrTreeNode*, %struct._StrTreeNode** %found_largestcommon, align 8
  %common_pattern12 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %32, i32 0, i32 1
  %33 = load i8*, i8** %common_pattern12, align 8
  %34 = load i8*, i8** %sub_str, align 8
  %35 = load i32, i32* %largest_common, align 4
  %conv = zext i32 %35 to i64
  %call13 = call i8* @strncpy(i8* %33, i8* %34, i64 %conv) #5
  %36 = load i32, i32* %largest_common, align 4
  %37 = load %struct._StrTreeNode*, %struct._StrTreeNode** %found_largestcommon, align 8
  %common_pattern_length14 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %37, i32 0, i32 2
  store i32 %36, i32* %common_pattern_length14, align 4
  %38 = load %struct._StrTreeNode*, %struct._StrTreeNode** %found_largestcommon, align 8
  %list15 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %38, i32 0, i32 5
  %39 = load %struct._PatternNode*, %struct._PatternNode** %list15, align 8
  %chain_node_number16 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %39, i32 0, i32 0
  %40 = load i32, i32* %chain_node_number16, align 4
  %add17 = add nsw i32 %40, 1
  %41 = load i8*, i8** %pattern.addr, align 8
  %42 = load i32, i32* %pattern_length.addr, align 4
  %43 = load i32, i32* %depth.addr, align 4
  %call18 = call %struct._PatternNode* @NewPatternNode(i32 %add17, i32 1, i8* %41, i32 %42, i32 %43)
  store %struct._PatternNode* %call18, %struct._PatternNode** %new_node11, align 8
  %44 = load %struct._StrTreeNode*, %struct._StrTreeNode** %found_largestcommon, align 8
  %list19 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %44, i32 0, i32 5
  %45 = load %struct._PatternNode*, %struct._PatternNode** %list19, align 8
  %46 = load %struct._PatternNode*, %struct._PatternNode** %new_node11, align 8
  %below20 = getelementptr inbounds %struct._PatternNode, %struct._PatternNode* %46, i32 0, i32 9
  store %struct._PatternNode* %45, %struct._PatternNode** %below20, align 8
  %47 = load %struct._PatternNode*, %struct._PatternNode** %new_node11, align 8
  %48 = load %struct._StrTreeNode*, %struct._StrTreeNode** %found_largestcommon, align 8
  %list21 = getelementptr inbounds %struct._StrTreeNode, %struct._StrTreeNode* %48, i32 0, i32 5
  store %struct._PatternNode* %47, %struct._PatternNode** %list21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.10, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @db_init(i8* %file_name) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %pattern_file = alloca %struct._IO_FILE*, align 8
  %line = alloca [2048 x i8], align 16
  %reader = alloca i8*, align 8
  %i = alloca i32, align 4
  %pattern = alloca i8*, align 8
  %value = alloca i32, align 4
  %pattern_length = alloca i32, align 4
  %search_depth = alloca i32, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  %0 = load i8*, i8** %file_name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %pattern_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i32 0, i32 0), i32 360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %pattern_file, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 2048, %struct._IO_FILE* %1)
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 1
  store i8* %add.ptr, i8** %reader, align 8
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i8*, i8** %reader, align 8
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32* %pattern_length) #5
  store i32 0, i32* %search_depth, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  %4 = load i8*, i8** %reader, align 8
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* %pattern_length, i32* %search_depth) #5
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %arrayidx7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 0
  %5 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i32 0, i32 0), i32 379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 %conv8) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %6 = load i32, i32* %pattern_length, align 4
  %add = add nsw i32 %6, 1
  %conv9 = sext i32 %add to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #5
  store i8* %call10, i8** %pattern, align 8
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.epilog
  call void (i8*, i8*, i32, i8*, ...) @_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.db_init, i32 0, i32 0), i32 383, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.14:                                        ; preds = %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %pattern_length, align 4
  %cmp15 = icmp slt i32 %7, %8
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.21, %for.body
  %9 = load i8*, i8** %reader, align 8
  %10 = load i8, i8* %9, align 1
  %conv18 = sext i8 %10 to i32
  %cmp19 = icmp ne i32 %conv18, 44
  br i1 %cmp19, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.17
  %11 = load i8*, i8** %reader, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %reader, align 8
  br label %while.cond.17

while.end:                                        ; preds = %while.cond.17
  %12 = load i8*, i8** %reader, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr22, i8** %reader, align 8
  %13 = load i8*, i8** %reader, align 8
  %call23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32* %value) #5
  %14 = load i32, i32* %value, align 4
  %conv24 = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %pattern, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 %conv24, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %pattern_length, align 4
  %idxprom26 = sext i32 %18 to i64
  %19 = load i8*, i8** %pattern, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 %idxprom26
  store i8 0, i8* %arrayidx27, align 1
  %20 = load i8*, i8** %pattern, align 8
  %21 = load i32, i32* %pattern_length, align 4
  %22 = load i32, i32* %search_depth, align 4
  call void @insert_rule(i8* %20, i32 %21, i32 %22)
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
