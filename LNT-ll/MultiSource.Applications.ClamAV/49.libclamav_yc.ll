; ModuleID = './MultiSource.Applications.ClamAV/49.libclamav_yc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pe_image_file_hdr = type { i32, i16, i16, i32, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [37 x i8] c"yC: decrypting decryptor on sect %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"yC: decrypting sect%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"yC: Cannot write unpacked file\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"yC: Unhandled opcode %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @yc_decrypt(i8* %fbuf, i32 %filesize, %struct.cli_exe_section* %sections, i32 %sectcount, i32 %peoffset, i32 %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %fbuf.addr = alloca i8*, align 8
  %filesize.addr = alloca i32, align 4
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sectcount.addr = alloca i32, align 4
  %peoffset.addr = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ycsect = alloca i32, align 4
  %i = alloca i32, align 4
  %pe = alloca %struct.pe_image_file_hdr*, align 8
  %sname = alloca i8*, align 8
  %name = alloca i32, align 4
  store i8* %fbuf, i8** %fbuf.addr, align 8
  store i32 %filesize, i32* %filesize.addr, align 4
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i32 %sectcount, i32* %sectcount.addr, align 4
  store i32 %peoffset, i32* %peoffset.addr, align 4
  store i32 %desc, i32* %desc.addr, align 4
  %0 = load i32, i32* %sectcount.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1, i64 %idxprom
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %raw, align 4
  store i32 %2, i32* %ycsect, align 4
  %3 = load i8*, i8** %fbuf.addr, align 8
  %4 = load i32, i32* %peoffset.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to %struct.pe_image_file_hdr*
  store %struct.pe_image_file_hdr* %5, %struct.pe_image_file_hdr** %pe, align 8
  %6 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %7 = bitcast %struct.pe_image_file_hdr* %6 to i8*
  %8 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %SizeOfOptionalHeader = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %8, i32 0, i32 6
  %9 = load i16, i16* %SizeOfOptionalHeader, align 2
  %conv = zext i16 %9 to i32
  %idx.ext1 = sext i32 %conv to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr2, i64 24
  store i8* %add.ptr3, i8** %sname, align 8
  %10 = load i32, i32* %sectcount.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %10)
  %11 = load i8*, i8** %fbuf.addr, align 8
  %12 = load i32, i32* %ycsect, align 4
  %idx.ext4 = zext i32 %12 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 %idx.ext4
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 147
  %13 = load i8*, i8** %fbuf.addr, align 8
  %14 = load i32, i32* %ycsect, align 4
  %idx.ext7 = zext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %13, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 198
  %call = call i32 @yc_poly_emulator(i8* %add.ptr6, i8* %add.ptr9, i32 2967)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %sectcount.addr, align 4
  %idxprom10 = zext i32 %15 to i64
  %16 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %16, i64 %idxprom10
  %ursz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx11, i32 0, i32 8
  %17 = load i32, i32* %ursz, align 4
  %18 = load i32, i32* %filesize.addr, align 4
  %sub = sub i32 %18, %17
  store i32 %sub, i32* %filesize.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %sectcount.addr, align 4
  %cmp = icmp ult i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %sname, align 8
  %22 = load i32, i32* %i, align 4
  %mul = mul i32 %22, 40
  %idx.ext13 = zext i32 %mul to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 %idx.ext13
  %23 = bitcast i8* %add.ptr14 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %name, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %25 to i64
  %26 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %26, i64 %idxprom15
  %raw17 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx16, i32 0, i32 2
  %27 = load i32, i32* %raw17, align 4
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %lor.lhs.false, label %if.then.49

lor.lhs.false:                                    ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %28 to i64
  %29 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %29, i64 %idxprom19
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx20, i32 0, i32 3
  %30 = load i32, i32* %rsz, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %lor.lhs.false.22, label %if.then.49

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %name, align 4
  %cmp23 = icmp eq i32 %31, 1668445042
  br i1 %cmp23, label %if.then.49, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.22
  %32 = load i32, i32* %name, align 4
  %cmp26 = icmp eq i32 %32, 1920168494
  br i1 %cmp26, label %if.then.49, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %33 = load i32, i32* %name, align 4
  %cmp29 = icmp eq i32 %33, 1869374834
  br i1 %cmp29, label %if.then.49, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %34 = load i32, i32* %name, align 4
  %cmp32 = icmp eq i32 %34, 1818587694
  br i1 %cmp32, label %if.then.49, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %35 = load i32, i32* %name, align 4
  %cmp35 = icmp eq i32 %35, 1633969454
  br i1 %cmp35, label %if.then.49, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %36 = load i32, i32* %name, align 4
  %cmp38 = icmp eq i32 %36, 1633972782
  br i1 %cmp38, label %if.then.49, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %37 = load i32, i32* %name, align 4
  %cmp41 = icmp eq i32 %37, 1633970478
  br i1 %cmp41, label %if.then.49, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %38 = load i32, i32* %name, align 4
  %cmp44 = icmp eq i32 %38, 1936487470
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.43
  %39 = load i32, i32* %name, align 4
  %and = and i32 %39, 65535
  %cmp47 = icmp eq i32 %and, 17273
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.43, %lor.lhs.false.40, %lor.lhs.false.37, %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.22, %lor.lhs.false, %for.body
  br label %for.inc

if.end.50:                                        ; preds = %lor.lhs.false.46
  %40 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %40)
  %41 = load i8*, i8** %fbuf.addr, align 8
  %42 = load i32, i32* %ycsect, align 4
  %idx.ext51 = zext i32 %42 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %41, i64 %idx.ext51
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 1111
  %43 = load i8*, i8** %fbuf.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %44 to i64
  %45 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %45, i64 %idxprom54
  %raw56 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx55, i32 0, i32 2
  %46 = load i32, i32* %raw56, align 4
  %idx.ext57 = zext i32 %46 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %43, i64 %idx.ext57
  %47 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %47 to i64
  %48 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %48, i64 %idxprom59
  %ursz61 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx60, i32 0, i32 8
  %49 = load i32, i32* %ursz61, align 4
  %call62 = call i32 @yc_poly_emulator(i8* %add.ptr53, i8* %add.ptr58, i32 %49)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.50
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.65, %if.then.49
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %sectcount.addr, align 4
  %conv66 = trunc i32 %51 to i16
  %52 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %NumberOfSections = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %52, i32 0, i32 2
  store i16 %conv66, i16* %NumberOfSections, align 2
  %53 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %54 = bitcast %struct.pe_image_file_hdr* %53 to i8*
  %add.ptr67 = getelementptr inbounds i8, i8* %54, i64 24
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr67, i64 104
  call void @llvm.memset.p0i8.i64(i8* %add.ptr68, i8 0, i64 8, i32 1, i1 false)
  %55 = load i8*, i8** %fbuf.addr, align 8
  %56 = load i32, i32* %ycsect, align 4
  %idx.ext69 = zext i32 %56 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %55, i64 %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 2575
  %57 = bitcast i8* %add.ptr71 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %60 = bitcast %struct.pe_image_file_hdr* %59 to i8*
  %add.ptr72 = getelementptr inbounds i8, i8* %60, i64 24
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 16
  %61 = bitcast i8* %add.ptr73 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %63 = bitcast %struct.pe_image_file_hdr* %62 to i8*
  %add.ptr74 = getelementptr inbounds i8, i8* %63, i64 24
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 56
  %64 = bitcast i8* %add.ptr75 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %sectcount.addr, align 4
  %idxprom76 = zext i32 %66 to i64
  %67 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %67, i64 %idxprom76
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx77, i32 0, i32 1
  %68 = load i32, i32* %vsz, align 4
  %sub78 = sub i32 %65, %68
  %69 = load %struct.pe_image_file_hdr*, %struct.pe_image_file_hdr** %pe, align 8
  %70 = bitcast %struct.pe_image_file_hdr* %69 to i8*
  %add.ptr79 = getelementptr inbounds i8, i8* %70, i64 24
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr79, i64 56
  %71 = bitcast i8* %add.ptr80 to i32*
  store i32 %sub78, i32* %71, align 4
  %72 = load i32, i32* %desc.addr, align 4
  %73 = load i8*, i8** %fbuf.addr, align 8
  %74 = load i32, i32* %filesize.addr, align 4
  %call81 = call i32 @cli_writen(i32 %72, i8* %73, i32 %74)
  %cmp82 = icmp eq i32 %call81, -1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.84, %if.then.64, %if.then
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @yc_poly_emulator(i8* %decryptor_offset, i8* %code, i32 %ecx) #0 {
entry:
  %retval = alloca i32, align 4
  %decryptor_offset.addr = alloca i8*, align 8
  %code.addr = alloca i8*, align 8
  %ecx.addr = alloca i32, align 4
  %al = alloca i8, align 1
  %cl = alloca i8, align 1
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %decryptor_offset, i8** %decryptor_offset.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store i32 %ecx, i32* %ecx.addr, align 4
  %0 = load i32, i32* %ecx.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %cl, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.138, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %ecx.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.140

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** %code.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %al, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp3 = icmp ult i32 %6, 48
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %7 = load i32, i32* %j, align 4
  %idxprom6 = zext i32 %7 to i64
  %8 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  switch i32 %conv8, label %sw.default [
    i32 -21, label %sw.bb
    i32 -2, label %sw.bb.12
    i32 42, label %sw.bb.14
    i32 2, label %sw.bb.19
    i32 50, label %sw.bb.25
    i32 4, label %sw.bb.30
    i32 52, label %sw.bb.38
    i32 44, label %sw.bb.46
    i32 -64, label %sw.bb.54
    i32 -46, label %sw.bb.92
    i32 -112, label %sw.bb.130
    i32 -8, label %sw.bb.130
    i32 -7, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %for.body.5
  %10 = load i32, i32* %j, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %j, align 4
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %12 to i64
  %13 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %add = add i32 %11, %conv11
  store i32 %add, i32* %j, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body.5
  %15 = load i8, i8* %al, align 1
  %dec = add i8 %15, -1
  store i8 %dec, i8* %al, align 1
  %16 = load i32, i32* %j, align 4
  %inc13 = add i32 %16, 1
  store i32 %inc13, i32* %j, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body.5
  %17 = load i8, i8* %al, align 1
  %conv15 = zext i8 %17 to i32
  %18 = load i8, i8* %cl, align 1
  %conv16 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv15, %conv16
  %conv17 = trunc i32 %sub to i8
  store i8 %conv17, i8* %al, align 1
  %19 = load i32, i32* %j, align 4
  %inc18 = add i32 %19, 1
  store i32 %inc18, i32* %j, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body.5
  %20 = load i8, i8* %al, align 1
  %conv20 = zext i8 %20 to i32
  %21 = load i8, i8* %cl, align 1
  %conv21 = zext i8 %21 to i32
  %add22 = add nsw i32 %conv20, %conv21
  %conv23 = trunc i32 %add22 to i8
  store i8 %conv23, i8* %al, align 1
  %22 = load i32, i32* %j, align 4
  %inc24 = add i32 %22, 1
  store i32 %inc24, i32* %j, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.body.5
  %23 = load i8, i8* %al, align 1
  %conv26 = zext i8 %23 to i32
  %24 = load i8, i8* %cl, align 1
  %conv27 = zext i8 %24 to i32
  %xor = xor i32 %conv26, %conv27
  %conv28 = trunc i32 %xor to i8
  store i8 %conv28, i8* %al, align 1
  %25 = load i32, i32* %j, align 4
  %inc29 = add i32 %25, 1
  store i32 %inc29, i32* %j, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body.5
  %26 = load i32, i32* %j, align 4
  %inc31 = add i32 %26, 1
  store i32 %inc31, i32* %j, align 4
  %27 = load i8, i8* %al, align 1
  %conv32 = zext i8 %27 to i32
  %28 = load i32, i32* %j, align 4
  %idxprom33 = zext i32 %28 to i64
  %29 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 %idxprom33
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %30 to i32
  %add36 = add nsw i32 %conv32, %conv35
  %conv37 = trunc i32 %add36 to i8
  store i8 %conv37, i8* %al, align 1
  br label %sw.epilog

sw.bb.38:                                         ; preds = %for.body.5
  %31 = load i32, i32* %j, align 4
  %inc39 = add i32 %31, 1
  store i32 %inc39, i32* %j, align 4
  %32 = load i8, i8* %al, align 1
  %conv40 = zext i8 %32 to i32
  %33 = load i32, i32* %j, align 4
  %idxprom41 = zext i32 %33 to i64
  %34 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %34, i64 %idxprom41
  %35 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %35 to i32
  %xor44 = xor i32 %conv40, %conv43
  %conv45 = trunc i32 %xor44 to i8
  store i8 %conv45, i8* %al, align 1
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body.5
  %36 = load i32, i32* %j, align 4
  %inc47 = add i32 %36, 1
  store i32 %inc47, i32* %j, align 4
  %37 = load i8, i8* %al, align 1
  %conv48 = zext i8 %37 to i32
  %38 = load i32, i32* %j, align 4
  %idxprom49 = zext i32 %38 to i64
  %39 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %39, i64 %idxprom49
  %40 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %40 to i32
  %sub52 = sub nsw i32 %conv48, %conv51
  %conv53 = trunc i32 %sub52 to i8
  store i8 %conv53, i8* %al, align 1
  br label %sw.epilog

sw.bb.54:                                         ; preds = %for.body.5
  %41 = load i32, i32* %j, align 4
  %inc55 = add i32 %41, 1
  store i32 %inc55, i32* %j, align 4
  %42 = load i32, i32* %j, align 4
  %idxprom56 = zext i32 %42 to i64
  %43 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %43, i64 %idxprom56
  %44 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %44 to i32
  %cmp59 = icmp eq i32 %conv58, -64
  br i1 %cmp59, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.54
  %45 = load i32, i32* %j, align 4
  %inc61 = add i32 %45, 1
  store i32 %inc61, i32* %j, align 4
  %46 = load i8, i8* %al, align 1
  %conv62 = zext i8 %46 to i32
  %47 = load i32, i32* %j, align 4
  %idxprom63 = zext i32 %47 to i64
  %48 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %48, i64 %idxprom63
  %49 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %49 to i64
  %rem = urem i64 %conv65, 8
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 %conv62, %sh_prom
  %50 = load i8, i8* %al, align 1
  %conv66 = zext i8 %50 to i32
  %51 = load i32, i32* %j, align 4
  %idxprom67 = zext i32 %51 to i64
  %52 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %52, i64 %idxprom67
  %53 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %53 to i64
  %rem70 = urem i64 %conv69, 8
  %sub71 = sub i64 8, %rem70
  %sh_prom72 = trunc i64 %sub71 to i32
  %shr = ashr i32 %conv66, %sh_prom72
  %or = or i32 %shl, %shr
  %conv73 = trunc i32 %or to i8
  store i8 %conv73, i8* %al, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.54
  %54 = load i32, i32* %j, align 4
  %inc74 = add i32 %54, 1
  store i32 %inc74, i32* %j, align 4
  %55 = load i8, i8* %al, align 1
  %conv75 = zext i8 %55 to i32
  %56 = load i32, i32* %j, align 4
  %idxprom76 = zext i32 %56 to i64
  %57 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %57, i64 %idxprom76
  %58 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %58 to i64
  %rem79 = urem i64 %conv78, 8
  %sh_prom80 = trunc i64 %rem79 to i32
  %shr81 = ashr i32 %conv75, %sh_prom80
  %59 = load i8, i8* %al, align 1
  %conv82 = zext i8 %59 to i32
  %60 = load i32, i32* %j, align 4
  %idxprom83 = zext i32 %60 to i64
  %61 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %61, i64 %idxprom83
  %62 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %62 to i64
  %rem86 = urem i64 %conv85, 8
  %sub87 = sub i64 8, %rem86
  %sh_prom88 = trunc i64 %sub87 to i32
  %shl89 = shl i32 %conv82, %sh_prom88
  %or90 = or i32 %shr81, %shl89
  %conv91 = trunc i32 %or90 to i8
  store i8 %conv91, i8* %al, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.92:                                         ; preds = %for.body.5
  %63 = load i32, i32* %j, align 4
  %inc93 = add i32 %63, 1
  store i32 %inc93, i32* %j, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom94 = zext i32 %64 to i64
  %65 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %65, i64 %idxprom94
  %66 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %66 to i32
  %cmp97 = icmp eq i32 %conv96, -56
  br i1 %cmp97, label %if.then.99, label %if.else.114

if.then.99:                                       ; preds = %sw.bb.92
  %67 = load i32, i32* %j, align 4
  %inc100 = add i32 %67, 1
  store i32 %inc100, i32* %j, align 4
  %68 = load i8, i8* %al, align 1
  %conv101 = zext i8 %68 to i32
  %69 = load i8, i8* %cl, align 1
  %conv102 = zext i8 %69 to i64
  %rem103 = urem i64 %conv102, 8
  %sh_prom104 = trunc i64 %rem103 to i32
  %shr105 = ashr i32 %conv101, %sh_prom104
  %70 = load i8, i8* %al, align 1
  %conv106 = zext i8 %70 to i32
  %71 = load i8, i8* %cl, align 1
  %conv107 = zext i8 %71 to i64
  %rem108 = urem i64 %conv107, 8
  %sub109 = sub i64 8, %rem108
  %sh_prom110 = trunc i64 %sub109 to i32
  %shl111 = shl i32 %conv106, %sh_prom110
  %or112 = or i32 %shr105, %shl111
  %conv113 = trunc i32 %or112 to i8
  store i8 %conv113, i8* %al, align 1
  br label %if.end.129

if.else.114:                                      ; preds = %sw.bb.92
  %72 = load i32, i32* %j, align 4
  %inc115 = add i32 %72, 1
  store i32 %inc115, i32* %j, align 4
  %73 = load i8, i8* %al, align 1
  %conv116 = zext i8 %73 to i32
  %74 = load i8, i8* %cl, align 1
  %conv117 = zext i8 %74 to i64
  %rem118 = urem i64 %conv117, 8
  %sh_prom119 = trunc i64 %rem118 to i32
  %shl120 = shl i32 %conv116, %sh_prom119
  %75 = load i8, i8* %al, align 1
  %conv121 = zext i8 %75 to i32
  %76 = load i8, i8* %cl, align 1
  %conv122 = zext i8 %76 to i64
  %rem123 = urem i64 %conv122, 8
  %sub124 = sub i64 8, %rem123
  %sh_prom125 = trunc i64 %sub124 to i32
  %shr126 = ashr i32 %conv121, %sh_prom125
  %or127 = or i32 %shl120, %shr126
  %conv128 = trunc i32 %or127 to i8
  store i8 %conv128, i8* %al, align 1
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.114, %if.then.99
  br label %sw.epilog

sw.bb.130:                                        ; preds = %for.body.5, %for.body.5, %for.body.5
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.5
  %77 = load i32, i32* %j, align 4
  %idxprom131 = zext i32 %77 to i64
  %78 = load i8*, i8** %decryptor_offset.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %78, i64 %idxprom131
  %79 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %79 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %conv133)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.130, %if.end.129, %if.end, %sw.bb.46, %sw.bb.38, %sw.bb.30, %sw.bb.25, %sw.bb.19, %sw.bb.14, %sw.bb.12, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %80 = load i32, i32* %j, align 4
  %inc134 = add i32 %80, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %81 = load i8, i8* %cl, align 1
  %dec135 = add i8 %81, -1
  store i8 %dec135, i8* %cl, align 1
  %82 = load i8, i8* %al, align 1
  %83 = load i32, i32* %i, align 4
  %idxprom136 = zext i32 %83 to i64
  %84 = load i8*, i8** %code.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %84, i64 %idxprom136
  store i8 %82, i8* %arrayidx137, align 1
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.end
  %85 = load i32, i32* %i, align 4
  %inc139 = add i32 %85, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond

for.end.140:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.140, %sw.default
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @cli_writen(i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
