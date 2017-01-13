; ModuleID = './MultiSource.Applications.ClamAV/79.libclamav_unsp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UNSP = type { i8*, i8*, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"unsp: table size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%x %x %x %x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @unspack(i8* %start_of_stuff, i8* %dest, %struct.cli_ctx* %ctx, i32 %rva, i32 %base, i32 %ep, i32 %file) #0 {
entry:
  %retval = alloca i32, align 4
  %start_of_stuff.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %rva.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %firstbyte = alloca i32, align 4
  %tre = alloca i32, align 4
  %allocsz = alloca i32, align 4
  %tablesz = alloca i32, align 4
  %dsize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %table = alloca i16*, align 8
  %dst = alloca i8*, align 8
  %src = alloca i8*, align 8
  %section = alloca %struct.cli_exe_section, align 4
  store i8* %start_of_stuff, i8** %start_of_stuff.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 %rva, i32* %rva.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  %0 = load i8*, i8** %start_of_stuff.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8*, i8** %dest.addr, align 8
  store i8* %2, i8** %dst, align 8
  %3 = load i8*, i8** %start_of_stuff.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 13
  store i8* %add.ptr, i8** %src, align 8
  %4 = load i8, i8* %c, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 225
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8, i8* %c, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp sge i32 %conv2, 45
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %6 = load i8, i8* %c, align 1
  %conv6 = zext i8 %6 to i32
  %div = sdiv i32 %conv6, 45
  store i32 %div, i32* %i, align 4
  store i32 %div, i32* %firstbyte, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.5
  %7 = load i8, i8* %c, align 1
  %conv7 = zext i8 %7 to i32
  %add = add nsw i32 %conv7, 211
  %conv8 = trunc i32 %add to i8
  store i8 %conv8, i8* %c, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load i32, i32* %i, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.9

if.else:                                          ; preds = %if.end
  store i32 0, i32* %firstbyte, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %do.end
  %9 = load i8, i8* %c, align 1
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp sge i32 %conv10, 9
  br i1 %cmp11, label %if.then.13, label %if.else.24

if.then.13:                                       ; preds = %if.end.9
  %10 = load i8, i8* %c, align 1
  %conv14 = zext i8 %10 to i32
  %div15 = sdiv i32 %conv14, 9
  store i32 %div15, i32* %i, align 4
  store i32 %div15, i32* %allocsz, align 4
  br label %do.body.16

do.body.16:                                       ; preds = %do.cond.20, %if.then.13
  %11 = load i8, i8* %c, align 1
  %conv17 = zext i8 %11 to i32
  %add18 = add nsw i32 %conv17, 247
  %conv19 = trunc i32 %add18 to i8
  store i8 %conv19, i8* %c, align 1
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.16
  %12 = load i32, i32* %i, align 4
  %dec21 = add i32 %12, -1
  store i32 %dec21, i32* %i, align 4
  %tobool22 = icmp ne i32 %dec21, 0
  br i1 %tobool22, label %do.body.16, label %do.end.23

do.end.23:                                        ; preds = %do.cond.20
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.9
  store i32 0, i32* %allocsz, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %do.end.23
  %13 = load i8, i8* %c, align 1
  %conv26 = zext i8 %13 to i32
  store i32 %conv26, i32* %tre, align 4
  %14 = load i32, i32* %allocsz, align 4
  store i32 %14, i32* %i, align 4
  %15 = load i32, i32* %tre, align 4
  %16 = load i32, i32* %i, align 4
  %add27 = add i32 %15, %16
  %and = and i32 %add27, 255
  %conv28 = trunc i32 %and to i8
  store i8 %conv28, i8* %c, align 1
  %17 = load i8, i8* %c, align 1
  %conv29 = zext i8 %17 to i32
  %shl = shl i32 768, %conv29
  %add30 = add nsw i32 %shl, 1846
  %conv31 = sext i32 %add30 to i64
  %mul = mul i64 %conv31, 2
  %conv32 = trunc i64 %mul to i32
  store i32 %conv32, i32* %tablesz, align 4
  %18 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %18, i32 0, i32 4
  %19 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool33 = icmp ne %struct.cl_limits* %19, null
  br i1 %tobool33, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.25
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits34 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 4
  %21 = load %struct.cl_limits*, %struct.cl_limits** %limits34, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %21, i32 0, i32 5
  %22 = load i64, i64* %maxfilesize, align 8
  %tobool35 = icmp ne i64 %22, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %23 = load i32, i32* %tablesz, align 4
  %conv37 = zext i32 %23 to i64
  %24 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits38 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %24, i32 0, i32 4
  %25 = load %struct.cl_limits*, %struct.cl_limits** %limits38, align 8
  %maxfilesize39 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %25, i32 0, i32 5
  %26 = load i64, i64* %maxfilesize39, align 8
  %cmp40 = icmp ugt i64 %conv37, %26
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.36
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true.36, %land.lhs.true, %if.end.25
  %27 = load i32, i32* %tablesz, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %27)
  %28 = load i32, i32* %tablesz, align 4
  %conv44 = zext i32 %28 to i64
  %call = call i8* @cli_malloc(i64 %conv44)
  %29 = bitcast i8* %call to i16*
  store i16* %29, i16** %table, align 8
  %tobool45 = icmp ne i16* %29, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %30 = load i8*, i8** %start_of_stuff.addr, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %30, i64 9
  %31 = bitcast i8* %add.ptr48 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %dsize, align 4
  %33 = load i8*, i8** %start_of_stuff.addr, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %33, i64 5
  %34 = bitcast i8* %add.ptr49 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %ssize, align 4
  %36 = load i32, i32* %ssize, align 4
  %cmp50 = icmp ule i32 %36, 13
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  %37 = load i16*, i16** %table, align 8
  %38 = bitcast i16* %37 to i8*
  call void @free(i8* %38) #3
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  %39 = load i16*, i16** %table, align 8
  %40 = load i32, i32* %tablesz, align 4
  %41 = load i32, i32* %tre, align 4
  %42 = load i32, i32* %allocsz, align 4
  %43 = load i32, i32* %firstbyte, align 4
  %44 = load i8*, i8** %src, align 8
  %45 = load i32, i32* %ssize, align 4
  %46 = load i8*, i8** %dst, align 8
  %47 = load i32, i32* %dsize, align 4
  %call54 = call i32 @very_real_unpack(i16* %39, i32 %40, i32 %41, i32 %42, i32 %43, i8* %44, i32 %45, i8* %46, i32 %47)
  store i32 %call54, i32* %tre, align 4
  %48 = load i16*, i16** %table, align 8
  %49 = bitcast i16* %48 to i8*
  call void @free(i8* %49) #3
  %50 = load i32, i32* %tre, align 4
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.53
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 2
  store i32 0, i32* %raw, align 4
  %51 = load i32, i32* %dsize, align 4
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 3
  store i32 %51, i32* %rsz, align 4
  %52 = load i32, i32* %dsize, align 4
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 1
  store i32 %52, i32* %vsz, align 4
  %53 = load i32, i32* %rva.addr, align 4
  %rva58 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 0
  store i32 %53, i32* %rva58, align 4
  %54 = load i8*, i8** %dest.addr, align 8
  %55 = load i32, i32* %base.addr, align 4
  %56 = load i32, i32* %ep.addr, align 4
  %57 = load i32, i32* %file.addr, align 4
  %call59 = call i32 @cli_rebuildpe(i8* %54, %struct.cli_exe_section* %section, i32 1, i32 %55, i32 %56, i32 0, i32 0, i32 %57)
  %tobool60 = icmp ne i32 %call59, 0
  %lnot = xor i1 %tobool60, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.56, %if.then.52, %if.then.46, %if.then.42, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @very_real_unpack(i16* %table, i32 %tablesz, i32 %tre, i32 %allocsz, i32 %firstbyte, i8* %src, i32 %ssize, i8* %dst, i32 %dsize) #0 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %tablesz.addr = alloca i32, align 4
  %tre.addr = alloca i32, align 4
  %allocsz.addr = alloca i32, align 4
  %firstbyte.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %read_struct = alloca %struct.UNSP, align 8
  %i = alloca i32, align 4
  %previous_bit = alloca i32, align 4
  %unpacked_so_far = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %oldbackbytes = alloca i32, align 4
  %old_oldbackbytes = alloca i32, align 4
  %old_old_oldbackbytes = alloca i32, align 4
  %damian = alloca i32, align 4
  %put = alloca i32, align 4
  %bielle = alloca i32, align 4
  %backsize = alloca i32, align 4
  %tpos = alloca i32, align 4
  %temp = alloca i32, align 4
  %shft = alloca i32, align 4
  %s = alloca i32, align 4
  store i16* %table, i16** %table.addr, align 8
  store i32 %tablesz, i32* %tablesz.addr, align 4
  store i32 %tre, i32* %tre.addr, align 4
  store i32 %allocsz, i32* %allocsz.addr, align 4
  store i32 %firstbyte, i32* %firstbyte.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  %0 = load i32, i32* %allocsz.addr, align 4
  %1 = load i32, i32* %tre.addr, align 4
  %add = add i32 %0, %1
  %and = and i32 %add, 255
  %shl = shl i32 768, %and
  %add1 = add nsw i32 %shl, 1846
  store i32 %add1, i32* %i, align 4
  store i32 0, i32* %previous_bit, align 4
  store i32 0, i32* %unpacked_so_far, align 4
  store i32 1, i32* %backbytes, align 4
  store i32 1, i32* %oldbackbytes, align 4
  store i32 1, i32* %old_oldbackbytes, align 4
  store i32 1, i32* %old_old_oldbackbytes, align 4
  store i32 0, i32* %damian, align 4
  %2 = load i32, i32* %allocsz.addr, align 4
  %and2 = and i32 %2, 255
  %shl3 = shl i32 1, %and2
  %sub = sub nsw i32 %shl3, 1
  store i32 %sub, i32* %put, align 4
  store i32 0, i32* %bielle, align 4
  %3 = load i32, i32* %firstbyte.addr, align 4
  %and4 = and i32 %3, 255
  %shl5 = shl i32 1, %and4
  %sub6 = sub nsw i32 %shl5, 1
  store i32 %sub6, i32* %firstbyte.addr, align 4
  %4 = load i32, i32* %tablesz.addr, align 4
  %conv = zext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %conv7 = zext i32 %5 to i64
  %mul = mul i64 %conv7, 2
  %cmp = icmp ult i64 %conv, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %i, align 4
  %idxprom = zext i32 %dec to i64
  %8 = load i16*, i16** %table.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  store i16 1024, i16* %arrayidx, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %error = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 4
  store i32 0, i32* %error, align 4
  %oldval = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 3
  store i32 0, i32* %oldval, align 4
  %9 = load i8*, i8** %src.addr, align 8
  %src_curr = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 0
  store i8* %9, i8** %src_curr, align 8
  %bitmap = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 2
  store i32 -1, i32* %bitmap, align 4
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i32, i32* %ssize.addr, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 -13
  %src_end = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 1
  store i8* %add.ptr9, i8** %src_end, align 8
  %12 = load i16*, i16** %table.addr, align 8
  %13 = bitcast i16* %12 to i8*
  %table10 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 5
  store i8* %13, i8** %table10, align 8
  %14 = load i32, i32* %tablesz.addr, align 4
  %tablesz11 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 6
  store i32 %14, i32* %tablesz11, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp ult i32 %15, 5
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %oldval14 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 3
  %16 = load i32, i32* %oldval14, align 4
  %shl15 = shl i32 %16, 8
  %call = call i32 @get_byte(%struct.UNSP* %read_struct)
  %or = or i32 %shl15, %call
  %oldval16 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 3
  store i32 %or, i32* %oldval16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %error17 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 4
  %18 = load i32, i32* %error17, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %for.end
  br label %while.body.22

while.body.22:                                    ; preds = %if.end.20, %if.end.134, %if.end.203, %if.end.375
  %19 = load i32, i32* %firstbyte.addr, align 4
  %20 = load i32, i32* %unpacked_so_far, align 4
  %and23 = and i32 %19, %20
  store i32 %and23, i32* %backsize, align 4
  %21 = load i32, i32* %damian, align 4
  store i32 %21, i32* %temp, align 4
  %error24 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %read_struct, i32 0, i32 4
  %22 = load i32, i32* %error24, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %while.body.22
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %while.body.22
  %23 = load i32, i32* %damian, align 4
  %shl28 = shl i32 %23, 4
  %24 = load i32, i32* %backsize, align 4
  %add29 = add i32 %shl28, %24
  %idxprom30 = zext i32 %add29 to i64
  %25 = load i16*, i16** %table.addr, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %25, i64 %idxprom30
  %call32 = call i32 @getbit_from_table(i16* %arrayidx31, %struct.UNSP* %read_struct)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.135, label %if.then.34

if.then.34:                                       ; preds = %if.end.27
  %26 = load i32, i32* %tre.addr, align 4
  %and35 = and i32 %26, 255
  %sub36 = sub i32 8, %and35
  store i32 %sub36, i32* %shft, align 4
  %27 = load i32, i32* %shft, align 4
  %and37 = and i32 %27, 255
  store i32 %and37, i32* %shft, align 4
  %28 = load i32, i32* %bielle, align 4
  %29 = load i32, i32* %shft, align 4
  %shr = lshr i32 %28, %29
  %30 = load i32, i32* %put, align 4
  %31 = load i32, i32* %unpacked_so_far, align 4
  %and38 = and i32 %30, %31
  %32 = load i32, i32* %tre.addr, align 4
  %and39 = and i32 %32, 255
  %shl40 = shl i32 %and38, %and39
  %add41 = add i32 %shr, %shl40
  store i32 %add41, i32* %tpos, align 4
  %33 = load i32, i32* %tpos, align 4
  %mul42 = mul i32 %33, 3
  store i32 %mul42, i32* %tpos, align 4
  %34 = load i32, i32* %tpos, align 4
  %shl43 = shl i32 %34, 8
  store i32 %shl43, i32* %tpos, align 4
  %35 = load i32, i32* %damian, align 4
  %cmp44 = icmp sge i32 %35, 4
  br i1 %cmp44, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.then.34
  %36 = load i32, i32* %damian, align 4
  %cmp47 = icmp sge i32 %36, 10
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.46
  %37 = load i32, i32* %damian, align 4
  %sub50 = sub i32 %37, 6
  store i32 %sub50, i32* %damian, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.46
  %38 = load i32, i32* %damian, align 4
  %sub51 = sub i32 %38, 3
  store i32 %sub51, i32* %damian, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.49
  br label %if.end.54

if.else.53:                                       ; preds = %if.then.34
  store i32 0, i32* %damian, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.end.52
  %39 = load i32, i32* %previous_bit, align 4
  %tobool55 = icmp ne i32 %39, 0
  br i1 %tobool55, label %if.then.56, label %if.else.95

if.then.56:                                       ; preds = %if.end.54
  %40 = load i32, i32* %dsize.addr, align 4
  %cmp57 = icmp ugt i32 %40, 0
  br i1 %cmp57, label %land.lhs.true, label %if.then.83

land.lhs.true:                                    ; preds = %if.then.56
  %41 = load i32, i32* %dsize.addr, align 4
  %cmp59 = icmp ule i32 1, %41
  br i1 %cmp59, label %land.lhs.true.61, label %if.then.83

land.lhs.true.61:                                 ; preds = %land.lhs.true
  %42 = load i32, i32* %unpacked_so_far, align 4
  %43 = load i32, i32* %backbytes, align 4
  %sub62 = sub i32 %42, %43
  %idxprom63 = zext i32 %sub62 to i64
  %44 = load i8*, i8** %dst.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %44, i64 %idxprom63
  %45 = load i8*, i8** %dst.addr, align 8
  %cmp65 = icmp uge i8* %arrayidx64, %45
  br i1 %cmp65, label %land.lhs.true.67, label %if.then.83

land.lhs.true.67:                                 ; preds = %land.lhs.true.61
  %46 = load i32, i32* %unpacked_so_far, align 4
  %47 = load i32, i32* %backbytes, align 4
  %sub68 = sub i32 %46, %47
  %idxprom69 = zext i32 %sub68 to i64
  %48 = load i8*, i8** %dst.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %48, i64 %idxprom69
  %add.ptr71 = getelementptr inbounds i8, i8* %arrayidx70, i64 1
  %49 = load i8*, i8** %dst.addr, align 8
  %50 = load i32, i32* %dsize.addr, align 4
  %idx.ext72 = zext i32 %50 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %49, i64 %idx.ext72
  %cmp74 = icmp ule i8* %add.ptr71, %add.ptr73
  br i1 %cmp74, label %land.lhs.true.76, label %if.then.83

land.lhs.true.76:                                 ; preds = %land.lhs.true.67
  %51 = load i32, i32* %unpacked_so_far, align 4
  %52 = load i32, i32* %backbytes, align 4
  %sub77 = sub i32 %51, %52
  %idxprom78 = zext i32 %sub77 to i64
  %53 = load i8*, i8** %dst.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %53, i64 %idxprom78
  %add.ptr80 = getelementptr inbounds i8, i8* %arrayidx79, i64 1
  %54 = load i8*, i8** %dst.addr, align 8
  %cmp81 = icmp ugt i8* %add.ptr80, %54
  br i1 %cmp81, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.76, %land.lhs.true.67, %land.lhs.true.61, %land.lhs.true, %if.then.56
  store i32 1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.76
  %55 = load i32, i32* %ssize.addr, align 4
  %and85 = and i32 %55, -256
  %56 = load i32, i32* %unpacked_so_far, align 4
  %57 = load i32, i32* %backbytes, align 4
  %sub86 = sub i32 %56, %57
  %idxprom87 = zext i32 %sub86 to i64
  %58 = load i8*, i8** %dst.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %58, i64 %idxprom87
  %59 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %59 to i32
  %or90 = or i32 %and85, %conv89
  store i32 %or90, i32* %ssize.addr, align 4
  %60 = load i32, i32* %tpos, align 4
  %add91 = add i32 %60, 1846
  %idxprom92 = zext i32 %add91 to i64
  %61 = load i16*, i16** %table.addr, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %61, i64 %idxprom92
  %62 = load i32, i32* %ssize.addr, align 4
  %call94 = call i32 @get_100_bits_from_tablesize(i16* %arrayidx93, %struct.UNSP* %read_struct, i32 %62)
  store i32 %call94, i32* %bielle, align 4
  store i32 0, i32* %previous_bit, align 4
  br label %if.end.100

if.else.95:                                       ; preds = %if.end.54
  %63 = load i32, i32* %tpos, align 4
  %add96 = add i32 %63, 1846
  %idxprom97 = zext i32 %add96 to i64
  %64 = load i16*, i16** %table.addr, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %64, i64 %idxprom97
  %call99 = call i32 @get_100_bits_from_table(i16* %arrayidx98, %struct.UNSP* %read_struct)
  store i32 %call99, i32* %bielle, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.95, %if.end.84
  %65 = load i32, i32* %dsize.addr, align 4
  %cmp101 = icmp ugt i32 %65, 0
  br i1 %cmp101, label %land.lhs.true.103, label %if.then.125

land.lhs.true.103:                                ; preds = %if.end.100
  %66 = load i32, i32* %dsize.addr, align 4
  %cmp104 = icmp ule i32 1, %66
  br i1 %cmp104, label %land.lhs.true.106, label %if.then.125

land.lhs.true.106:                                ; preds = %land.lhs.true.103
  %67 = load i32, i32* %unpacked_so_far, align 4
  %idxprom107 = zext i32 %67 to i64
  %68 = load i8*, i8** %dst.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %68, i64 %idxprom107
  %69 = load i8*, i8** %dst.addr, align 8
  %cmp109 = icmp uge i8* %arrayidx108, %69
  br i1 %cmp109, label %land.lhs.true.111, label %if.then.125

land.lhs.true.111:                                ; preds = %land.lhs.true.106
  %70 = load i32, i32* %unpacked_so_far, align 4
  %idxprom112 = zext i32 %70 to i64
  %71 = load i8*, i8** %dst.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %71, i64 %idxprom112
  %add.ptr114 = getelementptr inbounds i8, i8* %arrayidx113, i64 1
  %72 = load i8*, i8** %dst.addr, align 8
  %73 = load i32, i32* %dsize.addr, align 4
  %idx.ext115 = zext i32 %73 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %72, i64 %idx.ext115
  %cmp117 = icmp ule i8* %add.ptr114, %add.ptr116
  br i1 %cmp117, label %land.lhs.true.119, label %if.then.125

land.lhs.true.119:                                ; preds = %land.lhs.true.111
  %74 = load i32, i32* %unpacked_so_far, align 4
  %idxprom120 = zext i32 %74 to i64
  %75 = load i8*, i8** %dst.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %75, i64 %idxprom120
  %add.ptr122 = getelementptr inbounds i8, i8* %arrayidx121, i64 1
  %76 = load i8*, i8** %dst.addr, align 8
  %cmp123 = icmp ugt i8* %add.ptr122, %76
  br i1 %cmp123, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.119, %land.lhs.true.111, %land.lhs.true.106, %land.lhs.true.103, %if.end.100
  store i32 1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %land.lhs.true.119
  %77 = load i32, i32* %bielle, align 4
  %conv127 = trunc i32 %77 to i8
  %78 = load i32, i32* %unpacked_so_far, align 4
  %idxprom128 = zext i32 %78 to i64
  %79 = load i8*, i8** %dst.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %79, i64 %idxprom128
  store i8 %conv127, i8* %arrayidx129, align 1
  %80 = load i32, i32* %unpacked_so_far, align 4
  %inc130 = add i32 %80, 1
  store i32 %inc130, i32* %unpacked_so_far, align 4
  %81 = load i32, i32* %unpacked_so_far, align 4
  %82 = load i32, i32* %dsize.addr, align 4
  %cmp131 = icmp uge i32 %81, %82
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.126
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.126
  br label %while.body.22

if.else.135:                                      ; preds = %if.end.27
  store i32 1, i32* %previous_bit, align 4
  store i32 1, i32* %bielle, align 4
  %83 = load i32, i32* %damian, align 4
  %add136 = add i32 %83, 192
  %idxprom137 = zext i32 %add136 to i64
  %84 = load i16*, i16** %table.addr, align 8
  %arrayidx138 = getelementptr inbounds i16, i16* %84, i64 %idxprom137
  %call139 = call i32 @getbit_from_table(i16* %arrayidx138, %struct.UNSP* %read_struct)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.238

if.then.141:                                      ; preds = %if.else.135
  %85 = load i32, i32* %damian, align 4
  %add142 = add i32 %85, 204
  %idxprom143 = zext i32 %add142 to i64
  %86 = load i16*, i16** %table.addr, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %86, i64 %idxprom143
  %call145 = call i32 @getbit_from_table(i16* %arrayidx144, %struct.UNSP* %read_struct)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.else.213, label %if.then.147

if.then.147:                                      ; preds = %if.then.141
  %87 = load i32, i32* %damian, align 4
  %add148 = add i32 %87, 15
  store i32 %add148, i32* %tpos, align 4
  %88 = load i32, i32* %tpos, align 4
  %shl149 = shl i32 %88, 4
  store i32 %shl149, i32* %tpos, align 4
  %89 = load i32, i32* %backsize, align 4
  %90 = load i32, i32* %tpos, align 4
  %add150 = add i32 %90, %89
  store i32 %add150, i32* %tpos, align 4
  %91 = load i32, i32* %tpos, align 4
  %idxprom151 = zext i32 %91 to i64
  %92 = load i16*, i16** %table.addr, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %92, i64 %idxprom151
  %call153 = call i32 @getbit_from_table(i16* %arrayidx152, %struct.UNSP* %read_struct)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.else.204, label %if.then.155

if.then.155:                                      ; preds = %if.then.147
  %93 = load i32, i32* %unpacked_so_far, align 4
  %tobool156 = icmp ne i32 %93, 0
  br i1 %tobool156, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %if.then.155
  %94 = load i32, i32* %bielle, align 4
  store i32 %94, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.then.155
  %95 = load i32, i32* %damian, align 4
  %cmp159 = icmp sge i32 %95, 7
  %conv160 = zext i1 %cmp159 to i32
  %mul161 = mul nsw i32 2, %conv160
  %add162 = add nsw i32 %mul161, 9
  store i32 %add162, i32* %damian, align 4
  %96 = load i32, i32* %dsize.addr, align 4
  %cmp163 = icmp ugt i32 %96, 0
  br i1 %cmp163, label %land.lhs.true.165, label %if.then.190

land.lhs.true.165:                                ; preds = %if.end.158
  %97 = load i32, i32* %dsize.addr, align 4
  %cmp166 = icmp ule i32 1, %97
  br i1 %cmp166, label %land.lhs.true.168, label %if.then.190

land.lhs.true.168:                                ; preds = %land.lhs.true.165
  %98 = load i32, i32* %unpacked_so_far, align 4
  %99 = load i32, i32* %backbytes, align 4
  %sub169 = sub i32 %98, %99
  %idxprom170 = zext i32 %sub169 to i64
  %100 = load i8*, i8** %dst.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %100, i64 %idxprom170
  %101 = load i8*, i8** %dst.addr, align 8
  %cmp172 = icmp uge i8* %arrayidx171, %101
  br i1 %cmp172, label %land.lhs.true.174, label %if.then.190

land.lhs.true.174:                                ; preds = %land.lhs.true.168
  %102 = load i32, i32* %unpacked_so_far, align 4
  %103 = load i32, i32* %backbytes, align 4
  %sub175 = sub i32 %102, %103
  %idxprom176 = zext i32 %sub175 to i64
  %104 = load i8*, i8** %dst.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %104, i64 %idxprom176
  %add.ptr178 = getelementptr inbounds i8, i8* %arrayidx177, i64 1
  %105 = load i8*, i8** %dst.addr, align 8
  %106 = load i32, i32* %dsize.addr, align 4
  %idx.ext179 = zext i32 %106 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %105, i64 %idx.ext179
  %cmp181 = icmp ule i8* %add.ptr178, %add.ptr180
  br i1 %cmp181, label %land.lhs.true.183, label %if.then.190

land.lhs.true.183:                                ; preds = %land.lhs.true.174
  %107 = load i32, i32* %unpacked_so_far, align 4
  %108 = load i32, i32* %backbytes, align 4
  %sub184 = sub i32 %107, %108
  %idxprom185 = zext i32 %sub184 to i64
  %109 = load i8*, i8** %dst.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %109, i64 %idxprom185
  %add.ptr187 = getelementptr inbounds i8, i8* %arrayidx186, i64 1
  %110 = load i8*, i8** %dst.addr, align 8
  %cmp188 = icmp ugt i8* %add.ptr187, %110
  br i1 %cmp188, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %land.lhs.true.183, %land.lhs.true.174, %land.lhs.true.168, %land.lhs.true.165, %if.end.158
  store i32 1, i32* %retval
  br label %return

if.end.191:                                       ; preds = %land.lhs.true.183
  %111 = load i32, i32* %unpacked_so_far, align 4
  %112 = load i32, i32* %backbytes, align 4
  %sub192 = sub i32 %111, %112
  %idxprom193 = zext i32 %sub192 to i64
  %113 = load i8*, i8** %dst.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %113, i64 %idxprom193
  %114 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %114 to i32
  store i32 %conv195, i32* %bielle, align 4
  %115 = load i32, i32* %bielle, align 4
  %conv196 = trunc i32 %115 to i8
  %116 = load i32, i32* %unpacked_so_far, align 4
  %idxprom197 = zext i32 %116 to i64
  %117 = load i8*, i8** %dst.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %117, i64 %idxprom197
  store i8 %conv196, i8* %arrayidx198, align 1
  %118 = load i32, i32* %unpacked_so_far, align 4
  %inc199 = add i32 %118, 1
  store i32 %inc199, i32* %unpacked_so_far, align 4
  %119 = load i32, i32* %unpacked_so_far, align 4
  %120 = load i32, i32* %dsize.addr, align 4
  %cmp200 = icmp uge i32 %119, %120
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.191
  store i32 0, i32* %retval
  br label %return

if.end.203:                                       ; preds = %if.end.191
  br label %while.body.22

if.else.204:                                      ; preds = %if.then.147
  %121 = load i16*, i16** %table.addr, align 8
  %arrayidx205 = getelementptr inbounds i16, i16* %121, i64 1332
  %122 = load i32, i32* %backsize, align 4
  %call206 = call i32 @get_n_bits_from_tablesize(i16* %arrayidx205, %struct.UNSP* %read_struct, i32 %122)
  store i32 %call206, i32* %backsize, align 4
  %123 = load i32, i32* %damian, align 4
  %cmp207 = icmp sge i32 %123, 7
  %conv208 = zext i1 %cmp207 to i32
  store i32 %conv208, i32* %damian, align 4
  %124 = load i32, i32* %damian, align 4
  %sub209 = sub i32 %124, 1
  %and210 = and i32 %sub209, -3
  %add211 = add i32 %and210, 11
  store i32 %add211, i32* %damian, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.204
  br label %if.end.237

if.else.213:                                      ; preds = %if.then.141
  %125 = load i32, i32* %damian, align 4
  %add214 = add i32 %125, 216
  %idxprom215 = zext i32 %add214 to i64
  %126 = load i16*, i16** %table.addr, align 8
  %arrayidx216 = getelementptr inbounds i16, i16* %126, i64 %idxprom215
  %call217 = call i32 @getbit_from_table(i16* %arrayidx216, %struct.UNSP* %read_struct)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.else.220, label %if.then.219

if.then.219:                                      ; preds = %if.else.213
  %127 = load i32, i32* %oldbackbytes, align 4
  store i32 %127, i32* %tpos, align 4
  br label %if.end.229

if.else.220:                                      ; preds = %if.else.213
  %128 = load i32, i32* %damian, align 4
  %add221 = add i32 %128, 228
  %idxprom222 = zext i32 %add221 to i64
  %129 = load i16*, i16** %table.addr, align 8
  %arrayidx223 = getelementptr inbounds i16, i16* %129, i64 %idxprom222
  %call224 = call i32 @getbit_from_table(i16* %arrayidx223, %struct.UNSP* %read_struct)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.else.227, label %if.then.226

if.then.226:                                      ; preds = %if.else.220
  %130 = load i32, i32* %old_oldbackbytes, align 4
  store i32 %130, i32* %tpos, align 4
  br label %if.end.228

if.else.227:                                      ; preds = %if.else.220
  %131 = load i32, i32* %old_old_oldbackbytes, align 4
  store i32 %131, i32* %tpos, align 4
  %132 = load i32, i32* %old_oldbackbytes, align 4
  store i32 %132, i32* %old_old_oldbackbytes, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.227, %if.then.226
  %133 = load i32, i32* %oldbackbytes, align 4
  store i32 %133, i32* %old_oldbackbytes, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.219
  %134 = load i32, i32* %backbytes, align 4
  store i32 %134, i32* %oldbackbytes, align 4
  %135 = load i32, i32* %tpos, align 4
  store i32 %135, i32* %backbytes, align 4
  %136 = load i16*, i16** %table.addr, align 8
  %arrayidx230 = getelementptr inbounds i16, i16* %136, i64 1332
  %137 = load i32, i32* %backsize, align 4
  %call231 = call i32 @get_n_bits_from_tablesize(i16* %arrayidx230, %struct.UNSP* %read_struct, i32 %137)
  store i32 %call231, i32* %backsize, align 4
  %138 = load i32, i32* %damian, align 4
  %cmp232 = icmp sge i32 %138, 7
  %conv233 = zext i1 %cmp232 to i32
  store i32 %conv233, i32* %damian, align 4
  %139 = load i32, i32* %damian, align 4
  %sub234 = sub i32 %139, 1
  %and235 = and i32 %sub234, -3
  %add236 = add i32 %and235, 11
  store i32 %add236, i32* %damian, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.229, %if.end.212
  br label %if.end.283

if.else.238:                                      ; preds = %if.else.135
  %140 = load i32, i32* %old_oldbackbytes, align 4
  store i32 %140, i32* %old_old_oldbackbytes, align 4
  %141 = load i32, i32* %oldbackbytes, align 4
  store i32 %141, i32* %old_oldbackbytes, align 4
  %142 = load i32, i32* %backbytes, align 4
  store i32 %142, i32* %oldbackbytes, align 4
  %143 = load i32, i32* %damian, align 4
  %cmp239 = icmp sge i32 %143, 7
  %conv240 = zext i1 %cmp239 to i32
  store i32 %conv240, i32* %damian, align 4
  %144 = load i32, i32* %damian, align 4
  %sub241 = sub i32 %144, 1
  %and242 = and i32 %sub241, -3
  %add243 = add i32 %and242, 10
  store i32 %add243, i32* %damian, align 4
  %145 = load i16*, i16** %table.addr, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %145, i64 818
  %146 = load i32, i32* %backsize, align 4
  %call245 = call i32 @get_n_bits_from_tablesize(i16* %arrayidx244, %struct.UNSP* %read_struct, i32 %146)
  store i32 %call245, i32* %backsize, align 4
  %147 = load i32, i32* %backsize, align 4
  %cmp246 = icmp sge i32 %147, 4
  br i1 %cmp246, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.238
  br label %cond.end

cond.false:                                       ; preds = %if.else.238
  %148 = load i32, i32* %backsize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %148, %cond.false ]
  store i32 %cond, i32* %tpos, align 4
  %149 = load i32, i32* %tpos, align 4
  %shl248 = shl i32 %149, 6
  store i32 %shl248, i32* %tpos, align 4
  %150 = load i32, i32* %tpos, align 4
  %add249 = add i32 432, %150
  %idxprom250 = zext i32 %add249 to i64
  %151 = load i16*, i16** %table.addr, align 8
  %arrayidx251 = getelementptr inbounds i16, i16* %151, i64 %idxprom250
  %call252 = call i32 @get_n_bits_from_table(i16* %arrayidx251, i32 6, %struct.UNSP* %read_struct)
  store i32 %call252, i32* %tpos, align 4
  %152 = load i32, i32* %tpos, align 4
  %cmp253 = icmp uge i32 %152, 4
  br i1 %cmp253, label %if.then.255, label %if.else.280

if.then.255:                                      ; preds = %cond.end
  %153 = load i32, i32* %tpos, align 4
  store i32 %153, i32* %s, align 4
  %154 = load i32, i32* %s, align 4
  %shr256 = lshr i32 %154, 1
  store i32 %shr256, i32* %s, align 4
  %155 = load i32, i32* %s, align 4
  %dec257 = add i32 %155, -1
  store i32 %dec257, i32* %s, align 4
  %156 = load i32, i32* %tpos, align 4
  %157 = load i32, i32* %bielle, align 4
  %and258 = and i32 %156, %157
  %or259 = or i32 %and258, 2
  store i32 %or259, i32* %temp, align 4
  %158 = load i32, i32* %s, align 4
  %and260 = and i32 %158, 255
  %159 = load i32, i32* %temp, align 4
  %shl261 = shl i32 %159, %and260
  store i32 %shl261, i32* %temp, align 4
  %160 = load i32, i32* %tpos, align 4
  %cmp262 = icmp slt i32 %160, 14
  br i1 %cmp262, label %if.then.264, label %if.else.271

if.then.264:                                      ; preds = %if.then.255
  %161 = load i32, i32* %temp, align 4
  %162 = load i32, i32* %tpos, align 4
  %sub265 = sub i32 %161, %162
  %add266 = add i32 %sub265, 687
  %idxprom267 = zext i32 %add266 to i64
  %163 = load i16*, i16** %table.addr, align 8
  %arrayidx268 = getelementptr inbounds i16, i16* %163, i64 %idxprom267
  %164 = load i32, i32* %s, align 4
  %call269 = call i32 @get_bb(i16* %arrayidx268, i32 %164, %struct.UNSP* %read_struct)
  %165 = load i32, i32* %temp, align 4
  %add270 = add i32 %165, %call269
  store i32 %add270, i32* %temp, align 4
  br label %if.end.279

if.else.271:                                      ; preds = %if.then.255
  %166 = load i32, i32* %s, align 4
  %add272 = add i32 %166, -4
  store i32 %add272, i32* %s, align 4
  %167 = load i32, i32* %s, align 4
  %call273 = call i32 @get_bitmap(%struct.UNSP* %read_struct, i32 %167)
  store i32 %call273, i32* %tpos, align 4
  %168 = load i32, i32* %tpos, align 4
  %shl274 = shl i32 %168, 4
  store i32 %shl274, i32* %tpos, align 4
  %169 = load i32, i32* %tpos, align 4
  %170 = load i32, i32* %temp, align 4
  %add275 = add i32 %170, %169
  store i32 %add275, i32* %temp, align 4
  %171 = load i16*, i16** %table.addr, align 8
  %arrayidx276 = getelementptr inbounds i16, i16* %171, i64 802
  %call277 = call i32 @get_bb(i16* %arrayidx276, i32 4, %struct.UNSP* %read_struct)
  %172 = load i32, i32* %temp, align 4
  %add278 = add i32 %172, %call277
  store i32 %add278, i32* %temp, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.271, %if.then.264
  br label %if.end.281

if.else.280:                                      ; preds = %cond.end
  %173 = load i32, i32* %tpos, align 4
  store i32 %173, i32* %temp, align 4
  store i32 %173, i32* %backbytes, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.280, %if.end.279
  %174 = load i32, i32* %temp, align 4
  %add282 = add i32 %174, 1
  store i32 %add282, i32* %backbytes, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.281, %if.end.237
  %175 = load i32, i32* %backbytes, align 4
  %tobool284 = icmp ne i32 %175, 0
  br i1 %tobool284, label %if.end.286, label %if.then.285

if.then.285:                                      ; preds = %if.end.283
  store i32 0, i32* %retval
  br label %return

if.end.286:                                       ; preds = %if.end.283
  %176 = load i32, i32* %backbytes, align 4
  %177 = load i32, i32* %unpacked_so_far, align 4
  %cmp287 = icmp ugt i32 %176, %177
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.end.286
  %178 = load i32, i32* %bielle, align 4
  store i32 %178, i32* %retval
  br label %return

if.end.290:                                       ; preds = %if.end.286
  %179 = load i32, i32* %backsize, align 4
  %add291 = add i32 %179, 2
  store i32 %add291, i32* %backsize, align 4
  %180 = load i32, i32* %dsize.addr, align 4
  %cmp292 = icmp ugt i32 %180, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.then.353

land.lhs.true.294:                                ; preds = %if.end.290
  %181 = load i32, i32* %backsize, align 4
  %cmp295 = icmp ugt i32 %181, 0
  br i1 %cmp295, label %land.lhs.true.297, label %if.then.353

land.lhs.true.297:                                ; preds = %land.lhs.true.294
  %182 = load i32, i32* %backsize, align 4
  %183 = load i32, i32* %dsize.addr, align 4
  %cmp298 = icmp ule i32 %182, %183
  br i1 %cmp298, label %land.lhs.true.300, label %if.then.353

land.lhs.true.300:                                ; preds = %land.lhs.true.297
  %184 = load i32, i32* %unpacked_so_far, align 4
  %idxprom301 = zext i32 %184 to i64
  %185 = load i8*, i8** %dst.addr, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %185, i64 %idxprom301
  %186 = load i8*, i8** %dst.addr, align 8
  %cmp303 = icmp uge i8* %arrayidx302, %186
  br i1 %cmp303, label %land.lhs.true.305, label %if.then.353

land.lhs.true.305:                                ; preds = %land.lhs.true.300
  %187 = load i32, i32* %unpacked_so_far, align 4
  %idxprom306 = zext i32 %187 to i64
  %188 = load i8*, i8** %dst.addr, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %188, i64 %idxprom306
  %189 = load i32, i32* %backsize, align 4
  %idx.ext308 = zext i32 %189 to i64
  %add.ptr309 = getelementptr inbounds i8, i8* %arrayidx307, i64 %idx.ext308
  %190 = load i8*, i8** %dst.addr, align 8
  %191 = load i32, i32* %dsize.addr, align 4
  %idx.ext310 = zext i32 %191 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %190, i64 %idx.ext310
  %cmp312 = icmp ule i8* %add.ptr309, %add.ptr311
  br i1 %cmp312, label %land.lhs.true.314, label %if.then.353

land.lhs.true.314:                                ; preds = %land.lhs.true.305
  %192 = load i32, i32* %unpacked_so_far, align 4
  %idxprom315 = zext i32 %192 to i64
  %193 = load i8*, i8** %dst.addr, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %193, i64 %idxprom315
  %194 = load i32, i32* %backsize, align 4
  %idx.ext317 = zext i32 %194 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %arrayidx316, i64 %idx.ext317
  %195 = load i8*, i8** %dst.addr, align 8
  %cmp319 = icmp ugt i8* %add.ptr318, %195
  br i1 %cmp319, label %lor.lhs.false, label %if.then.353

lor.lhs.false:                                    ; preds = %land.lhs.true.314
  %196 = load i32, i32* %dsize.addr, align 4
  %cmp321 = icmp ugt i32 %196, 0
  br i1 %cmp321, label %land.lhs.true.323, label %if.then.353

land.lhs.true.323:                                ; preds = %lor.lhs.false
  %197 = load i32, i32* %backsize, align 4
  %cmp324 = icmp ugt i32 %197, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.then.353

land.lhs.true.326:                                ; preds = %land.lhs.true.323
  %198 = load i32, i32* %backsize, align 4
  %199 = load i32, i32* %dsize.addr, align 4
  %cmp327 = icmp ule i32 %198, %199
  br i1 %cmp327, label %land.lhs.true.329, label %if.then.353

land.lhs.true.329:                                ; preds = %land.lhs.true.326
  %200 = load i32, i32* %unpacked_so_far, align 4
  %201 = load i32, i32* %backbytes, align 4
  %sub330 = sub i32 %200, %201
  %idxprom331 = zext i32 %sub330 to i64
  %202 = load i8*, i8** %dst.addr, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %202, i64 %idxprom331
  %203 = load i8*, i8** %dst.addr, align 8
  %cmp333 = icmp uge i8* %arrayidx332, %203
  br i1 %cmp333, label %land.lhs.true.335, label %if.then.353

land.lhs.true.335:                                ; preds = %land.lhs.true.329
  %204 = load i32, i32* %unpacked_so_far, align 4
  %205 = load i32, i32* %backbytes, align 4
  %sub336 = sub i32 %204, %205
  %idxprom337 = zext i32 %sub336 to i64
  %206 = load i8*, i8** %dst.addr, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %206, i64 %idxprom337
  %207 = load i32, i32* %backsize, align 4
  %idx.ext339 = zext i32 %207 to i64
  %add.ptr340 = getelementptr inbounds i8, i8* %arrayidx338, i64 %idx.ext339
  %208 = load i8*, i8** %dst.addr, align 8
  %209 = load i32, i32* %dsize.addr, align 4
  %idx.ext341 = zext i32 %209 to i64
  %add.ptr342 = getelementptr inbounds i8, i8* %208, i64 %idx.ext341
  %cmp343 = icmp ule i8* %add.ptr340, %add.ptr342
  br i1 %cmp343, label %land.lhs.true.345, label %if.then.353

land.lhs.true.345:                                ; preds = %land.lhs.true.335
  %210 = load i32, i32* %unpacked_so_far, align 4
  %211 = load i32, i32* %backbytes, align 4
  %sub346 = sub i32 %210, %211
  %idxprom347 = zext i32 %sub346 to i64
  %212 = load i8*, i8** %dst.addr, align 8
  %arrayidx348 = getelementptr inbounds i8, i8* %212, i64 %idxprom347
  %213 = load i32, i32* %backsize, align 4
  %idx.ext349 = zext i32 %213 to i64
  %add.ptr350 = getelementptr inbounds i8, i8* %arrayidx348, i64 %idx.ext349
  %214 = load i8*, i8** %dst.addr, align 8
  %cmp351 = icmp ugt i8* %add.ptr350, %214
  br i1 %cmp351, label %if.end.356, label %if.then.353

if.then.353:                                      ; preds = %land.lhs.true.345, %land.lhs.true.335, %land.lhs.true.329, %land.lhs.true.326, %land.lhs.true.323, %lor.lhs.false, %land.lhs.true.314, %land.lhs.true.305, %land.lhs.true.300, %land.lhs.true.297, %land.lhs.true.294, %if.end.290
  %215 = load i8*, i8** %dst.addr, align 8
  %216 = load i32, i32* %dsize.addr, align 4
  %217 = load i32, i32* %unpacked_so_far, align 4
  %idxprom354 = zext i32 %217 to i64
  %218 = load i8*, i8** %dst.addr, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %218, i64 %idxprom354
  %219 = load i32, i32* %backsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* %215, i32 %216, i8* %arrayidx355, i32 %219)
  store i32 1, i32* %retval
  br label %return

if.end.356:                                       ; preds = %land.lhs.true.345
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.356
  %220 = load i32, i32* %unpacked_so_far, align 4
  %221 = load i32, i32* %backbytes, align 4
  %sub357 = sub i32 %220, %221
  %idxprom358 = zext i32 %sub357 to i64
  %222 = load i8*, i8** %dst.addr, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %222, i64 %idxprom358
  %223 = load i8, i8* %arrayidx359, align 1
  %224 = load i32, i32* %unpacked_so_far, align 4
  %idxprom360 = zext i32 %224 to i64
  %225 = load i8*, i8** %dst.addr, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %225, i64 %idxprom360
  store i8 %223, i8* %arrayidx361, align 1
  %226 = load i32, i32* %unpacked_so_far, align 4
  %inc362 = add i32 %226, 1
  store i32 %inc362, i32* %unpacked_so_far, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %227 = load i32, i32* %backsize, align 4
  %dec363 = add i32 %227, -1
  store i32 %dec363, i32* %backsize, align 4
  %tobool364 = icmp ne i32 %dec363, 0
  br i1 %tobool364, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %228 = load i32, i32* %unpacked_so_far, align 4
  %229 = load i32, i32* %dsize.addr, align 4
  %cmp365 = icmp ult i32 %228, %229
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %230 = phi i1 [ false, %do.cond ], [ %cmp365, %land.rhs ]
  br i1 %230, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %231 = load i32, i32* %unpacked_so_far, align 4
  %sub367 = sub i32 %231, 1
  %idxprom368 = zext i32 %sub367 to i64
  %232 = load i8*, i8** %dst.addr, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %232, i64 %idxprom368
  %233 = load i8, i8* %arrayidx369, align 1
  %conv370 = zext i8 %233 to i32
  store i32 %conv370, i32* %bielle, align 4
  %234 = load i32, i32* %unpacked_so_far, align 4
  %235 = load i32, i32* %dsize.addr, align 4
  %cmp371 = icmp uge i32 %234, %235
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.374:                                       ; preds = %do.end
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374
  br label %while.body.22

return:                                           ; preds = %if.then.373, %if.then.353, %if.then.289, %if.then.285, %if.then.202, %if.then.190, %if.then.157, %if.then.133, %if.then.125, %if.then.83, %if.then.26, %if.then.19, %if.then
  %236 = load i32, i32* %retval
  ret i32 %236
}

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @get_byte(%struct.UNSP* %read_struct) #0 {
entry:
  %retval = alloca i32, align 4
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %ret = alloca i32, align 4
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  %0 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %src_curr = getelementptr inbounds %struct.UNSP, %struct.UNSP* %0, i32 0, i32 0
  %1 = load i8*, i8** %src_curr, align 8
  %2 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %src_end = getelementptr inbounds %struct.UNSP, %struct.UNSP* %2, i32 0, i32 1
  %3 = load i8*, i8** %src_end, align 8
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %error = getelementptr inbounds %struct.UNSP, %struct.UNSP* %4, i32 0, i32 4
  store i32 1, i32* %error, align 4
  store i32 255, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %src_curr1 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %5, i32 0, i32 0
  %6 = load i8*, i8** %src_curr1, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, i32* %ret, align 4
  %8 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %src_curr2 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %8, i32 0, i32 0
  %9 = load i8*, i8** %src_curr2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %src_curr2, align 8
  %10 = load i32, i32* %ret, align 4
  %and = and i32 %10, 255
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @getbit_from_table(i16* %intable, %struct.UNSP* %read_struct) #0 {
entry:
  %retval = alloca i32, align 4
  %intable.addr = alloca i16*, align 8
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %nval = alloca i32, align 4
  %sval = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  %0 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %tablesz = getelementptr inbounds %struct.UNSP, %struct.UNSP* %0, i32 0, i32 6
  %1 = load i32, i32* %tablesz, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %tablesz1 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %2, i32 0, i32 6
  %3 = load i32, i32* %tablesz1, align 4
  %conv = zext i32 %3 to i64
  %cmp2 = icmp ule i64 2, %conv
  br i1 %cmp2, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i16*, i16** %intable.addr, align 8
  %5 = bitcast i16* %4 to i8*
  %6 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %table = getelementptr inbounds %struct.UNSP, %struct.UNSP* %6, i32 0, i32 5
  %7 = load i8*, i8** %table, align 8
  %cmp5 = icmp uge i8* %5, %7
  br i1 %cmp5, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %8 = load i16*, i16** %intable.addr, align 8
  %9 = bitcast i16* %8 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 2
  %10 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %table8 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %10, i32 0, i32 5
  %11 = load i8*, i8** %table8, align 8
  %12 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %tablesz9 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %12, i32 0, i32 6
  %13 = load i32, i32* %tablesz9, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %cmp11 = icmp ule i8* %add.ptr, %add.ptr10
  br i1 %cmp11, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %14 = load i16*, i16** %intable.addr, align 8
  %15 = bitcast i16* %14 to i8*
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %table15 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %16, i32 0, i32 5
  %17 = load i8*, i8** %table15, align 8
  %cmp16 = icmp ugt i8* %add.ptr14, %17
  br i1 %cmp16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %18 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %error = getelementptr inbounds %struct.UNSP, %struct.UNSP* %18, i32 0, i32 4
  store i32 1, i32* %error, align 4
  store i32 255, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13
  %19 = load i16*, i16** %intable.addr, align 8
  %20 = load i16, i16* %19, align 2
  %conv18 = zext i16 %20 to i32
  %21 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap = getelementptr inbounds %struct.UNSP, %struct.UNSP* %21, i32 0, i32 2
  %22 = load i32, i32* %bitmap, align 4
  %shr = lshr i32 %22, 11
  %mul = mul i32 %conv18, %shr
  store i32 %mul, i32* %nval, align 4
  %23 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval = getelementptr inbounds %struct.UNSP, %struct.UNSP* %23, i32 0, i32 3
  %24 = load i32, i32* %oldval, align 4
  %25 = load i32, i32* %nval, align 4
  %cmp19 = icmp ult i32 %24, %25
  br i1 %cmp19, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end
  %26 = load i32, i32* %nval, align 4
  %27 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap22 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %27, i32 0, i32 2
  store i32 %26, i32* %bitmap22, align 4
  %28 = load i16*, i16** %intable.addr, align 8
  %29 = load i16, i16* %28, align 2
  %conv23 = zext i16 %29 to i32
  store i32 %conv23, i32* %nval, align 4
  %30 = load i32, i32* %nval, align 4
  %sub = sub i32 2048, %30
  store i32 %sub, i32* %sval, align 4
  %31 = load i32, i32* %sval, align 4
  %shr24 = ashr i32 %31, 5
  store i32 %shr24, i32* %sval, align 4
  %32 = load i32, i32* %nval, align 4
  %33 = load i32, i32* %sval, align 4
  %add = add i32 %33, %32
  store i32 %add, i32* %sval, align 4
  %34 = load i32, i32* %sval, align 4
  %conv25 = trunc i32 %34 to i16
  %35 = load i16*, i16** %intable.addr, align 8
  store i16 %conv25, i16* %35, align 2
  %36 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap26 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %36, i32 0, i32 2
  %37 = load i32, i32* %bitmap26, align 4
  %cmp27 = icmp ult i32 %37, 16777216
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.21
  %38 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval30 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %38, i32 0, i32 3
  %39 = load i32, i32* %oldval30, align 4
  %shl = shl i32 %39, 8
  %40 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @get_byte(%struct.UNSP* %40)
  %or = or i32 %shl, %call
  %41 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval31 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %41, i32 0, i32 3
  store i32 %or, i32* %oldval31, align 4
  %42 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap32 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %42, i32 0, i32 2
  %43 = load i32, i32* %bitmap32, align 4
  %shl33 = shl i32 %43, 8
  store i32 %shl33, i32* %bitmap32, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.then.21
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end
  %44 = load i32, i32* %nval, align 4
  %45 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap36 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %45, i32 0, i32 2
  %46 = load i32, i32* %bitmap36, align 4
  %sub37 = sub i32 %46, %44
  store i32 %sub37, i32* %bitmap36, align 4
  %47 = load i32, i32* %nval, align 4
  %48 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval38 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %48, i32 0, i32 3
  %49 = load i32, i32* %oldval38, align 4
  %sub39 = sub i32 %49, %47
  store i32 %sub39, i32* %oldval38, align 4
  %50 = load i16*, i16** %intable.addr, align 8
  %51 = load i16, i16* %50, align 2
  %conv40 = zext i16 %51 to i32
  store i32 %conv40, i32* %nval, align 4
  %52 = load i32, i32* %nval, align 4
  %shr41 = lshr i32 %52, 5
  %53 = load i32, i32* %nval, align 4
  %sub42 = sub i32 %53, %shr41
  store i32 %sub42, i32* %nval, align 4
  %54 = load i32, i32* %nval, align 4
  %conv43 = trunc i32 %54 to i16
  %55 = load i16*, i16** %intable.addr, align 8
  store i16 %conv43, i16* %55, align 2
  %56 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap44 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %56, i32 0, i32 2
  %57 = load i32, i32* %bitmap44, align 4
  %cmp45 = icmp ult i32 %57, 16777216
  br i1 %cmp45, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %if.end.35
  %58 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval48 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %58, i32 0, i32 3
  %59 = load i32, i32* %oldval48, align 4
  %shl49 = shl i32 %59, 8
  %60 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call50 = call i32 @get_byte(%struct.UNSP* %60)
  %or51 = or i32 %shl49, %call50
  %61 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval52 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %61, i32 0, i32 3
  store i32 %or51, i32* %oldval52, align 4
  %62 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap53 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %62, i32 0, i32 2
  %63 = load i32, i32* %bitmap53, align 4
  %shl54 = shl i32 %63, 8
  store i32 %shl54, i32* %bitmap53, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.47, %if.end.35
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.end.34, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32 @get_100_bits_from_tablesize(i16* %intable, %struct.UNSP* %read_struct, i32 %ssize) #0 {
entry:
  %intable.addr = alloca i16*, align 8
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %ssize.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %lpos = alloca i32, align 4
  %tpos = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 1, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %while.body, label %while.end.15

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %ssize.addr, align 4
  %and = and i32 %1, 255
  store i32 %and, i32* %lpos, align 4
  %2 = load i32, i32* %ssize.addr, align 4
  %and1 = and i32 %2, -256
  %3 = load i32, i32* %lpos, align 4
  %shl = shl i32 %3, 1
  %and2 = and i32 %shl, 255
  %or = or i32 %and1, %and2
  store i32 %or, i32* %ssize.addr, align 4
  %4 = load i32, i32* %lpos, align 4
  %shr = lshr i32 %4, 7
  store i32 %shr, i32* %lpos, align 4
  %5 = load i32, i32* %lpos, align 4
  %add = add i32 %5, 1
  store i32 %add, i32* %tpos, align 4
  %6 = load i32, i32* %tpos, align 4
  %shl3 = shl i32 %6, 8
  store i32 %shl3, i32* %tpos, align 4
  %7 = load i32, i32* %count, align 4
  %8 = load i32, i32* %tpos, align 4
  %add4 = add i32 %8, %7
  store i32 %add4, i32* %tpos, align 4
  %9 = load i32, i32* %tpos, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i16*, i16** %intable.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @getbit_from_table(i16* %arrayidx, %struct.UNSP* %11)
  store i32 %call, i32* %tpos, align 4
  %12 = load i32, i32* %count, align 4
  %mul = mul i32 %12, 2
  %13 = load i32, i32* %tpos, align 4
  %or5 = or i32 %mul, %13
  store i32 %or5, i32* %count, align 4
  %14 = load i32, i32* %lpos, align 4
  %15 = load i32, i32* %tpos, align 4
  %cmp6 = icmp ne i32 %14, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %if.then
  %16 = load i32, i32* %count, align 4
  %cmp8 = icmp ult i32 %16, 256
  br i1 %cmp8, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.cond.7
  %17 = load i32, i32* %count, align 4
  %mul10 = mul i32 %17, 2
  %18 = load i32, i32* %count, align 4
  %idxprom11 = zext i32 %18 to i64
  %19 = load i16*, i16** %intable.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %19, i64 %idxprom11
  %20 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call13 = call i32 @getbit_from_table(i16* %arrayidx12, %struct.UNSP* %20)
  %or14 = or i32 %mul10, %call13
  store i32 %or14, i32* %count, align 4
  br label %while.cond.7

while.end:                                        ; preds = %while.cond.7
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  br label %while.cond

while.end.15:                                     ; preds = %while.cond
  %21 = load i32, i32* %count, align 4
  %and16 = and i32 %21, 255
  ret i32 %and16
}

; Function Attrs: nounwind uwtable
define i32 @get_100_bits_from_table(i16* %intable, %struct.UNSP* %read_struct) #0 {
entry:
  %intable.addr = alloca i16*, align 8
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %count = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 1, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %count, align 4
  %mul = mul i32 %1, 2
  %2 = load i32, i32* %count, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i16*, i16** %intable.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @getbit_from_table(i16* %arrayidx, %struct.UNSP* %4)
  %or = or i32 %mul, %call
  store i32 %or, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %count, align 4
  %and = and i32 %5, 255
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @get_n_bits_from_tablesize(i16* %intable, %struct.UNSP* %read_struct, i32 %backsize) #0 {
entry:
  %retval = alloca i32, align 4
  %intable.addr = alloca i16*, align 8
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %backsize.addr = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 %backsize, i32* %backsize.addr, align 4
  %0 = load i16*, i16** %intable.addr, align 8
  %1 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @getbit_from_table(i16* %0, %struct.UNSP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %backsize.addr, align 4
  %shl = shl i32 %2, 3
  %add = add i32 %shl, 2
  %idxprom = zext i32 %add to i64
  %3 = load i16*, i16** %intable.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call1 = call i32 @get_n_bits_from_table(i16* %arrayidx, i32 3, %struct.UNSP* %4)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i16*, i16** %intable.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call3 = call i32 @getbit_from_table(i16* %arrayidx2, %struct.UNSP* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.12, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %backsize.addr, align 4
  %shl6 = shl i32 %7, 3
  %add7 = add i32 %shl6, 130
  %idxprom8 = zext i32 %add7 to i64
  %8 = load i16*, i16** %intable.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8
  %9 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call10 = call i32 @get_n_bits_from_table(i16* %arrayidx9, i32 3, %struct.UNSP* %9)
  %add11 = add i32 8, %call10
  store i32 %add11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %10 = load i16*, i16** %intable.addr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %10, i64 258
  %11 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call14 = call i32 @get_n_bits_from_table(i16* %arrayidx13, i32 8, %struct.UNSP* %11)
  %add15 = add i32 16, %call14
  store i32 %add15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @get_n_bits_from_table(i16* %intable, i32 %bits, %struct.UNSP* %read_struct) #0 {
entry:
  %intable.addr = alloca i16*, align 8
  %bits.addr = alloca i32, align 4
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %count = alloca i32, align 4
  %bitcounter = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 1, i32* %count, align 4
  %0 = load i32, i32* %bits.addr, align 4
  store i32 %0, i32* %bitcounter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %bitcounter, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %bitcounter, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %count, align 4
  %mul = mul i32 %2, 2
  %3 = load i32, i32* %count, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i16*, i16** %intable.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @getbit_from_table(i16* %arrayidx, %struct.UNSP* %5)
  %add = add i32 %mul, %call
  store i32 %add, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %bits.addr, align 4
  %and = and i32 %7, 255
  %shl = shl i32 1, %and
  %sub = sub i32 %6, %shl
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @get_bb(i16* %intable, i32 %back, %struct.UNSP* %read_struct) #0 {
entry:
  %retval = alloca i32, align 4
  %intable.addr = alloca i16*, align 8
  %back.addr = alloca i32, align 4
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %pos = alloca i32, align 4
  %bb = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  store i16* %intable, i16** %intable.addr, align 8
  store i32 %back, i32* %back.addr, align 4
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 1, i32* %pos, align 4
  store i32 0, i32* %bb, align 4
  %0 = load i32, i32* %back.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %back.addr, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i16*, i16** %intable.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @getbit_from_table(i16* %arrayidx, %struct.UNSP* %5)
  store i32 %call, i32* %bit, align 4
  %6 = load i32, i32* %pos, align 4
  %mul = mul i32 %6, 2
  %7 = load i32, i32* %bit, align 4
  %add = add i32 %mul, %7
  store i32 %add, i32* %pos, align 4
  %8 = load i32, i32* %bit, align 4
  %9 = load i32, i32* %i, align 4
  %shl = shl i32 %8, %9
  %10 = load i32, i32* %bb, align 4
  %or = or i32 %10, %shl
  store i32 %or, i32* %bb, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %bb, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @get_bitmap(%struct.UNSP* %read_struct, i32 %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %read_struct.addr = alloca %struct.UNSP*, align 8
  %bits.addr = alloca i32, align 4
  %retv = alloca i32, align 4
  store %struct.UNSP* %read_struct, %struct.UNSP** %read_struct.addr, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store i32 0, i32* %retv, align 4
  %0 = load i32, i32* %bits.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %1 = load i32, i32* %bits.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %bits.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap = getelementptr inbounds %struct.UNSP, %struct.UNSP* %2, i32 0, i32 2
  %3 = load i32, i32* %bitmap, align 4
  %shr = lshr i32 %3, 1
  store i32 %shr, i32* %bitmap, align 4
  %4 = load i32, i32* %retv, align 4
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %retv, align 4
  %5 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval = getelementptr inbounds %struct.UNSP, %struct.UNSP* %5, i32 0, i32 3
  %6 = load i32, i32* %oldval, align 4
  %7 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap1 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %7, i32 0, i32 2
  %8 = load i32, i32* %bitmap1, align 4
  %cmp2 = icmp uge i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %while.body
  %9 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap4 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %9, i32 0, i32 2
  %10 = load i32, i32* %bitmap4, align 4
  %11 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval5 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %11, i32 0, i32 3
  %12 = load i32, i32* %oldval5, align 4
  %sub = sub i32 %12, %10
  store i32 %sub, i32* %oldval5, align 4
  %13 = load i32, i32* %retv, align 4
  %or = or i32 %13, 1
  store i32 %or, i32* %retv, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %while.body
  %14 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap7 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %14, i32 0, i32 2
  %15 = load i32, i32* %bitmap7, align 4
  %cmp8 = icmp ult i32 %15, 16777216
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %bitmap10 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %16, i32 0, i32 2
  %17 = load i32, i32* %bitmap10, align 4
  %shl11 = shl i32 %17, 8
  store i32 %shl11, i32* %bitmap10, align 4
  %18 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval12 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %18, i32 0, i32 3
  %19 = load i32, i32* %oldval12, align 4
  %shl13 = shl i32 %19, 8
  %20 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %call = call i32 @get_byte(%struct.UNSP* %20)
  %or14 = or i32 %shl13, %call
  %21 = load %struct.UNSP*, %struct.UNSP** %read_struct.addr, align 8
  %oldval15 = getelementptr inbounds %struct.UNSP, %struct.UNSP* %21, i32 0, i32 3
  store i32 %or14, i32* %oldval15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %if.end.6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %retv, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
