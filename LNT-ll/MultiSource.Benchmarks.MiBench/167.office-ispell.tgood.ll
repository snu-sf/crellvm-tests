; ModuleID = './MultiSource.Benchmarks.MiBench/167.office-ispell.tgood.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@pflagindex = external global [228 x %struct.flagptr], align 16
@numhits = external global i32, align 4
@cflag = external global i32, align 4
@pflaglist = external global %struct.flagent*, align 8
@numpflags = external global i32, align 4
@sflaglist = external global %struct.flagent*, align 8
@numsflags = external global i32, align 4
@compoundflag = external global i32, align 4
@hits = external global [10 x %struct.success], align 16
@sflagindex = external global [228 x %struct.flagptr], align 16
@hashheader = external global %struct.hashheader, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1

; Function Attrs: nounwind uwtable
define void @chk_aff(i8* %word, i8* %ucword, i32 %len, i32 %ignoreflagbits, i32 %allhits, i32 %pfxopts, i32 %sfxopts) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %ucword.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ignoreflagbits.addr = alloca i32, align 4
  %allhits.addr = alloca i32, align 4
  %pfxopts.addr = alloca i32, align 4
  %sfxopts.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ind = alloca %struct.flagptr*, align 8
  store i8* %word, i8** %word.addr, align 8
  store i8* %ucword, i8** %ucword.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %ignoreflagbits, i32* %ignoreflagbits.addr, align 4
  store i32 %allhits, i32* %allhits.addr, align 4
  store i32 %pfxopts, i32* %pfxopts.addr, align 4
  store i32 %sfxopts, i32* %sfxopts.addr, align 4
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8*, i8** %ucword.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %pfxopts.addr, align 4
  %4 = load i32, i32* %sfxopts.addr, align 4
  %5 = load i32, i32* %ignoreflagbits.addr, align 4
  %6 = load i32, i32* %allhits.addr, align 4
  call void @pfx_list_chk(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i32 0, i64 0), i32 %5, i32 %6)
  %7 = load i8*, i8** %ucword.addr, align 8
  store i8* %7, i8** %cp, align 8
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @pflagindex, i32 0, i64 %idxprom
  store %struct.flagptr* %arrayidx, %struct.flagptr** %ind, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %10 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents = getelementptr inbounds %struct.flagptr, %struct.flagptr* %10, i32 0, i32 1
  %11 = load i32, i32* %numents, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu = getelementptr inbounds %struct.flagptr, %struct.flagptr* %12, i32 0, i32 0
  %fp = bitcast %union.ptr_union* %pu to %struct.flagptr**
  %13 = load %struct.flagptr*, %struct.flagptr** %fp, align 8
  %cmp1 = icmp ne %struct.flagptr* %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %while.body
  %17 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu4 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %17, i32 0, i32 0
  %fp5 = bitcast %union.ptr_union* %pu4 to %struct.flagptr**
  %18 = load %struct.flagptr*, %struct.flagptr** %fp5, align 8
  %arrayidx6 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %18, i64 0
  %numents7 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %arrayidx6, i32 0, i32 1
  %19 = load i32, i32* %numents7, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.end
  %20 = load i8*, i8** %word.addr, align 8
  %21 = load i8*, i8** %ucword.addr, align 8
  %22 = load i32, i32* %len.addr, align 4
  %23 = load i32, i32* %pfxopts.addr, align 4
  %24 = load i32, i32* %sfxopts.addr, align 4
  %25 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu9 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %25, i32 0, i32 0
  %fp10 = bitcast %union.ptr_union* %pu9 to %struct.flagptr**
  %26 = load %struct.flagptr*, %struct.flagptr** %fp10, align 8
  %arrayidx11 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %26, i64 0
  %27 = load i32, i32* %ignoreflagbits.addr, align 4
  %28 = load i32, i32* %allhits.addr, align 4
  call void @pfx_list_chk(i8* %20, i8* %21, i32 %22, i32 %23, i32 %24, %struct.flagptr* %arrayidx11, i32 %27, i32 %28)
  %29 = load i32, i32* @numhits, align 4
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.then.8
  %30 = load i32, i32* %allhits.addr, align 4
  %tobool13 = icmp ne i32 %30, 0
  br i1 %tobool13, label %if.end.19, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* @cflag, align 4
  %tobool15 = icmp ne i32 %31, 0
  br i1 %tobool15, label %if.end.19, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %32 = load i32, i32* %ignoreflagbits.addr, align 4
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true, %if.then.8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %33 = load i8*, i8** %cp, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr21, i8** %cp, align 8
  %34 = load i8, i8* %33, align 1
  %idxprom22 = zext i8 %34 to i64
  %35 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu23 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %35, i32 0, i32 0
  %fp24 = bitcast %union.ptr_union* %pu23 to %struct.flagptr**
  %36 = load %struct.flagptr*, %struct.flagptr** %fp24, align 8
  %arrayidx25 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %36, i64 %idxprom22
  store %struct.flagptr* %arrayidx25, %struct.flagptr** %ind, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load i8*, i8** %word.addr, align 8
  %38 = load i8*, i8** %ucword.addr, align 8
  %39 = load i32, i32* %len.addr, align 4
  %40 = load i32, i32* %pfxopts.addr, align 4
  %41 = load i32, i32* %sfxopts.addr, align 4
  %42 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %43 = load i32, i32* %ignoreflagbits.addr, align 4
  %44 = load i32, i32* %allhits.addr, align 4
  call void @pfx_list_chk(i8* %37, i8* %38, i32 %39, i32 %40, i32 %41, %struct.flagptr* %42, i32 %43, i32 %44)
  %45 = load i32, i32* @numhits, align 4
  %tobool26 = icmp ne i32 %45, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.34

land.lhs.true.27:                                 ; preds = %while.end
  %46 = load i32, i32* %allhits.addr, align 4
  %tobool28 = icmp ne i32 %46, 0
  br i1 %tobool28, label %if.end.34, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %47 = load i32, i32* @cflag, align 4
  %tobool30 = icmp ne i32 %47, 0
  br i1 %tobool30, label %if.end.34, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.29
  %48 = load i32, i32* %ignoreflagbits.addr, align 4
  %tobool32 = icmp ne i32 %48, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.31, %land.lhs.true.29, %land.lhs.true.27, %while.end
  %49 = load i8*, i8** %word.addr, align 8
  %50 = load i8*, i8** %ucword.addr, align 8
  %51 = load i32, i32* %len.addr, align 4
  %52 = load i32, i32* %sfxopts.addr, align 4
  %53 = load i32, i32* %ignoreflagbits.addr, align 4
  %54 = load i32, i32* %allhits.addr, align 4
  call void @chk_suf(i8* %49, i8* %50, i32 %51, i32 %52, %struct.flagent* null, i32 %53, i32 %54)
  br label %return

return:                                           ; preds = %if.end.34, %if.then.33, %if.then.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pfx_list_chk(i8* %word, i8* %ucword, i32 %len, i32 %optflags, i32 %sfxopts, %struct.flagptr* %ind, i32 %ignoreflagbits, i32 %allhits) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %ucword.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %optflags.addr = alloca i32, align 4
  %sfxopts.addr = alloca i32, align 4
  %ind.addr = alloca %struct.flagptr*, align 8
  %ignoreflagbits.addr = alloca i32, align 4
  %allhits.addr = alloca i32, align 4
  %cond = alloca i32, align 4
  %cp = alloca i8*, align 8
  %dent = alloca %struct.dent*, align 8
  %entcount = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  %preadd = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tword = alloca [184 x i8], align 16
  %tword2 = alloca [184 x i8], align 16
  store i8* %word, i8** %word.addr, align 8
  store i8* %ucword, i8** %ucword.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %optflags, i32* %optflags.addr, align 4
  store i32 %sfxopts, i32* %sfxopts.addr, align 4
  store %struct.flagptr* %ind, %struct.flagptr** %ind.addr, align 8
  store i32 %ignoreflagbits, i32* %ignoreflagbits.addr, align 4
  store i32 %allhits, i32* %allhits.addr, align 4
  %0 = load %struct.flagptr*, %struct.flagptr** %ind.addr, align 8
  %pu = getelementptr inbounds %struct.flagptr, %struct.flagptr* %0, i32 0, i32 0
  %ent = bitcast %union.ptr_union* %pu to %struct.flagent**
  %1 = load %struct.flagent*, %struct.flagent** %ent, align 8
  store %struct.flagent* %1, %struct.flagent** %flent, align 8
  %2 = load %struct.flagptr*, %struct.flagptr** %ind.addr, align 8
  %numents = getelementptr inbounds %struct.flagptr, %struct.flagptr* %2, i32 0, i32 1
  %3 = load i32, i32* %numents, align 4
  store i32 %3, i32* %entcount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.165, %entry
  %4 = load i32, i32* %entcount, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end.167

for.body:                                         ; preds = %for.cond
  %5 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i32 0, i32 6
  %6 = load i16, i16* %flagflags, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 2
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %optflags.addr, align 4
  %and3 = and i32 %7, 2
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.165

if.end:                                           ; preds = %land.lhs.true, %for.body
  %8 = load i32, i32* @compoundflag, align 4
  %cmp6 = icmp eq i32 %8, 2
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.15

land.lhs.true.8:                                  ; preds = %if.end
  %9 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags9 = getelementptr inbounds %struct.flagent, %struct.flagent* %9, i32 0, i32 6
  %10 = load i16, i16* %flagflags9, align 2
  %conv10 = sext i16 %10 to i32
  %11 = load i32, i32* %optflags.addr, align 4
  %xor = xor i32 %conv10, %11
  %and11 = and i32 %xor, 2
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.8
  br label %for.inc.165

if.end.15:                                        ; preds = %land.lhs.true.8, %if.end
  %12 = load i32, i32* %len.addr, align 4
  %13 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %13, i32 0, i32 4
  %14 = load i16, i16* %affl, align 2
  %conv16 = sext i16 %14 to i32
  %sub = sub nsw i32 %12, %conv16
  store i32 %sub, i32* %tlen, align 4
  %15 = load i32, i32* %tlen, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.164

land.lhs.true.19:                                 ; preds = %if.end.15
  %16 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl20 = getelementptr inbounds %struct.flagent, %struct.flagent* %16, i32 0, i32 4
  %17 = load i16, i16* %affl20, align 2
  %conv21 = sext i16 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %land.lhs.true.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %18 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %18, i32 0, i32 1
  %19 = load i8*, i8** %affix, align 8
  %20 = load i8*, i8** %ucword.addr, align 8
  %21 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl24 = getelementptr inbounds %struct.flagent, %struct.flagent* %21, i32 0, i32 4
  %22 = load i16, i16* %affl24, align 2
  %conv25 = sext i16 %22 to i64
  %call = call i32 @strncmp(i8* %19, i8* %20, i64 %conv25) #4
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.164

land.lhs.true.28:                                 ; preds = %lor.lhs.false, %land.lhs.true.19
  %23 = load i32, i32* %tlen, align 4
  %24 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %24, i32 0, i32 3
  %25 = load i16, i16* %stripl, align 2
  %conv29 = sext i16 %25 to i32
  %add = add nsw i32 %23, %conv29
  %26 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %numconds = getelementptr inbounds %struct.flagent, %struct.flagent* %26, i32 0, i32 5
  %27 = load i16, i16* %numconds, align 2
  %conv30 = sext i16 %27 to i32
  %cmp31 = icmp sge i32 %add, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.164

if.then.33:                                       ; preds = %land.lhs.true.28
  %28 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl34 = getelementptr inbounds %struct.flagent, %struct.flagent* %28, i32 0, i32 3
  %29 = load i16, i16* %stripl34, align 2
  %tobool = icmp ne i16 %29, 0
  br i1 %tobool, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.33
  %arraydecay = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %30 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %strip = getelementptr inbounds %struct.flagent, %struct.flagent* %30, i32 0, i32 0
  %31 = load i8*, i8** %strip, align 8
  %call36 = call i8* @strcpy(i8* %arraydecay, i8* %31) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.33
  %arraydecay38 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %32 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl39 = getelementptr inbounds %struct.flagent, %struct.flagent* %32, i32 0, i32 3
  %33 = load i16, i16* %stripl39, align 2
  %conv40 = sext i16 %33 to i32
  %idx.ext = sext i32 %conv40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay38, i64 %idx.ext
  %34 = load i8*, i8** %ucword.addr, align 8
  %35 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl41 = getelementptr inbounds %struct.flagent, %struct.flagent* %35, i32 0, i32 4
  %36 = load i16, i16* %affl41, align 2
  %conv42 = sext i16 %36 to i32
  %idx.ext43 = sext i32 %conv42 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %34, i64 %idx.ext43
  %call45 = call i8* @strcpy(i8* %add.ptr, i8* %add.ptr44) #5
  %arraydecay46 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  store i8* %arraydecay46, i8** %cp, align 8
  store i32 0, i32* %cond, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.end.37
  %37 = load i32, i32* %cond, align 4
  %38 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %numconds48 = getelementptr inbounds %struct.flagent, %struct.flagent* %38, i32 0, i32 5
  %39 = load i16, i16* %numconds48, align 2
  %conv49 = sext i16 %39 to i32
  %cmp50 = icmp slt i32 %37, %conv49
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.47
  %40 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %41 = load i8, i8* %40, align 1
  %idxprom = zext i8 %41 to i64
  %42 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %conds = getelementptr inbounds %struct.flagent, %struct.flagent* %42, i32 0, i32 7
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* %conds, i32 0, i64 %idxprom
  %43 = load i8, i8* %arrayidx, align 1
  %conv53 = sext i8 %43 to i32
  %44 = load i32, i32* %cond, align 4
  %shl = shl i32 1, %44
  %and54 = and i32 %conv53, %shl
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.52
  br label %for.end

if.end.58:                                        ; preds = %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %45 = load i32, i32* %cond, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %cond, align 4
  br label %for.cond.47

for.end:                                          ; preds = %if.then.57, %for.cond.47
  %46 = load i32, i32* %cond, align 4
  %47 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %numconds59 = getelementptr inbounds %struct.flagent, %struct.flagent* %47, i32 0, i32 5
  %48 = load i16, i16* %numconds59, align 2
  %conv60 = sext i16 %48 to i32
  %cmp61 = icmp sge i32 %46, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.163

if.then.63:                                       ; preds = %for.end
  %49 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl64 = getelementptr inbounds %struct.flagent, %struct.flagent* %49, i32 0, i32 3
  %50 = load i16, i16* %stripl64, align 2
  %conv65 = sext i16 %50 to i32
  %51 = load i32, i32* %tlen, align 4
  %add66 = add nsw i32 %51, %conv65
  store i32 %add66, i32* %tlen, align 4
  %52 = load i32, i32* @cflag, align 4
  %tobool67 = icmp ne i32 %52, 0
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.then.63
  %arraydecay69 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %53 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %53, i32 0, i32 2
  %54 = load i16, i16* %flagbit, align 2
  %conv70 = sext i16 %54 to i32
  %add71 = add nsw i32 %conv70, 65
  %55 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl72 = getelementptr inbounds %struct.flagent, %struct.flagent* %55, i32 0, i32 3
  %56 = load i16, i16* %stripl72, align 2
  %conv73 = sext i16 %56 to i32
  %57 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl74 = getelementptr inbounds %struct.flagent, %struct.flagent* %57, i32 0, i32 4
  %58 = load i16, i16* %affl74, align 2
  %conv75 = sext i16 %58 to i32
  call void @flagpr(i8* %arraydecay69, i32 %add71, i32 %conv73, i32 %conv75, i32 -1, i32 0)
  br label %if.end.155

if.else:                                          ; preds = %if.then.63
  %59 = load i32, i32* %ignoreflagbits.addr, align 4
  %tobool76 = icmp ne i32 %59, 0
  br i1 %tobool76, label %if.then.77, label %if.else.122

if.then.77:                                       ; preds = %if.else
  %arraydecay78 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call79 = call %struct.dent* @lookup(i8* %arraydecay78, i32 1)
  store %struct.dent* %call79, %struct.dent** %dent, align 8
  %cmp80 = icmp ne %struct.dent* %call79, null
  br i1 %cmp80, label %if.then.82, label %if.end.121

if.then.82:                                       ; preds = %if.then.77
  %arraydecay83 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  store i8* %arraydecay83, i8** %cp, align 8
  %60 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl84 = getelementptr inbounds %struct.flagent, %struct.flagent* %60, i32 0, i32 4
  %61 = load i16, i16* %affl84, align 2
  %tobool85 = icmp ne i16 %61, 0
  br i1 %tobool85, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %if.then.82
  %62 = load i8*, i8** %cp, align 8
  %63 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affix87 = getelementptr inbounds %struct.flagent, %struct.flagent* %63, i32 0, i32 1
  %64 = load i8*, i8** %affix87, align 8
  %call88 = call i8* @strcpy(i8* %62, i8* %64) #5
  %65 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl89 = getelementptr inbounds %struct.flagent, %struct.flagent* %65, i32 0, i32 4
  %66 = load i16, i16* %affl89, align 2
  %conv90 = sext i16 %66 to i32
  %67 = load i8*, i8** %cp, align 8
  %idx.ext91 = sext i32 %conv90 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %67, i64 %idx.ext91
  store i8* %add.ptr92, i8** %cp, align 8
  %68 = load i8*, i8** %cp, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr93, i8** %cp, align 8
  store i8 43, i8* %68, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.86, %if.then.82
  %69 = load i8*, i8** %cp, align 8
  %arraydecay95 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay95 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv96 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv96, i32* %preadd, align 4
  %70 = load i8*, i8** %cp, align 8
  %arraydecay97 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call98 = call i8* @strcpy(i8* %70, i8* %arraydecay97) #5
  %71 = load i32, i32* %tlen, align 4
  %72 = load i8*, i8** %cp, align 8
  %idx.ext99 = sext i32 %71 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %72, i64 %idx.ext99
  store i8* %add.ptr100, i8** %cp, align 8
  %73 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl101 = getelementptr inbounds %struct.flagent, %struct.flagent* %73, i32 0, i32 3
  %74 = load i16, i16* %stripl101, align 2
  %tobool102 = icmp ne i16 %74, 0
  br i1 %tobool102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %if.end.94
  %75 = load i8*, i8** %cp, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr104, i8** %cp, align 8
  store i8 45, i8* %75, align 1
  %76 = load i8*, i8** %cp, align 8
  %77 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %strip105 = getelementptr inbounds %struct.flagent, %struct.flagent* %77, i32 0, i32 0
  %78 = load i8*, i8** %strip105, align 8
  %call106 = call i8* @strcpy(i8* %76, i8* %78) #5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %if.end.94
  %arraydecay108 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %79 = load i8*, i8** %word.addr, align 8
  %80 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl109 = getelementptr inbounds %struct.flagent, %struct.flagent* %80, i32 0, i32 3
  %81 = load i16, i16* %stripl109, align 2
  %conv110 = sext i16 %81 to i32
  %82 = load i32, i32* %preadd, align 4
  %83 = load i8*, i8** %cp, align 8
  %arraydecay111 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %sub.ptr.lhs.cast112 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast113 = ptrtoint i8* %arraydecay111 to i64
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113
  %84 = load i32, i32* %tlen, align 4
  %conv115 = sext i32 %84 to i64
  %sub116 = sub nsw i64 %sub.ptr.sub114, %conv115
  %85 = load i32, i32* %preadd, align 4
  %conv117 = sext i32 %85 to i64
  %sub118 = sub nsw i64 %sub116, %conv117
  %conv119 = trunc i64 %sub118 to i32
  %86 = load %struct.dent*, %struct.dent** %dent, align 8
  %87 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %call120 = call i32 @ins_root_cap(i8* %arraydecay108, i8* %79, i32 %conv110, i32 %82, i32 0, i32 %conv119, %struct.dent* %86, %struct.flagent* %87, %struct.flagent* null)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.107, %if.then.77
  br label %if.end.154

if.else.122:                                      ; preds = %if.else
  %arraydecay123 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call124 = call %struct.dent* @lookup(i8* %arraydecay123, i32 1)
  store %struct.dent* %call124, %struct.dent** %dent, align 8
  %cmp125 = icmp ne %struct.dent* %call124, null
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.153

land.lhs.true.127:                                ; preds = %if.else.122
  %88 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %88, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %89 = load i64, i64* %arrayidx128, align 8
  %90 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit129 = getelementptr inbounds %struct.flagent, %struct.flagent* %90, i32 0, i32 2
  %91 = load i16, i16* %flagbit129, align 2
  %conv130 = sext i16 %91 to i32
  %sh_prom = zext i32 %conv130 to i64
  %shl131 = shl i64 1, %sh_prom
  %and132 = and i64 %89, %shl131
  %tobool133 = icmp ne i64 %and132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.153

if.then.134:                                      ; preds = %land.lhs.true.127
  %92 = load i32, i32* @numhits, align 4
  %cmp135 = icmp slt i32 %92, 10
  br i1 %cmp135, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %if.then.134
  %93 = load %struct.dent*, %struct.dent** %dent, align 8
  %94 = load i32, i32* @numhits, align 4
  %idxprom138 = sext i32 %94 to i64
  %arrayidx139 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom138
  %dictent = getelementptr inbounds %struct.success, %struct.success* %arrayidx139, i32 0, i32 0
  store %struct.dent* %93, %struct.dent** %dictent, align 8
  %95 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %96 = load i32, i32* @numhits, align 4
  %idxprom140 = sext i32 %96 to i64
  %arrayidx141 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom140
  %prefix = getelementptr inbounds %struct.success, %struct.success* %arrayidx141, i32 0, i32 1
  store %struct.flagent* %95, %struct.flagent** %prefix, align 8
  %97 = load i32, i32* @numhits, align 4
  %idxprom142 = sext i32 %97 to i64
  %arrayidx143 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom142
  %suffix = getelementptr inbounds %struct.success, %struct.success* %arrayidx143, i32 0, i32 2
  store %struct.flagent* null, %struct.flagent** %suffix, align 8
  %98 = load i32, i32* @numhits, align 4
  %inc144 = add nsw i32 %98, 1
  store i32 %inc144, i32* @numhits, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.137, %if.then.134
  %99 = load i32, i32* %allhits.addr, align 4
  %tobool146 = icmp ne i32 %99, 0
  br i1 %tobool146, label %if.end.152, label %if.then.147

if.then.147:                                      ; preds = %if.end.145
  %100 = load i8*, i8** %word.addr, align 8
  %101 = load i32, i32* %len.addr, align 4
  %call148 = call i32 @cap_ok(i8* %100, %struct.success* getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0), i32 %101)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.147
  br label %for.end.167

if.end.151:                                       ; preds = %if.then.147
  store i32 0, i32* @numhits, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %land.lhs.true.127, %if.else.122
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.121
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.68
  %102 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags156 = getelementptr inbounds %struct.flagent, %struct.flagent* %102, i32 0, i32 6
  %103 = load i16, i16* %flagflags156, align 2
  %conv157 = sext i16 %103 to i32
  %and158 = and i32 %conv157, 1
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.155
  %104 = load i8*, i8** %word.addr, align 8
  %arraydecay161 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %105 = load i32, i32* %tlen, align 4
  %106 = load i32, i32* %sfxopts.addr, align 4
  %or = or i32 %106, 1
  %107 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %108 = load i32, i32* %ignoreflagbits.addr, align 4
  %109 = load i32, i32* %allhits.addr, align 4
  call void @chk_suf(i8* %104, i8* %arraydecay161, i32 %105, i32 %or, %struct.flagent* %107, i32 %108, i32 %109)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.155
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %for.end
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %land.lhs.true.28, %lor.lhs.false, %if.end.15
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164, %if.then.14, %if.then
  %110 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %incdec.ptr166 = getelementptr inbounds %struct.flagent, %struct.flagent* %110, i32 1
  store %struct.flagent* %incdec.ptr166, %struct.flagent** %flent, align 8
  %111 = load i32, i32* %entcount, align 4
  %dec = add nsw i32 %111, -1
  store i32 %dec, i32* %entcount, align 4
  br label %for.cond

for.end.167:                                      ; preds = %if.then.150, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chk_suf(i8* %word, i8* %ucword, i32 %len, i32 %optflags, %struct.flagent* %pfxent, i32 %ignoreflagbits, i32 %allhits) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %ucword.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %optflags.addr = alloca i32, align 4
  %pfxent.addr = alloca %struct.flagent*, align 8
  %ignoreflagbits.addr = alloca i32, align 4
  %allhits.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ind = alloca %struct.flagptr*, align 8
  store i8* %word, i8** %word.addr, align 8
  store i8* %ucword, i8** %ucword.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %optflags, i32* %optflags.addr, align 4
  store %struct.flagent* %pfxent, %struct.flagent** %pfxent.addr, align 8
  store i32 %ignoreflagbits, i32* %ignoreflagbits.addr, align 4
  store i32 %allhits, i32* %allhits.addr, align 4
  %0 = load i8*, i8** %word.addr, align 8
  %1 = load i8*, i8** %ucword.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %3 = load i32, i32* %optflags.addr, align 4
  %4 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %5 = load i32, i32* %ignoreflagbits.addr, align 4
  %6 = load i32, i32* %allhits.addr, align 4
  call void @suf_list_chk(i8* %0, i8* %1, i32 %2, %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i32 0, i64 0), i32 %3, %struct.flagent* %4, i32 %5, i32 %6)
  %7 = load i8*, i8** %ucword.addr, align 8
  %8 = load i32, i32* %len.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %cp, align 8
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds [228 x %struct.flagptr], [228 x %struct.flagptr]* @sflagindex, i32 0, i64 %idxprom
  store %struct.flagptr* %arrayidx, %struct.flagptr** %ind, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %entry
  %11 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %numents = getelementptr inbounds %struct.flagptr, %struct.flagptr* %11, i32 0, i32 1
  %12 = load i32, i32* %numents, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu = getelementptr inbounds %struct.flagptr, %struct.flagptr* %13, i32 0, i32 0
  %fp = bitcast %union.ptr_union* %pu to %struct.flagptr**
  %14 = load %struct.flagptr*, %struct.flagptr** %fp, align 8
  %cmp2 = icmp ne %struct.flagptr* %14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i8*, i8** %cp, align 8
  %17 = load i8*, i8** %ucword.addr, align 8
  %cmp3 = icmp eq i8* %16, %17
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %return

if.end:                                           ; preds = %while.body
  %18 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu4 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %18, i32 0, i32 0
  %fp5 = bitcast %union.ptr_union* %pu4 to %struct.flagptr**
  %19 = load %struct.flagptr*, %struct.flagptr** %fp5, align 8
  %arrayidx6 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %19, i64 0
  %numents7 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %arrayidx6, i32 0, i32 1
  %20 = load i32, i32* %numents7, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.end
  %21 = load i8*, i8** %word.addr, align 8
  %22 = load i8*, i8** %ucword.addr, align 8
  %23 = load i32, i32* %len.addr, align 4
  %24 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu9 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %24, i32 0, i32 0
  %fp10 = bitcast %union.ptr_union* %pu9 to %struct.flagptr**
  %25 = load %struct.flagptr*, %struct.flagptr** %fp10, align 8
  %arrayidx11 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %25, i64 0
  %26 = load i32, i32* %optflags.addr, align 4
  %27 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %28 = load i32, i32* %ignoreflagbits.addr, align 4
  %29 = load i32, i32* %allhits.addr, align 4
  call void @suf_list_chk(i8* %21, i8* %22, i32 %23, %struct.flagptr* %arrayidx11, i32 %26, %struct.flagent* %27, i32 %28, i32 %29)
  %30 = load i32, i32* @numhits, align 4
  %cmp12 = icmp ne i32 %30, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.then.8
  %31 = load i32, i32* %allhits.addr, align 4
  %tobool13 = icmp ne i32 %31, 0
  br i1 %tobool13, label %if.end.19, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %32 = load i32, i32* @cflag, align 4
  %tobool15 = icmp ne i32 %32, 0
  br i1 %tobool15, label %if.end.19, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %33 = load i32, i32* %ignoreflagbits.addr, align 4
  %tobool17 = icmp ne i32 %33, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true, %if.then.8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %34 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  %35 = load i8, i8* %incdec.ptr, align 1
  %idxprom21 = zext i8 %35 to i64
  %36 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %pu22 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %36, i32 0, i32 0
  %fp23 = bitcast %union.ptr_union* %pu22 to %struct.flagptr**
  %37 = load %struct.flagptr*, %struct.flagptr** %fp23, align 8
  %arrayidx24 = getelementptr inbounds %struct.flagptr, %struct.flagptr* %37, i64 %idxprom21
  store %struct.flagptr* %arrayidx24, %struct.flagptr** %ind, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i8*, i8** %word.addr, align 8
  %39 = load i8*, i8** %ucword.addr, align 8
  %40 = load i32, i32* %len.addr, align 4
  %41 = load %struct.flagptr*, %struct.flagptr** %ind, align 8
  %42 = load i32, i32* %optflags.addr, align 4
  %43 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %44 = load i32, i32* %ignoreflagbits.addr, align 4
  %45 = load i32, i32* %allhits.addr, align 4
  call void @suf_list_chk(i8* %38, i8* %39, i32 %40, %struct.flagptr* %41, i32 %42, %struct.flagent* %43, i32 %44, i32 %45)
  br label %return

return:                                           ; preds = %while.end, %if.then.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @expand_pre(i8* %croot, i8* %rootword, i64* %mask, i32 %option, i8* %extra) #0 {
entry:
  %croot.addr = alloca i8*, align 8
  %rootword.addr = alloca i8*, align 8
  %mask.addr = alloca i64*, align 8
  %option.addr = alloca i32, align 4
  %extra.addr = alloca i8*, align 8
  %entcount = alloca i32, align 4
  %explength = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  store i8* %croot, i8** %croot.addr, align 8
  store i8* %rootword, i8** %rootword.addr, align 8
  store i64* %mask, i64** %mask.addr, align 8
  store i32 %option, i32* %option.addr, align 4
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %0, %struct.flagent** %flent, align 8
  %1 = load i32, i32* @numpflags, align 4
  store i32 %1, i32* %entcount, align 4
  store i32 0, i32* %explength, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %entcount, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %mask.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i32 0, i32 2
  %6 = load i16, i16* %flagbit, align 2
  %conv = sext i16 %6 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %4, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %croot.addr, align 8
  %8 = load i8*, i8** %rootword.addr, align 8
  %9 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %10 = load i64*, i64** %mask.addr, align 8
  %11 = load i32, i32* %option.addr, align 4
  %12 = load i8*, i8** %extra.addr, align 8
  %call = call i32 @pr_pre_expansion(i8* %7, i8* %8, %struct.flagent* %9, i64* %10, i32 %11, i8* %12)
  %13 = load i32, i32* %explength, align 4
  %add = add nsw i32 %13, %call
  store i32 %add, i32* %explength, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %incdec.ptr = getelementptr inbounds %struct.flagent, %struct.flagent* %14, i32 1
  store %struct.flagent* %incdec.ptr, %struct.flagent** %flent, align 8
  %15 = load i32, i32* %entcount, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %entcount, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %explength, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @pr_pre_expansion(i8* %croot, i8* %rootword, %struct.flagent* %flent, i64* %mask, i32 %option, i8* %extra) #0 {
entry:
  %retval = alloca i32, align 4
  %croot.addr = alloca i8*, align 8
  %rootword.addr = alloca i8*, align 8
  %flent.addr = alloca %struct.flagent*, align 8
  %mask.addr = alloca i64*, align 8
  %option.addr = alloca i32, align 4
  %extra.addr = alloca i8*, align 8
  %cond = alloca i32, align 4
  %nextc = alloca i8*, align 8
  %tlen = alloca i32, align 4
  %tword = alloca [120 x i8], align 16
  store i8* %croot, i8** %croot.addr, align 8
  store i8* %rootword, i8** %rootword.addr, align 8
  store %struct.flagent* %flent, %struct.flagent** %flent.addr, align 8
  store i64* %mask, i64** %mask.addr, align 8
  store i32 %option, i32* %option.addr, align 4
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load i8*, i8** %rootword.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %tlen, align 4
  %1 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %numconds = getelementptr inbounds %struct.flagent, %struct.flagent* %1, i32 0, i32 5
  %2 = load i16, i16* %numconds, align 2
  %conv1 = sext i16 %2 to i32
  %3 = load i32, i32* %tlen, align 4
  %cmp = icmp sgt i32 %conv1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %4, i32 0, i32 3
  %5 = load i16, i16* %stripl, align 2
  %conv3 = sext i16 %5 to i32
  %6 = load i32, i32* %tlen, align 4
  %sub = sub nsw i32 %6, %conv3
  store i32 %sub, i32* %tlen, align 4
  %7 = load i32, i32* %tlen, align 4
  %cmp4 = icmp sle i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %8, i32 0, i32 4
  %9 = load i16, i16* %affl, align 2
  %conv8 = sext i16 %9 to i32
  %10 = load i32, i32* %tlen, align 4
  %add = add nsw i32 %10, %conv8
  store i32 %add, i32* %tlen, align 4
  store i32 0, i32* %cond, align 4
  %11 = load i8*, i8** %rootword.addr, align 8
  store i8* %11, i8** %nextc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %cond, align 4
  %13 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %numconds9 = getelementptr inbounds %struct.flagent, %struct.flagent* %13, i32 0, i32 5
  %14 = load i16, i16* %numconds9, align 2
  %conv10 = sext i16 %14 to i32
  %cmp11 = icmp slt i32 %12, %conv10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %nextc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %nextc, align 8
  %16 = load i8, i8* %15, align 1
  %idxprom = zext i8 %16 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %idxprom13 = zext i8 %17 to i64
  %18 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %conds = getelementptr inbounds %struct.flagent, %struct.flagent* %18, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [228 x i8], [228 x i8]* %conds, i32 0, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %20 = load i32, i32* %cond, align 4
  %shl = shl i32 1, %20
  %and = and i32 %conv15, %shl
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %21 = load i32, i32* %cond, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %cond, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl20 = getelementptr inbounds %struct.flagent, %struct.flagent* %22, i32 0, i32 4
  %23 = load i16, i16* %affl20, align 2
  %tobool = icmp ne i16 %23, 0
  br i1 %tobool, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %for.end
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %24 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %24, i32 0, i32 1
  %25 = load i8*, i8** %affix, align 8
  %call22 = call i8* @strcpy(i8* %arraydecay, i8* %25) #5
  %arraydecay23 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %26 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl24 = getelementptr inbounds %struct.flagent, %struct.flagent* %26, i32 0, i32 4
  %27 = load i16, i16* %affl24, align 2
  %conv25 = sext i16 %27 to i32
  %idx.ext = sext i32 %conv25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay23, i64 %idx.ext
  store i8* %add.ptr, i8** %nextc, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %for.end
  %28 = load i8*, i8** %nextc, align 8
  %29 = load i8*, i8** %rootword.addr, align 8
  %30 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %stripl27 = getelementptr inbounds %struct.flagent, %struct.flagent* %30, i32 0, i32 3
  %31 = load i16, i16* %stripl27, align 2
  %conv28 = sext i16 %31 to i32
  %idx.ext29 = sext i32 %conv28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %29, i64 %idx.ext29
  %call31 = call i8* @strcpy(i8* %28, i8* %add.ptr30) #5
  %32 = load i8*, i8** %rootword.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx32, align 1
  %idxprom33 = zext i8 %33 to i64
  %arrayidx34 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom33
  %34 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.80

if.then.36:                                       ; preds = %if.end.26
  %35 = load i8*, i8** %rootword.addr, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr37, i8** %nextc, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %if.then.36
  %36 = load i8*, i8** %nextc, align 8
  %37 = load i8, i8* %36, align 1
  %tobool39 = icmp ne i8 %37, 0
  br i1 %tobool39, label %for.body.40, label %for.end.48

for.body.40:                                      ; preds = %for.cond.38
  %38 = load i8*, i8** %nextc, align 8
  %39 = load i8, i8* %38, align 1
  %idxprom41 = zext i8 %39 to i64
  %arrayidx42 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom41
  %40 = load i8, i8* %arrayidx42, align 1
  %tobool43 = icmp ne i8 %40, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %for.body.40
  br label %for.end.48

if.end.45:                                        ; preds = %for.body.40
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %41 = load i8*, i8** %nextc, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr47, i8** %nextc, align 8
  br label %for.cond.38

for.end.48:                                       ; preds = %if.then.44, %for.cond.38
  %42 = load i8*, i8** %nextc, align 8
  %43 = load i8, i8* %42, align 1
  %tobool49 = icmp ne i8 %43, 0
  br i1 %tobool49, label %if.then.50, label %if.end.79

if.then.50:                                       ; preds = %for.end.48
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %if.then.50
  %44 = load i8*, i8** %nextc, align 8
  %45 = load i8, i8* %44, align 1
  %tobool52 = icmp ne i8 %45, 0
  br i1 %tobool52, label %for.body.53, label %for.end.61

for.body.53:                                      ; preds = %for.cond.51
  %46 = load i8*, i8** %nextc, align 8
  %47 = load i8, i8* %46, align 1
  %idxprom54 = zext i8 %47 to i64
  %arrayidx55 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom54
  %48 = load i8, i8* %arrayidx55, align 1
  %tobool56 = icmp ne i8 %48, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.53
  br label %for.end.61

if.end.58:                                        ; preds = %for.body.53
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %49 = load i8*, i8** %nextc, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr60, i8** %nextc, align 8
  br label %for.cond.51

for.end.61:                                       ; preds = %if.then.57, %for.cond.51
  %50 = load i8*, i8** %nextc, align 8
  %51 = load i8, i8* %50, align 1
  %tobool62 = icmp ne i8 %51, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.end.61
  %52 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl64 = getelementptr inbounds %struct.flagent, %struct.flagent* %52, i32 0, i32 4
  %53 = load i16, i16* %affl64, align 2
  %idxprom65 = sext i16 %53 to i64
  %arrayidx66 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i64 %idxprom65
  %54 = load i8, i8* %arrayidx66, align 1
  %idxprom67 = zext i8 %54 to i64
  %arrayidx68 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom67
  %55 = load i8, i8* %arrayidx68, align 1
  %tobool69 = icmp ne i8 %55, 0
  br i1 %tobool69, label %if.end.74, label %if.then.70

if.then.70:                                       ; preds = %if.then.63
  %arraydecay71 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %56 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl72 = getelementptr inbounds %struct.flagent, %struct.flagent* %56, i32 0, i32 4
  %57 = load i16, i16* %affl72, align 2
  %conv73 = sext i16 %57 to i32
  call void @forcelc(i8* %arraydecay71, i32 %conv73)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.then.63
  br label %if.end.78

if.else:                                          ; preds = %for.end.61
  %arraydecay75 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %add.ptr76 = getelementptr inbounds i8, i8* %arraydecay75, i64 1
  %58 = load i32, i32* %tlen, align 4
  %sub77 = sub nsw i32 %58, 1
  call void @forcelc(i8* %add.ptr76, i32 %sub77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.end.74
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %for.end.48
  br label %if.end.89

if.else.80:                                       ; preds = %if.end.26
  %59 = load i8*, i8** %nextc, align 8
  %60 = load i8, i8* %59, align 1
  %idxprom81 = zext i8 %60 to i64
  %arrayidx82 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom81
  %61 = load i8, i8* %arrayidx82, align 1
  %tobool83 = icmp ne i8 %61, 0
  br i1 %tobool83, label %if.end.88, label %if.then.84

if.then.84:                                       ; preds = %if.else.80
  %arraydecay85 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %62 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl86 = getelementptr inbounds %struct.flagent, %struct.flagent* %62, i32 0, i32 4
  %63 = load i16, i16* %affl86, align 2
  %conv87 = sext i16 %63 to i32
  call void @forcelc(i8* %arraydecay85, i32 %conv87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.else.80
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.79
  %64 = load i32, i32* %option.addr, align 4
  %cmp90 = icmp eq i32 %64, 3
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %65 = load i8*, i8** %croot.addr, align 8
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %65)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.89
  %66 = load i32, i32* %option.addr, align 4
  %cmp95 = icmp ne i32 %66, 4
  br i1 %cmp95, label %if.then.97, label %if.end.101

if.then.97:                                       ; preds = %if.end.94
  %arraydecay98 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %call99 = call i8* @ichartosstr(i8* %arraydecay98, i32 1)
  %67 = load i8*, i8** %extra.addr, align 8
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %call99, i8* %67)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.97, %if.end.94
  %68 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %flagflags = getelementptr inbounds %struct.flagent, %struct.flagent* %68, i32 0, i32 6
  %69 = load i16, i16* %flagflags, align 2
  %conv102 = sext i16 %69 to i32
  %and103 = and i32 %conv102, 1
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %if.end.101
  %70 = load i32, i32* %tlen, align 4
  %71 = load i8*, i8** %croot.addr, align 8
  %arraydecay106 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %72 = load i64*, i64** %mask.addr, align 8
  %73 = load i32, i32* %option.addr, align 4
  %74 = load i8*, i8** %extra.addr, align 8
  %call107 = call i32 @expand_suf(i8* %71, i8* %arraydecay106, i64* %72, i32 1, i32 %73, i8* %74)
  %add108 = add nsw i32 %70, %call107
  store i32 %add108, i32* %retval
  br label %return

if.else.109:                                      ; preds = %if.end.101
  %75 = load i32, i32* %tlen, align 4
  store i32 %75, i32* %retval
  br label %return

return:                                           ; preds = %if.else.109, %if.then.105, %if.then.18, %if.then.6, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define i32 @expand_suf(i8* %croot, i8* %rootword, i64* %mask, i32 %optflags, i32 %option, i8* %extra) #0 {
entry:
  %croot.addr = alloca i8*, align 8
  %rootword.addr = alloca i8*, align 8
  %mask.addr = alloca i64*, align 8
  %optflags.addr = alloca i32, align 4
  %option.addr = alloca i32, align 4
  %extra.addr = alloca i8*, align 8
  %entcount = alloca i32, align 4
  %explength = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  store i8* %croot, i8** %croot.addr, align 8
  store i8* %rootword, i8** %rootword.addr, align 8
  store i64* %mask, i64** %mask.addr, align 8
  store i32 %optflags, i32* %optflags.addr, align 4
  store i32 %option, i32* %option.addr, align 4
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %0, %struct.flagent** %flent, align 8
  %1 = load i32, i32* @numsflags, align 4
  store i32 %1, i32* %entcount, align 4
  store i32 0, i32* %explength, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %entcount, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %mask.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %5, i32 0, i32 2
  %6 = load i16, i16* %flagbit, align 2
  %conv = sext i16 %6 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %4, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %optflags.addr, align 4
  %and1 = and i32 %7, 1
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags = getelementptr inbounds %struct.flagent, %struct.flagent* %8, i32 0, i32 6
  %9 = load i16, i16* %flagflags, align 2
  %conv4 = sext i16 %9 to i32
  %and5 = and i32 %conv4, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %10 = load i8*, i8** %croot.addr, align 8
  %11 = load i8*, i8** %rootword.addr, align 8
  %12 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %13 = load i32, i32* %option.addr, align 4
  %14 = load i8*, i8** %extra.addr, align 8
  %call = call i32 @pr_suf_expansion(i8* %10, i8* %11, %struct.flagent* %12, i32 %13, i8* %14)
  %15 = load i32, i32* %explength, align 4
  %add = add nsw i32 %15, %call
  store i32 %add, i32* %explength, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %lor.lhs.false
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %16 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %incdec.ptr = getelementptr inbounds %struct.flagent, %struct.flagent* %16, i32 1
  store %struct.flagent* %incdec.ptr, %struct.flagent** %flent, align 8
  %17 = load i32, i32* %entcount, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %entcount, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %explength, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @pr_suf_expansion(i8* %croot, i8* %rootword, %struct.flagent* %flent, i32 %option, i8* %extra) #0 {
entry:
  %retval = alloca i32, align 4
  %croot.addr = alloca i8*, align 8
  %rootword.addr = alloca i8*, align 8
  %flent.addr = alloca %struct.flagent*, align 8
  %option.addr = alloca i32, align 4
  %extra.addr = alloca i8*, align 8
  %cond = alloca i32, align 4
  %nextc = alloca i8*, align 8
  %tlen = alloca i32, align 4
  %tword = alloca [120 x i8], align 16
  store i8* %croot, i8** %croot.addr, align 8
  store i8* %rootword, i8** %rootword.addr, align 8
  store %struct.flagent* %flent, %struct.flagent** %flent.addr, align 8
  store i32 %option, i32* %option.addr, align 4
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load i8*, i8** %rootword.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %tlen, align 4
  %1 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %numconds = getelementptr inbounds %struct.flagent, %struct.flagent* %1, i32 0, i32 5
  %2 = load i16, i16* %numconds, align 2
  %conv1 = sext i16 %2 to i32
  store i32 %conv1, i32* %cond, align 4
  %3 = load i32, i32* %cond, align 4
  %4 = load i32, i32* %tlen, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %tlen, align 4
  %6 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %6, i32 0, i32 3
  %7 = load i16, i16* %stripl, align 2
  %conv3 = sext i16 %7 to i32
  %sub = sub nsw i32 %5, %conv3
  %cmp4 = icmp sle i32 %sub, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i8*, i8** %rootword.addr, align 8
  %9 = load i32, i32* %tlen, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %nextc, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %if.end.7
  %10 = load i32, i32* %cond, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %cond, align 4
  %cmp8 = icmp sge i32 %dec, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %nextc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %nextc, align 8
  %12 = load i8, i8* %incdec.ptr, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %idxprom10 = zext i8 %13 to i64
  %14 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %conds = getelementptr inbounds %struct.flagent, %struct.flagent* %14, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [228 x i8], [228 x i8]* %conds, i32 0, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %16 = load i32, i32* %cond, align 4
  %shl = shl i32 1, %16
  %and = and i32 %conv12, %shl
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %17 = load i8*, i8** %rootword.addr, align 8
  %call17 = call i8* @strcpy(i8* %arraydecay, i8* %17) #5
  %arraydecay18 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %18 = load i32, i32* %tlen, align 4
  %idx.ext19 = sext i32 %18 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %arraydecay18, i64 %idx.ext19
  %19 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %stripl21 = getelementptr inbounds %struct.flagent, %struct.flagent* %19, i32 0, i32 3
  %20 = load i16, i16* %stripl21, align 2
  %conv22 = sext i16 %20 to i32
  %idx.ext23 = sext i32 %conv22 to i64
  %idx.neg = sub i64 0, %idx.ext23
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.neg
  store i8* %add.ptr24, i8** %nextc, align 8
  %21 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %21, i32 0, i32 4
  %22 = load i16, i16* %affl, align 2
  %tobool = icmp ne i16 %22, 0
  br i1 %tobool, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.end
  %23 = load i8*, i8** %nextc, align 8
  %24 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %24, i32 0, i32 1
  %25 = load i8*, i8** %affix, align 8
  %call26 = call i8* @strcpy(i8* %23, i8* %25) #5
  %26 = load i8*, i8** %nextc, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = zext i8 %27 to i64
  %arrayidx29 = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %idxprom28
  %28 = load i8, i8* %arrayidx29, align 1
  %tobool30 = icmp ne i8 %28, 0
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.then.25
  %29 = load i8*, i8** %nextc, align 8
  %30 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl32 = getelementptr inbounds %struct.flagent, %struct.flagent* %30, i32 0, i32 4
  %31 = load i16, i16* %affl32, align 2
  %conv33 = sext i16 %31 to i32
  call void @forcelc(i8* %29, i32 %conv33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.25
  br label %if.end.35

if.else:                                          ; preds = %for.end
  %32 = load i8*, i8** %nextc, align 8
  store i8 0, i8* %32, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end.34
  %33 = load i32, i32* %option.addr, align 4
  %cmp36 = icmp eq i32 %33, 3
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %34 = load i8*, i8** %croot.addr, align 8
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %34)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %35 = load i32, i32* %option.addr, align 4
  %cmp41 = icmp ne i32 %35, 4
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.40
  %arraydecay44 = getelementptr inbounds [120 x i8], [120 x i8]* %tword, i32 0, i32 0
  %call45 = call i8* @ichartosstr(i8* %arraydecay44, i32 1)
  %36 = load i8*, i8** %extra.addr, align 8
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %call45, i8* %36)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.40
  %37 = load i32, i32* %tlen, align 4
  %38 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %affl48 = getelementptr inbounds %struct.flagent, %struct.flagent* %38, i32 0, i32 4
  %39 = load i16, i16* %affl48, align 2
  %conv49 = sext i16 %39 to i32
  %add = add nsw i32 %37, %conv49
  %40 = load %struct.flagent*, %struct.flagent** %flent.addr, align 8
  %stripl50 = getelementptr inbounds %struct.flagent, %struct.flagent* %40, i32 0, i32 3
  %41 = load i16, i16* %stripl50, align 2
  %conv51 = sext i16 %41 to i32
  %sub52 = sub nsw i32 %add, %conv51
  store i32 %sub52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.15, %if.then.6, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare void @flagpr(i8*, i32, i32, i32, i32, i32) #3

declare %struct.dent* @lookup(i8*, i32) #3

declare i32 @ins_root_cap(i8*, i8*, i32, i32, i32, i32, %struct.dent*, %struct.flagent*, %struct.flagent*) #3

declare i32 @cap_ok(i8*, %struct.success*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @suf_list_chk(i8* %word, i8* %ucword, i32 %len, %struct.flagptr* %ind, i32 %optflags, %struct.flagent* %pfxent, i32 %ignoreflagbits, i32 %allhits) #0 {
entry:
  %word.addr = alloca i8*, align 8
  %ucword.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ind.addr = alloca %struct.flagptr*, align 8
  %optflags.addr = alloca i32, align 4
  %pfxent.addr = alloca %struct.flagent*, align 8
  %ignoreflagbits.addr = alloca i32, align 4
  %allhits.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %cond = alloca i32, align 4
  %dent = alloca %struct.dent*, align 8
  %entcount = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  %preadd = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tword = alloca [184 x i8], align 16
  %tword2 = alloca [184 x i8], align 16
  store i8* %word, i8** %word.addr, align 8
  store i8* %ucword, i8** %ucword.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.flagptr* %ind, %struct.flagptr** %ind.addr, align 8
  store i32 %optflags, i32* %optflags.addr, align 4
  store %struct.flagent* %pfxent, %struct.flagent** %pfxent.addr, align 8
  store i32 %ignoreflagbits, i32* %ignoreflagbits.addr, align 4
  store i32 %allhits, i32* %allhits.addr, align 4
  %arraydecay = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %0 = load i8*, i8** %ucword.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #5
  %1 = load %struct.flagptr*, %struct.flagptr** %ind.addr, align 8
  %pu = getelementptr inbounds %struct.flagptr, %struct.flagptr* %1, i32 0, i32 0
  %ent = bitcast %union.ptr_union* %pu to %struct.flagent**
  %2 = load %struct.flagent*, %struct.flagent** %ent, align 8
  store %struct.flagent* %2, %struct.flagent** %flent, align 8
  %3 = load %struct.flagptr*, %struct.flagptr** %ind.addr, align 8
  %numents = getelementptr inbounds %struct.flagptr, %struct.flagptr* %3, i32 0, i32 1
  %4 = load i32, i32* %numents, align 4
  store i32 %4, i32* %entcount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %entcount, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end.236

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %optflags.addr, align 4
  %and = and i32 %6, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags = getelementptr inbounds %struct.flagent, %struct.flagent* %7, i32 0, i32 6
  %8 = load i16, i16* %flagflags, align 2
  %conv = sext i16 %8 to i32
  %and2 = and i32 %conv, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags5 = getelementptr inbounds %struct.flagent, %struct.flagent* %9, i32 0, i32 6
  %10 = load i16, i16* %flagflags5, align 2
  %conv6 = sext i16 %10 to i32
  %and7 = and i32 %conv6, 2
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %if.end
  %11 = load i32, i32* %optflags.addr, align 4
  %and11 = and i32 %11, 2
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.10
  br label %for.inc

if.end.15:                                        ; preds = %land.lhs.true.10, %if.end
  %12 = load i32, i32* @compoundflag, align 4
  %cmp16 = icmp eq i32 %12, 2
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.25

land.lhs.true.18:                                 ; preds = %if.end.15
  %13 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagflags19 = getelementptr inbounds %struct.flagent, %struct.flagent* %13, i32 0, i32 6
  %14 = load i16, i16* %flagflags19, align 2
  %conv20 = sext i16 %14 to i32
  %15 = load i32, i32* %optflags.addr, align 4
  %xor = xor i32 %conv20, %15
  %and21 = and i32 %xor, 2
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.18
  br label %for.inc

if.end.25:                                        ; preds = %land.lhs.true.18, %if.end.15
  %16 = load i32, i32* %len.addr, align 4
  %17 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl = getelementptr inbounds %struct.flagent, %struct.flagent* %17, i32 0, i32 4
  %18 = load i16, i16* %affl, align 2
  %conv26 = sext i16 %18 to i32
  %sub = sub nsw i32 %16, %conv26
  store i32 %sub, i32* %tlen, align 4
  %19 = load i32, i32* %tlen, align 4
  %cmp27 = icmp sgt i32 %19, 0
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.233

land.lhs.true.29:                                 ; preds = %if.end.25
  %20 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl30 = getelementptr inbounds %struct.flagent, %struct.flagent* %20, i32 0, i32 4
  %21 = load i16, i16* %affl30, align 2
  %conv31 = sext i16 %21 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %land.lhs.true.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.29
  %22 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affix = getelementptr inbounds %struct.flagent, %struct.flagent* %22, i32 0, i32 1
  %23 = load i8*, i8** %affix, align 8
  %24 = load i8*, i8** %ucword.addr, align 8
  %25 = load i32, i32* %tlen, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %call34 = call i32 @strcmp(i8* %23, i8* %add.ptr) #4
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.233

land.lhs.true.37:                                 ; preds = %lor.lhs.false, %land.lhs.true.29
  %26 = load i32, i32* %tlen, align 4
  %27 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl = getelementptr inbounds %struct.flagent, %struct.flagent* %27, i32 0, i32 3
  %28 = load i16, i16* %stripl, align 2
  %conv38 = sext i16 %28 to i32
  %add = add nsw i32 %26, %conv38
  %29 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %numconds = getelementptr inbounds %struct.flagent, %struct.flagent* %29, i32 0, i32 5
  %30 = load i16, i16* %numconds, align 2
  %conv39 = sext i16 %30 to i32
  %cmp40 = icmp sge i32 %add, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.233

if.then.42:                                       ; preds = %land.lhs.true.37
  %arraydecay43 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %31 = load i8*, i8** %ucword.addr, align 8
  %call44 = call i8* @strcpy(i8* %arraydecay43, i8* %31) #5
  %arraydecay45 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %32 = load i32, i32* %tlen, align 4
  %idx.ext46 = sext i32 %32 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay45, i64 %idx.ext46
  store i8* %add.ptr47, i8** %cp, align 8
  %33 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl48 = getelementptr inbounds %struct.flagent, %struct.flagent* %33, i32 0, i32 3
  %34 = load i16, i16* %stripl48, align 2
  %tobool = icmp ne i16 %34, 0
  br i1 %tobool, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.42
  %35 = load i8*, i8** %cp, align 8
  %36 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %strip = getelementptr inbounds %struct.flagent, %struct.flagent* %36, i32 0, i32 0
  %37 = load i8*, i8** %strip, align 8
  %call50 = call i8* @strcpy(i8* %35, i8* %37) #5
  %38 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl51 = getelementptr inbounds %struct.flagent, %struct.flagent* %38, i32 0, i32 3
  %39 = load i16, i16* %stripl51, align 2
  %conv52 = sext i16 %39 to i32
  %40 = load i32, i32* %tlen, align 4
  %add53 = add nsw i32 %40, %conv52
  store i32 %add53, i32* %tlen, align 4
  %arraydecay54 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %41 = load i32, i32* %tlen, align 4
  %idx.ext55 = sext i32 %41 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %arraydecay54, i64 %idx.ext55
  store i8* %add.ptr56, i8** %cp, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.then.42
  %42 = load i8*, i8** %cp, align 8
  store i8 0, i8* %42, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.49
  %43 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %numconds58 = getelementptr inbounds %struct.flagent, %struct.flagent* %43, i32 0, i32 5
  %44 = load i16, i16* %numconds58, align 2
  %conv59 = sext i16 %44 to i32
  store i32 %conv59, i32* %cond, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %if.end.69, %if.end.57
  %45 = load i32, i32* %cond, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %cond, align 4
  %cmp61 = icmp sge i32 %dec, 0
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.60
  %46 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr, i8** %cp, align 8
  %47 = load i8, i8* %incdec.ptr, align 1
  %idxprom = zext i8 %47 to i64
  %48 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %conds = getelementptr inbounds %struct.flagent, %struct.flagent* %48, i32 0, i32 7
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* %conds, i32 0, i64 %idxprom
  %49 = load i8, i8* %arrayidx, align 1
  %conv64 = sext i8 %49 to i32
  %50 = load i32, i32* %cond, align 4
  %shl = shl i32 1, %50
  %and65 = and i32 %conv64, %shl
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.63
  br label %for.end

if.end.69:                                        ; preds = %for.body.63
  br label %for.cond.60

for.end:                                          ; preds = %if.then.68, %for.cond.60
  %51 = load i32, i32* %cond, align 4
  %cmp70 = icmp slt i32 %51, 0
  br i1 %cmp70, label %if.then.72, label %if.end.232

if.then.72:                                       ; preds = %for.end
  %52 = load i32, i32* @cflag, align 4
  %tobool73 = icmp ne i32 %52, 0
  br i1 %tobool73, label %if.then.74, label %if.else.98

if.then.74:                                       ; preds = %if.then.72
  %53 = load i32, i32* %optflags.addr, align 4
  %and75 = and i32 %53, 1
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.90

if.then.77:                                       ; preds = %if.then.74
  %arraydecay78 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %54 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %flagbit = getelementptr inbounds %struct.flagent, %struct.flagent* %54, i32 0, i32 2
  %55 = load i16, i16* %flagbit, align 2
  %conv79 = sext i16 %55 to i32
  %add80 = add nsw i32 %conv79, 65
  %56 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %stripl81 = getelementptr inbounds %struct.flagent, %struct.flagent* %56, i32 0, i32 3
  %57 = load i16, i16* %stripl81, align 2
  %conv82 = sext i16 %57 to i32
  %58 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %affl83 = getelementptr inbounds %struct.flagent, %struct.flagent* %58, i32 0, i32 4
  %59 = load i16, i16* %affl83, align 2
  %conv84 = sext i16 %59 to i32
  %60 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit85 = getelementptr inbounds %struct.flagent, %struct.flagent* %60, i32 0, i32 2
  %61 = load i16, i16* %flagbit85, align 2
  %conv86 = sext i16 %61 to i32
  %add87 = add nsw i32 %conv86, 65
  %62 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl88 = getelementptr inbounds %struct.flagent, %struct.flagent* %62, i32 0, i32 4
  %63 = load i16, i16* %affl88, align 2
  %conv89 = sext i16 %63 to i32
  call void @flagpr(i8* %arraydecay78, i32 %add80, i32 %conv82, i32 %conv84, i32 %add87, i32 %conv89)
  br label %if.end.97

if.else.90:                                       ; preds = %if.then.74
  %arraydecay91 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %64 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit92 = getelementptr inbounds %struct.flagent, %struct.flagent* %64, i32 0, i32 2
  %65 = load i16, i16* %flagbit92, align 2
  %conv93 = sext i16 %65 to i32
  %add94 = add nsw i32 %conv93, 65
  %66 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl95 = getelementptr inbounds %struct.flagent, %struct.flagent* %66, i32 0, i32 4
  %67 = load i16, i16* %affl95, align 2
  %conv96 = sext i16 %67 to i32
  call void @flagpr(i8* %arraydecay91, i32 -1, i32 0, i32 0, i32 %add94, i32 %conv96)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.90, %if.then.77
  br label %if.end.231

if.else.98:                                       ; preds = %if.then.72
  %68 = load i32, i32* %ignoreflagbits.addr, align 4
  %tobool99 = icmp ne i32 %68, 0
  br i1 %tobool99, label %if.then.100, label %if.else.186

if.then.100:                                      ; preds = %if.else.98
  %arraydecay101 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call102 = call %struct.dent* @lookup(i8* %arraydecay101, i32 1)
  store %struct.dent* %call102, %struct.dent** %dent, align 8
  %cmp103 = icmp ne %struct.dent* %call102, null
  br i1 %cmp103, label %if.then.105, label %if.end.185

if.then.105:                                      ; preds = %if.then.100
  %arraydecay106 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  store i8* %arraydecay106, i8** %cp, align 8
  %69 = load i32, i32* %optflags.addr, align 4
  %and107 = and i32 %69, 1
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.122

land.lhs.true.109:                                ; preds = %if.then.105
  %70 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %affl110 = getelementptr inbounds %struct.flagent, %struct.flagent* %70, i32 0, i32 4
  %71 = load i16, i16* %affl110, align 2
  %conv111 = sext i16 %71 to i32
  %cmp112 = icmp ne i32 %conv111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.122

if.then.114:                                      ; preds = %land.lhs.true.109
  %72 = load i8*, i8** %cp, align 8
  %73 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %affix115 = getelementptr inbounds %struct.flagent, %struct.flagent* %73, i32 0, i32 1
  %74 = load i8*, i8** %affix115, align 8
  %call116 = call i8* @strcpy(i8* %72, i8* %74) #5
  %75 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %affl117 = getelementptr inbounds %struct.flagent, %struct.flagent* %75, i32 0, i32 4
  %76 = load i16, i16* %affl117, align 2
  %conv118 = sext i16 %76 to i32
  %77 = load i8*, i8** %cp, align 8
  %idx.ext119 = sext i32 %conv118 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %77, i64 %idx.ext119
  store i8* %add.ptr120, i8** %cp, align 8
  %78 = load i8*, i8** %cp, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr121, i8** %cp, align 8
  store i8 43, i8* %78, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.114, %land.lhs.true.109, %if.then.105
  %79 = load i8*, i8** %cp, align 8
  %arraydecay123 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay123 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv124 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv124, i32* %preadd, align 4
  %80 = load i8*, i8** %cp, align 8
  %arraydecay125 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call126 = call i8* @strcpy(i8* %80, i8* %arraydecay125) #5
  %81 = load i32, i32* %tlen, align 4
  %82 = load i8*, i8** %cp, align 8
  %idx.ext127 = sext i32 %81 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %82, i64 %idx.ext127
  store i8* %add.ptr128, i8** %cp, align 8
  %83 = load i32, i32* %optflags.addr, align 4
  %and129 = and i32 %83, 1
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.144

land.lhs.true.131:                                ; preds = %if.end.122
  %84 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %stripl132 = getelementptr inbounds %struct.flagent, %struct.flagent* %84, i32 0, i32 3
  %85 = load i16, i16* %stripl132, align 2
  %conv133 = sext i16 %85 to i32
  %cmp134 = icmp ne i32 %conv133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.144

if.then.136:                                      ; preds = %land.lhs.true.131
  %86 = load i8*, i8** %cp, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr137, i8** %cp, align 8
  store i8 45, i8* %86, align 1
  %87 = load i8*, i8** %cp, align 8
  %88 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %strip138 = getelementptr inbounds %struct.flagent, %struct.flagent* %88, i32 0, i32 0
  %89 = load i8*, i8** %strip138, align 8
  %call139 = call i8* @strcpy(i8* %87, i8* %89) #5
  %90 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %stripl140 = getelementptr inbounds %struct.flagent, %struct.flagent* %90, i32 0, i32 3
  %91 = load i16, i16* %stripl140, align 2
  %conv141 = sext i16 %91 to i32
  %92 = load i8*, i8** %cp, align 8
  %idx.ext142 = sext i32 %conv141 to i64
  %add.ptr143 = getelementptr inbounds i8, i8* %92, i64 %idx.ext142
  store i8* %add.ptr143, i8** %cp, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.136, %land.lhs.true.131, %if.end.122
  %93 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl145 = getelementptr inbounds %struct.flagent, %struct.flagent* %93, i32 0, i32 3
  %94 = load i16, i16* %stripl145, align 2
  %tobool146 = icmp ne i16 %94, 0
  br i1 %tobool146, label %if.then.147, label %if.end.155

if.then.147:                                      ; preds = %if.end.144
  %95 = load i8*, i8** %cp, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr148, i8** %cp, align 8
  store i8 45, i8* %95, align 1
  %96 = load i8*, i8** %cp, align 8
  %97 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %strip149 = getelementptr inbounds %struct.flagent, %struct.flagent* %97, i32 0, i32 0
  %98 = load i8*, i8** %strip149, align 8
  %call150 = call i8* @strcpy(i8* %96, i8* %98) #5
  %99 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl151 = getelementptr inbounds %struct.flagent, %struct.flagent* %99, i32 0, i32 3
  %100 = load i16, i16* %stripl151, align 2
  %conv152 = sext i16 %100 to i32
  %101 = load i8*, i8** %cp, align 8
  %idx.ext153 = sext i32 %conv152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %101, i64 %idx.ext153
  store i8* %add.ptr154, i8** %cp, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.147, %if.end.144
  %102 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl156 = getelementptr inbounds %struct.flagent, %struct.flagent* %102, i32 0, i32 4
  %103 = load i16, i16* %affl156, align 2
  %tobool157 = icmp ne i16 %103, 0
  br i1 %tobool157, label %if.then.158, label %if.end.166

if.then.158:                                      ; preds = %if.end.155
  %104 = load i8*, i8** %cp, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr159, i8** %cp, align 8
  store i8 43, i8* %104, align 1
  %105 = load i8*, i8** %cp, align 8
  %106 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affix160 = getelementptr inbounds %struct.flagent, %struct.flagent* %106, i32 0, i32 1
  %107 = load i8*, i8** %affix160, align 8
  %call161 = call i8* @strcpy(i8* %105, i8* %107) #5
  %108 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %affl162 = getelementptr inbounds %struct.flagent, %struct.flagent* %108, i32 0, i32 4
  %109 = load i16, i16* %affl162, align 2
  %conv163 = sext i16 %109 to i32
  %110 = load i8*, i8** %cp, align 8
  %idx.ext164 = sext i32 %conv163 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %110, i64 %idx.ext164
  store i8* %add.ptr165, i8** %cp, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.158, %if.end.155
  %arraydecay167 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %111 = load i8*, i8** %word.addr, align 8
  %112 = load i32, i32* %optflags.addr, align 4
  %and168 = and i32 %112, 1
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.166
  %113 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %stripl170 = getelementptr inbounds %struct.flagent, %struct.flagent* %113, i32 0, i32 3
  %114 = load i16, i16* %stripl170, align 2
  %conv171 = sext i16 %114 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.166
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond172 = phi i32 [ %conv171, %cond.true ], [ 0, %cond.false ]
  %115 = load i32, i32* %preadd, align 4
  %116 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %stripl173 = getelementptr inbounds %struct.flagent, %struct.flagent* %116, i32 0, i32 3
  %117 = load i16, i16* %stripl173, align 2
  %conv174 = sext i16 %117 to i32
  %118 = load i8*, i8** %cp, align 8
  %arraydecay175 = getelementptr inbounds [184 x i8], [184 x i8]* %tword2, i32 0, i32 0
  %sub.ptr.lhs.cast176 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast177 = ptrtoint i8* %arraydecay175 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %119 = load i32, i32* %tlen, align 4
  %conv179 = sext i32 %119 to i64
  %sub180 = sub nsw i64 %sub.ptr.sub178, %conv179
  %120 = load i32, i32* %preadd, align 4
  %conv181 = sext i32 %120 to i64
  %sub182 = sub nsw i64 %sub180, %conv181
  %conv183 = trunc i64 %sub182 to i32
  %121 = load %struct.dent*, %struct.dent** %dent, align 8
  %122 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %123 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %call184 = call i32 @ins_root_cap(i8* %arraydecay167, i8* %111, i32 %cond172, i32 %115, i32 %conv174, i32 %conv183, %struct.dent* %121, %struct.flagent* %122, %struct.flagent* %123)
  br label %if.end.185

if.end.185:                                       ; preds = %cond.end, %if.then.100
  br label %if.end.230

if.else.186:                                      ; preds = %if.else.98
  %arraydecay187 = getelementptr inbounds [184 x i8], [184 x i8]* %tword, i32 0, i32 0
  %call188 = call %struct.dent* @lookup(i8* %arraydecay187, i32 1)
  store %struct.dent* %call188, %struct.dent** %dent, align 8
  %cmp189 = icmp ne %struct.dent* %call188, null
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.229

land.lhs.true.191:                                ; preds = %if.else.186
  %124 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask = getelementptr inbounds %struct.dent, %struct.dent* %124, i32 0, i32 2
  %arrayidx192 = getelementptr inbounds [1 x i64], [1 x i64]* %mask, i32 0, i64 0
  %125 = load i64, i64* %arrayidx192, align 8
  %126 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %flagbit193 = getelementptr inbounds %struct.flagent, %struct.flagent* %126, i32 0, i32 2
  %127 = load i16, i16* %flagbit193, align 2
  %conv194 = sext i16 %127 to i32
  %sh_prom = zext i32 %conv194 to i64
  %shl195 = shl i64 1, %sh_prom
  %and196 = and i64 %125, %shl195
  %tobool197 = icmp ne i64 %and196, 0
  br i1 %tobool197, label %land.lhs.true.198, label %if.end.229

land.lhs.true.198:                                ; preds = %land.lhs.true.191
  %128 = load i32, i32* %optflags.addr, align 4
  %and199 = and i32 %128, 1
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %if.then.211, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %land.lhs.true.198
  %129 = load %struct.dent*, %struct.dent** %dent, align 8
  %mask203 = getelementptr inbounds %struct.dent, %struct.dent* %129, i32 0, i32 2
  %arrayidx204 = getelementptr inbounds [1 x i64], [1 x i64]* %mask203, i32 0, i64 0
  %130 = load i64, i64* %arrayidx204, align 8
  %131 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %flagbit205 = getelementptr inbounds %struct.flagent, %struct.flagent* %131, i32 0, i32 2
  %132 = load i16, i16* %flagbit205, align 2
  %conv206 = sext i16 %132 to i32
  %sh_prom207 = zext i32 %conv206 to i64
  %shl208 = shl i64 1, %sh_prom207
  %and209 = and i64 %130, %shl208
  %tobool210 = icmp ne i64 %and209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.229

if.then.211:                                      ; preds = %lor.lhs.false.202, %land.lhs.true.198
  %133 = load i32, i32* @numhits, align 4
  %cmp212 = icmp slt i32 %133, 10
  br i1 %cmp212, label %if.then.214, label %if.end.221

if.then.214:                                      ; preds = %if.then.211
  %134 = load %struct.dent*, %struct.dent** %dent, align 8
  %135 = load i32, i32* @numhits, align 4
  %idxprom215 = sext i32 %135 to i64
  %arrayidx216 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom215
  %dictent = getelementptr inbounds %struct.success, %struct.success* %arrayidx216, i32 0, i32 0
  store %struct.dent* %134, %struct.dent** %dictent, align 8
  %136 = load %struct.flagent*, %struct.flagent** %pfxent.addr, align 8
  %137 = load i32, i32* @numhits, align 4
  %idxprom217 = sext i32 %137 to i64
  %arrayidx218 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom217
  %prefix = getelementptr inbounds %struct.success, %struct.success* %arrayidx218, i32 0, i32 1
  store %struct.flagent* %136, %struct.flagent** %prefix, align 8
  %138 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %139 = load i32, i32* @numhits, align 4
  %idxprom219 = sext i32 %139 to i64
  %arrayidx220 = getelementptr inbounds [10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 %idxprom219
  %suffix = getelementptr inbounds %struct.success, %struct.success* %arrayidx220, i32 0, i32 2
  store %struct.flagent* %138, %struct.flagent** %suffix, align 8
  %140 = load i32, i32* @numhits, align 4
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* @numhits, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.214, %if.then.211
  %141 = load i32, i32* %allhits.addr, align 4
  %tobool222 = icmp ne i32 %141, 0
  br i1 %tobool222, label %if.end.228, label %if.then.223

if.then.223:                                      ; preds = %if.end.221
  %142 = load i8*, i8** %word.addr, align 8
  %143 = load i32, i32* %len.addr, align 4
  %call224 = call i32 @cap_ok(i8* %142, %struct.success* getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i32 0, i64 0), i32 %143)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.then.223
  br label %for.end.236

if.end.227:                                       ; preds = %if.then.223
  store i32 0, i32* @numhits, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.221
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %lor.lhs.false.202, %land.lhs.true.191, %if.else.186
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.end.185
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.97
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %for.end
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %land.lhs.true.37, %lor.lhs.false, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.233, %if.then.24, %if.then.14, %if.then
  %144 = load %struct.flagent*, %struct.flagent** %flent, align 8
  %incdec.ptr234 = getelementptr inbounds %struct.flagent, %struct.flagent* %144, i32 1
  store %struct.flagent* %incdec.ptr234, %struct.flagent** %flent, align 8
  %145 = load i32, i32* %entcount, align 4
  %dec235 = add nsw i32 %145, -1
  store i32 %dec235, i32* %entcount, align 4
  br label %for.cond

for.end.236:                                      ; preds = %if.then.226, %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @forcelc(i8* %dst, i32 %len) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %dst.addr, align 8
  %2 = load i8, i8* %1, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [228 x i8], [228 x i8]* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %4 = load i8*, i8** %dst.addr, align 8
  store i8 %3, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %dst.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i8* @ichartosstr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
