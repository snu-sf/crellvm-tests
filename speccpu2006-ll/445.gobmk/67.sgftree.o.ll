; ModuleID = 'sgf/sgftree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@.str = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"KM\00", align 1

; Function Attrs: nounwind uwtable
define void @sgftree_clear(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 0
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %root, align 8
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %1, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sgftree_readfile(%struct.SGFTree_t* %tree, i8* %infilename) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %infilename.addr = alloca i8*, align 8
  %savetree = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i8* %infilename, i8** %infilename.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 0
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %savetree, align 8
  %2 = load i8*, i8** %infilename.addr, align 8
  %call = call %struct.SGFNode_t* @readsgffile(i8* %2)
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root1 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %3, i32 0, i32 0
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %root1, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root2 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 0
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root2, align 8
  %cmp = icmp eq %struct.SGFNode_t* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %savetree, align 8
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root3 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %7, i32 0, i32 0
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %root3, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %savetree, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %8)
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %lastnode, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.SGFNode_t* @readsgffile(i8*) #1

declare void @sgfFreeNode(%struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define i32 @sgftreeBack(%struct.SGFTree_t* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 1
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode1 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %2, i32 0, i32 1
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode1, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 1
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %tobool2 = icmp ne %struct.SGFNode_t* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode4 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode4, align 8
  %parent5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 1
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent5, align 8
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode6 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %8, i32 0, i32 1
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %lastnode6, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.9

if.else.7:                                        ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.7
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call i32 @sgftreeForward(%struct.SGFTree_t* %9)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.9

if.end.9:                                         ; preds = %while.end, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.else
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @sgftreeForward(%struct.SGFTree_t* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 1
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode1 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %2, i32 0, i32 1
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode1, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool2 = icmp ne %struct.SGFNode_t* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode4 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode4, align 8
  %child5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 2
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child5, align 8
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode6 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %8, i32 0, i32 1
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %lastnode6, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.9

if.else.7:                                        ; preds = %entry
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 0
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode8 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %11, i32 0, i32 1
  store %struct.SGFNode_t* %10, %struct.SGFNode_t** %lastnode8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %node, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 1
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode1 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %2, i32 0, i32 1
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode1, align 8
  store %struct.SGFNode_t* %3, %struct.SGFNode_t** %node, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 0
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 2
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool2 = icmp ne %struct.SGFNode_t* %7, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %child3 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 2
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child3, align 8
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  ret %struct.SGFNode_t* %10
}

; Function Attrs: nounwind uwtable
define void @sgftreeAddStone(%struct.SGFTree_t* %tree, i32 %color, i32 %movex, i32 %movey) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %color.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %color.addr, align 4
  %3 = load i32, i32* %movex.addr, align 4
  %4 = load i32, i32* %movey.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %1, i32 %2, i32 %3, i32 %4)
  ret void
}

declare %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeAddPlay(%struct.SGFTree_t* %tree, i32 %color, i32 %movex, i32 %movey) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %color.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %color.addr, align 4
  %3 = load i32, i32* %movex.addr, align 4
  %4 = load i32, i32* %movey.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t* %1, i32 %2, i32 %3, i32 %4)
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  store %struct.SGFNode_t* %call1, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

declare %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeAddPlayLast(%struct.SGFTree_t* %tree, i32 %color, i32 %movex, i32 %movey) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %color.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %color.addr, align 4
  %3 = load i32, i32* %movex.addr, align 4
  %4 = load i32, i32* %movey.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t* %1, i32 %2, i32 %3, i32 %4)
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  store %struct.SGFNode_t* %call1, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

declare %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %tree, i32 %boardsize, float %komi) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %boardsize.addr = alloca i32, align 4
  %komi.addr = alloca float, align 4
  %root = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  store float %komi, float* %komi.addr, align 4
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %root, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %1 = load i32, i32* %boardsize.addr, align 4
  %conv = sext i32 %1 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 %conv)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %3 = load float, float* %komi.addr, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float %3)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root1 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  store %struct.SGFNode_t* %4, %struct.SGFNode_t** %root1, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %7, i32 0, i32 1
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

declare %struct.SGFNode_t* @sgfNewNode() #1

declare void @sgfAddPropertyInt(%struct.SGFNode_t*, i8*, i64) #1

declare void @sgfAddPropertyFloat(%struct.SGFNode_t*, i8*, float) #1

; Function Attrs: nounwind uwtable
define void @sgftreeAddComment(%struct.SGFTree_t* %tree, i8* %comment) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %comment.addr = alloca i8*, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i8*, i8** %comment.addr, align 8
  %call1 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %1, i8* %2)
  ret void
}

declare %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgftreeBoardText(%struct.SGFTree_t* %tree, i32 %i, i32 %j, i8* %text) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i8*, i8** %text.addr, align 8
  %call1 = call %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %1, i32 %2, i32 %3, i8* %4)
  ret void
}

declare %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgftreeBoardChar(%struct.SGFTree_t* %tree, i32 %i, i32 %j, i8 signext %c) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i8, i8* %c.addr, align 1
  %call1 = call %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t* %1, i32 %2, i32 %3, i8 signext %4)
  ret void
}

declare %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t*, i32, i32, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @sgftreeBoardNumber(%struct.SGFTree_t* %tree, i32 %i, i32 %j, i32 %number) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %number.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %4 = load i32, i32* %number.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t* %1, i32 %2, i32 %3, i32 %4)
  ret void
}

declare %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeTriangle(%struct.SGFTree_t* %tree, i32 %i, i32 %j) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t* %1, i32 %2, i32 %3)
  ret void
}

declare %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeCircle(%struct.SGFTree_t* %tree, i32 %i, i32 %j) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %1, i32 %2, i32 %3)
  ret void
}

declare %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeSquare(%struct.SGFTree_t* %tree, i32 %i, i32 %j) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t* %1, i32 %2, i32 %3)
  ret void
}

declare %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeMark(%struct.SGFTree_t* %tree, i32 %i, i32 %j) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %call1 = call %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %1, i32 %2, i32 %3)
  ret void
}

declare %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeStartVariant(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call1 = call %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t* %1)
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %2, i32 0, i32 1
  store %struct.SGFNode_t* %call1, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

declare %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define void @sgftreeStartVariantFirst(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %call1 = call %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %1)
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %2, i32 0, i32 1
  store %struct.SGFNode_t* %call1, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

declare %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define void @sgftreeWriteResult(%struct.SGFTree_t* %tree, float %score, i32 %overwrite) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %score.addr = alloca float, align 4
  %overwrite.addr = alloca i32, align 4
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store float %score, float* %score.addr, align 4
  store i32 %overwrite, i32* %overwrite.addr, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 0
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %2 = load float, float* %score.addr, align 4
  %3 = load i32, i32* %overwrite.addr, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %1, float %2, i32 %3)
  ret void
}

declare void @sgfWriteResult(%struct.SGFNode_t*, float, i32) #1

; Function Attrs: nounwind uwtable
define void @sgftreeSetLastNode(%struct.SGFTree_t* %tree, %struct.SGFNode_t* %last_node) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %last_node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.SGFNode_t* %last_node, %struct.SGFNode_t** %last_node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last_node.addr, align 8
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %1, i32 0, i32 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %lastnode, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
