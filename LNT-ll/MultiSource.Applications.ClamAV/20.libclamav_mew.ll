; ModuleID = './MultiSource.Applications.ClamAV/20.libclamav_mew.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzmastate = type { i8*, i32, i32 }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"MEWlzma: entering do while loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MEWlen: %08x ? %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"contain error! %08x %08x ecx: %08x [%08x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"contain error! %08x %08x p0: %08x [%08x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"MEW unpacking section %d (%08x->%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Possibly programmer error or hand-crafted PE file, report to clamav team\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"MEW: WTF - please report\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MEW: Out of memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"MEW: couldn't access lzma 'special' tag\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MEW: lzma %swas used, unpacking\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"special \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"MEW: lzma initialization data not available!\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"MEW: Rebuilding failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mew_lzma(i8* %orgsource, i8* %buf, i32 %size_sum, i32 %vma, i32 %special) #0 {
entry:
  %retval = alloca i32, align 4
  %orgsource.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size_sum.addr = alloca i32, align 4
  %vma.addr = alloca i32, align 4
  %special.addr = alloca i32, align 4
  %var08 = alloca i32, align 4
  %var0C = alloca i32, align 4
  %var10 = alloca i32, align 4
  %var14 = alloca i32, align 4
  %var20 = alloca i32, align 4
  %var24 = alloca i32, align 4
  %var28 = alloca i32, align 4
  %var34 = alloca i32, align 4
  %var40 = alloca %struct.lzmastate, align 8
  %new_eax = alloca i32, align 4
  %new_edx = alloca i32, align 4
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %mainloop = alloca i32, align 4
  %var1 = alloca i8, align 1
  %var30 = alloca i8, align 1
  %source = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %new_ebx = alloca i8*, align 8
  %new_ecx = alloca i8*, align 8
  %var0C_ecxcopy = alloca i8*, align 8
  %var2C = alloca i8*, align 8
  %pushed_esi = alloca i8*, align 8
  %pushed_ebx = alloca i8*, align 8
  %pushed_edx = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %loc_edi = alloca i32, align 4
  %var18 = alloca i8*, align 8
  %loc_ecx = alloca i32, align 4
  %loc_ecx160 = alloca i32, align 4
  %t = alloca i32, align 4
  %loc_ecx515 = alloca i32, align 4
  %adr = alloca i8*, align 8
  store i8* %orgsource, i8** %orgsource.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size_sum, i32* %size_sum.addr, align 4
  store i32 %vma, i32* %vma.addr, align 4
  store i32 %special, i32* %special.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %source, align 8
  store i8* null, i8** %pushed_esi, align 8
  store i8* null, i8** %pushed_ebx, align 8
  store i32 0, i32* %pushed_edx, align 4
  %1 = load i32, i32* %special.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %source, align 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %pushed_edx, align 4
  %5 = load i8*, i8** %source, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %add.ptr, i8** %source, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %source, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %vma.addr, align 4
  %sub = sub i32 %8, %9
  store i32 %sub, i32* %temp, align 4
  %10 = load i8*, i8** %source, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr1, i8** %source, align 8
  %11 = load i32, i32* %special.addr, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** %source, align 8
  store i8* %12, i8** %pushed_ebx, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load i8*, i8** %orgsource.addr, align 8
  %14 = load i32, i32* %temp, align 4
  %idx.ext = zext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr5, i8** %new_ebx, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.575, %if.end.4
  store i32 1, i32* %mainloop, align 4
  br label %do.body.6

do.body.6:                                        ; preds = %do.cond, %do.body
  %15 = load i32, i32* %special.addr, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %do.body.6
  %16 = load i8*, i8** %pushed_ebx, align 8
  store i8* %16, i8** %source, align 8
  %17 = load i8*, i8** %source, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %do.body.6
  %20 = load i8*, i8** %source, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %var28, align 4
  %23 = load i8*, i8** %source, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr12, i8** %source, align 8
  %24 = load i8*, i8** %source, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %vma.addr, align 4
  %sub13 = sub i32 %26, %27
  store i32 %sub13, i32* %temp, align 4
  %28 = load i8*, i8** %orgsource.addr, align 8
  %29 = load i32, i32* %temp, align 4
  %idx.ext14 = zext i32 %29 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %28, i64 %idx.ext14
  store i8* %add.ptr15, i8** %var18, align 8
  %30 = load i32, i32* %special.addr, align 4
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.11
  %31 = load i8*, i8** %orgsource.addr, align 8
  %32 = load i32, i32* %temp, align 4
  %idx.ext18 = zext i32 %32 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %31, i64 %idx.ext18
  store i8* %add.ptr19, i8** %pushed_esi, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.11
  %33 = load i8*, i8** %source, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %33, i64 4
  store i8* %add.ptr21, i8** %source, align 8
  %34 = load i8*, i8** %source, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %temp, align 4
  %37 = load i8*, i8** %source, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %37, i64 5
  store i8* %add.ptr22, i8** %source, align 8
  %38 = load i8*, i8** %source, align 8
  store i8* %38, i8** %var2C, align 8
  %39 = load i32, i32* %temp, align 4
  %40 = load i8*, i8** %source, align 8
  %idx.ext23 = zext i32 %39 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %40, i64 %idx.ext23
  store i8* %add.ptr24, i8** %source, align 8
  %41 = load i32, i32* %special.addr, align 4
  %tobool25 = icmp ne i32 %41, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.20
  %42 = load i8*, i8** %source, align 8
  store i8* %42, i8** %pushed_ebx, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.end.20
  %43 = load i8*, i8** %source, align 8
  store i8* %43, i8** %pushed_ebx, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  store i8 0, i8* %var1, align 1
  %44 = load i8*, i8** %new_ebx, align 8
  store i8* %44, i8** %dest, align 8
  %45 = load i32, i32* %size_sum.addr, align 4
  %cmp28 = icmp ugt i32 %45, 0
  br i1 %cmp28, label %land.lhs.true, label %if.then.40

land.lhs.true:                                    ; preds = %if.end.27
  %46 = load i32, i32* %size_sum.addr, align 4
  %cmp29 = icmp ule i32 28268, %46
  br i1 %cmp29, label %land.lhs.true.30, label %if.then.40

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %47 = load i8*, i8** %dest, align 8
  %48 = load i8*, i8** %orgsource.addr, align 8
  %cmp31 = icmp uge i8* %47, %48
  br i1 %cmp31, label %land.lhs.true.32, label %if.then.40

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %49 = load i8*, i8** %dest, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %49, i64 28268
  %50 = load i8*, i8** %orgsource.addr, align 8
  %51 = load i32, i32* %size_sum.addr, align 4
  %idx.ext34 = zext i32 %51 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %50, i64 %idx.ext34
  %cmp36 = icmp ule i8* %add.ptr33, %add.ptr35
  br i1 %cmp36, label %land.lhs.true.37, label %if.then.40

land.lhs.true.37:                                 ; preds = %land.lhs.true.32
  %52 = load i8*, i8** %dest, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %52, i64 28268
  %53 = load i8*, i8** %orgsource.addr, align 8
  %cmp39 = icmp ugt i8* %add.ptr38, %53
  br i1 %cmp39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.37, %land.lhs.true.32, %land.lhs.true.30, %land.lhs.true, %if.end.27
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.37
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %54 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %54, 7067
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %dest, align 8
  %56 = bitcast i8* %55 to i32*
  store i32 67109888, i32* %56, align 4
  %57 = load i8*, i8** %dest, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr43, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %loc_esi, align 4
  store i32 0, i32* %var20, align 4
  store i32 0, i32* %var08, align 4
  store i32 1, i32* %loc_edi, align 4
  store i32 1, i32* %var24, align 4
  store i32 1, i32* %var10, align 4
  store i32 1, i32* %var14, align 4
  %59 = load i8*, i8** %var2C, align 8
  %call = call i8* @lzma_bswap_4861dc(%struct.lzmastate* %var40, i8* %59)
  store i32 0, i32* %new_edx, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %60 = load i32, i32* %var28, align 4
  %61 = load i32, i32* %loc_esi, align 4
  %cmp44 = icmp ule i32 %60, %61
  br i1 %cmp44, label %do.body.6, label %do.end

do.end:                                           ; preds = %do.cond
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %do.body.45

do.body.45:                                       ; preds = %do.cond.509, %do.end
  %62 = load i32, i32* %var08, align 4
  %and = and i32 %62, 3
  store i32 %and, i32* %new_eax, align 4
  %63 = load i32, i32* %loc_esi, align 4
  %shl = shl i32 %63, 4
  %64 = load i32, i32* %new_eax, align 4
  %add = add i32 %shl, %64
  %mul = mul i32 %add, 2
  %65 = load i8*, i8** %new_ebx, align 8
  %idx.ext46 = zext i32 %mul to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %65, i64 %idx.ext46
  store i8* %add.ptr47, i8** %new_ecx, align 8
  %66 = load i32, i32* %new_eax, align 4
  store i32 %66, i32* %var0C, align 4
  %67 = load i8*, i8** %orgsource.addr, align 8
  %68 = load i32, i32* %size_sum.addr, align 4
  %call48 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %67, i32 %68)
  store i32 %call48, i32* %new_eax, align 4
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.body.45
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %do.body.45
  %69 = load i32, i32* %new_eax, align 4
  %tobool52 = icmp ne i32 %69, 0
  br i1 %tobool52, label %if.then.53, label %if.else.392

if.then.53:                                       ; preds = %if.end.51
  %70 = load i8*, i8** %new_ebx, align 8
  %71 = load i32, i32* %loc_esi, align 4
  %mul54 = mul i32 %71, 2
  %idx.ext55 = zext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %70, i64 %idx.ext55
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 384
  store i8* %add.ptr57, i8** %new_ecx, align 8
  store i32 1, i32* %var20, align 4
  %72 = load i8*, i8** %orgsource.addr, align 8
  %73 = load i32, i32* %size_sum.addr, align 4
  %call58 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %72, i32 %73)
  store i32 %call58, i32* %new_eax, align 4
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.53
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.53
  %74 = load i32, i32* %new_eax, align 4
  %cmp62 = icmp ne i32 %74, 1
  br i1 %cmp62, label %if.then.63, label %if.else.112

if.then.63:                                       ; preds = %if.end.61
  %75 = load i32, i32* %var10, align 4
  store i32 %75, i32* %var24, align 4
  %76 = load i32, i32* %var14, align 4
  store i32 %76, i32* %var10, align 4
  %77 = load i32, i32* %loc_esi, align 4
  %cmp64 = icmp uge i32 %77, 7
  %cond = select i1 %cmp64, i32 10, i32 7
  store i32 %cond, i32* %new_eax, align 4
  %78 = load i8*, i8** %new_ebx, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %78, i64 1636
  store i8* %add.ptr65, i8** %new_ecx, align 8
  %79 = load i32, i32* %loc_edi, align 4
  store i32 %79, i32* %var14, align 4
  %80 = load i32, i32* %new_eax, align 4
  store i32 %80, i32* %loc_esi, align 4
  %81 = load i32, i32* %var0C, align 4
  %82 = load i8*, i8** %orgsource.addr, align 8
  %83 = load i32, i32* %size_sum.addr, align 4
  %call66 = call i32 @lzma_4863da(i32 %81, %struct.lzmastate* %var40, i8** %new_ecx, i32* %new_edx, i32* %new_eax, i8* %82, i32 %83)
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.63
  store i32 -1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.63
  %84 = load i32, i32* %new_eax, align 4
  store i32 %84, i32* %var0C, align 4
  %85 = load i32, i32* %var0C, align 4
  %cmp70 = icmp uge i32 %85, 4
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  store i32 3, i32* %new_eax, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  store i32 6, i32* %new_edx, align 4
  %86 = load i32, i32* %new_eax, align 4
  %shl73 = shl i32 %86, 7
  store i32 %shl73, i32* %new_eax, align 4
  %87 = load i32, i32* %new_eax, align 4
  %88 = load i8*, i8** %new_ebx, align 8
  %idx.ext74 = zext i32 %87 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %88, i64 %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr75, i64 864
  store i8* %add.ptr76, i8** %new_ecx, align 8
  %89 = load i8*, i8** %orgsource.addr, align 8
  %90 = load i32, i32* %size_sum.addr, align 4
  %call77 = call i32 @lzma_4862e0(%struct.lzmastate* %var40, i8** %new_ecx, i32* %new_edx, i32* %new_eax, i8* %89, i32 %90)
  %cmp78 = icmp eq i32 %call77, -1
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.72
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.72
  %91 = load i32, i32* %new_eax, align 4
  %cmp81 = icmp ult i32 %91, 4
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.end.80
  %92 = load i32, i32* %new_eax, align 4
  store i32 %92, i32* %loc_edi, align 4
  br label %if.end.110

if.else.83:                                       ; preds = %if.end.80
  %93 = load i32, i32* %new_eax, align 4
  %shr = ashr i32 %93, 1
  %sub84 = sub nsw i32 %shr, 1
  store i32 %sub84, i32* %loc_ecx, align 4
  %94 = load i32, i32* %new_eax, align 4
  %and85 = and i32 %94, 1
  %or = or i32 %and85, 2
  %95 = load i32, i32* %loc_ecx, align 4
  %and86 = and i32 %95, 255
  %shl87 = shl i32 %or, %and86
  store i32 %shl87, i32* %loc_edi, align 4
  %96 = load i32, i32* %new_eax, align 4
  %cmp88 = icmp uge i32 %96, 14
  br i1 %cmp88, label %if.then.89, label %if.else.98

if.then.89:                                       ; preds = %if.else.83
  %97 = load i32, i32* %loc_ecx, align 4
  %sub90 = sub i32 %97, 4
  store i32 %sub90, i32* %new_edx, align 4
  %98 = load i32, i32* %new_edx, align 4
  %99 = load i8*, i8** %orgsource.addr, align 8
  %100 = load i32, i32* %size_sum.addr, align 4
  %call91 = call i32 @lzma_486204(%struct.lzmastate* %var40, i32 %98, i32* %new_eax, i8* %99, i32 %100)
  %cmp92 = icmp eq i32 %call91, -1
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.89
  store i32 -1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.89
  %101 = load i32, i32* %new_eax, align 4
  %shl95 = shl i32 %101, 4
  %102 = load i32, i32* %loc_edi, align 4
  %add96 = add i32 %102, %shl95
  store i32 %add96, i32* %loc_edi, align 4
  store i32 4, i32* %new_edx, align 4
  %103 = load i8*, i8** %new_ebx, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %103, i64 1604
  store i8* %add.ptr97, i8** %new_ecx, align 8
  br label %if.end.104

if.else.98:                                       ; preds = %if.else.83
  %104 = load i32, i32* %loc_ecx, align 4
  store i32 %104, i32* %new_edx, align 4
  %105 = load i32, i32* %loc_edi, align 4
  %106 = load i32, i32* %new_eax, align 4
  %sub99 = sub i32 %105, %106
  store i32 %sub99, i32* %loc_ecx, align 4
  %107 = load i8*, i8** %new_ebx, align 8
  %108 = load i32, i32* %loc_ecx, align 4
  %mul100 = mul i32 %108, 2
  %idx.ext101 = zext i32 %mul100 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %107, i64 %idx.ext101
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr102, i64 1374
  store i8* %add.ptr103, i8** %new_ecx, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.98, %if.end.94
  %109 = load i8*, i8** %orgsource.addr, align 8
  %110 = load i32, i32* %size_sum.addr, align 4
  %call105 = call i32 @lzma_48631a(%struct.lzmastate* %var40, i8** %new_ecx, i32* %new_edx, i32* %new_eax, i8* %109, i32 %110)
  %cmp106 = icmp eq i32 %call105, -1
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.104
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.104
  %111 = load i32, i32* %new_eax, align 4
  %112 = load i32, i32* %loc_edi, align 4
  %add109 = add i32 %112, %111
  store i32 %add109, i32* %loc_edi, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.108, %if.then.82
  %113 = load i32, i32* %loc_edi, align 4
  %inc111 = add i32 %113, 1
  store i32 %inc111, i32* %loc_edi, align 4
  br label %if.end.231

if.else.112:                                      ; preds = %if.end.61
  %114 = load i8*, i8** %new_ebx, align 8
  %115 = load i32, i32* %loc_esi, align 4
  %mul113 = mul i32 %115, 2
  %idx.ext114 = zext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %114, i64 %idx.ext114
  %add.ptr116 = getelementptr inbounds i8, i8* %add.ptr115, i64 408
  store i8* %add.ptr116, i8** %new_ecx, align 8
  %116 = load i8*, i8** %orgsource.addr, align 8
  %117 = load i32, i32* %size_sum.addr, align 4
  %call117 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %116, i32 %117)
  store i32 %call117, i32* %new_eax, align 4
  %cmp118 = icmp eq i32 %call117, -1
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.else.112
  store i32 -1, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.else.112
  %118 = load i32, i32* %new_eax, align 4
  %tobool121 = icmp ne i32 %118, 0
  br i1 %tobool121, label %if.then.122, label %if.else.147

if.then.122:                                      ; preds = %if.end.120
  %119 = load i8*, i8** %new_ebx, align 8
  %120 = load i32, i32* %loc_esi, align 4
  %mul123 = mul i32 %120, 2
  %idx.ext124 = zext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %119, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 432
  store i8* %add.ptr126, i8** %new_ecx, align 8
  %121 = load i8*, i8** %orgsource.addr, align 8
  %122 = load i32, i32* %size_sum.addr, align 4
  %call127 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %121, i32 %122)
  store i32 %call127, i32* %new_eax, align 4
  %cmp128 = icmp eq i32 %call127, -1
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.122
  store i32 -1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %if.then.122
  %123 = load i32, i32* %new_eax, align 4
  %tobool131 = icmp ne i32 %123, 0
  br i1 %tobool131, label %if.then.132, label %if.else.145

if.then.132:                                      ; preds = %if.end.130
  %124 = load i8*, i8** %new_ebx, align 8
  %125 = load i32, i32* %loc_esi, align 4
  %mul133 = mul i32 %125, 2
  %idx.ext134 = zext i32 %mul133 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %124, i64 %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr135, i64 456
  store i8* %add.ptr136, i8** %new_ecx, align 8
  %126 = load i8*, i8** %orgsource.addr, align 8
  %127 = load i32, i32* %size_sum.addr, align 4
  %call137 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %126, i32 %127)
  store i32 %call137, i32* %new_eax, align 4
  %cmp138 = icmp eq i32 %call137, -1
  br i1 %cmp138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.132
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.then.132
  %128 = load i32, i32* %new_eax, align 4
  %tobool141 = icmp ne i32 %128, 0
  br i1 %tobool141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %if.end.140
  %129 = load i32, i32* %var24, align 4
  store i32 %129, i32* %new_eax, align 4
  %130 = load i32, i32* %var10, align 4
  store i32 %130, i32* %var24, align 4
  br label %if.end.144

if.else.143:                                      ; preds = %if.end.140
  %131 = load i32, i32* %var10, align 4
  store i32 %131, i32* %new_eax, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  %132 = load i32, i32* %var14, align 4
  store i32 %132, i32* %var10, align 4
  br label %if.end.146

if.else.145:                                      ; preds = %if.end.130
  %133 = load i32, i32* %var14, align 4
  store i32 %133, i32* %new_eax, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.end.144
  %134 = load i32, i32* %loc_edi, align 4
  store i32 %134, i32* %var14, align 4
  %135 = load i32, i32* %new_eax, align 4
  store i32 %135, i32* %loc_edi, align 4
  br label %if.end.221

if.else.147:                                      ; preds = %if.end.120
  %136 = load i32, i32* %loc_esi, align 4
  %add148 = add i32 %136, 15
  %shl149 = shl i32 %add148, 4
  %137 = load i32, i32* %var0C, align 4
  %add150 = add i32 %shl149, %137
  store i32 %add150, i32* %new_eax, align 4
  %138 = load i8*, i8** %new_ebx, align 8
  %139 = load i32, i32* %new_eax, align 4
  %mul151 = mul i32 %139, 2
  %idx.ext152 = zext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %138, i64 %idx.ext152
  store i8* %add.ptr153, i8** %new_ecx, align 8
  %140 = load i8*, i8** %orgsource.addr, align 8
  %141 = load i32, i32* %size_sum.addr, align 4
  %call154 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %140, i32 %141)
  store i32 %call154, i32* %new_eax, align 4
  %cmp155 = icmp eq i32 %call154, -1
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.else.147
  store i32 -1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.else.147
  %142 = load i32, i32* %new_eax, align 4
  %tobool158 = icmp ne i32 %142, 0
  br i1 %tobool158, label %if.end.220, label %if.then.159

if.then.159:                                      ; preds = %if.end.157
  %143 = load i32, i32* %var08, align 4
  store i32 %143, i32* %loc_ecx160, align 4
  %144 = load i32, i32* %loc_edi, align 4
  %145 = load i32, i32* %loc_ecx160, align 4
  %sub161 = sub i32 %145, %144
  store i32 %sub161, i32* %loc_ecx160, align 4
  %146 = load i32, i32* %loc_esi, align 4
  %cmp162 = icmp uge i32 %146, 7
  %cond163 = select i1 %cmp162, i32 11, i32 9
  store i32 %cond163, i32* %loc_esi, align 4
  %147 = load i32, i32* %size_sum.addr, align 4
  %cmp164 = icmp ugt i32 %147, 0
  br i1 %cmp164, label %land.lhs.true.165, label %if.then.183

land.lhs.true.165:                                ; preds = %if.then.159
  %148 = load i32, i32* %size_sum.addr, align 4
  %cmp166 = icmp ule i32 1, %148
  br i1 %cmp166, label %land.lhs.true.167, label %if.then.183

land.lhs.true.167:                                ; preds = %land.lhs.true.165
  %149 = load i8*, i8** %var18, align 8
  %150 = load i32, i32* %loc_ecx160, align 4
  %idx.ext168 = zext i32 %150 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %149, i64 %idx.ext168
  %151 = load i8*, i8** %orgsource.addr, align 8
  %cmp170 = icmp uge i8* %add.ptr169, %151
  br i1 %cmp170, label %land.lhs.true.171, label %if.then.183

land.lhs.true.171:                                ; preds = %land.lhs.true.167
  %152 = load i8*, i8** %var18, align 8
  %153 = load i32, i32* %loc_ecx160, align 4
  %idx.ext172 = zext i32 %153 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %152, i64 %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr173, i64 1
  %154 = load i8*, i8** %orgsource.addr, align 8
  %155 = load i32, i32* %size_sum.addr, align 4
  %idx.ext175 = zext i32 %155 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %154, i64 %idx.ext175
  %cmp177 = icmp ule i8* %add.ptr174, %add.ptr176
  br i1 %cmp177, label %land.lhs.true.178, label %if.then.183

land.lhs.true.178:                                ; preds = %land.lhs.true.171
  %156 = load i8*, i8** %var18, align 8
  %157 = load i32, i32* %loc_ecx160, align 4
  %idx.ext179 = zext i32 %157 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %156, i64 %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr180, i64 1
  %158 = load i8*, i8** %orgsource.addr, align 8
  %cmp182 = icmp ugt i8* %add.ptr181, %158
  br i1 %cmp182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.178, %land.lhs.true.171, %land.lhs.true.167, %land.lhs.true.165, %if.then.159
  store i32 -1, i32* %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.178
  %159 = load i8*, i8** %var18, align 8
  %160 = load i32, i32* %loc_ecx160, align 4
  %idx.ext185 = zext i32 %160 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %159, i64 %idx.ext185
  %161 = load i8, i8* %add.ptr186, align 1
  store i8 %161, i8* %var1, align 1
  %162 = load i32, i32* %loc_ecx160, align 4
  %and187 = and i32 %162, -256
  %163 = load i8, i8* %var1, align 1
  %conv = sext i8 %163 to i32
  %or188 = or i32 %and187, %conv
  store i32 %or188, i32* %loc_ecx160, align 4
  %164 = load i32, i32* %var08, align 4
  %inc189 = add i32 %164, 1
  store i32 %inc189, i32* %var08, align 4
  store i32 %164, i32* %new_edx, align 4
  %165 = load i32, i32* %size_sum.addr, align 4
  %cmp190 = icmp ugt i32 %165, 0
  br i1 %cmp190, label %land.lhs.true.192, label %if.then.214

land.lhs.true.192:                                ; preds = %if.end.184
  %166 = load i32, i32* %size_sum.addr, align 4
  %cmp193 = icmp ule i32 1, %166
  br i1 %cmp193, label %land.lhs.true.195, label %if.then.214

land.lhs.true.195:                                ; preds = %land.lhs.true.192
  %167 = load i8*, i8** %var18, align 8
  %168 = load i32, i32* %new_edx, align 4
  %idx.ext196 = zext i32 %168 to i64
  %add.ptr197 = getelementptr inbounds i8, i8* %167, i64 %idx.ext196
  %169 = load i8*, i8** %orgsource.addr, align 8
  %cmp198 = icmp uge i8* %add.ptr197, %169
  br i1 %cmp198, label %land.lhs.true.200, label %if.then.214

land.lhs.true.200:                                ; preds = %land.lhs.true.195
  %170 = load i8*, i8** %var18, align 8
  %171 = load i32, i32* %new_edx, align 4
  %idx.ext201 = zext i32 %171 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %170, i64 %idx.ext201
  %add.ptr203 = getelementptr inbounds i8, i8* %add.ptr202, i64 1
  %172 = load i8*, i8** %orgsource.addr, align 8
  %173 = load i32, i32* %size_sum.addr, align 4
  %idx.ext204 = zext i32 %173 to i64
  %add.ptr205 = getelementptr inbounds i8, i8* %172, i64 %idx.ext204
  %cmp206 = icmp ule i8* %add.ptr203, %add.ptr205
  br i1 %cmp206, label %land.lhs.true.208, label %if.then.214

land.lhs.true.208:                                ; preds = %land.lhs.true.200
  %174 = load i8*, i8** %var18, align 8
  %175 = load i32, i32* %new_edx, align 4
  %idx.ext209 = zext i32 %175 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %174, i64 %idx.ext209
  %add.ptr211 = getelementptr inbounds i8, i8* %add.ptr210, i64 1
  %176 = load i8*, i8** %orgsource.addr, align 8
  %cmp212 = icmp ugt i8* %add.ptr211, %176
  br i1 %cmp212, label %if.end.215, label %if.then.214

if.then.214:                                      ; preds = %land.lhs.true.208, %land.lhs.true.200, %land.lhs.true.195, %land.lhs.true.192, %if.end.184
  store i32 -1, i32* %retval
  br label %return

if.end.215:                                       ; preds = %land.lhs.true.208
  %177 = load i32, i32* %loc_ecx160, align 4
  %and216 = and i32 %177, 255
  %conv217 = trunc i32 %and216 to i8
  %178 = load i8*, i8** %var18, align 8
  %179 = load i32, i32* %new_edx, align 4
  %idx.ext218 = zext i32 %179 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %178, i64 %idx.ext218
  store i8 %conv217, i8* %add.ptr219, align 1
  %180 = load i32, i32* %var08, align 4
  store i32 %180, i32* %new_eax, align 4
  br label %do.cond.509

if.end.220:                                       ; preds = %if.end.157
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.146
  %181 = load i8*, i8** %new_ebx, align 8
  %add.ptr222 = getelementptr inbounds i8, i8* %181, i64 2664
  store i8* %add.ptr222, i8** %new_ecx, align 8
  %182 = load i32, i32* %var0C, align 4
  %183 = load i8*, i8** %orgsource.addr, align 8
  %184 = load i32, i32* %size_sum.addr, align 4
  %call223 = call i32 @lzma_4863da(i32 %182, %struct.lzmastate* %var40, i8** %new_ecx, i32* %new_edx, i32* %new_eax, i8* %183, i32 %184)
  %cmp224 = icmp eq i32 %call223, -1
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.221
  store i32 -1, i32* %retval
  br label %return

if.end.227:                                       ; preds = %if.end.221
  %185 = load i32, i32* %new_eax, align 4
  store i32 %185, i32* %var0C, align 4
  %186 = load i32, i32* %loc_esi, align 4
  %cmp228 = icmp uge i32 %186, 7
  %cond230 = select i1 %cmp228, i32 11, i32 8
  store i32 %cond230, i32* %new_eax, align 4
  %187 = load i32, i32* %new_eax, align 4
  store i32 %187, i32* %loc_esi, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.227, %if.end.110
  %188 = load i32, i32* %loc_edi, align 4
  %tobool232 = icmp ne i32 %188, 0
  br i1 %tobool232, label %if.else.234, label %if.then.233

if.then.233:                                      ; preds = %if.end.231
  br label %do.end.512

if.else.234:                                      ; preds = %if.end.231
  %189 = load i32, i32* %var0C, align 4
  %add235 = add i32 %189, 2
  store i32 %add235, i32* %var0C, align 4
  %190 = load i8*, i8** %var18, align 8
  store i8* %190, i8** %new_ecx, align 8
  %191 = load i32, i32* %var08, align 4
  store i32 %191, i32* %new_eax, align 4
  store i32 %191, i32* %new_edx, align 4
  %192 = load i32, i32* %loc_edi, align 4
  %193 = load i32, i32* %new_eax, align 4
  %sub236 = sub i32 %193, %192
  store i32 %sub236, i32* %new_eax, align 4
  %194 = load i32, i32* %var0C, align 4
  %195 = load i32, i32* %var28, align 4
  %196 = load i32, i32* %new_edx, align 4
  %sub237 = sub i32 %195, %196
  %cmp238 = icmp ult i32 %194, %sub237
  br i1 %cmp238, label %land.lhs.true.240, label %lor.lhs.false.299

land.lhs.true.240:                                ; preds = %if.else.234
  %197 = load i32, i32* %size_sum.addr, align 4
  %cmp241 = icmp ugt i32 %197, 0
  br i1 %cmp241, label %land.lhs.true.243, label %if.then.374

land.lhs.true.243:                                ; preds = %land.lhs.true.240
  %198 = load i32, i32* %var0C, align 4
  %cmp244 = icmp ugt i32 %198, 0
  br i1 %cmp244, label %land.lhs.true.246, label %if.then.374

land.lhs.true.246:                                ; preds = %land.lhs.true.243
  %199 = load i32, i32* %var0C, align 4
  %200 = load i32, i32* %size_sum.addr, align 4
  %cmp247 = icmp ule i32 %199, %200
  br i1 %cmp247, label %land.lhs.true.249, label %if.then.374

land.lhs.true.249:                                ; preds = %land.lhs.true.246
  %201 = load i8*, i8** %new_ecx, align 8
  %202 = load i32, i32* %new_eax, align 4
  %idx.ext250 = zext i32 %202 to i64
  %add.ptr251 = getelementptr inbounds i8, i8* %201, i64 %idx.ext250
  %203 = load i8*, i8** %orgsource.addr, align 8
  %cmp252 = icmp uge i8* %add.ptr251, %203
  br i1 %cmp252, label %land.lhs.true.254, label %if.then.374

land.lhs.true.254:                                ; preds = %land.lhs.true.249
  %204 = load i8*, i8** %new_ecx, align 8
  %205 = load i32, i32* %new_eax, align 4
  %idx.ext255 = zext i32 %205 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %204, i64 %idx.ext255
  %206 = load i32, i32* %var0C, align 4
  %idx.ext257 = zext i32 %206 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %add.ptr256, i64 %idx.ext257
  %207 = load i8*, i8** %orgsource.addr, align 8
  %208 = load i32, i32* %size_sum.addr, align 4
  %idx.ext259 = zext i32 %208 to i64
  %add.ptr260 = getelementptr inbounds i8, i8* %207, i64 %idx.ext259
  %cmp261 = icmp ule i8* %add.ptr258, %add.ptr260
  br i1 %cmp261, label %land.lhs.true.263, label %if.then.374

land.lhs.true.263:                                ; preds = %land.lhs.true.254
  %209 = load i8*, i8** %new_ecx, align 8
  %210 = load i32, i32* %new_eax, align 4
  %idx.ext264 = zext i32 %210 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %209, i64 %idx.ext264
  %211 = load i32, i32* %var0C, align 4
  %idx.ext266 = zext i32 %211 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %add.ptr265, i64 %idx.ext266
  %212 = load i8*, i8** %orgsource.addr, align 8
  %cmp268 = icmp ugt i8* %add.ptr267, %212
  br i1 %cmp268, label %lor.lhs.false, label %if.then.374

lor.lhs.false:                                    ; preds = %land.lhs.true.263
  %213 = load i32, i32* %size_sum.addr, align 4
  %cmp270 = icmp ugt i32 %213, 0
  br i1 %cmp270, label %land.lhs.true.272, label %if.then.374

land.lhs.true.272:                                ; preds = %lor.lhs.false
  %214 = load i32, i32* %var0C, align 4
  %cmp273 = icmp ugt i32 %214, 0
  br i1 %cmp273, label %land.lhs.true.275, label %if.then.374

land.lhs.true.275:                                ; preds = %land.lhs.true.272
  %215 = load i32, i32* %var0C, align 4
  %216 = load i32, i32* %size_sum.addr, align 4
  %cmp276 = icmp ule i32 %215, %216
  br i1 %cmp276, label %land.lhs.true.278, label %if.then.374

land.lhs.true.278:                                ; preds = %land.lhs.true.275
  %217 = load i8*, i8** %new_ecx, align 8
  %218 = load i32, i32* %new_edx, align 4
  %idx.ext279 = zext i32 %218 to i64
  %add.ptr280 = getelementptr inbounds i8, i8* %217, i64 %idx.ext279
  %219 = load i8*, i8** %orgsource.addr, align 8
  %cmp281 = icmp uge i8* %add.ptr280, %219
  br i1 %cmp281, label %land.lhs.true.283, label %if.then.374

land.lhs.true.283:                                ; preds = %land.lhs.true.278
  %220 = load i8*, i8** %new_ecx, align 8
  %221 = load i32, i32* %new_edx, align 4
  %idx.ext284 = zext i32 %221 to i64
  %add.ptr285 = getelementptr inbounds i8, i8* %220, i64 %idx.ext284
  %222 = load i32, i32* %var0C, align 4
  %idx.ext286 = zext i32 %222 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %add.ptr285, i64 %idx.ext286
  %223 = load i8*, i8** %orgsource.addr, align 8
  %224 = load i32, i32* %size_sum.addr, align 4
  %idx.ext288 = zext i32 %224 to i64
  %add.ptr289 = getelementptr inbounds i8, i8* %223, i64 %idx.ext288
  %cmp290 = icmp ule i8* %add.ptr287, %add.ptr289
  br i1 %cmp290, label %land.lhs.true.292, label %if.then.374

land.lhs.true.292:                                ; preds = %land.lhs.true.283
  %225 = load i8*, i8** %new_ecx, align 8
  %226 = load i32, i32* %new_edx, align 4
  %idx.ext293 = zext i32 %226 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %225, i64 %idx.ext293
  %227 = load i32, i32* %var0C, align 4
  %idx.ext295 = zext i32 %227 to i64
  %add.ptr296 = getelementptr inbounds i8, i8* %add.ptr294, i64 %idx.ext295
  %228 = load i8*, i8** %orgsource.addr, align 8
  %cmp297 = icmp ugt i8* %add.ptr296, %228
  br i1 %cmp297, label %lor.lhs.false.299, label %if.then.374

lor.lhs.false.299:                                ; preds = %land.lhs.true.292, %if.else.234
  %229 = load i32, i32* %size_sum.addr, align 4
  %cmp300 = icmp ugt i32 %229, 0
  br i1 %cmp300, label %land.lhs.true.302, label %if.then.374

land.lhs.true.302:                                ; preds = %lor.lhs.false.299
  %230 = load i32, i32* %var28, align 4
  %231 = load i32, i32* %new_edx, align 4
  %sub303 = sub i32 %230, %231
  %cmp304 = icmp ugt i32 %sub303, 0
  br i1 %cmp304, label %land.lhs.true.306, label %if.then.374

land.lhs.true.306:                                ; preds = %land.lhs.true.302
  %232 = load i32, i32* %var28, align 4
  %233 = load i32, i32* %new_edx, align 4
  %sub307 = sub i32 %232, %233
  %234 = load i32, i32* %size_sum.addr, align 4
  %cmp308 = icmp ule i32 %sub307, %234
  br i1 %cmp308, label %land.lhs.true.310, label %if.then.374

land.lhs.true.310:                                ; preds = %land.lhs.true.306
  %235 = load i8*, i8** %new_ecx, align 8
  %236 = load i32, i32* %new_eax, align 4
  %idx.ext311 = zext i32 %236 to i64
  %add.ptr312 = getelementptr inbounds i8, i8* %235, i64 %idx.ext311
  %237 = load i8*, i8** %orgsource.addr, align 8
  %cmp313 = icmp uge i8* %add.ptr312, %237
  br i1 %cmp313, label %land.lhs.true.315, label %if.then.374

land.lhs.true.315:                                ; preds = %land.lhs.true.310
  %238 = load i8*, i8** %new_ecx, align 8
  %239 = load i32, i32* %new_eax, align 4
  %idx.ext316 = zext i32 %239 to i64
  %add.ptr317 = getelementptr inbounds i8, i8* %238, i64 %idx.ext316
  %240 = load i32, i32* %var28, align 4
  %idx.ext318 = zext i32 %240 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr317, i64 %idx.ext318
  %241 = load i32, i32* %new_edx, align 4
  %idx.ext320 = zext i32 %241 to i64
  %idx.neg = sub i64 0, %idx.ext320
  %add.ptr321 = getelementptr inbounds i8, i8* %add.ptr319, i64 %idx.neg
  %242 = load i8*, i8** %orgsource.addr, align 8
  %243 = load i32, i32* %size_sum.addr, align 4
  %idx.ext322 = zext i32 %243 to i64
  %add.ptr323 = getelementptr inbounds i8, i8* %242, i64 %idx.ext322
  %cmp324 = icmp ule i8* %add.ptr321, %add.ptr323
  br i1 %cmp324, label %land.lhs.true.326, label %if.then.374

land.lhs.true.326:                                ; preds = %land.lhs.true.315
  %244 = load i8*, i8** %new_ecx, align 8
  %245 = load i32, i32* %new_eax, align 4
  %idx.ext327 = zext i32 %245 to i64
  %add.ptr328 = getelementptr inbounds i8, i8* %244, i64 %idx.ext327
  %246 = load i32, i32* %var28, align 4
  %idx.ext329 = zext i32 %246 to i64
  %add.ptr330 = getelementptr inbounds i8, i8* %add.ptr328, i64 %idx.ext329
  %247 = load i32, i32* %new_edx, align 4
  %idx.ext331 = zext i32 %247 to i64
  %idx.neg332 = sub i64 0, %idx.ext331
  %add.ptr333 = getelementptr inbounds i8, i8* %add.ptr330, i64 %idx.neg332
  %248 = load i8*, i8** %orgsource.addr, align 8
  %cmp334 = icmp ugt i8* %add.ptr333, %248
  br i1 %cmp334, label %lor.lhs.false.336, label %if.then.374

lor.lhs.false.336:                                ; preds = %land.lhs.true.326
  %249 = load i32, i32* %size_sum.addr, align 4
  %cmp337 = icmp ugt i32 %249, 0
  br i1 %cmp337, label %land.lhs.true.339, label %if.then.374

land.lhs.true.339:                                ; preds = %lor.lhs.false.336
  %250 = load i32, i32* %var28, align 4
  %251 = load i32, i32* %new_edx, align 4
  %sub340 = sub i32 %250, %251
  %cmp341 = icmp ugt i32 %sub340, 0
  br i1 %cmp341, label %land.lhs.true.343, label %if.then.374

land.lhs.true.343:                                ; preds = %land.lhs.true.339
  %252 = load i32, i32* %var28, align 4
  %253 = load i32, i32* %new_edx, align 4
  %sub344 = sub i32 %252, %253
  %254 = load i32, i32* %size_sum.addr, align 4
  %cmp345 = icmp ule i32 %sub344, %254
  br i1 %cmp345, label %land.lhs.true.347, label %if.then.374

land.lhs.true.347:                                ; preds = %land.lhs.true.343
  %255 = load i8*, i8** %new_ecx, align 8
  %256 = load i32, i32* %new_edx, align 4
  %idx.ext348 = zext i32 %256 to i64
  %add.ptr349 = getelementptr inbounds i8, i8* %255, i64 %idx.ext348
  %257 = load i8*, i8** %orgsource.addr, align 8
  %cmp350 = icmp uge i8* %add.ptr349, %257
  br i1 %cmp350, label %land.lhs.true.352, label %if.then.374

land.lhs.true.352:                                ; preds = %land.lhs.true.347
  %258 = load i8*, i8** %new_ecx, align 8
  %259 = load i32, i32* %new_edx, align 4
  %idx.ext353 = zext i32 %259 to i64
  %add.ptr354 = getelementptr inbounds i8, i8* %258, i64 %idx.ext353
  %260 = load i32, i32* %var28, align 4
  %idx.ext355 = zext i32 %260 to i64
  %add.ptr356 = getelementptr inbounds i8, i8* %add.ptr354, i64 %idx.ext355
  %261 = load i32, i32* %new_edx, align 4
  %idx.ext357 = zext i32 %261 to i64
  %idx.neg358 = sub i64 0, %idx.ext357
  %add.ptr359 = getelementptr inbounds i8, i8* %add.ptr356, i64 %idx.neg358
  %262 = load i8*, i8** %orgsource.addr, align 8
  %263 = load i32, i32* %size_sum.addr, align 4
  %idx.ext360 = zext i32 %263 to i64
  %add.ptr361 = getelementptr inbounds i8, i8* %262, i64 %idx.ext360
  %cmp362 = icmp ule i8* %add.ptr359, %add.ptr361
  br i1 %cmp362, label %land.lhs.true.364, label %if.then.374

land.lhs.true.364:                                ; preds = %land.lhs.true.352
  %264 = load i8*, i8** %new_ecx, align 8
  %265 = load i32, i32* %new_edx, align 4
  %idx.ext365 = zext i32 %265 to i64
  %add.ptr366 = getelementptr inbounds i8, i8* %264, i64 %idx.ext365
  %266 = load i32, i32* %var28, align 4
  %idx.ext367 = zext i32 %266 to i64
  %add.ptr368 = getelementptr inbounds i8, i8* %add.ptr366, i64 %idx.ext367
  %267 = load i32, i32* %new_edx, align 4
  %idx.ext369 = zext i32 %267 to i64
  %idx.neg370 = sub i64 0, %idx.ext369
  %add.ptr371 = getelementptr inbounds i8, i8* %add.ptr368, i64 %idx.neg370
  %268 = load i8*, i8** %orgsource.addr, align 8
  %cmp372 = icmp ugt i8* %add.ptr371, %268
  br i1 %cmp372, label %if.end.375, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.364, %land.lhs.true.352, %land.lhs.true.347, %land.lhs.true.343, %land.lhs.true.339, %lor.lhs.false.336, %land.lhs.true.326, %land.lhs.true.315, %land.lhs.true.310, %land.lhs.true.306, %land.lhs.true.302, %lor.lhs.false.299, %land.lhs.true.292, %land.lhs.true.283, %land.lhs.true.278, %land.lhs.true.275, %land.lhs.true.272, %lor.lhs.false, %land.lhs.true.263, %land.lhs.true.254, %land.lhs.true.249, %land.lhs.true.246, %land.lhs.true.243, %land.lhs.true.240
  store i32 -1, i32* %retval
  br label %return

if.end.375:                                       ; preds = %land.lhs.true.364
  br label %do.body.376

do.body.376:                                      ; preds = %do.cond.387, %if.end.375
  %269 = load i8*, i8** %new_ecx, align 8
  %270 = load i32, i32* %new_eax, align 4
  %idx.ext377 = zext i32 %270 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %269, i64 %idx.ext377
  %271 = load i8, i8* %add.ptr378, align 1
  store i8 %271, i8* %var1, align 1
  %272 = load i8, i8* %var1, align 1
  %273 = load i8*, i8** %new_ecx, align 8
  %274 = load i32, i32* %new_edx, align 4
  %idx.ext379 = zext i32 %274 to i64
  %add.ptr380 = getelementptr inbounds i8, i8* %273, i64 %idx.ext379
  store i8 %272, i8* %add.ptr380, align 1
  %275 = load i32, i32* %new_edx, align 4
  %inc381 = add i32 %275, 1
  store i32 %inc381, i32* %new_edx, align 4
  %276 = load i32, i32* %new_eax, align 4
  %inc382 = add i32 %276, 1
  store i32 %inc382, i32* %new_eax, align 4
  %277 = load i32, i32* %var0C, align 4
  %dec = add i32 %277, -1
  store i32 %dec, i32* %var0C, align 4
  %278 = load i32, i32* %var0C, align 4
  %cmp383 = icmp ule i32 %278, 0
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %do.body.376
  br label %do.end.390

if.end.386:                                       ; preds = %do.body.376
  br label %do.cond.387

do.cond.387:                                      ; preds = %if.end.386
  %279 = load i32, i32* %new_edx, align 4
  %280 = load i32, i32* %var28, align 4
  %cmp388 = icmp ult i32 %279, %280
  br i1 %cmp388, label %do.body.376, label %do.end.390

do.end.390:                                       ; preds = %do.cond.387, %if.then.385
  %281 = load i32, i32* %new_edx, align 4
  store i32 %281, i32* %var08, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %do.end.390
  br label %if.end.508

if.else.392:                                      ; preds = %if.end.51
  %282 = load i8, i8* %var1, align 1
  %conv393 = sext i8 %282 to i32
  %and394 = and i32 %conv393, 255
  %shr395 = ashr i32 %and394, 4
  %mul396 = mul nsw i32 %shr395, 3
  %shl397 = shl i32 %mul396, 9
  store i32 %shl397, i32* %new_eax, align 4
  %283 = load i32, i32* %new_eax, align 4
  %284 = load i8*, i8** %new_ebx, align 8
  %idx.ext398 = zext i32 %283 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %284, i64 %idx.ext398
  %add.ptr400 = getelementptr inbounds i8, i8* %add.ptr399, i64 3692
  store i8* %add.ptr400, i8** %new_ecx, align 8
  %285 = load i8*, i8** %new_ecx, align 8
  store i8* %285, i8** %var0C_ecxcopy, align 8
  %286 = load i32, i32* %loc_esi, align 4
  %cmp401 = icmp uge i32 %286, 4
  br i1 %cmp401, label %if.then.403, label %if.else.411

if.then.403:                                      ; preds = %if.else.392
  %287 = load i32, i32* %loc_esi, align 4
  %cmp404 = icmp uge i32 %287, 10
  br i1 %cmp404, label %if.then.406, label %if.else.408

if.then.406:                                      ; preds = %if.then.403
  %288 = load i32, i32* %loc_esi, align 4
  %sub407 = sub i32 %288, 6
  store i32 %sub407, i32* %loc_esi, align 4
  br label %if.end.410

if.else.408:                                      ; preds = %if.then.403
  %289 = load i32, i32* %loc_esi, align 4
  %sub409 = sub i32 %289, 3
  store i32 %sub409, i32* %loc_esi, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.408, %if.then.406
  br label %if.end.412

if.else.411:                                      ; preds = %if.else.392
  store i32 0, i32* %loc_esi, align 4
  br label %if.end.412

if.end.412:                                       ; preds = %if.else.411, %if.end.410
  %290 = load i32, i32* %var20, align 4
  %cmp413 = icmp eq i32 %290, 0
  br i1 %cmp413, label %if.then.415, label %if.else.436

if.then.415:                                      ; preds = %if.end.412
  store i32 1, i32* %new_eax, align 4
  br label %do.body.416

do.body.416:                                      ; preds = %do.cond.430, %if.then.415
  %291 = load i32, i32* %new_eax, align 4
  %292 = load i32, i32* %new_eax, align 4
  %add417 = add i32 %292, %291
  store i32 %add417, i32* %new_eax, align 4
  %293 = load i32, i32* %new_eax, align 4
  %294 = load i8*, i8** %new_ecx, align 8
  %idx.ext418 = zext i32 %293 to i64
  %add.ptr419 = getelementptr inbounds i8, i8* %294, i64 %idx.ext418
  store i8* %add.ptr419, i8** %new_ecx, align 8
  %295 = load i32, i32* %new_eax, align 4
  store i32 %295, i32* %var34, align 4
  %296 = load i8*, i8** %orgsource.addr, align 8
  %297 = load i32, i32* %size_sum.addr, align 4
  %call420 = call i32 @lzma_486248(%struct.lzmastate* %var40, i8** %new_ecx, i8* %296, i32 %297)
  store i32 %call420, i32* %new_eax, align 4
  %cmp421 = icmp eq i32 %call420, -1
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %do.body.416
  store i32 -1, i32* %retval
  br label %return

if.end.424:                                       ; preds = %do.body.416
  %298 = load i32, i32* %var34, align 4
  %299 = load i32, i32* %new_eax, align 4
  %or425 = or i32 %299, %298
  store i32 %or425, i32* %new_eax, align 4
  %300 = load i32, i32* %new_eax, align 4
  %cmp426 = icmp ult i32 %300, 256
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.424
  %301 = load i8*, i8** %var0C_ecxcopy, align 8
  store i8* %301, i8** %new_ecx, align 8
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.428, %if.end.424
  br label %do.cond.430

do.cond.430:                                      ; preds = %if.end.429
  %302 = load i32, i32* %new_eax, align 4
  %cmp431 = icmp ult i32 %302, 256
  br i1 %cmp431, label %do.body.416, label %do.end.433

do.end.433:                                       ; preds = %do.cond.430
  %303 = load i32, i32* %new_eax, align 4
  %and434 = and i32 %303, 255
  %conv435 = trunc i32 %and434 to i8
  store i8 %conv435, i8* %var1, align 1
  br label %if.end.478

if.else.436:                                      ; preds = %if.end.412
  %304 = load i32, i32* %var08, align 4
  %305 = load i32, i32* %loc_edi, align 4
  %sub437 = sub i32 %304, %305
  store i32 %sub437, i32* %new_eax, align 4
  %306 = load i32, i32* %size_sum.addr, align 4
  %cmp438 = icmp ugt i32 %306, 0
  br i1 %cmp438, label %land.lhs.true.440, label %if.then.462

land.lhs.true.440:                                ; preds = %if.else.436
  %307 = load i32, i32* %size_sum.addr, align 4
  %cmp441 = icmp ule i32 1, %307
  br i1 %cmp441, label %land.lhs.true.443, label %if.then.462

land.lhs.true.443:                                ; preds = %land.lhs.true.440
  %308 = load i8*, i8** %var18, align 8
  %309 = load i32, i32* %new_eax, align 4
  %idx.ext444 = zext i32 %309 to i64
  %add.ptr445 = getelementptr inbounds i8, i8* %308, i64 %idx.ext444
  %310 = load i8*, i8** %orgsource.addr, align 8
  %cmp446 = icmp uge i8* %add.ptr445, %310
  br i1 %cmp446, label %land.lhs.true.448, label %if.then.462

land.lhs.true.448:                                ; preds = %land.lhs.true.443
  %311 = load i8*, i8** %var18, align 8
  %312 = load i32, i32* %new_eax, align 4
  %idx.ext449 = zext i32 %312 to i64
  %add.ptr450 = getelementptr inbounds i8, i8* %311, i64 %idx.ext449
  %add.ptr451 = getelementptr inbounds i8, i8* %add.ptr450, i64 1
  %313 = load i8*, i8** %orgsource.addr, align 8
  %314 = load i32, i32* %size_sum.addr, align 4
  %idx.ext452 = zext i32 %314 to i64
  %add.ptr453 = getelementptr inbounds i8, i8* %313, i64 %idx.ext452
  %cmp454 = icmp ule i8* %add.ptr451, %add.ptr453
  br i1 %cmp454, label %land.lhs.true.456, label %if.then.462

land.lhs.true.456:                                ; preds = %land.lhs.true.448
  %315 = load i8*, i8** %var18, align 8
  %316 = load i32, i32* %new_eax, align 4
  %idx.ext457 = zext i32 %316 to i64
  %add.ptr458 = getelementptr inbounds i8, i8* %315, i64 %idx.ext457
  %add.ptr459 = getelementptr inbounds i8, i8* %add.ptr458, i64 1
  %317 = load i8*, i8** %orgsource.addr, align 8
  %cmp460 = icmp ugt i8* %add.ptr459, %317
  br i1 %cmp460, label %if.end.463, label %if.then.462

if.then.462:                                      ; preds = %land.lhs.true.456, %land.lhs.true.448, %land.lhs.true.443, %land.lhs.true.440, %if.else.436
  store i32 -1, i32* %retval
  br label %return

if.end.463:                                       ; preds = %land.lhs.true.456
  %318 = load i8*, i8** %var18, align 8
  %319 = load i32, i32* %new_eax, align 4
  %idx.ext464 = zext i32 %319 to i64
  %add.ptr465 = getelementptr inbounds i8, i8* %318, i64 %idx.ext464
  %320 = load i8, i8* %add.ptr465, align 1
  %conv466 = zext i8 %320 to i32
  store i32 %conv466, i32* %t, align 4
  %321 = load i32, i32* %new_eax, align 4
  %and467 = and i32 %321, -256
  %322 = load i32, i32* %t, align 4
  %or468 = or i32 %and467, %322
  store i32 %or468, i32* %new_eax, align 4
  %323 = load i32, i32* %t, align 4
  %conv469 = trunc i32 %323 to i8
  store i8 %conv469, i8* %var30, align 1
  %324 = load i32, i32* %t, align 4
  %conv470 = trunc i32 %324 to i8
  %325 = load i8*, i8** %orgsource.addr, align 8
  %326 = load i32, i32* %size_sum.addr, align 4
  %call471 = call i32 @lzma_48635C(i8 zeroext %conv470, i8** %new_ecx, %struct.lzmastate* %var40, i32* %new_eax, i8* %325, i32 %326)
  %cmp472 = icmp eq i32 %call471, -1
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %if.end.463
  store i32 -1, i32* %retval
  br label %return

if.end.475:                                       ; preds = %if.end.463
  store i32 0, i32* %var20, align 4
  %327 = load i32, i32* %new_eax, align 4
  %and476 = and i32 %327, 255
  %conv477 = trunc i32 %and476 to i8
  store i8 %conv477, i8* %var1, align 1
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.475, %do.end.433
  %328 = load i32, i32* %var08, align 4
  %inc479 = add i32 %328, 1
  store i32 %inc479, i32* %var08, align 4
  store i32 %328, i32* %new_edx, align 4
  %329 = load i32, i32* %size_sum.addr, align 4
  %cmp480 = icmp ugt i32 %329, 0
  br i1 %cmp480, label %land.lhs.true.482, label %if.then.504

land.lhs.true.482:                                ; preds = %if.end.478
  %330 = load i32, i32* %size_sum.addr, align 4
  %cmp483 = icmp ule i32 1, %330
  br i1 %cmp483, label %land.lhs.true.485, label %if.then.504

land.lhs.true.485:                                ; preds = %land.lhs.true.482
  %331 = load i8*, i8** %var18, align 8
  %332 = load i32, i32* %new_edx, align 4
  %idx.ext486 = zext i32 %332 to i64
  %add.ptr487 = getelementptr inbounds i8, i8* %331, i64 %idx.ext486
  %333 = load i8*, i8** %orgsource.addr, align 8
  %cmp488 = icmp uge i8* %add.ptr487, %333
  br i1 %cmp488, label %land.lhs.true.490, label %if.then.504

land.lhs.true.490:                                ; preds = %land.lhs.true.485
  %334 = load i8*, i8** %var18, align 8
  %335 = load i32, i32* %new_edx, align 4
  %idx.ext491 = zext i32 %335 to i64
  %add.ptr492 = getelementptr inbounds i8, i8* %334, i64 %idx.ext491
  %add.ptr493 = getelementptr inbounds i8, i8* %add.ptr492, i64 1
  %336 = load i8*, i8** %orgsource.addr, align 8
  %337 = load i32, i32* %size_sum.addr, align 4
  %idx.ext494 = zext i32 %337 to i64
  %add.ptr495 = getelementptr inbounds i8, i8* %336, i64 %idx.ext494
  %cmp496 = icmp ule i8* %add.ptr493, %add.ptr495
  br i1 %cmp496, label %land.lhs.true.498, label %if.then.504

land.lhs.true.498:                                ; preds = %land.lhs.true.490
  %338 = load i8*, i8** %var18, align 8
  %339 = load i32, i32* %new_edx, align 4
  %idx.ext499 = zext i32 %339 to i64
  %add.ptr500 = getelementptr inbounds i8, i8* %338, i64 %idx.ext499
  %add.ptr501 = getelementptr inbounds i8, i8* %add.ptr500, i64 1
  %340 = load i8*, i8** %orgsource.addr, align 8
  %cmp502 = icmp ugt i8* %add.ptr501, %340
  br i1 %cmp502, label %if.end.505, label %if.then.504

if.then.504:                                      ; preds = %land.lhs.true.498, %land.lhs.true.490, %land.lhs.true.485, %land.lhs.true.482, %if.end.478
  store i32 -1, i32* %retval
  br label %return

if.end.505:                                       ; preds = %land.lhs.true.498
  %341 = load i8, i8* %var1, align 1
  %342 = load i8*, i8** %var18, align 8
  %343 = load i32, i32* %new_edx, align 4
  %idx.ext506 = zext i32 %343 to i64
  %add.ptr507 = getelementptr inbounds i8, i8* %342, i64 %idx.ext506
  store i8 %341, i8* %add.ptr507, align 1
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.505, %if.end.391
  %344 = load i32, i32* %var08, align 4
  store i32 %344, i32* %new_eax, align 4
  br label %do.cond.509

do.cond.509:                                      ; preds = %if.end.508, %if.end.215
  %345 = load i32, i32* %new_eax, align 4
  %346 = load i32, i32* %var28, align 4
  %cmp510 = icmp ult i32 %345, %346
  br i1 %cmp510, label %do.body.45, label %do.end.512

do.end.512:                                       ; preds = %do.cond.509, %if.then.233
  %347 = load i32, i32* %special.addr, align 4
  %tobool513 = icmp ne i32 %347, 0
  br i1 %tobool513, label %if.then.514, label %if.end.574

if.then.514:                                      ; preds = %do.end.512
  store i32 0, i32* %loc_ecx515, align 4
  %348 = load i32, i32* %new_edx, align 4
  %349 = load i32, i32* %pushed_edx, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %348, i32 %349)
  %350 = load i32, i32* %size_sum.addr, align 4
  %cmp516 = icmp ugt i32 %350, 0
  br i1 %cmp516, label %land.lhs.true.518, label %if.then.539

land.lhs.true.518:                                ; preds = %if.then.514
  %351 = load i32, i32* %pushed_edx, align 4
  %cmp519 = icmp ugt i32 %351, 0
  br i1 %cmp519, label %land.lhs.true.521, label %if.then.539

land.lhs.true.521:                                ; preds = %land.lhs.true.518
  %352 = load i32, i32* %pushed_edx, align 4
  %353 = load i32, i32* %size_sum.addr, align 4
  %cmp522 = icmp ule i32 %352, %353
  br i1 %cmp522, label %land.lhs.true.524, label %if.then.539

land.lhs.true.524:                                ; preds = %land.lhs.true.521
  %354 = load i8*, i8** %pushed_esi, align 8
  %355 = load i8*, i8** %orgsource.addr, align 8
  %cmp525 = icmp uge i8* %354, %355
  br i1 %cmp525, label %land.lhs.true.527, label %if.then.539

land.lhs.true.527:                                ; preds = %land.lhs.true.524
  %356 = load i8*, i8** %pushed_esi, align 8
  %357 = load i32, i32* %pushed_edx, align 4
  %idx.ext528 = zext i32 %357 to i64
  %add.ptr529 = getelementptr inbounds i8, i8* %356, i64 %idx.ext528
  %358 = load i8*, i8** %orgsource.addr, align 8
  %359 = load i32, i32* %size_sum.addr, align 4
  %idx.ext530 = zext i32 %359 to i64
  %add.ptr531 = getelementptr inbounds i8, i8* %358, i64 %idx.ext530
  %cmp532 = icmp ule i8* %add.ptr529, %add.ptr531
  br i1 %cmp532, label %land.lhs.true.534, label %if.then.539

land.lhs.true.534:                                ; preds = %land.lhs.true.527
  %360 = load i8*, i8** %pushed_esi, align 8
  %361 = load i32, i32* %pushed_edx, align 4
  %idx.ext535 = zext i32 %361 to i64
  %add.ptr536 = getelementptr inbounds i8, i8* %360, i64 %idx.ext535
  %362 = load i8*, i8** %orgsource.addr, align 8
  %cmp537 = icmp ugt i8* %add.ptr536, %362
  br i1 %cmp537, label %if.end.540, label %if.then.539

if.then.539:                                      ; preds = %land.lhs.true.534, %land.lhs.true.527, %land.lhs.true.524, %land.lhs.true.521, %land.lhs.true.518, %if.then.514
  store i32 -1, i32* %retval
  br label %return

if.end.540:                                       ; preds = %land.lhs.true.534
  br label %do.body.541

do.body.541:                                      ; preds = %do.cond.570, %if.end.540
  %363 = load i32, i32* %loc_ecx515, align 4
  %idxprom = zext i32 %363 to i64
  %364 = load i8*, i8** %pushed_esi, align 8
  %arrayidx = getelementptr inbounds i8, i8* %364, i64 %idxprom
  %365 = load i8, i8* %arrayidx, align 1
  %conv542 = sext i8 %365 to i32
  %cmp543 = icmp eq i32 %conv542, -24
  br i1 %cmp543, label %if.then.551, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %do.body.541
  %366 = load i32, i32* %loc_ecx515, align 4
  %idxprom546 = zext i32 %366 to i64
  %367 = load i8*, i8** %pushed_esi, align 8
  %arrayidx547 = getelementptr inbounds i8, i8* %367, i64 %idxprom546
  %368 = load i8, i8* %arrayidx547, align 1
  %conv548 = sext i8 %368 to i32
  %cmp549 = icmp eq i32 %conv548, -23
  br i1 %cmp549, label %if.then.551, label %if.else.567

if.then.551:                                      ; preds = %lor.lhs.false.545, %do.body.541
  %369 = load i8*, i8** %pushed_esi, align 8
  %370 = load i32, i32* %loc_ecx515, align 4
  %idx.ext552 = zext i32 %370 to i64
  %add.ptr553 = getelementptr inbounds i8, i8* %369, i64 %idx.ext552
  %add.ptr554 = getelementptr inbounds i8, i8* %add.ptr553, i64 1
  store i8* %add.ptr554, i8** %adr, align 8
  %371 = load i32, i32* %loc_ecx515, align 4
  %inc555 = add i32 %371, 1
  store i32 %inc555, i32* %loc_ecx515, align 4
  %372 = load i8*, i8** %adr, align 8
  %373 = bitcast i8* %372 to i32*
  %374 = load i32, i32* %373, align 4
  %shr556 = lshr i32 %374, 24
  %375 = load i8*, i8** %adr, align 8
  %376 = bitcast i8* %375 to i32*
  %377 = load i32, i32* %376, align 4
  %and557 = and i32 %377, 16711680
  %shr558 = lshr i32 %and557, 8
  %or559 = or i32 %shr556, %shr558
  %378 = load i8*, i8** %adr, align 8
  %379 = bitcast i8* %378 to i32*
  %380 = load i32, i32* %379, align 4
  %and560 = and i32 %380, 65280
  %shl561 = shl i32 %and560, 8
  %or562 = or i32 %or559, %shl561
  %381 = load i8*, i8** %adr, align 8
  %382 = bitcast i8* %381 to i32*
  %383 = load i32, i32* %382, align 4
  %shl563 = shl i32 %383, 24
  %or564 = or i32 %or562, %shl563
  %384 = load i32, i32* %loc_ecx515, align 4
  %sub565 = sub i32 %or564, %384
  %385 = load i8*, i8** %adr, align 8
  %386 = bitcast i8* %385 to i32*
  store i32 %sub565, i32* %386, align 4
  %387 = load i32, i32* %loc_ecx515, align 4
  %add566 = add i32 %387, 4
  store i32 %add566, i32* %loc_ecx515, align 4
  br label %if.end.569

if.else.567:                                      ; preds = %lor.lhs.false.545
  %388 = load i32, i32* %loc_ecx515, align 4
  %inc568 = add i32 %388, 1
  store i32 %inc568, i32* %loc_ecx515, align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.567, %if.then.551
  br label %do.cond.570

do.cond.570:                                      ; preds = %if.end.569
  %389 = load i32, i32* %loc_ecx515, align 4
  %390 = load i32, i32* %pushed_edx, align 4
  %cmp571 = icmp ne i32 %389, %390
  br i1 %cmp571, label %do.body.541, label %do.end.573

do.end.573:                                       ; preds = %do.cond.570
  store i32 0, i32* %retval
  br label %return

if.end.574:                                       ; preds = %do.end.512
  br label %do.cond.575

do.cond.575:                                      ; preds = %if.end.574
  %391 = load i32, i32* %mainloop, align 4
  %tobool576 = icmp ne i32 %391, 0
  br i1 %tobool576, label %do.body, label %do.end.577

do.end.577:                                       ; preds = %do.cond.575
  store i32 195936478, i32* %retval
  br label %return

return:                                           ; preds = %do.end.577, %do.end.573, %if.then.539, %if.then.504, %if.then.474, %if.then.462, %if.then.423, %if.then.374, %if.then.226, %if.then.214, %if.then.183, %if.then.156, %if.then.139, %if.then.129, %if.then.119, %if.then.107, %if.then.93, %if.then.79, %if.then.68, %if.then.60, %if.then.50, %if.then.40, %if.then.9
  %392 = load i32, i32* %retval
  ret i32 %392
}

; Function Attrs: nounwind uwtable
define internal i8* @lzma_bswap_4861dc(%struct.lzmastate* %p, i8* %old_edx) #0 {
entry:
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_edx.addr = alloca i8*, align 8
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8* %old_edx, i8** %old_edx.addr, align 8
  %0 = load i8*, i8** %old_edx.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = bitcast i8* %add.ptr to i32*
  %2 = load i32, i32* %1, align 4
  %shr = lshr i32 %2, 24
  %3 = load i8*, i8** %old_edx.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = bitcast i8* %add.ptr1 to i32*
  %5 = load i32, i32* %4, align 4
  %and = and i32 %5, 16711680
  %shr2 = lshr i32 %and, 8
  %or = or i32 %shr, %shr2
  %6 = load i8*, i8** %old_edx.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = bitcast i8* %add.ptr3 to i32*
  %8 = load i32, i32* %7, align 4
  %and4 = and i32 %8, 65280
  %shl = shl i32 %and4, 8
  %or5 = or i32 %or, %shl
  %9 = load i8*, i8** %old_edx.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = bitcast i8* %add.ptr6 to i32*
  %11 = load i32, i32* %10, align 4
  %shl7 = shl i32 %11, 24
  %or8 = or i32 %or5, %shl7
  %12 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %12, i32 0, i32 2
  store i32 %or8, i32* %p2, align 4
  %13 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %13, i32 0, i32 1
  store i32 -1, i32* %p1, align 4
  %14 = load i8*, i8** %old_edx.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 5
  %15 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p0 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %15, i32 0, i32 0
  store i8* %add.ptr9, i8** %p0, align 8
  %16 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p010 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %16, i32 0, i32 0
  %17 = load i8*, i8** %p010, align 8
  ret i8* %17
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma_486248(%struct.lzmastate* %p, i8** %old_ecx, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_ecx.addr = alloca i8**, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %loc_edi = alloca i32, align 4
  %loc_eax = alloca i32, align 4
  %loc_ecx = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8** %old_ecx, i8*** %old_ecx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp ule i32 4, %1
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8**, i8*** %old_ecx.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %src.addr, align 8
  %cmp3 = icmp uge i8* %3, %4
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i8**, i8*** %old_ecx.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %cmp6 = icmp ule i8* %add.ptr, %add.ptr5
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %9 = load i8**, i8*** %old_ecx.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i64 4
  %11 = load i8*, i8** %src.addr, align 8
  %cmp9 = icmp ugt i8* %add.ptr8, %11
  br i1 %cmp9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %12 = load i32, i32* %size.addr, align 4
  %cmp10 = icmp ugt i32 %12, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.then

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %size.addr, align 4
  %cmp12 = icmp ule i32 1, %13
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %14 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p0 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %14, i32 0, i32 0
  %15 = load i8*, i8** %p0, align 8
  %16 = load i8*, i8** %src.addr, align 8
  %cmp14 = icmp uge i8* %15, %16
  br i1 %cmp14, label %land.lhs.true.15, label %if.then

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %17 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p016 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %17, i32 0, i32 0
  %18 = load i8*, i8** %p016, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i32, i32* %size.addr, align 4
  %idx.ext18 = zext i32 %20 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %19, i64 %idx.ext18
  %cmp20 = icmp ule i8* %add.ptr17, %add.ptr19
  br i1 %cmp20, label %land.lhs.true.21, label %if.then

land.lhs.true.21:                                 ; preds = %land.lhs.true.15
  %21 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p022 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %21, i32 0, i32 0
  %22 = load i8*, i8** %p022, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8*, i8** %src.addr, align 8
  %cmp24 = icmp ugt i8* %add.ptr23, %23
  br i1 %cmp24, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.21, %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %lor.lhs.false, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.21
  %24 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %24, i32 0, i32 1
  %25 = load i32, i32* %p1, align 4
  store i32 %25, i32* %loc_esi, align 4
  %26 = load i32, i32* %loc_esi, align 4
  %shr = lshr i32 %26, 11
  store i32 %shr, i32* %loc_eax, align 4
  %27 = load i8**, i8*** %old_ecx.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %loc_ecx, align 4
  %31 = load i32, i32* %loc_ecx, align 4
  %and = and i32 %31, 65535
  store i32 %and, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %33 = load i32, i32* %loc_eax, align 4
  %mul = mul i32 %33, %32
  store i32 %mul, i32* %loc_eax, align 4
  %34 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %34, i32 0, i32 2
  %35 = load i32, i32* %p2, align 4
  store i32 %35, i32* %loc_edi, align 4
  %36 = load i32, i32* %loc_edi, align 4
  %37 = load i32, i32* %loc_eax, align 4
  %cmp25 = icmp ult i32 %36, %37
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %38 = load i32, i32* %loc_eax, align 4
  %39 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p127 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %39, i32 0, i32 1
  store i32 %38, i32* %p127, align 4
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %loc_esi, align 4
  %41 = load i32, i32* %ret, align 4
  %sub = sub i32 2048, %41
  %shr28 = ashr i32 %sub, 5
  %42 = load i32, i32* %loc_eax, align 4
  %and29 = and i32 %42, -65536
  %43 = load i32, i32* %ret, align 4
  %or = or i32 %and29, %43
  %add = add i32 %shr28, %or
  store i32 %add, i32* %loc_edi, align 4
  %44 = load i32, i32* %loc_ecx, align 4
  %and30 = and i32 %44, -65536
  %45 = load i32, i32* %loc_edi, align 4
  %and31 = and i32 %45, 65535
  %or32 = or i32 %and30, %and31
  store i32 %or32, i32* %loc_ecx, align 4
  %46 = load i32, i32* %loc_ecx, align 4
  %47 = load i8**, i8*** %old_ecx.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to i32*
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %ret, align 4
  br label %if.end.46

if.else:                                          ; preds = %if.end
  %50 = load i32, i32* %loc_eax, align 4
  %51 = load i32, i32* %loc_esi, align 4
  %sub33 = sub i32 %51, %50
  store i32 %sub33, i32* %loc_esi, align 4
  %52 = load i32, i32* %loc_eax, align 4
  %53 = load i32, i32* %loc_edi, align 4
  %sub34 = sub i32 %53, %52
  store i32 %sub34, i32* %loc_edi, align 4
  %54 = load i32, i32* %loc_esi, align 4
  %55 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p135 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %55, i32 0, i32 1
  store i32 %54, i32* %p135, align 4
  %56 = load i32, i32* %loc_edi, align 4
  %57 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p236 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %57, i32 0, i32 2
  store i32 %56, i32* %p236, align 4
  %58 = load i32, i32* %loc_eax, align 4
  %and37 = and i32 %58, -65536
  %59 = load i32, i32* %ret, align 4
  %or38 = or i32 %and37, %59
  store i32 %or38, i32* %loc_eax, align 4
  %60 = load i32, i32* %loc_esi, align 4
  %and39 = and i32 %60, -65536
  %61 = load i32, i32* %ret, align 4
  %shr40 = lshr i32 %61, 5
  %or41 = or i32 %and39, %shr40
  store i32 %or41, i32* %loc_esi, align 4
  %62 = load i32, i32* %loc_esi, align 4
  %63 = load i32, i32* %loc_eax, align 4
  %sub42 = sub i32 %63, %62
  store i32 %sub42, i32* %loc_eax, align 4
  %64 = load i32, i32* %loc_ecx, align 4
  %and43 = and i32 %64, -65536
  %65 = load i32, i32* %loc_eax, align 4
  %and44 = and i32 %65, 65535
  %or45 = or i32 %and43, %and44
  store i32 %or45, i32* %loc_ecx, align 4
  %66 = load i32, i32* %loc_ecx, align 4
  %67 = load i8**, i8*** %old_ecx.addr, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %66, i32* %69, align 4
  store i32 1, i32* %ret, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.26
  %70 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p147 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %70, i32 0, i32 1
  %71 = load i32, i32* %p147, align 4
  store i32 %71, i32* %loc_eax, align 4
  %72 = load i32, i32* %loc_eax, align 4
  %cmp48 = icmp ult i32 %72, 16777216
  br i1 %cmp48, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %if.end.46
  %73 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p050 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %73, i32 0, i32 0
  %74 = load i8*, i8** %p050, align 8
  %75 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %74, i8** %75, align 8
  %76 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p051 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %76, i32 0, i32 0
  %77 = load i8*, i8** %p051, align 8
  %78 = load i8, i8* %77, align 1
  %conv = zext i8 %78 to i32
  store i32 %conv, i32* %loc_edi, align 4
  %79 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p252 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %79, i32 0, i32 2
  %80 = load i32, i32* %p252, align 4
  %shl = shl i32 %80, 8
  %81 = load i32, i32* %loc_edi, align 4
  %or53 = or i32 %shl, %81
  store i32 %or53, i32* %loc_esi, align 4
  %82 = load i8**, i8*** %old_ecx.addr, align 8
  %83 = load i8*, i8** %82, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr, i8** %82, align 8
  %84 = load i32, i32* %loc_eax, align 4
  %shl54 = shl i32 %84, 8
  store i32 %shl54, i32* %loc_eax, align 4
  %85 = load i32, i32* %loc_esi, align 4
  %86 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p255 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %86, i32 0, i32 2
  store i32 %85, i32* %p255, align 4
  %87 = load i32, i32* %loc_eax, align 4
  %88 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p156 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %88, i32 0, i32 1
  store i32 %87, i32* %p156, align 4
  %89 = load i8**, i8*** %old_ecx.addr, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p057 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %91, i32 0, i32 0
  store i8* %90, i8** %p057, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.49, %if.end.46
  %92 = load i32, i32* %ret, align 4
  store i32 %92, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_4863da(i32 %var0, %struct.lzmastate* %p, i8** %old_ecx, i32* %old_edx, i32* %retval1, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %var0.addr = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_ecx.addr = alloca i8**, align 8
  %old_edx.addr = alloca i32*, align 8
  %retval.addr = alloca i32*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_esi = alloca i8*, align 8
  store i32 %var0, i32* %var0.addr, align 4
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8** %old_ecx, i8*** %old_ecx.addr, align 8
  store i32* %old_edx, i32** %old_edx.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8**, i8*** %old_ecx.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %loc_esi, align 8
  %2 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %3 = load i8**, i8*** %old_ecx.addr, align 8
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %call = call i32 @lzma_486248(%struct.lzmastate* %2, i8** %3, i8* %4, i32 %5)
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.else.22

if.then.2:                                        ; preds = %if.end
  %7 = load i8*, i8** %loc_esi, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr, i8** %8, align 8
  %9 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %10 = load i8**, i8*** %old_ecx.addr, align 8
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i32, i32* %size.addr, align 4
  %call3 = call i32 @lzma_486248(%struct.lzmastate* %9, i8** %10, i8* %11, i32 %12)
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %13 = load i32, i32* %ret, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %14 = load i32*, i32** %old_edx.addr, align 8
  store i32 8, i32* %14, align 4
  %15 = load i8*, i8** %loc_esi, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %15, i64 516
  %16 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr9, i8** %16, align 8
  %17 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %18 = load i8**, i8*** %old_ecx.addr, align 8
  %19 = load i32*, i32** %old_edx.addr, align 8
  %20 = load i8*, i8** %src.addr, align 8
  %21 = load i32, i32* %size.addr, align 4
  %call10 = call i32 @lzma_4862e0(%struct.lzmastate* %17, i8** %18, i32* %19, i32* %ret, i8* %20, i32 %21)
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.8
  %22 = load i32, i32* %ret, align 4
  %add = add i32 %22, 16
  store i32 %add, i32* %ret, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end.6
  %23 = load i32, i32* %var0.addr, align 4
  %shl = shl i32 %23, 4
  store i32 %shl, i32* %ret, align 4
  %24 = load i32*, i32** %old_edx.addr, align 8
  store i32 3, i32* %24, align 4
  %25 = load i8*, i8** %loc_esi, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %25, i64 260
  %26 = load i32, i32* %ret, align 4
  %idx.ext = zext i32 %26 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 %idx.ext
  %27 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr15, i8** %27, align 8
  %28 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %29 = load i8**, i8*** %old_ecx.addr, align 8
  %30 = load i32*, i32** %old_edx.addr, align 8
  %31 = load i8*, i8** %src.addr, align 8
  %32 = load i32, i32* %size.addr, align 4
  %call16 = call i32 @lzma_4862e0(%struct.lzmastate* %28, i8** %29, i32* %30, i32* %ret, i8* %31, i32 %32)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.else
  %33 = load i32, i32* %ret, align 4
  %add20 = add i32 %33, 8
  store i32 %add20, i32* %ret, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.13
  br label %if.end.31

if.else.22:                                       ; preds = %if.end
  %34 = load i32, i32* %var0.addr, align 4
  %shl23 = shl i32 %34, 4
  store i32 %shl23, i32* %ret, align 4
  %35 = load i32*, i32** %old_edx.addr, align 8
  store i32 3, i32* %35, align 4
  %36 = load i8*, i8** %loc_esi, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %36, i64 4
  %37 = load i32, i32* %ret, align 4
  %idx.ext25 = zext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext25
  %38 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr26, i8** %38, align 8
  %39 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %40 = load i8**, i8*** %old_ecx.addr, align 8
  %41 = load i32*, i32** %old_edx.addr, align 8
  %42 = load i8*, i8** %src.addr, align 8
  %43 = load i32, i32* %size.addr, align 4
  %call27 = call i32 @lzma_4862e0(%struct.lzmastate* %39, i8** %40, i32* %41, i32* %ret, i8* %42, i32 %43)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.22
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.else.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.21
  %44 = load i32, i32* %ret, align 4
  %45 = load i32*, i32** %retval.addr, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.29, %if.then.18, %if.then.12, %if.then.5, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_4862e0(%struct.lzmastate* %p, i8** %old_ecx, i32* %old_edx, i32* %retval1, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_ecx.addr = alloca i8**, align 8
  %old_edx.addr = alloca i32*, align 8
  %retval.addr = alloca i32*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %loc_ebx = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %stack_ecx = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_edi = alloca i8*, align 8
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8** %old_ecx, i8*** %old_ecx.addr, align 8
  store i32* %old_edx, i32** %old_edx.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %old_edx.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %loc_ebx, align 4
  store i32 1, i32* %ret, align 4
  %2 = load i8**, i8*** %old_ecx.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %loc_edi, align 8
  %4 = load i32, i32* %loc_ebx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %loc_ebx, align 4
  %and = and i32 %5, -2147483648
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end.6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %loc_ebx, align 4
  store i32 %6, i32* %stack_ecx, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %7 = load i32, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %add = add i32 %7, %8
  store i32 %add, i32* %loc_esi, align 4
  %9 = load i8*, i8** %loc_edi, align 8
  %10 = load i32, i32* %loc_esi, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr, i8** %11, align 8
  %12 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %13 = load i8**, i8*** %old_ecx.addr, align 8
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %size.addr, align 4
  %call = call i32 @lzma_486248(%struct.lzmastate* %12, i8** %13, i8* %14, i32 %15)
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %16 = load i32, i32* %loc_esi, align 4
  %17 = load i32, i32* %ret, align 4
  %add4 = add i32 %17, %16
  store i32 %add4, i32* %ret, align 4
  %18 = load i32, i32* %stack_ecx, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %stack_ecx, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %19 = load i32, i32* %stack_ecx, align 4
  %tobool5 = icmp ne i32 %19, 0
  br i1 %tobool5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %land.lhs.true, %entry
  %20 = load i32, i32* %loc_ebx, align 4
  %and7 = and i32 %20, 255
  %shl = shl i32 1, %and7
  %21 = load i32*, i32** %old_edx.addr, align 8
  store i32 %shl, i32* %21, align 4
  %22 = load i32*, i32** %old_edx.addr, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %ret, align 4
  %sub = sub i32 %24, %23
  store i32 %sub, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %26 = load i32*, i32** %retval.addr, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_486204(%struct.lzmastate* %p, i32 %old_edx, i32* %retval1, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_edx.addr = alloca i32, align 4
  %retval.addr = alloca i32*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %loc_edi = alloca i32, align 4
  %loc_ebx = alloca i32, align 4
  %loc_eax = alloca i32, align 4
  %loc_edx = alloca i8*, align 8
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i32 %old_edx, i32* %old_edx.addr, align 4
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %0, i32 0, i32 1
  %1 = load i32, i32* %p1, align 4
  store i32 %1, i32* %loc_esi, align 4
  %2 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %2, i32 0, i32 2
  %3 = load i32, i32* %p2, align 4
  store i32 %3, i32* %loc_edi, align 4
  store i32 0, i32* %loc_eax, align 4
  %4 = load i32, i32* %old_edx.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %old_edx.addr, align 4
  %and = and i32 %5, -2147483648
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end.29, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %old_edx.addr, align 4
  store i32 %6, i32* %loc_ebx, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %7 = load i32, i32* %loc_esi, align 4
  %shr = lshr i32 %7, 1
  store i32 %shr, i32* %loc_esi, align 4
  %8 = load i32, i32* %loc_eax, align 4
  %shl = shl i32 %8, 1
  store i32 %shl, i32* %loc_eax, align 4
  %9 = load i32, i32* %loc_edi, align 4
  %10 = load i32, i32* %loc_esi, align 4
  %cmp = icmp uge i32 %9, %10
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %11 = load i32, i32* %loc_esi, align 4
  %12 = load i32, i32* %loc_edi, align 4
  %sub = sub i32 %12, %11
  store i32 %sub, i32* %loc_edi, align 4
  %13 = load i32, i32* %loc_eax, align 4
  %or = or i32 %13, 1
  store i32 %or, i32* %loc_eax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  %14 = load i32, i32* %loc_esi, align 4
  %cmp4 = icmp ult i32 %14, 16777216
  br i1 %cmp4, label %if.then.5, label %if.end.27

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp ugt i32 %15, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.then.19

land.lhs.true.7:                                  ; preds = %if.then.5
  %16 = load i32, i32* %size.addr, align 4
  %cmp8 = icmp ule i32 1, %16
  br i1 %cmp8, label %land.lhs.true.9, label %if.then.19

land.lhs.true.9:                                  ; preds = %land.lhs.true.7
  %17 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p0 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %17, i32 0, i32 0
  %18 = load i8*, i8** %p0, align 8
  %19 = load i8*, i8** %src.addr, align 8
  %cmp10 = icmp uge i8* %18, %19
  br i1 %cmp10, label %land.lhs.true.11, label %if.then.19

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %20 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p012 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %20, i32 0, i32 0
  %21 = load i8*, i8** %p012, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8*, i8** %src.addr, align 8
  %23 = load i32, i32* %size.addr, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %cmp14 = icmp ule i8* %add.ptr, %add.ptr13
  br i1 %cmp14, label %land.lhs.true.15, label %if.then.19

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %24 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p016 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %24, i32 0, i32 0
  %25 = load i8*, i8** %p016, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8*, i8** %src.addr, align 8
  %cmp18 = icmp ugt i8* %add.ptr17, %26
  br i1 %cmp18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.15, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true.7, %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.15
  %27 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p021 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %27, i32 0, i32 0
  %28 = load i8*, i8** %p021, align 8
  store i8* %28, i8** %loc_edx, align 8
  %29 = load i32, i32* %loc_edi, align 4
  %shl22 = shl i32 %29, 8
  store i32 %shl22, i32* %loc_edi, align 4
  %30 = load i32, i32* %loc_esi, align 4
  %shl23 = shl i32 %30, 8
  store i32 %shl23, i32* %loc_esi, align 4
  %31 = load i8*, i8** %loc_edx, align 8
  %32 = load i8, i8* %31, align 1
  %conv = sext i8 %32 to i32
  %and24 = and i32 %conv, 255
  %33 = load i32, i32* %loc_edi, align 4
  %or25 = or i32 %33, %and24
  store i32 %or25, i32* %loc_edi, align 4
  %34 = load i8*, i8** %loc_edx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %loc_edx, align 8
  %35 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p026 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %35, i32 0, i32 0
  store i8* %incdec.ptr, i8** %p026, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.20, %if.end
  %36 = load i32, i32* %loc_ebx, align 4
  %dec = add i32 %36, -1
  store i32 %dec, i32* %loc_ebx, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  %37 = load i32, i32* %loc_ebx, align 4
  %tobool28 = icmp ne i32 %37, 0
  br i1 %tobool28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %land.lhs.true, %entry
  %38 = load i32, i32* %loc_edi, align 4
  %39 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p230 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %39, i32 0, i32 2
  store i32 %38, i32* %p230, align 4
  %40 = load i32, i32* %loc_esi, align 4
  %41 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p131 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %41, i32 0, i32 1
  store i32 %40, i32* %p131, align 4
  %42 = load i32, i32* %loc_eax, align 4
  %43 = load i32*, i32** %retval.addr, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.19
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_48631a(%struct.lzmastate* %p, i8** %old_ecx, i32* %old_edx, i32* %retval1, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_ecx.addr = alloca i8**, align 8
  %old_edx.addr = alloca i32*, align 8
  %retval.addr = alloca i32*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %copy1 = alloca i32, align 4
  %copy2 = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %loc_edi = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_ebx = alloca i8*, align 8
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8** %old_ecx, i8*** %old_ecx.addr, align 8
  store i32* %old_edx, i32** %old_edx.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %old_edx.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %copy1, align 4
  store i32 0, i32* %loc_edi, align 4
  %2 = load i8**, i8*** %old_ecx.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %loc_ebx, align 8
  %4 = load i32*, i32** %old_edx.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* %loc_edi, align 4
  store i32 %5, i32* %copy2, align 4
  %6 = load i32, i32* %copy1, align 4
  %7 = load i32, i32* %loc_edi, align 4
  %cmp = icmp ule i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %copy2, align 4
  %9 = load i32*, i32** %retval.addr, align 8
  store i32 %8, i32* %9, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %10 = load i32*, i32** %old_edx.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %old_edx.addr, align 8
  %13 = load i32, i32* %12, align 4
  %add = add i32 %11, %13
  store i32 %add, i32* %loc_esi, align 4
  %14 = load i32, i32* %loc_esi, align 4
  %15 = load i8*, i8** %loc_ebx, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %16 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr, i8** %16, align 8
  %17 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %18 = load i8**, i8*** %old_ecx.addr, align 8
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i32, i32* %size.addr, align 4
  %call = call i32 @lzma_486248(%struct.lzmastate* %17, i8** %18, i8* %19, i32 %20)
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %do.body
  %21 = load i32, i32* %loc_esi, align 4
  %22 = load i32, i32* %ret, align 4
  %add5 = add i32 %21, %22
  %23 = load i32*, i32** %old_edx.addr, align 8
  store i32 %add5, i32* %23, align 4
  %24 = load i32, i32* %loc_edi, align 4
  %and = and i32 %24, 255
  %25 = load i32, i32* %ret, align 4
  %shl = shl i32 %25, %and
  store i32 %shl, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %27 = load i32, i32* %copy2, align 4
  %or = or i32 %27, %26
  store i32 %or, i32* %copy2, align 4
  %28 = load i32, i32* %loc_edi, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %loc_edi, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %29 = load i32, i32* %loc_edi, align 4
  %30 = load i32, i32* %copy1, align 4
  %cmp6 = icmp ult i32 %29, %30
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i32, i32* %copy2, align 4
  %32 = load i32*, i32** %retval.addr, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_48635C(i8 zeroext %znaczek, i8** %old_ecx, %struct.lzmastate* %p, i32* %retval1, i8* %src, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %znaczek.addr = alloca i8, align 1
  %old_ecx.addr = alloca i8**, align 8
  %p.addr = alloca %struct.lzmastate*, align 8
  %retval.addr = alloca i32*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %loc_esi = alloca i32, align 4
  %loc_ebx = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_edi = alloca i8*, align 8
  store i8 %znaczek, i8* %znaczek.addr, align 1
  store i8** %old_ecx, i8*** %old_ecx.addr, align 8
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8, i8* %znaczek.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 7
  store i32 %shr, i32* %loc_esi, align 4
  %1 = load i8, i8* %znaczek.addr, align 1
  %conv2 = zext i8 %1 to i32
  %shl = shl i32 %conv2, 1
  %conv3 = trunc i32 %shl to i8
  store i8 %conv3, i8* %znaczek.addr, align 1
  %2 = load i32, i32* %loc_esi, align 4
  %shl4 = shl i32 %2, 9
  store i32 %shl4, i32* %ret, align 4
  %3 = load i8**, i8*** %old_ecx.addr, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %loc_edi, align 8
  %5 = load i8*, i8** %loc_edi, align 8
  %6 = load i32, i32* %ret, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 514
  %7 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr5, i8** %7, align 8
  %8 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %9 = load i8**, i8*** %old_ecx.addr, align 8
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i32, i32* %size.addr, align 4
  %call = call i32 @lzma_486248(%struct.lzmastate* %8, i8** %9, i8* %10, i32 %11)
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %ret, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %loc_ebx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.end
  %13 = load i32, i32* %loc_esi, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %13, %14
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %loc_ebx, align 4
  %cmp9 = icmp uge i32 %15, 256
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %while.body
  %16 = load i32, i32* %ret, align 4
  %and12 = and i32 %16, -256
  %17 = load i32, i32* %loc_ebx, align 4
  %and13 = and i32 %17, 255
  %or14 = or i32 %and12, %and13
  store i32 %or14, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %19 = load i32*, i32** %retval.addr, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %while.body
  %20 = load i8, i8* %znaczek.addr, align 1
  %conv16 = zext i8 %20 to i32
  %and17 = and i32 %conv16, 255
  %shr18 = ashr i32 %and17, 7
  store i32 %shr18, i32* %loc_esi, align 4
  %21 = load i8, i8* %znaczek.addr, align 1
  %conv19 = zext i8 %21 to i32
  %shl20 = shl i32 %conv19, 1
  %conv21 = trunc i32 %shl20 to i8
  store i8 %conv21, i8* %znaczek.addr, align 1
  %22 = load i32, i32* %loc_esi, align 4
  %add = add i32 %22, 1
  %shl22 = shl i32 %add, 8
  %23 = load i32, i32* %loc_ebx, align 4
  %add23 = add i32 %shl22, %23
  store i32 %add23, i32* %ret, align 4
  %24 = load i8*, i8** %loc_edi, align 8
  %25 = load i32, i32* %ret, align 4
  %mul = mul i32 %25, 2
  %idx.ext24 = zext i32 %mul to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %24, i64 %idx.ext24
  %26 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr25, i8** %26, align 8
  %27 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %28 = load i8**, i8*** %old_ecx.addr, align 8
  %29 = load i8*, i8** %src.addr, align 8
  %30 = load i32, i32* %size.addr, align 4
  %call26 = call i32 @lzma_486248(%struct.lzmastate* %27, i8** %28, i8* %29, i32 %30)
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.15
  %31 = load i32, i32* %loc_ebx, align 4
  %32 = load i32, i32* %loc_ebx, align 4
  %add31 = add i32 %32, %31
  store i32 %add31, i32* %loc_ebx, align 4
  %33 = load i32, i32* %ret, align 4
  %34 = load i32, i32* %loc_ebx, align 4
  %or32 = or i32 %34, %33
  store i32 %or32, i32* %loc_ebx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 256, i32* %loc_esi, align 4
  br label %while.cond.33

while.cond.33:                                    ; preds = %if.end.44, %while.end
  %35 = load i32, i32* %loc_ebx, align 4
  %36 = load i32, i32* %loc_esi, align 4
  %cmp34 = icmp ult i32 %35, %36
  br i1 %cmp34, label %while.body.36, label %while.end.46

while.body.36:                                    ; preds = %while.cond.33
  %37 = load i32, i32* %loc_ebx, align 4
  %38 = load i32, i32* %loc_ebx, align 4
  %add37 = add i32 %38, %37
  store i32 %add37, i32* %loc_ebx, align 4
  %39 = load i8*, i8** %loc_edi, align 8
  %40 = load i32, i32* %loc_ebx, align 4
  %idx.ext38 = zext i32 %40 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %39, i64 %idx.ext38
  %41 = load i8**, i8*** %old_ecx.addr, align 8
  store i8* %add.ptr39, i8** %41, align 8
  %42 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %43 = load i8**, i8*** %old_ecx.addr, align 8
  %44 = load i8*, i8** %src.addr, align 8
  %45 = load i32, i32* %size.addr, align 4
  %call40 = call i32 @lzma_486248(%struct.lzmastate* %42, i8** %43, i8* %44, i32 %45)
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp eq i32 %call40, -1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %while.body.36
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %while.body.36
  %46 = load i32, i32* %ret, align 4
  %47 = load i32, i32* %loc_ebx, align 4
  %or45 = or i32 %47, %46
  store i32 %or45, i32* %loc_ebx, align 4
  br label %while.cond.33

while.end.46:                                     ; preds = %while.cond.33
  %48 = load i32, i32* %ret, align 4
  %and47 = and i32 %48, -256
  %49 = load i32, i32* %loc_ebx, align 4
  %and48 = and i32 %49, 255
  %or49 = or i32 %and47, %and48
  store i32 %or49, i32* %ret, align 4
  %50 = load i32, i32* %ret, align 4
  %51 = load i32*, i32** %retval.addr, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.46, %if.then.43, %if.then.29, %if.then.11, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %old_ecx, i8* %bb, i32 %bl) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_ecx.addr = alloca i8*, align 8
  %bb.addr = alloca i8*, align 8
  %bl.addr = alloca i32, align 4
  %loc_eax = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_edi = alloca i32, align 4
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i8* %old_ecx, i8** %old_ecx.addr, align 8
  store i8* %bb, i8** %bb.addr, align 8
  store i32 %bl, i32* %bl.addr, align 4
  %0 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %0, i32 0, i32 1
  %1 = load i32, i32* %p1, align 4
  %shr = lshr i32 %1, 11
  store i32 %shr, i32* %loc_eax, align 4
  %2 = load i32, i32* %bl.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %bl.addr, align 4
  %cmp1 = icmp ule i32 4, %3
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %old_ecx.addr, align 8
  %5 = load i8*, i8** %bb.addr, align 8
  %cmp3 = icmp uge i8* %4, %5
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %6 = load i8*, i8** %old_ecx.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  %7 = load i8*, i8** %bb.addr, align 8
  %8 = load i32, i32* %bl.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %cmp6 = icmp ule i8* %add.ptr, %add.ptr5
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %9 = load i8*, i8** %old_ecx.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8*, i8** %bb.addr, align 8
  %cmp9 = icmp ugt i8* %add.ptr8, %10
  br i1 %cmp9, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %11 = load i32, i32* %bl.addr, align 4
  %cmp10 = icmp ugt i32 %11, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.then

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %bl.addr, align 4
  %cmp12 = icmp ule i32 4, %12
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %13 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p0 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %13, i32 0, i32 0
  %14 = load i8*, i8** %p0, align 8
  %15 = load i8*, i8** %bb.addr, align 8
  %cmp14 = icmp uge i8* %14, %15
  br i1 %cmp14, label %land.lhs.true.15, label %if.then

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %16 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p016 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %16, i32 0, i32 0
  %17 = load i8*, i8** %p016, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %17, i64 4
  %18 = load i8*, i8** %bb.addr, align 8
  %19 = load i32, i32* %bl.addr, align 4
  %idx.ext18 = zext i32 %19 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 %idx.ext18
  %cmp20 = icmp ule i8* %add.ptr17, %add.ptr19
  br i1 %cmp20, label %land.lhs.true.21, label %if.then

land.lhs.true.21:                                 ; preds = %land.lhs.true.15
  %20 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p022 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %20, i32 0, i32 0
  %21 = load i8*, i8** %p022, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %21, i64 4
  %22 = load i8*, i8** %bb.addr, align 8
  %cmp24 = icmp ugt i8* %add.ptr23, %22
  br i1 %cmp24, label %if.end.44, label %if.then

if.then:                                          ; preds = %land.lhs.true.21, %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.11, %lor.lhs.false, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %23 = load i32, i32* %bl.addr, align 4
  %cmp25 = icmp ugt i32 %23, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.then.38

land.lhs.true.26:                                 ; preds = %if.then
  %24 = load i32, i32* %bl.addr, align 4
  %cmp27 = icmp ule i32 4, %24
  br i1 %cmp27, label %land.lhs.true.28, label %if.then.38

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %25 = load i8*, i8** %old_ecx.addr, align 8
  %26 = load i8*, i8** %bb.addr, align 8
  %cmp29 = icmp uge i8* %25, %26
  br i1 %cmp29, label %land.lhs.true.30, label %if.then.38

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %27 = load i8*, i8** %old_ecx.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %27, i64 4
  %28 = load i8*, i8** %bb.addr, align 8
  %29 = load i32, i32* %bl.addr, align 4
  %idx.ext32 = zext i32 %29 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %28, i64 %idx.ext32
  %cmp34 = icmp ule i8* %add.ptr31, %add.ptr33
  br i1 %cmp34, label %land.lhs.true.35, label %if.then.38

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %30 = load i8*, i8** %old_ecx.addr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = load i8*, i8** %bb.addr, align 8
  %cmp37 = icmp ugt i8* %add.ptr36, %31
  br i1 %cmp37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.35, %land.lhs.true.30, %land.lhs.true.28, %land.lhs.true.26, %if.then
  %32 = load i8*, i8** %bb.addr, align 8
  %33 = load i32, i32* %bl.addr, align 4
  %34 = load i8*, i8** %old_ecx.addr, align 8
  %35 = load i8*, i8** %bb.addr, align 8
  %36 = load i32, i32* %bl.addr, align 4
  %idx.ext39 = zext i32 %36 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %35, i64 %idx.ext39
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* %32, i32 %33, i8* %34, i8* %add.ptr40)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.35
  %37 = load i8*, i8** %bb.addr, align 8
  %38 = load i32, i32* %bl.addr, align 4
  %39 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p041 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %39, i32 0, i32 0
  %40 = load i8*, i8** %p041, align 8
  %41 = load i8*, i8** %bb.addr, align 8
  %42 = load i32, i32* %bl.addr, align 4
  %idx.ext42 = zext i32 %42 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %41, i64 %idx.ext42
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %37, i32 %38, i8* %40, i8* %add.ptr43)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.38
  store i32 -1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.21
  %43 = load i8*, i8** %old_ecx.addr, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %ret, align 4
  %46 = load i32, i32* %ret, align 4
  %47 = load i32, i32* %loc_eax, align 4
  %mul = mul i32 %47, %46
  store i32 %mul, i32* %loc_eax, align 4
  %48 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p045 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %48, i32 0, i32 0
  %49 = load i8*, i8** %p045, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %loc_edi, align 4
  %52 = load i32, i32* %loc_edi, align 4
  %shr46 = lshr i32 %52, 24
  %53 = load i32, i32* %loc_edi, align 4
  %and = and i32 %53, 16711680
  %shr47 = lshr i32 %and, 8
  %or = or i32 %shr46, %shr47
  %54 = load i32, i32* %loc_edi, align 4
  %and48 = and i32 %54, 65280
  %shl = shl i32 %and48, 8
  %or49 = or i32 %or, %shl
  %55 = load i32, i32* %loc_edi, align 4
  %shl50 = shl i32 %55, 24
  %or51 = or i32 %or49, %shl50
  store i32 %or51, i32* %loc_edi, align 4
  %56 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p2 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %56, i32 0, i32 2
  %57 = load i32, i32* %p2, align 4
  %58 = load i32, i32* %loc_edi, align 4
  %sub = sub i32 %58, %57
  store i32 %sub, i32* %loc_edi, align 4
  %59 = load i32, i32* %loc_edi, align 4
  %60 = load i32, i32* %loc_eax, align 4
  %cmp52 = icmp ult i32 %59, %60
  br i1 %cmp52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %if.end.44
  %61 = load i32, i32* %loc_eax, align 4
  %62 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p154 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %62, i32 0, i32 1
  store i32 %61, i32* %p154, align 4
  %63 = load i32, i32* %ret, align 4
  %sub55 = sub i32 2048, %63
  %shr56 = lshr i32 %sub55, 5
  store i32 %shr56, i32* %loc_eax, align 4
  %64 = load i8*, i8** %old_ecx.addr, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %loc_eax, align 4
  %add = add i32 %66, %67
  %68 = load i8*, i8** %old_ecx.addr, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %add, i32* %69, align 4
  store i32 0, i32* %ret, align 4
  br label %if.end.64

if.else.57:                                       ; preds = %if.end.44
  %70 = load i32, i32* %loc_eax, align 4
  %71 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p258 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %71, i32 0, i32 2
  %72 = load i32, i32* %p258, align 4
  %add59 = add i32 %72, %70
  store i32 %add59, i32* %p258, align 4
  %73 = load i32, i32* %loc_eax, align 4
  %74 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p160 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %74, i32 0, i32 1
  %75 = load i32, i32* %p160, align 4
  %sub61 = sub i32 %75, %73
  store i32 %sub61, i32* %p160, align 4
  %76 = load i32, i32* %ret, align 4
  %shr62 = lshr i32 %76, 5
  store i32 %shr62, i32* %loc_eax, align 4
  %77 = load i8*, i8** %old_ecx.addr, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %loc_eax, align 4
  %sub63 = sub i32 %79, %80
  %81 = load i8*, i8** %old_ecx.addr, align 8
  %82 = bitcast i8* %81 to i32*
  store i32 %sub63, i32* %82, align 4
  store i32 1, i32* %ret, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.57, %if.then.53
  %83 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p165 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %83, i32 0, i32 1
  %84 = load i32, i32* %p165, align 4
  %and66 = and i32 %84, -16777216
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.end.64
  %85 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p269 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %85, i32 0, i32 2
  %86 = load i32, i32* %p269, align 4
  %shl70 = shl i32 %86, 8
  store i32 %shl70, i32* %p269, align 4
  %87 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p171 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %87, i32 0, i32 1
  %88 = load i32, i32* %p171, align 4
  %shl72 = shl i32 %88, 8
  store i32 %shl72, i32* %p171, align 4
  %89 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %p073 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %89, i32 0, i32 0
  %90 = load i8*, i8** %p073, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr, i8** %p073, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.end.64
  %91 = load i32, i32* %ret, align 4
  store i32 %91, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.end
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @lzma_upack_esi_50(%struct.lzmastate* %p, i32 %old_eax, i32 %old_ecx, i8** %old_edx, i8* %old_ebp, i32* %retval1, i8* %bs, i32 %bl) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_eax.addr = alloca i32, align 4
  %old_ecx.addr = alloca i32, align 4
  %old_edx.addr = alloca i8**, align 8
  %old_ebp.addr = alloca i8*, align 8
  %retval.addr = alloca i32*, align 8
  %bs.addr = alloca i8*, align 8
  %bl.addr = alloca i32, align 4
  %loc_eax = alloca i32, align 4
  %original = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i32 %old_eax, i32* %old_eax.addr, align 4
  store i32 %old_ecx, i32* %old_ecx.addr, align 4
  store i8** %old_edx, i8*** %old_edx.addr, align 8
  store i8* %old_ebp, i8** %old_ebp.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %bs, i8** %bs.addr, align 8
  store i32 %bl, i32* %bl.addr, align 4
  %0 = load i32, i32* %old_eax.addr, align 4
  store i32 %0, i32* %loc_eax, align 4
  %1 = load i32, i32* %old_eax.addr, align 4
  store i32 %1, i32* %original, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i8*, i8** %old_ebp.addr, align 8
  %3 = load i32, i32* %loc_eax, align 4
  %shl = shl i32 %3, 2
  %idx.ext = zext i32 %shl to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8**, i8*** %old_edx.addr, align 8
  store i8* %add.ptr, i8** %4, align 8
  %5 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %6 = load i8**, i8*** %old_edx.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %bs.addr, align 8
  %9 = load i32, i32* %bl.addr, align 4
  %call = call i32 @lzma_upack_esi_00(%struct.lzmastate* %5, i8* %7, i8* %8, i32 %9)
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %10 = load i32, i32* %loc_eax, align 4
  %11 = load i32, i32* %loc_eax, align 4
  %add = add i32 %11, %10
  store i32 %add, i32* %loc_eax, align 4
  %12 = load i32, i32* %ret, align 4
  %13 = load i32, i32* %loc_eax, align 4
  %add2 = add i32 %13, %12
  store i32 %add2, i32* %loc_eax, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load i32, i32* %loc_eax, align 4
  %15 = load i32, i32* %old_ecx.addr, align 4
  %cmp3 = icmp ult i32 %14, %15
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %loc_eax, align 4
  %17 = load i32, i32* %old_ecx.addr, align 4
  %sub = sub i32 %16, %17
  %18 = load i32*, i32** %retval.addr, align 8
  store i32 %sub, i32* %18, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @lzma_upack_esi_54(%struct.lzmastate* %p, i32 %old_eax, i32* %old_ecx, i8** %old_edx, i32* %retval1, i8* %bs, i32 %bl) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.lzmastate*, align 8
  %old_eax.addr = alloca i32, align 4
  %old_ecx.addr = alloca i32*, align 8
  %old_edx.addr = alloca i8**, align 8
  %retval.addr = alloca i32*, align 8
  %bs.addr = alloca i8*, align 8
  %bl.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_eax = alloca i32, align 4
  store %struct.lzmastate* %p, %struct.lzmastate** %p.addr, align 8
  store i32 %old_eax, i32* %old_eax.addr, align 4
  store i32* %old_ecx, i32** %old_ecx.addr, align 8
  store i8** %old_edx, i8*** %old_edx.addr, align 8
  store i32* %retval1, i32** %retval.addr, align 8
  store i8* %bs, i8** %bs.addr, align 8
  store i32 %bl, i32* %bl.addr, align 4
  %0 = load i32, i32* %old_eax.addr, align 4
  store i32 %0, i32* %loc_eax, align 4
  %1 = load i32*, i32** %old_ecx.addr, align 8
  %2 = load i32, i32* %1, align 4
  %and = and i32 %2, -256
  %or = or i32 %and, 8
  %3 = load i32*, i32** %old_ecx.addr, align 8
  store i32 %or, i32* %3, align 4
  %4 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %5 = load i8**, i8*** %old_edx.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %bs.addr, align 8
  %8 = load i32, i32* %bl.addr, align 4
  %call = call i32 @lzma_upack_esi_00(%struct.lzmastate* %4, i8* %6, i8* %7, i32 %8)
  store i32 %call, i32* %ret, align 4
  %9 = load i8**, i8*** %old_edx.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 4
  %11 = load i8**, i8*** %old_edx.addr, align 8
  store i8* %add.ptr, i8** %11, align 8
  %12 = load i32, i32* %loc_eax, align 4
  %and2 = and i32 %12, -256
  %or3 = or i32 %and2, 1
  store i32 %or3, i32* %loc_eax, align 4
  %13 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %14 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %15 = load i8**, i8*** %old_edx.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %bs.addr, align 8
  %18 = load i32, i32* %bl.addr, align 4
  %call4 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %14, i8* %16, i8* %17, i32 %18)
  store i32 %call4, i32* %ret, align 4
  %19 = load i32, i32* %loc_eax, align 4
  %or5 = or i32 %19, 8
  store i32 %or5, i32* %loc_eax, align 4
  %20 = load i32, i32* %ret, align 4
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %21 = load i32*, i32** %old_ecx.addr, align 8
  %22 = load i32, i32* %21, align 4
  %shl = shl i32 %22, 5
  store i32 %shl, i32* %21, align 4
  store i32 17, i32* %loc_eax, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %23 = load i32, i32* %loc_eax, align 4
  store i32 %23, i32* %ret, align 4
  %24 = load %struct.lzmastate*, %struct.lzmastate** %p.addr, align 8
  %25 = load i32*, i32** %old_ecx.addr, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i8**, i8*** %old_edx.addr, align 8
  %28 = load i8**, i8*** %old_edx.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %loc_eax, align 4
  %shl9 = shl i32 %30, 2
  %idx.ext = zext i32 %shl9 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load i8*, i8** %bs.addr, align 8
  %32 = load i32, i32* %bl.addr, align 4
  %call11 = call i32 @lzma_upack_esi_50(%struct.lzmastate* %24, i32 1, i32 %26, i8** %27, i8* %add.ptr10, i32* %loc_eax, i8* %31, i32 %32)
  %cmp = icmp eq i32 %call11, -1
  br i1 %cmp, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %33 = load i32, i32* %ret, align 4
  %34 = load i32, i32* %loc_eax, align 4
  %add = add i32 %33, %34
  %35 = load i32*, i32** %retval.addr, align 8
  store i32 %add, i32* %35, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @unmew11(i32 %sectnum, i8* %src, i32 %off, i32 %ssize, i32 %dsize, i32 %base, i32 %vadd, i32 %uselzma, i8** %endsrc, i8** %enddst, i32 %filedesc) #0 {
entry:
  %retval = alloca i32, align 4
  %sectnum.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  %ssize.addr = alloca i32, align 4
  %dsize.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %vadd.addr = alloca i32, align 4
  %uselzma.addr = alloca i32, align 4
  %endsrc.addr = alloca i8**, align 8
  %enddst.addr = alloca i8**, align 8
  %filedesc.addr = alloca i32, align 4
  %entry_point = alloca i32, align 4
  %newedi = alloca i32, align 4
  %loc_ds = alloca i32, align 4
  %loc_ss = alloca i32, align 4
  %source = alloca i8*, align 8
  %lesi = alloca i8*, align 8
  %ledi = alloca i8*, align 8
  %f1 = alloca i8*, align 8
  %f2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %section = alloca %struct.cli_exe_section*, align 8
  %vma = alloca i32, align 4
  %size_sum = alloca i32, align 4
  %val = alloca i32, align 4
  %newsect = alloca i8*, align 8
  store i32 %sectnum, i32* %sectnum.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %off, i32* %off.addr, align 4
  store i32 %ssize, i32* %ssize.addr, align 4
  store i32 %dsize, i32* %dsize.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %vadd, i32* %vadd.addr, align 4
  store i32 %uselzma, i32* %uselzma.addr, align 4
  store i8** %endsrc, i8*** %endsrc.addr, align 8
  store i8** %enddst, i8*** %enddst.addr, align 8
  store i32 %filedesc, i32* %filedesc.addr, align 4
  %0 = load i32, i32* %dsize.addr, align 4
  store i32 %0, i32* %loc_ds, align 4
  %1 = load i32, i32* %ssize.addr, align 4
  store i32 %1, i32* %loc_ss, align 4
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i32, i32* %dsize.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i32, i32* %off.addr, align 4
  %idx.ext1 = sext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext1
  store i8* %add.ptr2, i8** %source, align 8
  %5 = load i8*, i8** %source, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 12
  store i8* %add.ptr3, i8** %lesi, align 8
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section, align 8
  %6 = load i32, i32* %base.addr, align 4
  %7 = load i32, i32* %vadd.addr, align 4
  %add = add i32 %6, %7
  store i32 %add, i32* %vma, align 4
  %8 = load i32, i32* %ssize.addr, align 4
  %9 = load i32, i32* %dsize.addr, align 4
  %add4 = add nsw i32 %8, %9
  store i32 %add4, i32* %size_sum, align 4
  %10 = load i8*, i8** %source, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 4
  %11 = bitcast i8* %add.ptr5 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %entry_point, align 4
  %13 = load i8*, i8** %source, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %13, i64 8
  %14 = bitcast i8* %add.ptr6 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %newedi, align 4
  %16 = load i8*, i8** %src.addr, align 8
  %17 = load i32, i32* %newedi, align 4
  %18 = load i32, i32* %vma, align 4
  %sub = sub i32 %17, %18
  %idx.ext7 = zext i32 %sub to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 %idx.ext7
  store i8* %add.ptr8, i8** %ledi, align 8
  store i32 0, i32* %i, align 4
  %19 = load i32, i32* %ssize.addr, align 4
  %sub9 = sub nsw i32 %19, 12
  store i32 %sub9, i32* %ssize.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.114
  %20 = load i32, i32* %i, align 4
  %21 = load i8*, i8** %lesi, align 8
  %22 = load i8*, i8** %ledi, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %20, i8* %21, i8* %22)
  %23 = load i32, i32* %size_sum, align 4
  %cmp = icmp ugt i32 %23, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %while.body
  %24 = load i32, i32* %size_sum, align 4
  %cmp10 = icmp ule i32 4, %24
  br i1 %cmp10, label %land.lhs.true.11, label %if.then

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %25 = load i8*, i8** %lesi, align 8
  %26 = load i8*, i8** %src.addr, align 8
  %cmp12 = icmp uge i8* %25, %26
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true.11
  %27 = load i8*, i8** %lesi, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %27, i64 4
  %28 = load i8*, i8** %src.addr, align 8
  %29 = load i32, i32* %size_sum, align 4
  %idx.ext15 = zext i32 %29 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %28, i64 %idx.ext15
  %cmp17 = icmp ule i8* %add.ptr14, %add.ptr16
  br i1 %cmp17, label %land.lhs.true.18, label %if.then

land.lhs.true.18:                                 ; preds = %land.lhs.true.13
  %30 = load i8*, i8** %lesi, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = load i8*, i8** %src.addr, align 8
  %cmp20 = icmp ugt i8* %add.ptr19, %31
  br i1 %cmp20, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.18
  %32 = load i32, i32* %size_sum, align 4
  %cmp21 = icmp ugt i32 %32, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.then

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %33 = load i32, i32* %size_sum, align 4
  %cmp23 = icmp ule i32 4, %33
  br i1 %cmp23, label %land.lhs.true.24, label %if.then

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %34 = load i8*, i8** %ledi, align 8
  %35 = load i8*, i8** %src.addr, align 8
  %cmp25 = icmp uge i8* %34, %35
  br i1 %cmp25, label %land.lhs.true.26, label %if.then

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %36 = load i8*, i8** %ledi, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %36, i64 4
  %37 = load i8*, i8** %src.addr, align 8
  %38 = load i32, i32* %size_sum, align 4
  %idx.ext28 = zext i32 %38 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %37, i64 %idx.ext28
  %cmp30 = icmp ule i8* %add.ptr27, %add.ptr29
  br i1 %cmp30, label %land.lhs.true.31, label %if.then

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %39 = load i8*, i8** %ledi, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 4
  %40 = load i8*, i8** %src.addr, align 8
  %cmp33 = icmp ugt i8* %add.ptr32, %40
  br i1 %cmp33, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.24, %land.lhs.true.22, %lor.lhs.false, %land.lhs.true.18, %land.lhs.true.13, %land.lhs.true.11, %land.lhs.true, %while.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.31
  %41 = load i8*, i8** %lesi, align 8
  %42 = load i8*, i8** %ledi, align 8
  %43 = load i32, i32* %loc_ss, align 4
  %44 = load i32, i32* %loc_ds, align 4
  %call = call i32 @unmew(i8* %41, i8* %42, i32 %43, i32 %44, i8** %f1, i8** %f2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  %45 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %46 = bitcast %struct.cli_exe_section* %45 to i8*
  call void @free(i8* %46) #3
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end
  %47 = load i32, i32* %size_sum, align 4
  %cmp36 = icmp ugt i32 %47, 0
  br i1 %cmp36, label %land.lhs.true.37, label %if.then.49

land.lhs.true.37:                                 ; preds = %if.end.35
  %48 = load i32, i32* %size_sum, align 4
  %cmp38 = icmp ule i32 4, %48
  br i1 %cmp38, label %land.lhs.true.39, label %if.then.49

land.lhs.true.39:                                 ; preds = %land.lhs.true.37
  %49 = load i8*, i8** %f1, align 8
  %50 = load i8*, i8** %src.addr, align 8
  %cmp40 = icmp uge i8* %49, %50
  br i1 %cmp40, label %land.lhs.true.41, label %if.then.49

land.lhs.true.41:                                 ; preds = %land.lhs.true.39
  %51 = load i8*, i8** %f1, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %51, i64 4
  %52 = load i8*, i8** %src.addr, align 8
  %53 = load i32, i32* %size_sum, align 4
  %idx.ext43 = zext i32 %53 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %52, i64 %idx.ext43
  %cmp45 = icmp ule i8* %add.ptr42, %add.ptr44
  br i1 %cmp45, label %land.lhs.true.46, label %if.then.49

land.lhs.true.46:                                 ; preds = %land.lhs.true.41
  %54 = load i8*, i8** %f1, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %54, i64 4
  %55 = load i8*, i8** %src.addr, align 8
  %cmp48 = icmp ugt i8* %add.ptr47, %55
  br i1 %cmp48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.46, %land.lhs.true.41, %land.lhs.true.39, %land.lhs.true.37, %if.end.35
  %56 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %57 = bitcast %struct.cli_exe_section* %56 to i8*
  call void @free(i8* %57) #3
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.46
  %58 = load i8*, i8** %f1, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %58, i64 4
  %59 = load i8*, i8** %lesi, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr51 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %60 = load i32, i32* %loc_ss, align 4
  %conv = zext i32 %60 to i64
  %sub52 = sub nsw i64 %conv, %sub.ptr.sub
  %conv53 = trunc i64 %sub52 to i32
  store i32 %conv53, i32* %loc_ss, align 4
  %61 = load i8*, i8** %f2, align 8
  %62 = load i8*, i8** %ledi, align 8
  %sub.ptr.lhs.cast54 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %62 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %63 = load i32, i32* %loc_ds, align 4
  %conv57 = zext i32 %63 to i64
  %sub58 = sub nsw i64 %conv57, %sub.ptr.sub56
  %conv59 = trunc i64 %sub58 to i32
  store i32 %conv59, i32* %loc_ds, align 4
  %64 = load i8*, i8** %src.addr, align 8
  %65 = load i8*, i8** %f1, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %vma, align 4
  %sub60 = sub i32 %67, %68
  %idx.ext61 = zext i32 %sub60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %64, i64 %idx.ext61
  store i8* %add.ptr62, i8** %ledi, align 8
  %69 = load i8*, i8** %f1, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %add.ptr63, i8** %lesi, align 8
  %70 = load i32, i32* %uselzma.addr, align 4
  %tobool64 = icmp ne i32 %70, 0
  br i1 %tobool64, label %if.end.111, label %if.then.65

if.then.65:                                       ; preds = %if.end.50
  %71 = load i8*, i8** %f2, align 8
  %72 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast66 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %72 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %div = sdiv i64 %sub.ptr.sub68, 4096
  %73 = load i8*, i8** %f2, align 8
  %74 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast69 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %74 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %rem = srem i64 %sub.ptr.sub71, 4096
  %cmp72 = icmp ne i64 %rem, 0
  %conv73 = zext i1 %cmp72 to i32
  %conv74 = sext i32 %conv73 to i64
  %add75 = add nsw i64 %div, %conv74
  %mul = mul nsw i64 %add75, 4096
  %conv76 = trunc i64 %mul to i32
  store i32 %conv76, i32* %val, align 4
  %75 = load i32, i32* %i, align 4
  %tobool77 = icmp ne i32 %75, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.82

land.lhs.true.78:                                 ; preds = %if.then.65
  %76 = load i32, i32* %val, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom = sext i32 %77 to i64
  %78 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %78, i64 %idxprom
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 2
  %79 = load i32, i32* %raw, align 4
  %cmp79 = icmp ult i32 %76, %79
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true.78
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  %80 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %81 = bitcast %struct.cli_exe_section* %80 to i8*
  call void @free(i8* %81) #3
  store i32 -1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %land.lhs.true.78, %if.then.65
  %82 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %83 = bitcast %struct.cli_exe_section* %82 to i8*
  %84 = load i32, i32* %i, align 4
  %add83 = add nsw i32 %84, 2
  %conv84 = sext i32 %add83 to i64
  %mul85 = mul i64 %conv84, 36
  %call86 = call i8* @cli_realloc(i8* %83, i64 %mul85)
  store i8* %call86, i8** %newsect, align 8
  %tobool87 = icmp ne i8* %call86, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.82
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  %85 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %86 = bitcast %struct.cli_exe_section* %85 to i8*
  call void @free(i8* %86) #3
  store i32 -1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.end.82
  %87 = load i8*, i8** %newsect, align 8
  %88 = bitcast i8* %87 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %88, %struct.cli_exe_section** %section, align 8
  %89 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx90 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %89, i64 0
  %raw91 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx90, i32 0, i32 2
  store i32 0, i32* %raw91, align 4
  %90 = load i32, i32* %vadd.addr, align 4
  %91 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx92 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %91, i64 0
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx92, i32 0, i32 0
  store i32 %90, i32* %rva, align 4
  %92 = load i32, i32* %val, align 4
  %93 = load i32, i32* %i, align 4
  %add93 = add nsw i32 %93, 1
  %idxprom94 = sext i32 %add93 to i64
  %94 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx95 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %94, i64 %idxprom94
  %raw96 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx95, i32 0, i32 2
  store i32 %92, i32* %raw96, align 4
  %95 = load i32, i32* %val, align 4
  %96 = load i32, i32* %vadd.addr, align 4
  %add97 = add i32 %95, %96
  %97 = load i32, i32* %i, align 4
  %add98 = add nsw i32 %97, 1
  %idxprom99 = sext i32 %add98 to i64
  %98 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx100 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %98, i64 %idxprom99
  %rva101 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx100, i32 0, i32 0
  store i32 %add97, i32* %rva101, align 4
  %99 = load i32, i32* %i, align 4
  %tobool102 = icmp ne i32 %99, 0
  br i1 %tobool102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.89
  %100 = load i32, i32* %val, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %101 to i64
  %102 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx104 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %102, i64 %idxprom103
  %raw105 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx104, i32 0, i32 2
  %103 = load i32, i32* %raw105, align 4
  %sub106 = sub i32 %100, %103
  br label %cond.end

cond.false:                                       ; preds = %if.end.89
  %104 = load i32, i32* %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub106, %cond.true ], [ %104, %cond.false ]
  %105 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %105 to i64
  %106 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx108 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %106, i64 %idxprom107
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx108, i32 0, i32 1
  store i32 %cond, i32* %vsz, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %107 to i64
  %108 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx110 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %108, i64 %idxprom109
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx110, i32 0, i32 3
  store i32 %cond, i32* %rsz, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %cond.end, %if.end.50
  %109 = load i32, i32* %i, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %i, align 4
  %110 = load i8*, i8** %f1, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %tobool112 = icmp ne i32 %112, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.end.111
  br label %while.end

if.end.114:                                       ; preds = %if.end.111
  br label %while.body

while.end:                                        ; preds = %if.then.113
  %113 = load i32, i32* %uselzma.addr, align 4
  %tobool115 = icmp ne i32 %113, 0
  br i1 %tobool115, label %if.then.116, label %if.end.209

if.then.116:                                      ; preds = %while.end
  %114 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %115 = bitcast %struct.cli_exe_section* %114 to i8*
  call void @free(i8* %115) #3
  store i32 1, i32* %i, align 4
  %116 = load i32, i32* %size_sum, align 4
  %cmp117 = icmp ugt i32 %116, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.then.144

land.lhs.true.119:                                ; preds = %if.then.116
  %117 = load i32, i32* %size_sum, align 4
  %cmp120 = icmp ule i32 1, %117
  br i1 %cmp120, label %land.lhs.true.122, label %if.then.144

land.lhs.true.122:                                ; preds = %land.lhs.true.119
  %118 = load i8*, i8** %src.addr, align 8
  %119 = load i32, i32* %uselzma.addr, align 4
  %idx.ext123 = sext i32 %119 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %118, i64 %idx.ext123
  %add.ptr125 = getelementptr inbounds i8, i8* %add.ptr124, i64 8
  %120 = load i8*, i8** %src.addr, align 8
  %cmp126 = icmp uge i8* %add.ptr125, %120
  br i1 %cmp126, label %land.lhs.true.128, label %if.then.144

land.lhs.true.128:                                ; preds = %land.lhs.true.122
  %121 = load i8*, i8** %src.addr, align 8
  %122 = load i32, i32* %uselzma.addr, align 4
  %idx.ext129 = sext i32 %122 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %121, i64 %idx.ext129
  %add.ptr131 = getelementptr inbounds i8, i8* %add.ptr130, i64 8
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr131, i64 1
  %123 = load i8*, i8** %src.addr, align 8
  %124 = load i32, i32* %size_sum, align 4
  %idx.ext133 = zext i32 %124 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %123, i64 %idx.ext133
  %cmp135 = icmp ule i8* %add.ptr132, %add.ptr134
  br i1 %cmp135, label %land.lhs.true.137, label %if.then.144

land.lhs.true.137:                                ; preds = %land.lhs.true.128
  %125 = load i8*, i8** %src.addr, align 8
  %126 = load i32, i32* %uselzma.addr, align 4
  %idx.ext138 = sext i32 %126 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %125, i64 %idx.ext138
  %add.ptr140 = getelementptr inbounds i8, i8* %add.ptr139, i64 8
  %add.ptr141 = getelementptr inbounds i8, i8* %add.ptr140, i64 1
  %127 = load i8*, i8** %src.addr, align 8
  %cmp142 = icmp ugt i8* %add.ptr141, %127
  br i1 %cmp142, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %land.lhs.true.137, %land.lhs.true.128, %land.lhs.true.122, %land.lhs.true.119, %if.then.116
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %land.lhs.true.137
  %128 = load i8*, i8** %src.addr, align 8
  %129 = load i32, i32* %uselzma.addr, align 4
  %idx.ext146 = sext i32 %129 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %128, i64 %idx.ext146
  %add.ptr148 = getelementptr inbounds i8, i8* %add.ptr147, i64 8
  %130 = load i8, i8* %add.ptr148, align 1
  %conv149 = sext i8 %130 to i32
  %cmp150 = icmp eq i32 %conv149, 80
  %cond152 = select i1 %cmp150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %cond152)
  %131 = load i32, i32* %size_sum, align 4
  %cmp153 = icmp ugt i32 %131, 0
  br i1 %cmp153, label %land.lhs.true.155, label %if.then.178

land.lhs.true.155:                                ; preds = %if.end.145
  %132 = load i32, i32* %size_sum, align 4
  %cmp156 = icmp ule i32 29, %132
  br i1 %cmp156, label %land.lhs.true.158, label %if.then.178

land.lhs.true.158:                                ; preds = %land.lhs.true.155
  %133 = load i8*, i8** %f1, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %133, i64 4
  %134 = load i8*, i8** %src.addr, align 8
  %cmp160 = icmp uge i8* %add.ptr159, %134
  br i1 %cmp160, label %land.lhs.true.162, label %if.then.178

land.lhs.true.162:                                ; preds = %land.lhs.true.158
  %135 = load i8*, i8** %f1, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %135, i64 4
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr163, i64 20
  %add.ptr165 = getelementptr inbounds i8, i8* %add.ptr164, i64 4
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr165, i64 5
  %136 = load i8*, i8** %src.addr, align 8
  %137 = load i32, i32* %size_sum, align 4
  %idx.ext167 = zext i32 %137 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %136, i64 %idx.ext167
  %cmp169 = icmp ule i8* %add.ptr166, %add.ptr168
  br i1 %cmp169, label %land.lhs.true.171, label %if.then.178

land.lhs.true.171:                                ; preds = %land.lhs.true.162
  %138 = load i8*, i8** %f1, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %138, i64 4
  %add.ptr173 = getelementptr inbounds i8, i8* %add.ptr172, i64 20
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr173, i64 4
  %add.ptr175 = getelementptr inbounds i8, i8* %add.ptr174, i64 5
  %139 = load i8*, i8** %src.addr, align 8
  %cmp176 = icmp ugt i8* %add.ptr175, %139
  br i1 %cmp176, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %land.lhs.true.171, %land.lhs.true.162, %land.lhs.true.158, %land.lhs.true.155, %if.end.145
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.179:                                       ; preds = %land.lhs.true.171
  %140 = load i8*, i8** %src.addr, align 8
  %141 = load i8*, i8** %f1, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %141, i64 4
  %142 = load i32, i32* %size_sum, align 4
  %143 = load i32, i32* %vma, align 4
  %144 = load i8*, i8** %src.addr, align 8
  %145 = load i32, i32* %uselzma.addr, align 4
  %idx.ext181 = sext i32 %145 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %144, i64 %idx.ext181
  %add.ptr183 = getelementptr inbounds i8, i8* %add.ptr182, i64 8
  %146 = load i8, i8* %add.ptr183, align 1
  %conv184 = sext i8 %146 to i32
  %cmp185 = icmp eq i32 %conv184, 80
  %conv186 = zext i1 %cmp185 to i32
  %call187 = call i32 @mew_lzma(i8* %140, i8* %add.ptr180, i32 %142, i32 %143, i32 %conv186)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.179
  store i32 -1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end.179
  %147 = load i32, i32* %loc_ds, align 4
  %div191 = udiv i32 %147, 4096
  %148 = load i32, i32* %loc_ds, align 4
  %rem192 = urem i32 %148, 4096
  %cmp193 = icmp ne i32 %rem192, 0
  %conv194 = zext i1 %cmp193 to i32
  %add195 = add i32 %div191, %conv194
  %mul196 = mul i32 %add195, 4096
  store i32 %mul196, i32* %loc_ds, align 4
  %call197 = call i8* @cli_calloc(i64 1, i64 36)
  %149 = bitcast i8* %call197 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %149, %struct.cli_exe_section** %section, align 8
  %150 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %tobool198 = icmp ne %struct.cli_exe_section* %150, null
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %if.end.190
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.end.190
  %151 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx201 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %151, i64 0
  %raw202 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx201, i32 0, i32 2
  store i32 0, i32* %raw202, align 4
  %152 = load i32, i32* %vadd.addr, align 4
  %153 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx203 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %153, i64 0
  %rva204 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx203, i32 0, i32 0
  store i32 %152, i32* %rva204, align 4
  %154 = load i32, i32* %dsize.addr, align 4
  %155 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx205 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %155, i64 0
  %vsz206 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx205, i32 0, i32 1
  store i32 %154, i32* %vsz206, align 4
  %156 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %arrayidx207 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %156, i64 0
  %rsz208 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx207, i32 0, i32 3
  store i32 %154, i32* %rsz208, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.200, %while.end
  %157 = load i8*, i8** %src.addr, align 8
  %158 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %base.addr, align 4
  %161 = load i32, i32* %entry_point, align 4
  %162 = load i32, i32* %base.addr, align 4
  %sub210 = sub i32 %161, %162
  %163 = load i32, i32* %filedesc.addr, align 4
  %call211 = call i32 @cli_rebuildpe(i8* %157, %struct.cli_exe_section* %158, i32 %159, i32 %160, i32 %sub210, i32 0, i32 0, i32 %163)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %if.end.209
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  %164 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %165 = bitcast %struct.cli_exe_section* %164 to i8*
  call void @free(i8* %165) #3
  store i32 -1, i32* %retval
  br label %return

if.end.214:                                       ; preds = %if.end.209
  %166 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %167 = bitcast %struct.cli_exe_section* %166 to i8*
  call void @free(i8* %167) #3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.214, %if.then.213, %if.then.199, %if.then.189, %if.then.178, %if.then.144, %if.then.88, %if.then.81, %if.then.49, %if.then.34, %if.then
  %168 = load i32, i32* %retval
  ret i32 %168
}

declare i32 @unmew(i8*, i8*, i32, i32, i8**, i8**) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @cli_realloc(i8*, i64) #1

declare i8* @cli_calloc(i64, i64) #1

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
