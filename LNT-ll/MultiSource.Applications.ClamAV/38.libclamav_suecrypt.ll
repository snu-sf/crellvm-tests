; ModuleID = './MultiSource.Applications.ClamAV/38.libclamav_suecrypt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"in suecrypt\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SUE: Can't read %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"SUE: Key seems not (entirely) encrypted\0A\09possible key: 0%08x\0A\09crypted key:  0%08x\0A\09plain key:    0%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SUE: let's roll the dice...\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SUE: Decrypting with 0%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SUE: Hunk #%d RVA:%x size:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"SUE: Hunk out of file or cross sections\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SUE: found OEP: @%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @sudecrypt(i32 %desc, i64 %fsize, %struct.cli_exe_section* %sections, i16 zeroext %sects, i8* %buff, i32 %bkey, i32 %pkey, i32 %e_lfanew) #0 {
entry:
  %retval = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %fsize.addr = alloca i64, align 8
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sects.addr = alloca i16, align 2
  %buff.addr = alloca i8*, align 8
  %bkey.addr = alloca i32, align 4
  %pkey.addr = alloca i32, align 4
  %e_lfanew.addr = alloca i32, align 4
  %file = alloca i8*, align 8
  %hunk = alloca i8*, align 8
  %va = alloca i32, align 4
  %sz = alloca i32, align 4
  %key = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i64 %fsize, i64* %fsize.addr, align 8
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i16 %sects, i16* %sects.addr, align 2
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %bkey, i32* %bkey.addr, align 4
  store i32 %pkey, i32* %pkey.addr, align 4
  store i32 %e_lfanew, i32* %e_lfanew.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %0 = load i64, i64* %fsize.addr, align 8
  %call = call i8* @cli_calloc(i64 %0, i64 1)
  store i8* %call, i8** %file, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  %call1 = call i64 @lseek(i32 %1, i64 0, i32 0) #3
  %2 = load i32, i32* %desc.addr, align 4
  %3 = load i8*, i8** %file, align 8
  %4 = load i64, i64* %fsize.addr, align 8
  %conv = trunc i64 %4 to i32
  %call2 = call i32 @cli_readn(i32 %2, i8* %3, i32 %conv)
  %conv3 = sext i32 %call2 to i64
  %5 = load i64, i64* %fsize.addr, align 8
  %cmp = icmp ne i64 %conv3, %5
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load i64, i64* %fsize.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i64 %6)
  %7 = load i8*, i8** %file, align 8
  call void @free(i8* %7) #3
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i32, i32* %bkey.addr, align 4
  %shr = lshr i32 %8, 16
  %9 = load i32, i32* %bkey.addr, align 4
  %shl = shl i32 %9, 16
  %or = or i32 %shr, %shl
  store i32 %or, i32* %va, align 4
  %10 = load i8*, i8** %buff.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 62
  %11 = bitcast i8* %add.ptr to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %sz, align 4
  %13 = load i32, i32* %va, align 4
  %xor = xor i32 %12, %13
  store i32 %xor, i32* %key, align 4
  %14 = load i32, i32* %key, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %if.end.6
  %15 = load i32, i32* %key, align 4
  %cmp8 = icmp eq i32 %15, 520
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %key, align 4
  %cmp11 = icmp eq i32 %16, 956
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %if.end.6
  %17 = load i8*, i8** %buff.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %17, i64 70
  %18 = bitcast i8* %add.ptr14 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %sz, align 4
  %20 = load i32, i32* %va, align 4
  %xor15 = xor i32 %19, %20
  store i32 %xor15, i32* %key, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %lor.lhs.false.10
  %21 = load i32, i32* %key, align 4
  %22 = load i32, i32* %pkey.addr, align 4
  %cmp17 = icmp ne i32 %21, %22
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %if.end.16
  %23 = load i32, i32* %pkey.addr, align 4
  %24 = load i32, i32* %key, align 4
  %25 = load i32, i32* %sz, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i32 0, i32 0), i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %va, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %26 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %26, 4
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %va, align 4
  %shl22 = shl i32 %27, 8
  %or23 = or i32 %shl22, 255
  store i32 %or23, i32* %va, align 4
  %28 = load i32, i32* %key, align 4
  %29 = load i32, i32* %va, align 4
  %and = and i32 %28, %29
  %30 = load i32, i32* %sz, align 4
  %31 = load i32, i32* %va, align 4
  %neg = xor i32 %31, -1
  %and24 = and i32 %30, %neg
  %or25 = or i32 %and, %and24
  %32 = load i32, i32* %pkey.addr, align 4
  %cmp26 = icmp eq i32 %or25, %32
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %33 = load i32, i32* %pkey.addr, align 4
  store i32 %33, i32* %key, align 4
  br label %for.end

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %35 = load i32, i32* %i, align 4
  %cmp30 = icmp eq i32 %35, 4
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.16
  %36 = load i32, i32* %key, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 %36)
  store i32 0, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.34, %if.end.138
  %37 = load i8*, i8** %buff.addr, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %37, i64 -88
  %38 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %38, 8
  %idx.ext = sext i32 %mul to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr35, i64 %idx.ext
  %39 = load i8*, i8** %buff.addr, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 -116
  %cmp38 = icmp uge i8* %add.ptr36, %add.ptr37
  br i1 %cmp38, label %land.lhs.true, label %if.then.58

land.lhs.true:                                    ; preds = %while.body
  %40 = load i8*, i8** %buff.addr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %40, i64 -88
  %41 = load i32, i32* %i, align 4
  %mul41 = mul nsw i32 %41, 8
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr40, i64 %idx.ext42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 8
  %42 = load i8*, i8** %buff.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %42, i64 -116
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 190
  %cmp47 = icmp ule i8* %add.ptr44, %add.ptr46
  br i1 %cmp47, label %land.lhs.true.49, label %if.then.58

land.lhs.true.49:                                 ; preds = %land.lhs.true
  %43 = load i8*, i8** %buff.addr, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %43, i64 -88
  %44 = load i32, i32* %i, align 4
  %mul51 = mul nsw i32 %44, 8
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr50, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 8
  %45 = load i8*, i8** %buff.addr, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %45, i64 -116
  %cmp56 = icmp ugt i8* %add.ptr54, %add.ptr55
  br i1 %cmp56, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.49, %land.lhs.true, %while.body
  %46 = load i8*, i8** %file, align 8
  call void @free(i8* %46) #3
  store i8* null, i8** %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.49
  %47 = load i8*, i8** %buff.addr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %47, i64 -88
  %48 = load i32, i32* %i, align 4
  %mul61 = mul nsw i32 %48, 8
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr60, i64 %idx.ext62
  %49 = bitcast i8* %add.ptr63 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %bkey.addr, align 4
  %xor64 = xor i32 %50, %51
  store i32 %xor64, i32* %va, align 4
  %52 = load i8*, i8** %buff.addr, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %52, i64 -88
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr65, i64 4
  %53 = load i32, i32* %i, align 4
  %mul67 = mul nsw i32 %53, 8
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.ext68
  %54 = bitcast i8* %add.ptr69 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %bkey.addr, align 4
  %xor70 = xor i32 %55, %56
  store i32 %xor70, i32* %sz, align 4
  %57 = load i32, i32* %va, align 4
  %tobool71 = icmp ne i32 %57, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.59
  br label %while.end.140

if.end.73:                                        ; preds = %if.end.59
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %va, align 4
  %60 = load i32, i32* %sz, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %j, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.131, %if.end.73
  %61 = load i32, i32* %j, align 4
  %62 = load i16, i16* %sects.addr, align 2
  %conv75 = zext i16 %62 to i32
  %cmp76 = icmp slt i32 %61, %conv75
  br i1 %cmp76, label %for.body.78, label %for.end.133

for.body.78:                                      ; preds = %for.cond.74
  %63 = load i32, i32* %j, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %64, i64 %idxprom
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 3
  %65 = load i32, i32* %rsz, align 4
  %cmp79 = icmp ugt i32 %65, 0
  br i1 %cmp79, label %land.lhs.true.81, label %if.then.112

land.lhs.true.81:                                 ; preds = %for.body.78
  %66 = load i32, i32* %sz, align 4
  %cmp82 = icmp ugt i32 %66, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.then.112

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %67 = load i32, i32* %sz, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %68 to i64
  %69 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %69, i64 %idxprom85
  %rsz87 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx86, i32 0, i32 3
  %70 = load i32, i32* %rsz87, align 4
  %cmp88 = icmp ule i32 %67, %70
  br i1 %cmp88, label %land.lhs.true.90, label %if.then.112

land.lhs.true.90:                                 ; preds = %land.lhs.true.84
  %71 = load i32, i32* %va, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %73, i64 %idxprom91
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx92, i32 0, i32 0
  %74 = load i32, i32* %rva, align 4
  %cmp93 = icmp uge i32 %71, %74
  br i1 %cmp93, label %land.lhs.true.95, label %if.then.112

land.lhs.true.95:                                 ; preds = %land.lhs.true.90
  %75 = load i32, i32* %va, align 4
  %76 = load i32, i32* %sz, align 4
  %add = add i32 %75, %76
  %77 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %77 to i64
  %78 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %78, i64 %idxprom96
  %rva98 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx97, i32 0, i32 0
  %79 = load i32, i32* %rva98, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %80 to i64
  %81 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %81, i64 %idxprom99
  %rsz101 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx100, i32 0, i32 3
  %82 = load i32, i32* %rsz101, align 4
  %add102 = add i32 %79, %82
  %cmp103 = icmp ule i32 %add, %add102
  br i1 %cmp103, label %land.lhs.true.105, label %if.then.112

land.lhs.true.105:                                ; preds = %land.lhs.true.95
  %83 = load i32, i32* %va, align 4
  %84 = load i32, i32* %sz, align 4
  %add106 = add i32 %83, %84
  %85 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %85 to i64
  %86 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %86, i64 %idxprom107
  %rva109 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx108, i32 0, i32 0
  %87 = load i32, i32* %rva109, align 4
  %cmp110 = icmp ugt i32 %add106, %87
  br i1 %cmp110, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.105, %land.lhs.true.95, %land.lhs.true.90, %land.lhs.true.84, %land.lhs.true.81, %for.body.78
  br label %for.inc.131

if.end.113:                                       ; preds = %land.lhs.true.105
  %88 = load i8*, i8** %file, align 8
  %89 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %89 to i64
  %90 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %90, i64 %idxprom114
  %rva116 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx115, i32 0, i32 0
  %91 = load i32, i32* %rva116, align 4
  %idx.ext117 = zext i32 %91 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %88, i64 %idx.ext117
  %92 = load i32, i32* %va, align 4
  %idx.ext119 = zext i32 %92 to i64
  %idx.neg = sub i64 0, %idx.ext119
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr118, i64 %idx.neg
  %93 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %93 to i64
  %94 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %94, i64 %idxprom121
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx122, i32 0, i32 2
  %95 = load i32, i32* %raw, align 4
  %idx.ext123 = zext i32 %95 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr120, i64 %idx.ext123
  store i8* %add.ptr124, i8** %hunk, align 8
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.128, %if.end.113
  %96 = load i32, i32* %sz, align 4
  %cmp126 = icmp uge i32 %96, 4
  br i1 %cmp126, label %while.body.128, label %while.end

while.body.128:                                   ; preds = %while.cond.125
  %97 = load i8*, i8** %hunk, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %key, align 4
  %xor129 = xor i32 %99, %100
  %101 = load i8*, i8** %hunk, align 8
  %102 = bitcast i8* %101 to i32*
  store i32 %xor129, i32* %102, align 4
  %103 = load i8*, i8** %hunk, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %103, i64 4
  store i8* %add.ptr130, i8** %hunk, align 8
  %104 = load i32, i32* %sz, align 4
  %sub = sub i32 %104, 4
  store i32 %sub, i32* %sz, align 4
  br label %while.cond.125

while.end:                                        ; preds = %while.cond.125
  br label %for.end.133

for.inc.131:                                      ; preds = %if.then.112
  %105 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %105, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.74

for.end.133:                                      ; preds = %while.end, %for.cond.74
  %106 = load i32, i32* %j, align 4
  %107 = load i16, i16* %sects.addr, align 2
  %conv134 = zext i16 %107 to i32
  %cmp135 = icmp eq i32 %106, %conv134
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.end.133
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  %108 = load i8*, i8** %file, align 8
  call void @free(i8* %108) #3
  store i8* null, i8** %retval
  br label %return

if.end.138:                                       ; preds = %for.end.133
  %109 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %109, 1
  store i32 %inc139, i32* %i, align 4
  br label %while.body

while.end.140:                                    ; preds = %if.then.72
  %110 = load i8*, i8** %buff.addr, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %110, i64 -116
  %111 = bitcast i8* %add.ptr141 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %bkey.addr, align 4
  %xor142 = xor i32 %112, %113
  store i32 %xor142, i32* %va, align 4
  %114 = load i32, i32* %va, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %114)
  %115 = load i8*, i8** %file, align 8
  %116 = load i32, i32* %e_lfanew.addr, align 4
  %idx.ext143 = zext i32 %116 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %115, i64 %idx.ext143
  store i8* %add.ptr144, i8** %hunk, align 8
  %117 = load i16, i16* %sects.addr, align 2
  %conv145 = zext i16 %117 to i32
  %and146 = and i32 %conv145, 255
  %conv147 = trunc i32 %and146 to i8
  %118 = load i8*, i8** %hunk, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %118, i64 6
  store i8 %conv147, i8* %arrayidx148, align 1
  %119 = load i16, i16* %sects.addr, align 2
  %conv149 = zext i16 %119 to i32
  %shr150 = ashr i32 %conv149, 8
  %conv151 = trunc i32 %shr150 to i8
  %120 = load i8*, i8** %hunk, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %120, i64 7
  store i8 %conv151, i8* %arrayidx152, align 1
  %121 = load i32, i32* %va, align 4
  %122 = load i8*, i8** %hunk, align 8
  %add.ptr153 = getelementptr inbounds i8, i8* %122, i64 40
  %123 = bitcast i8* %add.ptr153 to i32*
  store i32 %121, i32* %123, align 4
  %124 = load i8*, i8** %hunk, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %124, i64 20
  %125 = bitcast i8* %add.ptr154 to i32*
  %126 = load i32, i32* %125, align 4
  %and155 = and i32 %126, 65535
  %add156 = add nsw i32 24, %and155
  %127 = load i8*, i8** %hunk, align 8
  %idx.ext157 = sext i32 %add156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %127, i64 %idx.ext157
  store i8* %add.ptr158, i8** %hunk, align 8
  %128 = load i8*, i8** %hunk, align 8
  %129 = load i16, i16* %sects.addr, align 2
  %conv159 = zext i16 %129 to i32
  %mul160 = mul nsw i32 40, %conv159
  %idx.ext161 = sext i32 %mul160 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %128, i64 %idx.ext161
  call void @llvm.memset.p0i8.i64(i8* %add.ptr162, i8 0, i64 40, i32 1, i1 false)
  %130 = load i8*, i8** %file, align 8
  store i8* %130, i8** %retval
  br label %return

return:                                           ; preds = %while.end.140, %if.then.137, %if.then.58, %if.then.5, %if.then
  %131 = load i8*, i8** %retval
  ret i8* %131
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
