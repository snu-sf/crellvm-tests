; ModuleID = './MultiSource.Applications.ClamAV/12.libclamav_aspack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ASPK = type { i32, i32, [19 x i8], [758 x i8], [58 x i32], [4 x %struct.DICT_HELPER], i8*, i8*, i8*, [4 x [24 x i32]], [4 x [24 x i32]], i32 }
%struct.DICT_HELPER = type { i32*, i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Aspack: Unable to allocate dictionary\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Aspack: unpacking block rva:%x - sz:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Aspack: unpacking failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Aspack: OOM - rebuild failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Aspack: rebuild failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Aspack: successfully rebuilt\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @unaspack212(i8* %image, i32 %size, %struct.cli_exe_section* %sections, i16 zeroext %sectcount, i32 %ep, i32 %base, i32 %f) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %sections.addr = alloca %struct.cli_exe_section*, align 8
  %sectcount.addr = alloca i16, align 2
  %ep.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %stream = alloca %struct.ASPK, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %blocks = alloca i8*, align 8
  %wrkbuf = alloca i8*, align 8
  %block_rva = alloca i32, align 4
  %block_size = alloca i32, align 4
  %outsects = alloca %struct.cli_exe_section*, align 8
  %curbyte = alloca i8, align 1
  %target = alloca i32, align 4
  store i8* %image, i8** %image.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.cli_exe_section* %sections, %struct.cli_exe_section** %sections.addr, align 8
  store i16 %sectcount, i16* %sectcount.addr, align 2
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %0 = load i8*, i8** %image.addr, align 8
  %1 = load i32, i32* %ep.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 1404
  store i8* %add.ptr1, i8** %blocks, align 8
  store i32 1, i32* %block_rva, align 4
  %call = call i8* @cli_calloc(i64 6144, i64 1)
  store i8* %call, i8** %wrkbuf, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %wrkbuf, align 8
  %3 = bitcast i8* %2 to i32*
  %dict_helper = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper, i32 0, i64 0
  %starts = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx, i32 0, i32 0
  store i32* %3, i32** %starts, align 8
  %4 = load i8*, i8** %wrkbuf, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 2884
  %dict_helper3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx4 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper3, i32 0, i64 0
  %ends = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx4, i32 0, i32 1
  store i8* %arrayidx2, i8** %ends, align 8
  %dict_helper5 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper5, i32 0, i64 0
  %size7 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx6, i32 0, i32 2
  store i32 721, i32* %size7, align 4
  %5 = load i8*, i8** %wrkbuf, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 3140
  store i8* %arrayidx8, i8** %wrkbuf, align 8
  %6 = load i8*, i8** %wrkbuf, align 8
  %7 = bitcast i8* %6 to i32*
  %dict_helper9 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper9, i32 0, i64 1
  %starts11 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx10, i32 0, i32 0
  store i32* %7, i32** %starts11, align 8
  %8 = load i8*, i8** %wrkbuf, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 112
  %dict_helper13 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper13, i32 0, i64 1
  %ends15 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx14, i32 0, i32 1
  store i8* %arrayidx12, i8** %ends15, align 8
  %dict_helper16 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper16, i32 0, i64 1
  %size18 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx17, i32 0, i32 2
  store i32 28, i32* %size18, align 4
  %9 = load i8*, i8** %wrkbuf, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %9, i64 368
  store i8* %arrayidx19, i8** %wrkbuf, align 8
  %10 = load i8*, i8** %wrkbuf, align 8
  %11 = bitcast i8* %10 to i32*
  %dict_helper20 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx21 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper20, i32 0, i64 2
  %starts22 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx21, i32 0, i32 0
  store i32* %11, i32** %starts22, align 8
  %12 = load i8*, i8** %wrkbuf, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %12, i64 32
  %dict_helper24 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx25 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper24, i32 0, i64 2
  %ends26 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx25, i32 0, i32 1
  store i8* %arrayidx23, i8** %ends26, align 8
  %dict_helper27 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx28 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper27, i32 0, i64 2
  %size29 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx28, i32 0, i32 2
  store i32 8, i32* %size29, align 4
  %13 = load i8*, i8** %wrkbuf, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %13, i64 288
  store i8* %arrayidx30, i8** %wrkbuf, align 8
  %14 = load i8*, i8** %wrkbuf, align 8
  %15 = bitcast i8* %14 to i32*
  %dict_helper31 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper31, i32 0, i64 3
  %starts33 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx32, i32 0, i32 0
  store i32* %15, i32** %starts33, align 8
  %16 = load i8*, i8** %wrkbuf, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %16, i64 76
  %dict_helper35 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx36 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper35, i32 0, i64 3
  %ends37 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx36, i32 0, i32 1
  store i8* %arrayidx34, i8** %ends37, align 8
  %dict_helper38 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper38, i32 0, i64 3
  %size40 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx39, i32 0, i32 2
  store i32 19, i32* %size40, align 4
  %17 = load i8*, i8** %wrkbuf, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %17, i64 332
  store i8* %arrayidx41, i8** %wrkbuf, align 8
  %18 = load i8*, i8** %wrkbuf, align 8
  %decrypt_dict = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 8
  store i8* %18, i8** %decrypt_dict, align 8
  %hash = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 1
  store i32 65536, i32* %hash, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %19, 58
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom = zext i32 %21 to i64
  %init_array = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 4
  %arrayidx42 = getelementptr inbounds [58 x i32], [58 x i32]* %init_array, i32 0, i64 %idxprom
  store i32 %20, i32* %arrayidx42, align 4
  %22 = load i32, i32* %ep.addr, align 4
  %23 = load i32, i32* %i, align 4
  %add = add i32 %22, %23
  %add43 = add i32 %add, 1806
  %idxprom44 = zext i32 %add43 to i64
  %24 = load i8*, i8** %image.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %24, i64 %idxprom44
  %25 = load i8, i8* %arrayidx45, align 1
  %conv = zext i8 %25 to i32
  %shl = shl i32 1, %conv
  %26 = load i32, i32* %j, align 4
  %add46 = add i32 %26, %shl
  store i32 %add46, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %array1 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 2
  %28 = bitcast [19 x i8]* %array1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 19, i32 8, i1 false)
  %array2 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 3
  %29 = bitcast [758 x i8]* %array2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 758, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.158, %for.end
  %30 = load i32, i32* %size.addr, align 4
  %cmp47 = icmp ugt i32 %30, 0
  br i1 %cmp47, label %land.lhs.true, label %land.end.98

land.lhs.true:                                    ; preds = %while.cond
  %31 = load i32, i32* %size.addr, align 4
  %cmp49 = icmp ule i32 8, %31
  br i1 %cmp49, label %land.lhs.true.51, label %land.end.98

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %32 = load i8*, i8** %blocks, align 8
  %33 = load i8*, i8** %image.addr, align 8
  %cmp52 = icmp uge i8* %32, %33
  br i1 %cmp52, label %land.lhs.true.54, label %land.end.98

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %34 = load i8*, i8** %blocks, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %34, i64 8
  %35 = load i8*, i8** %image.addr, align 8
  %36 = load i32, i32* %size.addr, align 4
  %idx.ext56 = zext i32 %36 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %35, i64 %idx.ext56
  %cmp58 = icmp ule i8* %add.ptr55, %add.ptr57
  br i1 %cmp58, label %land.lhs.true.60, label %land.end.98

land.lhs.true.60:                                 ; preds = %land.lhs.true.54
  %37 = load i8*, i8** %blocks, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %37, i64 8
  %38 = load i8*, i8** %image.addr, align 8
  %cmp62 = icmp ugt i8* %add.ptr61, %38
  br i1 %cmp62, label %land.lhs.true.64, label %land.end.98

land.lhs.true.64:                                 ; preds = %land.lhs.true.60
  %39 = load i8*, i8** %blocks, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %block_rva, align 4
  %tobool65 = icmp ne i32 %41, 0
  br i1 %tobool65, label %land.lhs.true.66, label %land.end.98

land.lhs.true.66:                                 ; preds = %land.lhs.true.64
  %42 = load i8*, i8** %blocks, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %42, i64 4
  %43 = bitcast i8* %add.ptr67 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %block_size, align 4
  %tobool68 = icmp ne i32 %44, 0
  br i1 %tobool68, label %land.rhs, label %land.end.98

land.rhs:                                         ; preds = %land.lhs.true.66
  %45 = load i32, i32* %size.addr, align 4
  %cmp69 = icmp ugt i32 %45, 0
  br i1 %cmp69, label %land.lhs.true.71, label %land.end

land.lhs.true.71:                                 ; preds = %land.rhs
  %46 = load i32, i32* %block_size, align 4
  %cmp72 = icmp ugt i32 %46, 0
  br i1 %cmp72, label %land.lhs.true.74, label %land.end

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %47 = load i32, i32* %block_size, align 4
  %48 = load i32, i32* %size.addr, align 4
  %cmp75 = icmp ule i32 %47, %48
  br i1 %cmp75, label %land.lhs.true.77, label %land.end

land.lhs.true.77:                                 ; preds = %land.lhs.true.74
  %49 = load i8*, i8** %image.addr, align 8
  %50 = load i32, i32* %block_rva, align 4
  %idx.ext78 = zext i32 %50 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %49, i64 %idx.ext78
  %51 = load i8*, i8** %image.addr, align 8
  %cmp80 = icmp uge i8* %add.ptr79, %51
  br i1 %cmp80, label %land.lhs.true.82, label %land.end

land.lhs.true.82:                                 ; preds = %land.lhs.true.77
  %52 = load i8*, i8** %image.addr, align 8
  %53 = load i32, i32* %block_rva, align 4
  %idx.ext83 = zext i32 %53 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %52, i64 %idx.ext83
  %54 = load i32, i32* %block_size, align 4
  %idx.ext85 = zext i32 %54 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr84, i64 %idx.ext85
  %55 = load i8*, i8** %image.addr, align 8
  %56 = load i32, i32* %size.addr, align 4
  %idx.ext87 = zext i32 %56 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %55, i64 %idx.ext87
  %cmp89 = icmp ule i8* %add.ptr86, %add.ptr88
  br i1 %cmp89, label %land.rhs.91, label %land.end

land.rhs.91:                                      ; preds = %land.lhs.true.82
  %57 = load i8*, i8** %image.addr, align 8
  %58 = load i32, i32* %block_rva, align 4
  %idx.ext92 = zext i32 %58 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %57, i64 %idx.ext92
  %59 = load i32, i32* %block_size, align 4
  %idx.ext94 = zext i32 %59 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr93, i64 %idx.ext94
  %60 = load i8*, i8** %image.addr, align 8
  %cmp96 = icmp ugt i8* %add.ptr95, %60
  br label %land.end

land.end:                                         ; preds = %land.rhs.91, %land.lhs.true.82, %land.lhs.true.77, %land.lhs.true.74, %land.lhs.true.71, %land.rhs
  %61 = phi i1 [ false, %land.lhs.true.82 ], [ false, %land.lhs.true.77 ], [ false, %land.lhs.true.74 ], [ false, %land.lhs.true.71 ], [ false, %land.rhs ], [ %cmp96, %land.rhs.91 ]
  br label %land.end.98

land.end.98:                                      ; preds = %land.end, %land.lhs.true.66, %land.lhs.true.64, %land.lhs.true.60, %land.lhs.true.54, %land.lhs.true.51, %land.lhs.true, %while.cond
  %62 = phi i1 [ false, %land.lhs.true.66 ], [ false, %land.lhs.true.64 ], [ false, %land.lhs.true.60 ], [ false, %land.lhs.true.54 ], [ false, %land.lhs.true.51 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %61, %land.end ]
  br i1 %62, label %while.body, label %while.end.160

while.body:                                       ; preds = %land.end.98
  %63 = load i32, i32* %block_size, align 4
  %add99 = add i32 %63, 270
  %conv100 = zext i32 %add99 to i64
  %call101 = call i8* @cli_calloc(i64 %conv100, i64 1)
  store i8* %call101, i8** %wrkbuf, align 8
  %64 = load i8*, i8** %wrkbuf, align 8
  %tobool102 = icmp ne i8* %64, null
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %while.body
  br label %while.end.160

if.end.104:                                       ; preds = %while.body
  %65 = load i8*, i8** %wrkbuf, align 8
  %input = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 6
  store i8* %65, i8** %input, align 8
  %66 = load i32, i32* %block_size, align 4
  %add105 = add i32 %66, 270
  %idxprom106 = zext i32 %add105 to i64
  %67 = load i8*, i8** %wrkbuf, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %67, i64 %idxprom106
  %iend = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 7
  store i8* %arrayidx107, i8** %iend, align 8
  %68 = load i8*, i8** %wrkbuf, align 8
  %69 = load i8*, i8** %image.addr, align 8
  %70 = load i32, i32* %block_rva, align 4
  %idx.ext108 = zext i32 %70 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %69, i64 %idx.ext108
  %71 = load i32, i32* %block_size, align 4
  %conv110 = zext i32 %71 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %add.ptr109, i64 %conv110, i32 1, i1 false)
  %72 = load i32, i32* %block_rva, align 4
  %73 = load i32, i32* %block_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i32 %72, i32 %73)
  %74 = load i32, i32* %block_size, align 4
  %75 = load i32, i32* %ep.addr, align 4
  %add111 = add i32 %75, 1750
  %idxprom112 = zext i32 %add111 to i64
  %76 = load i8*, i8** %image.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %76, i64 %idxprom112
  %77 = load i8*, i8** %image.addr, align 8
  %78 = load i32, i32* %block_rva, align 4
  %idx.ext114 = zext i32 %78 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %77, i64 %idx.ext114
  %call116 = call i32 @decomp_block(%struct.ASPK* %stream, i32 %74, i8* %arrayidx113, i8* %add.ptr115)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %if.end.104
  %79 = load i8*, i8** %wrkbuf, align 8
  call void @free(i8* %79) #2
  br label %while.end.160

if.end.119:                                       ; preds = %if.end.104
  %80 = load i8*, i8** %wrkbuf, align 8
  call void @free(i8* %80) #2
  %81 = load i32, i32* %i, align 4
  %cmp120 = icmp eq i32 %81, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.158

land.lhs.true.122:                                ; preds = %if.end.119
  %82 = load i32, i32* %block_size, align 4
  %cmp123 = icmp ugt i32 %82, 7
  br i1 %cmp123, label %if.then.125, label %if.end.158

if.then.125:                                      ; preds = %land.lhs.true.122
  br label %while.cond.126

while.cond.126:                                   ; preds = %if.end.156, %if.then.125
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %block_size, align 4
  %sub = sub i32 %84, 6
  %cmp127 = icmp ult i32 %83, %sub
  br i1 %cmp127, label %while.body.129, label %while.end

while.body.129:                                   ; preds = %while.cond.126
  %85 = load i32, i32* %block_rva, align 4
  %86 = load i32, i32* %i, align 4
  %add130 = add i32 %85, %86
  %idxprom131 = zext i32 %add130 to i64
  %87 = load i8*, i8** %image.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %87, i64 %idxprom131
  %88 = load i8, i8* %arrayidx132, align 1
  store i8 %88, i8* %curbyte, align 1
  %89 = load i8, i8* %curbyte, align 1
  %conv133 = zext i8 %89 to i32
  %cmp134 = icmp eq i32 %conv133, 232
  br i1 %cmp134, label %if.then.139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.129
  %90 = load i8, i8* %curbyte, align 1
  %conv136 = zext i8 %90 to i32
  %cmp137 = icmp eq i32 %conv136, 233
  br i1 %cmp137, label %if.then.139, label %if.end.156

if.then.139:                                      ; preds = %lor.lhs.false, %while.body.129
  %91 = load i32, i32* %block_rva, align 4
  %92 = load i32, i32* %i, align 4
  %add140 = add i32 %91, %92
  %add141 = add i32 %add140, 1
  %idxprom142 = zext i32 %add141 to i64
  %93 = load i8*, i8** %image.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %93, i64 %idxprom142
  store i8* %arrayidx143, i8** %wrkbuf, align 8
  %94 = load i8*, i8** %wrkbuf, align 8
  %95 = load i8, i8* %94, align 1
  %conv144 = zext i8 %95 to i32
  %96 = load i32, i32* %ep.addr, align 4
  %add145 = add i32 %96, 328
  %idxprom146 = zext i32 %add145 to i64
  %97 = load i8*, i8** %image.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %97, i64 %idxprom146
  %98 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %98 to i32
  %cmp149 = icmp eq i32 %conv144, %conv148
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %if.then.139
  %99 = load i8*, i8** %wrkbuf, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = load i32, i32* %100, align 4
  %and = and i32 %101, -256
  store i32 %and, i32* %target, align 4
  %102 = load i32, i32* %target, align 4
  %shl152 = shl i32 %102, 24
  %103 = load i32, i32* %target, align 4
  %shr = lshr i32 %103, 8
  %or = or i32 %shl152, %shr
  store i32 %or, i32* %target, align 4
  %104 = load i32, i32* %target, align 4
  %105 = load i32, i32* %i, align 4
  %sub153 = sub i32 %104, %105
  %106 = load i8*, i8** %wrkbuf, align 8
  %107 = bitcast i8* %106 to i32*
  store i32 %sub153, i32* %107, align 4
  %108 = load i32, i32* %i, align 4
  %add154 = add i32 %108, 4
  store i32 %add154, i32* %i, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.151, %if.then.139
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %lor.lhs.false
  %109 = load i32, i32* %i, align 4
  %inc157 = add i32 %109, 1
  store i32 %inc157, i32* %i, align 4
  br label %while.cond.126

while.end:                                        ; preds = %while.cond.126
  br label %if.end.158

if.end.158:                                       ; preds = %while.end, %land.lhs.true.122, %if.end.119
  %110 = load i8*, i8** %blocks, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %110, i64 8
  store i8* %add.ptr159, i8** %blocks, align 8
  br label %while.cond

while.end.160:                                    ; preds = %if.then.118, %if.then.103, %land.end.98
  %dict_helper161 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %stream, i32 0, i32 5
  %arrayidx162 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper161, i32 0, i64 0
  %starts163 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx162, i32 0, i32 0
  %111 = load i32*, i32** %starts163, align 8
  %112 = bitcast i32* %111 to i8*
  call void @free(i8* %112) #2
  %113 = load i32, i32* %block_rva, align 4
  %tobool164 = icmp ne i32 %113, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %while.end.160
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.166:                                       ; preds = %while.end.160
  %114 = load i16, i16* %sectcount.addr, align 2
  %conv167 = zext i16 %114 to i32
  %cmp168 = icmp sgt i32 %conv167, 2
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.187

land.lhs.true.170:                                ; preds = %if.end.166
  %115 = load i32, i32* %ep.addr, align 4
  %116 = load i16, i16* %sectcount.addr, align 2
  %conv171 = zext i16 %116 to i32
  %sub172 = sub nsw i32 %conv171, 2
  %idxprom173 = sext i32 %sub172 to i64
  %117 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx174 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %117, i64 %idxprom173
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx174, i32 0, i32 0
  %118 = load i32, i32* %rva, align 4
  %cmp175 = icmp eq i32 %115, %118
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.187

land.lhs.true.177:                                ; preds = %land.lhs.true.170
  %119 = load i16, i16* %sectcount.addr, align 2
  %conv178 = zext i16 %119 to i32
  %sub179 = sub nsw i32 %conv178, 1
  %idxprom180 = sext i32 %sub179 to i64
  %120 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %arrayidx181 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %120, i64 %idxprom180
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx181, i32 0, i32 3
  %121 = load i32, i32* %rsz, align 4
  %tobool182 = icmp ne i32 %121, 0
  br i1 %tobool182, label %if.end.187, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.177
  %122 = load i16, i16* %sectcount.addr, align 2
  %conv184 = zext i16 %122 to i32
  %sub185 = sub nsw i32 %conv184, 2
  %conv186 = trunc i32 %sub185 to i16
  store i16 %conv186, i16* %sectcount.addr, align 2
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %land.lhs.true.177, %land.lhs.true.170, %if.end.166
  %123 = load i16, i16* %sectcount.addr, align 2
  %conv188 = zext i16 %123 to i64
  %mul = mul i64 36, %conv188
  %call189 = call i8* @cli_malloc(i64 %mul)
  %124 = bitcast i8* %call189 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %124, %struct.cli_exe_section** %outsects, align 8
  %tobool190 = icmp ne %struct.cli_exe_section* %124, null
  br i1 %tobool190, label %if.end.193, label %if.then.191

if.then.191:                                      ; preds = %if.end.187
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  %125 = load i32, i32* %f.addr, align 4
  %126 = load i8*, i8** %image.addr, align 8
  %127 = load i32, i32* %size.addr, align 4
  %call192 = call i32 @cli_writen(i32 %125, i8* %126, i32 %127)
  store i32 1, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.end.187
  %128 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %129 = bitcast %struct.cli_exe_section* %128 to i8*
  %130 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections.addr, align 8
  %131 = bitcast %struct.cli_exe_section* %130 to i8*
  %132 = load i16, i16* %sectcount.addr, align 2
  %conv194 = zext i16 %132 to i64
  %mul195 = mul i64 36, %conv194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %131, i64 %mul195, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.211, %if.end.193
  %133 = load i32, i32* %i, align 4
  %134 = load i16, i16* %sectcount.addr, align 2
  %conv197 = zext i16 %134 to i32
  %cmp198 = icmp ult i32 %133, %conv197
  br i1 %cmp198, label %for.body.200, label %for.end.213

for.body.200:                                     ; preds = %for.cond.196
  %135 = load i32, i32* %i, align 4
  %idxprom201 = zext i32 %135 to i64
  %136 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %arrayidx202 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %136, i64 %idxprom201
  %rva203 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx202, i32 0, i32 0
  %137 = load i32, i32* %rva203, align 4
  %138 = load i32, i32* %i, align 4
  %idxprom204 = zext i32 %138 to i64
  %139 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %arrayidx205 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %139, i64 %idxprom204
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx205, i32 0, i32 2
  store i32 %137, i32* %raw, align 4
  %140 = load i32, i32* %i, align 4
  %idxprom206 = zext i32 %140 to i64
  %141 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %arrayidx207 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %141, i64 %idxprom206
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx207, i32 0, i32 1
  %142 = load i32, i32* %vsz, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom208 = zext i32 %143 to i64
  %144 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %arrayidx209 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %144, i64 %idxprom208
  %rsz210 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx209, i32 0, i32 3
  store i32 %142, i32* %rsz210, align 4
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.200
  %145 = load i32, i32* %i, align 4
  %inc212 = add i32 %145, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond.196

for.end.213:                                      ; preds = %for.cond.196
  %146 = load i8*, i8** %image.addr, align 8
  %147 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %148 = load i16, i16* %sectcount.addr, align 2
  %conv214 = zext i16 %148 to i32
  %149 = load i32, i32* %base.addr, align 4
  %150 = load i8*, i8** %image.addr, align 8
  %151 = load i32, i32* %ep.addr, align 4
  %idx.ext215 = zext i32 %151 to i64
  %add.ptr216 = getelementptr inbounds i8, i8* %150, i64 %idx.ext215
  %add.ptr217 = getelementptr inbounds i8, i8* %add.ptr216, i64 923
  %152 = bitcast i8* %add.ptr217 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %f.addr, align 4
  %call218 = call i32 @cli_rebuildpe(i8* %146, %struct.cli_exe_section* %147, i32 %conv214, i32 %149, i32 %153, i32 0, i32 0, i32 %154)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.else, label %if.then.220

if.then.220:                                      ; preds = %for.end.213
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  %155 = load i32, i32* %f.addr, align 4
  %156 = load i8*, i8** %image.addr, align 8
  %157 = load i32, i32* %size.addr, align 4
  %call221 = call i32 @cli_writen(i32 %155, i8* %156, i32 %157)
  br label %if.end.222

if.else:                                          ; preds = %for.end.213
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.222

if.end.222:                                       ; preds = %if.else, %if.then.220
  %158 = load %struct.cli_exe_section*, %struct.cli_exe_section** %outsects, align 8
  %159 = bitcast %struct.cli_exe_section* %158 to i8*
  call void @free(i8* %159) #2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.222, %if.then.191, %if.then.165, %if.then
  %160 = load i32, i32* %retval
  ret i32 %160
}

declare i8* @cli_calloc(i64, i64) #1

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @decomp_block(%struct.ASPK* %stream, i32 %size, i8* %stuff, i8* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ASPK*, align 8
  %size.addr = alloca i32, align 4
  %stuff.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %stuff, i8** %stuff.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %0, i32 0, i32 9
  %1 = bitcast [4 x [24 x i32]]* %decarray3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 384, i32 8, i1 false)
  %2 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray4 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %2, i32 0, i32 10
  %3 = bitcast [4 x [24 x i32]]* %decarray4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 384, i32 8, i1 false)
  %4 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decrypt_dict = getelementptr inbounds %struct.ASPK, %struct.ASPK* %4, i32 0, i32 8
  %5 = load i8*, i8** %decrypt_dict, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 757, i32 1, i1 false)
  %6 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos = getelementptr inbounds %struct.ASPK, %struct.ASPK* %6, i32 0, i32 0
  store i32 32, i32* %bitpos, align 4
  %7 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call = call i32 @build_decrypt_dictionaries(%struct.ASPK* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %9 = load i8*, i8** %stuff.addr, align 8
  %10 = load i32, i32* %size.addr, align 4
  %11 = load i8*, i8** %output.addr, align 8
  %call1 = call i32 @decrypt(%struct.ASPK* %8, i8* %9, i32 %10, i8* %11)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @cli_malloc(i64) #1

declare i32 @cli_writen(i32, i8*, i32) #1

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @build_decrypt_dictionaries(%struct.ASPK* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ASPK*, align 8
  %counter = alloca i32, align 4
  %ret = alloca i32, align 4
  %oob = alloca i32, align 4
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  %0 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call = call zeroext i8 @getbits(%struct.ASPK* %0, i32 1, i32* %oob)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decrypt_dict = getelementptr inbounds %struct.ASPK, %struct.ASPK* %1, i32 0, i32 8
  %2 = load i8*, i8** %decrypt_dict, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 757, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %oob, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %counter, align 4
  %cmp = icmp ult i32 %4, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call4 = call zeroext i8 @getbits(%struct.ASPK* %5, i32 4, i32* %oob)
  %6 = load i32, i32* %counter, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array1 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [19 x i8], [19 x i8]* %array1, i32 0, i64 %idxprom
  store i8 %call4, i8* %arrayidx, align 1
  %8 = load i32, i32* %oob, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %9 = load i32, i32* %counter, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %11 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array18 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %array18, i32 0, i32 0
  %call9 = call zeroext i8 @build_decrypt_array(%struct.ASPK* %10, i8* %arraydecay, i8 zeroext 3)
  %tobool10 = icmp ne i8 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.end
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %if.end.12
  %12 = load i32, i32* %counter, align 4
  %cmp13 = icmp ult i32 %12, 757
  br i1 %cmp13, label %while.body, label %while.end.81

while.body:                                       ; preds = %while.cond
  %13 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call14 = call i32 @getdec(%struct.ASPK* %13, i8 zeroext 3, i32* %oob)
  store i32 %call14, i32* %ret, align 4
  %14 = load i32, i32* %oob, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %while.body
  %15 = load i32, i32* %ret, align 4
  %cmp18 = icmp uge i32 %15, 16
  br i1 %cmp18, label %if.then.19, label %if.else.68

if.then.19:                                       ; preds = %if.end.17
  %16 = load i32, i32* %ret, align 4
  %cmp20 = icmp ne i32 %16, 16
  br i1 %cmp20, label %if.then.21, label %if.else.43

if.then.21:                                       ; preds = %if.then.19
  %17 = load i32, i32* %ret, align 4
  %cmp22 = icmp eq i32 %17, 17
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.21
  %18 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call24 = call zeroext i8 @getbits(%struct.ASPK* %18, i32 3, i32* %oob)
  %conv = zext i8 %call24 to i32
  %add = add nsw i32 3, %conv
  store i32 %add, i32* %ret, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.then.21
  %19 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call25 = call zeroext i8 @getbits(%struct.ASPK* %19, i32 7, i32* %oob)
  %conv26 = zext i8 %call25 to i32
  %add27 = add nsw i32 11, %conv26
  store i32 %add27, i32* %ret, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.23
  %20 = load i32, i32* %oob, align 4
  %tobool29 = icmp ne i32 %20, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  br label %while.cond.32

while.cond.32:                                    ; preds = %if.end.38, %if.end.31
  %21 = load i32, i32* %ret, align 4
  %tobool33 = icmp ne i32 %21, 0
  br i1 %tobool33, label %while.body.34, label %while.end

while.body.34:                                    ; preds = %while.cond.32
  %22 = load i32, i32* %counter, align 4
  %cmp35 = icmp uge i32 %22, 757
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %while.body.34
  br label %while.end

if.end.38:                                        ; preds = %while.body.34
  %23 = load i32, i32* %counter, align 4
  %add39 = add i32 1, %23
  %idxprom40 = zext i32 %add39 to i64
  %24 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array2 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %24, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [758 x i8], [758 x i8]* %array2, i32 0, i64 %idxprom40
  store i8 0, i8* %arrayidx41, align 1
  %25 = load i32, i32* %counter, align 4
  %inc42 = add i32 %25, 1
  store i32 %inc42, i32* %counter, align 4
  %26 = load i32, i32* %ret, align 4
  %dec = add i32 %26, -1
  store i32 %dec, i32* %ret, align 4
  br label %while.cond.32

while.end:                                        ; preds = %if.then.37, %while.cond.32
  br label %if.end.67

if.else.43:                                       ; preds = %if.then.19
  %27 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call44 = call zeroext i8 @getbits(%struct.ASPK* %27, i32 2, i32* %oob)
  %conv45 = zext i8 %call44 to i32
  %add46 = add nsw i32 3, %conv45
  store i32 %add46, i32* %ret, align 4
  %28 = load i32, i32* %oob, align 4
  %tobool47 = icmp ne i32 %28, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.43
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.else.43
  br label %while.cond.50

while.cond.50:                                    ; preds = %if.end.56, %if.end.49
  %29 = load i32, i32* %ret, align 4
  %tobool51 = icmp ne i32 %29, 0
  br i1 %tobool51, label %while.body.52, label %while.end.66

while.body.52:                                    ; preds = %while.cond.50
  %30 = load i32, i32* %counter, align 4
  %cmp53 = icmp uge i32 %30, 757
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.body.52
  br label %while.end.66

if.end.56:                                        ; preds = %while.body.52
  %31 = load i32, i32* %counter, align 4
  %idxprom57 = zext i32 %31 to i64
  %32 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array258 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %32, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [758 x i8], [758 x i8]* %array258, i32 0, i64 %idxprom57
  %33 = load i8, i8* %arrayidx59, align 1
  %34 = load i32, i32* %counter, align 4
  %add60 = add i32 1, %34
  %idxprom61 = zext i32 %add60 to i64
  %35 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array262 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %35, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [758 x i8], [758 x i8]* %array262, i32 0, i64 %idxprom61
  store i8 %33, i8* %arrayidx63, align 1
  %36 = load i32, i32* %counter, align 4
  %inc64 = add i32 %36, 1
  store i32 %inc64, i32* %counter, align 4
  %37 = load i32, i32* %ret, align 4
  %dec65 = add i32 %37, -1
  store i32 %dec65, i32* %ret, align 4
  br label %while.cond.50

while.end.66:                                     ; preds = %if.then.55, %while.cond.50
  br label %if.end.67

if.end.67:                                        ; preds = %while.end.66, %while.end
  br label %if.end.80

if.else.68:                                       ; preds = %if.end.17
  %38 = load i32, i32* %counter, align 4
  %idxprom69 = zext i32 %38 to i64
  %39 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decrypt_dict70 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %39, i32 0, i32 8
  %40 = load i8*, i8** %decrypt_dict70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %40, i64 %idxprom69
  %41 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %41 to i32
  %42 = load i32, i32* %ret, align 4
  %add73 = add i32 %conv72, %42
  %and = and i32 %add73, 15
  %conv74 = trunc i32 %and to i8
  %43 = load i32, i32* %counter, align 4
  %add75 = add i32 1, %43
  %idxprom76 = zext i32 %add75 to i64
  %44 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array277 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %44, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [758 x i8], [758 x i8]* %array277, i32 0, i64 %idxprom76
  store i8 %conv74, i8* %arrayidx78, align 1
  %45 = load i32, i32* %counter, align 4
  %inc79 = add i32 %45, 1
  store i32 %inc79, i32* %counter, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.68, %if.end.67
  br label %while.cond

while.end.81:                                     ; preds = %while.cond
  %46 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %47 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array282 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %47, i32 0, i32 3
  %arrayidx83 = getelementptr inbounds [758 x i8], [758 x i8]* %array282, i32 0, i64 1
  %call84 = call zeroext i8 @build_decrypt_array(%struct.ASPK* %46, i8* %arrayidx83, i8 zeroext 0)
  %tobool85 = icmp ne i8 %call84, 0
  br i1 %tobool85, label %lor.lhs.false, label %if.then.95

lor.lhs.false:                                    ; preds = %while.end.81
  %48 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %49 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array286 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %49, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [758 x i8], [758 x i8]* %array286, i32 0, i64 722
  %call88 = call zeroext i8 @build_decrypt_array(%struct.ASPK* %48, i8* %arrayidx87, i8 zeroext 1)
  %tobool89 = icmp ne i8 %call88, 0
  br i1 %tobool89, label %lor.lhs.false.90, label %if.then.95

lor.lhs.false.90:                                 ; preds = %lor.lhs.false
  %50 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %51 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array291 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %51, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [758 x i8], [758 x i8]* %array291, i32 0, i64 750
  %call93 = call zeroext i8 @build_decrypt_array(%struct.ASPK* %50, i8* %arrayidx92, i8 zeroext 2)
  %tobool94 = icmp ne i8 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %lor.lhs.false.90, %lor.lhs.false, %while.end.81
  store i32 0, i32* %retval
  br label %return

if.end.96:                                        ; preds = %lor.lhs.false.90
  %52 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_ok = getelementptr inbounds %struct.ASPK, %struct.ASPK* %52, i32 0, i32 11
  store i32 0, i32* %dict_ok, align 4
  store i32 0, i32* %counter, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.111, %if.end.96
  %53 = load i32, i32* %counter, align 4
  %cmp98 = icmp ult i32 %53, 8
  br i1 %cmp98, label %for.body.100, label %for.end.113

for.body.100:                                     ; preds = %for.cond.97
  %54 = load i32, i32* %counter, align 4
  %add101 = add i32 750, %54
  %idxprom102 = zext i32 %add101 to i64
  %55 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array2103 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %55, i32 0, i32 3
  %arrayidx104 = getelementptr inbounds [758 x i8], [758 x i8]* %array2103, i32 0, i64 %idxprom102
  %56 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %56 to i32
  %cmp106 = icmp ne i32 %conv105, 3
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %for.body.100
  %57 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_ok109 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %57, i32 0, i32 11
  store i32 1, i32* %dict_ok109, align 4
  br label %for.end.113

if.end.110:                                       ; preds = %for.body.100
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %58 = load i32, i32* %counter, align 4
  %inc112 = add i32 %58, 1
  store i32 %inc112, i32* %counter, align 4
  br label %for.cond.97

for.end.113:                                      ; preds = %if.then.108, %for.cond.97
  %59 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decrypt_dict114 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %59, i32 0, i32 8
  %60 = load i8*, i8** %decrypt_dict114, align 8
  %61 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %array2115 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %61, i32 0, i32 3
  %arrayidx116 = getelementptr inbounds [758 x i8], [758 x i8]* %array2115, i32 0, i64 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %arrayidx116, i64 757, i32 1, i1 false)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.113, %if.then.95, %if.then.48, %if.then.30, %if.then.16, %if.then.11, %if.then.6, %if.then.2
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @decrypt(%struct.ASPK* %stream, i8* %stuff, i32 %size, i8* %output) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ASPK*, align 8
  %stuff.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %gen = alloca i32, align 4
  %backsize = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %useold = alloca i32, align 4
  %counter = alloca i32, align 4
  %hist = alloca [4 x i32], align 16
  %oob = alloca i32, align 4
  %hlp = alloca i8, align 1
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  store i8* %stuff, i8** %stuff.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %counter, align 4
  %0 = bitcast [4 x i32]* %hist to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.10, %if.then.2, %entry
  %1 = load i32, i32* %counter, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end.136

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call = call i32 @getdec(%struct.ASPK* %3, i8 zeroext 0, i32* %oob)
  store i32 %call, i32* %gen, align 4
  %4 = load i32, i32* %oob, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %gen, align 4
  %cmp1 = icmp ult i32 %5, 256
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %gen, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i32, i32* %counter, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %output.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %9 = load i32, i32* %counter, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond

if.end.3:                                         ; preds = %if.end
  %10 = load i32, i32* %gen, align 4
  %cmp4 = icmp uge i32 %10, 720
  br i1 %cmp4, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.3
  %11 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call7 = call i32 @build_decrypt_dictionaries(%struct.ASPK* %11)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  br label %while.cond

if.end.11:                                        ; preds = %if.end.3
  %12 = load i32, i32* %gen, align 4
  %sub = sub i32 %12, 256
  %shr = lshr i32 %sub, 3
  store i32 %shr, i32* %backbytes, align 4
  %cmp12 = icmp uge i32 %shr, 58
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %13 = load i32, i32* %gen, align 4
  %sub16 = sub i32 %13, 256
  %and = and i32 %sub16, 7
  %add = add i32 %and, 2
  store i32 %add, i32* %backsize, align 4
  %14 = load i32, i32* %backsize, align 4
  %sub17 = sub i32 %14, 2
  %cmp18 = icmp eq i32 %sub17, 7
  br i1 %cmp18, label %if.then.20, label %if.end.48

if.then.20:                                       ; preds = %if.end.15
  %15 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call21 = call i32 @getdec(%struct.ASPK* %15, i8 zeroext 1, i32* %oob)
  store i32 %call21, i32* %gen, align 4
  %16 = load i32, i32* %oob, align 4
  %tobool22 = icmp ne i32 %16, 0
  br i1 %tobool22, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %17 = load i32, i32* %gen, align 4
  %cmp23 = icmp uge i32 %17, 86
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.then.20
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false
  %18 = load i32, i32* %gen, align 4
  %add27 = add i32 %18, 28
  %idxprom28 = zext i32 %add27 to i64
  %19 = load i8*, i8** %stuff.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i64 %idxprom28
  %20 = load i8, i8* %arrayidx29, align 1
  store i8 %20, i8* %hlp, align 1
  %21 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call30 = call i32 @readstream(%struct.ASPK* %21)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.26
  %22 = load i32, i32* %gen, align 4
  %idxprom34 = zext i32 %22 to i64
  %23 = load i8*, i8** %stuff.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %23, i64 %idxprom34
  %24 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %25 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash = getelementptr inbounds %struct.ASPK, %struct.ASPK* %25, i32 0, i32 1
  %26 = load i32, i32* %hash, align 4
  %27 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos = getelementptr inbounds %struct.ASPK, %struct.ASPK* %27, i32 0, i32 0
  %28 = load i32, i32* %bitpos, align 4
  %sub37 = sub i32 8, %28
  %shr38 = lshr i32 %26, %sub37
  %and39 = and i32 %shr38, 16777215
  %29 = load i8, i8* %hlp, align 1
  %conv40 = zext i8 %29 to i32
  %sub41 = sub nsw i32 24, %conv40
  %shr42 = lshr i32 %and39, %sub41
  %add43 = add i32 %conv36, %shr42
  %30 = load i32, i32* %backsize, align 4
  %add44 = add i32 %30, %add43
  store i32 %add44, i32* %backsize, align 4
  %31 = load i8, i8* %hlp, align 1
  %conv45 = zext i8 %31 to i32
  %32 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos46 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %32, i32 0, i32 0
  %33 = load i32, i32* %bitpos46, align 4
  %add47 = add i32 %33, %conv45
  store i32 %add47, i32* %bitpos46, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.33, %if.end.15
  %34 = load i32, i32* %backbytes, align 4
  %idxprom49 = zext i32 %34 to i64
  %35 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %init_array = getelementptr inbounds %struct.ASPK, %struct.ASPK* %35, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [58 x i32], [58 x i32]* %init_array, i32 0, i64 %idxprom49
  %36 = load i32, i32* %arrayidx50, align 4
  store i32 %36, i32* %useold, align 4
  %37 = load i32, i32* %backbytes, align 4
  %add51 = add i32 %37, 56
  %idxprom52 = zext i32 %add51 to i64
  %38 = load i8*, i8** %stuff.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %38, i64 %idxprom52
  %39 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %39 to i32
  store i32 %conv54, i32* %gen, align 4
  %40 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_ok = getelementptr inbounds %struct.ASPK, %struct.ASPK* %40, i32 0, i32 11
  %41 = load i32, i32* %dict_ok, align 4
  %tobool55 = icmp ne i32 %41, 0
  br i1 %tobool55, label %lor.lhs.false.56, label %if.then.59

lor.lhs.false.56:                                 ; preds = %if.end.48
  %42 = load i32, i32* %gen, align 4
  %cmp57 = icmp ult i32 %42, 3
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.end.48
  %43 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call60 = call i32 @readstream(%struct.ASPK* %43)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.59
  %44 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash64 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %44, i32 0, i32 1
  %45 = load i32, i32* %hash64, align 4
  %46 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos65 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %46, i32 0, i32 0
  %47 = load i32, i32* %bitpos65, align 4
  %sub66 = sub i32 8, %47
  %shr67 = lshr i32 %45, %sub66
  %and68 = and i32 %shr67, 16777215
  %48 = load i32, i32* %gen, align 4
  %sub69 = sub i32 24, %48
  %shr70 = lshr i32 %and68, %sub69
  %49 = load i32, i32* %useold, align 4
  %add71 = add i32 %49, %shr70
  store i32 %add71, i32* %useold, align 4
  %50 = load i32, i32* %gen, align 4
  %51 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos72 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %51, i32 0, i32 0
  %52 = load i32, i32* %bitpos72, align 4
  %add73 = add i32 %52, %50
  store i32 %add73, i32* %bitpos72, align 4
  br label %if.end.94

if.else:                                          ; preds = %lor.lhs.false.56
  %53 = load i32, i32* %gen, align 4
  %sub74 = sub i32 %53, 3
  store i32 %sub74, i32* %gen, align 4
  %54 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call75 = call i32 @readstream(%struct.ASPK* %54)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.else
  %55 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash79 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %55, i32 0, i32 1
  %56 = load i32, i32* %hash79, align 4
  %57 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos80 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %57, i32 0, i32 0
  %58 = load i32, i32* %bitpos80, align 4
  %sub81 = sub i32 8, %58
  %shr82 = lshr i32 %56, %sub81
  %and83 = and i32 %shr82, 16777215
  %59 = load i32, i32* %gen, align 4
  %sub84 = sub i32 24, %59
  %shr85 = lshr i32 %and83, %sub84
  %mul = mul i32 %shr85, 8
  %60 = load i32, i32* %useold, align 4
  %add86 = add i32 %60, %mul
  store i32 %add86, i32* %useold, align 4
  %61 = load i32, i32* %gen, align 4
  %62 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos87 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %62, i32 0, i32 0
  %63 = load i32, i32* %bitpos87, align 4
  %add88 = add i32 %63, %61
  store i32 %add88, i32* %bitpos87, align 4
  %64 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call89 = call i32 @getdec(%struct.ASPK* %64, i8 zeroext 2, i32* %oob)
  %65 = load i32, i32* %useold, align 4
  %add90 = add i32 %65, %call89
  store i32 %add90, i32* %useold, align 4
  %66 = load i32, i32* %oob, align 4
  %tobool91 = icmp ne i32 %66, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.78
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.78
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.63
  %67 = load i32, i32* %useold, align 4
  %cmp95 = icmp ult i32 %67, 3
  br i1 %cmp95, label %if.then.97, label %if.else.108

if.then.97:                                       ; preds = %if.end.94
  %68 = load i32, i32* %useold, align 4
  %idxprom98 = zext i32 %68 to i64
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 %idxprom98
  %69 = load i32, i32* %arrayidx99, align 4
  store i32 %69, i32* %backbytes, align 4
  %70 = load i32, i32* %useold, align 4
  %cmp100 = icmp ne i32 %70, 0
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %if.then.97
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 0
  %71 = load i32, i32* %arrayidx103, align 4
  %72 = load i32, i32* %useold, align 4
  %idxprom104 = zext i32 %72 to i64
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 %idxprom104
  store i32 %71, i32* %arrayidx105, align 4
  %73 = load i32, i32* %backbytes, align 4
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 0
  store i32 %73, i32* %arrayidx106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %if.then.97
  br label %if.end.115

if.else.108:                                      ; preds = %if.end.94
  %arrayidx109 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 1
  %74 = load i32, i32* %arrayidx109, align 4
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 2
  store i32 %74, i32* %arrayidx110, align 4
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 0
  %75 = load i32, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 1
  store i32 %75, i32* %arrayidx112, align 4
  %76 = load i32, i32* %useold, align 4
  %sub113 = sub i32 %76, 3
  store i32 %sub113, i32* %backbytes, align 4
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %hist, i32 0, i64 0
  store i32 %sub113, i32* %arrayidx114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.108, %if.end.107
  %77 = load i32, i32* %backbytes, align 4
  %inc116 = add i32 %77, 1
  store i32 %inc116, i32* %backbytes, align 4
  %78 = load i32, i32* %backbytes, align 4
  %tobool117 = icmp ne i32 %78, 0
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.125

lor.lhs.false.118:                                ; preds = %if.end.115
  %79 = load i32, i32* %backbytes, align 4
  %80 = load i32, i32* %counter, align 4
  %cmp119 = icmp ugt i32 %79, %80
  br i1 %cmp119, label %if.then.125, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.118
  %81 = load i32, i32* %backsize, align 4
  %82 = load i32, i32* %size.addr, align 4
  %83 = load i32, i32* %counter, align 4
  %sub122 = sub i32 %82, %83
  %cmp123 = icmp ugt i32 %81, %sub122
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.121, %lor.lhs.false.118, %if.end.115
  store i32 0, i32* %retval
  br label %return

if.end.126:                                       ; preds = %lor.lhs.false.121
  br label %while.cond.127

while.cond.127:                                   ; preds = %while.body.129, %if.end.126
  %84 = load i32, i32* %backsize, align 4
  %dec = add i32 %84, -1
  store i32 %dec, i32* %backsize, align 4
  %tobool128 = icmp ne i32 %84, 0
  br i1 %tobool128, label %while.body.129, label %while.end

while.body.129:                                   ; preds = %while.cond.127
  %85 = load i32, i32* %counter, align 4
  %86 = load i32, i32* %backbytes, align 4
  %sub130 = sub i32 %85, %86
  %idxprom131 = zext i32 %sub130 to i64
  %87 = load i8*, i8** %output.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %87, i64 %idxprom131
  %88 = load i8, i8* %arrayidx132, align 1
  %89 = load i32, i32* %counter, align 4
  %idxprom133 = zext i32 %89 to i64
  %90 = load i8*, i8** %output.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %90, i64 %idxprom133
  store i8 %88, i8* %arrayidx134, align 1
  %91 = load i32, i32* %counter, align 4
  %inc135 = add i32 %91, 1
  store i32 %inc135, i32* %counter, align 4
  br label %while.cond.127

while.end:                                        ; preds = %while.cond.127
  br label %while.cond

while.end.136:                                    ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.136, %if.then.125, %if.then.92, %if.then.77, %if.then.62, %if.then.32, %if.then.25, %if.then.14, %if.then.9, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @getbits(%struct.ASPK* %stream, i32 %num, i32* %err) #0 {
entry:
  %retval = alloca i8, align 1
  %stream.addr = alloca %struct.ASPK*, align 8
  %num.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %retvalue = alloca i8, align 1
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32* %err, i32** %err.addr, align 8
  %0 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call = call i32 @readstream(%struct.ASPK* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %1, align 4
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %err.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash = getelementptr inbounds %struct.ASPK, %struct.ASPK* %3, i32 0, i32 1
  %4 = load i32, i32* %hash, align 4
  %5 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos = getelementptr inbounds %struct.ASPK, %struct.ASPK* %5, i32 0, i32 0
  %6 = load i32, i32* %bitpos, align 4
  %sub = sub i32 8, %6
  %shr = lshr i32 %4, %sub
  %and = and i32 %shr, 16777215
  %7 = load i32, i32* %num.addr, align 4
  %sub1 = sub i32 24, %7
  %shr2 = lshr i32 %and, %sub1
  %conv = trunc i32 %shr2 to i8
  store i8 %conv, i8* %retvalue, align 1
  %8 = load i32, i32* %num.addr, align 4
  %9 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %9, i32 0, i32 0
  %10 = load i32, i32* %bitpos3, align 4
  %add = add i32 %10, %8
  store i32 %add, i32* %bitpos3, align 4
  %11 = load i8, i8* %retvalue, align 1
  store i8 %11, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i8, i8* %retval
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @build_decrypt_array(%struct.ASPK* %stream, i8* %array, i8 zeroext %which) #0 {
entry:
  %retval = alloca i8, align 1
  %stream.addr = alloca %struct.ASPK*, align 8
  %array.addr = alloca i8*, align 8
  %which.addr = alloca i8, align 1
  %sum = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %endoff = alloca i32, align 4
  %bus = alloca [18 x i32], align 16
  %dict = alloca [18 x i32], align 16
  %d3 = alloca i32*, align 8
  %d4 = alloca i32*, align 8
  %old = alloca i32, align 4
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  store i8* %array, i8** %array.addr, align 8
  store i8 %which, i8* %which.addr, align 1
  store i32 0, i32* %sum, align 4
  store i32 23, i32* %counter, align 4
  store i32 0, i32* %endoff, align 4
  %0 = load i8, i8* %which.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %1, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x [24 x i32]], [4 x [24 x i32]]* %decarray3, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %arrayidx, i32 0, i32 0
  store i32* %arraydecay, i32** %d3, align 8
  %2 = load i8, i8* %which.addr, align 1
  %idxprom1 = zext i8 %2 to i64
  %3 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray4 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %3, i32 0, i32 10
  %arrayidx2 = getelementptr inbounds [4 x [24 x i32]], [4 x [24 x i32]]* %decarray4, i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [24 x i32], [24 x i32]* %arrayidx2, i32 0, i32 0
  store i32* %arraydecay3, i32** %d4, align 8
  %4 = bitcast [18 x i32]* %bus to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 72, i32 16, i1 false)
  %5 = bitcast [18 x i32]* %dict to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 72, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i8, i8* %which.addr, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper = getelementptr inbounds %struct.ASPK, %struct.ASPK* %8, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper, i32 0, i64 %idxprom4
  %size = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx5, i32 0, i32 2
  %9 = load i32, i32* %size, align 4
  %cmp = icmp ult i32 %6, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %10 to i64
  %11 = load i8*, i8** %array.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %12 to i32
  %cmp8 = icmp sgt i32 %conv, 17
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %13 to i64
  %14 = load i8*, i8** %array.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %idxprom12 = zext i8 %15 to i64
  %arrayidx13 = getelementptr inbounds [18 x i32], [18 x i32]* %bus, i32 0, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc14 = add i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32*, i32** %d3, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %arrayidx15, align 4
  %19 = load i32*, i32** %d4, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %arrayidx16, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.111, %for.end
  %20 = load i32, i32* %counter, align 4
  %cmp17 = icmp uge i32 %20, 9
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %i, align 4
  %add = add i32 %21, 1
  %idxprom19 = zext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [18 x i32], [18 x i32]* %bus, i32 0, i64 %idxprom19
  %22 = load i32, i32* %arrayidx20, align 4
  %23 = load i32, i32* %counter, align 4
  %shl = shl i32 %22, %23
  %24 = load i32, i32* %sum, align 4
  %add21 = add i32 %24, %shl
  store i32 %add21, i32* %sum, align 4
  %25 = load i32, i32* %sum, align 4
  %cmp22 = icmp ugt i32 %25, 16777216
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body
  store i8 0, i8* %retval
  br label %return

if.end.25:                                        ; preds = %while.body
  %26 = load i32, i32* %sum, align 4
  %27 = load i32, i32* %i, align 4
  %add26 = add i32 %27, 1
  %idxprom27 = zext i32 %add26 to i64
  %28 = load i32*, i32** %d3, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %28, i64 %idxprom27
  store i32 %26, i32* %arrayidx28, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [18 x i32], [18 x i32]* %bus, i32 0, i64 %idxprom29
  %30 = load i32, i32* %arrayidx30, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %31 to i64
  %32 = load i32*, i32** %d4, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %32, i64 %idxprom31
  %33 = load i32, i32* %arrayidx32, align 4
  %add33 = add i32 %30, %33
  %34 = load i32, i32* %i, align 4
  %add34 = add i32 %34, 1
  %idxprom35 = zext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [18 x i32], [18 x i32]* %dict, i32 0, i64 %idxprom35
  store i32 %add33, i32* %arrayidx36, align 4
  %35 = load i32, i32* %i, align 4
  %add37 = add i32 %35, 1
  %idxprom38 = zext i32 %add37 to i64
  %36 = load i32*, i32** %d4, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %36, i64 %idxprom38
  store i32 %add33, i32* %arrayidx39, align 4
  %37 = load i32, i32* %counter, align 4
  %cmp40 = icmp uge i32 %37, 16
  br i1 %cmp40, label %if.then.42, label %if.end.111

if.then.42:                                       ; preds = %if.end.25
  %38 = load i32, i32* %endoff, align 4
  store i32 %38, i32* %old, align 4
  %39 = load i32, i32* %i, align 4
  %add43 = add i32 %39, 1
  %idxprom44 = zext i32 %add43 to i64
  %40 = load i32*, i32** %d3, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %40, i64 %idxprom44
  %41 = load i32, i32* %arrayidx45, align 4
  %shr = lshr i32 %41, 16
  store i32 %shr, i32* %endoff, align 4
  %42 = load i32, i32* %endoff, align 4
  %43 = load i32, i32* %old, align 4
  %sub = sub i32 %42, %43
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then.46, label %if.end.110

if.then.46:                                       ; preds = %if.then.42
  %44 = load i32, i32* %endoff, align 4
  %45 = load i32, i32* %old, align 4
  %sub47 = sub i32 %44, %45
  %cmp48 = icmp ugt i32 %sub47, 0
  br i1 %cmp48, label %land.lhs.true, label %if.then.99

land.lhs.true:                                    ; preds = %if.then.46
  %46 = load i32, i32* %endoff, align 4
  %47 = load i32, i32* %old, align 4
  %sub50 = sub i32 %46, %47
  %cmp51 = icmp ule i32 %sub50, 256
  br i1 %cmp51, label %land.lhs.true.53, label %if.then.99

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %48 = load i8, i8* %which.addr, align 1
  %idxprom54 = zext i8 %48 to i64
  %49 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper55 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %49, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper55, i32 0, i64 %idxprom54
  %ends = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx56, i32 0, i32 1
  %50 = load i8*, i8** %ends, align 8
  %51 = load i32, i32* %old, align 4
  %idx.ext = zext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  %52 = load i8, i8* %which.addr, align 1
  %idxprom57 = zext i8 %52 to i64
  %53 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper58 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %53, i32 0, i32 5
  %arrayidx59 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper58, i32 0, i64 %idxprom57
  %ends60 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx59, i32 0, i32 1
  %54 = load i8*, i8** %ends60, align 8
  %cmp61 = icmp uge i8* %add.ptr, %54
  br i1 %cmp61, label %land.lhs.true.63, label %if.then.99

land.lhs.true.63:                                 ; preds = %land.lhs.true.53
  %55 = load i8, i8* %which.addr, align 1
  %idxprom64 = zext i8 %55 to i64
  %56 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper65 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %56, i32 0, i32 5
  %arrayidx66 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper65, i32 0, i64 %idxprom64
  %ends67 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx66, i32 0, i32 1
  %57 = load i8*, i8** %ends67, align 8
  %58 = load i32, i32* %old, align 4
  %idx.ext68 = zext i32 %58 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %57, i64 %idx.ext68
  %59 = load i32, i32* %endoff, align 4
  %idx.ext70 = zext i32 %59 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr69, i64 %idx.ext70
  %60 = load i32, i32* %old, align 4
  %idx.ext72 = zext i32 %60 to i64
  %idx.neg = sub i64 0, %idx.ext72
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr71, i64 %idx.neg
  %61 = load i8, i8* %which.addr, align 1
  %idxprom74 = zext i8 %61 to i64
  %62 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper75 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %62, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper75, i32 0, i64 %idxprom74
  %ends77 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx76, i32 0, i32 1
  %63 = load i8*, i8** %ends77, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %63, i64 256
  %cmp79 = icmp ule i8* %add.ptr73, %add.ptr78
  br i1 %cmp79, label %land.lhs.true.81, label %if.then.99

land.lhs.true.81:                                 ; preds = %land.lhs.true.63
  %64 = load i8, i8* %which.addr, align 1
  %idxprom82 = zext i8 %64 to i64
  %65 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper83 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %65, i32 0, i32 5
  %arrayidx84 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper83, i32 0, i64 %idxprom82
  %ends85 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx84, i32 0, i32 1
  %66 = load i8*, i8** %ends85, align 8
  %67 = load i32, i32* %old, align 4
  %idx.ext86 = zext i32 %67 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %66, i64 %idx.ext86
  %68 = load i32, i32* %endoff, align 4
  %idx.ext88 = zext i32 %68 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr87, i64 %idx.ext88
  %69 = load i32, i32* %old, align 4
  %idx.ext90 = zext i32 %69 to i64
  %idx.neg91 = sub i64 0, %idx.ext90
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr89, i64 %idx.neg91
  %70 = load i8, i8* %which.addr, align 1
  %idxprom93 = zext i8 %70 to i64
  %71 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper94 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %71, i32 0, i32 5
  %arrayidx95 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper94, i32 0, i64 %idxprom93
  %ends96 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx95, i32 0, i32 1
  %72 = load i8*, i8** %ends96, align 8
  %cmp97 = icmp ugt i8* %add.ptr92, %72
  br i1 %cmp97, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.81, %land.lhs.true.63, %land.lhs.true.53, %land.lhs.true, %if.then.46
  store i8 0, i8* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.81
  %73 = load i8, i8* %which.addr, align 1
  %idxprom101 = zext i8 %73 to i64
  %74 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper102 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %74, i32 0, i32 5
  %arrayidx103 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper102, i32 0, i64 %idxprom101
  %ends104 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx103, i32 0, i32 1
  %75 = load i8*, i8** %ends104, align 8
  %76 = load i32, i32* %old, align 4
  %idx.ext105 = zext i32 %76 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %75, i64 %idx.ext105
  %77 = load i32, i32* %i, align 4
  %add107 = add i32 %77, 1
  %78 = trunc i32 %add107 to i8
  %79 = load i32, i32* %endoff, align 4
  %80 = load i32, i32* %old, align 4
  %sub108 = sub i32 %79, %80
  %conv109 = zext i32 %sub108 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr106, i8 %78, i64 %conv109, i32 1, i1 false)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.100, %if.then.42
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.25
  %81 = load i32, i32* %i, align 4
  %inc112 = add i32 %81, 1
  store i32 %inc112, i32* %i, align 4
  %82 = load i32, i32* %counter, align 4
  %dec = add i32 %82, -1
  store i32 %dec, i32* %counter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %83 = load i32, i32* %sum, align 4
  %cmp113 = icmp ne i32 %83, 16777216
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.end.116:                                       ; preds = %while.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.163, %if.end.116
  %84 = load i32, i32* %i, align 4
  %85 = load i8, i8* %which.addr, align 1
  %idxprom118 = zext i8 %85 to i64
  %86 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper119 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %86, i32 0, i32 5
  %arrayidx120 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper119, i32 0, i64 %idxprom118
  %size121 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx120, i32 0, i32 2
  %87 = load i32, i32* %size121, align 4
  %cmp122 = icmp ult i32 %84, %87
  br i1 %cmp122, label %for.body.124, label %for.end.165

for.body.124:                                     ; preds = %for.cond.117
  %88 = load i32, i32* %i, align 4
  %idxprom125 = zext i32 %88 to i64
  %89 = load i8*, i8** %array.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %89, i64 %idxprom125
  %90 = load i8, i8* %arrayidx126, align 1
  %tobool127 = icmp ne i8 %90, 0
  br i1 %tobool127, label %if.then.128, label %if.end.162

if.then.128:                                      ; preds = %for.body.124
  %91 = load i32, i32* %i, align 4
  %idxprom129 = zext i32 %91 to i64
  %92 = load i8*, i8** %array.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %92, i64 %idxprom129
  %93 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %93 to i32
  %cmp132 = icmp sgt i32 %conv131, 17
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.128
  store i8 0, i8* %retval
  br label %return

if.end.135:                                       ; preds = %if.then.128
  %94 = load i32, i32* %i, align 4
  %idxprom136 = zext i32 %94 to i64
  %95 = load i8*, i8** %array.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %95, i64 %idxprom136
  %96 = load i8, i8* %arrayidx137, align 1
  %idxprom138 = zext i8 %96 to i64
  %arrayidx139 = getelementptr inbounds [18 x i32], [18 x i32]* %dict, i32 0, i64 %idxprom138
  %97 = load i32, i32* %arrayidx139, align 4
  %98 = load i8, i8* %which.addr, align 1
  %idxprom140 = zext i8 %98 to i64
  %99 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper141 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %99, i32 0, i32 5
  %arrayidx142 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper141, i32 0, i64 %idxprom140
  %size143 = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx142, i32 0, i32 2
  %100 = load i32, i32* %size143, align 4
  %cmp144 = icmp uge i32 %97, %100
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.135
  store i8 0, i8* %retval
  br label %return

if.end.147:                                       ; preds = %if.end.135
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom148 = zext i32 %102 to i64
  %103 = load i8*, i8** %array.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %103, i64 %idxprom148
  %104 = load i8, i8* %arrayidx149, align 1
  %idxprom150 = zext i8 %104 to i64
  %arrayidx151 = getelementptr inbounds [18 x i32], [18 x i32]* %dict, i32 0, i64 %idxprom150
  %105 = load i32, i32* %arrayidx151, align 4
  %idxprom152 = zext i32 %105 to i64
  %106 = load i8, i8* %which.addr, align 1
  %idxprom153 = zext i8 %106 to i64
  %107 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper154 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %107, i32 0, i32 5
  %arrayidx155 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper154, i32 0, i64 %idxprom153
  %starts = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx155, i32 0, i32 0
  %108 = load i32*, i32** %starts, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %108, i64 %idxprom152
  store i32 %101, i32* %arrayidx156, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom157 = zext i32 %109 to i64
  %110 = load i8*, i8** %array.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %110, i64 %idxprom157
  %111 = load i8, i8* %arrayidx158, align 1
  %idxprom159 = zext i8 %111 to i64
  %arrayidx160 = getelementptr inbounds [18 x i32], [18 x i32]* %dict, i32 0, i64 %idxprom159
  %112 = load i32, i32* %arrayidx160, align 4
  %inc161 = add i32 %112, 1
  store i32 %inc161, i32* %arrayidx160, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.147, %for.body.124
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %113 = load i32, i32* %i, align 4
  %inc164 = add i32 %113, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.117

for.end.165:                                      ; preds = %for.cond.117
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %for.end.165, %if.then.146, %if.then.134, %if.then.115, %if.then.99, %if.then.24, %if.then
  %114 = load i8, i8* %retval
  ret i8 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @getdec(%struct.ASPK* %stream, i8 zeroext %which, i32* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ASPK*, align 8
  %which.addr = alloca i8, align 1
  %err.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %pos = alloca i8, align 1
  %d3 = alloca i32*, align 8
  %d4 = alloca i32*, align 8
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  store i8 %which, i8* %which.addr, align 1
  store i32* %err, i32** %err.addr, align 8
  %0 = load i8, i8* %which.addr, align 1
  %idxprom = zext i8 %0 to i64
  %1 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %1, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x [24 x i32]], [4 x [24 x i32]]* %decarray3, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %arrayidx, i32 0, i32 0
  store i32* %arraydecay, i32** %d3, align 8
  %2 = load i8, i8* %which.addr, align 1
  %idxprom1 = zext i8 %2 to i64
  %3 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %decarray4 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %3, i32 0, i32 10
  %arrayidx2 = getelementptr inbounds [4 x [24 x i32]], [4 x [24 x i32]]* %decarray4, i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [24 x i32], [24 x i32]* %arrayidx2, i32 0, i32 0
  store i32* %arraydecay3, i32** %d4, align 8
  %4 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %call = call i32 @readstream(%struct.ASPK* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash = getelementptr inbounds %struct.ASPK, %struct.ASPK* %6, i32 0, i32 1
  %7 = load i32, i32* %hash, align 4
  %8 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos = getelementptr inbounds %struct.ASPK, %struct.ASPK* %8, i32 0, i32 0
  %9 = load i32, i32* %bitpos, align 4
  %sub = sub i32 8, %9
  %shr = lshr i32 %7, %sub
  %and = and i32 %shr, 16776704
  store i32 %and, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %11 = load i32*, i32** %d3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 8
  %12 = load i32, i32* %arrayidx4, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %ret, align 4
  %shr6 = lshr i32 %13, 16
  %cmp7 = icmp uge i32 %shr6, 256
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  %14 = load i32, i32* %ret, align 4
  %shr10 = lshr i32 %14, 16
  %idxprom11 = zext i32 %shr10 to i64
  %15 = load i8, i8* %which.addr, align 1
  %idxprom12 = zext i8 %15 to i64
  %16 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper = getelementptr inbounds %struct.ASPK, %struct.ASPK* %16, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper, i32 0, i64 %idxprom12
  %ends = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx13, i32 0, i32 1
  %17 = load i8*, i8** %ends, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom11
  %18 = load i8, i8* %arrayidx14, align 1
  store i8 %18, i8* %pos, align 1
  %tobool15 = icmp ne i8 %18, 0
  br i1 %tobool15, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.end.9
  %19 = load i8, i8* %pos, align 1
  %conv = zext i8 %19 to i32
  %cmp16 = icmp sge i32 %conv, 24
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  br label %if.end.56

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %ret, align 4
  %21 = load i32*, i32** %d3, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 10
  %22 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp ult i32 %20, %22
  br i1 %cmp21, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %if.else
  %23 = load i32, i32* %ret, align 4
  %24 = load i32*, i32** %d3, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %24, i64 9
  %25 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp ult i32 %23, %25
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.23
  store i8 9, i8* %pos, align 1
  br label %if.end.29

if.else.28:                                       ; preds = %if.then.23
  store i8 10, i8* %pos, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.55

if.else.30:                                       ; preds = %if.else
  %26 = load i32, i32* %ret, align 4
  %27 = load i32*, i32** %d3, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %27, i64 11
  %28 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp ult i32 %26, %28
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.30
  store i8 11, i8* %pos, align 1
  br label %if.end.54

if.else.35:                                       ; preds = %if.else.30
  %29 = load i32, i32* %ret, align 4
  %30 = load i32*, i32** %d3, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %30, i64 12
  %31 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp ult i32 %29, %31
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.35
  store i8 12, i8* %pos, align 1
  br label %if.end.53

if.else.40:                                       ; preds = %if.else.35
  %32 = load i32, i32* %ret, align 4
  %33 = load i32*, i32** %d3, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %33, i64 13
  %34 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ult i32 %32, %34
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.else.40
  store i8 13, i8* %pos, align 1
  br label %if.end.52

if.else.45:                                       ; preds = %if.else.40
  %35 = load i32, i32* %ret, align 4
  %36 = load i32*, i32** %d3, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %36, i64 14
  %37 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp ult i32 %35, %37
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.45
  store i8 14, i8* %pos, align 1
  br label %if.end.51

if.else.50:                                       ; preds = %if.else.45
  store i8 15, i8* %pos, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.39
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.34
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.19
  %38 = load i8, i8* %pos, align 1
  %conv57 = zext i8 %38 to i32
  %39 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos58 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %39, i32 0, i32 0
  %40 = load i32, i32* %bitpos58, align 4
  %add = add i32 %40, %conv57
  store i32 %add, i32* %bitpos58, align 4
  %41 = load i32, i32* %ret, align 4
  %42 = load i8, i8* %pos, align 1
  %conv59 = zext i8 %42 to i32
  %sub60 = sub nsw i32 %conv59, 1
  %idxprom61 = sext i32 %sub60 to i64
  %43 = load i32*, i32** %d3, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %43, i64 %idxprom61
  %44 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub i32 %41, %44
  %45 = load i8, i8* %pos, align 1
  %conv64 = zext i8 %45 to i32
  %sub65 = sub nsw i32 24, %conv64
  %shr66 = lshr i32 %sub63, %sub65
  %46 = load i8, i8* %pos, align 1
  %idxprom67 = zext i8 %46 to i64
  %47 = load i32*, i32** %d4, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %47, i64 %idxprom67
  %48 = load i32, i32* %arrayidx68, align 4
  %add69 = add i32 %shr66, %48
  store i32 %add69, i32* %ret, align 4
  %49 = load i32, i32* %ret, align 4
  %50 = load i8, i8* %which.addr, align 1
  %idxprom70 = zext i8 %50 to i64
  %51 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper71 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %51, i32 0, i32 5
  %arrayidx72 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper71, i32 0, i64 %idxprom70
  %size = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx72, i32 0, i32 2
  %52 = load i32, i32* %size, align 4
  %cmp73 = icmp uge i32 %49, %52
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.end.56
  %53 = load i32, i32* %ret, align 4
  %idxprom77 = zext i32 %53 to i64
  %54 = load i8, i8* %which.addr, align 1
  %idxprom78 = zext i8 %54 to i64
  %55 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %dict_helper79 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %55, i32 0, i32 5
  %arrayidx80 = getelementptr inbounds [4 x %struct.DICT_HELPER], [4 x %struct.DICT_HELPER]* %dict_helper79, i32 0, i64 %idxprom78
  %starts = getelementptr inbounds %struct.DICT_HELPER, %struct.DICT_HELPER* %arrayidx80, i32 0, i32 0
  %56 = load i32*, i32** %starts, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %56, i64 %idxprom77
  %57 = load i32, i32* %arrayidx81, align 4
  store i32 %57, i32* %ret, align 4
  %58 = load i32*, i32** %err.addr, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %if.end.76, %if.then.75, %if.then.18, %if.then.8, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @readstream(%struct.ASPK* %stream) #4 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct.ASPK*, align 8
  store %struct.ASPK* %stream, %struct.ASPK** %stream.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos = getelementptr inbounds %struct.ASPK, %struct.ASPK* %0, i32 0, i32 0
  %1 = load i32, i32* %bitpos, align 4
  %cmp = icmp uge i32 %1, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %input = getelementptr inbounds %struct.ASPK, %struct.ASPK* %2, i32 0, i32 6
  %3 = load i8*, i8** %input, align 8
  %4 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %iend = getelementptr inbounds %struct.ASPK, %struct.ASPK* %4, i32 0, i32 7
  %5 = load i8*, i8** %iend, align 8
  %cmp1 = icmp uge i8* %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash = getelementptr inbounds %struct.ASPK, %struct.ASPK* %6, i32 0, i32 1
  %7 = load i32, i32* %hash, align 4
  %shl = shl i32 %7, 8
  %8 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %input2 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %8, i32 0, i32 6
  %9 = load i8*, i8** %input2, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %or = or i32 %shl, %conv
  %11 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %hash3 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %11, i32 0, i32 1
  store i32 %or, i32* %hash3, align 4
  %12 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %input4 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %12, i32 0, i32 6
  %13 = load i8*, i8** %input4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %input4, align 8
  %14 = load %struct.ASPK*, %struct.ASPK** %stream.addr, align 8
  %bitpos5 = getelementptr inbounds %struct.ASPK, %struct.ASPK* %14, i32 0, i32 0
  %15 = load i32, i32* %bitpos5, align 4
  %sub = sub i32 %15, 8
  store i32 %sub, i32* %bitpos5, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
