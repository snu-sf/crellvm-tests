; ModuleID = './MultiSource.Benchmarks.MallocBench/105.gs.stream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@sread_string.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @ssread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @ssavailable, i32 (%struct.stream_s*, i64)* @ssseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@swrite_string.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* null, i32 (%struct.stream_s*, i8)* @sswrite, i32 (%struct.stream_s*, i64*)* @snoavailable, i32 (%struct.stream_s*, i64)* @ssseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@sread_file.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @sfread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @sfavailable, i32 (%struct.stream_s*, i64)* @srseek, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @srclose }, align 8
@stdin = external global %struct._IO_FILE*, align 8
@swrite_file.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* null, i32 (%struct.stream_s*, i8)* @sfwrite, i32 (%struct.stream_s*, i64*)* @snoavailable, i32 (%struct.stream_s*, i64)* @swseek, i32 (%struct.stream_s*)* @swflush, i32 (%struct.stream_s*)* @swclose }, align 8
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@sread_decrypt.p = internal global %struct.stream_procs { i32 (%struct.stream_s*)* @sxread, i32 (%struct.stream_s*, i8)* null, i32 (%struct.stream_s*, i64*)* @sxavailable, i32 (%struct.stream_s*, i64)* null, i32 (%struct.stream_s*)* @snull, i32 (%struct.stream_s*)* @snull }, align 8
@scan_char_array = external global [257 x i8], align 16

; Function Attrs: nounwind uwtable
define void @sread_string(%struct.stream_s* %s, i8* %ptr, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @ssinit(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @sread_string.p)
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 4
  store i8 0, i8* %writing, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ssread(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %endptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  store i8* %1, i8** %cptr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @ssavailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64* %pl, i64** %pl.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %endptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i64*, i64** %pl.addr, align 8
  store i64 %sub.ptr.sub, i64* %4, align 8
  %5 = load i64*, i64** %pl.addr, align 8
  %6 = load i64, i64* %5, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64*, i64** %pl.addr, align 8
  store i64 -1, i64* %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ssseek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 3
  %3 = load i32, i32* %bsize, align 4
  %conv = zext i32 %3 to i64
  %cmp1 = icmp sgt i64 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %cbuf, align 8
  %6 = load i64, i64* %pos.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  store i8* %add.ptr3, i8** %cptr, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @snull(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @ssinit(%struct.stream_s* %s, i8* %ptr, i32 %len, %struct.stream_procs* %p) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p.addr = alloca %struct.stream_procs*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.stream_procs* %p, %struct.stream_procs** %p.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 2
  store i8* %0, i8** %cbuf, align 8
  %2 = load i8*, i8** %ptr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  store i8* %add.ptr, i8** %cptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %cptr1, align 8
  %6 = load i32, i32* %len.addr, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 1
  store i8* %add.ptr2, i8** %endptr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 3
  store i32 %8, i32* %bsize, align 4
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  store i8 1, i8* %eof, align 1
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 6
  store i64 0, i64* %position, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 7
  %13 = load %struct.stream_procs*, %struct.stream_procs** %p.addr, align 8
  %14 = bitcast %struct.stream_procs* %procs to i8*
  %15 = bitcast %struct.stream_procs* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 48, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @swrite_string(%struct.stream_s* %s, i8* %ptr, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %1 = load i8*, i8** %ptr.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @ssinit(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @swrite_string.p)
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 4
  store i8 1, i8* %writing, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sswrite(%struct.stream_s* %s, i8 zeroext %c) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %c.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %endptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  store i8* %1, i8** %cptr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @snoavailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64* %pl, i64** %pl.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @sread_file(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  call void @sfinit(%struct.stream_s* %0, %struct._IO_FILE* %1, i8* %2, i32 %3, %struct.stream_procs* @sread_file.p)
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 4
  store i8 0, i8* %writing, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, %6
  %cond = select i1 %cmp, i32 -1, i32 0
  %conv = sext i32 %cond to i64
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 6
  store i64 %conv, i64* %position, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sfread(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %nread = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %1 = load i8, i8* %eof, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %endptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  store i8* %3, i8** %cptr, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i64, i64* %position, align 8
  %cmp = icmp sge i64 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %8)
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 6
  store i64 %call, i64* %position2, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %cbuf, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 3
  %13 = load i32, i32* %bsize, align 4
  %conv = zext i32 %13 to i64
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8
  %call5 = call i64 @fread(i8* %11, i64 1, i64 %conv, %struct._IO_FILE* %15)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %nread, align 4
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %cbuf7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 -1
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 0
  store i8* %add.ptr, i8** %cptr8, align 8
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file9, align 8
  %call10 = call i32 @feof(%struct._IO_FILE* %20) #1
  %conv11 = trunc i32 %call10 to i8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  store i8 %conv11, i8* %eof12, align 1
  %22 = load i32, i32* %nread, align 4
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.3
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %cptr16, align 8
  %25 = load i32, i32* %nread, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 1
  store i8* %add.ptr17, i8** %endptr18, align 8
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %cptr19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %cptr19, align 8
  %29 = load i8, i8* %incdec.ptr, align 1
  %conv20 = zext i8 %29 to i32
  store i32 %conv20, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %30 = load i32, i32* %nread, align 4
  %cmp21 = icmp eq i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %cptr24, align 8
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 1
  store i8* %32, i8** %endptr25, align 8
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  store i8 1, i8* %eof26, align 1
  store i32 -1, i32* %retval
  br label %return

if.else.27:                                       ; preds = %if.else
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %cptr28, align 8
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 1
  store i8* %36, i8** %endptr29, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.27, %if.then.23, %if.then.15, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @sfavailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  %pos = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64* %pl, i64** %pl.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %endptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i64*, i64** %pl.addr, align 8
  store i64 %sub.ptr.sub, i64* %4, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i64, i64* %position, align 8
  %cmp = icmp sge i64 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %8)
  store i64 %call, i64* %pos, align 8
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file1, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %10, i64 0, i32 2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %12)
  store i64 %call5, i64* %end, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file6, align 8
  %15 = load i64, i64* %pos, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* %14, i64 %15, i32 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %16 = load i64, i64* %end, align 8
  %17 = load i64, i64* %pos, align 8
  %sub = sub nsw i64 %16, %17
  %18 = load i64*, i64** %pl.addr, align 8
  %19 = load i64, i64* %18, align 8
  %add = add nsw i64 %19, %sub
  store i64 %add, i64* %18, align 8
  %20 = load i64*, i64** %pl.addr, align 8
  %21 = load i64, i64* %20, align 8
  %cmp11 = icmp eq i64 %21, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %22 = load i64*, i64** %pl.addr, align 8
  store i64 -1, i64* %22, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  br label %if.end.20

if.else:                                          ; preds = %entry
  %23 = load i64*, i64** %pl.addr, align 8
  %24 = load i64, i64* %23, align 8
  %cmp14 = icmp eq i64 %24, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.else
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file15, align 8
  %call16 = call i32 @feof(%struct._IO_FILE* %26) #1
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %27 = load i64*, i64** %pl.addr, align 8
  store i64 -1, i64* %27, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.9, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @srseek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  %end = alloca i32, align 4
  %offset = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %endptr, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 2
  %3 = load i8*, i8** %cbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %end, align 4
  %4 = load i64, i64* %pos.addr, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 6
  %6 = load i64, i64* %position, align 8
  %sub = sub nsw i64 %4, %6
  store i64 %sub, i64* %offset, align 8
  %7 = load i64, i64* %offset, align 8
  %cmp = icmp sge i64 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* %offset, align 8
  %9 = load i32, i32* %end, align 4
  %conv2 = zext i32 %9 to i64
  %cmp3 = icmp sle i64 %8, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %cbuf5, align 8
  %12 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 0
  store i8* %add.ptr6, i8** %cptr, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %16 = load i64, i64* %pos.addr, align 8
  %call = call i32 @fseek(%struct._IO_FILE* %15, i64 %16, i32 0)
  %cmp7 = icmp ne i32 %call, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %cbuf11, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 0
  store i8* %add.ptr12, i8** %cptr13, align 8
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 1
  store i8* %add.ptr12, i8** %endptr14, align 8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  store i8 0, i8* %eof, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @srclose(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 9
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @sfinit(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len, %struct.stream_procs* %p) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %p.addr = alloca %struct.stream_procs*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.stream_procs* %p, %struct.stream_procs** %p.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 2
  store i8* %0, i8** %cbuf, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  store i8* %add.ptr, i8** %cptr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 3
  store i32 %4, i32* %bsize, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  store %struct._IO_FILE* %6, %struct._IO_FILE** %file1, align 8
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %cptr2, align 8
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 1
  store i8* %9, i8** %endptr, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 5
  store i8 0, i8* %eof, align 1
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 7
  %13 = load %struct.stream_procs*, %struct.stream_procs** %p.addr, align 8
  %14 = bitcast %struct.stream_procs* %procs to i8*
  %15 = bitcast %struct.stream_procs* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 48, i32 8, i1 false)
  ret void
}

declare i64 @ftell(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @swrite_file(%struct.stream_s* %s, %struct._IO_FILE* %file, i8* %buf, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  call void @sfinit(%struct.stream_s* %0, %struct._IO_FILE* %1, i8* %2, i32 %3, %struct.stream_procs* @swrite_file.p)
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 4
  store i8 1, i8* %writing, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, %6
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %7, %8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %9 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %cond = select i1 %9, i32 -1, i32 0
  %conv = sext i32 %cond to i64
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 6
  store i64 %conv, i64* %position, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sfwrite(%struct.stream_s* %s, i8 zeroext %c) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %c.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %cbuf, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %cbuf1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %conv2 = zext i32 %conv to i64
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv2, %struct._IO_FILE* %7)
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 6
  %9 = load i64, i64* %position, align 8
  %cmp = icmp sge i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %11)
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  store i64 %call5, i64* %position6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %cbuf7, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  store i8* %add.ptr8, i8** %cptr9, align 8
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %cptr10, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 3
  %19 = load i32, i32* %bsize, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 1
  store i8* %add.ptr11, i8** %endptr, align 8
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %cptr12, align 8
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %endptr13, align 8
  %cmp14 = icmp ult i8* %22, %24
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load i8, i8* %c.addr, align 1
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %cptr16, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %cptr16, align 8
  store i8 %25, i8* %incdec.ptr, align 1
  %conv17 = zext i8 %25 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 7
  %write = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 1
  %29 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %write, align 8
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %31 = load i8, i8* %c.addr, align 1
  %call18 = call i32 %29(%struct.stream_s* %30, i8 zeroext %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %call18, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @swseek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @swflush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %result = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %cbuf, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %cbuf1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %conv2 = zext i32 %conv to i64
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv2, %struct._IO_FILE* %7)
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %result, align 4
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file4, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %9)
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file6, align 8
  %call7 = call i64 @ftell(%struct._IO_FILE* %11)
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  store i64 %call7, i64* %position, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %cbuf8, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  store i8* %add.ptr9, i8** %cptr10, align 8
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 0
  %17 = load i8*, i8** %cptr11, align 8
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 3
  %19 = load i32, i32* %bsize, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 1
  store i8* %add.ptr12, i8** %endptr, align 8
  %21 = load i32, i32* %result, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @swclose(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %cbuf, align 8
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %cbuf1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %conv2 = zext i32 %conv to i64
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv2, %struct._IO_FILE* %7)
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %file3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 9
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file3, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %9)
  ret i32 %call4
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @sread_decrypt(%struct.stream_s* %s, %struct.stream_s* %xs, i8* %buf, i32 %len, i16 zeroext %state) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %xs.addr = alloca %struct.stream_s*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca i16, align 2
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store %struct.stream_s* %xs, %struct.stream_s** %xs.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i16 %state, i16* %state.addr, align 2
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @sfinit(%struct.stream_s* %0, %struct._IO_FILE* null, i8* %1, i32 %2, %struct.stream_procs* @sread_decrypt.p)
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 4
  store i8 0, i8* %writing, align 1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 6
  store i64 -1, i64* %position, align 8
  %5 = load %struct.stream_s*, %struct.stream_s** %xs.addr, align 8
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 10
  store %struct.stream_s* %5, %struct.stream_s** %strm, align 8
  %7 = load i16, i16* %state.addr, align 2
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cstate = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 11
  store i16 %7, i16* %cstate, align 2
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %odd = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 12
  store i32 -1, i32* %odd, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sxread(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %buf = alloca i8*, align 8
  %nread = alloca i32, align 4
  %sst = alloca %struct.stream_s, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %cbuf, align 8
  store i8* %1, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 0
  store i8* %add.ptr, i8** %cptr, align 8
  br label %top

top:                                              ; preds = %if.then.4, %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 10
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8
  %6 = load i8*, i8** %buf, align 8
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 3
  %8 = load i32, i32* %bsize, align 4
  %call = call i32 @sgets(%struct.stream_s* %5, i8* %6, i32 %8)
  store i32 %call, i32* %nread, align 4
  %9 = load i32, i32* %nread, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %top
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %cptr1, align 8
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 1
  store i8* %11, i8** %endptr, align 8
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  store i8 1, i8* %eof, align 1
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %top
  %14 = load i8*, i8** %buf, align 8
  %15 = load i32, i32* %nread, align 4
  call void @sread_string(%struct.stream_s* %sst, i8* %14, i32 %15)
  %16 = load i8*, i8** %buf, align 8
  %17 = load i32, i32* %nread, align 4
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %odd = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 12
  %call2 = call i32 @sreadhex(%struct.stream_s* %sst, i8* %16, i32 %17, i32* %nread, i32* %odd)
  %19 = load i32, i32* %nread, align 4
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  br label %top

if.end:                                           ; preds = %if.else
  %20 = load i8*, i8** %buf, align 8
  %21 = load i8*, i8** %buf, align 8
  %22 = load i32, i32* %nread, align 4
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cstate = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 11
  %call5 = call i32 @gs_type1_decrypt(i8* %20, i8* %21, i32 %22, i16* %cstate)
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %cptr6, align 8
  %26 = load i32, i32* %nread, align 4
  %idx.ext = zext i32 %26 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 1
  store i8* %add.ptr7, i8** %endptr8, align 8
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %cptr9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %cptr9, align 8
  %30 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %30 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @sxavailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i64* %pl, i64** %pl.addr, align 8
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 10
  %1 = load %struct.stream_s*, %struct.stream_s** %strm, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 7
  %available = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 2
  %2 = load i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64*)** %available, align 8
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 10
  %4 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8
  %5 = load i64*, i64** %pl.addr, align 8
  %call = call i32 %2(%struct.stream_s* %4, i64* %5)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64*, i64** %pl.addr, align 8
  %7 = load i64, i64* %6, align 8
  %cmp2 = icmp sge i64 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i64*, i64** %pl.addr, align 8
  %9 = load i64, i64* %8, align 8
  %div = sdiv i64 %9, 2
  store i64 %div, i64* %8, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @sgets(%struct.stream_s* %s, i8* %str, i32 %rlen) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %rlen.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %rlen, i32* %rlen.addr, align 4
  %0 = load i32, i32* %rlen.addr, align 4
  store i32 %0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %endptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %cptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4
  %6 = load i32, i32* %count, align 4
  %cmp1 = icmp ugt i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %count, align 4
  %8 = load i32, i32* %len, align 4
  %cmp3 = icmp ugt i32 %7, %8
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %len, align 4
  store i32 %9, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %cptr6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i32, i32* %count, align 4
  %conv7 = zext i32 %13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %add.ptr, i64 %conv7, i32 1, i1 false)
  %14 = load i32, i32* %count, align 4
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %cptr8, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr9, i8** %cptr8, align 8
  %17 = load i32, i32* %count, align 4
  %18 = load i8*, i8** %str.addr, align 8
  %idx.ext10 = zext i32 %17 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %18, i64 %idx.ext10
  store i8* %add.ptr11, i8** %str.addr, align 8
  %19 = load i32, i32* %count, align 4
  %20 = load i32, i32* %len, align 4
  %sub = sub i32 %20, %19
  store i32 %sub, i32* %len, align 4
  br label %if.end.23

if.else:                                          ; preds = %while.body
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 0
  %22 = load i8*, i8** %cptr12, align 8
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %endptr13, align 8
  %cmp14 = icmp ult i8* %22, %24
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 0
  %26 = load i8*, i8** %cptr16, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %cptr16, align 8
  %27 = load i8, i8* %incdec.ptr, align 1
  %conv17 = zext i8 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %29 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %29(%struct.stream_s* %30)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %ch, align 4
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %32 = load i8, i8* %eof, align 1
  %tobool = icmp ne i8 %32, 0
  br i1 %tobool, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %cond.end
  %33 = load i32, i32* %rlen.addr, align 4
  %34 = load i32, i32* %len, align 4
  %sub19 = sub i32 %33, %34
  store i32 %sub19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %cond.end
  %35 = load i32, i32* %ch, align 4
  %conv21 = trunc i32 %35 to i8
  %36 = load i8*, i8** %str.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr22, i8** %str.addr, align 8
  store i8 %conv21, i8* %36, align 1
  %37 = load i32, i32* %len, align 4
  %dec = add i32 %37, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.20, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i32, i32* %rlen.addr, align 4
  store i32 %38, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.18
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @sreadhex(%struct.stream_s* %s, i8* %str, i32 %rlen, i32* %nread, i32* %odd_digit) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %rlen.addr = alloca i32, align 4
  %nread.addr = alloca i32*, align 8
  %odd_digit.addr = alloca i32*, align 8
  %ptr = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  %decoder = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %rlen, i32* %rlen.addr, align 4
  store i32* %nread, i32** %nread.addr, align 8
  store i32* %odd_digit, i32** %odd_digit.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %ptr, align 8
  %1 = load i8*, i8** %ptr, align 8
  %2 = load i32, i32* %rlen.addr, align 4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  %3 = load i32*, i32** %odd_digit.addr, align 8
  %4 = load i32, i32* %3, align 4
  %conv = trunc i32 %4 to i8
  store i8 %conv, i8* %val1, align 1
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @scan_char_array, i32 0, i64 1), i8** %decoder, align 8
  %5 = load i32, i32* %rlen.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %nread.addr, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8, i8* %val1, align 1
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp sle i32 %conv2, 15
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %d2

if.end.6:                                         ; preds = %if.end
  br label %d1

d1:                                               ; preds = %if.then.53, %if.end.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %d1
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %cptr, align 8
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %endptr, align 8
  %cmp7 = icmp ult i8* %9, %11
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 0
  %13 = load i8*, i8** %cptr9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %cptr9, align 8
  %14 = load i8, i8* %incdec.ptr, align 1
  %conv10 = zext i8 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 7
  %read = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %16 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read, align 8
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call = call i32 %16(%struct.stream_s* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ %call, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %18 = load i8*, i8** %decoder, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  store i8 %19, i8* %val1, align 1
  %conv11 = zext i8 %19 to i32
  %cmp12 = icmp sgt i32 %conv11, 15
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %20 = load i8, i8* %val1, align 1
  %conv14 = zext i8 %20 to i32
  %cmp15 = icmp eq i32 %conv14, 103
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  %21 = load i32*, i32** %odd_digit.addr, align 8
  store i32 -1, i32* %21, align 4
  br label %ended

if.end.18:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %cond.end
  br label %d2

d2:                                               ; preds = %while.end, %if.then.5
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.45, %d2
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr20 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %cptr20, align 8
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %endptr21, align 8
  %cmp22 = icmp ult i8* %23, %25
  br i1 %cmp22, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %while.cond.19
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %cptr25, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr26, i8** %cptr25, align 8
  %28 = load i8, i8* %incdec.ptr26, align 1
  %conv27 = zext i8 %28 to i32
  br label %cond.end.32

cond.false.28:                                    ; preds = %while.cond.19
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 7
  %read30 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs29, i32 0, i32 0
  %30 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %read30, align 8
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %call31 = call i32 %30(%struct.stream_s* %31)
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.28, %cond.true.24
  %cond33 = phi i32 [ %conv27, %cond.true.24 ], [ %call31, %cond.false.28 ]
  %idxprom34 = sext i32 %cond33 to i64
  %32 = load i8*, i8** %decoder, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %32, i64 %idxprom34
  %33 = load i8, i8* %arrayidx35, align 1
  store i8 %33, i8* %val2, align 1
  %conv36 = zext i8 %33 to i32
  %cmp37 = icmp sgt i32 %conv36, 15
  br i1 %cmp37, label %while.body.39, label %while.end.46

while.body.39:                                    ; preds = %cond.end.32
  %34 = load i8, i8* %val2, align 1
  %conv40 = zext i8 %34 to i32
  %cmp41 = icmp eq i32 %conv40, 103
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %while.body.39
  %35 = load i8, i8* %val1, align 1
  %conv44 = zext i8 %35 to i32
  %36 = load i32*, i32** %odd_digit.addr, align 8
  store i32 %conv44, i32* %36, align 4
  br label %ended

if.end.45:                                        ; preds = %while.body.39
  br label %while.cond.19

while.end.46:                                     ; preds = %cond.end.32
  %37 = load i8, i8* %val1, align 1
  %conv47 = zext i8 %37 to i32
  %shl = shl i32 %conv47, 4
  %38 = load i8, i8* %val2, align 1
  %conv48 = zext i8 %38 to i32
  %add = add nsw i32 %shl, %conv48
  %conv49 = trunc i32 %add to i8
  %39 = load i8*, i8** %ptr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr50, i8** %ptr, align 8
  store i8 %conv49, i8* %39, align 1
  %40 = load i8*, i8** %ptr, align 8
  %41 = load i8*, i8** %limit, align 8
  %cmp51 = icmp ult i8* %40, %41
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %while.end.46
  br label %d1

if.end.54:                                        ; preds = %while.end.46
  %42 = load i32, i32* %rlen.addr, align 4
  %43 = load i32*, i32** %nread.addr, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %retval
  br label %return

ended:                                            ; preds = %if.then.43, %if.then.17
  %44 = load i8*, i8** %ptr, align 8
  %45 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i32
  %46 = load i32*, i32** %nread.addr, align 8
  store i32 %conv55, i32* %46, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %ended, %if.end.54, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @sungetc(%struct.stream_s* %s, i8 zeroext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %c.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %writing = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 4
  %1 = load i8, i8* %writing, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %cptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %cbuf, align 8
  %cmp = icmp ult i8* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8, i8* %c.addr, align 1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %cptr2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr, i8** %cptr2, align 8
  store i8 %6, i8* %8, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @sputs(%struct.stream_s* %s, i8* %str, i32 %wlen) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %wlen.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %wlen, i32* %wlen.addr, align 4
  %0 = load i32, i32* %wlen.addr, align 4
  store i32 %0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %1 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %endptr, align 8
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %cptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count, align 4
  %6 = load i32, i32* %count, align 4
  %cmp1 = icmp ugt i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %count, align 4
  %8 = load i32, i32* %len, align 4
  %cmp3 = icmp ugt i32 %7, %8
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %len, align 4
  store i32 %9, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %cptr6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i32, i32* %count, align 4
  %conv7 = zext i32 %13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %12, i64 %conv7, i32 1, i1 false)
  %14 = load i32, i32* %count, align 4
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %cptr8, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr9, i8** %cptr8, align 8
  %17 = load i32, i32* %count, align 4
  %18 = load i8*, i8** %str.addr, align 8
  %idx.ext10 = zext i32 %17 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %18, i64 %idx.ext10
  store i8* %add.ptr11, i8** %str.addr, align 8
  %19 = load i32, i32* %count, align 4
  %20 = load i32, i32* %len, align 4
  %sub = sub i32 %20, %19
  store i32 %sub, i32* %len, align 4
  br label %if.end.22

if.else:                                          ; preds = %while.body
  %21 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %ch, align 1
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %cptr12, align 8
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %endptr13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %endptr13, align 8
  %cmp14 = icmp ult i8* %24, %26
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %27 = load i8, i8* %ch, align 1
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %cptr16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %cptr16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr17, i8** %cptr16, align 8
  store i8 %27, i8* %incdec.ptr17, align 1
  %conv18 = zext i8 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 7
  %write = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 1
  %31 = load i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i8)** %write, align 8
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %33 = load i8, i8* %ch, align 1
  %call = call i32 %31(%struct.stream_s* %32, i8 zeroext %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %call, %cond.false ]
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8
  %eof = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 5
  %35 = load i8, i8* %eof, align 1
  %tobool = icmp ne i8 %35, 0
  br i1 %tobool, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %cond.end
  %36 = load i32, i32* %wlen.addr, align 4
  %37 = load i32, i32* %len, align 4
  %sub20 = sub i32 %36, %37
  store i32 %sub20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  %38 = load i32, i32* %len, align 4
  %dec = add i32 %38, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %wlen.addr, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.19
  %40 = load i32, i32* %retval
  ret i32 %40
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
