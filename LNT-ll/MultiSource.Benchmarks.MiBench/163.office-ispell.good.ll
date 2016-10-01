; ModuleID = './MultiSource.Benchmarks.MiBench/163.office-ispell.good.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hashheader = external global %struct.hashheader, align 4
@numhits = external global i32, align 4
@cflag = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal global i8* null, align 8
@hits = external global [10 x %struct.success], align 16
@compoundflag = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @good(i8* %w, i32 %ignoreflagbits, i32 %allhits, i32 %pfxopts, i32 %sfxopts) #0 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca i8*, align 8
  %ignoreflagbits.addr = alloca i32, align 4
  %allhits.addr = alloca i32, align 4
  %pfxopts.addr = alloca i32, align 4
  %sfxopts.addr = alloca i32, align 4
  %nword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %n = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  store i8* %w, i8** %w.addr, align 8
  store i32 %ignoreflagbits, i32* %ignoreflagbits.addr, align 4
  store i32 %allhits, i32* %allhits.addr, align 4
  store i32 %pfxopts, i32* %pfxopts.addr, align 4
  store i32 %sfxopts, i32* %sfxopts.addr, align 4
  %0 = load i8*, i8** %w.addr, align 8
  store i8* %0, i8** %p, align 8
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i8*, i8** %q, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %q, align 8
  store i8 %5, i8* %6, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %q, align 8
  %arraydecay2 = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %n, align 4
  store i32 0, i32* @numhits, align 4
  %9 = load i32, i32* @cflag, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %10 = load i8*, i8** %w.addr, align 8
  %call = call i8* @ichartosstr(i8* %10, i32 0)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %call)
  %11 = load i8*, i8** %w.addr, align 8
  store i8* %11, i8** @orig_word, align 8
  br label %if.end.30

if.else:                                          ; preds = %for.end
  %arraydecay5 = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  %call6 = call %struct.dent* @lookup(i8* %arraydecay5, i32 1)
  store %struct.dent* %call6, %struct.dent** %dp, align 8
  %cmp = icmp ne %struct.dent* %call6, null
  br i1 %cmp, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %if.else
  %12 = load %struct.dent*, %struct.dent** %dp, align 8
  store %struct.dent* %12, %struct.dent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 0), align 8
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 1), align 8
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0, i32 2), align 8
  %13 = load i32, i32* %allhits.addr, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %14 = load i8*, i8** %w.addr, align 8
  %15 = load i32, i32* %n, align 4
  %call10 = call i32 @cap_ok(i8* %14, %struct.success* getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0), i32 %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.8
  store i32 1, i32* @numhits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %lor.lhs.false
  %16 = load i32, i32* @compoundflag, align 4
  %cmp13 = icmp eq i32 %16, 2
  br i1 %cmp13, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %pfxopts.addr, align 4
  %18 = load i32, i32* %sfxopts.addr, align 4
  %or = or i32 %17, %18
  %and = and i32 %or, 2
  %cmp15 = icmp ne i32 %and, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.28

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %19 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 5), align 2
  %conv18 = sext i16 %19 to i32
  %cmp19 = icmp sge i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.28

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %20 = load %struct.dent*, %struct.dent** %dp, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %21 = load i64, i64* %arrayidx22, align 8
  %22 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 5), align 2
  %conv23 = sext i16 %22 to i32
  %sh_prom = zext i32 %conv23 to i64
  %shl = shl i64 1, %sh_prom
  %and24 = and i64 %21, %shl
  %cmp25 = icmp eq i64 %and24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* @numhits, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then
  %23 = load i32, i32* @numhits, align 4
  %tobool31 = icmp ne i32 %23, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.35

land.lhs.true.32:                                 ; preds = %if.end.30
  %24 = load i32, i32* %allhits.addr, align 4
  %tobool33 = icmp ne i32 %24, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.32, %if.end.30
  %25 = load i8*, i8** %w.addr, align 8
  %arraydecay36 = getelementptr inbounds [120 x i8], [120 x i8]* %nword, i32 0, i32 0
  %26 = load i32, i32* %n, align 4
  %27 = load i32, i32* %ignoreflagbits.addr, align 4
  %28 = load i32, i32* %allhits.addr, align 4
  %29 = load i32, i32* %pfxopts.addr, align 4
  %30 = load i32, i32* %sfxopts.addr, align 4
  call void @chk_aff(i8* %25, i8* %arraydecay36, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %31 = load i32, i32* @cflag, align 4
  %tobool37 = icmp ne i32 %31, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %call39 = call i32 @putchar(i32 10)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %32 = load i32, i32* @numhits, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.34
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @printf(i8*, ...) #1

declare i8* @ichartosstr(i8*, i32) #1

declare %struct.dent* @lookup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @cap_ok(i8* %word, %struct.success* %hit, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca i8*, align 8
  %hit.addr = alloca %struct.success*, align 8
  %len.addr = alloca i32, align 4
  %dword = alloca i8*, align 8
  %w = alloca i8*, align 8
  %dent = alloca %struct.dent*, align 8
  %dentword = alloca [120 x i8], align 16
  %preadd = alloca i32, align 4
  %prestrip = alloca i32, align 4
  %sufadd = alloca i32, align 4
  %limit = alloca i8*, align 8
  %thiscap = alloca i64, align 8
  %dentcap = alloca i64, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.success* %hit, %struct.success** %hit.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %word.addr, align 8
  %call = call i64 @whatcap(i8* %0)
  store i64 %call, i64* %thiscap, align 8
  store i32 0, i32* %sufadd, align 4
  store i32 0, i32* %prestrip, align 4
  store i32 0, i32* %preadd, align 4
  %1 = load i64, i64* %thiscap, align 8
  %cmp = icmp eq i64 %1, 268435456
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %thiscap, align 8
  %cmp1 = icmp eq i64 %2, 805306368
  br i1 %cmp1, label %if.then.2, label %if.end.12

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.success*, %struct.success** %hit.addr, align 8
  %prefix = getelementptr inbounds %struct.success, %struct.success* %3, i32 0, i32 1
  %4 = load %struct.flagent*, %struct.flagent** %prefix, align 8
  %tobool = icmp ne %struct.flagent* %4, null
  br i1 %tobool, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.then.2
  %5 = load %struct.success*, %struct.success** %hit.addr, align 8
  %prefix4 = getelementptr inbounds %struct.success, %struct.success* %5, i32 0, i32 1
  %6 = load %struct.flagent*, %struct.flagent** %prefix4, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %6, i32 0, i32 4
  %7 = load i16, i16* %affl, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %preadd, align 4
  %8 = load %struct.success*, %struct.success** %hit.addr, align 8
  %prefix5 = getelementptr inbounds %struct.success, %struct.success* %8, i32 0, i32 1
  %9 = load %struct.flagent*, %struct.flagent** %prefix5, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %9, i32 0, i32 3
  %10 = load i16, i16* %stripl, align 2
  %conv6 = sext i16 %10 to i32
  store i32 %conv6, i32* %prestrip, align 4
  br label %if.end

if.else.7:                                        ; preds = %if.then.2
  store i32 0, i32* %prestrip, align 4
  store i32 0, i32* %preadd, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.3
  %11 = load %struct.success*, %struct.success** %hit.addr, align 8
  %suffix = getelementptr inbounds %struct.success, %struct.success* %11, i32 0, i32 2
  %12 = load %struct.flagent*, %struct.flagent** %suffix, align 8
  %tobool8 = icmp ne %struct.flagent* %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.success*, %struct.success** %hit.addr, align 8
  %suffix9 = getelementptr inbounds %struct.success, %struct.success* %13, i32 0, i32 2
  %14 = load %struct.flagent*, %struct.flagent** %suffix9, align 8
  %affl10 = getelementptr inbounds %struct.flagent, %struct.flagent* %14, i32 0, i32 4
  %15 = load i16, i16* %affl10, align 2
  %conv11 = sext i16 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %sufadd, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %16 = load %struct.success*, %struct.success** %hit.addr, align 8
  %dictent = getelementptr inbounds %struct.success, %struct.success* %16, i32 0, i32 0
  %17 = load %struct.dent*, %struct.dent** %dictent, align 8
  store %struct.dent* %17, %struct.dent** %dent, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.125, %if.end.13
  %18 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %18, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %19 = load i64, i64* %arrayidx, align 8
  %and = and i64 %19, 805306368
  store i64 %and, i64* %dentcap, align 8
  %20 = load i64, i64* %dentcap, align 8
  %21 = load i64, i64* %thiscap, align 8
  %cmp14 = icmp ne i64 %20, %21
  br i1 %cmp14, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %for.cond
  %22 = load i64, i64* %dentcap, align 8
  %cmp17 = icmp eq i64 %22, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.then.16
  %23 = load i64, i64* %thiscap, align 8
  %cmp19 = icmp eq i64 %23, 536870912
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %24 = load %struct.dent*, %struct.dent** %dent, align 8
  %25 = load %struct.success*, %struct.success** %hit.addr, align 8
  %call22 = call i32 @entryhasaffixes(%struct.dent* %24, %struct.success* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.21, %land.lhs.true, %if.then.16
  br label %if.end.118

if.else.26:                                       ; preds = %for.cond
  %26 = load i64, i64* %thiscap, align 8
  %cmp27 = icmp ne i64 %26, 805306368
  br i1 %cmp27, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %if.else.26
  %27 = load %struct.dent*, %struct.dent** %dent, align 8
  %28 = load %struct.success*, %struct.success** %hit.addr, align 8
  %call30 = call i32 @entryhasaffixes(%struct.dent* %27, %struct.success* %28)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.29
  br label %if.end.117

if.else.34:                                       ; preds = %if.else.26
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %dentword, i32 0, i32 0
  %29 = load %struct.dent*, %struct.dent** %dent, align 8
  %word35 = getelementptr inbounds %struct.dent, %struct.dent* %29, i32 0, i32 1
  %30 = load i8*, i8** %word35, align 8
  %call36 = call i32 @strtoichar(i8* %arraydecay, i8* %30, i32 100, i32 1)
  %arraydecay37 = getelementptr inbounds [120 x i8], [120 x i8]* %dentword, i32 0, i32 0
  store i8* %arraydecay37, i8** %dword, align 8
  %31 = load i8*, i8** %word.addr, align 8
  %32 = load i32, i32* %preadd, align 4
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  %33 = load i32, i32* %prestrip, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i8*, i8** %dword, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %34, i64 %idxprom
  %35 = load i8, i8* %arrayidx38, align 1
  %idxprom39 = zext i8 %35 to i64
  %arrayidx40 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom39
  %36 = load i8, i8* %arrayidx40, align 1
  %tobool41 = icmp ne i8 %36, 0
  br i1 %tobool41, label %if.then.42, label %if.else.51

if.then.42:                                       ; preds = %if.else.34
  %37 = load i8*, i8** %word.addr, align 8
  store i8* %37, i8** %w, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %if.then.42
  %38 = load i8*, i8** %w, align 8
  %39 = load i8*, i8** %limit, align 8
  %cmp44 = icmp ult i8* %38, %39
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.43
  %40 = load i8*, i8** %w, align 8
  %41 = load i8, i8* %40, align 1
  %idxprom46 = zext i8 %41 to i64
  %arrayidx47 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom46
  %42 = load i8, i8* %arrayidx47, align 1
  %tobool48 = icmp ne i8 %42, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body
  br label %doublecontinue

if.end.50:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %43 = load i8*, i8** %w, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %w, align 8
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  br label %if.end.64

if.else.51:                                       ; preds = %if.else.34
  %44 = load i8*, i8** %word.addr, align 8
  store i8* %44, i8** %w, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.61, %if.else.51
  %45 = load i8*, i8** %w, align 8
  %46 = load i8*, i8** %limit, align 8
  %cmp53 = icmp ult i8* %45, %46
  br i1 %cmp53, label %for.body.55, label %for.end.63

for.body.55:                                      ; preds = %for.cond.52
  %47 = load i8*, i8** %w, align 8
  %48 = load i8, i8* %47, align 1
  %idxprom56 = zext i8 %48 to i64
  %arrayidx57 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom56
  %49 = load i8, i8* %arrayidx57, align 1
  %tobool58 = icmp ne i8 %49, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body.55
  br label %doublecontinue

if.end.60:                                        ; preds = %for.body.55
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %50 = load i8*, i8** %w, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr62, i8** %w, align 8
  br label %for.cond.52

for.end.63:                                       ; preds = %for.cond.52
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %for.end
  %51 = load i32, i32* %prestrip, align 4
  %52 = load i8*, i8** %dword, align 8
  %idx.ext65 = sext i32 %51 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %52, i64 %idx.ext65
  store i8* %add.ptr66, i8** %dword, align 8
  %53 = load i8*, i8** %dword, align 8
  %54 = load i32, i32* %len.addr, align 4
  %idx.ext67 = sext i32 %54 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %53, i64 %idx.ext67
  %55 = load i32, i32* %preadd, align 4
  %idx.ext69 = sext i32 %55 to i64
  %idx.neg = sub i64 0, %idx.ext69
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr68, i64 %idx.neg
  %56 = load i32, i32* %sufadd, align 4
  %idx.ext71 = sext i32 %56 to i64
  %idx.neg72 = sub i64 0, %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr70, i64 %idx.neg72
  store i8* %add.ptr73, i8** %limit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %if.end.64
  %57 = load i8*, i8** %dword, align 8
  %58 = load i8*, i8** %limit, align 8
  %cmp74 = icmp ult i8* %57, %58
  br i1 %cmp74, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load i8*, i8** %dword, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr76, i8** %dword, align 8
  %60 = load i8, i8* %59, align 1
  %conv77 = zext i8 %60 to i32
  %61 = load i8*, i8** %w, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr78, i8** %w, align 8
  %62 = load i8, i8* %61, align 1
  %conv79 = zext i8 %62 to i32
  %cmp80 = icmp ne i32 %conv77, %conv79
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %while.body
  br label %doublecontinue

if.end.83:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load i8*, i8** %limit, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %63, i64 -1
  store i8* %add.ptr84, i8** %dword, align 8
  %64 = load i8*, i8** %dword, align 8
  %65 = load i8, i8* %64, align 1
  %idxprom85 = zext i8 %65 to i64
  %arrayidx86 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom85
  %66 = load i8, i8* %arrayidx86, align 1
  %tobool87 = icmp ne i8 %66, 0
  br i1 %tobool87, label %if.then.88, label %if.else.100

if.then.88:                                       ; preds = %while.end
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.97, %if.then.88
  %67 = load i8*, i8** %w, align 8
  %68 = load i8, i8* %67, align 1
  %tobool90 = icmp ne i8 %68, 0
  br i1 %tobool90, label %for.body.91, label %for.end.99

for.body.91:                                      ; preds = %for.cond.89
  %69 = load i8*, i8** %w, align 8
  %70 = load i8, i8* %69, align 1
  %idxprom92 = zext i8 %70 to i64
  %arrayidx93 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom92
  %71 = load i8, i8* %arrayidx93, align 1
  %tobool94 = icmp ne i8 %71, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body.91
  br label %doublecontinue

if.end.96:                                        ; preds = %for.body.91
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %72 = load i8*, i8** %w, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr98, i8** %w, align 8
  br label %for.cond.89

for.end.99:                                       ; preds = %for.cond.89
  br label %if.end.112

if.else.100:                                      ; preds = %while.end
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.109, %if.else.100
  %73 = load i8*, i8** %w, align 8
  %74 = load i8, i8* %73, align 1
  %tobool102 = icmp ne i8 %74, 0
  br i1 %tobool102, label %for.body.103, label %for.end.111

for.body.103:                                     ; preds = %for.cond.101
  %75 = load i8*, i8** %w, align 8
  %76 = load i8, i8* %75, align 1
  %idxprom104 = zext i8 %76 to i64
  %arrayidx105 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom104
  %77 = load i8, i8* %arrayidx105, align 1
  %tobool106 = icmp ne i8 %77, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body.103
  br label %doublecontinue

if.end.108:                                       ; preds = %for.body.103
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %78 = load i8*, i8** %w, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr110, i8** %w, align 8
  br label %for.cond.101

for.end.111:                                      ; preds = %for.cond.101
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.end.99
  %79 = load %struct.dent*, %struct.dent** %dent, align 8
  %80 = load %struct.success*, %struct.success** %hit.addr, align 8
  %call113 = call i32 @entryhasaffixes(%struct.dent* %79, %struct.success* %80)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  store i32 1, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.112
  br label %doublecontinue

doublecontinue:                                   ; preds = %if.end.116, %if.then.107, %if.then.95, %if.then.82, %if.then.59, %if.then.49
  br label %if.end.117

if.end.117:                                       ; preds = %doublecontinue, %if.end.33
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.25
  %81 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask119 = getelementptr inbounds %struct.dent, %struct.dent* %81, i32 0, i32 2
  %arrayidx120 = getelementptr inbounds [1 x i64], [1 x i64]* %mask119, i32 0, i64 0
  %82 = load i64, i64* %arrayidx120, align 8
  %and121 = and i64 %82, 1073741824
  %cmp122 = icmp eq i64 %and121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.118
  br label %for.end.126

if.end.125:                                       ; preds = %if.end.118
  %83 = load %struct.dent*, %struct.dent** %dent, align 8
  %next = getelementptr inbounds %struct.dent, %struct.dent* %83, i32 0, i32 0
  %84 = load %struct.dent*, %struct.dent** %next, align 8
  store %struct.dent* %84, %struct.dent** %dent, align 8
  br label %for.cond

for.end.126:                                      ; preds = %if.then.124
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.126, %if.then.115, %if.then.32, %if.then.24, %if.then
  %85 = load i32, i32* %retval
  ret i32 %85
}

declare void @chk_aff(i8*, i8*, i32, i32, i32, i32, i32) #1

declare i32 @putchar(i32) #1

declare i64 @whatcap(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @entryhasaffixes(%struct.dent* %dent, %struct.success* %hit) #0 {
entry:
  %retval = alloca i32, align 4
  %dent.addr = alloca %struct.dent*, align 8
  %hit.addr = alloca %struct.success*, align 8
  store %struct.dent* %dent, %struct.dent** %dent.addr, align 8
  store %struct.success* %hit, %struct.success** %hit.addr, align 8
  %0 = load %struct.success*, %struct.success** %hit.addr, align 8
  %prefix = getelementptr inbounds %struct.success, %struct.success* %0, i32 0, i32 1
  %1 = load %struct.flagent*, %struct.flagent** %prefix, align 8
  %tobool = icmp ne %struct.flagent* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dent*, %struct.dent** %dent.addr, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load %struct.success*, %struct.success** %hit.addr, align 8
  %prefix1 = getelementptr inbounds %struct.success, %struct.success* %4, i32 0, i32 1
  %5 = load %struct.flagent*, %struct.flagent** %prefix1, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i32 0, i32 2
  %6 = load i16, i16* %flagbit, align 2
  %conv = sext i16 %6 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %3, %shl
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.success*, %struct.success** %hit.addr, align 8
  %suffix = getelementptr inbounds %struct.success, %struct.success* %7, i32 0, i32 2
  %8 = load %struct.flagent*, %struct.flagent** %suffix, align 8
  %tobool3 = icmp ne %struct.flagent* %8, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.15

land.lhs.true.4:                                  ; preds = %if.end
  %9 = load %struct.dent*, %struct.dent** %dent.addr, align 8
  %mask5 = getelementptr inbounds %struct.dent, %struct.dent* %9, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x i64], [1 x i64]* %mask5, i32 0, i64 0
  %10 = load i64, i64* %arrayidx6, align 8
  %11 = load %struct.success*, %struct.success** %hit.addr, align 8
  %suffix7 = getelementptr inbounds %struct.success, %struct.success* %11, i32 0, i32 2
  %12 = load %struct.flagent*, %struct.flagent** %suffix7, align 8
  %flagbit8 = getelementptr inbounds %struct.flagent, %struct.flagent* %12, i32 0, i32 2
  %13 = load i16, i16* %flagbit8, align 2
  %conv9 = sext i16 %13 to i32
  %sh_prom10 = zext i32 %conv9 to i64
  %shl11 = shl i64 1, %sh_prom10
  %and12 = and i64 %10, %shl11
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.4
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.4, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @strtoichar(i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @flagpr(i8* %word, i32 %preflag, i32 %prestrip, i32 %preadd, i32 %sufflag, i32 %sufadd) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %preflag.addr = alloca i32, align 4
  %prestrip.addr = alloca i32, align 4
  %preadd.addr = alloca i32, align 4
  %sufflag.addr = alloca i32, align 4
  %sufadd.addr = alloca i32, align 4
  %origp = alloca i8*, align 8
  %orig_len = alloca i32, align 4
  store i8* %word, i8** %word.addr, align 8
  store i32 %preflag, i32* %preflag.addr, align 4
  store i32 %prestrip, i32* %prestrip.addr, align 4
  store i32 %preadd, i32* %preadd.addr, align 4
  store i32 %sufflag, i32* %sufflag.addr, align 4
  store i32 %sufadd, i32* %sufadd.addr, align 4
  %0 = load i8*, i8** @orig_word, align 8
  %call = call i64 @strlen(i8* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %orig_len, align 4
  %1 = load i32, i32* %preflag.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @orig_word, align 8
  %3 = load i32, i32* %preadd.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %origp, align 8
  %4 = load i8*, i8** %origp, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load i8*, i8** @orig_word, align 8
  store i8* %7, i8** %origp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %8 = load i8*, i8** %origp, align 8
  %9 = load i8*, i8** @orig_word, align 8
  %10 = load i32, i32* %preadd.addr, align 4
  %idx.ext3 = sext i32 %10 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 %idx.ext3
  %cmp5 = icmp ult i8* %8, %add.ptr4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %origp, align 8
  %12 = load i8, i8* %11, align 1
  %idxprom7 = zext i8 %12 to i64
  %arrayidx8 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %tobool9 = icmp ne i8 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  br label %if.end.147

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i8*, i8** %origp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %origp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %15 = load i8*, i8** @orig_word, align 8
  store i8* %15, i8** %origp, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.22, %if.else
  %16 = load i8*, i8** %origp, align 8
  %17 = load i8*, i8** @orig_word, align 8
  %18 = load i32, i32* %preadd.addr, align 4
  %idx.ext12 = sext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %idx.ext12
  %cmp14 = icmp ult i8* %16, %add.ptr13
  br i1 %cmp14, label %for.body.16, label %for.end.24

for.body.16:                                      ; preds = %for.cond.11
  %19 = load i8*, i8** %origp, align 8
  %20 = load i8, i8* %19, align 1
  %idxprom17 = zext i8 %20 to i64
  %arrayidx18 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom17
  %21 = load i8, i8* %arrayidx18, align 1
  %tobool19 = icmp ne i8 %21, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body.16
  br label %if.end.147

if.end.21:                                        ; preds = %for.body.16
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %22 = load i8*, i8** %origp, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr23, i8** %origp, align 8
  br label %for.cond.11

for.end.24:                                       ; preds = %for.cond.11
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.24, %for.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %entry
  %23 = load i32, i32* %sufflag.addr, align 4
  %cmp27 = icmp sgt i32 %23, 0
  br i1 %cmp27, label %if.then.29, label %if.end.72

if.then.29:                                       ; preds = %if.end.26
  %24 = load i8*, i8** @orig_word, align 8
  %25 = load i32, i32* %orig_len, align 4
  %idx.ext30 = sext i32 %25 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %24, i64 %idx.ext30
  %26 = load i32, i32* %sufadd.addr, align 4
  %idx.ext32 = sext i32 %26 to i64
  %idx.neg = sub i64 0, %idx.ext32
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.neg
  store i8* %add.ptr33, i8** %origp, align 8
  %27 = load i8*, i8** %origp, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8, i8* %arrayidx34, align 1
  %idxprom35 = zext i8 %28 to i64
  %arrayidx36 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom35
  %29 = load i8, i8* %arrayidx36, align 1
  %tobool37 = icmp ne i8 %29, 0
  br i1 %tobool37, label %if.then.38, label %if.else.52

if.then.38:                                       ; preds = %if.then.29
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.49, %if.then.38
  %30 = load i8*, i8** %origp, align 8
  %31 = load i8, i8* %30, align 1
  %conv40 = zext i8 %31 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %for.body.43, label %for.end.51

for.body.43:                                      ; preds = %for.cond.39
  %32 = load i8*, i8** %origp, align 8
  %33 = load i8, i8* %32, align 1
  %idxprom44 = zext i8 %33 to i64
  %arrayidx45 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %idxprom44
  %34 = load i8, i8* %arrayidx45, align 1
  %tobool46 = icmp ne i8 %34, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.43
  br label %if.end.147

if.end.48:                                        ; preds = %for.body.43
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %35 = load i8*, i8** %origp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr50, i8** %origp, align 8
  br label %for.cond.39

for.end.51:                                       ; preds = %for.cond.39
  br label %if.end.71

if.else.52:                                       ; preds = %if.then.29
  %36 = load i8*, i8** @orig_word, align 8
  %37 = load i32, i32* %orig_len, align 4
  %idx.ext53 = sext i32 %37 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %36, i64 %idx.ext53
  %38 = load i32, i32* %sufadd.addr, align 4
  %idx.ext55 = sext i32 %38 to i64
  %idx.neg56 = sub i64 0, %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr54, i64 %idx.neg56
  store i8* %add.ptr57, i8** %origp, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.68, %if.else.52
  %39 = load i8*, i8** %origp, align 8
  %40 = load i8, i8* %39, align 1
  %conv59 = zext i8 %40 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %for.body.62, label %for.end.70

for.body.62:                                      ; preds = %for.cond.58
  %41 = load i8*, i8** %origp, align 8
  %42 = load i8, i8* %41, align 1
  %idxprom63 = zext i8 %42 to i64
  %arrayidx64 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom63
  %43 = load i8, i8* %arrayidx64, align 1
  %tobool65 = icmp ne i8 %43, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.62
  br label %if.end.147

if.end.67:                                        ; preds = %for.body.62
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %44 = load i8*, i8** %origp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr69, i8** %origp, align 8
  br label %for.cond.58

for.end.70:                                       ; preds = %for.cond.58
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %for.end.51
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.26
  %call73 = call i32 @putchar(i32 32)
  %45 = load i8*, i8** @orig_word, align 8
  %46 = load i32, i32* %preadd.addr, align 4
  %idx.ext74 = sext i32 %46 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %45, i64 %idx.ext74
  store i8* %add.ptr75, i8** %origp, align 8
  %47 = load i8*, i8** %origp, align 8
  %48 = load i8, i8* %47, align 1
  %idxprom76 = zext i8 %48 to i64
  %arrayidx77 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom76
  %49 = load i8, i8* %arrayidx77, align 1
  %tobool78 = icmp ne i8 %49, 0
  br i1 %tobool78, label %if.then.79, label %if.else.86

if.then.79:                                       ; preds = %if.end.72
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.79
  %50 = load i32, i32* %prestrip.addr, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %prestrip.addr, align 4
  %cmp80 = icmp sge i32 %dec, 0
  br i1 %cmp80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i8*, i8** %word.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr82, i8** %word.addr, align 8
  %52 = load i8, i8* %51, align 1
  %conv83 = zext i8 %52 to i32
  %call84 = call i8* @printichar(i32 %conv83)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call85 = call i32 @fputs(i8* %call84, %struct._IO_FILE* %53)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.99

if.else.86:                                       ; preds = %if.end.72
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.91, %if.else.86
  %54 = load i32, i32* %prestrip.addr, align 4
  %dec88 = add nsw i32 %54, -1
  store i32 %dec88, i32* %prestrip.addr, align 4
  %cmp89 = icmp sge i32 %dec88, 0
  br i1 %cmp89, label %while.body.91, label %while.end.98

while.body.91:                                    ; preds = %while.cond.87
  %55 = load i8*, i8** %word.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr92, i8** %word.addr, align 8
  %56 = load i8, i8* %55, align 1
  %idxprom93 = zext i8 %56 to i64
  %arrayidx94 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom93
  %57 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %57 to i32
  %call96 = call i8* @printichar(i32 %conv95)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call97 = call i32 @fputs(i8* %call96, %struct._IO_FILE* %58)
  br label %while.cond.87

while.end.98:                                     ; preds = %while.cond.87
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.98, %while.end
  %59 = load i32, i32* %orig_len, align 4
  %60 = load i32, i32* %preadd.addr, align 4
  %sub = sub nsw i32 %59, %60
  %61 = load i32, i32* %sufadd.addr, align 4
  %sub100 = sub nsw i32 %sub, %61
  store i32 %sub100, i32* %prestrip.addr, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.110, %if.end.99
  %62 = load i32, i32* %prestrip.addr, align 4
  %dec102 = add nsw i32 %62, -1
  store i32 %dec102, i32* %prestrip.addr, align 4
  %cmp103 = icmp sge i32 %dec102, 0
  br i1 %cmp103, label %for.body.105, label %for.end.112

for.body.105:                                     ; preds = %for.cond.101
  %63 = load i8*, i8** %origp, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr106, i8** %origp, align 8
  %64 = load i8, i8* %63, align 1
  %conv107 = zext i8 %64 to i32
  %call108 = call i8* @printichar(i32 %conv107)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call109 = call i32 @fputs(i8* %call108, %struct._IO_FILE* %65)
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.105
  %66 = load i8*, i8** %word.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr111, i8** %word.addr, align 8
  br label %for.cond.101

for.end.112:                                      ; preds = %for.cond.101
  %67 = load i8*, i8** %origp, align 8
  %68 = load i8*, i8** @orig_word, align 8
  %cmp113 = icmp ugt i8* %67, %68
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %for.end.112
  %69 = load i8*, i8** %origp, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %incdec.ptr116, i8** %origp, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %for.end.112
  %70 = load i8*, i8** %origp, align 8
  %71 = load i8, i8* %70, align 1
  %idxprom118 = zext i8 %71 to i64
  %arrayidx119 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom118
  %72 = load i8, i8* %arrayidx119, align 1
  %tobool120 = icmp ne i8 %72, 0
  br i1 %tobool120, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %if.end.117
  %73 = load i8*, i8** %word.addr, align 8
  %call122 = call i8* @ichartosstr(i8* %73, i32 0)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call123 = call i32 @fputs(i8* %call122, %struct._IO_FILE* %74)
  br label %if.end.135

if.else.124:                                      ; preds = %if.end.117
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.127, %if.else.124
  %75 = load i8*, i8** %word.addr, align 8
  %76 = load i8, i8* %75, align 1
  %tobool126 = icmp ne i8 %76, 0
  br i1 %tobool126, label %while.body.127, label %while.end.134

while.body.127:                                   ; preds = %while.cond.125
  %77 = load i8*, i8** %word.addr, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr128, i8** %word.addr, align 8
  %78 = load i8, i8* %77, align 1
  %idxprom129 = zext i8 %78 to i64
  %arrayidx130 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom129
  %79 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %79 to i32
  %call132 = call i8* @printichar(i32 %conv131)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call133 = call i32 @fputs(i8* %call132, %struct._IO_FILE* %80)
  br label %while.cond.125

while.end.134:                                    ; preds = %while.cond.125
  br label %if.end.135

if.end.135:                                       ; preds = %while.end.134, %if.then.121
  %81 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %conv136 = sext i8 %81 to i32
  %call137 = call i32 @putchar(i32 %conv136)
  %82 = load i32, i32* %preflag.addr, align 4
  %cmp138 = icmp sgt i32 %82, 0
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.end.135
  %83 = load i32, i32* %preflag.addr, align 4
  %call141 = call i32 @putchar(i32 %83)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.end.135
  %84 = load i32, i32* %sufflag.addr, align 4
  %cmp143 = icmp sgt i32 %84, 0
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %85 = load i32, i32* %sufflag.addr, align 4
  %call146 = call i32 @putchar(i32 %85)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.10, %if.then.20, %if.then.47, %if.then.66, %if.then.145, %if.end.142
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @printichar(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
