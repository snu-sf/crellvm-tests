; ModuleID = './MultiSource.Benchmarks.MiBench/168.office-ispell.makedent.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.strchartype = type { i8*, i8*, i8* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }

@hashheader = external global %struct.hashheader, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = external global i32, align 4
@laststringch = external global i32, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = external global %struct.strchartype*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @makedent(i8* %lbuf, i32 %lbuflen, %struct.dent* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %lbuf.addr = alloca i8*, align 8
  %lbuflen.addr = alloca i32, align 4
  %d.addr = alloca %struct.dent*, align 8
  %ibuf = alloca [120 x i8], align 16
  %ip = alloca i8*, align 8
  %p = alloca i8*, align 8
  %bit = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %lbuf, i8** %lbuf.addr, align 8
  store i32 %lbuflen, i32* %lbuflen.addr, align 4
  store %struct.dent* %d, %struct.dent** %d.addr, align 8
  %0 = load i8*, i8** %lbuf.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %lbuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i8*, i8** %lbuf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %next, align 8
  %7 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %7, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  store i64 0, i64* %arrayidx5, align 8
  %8 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask6 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %mask6, i32 0, i32 0
  %9 = bitcast i64* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 8, i32 1, i1 false)
  %10 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask7 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %mask7, i32 0, i64 0
  %11 = load i64, i64* %arrayidx8, align 8
  %or = or i64 %11, 67108864
  store i64 %or, i64* %arrayidx8, align 8
  %12 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask9 = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x i64], [1 x i64]* %mask9, i32 0, i64 0
  %13 = load i64, i64* %arrayidx10, align 8
  %and = and i64 %13, -134217729
  store i64 %and, i64* %arrayidx10, align 8
  %14 = load i8*, i8** %lbuf.addr, align 8
  %15 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv11 = sext i8 %15 to i32
  %call12 = call i8* @index(i8* %14, i32 %conv11) #5
  store i8* %call12, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %cmp13 = icmp ne i8* %16, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %17 = load i8*, i8** %p, align 8
  store i8 0, i8* %17, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %arraydecay17 = getelementptr inbounds [120 x i8], [120 x i8]* %ibuf, i32 0, i32 0
  %18 = load i8*, i8** %lbuf.addr, align 8
  %call18 = call i32 @strtoichar(i8* %arraydecay17, i8* %18, i32 100, i32 1)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %19 = load i8*, i8** %lbuf.addr, align 8
  %arraydecay19 = getelementptr inbounds [120 x i8], [120 x i8]* %ibuf, i32 0, i32 0
  %20 = load i32, i32* %lbuflen.addr, align 4
  %call20 = call i32 @ichartostr(i8* %19, i8* %arraydecay19, i32 %20, i32 1)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** %lbuf.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %22, i32 158, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  %arraydecay25 = getelementptr inbounds [120 x i8], [120 x i8]* %ibuf, i32 0, i32 0
  store i8* %arraydecay25, i8** %ip, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %23 = load i8*, i8** %ip, align 8
  %24 = load i8, i8* %23, align 1
  %conv26 = zext i8 %24 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %ip, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom29 = zext i8 %26 to i64
  %arrayidx30 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %idxprom29
  %27 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %27, 0
  br i1 %tobool31, label %if.end.48, label %if.then.32

if.then.32:                                       ; preds = %for.body
  %28 = load i8*, i8** %ip, align 8
  %29 = load i8, i8* %28, align 1
  %idxprom33 = zext i8 %29 to i64
  %arrayidx34 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %idxprom33
  %30 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %30, 0
  br i1 %tobool35, label %lor.lhs.false.36, label %if.then.45

lor.lhs.false.36:                                 ; preds = %if.then.32
  %31 = load i8*, i8** %ip, align 8
  %arraydecay37 = getelementptr inbounds [120 x i8], [120 x i8]* %ibuf, i32 0, i32 0
  %cmp38 = icmp eq i8* %31, %arraydecay37
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %32 = load i8*, i8** %ip, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %if.then.32
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** %lbuf.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* %35)
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.40
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %36 = load i8*, i8** %ip, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %ip, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i8*, i8** %lbuf.addr, align 8
  %call49 = call i64 @strlen(i8* %37) #5
  %conv50 = trunc i64 %call49 to i32
  store i32 %conv50, i32* %len, align 4
  %arraydecay51 = getelementptr inbounds [120 x i8], [120 x i8]* %ibuf, i32 0, i32 0
  %call52 = call i64 @whatcap(i8* %arraydecay51)
  %38 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask53 = getelementptr inbounds %struct.dent, %struct.dent* %38, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x i64], [1 x i64]* %mask53, i32 0, i64 0
  %39 = load i64, i64* %arrayidx54, align 8
  %or55 = or i64 %39, %call52
  store i64 %or55, i64* %arrayidx54, align 8
  %40 = load i32, i32* %len, align 4
  %cmp56 = icmp sgt i32 %40, 99
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %for.end
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i8*, i8** %lbuf.addr, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %42, i32 188, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %for.end
  %43 = load i32, i32* %len, align 4
  %add = add i32 %43, 1
  %call61 = call i8* @mymalloc(i32 %add)
  %44 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %44, i32 0, i32 1
  store i8* %call61, i8** %word, align 8
  %45 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %word62 = getelementptr inbounds %struct.dent, %struct.dent* %45, i32 0, i32 1
  %46 = load i8*, i8** %word62, align 8
  %cmp63 = icmp eq i8* %46, null
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.60
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i8*, i8** %lbuf.addr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %48)
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.60
  %49 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %word68 = getelementptr inbounds %struct.dent, %struct.dent* %49, i32 0, i32 1
  %50 = load i8*, i8** %word68, align 8
  %51 = load i8*, i8** %lbuf.addr, align 8
  %call69 = call i8* @strcpy(i8* %50, i8* %51) #2
  %52 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask70 = getelementptr inbounds %struct.dent, %struct.dent* %52, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %mask70, i32 0, i64 0
  %53 = load i64, i64* %arrayidx71, align 8
  %and72 = and i64 %53, 805306368
  %cmp73 = icmp ne i64 %and72, 805306368
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.67
  %54 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %word76 = getelementptr inbounds %struct.dent, %struct.dent* %54, i32 0, i32 1
  %55 = load i8*, i8** %word76, align 8
  call void @chupcase(i8* %55)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.67
  %56 = load i8*, i8** %p, align 8
  %cmp78 = icmp eq i8* %56, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.77
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr82, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.109, %if.end.81
  %58 = load i8*, i8** %p, align 8
  %59 = load i8, i8* %58, align 1
  %conv83 = sext i8 %59 to i32
  %cmp84 = icmp ne i32 %conv83, 0
  br i1 %cmp84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %60 = load i8*, i8** %p, align 8
  %61 = load i8, i8* %60, align 1
  %conv86 = sext i8 %61 to i32
  %cmp87 = icmp ne i32 %conv86, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %62 = phi i1 [ false, %while.cond ], [ %cmp87, %land.rhs ]
  br i1 %62, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %63 = load i8*, i8** %p, align 8
  %64 = load i8, i8* %63, align 1
  %conv89 = zext i8 %64 to i32
  %sub90 = sub nsw i32 %conv89, 65
  store i32 %sub90, i32* %bit, align 4
  %65 = load i32, i32* %bit, align 4
  %cmp91 = icmp sge i32 %65, 0
  br i1 %cmp91, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %66 = load i32, i32* %bit, align 4
  %cmp93 = icmp sle i32 %66, 26
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %land.lhs.true
  %67 = load i32, i32* %bit, align 4
  %sh_prom = zext i32 %67 to i64
  %shl = shl i64 1, %sh_prom
  %68 = load %struct.dent*, %struct.dent** %d.addr, align 8
  %mask96 = getelementptr inbounds %struct.dent, %struct.dent* %68, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [1 x i64], [1 x i64]* %mask96, i32 0, i64 0
  %69 = load i64, i64* %arrayidx97, align 8
  %or98 = or i64 %69, %shl
  store i64 %or98, i64* %arrayidx97, align 8
  br label %if.end.101

if.else:                                          ; preds = %land.lhs.true, %while.body
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i8*, i8** %p, align 8
  %72 = load i8, i8* %71, align 1
  %conv99 = zext i8 %72 to i32
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i32 %conv99)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else, %if.then.95
  %73 = load i8*, i8** %p, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr102, i8** %p, align 8
  %74 = load i8*, i8** %p, align 8
  %75 = load i8, i8* %74, align 1
  %conv103 = sext i8 %75 to i32
  %76 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv104 = sext i8 %76 to i32
  %cmp105 = icmp eq i32 %conv103, %conv104
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.101
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr108, i8** %p, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.101
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.80, %if.then.65, %if.then.58, %if.then.45, %if.then.22
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i8* @index(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @strtoichar(i8* %out, i8* %in, i32 %outlen, i32 %canonical) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %outlen.addr = alloca i32, align 4
  %canonical.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i32 %outlen, i32* %outlen.addr, align 4
  store i32 %canonical, i32* %canonical.addr, align 4
  %0 = load i32, i32* %outlen.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 1
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %outlen.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %outlen.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %outlen.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %in.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  store i32 1, i32* %len, align 4
  %5 = load i8*, i8** %in.addr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv6, 0
  br i1 %tobool, label %land.rhs.7, label %land.end.11

land.rhs.7:                                       ; preds = %for.body
  %8 = load i8*, i8** %in.addr, align 8
  %9 = load i32, i32* %canonical.addr, align 4
  %call = call i32 @stringcharlen(i8* %8, i32 %9)
  store i32 %call, i32* %len, align 4
  %cmp8 = icmp sgt i32 %call, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs.7
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.7
  store i32 1, i32* %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ 0, %cond.false ]
  %tobool10 = icmp ne i32 %cond, 0
  br label %land.end.11

land.end.11:                                      ; preds = %cond.end, %for.body
  %10 = phi i1 [ false, %for.body ], [ %tobool10, %cond.end ]
  br i1 %10, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.11
  %11 = load i32, i32* @laststringch, align 4
  %add = add i32 128, %11
  %conv12 = trunc i32 %add to i8
  %12 = load i8*, i8** %out.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8
  store i8 %conv12, i8* %12, align 1
  br label %if.end

if.else:                                          ; preds = %land.end.11
  %13 = load i8*, i8** %in.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = sext i8 %14 to i32
  %and = and i32 %conv13, 127
  %conv14 = trunc i32 %and to i8
  %15 = load i8*, i8** %out.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr15, i8** %out.addr, align 8
  store i8 %conv14, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %len, align 4
  %17 = load i8*, i8** %in.addr, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %in.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i8*, i8** %out.addr, align 8
  store i8 0, i8* %18, align 1
  %19 = load i32, i32* %outlen.addr, align 4
  %cmp16 = icmp sle i32 %19, 0
  %conv17 = zext i1 %cmp16 to i32
  ret i32 %conv17
}

; Function Attrs: nounwind uwtable
define i32 @ichartostr(i8* %out, i8* %in, i32 %outlen, i32 %canonical) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %outlen.addr = alloca i32, align 4
  %canonical.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %scharp = alloca i8*, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i32 %outlen, i32* %outlen.addr, align 4
  store i32 %canonical, i32* %canonical.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %0 = load i32, i32* %outlen.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %outlen.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %ch, align 4
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.30

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %ch, align 4
  %cmp3 = icmp slt i32 %4, 128
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %ch, align 4
  %conv5 = trunc i32 %5 to i8
  %6 = load i8*, i8** %out.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %out.addr, align 8
  store i8 %conv5, i8* %6, align 1
  br label %if.end.29

if.else:                                          ; preds = %while.body
  %7 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %7, 128
  store i32 %sub, i32* %ch, align 4
  %8 = load i32, i32* %canonical.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.18, label %if.then.7

if.then.7:                                        ; preds = %if.else
  %9 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then.7
  %10 = load i32, i32* %i, align 4
  %dec8 = add nsw i32 %10, -1
  store i32 %dec8, i32* %i, align 4
  %cmp9 = icmp sge i32 %dec8, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* @defdupchar, align 4
  %cmp11 = icmp eq i32 %12, %13
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 29), i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  %16 = load i32, i32* %ch, align 4
  %cmp15 = icmp eq i32 %15, %16
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %ch, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.else
  %18 = load i32, i32* %ch, align 4
  %idxprom19 = zext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %idxprom19
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx20, i32 0, i32 0
  store i8* %arraydecay, i8** %scharp, align 8
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.27, %if.end.18
  %19 = load i8*, i8** %scharp, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %scharp, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %out.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr23, i8** %out.addr, align 8
  store i8 %20, i8* %21, align 1
  %conv24 = sext i8 %20 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.21
  br label %while.cond.21

while.end:                                        ; preds = %while.cond.21
  %22 = load i8*, i8** %out.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr28, i8** %out.addr, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %while.end, %if.then
  br label %while.cond

while.end.30:                                     ; preds = %land.end
  %23 = load i8*, i8** %out.addr, align 8
  store i8 0, i8* %23, align 1
  %24 = load i32, i32* %outlen.addr, align 4
  %cmp31 = icmp sle i32 %24, 0
  %conv32 = zext i1 %cmp31 to i32
  ret i32 %conv32
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i64 @whatcap(i8* %word) #0 {
entry:
  %retval = alloca i64, align 8
  %word.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  %0 = load i8*, i8** %word.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  store i64 268435456, i64* %retval
  br label %return

if.else:                                          ; preds = %for.end
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %if.else
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom7 = zext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %tobool9 = icmp ne i8 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body.6
  br label %for.end.14

if.end.11:                                        ; preds = %for.body.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.11
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %for.cond.4

for.end.14:                                       ; preds = %if.then.10, %for.cond.4
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.38

if.then.18:                                       ; preds = %for.end.14
  %17 = load i8*, i8** %word.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx19, align 1
  %idxprom20 = zext i8 %18 to i64
  %arrayidx21 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %tobool22 = icmp ne i8 %19, 0
  br i1 %tobool22, label %if.then.23, label %if.else.37

if.then.23:                                       ; preds = %if.then.18
  %20 = load i8*, i8** %word.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.34, %if.then.23
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv25 = zext i8 %22 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.24
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %idxprom29 = zext i8 %24 to i64
  %arrayidx30 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom29
  %25 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %25, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.28
  store i64 805306368, i64* %retval
  br label %return

if.end.33:                                        ; preds = %for.body.28
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  br label %for.cond.24

for.end.36:                                       ; preds = %for.cond.24
  store i64 536870912, i64* %retval
  br label %return

if.else.37:                                       ; preds = %if.then.18
  store i64 0, i64* %retval
  br label %return

if.else.38:                                       ; preds = %for.end.14
  store i64 805306368, i64* %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.else.37, %for.end.36, %if.then.32, %if.then.3
  %27 = load i64, i64* %retval
  ret i64 %27
}

declare i8* @mymalloc(i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @chupcase(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %is = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @strtosichar(i8* %0, i32 1)
  store i8* %call, i8** %is, align 8
  %1 = load i8*, i8** %is, align 8
  call void @upcase(i8* %1)
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8*, i8** %is, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #5
  %add = add i64 %call1, 1
  %conv = trunc i64 %add to i32
  %call2 = call i32 @ichartostr(i8* %2, i8* %3, i32 %conv, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @addvheader(%struct.dent* %dp) #0 {
entry:
  %retval = alloca i32, align 4
  %dp.addr = alloca %struct.dent*, align 8
  %tdent = alloca %struct.dent*, align 8
  store %struct.dent* %dp, %struct.dent** %dp.addr, align 8
  %call = call i8* @mymalloc(i32 24)
  %0 = bitcast i8* %call to %struct.dent*
  store %struct.dent* %0, %struct.dent** %tdent, align 8
  %1 = load %struct.dent*, %struct.dent** %tdent, align 8
  %cmp = icmp eq %struct.dent* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %3, i32 0, i32 1
  %4 = load i8*, i8** %word, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.dent*, %struct.dent** %tdent, align 8
  %6 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %7 = bitcast %struct.dent* %5 to i8*
  %8 = bitcast %struct.dent* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  %9 = load %struct.dent*, %struct.dent** %tdent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %10 = load i64, i64* %arrayidx, align 8
  %and = and i64 %10, 805306368
  %cmp2 = icmp ne i64 %and, 805306368
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word4 = getelementptr inbounds %struct.dent, %struct.dent* %11, i32 0, i32 1
  store i8* null, i8** %word4, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %12 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word5 = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 1
  %13 = load i8*, i8** %word5, align 8
  %call6 = call i64 @strlen(i8* %13) #5
  %conv = trunc i64 %call6 to i32
  %add = add i32 %conv, 1
  %call7 = call i8* @mymalloc(i32 %add)
  %14 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word8 = getelementptr inbounds %struct.dent, %struct.dent* %14, i32 0, i32 1
  store i8* %call7, i8** %word8, align 8
  %15 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word9 = getelementptr inbounds %struct.dent, %struct.dent* %15, i32 0, i32 1
  %16 = load i8*, i8** %word9, align 8
  %cmp10 = icmp eq i8* %16, null
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %word13 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 1
  %19 = load i8*, i8** %word13, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %19)
  %20 = load %struct.dent*, %struct.dent** %tdent, align 8
  %21 = bitcast %struct.dent* %20 to i8*
  call void @myfree(i8* %21)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else
  %22 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word16 = getelementptr inbounds %struct.dent, %struct.dent* %22, i32 0, i32 1
  %23 = load i8*, i8** %word16, align 8
  %24 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %word17 = getelementptr inbounds %struct.dent, %struct.dent* %24, i32 0, i32 1
  %25 = load i8*, i8** %word17, align 8
  %call18 = call i8* @strcpy(i8* %23, i8* %25) #2
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.15, %if.then.3
  %26 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %word20 = getelementptr inbounds %struct.dent, %struct.dent* %26, i32 0, i32 1
  %27 = load i8*, i8** %word20, align 8
  call void @chupcase(i8* %27)
  %28 = load %struct.dent*, %struct.dent** %tdent, align 8
  %29 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 0
  store %struct.dent* %28, %struct.dent** %next, align 8
  %30 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %mask21 = getelementptr inbounds %struct.dent, %struct.dent* %30, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x i64], [1 x i64]* %mask21, i32 0, i64 0
  %31 = load i64, i64* %arrayidx22, align 8
  %and23 = and i64 %31, -805306369
  store i64 %and23, i64* %arrayidx22, align 8
  %32 = load %struct.dent*, %struct.dent** %dp.addr, align 8
  %mask24 = getelementptr inbounds %struct.dent, %struct.dent* %32, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [1 x i64], [1 x i64]* %mask24, i32 0, i64 0
  %33 = load i64, i64* %arrayidx25, align 8
  %or = or i64 %33, 1342177280
  store i64 %or, i64* %arrayidx25, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.12, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @myfree(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @combinecaps(%struct.dent* %hdrp, %struct.dent* %newp) #0 {
entry:
  %retval = alloca i32, align 4
  %hdrp.addr = alloca %struct.dent*, align 8
  %newp.addr = alloca %struct.dent*, align 8
  %oldp = alloca %struct.dent*, align 8
  %tdent = alloca %struct.dent*, align 8
  %retval1 = alloca i32, align 4
  store %struct.dent* %hdrp, %struct.dent** %hdrp.addr, align 8
  store %struct.dent* %newp, %struct.dent** %newp.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  store %struct.dent* %0, %struct.dent** %oldp, align 8
  %1 = load %struct.dent*, %struct.dent** %oldp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %and = and i64 %2, 1879048192
  %cmp = icmp eq i64 %and, 1342177280
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load %struct.dent*, %struct.dent** %oldp, align 8
  %mask2 = getelementptr inbounds %struct.dent, %struct.dent* %3, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %mask2, i32 0, i64 0
  %4 = load i64, i64* %arrayidx3, align 8
  %and4 = and i64 %4, 1073741824
  %tobool = icmp ne i64 %and4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.dent*, %struct.dent** %oldp, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %5, i32 0, i32 0
  %6 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %6, %struct.dent** %oldp, align 8
  %7 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %8 = load %struct.dent*, %struct.dent** %oldp, align 8
  %9 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %call = call i32 @combine_two_entries(%struct.dent* %7, %struct.dent* %8, %struct.dent* %9)
  store i32 %call, i32* %retval1, align 4
  %10 = load i32, i32* %retval1, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.6, %while.cond
  br label %if.end.8

if.else:                                          ; preds = %entry
  %11 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %12 = load %struct.dent*, %struct.dent** %oldp, align 8
  %13 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %call7 = call i32 @combine_two_entries(%struct.dent* %11, %struct.dent* %12, %struct.dent* %13)
  store i32 %call7, i32* %retval1, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %while.end
  %14 = load i32, i32* %retval1, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.44

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %16 = load %struct.dent*, %struct.dent** %oldp, align 8
  %17 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  call void @forcevheader(%struct.dent* %15, %struct.dent* %16, %struct.dent* %17)
  %call11 = call i8* @mymalloc(i32 24)
  %18 = bitcast i8* %call11 to %struct.dent*
  store %struct.dent* %18, %struct.dent** %tdent, align 8
  %19 = load %struct.dent*, %struct.dent** %tdent, align 8
  %cmp12 = icmp eq %struct.dent* %19, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %21, i32 0, i32 1
  %22 = load i8*, i8** %word, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %22)
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %23 = load %struct.dent*, %struct.dent** %tdent, align 8
  %24 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %25 = bitcast %struct.dent* %23 to i8*
  %26 = bitcast %struct.dent* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false)
  %27 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %next16 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 0
  %28 = load %struct.dent*, %struct.dent** %next16, align 8
  %29 = load %struct.dent*, %struct.dent** %tdent, align 8
  %next17 = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 0
  store %struct.dent* %28, %struct.dent** %next17, align 8
  %30 = load %struct.dent*, %struct.dent** %tdent, align 8
  %31 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %next18 = getelementptr inbounds %struct.dent, %struct.dent* %31, i32 0, i32 0
  store %struct.dent* %30, %struct.dent** %next18, align 8
  %32 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask19 = getelementptr inbounds %struct.dent, %struct.dent* %32, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %mask19, i32 0, i64 0
  %33 = load i64, i64* %arrayidx20, align 8
  %and21 = and i64 %33, 1073741824
  %34 = load %struct.dent*, %struct.dent** %tdent, align 8
  %mask22 = getelementptr inbounds %struct.dent, %struct.dent* %34, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %mask22, i32 0, i64 0
  %35 = load i64, i64* %arrayidx23, align 8
  %or = or i64 %35, %and21
  store i64 %or, i64* %arrayidx23, align 8
  %36 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask24 = getelementptr inbounds %struct.dent, %struct.dent* %36, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [1 x i64], [1 x i64]* %mask24, i32 0, i64 0
  %37 = load i64, i64* %arrayidx25, align 8
  %or26 = or i64 %37, 1073741824
  store i64 %or26, i64* %arrayidx25, align 8
  %38 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %39 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  call void @combineaffixes(%struct.dent* %38, %struct.dent* %39)
  %40 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask27 = getelementptr inbounds %struct.dent, %struct.dent* %40, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x i64], [1 x i64]* %mask27, i32 0, i64 0
  %41 = load i64, i64* %arrayidx28, align 8
  %and29 = and i64 %41, 134217728
  %42 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask30 = getelementptr inbounds %struct.dent, %struct.dent* %42, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x i64], [1 x i64]* %mask30, i32 0, i64 0
  %43 = load i64, i64* %arrayidx31, align 8
  %or32 = or i64 %43, %and29
  store i64 %or32, i64* %arrayidx31, align 8
  %44 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask33 = getelementptr inbounds %struct.dent, %struct.dent* %44, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %mask33, i32 0, i64 0
  %45 = load i64, i64* %arrayidx34, align 8
  %and35 = and i64 %45, 805306368
  %cmp36 = icmp eq i64 %and35, 805306368
  br i1 %cmp36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.end.15
  %46 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word38 = getelementptr inbounds %struct.dent, %struct.dent* %46, i32 0, i32 1
  %47 = load i8*, i8** %word38, align 8
  %48 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word39 = getelementptr inbounds %struct.dent, %struct.dent* %48, i32 0, i32 1
  store i8* %47, i8** %word39, align 8
  br label %if.end.43

if.else.40:                                       ; preds = %if.end.15
  %49 = load %struct.dent*, %struct.dent** %tdent, align 8
  %word41 = getelementptr inbounds %struct.dent, %struct.dent* %49, i32 0, i32 1
  store i8* null, i8** %word41, align 8
  %50 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word42 = getelementptr inbounds %struct.dent, %struct.dent* %50, i32 0, i32 1
  %51 = load i8*, i8** %word42, align 8
  call void @myfree(i8* %51)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.8
  %52 = load i32, i32* %retval1, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.13
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @combine_two_entries(%struct.dent* %hdrp, %struct.dent* %oldp, %struct.dent* %newp) #0 {
entry:
  %retval = alloca i32, align 4
  %hdrp.addr = alloca %struct.dent*, align 8
  %oldp.addr = alloca %struct.dent*, align 8
  %newp.addr = alloca %struct.dent*, align 8
  store %struct.dent* %hdrp, %struct.dent** %hdrp.addr, align 8
  store %struct.dent* %oldp, %struct.dent** %oldp.addr, align 8
  store %struct.dent* %newp, %struct.dent** %newp.addr, align 8
  %0 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %1 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %call = call i32 @acoversb(%struct.dent* %0, %struct.dent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %3 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  call void @combineaffixes(%struct.dent* %2, %struct.dent* %3)
  %4 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %5 = load i64, i64* %arrayidx, align 8
  %and = and i64 %5, 134217728
  %6 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %mask1 = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask1, i32 0, i64 0
  %7 = load i64, i64* %arrayidx2, align 8
  %or = or i64 %7, %and
  store i64 %or, i64* %arrayidx2, align 8
  %8 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask3 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %mask3, i32 0, i64 0
  %9 = load i64, i64* %arrayidx4, align 8
  %and5 = and i64 %9, 134217728
  %10 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask6 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %mask6, i32 0, i64 0
  %11 = load i64, i64* %arrayidx7, align 8
  %or8 = or i64 %11, %and5
  store i64 %or8, i64* %arrayidx7, align 8
  %12 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 1
  %13 = load i8*, i8** %word, align 8
  call void @myfree(i8* %13)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %15 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %call9 = call i32 @acoversb(%struct.dent* %14, %struct.dent* %15)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.44

if.then.11:                                       ; preds = %if.else
  %16 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %17 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  call void @combineaffixes(%struct.dent* %16, %struct.dent* %17)
  %18 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %mask12 = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x i64], [1 x i64]* %mask12, i32 0, i64 0
  %19 = load i64, i64* %arrayidx13, align 8
  %and14 = and i64 %19, 1207959552
  %20 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask15 = getelementptr inbounds %struct.dent, %struct.dent* %20, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1 x i64], [1 x i64]* %mask15, i32 0, i64 0
  %21 = load i64, i64* %arrayidx16, align 8
  %or17 = or i64 %21, %and14
  store i64 %or17, i64* %arrayidx16, align 8
  %22 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask18 = getelementptr inbounds %struct.dent, %struct.dent* %22, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x i64], [1 x i64]* %mask18, i32 0, i64 0
  %23 = load i64, i64* %arrayidx19, align 8
  %and20 = and i64 %23, 134217728
  %24 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask21 = getelementptr inbounds %struct.dent, %struct.dent* %24, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x i64], [1 x i64]* %mask21, i32 0, i64 0
  %25 = load i64, i64* %arrayidx22, align 8
  %or23 = or i64 %25, %and20
  store i64 %or23, i64* %arrayidx22, align 8
  %26 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %26, i32 0, i32 0
  %27 = load %struct.dent*, %struct.dent** %next, align 8
  %28 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %next24 = getelementptr inbounds %struct.dent, %struct.dent* %28, i32 0, i32 0
  store %struct.dent* %27, %struct.dent** %next24, align 8
  %29 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %word25 = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 1
  %30 = load i8*, i8** %word25, align 8
  %cmp = icmp ne i8* %30, null
  br i1 %cmp, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.11
  %31 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %word27 = getelementptr inbounds %struct.dent, %struct.dent* %31, i32 0, i32 1
  %32 = load i8*, i8** %word27, align 8
  %33 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word28 = getelementptr inbounds %struct.dent, %struct.dent* %33, i32 0, i32 1
  %34 = load i8*, i8** %word28, align 8
  %call29 = call i8* @strcpy(i8* %32, i8* %34) #2
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then.11
  %35 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word30 = getelementptr inbounds %struct.dent, %struct.dent* %35, i32 0, i32 1
  %36 = load i8*, i8** %word30, align 8
  call void @myfree(i8* %36)
  %37 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %word31 = getelementptr inbounds %struct.dent, %struct.dent* %37, i32 0, i32 1
  %38 = load i8*, i8** %word31, align 8
  %39 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %word32 = getelementptr inbounds %struct.dent, %struct.dent* %39, i32 0, i32 1
  store i8* %38, i8** %word32, align 8
  %40 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %41 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %42 = bitcast %struct.dent* %40 to i8*
  %43 = bitcast %struct.dent* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 24, i32 8, i1 false)
  %44 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask33 = getelementptr inbounds %struct.dent, %struct.dent* %44, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %mask33, i32 0, i64 0
  %45 = load i64, i64* %arrayidx34, align 8
  %and35 = and i64 %45, 805306368
  %cmp36 = icmp eq i64 %and35, 805306368
  br i1 %cmp36, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end
  %46 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask37 = getelementptr inbounds %struct.dent, %struct.dent* %46, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x i64], [1 x i64]* %mask37, i32 0, i64 0
  %47 = load i64, i64* %arrayidx38, align 8
  %and39 = and i64 %47, 1879048192
  %cmp40 = icmp ne i64 %and39, 1342177280
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %land.lhs.true
  %48 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %call42 = call i32 @addvheader(%struct.dent* %48)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.44, %if.end.43, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @forcevheader(%struct.dent* %hdrp, %struct.dent* %oldp, %struct.dent* %newp) #0 {
entry:
  %hdrp.addr = alloca %struct.dent*, align 8
  %oldp.addr = alloca %struct.dent*, align 8
  %newp.addr = alloca %struct.dent*, align 8
  store %struct.dent* %hdrp, %struct.dent** %hdrp.addr, align 8
  store %struct.dent* %oldp, %struct.dent** %oldp.addr, align 8
  store %struct.dent* %newp, %struct.dent** %newp.addr, align 8
  %0 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %and = and i64 %1, 1879048192
  %cmp = icmp eq i64 %and, 268435456
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dent*, %struct.dent** %oldp.addr, align 8
  %mask1 = getelementptr inbounds %struct.dent, %struct.dent* %2, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask1, i32 0, i64 0
  %3 = load i64, i64* %arrayidx2, align 8
  %4 = load %struct.dent*, %struct.dent** %newp.addr, align 8
  %mask3 = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %mask3, i32 0, i64 0
  %5 = load i64, i64* %arrayidx4, align 8
  %xor = xor i64 %3, %5
  %and5 = and i64 %xor, 134217728
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %mask7 = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %mask7, i32 0, i64 0
  %7 = load i64, i64* %arrayidx8, align 8
  %and9 = and i64 %7, 1879048192
  %cmp10 = icmp ne i64 %and9, 1342177280
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %8 = load %struct.dent*, %struct.dent** %hdrp.addr, align 8
  %call = call i32 @addvheader(%struct.dent* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @combineaffixes(%struct.dent* %ent1, %struct.dent* %ent2) #0 {
entry:
  %ent1.addr = alloca %struct.dent*, align 8
  %ent2.addr = alloca %struct.dent*, align 8
  store %struct.dent* %ent1, %struct.dent** %ent1.addr, align 8
  store %struct.dent* %ent2, %struct.dent** %ent2.addr, align 8
  %0 = load %struct.dent*, %struct.dent** %ent2.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %and = and i64 %1, -2080374785
  %2 = load %struct.dent*, %struct.dent** %ent1.addr, align 8
  %mask1 = getelementptr inbounds %struct.dent, %struct.dent* %2, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask1, i32 0, i64 0
  %3 = load i64, i64* %arrayidx2, align 8
  %or = or i64 %3, %and
  store i64 %or, i64* %arrayidx2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @upcase(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %s.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @lowcase(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %s.addr, align 8
  store i8 %4, i8* %5, align 1
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @strtosichar(i8* %in, i32 %canonical) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %canonical.addr = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %canonical, i32* %canonical.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  %1 = load i32, i32* %canonical.addr, align 4
  %call = call i32 @strtoichar(i8* getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i32 0, i32 0), i8* %0, i32 184, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %in.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %3, i32 944, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @toutent(%struct._IO_FILE* %toutfile, %struct.dent* %hent, i32 %onlykeep) #0 {
entry:
  %toutfile.addr = alloca %struct._IO_FILE*, align 8
  %hent.addr = alloca %struct.dent*, align 8
  %onlykeep.addr = alloca i32, align 4
  %cent = alloca %struct.dent*, align 8
  %wbuf = alloca [120 x i8], align 16
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %toutfile.addr, align 8
  store %struct.dent* %hent, %struct.dent** %hent.addr, align 8
  store i32 %onlykeep, i32* %onlykeep.addr, align 4
  %0 = load %struct.dent*, %struct.dent** %hent.addr, align 8
  store %struct.dent* %0, %struct.dent** %cent, align 8
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  %1 = load %struct.dent*, %struct.dent** %cent, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %1, i32 0, i32 1
  %2 = load i8*, i8** %word, align 8
  %call = call i32 @strtoichar(i8* %arraydecay, i8* %2, i32 100, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.dent*, %struct.dent** %cent, align 8
  %word1 = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 1
  %5 = load i8*, i8** %word1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* %5, i32 700, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.38, %if.end
  %6 = load i32, i32* %onlykeep.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %for.cond
  %7 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %8 = load i64, i64* %arrayidx, align 8
  %and = and i64 %8, 134217728
  %tobool4 = icmp ne i64 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.32

if.then.5:                                        ; preds = %lor.lhs.false, %for.cond
  %9 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask6 = getelementptr inbounds %struct.dent, %struct.dent* %9, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %mask6, i32 0, i64 0
  %10 = load i64, i64* %arrayidx7, align 8
  %and8 = and i64 %10, 805306368
  switch i64 %and8, label %sw.epilog [
    i64 0, label %sw.bb
    i64 268435456, label %sw.bb.12
    i64 536870912, label %sw.bb.23
    i64 805306368, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.then.5
  %arraydecay9 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  call void @lowcase(i8* %arraydecay9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %arraydecay10 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  %call11 = call i8* @ichartosstr(i8* %arraydecay10, i32 1)
  %12 = load %struct.dent*, %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %11, i8* %call11, %struct.dent* %12)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.5
  %13 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask13 = getelementptr inbounds %struct.dent, %struct.dent* %13, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %mask13, i32 0, i64 0
  %14 = load i64, i64* %arrayidx14, align 8
  %and15 = and i64 %14, 1073741824
  %cmp = icmp eq i64 %and15, 0
  br i1 %cmp, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %sw.bb.12
  %15 = load %struct.dent*, %struct.dent** %cent, align 8
  %16 = load %struct.dent*, %struct.dent** %hent.addr, align 8
  %cmp17 = icmp ne %struct.dent* %15, %16
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %lor.lhs.false.16, %sw.bb.12
  %arraydecay19 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  call void @upcase(i8* %arraydecay19)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %arraydecay20 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  %call21 = call i8* @ichartosstr(i8* %arraydecay20, i32 1)
  %18 = load %struct.dent*, %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %17, i8* %call21, %struct.dent* %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %lor.lhs.false.16
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.then.5
  %arraydecay24 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  call void @lowcase(i8* %arraydecay24)
  %arrayidx25 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i64 0
  %19 = load i8, i8* %arrayidx25, align 1
  %idxprom = zext i8 %19 to i64
  %arrayidx26 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i64 0
  store i8 %20, i8* %arrayidx27, align 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %arraydecay28 = getelementptr inbounds [120 x i8], [120 x i8]* %wbuf, i32 0, i32 0
  %call29 = call i8* @ichartosstr(i8* %arraydecay28, i32 1)
  %22 = load %struct.dent*, %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %21, i8* %call29, %struct.dent* %22)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %24 = load %struct.dent*, %struct.dent** %cent, align 8
  %word31 = getelementptr inbounds %struct.dent, %struct.dent* %24, i32 0, i32 1
  %25 = load i8*, i8** %word31, align 8
  %26 = load %struct.dent*, %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %23, i8* %25, %struct.dent* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.5, %sw.bb.30, %sw.bb.23, %if.end.22, %sw.bb
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog, %lor.lhs.false
  %27 = load %struct.dent*, %struct.dent** %cent, align 8
  %mask33 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %mask33, i32 0, i64 0
  %28 = load i64, i64* %arrayidx34, align 8
  %and35 = and i64 %28, 1073741824
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.32
  %29 = load %struct.dent*, %struct.dent** %cent, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 0
  %30 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %30, %struct.dent** %cent, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end.32
  br label %for.end

if.end.38:                                        ; preds = %if.then.37
  br label %for.cond

for.end:                                          ; preds = %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @toutword(%struct._IO_FILE* %toutfile, i8* %word, %struct.dent* %cent) #0 {
entry:
  %toutfile.addr = alloca %struct._IO_FILE*, align 8
  %word.addr = alloca i8*, align 8
  %cent.addr = alloca %struct.dent*, align 8
  %bit = alloca i32, align 4
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %toutfile.addr, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.dent* %cent, %struct.dent** %cent.addr, align 8
  store i32 0, i32* @has_marker, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %1 = load i8*, i8** %word.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %bit, align 4
  %cmp = icmp slt i32 %2, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dent*, %struct.dent** %cent.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %bit, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %4, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %7 = load i32, i32* %bit, align 4
  %add = add nsw i32 %7, 65
  call void @flagout(%struct._IO_FILE* %6, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %bit, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %bit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ichartosstr(i8* %in, i32 %canonical) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %canonical.addr = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %canonical, i32* %canonical.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  %1 = load i32, i32* %canonical.addr, align 4
  %call = call i32 @ichartostr(i8* getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i32 0, i32 0), i8* %0, i32 184, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i32 0, i32 0), i32 958, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @stringcharlen(i8* %bufp, i32 %canonical) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca i8*, align 8
  %canonical.addr = alloca i32, align 4
  %bufcur = alloca i8*, align 8
  %stringcur = alloca i8*, align 8
  %stringno = alloca i32, align 4
  %lowstringno = alloca i32, align 4
  %highstringno = alloca i32, align 4
  %dupwanted = alloca i32, align 4
  store i8* %bufp, i8** %bufp.addr, align 8
  store i32 %canonical, i32* %canonical.addr, align 4
  store i32 0, i32* %lowstringno, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %highstringno, align 4
  %1 = load i32, i32* %canonical.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @defdupchar, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %dupwanted, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %cond.end
  %3 = load i32, i32* %lowstringno, align 4
  %4 = load i32, i32* %highstringno, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end.57

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %lowstringno, align 4
  %6 = load i32, i32* %highstringno, align 4
  %add = add nsw i32 %5, %6
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %stringno, align 4
  %7 = load i32, i32* %stringno, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i32 0, i64 0
  store i8* %arrayidx1, i8** %stringcur, align 8
  %8 = load i8*, i8** %bufp.addr, align 8
  store i8* %8, i8** %bufcur, align 8
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %9 = load i8*, i8** %stringcur, align 8
  %10 = load i8, i8* %9, align 1
  %tobool3 = icmp ne i8 %10, 0
  br i1 %tobool3, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.2
  %11 = load i8*, i8** %bufcur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %bufcur, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %13 = load i8*, i8** %stringcur, align 8
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %xor = xor i32 %conv, %conv5
  %and = and i32 %xor, 127
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.4
  br label %while.end

if.end:                                           ; preds = %while.body.4
  %15 = load i8*, i8** %stringcur, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %stringcur, align 8
  br label %while.cond.2

while.end:                                        ; preds = %if.then, %while.cond.2
  %16 = load i8*, i8** %stringcur, align 8
  %17 = load i8, i8* %16, align 1
  %conv9 = sext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %while.end
  %18 = load i32, i32* %stringno, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %idxprom13
  %19 = load i32, i32* %arrayidx14, align 4
  %20 = load i32, i32* %dupwanted, align 4
  %cmp15 = icmp eq i32 %19, %20
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.12
  %21 = load i32, i32* %stringno, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 29), i32 0, i64 %idxprom18
  %22 = load i32, i32* %arrayidx19, align 4
  store i32 %22, i32* @laststringch, align 4
  %23 = load i8*, i8** %stringcur, align 8
  %24 = load i32, i32* %stringno, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx21, i32 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arrayidx22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv23, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.12
  %25 = load i8*, i8** %stringcur, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr24, i8** %stringcur, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %while.end
  %26 = load i8*, i8** %bufcur, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr27, i8** %bufcur, align 8
  %27 = load i8, i8* %incdec.ptr27, align 1
  %conv28 = sext i8 %27 to i32
  %and29 = and i32 %conv28, 127
  %28 = load i8*, i8** %stringcur, align 8
  %29 = load i8, i8* %28, align 1
  %conv30 = sext i8 %29 to i32
  %and31 = and i32 %conv30, 127
  %cmp32 = icmp slt i32 %and29, %and31
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.26
  %30 = load i32, i32* %stringno, align 4
  %sub35 = sub nsw i32 %30, 1
  store i32 %sub35, i32* %highstringno, align 4
  br label %if.end.56

if.else.36:                                       ; preds = %if.end.26
  %31 = load i8*, i8** %bufcur, align 8
  %32 = load i8, i8* %31, align 1
  %conv37 = sext i8 %32 to i32
  %and38 = and i32 %conv37, 127
  %33 = load i8*, i8** %stringcur, align 8
  %34 = load i8, i8* %33, align 1
  %conv39 = sext i8 %34 to i32
  %and40 = and i32 %conv39, 127
  %cmp41 = icmp sgt i32 %and38, %and40
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.36
  %35 = load i32, i32* %stringno, align 4
  %add44 = add nsw i32 %35, 1
  store i32 %add44, i32* %lowstringno, align 4
  br label %if.end.55

if.else.45:                                       ; preds = %if.else.36
  %36 = load i32, i32* %dupwanted, align 4
  %37 = load i32, i32* %stringno, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], [100 x i32]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %idxprom46
  %38 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp slt i32 %36, %38
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.else.45
  %39 = load i32, i32* %stringno, align 4
  %sub51 = sub nsw i32 %39, 1
  store i32 %sub51, i32* %highstringno, align 4
  br label %if.end.54

if.else.52:                                       ; preds = %if.else.45
  %40 = load i32, i32* %stringno, align 4
  %add53 = add nsw i32 %40, 1
  store i32 %add53, i32* %lowstringno, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.43
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.34
  br label %while.cond

while.end.57:                                     ; preds = %while.cond
  store i32 -1, i32* @laststringch, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.57, %if.then.17
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i8* @printichar(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %in.addr, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i32 0, i64 1), align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %in.addr, align 4
  %sub = sub i32 %2, 128
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x [11 x i8]], [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i32 0, i32 0
  %call = call i8* @strcpy(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i32 0, i32 0), i8* %arraydecay) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @findfiletype(i8* %name, i32 %searchnames, i32* %deformatter) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %searchnames.addr = alloca i32, align 4
  %deformatter.addr = alloca i32*, align 8
  %cp = alloca i8*, align 8
  %cplen = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %searchnames, i32* %searchnames.addr, align 4
  store i32* %deformatter, i32** %deformatter.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %searchnames.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx = getelementptr inbounds %struct.strchartype, %struct.strchartype* %6, i64 %idxprom
  %name2 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %name2, align 8
  %call3 = call i32 @strcmp(i8* %4, i8* %7) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %for.body
  %8 = load i32*, i32** %deformatter.addr, align 8
  %cmp7 = icmp ne i32* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx11 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %10, i64 %idxprom10
  %deformatter12 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx11, i32 0, i32 1
  %11 = load i8*, i8** %deformatter12, align 8
  %call13 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp14 = icmp eq i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %12 = load i32*, i32** %deformatter.addr, align 8
  store i32 %conv15, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.6
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.52, %if.end.17
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body.21, label %for.end.54

for.body.21:                                      ; preds = %for.cond.18
  %17 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx23 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %18, i64 %idxprom22
  %suffixes = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx23, i32 0, i32 2
  %19 = load i8*, i8** %suffixes, align 8
  store i8* %19, i8** %cp, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.50, %for.body.21
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.51

for.body.28:                                      ; preds = %for.cond.24
  %22 = load i8*, i8** %cp, align 8
  %call29 = call i64 @strlen(i8* %22) #5
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %cplen, align 4
  %23 = load i32, i32* %len, align 4
  %24 = load i32, i32* %cplen, align 4
  %cmp31 = icmp sge i32 %23, %24
  br i1 %cmp31, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.body.28
  %25 = load i32, i32* %len, align 4
  %26 = load i32, i32* %cplen, align 4
  %sub = sub nsw i32 %25, %26
  %idxprom33 = sext i32 %sub to i64
  %27 = load i8*, i8** %name.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %28 = load i8*, i8** %cp, align 8
  %call35 = call i32 @strcmp(i8* %arrayidx34, i8* %28) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %land.lhs.true
  %29 = load i32*, i32** %deformatter.addr, align 8
  %cmp39 = icmp ne i32* %29, null
  br i1 %cmp39, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %if.then.38
  %30 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %30 to i64
  %31 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %arrayidx43 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %31, i64 %idxprom42
  %deformatter44 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %arrayidx43, i32 0, i32 1
  %32 = load i8*, i8** %deformatter44, align 8
  %call45 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp46 = icmp eq i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %33 = load i32*, i32** %deformatter.addr, align 8
  store i32 %conv47, i32* %33, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.41, %if.then.38
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.49:                                        ; preds = %land.lhs.true, %for.body.28
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %35 = load i32, i32* %cplen, align 4
  %add = add nsw i32 %35, 1
  %36 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  br label %for.cond.24

for.end.51:                                       ; preds = %for.cond.24
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %37 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.18

for.end.54:                                       ; preds = %for.cond.18
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.end.48, %if.end
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @acoversb(%struct.dent* %enta, %struct.dent* %entb) #0 {
entry:
  %retval = alloca i32, align 4
  %enta.addr = alloca %struct.dent*, align 8
  %entb.addr = alloca %struct.dent*, align 8
  %subset = alloca i32, align 4
  store %struct.dent* %enta, %struct.dent** %enta.addr, align 8
  store %struct.dent* %entb, %struct.dent** %entb.addr, align 8
  %0 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %1 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %call = call i32 @issubset(%struct.dent* %0, %struct.dent* %1)
  store i32 %call, i32* %subset, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %mask1 = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask1, i32 0, i64 0
  %5 = load i64, i64* %arrayidx2, align 8
  %xor = xor i64 %3, %5
  %and = and i64 %xor, 134217728
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask4 = getelementptr inbounds %struct.dent, %struct.dent* %6, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %mask4, i32 0, i64 0
  %7 = load i64, i64* %arrayidx5, align 8
  %and6 = and i64 %7, 134217728
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.18

if.else:                                          ; preds = %entry
  %8 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask9 = getelementptr inbounds %struct.dent, %struct.dent* %8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x i64], [1 x i64]* %mask9, i32 0, i64 0
  %9 = load i64, i64* %arrayidx10, align 8
  %10 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %mask11 = getelementptr inbounds %struct.dent, %struct.dent* %10, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %mask11, i32 0, i64 0
  %11 = load i64, i64* %arrayidx12, align 8
  %xor13 = xor i64 %9, %11
  %and14 = and i64 %xor13, 134217728
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %12 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask19 = getelementptr inbounds %struct.dent, %struct.dent* %12, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %mask19, i32 0, i64 0
  %13 = load i64, i64* %arrayidx20, align 8
  %14 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %mask21 = getelementptr inbounds %struct.dent, %struct.dent* %14, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x i64], [1 x i64]* %mask21, i32 0, i64 0
  %15 = load i64, i64* %arrayidx22, align 8
  %xor23 = xor i64 %13, %15
  %and24 = and i64 %xor23, 805306368
  %cmp25 = icmp eq i64 %and24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.36

if.then.26:                                       ; preds = %if.end.18
  %16 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask27 = getelementptr inbounds %struct.dent, %struct.dent* %16, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x i64], [1 x i64]* %mask27, i32 0, i64 0
  %17 = load i64, i64* %arrayidx28, align 8
  %and29 = and i64 %17, 805306368
  %cmp30 = icmp ne i64 %and29, 805306368
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %18 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %word = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 1
  %19 = load i8*, i8** %word, align 8
  %20 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %word31 = getelementptr inbounds %struct.dent, %struct.dent* %20, i32 0, i32 1
  %21 = load i8*, i8** %word31, align 8
  %call32 = call i32 @strcmp(i8* %19, i8* %21) #5
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.else.35:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.end.18
  %22 = load i32, i32* %subset, align 4
  %cmp37 = icmp eq i32 %22, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.36
  store i32 0, i32* %retval
  br label %return

if.else.39:                                       ; preds = %if.else.36
  %23 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %mask40 = getelementptr inbounds %struct.dent, %struct.dent* %23, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x i64], [1 x i64]* %mask40, i32 0, i64 0
  %24 = load i64, i64* %arrayidx41, align 8
  %and42 = and i64 %24, 805306368
  %cmp43 = icmp eq i64 %and42, 268435456
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.else.39
  store i32 1, i32* %retval
  br label %return

if.else.45:                                       ; preds = %if.else.39
  %25 = load %struct.dent*, %struct.dent** %enta.addr, align 8
  %mask46 = getelementptr inbounds %struct.dent, %struct.dent* %25, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x i64], [1 x i64]* %mask46, i32 0, i64 0
  %26 = load i64, i64* %arrayidx47, align 8
  %and48 = and i64 %26, 805306368
  %cmp49 = icmp eq i64 %and48, 0
  br i1 %cmp49, label %land.lhs.true.50, label %if.else.56

land.lhs.true.50:                                 ; preds = %if.else.45
  %27 = load %struct.dent*, %struct.dent** %entb.addr, align 8
  %mask51 = getelementptr inbounds %struct.dent, %struct.dent* %27, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x i64], [1 x i64]* %mask51, i32 0, i64 0
  %28 = load i64, i64* %arrayidx52, align 8
  %and53 = and i64 %28, 805306368
  %cmp54 = icmp eq i64 %and53, 536870912
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.50
  store i32 1, i32* %retval
  br label %return

if.else.56:                                       ; preds = %land.lhs.true.50, %if.else.45
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.56, %if.then.55, %if.then.44, %if.then.38, %if.else.35, %if.then.34, %if.then.16, %if.then.8
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @issubset(%struct.dent* %ent1, %struct.dent* %ent2) #0 {
entry:
  %retval = alloca i32, align 4
  %ent1.addr = alloca %struct.dent*, align 8
  %ent2.addr = alloca %struct.dent*, align 8
  store %struct.dent* %ent1, %struct.dent** %ent1.addr, align 8
  store %struct.dent* %ent2, %struct.dent** %ent2.addr, align 8
  %0 = load %struct.dent*, %struct.dent** %ent1.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load %struct.dent*, %struct.dent** %ent2.addr, align 8
  %mask1 = getelementptr inbounds %struct.dent, %struct.dent* %2, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x i64], [1 x i64]* %mask1, i32 0, i64 0
  %3 = load i64, i64* %arrayidx2, align 8
  %and = and i64 %1, %3
  %4 = load %struct.dent*, %struct.dent** %ent1.addr, align 8
  %mask3 = getelementptr inbounds %struct.dent, %struct.dent* %4, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %mask3, i32 0, i64 0
  %5 = load i64, i64* %arrayidx4, align 8
  %xor = xor i64 %and, %5
  %and5 = and i64 %xor, -2080374785
  %tobool = icmp ne i64 %and5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @flagout(%struct._IO_FILE* %toutfile, i32 %flag) #0 {
entry:
  %toutfile.addr = alloca %struct._IO_FILE*, align 8
  %flag.addr = alloca i32, align 4
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %toutfile.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* @has_marker, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @has_marker, align 4
  %3 = load i32, i32* %flag.addr, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %toutfile.addr, align 8
  %call1 = call i32 @_IO_putc(i32 %3, %struct._IO_FILE* %4)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
