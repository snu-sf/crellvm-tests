; ModuleID = './MultiSource.Applications.d/4.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.AbstractVec = type { i32, i32, i8**, [3 x i8*] }
%struct.AbstractStack = type { i8**, i8**, i8**, [8 x i8*] }
%struct.hash_fns_t = type { i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)*, [2 x i8*] }

@prime2 = global [29 x i32] [i32 1, i32 3, i32 7, i32 13, i32 31, i32 61, i32 127, i32 251, i32 509, i32 1021, i32 2039, i32 4093, i32 8191, i32 16381, i32 32749, i32 65521, i32 131071, i32 262139, i32 524287, i32 1048573, i32 2097143, i32 4194301, i32 8388593, i32 16777213, i32 33554393, i32 67108859, i32 134217689, i32 268435399, i32 536870909], align 16
@verbose_level = global i32 0, align 4
@debug_level = global i32 0, align 4
@test_level = global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fail: %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i8* @d_dup_pathname_str(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %e = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %e, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %e, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %e, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.2
  %5 = load i8*, i8** %e, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %e, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %e, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %e, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8*, i8** %e, align 8
  %call9 = call i8* @dup_str(i8* %add.ptr, i8* %12)
  store i8* %call9, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8*, i8** %s.addr, align 8
  %call10 = call i64 @strlen(i8* %15) #7
  %add.ptr11 = getelementptr inbounds i8, i8* %14, i64 %call10
  %call12 = call i8* @dup_str(i8* %13, i8* %add.ptr11)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %while.end, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @dup_str(i8* %s, i8* %e) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %ss = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %0 = load i8*, i8** %e.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %l, align 4
  %2 = load i32, i32* %l, align 4
  %add = add nsw i32 %2, 1
  %conv1 = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv1) #3
  store i8* %call, i8** %ss, align 8
  %3 = load i8*, i8** %ss, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %l, align 4
  %conv2 = sext i32 %5 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %conv2, i32 1, i1 false)
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %ss, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %8 = load i8*, i8** %ss, align 8
  ret i8* %8
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @strhashl(i8* %s, i32 %l) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %g = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %h, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %h, align 4
  %shl = shl i32 %2, 4
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %add = add i32 %shl, %conv
  store i32 %add, i32* %h, align 4
  %5 = load i32, i32* %h, align 4
  %and = and i32 %5, -268435456
  store i32 %and, i32* %g, align 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %h, align 4
  %7 = load i32, i32* %g, align 4
  %shr = lshr i32 %7, 24
  %xor = xor i32 %6, %shr
  %8 = load i32, i32* %g, align 4
  %xor1 = xor i32 %xor, %8
  store i32 %xor1, i32* %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %h, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @buf_read(i8* %pathname, i8** %buf, i32* %len) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %buf.addr = alloca i8**, align 8
  %len.addr = alloca i32*, align 8
  %sb = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  %0 = load i8**, i8*** %buf.addr, align 8
  store i8* null, i8** %0, align 8
  %1 = load i32*, i32** %len.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %pathname.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %2, i32 0)
  store i32 %call, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.stat* %sb to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 144, i32 8, i1 false)
  %5 = load i32, i32* %fd, align 4
  %call1 = call i32 @fstat(i32 %5, %struct.stat* %sb) #3
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %6 = load i64, i64* %st_size, align 8
  %conv = trunc i64 %6 to i32
  %7 = load i32*, i32** %len.addr, align 8
  store i32 %conv, i32* %7, align 4
  %8 = load i32*, i32** %len.addr, align 8
  %9 = load i32, i32* %8, align 4
  %add = add nsw i32 %9, 2
  %conv2 = sext i32 %add to i64
  %call3 = call noalias i8* @malloc(i64 %conv2) #3
  %10 = load i8**, i8*** %buf.addr, align 8
  store i8* %call3, i8** %10, align 8
  %11 = load i32*, i32** %len.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** %buf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %15 = load i32*, i32** %len.addr, align 8
  %16 = load i32, i32* %15, align 4
  %add4 = add nsw i32 %16, 1
  %idxprom5 = sext i32 %add4 to i64
  %17 = load i8**, i8*** %buf.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %18, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  %19 = load i32, i32* %fd, align 4
  %20 = load i8**, i8*** %buf.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i32*, i32** %len.addr, align 8
  %23 = load i32, i32* %22, align 4
  %conv7 = sext i32 %23 to i64
  %call8 = call i64 @read(i32 %19, i8* %21, i64 %conv7)
  %24 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %24)
  %25 = load i32*, i32** %len.addr, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

declare i64 @read(i32, i8*, i64) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define i8* @sbuf_read(i8* %pathname) #0 {
entry:
  %retval = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %pathname, i8** %pathname.addr, align 8
  %0 = load i8*, i8** %pathname.addr, align 8
  %call = call i32 @buf_read(i8* %0, i8** %buf, i32* %len)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define void @d_fail(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %nstr = alloca [256 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %nstr, i32 0, i32 0
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay2, i64 255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %0) #3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %nstr, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call5 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %arraydecay3, %struct.__va_list_tag* %arraydecay4)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define void @vec_add_internal(i8* %v, i8* %elem) #0 {
entry:
  %v.addr = alloca i8*, align 8
  %elem.addr = alloca i8*, align 8
  %av = alloca %struct.AbstractVec*, align 8
  %l = alloca i32, align 4
  %nl = alloca i32, align 4
  store i8* %v, i8** %v.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  %0 = load i8*, i8** %v.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %av, align 8
  %2 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %e = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %e, i32 0, i32 0
  %5 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v1 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %5, i32 0, i32 2
  store i8** %arraydecay, i8*** %v1, align 8
  br label %if.end.31

if.else:                                          ; preds = %entry
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 2
  %7 = load i8**, i8*** %v2, align 8
  %8 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %e3 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %8, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %e3, i32 0, i32 0
  %cmp = icmp eq i8** %7, %arraydecay4
  br i1 %cmp, label %if.then.5, label %if.else.10

if.then.5:                                        ; preds = %if.else
  %call = call noalias i8* @malloc(i64 64) #3
  %9 = bitcast i8* %call to i8**
  %10 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v6 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %10, i32 0, i32 2
  store i8** %9, i8*** %v6, align 8
  %11 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v7 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %11, i32 0, i32 2
  %12 = load i8**, i8*** %v7, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %e8 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %14, i32 0, i32 3
  %15 = bitcast [3 x i8*]* %e8 to i8*
  %16 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n9 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %16, i32 0, i32 0
  %17 = load i32, i32* %n9, align 4
  %conv = zext i32 %17 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %mul, i32 8, i1 false)
  br label %if.end.30

if.else.10:                                       ; preds = %if.else
  %18 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n11 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %18, i32 0, i32 0
  %19 = load i32, i32* %n11, align 4
  %and = and i32 %19, 7
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then.14, label %if.end.29

if.then.14:                                       ; preds = %if.else.10
  %20 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n15 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %20, i32 0, i32 0
  %21 = load i32, i32* %n15, align 4
  store i32 %21, i32* %l, align 4
  store i32 4, i32* %nl, align 4
  %22 = load i32, i32* %l, align 4
  %shr = ashr i32 %22, 3
  store i32 %shr, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.14
  %23 = load i32, i32* %l, align 4
  %and16 = and i32 %23, 1
  %tobool17 = icmp ne i32 %and16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %l, align 4
  %shr18 = ashr i32 %24, 1
  store i32 %shr18, i32* %l, align 4
  %25 = load i32, i32* %nl, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %nl, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %l, align 4
  %shr19 = ashr i32 %26, 1
  store i32 %shr19, i32* %l, align 4
  %27 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n20 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %27, i32 0, i32 0
  %28 = load i32, i32* %n20, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %while.end
  %29 = load i32, i32* %l, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false, %while.end
  %30 = load i32, i32* %nl, align 4
  %shl = shl i32 1, %30
  store i32 %shl, i32* %nl, align 4
  %31 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v24 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %31, i32 0, i32 2
  %32 = load i8**, i8*** %v24, align 8
  %33 = bitcast i8** %32 to i8*
  %34 = load i32, i32* %nl, align 4
  %conv25 = sext i32 %34 to i64
  %mul26 = mul i64 %conv25, 8
  %call27 = call i8* @realloc(i8* %33, i64 %mul26) #3
  %35 = bitcast i8* %call27 to i8**
  %36 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v28 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %36, i32 0, i32 2
  store i8** %35, i8*** %v28, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %lor.lhs.false
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.else.10
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.5
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then
  %37 = load i8*, i8** %elem.addr, align 8
  %38 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n32 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %38, i32 0, i32 0
  %39 = load i32, i32* %n32, align 4
  %inc33 = add i32 %39, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom = zext i32 %39 to i64
  %40 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v34 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %40, i32 0, i32 2
  %41 = load i8**, i8*** %v34, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  store i8* %37, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @vec_eq(i8* %v, i8* %vv) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i8*, align 8
  %vv.addr = alloca i8*, align 8
  %av = alloca %struct.AbstractVec*, align 8
  %avv = alloca %struct.AbstractVec*, align 8
  %i = alloca i32, align 4
  store i8* %v, i8** %v.addr, align 8
  store i8* %vv, i8** %vv.addr, align 8
  %0 = load i8*, i8** %v.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %av, align 8
  %2 = load i8*, i8** %vv.addr, align 8
  %3 = bitcast i8* %2 to %struct.AbstractVec*
  store %struct.AbstractVec* %3, %struct.AbstractVec** %avv, align 8
  %4 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %4, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %avv, align 8
  %n1 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 0
  %7 = load i32, i32* %n1, align 4
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %n2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %9, i32 0, i32 0
  %10 = load i32, i32* %n2, align 4
  %cmp3 = icmp ult i32 %8, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.AbstractVec*, %struct.AbstractVec** %av, align 8
  %v4 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %12, i32 0, i32 2
  %13 = load i8**, i8*** %v4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %15 to i64
  %16 = load %struct.AbstractVec*, %struct.AbstractVec** %avv, align 8
  %v6 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %16, i32 0, i32 2
  %17 = load i8**, i8*** %v6, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %17, i64 %idxprom5
  %18 = load i8*, i8** %arrayidx7, align 8
  %cmp8 = icmp ne i8* %14, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i8* @stack_push_internal(%struct.AbstractStack* %s, i8* %elem) #0 {
entry:
  %s.addr = alloca %struct.AbstractStack*, align 8
  %elem.addr = alloca i8*, align 8
  %n = alloca i32, align 4
  store %struct.AbstractStack* %s, %struct.AbstractStack** %s.addr, align 8
  store i8* %elem, i8** %elem.addr, align 8
  %0 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %0, i32 0, i32 2
  %1 = load i8**, i8*** %cur, align 8
  %2 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %start = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %2, i32 0, i32 0
  %3 = load i8**, i8*** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %n, align 4
  %4 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %start1 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %4, i32 0, i32 0
  %5 = load i8**, i8*** %start1, align 8
  %6 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %initial = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8 x i8*], [8 x i8*]* %initial, i32 0, i32 0
  %cmp = icmp eq i8** %5, %arraydecay
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %7, 2
  %conv3 = sext i32 %mul to i64
  %mul4 = mul i64 %conv3, 8
  %call = call noalias i8* @malloc(i64 %mul4) #3
  %8 = bitcast i8* %call to i8**
  %9 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur5 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %9, i32 0, i32 2
  store i8** %8, i8*** %cur5, align 8
  %10 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur6 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %10, i32 0, i32 2
  %11 = load i8**, i8*** %cur6, align 8
  %12 = bitcast i8** %11 to i8*
  %13 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %start7 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %13, i32 0, i32 0
  %14 = load i8**, i8*** %start7, align 8
  %15 = bitcast i8** %14 to i8*
  %16 = load i32, i32* %n, align 4
  %conv8 = sext i32 %16 to i64
  %mul9 = mul i64 %conv8, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %mul9, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %start10 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %17, i32 0, i32 0
  %18 = load i8**, i8*** %start10, align 8
  %19 = bitcast i8** %18 to i8*
  %20 = load i32, i32* %n, align 4
  %mul11 = mul nsw i32 %20, 2
  %conv12 = sext i32 %mul11 to i64
  %mul13 = mul i64 %conv12, 8
  %call14 = call i8* @realloc(i8* %19, i64 %mul13) #3
  %21 = bitcast i8* %call14 to i8**
  %22 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur15 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %22, i32 0, i32 2
  store i8** %21, i8*** %cur15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur16 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %23, i32 0, i32 2
  %24 = load i8**, i8*** %cur16, align 8
  %25 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %start17 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %25, i32 0, i32 0
  store i8** %24, i8*** %start17, align 8
  %26 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %end = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %26, i32 0, i32 1
  store i8** %24, i8*** %end, align 8
  %27 = load i32, i32* %n, align 4
  %28 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur18 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %28, i32 0, i32 2
  %29 = load i8**, i8*** %cur18, align 8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %29, i64 %idx.ext
  store i8** %add.ptr, i8*** %cur18, align 8
  %30 = load i32, i32* %n, align 4
  %mul19 = mul nsw i32 %30, 2
  %31 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %end20 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %31, i32 0, i32 1
  %32 = load i8**, i8*** %end20, align 8
  %idx.ext21 = sext i32 %mul19 to i64
  %add.ptr22 = getelementptr inbounds i8*, i8** %32, i64 %idx.ext21
  store i8** %add.ptr22, i8*** %end20, align 8
  %33 = load i8*, i8** %elem.addr, align 8
  %34 = load %struct.AbstractStack*, %struct.AbstractStack** %s.addr, align 8
  %cur23 = getelementptr inbounds %struct.AbstractStack, %struct.AbstractStack* %34, i32 0, i32 2
  %35 = load i8**, i8*** %cur23, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %incdec.ptr, i8*** %cur23, align 8
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %elem.addr, align 8
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define i32 @set_add(i8* %av, i8* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %av.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %v = alloca %struct.AbstractVec*, align 8
  %vv = alloca %struct.AbstractVec, align 8
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i64, align 8
  store i8* %av, i8** %av.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load i8*, i8** %av.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %v, align 8
  %2 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n1 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %2, i32 0, i32 0
  %3 = load i32, i32* %n1, align 4
  store i32 %3, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %t.addr, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %h, align 8
  %7 = load i64, i64* %h, align 8
  %8 = load i32, i32* %n, align 4
  %conv = sext i32 %8 to i64
  %rem = urem i64 %7, %conv
  store i64 %rem, i64* %h, align 8
  %9 = load i64, i64* %h, align 8
  %conv2 = trunc i64 %9 to i32
  store i32 %conv2, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n3 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %11, i32 0, i32 0
  %12 = load i32, i32* %n3, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %13, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load i32, i32* %i, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v7 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %16, i32 0, i32 2
  %17 = load i8**, i8*** %v7, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8
  %tobool8 = icmp ne i8* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %for.body
  %19 = load i8*, i8** %t.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %20 to i64
  %21 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v11 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %21, i32 0, i32 2
  %22 = load i8**, i8*** %v11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %22, i64 %idxprom10
  store i8* %19, i8** %arrayidx12, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %23 to i64
  %24 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v14 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %24, i32 0, i32 2
  %25 = load i8**, i8*** %v14, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %25, i64 %idxprom13
  %26 = load i8*, i8** %arrayidx15, align 8
  %27 = load i8*, i8** %t.addr, align 8
  %cmp16 = icmp eq i8* %26, %27
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %28 = load i32, i32* %i, align 4
  %add = add i32 %28, 1
  %29 = load i32, i32* %n, align 4
  %rem20 = urem i32 %add, %29
  store i32 %rem20, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  %31 = load i32, i32* %n, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.else.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %v24 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** null, i8*** %v24, align 8
  %32 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i25 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %32, i32 0, i32 1
  store i32 2, i32* %i25, align 4
  br label %if.end.34

if.else.26:                                       ; preds = %if.end.21
  %33 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v27 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %33, i32 0, i32 2
  %34 = load i8**, i8*** %v27, align 8
  %v28 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** %34, i8*** %v28, align 8
  %35 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n29 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %35, i32 0, i32 0
  %36 = load i32, i32* %n29, align 4
  %n30 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 0
  store i32 %36, i32* %n30, align 4
  %37 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i31 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %37, i32 0, i32 1
  %38 = load i32, i32* %i31, align 4
  %add32 = add i32 %38, 1
  %39 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i33 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %39, i32 0, i32 1
  store i32 %add32, i32* %i33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.26, %if.then.23
  %40 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i35 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %40, i32 0, i32 1
  %41 = load i32, i32* %i35, align 4
  %idxprom36 = zext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [29 x i32], [29 x i32]* @prime2, i32 0, i64 %idxprom36
  %42 = load i32, i32* %arrayidx37, align 4
  %43 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n38 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %43, i32 0, i32 0
  store i32 %42, i32* %n38, align 4
  %44 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n39 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %44, i32 0, i32 0
  %45 = load i32, i32* %n39, align 4
  %conv40 = zext i32 %45 to i64
  %mul = mul i64 %conv40, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %46 = bitcast i8* %call to i8**
  %47 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v41 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %47, i32 0, i32 2
  store i8** %46, i8*** %v41, align 8
  %48 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v42 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %48, i32 0, i32 2
  %49 = load i8**, i8*** %v42, align 8
  %50 = bitcast i8** %49 to i8*
  %51 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n43 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %51, i32 0, i32 0
  %52 = load i32, i32* %n43, align 4
  %conv44 = zext i32 %52 to i64
  %mul45 = mul i64 %conv44, 8
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %mul45, i32 8, i1 false)
  %v46 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %53 = load i8**, i8*** %v46, align 8
  %tobool47 = icmp ne i8** %53, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.34
  %54 = load i8*, i8** %av.addr, align 8
  %55 = bitcast %struct.AbstractVec* %vv to i8*
  %call49 = call i32 @set_union(i8* %54, i8* %55)
  %v50 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %56 = load i8**, i8*** %v50, align 8
  %57 = bitcast i8** %56 to i8*
  call void @free(i8* %57) #3
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.34
  %58 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %59 = bitcast %struct.AbstractVec* %58 to i8*
  %60 = load i8*, i8** %t.addr, align 8
  %call52 = call i32 @set_add(i8* %59, i8* %60)
  store i32 %call52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.18, %if.then.9
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i32 @set_union(i8* %av, i8* %avv) #0 {
entry:
  %av.addr = alloca i8*, align 8
  %avv.addr = alloca i8*, align 8
  %vv = alloca %struct.AbstractVec*, align 8
  %i = alloca i32, align 4
  %changed = alloca i32, align 4
  store i8* %av, i8** %av.addr, align 8
  store i8* %avv, i8** %avv.addr, align 8
  %0 = load i8*, i8** %avv.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %vv, align 8
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %n = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %3, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %v = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 2
  %7 = load i8**, i8*** %v, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %av.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %10 to i64
  %11 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %v2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %11, i32 0, i32 2
  %12 = load i8**, i8*** %v2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom1
  %13 = load i8*, i8** %arrayidx3, align 8
  %call = call i32 @set_add(i8* %9, i8* %13)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %14 = load i32, i32* %changed, align 4
  %tobool5 = icmp ne i32 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %15 = phi i1 [ true, %if.then ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  store i32 %lor.ext, i32* %changed, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %changed, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @set_add_fn(i8* %av, i8* %t, %struct.hash_fns_t* %fns) #0 {
entry:
  %retval = alloca i8*, align 8
  %av.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %v = alloca %struct.AbstractVec*, align 8
  %vv = alloca %struct.AbstractVec, align 8
  %tt = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  store i8* %av, i8** %av.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load i8*, i8** %av.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %v, align 8
  %2 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %hash_fn = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %2, i32 0, i32 0
  %3 = load i32 (i8*, %struct.hash_fns_t*)*, i32 (i8*, %struct.hash_fns_t*)** %hash_fn, align 8
  %4 = load i8*, i8** %t.addr, align 8
  %5 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %call = call i32 %3(i8* %4, %struct.hash_fns_t* %5)
  store i32 %call, i32* %tt, align 4
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n1 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 0
  %7 = load i32, i32* %n1, align 4
  store i32 %7, i32* %n, align 4
  %8 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %tt, align 4
  %10 = load i32, i32* %n, align 4
  %rem = urem i32 %9, %10
  store i32 %rem, i32* %h, align 4
  %11 = load i32, i32* %h, align 4
  store i32 %11, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %13, i32 0, i32 0
  %14 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %12, %14
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %15, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %17 = load i32, i32* %i, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v4 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %18, i32 0, i32 2
  %19 = load i8**, i8*** %v4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  %tobool5 = icmp ne i8* %20, null
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %for.body
  %21 = load i8*, i8** %t.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %22 to i64
  %23 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v8 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %23, i32 0, i32 2
  %24 = load i8**, i8*** %v8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %24, i64 %idxprom7
  store i8* %21, i8** %arrayidx9, align 8
  %25 = load i8*, i8** %t.addr, align 8
  store i8* %25, i8** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %26 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %cmp_fn = getelementptr inbounds %struct.hash_fns_t, %struct.hash_fns_t* %26, i32 0, i32 1
  %27 = load i32 (i8*, i8*, %struct.hash_fns_t*)*, i32 (i8*, i8*, %struct.hash_fns_t*)** %cmp_fn, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %28 to i64
  %29 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v11 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %29, i32 0, i32 2
  %30 = load i8**, i8*** %v11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %30, i64 %idxprom10
  %31 = load i8*, i8** %arrayidx12, align 8
  %32 = load i8*, i8** %t.addr, align 8
  %33 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %call13 = call i32 %27(i8* %31, i8* %32, %struct.hash_fns_t* %33)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %if.else
  %34 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %34 to i64
  %35 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v17 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %35, i32 0, i32 2
  %36 = load i8**, i8*** %v17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %36, i64 %idxprom16
  %37 = load i8*, i8** %arrayidx18, align 8
  store i8* %37, i8** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %38 = load i32, i32* %i, align 4
  %add = add i32 %38, 1
  %39 = load i32, i32* %n, align 4
  %rem20 = urem i32 %add, %39
  store i32 %rem20, i32* %i, align 4
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %entry
  %41 = load i32, i32* %n, align 4
  %tobool22 = icmp ne i32 %41, 0
  br i1 %tobool22, label %if.else.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %v24 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** null, i8*** %v24, align 8
  %42 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i25 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %42, i32 0, i32 1
  store i32 2, i32* %i25, align 4
  br label %if.end.34

if.else.26:                                       ; preds = %if.end.21
  %43 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v27 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %43, i32 0, i32 2
  %44 = load i8**, i8*** %v27, align 8
  %v28 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** %44, i8*** %v28, align 8
  %45 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n29 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %45, i32 0, i32 0
  %46 = load i32, i32* %n29, align 4
  %n30 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 0
  store i32 %46, i32* %n30, align 4
  %47 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i31 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %47, i32 0, i32 1
  %48 = load i32, i32* %i31, align 4
  %add32 = add i32 %48, 1
  %49 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i33 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %49, i32 0, i32 1
  store i32 %add32, i32* %i33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.26, %if.then.23
  %50 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %i35 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %50, i32 0, i32 1
  %51 = load i32, i32* %i35, align 4
  %idxprom36 = zext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds [29 x i32], [29 x i32]* @prime2, i32 0, i64 %idxprom36
  %52 = load i32, i32* %arrayidx37, align 4
  %53 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n38 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %53, i32 0, i32 0
  store i32 %52, i32* %n38, align 4
  %54 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n39 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %54, i32 0, i32 0
  %55 = load i32, i32* %n39, align 4
  %conv = zext i32 %55 to i64
  %mul = mul i64 %conv, 8
  %call40 = call noalias i8* @malloc(i64 %mul) #3
  %56 = bitcast i8* %call40 to i8**
  %57 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v41 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %57, i32 0, i32 2
  store i8** %56, i8*** %v41, align 8
  %58 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v42 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %58, i32 0, i32 2
  %59 = load i8**, i8*** %v42, align 8
  %60 = bitcast i8** %59 to i8*
  %61 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n43 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %61, i32 0, i32 0
  %62 = load i32, i32* %n43, align 4
  %conv44 = zext i32 %62 to i64
  %mul45 = mul i64 %conv44, 8
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 %mul45, i32 8, i1 false)
  %v46 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %63 = load i8**, i8*** %v46, align 8
  %tobool47 = icmp ne i8** %63, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.34
  %64 = load i8*, i8** %av.addr, align 8
  %65 = bitcast %struct.AbstractVec* %vv to i8*
  %66 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  call void @set_union_fn(i8* %64, i8* %65, %struct.hash_fns_t* %66)
  %v49 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %67 = load i8**, i8*** %v49, align 8
  %68 = bitcast i8** %67 to i8*
  call void @free(i8* %68) #3
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.34
  %69 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %70 = bitcast %struct.AbstractVec* %69 to i8*
  %71 = load i8*, i8** %t.addr, align 8
  %72 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %call51 = call i8* @set_add_fn(i8* %70, i8* %71, %struct.hash_fns_t* %72)
  store i8* %call51, i8** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.15, %if.then.6
  %73 = load i8*, i8** %retval
  ret i8* %73
}

; Function Attrs: nounwind uwtable
define void @set_union_fn(i8* %av, i8* %avv, %struct.hash_fns_t* %fns) #0 {
entry:
  %av.addr = alloca i8*, align 8
  %avv.addr = alloca i8*, align 8
  %fns.addr = alloca %struct.hash_fns_t*, align 8
  %vv = alloca %struct.AbstractVec*, align 8
  %i = alloca i32, align 4
  store i8* %av, i8** %av.addr, align 8
  store i8* %avv, i8** %avv.addr, align 8
  store %struct.hash_fns_t* %fns, %struct.hash_fns_t** %fns.addr, align 8
  %0 = load i8*, i8** %avv.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %vv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %n = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %3, i32 0, i32 0
  %4 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %v = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 2
  %7 = load i8**, i8*** %v, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %av.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %10 to i64
  %11 = load %struct.AbstractVec*, %struct.AbstractVec** %vv, align 8
  %v2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %11, i32 0, i32 2
  %12 = load i8**, i8*** %v2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom1
  %13 = load i8*, i8** %arrayidx3, align 8
  %14 = load %struct.hash_fns_t*, %struct.hash_fns_t** %fns.addr, align 8
  %call = call i8* @set_add_fn(i8* %9, i8* %13, %struct.hash_fns_t* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_to_vec(i8* %av) #0 {
entry:
  %av.addr = alloca i8*, align 8
  %v = alloca %struct.AbstractVec*, align 8
  %vv = alloca %struct.AbstractVec, align 8
  %i = alloca i32, align 4
  store i8* %av, i8** %av.addr, align 8
  %0 = load i8*, i8** %av.addr, align 8
  %1 = bitcast i8* %0 to %struct.AbstractVec*
  store %struct.AbstractVec* %1, %struct.AbstractVec** %v, align 8
  %2 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %n1 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 0
  store i32 %3, i32* %n1, align 4
  %4 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v2 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %4, i32 0, i32 2
  %5 = load i8**, i8*** %v2, align 8
  %v3 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** %5, i8*** %v3, align 8
  %6 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v4 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %6, i32 0, i32 2
  %7 = load i8**, i8*** %v4, align 8
  %8 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %e = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %e, i32 0, i32 0
  %cmp = icmp eq i8** %7, %arraydecay
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %e5 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 3
  %9 = bitcast [3 x i8*]* %e5 to i8*
  %10 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %e6 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %10, i32 0, i32 3
  %11 = bitcast [3 x i8*]* %e6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 24, i32 8, i1 false)
  %e7 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %e7, i32 0, i32 0
  %v9 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  store i8** %arraydecay8, i8*** %v9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %n10 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %12, i32 0, i32 0
  store i32 0, i32* %n10, align 4
  %13 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %v11 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %13, i32 0, i32 2
  store i8** null, i8*** %v11, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %n12 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 0
  %15 = load i32, i32* %n12, align 4
  %cmp13 = icmp ult i32 %14, %15
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = zext i32 %16 to i64
  %v14 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %17 = load i8**, i8*** %v14, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body
  %19 = load %struct.AbstractVec*, %struct.AbstractVec** %v, align 8
  %20 = bitcast %struct.AbstractVec* %19 to i8*
  %21 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %21 to i64
  %v17 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %22 = load i8**, i8*** %v17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %22, i64 %idxprom16
  %23 = load i8*, i8** %arrayidx18, align 8
  call void @vec_add_internal(i8* %20, i8* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %v20 = getelementptr inbounds %struct.AbstractVec, %struct.AbstractVec* %vv, i32 0, i32 2
  %25 = load i8**, i8*** %v20, align 8
  %26 = bitcast i8** %25 to i8*
  call void @free(i8* %26) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @int_list_diff(i32* %a, i32* %b, i32* %c) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.9, %if.end.24
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end.25

if.end:                                           ; preds = %while.body
  br label %Lagainc

Lagainc:                                          ; preds = %if.then.22, %if.end
  %2 = load i32*, i32** %c.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %Lagainc
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %if.then.2
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.3
  %6 = load i32*, i32** %b.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %b.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %a.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr6, i32** %a.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  br label %while.end.25

if.end.7:                                         ; preds = %Lagainc
  br label %Lagainb

Lagainb:                                          ; preds = %if.end.19, %if.end.7
  %9 = load i32*, i32** %b.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %c.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp8 = icmp eq i32 %10, %12
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %Lagainb
  %13 = load i32*, i32** %b.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr10, i32** %b.addr, align 8
  %14 = load i32*, i32** %c.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr11, i32** %c.addr, align 8
  br label %while.body

if.end.12:                                        ; preds = %Lagainb
  %15 = load i32*, i32** %b.addr, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %c.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp13 = icmp slt i32 %16, %18
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.12
  %19 = load i32*, i32** %b.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr15, i32** %b.addr, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %a.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr16, i32** %a.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %b.addr, align 8
  %23 = load i32, i32* %22, align 4
  %cmp17 = icmp slt i32 %23, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  br label %while.end.25

if.end.19:                                        ; preds = %if.then.14
  br label %Lagainb

if.end.20:                                        ; preds = %if.end.12
  %24 = load i32*, i32** %c.addr, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %b.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp21 = icmp slt i32 %25, %27
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %28 = load i32*, i32** %c.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr23, i32** %c.addr, align 8
  br label %Lagainc

if.end.24:                                        ; preds = %if.end.20
  br label %while.body

while.end.25:                                     ; preds = %if.then.18, %while.end, %if.then
  %29 = load i32*, i32** %a.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %incdec.ptr26, i32** %a.addr, align 8
  store i32 -1, i32* %29, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @int_list_intersect(i32* %a, i32* %b, i32* %c) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.5, %if.end.19
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %Lagainc

Lagainc:                                          ; preds = %if.then.17, %if.end
  %2 = load i32*, i32** %c.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %Lagainc
  br label %while.end

if.end.3:                                         ; preds = %Lagainc
  br label %Lagainb

Lagainb:                                          ; preds = %if.end.14, %if.end.3
  %4 = load i32*, i32** %b.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** %c.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %Lagainb
  %8 = load i32*, i32** %b.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %b.addr, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %a.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr6, i32** %a.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %c.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr7, i32** %c.addr, align 8
  br label %while.body

if.end.8:                                         ; preds = %Lagainb
  %12 = load i32*, i32** %b.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %c.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp9 = icmp slt i32 %13, %15
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  %16 = load i32*, i32** %b.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr11, i32** %b.addr, align 8
  %17 = load i32*, i32** %b.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp12 = icmp slt i32 %18, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  br label %while.end

if.end.14:                                        ; preds = %if.then.10
  br label %Lagainb

if.end.15:                                        ; preds = %if.end.8
  %19 = load i32*, i32** %c.addr, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %b.addr, align 8
  %22 = load i32, i32* %21, align 4
  %cmp16 = icmp slt i32 %20, %22
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %23 = load i32*, i32** %c.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr18, i32** %c.addr, align 8
  br label %Lagainc

if.end.19:                                        ; preds = %if.end.15
  br label %while.body

while.end:                                        ; preds = %if.then.13, %if.then.2, %if.then
  %24 = load i32*, i32** %a.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr20, i32** %a.addr, align 8
  store i32 -1, i32* %24, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @int_list_dup(i32* %aa) #0 {
entry:
  %aa.addr = alloca i32*, align 8
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %bb = alloca i32*, align 8
  store i32* %aa, i32** %aa.addr, align 8
  %0 = load i32*, i32** %aa.addr, align 8
  store i32* %0, i32** %a, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %a, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %a, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %a, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32*, i32** %a, align 8
  %5 = load i32*, i32** %aa.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add = add nsw i64 %sub.ptr.div, 1
  %mul = mul i64 %add, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %6 = bitcast i8* %call to i32*
  store i32* %6, i32** %b, align 8
  store i32* %6, i32** %bb, align 8
  %7 = load i32*, i32** %aa.addr, align 8
  store i32* %7, i32** %a, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.3, %while.end
  %8 = load i32*, i32** %a, align 8
  %9 = load i32, i32* %8, align 4
  %cmp2 = icmp ne i32 %9, -1
  br i1 %cmp2, label %while.body.3, label %while.end.6

while.body.3:                                     ; preds = %while.cond.1
  %10 = load i32*, i32** %a, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr4, i32** %a, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %b, align 8
  %incdec.ptr5 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr5, i32** %b, align 8
  store i32 %11, i32* %12, align 4
  br label %while.cond.1

while.end.6:                                      ; preds = %while.cond.1
  %13 = load i32*, i32** %b, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %incdec.ptr7, i32** %b, align 8
  store i32 -1, i32* %13, align 4
  %14 = load i32*, i32** %bb, align 8
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define i8* @escape_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %sss = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %mul = mul i64 %add, 4
  %call1 = call noalias i8* @malloc(i64 %mul) #3
  store i8* %call1, i8** %ss, align 8
  %1 = load i8*, i8** %ss, align 8
  store i8* %1, i8** %sss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 12, label %sw.bb.3
    i32 10, label %sw.bb.6
    i32 13, label %sw.bb.9
    i32 9, label %sw.bb.12
    i32 11, label %sw.bb.15
    i32 7, label %sw.bb.18
    i32 92, label %sw.bb.21
    i32 34, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body
  %6 = load i8*, i8** %ss, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ss, align 8
  store i8 92, i8* %6, align 1
  %7 = load i8*, i8** %ss, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr2, i8** %ss, align 8
  store i8 98, i8* %7, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %8 = load i8*, i8** %ss, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr4, i8** %ss, align 8
  store i8 92, i8* %8, align 1
  %9 = load i8*, i8** %ss, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr5, i8** %ss, align 8
  store i8 102, i8* %9, align 1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body
  %10 = load i8*, i8** %ss, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr7, i8** %ss, align 8
  store i8 92, i8* %10, align 1
  %11 = load i8*, i8** %ss, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %ss, align 8
  store i8 110, i8* %11, align 1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %12 = load i8*, i8** %ss, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %ss, align 8
  store i8 92, i8* %12, align 1
  %13 = load i8*, i8** %ss, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %ss, align 8
  store i8 114, i8* %13, align 1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %14 = load i8*, i8** %ss, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %ss, align 8
  store i8 92, i8* %14, align 1
  %15 = load i8*, i8** %ss, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %ss, align 8
  store i8 116, i8* %15, align 1
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %16 = load i8*, i8** %ss, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr16, i8** %ss, align 8
  store i8 92, i8* %16, align 1
  %17 = load i8*, i8** %ss, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %ss, align 8
  store i8 118, i8* %17, align 1
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  %18 = load i8*, i8** %ss, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %ss, align 8
  store i8 92, i8* %18, align 1
  %19 = load i8*, i8** %ss, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr20, i8** %ss, align 8
  store i8 97, i8* %19, align 1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body, %for.body
  %20 = load i8*, i8** %ss, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %ss, align 8
  store i8 92, i8* %20, align 1
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %ss, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %ss, align 8
  store i8 %22, i8* %23, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %24 = load i8*, i8** %s.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv24 = sext i8 %25 to i32
  %idxprom = sext i32 %conv24 to i64
  %call25 = call i16** @__ctype_b_loc() #9
  %26 = load i16*, i16** %call25, align 8
  %arrayidx = getelementptr inbounds i16, i16* %26, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv26 = zext i16 %27 to i32
  %and = and i32 %conv26, 16384
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %ss, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr28, i8** %ss, align 8
  store i8 %29, i8* %30, align 1
  br label %if.end

if.else:                                          ; preds = %sw.default
  %31 = load i8*, i8** %ss, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr29, i8** %ss, align 8
  store i8 92, i8* %31, align 1
  %32 = load i8*, i8** %ss, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr30, i8** %ss, align 8
  store i8 120, i8* %32, align 1
  %33 = load i8*, i8** %s.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv31 = sext i8 %34 to i32
  %shr = ashr i32 %conv31, 4
  %cmp = icmp sgt i32 %shr, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %35 = load i8*, i8** %s.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv33 = sext i8 %36 to i32
  %shr34 = ashr i32 %conv33, 4
  %sub = sub nsw i32 %shr34, 10
  %add35 = add nsw i32 %sub, 65
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %37 = load i8*, i8** %s.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv36 = sext i8 %38 to i32
  %shr37 = ashr i32 %conv36, 4
  %add38 = add nsw i32 %shr37, 48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add35, %cond.true ], [ %add38, %cond.false ]
  %conv39 = trunc i32 %cond to i8
  %39 = load i8*, i8** %ss, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr40, i8** %ss, align 8
  store i8 %conv39, i8* %39, align 1
  %40 = load i8*, i8** %s.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv41 = sext i8 %41 to i32
  %and42 = and i32 %conv41, 15
  %cmp43 = icmp sgt i32 %and42, 9
  br i1 %cmp43, label %cond.true.45, label %cond.false.50

cond.true.45:                                     ; preds = %cond.end
  %42 = load i8*, i8** %s.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv46 = sext i8 %43 to i32
  %and47 = and i32 %conv46, 15
  %sub48 = sub nsw i32 %and47, 10
  %add49 = add nsw i32 %sub48, 65
  br label %cond.end.54

cond.false.50:                                    ; preds = %cond.end
  %44 = load i8*, i8** %s.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv51 = sext i8 %45 to i32
  %and52 = and i32 %conv51, 15
  %add53 = add nsw i32 %and52, 48
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.50, %cond.true.45
  %cond55 = phi i32 [ %add49, %cond.true.45 ], [ %add53, %cond.false.50 ]
  %conv56 = trunc i32 %cond55 to i8
  %46 = load i8*, i8** %ss, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr57, i8** %ss, align 8
  store i8 %conv56, i8* %46, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.54, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %47 = load i8*, i8** %s.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr58, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i8*, i8** %ss, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %sss, align 8
  ret i8* %49
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define void @d_free(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  call void @free(i8* %0) #3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
