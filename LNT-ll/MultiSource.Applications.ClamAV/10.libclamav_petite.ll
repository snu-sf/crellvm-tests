; ModuleID = './MultiSource.Applications.ClamAV/10.libclamav_petite.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Petite: Old EP: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Petite: In troubles while attempting to decrypt old EP, using bogus %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Petite: Sections dump:\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Petite: Rebuilding failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Petite: maximum number of sections exceeded, giving up.\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Petite: Found petite code in sect%d(%x). Let's strip it.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Petite: Encrypted EP: %x | Array of imports: %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @petite_inflate2x_1to9(i8* %buf, i32 %minrva, i32 %bufsz, %struct.cli_exe_section* %sections, i32 %sectcount, i32 %Imagebase, i32 %pep, i32 %desc, i32 %version, i32 %ResRva, i32 %ResSize) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %minrva.addr = alloca i32, align 4
  %bufsz.addr = alloca i32, align 4
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sectcount.addr = alloca i32, align 4
  %Imagebase.addr = alloca i32, align 4
  %pep.addr = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  %ResRva.addr = alloca i32, align 4
  %ResSize.addr = alloca i32, align 4
  %adjbuf = alloca i8*, align 8
  %packed = alloca i8*, align 8
  %thisrva = alloca i32, align 4
  %bottom = alloca i32, align 4
  %enc_ep = alloca i32, align 4
  %irva = alloca i32, align 4
  %workdone = alloca i32, align 4
  %grown = alloca i32, align 4
  %skew = alloca i32, align 4
  %j = alloca i32, align 4
  %oob = alloca i32, align 4
  %mangled = alloca i32, align 4
  %check4resources = alloca i32, align 4
  %usects = alloca %struct.cli_exe_section*, align 8
  %tmpsct = alloca i8*, align 8
  %ssrc = alloca i8*, align 8
  %ddst = alloca i8*, align 8
  %size = alloca i32, align 4
  %srva = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %oldback = alloca i32, align 4
  %backsize = alloca i32, align 4
  %addsize = alloca i32, align 4
  %t = alloca i32, align 4
  %upd = alloca i32, align 4
  %trva = alloca i32, align 4
  %trsz = alloca i32, align 4
  %tvsz = alloca i32, align 4
  %virtaddr = alloca i32, align 4
  %tmpep = alloca i32, align 4
  %rndm = alloca i32, align 4
  %dummy = alloca i32, align 4
  %thunk = alloca i8*, align 8
  %imports = alloca i8*, align 8
  %api = alloca i32, align 4
  %check1 = alloca i32, align 4
  %check2 = alloca i32, align 4
  %mydl = alloca i8, align 1
  %goback = alloca i8, align 1
  %q = alloca i32, align 4
  %strippetite = alloca i32, align 4
  %reloc = alloca i32, align 4
  %test1 = alloca i32, align 4
  %test2 = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %minrva, i32* %minrva.addr, align 4
  store i32 %bufsz, i32* %bufsz.addr, align 4
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i32 %sectcount, i32* %sectcount.addr, align 4
  store i32 %Imagebase, i32* %Imagebase.addr, align 4
  store i32 %pep, i32* %pep.addr, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i32 %version, i32* %version.addr, align 4
  store i32 %ResRva, i32* %ResRva.addr, align 4
  store i32 %ResSize, i32* %ResSize.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i32, i32* %minrva.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.neg
  store i8* %add.ptr, i8** %adjbuf, align 8
  store i8* null, i8** %packed, align 8
  store i32 0, i32* %thisrva, align 4
  store i32 0, i32* %bottom, align 4
  store i32 0, i32* %enc_ep, align 4
  store i32 0, i32* %irva, align 4
  store i32 0, i32* %workdone, align 4
  store i32 853, i32* %grown, align 4
  store i32 53, i32* %skew, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %mangled, align 4
  store i32 0, i32* %check4resources, align 4
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %usects, align 8
  store i8* null, i8** %tmpsct, align 8
  %2 = load i32, i32* %version.addr, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %adjbuf, align 8
  %4 = load i32, i32* %sectcount.addr, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %5 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %5, i64 %idxprom
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %rva, align 4
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %3, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 440
  store i8* %add.ptr3, i8** %packed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %version.addr, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %8 = load i8*, i8** %adjbuf, align 8
  %9 = load i32, i32* %sectcount.addr, align 4
  %sub6 = sub i32 %9, 1
  %idxprom7 = zext i32 %sub6 to i64
  %10 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %10, i64 %idxprom7
  %rva9 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx8, i32 0, i32 0
  %11 = load i32, i32* %rva9, align 4
  %idx.ext10 = zext i32 %11 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %8, i64 %idx.ext10
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 376
  store i8* %add.ptr12, i8** %packed, align 8
  store i32 803, i32* %grown, align 4
  store i32 52, i32* %skew, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.5, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.13, %if.then.492, %if.end.1084
  %12 = load i32, i32* %bufsz.addr, align 4
  %cmp14 = icmp ugt i32 %12, 0
  br i1 %cmp14, label %land.lhs.true, label %if.then.26

land.lhs.true:                                    ; preds = %while.body
  %13 = load i32, i32* %bufsz.addr, align 4
  %cmp15 = icmp ule i32 4, %13
  br i1 %cmp15, label %land.lhs.true.16, label %if.then.26

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %14 = load i8*, i8** %packed, align 8
  %15 = load i8*, i8** %buf.addr, align 8
  %cmp17 = icmp uge i8* %14, %15
  br i1 %cmp17, label %land.lhs.true.18, label %if.then.26

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %16 = load i8*, i8** %packed, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %16, i64 4
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i32, i32* %bufsz.addr, align 4
  %idx.ext20 = zext i32 %18 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %17, i64 %idx.ext20
  %cmp22 = icmp ule i8* %add.ptr19, %add.ptr21
  br i1 %cmp22, label %land.lhs.true.23, label %if.then.26

land.lhs.true.23:                                 ; preds = %land.lhs.true.18
  %19 = load i8*, i8** %packed, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %19, i64 4
  %20 = load i8*, i8** %buf.addr, align 8
  %cmp25 = icmp ugt i8* %add.ptr24, %20
  br i1 %cmp25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true, %while.body
  %21 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %tobool = icmp ne %struct.cli_exe_section* %21, null
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.26
  %22 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %23 = bitcast %struct.cli_exe_section* %22 to i8*
  call void @free(i8* %23) #3
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.26
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true.23
  %24 = load i8*, i8** %packed, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %srva, align 4
  %27 = load i32, i32* %srva, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %if.end.315, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* %upd, align 4
  %28 = load i32, i32* %j, align 4
  %cmp32 = icmp sle i32 %28, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.31
  br label %while.cond.35

while.cond.35:                                    ; preds = %for.end, %if.end.34
  %29 = load i32, i32* %upd, align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %while.cond.35
  store i32 0, i32* %upd, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.37
  %30 = load i32, i32* %t, align 4
  %31 = load i32, i32* %j, align 4
  %sub38 = sub nsw i32 %31, 1
  %cmp39 = icmp slt i32 %30, %sub38
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %t, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx41 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %33, i64 %idxprom40
  %rva42 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx41, i32 0, i32 0
  %34 = load i32, i32* %rva42, align 4
  %35 = load i32, i32* %t, align 4
  %add = add nsw i32 %35, 1
  %idxprom43 = sext i32 %add to i64
  %36 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx44 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %36, i64 %idxprom43
  %rva45 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx44, i32 0, i32 0
  %37 = load i32, i32* %rva45, align 4
  %cmp46 = icmp ule i32 %34, %37
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body
  br label %for.inc

if.end.48:                                        ; preds = %for.body
  %38 = load i32, i32* %t, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx50 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %39, i64 %idxprom49
  %rva51 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx50, i32 0, i32 0
  %40 = load i32, i32* %rva51, align 4
  store i32 %40, i32* %trva, align 4
  %41 = load i32, i32* %t, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx53 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %42, i64 %idxprom52
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx53, i32 0, i32 3
  %43 = load i32, i32* %rsz, align 4
  store i32 %43, i32* %trsz, align 4
  %44 = load i32, i32* %t, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx55 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %45, i64 %idxprom54
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx55, i32 0, i32 1
  %46 = load i32, i32* %vsz, align 4
  store i32 %46, i32* %tvsz, align 4
  %47 = load i32, i32* %t, align 4
  %add56 = add nsw i32 %47, 1
  %idxprom57 = sext i32 %add56 to i64
  %48 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx58 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %48, i64 %idxprom57
  %rva59 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx58, i32 0, i32 0
  %49 = load i32, i32* %rva59, align 4
  %50 = load i32, i32* %t, align 4
  %idxprom60 = sext i32 %50 to i64
  %51 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx61 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %51, i64 %idxprom60
  %rva62 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx61, i32 0, i32 0
  store i32 %49, i32* %rva62, align 4
  %52 = load i32, i32* %t, align 4
  %add63 = add nsw i32 %52, 1
  %idxprom64 = sext i32 %add63 to i64
  %53 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx65 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %53, i64 %idxprom64
  %rsz66 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx65, i32 0, i32 3
  %54 = load i32, i32* %rsz66, align 4
  %55 = load i32, i32* %t, align 4
  %idxprom67 = sext i32 %55 to i64
  %56 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx68 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %56, i64 %idxprom67
  %rsz69 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx68, i32 0, i32 3
  store i32 %54, i32* %rsz69, align 4
  %57 = load i32, i32* %t, align 4
  %add70 = add nsw i32 %57, 1
  %idxprom71 = sext i32 %add70 to i64
  %58 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx72 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %58, i64 %idxprom71
  %vsz73 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx72, i32 0, i32 1
  %59 = load i32, i32* %vsz73, align 4
  %60 = load i32, i32* %t, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx75 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %61, i64 %idxprom74
  %vsz76 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx75, i32 0, i32 1
  store i32 %59, i32* %vsz76, align 4
  %62 = load i32, i32* %trva, align 4
  %63 = load i32, i32* %t, align 4
  %add77 = add nsw i32 %63, 1
  %idxprom78 = sext i32 %add77 to i64
  %64 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx79 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %64, i64 %idxprom78
  %rva80 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx79, i32 0, i32 0
  store i32 %62, i32* %rva80, align 4
  %65 = load i32, i32* %trsz, align 4
  %66 = load i32, i32* %t, align 4
  %add81 = add nsw i32 %66, 1
  %idxprom82 = sext i32 %add81 to i64
  %67 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx83 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %67, i64 %idxprom82
  %rsz84 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx83, i32 0, i32 3
  store i32 %65, i32* %rsz84, align 4
  %68 = load i32, i32* %tvsz, align 4
  %69 = load i32, i32* %t, align 4
  %add85 = add nsw i32 %69, 1
  %idxprom86 = sext i32 %add85 to i64
  %70 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx87 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %70, i64 %idxprom86
  %vsz88 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx87, i32 0, i32 1
  store i32 %68, i32* %vsz88, align 4
  store i32 1, i32* %upd, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.48, %if.then.47
  %71 = load i32, i32* %t, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %t, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.35

while.end:                                        ; preds = %while.cond.35
  store i32 0, i32* %t, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.118, %while.end
  %72 = load i32, i32* %t, align 4
  %73 = load i32, i32* %j, align 4
  %sub90 = sub nsw i32 %73, 1
  %cmp91 = icmp slt i32 %72, %sub90
  br i1 %cmp91, label %for.body.92, label %for.end.120

for.body.92:                                      ; preds = %for.cond.89
  %74 = load i32, i32* %t, align 4
  %idxprom93 = sext i32 %74 to i64
  %75 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx94 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %75, i64 %idxprom93
  %vsz95 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx94, i32 0, i32 1
  %76 = load i32, i32* %vsz95, align 4
  %77 = load i32, i32* %t, align 4
  %add96 = add nsw i32 %77, 1
  %idxprom97 = sext i32 %add96 to i64
  %78 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx98 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %78, i64 %idxprom97
  %rva99 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx98, i32 0, i32 0
  %79 = load i32, i32* %rva99, align 4
  %80 = load i32, i32* %t, align 4
  %idxprom100 = sext i32 %80 to i64
  %81 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx101 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %81, i64 %idxprom100
  %rva102 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx101, i32 0, i32 0
  %82 = load i32, i32* %rva102, align 4
  %sub103 = sub i32 %79, %82
  %cmp104 = icmp ne i32 %76, %sub103
  br i1 %cmp104, label %if.then.105, label %if.end.117

if.then.105:                                      ; preds = %for.body.92
  %83 = load i32, i32* %t, align 4
  %add106 = add nsw i32 %83, 1
  %idxprom107 = sext i32 %add106 to i64
  %84 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx108 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %84, i64 %idxprom107
  %rva109 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx108, i32 0, i32 0
  %85 = load i32, i32* %rva109, align 4
  %86 = load i32, i32* %t, align 4
  %idxprom110 = sext i32 %86 to i64
  %87 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx111 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %87, i64 %idxprom110
  %rva112 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx111, i32 0, i32 0
  %88 = load i32, i32* %rva112, align 4
  %sub113 = sub i32 %85, %88
  %89 = load i32, i32* %t, align 4
  %idxprom114 = sext i32 %89 to i64
  %90 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx115 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %90, i64 %idxprom114
  %vsz116 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx115, i32 0, i32 1
  store i32 %sub113, i32* %vsz116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.105, %for.body.92
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %91 = load i32, i32* %t, align 4
  %inc119 = add nsw i32 %91, 1
  store i32 %inc119, i32* %t, align 4
  br label %for.cond.89

for.end.120:                                      ; preds = %for.cond.89
  %92 = load i32, i32* %enc_ep, align 4
  %tobool121 = icmp ne i32 %92, 0
  br i1 %tobool121, label %if.then.122, label %if.end.210

if.then.122:                                      ; preds = %for.end.120
  %93 = load i32, i32* %pep.addr, align 4
  %add123 = add i32 %93, 5
  %94 = load i32, i32* %Imagebase.addr, align 4
  %add124 = add i32 %add123, %94
  store i32 %add124, i32* %virtaddr, align 4
  store i32 0, i32* %rndm, align 4
  store i32 1, i32* %dummy, align 4
  %95 = load i8*, i8** %adjbuf, align 8
  %96 = load i32, i32* %irva, align 4
  %idx.ext125 = zext i32 %96 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %95, i64 %idx.ext125
  store i8* %add.ptr126, i8** %thunk, align 8
  %97 = load i32, i32* %version.addr, align 4
  %cmp127 = icmp eq i32 %97, 2
  br i1 %cmp127, label %if.then.128, label %if.else.200

if.then.128:                                      ; preds = %if.then.122
  br label %while.cond.129

while.cond.129:                                   ; preds = %while.end.198, %if.then.128
  %98 = load i32, i32* %dummy, align 4
  %tobool130 = icmp ne i32 %98, 0
  br i1 %tobool130, label %land.rhs, label %land.end.144

land.rhs:                                         ; preds = %while.cond.129
  %99 = load i32, i32* %bufsz.addr, align 4
  %cmp131 = icmp ugt i32 %99, 0
  br i1 %cmp131, label %land.lhs.true.132, label %land.end

land.lhs.true.132:                                ; preds = %land.rhs
  %100 = load i32, i32* %bufsz.addr, align 4
  %cmp133 = icmp ule i32 4, %100
  br i1 %cmp133, label %land.lhs.true.134, label %land.end

land.lhs.true.134:                                ; preds = %land.lhs.true.132
  %101 = load i8*, i8** %thunk, align 8
  %102 = load i8*, i8** %buf.addr, align 8
  %cmp135 = icmp uge i8* %101, %102
  br i1 %cmp135, label %land.lhs.true.136, label %land.end

land.lhs.true.136:                                ; preds = %land.lhs.true.134
  %103 = load i8*, i8** %thunk, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %103, i64 4
  %104 = load i8*, i8** %buf.addr, align 8
  %105 = load i32, i32* %bufsz.addr, align 4
  %idx.ext138 = zext i32 %105 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %104, i64 %idx.ext138
  %cmp140 = icmp ule i8* %add.ptr137, %add.ptr139
  br i1 %cmp140, label %land.rhs.141, label %land.end

land.rhs.141:                                     ; preds = %land.lhs.true.136
  %106 = load i8*, i8** %thunk, align 8
  %add.ptr142 = getelementptr inbounds i8, i8* %106, i64 4
  %107 = load i8*, i8** %buf.addr, align 8
  %cmp143 = icmp ugt i8* %add.ptr142, %107
  br label %land.end

land.end:                                         ; preds = %land.rhs.141, %land.lhs.true.136, %land.lhs.true.134, %land.lhs.true.132, %land.rhs
  %108 = phi i1 [ false, %land.lhs.true.136 ], [ false, %land.lhs.true.134 ], [ false, %land.lhs.true.132 ], [ false, %land.rhs ], [ %cmp143, %land.rhs.141 ]
  br label %land.end.144

land.end.144:                                     ; preds = %land.end, %while.cond.129
  %109 = phi i1 [ false, %while.cond.129 ], [ %108, %land.end ]
  br i1 %109, label %while.body.145, label %while.end.199

while.body.145:                                   ; preds = %land.end.144
  %110 = load i8*, i8** %thunk, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %tobool146 = icmp ne i32 %112, 0
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %while.body.145
  store i32 1, i32* %workdone, align 4
  br label %while.end.199

if.end.148:                                       ; preds = %while.body.145
  %113 = load i8*, i8** %adjbuf, align 8
  %114 = load i8*, i8** %thunk, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %idx.ext149 = sext i32 %116 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %113, i64 %idx.ext149
  store i8* %add.ptr150, i8** %imports, align 8
  %117 = load i8*, i8** %thunk, align 8
  %add.ptr151 = getelementptr inbounds i8, i8* %117, i64 4
  store i8* %add.ptr151, i8** %thunk, align 8
  store i32 0, i32* %dummy, align 4
  br label %while.cond.152

while.cond.152:                                   ; preds = %if.end.193, %if.end.148
  %118 = load i32, i32* %bufsz.addr, align 4
  %cmp153 = icmp ugt i32 %118, 0
  br i1 %cmp153, label %land.lhs.true.154, label %land.end.166

land.lhs.true.154:                                ; preds = %while.cond.152
  %119 = load i32, i32* %bufsz.addr, align 4
  %cmp155 = icmp ule i32 4, %119
  br i1 %cmp155, label %land.lhs.true.156, label %land.end.166

land.lhs.true.156:                                ; preds = %land.lhs.true.154
  %120 = load i8*, i8** %imports, align 8
  %121 = load i8*, i8** %buf.addr, align 8
  %cmp157 = icmp uge i8* %120, %121
  br i1 %cmp157, label %land.lhs.true.158, label %land.end.166

land.lhs.true.158:                                ; preds = %land.lhs.true.156
  %122 = load i8*, i8** %imports, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %122, i64 4
  %123 = load i8*, i8** %buf.addr, align 8
  %124 = load i32, i32* %bufsz.addr, align 4
  %idx.ext160 = zext i32 %124 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %123, i64 %idx.ext160
  %cmp162 = icmp ule i8* %add.ptr159, %add.ptr161
  br i1 %cmp162, label %land.rhs.163, label %land.end.166

land.rhs.163:                                     ; preds = %land.lhs.true.158
  %125 = load i8*, i8** %imports, align 8
  %add.ptr164 = getelementptr inbounds i8, i8* %125, i64 4
  %126 = load i8*, i8** %buf.addr, align 8
  %cmp165 = icmp ugt i8* %add.ptr164, %126
  br label %land.end.166

land.end.166:                                     ; preds = %land.rhs.163, %land.lhs.true.158, %land.lhs.true.156, %land.lhs.true.154, %while.cond.152
  %127 = phi i1 [ false, %land.lhs.true.158 ], [ false, %land.lhs.true.156 ], [ false, %land.lhs.true.154 ], [ false, %while.cond.152 ], [ %cmp165, %land.rhs.163 ]
  br i1 %127, label %while.body.167, label %while.end.198

while.body.167:                                   ; preds = %land.end.166
  store i32 0, i32* %dummy, align 4
  %128 = load i8*, i8** %imports, align 8
  %add.ptr168 = getelementptr inbounds i8, i8* %128, i64 4
  store i8* %add.ptr168, i8** %imports, align 8
  %129 = load i8*, i8** %imports, align 8
  %add.ptr169 = getelementptr inbounds i8, i8* %129, i64 -4
  %130 = bitcast i8* %add.ptr169 to i32*
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %api, align 4
  %tobool170 = icmp ne i32 %131, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %while.body.167
  store i32 1, i32* %dummy, align 4
  br label %while.end.198

if.end.172:                                       ; preds = %while.body.167
  %132 = load i32, i32* %api, align 4
  %133 = load i32, i32* %api, align 4
  %or = or i32 %133, -2147483648
  %cmp173 = icmp ne i32 %132, %or
  br i1 %cmp173, label %land.lhs.true.174, label %if.else

land.lhs.true.174:                                ; preds = %if.end.172
  %134 = load i32, i32* %mangled, align 4
  %tobool175 = icmp ne i32 %134, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.else

land.lhs.true.176:                                ; preds = %land.lhs.true.174
  %135 = load i32, i32* %rndm, align 4
  %dec = add nsw i32 %135, -1
  store i32 %dec, i32* %rndm, align 4
  %cmp177 = icmp slt i32 %dec, 0
  br i1 %cmp177, label %if.then.178, label %if.else

if.then.178:                                      ; preds = %land.lhs.true.176
  %136 = load i32, i32* %virtaddr, align 4
  store i32 %136, i32* %api, align 4
  %137 = load i32, i32* %virtaddr, align 4
  %add179 = add i32 %137, 5
  store i32 %add179, i32* %virtaddr, align 4
  %138 = load i32, i32* %virtaddr, align 4
  %and = and i32 %138, 7
  store i32 %and, i32* %rndm, align 4
  br label %if.end.180

if.else:                                          ; preds = %land.lhs.true.176, %land.lhs.true.174, %if.end.172
  store i32 -1074785481, i32* %api, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.else, %if.then.178
  %139 = load i32, i32* %sectcount.addr, align 4
  %sub181 = sub i32 %139, 1
  %idxprom182 = zext i32 %sub181 to i64
  %140 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %140, i64 %idxprom182
  %rva184 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx183, i32 0, i32 0
  %141 = load i32, i32* %rva184, align 4
  %142 = load i32, i32* %Imagebase.addr, align 4
  %add185 = add i32 %141, %142
  %143 = load i32, i32* %api, align 4
  %cmp186 = icmp ult i32 %add185, %143
  br i1 %cmp186, label %if.then.187, label %if.end.189

if.then.187:                                      ; preds = %if.end.180
  %144 = load i32, i32* %enc_ep, align 4
  %dec188 = add i32 %144, -1
  store i32 %dec188, i32* %enc_ep, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.187, %if.end.180
  %145 = load i32, i32* %api, align 4
  %146 = load i32, i32* %virtaddr, align 4
  %cmp190 = icmp ult i32 %145, %146
  br i1 %cmp190, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.end.189
  %147 = load i32, i32* %enc_ep, align 4
  %dec192 = add i32 %147, -1
  store i32 %dec192, i32* %enc_ep, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.end.189
  %148 = load i32, i32* %enc_ep, align 4
  %and194 = and i32 %148, -8
  %shr = lshr i32 %and194, 3
  %and195 = and i32 %shr, 536870911
  store i32 %and195, i32* %tmpep, align 4
  %149 = load i32, i32* %enc_ep, align 4
  %and196 = and i32 %149, 7
  %shl = shl i32 %and196, 29
  %150 = load i32, i32* %tmpep, align 4
  %or197 = or i32 %shl, %150
  store i32 %or197, i32* %enc_ep, align 4
  br label %while.cond.152

while.end.198:                                    ; preds = %if.then.171, %land.end.166
  br label %while.cond.129

while.end.199:                                    ; preds = %if.then.147, %land.end.144
  br label %if.end.201

if.else.200:                                      ; preds = %if.then.122
  store i32 1, i32* %workdone, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.200, %while.end.199
  %151 = load i32, i32* %pep.addr, align 4
  %add202 = add i32 %151, 5
  %152 = load i32, i32* %enc_ep, align 4
  %add203 = add i32 %add202, %152
  store i32 %add203, i32* %enc_ep, align 4
  %153 = load i32, i32* %workdone, align 4
  %cmp204 = icmp eq i32 %153, 1
  br i1 %cmp204, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %if.end.201
  %154 = load i32, i32* %enc_ep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %154)
  br label %if.end.209

if.else.206:                                      ; preds = %if.end.201
  %155 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx207 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %155, i64 0
  %rva208 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx207, i32 0, i32 0
  %156 = load i32, i32* %rva208, align 4
  store i32 %156, i32* %enc_ep, align 4
  %157 = load i32, i32* %enc_ep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i32 0, i32 0), i32 %157)
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.206, %if.then.205
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %for.end.120
  store i32 0, i32* %t, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.290, %if.end.210
  %158 = load i32, i32* %t, align 4
  %159 = load i32, i32* %j, align 4
  %cmp212 = icmp slt i32 %158, %159
  br i1 %cmp212, label %for.body.213, label %for.end.292

for.body.213:                                     ; preds = %for.cond.211
  %160 = load i32, i32* %t, align 4
  %cmp214 = icmp sgt i32 %160, 0
  br i1 %cmp214, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.213
  %161 = load i32, i32* %t, align 4
  %sub215 = sub nsw i32 %161, 1
  %idxprom216 = sext i32 %sub215 to i64
  %162 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx217 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %162, i64 %idxprom216
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx217, i32 0, i32 2
  %163 = load i32, i32* %raw, align 4
  %164 = load i32, i32* %t, align 4
  %sub218 = sub nsw i32 %164, 1
  %idxprom219 = sext i32 %sub218 to i64
  %165 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx220 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %165, i64 %idxprom219
  %rsz221 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx220, i32 0, i32 3
  %166 = load i32, i32* %rsz221, align 4
  %add222 = add i32 %163, %166
  br label %cond.end

cond.false:                                       ; preds = %for.body.213
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add222, %cond.true ], [ 0, %cond.false ]
  %167 = load i32, i32* %t, align 4
  %idxprom223 = sext i32 %167 to i64
  %168 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx224 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %168, i64 %idxprom223
  %raw225 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx224, i32 0, i32 2
  store i32 %cond, i32* %raw225, align 4
  %169 = load i32, i32* %t, align 4
  %idxprom226 = sext i32 %169 to i64
  %170 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx227 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %170, i64 %idxprom226
  %rsz228 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx227, i32 0, i32 3
  %171 = load i32, i32* %rsz228, align 4
  %cmp229 = icmp ne i32 %171, 0
  br i1 %cmp229, label %land.lhs.true.230, label %if.end.289

land.lhs.true.230:                                ; preds = %cond.end
  %172 = load i32, i32* %bufsz.addr, align 4
  %cmp231 = icmp ugt i32 %172, 0
  br i1 %cmp231, label %land.lhs.true.232, label %if.end.289

land.lhs.true.232:                                ; preds = %land.lhs.true.230
  %173 = load i32, i32* %t, align 4
  %idxprom233 = sext i32 %173 to i64
  %174 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx234 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %174, i64 %idxprom233
  %rsz235 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx234, i32 0, i32 3
  %175 = load i32, i32* %rsz235, align 4
  %cmp236 = icmp ugt i32 %175, 0
  br i1 %cmp236, label %land.lhs.true.237, label %if.end.289

land.lhs.true.237:                                ; preds = %land.lhs.true.232
  %176 = load i32, i32* %t, align 4
  %idxprom238 = sext i32 %176 to i64
  %177 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx239 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %177, i64 %idxprom238
  %rsz240 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx239, i32 0, i32 3
  %178 = load i32, i32* %rsz240, align 4
  %179 = load i32, i32* %bufsz.addr, align 4
  %cmp241 = icmp ule i32 %178, %179
  br i1 %cmp241, label %land.lhs.true.242, label %if.end.289

land.lhs.true.242:                                ; preds = %land.lhs.true.237
  %180 = load i8*, i8** %buf.addr, align 8
  %181 = load i32, i32* %t, align 4
  %idxprom243 = sext i32 %181 to i64
  %182 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx244 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %182, i64 %idxprom243
  %raw245 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx244, i32 0, i32 2
  %183 = load i32, i32* %raw245, align 4
  %idx.ext246 = zext i32 %183 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %180, i64 %idx.ext246
  %184 = load i8*, i8** %buf.addr, align 8
  %cmp248 = icmp uge i8* %add.ptr247, %184
  br i1 %cmp248, label %land.lhs.true.249, label %if.end.289

land.lhs.true.249:                                ; preds = %land.lhs.true.242
  %185 = load i8*, i8** %buf.addr, align 8
  %186 = load i32, i32* %t, align 4
  %idxprom250 = sext i32 %186 to i64
  %187 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx251 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %187, i64 %idxprom250
  %raw252 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx251, i32 0, i32 2
  %188 = load i32, i32* %raw252, align 4
  %idx.ext253 = zext i32 %188 to i64
  %add.ptr254 = getelementptr inbounds i8, i8* %185, i64 %idx.ext253
  %189 = load i32, i32* %t, align 4
  %idxprom255 = sext i32 %189 to i64
  %190 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx256 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %190, i64 %idxprom255
  %rsz257 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx256, i32 0, i32 3
  %191 = load i32, i32* %rsz257, align 4
  %idx.ext258 = zext i32 %191 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %add.ptr254, i64 %idx.ext258
  %192 = load i8*, i8** %buf.addr, align 8
  %193 = load i32, i32* %bufsz.addr, align 4
  %idx.ext260 = zext i32 %193 to i64
  %add.ptr261 = getelementptr inbounds i8, i8* %192, i64 %idx.ext260
  %cmp262 = icmp ule i8* %add.ptr259, %add.ptr261
  br i1 %cmp262, label %land.lhs.true.263, label %if.end.289

land.lhs.true.263:                                ; preds = %land.lhs.true.249
  %194 = load i8*, i8** %buf.addr, align 8
  %195 = load i32, i32* %t, align 4
  %idxprom264 = sext i32 %195 to i64
  %196 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx265 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %196, i64 %idxprom264
  %raw266 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx265, i32 0, i32 2
  %197 = load i32, i32* %raw266, align 4
  %idx.ext267 = zext i32 %197 to i64
  %add.ptr268 = getelementptr inbounds i8, i8* %194, i64 %idx.ext267
  %198 = load i32, i32* %t, align 4
  %idxprom269 = sext i32 %198 to i64
  %199 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx270 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %199, i64 %idxprom269
  %rsz271 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx270, i32 0, i32 3
  %200 = load i32, i32* %rsz271, align 4
  %idx.ext272 = zext i32 %200 to i64
  %add.ptr273 = getelementptr inbounds i8, i8* %add.ptr268, i64 %idx.ext272
  %201 = load i8*, i8** %buf.addr, align 8
  %cmp274 = icmp ugt i8* %add.ptr273, %201
  br i1 %cmp274, label %if.then.275, label %if.end.289

if.then.275:                                      ; preds = %land.lhs.true.263
  %202 = load i8*, i8** %buf.addr, align 8
  %203 = load i32, i32* %t, align 4
  %idxprom276 = sext i32 %203 to i64
  %204 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx277 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %204, i64 %idxprom276
  %raw278 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx277, i32 0, i32 2
  %205 = load i32, i32* %raw278, align 4
  %idx.ext279 = zext i32 %205 to i64
  %add.ptr280 = getelementptr inbounds i8, i8* %202, i64 %idx.ext279
  %206 = load i8*, i8** %adjbuf, align 8
  %207 = load i32, i32* %t, align 4
  %idxprom281 = sext i32 %207 to i64
  %208 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx282 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %208, i64 %idxprom281
  %rva283 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx282, i32 0, i32 0
  %209 = load i32, i32* %rva283, align 4
  %idx.ext284 = zext i32 %209 to i64
  %add.ptr285 = getelementptr inbounds i8, i8* %206, i64 %idx.ext284
  %210 = load i32, i32* %t, align 4
  %idxprom286 = sext i32 %210 to i64
  %211 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx287 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %211, i64 %idxprom286
  %rsz288 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx287, i32 0, i32 3
  %212 = load i32, i32* %rsz288, align 4
  %conv = zext i32 %212 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr280, i8* %add.ptr285, i64 %conv, i32 1, i1 false)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.275, %land.lhs.true.263, %land.lhs.true.249, %land.lhs.true.242, %land.lhs.true.237, %land.lhs.true.232, %land.lhs.true.230, %cond.end
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %213 = load i32, i32* %t, align 4
  %inc291 = add nsw i32 %213, 1
  store i32 %inc291, i32* %t, align 4
  br label %for.cond.211

for.end.292:                                      ; preds = %for.cond.211
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %t, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.309, %for.end.292
  %214 = load i32, i32* %t, align 4
  %215 = load i32, i32* %j, align 4
  %cmp294 = icmp slt i32 %214, %215
  br i1 %cmp294, label %for.body.296, label %for.end.311

for.body.296:                                     ; preds = %for.cond.293
  %216 = load i32, i32* %t, align 4
  %217 = load i32, i32* %t, align 4
  %idxprom297 = sext i32 %217 to i64
  %218 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx298 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %218, i64 %idxprom297
  %rva299 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx298, i32 0, i32 0
  %219 = load i32, i32* %rva299, align 4
  %220 = load i32, i32* %t, align 4
  %idxprom300 = sext i32 %220 to i64
  %221 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx301 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %221, i64 %idxprom300
  %vsz302 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx301, i32 0, i32 1
  %222 = load i32, i32* %vsz302, align 4
  %223 = load i32, i32* %t, align 4
  %idxprom303 = sext i32 %223 to i64
  %224 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx304 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %224, i64 %idxprom303
  %raw305 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx304, i32 0, i32 2
  %225 = load i32, i32* %raw305, align 4
  %226 = load i32, i32* %t, align 4
  %idxprom306 = sext i32 %226 to i64
  %227 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx307 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %227, i64 %idxprom306
  %rsz308 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx307, i32 0, i32 3
  %228 = load i32, i32* %rsz308, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i32 %216, i32 %219, i32 %222, i32 %225, i32 %228)
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.body.296
  %229 = load i32, i32* %t, align 4
  %inc310 = add nsw i32 %229, 1
  store i32 %inc310, i32* %t, align 4
  br label %for.cond.293

for.end.311:                                      ; preds = %for.cond.293
  %230 = load i8*, i8** %buf.addr, align 8
  %231 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %232 = load i32, i32* %j, align 4
  %233 = load i32, i32* %Imagebase.addr, align 4
  %234 = load i32, i32* %enc_ep, align 4
  %235 = load i32, i32* %ResRva.addr, align 4
  %236 = load i32, i32* %ResSize.addr, align 4
  %237 = load i32, i32* %desc.addr, align 4
  %call = call i32 @cli_rebuildpe(i8* %230, %struct.cli_exe_section* %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %tobool312 = icmp ne i32 %call, 0
  br i1 %tobool312, label %if.end.314, label %if.then.313

if.then.313:                                      ; preds = %for.end.311
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %238 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %239 = bitcast %struct.cli_exe_section* %238 to i8*
  call void @free(i8* %239) #3
  store i32 1, i32* %retval
  br label %return

if.end.314:                                       ; preds = %for.end.311
  %240 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %241 = bitcast %struct.cli_exe_section* %240 to i8*
  call void @free(i8* %241) #3
  store i32 0, i32* %retval
  br label %return

if.end.315:                                       ; preds = %if.end.29
  %242 = load i32, i32* %srva, align 4
  %and316 = and i32 %242, 2147483647
  store i32 %and316, i32* %size, align 4
  %243 = load i32, i32* %srva, align 4
  %244 = load i32, i32* %size, align 4
  %cmp317 = icmp ne i32 %243, %244
  br i1 %cmp317, label %if.then.319, label %if.else.425

if.then.319:                                      ; preds = %if.end.315
  store i32 0, i32* %check4resources, align 4
  %245 = load i32, i32* %bufsz.addr, align 4
  %cmp320 = icmp ugt i32 %245, 0
  br i1 %cmp320, label %land.lhs.true.322, label %if.then.341

land.lhs.true.322:                                ; preds = %if.then.319
  %246 = load i32, i32* %bufsz.addr, align 4
  %cmp323 = icmp ule i32 8, %246
  br i1 %cmp323, label %land.lhs.true.325, label %if.then.341

land.lhs.true.325:                                ; preds = %land.lhs.true.322
  %247 = load i8*, i8** %packed, align 8
  %add.ptr326 = getelementptr inbounds i8, i8* %247, i64 4
  %248 = load i8*, i8** %buf.addr, align 8
  %cmp327 = icmp uge i8* %add.ptr326, %248
  br i1 %cmp327, label %land.lhs.true.329, label %if.then.341

land.lhs.true.329:                                ; preds = %land.lhs.true.325
  %249 = load i8*, i8** %packed, align 8
  %add.ptr330 = getelementptr inbounds i8, i8* %249, i64 4
  %add.ptr331 = getelementptr inbounds i8, i8* %add.ptr330, i64 8
  %250 = load i8*, i8** %buf.addr, align 8
  %251 = load i32, i32* %bufsz.addr, align 4
  %idx.ext332 = zext i32 %251 to i64
  %add.ptr333 = getelementptr inbounds i8, i8* %250, i64 %idx.ext332
  %cmp334 = icmp ule i8* %add.ptr331, %add.ptr333
  br i1 %cmp334, label %land.lhs.true.336, label %if.then.341

land.lhs.true.336:                                ; preds = %land.lhs.true.329
  %252 = load i8*, i8** %packed, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %252, i64 4
  %add.ptr338 = getelementptr inbounds i8, i8* %add.ptr337, i64 8
  %253 = load i8*, i8** %buf.addr, align 8
  %cmp339 = icmp ugt i8* %add.ptr338, %253
  br i1 %cmp339, label %if.end.345, label %if.then.341

if.then.341:                                      ; preds = %land.lhs.true.336, %land.lhs.true.329, %land.lhs.true.325, %land.lhs.true.322, %if.then.319
  %254 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %tobool342 = icmp ne %struct.cli_exe_section* %254, null
  br i1 %tobool342, label %if.then.343, label %if.end.344

if.then.343:                                      ; preds = %if.then.341
  %255 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %256 = bitcast %struct.cli_exe_section* %255 to i8*
  call void @free(i8* %256) #3
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.343, %if.then.341
  store i32 1, i32* %retval
  br label %return

if.end.345:                                       ; preds = %land.lhs.true.336
  %257 = load i8*, i8** %packed, align 8
  %add.ptr346 = getelementptr inbounds i8, i8* %257, i64 8
  %258 = bitcast i8* %add.ptr346 to i32*
  %259 = load i32, i32* %258, align 4
  %add347 = add nsw i32 %259, 4
  store i32 %add347, i32* %bottom, align 4
  %260 = load i8*, i8** %adjbuf, align 8
  %261 = load i8*, i8** %packed, align 8
  %add.ptr348 = getelementptr inbounds i8, i8* %261, i64 4
  %262 = bitcast i8* %add.ptr348 to i32*
  %263 = load i32, i32* %262, align 4
  %idx.ext349 = sext i32 %263 to i64
  %add.ptr350 = getelementptr inbounds i8, i8* %260, i64 %idx.ext349
  %264 = load i32, i32* %size, align 4
  %sub351 = sub i32 %264, 1
  %mul = mul i32 %sub351, 4
  %idx.ext352 = zext i32 %mul to i64
  %idx.neg353 = sub i64 0, %idx.ext352
  %add.ptr354 = getelementptr inbounds i8, i8* %add.ptr350, i64 %idx.neg353
  store i8* %add.ptr354, i8** %ssrc, align 8
  %265 = load i8*, i8** %adjbuf, align 8
  %266 = load i8*, i8** %packed, align 8
  %add.ptr355 = getelementptr inbounds i8, i8* %266, i64 8
  %267 = bitcast i8* %add.ptr355 to i32*
  %268 = load i32, i32* %267, align 4
  %idx.ext356 = sext i32 %268 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %265, i64 %idx.ext356
  %269 = load i32, i32* %size, align 4
  %sub358 = sub i32 %269, 1
  %mul359 = mul i32 %sub358, 4
  %idx.ext360 = zext i32 %mul359 to i64
  %idx.neg361 = sub i64 0, %idx.ext360
  %add.ptr362 = getelementptr inbounds i8, i8* %add.ptr357, i64 %idx.neg361
  store i8* %add.ptr362, i8** %ddst, align 8
  %270 = load i32, i32* %bufsz.addr, align 4
  %cmp363 = icmp ugt i32 %270, 0
  br i1 %cmp363, label %land.lhs.true.365, label %if.then.417

land.lhs.true.365:                                ; preds = %if.end.345
  %271 = load i32, i32* %size, align 4
  %mul366 = mul i32 %271, 4
  %cmp367 = icmp ugt i32 %mul366, 0
  br i1 %cmp367, label %land.lhs.true.369, label %if.then.417

land.lhs.true.369:                                ; preds = %land.lhs.true.365
  %272 = load i32, i32* %size, align 4
  %mul370 = mul i32 %272, 4
  %273 = load i32, i32* %bufsz.addr, align 4
  %cmp371 = icmp ule i32 %mul370, %273
  br i1 %cmp371, label %land.lhs.true.373, label %if.then.417

land.lhs.true.373:                                ; preds = %land.lhs.true.369
  %274 = load i8*, i8** %ssrc, align 8
  %275 = load i8*, i8** %buf.addr, align 8
  %cmp374 = icmp uge i8* %274, %275
  br i1 %cmp374, label %land.lhs.true.376, label %if.then.417

land.lhs.true.376:                                ; preds = %land.lhs.true.373
  %276 = load i8*, i8** %ssrc, align 8
  %277 = load i32, i32* %size, align 4
  %mul377 = mul i32 %277, 4
  %idx.ext378 = zext i32 %mul377 to i64
  %add.ptr379 = getelementptr inbounds i8, i8* %276, i64 %idx.ext378
  %278 = load i8*, i8** %buf.addr, align 8
  %279 = load i32, i32* %bufsz.addr, align 4
  %idx.ext380 = zext i32 %279 to i64
  %add.ptr381 = getelementptr inbounds i8, i8* %278, i64 %idx.ext380
  %cmp382 = icmp ule i8* %add.ptr379, %add.ptr381
  br i1 %cmp382, label %land.lhs.true.384, label %if.then.417

land.lhs.true.384:                                ; preds = %land.lhs.true.376
  %280 = load i8*, i8** %ssrc, align 8
  %281 = load i32, i32* %size, align 4
  %mul385 = mul i32 %281, 4
  %idx.ext386 = zext i32 %mul385 to i64
  %add.ptr387 = getelementptr inbounds i8, i8* %280, i64 %idx.ext386
  %282 = load i8*, i8** %buf.addr, align 8
  %cmp388 = icmp ugt i8* %add.ptr387, %282
  br i1 %cmp388, label %lor.lhs.false, label %if.then.417

lor.lhs.false:                                    ; preds = %land.lhs.true.384
  %283 = load i32, i32* %bufsz.addr, align 4
  %cmp390 = icmp ugt i32 %283, 0
  br i1 %cmp390, label %land.lhs.true.392, label %if.then.417

land.lhs.true.392:                                ; preds = %lor.lhs.false
  %284 = load i32, i32* %size, align 4
  %mul393 = mul i32 %284, 4
  %cmp394 = icmp ugt i32 %mul393, 0
  br i1 %cmp394, label %land.lhs.true.396, label %if.then.417

land.lhs.true.396:                                ; preds = %land.lhs.true.392
  %285 = load i32, i32* %size, align 4
  %mul397 = mul i32 %285, 4
  %286 = load i32, i32* %bufsz.addr, align 4
  %cmp398 = icmp ule i32 %mul397, %286
  br i1 %cmp398, label %land.lhs.true.400, label %if.then.417

land.lhs.true.400:                                ; preds = %land.lhs.true.396
  %287 = load i8*, i8** %ddst, align 8
  %288 = load i8*, i8** %buf.addr, align 8
  %cmp401 = icmp uge i8* %287, %288
  br i1 %cmp401, label %land.lhs.true.403, label %if.then.417

land.lhs.true.403:                                ; preds = %land.lhs.true.400
  %289 = load i8*, i8** %ddst, align 8
  %290 = load i32, i32* %size, align 4
  %mul404 = mul i32 %290, 4
  %idx.ext405 = zext i32 %mul404 to i64
  %add.ptr406 = getelementptr inbounds i8, i8* %289, i64 %idx.ext405
  %291 = load i8*, i8** %buf.addr, align 8
  %292 = load i32, i32* %bufsz.addr, align 4
  %idx.ext407 = zext i32 %292 to i64
  %add.ptr408 = getelementptr inbounds i8, i8* %291, i64 %idx.ext407
  %cmp409 = icmp ule i8* %add.ptr406, %add.ptr408
  br i1 %cmp409, label %land.lhs.true.411, label %if.then.417

land.lhs.true.411:                                ; preds = %land.lhs.true.403
  %293 = load i8*, i8** %ddst, align 8
  %294 = load i32, i32* %size, align 4
  %mul412 = mul i32 %294, 4
  %idx.ext413 = zext i32 %mul412 to i64
  %add.ptr414 = getelementptr inbounds i8, i8* %293, i64 %idx.ext413
  %295 = load i8*, i8** %buf.addr, align 8
  %cmp415 = icmp ugt i8* %add.ptr414, %295
  br i1 %cmp415, label %if.end.421, label %if.then.417

if.then.417:                                      ; preds = %land.lhs.true.411, %land.lhs.true.403, %land.lhs.true.400, %land.lhs.true.396, %land.lhs.true.392, %lor.lhs.false, %land.lhs.true.384, %land.lhs.true.376, %land.lhs.true.373, %land.lhs.true.369, %land.lhs.true.365, %if.end.345
  %296 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %tobool418 = icmp ne %struct.cli_exe_section* %296, null
  br i1 %tobool418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.then.417
  %297 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %298 = bitcast %struct.cli_exe_section* %297 to i8*
  call void @free(i8* %298) #3
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %if.then.417
  store i32 1, i32* %retval
  br label %return

if.end.421:                                       ; preds = %land.lhs.true.411
  %299 = load i8*, i8** %ddst, align 8
  %300 = load i8*, i8** %ssrc, align 8
  %301 = load i32, i32* %size, align 4
  %mul422 = mul i32 %301, 4
  %conv423 = zext i32 %mul422 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %299, i8* %300, i64 %conv423, i32 1, i1 false)
  %302 = load i8*, i8** %packed, align 8
  %add.ptr424 = getelementptr inbounds i8, i8* %302, i64 12
  store i8* %add.ptr424, i8** %packed, align 8
  br label %if.end.1084

if.else.425:                                      ; preds = %if.end.315
  store i8 0, i8* %mydl, align 1
  %303 = load i32, i32* %bufsz.addr, align 4
  %cmp426 = icmp ugt i32 %303, 0
  br i1 %cmp426, label %land.lhs.true.428, label %if.then.447

land.lhs.true.428:                                ; preds = %if.else.425
  %304 = load i32, i32* %bufsz.addr, align 4
  %cmp429 = icmp ule i32 8, %304
  br i1 %cmp429, label %land.lhs.true.431, label %if.then.447

land.lhs.true.431:                                ; preds = %land.lhs.true.428
  %305 = load i8*, i8** %packed, align 8
  %add.ptr432 = getelementptr inbounds i8, i8* %305, i64 4
  %306 = load i8*, i8** %buf.addr, align 8
  %cmp433 = icmp uge i8* %add.ptr432, %306
  br i1 %cmp433, label %land.lhs.true.435, label %if.then.447

land.lhs.true.435:                                ; preds = %land.lhs.true.431
  %307 = load i8*, i8** %packed, align 8
  %add.ptr436 = getelementptr inbounds i8, i8* %307, i64 4
  %add.ptr437 = getelementptr inbounds i8, i8* %add.ptr436, i64 8
  %308 = load i8*, i8** %buf.addr, align 8
  %309 = load i32, i32* %bufsz.addr, align 4
  %idx.ext438 = zext i32 %309 to i64
  %add.ptr439 = getelementptr inbounds i8, i8* %308, i64 %idx.ext438
  %cmp440 = icmp ule i8* %add.ptr437, %add.ptr439
  br i1 %cmp440, label %land.lhs.true.442, label %if.then.447

land.lhs.true.442:                                ; preds = %land.lhs.true.435
  %310 = load i8*, i8** %packed, align 8
  %add.ptr443 = getelementptr inbounds i8, i8* %310, i64 4
  %add.ptr444 = getelementptr inbounds i8, i8* %add.ptr443, i64 8
  %311 = load i8*, i8** %buf.addr, align 8
  %cmp445 = icmp ugt i8* %add.ptr444, %311
  br i1 %cmp445, label %if.end.451, label %if.then.447

if.then.447:                                      ; preds = %land.lhs.true.442, %land.lhs.true.435, %land.lhs.true.431, %land.lhs.true.428, %if.else.425
  %312 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %tobool448 = icmp ne %struct.cli_exe_section* %312, null
  br i1 %tobool448, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %if.then.447
  %313 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %314 = bitcast %struct.cli_exe_section* %313 to i8*
  call void @free(i8* %314) #3
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.449, %if.then.447
  store i32 1, i32* %retval
  br label %return

if.end.451:                                       ; preds = %land.lhs.true.442
  %315 = load i8*, i8** %packed, align 8
  %add.ptr452 = getelementptr inbounds i8, i8* %315, i64 4
  %316 = bitcast i8* %add.ptr452 to i32*
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %size, align 4
  %318 = load i8*, i8** %packed, align 8
  %add.ptr453 = getelementptr inbounds i8, i8* %318, i64 8
  %319 = bitcast i8* %add.ptr453 to i32*
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %thisrva, align 4
  %321 = load i8*, i8** %packed, align 8
  %add.ptr454 = getelementptr inbounds i8, i8* %321, i64 16
  store i8* %add.ptr454, i8** %packed, align 8
  %322 = load i32, i32* %j, align 4
  %cmp455 = icmp sge i32 %322, 96
  br i1 %cmp455, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.end.451
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0))
  %323 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %324 = bitcast %struct.cli_exe_section* %323 to i8*
  call void @free(i8* %324) #3
  store i32 1, i32* %retval
  br label %return

if.end.458:                                       ; preds = %if.end.451
  %325 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %326 = bitcast %struct.cli_exe_section* %325 to i8*
  %327 = load i32, i32* %j, align 4
  %add459 = add nsw i32 %327, 1
  %conv460 = sext i32 %add459 to i64
  %mul461 = mul i64 36, %conv460
  %call462 = call i8* @cli_realloc(i8* %326, i64 %mul461)
  store i8* %call462, i8** %tmpsct, align 8
  %tobool463 = icmp ne i8* %call462, null
  br i1 %tobool463, label %if.end.468, label %if.then.464

if.then.464:                                      ; preds = %if.end.458
  %328 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %tobool465 = icmp ne %struct.cli_exe_section* %328, null
  br i1 %tobool465, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.then.464
  %329 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %330 = bitcast %struct.cli_exe_section* %329 to i8*
  call void @free(i8* %330) #3
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.466, %if.then.464
  store i32 1, i32* %retval
  br label %return

if.end.468:                                       ; preds = %if.end.458
  %331 = load i8*, i8** %tmpsct, align 8
  %332 = bitcast i8* %331 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %332, %struct.cli_exe_section** %usects, align 8
  %333 = load i32, i32* %thisrva, align 4
  %334 = load i32, i32* %j, align 4
  %idxprom469 = sext i32 %334 to i64
  %335 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx470 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %335, i64 %idxprom469
  %rva471 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx470, i32 0, i32 0
  store i32 %333, i32* %rva471, align 4
  %336 = load i32, i32* %size, align 4
  %337 = load i32, i32* %j, align 4
  %idxprom472 = sext i32 %337 to i64
  %338 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx473 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %338, i64 %idxprom472
  %rsz474 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx473, i32 0, i32 3
  store i32 %336, i32* %rsz474, align 4
  %339 = load i32, i32* %bottom, align 4
  %340 = load i32, i32* %thisrva, align 4
  %sub475 = sub i32 %339, %340
  %cmp476 = icmp sgt i32 %sub475, 0
  br i1 %cmp476, label %if.then.478, label %if.else.483

if.then.478:                                      ; preds = %if.end.468
  %341 = load i32, i32* %bottom, align 4
  %342 = load i32, i32* %thisrva, align 4
  %sub479 = sub i32 %341, %342
  %343 = load i32, i32* %j, align 4
  %idxprom480 = sext i32 %343 to i64
  %344 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx481 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %344, i64 %idxprom480
  %vsz482 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx481, i32 0, i32 1
  store i32 %sub479, i32* %vsz482, align 4
  br label %if.end.487

if.else.483:                                      ; preds = %if.end.468
  %345 = load i32, i32* %size, align 4
  %346 = load i32, i32* %j, align 4
  %idxprom484 = sext i32 %346 to i64
  %347 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx485 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %347, i64 %idxprom484
  %vsz486 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx485, i32 0, i32 1
  store i32 %345, i32* %vsz486, align 4
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.483, %if.then.478
  %348 = load i32, i32* %j, align 4
  %idxprom488 = sext i32 %348 to i64
  %349 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx489 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %349, i64 %idxprom488
  %raw490 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx489, i32 0, i32 2
  store i32 0, i32* %raw490, align 4
  %350 = load i32, i32* %size, align 4
  %tobool491 = icmp ne i32 %350, 0
  br i1 %tobool491, label %if.end.494, label %if.then.492

if.then.492:                                      ; preds = %if.end.487
  %351 = load i32, i32* %j, align 4
  %inc493 = add nsw i32 %351, 1
  store i32 %inc493, i32* %j, align 4
  br label %while.body

if.end.494:                                       ; preds = %if.end.487
  %352 = load i8*, i8** %adjbuf, align 8
  %353 = load i32, i32* %srva, align 4
  %idx.ext495 = zext i32 %353 to i64
  %add.ptr496 = getelementptr inbounds i8, i8* %352, i64 %idx.ext495
  store i8* %add.ptr496, i8** %ssrc, align 8
  %354 = load i8*, i8** %adjbuf, align 8
  %355 = load i32, i32* %thisrva, align 4
  %idx.ext497 = zext i32 %355 to i64
  %add.ptr498 = getelementptr inbounds i8, i8* %354, i64 %idx.ext497
  store i8* %add.ptr498, i8** %ddst, align 8
  %356 = load i32, i32* %check4resources, align 4
  %tobool499 = icmp ne i32 %356, 0
  br i1 %tobool499, label %if.end.539, label %if.then.500

if.then.500:                                      ; preds = %if.end.494
  store i32 0, i32* %q, align 4
  br label %for.cond.501

for.cond.501:                                     ; preds = %for.inc.536, %if.then.500
  %357 = load i32, i32* %q, align 4
  %358 = load i32, i32* %sectcount.addr, align 4
  %cmp502 = icmp ult i32 %357, %358
  br i1 %cmp502, label %for.body.504, label %for.end.538

for.body.504:                                     ; preds = %for.cond.501
  %359 = load i32, i32* %thisrva, align 4
  %360 = load i32, i32* %q, align 4
  %idxprom505 = zext i32 %360 to i64
  %361 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx506 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %361, i64 %idxprom505
  %rva507 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx506, i32 0, i32 0
  %362 = load i32, i32* %rva507, align 4
  %cmp508 = icmp ule i32 %359, %362
  br i1 %cmp508, label %if.then.520, label %lor.lhs.false.510

lor.lhs.false.510:                                ; preds = %for.body.504
  %363 = load i32, i32* %thisrva, align 4
  %364 = load i32, i32* %q, align 4
  %idxprom511 = zext i32 %364 to i64
  %365 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx512 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %365, i64 %idxprom511
  %rva513 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx512, i32 0, i32 0
  %366 = load i32, i32* %rva513, align 4
  %367 = load i32, i32* %q, align 4
  %idxprom514 = zext i32 %367 to i64
  %368 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx515 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %368, i64 %idxprom514
  %vsz516 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx515, i32 0, i32 1
  %369 = load i32, i32* %vsz516, align 4
  %add517 = add i32 %366, %369
  %cmp518 = icmp uge i32 %363, %add517
  br i1 %cmp518, label %if.then.520, label %if.end.521

if.then.520:                                      ; preds = %lor.lhs.false.510, %for.body.504
  br label %for.inc.536

if.end.521:                                       ; preds = %lor.lhs.false.510
  %370 = load i32, i32* %q, align 4
  %idxprom522 = zext i32 %370 to i64
  %371 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx523 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %371, i64 %idxprom522
  %rva524 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx523, i32 0, i32 0
  %372 = load i32, i32* %rva524, align 4
  %373 = load i32, i32* %j, align 4
  %idxprom525 = sext i32 %373 to i64
  %374 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx526 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %374, i64 %idxprom525
  %rva527 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx526, i32 0, i32 0
  store i32 %372, i32* %rva527, align 4
  %375 = load i32, i32* %thisrva, align 4
  %376 = load i32, i32* %q, align 4
  %idxprom528 = zext i32 %376 to i64
  %377 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx529 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %377, i64 %idxprom528
  %rva530 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx529, i32 0, i32 0
  %378 = load i32, i32* %rva530, align 4
  %sub531 = sub i32 %375, %378
  %379 = load i32, i32* %size, align 4
  %add532 = add i32 %sub531, %379
  %380 = load i32, i32* %j, align 4
  %idxprom533 = sext i32 %380 to i64
  %381 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx534 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %381, i64 %idxprom533
  %rsz535 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx534, i32 0, i32 3
  store i32 %add532, i32* %rsz535, align 4
  br label %for.end.538

for.inc.536:                                      ; preds = %if.then.520
  %382 = load i32, i32* %q, align 4
  %inc537 = add i32 %382, 1
  store i32 %inc537, i32* %q, align 4
  br label %for.cond.501

for.end.538:                                      ; preds = %if.end.521, %for.cond.501
  br label %if.end.539

if.end.539:                                       ; preds = %for.end.538, %if.end.494
  %383 = load i32, i32* %j, align 4
  %inc540 = add nsw i32 %383, 1
  store i32 %inc540, i32* %j, align 4
  %384 = load i32, i32* %size, align 4
  %cmp541 = icmp ult i32 %384, 65536
  br i1 %cmp541, label %if.then.543, label %if.else.544

if.then.543:                                      ; preds = %if.end.539
  store i32 -16288, i32* %check1, align 4
  store i32 -928, i32* %check2, align 4
  store i8 5, i8* %goback, align 1
  br label %if.end.550

if.else.544:                                      ; preds = %if.end.539
  %385 = load i32, i32* %size, align 4
  %cmp545 = icmp ult i32 %385, 262144
  br i1 %cmp545, label %if.then.547, label %if.else.548

if.then.547:                                      ; preds = %if.else.544
  store i32 -32384, i32* %check1, align 4
  store i32 -1664, i32* %check2, align 4
  store i8 7, i8* %goback, align 1
  br label %if.end.549

if.else.548:                                      ; preds = %if.else.544
  store i32 -32000, i32* %check1, align 4
  store i32 -1280, i32* %check2, align 4
  store i8 8, i8* %goback, align 1
  br label %if.end.549

if.end.549:                                       ; preds = %if.else.548, %if.then.547
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %if.then.543
  %386 = load i32, i32* %bufsz.addr, align 4
  %cmp551 = icmp ugt i32 %386, 0
  br i1 %cmp551, label %land.lhs.true.553, label %if.then.588

land.lhs.true.553:                                ; preds = %if.end.550
  %387 = load i32, i32* %bufsz.addr, align 4
  %cmp554 = icmp ule i32 1, %387
  br i1 %cmp554, label %land.lhs.true.556, label %if.then.588

land.lhs.true.556:                                ; preds = %land.lhs.true.553
  %388 = load i8*, i8** %ssrc, align 8
  %389 = load i8*, i8** %buf.addr, align 8
  %cmp557 = icmp uge i8* %388, %389
  br i1 %cmp557, label %land.lhs.true.559, label %if.then.588

land.lhs.true.559:                                ; preds = %land.lhs.true.556
  %390 = load i8*, i8** %ssrc, align 8
  %add.ptr560 = getelementptr inbounds i8, i8* %390, i64 1
  %391 = load i8*, i8** %buf.addr, align 8
  %392 = load i32, i32* %bufsz.addr, align 4
  %idx.ext561 = zext i32 %392 to i64
  %add.ptr562 = getelementptr inbounds i8, i8* %391, i64 %idx.ext561
  %cmp563 = icmp ule i8* %add.ptr560, %add.ptr562
  br i1 %cmp563, label %land.lhs.true.565, label %if.then.588

land.lhs.true.565:                                ; preds = %land.lhs.true.559
  %393 = load i8*, i8** %ssrc, align 8
  %add.ptr566 = getelementptr inbounds i8, i8* %393, i64 1
  %394 = load i8*, i8** %buf.addr, align 8
  %cmp567 = icmp ugt i8* %add.ptr566, %394
  br i1 %cmp567, label %lor.lhs.false.569, label %if.then.588

lor.lhs.false.569:                                ; preds = %land.lhs.true.565
  %395 = load i32, i32* %bufsz.addr, align 4
  %cmp570 = icmp ugt i32 %395, 0
  br i1 %cmp570, label %land.lhs.true.572, label %if.then.588

land.lhs.true.572:                                ; preds = %lor.lhs.false.569
  %396 = load i32, i32* %bufsz.addr, align 4
  %cmp573 = icmp ule i32 1, %396
  br i1 %cmp573, label %land.lhs.true.575, label %if.then.588

land.lhs.true.575:                                ; preds = %land.lhs.true.572
  %397 = load i8*, i8** %ddst, align 8
  %398 = load i8*, i8** %buf.addr, align 8
  %cmp576 = icmp uge i8* %397, %398
  br i1 %cmp576, label %land.lhs.true.578, label %if.then.588

land.lhs.true.578:                                ; preds = %land.lhs.true.575
  %399 = load i8*, i8** %ddst, align 8
  %add.ptr579 = getelementptr inbounds i8, i8* %399, i64 1
  %400 = load i8*, i8** %buf.addr, align 8
  %401 = load i32, i32* %bufsz.addr, align 4
  %idx.ext580 = zext i32 %401 to i64
  %add.ptr581 = getelementptr inbounds i8, i8* %400, i64 %idx.ext580
  %cmp582 = icmp ule i8* %add.ptr579, %add.ptr581
  br i1 %cmp582, label %land.lhs.true.584, label %if.then.588

land.lhs.true.584:                                ; preds = %land.lhs.true.578
  %402 = load i8*, i8** %ddst, align 8
  %add.ptr585 = getelementptr inbounds i8, i8* %402, i64 1
  %403 = load i8*, i8** %buf.addr, align 8
  %cmp586 = icmp ugt i8* %add.ptr585, %403
  br i1 %cmp586, label %if.end.589, label %if.then.588

if.then.588:                                      ; preds = %land.lhs.true.584, %land.lhs.true.578, %land.lhs.true.575, %land.lhs.true.572, %lor.lhs.false.569, %land.lhs.true.565, %land.lhs.true.559, %land.lhs.true.556, %land.lhs.true.553, %if.end.550
  %404 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %405 = bitcast %struct.cli_exe_section* %404 to i8*
  call void @free(i8* %405) #3
  store i32 1, i32* %retval
  br label %return

if.end.589:                                       ; preds = %land.lhs.true.584
  %406 = load i32, i32* %size, align 4
  %dec590 = add i32 %406, -1
  store i32 %dec590, i32* %size, align 4
  %407 = load i8*, i8** %ssrc, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %incdec.ptr, i8** %ssrc, align 8
  %408 = load i8, i8* %407, align 1
  %409 = load i8*, i8** %ddst, align 8
  %incdec.ptr591 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %incdec.ptr591, i8** %ddst, align 8
  store i8 %408, i8* %409, align 1
  store i32 0, i32* %backbytes, align 4
  store i32 0, i32* %oldback, align 4
  br label %while.cond.592

while.cond.592:                                   ; preds = %if.end.795, %if.end.589
  %410 = load i32, i32* %size, align 4
  %cmp593 = icmp ugt i32 %410, 0
  br i1 %cmp593, label %while.body.595, label %while.end.796

while.body.595:                                   ; preds = %while.cond.592
  %411 = load i8*, i8** %buf.addr, align 8
  %412 = load i32, i32* %bufsz.addr, align 4
  %call596 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %411, i32 %412)
  store i32 %call596, i32* %oob, align 4
  %413 = load i32, i32* %oob, align 4
  %cmp597 = icmp eq i32 %413, -1
  br i1 %cmp597, label %if.then.599, label %if.end.600

if.then.599:                                      ; preds = %while.body.595
  %414 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %415 = bitcast %struct.cli_exe_section* %414 to i8*
  call void @free(i8* %415) #3
  store i32 1, i32* %retval
  br label %return

if.end.600:                                       ; preds = %while.body.595
  %416 = load i32, i32* %oob, align 4
  %tobool601 = icmp ne i32 %416, 0
  br i1 %tobool601, label %if.else.648, label %if.then.602

if.then.602:                                      ; preds = %if.end.600
  %417 = load i32, i32* %bufsz.addr, align 4
  %cmp603 = icmp ugt i32 %417, 0
  br i1 %cmp603, label %land.lhs.true.605, label %if.then.640

land.lhs.true.605:                                ; preds = %if.then.602
  %418 = load i32, i32* %bufsz.addr, align 4
  %cmp606 = icmp ule i32 1, %418
  br i1 %cmp606, label %land.lhs.true.608, label %if.then.640

land.lhs.true.608:                                ; preds = %land.lhs.true.605
  %419 = load i8*, i8** %ssrc, align 8
  %420 = load i8*, i8** %buf.addr, align 8
  %cmp609 = icmp uge i8* %419, %420
  br i1 %cmp609, label %land.lhs.true.611, label %if.then.640

land.lhs.true.611:                                ; preds = %land.lhs.true.608
  %421 = load i8*, i8** %ssrc, align 8
  %add.ptr612 = getelementptr inbounds i8, i8* %421, i64 1
  %422 = load i8*, i8** %buf.addr, align 8
  %423 = load i32, i32* %bufsz.addr, align 4
  %idx.ext613 = zext i32 %423 to i64
  %add.ptr614 = getelementptr inbounds i8, i8* %422, i64 %idx.ext613
  %cmp615 = icmp ule i8* %add.ptr612, %add.ptr614
  br i1 %cmp615, label %land.lhs.true.617, label %if.then.640

land.lhs.true.617:                                ; preds = %land.lhs.true.611
  %424 = load i8*, i8** %ssrc, align 8
  %add.ptr618 = getelementptr inbounds i8, i8* %424, i64 1
  %425 = load i8*, i8** %buf.addr, align 8
  %cmp619 = icmp ugt i8* %add.ptr618, %425
  br i1 %cmp619, label %lor.lhs.false.621, label %if.then.640

lor.lhs.false.621:                                ; preds = %land.lhs.true.617
  %426 = load i32, i32* %bufsz.addr, align 4
  %cmp622 = icmp ugt i32 %426, 0
  br i1 %cmp622, label %land.lhs.true.624, label %if.then.640

land.lhs.true.624:                                ; preds = %lor.lhs.false.621
  %427 = load i32, i32* %bufsz.addr, align 4
  %cmp625 = icmp ule i32 1, %427
  br i1 %cmp625, label %land.lhs.true.627, label %if.then.640

land.lhs.true.627:                                ; preds = %land.lhs.true.624
  %428 = load i8*, i8** %ddst, align 8
  %429 = load i8*, i8** %buf.addr, align 8
  %cmp628 = icmp uge i8* %428, %429
  br i1 %cmp628, label %land.lhs.true.630, label %if.then.640

land.lhs.true.630:                                ; preds = %land.lhs.true.627
  %430 = load i8*, i8** %ddst, align 8
  %add.ptr631 = getelementptr inbounds i8, i8* %430, i64 1
  %431 = load i8*, i8** %buf.addr, align 8
  %432 = load i32, i32* %bufsz.addr, align 4
  %idx.ext632 = zext i32 %432 to i64
  %add.ptr633 = getelementptr inbounds i8, i8* %431, i64 %idx.ext632
  %cmp634 = icmp ule i8* %add.ptr631, %add.ptr633
  br i1 %cmp634, label %land.lhs.true.636, label %if.then.640

land.lhs.true.636:                                ; preds = %land.lhs.true.630
  %433 = load i8*, i8** %ddst, align 8
  %add.ptr637 = getelementptr inbounds i8, i8* %433, i64 1
  %434 = load i8*, i8** %buf.addr, align 8
  %cmp638 = icmp ugt i8* %add.ptr637, %434
  br i1 %cmp638, label %if.end.641, label %if.then.640

if.then.640:                                      ; preds = %land.lhs.true.636, %land.lhs.true.630, %land.lhs.true.627, %land.lhs.true.624, %lor.lhs.false.621, %land.lhs.true.617, %land.lhs.true.611, %land.lhs.true.608, %land.lhs.true.605, %if.then.602
  %435 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %436 = bitcast %struct.cli_exe_section* %435 to i8*
  call void @free(i8* %436) #3
  store i32 1, i32* %retval
  br label %return

if.end.641:                                       ; preds = %land.lhs.true.636
  %437 = load i8*, i8** %ssrc, align 8
  %incdec.ptr642 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %incdec.ptr642, i8** %ssrc, align 8
  %438 = load i8, i8* %437, align 1
  %conv643 = sext i8 %438 to i32
  %439 = load i32, i32* %size, align 4
  %and644 = and i32 %439, 255
  %xor = xor i32 %conv643, %and644
  %conv645 = trunc i32 %xor to i8
  %440 = load i8*, i8** %ddst, align 8
  %incdec.ptr646 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %incdec.ptr646, i8** %ddst, align 8
  store i8 %conv645, i8* %440, align 1
  %441 = load i32, i32* %size, align 4
  %dec647 = add i32 %441, -1
  store i32 %dec647, i32* %size, align 4
  br label %if.end.795

if.else.648:                                      ; preds = %if.end.600
  store i32 0, i32* %addsize, align 4
  %442 = load i32, i32* %backbytes, align 4
  %inc649 = add nsw i32 %442, 1
  store i32 %inc649, i32* %backbytes, align 4
  br label %while.body.651

while.body.651:                                   ; preds = %if.else.648, %if.end.666
  %443 = load i8*, i8** %buf.addr, align 8
  %444 = load i32, i32* %bufsz.addr, align 4
  %call652 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %443, i32 %444)
  store i32 %call652, i32* %oob, align 4
  %cmp653 = icmp eq i32 %call652, -1
  br i1 %cmp653, label %if.then.655, label %if.end.656

if.then.655:                                      ; preds = %while.body.651
  %445 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %446 = bitcast %struct.cli_exe_section* %445 to i8*
  call void @free(i8* %446) #3
  store i32 1, i32* %retval
  br label %return

if.end.656:                                       ; preds = %while.body.651
  %447 = load i32, i32* %backbytes, align 4
  %mul657 = mul nsw i32 %447, 2
  %448 = load i32, i32* %oob, align 4
  %add658 = add nsw i32 %mul657, %448
  store i32 %add658, i32* %backbytes, align 4
  %449 = load i8*, i8** %buf.addr, align 8
  %450 = load i32, i32* %bufsz.addr, align 4
  %call659 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %449, i32 %450)
  store i32 %call659, i32* %oob, align 4
  %cmp660 = icmp eq i32 %call659, -1
  br i1 %cmp660, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.656
  %451 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %452 = bitcast %struct.cli_exe_section* %451 to i8*
  call void @free(i8* %452) #3
  store i32 1, i32* %retval
  br label %return

if.end.663:                                       ; preds = %if.end.656
  %453 = load i32, i32* %oob, align 4
  %tobool664 = icmp ne i32 %453, 0
  br i1 %tobool664, label %if.end.666, label %if.then.665

if.then.665:                                      ; preds = %if.end.663
  br label %while.end.667

if.end.666:                                       ; preds = %if.end.663
  br label %while.body.651

while.end.667:                                    ; preds = %if.then.665
  %454 = load i32, i32* %backbytes, align 4
  %sub668 = sub nsw i32 %454, 3
  store i32 %sub668, i32* %backbytes, align 4
  %455 = load i32, i32* %backbytes, align 4
  %cmp669 = icmp sge i32 %455, 0
  br i1 %cmp669, label %if.then.671, label %if.else.690

if.then.671:                                      ; preds = %while.end.667
  %456 = load i8, i8* %goback, align 1
  %conv672 = zext i8 %456 to i32
  store i32 %conv672, i32* %backsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.671
  %457 = load i8*, i8** %buf.addr, align 8
  %458 = load i32, i32* %bufsz.addr, align 4
  %call673 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %457, i32 %458)
  store i32 %call673, i32* %oob, align 4
  %cmp674 = icmp eq i32 %call673, -1
  br i1 %cmp674, label %if.then.676, label %if.end.677

if.then.676:                                      ; preds = %do.body
  %459 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %460 = bitcast %struct.cli_exe_section* %459 to i8*
  call void @free(i8* %460) #3
  store i32 1, i32* %retval
  br label %return

if.end.677:                                       ; preds = %do.body
  %461 = load i32, i32* %backbytes, align 4
  %mul678 = mul nsw i32 %461, 2
  %462 = load i32, i32* %oob, align 4
  %add679 = add nsw i32 %mul678, %462
  store i32 %add679, i32* %backbytes, align 4
  %463 = load i32, i32* %backsize, align 4
  %dec680 = add nsw i32 %463, -1
  store i32 %dec680, i32* %backsize, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.677
  %464 = load i32, i32* %backsize, align 4
  %tobool681 = icmp ne i32 %464, 0
  br i1 %tobool681, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %465 = load i32, i32* %backbytes, align 4
  %xor682 = xor i32 %465, -1
  store i32 %xor682, i32* %backbytes, align 4
  %466 = load i32, i32* %backbytes, align 4
  %467 = load i32, i32* %check2, align 4
  %cmp683 = icmp slt i32 %466, %467
  %conv684 = zext i1 %cmp683 to i32
  %add685 = add nsw i32 1, %conv684
  %468 = load i32, i32* %backbytes, align 4
  %469 = load i32, i32* %check1, align 4
  %cmp686 = icmp slt i32 %468, %469
  %conv687 = zext i1 %cmp686 to i32
  %add688 = add nsw i32 %add685, %conv687
  %470 = load i32, i32* %addsize, align 4
  %add689 = add nsw i32 %470, %add688
  store i32 %add689, i32* %addsize, align 4
  %471 = load i32, i32* %backbytes, align 4
  store i32 %471, i32* %oldback, align 4
  br label %if.end.692

if.else.690:                                      ; preds = %while.end.667
  %472 = load i32, i32* %backbytes, align 4
  %add691 = add nsw i32 %472, 1
  store i32 %add691, i32* %backsize, align 4
  %473 = load i32, i32* %oldback, align 4
  store i32 %473, i32* %backbytes, align 4
  br label %if.end.692

if.end.692:                                       ; preds = %if.else.690, %do.end
  %474 = load i8*, i8** %buf.addr, align 8
  %475 = load i32, i32* %bufsz.addr, align 4
  %call693 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %474, i32 %475)
  store i32 %call693, i32* %oob, align 4
  %cmp694 = icmp eq i32 %call693, -1
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %if.end.692
  %476 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %477 = bitcast %struct.cli_exe_section* %476 to i8*
  call void @free(i8* %477) #3
  store i32 1, i32* %retval
  br label %return

if.end.697:                                       ; preds = %if.end.692
  %478 = load i32, i32* %backsize, align 4
  %mul698 = mul nsw i32 %478, 2
  %479 = load i32, i32* %oob, align 4
  %add699 = add nsw i32 %mul698, %479
  store i32 %add699, i32* %backsize, align 4
  %480 = load i8*, i8** %buf.addr, align 8
  %481 = load i32, i32* %bufsz.addr, align 4
  %call700 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %480, i32 %481)
  store i32 %call700, i32* %oob, align 4
  %cmp701 = icmp eq i32 %call700, -1
  br i1 %cmp701, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %if.end.697
  %482 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %483 = bitcast %struct.cli_exe_section* %482 to i8*
  call void @free(i8* %483) #3
  store i32 1, i32* %retval
  br label %return

if.end.704:                                       ; preds = %if.end.697
  %484 = load i32, i32* %backsize, align 4
  %mul705 = mul nsw i32 %484, 2
  %485 = load i32, i32* %oob, align 4
  %add706 = add nsw i32 %mul705, %485
  store i32 %add706, i32* %backsize, align 4
  %486 = load i32, i32* %backsize, align 4
  %tobool707 = icmp ne i32 %486, 0
  br i1 %tobool707, label %if.end.729, label %if.then.708

if.then.708:                                      ; preds = %if.end.704
  %487 = load i32, i32* %backsize, align 4
  %inc709 = add nsw i32 %487, 1
  store i32 %inc709, i32* %backsize, align 4
  br label %while.body.711

while.body.711:                                   ; preds = %if.then.708, %if.end.726
  %488 = load i8*, i8** %buf.addr, align 8
  %489 = load i32, i32* %bufsz.addr, align 4
  %call712 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %488, i32 %489)
  store i32 %call712, i32* %oob, align 4
  %cmp713 = icmp eq i32 %call712, -1
  br i1 %cmp713, label %if.then.715, label %if.end.716

if.then.715:                                      ; preds = %while.body.711
  %490 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %491 = bitcast %struct.cli_exe_section* %490 to i8*
  call void @free(i8* %491) #3
  store i32 1, i32* %retval
  br label %return

if.end.716:                                       ; preds = %while.body.711
  %492 = load i32, i32* %backsize, align 4
  %mul717 = mul nsw i32 %492, 2
  %493 = load i32, i32* %oob, align 4
  %add718 = add nsw i32 %mul717, %493
  store i32 %add718, i32* %backsize, align 4
  %494 = load i8*, i8** %buf.addr, align 8
  %495 = load i32, i32* %bufsz.addr, align 4
  %call719 = call i32 @doubledl(i8** %ssrc, i8* %mydl, i8* %494, i32 %495)
  store i32 %call719, i32* %oob, align 4
  %cmp720 = icmp eq i32 %call719, -1
  br i1 %cmp720, label %if.then.722, label %if.end.723

if.then.722:                                      ; preds = %if.end.716
  %496 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %497 = bitcast %struct.cli_exe_section* %496 to i8*
  call void @free(i8* %497) #3
  store i32 1, i32* %retval
  br label %return

if.end.723:                                       ; preds = %if.end.716
  %498 = load i32, i32* %oob, align 4
  %tobool724 = icmp ne i32 %498, 0
  br i1 %tobool724, label %if.end.726, label %if.then.725

if.then.725:                                      ; preds = %if.end.723
  br label %while.end.727

if.end.726:                                       ; preds = %if.end.723
  br label %while.body.711

while.end.727:                                    ; preds = %if.then.725
  %499 = load i32, i32* %backsize, align 4
  %add728 = add nsw i32 %499, 2
  store i32 %add728, i32* %backsize, align 4
  br label %if.end.729

if.end.729:                                       ; preds = %while.end.727, %if.end.704
  %500 = load i32, i32* %addsize, align 4
  %501 = load i32, i32* %backsize, align 4
  %add730 = add nsw i32 %501, %500
  store i32 %add730, i32* %backsize, align 4
  %502 = load i32, i32* %backsize, align 4
  %503 = load i32, i32* %size, align 4
  %sub731 = sub i32 %503, %502
  store i32 %sub731, i32* %size, align 4
  %504 = load i32, i32* %bufsz.addr, align 4
  %cmp732 = icmp ugt i32 %504, 0
  br i1 %cmp732, label %land.lhs.true.734, label %if.then.785

land.lhs.true.734:                                ; preds = %if.end.729
  %505 = load i32, i32* %backsize, align 4
  %cmp735 = icmp sgt i32 %505, 0
  br i1 %cmp735, label %land.lhs.true.737, label %if.then.785

land.lhs.true.737:                                ; preds = %land.lhs.true.734
  %506 = load i32, i32* %backsize, align 4
  %507 = load i32, i32* %bufsz.addr, align 4
  %cmp738 = icmp ule i32 %506, %507
  br i1 %cmp738, label %land.lhs.true.740, label %if.then.785

land.lhs.true.740:                                ; preds = %land.lhs.true.737
  %508 = load i8*, i8** %ddst, align 8
  %509 = load i8*, i8** %buf.addr, align 8
  %cmp741 = icmp uge i8* %508, %509
  br i1 %cmp741, label %land.lhs.true.743, label %if.then.785

land.lhs.true.743:                                ; preds = %land.lhs.true.740
  %510 = load i8*, i8** %ddst, align 8
  %511 = load i32, i32* %backsize, align 4
  %idx.ext744 = sext i32 %511 to i64
  %add.ptr745 = getelementptr inbounds i8, i8* %510, i64 %idx.ext744
  %512 = load i8*, i8** %buf.addr, align 8
  %513 = load i32, i32* %bufsz.addr, align 4
  %idx.ext746 = zext i32 %513 to i64
  %add.ptr747 = getelementptr inbounds i8, i8* %512, i64 %idx.ext746
  %cmp748 = icmp ule i8* %add.ptr745, %add.ptr747
  br i1 %cmp748, label %land.lhs.true.750, label %if.then.785

land.lhs.true.750:                                ; preds = %land.lhs.true.743
  %514 = load i8*, i8** %ddst, align 8
  %515 = load i32, i32* %backsize, align 4
  %idx.ext751 = sext i32 %515 to i64
  %add.ptr752 = getelementptr inbounds i8, i8* %514, i64 %idx.ext751
  %516 = load i8*, i8** %buf.addr, align 8
  %cmp753 = icmp ugt i8* %add.ptr752, %516
  br i1 %cmp753, label %lor.lhs.false.755, label %if.then.785

lor.lhs.false.755:                                ; preds = %land.lhs.true.750
  %517 = load i32, i32* %bufsz.addr, align 4
  %cmp756 = icmp ugt i32 %517, 0
  br i1 %cmp756, label %land.lhs.true.758, label %if.then.785

land.lhs.true.758:                                ; preds = %lor.lhs.false.755
  %518 = load i32, i32* %backsize, align 4
  %cmp759 = icmp sgt i32 %518, 0
  br i1 %cmp759, label %land.lhs.true.761, label %if.then.785

land.lhs.true.761:                                ; preds = %land.lhs.true.758
  %519 = load i32, i32* %backsize, align 4
  %520 = load i32, i32* %bufsz.addr, align 4
  %cmp762 = icmp ule i32 %519, %520
  br i1 %cmp762, label %land.lhs.true.764, label %if.then.785

land.lhs.true.764:                                ; preds = %land.lhs.true.761
  %521 = load i8*, i8** %ddst, align 8
  %522 = load i32, i32* %backbytes, align 4
  %idx.ext765 = sext i32 %522 to i64
  %add.ptr766 = getelementptr inbounds i8, i8* %521, i64 %idx.ext765
  %523 = load i8*, i8** %buf.addr, align 8
  %cmp767 = icmp uge i8* %add.ptr766, %523
  br i1 %cmp767, label %land.lhs.true.769, label %if.then.785

land.lhs.true.769:                                ; preds = %land.lhs.true.764
  %524 = load i8*, i8** %ddst, align 8
  %525 = load i32, i32* %backbytes, align 4
  %idx.ext770 = sext i32 %525 to i64
  %add.ptr771 = getelementptr inbounds i8, i8* %524, i64 %idx.ext770
  %526 = load i32, i32* %backsize, align 4
  %idx.ext772 = sext i32 %526 to i64
  %add.ptr773 = getelementptr inbounds i8, i8* %add.ptr771, i64 %idx.ext772
  %527 = load i8*, i8** %buf.addr, align 8
  %528 = load i32, i32* %bufsz.addr, align 4
  %idx.ext774 = zext i32 %528 to i64
  %add.ptr775 = getelementptr inbounds i8, i8* %527, i64 %idx.ext774
  %cmp776 = icmp ule i8* %add.ptr773, %add.ptr775
  br i1 %cmp776, label %land.lhs.true.778, label %if.then.785

land.lhs.true.778:                                ; preds = %land.lhs.true.769
  %529 = load i8*, i8** %ddst, align 8
  %530 = load i32, i32* %backbytes, align 4
  %idx.ext779 = sext i32 %530 to i64
  %add.ptr780 = getelementptr inbounds i8, i8* %529, i64 %idx.ext779
  %531 = load i32, i32* %backsize, align 4
  %idx.ext781 = sext i32 %531 to i64
  %add.ptr782 = getelementptr inbounds i8, i8* %add.ptr780, i64 %idx.ext781
  %532 = load i8*, i8** %buf.addr, align 8
  %cmp783 = icmp ugt i8* %add.ptr782, %532
  br i1 %cmp783, label %if.end.786, label %if.then.785

if.then.785:                                      ; preds = %land.lhs.true.778, %land.lhs.true.769, %land.lhs.true.764, %land.lhs.true.761, %land.lhs.true.758, %lor.lhs.false.755, %land.lhs.true.750, %land.lhs.true.743, %land.lhs.true.740, %land.lhs.true.737, %land.lhs.true.734, %if.end.729
  %533 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %534 = bitcast %struct.cli_exe_section* %533 to i8*
  call void @free(i8* %534) #3
  store i32 1, i32* %retval
  br label %return

if.end.786:                                       ; preds = %land.lhs.true.778
  br label %while.cond.787

while.cond.787:                                   ; preds = %while.body.790, %if.end.786
  %535 = load i32, i32* %backsize, align 4
  %dec788 = add nsw i32 %535, -1
  store i32 %dec788, i32* %backsize, align 4
  %tobool789 = icmp ne i32 %535, 0
  br i1 %tobool789, label %while.body.790, label %while.end.794

while.body.790:                                   ; preds = %while.cond.787
  %536 = load i8*, i8** %ddst, align 8
  %537 = load i32, i32* %backbytes, align 4
  %idx.ext791 = sext i32 %537 to i64
  %add.ptr792 = getelementptr inbounds i8, i8* %536, i64 %idx.ext791
  %538 = load i8, i8* %add.ptr792, align 1
  %539 = load i8*, i8** %ddst, align 8
  store i8 %538, i8* %539, align 1
  %540 = load i8*, i8** %ddst, align 8
  %incdec.ptr793 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %incdec.ptr793, i8** %ddst, align 8
  br label %while.cond.787

while.end.794:                                    ; preds = %while.cond.787
  store i32 0, i32* %backbytes, align 4
  store i32 0, i32* %backsize, align 4
  br label %if.end.795

if.end.795:                                       ; preds = %while.end.794, %if.end.641
  br label %while.cond.592

while.end.796:                                    ; preds = %while.cond.592
  %541 = load i32, i32* %j, align 4
  %tobool797 = icmp ne i32 %541, 0
  br i1 %tobool797, label %if.then.798, label %if.end.1082

if.then.798:                                      ; preds = %while.end.796
  store i32 0, i32* %strippetite, align 4
  %542 = load i32, i32* %j, align 4
  %sub799 = sub nsw i32 %542, 1
  %idxprom800 = sext i32 %sub799 to i64
  %543 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx801 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %543, i64 %idxprom800
  %rsz802 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx801, i32 0, i32 3
  %544 = load i32, i32* %rsz802, align 4
  %545 = load i32, i32* %grown, align 4
  %cmp803 = icmp ugt i32 %544, %545
  br i1 %cmp803, label %land.lhs.true.805, label %if.end.857

land.lhs.true.805:                                ; preds = %if.then.798
  %546 = load i32, i32* %bufsz.addr, align 4
  %cmp806 = icmp ugt i32 %546, 0
  br i1 %cmp806, label %land.lhs.true.808, label %if.end.857

land.lhs.true.808:                                ; preds = %land.lhs.true.805
  %547 = load i32, i32* %bufsz.addr, align 4
  %cmp809 = icmp ule i32 8, %547
  br i1 %cmp809, label %land.lhs.true.811, label %if.end.857

land.lhs.true.811:                                ; preds = %land.lhs.true.808
  %548 = load i8*, i8** %ddst, align 8
  %549 = load i32, i32* %grown, align 4
  %idx.ext812 = zext i32 %549 to i64
  %idx.neg813 = sub i64 0, %idx.ext812
  %add.ptr814 = getelementptr inbounds i8, i8* %548, i64 %idx.neg813
  %add.ptr815 = getelementptr inbounds i8, i8* %add.ptr814, i64 5
  %add.ptr816 = getelementptr inbounds i8, i8* %add.ptr815, i64 79
  %550 = load i8*, i8** %buf.addr, align 8
  %cmp817 = icmp uge i8* %add.ptr816, %550
  br i1 %cmp817, label %land.lhs.true.819, label %if.end.857

land.lhs.true.819:                                ; preds = %land.lhs.true.811
  %551 = load i8*, i8** %ddst, align 8
  %552 = load i32, i32* %grown, align 4
  %idx.ext820 = zext i32 %552 to i64
  %idx.neg821 = sub i64 0, %idx.ext820
  %add.ptr822 = getelementptr inbounds i8, i8* %551, i64 %idx.neg821
  %add.ptr823 = getelementptr inbounds i8, i8* %add.ptr822, i64 5
  %add.ptr824 = getelementptr inbounds i8, i8* %add.ptr823, i64 79
  %add.ptr825 = getelementptr inbounds i8, i8* %add.ptr824, i64 8
  %553 = load i8*, i8** %buf.addr, align 8
  %554 = load i32, i32* %bufsz.addr, align 4
  %idx.ext826 = zext i32 %554 to i64
  %add.ptr827 = getelementptr inbounds i8, i8* %553, i64 %idx.ext826
  %cmp828 = icmp ule i8* %add.ptr825, %add.ptr827
  br i1 %cmp828, label %land.lhs.true.830, label %if.end.857

land.lhs.true.830:                                ; preds = %land.lhs.true.819
  %555 = load i8*, i8** %ddst, align 8
  %556 = load i32, i32* %grown, align 4
  %idx.ext831 = zext i32 %556 to i64
  %idx.neg832 = sub i64 0, %idx.ext831
  %add.ptr833 = getelementptr inbounds i8, i8* %555, i64 %idx.neg832
  %add.ptr834 = getelementptr inbounds i8, i8* %add.ptr833, i64 5
  %add.ptr835 = getelementptr inbounds i8, i8* %add.ptr834, i64 79
  %add.ptr836 = getelementptr inbounds i8, i8* %add.ptr835, i64 8
  %557 = load i8*, i8** %buf.addr, align 8
  %cmp837 = icmp ugt i8* %add.ptr836, %557
  br i1 %cmp837, label %land.lhs.true.839, label %if.end.857

land.lhs.true.839:                                ; preds = %land.lhs.true.830
  %558 = load i8*, i8** %ddst, align 8
  %559 = load i32, i32* %grown, align 4
  %idx.ext840 = zext i32 %559 to i64
  %idx.neg841 = sub i64 0, %idx.ext840
  %add.ptr842 = getelementptr inbounds i8, i8* %558, i64 %idx.neg841
  %add.ptr843 = getelementptr inbounds i8, i8* %add.ptr842, i64 5
  %add.ptr844 = getelementptr inbounds i8, i8* %add.ptr843, i64 79
  %560 = bitcast i8* %add.ptr844 to i32*
  %561 = load i32, i32* %560, align 4
  %cmp845 = icmp eq i32 %561, 1683931187
  br i1 %cmp845, label %land.lhs.true.847, label %if.end.857

land.lhs.true.847:                                ; preds = %land.lhs.true.839
  %562 = load i8*, i8** %ddst, align 8
  %563 = load i32, i32* %grown, align 4
  %idx.ext848 = zext i32 %563 to i64
  %idx.neg849 = sub i64 0, %idx.ext848
  %add.ptr850 = getelementptr inbounds i8, i8* %562, i64 %idx.neg849
  %add.ptr851 = getelementptr inbounds i8, i8* %add.ptr850, i64 5
  %add.ptr852 = getelementptr inbounds i8, i8* %add.ptr851, i64 79
  %add.ptr853 = getelementptr inbounds i8, i8* %add.ptr852, i64 4
  %564 = bitcast i8* %add.ptr853 to i32*
  %565 = load i32, i32* %564, align 4
  %cmp854 = icmp eq i32 %565, 462100619
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %land.lhs.true.847
  store i32 0, i32* %reloc, align 4
  store i32 1, i32* %strippetite, align 4
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.856, %land.lhs.true.847, %land.lhs.true.839, %land.lhs.true.830, %land.lhs.true.819, %land.lhs.true.811, %land.lhs.true.808, %land.lhs.true.805, %if.then.798
  %566 = load i32, i32* %strippetite, align 4
  %tobool858 = icmp ne i32 %566, 0
  br i1 %tobool858, label %if.end.934, label %land.lhs.true.859

land.lhs.true.859:                                ; preds = %if.end.857
  %567 = load i32, i32* %j, align 4
  %sub860 = sub nsw i32 %567, 1
  %idxprom861 = sext i32 %sub860 to i64
  %568 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx862 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %568, i64 %idxprom861
  %rsz863 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx862, i32 0, i32 3
  %569 = load i32, i32* %rsz863, align 4
  %570 = load i32, i32* %grown, align 4
  %571 = load i32, i32* %skew, align 4
  %add864 = add i32 %570, %571
  %cmp865 = icmp ugt i32 %569, %add864
  br i1 %cmp865, label %land.lhs.true.867, label %if.end.934

land.lhs.true.867:                                ; preds = %land.lhs.true.859
  %572 = load i32, i32* %bufsz.addr, align 4
  %cmp868 = icmp ugt i32 %572, 0
  br i1 %cmp868, label %land.lhs.true.870, label %if.end.934

land.lhs.true.870:                                ; preds = %land.lhs.true.867
  %573 = load i32, i32* %bufsz.addr, align 4
  %cmp871 = icmp ule i32 8, %573
  br i1 %cmp871, label %land.lhs.true.873, label %if.end.934

land.lhs.true.873:                                ; preds = %land.lhs.true.870
  %574 = load i8*, i8** %ddst, align 8
  %575 = load i32, i32* %grown, align 4
  %idx.ext874 = zext i32 %575 to i64
  %idx.neg875 = sub i64 0, %idx.ext874
  %add.ptr876 = getelementptr inbounds i8, i8* %574, i64 %idx.neg875
  %add.ptr877 = getelementptr inbounds i8, i8* %add.ptr876, i64 5
  %add.ptr878 = getelementptr inbounds i8, i8* %add.ptr877, i64 79
  %576 = load i32, i32* %skew, align 4
  %idx.ext879 = zext i32 %576 to i64
  %idx.neg880 = sub i64 0, %idx.ext879
  %add.ptr881 = getelementptr inbounds i8, i8* %add.ptr878, i64 %idx.neg880
  %577 = load i8*, i8** %buf.addr, align 8
  %cmp882 = icmp uge i8* %add.ptr881, %577
  br i1 %cmp882, label %land.lhs.true.884, label %if.end.934

land.lhs.true.884:                                ; preds = %land.lhs.true.873
  %578 = load i8*, i8** %ddst, align 8
  %579 = load i32, i32* %grown, align 4
  %idx.ext885 = zext i32 %579 to i64
  %idx.neg886 = sub i64 0, %idx.ext885
  %add.ptr887 = getelementptr inbounds i8, i8* %578, i64 %idx.neg886
  %add.ptr888 = getelementptr inbounds i8, i8* %add.ptr887, i64 5
  %add.ptr889 = getelementptr inbounds i8, i8* %add.ptr888, i64 79
  %580 = load i32, i32* %skew, align 4
  %idx.ext890 = zext i32 %580 to i64
  %idx.neg891 = sub i64 0, %idx.ext890
  %add.ptr892 = getelementptr inbounds i8, i8* %add.ptr889, i64 %idx.neg891
  %add.ptr893 = getelementptr inbounds i8, i8* %add.ptr892, i64 8
  %581 = load i8*, i8** %buf.addr, align 8
  %582 = load i32, i32* %bufsz.addr, align 4
  %idx.ext894 = zext i32 %582 to i64
  %add.ptr895 = getelementptr inbounds i8, i8* %581, i64 %idx.ext894
  %cmp896 = icmp ule i8* %add.ptr893, %add.ptr895
  br i1 %cmp896, label %land.lhs.true.898, label %if.end.934

land.lhs.true.898:                                ; preds = %land.lhs.true.884
  %583 = load i8*, i8** %ddst, align 8
  %584 = load i32, i32* %grown, align 4
  %idx.ext899 = zext i32 %584 to i64
  %idx.neg900 = sub i64 0, %idx.ext899
  %add.ptr901 = getelementptr inbounds i8, i8* %583, i64 %idx.neg900
  %add.ptr902 = getelementptr inbounds i8, i8* %add.ptr901, i64 5
  %add.ptr903 = getelementptr inbounds i8, i8* %add.ptr902, i64 79
  %585 = load i32, i32* %skew, align 4
  %idx.ext904 = zext i32 %585 to i64
  %idx.neg905 = sub i64 0, %idx.ext904
  %add.ptr906 = getelementptr inbounds i8, i8* %add.ptr903, i64 %idx.neg905
  %add.ptr907 = getelementptr inbounds i8, i8* %add.ptr906, i64 8
  %586 = load i8*, i8** %buf.addr, align 8
  %cmp908 = icmp ugt i8* %add.ptr907, %586
  br i1 %cmp908, label %land.lhs.true.910, label %if.end.934

land.lhs.true.910:                                ; preds = %land.lhs.true.898
  %587 = load i8*, i8** %ddst, align 8
  %588 = load i32, i32* %grown, align 4
  %idx.ext911 = zext i32 %588 to i64
  %idx.neg912 = sub i64 0, %idx.ext911
  %add.ptr913 = getelementptr inbounds i8, i8* %587, i64 %idx.neg912
  %add.ptr914 = getelementptr inbounds i8, i8* %add.ptr913, i64 5
  %add.ptr915 = getelementptr inbounds i8, i8* %add.ptr914, i64 79
  %589 = load i32, i32* %skew, align 4
  %idx.ext916 = zext i32 %589 to i64
  %idx.neg917 = sub i64 0, %idx.ext916
  %add.ptr918 = getelementptr inbounds i8, i8* %add.ptr915, i64 %idx.neg917
  %590 = bitcast i8* %add.ptr918 to i32*
  %591 = load i32, i32* %590, align 4
  %cmp919 = icmp eq i32 %591, 1683931187
  br i1 %cmp919, label %land.lhs.true.921, label %if.end.934

land.lhs.true.921:                                ; preds = %land.lhs.true.910
  %592 = load i8*, i8** %ddst, align 8
  %593 = load i32, i32* %grown, align 4
  %idx.ext922 = zext i32 %593 to i64
  %idx.neg923 = sub i64 0, %idx.ext922
  %add.ptr924 = getelementptr inbounds i8, i8* %592, i64 %idx.neg923
  %add.ptr925 = getelementptr inbounds i8, i8* %add.ptr924, i64 5
  %add.ptr926 = getelementptr inbounds i8, i8* %add.ptr925, i64 79
  %add.ptr927 = getelementptr inbounds i8, i8* %add.ptr926, i64 4
  %594 = load i32, i32* %skew, align 4
  %idx.ext928 = zext i32 %594 to i64
  %idx.neg929 = sub i64 0, %idx.ext928
  %add.ptr930 = getelementptr inbounds i8, i8* %add.ptr927, i64 %idx.neg929
  %595 = bitcast i8* %add.ptr930 to i32*
  %596 = load i32, i32* %595, align 4
  %cmp931 = icmp eq i32 %596, 462100619
  br i1 %cmp931, label %if.then.933, label %if.end.934

if.then.933:                                      ; preds = %land.lhs.true.921
  %597 = load i32, i32* %skew, align 4
  store i32 %597, i32* %reloc, align 4
  store i32 1, i32* %strippetite, align 4
  br label %if.end.934

if.end.934:                                       ; preds = %if.then.933, %land.lhs.true.921, %land.lhs.true.910, %land.lhs.true.898, %land.lhs.true.884, %land.lhs.true.873, %land.lhs.true.870, %land.lhs.true.867, %land.lhs.true.859, %if.end.857
  %598 = load i32, i32* %strippetite, align 4
  %tobool935 = icmp ne i32 %598, 0
  br i1 %tobool935, label %land.lhs.true.936, label %if.end.1081

land.lhs.true.936:                                ; preds = %if.end.934
  %599 = load i32, i32* %bufsz.addr, align 4
  %cmp937 = icmp ugt i32 %599, 0
  br i1 %cmp937, label %land.lhs.true.939, label %if.end.1081

land.lhs.true.939:                                ; preds = %land.lhs.true.936
  %600 = load i32, i32* %bufsz.addr, align 4
  %cmp940 = icmp ule i32 8, %600
  br i1 %cmp940, label %land.lhs.true.942, label %if.end.1081

land.lhs.true.942:                                ; preds = %land.lhs.true.939
  %601 = load i8*, i8** %ddst, align 8
  %602 = load i32, i32* %grown, align 4
  %idx.ext943 = zext i32 %602 to i64
  %idx.neg944 = sub i64 0, %idx.ext943
  %add.ptr945 = getelementptr inbounds i8, i8* %601, i64 %idx.neg944
  %add.ptr946 = getelementptr inbounds i8, i8* %add.ptr945, i64 15
  %add.ptr947 = getelementptr inbounds i8, i8* %add.ptr946, i64 -8
  %603 = load i32, i32* %reloc, align 4
  %idx.ext948 = zext i32 %603 to i64
  %idx.neg949 = sub i64 0, %idx.ext948
  %add.ptr950 = getelementptr inbounds i8, i8* %add.ptr947, i64 %idx.neg949
  %604 = load i8*, i8** %buf.addr, align 8
  %cmp951 = icmp uge i8* %add.ptr950, %604
  br i1 %cmp951, label %land.lhs.true.953, label %if.end.1081

land.lhs.true.953:                                ; preds = %land.lhs.true.942
  %605 = load i8*, i8** %ddst, align 8
  %606 = load i32, i32* %grown, align 4
  %idx.ext954 = zext i32 %606 to i64
  %idx.neg955 = sub i64 0, %idx.ext954
  %add.ptr956 = getelementptr inbounds i8, i8* %605, i64 %idx.neg955
  %add.ptr957 = getelementptr inbounds i8, i8* %add.ptr956, i64 15
  %add.ptr958 = getelementptr inbounds i8, i8* %add.ptr957, i64 -8
  %607 = load i32, i32* %reloc, align 4
  %idx.ext959 = zext i32 %607 to i64
  %idx.neg960 = sub i64 0, %idx.ext959
  %add.ptr961 = getelementptr inbounds i8, i8* %add.ptr958, i64 %idx.neg960
  %add.ptr962 = getelementptr inbounds i8, i8* %add.ptr961, i64 8
  %608 = load i8*, i8** %buf.addr, align 8
  %609 = load i32, i32* %bufsz.addr, align 4
  %idx.ext963 = zext i32 %609 to i64
  %add.ptr964 = getelementptr inbounds i8, i8* %608, i64 %idx.ext963
  %cmp965 = icmp ule i8* %add.ptr962, %add.ptr964
  br i1 %cmp965, label %land.lhs.true.967, label %if.end.1081

land.lhs.true.967:                                ; preds = %land.lhs.true.953
  %610 = load i8*, i8** %ddst, align 8
  %611 = load i32, i32* %grown, align 4
  %idx.ext968 = zext i32 %611 to i64
  %idx.neg969 = sub i64 0, %idx.ext968
  %add.ptr970 = getelementptr inbounds i8, i8* %610, i64 %idx.neg969
  %add.ptr971 = getelementptr inbounds i8, i8* %add.ptr970, i64 15
  %add.ptr972 = getelementptr inbounds i8, i8* %add.ptr971, i64 -8
  %612 = load i32, i32* %reloc, align 4
  %idx.ext973 = zext i32 %612 to i64
  %idx.neg974 = sub i64 0, %idx.ext973
  %add.ptr975 = getelementptr inbounds i8, i8* %add.ptr972, i64 %idx.neg974
  %add.ptr976 = getelementptr inbounds i8, i8* %add.ptr975, i64 8
  %613 = load i8*, i8** %buf.addr, align 8
  %cmp977 = icmp ugt i8* %add.ptr976, %613
  br i1 %cmp977, label %if.then.979, label %if.end.1081

if.then.979:                                      ; preds = %land.lhs.true.967
  %614 = load i8*, i8** %ddst, align 8
  %615 = load i32, i32* %grown, align 4
  %idx.ext980 = zext i32 %615 to i64
  %idx.neg981 = sub i64 0, %idx.ext980
  %add.ptr982 = getelementptr inbounds i8, i8* %614, i64 %idx.neg981
  %add.ptr983 = getelementptr inbounds i8, i8* %add.ptr982, i64 15
  %add.ptr984 = getelementptr inbounds i8, i8* %add.ptr983, i64 -8
  %616 = load i32, i32* %reloc, align 4
  %idx.ext985 = zext i32 %616 to i64
  %idx.neg986 = sub i64 0, %idx.ext985
  %add.ptr987 = getelementptr inbounds i8, i8* %add.ptr984, i64 %idx.neg986
  %617 = bitcast i8* %add.ptr987 to i32*
  %618 = load i32, i32* %617, align 4
  %xor988 = xor i32 %618, -1654234710
  store i32 %xor988, i32* %test1, align 4
  %619 = load i8*, i8** %ddst, align 8
  %620 = load i32, i32* %grown, align 4
  %idx.ext989 = zext i32 %620 to i64
  %idx.neg990 = sub i64 0, %idx.ext989
  %add.ptr991 = getelementptr inbounds i8, i8* %619, i64 %idx.neg990
  %add.ptr992 = getelementptr inbounds i8, i8* %add.ptr991, i64 15
  %add.ptr993 = getelementptr inbounds i8, i8* %add.ptr992, i64 -4
  %621 = load i32, i32* %reloc, align 4
  %idx.ext994 = zext i32 %621 to i64
  %idx.neg995 = sub i64 0, %idx.ext994
  %add.ptr996 = getelementptr inbounds i8, i8* %add.ptr993, i64 %idx.neg995
  %622 = bitcast i8* %add.ptr996 to i32*
  %623 = load i32, i32* %622, align 4
  %xor997 = xor i32 %623, -385301373
  store i32 %xor997, i32* %test2, align 4
  %624 = load i32, i32* %j, align 4
  %sub998 = sub nsw i32 %624, 1
  %625 = load i32, i32* %j, align 4
  %sub999 = sub nsw i32 %625, 1
  %idxprom1000 = sext i32 %sub999 to i64
  %626 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx1001 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %626, i64 %idxprom1000
  %rva1002 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1001, i32 0, i32 0
  %627 = load i32, i32* %rva1002, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i32 0, i32 0), i32 %sub998, i32 %627)
  %628 = load i32, i32* %test1, align 4
  %629 = load i32, i32* %test2, align 4
  %cmp1003 = icmp eq i32 %628, %629
  br i1 %cmp1003, label %land.lhs.true.1005, label %if.end.1074

land.lhs.true.1005:                               ; preds = %if.then.979
  %630 = load i32, i32* %bufsz.addr, align 4
  %cmp1006 = icmp ugt i32 %630, 0
  br i1 %cmp1006, label %land.lhs.true.1008, label %if.end.1074

land.lhs.true.1008:                               ; preds = %land.lhs.true.1005
  %631 = load i32, i32* %bufsz.addr, align 4
  %cmp1009 = icmp ule i32 437, %631
  br i1 %cmp1009, label %land.lhs.true.1011, label %if.end.1074

land.lhs.true.1011:                               ; preds = %land.lhs.true.1008
  %632 = load i8*, i8** %ddst, align 8
  %633 = load i32, i32* %grown, align 4
  %idx.ext1012 = zext i32 %633 to i64
  %idx.neg1013 = sub i64 0, %idx.ext1012
  %add.ptr1014 = getelementptr inbounds i8, i8* %632, i64 %idx.neg1013
  %add.ptr1015 = getelementptr inbounds i8, i8* %add.ptr1014, i64 15
  %634 = load i32, i32* %reloc, align 4
  %idx.ext1016 = zext i32 %634 to i64
  %idx.neg1017 = sub i64 0, %idx.ext1016
  %add.ptr1018 = getelementptr inbounds i8, i8* %add.ptr1015, i64 %idx.neg1017
  %635 = load i8*, i8** %buf.addr, align 8
  %cmp1019 = icmp uge i8* %add.ptr1018, %635
  br i1 %cmp1019, label %land.lhs.true.1021, label %if.end.1074

land.lhs.true.1021:                               ; preds = %land.lhs.true.1011
  %636 = load i8*, i8** %ddst, align 8
  %637 = load i32, i32* %grown, align 4
  %idx.ext1022 = zext i32 %637 to i64
  %idx.neg1023 = sub i64 0, %idx.ext1022
  %add.ptr1024 = getelementptr inbounds i8, i8* %636, i64 %idx.neg1023
  %add.ptr1025 = getelementptr inbounds i8, i8* %add.ptr1024, i64 15
  %638 = load i32, i32* %reloc, align 4
  %idx.ext1026 = zext i32 %638 to i64
  %idx.neg1027 = sub i64 0, %idx.ext1026
  %add.ptr1028 = getelementptr inbounds i8, i8* %add.ptr1025, i64 %idx.neg1027
  %add.ptr1029 = getelementptr inbounds i8, i8* %add.ptr1028, i64 448
  %add.ptr1030 = getelementptr inbounds i8, i8* %add.ptr1029, i64 -15
  %add.ptr1031 = getelementptr inbounds i8, i8* %add.ptr1030, i64 4
  %639 = load i8*, i8** %buf.addr, align 8
  %640 = load i32, i32* %bufsz.addr, align 4
  %idx.ext1032 = zext i32 %640 to i64
  %add.ptr1033 = getelementptr inbounds i8, i8* %639, i64 %idx.ext1032
  %cmp1034 = icmp ule i8* %add.ptr1031, %add.ptr1033
  br i1 %cmp1034, label %land.lhs.true.1036, label %if.end.1074

land.lhs.true.1036:                               ; preds = %land.lhs.true.1021
  %641 = load i8*, i8** %ddst, align 8
  %642 = load i32, i32* %grown, align 4
  %idx.ext1037 = zext i32 %642 to i64
  %idx.neg1038 = sub i64 0, %idx.ext1037
  %add.ptr1039 = getelementptr inbounds i8, i8* %641, i64 %idx.neg1038
  %add.ptr1040 = getelementptr inbounds i8, i8* %add.ptr1039, i64 15
  %643 = load i32, i32* %reloc, align 4
  %idx.ext1041 = zext i32 %643 to i64
  %idx.neg1042 = sub i64 0, %idx.ext1041
  %add.ptr1043 = getelementptr inbounds i8, i8* %add.ptr1040, i64 %idx.neg1042
  %add.ptr1044 = getelementptr inbounds i8, i8* %add.ptr1043, i64 448
  %add.ptr1045 = getelementptr inbounds i8, i8* %add.ptr1044, i64 -15
  %add.ptr1046 = getelementptr inbounds i8, i8* %add.ptr1045, i64 4
  %644 = load i8*, i8** %buf.addr, align 8
  %cmp1047 = icmp ugt i8* %add.ptr1046, %644
  br i1 %cmp1047, label %if.then.1049, label %if.end.1074

if.then.1049:                                     ; preds = %land.lhs.true.1036
  %645 = load i8*, i8** %ddst, align 8
  %646 = load i32, i32* %grown, align 4
  %idx.ext1050 = zext i32 %646 to i64
  %idx.neg1051 = sub i64 0, %idx.ext1050
  %add.ptr1052 = getelementptr inbounds i8, i8* %645, i64 %idx.neg1051
  %add.ptr1053 = getelementptr inbounds i8, i8* %add.ptr1052, i64 289
  %647 = load i32, i32* %reloc, align 4
  %idx.ext1054 = zext i32 %647 to i64
  %idx.neg1055 = sub i64 0, %idx.ext1054
  %add.ptr1056 = getelementptr inbounds i8, i8* %add.ptr1053, i64 %idx.neg1055
  %648 = bitcast i8* %add.ptr1056 to i32*
  %649 = load i32, i32* %648, align 4
  store i32 %649, i32* %irva, align 4
  %650 = load i8*, i8** %ddst, align 8
  %651 = load i32, i32* %grown, align 4
  %idx.ext1057 = zext i32 %651 to i64
  %idx.neg1058 = sub i64 0, %idx.ext1057
  %add.ptr1059 = getelementptr inbounds i8, i8* %650, i64 %idx.neg1058
  %add.ptr1060 = getelementptr inbounds i8, i8* %add.ptr1059, i64 15
  %652 = load i32, i32* %reloc, align 4
  %idx.ext1061 = zext i32 %652 to i64
  %idx.neg1062 = sub i64 0, %idx.ext1061
  %add.ptr1063 = getelementptr inbounds i8, i8* %add.ptr1060, i64 %idx.neg1062
  %653 = bitcast i8* %add.ptr1063 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* %test1, align 4
  %xor1064 = xor i32 %654, %655
  store i32 %xor1064, i32* %enc_ep, align 4
  %656 = load i8*, i8** %ddst, align 8
  %657 = load i32, i32* %grown, align 4
  %idx.ext1065 = zext i32 %657 to i64
  %idx.neg1066 = sub i64 0, %idx.ext1065
  %add.ptr1067 = getelementptr inbounds i8, i8* %656, i64 %idx.neg1066
  %add.ptr1068 = getelementptr inbounds i8, i8* %add.ptr1067, i64 448
  %658 = load i32, i32* %reloc, align 4
  %idx.ext1069 = zext i32 %658 to i64
  %idx.neg1070 = sub i64 0, %idx.ext1069
  %add.ptr1071 = getelementptr inbounds i8, i8* %add.ptr1068, i64 %idx.neg1070
  %659 = bitcast i8* %add.ptr1071 to i32*
  %660 = load i32, i32* %659, align 4
  %cmp1072 = icmp ne i32 %660, -1869574000
  %conv1073 = zext i1 %cmp1072 to i32
  store i32 %conv1073, i32* %mangled, align 4
  %661 = load i32, i32* %enc_ep, align 4
  %662 = load i32, i32* %irva, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i32 %661, i32 %662)
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.then.1049, %land.lhs.true.1036, %land.lhs.true.1021, %land.lhs.true.1011, %land.lhs.true.1008, %land.lhs.true.1005, %if.then.979
  %663 = load i32, i32* %grown, align 4
  %664 = load i32, i32* %reloc, align 4
  %add1075 = add i32 %663, %664
  %665 = load i32, i32* %j, align 4
  %sub1076 = sub nsw i32 %665, 1
  %idxprom1077 = sext i32 %sub1076 to i64
  %666 = load %struct.cli_exe_section*, %struct.cli_exe_section** %usects, align 8
  %arrayidx1078 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %666, i64 %idxprom1077
  %rsz1079 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1078, i32 0, i32 3
  %667 = load i32, i32* %rsz1079, align 4
  %sub1080 = sub i32 %667, %add1075
  store i32 %sub1080, i32* %rsz1079, align 4
  br label %if.end.1081

if.end.1081:                                      ; preds = %if.end.1074, %land.lhs.true.967, %land.lhs.true.953, %land.lhs.true.942, %land.lhs.true.939, %land.lhs.true.936, %if.end.934
  br label %if.end.1082

if.end.1082:                                      ; preds = %if.end.1081, %while.end.796
  %668 = load i32, i32* %check4resources, align 4
  %inc1083 = add nsw i32 %668, 1
  store i32 %inc1083, i32* %check4resources, align 4
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.end.1082, %if.end.421
  br label %while.body

return:                                           ; preds = %if.then.785, %if.then.722, %if.then.715, %if.then.703, %if.then.696, %if.then.676, %if.then.662, %if.then.655, %if.then.640, %if.then.599, %if.then.588, %if.end.467, %if.then.457, %if.end.450, %if.end.420, %if.end.344, %if.end.314, %if.then.313, %if.then.33, %if.end.28
  %669 = load i32, i32* %retval
  ret i32 %669
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #2

declare i8* @cli_realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @doubledl(i8** %scur, i8* %mydlptr, i8* %buffer, i32 %buffersize) #0 {
entry:
  %retval = alloca i32, align 4
  %scur.addr = alloca i8**, align 8
  %mydlptr.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i32, align 4
  %mydl = alloca i8, align 1
  %olddl = alloca i8, align 1
  store i8** %scur, i8*** %scur.addr, align 8
  store i8* %mydlptr, i8** %mydlptr.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %buffersize, i32* %buffersize.addr, align 4
  %0 = load i8*, i8** %mydlptr.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %mydl, align 1
  %2 = load i8, i8* %mydl, align 1
  store i8 %2, i8* %olddl, align 1
  %3 = load i8, i8* %mydl, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, 2
  %conv1 = trunc i32 %mul to i8
  store i8 %conv1, i8* %mydl, align 1
  %4 = load i8, i8* %olddl, align 1
  %conv2 = zext i8 %4 to i32
  %and = and i32 %conv2, 127
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %scur.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %buffer.addr, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8**, i8*** %scur.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i32, i32* %buffersize.addr, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp5 = icmp uge i8* %9, %add.ptr4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i8**, i8*** %scur.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %olddl, align 1
  %15 = load i8, i8* %olddl, align 1
  %conv8 = zext i8 %15 to i32
  %mul9 = mul nsw i32 %conv8, 2
  %add = add nsw i32 %mul9, 1
  %conv10 = trunc i32 %add to i8
  store i8 %conv10, i8* %mydl, align 1
  %16 = load i8**, i8*** %scur.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8**, i8*** %scur.addr, align 8
  store i8* %add.ptr11, i8** %18, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %19 = load i8, i8* %mydl, align 1
  %20 = load i8*, i8** %mydlptr.addr, align 8
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* %olddl, align 1
  %conv13 = zext i8 %21 to i32
  %shr = ashr i32 %conv13, 7
  %and14 = and i32 %shr, 1
  store i32 %and14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7
  %22 = load i32, i32* %retval
  ret i32 %22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
