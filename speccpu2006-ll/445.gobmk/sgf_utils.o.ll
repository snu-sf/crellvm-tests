; ModuleID = 'sgf/sgf_utils.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [4 x i8] c"P: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%c \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_moveX(%struct.SGFProperty_t* %property, i32 %boardsize) #0 {
entry:
  %retval = alloca i32, align 4
  %property.addr = alloca %struct.SGFProperty_t*, align 8
  %boardsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SGFProperty_t* %property, %struct.SGFProperty_t** %property.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %0, i32 0, i32 2
  %1 = load i8*, i8** %value, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %value1 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %2, i32 0, i32 2
  %3 = load i8*, i8** %value1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call2 = call i32 @toupper(i32 %conv) #5
  %sub = sub nsw i32 %call2, 65
  store i32 %sub, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %boardsize.addr, align 4
  %cmp3 = icmp sge i32 %5, %6
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i32 @get_moveY(%struct.SGFProperty_t* %property, i32 %boardsize) #0 {
entry:
  %retval = alloca i32, align 4
  %property.addr = alloca %struct.SGFProperty_t*, align 8
  %boardsize.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.SGFProperty_t* %property, %struct.SGFProperty_t** %property.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %0, i32 0, i32 2
  %1 = load i8*, i8** %value, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %value1 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %2, i32 0, i32 2
  %3 = load i8*, i8** %value1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call2 = call i32 @toupper(i32 %conv) #5
  %sub = sub nsw i32 %call2, 65
  store i32 %sub, i32* %j, align 4
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %boardsize.addr, align 4
  %cmp3 = icmp sge i32 %5, %6
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @get_moveXY(%struct.SGFProperty_t* %property, i32* %i, i32* %j, i32 %boardsize) #0 {
entry:
  %retval = alloca i32, align 4
  %property.addr = alloca %struct.SGFProperty_t*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %boardsize.addr = alloca i32, align 4
  store %struct.SGFProperty_t* %property, %struct.SGFProperty_t** %property.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %1 = load i32, i32* %boardsize.addr, align 4
  %call = call i32 @get_moveX(%struct.SGFProperty_t* %0, i32 %1)
  %2 = load i32*, i32** %i.addr, align 8
  store i32 %call, i32* %2, align 4
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %property.addr, align 8
  %4 = load i32, i32* %boardsize.addr, align 4
  %call1 = call i32 @get_moveY(%struct.SGFProperty_t* %3, i32 %4)
  %5 = load i32*, i32** %j.addr, align 8
  store i32 %call1, i32* %5, align 4
  %6 = load i32*, i32** %i.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32*, i32** %j.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp2 = icmp eq i32 %9, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @show_sgf_properties(%struct.SGFNode_t* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  %propcount = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 0, i32* %propcount, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %2 = load i32, i32* %propcount, align 4
  store i32 %2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props2 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 0
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props2, align 8
  store %struct.SGFProperty_t* %4, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool3 = icmp ne %struct.SGFProperty_t* %5, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %6, i32 0, i32 1
  %7 = load i16, i16* %name, align 2
  %conv = sext i16 %7 to i32
  %and = and i32 %conv, 255
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %8, i32 0, i32 1
  %9 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %9 to i32
  %and6 = and i32 %conv5, 65280
  %shr = ashr i32 %and6, 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %and, i32 %shr)
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 0
  %11 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %11, %struct.SGFProperty_t** %sgf_prop, align 8
  %12 = load i32, i32* %propcount, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %propcount, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %propcount, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %13)
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 3
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next9, align 8
  %tobool10 = icmp ne %struct.SGFNode_t* %15, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %while.end
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %while.end
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %16, i32 0, i32 2
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool13 = icmp ne %struct.SGFNode_t* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16
  %18 = load i32, i32* %propcount, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @show_sgf_tree(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %n = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %n, align 4
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %call = call i32 @show_sgf_properties(%struct.SGFNode_t* %1)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 2
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool = icmp ne %struct.SGFNode_t* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 2
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child1, align 8
  %call2 = call i32 @show_sgf_tree(%struct.SGFNode_t* %5)
  %6 = load i32, i32* %n, align 4
  %add = add nsw i32 %6, %call2
  store i32 %add, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 3
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  %tobool3 = icmp ne %struct.SGFNode_t* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 3
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next5, align 8
  %call6 = call i32 @show_sgf_tree(%struct.SGFNode_t* %10)
  %11 = load i32, i32* %n, align 4
  %add7 = add nsw i32 %11, %call6
  store i32 %add7, i32* %n, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %12 = load i32, i32* %n, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @is_markup_node(%struct.SGFNode_t* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 0
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props1, align 8
  store %struct.SGFProperty_t* %3, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool2 = icmp ne %struct.SGFProperty_t* %4, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %5, i32 0, i32 1
  %6 = load i16, i16* %name, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 21059, label %sw.bb
    i32 20819, label %sw.bb
    i32 21076, label %sw.bb
    i32 16717, label %sw.bb
    i32 19778, label %sw.bb
    i32 20292, label %sw.bb
    i32 21577, label %sw.bb
    i32 17748, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %8, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @is_move_node(%struct.SGFNode_t* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 0
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props1, align 8
  store %struct.SGFProperty_t* %3, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool2 = icmp ne %struct.SGFProperty_t* %4, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %5, i32 0, i32 1
  %6 = load i16, i16* %name, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 8258, label %sw.bb
    i32 8279, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %8, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @is_pass_node(%struct.SGFNode_t* %node, i32 %boardsize) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %boardsize.addr = alloca i32, align 4
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 0
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props1, align 8
  store %struct.SGFProperty_t* %3, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool2 = icmp ne %struct.SGFProperty_t* %4, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %5, i32 0, i32 1
  %6 = load i16, i16* %name, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 8258, label %sw.bb
    i32 8279, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %8 = load i32, i32* %boardsize.addr, align 4
  %call = call i32 @get_moveXY(%struct.SGFProperty_t* %7, i32* %i, i32* %j, i32 %8)
  %tobool3 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %9, i32 0, i32 0
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %10, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @find_move(%struct.SGFNode_t* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %sgf_prop = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 0
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props1, align 8
  store %struct.SGFProperty_t* %3, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %tobool2 = icmp ne %struct.SGFProperty_t* %4, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %5, i32 0, i32 1
  %6 = load i16, i16* %name, align 2
  %conv = sext i16 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 8258, label %sw.bb
    i32 8279, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %sgf_prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %8, %struct.SGFProperty_t** %sgf_prop, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.3, %sw.bb, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
