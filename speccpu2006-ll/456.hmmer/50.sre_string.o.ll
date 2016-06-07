; ModuleID = 'sre_string.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"malloc of %ld bytes failed: file %s line %d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"realloc of %ld bytes failed: file %s line %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sre_string.c\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Strdup(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %new = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #5
  store i8* %call1, i8** %new, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i8*, i8** %new, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %call5 = call i8* @strcpy(i8* %2, i8* %3) #5
  %4 = load i8*, i8** %new, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @StringChop(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %call4 = call i16** @__ctype_b_loc() #7
  %5 = load i16*, i16** %call4, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i64 %idxprom3
  %6 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom7 = sext i32 %add to i64
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  store i8 0, i8* %arrayidx8, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @Strinsert(i8* %s1, i8 signext %c, i32 %pos) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %pos.addr = alloca i32, align 4
  %oldc = alloca i8, align 1
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %c.addr, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %oldc, align 1
  %5 = load i8, i8* %c.addr, align 1
  %6 = load i8*, i8** %s, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8, i8* %oldc, align 1
  store i8 %7, i8* %c.addr, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %s, align 8
  store i8 0, i8* %9, align 1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @Strdelete(i8* %s1, i32 %pos) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %pos.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr1, align 1
  %6 = load i8*, i8** %s, align 8
  store i8 %5, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @s2lower(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @sre_tolower(i32 %conv2)
  %conv3 = trunc i32 %call to i8
  %4 = load i8*, i8** %s.addr, align 8
  store i8 %conv3, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @sre_tolower(i32) #4

; Function Attrs: nounwind uwtable
define void @s2upper(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @sre_toupper(i32 %conv2)
  %conv3 = trunc i32 %call to i8
  %4 = load i8*, i8** %s.addr, align 8
  store i8 %conv3, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @sre_toupper(i32) #4

; Function Attrs: nounwind uwtable
define i8* @sre_malloc(i8* %file, i32 %line, i64 %size) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #5
  store i8* %call, i8** %ptr, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i64 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %ptr, align 8
  ret i8* %4
}

declare void @Die(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i8* @sre_realloc(i8* %file, i32 %line, i8* %p, i64 %size) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #5
  store i8* %call, i8** %ptr, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i64 %2, i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %ptr, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @Free2DArray(i8** %p, i32 %dim1) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %dim1.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i32 %dim1, i32* %dim1.addr, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %dim1.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i8**, i8*** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx5, align 8
  call void @free(i8* %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* %11) #5
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Free3DArray(i8*** %p, i32 %dim1, i32 %dim2) #0 {
entry:
  %p.addr = alloca i8***, align 8
  %dim1.addr = alloca i32, align 4
  %dim2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8*** %p, i8**** %p.addr, align 8
  store i32 %dim1, i32* %dim1.addr, align 4
  store i32 %dim2, i32* %dim2.addr, align 4
  %0 = load i8***, i8**** %p.addr, align 8
  %cmp = icmp ne i8*** %0, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %dim1.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8***, i8**** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %4, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  %cmp2 = icmp ne i8** %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then.3
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %dim2.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8***, i8**** %p.addr, align 8
  %arrayidx9 = getelementptr inbounds i8**, i8*** %10, i64 %idxprom8
  %11 = load i8**, i8*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx10, align 8
  %cmp11 = icmp ne i8* %12, null
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i8***, i8**** %p.addr, align 8
  %arrayidx15 = getelementptr inbounds i8**, i8*** %15, i64 %idxprom14
  %16 = load i8**, i8*** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %16, i64 %idxprom13
  %17 = load i8*, i8** %arrayidx16, align 8
  call void @free(i8* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i8***, i8**** %p.addr, align 8
  %arrayidx18 = getelementptr inbounds i8**, i8*** %20, i64 %idxprom17
  %21 = load i8**, i8*** %arrayidx18, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* %22) #5
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %for.body
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %23 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %23, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %24 = load i8***, i8**** %p.addr, align 8
  %25 = bitcast i8*** %24 to i8*
  call void @free(i8* %25) #5
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @RandomSequence(i8* %alphabet, float* %p, i32 %n, i32 %len) #0 {
entry:
  %alphabet.addr = alloca i8*, align 8
  %p.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %x = alloca i32, align 4
  store i8* %alphabet, i8** %alphabet.addr, align 8
  store float* %p, float** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 199, i64 %mul)
  store i8* %call, i8** %s, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float*, float** %p.addr, align 8
  %4 = load i32, i32* %n.addr, align 4
  %call2 = call i32 @FChoose(float* %3, i32 %4)
  %idxprom = sext i32 %call2 to i64
  %5 = load i8*, i8** %alphabet.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8*, i8** %s, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  store i8 %6, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i8*, i8** %s, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  %12 = load i8*, i8** %s, align 8
  ret i8* %12
}

declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind uwtable
define i8* @sre_fgets(i8** %buf, i32* %n, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %n.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8** %buf, i8*** %buf.addr, align 8
  store i32* %n, i32** %n.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load i32*, i32** %n.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 253, i64 128)
  %2 = load i8**, i8*** %buf.addr, align 8
  store i8* %call, i8** %2, align 8
  %3 = load i32*, i32** %n.addr, align 8
  store i32 128, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8**, i8*** %buf.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32*, i32** %n.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i8* @fgets(i8* %5, i32 %7, %struct._IO_FILE* %8)
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @feof(%struct._IO_FILE* %9) #5
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %10 = load i8**, i8*** %buf.addr, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %12 = load i8**, i8*** %buf.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call8 = call i64 @strlen(i8* %13) #6
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %len, align 4
  %14 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load i8**, i8*** %buf.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  %18 = load i8**, i8*** %buf.addr, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %20 = load i32*, i32** %n.addr, align 8
  %21 = load i32, i32* %20, align 4
  %sub14 = sub nsw i32 %21, 1
  store i32 %sub14, i32* %pos, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.13, %if.end.31
  %22 = load i32*, i32** %n.addr, align 8
  %23 = load i32, i32* %22, align 4
  %add = add nsw i32 %23, 128
  store i32 %add, i32* %22, align 4
  %24 = load i8**, i8*** %buf.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i32*, i32** %n.addr, align 8
  %27 = load i32, i32* %26, align 4
  %conv15 = sext i32 %27 to i64
  %mul = mul i64 1, %conv15
  %call16 = call i8* @sre_realloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 283, i8* %25, i64 %mul)
  %28 = load i8**, i8*** %buf.addr, align 8
  store i8* %call16, i8** %28, align 8
  %29 = load i8**, i8*** %buf.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %32 = load i8*, i8** %s, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i8* @fgets(i8* %32, i32 129, %struct._IO_FILE* %33)
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.body
  %34 = load i8**, i8*** %buf.addr, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %retval
  br label %return

if.end.21:                                        ; preds = %while.body
  %36 = load i8*, i8** %s, align 8
  %call22 = call i64 @strlen(i8* %36) #6
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %len, align 4
  %37 = load i32, i32* %len, align 4
  %sub24 = sub nsw i32 %37, 1
  %idxprom25 = sext i32 %sub24 to i64
  %38 = load i8*, i8** %s, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %38, i64 %idxprom25
  %39 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %39 to i32
  %cmp28 = icmp eq i32 %conv27, 10
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.21
  %40 = load i8**, i8*** %buf.addr, align 8
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.21
  %42 = load i32, i32* %pos, align 4
  %add32 = add nsw i32 %42, 128
  store i32 %add32, i32* %pos, align 4
  br label %while.body

return:                                           ; preds = %if.then.30, %if.then.20, %if.then.12, %if.then.6, %if.then.3
  %43 = load i8*, i8** %retval
  ret i8* %43
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @sre_strcat(i8** %dest, i32 %ldest, i8* %src, i32 %lsrc) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8**, align 8
  %ldest.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %lsrc.addr = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  store i8** %dest, i8*** %dest.addr, align 8
  store i32 %ldest, i32* %ldest.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %lsrc, i32* %lsrc.addr, align 4
  %0 = load i32, i32* %ldest.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %dest.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i8**, i8*** %dest.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %call = call i64 @strlen(i8* %4) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %len1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ldest.addr, align 4
  store i32 %5, i32* %len1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %6 = load i32, i32* %lsrc.addr, align 4
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.4, label %if.else.13

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %src.addr, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.then.4
  br label %cond.end.10

cond.false.8:                                     ; preds = %if.then.4
  %8 = load i8*, i8** %src.addr, align 8
  %call9 = call i64 @strlen(i8* %8) #6
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i64 [ 0, %cond.true.7 ], [ %call9, %cond.false.8 ]
  %conv12 = trunc i64 %cond11 to i32
  store i32 %conv12, i32* %len2, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  %9 = load i32, i32* %lsrc.addr, align 4
  store i32 %9, i32* %len2, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %cond.end.10
  %10 = load i32, i32* %len2, align 4
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  %11 = load i32, i32* %len1, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %12 = load i8**, i8*** %dest.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %cmp19 = icmp eq i8* %13, null
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.end.18
  %14 = load i32, i32* %len2, align 4
  %add = add nsw i32 %14, 1
  %conv22 = sext i32 %add to i64
  %mul = mul i64 1, %conv22
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 344, i64 %mul)
  %15 = load i8**, i8*** %dest.addr, align 8
  store i8* %call23, i8** %15, align 8
  br label %if.end.30

if.else.24:                                       ; preds = %if.end.18
  %16 = load i8**, i8*** %dest.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %len1, align 4
  %19 = load i32, i32* %len2, align 4
  %add25 = add nsw i32 %18, %19
  %add26 = add nsw i32 %add25, 1
  %conv27 = sext i32 %add26 to i64
  %mul28 = mul i64 1, %conv27
  %call29 = call i8* @sre_realloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 345, i8* %17, i64 %mul28)
  %20 = load i8**, i8*** %dest.addr, align 8
  store i8* %call29, i8** %20, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.24, %if.then.21
  %21 = load i8**, i8*** %dest.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %len1, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load i8*, i8** %src.addr, align 8
  %25 = load i32, i32* %len2, align 4
  %add31 = add nsw i32 %25, 1
  %conv32 = sext i32 %add31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %24, i64 %conv32, i32 1, i1 false)
  %26 = load i32, i32* %len1, align 4
  %27 = load i32, i32* %len2, align 4
  %add33 = add nsw i32 %26, %27
  store i32 %add33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.17
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i8* @sre_strtok(i8** %s, i8* %delim, i32* %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8**, align 8
  %delim.addr = alloca i8*, align 8
  %len.addr = alloca i32*, align 8
  %begin = alloca i8*, align 8
  %end = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8** %s, i8*** %s.addr, align 8
  store i8* %delim, i8** %delim.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  %0 = load i8**, i8*** %s.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %begin, align 8
  %2 = load i8*, i8** %begin, align 8
  %3 = load i8*, i8** %delim.addr, align 8
  %call = call i64 @strspn(i8* %2, i8* %3) #6
  %4 = load i8*, i8** %begin, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call
  store i8* %add.ptr, i8** %begin, align 8
  %5 = load i8*, i8** %begin, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %begin, align 8
  %8 = load i8*, i8** %delim.addr, align 8
  %call1 = call i64 @strcspn(i8* %7, i8* %8) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %n, align 4
  %9 = load i8*, i8** %begin, align 8
  %10 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr2, i8** %end, align 8
  %11 = load i8*, i8** %end, align 8
  %12 = load i8, i8* %11, align 1
  %conv3 = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv3, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %13 = load i8*, i8** %end, align 8
  %14 = load i8**, i8*** %s.addr, align 8
  store i8* %13, i8** %14, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %15 = load i8*, i8** %end, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %end, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8**, i8*** %s.addr, align 8
  store i8* %add.ptr6, i8** %17, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %18 = load i32*, i32** %len.addr, align 8
  %cmp8 = icmp ne i32* %18, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %19 = load i32, i32* %n, align 4
  %20 = load i32*, i32** %len.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  %21 = load i8*, i8** %begin, align 8
  store i8* %21, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @sre_strdup(i8* %s, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %new = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %3, 1
  %conv4 = sext i32 %add to i64
  %mul = mul i64 1, %conv4
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 442, i64 %mul)
  store i8* %call5, i8** %new, align 8
  %4 = load i8*, i8** %new, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %call6 = call i8* @strcpy(i8* %4, i8* %5) #5
  %6 = load i8*, i8** %new, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @sre_strncpy(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i8* @strncpy(i8* %0, i8* %1, i64 %conv) #5
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %5 = load i8*, i8** %s1.addr, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @IsBlankline(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
