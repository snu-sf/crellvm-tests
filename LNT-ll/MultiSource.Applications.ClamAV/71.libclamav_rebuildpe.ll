; ModuleID = './MultiSource.Applications.ClamAV/71.libclamav_rebuildpe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.IMAGE_PE_HEADER = type { i32, i16, i16, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [329 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00PE\00\00L\01\FF\FFCLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\FF\FF\FF\FF\00\10\00\00\00\10\00\00\FF\FF\FF\FF\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\00\10\00\00\00\04\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".clam%.2d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_rebuildpe(i8* %buffer, %struct.cli_exe_section* %sections, i32 %sects, i32 %base, i32 %ep, i32 %ResRva, i32 %ResSize, i32 %file) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sects.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %ResRva.addr = alloca i32, align 4
  %ResSize.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %datasize = alloca i32, align 4
  %rawbase = alloca i32, align 4
  %pefile = alloca i8*, align 8
  %curpe = alloca i8*, align 8
  %fakepe = alloca %struct.IMAGE_PE_HEADER*, align 8
  %i = alloca i32, align 4
  %gotghost = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i32 %sects, i32* %sects.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %ResRva, i32* %ResRva.addr, align 4
  store i32 %ResSize, i32* %ResSize.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  store i32 0, i32* %datasize, align 4
  %0 = load i32, i32* %sects.addr, align 4
  %mul = mul nsw i32 40, %0
  %add = add nsw i32 456, %mul
  %div = sdiv i32 %add, 512
  %1 = load i32, i32* %sects.addr, align 4
  %mul1 = mul nsw i32 40, %1
  %add2 = add nsw i32 456, %mul1
  %rem = srem i32 %add2, 512
  %cmp = icmp ne i32 %rem, 0
  %conv = zext i1 %cmp to i32
  %add3 = add nsw i32 %div, %conv
  %mul4 = mul nsw i32 %add3, 512
  store i32 %mul4, i32* %rawbase, align 4
  store i8* null, i8** %pefile, align 8
  %2 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2, i64 0
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %rva, align 4
  %4 = load i32, i32* %rawbase, align 4
  %div5 = udiv i32 %4, 4096
  %5 = load i32, i32* %rawbase, align 4
  %rem6 = urem i32 %5, 4096
  %cmp7 = icmp ne i32 %rem6, 0
  %conv8 = zext i1 %cmp7 to i32
  %add9 = add i32 %div5, %conv8
  %mul10 = mul i32 %add9, 4096
  %cmp11 = icmp ugt i32 %3, %mul10
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %gotghost, align 4
  %6 = load i32, i32* %gotghost, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %sects.addr, align 4
  %add13 = add nsw i32 %7, 1
  %mul14 = mul nsw i32 40, %add13
  %add15 = add nsw i32 456, %mul14
  %div16 = sdiv i32 %add15, 512
  %8 = load i32, i32* %sects.addr, align 4
  %add17 = add nsw i32 %8, 1
  %mul18 = mul nsw i32 40, %add17
  %add19 = add nsw i32 456, %mul18
  %rem20 = srem i32 %add19, 512
  %cmp21 = icmp ne i32 %rem20, 0
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nsw i32 %div16, %conv22
  %mul24 = mul nsw i32 %add23, 512
  store i32 %mul24, i32* %rawbase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %sects.addr, align 4
  %10 = load i32, i32* %gotghost, align 4
  %add25 = add nsw i32 %9, %10
  %cmp26 = icmp sgt i32 %add25, 96
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %sects.addr, align 4
  %cmp30 = icmp slt i32 %11, %12
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %14, i64 %idxprom
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx32, i32 0, i32 3
  %15 = load i32, i32* %rsz, align 4
  %div33 = udiv i32 %15, 512
  %16 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %16 to i64
  %17 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %17, i64 %idxprom34
  %rsz36 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx35, i32 0, i32 3
  %18 = load i32, i32* %rsz36, align 4
  %rem37 = urem i32 %18, 512
  %cmp38 = icmp ne i32 %rem37, 0
  %conv39 = zext i1 %cmp38 to i32
  %add40 = add i32 %div33, %conv39
  %mul41 = mul i32 %add40, 512
  %19 = load i32, i32* %datasize, align 4
  %add42 = add i32 %19, %mul41
  store i32 %add42, i32* %datasize, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %datasize, align 4
  %cmp43 = icmp ugt i32 %21, 184549376
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.end
  %22 = load i32, i32* %rawbase, align 4
  %23 = load i32, i32* %datasize, align 4
  %add47 = add i32 %22, %23
  %conv48 = zext i32 %add47 to i64
  %call = call i8* @cli_calloc(i64 %conv48, i64 1)
  store i8* %call, i8** %pefile, align 8
  %tobool49 = icmp ne i8* %call, null
  br i1 %tobool49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.46
  %24 = load i8*, i8** %pefile, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* getelementptr inbounds ([329 x i8], [329 x i8]* @.str, i32 0, i32 0), i64 328, i32 1, i1 false)
  %25 = load i32, i32* %rawbase, align 4
  %div51 = udiv i32 %25, 4096
  %26 = load i32, i32* %rawbase, align 4
  %rem52 = urem i32 %26, 4096
  %cmp53 = icmp ne i32 %rem52, 0
  %conv54 = zext i1 %cmp53 to i32
  %add55 = add i32 %div51, %conv54
  %mul56 = mul i32 %add55, 4096
  store i32 %mul56, i32* %datasize, align 4
  %27 = load i8*, i8** %pefile, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 208
  %28 = bitcast i8* %add.ptr to %struct.IMAGE_PE_HEADER*
  store %struct.IMAGE_PE_HEADER* %28, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %29 = load i32, i32* %sects.addr, align 4
  %30 = load i32, i32* %gotghost, align 4
  %add57 = add nsw i32 %29, %30
  %conv58 = trunc i32 %add57 to i16
  %31 = load %struct.IMAGE_PE_HEADER*, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %NumberOfSections = getelementptr inbounds %struct.IMAGE_PE_HEADER, %struct.IMAGE_PE_HEADER* %31, i32 0, i32 2
  store i16 %conv58, i16* %NumberOfSections, align 2
  %32 = load i32, i32* %ep.addr, align 4
  %33 = load %struct.IMAGE_PE_HEADER*, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %AddressOfEntryPoint = getelementptr inbounds %struct.IMAGE_PE_HEADER, %struct.IMAGE_PE_HEADER* %33, i32 0, i32 14
  store i32 %32, i32* %AddressOfEntryPoint, align 4
  %34 = load i32, i32* %base.addr, align 4
  %35 = load %struct.IMAGE_PE_HEADER*, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %ImageBase = getelementptr inbounds %struct.IMAGE_PE_HEADER, %struct.IMAGE_PE_HEADER* %35, i32 0, i32 17
  store i32 %34, i32* %ImageBase, align 4
  %36 = load i32, i32* %rawbase, align 4
  %37 = load %struct.IMAGE_PE_HEADER*, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %SizeOfHeaders = getelementptr inbounds %struct.IMAGE_PE_HEADER, %struct.IMAGE_PE_HEADER* %37, i32 0, i32 28
  store i32 %36, i32* %SizeOfHeaders, align 4
  %38 = load i8*, i8** %pefile, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %38, i64 328
  call void @llvm.memset.p0i8.i64(i8* %add.ptr59, i8 0, i64 128, i32 1, i1 false)
  %39 = load i32, i32* %ResRva.addr, align 4
  %40 = load i8*, i8** %pefile, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %40, i64 328
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 16
  %41 = bitcast i8* %add.ptr61 to i32*
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %ResSize.addr, align 4
  %43 = load i8*, i8** %pefile, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %43, i64 328
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr62, i64 20
  %44 = bitcast i8* %add.ptr63 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %pefile, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %45, i64 328
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr64, i64 128
  store i8* %add.ptr65, i8** %curpe, align 8
  %46 = load i32, i32* %gotghost, align 4
  %tobool66 = icmp ne i32 %46, 0
  br i1 %tobool66, label %if.then.67, label %if.end.88

if.then.67:                                       ; preds = %if.then.50
  %47 = load i8*, i8** %curpe, align 8
  %call68 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #2
  %48 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %48, i64 0
  %rva70 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx69, i32 0, i32 0
  %49 = load i32, i32* %rva70, align 4
  %50 = load i32, i32* %datasize, align 4
  %sub = sub i32 %49, %50
  %51 = load i8*, i8** %curpe, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %51, i64 8
  %52 = bitcast i8* %add.ptr71 to i32*
  store i32 %sub, i32* %52, align 4
  %53 = load i32, i32* %datasize, align 4
  %54 = load i8*, i8** %curpe, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %54, i64 12
  %55 = bitcast i8* %add.ptr72 to i32*
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %curpe, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %56, i64 36
  %57 = bitcast i8* %add.ptr73 to i32*
  store i32 -1, i32* %57, align 4
  %58 = load i8*, i8** %curpe, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %58, i64 40
  store i8* %add.ptr74, i8** %curpe, align 8
  %59 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %59, i64 0
  %rva76 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx75, i32 0, i32 0
  %60 = load i32, i32* %rva76, align 4
  %61 = load i32, i32* %datasize, align 4
  %sub77 = sub i32 %60, %61
  %div78 = udiv i32 %sub77, 4096
  %62 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %62, i64 0
  %rva80 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx79, i32 0, i32 0
  %63 = load i32, i32* %rva80, align 4
  %64 = load i32, i32* %datasize, align 4
  %sub81 = sub i32 %63, %64
  %rem82 = urem i32 %sub81, 4096
  %cmp83 = icmp ne i32 %rem82, 0
  %conv84 = zext i1 %cmp83 to i32
  %add85 = add i32 %div78, %conv84
  %mul86 = mul i32 %add85, 4096
  %65 = load i32, i32* %datasize, align 4
  %add87 = add i32 %65, %mul86
  store i32 %add87, i32* %datasize, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.67, %if.then.50
  store i32 0, i32* %i, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.144, %if.end.88
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %sects.addr, align 4
  %cmp90 = icmp slt i32 %66, %67
  br i1 %cmp90, label %for.body.92, label %for.end.146

for.body.92:                                      ; preds = %for.cond.89
  %68 = load i8*, i8** %curpe, align 8
  %69 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %69, 1
  %call94 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %68, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %add93) #2
  %70 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %71, i64 %idxprom95
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx96, i32 0, i32 1
  %72 = load i32, i32* %vsz, align 4
  %73 = load i8*, i8** %curpe, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %73, i64 8
  %74 = bitcast i8* %add.ptr97 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %75 to i64
  %76 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %76, i64 %idxprom98
  %rva100 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx99, i32 0, i32 0
  %77 = load i32, i32* %rva100, align 4
  %78 = load i8*, i8** %curpe, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %78, i64 12
  %79 = bitcast i8* %add.ptr101 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %80 to i64
  %81 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %81, i64 %idxprom102
  %rsz104 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx103, i32 0, i32 3
  %82 = load i32, i32* %rsz104, align 4
  %83 = load i8*, i8** %curpe, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %83, i64 16
  %84 = bitcast i8* %add.ptr105 to i32*
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %rawbase, align 4
  %86 = load i8*, i8** %curpe, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %86, i64 20
  %87 = bitcast i8* %add.ptr106 to i32*
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** %curpe, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %88, i64 36
  %89 = bitcast i8* %add.ptr107 to i32*
  store i32 -1, i32* %89, align 4
  %90 = load i8*, i8** %pefile, align 8
  %91 = load i32, i32* %rawbase, align 4
  %idx.ext = zext i32 %91 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %90, i64 %idx.ext
  %92 = load i8*, i8** %buffer.addr, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %93 to i64
  %94 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %94, i64 %idxprom109
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx110, i32 0, i32 2
  %95 = load i32, i32* %raw, align 4
  %idx.ext111 = zext i32 %95 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %92, i64 %idx.ext111
  %96 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %96 to i64
  %97 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %97, i64 %idxprom113
  %rsz115 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx114, i32 0, i32 3
  %98 = load i32, i32* %rsz115, align 4
  %conv116 = zext i32 %98 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr108, i8* %add.ptr112, i64 %conv116, i32 1, i1 false)
  %99 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %99 to i64
  %100 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %100, i64 %idxprom117
  %rsz119 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx118, i32 0, i32 3
  %101 = load i32, i32* %rsz119, align 4
  %div120 = udiv i32 %101, 512
  %102 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %102 to i64
  %103 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %103, i64 %idxprom121
  %rsz123 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx122, i32 0, i32 3
  %104 = load i32, i32* %rsz123, align 4
  %rem124 = urem i32 %104, 512
  %cmp125 = icmp ne i32 %rem124, 0
  %conv126 = zext i1 %cmp125 to i32
  %add127 = add i32 %div120, %conv126
  %mul128 = mul i32 %add127, 512
  %105 = load i32, i32* %rawbase, align 4
  %add129 = add i32 %105, %mul128
  store i32 %add129, i32* %rawbase, align 4
  %106 = load i8*, i8** %curpe, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %106, i64 40
  store i8* %add.ptr130, i8** %curpe, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %107 to i64
  %108 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx132 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %108, i64 %idxprom131
  %vsz133 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx132, i32 0, i32 1
  %109 = load i32, i32* %vsz133, align 4
  %div134 = udiv i32 %109, 4096
  %110 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %110 to i64
  %111 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %111, i64 %idxprom135
  %vsz137 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx136, i32 0, i32 1
  %112 = load i32, i32* %vsz137, align 4
  %rem138 = urem i32 %112, 4096
  %cmp139 = icmp ne i32 %rem138, 0
  %conv140 = zext i1 %cmp139 to i32
  %add141 = add i32 %div134, %conv140
  %mul142 = mul i32 %add141, 4096
  %113 = load i32, i32* %datasize, align 4
  %add143 = add i32 %113, %mul142
  store i32 %add143, i32* %datasize, align 4
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.92
  %114 = load i32, i32* %i, align 4
  %inc145 = add nsw i32 %114, 1
  store i32 %inc145, i32* %i, align 4
  br label %for.cond.89

for.end.146:                                      ; preds = %for.cond.89
  %115 = load i32, i32* %datasize, align 4
  %116 = load %struct.IMAGE_PE_HEADER*, %struct.IMAGE_PE_HEADER** %fakepe, align 8
  %SizeOfImage = getelementptr inbounds %struct.IMAGE_PE_HEADER, %struct.IMAGE_PE_HEADER* %116, i32 0, i32 27
  store i32 %115, i32* %SizeOfImage, align 4
  br label %if.end.147

if.else:                                          ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.147:                                       ; preds = %for.end.146
  %117 = load i32, i32* %file.addr, align 4
  %118 = load i8*, i8** %pefile, align 8
  %119 = load i32, i32* %rawbase, align 4
  %call148 = call i32 @cli_writen(i32 %117, i8* %118, i32 %119)
  %cmp149 = icmp ne i32 %call148, -1
  %conv150 = zext i1 %cmp149 to i32
  store i32 %conv150, i32* %i, align 4
  %120 = load i8*, i8** %pefile, align 8
  call void @free(i8* %120) #2
  %121 = load i32, i32* %i, align 4
  store i32 %121, i32* %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.else, %if.then.45, %if.then.28
  %122 = load i32, i32* %retval
  ret i32 %122
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
