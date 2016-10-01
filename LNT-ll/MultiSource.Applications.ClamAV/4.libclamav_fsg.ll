; ModuleID = './MultiSource.Applications.ClamAV/4.libclamav_fsg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"FSG: Rebuilding failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"FSG: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @unfsg_200(i8* %source, i8* %dest, i32 %ssize, i32 %dsize, i32 %rva, i32 %base, i32 %ep, i32 %file) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %rva.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %tsrc = alloca i8*, align 8
  %section = alloca %struct.cli_exe_section, align 4
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 %dsize, i32* %dsize.addr, align 4
  store i32 %rva, i32* %rva.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  %0 = load i8*, i8** %source.addr, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i32, i32* %ssize.addr, align 4
  %3 = load i32, i32* %dsize.addr, align 4
  %call = call i32 @cli_unfsg(i8* %0, i8* %1, i32 %2, i32 %3, i8** null, i8** null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 2
  store i32 0, i32* %raw, align 4
  %4 = load i32, i32* %dsize.addr, align 4
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 3
  store i32 %4, i32* %rsz, align 4
  %5 = load i32, i32* %dsize.addr, align 4
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 1
  store i32 %5, i32* %vsz, align 4
  %6 = load i32, i32* %rva.addr, align 4
  %rva1 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 0
  store i32 %6, i32* %rva1, align 4
  %7 = load i8*, i8** %dest.addr, align 8
  %8 = load i32, i32* %base.addr, align 4
  %9 = load i32, i32* %ep.addr, align 4
  %10 = load i32, i32* %file.addr, align 4
  %call2 = call i32 @cli_rebuildpe(i8* %7, %struct.cli_exe_section* %section, i32 1, i32 %8, i32 %9, i32 0, i32 0, i32 %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @cli_unfsg(i8*, i8*, i32, i32, i8**, i8**) #1

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @unfsg_133(i8* %source, i8* %dest, i32 %ssize, i32 %dsize, %struct.cli_exe_section* %sections, i32 %sectcount, i32 %base, i32 %ep, i32 %file) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sectcount.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %tsrc = alloca i8*, align 8
  %tdst = alloca i8*, align 8
  %i = alloca i32, align 4
  %upd = alloca i32, align 4
  %offs = alloca i32, align 4
  %lastsz = alloca i32, align 4
  %startd = alloca i8*, align 8
  %trva = alloca i32, align 4
  %trsz = alloca i32, align 4
  %traw = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 %dsize, i32* %dsize.addr, align 4
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i32 %sectcount, i32* %sectcount.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  %0 = load i8*, i8** %source.addr, align 8
  store i8* %0, i8** %tsrc, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  store i8* %1, i8** %tdst, align 8
  store i32 1, i32* %upd, align 4
  store i32 0, i32* %offs, align 4
  %2 = load i32, i32* %dsize.addr, align 4
  store i32 %2, i32* %lastsz, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %sectcount.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %tdst, align 8
  store i8* %5, i8** %startd, align 8
  %6 = load i8*, i8** %tsrc, align 8
  %7 = load i8*, i8** %tdst, align 8
  %8 = load i32, i32* %ssize.addr, align 4
  %conv = sext i32 %8 to i64
  %9 = load i8*, i8** %tsrc, align 8
  %10 = load i8*, i8** %source.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv, %sub.ptr.sub
  %conv1 = trunc i64 %sub to i32
  %11 = load i32, i32* %dsize.addr, align 4
  %conv2 = sext i32 %11 to i64
  %12 = load i8*, i8** %tdst, align 8
  %13 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %13 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %sub6 = sub nsw i64 %conv2, %sub.ptr.sub5
  %conv7 = trunc i64 %sub6 to i32
  %call = call i32 @cli_unfsg(i8* %6, i8* %7, i32 %conv1, i32 %conv7, i8** %tsrc, i8** %tdst)
  %cmp8 = icmp eq i32 %call, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %14 = load i32, i32* %offs, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %16, i64 %idxprom
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 2
  store i32 %14, i32* %raw, align 4
  %17 = load i8*, i8** %tdst, align 8
  %18 = load i8*, i8** %startd, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %18 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv13 = trunc i64 %sub.ptr.sub12 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %20, i64 %idxprom14
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx15, i32 0, i32 3
  store i32 %conv13, i32* %rsz, align 4
  %21 = load i8*, i8** %tdst, align 8
  %22 = load i8*, i8** %startd, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %22 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %23 = load i32, i32* %offs, align 4
  %conv19 = sext i32 %23 to i64
  %add = add nsw i64 %conv19, %sub.ptr.sub18
  %conv20 = trunc i64 %add to i32
  store i32 %conv20, i32* %offs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.79, %for.end
  %25 = load i32, i32* %upd, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %upd, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.77, %while.body
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %sectcount.addr, align 4
  %cmp22 = icmp slt i32 %26, %27
  br i1 %cmp22, label %for.body.24, label %for.end.79

for.body.24:                                      ; preds = %for.cond.21
  %28 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %29, i64 %idxprom25
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx26, i32 0, i32 0
  %30 = load i32, i32* %rva, align 4
  %31 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %31, 1
  %idxprom28 = sext i32 %add27 to i64
  %32 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %32, i64 %idxprom28
  %rva30 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx29, i32 0, i32 0
  %33 = load i32, i32* %rva30, align 4
  %cmp31 = icmp ule i32 %30, %33
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.24
  br label %for.inc.77

if.end.34:                                        ; preds = %for.body.24
  %34 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %35, i64 %idxprom35
  %rva37 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx36, i32 0, i32 0
  %36 = load i32, i32* %rva37, align 4
  store i32 %36, i32* %trva, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %38, i64 %idxprom38
  %raw40 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx39, i32 0, i32 2
  %39 = load i32, i32* %raw40, align 4
  store i32 %39, i32* %traw, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %40 to i64
  %41 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %41, i64 %idxprom41
  %rsz43 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx42, i32 0, i32 3
  %42 = load i32, i32* %rsz43, align 4
  store i32 %42, i32* %trsz, align 4
  %43 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %43, 1
  %idxprom45 = sext i32 %add44 to i64
  %44 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %44, i64 %idxprom45
  %rva47 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx46, i32 0, i32 0
  %45 = load i32, i32* %rva47, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %46 to i64
  %47 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %47, i64 %idxprom48
  %rva50 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx49, i32 0, i32 0
  store i32 %45, i32* %rva50, align 4
  %48 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %48, 1
  %idxprom52 = sext i32 %add51 to i64
  %49 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %49, i64 %idxprom52
  %rsz54 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx53, i32 0, i32 3
  %50 = load i32, i32* %rsz54, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %52, i64 %idxprom55
  %rsz57 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx56, i32 0, i32 3
  store i32 %50, i32* %rsz57, align 4
  %53 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %53, 1
  %idxprom59 = sext i32 %add58 to i64
  %54 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %54, i64 %idxprom59
  %raw61 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx60, i32 0, i32 2
  %55 = load i32, i32* %raw61, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %56 to i64
  %57 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx63 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %57, i64 %idxprom62
  %raw64 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx63, i32 0, i32 2
  store i32 %55, i32* %raw64, align 4
  %58 = load i32, i32* %trva, align 4
  %59 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %59, 1
  %idxprom66 = sext i32 %add65 to i64
  %60 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %60, i64 %idxprom66
  %rva68 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx67, i32 0, i32 0
  store i32 %58, i32* %rva68, align 4
  %61 = load i32, i32* %traw, align 4
  %62 = load i32, i32* %i, align 4
  %add69 = add nsw i32 %62, 1
  %idxprom70 = sext i32 %add69 to i64
  %63 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %63, i64 %idxprom70
  %raw72 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx71, i32 0, i32 2
  store i32 %61, i32* %raw72, align 4
  %64 = load i32, i32* %trsz, align 4
  %65 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %65, 1
  %idxprom74 = sext i32 %add73 to i64
  %66 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %66, i64 %idxprom74
  %rsz76 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx75, i32 0, i32 3
  store i32 %64, i32* %rsz76, align 4
  store i32 1, i32* %upd, align 4
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.34, %if.then.33
  %67 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %67, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.21

for.end.79:                                       ; preds = %for.cond.21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.122, %while.end
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %sectcount.addr, align 4
  %cmp81 = icmp sle i32 %68, %69
  br i1 %cmp81, label %for.body.83, label %for.end.124

for.body.83:                                      ; preds = %for.cond.80
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %sectcount.addr, align 4
  %cmp84 = icmp ne i32 %70, %71
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %for.body.83
  %72 = load i32, i32* %i, align 4
  %add87 = add nsw i32 %72, 1
  %idxprom88 = sext i32 %add87 to i64
  %73 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %73, i64 %idxprom88
  %rva90 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx89, i32 0, i32 0
  %74 = load i32, i32* %rva90, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %75 to i64
  %76 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %76, i64 %idxprom91
  %rva93 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx92, i32 0, i32 0
  %77 = load i32, i32* %rva93, align 4
  %sub94 = sub i32 %74, %77
  %78 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %78 to i64
  %79 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %79, i64 %idxprom95
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx96, i32 0, i32 1
  store i32 %sub94, i32* %vsz, align 4
  %80 = load i32, i32* %i, align 4
  %add97 = add nsw i32 %80, 1
  %idxprom98 = sext i32 %add97 to i64
  %81 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %81, i64 %idxprom98
  %rva100 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx99, i32 0, i32 0
  %82 = load i32, i32* %rva100, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %83 to i64
  %84 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %84, i64 %idxprom101
  %rva103 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx102, i32 0, i32 0
  %85 = load i32, i32* %rva103, align 4
  %sub104 = sub i32 %82, %85
  %86 = load i32, i32* %lastsz, align 4
  %sub105 = sub i32 %86, %sub104
  store i32 %sub105, i32* %lastsz, align 4
  br label %if.end.109

if.else:                                          ; preds = %for.body.83
  %87 = load i32, i32* %lastsz, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %88 to i64
  %89 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %89, i64 %idxprom106
  %vsz108 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx107, i32 0, i32 1
  store i32 %87, i32* %vsz108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.else, %if.then.86
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %91 to i64
  %92 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %92, i64 %idxprom110
  %rva112 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx111, i32 0, i32 0
  %93 = load i32, i32* %rva112, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %94 to i64
  %95 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %95, i64 %idxprom113
  %vsz115 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx114, i32 0, i32 1
  %96 = load i32, i32* %vsz115, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %97 to i64
  %98 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %98, i64 %idxprom116
  %raw118 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx117, i32 0, i32 2
  %99 = load i32, i32* %raw118, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %100 to i64
  %101 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %101, i64 %idxprom119
  %rsz121 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx120, i32 0, i32 3
  %102 = load i32, i32* %rsz121, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %102)
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.109
  %103 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %103, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.80

for.end.124:                                      ; preds = %for.cond.80
  %104 = load i8*, i8** %dest.addr, align 8
  %105 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %106 = load i32, i32* %sectcount.addr, align 4
  %add125 = add nsw i32 %106, 1
  %107 = load i32, i32* %base.addr, align 4
  %108 = load i32, i32* %ep.addr, align 4
  %109 = load i32, i32* %file.addr, align 4
  %call126 = call i32 @cli_rebuildpe(i8* %104, %struct.cli_exe_section* %105, i32 %add125, i32 %107, i32 %108, i32 0, i32 0, i32 %109)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %for.end.124
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.129:                                       ; preds = %for.end.124
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.129, %if.then.128, %if.then
  %110 = load i32, i32* %retval
  ret i32 %110
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
