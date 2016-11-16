; ModuleID = './lib/routines.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot open file `%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot create file `%s'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot open a pipe on `%s'\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Dumping file `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Unlinking file `%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s-fopen (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s-popen (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @string_to_array(i8* %arr, i8* %string) #0 {
entry:
  %arr.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %arr, i8** %arr.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %arr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %c, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.5, %for.end
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %for.body.2, label %for.end.6

for.body.2:                                       ; preds = %for.cond.1
  %6 = load i8*, i8** %string.addr, align 8
  %7 = load i8, i8* %6, align 1
  %idxprom3 = zext i8 %7 to i64
  %8 = load i8*, i8** %arr.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  store i8 1, i8* %arrayidx4, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.body.2
  %9 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %for.cond.1

for.end.6:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ustrccat(i8* %string, i8 zeroext %c) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %len = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i8, i8* %c.addr, align 1
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8 %1, i8* %add.ptr, align 1
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i32, i32* %len, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 1
  store i8 0, i8* %add.ptr3, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @is_strlower(i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define i8* @strnlower(i8* %string, i64 %len) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call i8* @_strncpylc(i8* %0, i8* %1, i64 %2)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @_strncpylc(i8* %dst, i8* %src, i64 %len) #3 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 @tolower(i32 %conv) #8
  %conv1 = trunc i32 %call to i8
  %5 = load i64, i64* %i, align 8
  %6 = load i8*, i8** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 %conv1, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %len.addr, align 8
  %9 = load i8*, i8** %dst.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %8
  store i8 0, i8* %arrayidx3, align 1
  %10 = load i8*, i8** %dst.addr, align 8
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define i8* @strlower(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %call1 = call i8* @_strncpylc(i8* %0, i8* %1, i64 %call)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @strcpylc(i8* %dst, i8* %src) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %call1 = call i8* @_strncpylc(i8* %0, i8* %1, i64 %call)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i32 @strcnt(i8* %s, i8 zeroext %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %res = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 0, i32* %res, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8, i8* %c.addr, align 1
  %conv1 = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %res, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %res, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i8* @strsub(i8* %dest, i8* %string, i32 %start, i32 %length) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %end = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call i8* @stpncpy(i8* %0, i8* %add.ptr, i64 %conv) #8
  store i8* %call, i8** %end, align 8
  %4 = load i8*, i8** %end, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %end, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @stpncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xfopen(i8* %filename, i8* %rights, i8* %format) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %rights.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %rights, i8** %rights.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8*, i8** %rights.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %call = call %struct._IO_FILE* @_xfopen(i8* %0, i8* %1, i8* %2)
  ret %struct._IO_FILE* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._IO_FILE* @_xfopen(i8* %filename, i8* %rights, i8* %format) #3 {
entry:
  %filename.addr = alloca i8*, align 8
  %rights.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %res = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %rights, i8** %rights.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %rights.addr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @quotearg(i8* %3)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %2, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i8*, i8** %rights.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* %5)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %res, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %do.end
  %call5 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call5, align 4
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call6 = call i8* @quotearg(i8* %9)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* %8, i8* %call6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %do.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  ret %struct._IO_FILE* %10
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xrfopen(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #8
  %call1 = call %struct._IO_FILE* @_xfopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %call)
  ret %struct._IO_FILE* %call1
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xwfopen(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #8
  %call1 = call %struct._IO_FILE* @_xfopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %call)
  ret %struct._IO_FILE* %call1
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xpopen(i8* %filename, i8* %rights, i8* %format) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %rights.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %rights, i8** %rights.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i8*, i8** %rights.addr, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %call = call %struct._IO_FILE* @_xpopen(i8* %0, i8* %1, i8* %2)
  ret %struct._IO_FILE* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._IO_FILE* @_xpopen(i8* %filename, i8* %rights, i8* %format) #3 {
entry:
  %filename.addr = alloca i8*, align 8
  %rights.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %res = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %rights, i8** %rights.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %rights.addr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i8*, i8** %rights.addr, align 8
  %call1 = call %struct._IO_FILE* @popen(i8* %4, i8* %5)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %res, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %do.end
  %call4 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call4, align 4
  %8 = load i8*, i8** %format.addr, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @quotearg(i8* %9)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* %8, i8* %call5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %do.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  ret %struct._IO_FILE* %10
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xrpopen(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #8
  %call1 = call %struct._IO_FILE* @_xpopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* %call)
  ret %struct._IO_FILE* %call1
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @xwpopen(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #8
  %call1 = call %struct._IO_FILE* @_xpopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %call)
  ret %struct._IO_FILE* %call1
}

; Function Attrs: nounwind uwtable
define void @streams_copy(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @_streams_copy(%struct._IO_FILE* %0, %struct._IO_FILE* %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_streams_copy(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #3 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %read_length = alloca i64, align 8
  %buf = alloca [8192 x i8], align 16
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %0)
  store i64 %call, i64* %read_length, align 8
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %1 = load i64, i64* %read_length, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call2 = call i64 @fwrite(i8* %arraydecay1, i64 1, i64 %1, %struct._IO_FILE* %2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @stream_dump(%struct._IO_FILE* %stream, i8* %filename) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 192, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @xrfopen(i8* %3)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @_streams_copy(%struct._IO_FILE* %4, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %6)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind uwtable
define void @unlink2(i8* %dummy, i8* %filename) #0 {
entry:
  %dummy.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 192, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 @unlink(i8* %3) #8
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: nounwind
declare i32 @tolower(i32) #4

declare i8* @quotearg(i8*) #5

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare void @error(i32, i32, i8*, ...) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct._IO_FILE* @popen(i8*, i8*) #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #5

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
