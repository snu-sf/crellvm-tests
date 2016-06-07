; ModuleID = 'sgf/sgfnode.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"xalloc: Out of memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"xrealloc: Out of memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"C \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%c%c:%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LB\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%c%c:%i\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"TR\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%c%c:%d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"MA\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%c+%3.1f\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%c+%c\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"GNU Go %s Random Seed %d level %d\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"GNU Go 3.3.14\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Chinese\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Japanese\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@sgffile = internal global %struct._IO_FILE* null, align 8
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@sgferr = internal global i8* null, align 8
@.str.36 = private unnamed_addr constant [32 x i8] c"Parse error: %s at position %d\0A\00", align 1
@sgferrpos = internal global i32 0, align 4
@.str.37 = private unnamed_addr constant [3 x i8] c"GM\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"SGF file might be for game other than go: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Trying to load anyway.\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Unsupported SGF spec version: %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Can not open %s\0A\00", align 1
@sgf_column = internal global i32 0, align 4
@lookahead = internal global i32 0, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"Empty file?\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"expected: %c\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Expected an upper case letter.\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"GM[1]\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"PW\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"N \00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"W \00", align 1

; Function Attrs: nounwind uwtable
define i8* @xalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %pt = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** %pt, align 8
  %1 = load i8*, i8** %pt, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %pt, align 8
  %4 = load i32, i32* %size.addr, align 4
  %conv2 = zext i32 %4 to i64
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %conv2, i32 1, i1 false)
  %5 = load i8*, i8** %pt, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %pt, i32 %size) #0 {
entry:
  %pt.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ptnew = alloca i8*, align 8
  store i8* %pt, i8** %pt.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %pt.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #4
  store i8* %call, i8** %ptnew, align 8
  %2 = load i8*, i8** %ptnew, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 2) #7
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %ptnew, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfNewNode() #0 {
entry:
  %newnode = alloca %struct.SGFNode_t*, align 8
  %call = call i8* @xalloc(i32 32)
  %0 = bitcast i8* %call to %struct.SGFNode_t*
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %newnode, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %newnode, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %1, i32 0, i32 3
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %next, align 8
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %newnode, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 0
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %props, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %newnode, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %parent, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %newnode, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 2
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %child, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %newnode, align 8
  ret %struct.SGFNode_t* %5
}

; Function Attrs: nounwind uwtable
define void @sgfFreeNode(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %cmp = icmp eq %struct.SGFNode_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %1, i32 0, i32 3
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %4)
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 0
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  call void @sgfFreeProperty(%struct.SGFProperty_t* %6)
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %8 = bitcast %struct.SGFNode_t* %7 to i8*
  call void @free(i8* %8) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @sgfFreeProperty(%struct.SGFProperty_t* %prop) #0 {
entry:
  %prop.addr = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFProperty_t* %prop, %struct.SGFProperty_t** %prop.addr, align 8
  %0 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %cmp = icmp eq %struct.SGFProperty_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %1, i32 0, i32 0
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  call void @sgfFreeProperty(%struct.SGFProperty_t* %2)
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 2
  %4 = load i8*, i8** %value, align 8
  call void @free(i8* %4) #4
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %6 = bitcast %struct.SGFProperty_t* %5 to i8*
  call void @free(i8* %6) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @sgfAddProperty(%struct.SGFNode_t* %node, i8* %name, i8* %value) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %prop, align 8
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 0
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  %tobool1 = icmp ne %struct.SGFProperty_t* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next2 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %5, i32 0, i32 0
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next2, align 8
  store %struct.SGFProperty_t* %6, %struct.SGFProperty_t** %prop, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i8*, i8** %value.addr, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %call = call %struct.SGFProperty_t* @sgfMkProperty(i8* %7, i8* %8, %struct.SGFNode_t* %9, %struct.SGFProperty_t* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SGFProperty_t* @sgfMkProperty(i8* %name, i8* %value, %struct.SGFNode_t* %node, %struct.SGFProperty_t* %last) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %last.addr = alloca %struct.SGFProperty_t*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store %struct.SGFProperty_t* %last, %struct.SGFProperty_t** %last.addr, align 8
  %call = call i8* @xalloc(i32 24)
  %0 = bitcast i8* %call to %struct.SGFProperty_t*
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %prop, align 8
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #8
  %add = add i64 %call1, 1
  %conv = trunc i64 %add to i32
  %call2 = call i8* @xalloc(i32 %conv)
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value3 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %2, i32 0, i32 2
  store i8* %call2, i8** %value3, align 8
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 0
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %next, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i64 @strlen(i8* %4) #8
  %cmp = icmp eq i64 %call4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %6 to i32
  %or = or i32 %conv6, 8192
  %conv7 = trunc i32 %or to i16
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  store i16 %conv7, i16* %name8, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %10 = load i8*, i8** %name.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %shl = shl i32 %conv12, 8
  %or13 = or i32 %conv10, %shl
  %conv14 = trunc i32 %or13 to i16
  %12 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name15 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %12, i32 0, i32 1
  store i16 %conv14, i16* %name15, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value16 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %value16, align 8
  %15 = load i8*, i8** %value.addr, align 8
  %call17 = call i8* @strcpy(i8* %14, i8* %15) #4
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %last.addr, align 8
  %cmp18 = icmp eq %struct.SGFProperty_t* %16, null
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %18, i32 0, i32 0
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %props, align 8
  br label %if.end.23

if.else.21:                                       ; preds = %if.end
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %20 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %last.addr, align 8
  %next22 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %20, i32 0, i32 0
  store %struct.SGFProperty_t* %19, %struct.SGFProperty_t** %next22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  ret %struct.SGFProperty_t* %21
}

; Function Attrs: nounwind uwtable
define void @sgfAddPropertyInt(%struct.SGFNode_t* %node, i8* %name, i64 %val) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %val.addr = alloca i64, align 8
  %buffer = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buffer, i32 0, i32 0
  %0 = load i64, i64* %val.addr, align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %0)
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %buffer, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %1, i8* %2, i8* %arraydecay1)
  ret void
}

declare void @gg_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @sgfAddPropertyFloat(%struct.SGFNode_t* %node, i8* %name, float %val) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %val.addr = alloca float, align 4
  %buffer = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store float %val, float* %val.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buffer, i32 0, i32 0
  %0 = load float, float* %val.addr, align 4
  %conv = fpext float %0 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), double %conv)
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %buffer, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %1, i8* %2, i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sgfGetIntProperty(%struct.SGFNode_t* %node, i8* %name, i32* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i32*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value8, align 8
  %call = call i32 @atoi(i8* %11) #8
  %12 = load i32*, i32** %value.addr, align 8
  store i32 %call, i32* %12, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 0
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %14, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @sgfGetFloatProperty(%struct.SGFNode_t* %node, i8* %name, float* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca float*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store float* %value, float** %value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value8, align 8
  %call = call double @atof(i8* %11) #8
  %conv9 = fptrunc double %call to float
  %12 = load float*, float** %value.addr, align 8
  store float %conv9, float* %12, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 0
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %14, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @sgfGetCharProperty(%struct.SGFNode_t* %node, i8* %name, i8** %value) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8**, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value8, align 8
  %12 = load i8**, i8*** %value.addr, align 8
  store i8* %11, i8** %12, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 0
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %14, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @sgfOverwriteProperty(%struct.SGFNode_t* %node, i8* %name, i8* %text) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value, align 8
  %12 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %12) #8
  %add = add i64 %call, 1
  %conv8 = trunc i64 %add to i32
  %call9 = call i8* @xrealloc(i8* %11, i32 %conv8)
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value10 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 2
  store i8* %call9, i8** %value10, align 8
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value11 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %14, i32 0, i32 2
  %15 = load i8*, i8** %value11, align 8
  %16 = load i8*, i8** %text.addr, align 8
  %call12 = call i8* @strcpy(i8* %15, i8* %16) #4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %17, i32 0, i32 0
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %18, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %21 = load i8*, i8** %text.addr, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %19, i8* %20, i8* %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgfOverwritePropertyInt(%struct.SGFNode_t* %node, i8* %name, i32 %val) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value, align 8
  %call = call i8* @xrealloc(i8* %11, i32 12)
  %12 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %12, i32 0, i32 2
  store i8* %call, i8** %value8, align 8
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value9 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %value9, align 8
  %15 = load i32, i32* %val.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %14, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %15)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %16, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i32, i32* %val.addr, align 4
  %conv10 = sext i32 %20 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %18, i8* %19, i64 %conv10)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @sgfOverwritePropertyFloat(%struct.SGFNode_t* %node, i8* %name, float %val) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %val.addr = alloca float, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store float %val, float* %val.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %11 = load i8*, i8** %value, align 8
  %call = call i8* @xrealloc(i8* %11, i32 15)
  %12 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %12, i32 0, i32 2
  store i8* %call, i8** %value8, align 8
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value9 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %value9, align 8
  %15 = load float, float* %val.addr, align 4
  %conv10 = fpext float %15 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %14, i64 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), double %conv10)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %16, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load float, float* %val.addr, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %18, i8* %19, float %20)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfPrev(%struct.SGFNode_t* %node) #0 {
entry:
  %retval = alloca %struct.SGFNode_t*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %q = alloca %struct.SGFNode_t*, align 8
  %prev = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 1
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 1
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent1, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  store %struct.SGFNode_t* %4, %struct.SGFNode_t** %q, align 8
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %q, align 8
  %tobool2 = icmp ne %struct.SGFNode_t* %5, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %q, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %cmp = icmp ne %struct.SGFNode_t* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %q, align 8
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %prev, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %q, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 3
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %prev, align 8
  store %struct.SGFNode_t* %12, %struct.SGFNode_t** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %retval
  ret %struct.SGFNode_t* %13
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfRoot(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 1
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %parent1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 1
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent1, align 8
  store %struct.SGFNode_t* %3, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %node, i32 %color, i32 %movex, i32 %movey) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %color.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %move = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  %0 = load i32, i32* %movey.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %movex.addr, align 4
  %add1 = add nsw i32 %1, 97
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add1) #4
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %3 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %3, 2
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %2, i8* %cond, i8* %arraydecay2)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t* %node, i32 %who, i32 %movex, i32 %movey) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %who.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %move = alloca [3 x i8], align 1
  %new = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %who, i32* %who.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %0 = load i32, i32* %movex.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %movey.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  %2 = load i32, i32* %movey.addr, align 4
  %add = add nsw i32 %2, 97
  %3 = load i32, i32* %movex.addr, align 4
  %add2 = add nsw i32 %3, 97
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 2
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool = icmp ne %struct.SGFNode_t* %5, null
  br i1 %tobool, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child4 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 2
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child4, align 8
  %call5 = call %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %7)
  store %struct.SGFNode_t* %call5, %struct.SGFNode_t** %new, align 8
  br label %if.end.9

if.else.6:                                        ; preds = %if.end
  %call7 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call7, %struct.SGFNode_t** %new, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child8 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 2
  store %struct.SGFNode_t* %8, %struct.SGFNode_t** %child8, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 1
  store %struct.SGFNode_t* %10, %struct.SGFNode_t** %parent, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.6, %if.then.3
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %13 = load i32, i32* %who.addr, align 4
  %cmp10 = icmp eq i32 %13, 2
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)
  %arraydecay11 = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %12, i8* %cond, i8* %arraydecay11)
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  ret %struct.SGFNode_t* %14
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %old_first_child = alloca %struct.SGFNode_t*, align 8
  %new_first_child = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %old_first_child, align 8
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %new_first_child, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %old_first_child, align 8
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 3
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %next, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %old_first_child, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 1
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %tobool = icmp ne %struct.SGFNode_t* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %old_first_child, align 8
  %parent1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent1, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %parent2 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 1
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %parent2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %old_first_child, align 8
  %parent3 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 1
  store %struct.SGFNode_t* %8, %struct.SGFNode_t** %parent3, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %parent4 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent4, align 8
  %tobool5 = icmp ne %struct.SGFNode_t* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  %parent7 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %13, i32 0, i32 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent7, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 2
  store %struct.SGFNode_t* %12, %struct.SGFNode_t** %child, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_first_child, align 8
  ret %struct.SGFNode_t* %15
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t* %node, i32 %who, i32 %movex, i32 %movey) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %who.addr = alloca i32, align 4
  %movex.addr = alloca i32, align 4
  %movey.addr = alloca i32, align 4
  %move = alloca [3 x i8], align 1
  %new = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %who, i32* %who.addr, align 4
  store i32 %movex, i32* %movex.addr, align 4
  store i32 %movey, i32* %movey.addr, align 4
  %0 = load i32, i32* %movex.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %movey.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  %2 = load i32, i32* %movey.addr, align 4
  %add = add nsw i32 %2, 97
  %3 = load i32, i32* %movex.addr, align 4
  %add2 = add nsw i32 %3, 97
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %call3 = call %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %4)
  store %struct.SGFNode_t* %call3, %struct.SGFNode_t** %new, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %6 = load i32, i32* %who.addr, align 4
  %cmp4 = icmp eq i32 %6, 2
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %move, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %5, i8* %cond, i8* %arraydecay5)
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  ret %struct.SGFNode_t* %7
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %new_node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %new_node, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_node, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %1, i32 0, i32 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %parent, align 8
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 2
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  %tobool = icmp ne %struct.SGFNode_t* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_node, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 2
  store %struct.SGFNode_t* %4, %struct.SGFNode_t** %child1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child2 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 2
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child2, align 8
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 3
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  %tobool3 = icmp ne %struct.SGFNode_t* %9, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next4 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 3
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next4, align 8
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_node, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %13, i32 0, i32 3
  store %struct.SGFNode_t* %12, %struct.SGFNode_t** %next5, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new_node, align 8
  ret %struct.SGFNode_t* %14
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfCreateHeaderNode(i32 %boardsize, float %komi) #0 {
entry:
  %boardsize.addr = alloca i32, align 4
  %komi.addr = alloca float, align 4
  %root = alloca %struct.SGFNode_t*, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  store float %komi, float* %komi.addr, align 4
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %root, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %1 = load i32, i32* %boardsize.addr, align 4
  %conv = sext i32 %1 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 %conv)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %3 = load float, float* %komi.addr, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), float %3)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %node, i8* %comment) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %comment.addr = alloca i8*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %1 = load i8*, i8** %comment.addr, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %1)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %2
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %node, i32 %i, i32 %j, i8* %text) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %add = add i64 %call, 3
  %conv = trunc i64 %add to i32
  %call1 = call i8* @xalloc(i32 %conv)
  store i8* %call1, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  %2 = load i32, i32* %j.addr, align 4
  %add2 = add nsw i32 %2, 97
  %3 = load i32, i32* %i.addr, align 4
  %add3 = add nsw i32 %3, 97
  %4 = load i8*, i8** %text.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %add2, i32 %add3, i8* %4) #4
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %6 = load i8*, i8** %str, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %str, align 8
  call void @free(i8* %7) #4
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %8
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t* %node, i32 %i, i32 %j, i8 signext %c) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  %text = alloca [2 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = bitcast [2 x i8]* %text to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 2, i32 1, i1 false)
  %1 = load i8, i8* %c.addr, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %text, i32 0, i64 0
  store i8 %1, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %text, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %3 = load i32, i32* %i.addr, align 4
  %4 = load i32, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %text, i32 0, i32 0
  %call = call %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %2, i32 %3, i32 %4, i8* %arraydecay)
  ret %struct.SGFNode_t* %call
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t* %node, i32 %i, i32 %j, i32 %number) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %number.addr = alloca i32, align 4
  %text = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %number, i32* %number.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  %2 = load i32, i32* %number.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %add, i32 %add1, i32 %2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay2)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t* %node, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add1)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %3
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %node, i8* %label, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %label.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text = alloca [16 x i8], align 16
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  %2 = load i8*, i8** %label.addr, align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %add, i32 %add1, i8* %2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay2)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t* %node, i32 %num, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %num.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text = alloca [16 x i8], align 16
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  %2 = load i32, i32* %num.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 %add, i32 %add1, i32 %2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay2)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %4
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %node, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add1)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %3
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t* %node, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* %j.addr, align 4
  %call = call %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %0, i32 %1, i32 %2)
  ret %struct.SGFNode_t* %call
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %node, i32 %i, i32 %j) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %text = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  %0 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %0, 97
  %1 = load i32, i32* %i.addr, align 4
  %add1 = add nsw i32 %1, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %add, i32 %add1)
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %text, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %arraydecay2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  ret %struct.SGFNode_t* %3
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 3
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  %tobool = icmp ne %struct.SGFNode_t* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next1 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %2, i32 0, i32 3
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next1, align 8
  store %struct.SGFNode_t* %3, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call %struct.SGFNode_t* @sgfNewNode()
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next2 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 3
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %next2, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next3 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 3
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next3, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 1
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %parent, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next4 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 3
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next4, align 8
  ret %struct.SGFNode_t* %9
}

; Function Attrs: nounwind uwtable
define void @sgfWriteResult(%struct.SGFNode_t* %node, float %score, i32 %overwrite) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %score.addr = alloca float, align 4
  %overwrite.addr = alloca i32, align 4
  %text = alloca [8 x i8], align 1
  %winner = alloca i8, align 1
  %s = alloca float, align 4
  %dummy = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store float %score, float* %score.addr, align 4
  store i32 %overwrite, i32* %overwrite.addr, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %tobool = icmp ne %struct.SGFNode_t* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %overwrite.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %call = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32* %dummy)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  br label %return

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %3 = load float, float* %score.addr, align 4
  %conv = fpext float %3 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  store i8 87, i8* %winner, align 1
  %4 = load float, float* %score.addr, align 4
  store float %4, float* %s, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.end.6
  %5 = load float, float* %score.addr, align 4
  %conv9 = fpext float %5 to double
  %cmp10 = fcmp olt double %conv9, 0.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i8 66, i8* %winner, align 1
  %6 = load float, float* %score.addr, align 4
  %sub = fsub float -0.000000e+00, %6
  store float %sub, float* %s, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.else
  store i8 48, i8* %winner, align 1
  store float 0.000000e+00, float* %s, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %7 = load i8, i8* %winner, align 1
  %conv16 = sext i8 %7 to i32
  %cmp17 = icmp eq i32 %conv16, 48
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.end.15
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %text, i32 0, i32 0
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.35

if.else.20:                                       ; preds = %if.end.15
  %8 = load float, float* %score.addr, align 4
  %conv21 = fpext float %8 to double
  %cmp22 = fcmp olt double %conv21, 1.000000e+03
  br i1 %cmp22, label %land.lhs.true, label %if.else.31

land.lhs.true:                                    ; preds = %if.else.20
  %9 = load float, float* %score.addr, align 4
  %conv24 = fpext float %9 to double
  %cmp25 = fcmp ogt double %conv24, -1.000000e+03
  br i1 %cmp25, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %land.lhs.true
  %arraydecay28 = getelementptr inbounds [8 x i8], [8 x i8]* %text, i32 0, i32 0
  %10 = load i8, i8* %winner, align 1
  %conv29 = sext i8 %10 to i32
  %11 = load float, float* %s, align 4
  %conv30 = fpext float %11 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay28, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %conv29, double %conv30)
  br label %if.end.34

if.else.31:                                       ; preds = %land.lhs.true, %if.else.20
  %arraydecay32 = getelementptr inbounds [8 x i8], [8 x i8]* %text, i32 0, i32 0
  %12 = load i8, i8* %winner, align 1
  %conv33 = sext i8 %12 to i32
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay32, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %conv33, i32 82)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.19
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay36 = getelementptr inbounds [8 x i8], [8 x i8]* %text, i32 0, i32 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay36)
  br label %return

return:                                           ; preds = %if.end.35, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @sgf_write_header(%struct.SGFNode_t* %root, i32 %overwrite, i32 %seed, float %komi, i32 %level, i32 %rules) #0 {
entry:
  %root.addr = alloca %struct.SGFNode_t*, align 8
  %overwrite.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %komi.addr = alloca float, align 4
  %level.addr = alloca i32, align 4
  %rules.addr = alloca i32, align 4
  %str = alloca [128 x i8], align 16
  %dummy = alloca i32, align 4
  store %struct.SGFNode_t* %root, %struct.SGFNode_t** %root.addr, align 8
  store i32 %overwrite, i32* %overwrite.addr, align 4
  store i32 %seed, i32* %seed.addr, align 4
  store float %komi, float* %komi.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %rules, i32* %rules.addr, align 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %str, i32 0, i32 0
  %0 = load i32, i32* %seed.addr, align 4
  %1 = load i32, i32* %level.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load i32, i32* %overwrite.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %call = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32* %dummy)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %str, i32 0, i32 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i32, i32* %overwrite.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %call5 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32* %dummy)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.end
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false.4
  %8 = load i32, i32* %overwrite.addr, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %call11 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32* %dummy)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.end.8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %11 = load i32, i32* %rules.addr, align 4
  %tobool14 = icmp ne i32 %11, 0
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %cond)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %lor.lhs.false.10
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  %14 = load float, float* %komi.addr, align 4
  call void @sgfOverwritePropertyFloat(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), float %14)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @readsgffilefuseki(i8* %filename, i32 %moves_per_game) #0 {
entry:
  %retval = alloca %struct.SGFNode_t*, align 8
  %filename.addr = alloca i8*, align 8
  %moves_per_game.addr = alloca i32, align 4
  %root = alloca %struct.SGFNode_t*, align 8
  %tmpi = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %moves_per_game, i32* %moves_per_game.addr, align 4
  store i32 0, i32* %tmpi, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @sgffile, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @sgffile, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  call void @nexttoken()
  %4 = load i32, i32* %moves_per_game.addr, align 4
  call void @gametreefuseki(%struct.SGFNode_t** %root, %struct.SGFNode_t* null, i32 108, i32 %4, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load i8*, i8** @sgferr, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** @sgferr, align 8
  %9 = load i32, i32* @sgferrpos, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* %8, i32 %9)
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call9 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32* %tmpi)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.18

if.else.12:                                       ; preds = %if.end.8
  %11 = load i32, i32* %tmpi, align 4
  %cmp13 = icmp ne i32 %11, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.else.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %tmpi, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.else.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call19 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32* %tmpi)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  br label %if.end.28

if.else.22:                                       ; preds = %if.end.18
  %16 = load i32, i32* %tmpi, align 4
  %cmp23 = icmp slt i32 %16, 3
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.22
  %17 = load i32, i32* %tmpi, align 4
  %cmp24 = icmp sgt i32 %17, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.22
  br i1 false, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %tmpi, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 %19)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.21
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  store %struct.SGFNode_t* %20, %struct.SGFNode_t** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.6, %if.then.2
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %retval
  ret %struct.SGFNode_t* %21
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @nexttoken() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* @lookahead, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* @lookahead, align 4
  %idxprom = sext i32 %1 to i64
  %call1 = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gametreefuseki(%struct.SGFNode_t** %p, %struct.SGFNode_t* %parent, i32 %mode, i32 %moves_per_game, i32 %i) #0 {
entry:
  %p.addr = alloca %struct.SGFNode_t**, align 8
  %parent.addr = alloca %struct.SGFNode_t*, align 8
  %mode.addr = alloca i32, align 4
  %moves_per_game.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %head = alloca %struct.SGFNode_t*, align 8
  %last = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t** %p, %struct.SGFNode_t*** %p.addr, align 8
  store %struct.SGFNode_t* %parent, %struct.SGFNode_t** %parent.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %moves_per_game, i32* %moves_per_game.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 115
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @match(i32 40)
  br label %if.end.10

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.9, %if.else
  %1 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.cond
  call void @parse_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 0)
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp3 = icmp eq i32 %2, 40
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %3 = load i32, i32* @lookahead, align 4
  %cmp5 = icmp eq i32 %3, 40
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @nexttoken()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* @lookahead, align 4
  %cmp6 = icmp eq i32 %4, 59
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  br label %for.end

if.end.8:                                         ; preds = %while.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  call void @nexttoken()
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %head, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent.addr, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %parent11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 1
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %parent11, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %8 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %8, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %call12 = call %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %9)
  store %struct.SGFNode_t* %call12, %struct.SGFNode_t** %last, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 2
  store %struct.SGFNode_t** %child, %struct.SGFNode_t*** %p.addr, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.33, %if.end.10
  %11 = load i32, i32* @lookahead, align 4
  %cmp14 = icmp eq i32 %11, 40
  br i1 %cmp14, label %while.body.15, label %while.end.34

while.body.15:                                    ; preds = %while.cond.13
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %12, i32 0, i32 0
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %while.body.15
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %props16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 0
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props16, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %15, i32 0, i32 1
  %16 = load i16, i16* %name, align 2
  %conv = sext i16 %16 to i32
  %cmp17 = icmp eq i32 %conv, 8258
  br i1 %cmp17, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %props19 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %17, i32 0, i32 0
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props19, align 8
  %name20 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %18, i32 0, i32 1
  %19 = load i16, i16* %name20, align 2
  %conv21 = sext i16 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 8279
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %20 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i.addr, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false, %while.body.15
  %21 = load i32, i32* %i.addr, align 4
  %22 = load i32, i32* %moves_per_game.addr, align 4
  %cmp26 = icmp sge i32 %21, %22
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.end.25
  %23 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %child29 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %23, i32 0, i32 2
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %child29, align 8
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %24, i32 0, i32 3
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %next, align 8
  br label %while.end.34

if.else.30:                                       ; preds = %if.end.25
  %25 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %parent31 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %26, i32 0, i32 1
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent31, align 8
  %28 = load i32, i32* %mode.addr, align 4
  %29 = load i32, i32* %moves_per_game.addr, align 4
  %30 = load i32, i32* %i.addr, align 4
  call void @gametreefuseki(%struct.SGFNode_t** %25, %struct.SGFNode_t* %27, i32 %28, i32 %29, i32 %30)
  %31 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %31, align 8
  %next32 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %32, i32 0, i32 3
  store %struct.SGFNode_t** %next32, %struct.SGFNode_t*** %p.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30
  br label %while.cond.13

while.end.34:                                     ; preds = %if.then.28, %while.cond.13
  %33 = load i32, i32* %mode.addr, align 4
  %cmp35 = icmp eq i32 %33, 115
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.end.34
  call void @match(i32 41)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %while.end.34
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct.SGFNode_t* @readsgffile(i8* %filename) #0 {
entry:
  %retval = alloca %struct.SGFNode_t*, align 8
  %filename.addr = alloca i8*, align 8
  %root = alloca %struct.SGFNode_t*, align 8
  %tmpi = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %tmpi, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @sgffile, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @sgffile, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  call void @nexttoken()
  call void @gametree(%struct.SGFNode_t** %root, %struct.SGFNode_t* null, i32 108)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %4)
  %5 = load i8*, i8** @sgferr, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @sgferr, align 8
  %8 = load i32, i32* @sgferrpos, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* %7, i32 %8)
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call9 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32* %tmpi)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.18

if.else.12:                                       ; preds = %if.end.8
  %10 = load i32, i32* %tmpi, align 4
  %cmp13 = icmp ne i32 %10, 1
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.else.12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %tmpi, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i32 0, i32 0), i32 %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.else.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call19 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32* %tmpi)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  br label %if.end.28

if.else.22:                                       ; preds = %if.end.18
  %15 = load i32, i32* %tmpi, align 4
  %cmp23 = icmp slt i32 %15, 3
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.22
  %16 = load i32, i32* %tmpi, align 4
  %cmp24 = icmp sgt i32 %16, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.22
  br i1 false, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* %tmpi, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i32 %18)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.21
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.6, %if.then.2
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %retval
  ret %struct.SGFNode_t* %20
}

; Function Attrs: nounwind uwtable
define internal void @gametree(%struct.SGFNode_t** %p, %struct.SGFNode_t* %parent, i32 %mode) #0 {
entry:
  %p.addr = alloca %struct.SGFNode_t**, align 8
  %parent.addr = alloca %struct.SGFNode_t*, align 8
  %mode.addr = alloca i32, align 4
  %head = alloca %struct.SGFNode_t*, align 8
  %last = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t** %p, %struct.SGFNode_t*** %p.addr, align 8
  store %struct.SGFNode_t* %parent, %struct.SGFNode_t** %parent.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 115
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @match(i32 40)
  br label %if.end.10

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.9, %if.else
  %1 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.cond
  call void @parse_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 0)
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp3 = icmp eq i32 %2, 40
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %3 = load i32, i32* @lookahead, align 4
  %cmp5 = icmp eq i32 %3, 40
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @nexttoken()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* @lookahead, align 4
  %cmp6 = icmp eq i32 %4, 59
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  br label %for.end

if.end.8:                                         ; preds = %while.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  call void @nexttoken()
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %head, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent.addr, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %parent11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 1
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %parent11, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %8 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %8, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head, align 8
  %call12 = call %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %9)
  store %struct.SGFNode_t* %call12, %struct.SGFNode_t** %last, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 2
  store %struct.SGFNode_t** %child, %struct.SGFNode_t*** %p.addr, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.15, %if.end.10
  %11 = load i32, i32* @lookahead, align 4
  %cmp14 = icmp eq i32 %11, 40
  br i1 %cmp14, label %while.body.15, label %while.end.17

while.body.15:                                    ; preds = %while.cond.13
  %12 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %last, align 8
  %parent16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %13, i32 0, i32 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent16, align 8
  call void @gametree(%struct.SGFNode_t** %12, %struct.SGFNode_t* %14, i32 115)
  %15 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %p.addr, align 8
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %15, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %16, i32 0, i32 3
  store %struct.SGFNode_t** %next, %struct.SGFNode_t*** %p.addr, align 8
  br label %while.cond.13

while.end.17:                                     ; preds = %while.cond.13
  %17 = load i32, i32* %mode.addr, align 4
  %cmp18 = icmp eq i32 %17, 115
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end.17
  call void @match(i32 41)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @writesgf(%struct.SGFNode_t* %root, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.SGFNode_t*, align 8
  %filename.addr = alloca i8*, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  store %struct.SGFNode_t* %root, %struct.SGFNode_t** %root.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %outfile, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %outfile, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* %5)
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* @sgf_column, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  call void @unparse_game(%struct._IO_FILE* %6, %struct.SGFNode_t* %7, i32 1)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %8)
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  call void @restore_node(%struct.SGFNode_t* %9)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @unparse_game(%struct._IO_FILE* %file, %struct.SGFNode_t* %node, i32 %root) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %root.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %root, i32* %root.addr, align 4
  %0 = load i32, i32* %root.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 40, %struct._IO_FILE* %2)
  %3 = load i32, i32* %root.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @unparse_root(%struct._IO_FILE* %4, %struct.SGFNode_t* %5)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @unparse_node(%struct._IO_FILE* %6, %struct.SGFNode_t* %7)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 2
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.3
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %cmp = icmp ne %struct.SGFNode_t* %10, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 3
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  %cmp4 = icmp eq %struct.SGFNode_t* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @unparse_node(%struct._IO_FILE* %14, %struct.SGFNode_t* %15)
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %16, i32 0, i32 2
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child5, align 8
  store %struct.SGFNode_t* %17, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %while.end
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %cmp7 = icmp ne %struct.SGFNode_t* %18, null
  br i1 %cmp7, label %while.body.8, label %while.end.10

while.body.8:                                     ; preds = %while.cond.6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @unparse_game(%struct._IO_FILE* %19, %struct.SGFNode_t* %20, i32 0)
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %21, i32 0, i32 3
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next9, align 8
  store %struct.SGFNode_t* %22, %struct.SGFNode_t** %node.addr, align 8
  br label %while.cond.6

while.end.10:                                     ; preds = %while.cond.6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 41, %struct._IO_FILE* %23)
  %24 = load i32, i32* %root.addr, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end.10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restore_node(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %tobool = icmp ne %struct.SGFNode_t* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %1, i32 0, i32 0
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  call void @restore_property(%struct.SGFProperty_t* %2)
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  call void @restore_node(%struct.SGFNode_t* %4)
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %next = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 3
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %next, align 8
  call void @restore_node(%struct.SGFNode_t* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal void @match(i32 %expected) #0 {
entry:
  %expected.addr = alloca i32, align 4
  store i32 %expected, i32* %expected.addr, align 4
  %0 = load i32, i32* @lookahead, align 4
  %1 = load i32, i32* %expected.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %expected.addr, align 4
  call void @parse_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @nexttoken()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_error(i8* %msg, i32 %arg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %arg.addr = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %2 = load i32, i32* %arg.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1, i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %n) #0 {
entry:
  %n.addr = alloca %struct.SGFNode_t*, align 8
  %new = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %n, %struct.SGFNode_t** %n.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  call void @node(%struct.SGFNode_t* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %1, 59
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %new, align 8
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 1
  store %struct.SGFNode_t* %2, %struct.SGFNode_t** %parent, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 2
  store %struct.SGFNode_t* %4, %struct.SGFNode_t** %child, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %new, align 8
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %n.addr, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  call void @node(%struct.SGFNode_t* %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  ret %struct.SGFNode_t* %8
}

; Function Attrs: nounwind uwtable
define internal void @node(%struct.SGFNode_t* %n) #0 {
entry:
  %n.addr = alloca %struct.SGFNode_t*, align 8
  %last = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %n, %struct.SGFNode_t** %n.addr, align 8
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %last, align 8
  call void @match(i32 59)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* @lookahead, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 256
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %last, align 8
  %call1 = call %struct.SGFProperty_t* @property(%struct.SGFNode_t* %5, %struct.SGFProperty_t* %6)
  store %struct.SGFProperty_t* %call1, %struct.SGFProperty_t** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SGFProperty_t* @property(%struct.SGFNode_t* %n, %struct.SGFProperty_t* %last) #0 {
entry:
  %n.addr = alloca %struct.SGFNode_t*, align 8
  %last.addr = alloca %struct.SGFProperty_t*, align 8
  %name = alloca [3 x i8], align 1
  %buffer = alloca [4000 x i8], align 16
  store %struct.SGFNode_t* %n, %struct.SGFNode_t** %n.addr, align 8
  store %struct.SGFProperty_t* %last, %struct.SGFProperty_t** %last.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %name, i32 0, i32 0
  call void @propident(i8* %arraydecay, i32 3)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay1 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buffer, i32 0, i32 0
  call void @propvalue(i8* %arraydecay1, i32 4000)
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %name, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [4000 x i8], [4000 x i8]* %buffer, i32 0, i32 0
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %n.addr, align 8
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %last.addr, align 8
  %call = call %struct.SGFProperty_t* @sgfMkProperty(i8* %arraydecay2, i8* %arraydecay3, %struct.SGFNode_t* %0, %struct.SGFProperty_t* %1)
  store %struct.SGFProperty_t* %call, %struct.SGFProperty_t** %last.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %2, 91
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %last.addr, align 8
  ret %struct.SGFProperty_t* %3
}

; Function Attrs: nounwind uwtable
define internal void @propident(i8* %buffer, i32 %size) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @lookahead, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @lookahead, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @parse_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %4 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp ne i32 %4, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* @lookahead, align 4
  %idxprom3 = sext i32 %5 to i64
  %call4 = call i16** @__ctype_b_loc() #9
  %6 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom3
  %7 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %and7 = and i32 %conv6, 1024
  %tobool8 = icmp ne i32 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* @lookahead, align 4
  %idxprom9 = sext i32 %9 to i64
  %call10 = call i16** @__ctype_b_loc() #9
  %10 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %10, i64 %idxprom9
  %11 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %11 to i32
  %and13 = and i32 %conv12, 256
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %while.body
  %12 = load i32, i32* %size.addr, align 4
  %cmp15 = icmp sgt i32 %12, 1
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* @lookahead, align 4
  %conv18 = trunc i32 %13 to i8
  %14 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %conv18, i8* %14, align 1
  %15 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true, %while.body
  call void @nexttoken()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i8*, i8** %buffer.addr, align 8
  store i8 0, i8* %16, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propvalue(i8* %buffer, i32 %size) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %p, align 8
  call void @match(i32 91)
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %entry
  %1 = load i32, i32* @lookahead, align 4
  %cmp = icmp ne i32 %1, 93
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* @lookahead, align 4
  %cmp1 = icmp ne i32 %2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* @lookahead, align 4
  %cmp2 = icmp eq i32 %4, 92
  br i1 %cmp2, label %if.then, label %if.end.18

if.then:                                          ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call, i32* @lookahead, align 4
  %6 = load i32, i32* @lookahead, align 4
  %cmp3 = icmp eq i32 %6, 13
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call5 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call5, i32* @lookahead, align 4
  %8 = load i32, i32* @lookahead, align 4
  %cmp6 = icmp eq i32 %8, 10
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call8, i32* @lookahead, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* @lookahead, align 4
  %cmp9 = icmp eq i32 %10, 10
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call11, i32* @lookahead, align 4
  %12 = load i32, i32* @lookahead, align 4
  %cmp12 = icmp eq i32 %12, 13
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call14 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call14, i32* @lookahead, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %while.body
  %14 = load i32, i32* %size.addr, align 4
  %cmp19 = icmp sgt i32 %14, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %15 = load i32, i32* @lookahead, align 4
  %conv = trunc i32 %15 to i8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %16, align 1
  %17 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %size.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %call22 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  store i32 %call22, i32* @lookahead, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @match(i32 93)
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr23, i8** %p, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.32, %while.end
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %buffer.addr, align 8
  %cmp25 = icmp ugt i8* %20, %21
  br i1 %cmp25, label %land.rhs.27, label %land.end.31

land.rhs.27:                                      ; preds = %while.cond.24
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv28 = sext i8 %23 to i32
  %idxprom = sext i32 %conv28 to i64
  %call29 = call i16** @__ctype_b_loc() #9
  %24 = load i16*, i16** %call29, align 8
  %arrayidx = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2
  %conv30 = zext i16 %25 to i32
  %and = and i32 %conv30, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.27, %while.cond.24
  %26 = phi i1 [ false, %while.cond.24 ], [ %tobool, %land.rhs.27 ]
  br i1 %26, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %land.end.31
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr33, i8** %p, align 8
  br label %while.cond.24

while.end.34:                                     ; preds = %land.end.31
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  store i8 0, i8* %incdec.ptr35, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sgf_putc(i32 %c, %struct._IO_FILE* %file) #0 {
entry:
  %c.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @sgf_column, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.10

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputc(i32 %2, %struct._IO_FILE* %3)
  %4 = load i32, i32* %c.addr, align 4
  %cmp2 = icmp eq i32 %4, 10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* @sgf_column, align 4
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* @sgf_column, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @sgf_column, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %6 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %6, 93
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %if.end.4
  %7 = load i32, i32* @sgf_column, align 4
  %cmp7 = icmp sgt i32 %7, 60
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  store i32 0, i32* @sgf_column, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.8, %land.lhs.true.6, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unparse_root(%struct._IO_FILE* %file, %struct.SGFNode_t* %node) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 59, %struct._IO_FILE* %0)
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %call = call i32 @sgfHasProperty(%struct.SGFNode_t* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %2, %struct.SGFNode_t* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load i32, i32* @sgf_column, align 4
  %add = add nsw i32 %5, 5
  store i32 %add, i32* @sgf_column, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %6, %struct.SGFNode_t* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %9, %struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %12, %struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %15, %struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %18, %struct.SGFNode_t* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %20, %struct.SGFNode_t* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %23, %struct.SGFNode_t* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %25, %struct.SGFNode_t* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %28, %struct.SGFNode_t* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %30, %struct.SGFNode_t* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %33 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintRemainingProperties(%struct._IO_FILE* %32, %struct.SGFNode_t* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unparse_node(%struct._IO_FILE* %file, %struct.SGFNode_t* %node) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 59, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %1, %struct.SGFNode_t* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %3, %struct.SGFNode_t* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %5, %struct.SGFNode_t* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %7, %struct.SGFNode_t* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgfPrintRemainingProperties(%struct._IO_FILE* %9, %struct.SGFNode_t* %10)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sgfHasProperty(%struct.SGFNode_t* %node, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  %nam = alloca i16, align 2
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 0
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %5, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %8 to i32
  %9 = load i16, i16* %nam, align 2
  %conv6 = sext i16 %9 to i32
  %cmp = icmp eq i32 %conv5, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 0
  %11 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %11, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @sgfPrintCharProperty(%struct._IO_FILE* %file, %struct.SGFNode_t* %node, i8* %name) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %nam = alloca i16, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %6 = load i16, i16* %nam, align 2
  call void @sgf_print_property(%struct._IO_FILE* %4, %struct.SGFNode_t* %5, i16 signext %6, i32 0)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @sgfPrintCommentProperty(%struct._IO_FILE* %file, %struct.SGFNode_t* %node, i8* %name) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i8*, align 8
  %nam = alloca i16, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %nam, align 2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %6 = load i16, i16* %nam, align 2
  call void @sgf_print_property(%struct._IO_FILE* %4, %struct.SGFNode_t* %5, i16 signext %6, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sgfPrintRemainingProperties(%struct._IO_FILE* %file, %struct.SGFNode_t* %node) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %prop = alloca %struct.SGFProperty_t*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 1
  %4 = load i16, i16* %name, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name2 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 1
  %8 = load i16, i16* %name2, align 2
  call void @sgf_print_property(%struct._IO_FILE* %5, %struct.SGFNode_t* %6, i16 signext %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %9, i32 0, i32 0
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %10, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sgf_print_property(%struct._IO_FILE* %file, %struct.SGFNode_t* %node, i16 signext %name, i32 %is_comment) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %name.addr = alloca i16, align 2
  %is_comment.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i16 %name, i16* %name.addr, align 2
  store i32 %is_comment, i32* %is_comment.addr, align 4
  store i32 0, i32* %n, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name1 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 1
  %4 = load i16, i16* %name1, align 2
  %conv = sext i16 %4 to i32
  %5 = load i16, i16* %name.addr, align 2
  %conv2 = sext i16 %5 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name4 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %6, i32 0, i32 1
  %7 = load i16, i16* %name4, align 2
  %conv5 = sext i16 %7 to i32
  %or = or i32 %conv5, 32
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, i16* %name4, align 2
  %8 = load i32, i32* %n, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load i16, i16* %name.addr, align 2
  call void @sgf_print_name(%struct._IO_FILE* %9, i16 signext %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 91, %struct._IO_FILE* %11)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %is_comment.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %13)
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 93, %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 91, %struct._IO_FILE* %15)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.9
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %16, i32 0, i32 2
  %17 = load i8*, i8** %value, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_puts(i8* %17, %struct._IO_FILE* %18)
  %19 = load i32, i32* %n, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %20, i32 0, i32 0
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %21, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %n, align 4
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 93, %struct._IO_FILE* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.end
  %24 = load i16, i16* %name.addr, align 2
  %conv19 = sext i16 %24 to i32
  %cmp20 = icmp eq i32 %conv19, 16961
  br i1 %cmp20, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %25 = load i16, i16* %name.addr, align 2
  %conv22 = sext i16 %25 to i32
  %cmp23 = icmp eq i32 %conv22, 22337
  br i1 %cmp23, label %if.then.33, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %26 = load i16, i16* %name.addr, align 2
  %conv26 = sext i16 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 17729
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %27 = load i32, i32* %is_comment.addr, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %lor.lhs.false.29
  %28 = load i32, i32* %n, align 4
  %cmp31 = icmp sgt i32 %28, 1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true, %lor.lhs.false.25, %lor.lhs.false, %if.end.18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true, %lor.lhs.false.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sgf_print_name(%struct._IO_FILE* %file, i16 signext %name) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i16, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i16 %name, i16* %name.addr, align 2
  %0 = load i16, i16* %name.addr, align 2
  %conv = sext i16 %0 to i32
  %and = and i32 %conv, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 %and, %struct._IO_FILE* %1)
  %2 = load i16, i16* %name.addr, align 2
  %conv1 = sext i16 %2 to i32
  %shr = ashr i32 %conv1, 8
  %cmp = icmp ne i32 %shr, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i16, i16* %name.addr, align 2
  %conv3 = sext i16 %3 to i32
  %shr4 = ashr i32 %conv3, 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @sgf_putc(i32 %shr4, %struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sgf_puts(i8* %s, %struct._IO_FILE* %file) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 91
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 93
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputc(i32 92, %struct._IO_FILE* %8)
  %9 = load i32, i32* @sgf_column, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @sgf_column, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 @fputc(i32 %conv9, %struct._IO_FILE* %12)
  %13 = load i32, i32* @sgf_column, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* @sgf_column, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @restore_property(%struct.SGFProperty_t* %prop) #0 {
entry:
  %prop.addr = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFProperty_t* %prop, %struct.SGFProperty_t** %prop.addr, align 8
  %0 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %1, i32 0, i32 0
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  call void @restore_property(%struct.SGFProperty_t* %2)
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop.addr, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 1
  %4 = load i16, i16* %name, align 2
  %conv = sext i16 %4 to i32
  %and = and i32 %conv, -33
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %name, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
