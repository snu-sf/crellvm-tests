; ModuleID = './MultiSource.Applications.ClamAV/82.libclamav_md5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }

; Function Attrs: nounwind uwtable
define void @cli_md5_init(%struct.cli_md5_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.cli_md5_ctx*, align 8
  store %struct.cli_md5_ctx* %ctx, %struct.cli_md5_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %0, i32 0, i32 2
  store i32 1732584193, i32* %a, align 4
  %1 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %1, i32 0, i32 3
  store i32 -271733879, i32* %b, align 4
  %2 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %2, i32 0, i32 4
  store i32 -1732584194, i32* %c, align 4
  %3 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %3, i32 0, i32 5
  store i32 271733878, i32* %d, align 4
  %4 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %4, i32 0, i32 0
  store i32 0, i32* %lo, align 4
  %5 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %5, i32 0, i32 1
  store i32 0, i32* %hi, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_md5_update(%struct.cli_md5_ctx* %ctx, i8* %data, i64 %size) #0 {
entry:
  %ctx.addr = alloca %struct.cli_md5_ctx*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %saved_lo = alloca i32, align 4
  %used = alloca i64, align 8
  %free = alloca i64, align 8
  store %struct.cli_md5_ctx* %ctx, %struct.cli_md5_ctx** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %0, i32 0, i32 0
  %1 = load i32, i32* %lo, align 4
  store i32 %1, i32* %saved_lo, align 4
  %2 = load i32, i32* %saved_lo, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %size.addr, align 8
  %add = add i64 %conv, %3
  %and = and i64 %add, 536870911
  %conv1 = trunc i64 %and to i32
  %4 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo2 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %4, i32 0, i32 0
  store i32 %conv1, i32* %lo2, align 4
  %5 = load i32, i32* %saved_lo, align 4
  %cmp = icmp ult i32 %conv1, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %6, i32 0, i32 1
  %7 = load i32, i32* %hi, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %size.addr, align 8
  %shr = lshr i64 %8, 29
  %9 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi4 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %9, i32 0, i32 1
  %10 = load i32, i32* %hi4, align 4
  %conv5 = zext i32 %10 to i64
  %add6 = add i64 %conv5, %shr
  %conv7 = trunc i64 %add6 to i32
  store i32 %conv7, i32* %hi4, align 4
  %11 = load i32, i32* %saved_lo, align 4
  %and8 = and i32 %11, 63
  %conv9 = zext i32 %and8 to i64
  store i64 %conv9, i64* %used, align 8
  %12 = load i64, i64* %used, align 8
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end
  %13 = load i64, i64* %used, align 8
  %sub = sub i64 64, %13
  store i64 %sub, i64* %free, align 8
  %14 = load i64, i64* %size.addr, align 8
  %15 = load i64, i64* %free, align 8
  %cmp11 = icmp ult i64 %14, %15
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %16 = load i64, i64* %used, align 8
  %17 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %17, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %16
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %18, i64 %19, i32 1, i1 false)
  br label %return

if.end.14:                                        ; preds = %if.then.10
  %20 = load i64, i64* %used, align 8
  %21 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer15 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %21, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer15, i32 0, i64 %20
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i64, i64* %free, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx16, i8* %22, i64 %23, i32 1, i1 false)
  %24 = load i8*, i8** %data.addr, align 8
  %25 = load i64, i64* %free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %add.ptr, i8** %data.addr, align 8
  %26 = load i64, i64* %free, align 8
  %27 = load i64, i64* %size.addr, align 8
  %sub17 = sub i64 %27, %26
  store i64 %sub17, i64* %size.addr, align 8
  %28 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %29 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %29, i32 0, i32 6
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer18, i32 0, i32 0
  %call = call i8* @body(%struct.cli_md5_ctx* %28, i8* %arraydecay, i64 64)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %if.end
  %30 = load i64, i64* %size.addr, align 8
  %cmp20 = icmp uge i64 %30, 64
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %31 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %32 = load i8*, i8** %data.addr, align 8
  %33 = load i64, i64* %size.addr, align 8
  %and23 = and i64 %33, -64
  %call24 = call i8* @body(%struct.cli_md5_ctx* %31, i8* %32, i64 %and23)
  store i8* %call24, i8** %data.addr, align 8
  %34 = load i64, i64* %size.addr, align 8
  %and25 = and i64 %34, 63
  store i64 %and25, i64* %size.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %35 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer27 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %35, i32 0, i32 6
  %36 = bitcast [64 x i8]* %buffer27 to i8*
  %37 = load i8*, i8** %data.addr, align 8
  %38 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %38, i32 1, i1 false)
  br label %return

return:                                           ; preds = %if.end.26, %if.then.13
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i8* @body(%struct.cli_md5_ctx* %ctx, i8* %data, i64 %size) #0 {
entry:
  %ctx.addr = alloca %struct.cli_md5_ctx*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %saved_a = alloca i32, align 4
  %saved_b = alloca i32, align 4
  %saved_c = alloca i32, align 4
  %saved_d = alloca i32, align 4
  store %struct.cli_md5_ctx* %ctx, %struct.cli_md5_ctx** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %ptr, align 8
  %1 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a1 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %1, i32 0, i32 2
  %2 = load i32, i32* %a1, align 4
  store i32 %2, i32* %a, align 4
  %3 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b2 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %3, i32 0, i32 3
  %4 = load i32, i32* %b2, align 4
  store i32 %4, i32* %b, align 4
  %5 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c3 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %5, i32 0, i32 4
  %6 = load i32, i32* %c3, align 4
  store i32 %6, i32* %c, align 4
  %7 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d4 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %7, i32 0, i32 5
  %8 = load i32, i32* %d4, align 4
  store i32 %8, i32* %d, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %9 = load i32, i32* %a, align 4
  store i32 %9, i32* %saved_a, align 4
  %10 = load i32, i32* %b, align 4
  store i32 %10, i32* %saved_b, align 4
  %11 = load i32, i32* %c, align 4
  store i32 %11, i32* %saved_c, align 4
  %12 = load i32, i32* %d, align 4
  store i32 %12, i32* %saved_d, align 4
  %13 = load i32, i32* %d, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %d, align 4
  %xor = xor i32 %15, %16
  %and = and i32 %14, %xor
  %xor5 = xor i32 %13, %and
  %17 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = bitcast i8* %arrayidx to i32*
  %19 = load i32, i32* %18, align 4
  %add = add i32 %xor5, %19
  %add6 = add i32 %add, -680876936
  %20 = load i32, i32* %a, align 4
  %add7 = add i32 %20, %add6
  store i32 %add7, i32* %a, align 4
  %21 = load i32, i32* %a, align 4
  %shl = shl i32 %21, 7
  %22 = load i32, i32* %a, align 4
  %shr = lshr i32 %22, 25
  %or = or i32 %shl, %shr
  store i32 %or, i32* %a, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %a, align 4
  %add8 = add i32 %24, %23
  store i32 %add8, i32* %a, align 4
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %c, align 4
  %xor9 = xor i32 %27, %28
  %and10 = and i32 %26, %xor9
  %xor11 = xor i32 %25, %and10
  %29 = load i8*, i8** %ptr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 4
  %30 = bitcast i8* %arrayidx12 to i32*
  %31 = load i32, i32* %30, align 4
  %add13 = add i32 %xor11, %31
  %add14 = add i32 %add13, -389564586
  %32 = load i32, i32* %d, align 4
  %add15 = add i32 %32, %add14
  store i32 %add15, i32* %d, align 4
  %33 = load i32, i32* %d, align 4
  %shl16 = shl i32 %33, 12
  %34 = load i32, i32* %d, align 4
  %shr17 = lshr i32 %34, 20
  %or18 = or i32 %shl16, %shr17
  store i32 %or18, i32* %d, align 4
  %35 = load i32, i32* %a, align 4
  %36 = load i32, i32* %d, align 4
  %add19 = add i32 %36, %35
  store i32 %add19, i32* %d, align 4
  %37 = load i32, i32* %b, align 4
  %38 = load i32, i32* %d, align 4
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %b, align 4
  %xor20 = xor i32 %39, %40
  %and21 = and i32 %38, %xor20
  %xor22 = xor i32 %37, %and21
  %41 = load i8*, i8** %ptr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %41, i64 8
  %42 = bitcast i8* %arrayidx23 to i32*
  %43 = load i32, i32* %42, align 4
  %add24 = add i32 %xor22, %43
  %add25 = add i32 %add24, 606105819
  %44 = load i32, i32* %c, align 4
  %add26 = add i32 %44, %add25
  store i32 %add26, i32* %c, align 4
  %45 = load i32, i32* %c, align 4
  %shl27 = shl i32 %45, 17
  %46 = load i32, i32* %c, align 4
  %shr28 = lshr i32 %46, 15
  %or29 = or i32 %shl27, %shr28
  store i32 %or29, i32* %c, align 4
  %47 = load i32, i32* %d, align 4
  %48 = load i32, i32* %c, align 4
  %add30 = add i32 %48, %47
  store i32 %add30, i32* %c, align 4
  %49 = load i32, i32* %a, align 4
  %50 = load i32, i32* %c, align 4
  %51 = load i32, i32* %d, align 4
  %52 = load i32, i32* %a, align 4
  %xor31 = xor i32 %51, %52
  %and32 = and i32 %50, %xor31
  %xor33 = xor i32 %49, %and32
  %53 = load i8*, i8** %ptr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %53, i64 12
  %54 = bitcast i8* %arrayidx34 to i32*
  %55 = load i32, i32* %54, align 4
  %add35 = add i32 %xor33, %55
  %add36 = add i32 %add35, -1044525330
  %56 = load i32, i32* %b, align 4
  %add37 = add i32 %56, %add36
  store i32 %add37, i32* %b, align 4
  %57 = load i32, i32* %b, align 4
  %shl38 = shl i32 %57, 22
  %58 = load i32, i32* %b, align 4
  %shr39 = lshr i32 %58, 10
  %or40 = or i32 %shl38, %shr39
  store i32 %or40, i32* %b, align 4
  %59 = load i32, i32* %c, align 4
  %60 = load i32, i32* %b, align 4
  %add41 = add i32 %60, %59
  store i32 %add41, i32* %b, align 4
  %61 = load i32, i32* %d, align 4
  %62 = load i32, i32* %b, align 4
  %63 = load i32, i32* %c, align 4
  %64 = load i32, i32* %d, align 4
  %xor42 = xor i32 %63, %64
  %and43 = and i32 %62, %xor42
  %xor44 = xor i32 %61, %and43
  %65 = load i8*, i8** %ptr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %65, i64 16
  %66 = bitcast i8* %arrayidx45 to i32*
  %67 = load i32, i32* %66, align 4
  %add46 = add i32 %xor44, %67
  %add47 = add i32 %add46, -176418897
  %68 = load i32, i32* %a, align 4
  %add48 = add i32 %68, %add47
  store i32 %add48, i32* %a, align 4
  %69 = load i32, i32* %a, align 4
  %shl49 = shl i32 %69, 7
  %70 = load i32, i32* %a, align 4
  %shr50 = lshr i32 %70, 25
  %or51 = or i32 %shl49, %shr50
  store i32 %or51, i32* %a, align 4
  %71 = load i32, i32* %b, align 4
  %72 = load i32, i32* %a, align 4
  %add52 = add i32 %72, %71
  store i32 %add52, i32* %a, align 4
  %73 = load i32, i32* %c, align 4
  %74 = load i32, i32* %a, align 4
  %75 = load i32, i32* %b, align 4
  %76 = load i32, i32* %c, align 4
  %xor53 = xor i32 %75, %76
  %and54 = and i32 %74, %xor53
  %xor55 = xor i32 %73, %and54
  %77 = load i8*, i8** %ptr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %77, i64 20
  %78 = bitcast i8* %arrayidx56 to i32*
  %79 = load i32, i32* %78, align 4
  %add57 = add i32 %xor55, %79
  %add58 = add i32 %add57, 1200080426
  %80 = load i32, i32* %d, align 4
  %add59 = add i32 %80, %add58
  store i32 %add59, i32* %d, align 4
  %81 = load i32, i32* %d, align 4
  %shl60 = shl i32 %81, 12
  %82 = load i32, i32* %d, align 4
  %shr61 = lshr i32 %82, 20
  %or62 = or i32 %shl60, %shr61
  store i32 %or62, i32* %d, align 4
  %83 = load i32, i32* %a, align 4
  %84 = load i32, i32* %d, align 4
  %add63 = add i32 %84, %83
  store i32 %add63, i32* %d, align 4
  %85 = load i32, i32* %b, align 4
  %86 = load i32, i32* %d, align 4
  %87 = load i32, i32* %a, align 4
  %88 = load i32, i32* %b, align 4
  %xor64 = xor i32 %87, %88
  %and65 = and i32 %86, %xor64
  %xor66 = xor i32 %85, %and65
  %89 = load i8*, i8** %ptr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %89, i64 24
  %90 = bitcast i8* %arrayidx67 to i32*
  %91 = load i32, i32* %90, align 4
  %add68 = add i32 %xor66, %91
  %add69 = add i32 %add68, -1473231341
  %92 = load i32, i32* %c, align 4
  %add70 = add i32 %92, %add69
  store i32 %add70, i32* %c, align 4
  %93 = load i32, i32* %c, align 4
  %shl71 = shl i32 %93, 17
  %94 = load i32, i32* %c, align 4
  %shr72 = lshr i32 %94, 15
  %or73 = or i32 %shl71, %shr72
  store i32 %or73, i32* %c, align 4
  %95 = load i32, i32* %d, align 4
  %96 = load i32, i32* %c, align 4
  %add74 = add i32 %96, %95
  store i32 %add74, i32* %c, align 4
  %97 = load i32, i32* %a, align 4
  %98 = load i32, i32* %c, align 4
  %99 = load i32, i32* %d, align 4
  %100 = load i32, i32* %a, align 4
  %xor75 = xor i32 %99, %100
  %and76 = and i32 %98, %xor75
  %xor77 = xor i32 %97, %and76
  %101 = load i8*, i8** %ptr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %101, i64 28
  %102 = bitcast i8* %arrayidx78 to i32*
  %103 = load i32, i32* %102, align 4
  %add79 = add i32 %xor77, %103
  %add80 = add i32 %add79, -45705983
  %104 = load i32, i32* %b, align 4
  %add81 = add i32 %104, %add80
  store i32 %add81, i32* %b, align 4
  %105 = load i32, i32* %b, align 4
  %shl82 = shl i32 %105, 22
  %106 = load i32, i32* %b, align 4
  %shr83 = lshr i32 %106, 10
  %or84 = or i32 %shl82, %shr83
  store i32 %or84, i32* %b, align 4
  %107 = load i32, i32* %c, align 4
  %108 = load i32, i32* %b, align 4
  %add85 = add i32 %108, %107
  store i32 %add85, i32* %b, align 4
  %109 = load i32, i32* %d, align 4
  %110 = load i32, i32* %b, align 4
  %111 = load i32, i32* %c, align 4
  %112 = load i32, i32* %d, align 4
  %xor86 = xor i32 %111, %112
  %and87 = and i32 %110, %xor86
  %xor88 = xor i32 %109, %and87
  %113 = load i8*, i8** %ptr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %113, i64 32
  %114 = bitcast i8* %arrayidx89 to i32*
  %115 = load i32, i32* %114, align 4
  %add90 = add i32 %xor88, %115
  %add91 = add i32 %add90, 1770035416
  %116 = load i32, i32* %a, align 4
  %add92 = add i32 %116, %add91
  store i32 %add92, i32* %a, align 4
  %117 = load i32, i32* %a, align 4
  %shl93 = shl i32 %117, 7
  %118 = load i32, i32* %a, align 4
  %shr94 = lshr i32 %118, 25
  %or95 = or i32 %shl93, %shr94
  store i32 %or95, i32* %a, align 4
  %119 = load i32, i32* %b, align 4
  %120 = load i32, i32* %a, align 4
  %add96 = add i32 %120, %119
  store i32 %add96, i32* %a, align 4
  %121 = load i32, i32* %c, align 4
  %122 = load i32, i32* %a, align 4
  %123 = load i32, i32* %b, align 4
  %124 = load i32, i32* %c, align 4
  %xor97 = xor i32 %123, %124
  %and98 = and i32 %122, %xor97
  %xor99 = xor i32 %121, %and98
  %125 = load i8*, i8** %ptr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %125, i64 36
  %126 = bitcast i8* %arrayidx100 to i32*
  %127 = load i32, i32* %126, align 4
  %add101 = add i32 %xor99, %127
  %add102 = add i32 %add101, -1958414417
  %128 = load i32, i32* %d, align 4
  %add103 = add i32 %128, %add102
  store i32 %add103, i32* %d, align 4
  %129 = load i32, i32* %d, align 4
  %shl104 = shl i32 %129, 12
  %130 = load i32, i32* %d, align 4
  %shr105 = lshr i32 %130, 20
  %or106 = or i32 %shl104, %shr105
  store i32 %or106, i32* %d, align 4
  %131 = load i32, i32* %a, align 4
  %132 = load i32, i32* %d, align 4
  %add107 = add i32 %132, %131
  store i32 %add107, i32* %d, align 4
  %133 = load i32, i32* %b, align 4
  %134 = load i32, i32* %d, align 4
  %135 = load i32, i32* %a, align 4
  %136 = load i32, i32* %b, align 4
  %xor108 = xor i32 %135, %136
  %and109 = and i32 %134, %xor108
  %xor110 = xor i32 %133, %and109
  %137 = load i8*, i8** %ptr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %137, i64 40
  %138 = bitcast i8* %arrayidx111 to i32*
  %139 = load i32, i32* %138, align 4
  %add112 = add i32 %xor110, %139
  %add113 = add i32 %add112, -42063
  %140 = load i32, i32* %c, align 4
  %add114 = add i32 %140, %add113
  store i32 %add114, i32* %c, align 4
  %141 = load i32, i32* %c, align 4
  %shl115 = shl i32 %141, 17
  %142 = load i32, i32* %c, align 4
  %shr116 = lshr i32 %142, 15
  %or117 = or i32 %shl115, %shr116
  store i32 %or117, i32* %c, align 4
  %143 = load i32, i32* %d, align 4
  %144 = load i32, i32* %c, align 4
  %add118 = add i32 %144, %143
  store i32 %add118, i32* %c, align 4
  %145 = load i32, i32* %a, align 4
  %146 = load i32, i32* %c, align 4
  %147 = load i32, i32* %d, align 4
  %148 = load i32, i32* %a, align 4
  %xor119 = xor i32 %147, %148
  %and120 = and i32 %146, %xor119
  %xor121 = xor i32 %145, %and120
  %149 = load i8*, i8** %ptr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %149, i64 44
  %150 = bitcast i8* %arrayidx122 to i32*
  %151 = load i32, i32* %150, align 4
  %add123 = add i32 %xor121, %151
  %add124 = add i32 %add123, -1990404162
  %152 = load i32, i32* %b, align 4
  %add125 = add i32 %152, %add124
  store i32 %add125, i32* %b, align 4
  %153 = load i32, i32* %b, align 4
  %shl126 = shl i32 %153, 22
  %154 = load i32, i32* %b, align 4
  %shr127 = lshr i32 %154, 10
  %or128 = or i32 %shl126, %shr127
  store i32 %or128, i32* %b, align 4
  %155 = load i32, i32* %c, align 4
  %156 = load i32, i32* %b, align 4
  %add129 = add i32 %156, %155
  store i32 %add129, i32* %b, align 4
  %157 = load i32, i32* %d, align 4
  %158 = load i32, i32* %b, align 4
  %159 = load i32, i32* %c, align 4
  %160 = load i32, i32* %d, align 4
  %xor130 = xor i32 %159, %160
  %and131 = and i32 %158, %xor130
  %xor132 = xor i32 %157, %and131
  %161 = load i8*, i8** %ptr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %161, i64 48
  %162 = bitcast i8* %arrayidx133 to i32*
  %163 = load i32, i32* %162, align 4
  %add134 = add i32 %xor132, %163
  %add135 = add i32 %add134, 1804603682
  %164 = load i32, i32* %a, align 4
  %add136 = add i32 %164, %add135
  store i32 %add136, i32* %a, align 4
  %165 = load i32, i32* %a, align 4
  %shl137 = shl i32 %165, 7
  %166 = load i32, i32* %a, align 4
  %shr138 = lshr i32 %166, 25
  %or139 = or i32 %shl137, %shr138
  store i32 %or139, i32* %a, align 4
  %167 = load i32, i32* %b, align 4
  %168 = load i32, i32* %a, align 4
  %add140 = add i32 %168, %167
  store i32 %add140, i32* %a, align 4
  %169 = load i32, i32* %c, align 4
  %170 = load i32, i32* %a, align 4
  %171 = load i32, i32* %b, align 4
  %172 = load i32, i32* %c, align 4
  %xor141 = xor i32 %171, %172
  %and142 = and i32 %170, %xor141
  %xor143 = xor i32 %169, %and142
  %173 = load i8*, i8** %ptr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %173, i64 52
  %174 = bitcast i8* %arrayidx144 to i32*
  %175 = load i32, i32* %174, align 4
  %add145 = add i32 %xor143, %175
  %add146 = add i32 %add145, -40341101
  %176 = load i32, i32* %d, align 4
  %add147 = add i32 %176, %add146
  store i32 %add147, i32* %d, align 4
  %177 = load i32, i32* %d, align 4
  %shl148 = shl i32 %177, 12
  %178 = load i32, i32* %d, align 4
  %shr149 = lshr i32 %178, 20
  %or150 = or i32 %shl148, %shr149
  store i32 %or150, i32* %d, align 4
  %179 = load i32, i32* %a, align 4
  %180 = load i32, i32* %d, align 4
  %add151 = add i32 %180, %179
  store i32 %add151, i32* %d, align 4
  %181 = load i32, i32* %b, align 4
  %182 = load i32, i32* %d, align 4
  %183 = load i32, i32* %a, align 4
  %184 = load i32, i32* %b, align 4
  %xor152 = xor i32 %183, %184
  %and153 = and i32 %182, %xor152
  %xor154 = xor i32 %181, %and153
  %185 = load i8*, i8** %ptr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %185, i64 56
  %186 = bitcast i8* %arrayidx155 to i32*
  %187 = load i32, i32* %186, align 4
  %add156 = add i32 %xor154, %187
  %add157 = add i32 %add156, -1502002290
  %188 = load i32, i32* %c, align 4
  %add158 = add i32 %188, %add157
  store i32 %add158, i32* %c, align 4
  %189 = load i32, i32* %c, align 4
  %shl159 = shl i32 %189, 17
  %190 = load i32, i32* %c, align 4
  %shr160 = lshr i32 %190, 15
  %or161 = or i32 %shl159, %shr160
  store i32 %or161, i32* %c, align 4
  %191 = load i32, i32* %d, align 4
  %192 = load i32, i32* %c, align 4
  %add162 = add i32 %192, %191
  store i32 %add162, i32* %c, align 4
  %193 = load i32, i32* %a, align 4
  %194 = load i32, i32* %c, align 4
  %195 = load i32, i32* %d, align 4
  %196 = load i32, i32* %a, align 4
  %xor163 = xor i32 %195, %196
  %and164 = and i32 %194, %xor163
  %xor165 = xor i32 %193, %and164
  %197 = load i8*, i8** %ptr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %197, i64 60
  %198 = bitcast i8* %arrayidx166 to i32*
  %199 = load i32, i32* %198, align 4
  %add167 = add i32 %xor165, %199
  %add168 = add i32 %add167, 1236535329
  %200 = load i32, i32* %b, align 4
  %add169 = add i32 %200, %add168
  store i32 %add169, i32* %b, align 4
  %201 = load i32, i32* %b, align 4
  %shl170 = shl i32 %201, 22
  %202 = load i32, i32* %b, align 4
  %shr171 = lshr i32 %202, 10
  %or172 = or i32 %shl170, %shr171
  store i32 %or172, i32* %b, align 4
  %203 = load i32, i32* %c, align 4
  %204 = load i32, i32* %b, align 4
  %add173 = add i32 %204, %203
  store i32 %add173, i32* %b, align 4
  %205 = load i32, i32* %c, align 4
  %206 = load i32, i32* %d, align 4
  %207 = load i32, i32* %b, align 4
  %208 = load i32, i32* %c, align 4
  %xor174 = xor i32 %207, %208
  %and175 = and i32 %206, %xor174
  %xor176 = xor i32 %205, %and175
  %209 = load i8*, i8** %ptr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %209, i64 4
  %210 = bitcast i8* %arrayidx177 to i32*
  %211 = load i32, i32* %210, align 4
  %add178 = add i32 %xor176, %211
  %add179 = add i32 %add178, -165796510
  %212 = load i32, i32* %a, align 4
  %add180 = add i32 %212, %add179
  store i32 %add180, i32* %a, align 4
  %213 = load i32, i32* %a, align 4
  %shl181 = shl i32 %213, 5
  %214 = load i32, i32* %a, align 4
  %shr182 = lshr i32 %214, 27
  %or183 = or i32 %shl181, %shr182
  store i32 %or183, i32* %a, align 4
  %215 = load i32, i32* %b, align 4
  %216 = load i32, i32* %a, align 4
  %add184 = add i32 %216, %215
  store i32 %add184, i32* %a, align 4
  %217 = load i32, i32* %b, align 4
  %218 = load i32, i32* %c, align 4
  %219 = load i32, i32* %a, align 4
  %220 = load i32, i32* %b, align 4
  %xor185 = xor i32 %219, %220
  %and186 = and i32 %218, %xor185
  %xor187 = xor i32 %217, %and186
  %221 = load i8*, i8** %ptr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %221, i64 24
  %222 = bitcast i8* %arrayidx188 to i32*
  %223 = load i32, i32* %222, align 4
  %add189 = add i32 %xor187, %223
  %add190 = add i32 %add189, -1069501632
  %224 = load i32, i32* %d, align 4
  %add191 = add i32 %224, %add190
  store i32 %add191, i32* %d, align 4
  %225 = load i32, i32* %d, align 4
  %shl192 = shl i32 %225, 9
  %226 = load i32, i32* %d, align 4
  %shr193 = lshr i32 %226, 23
  %or194 = or i32 %shl192, %shr193
  store i32 %or194, i32* %d, align 4
  %227 = load i32, i32* %a, align 4
  %228 = load i32, i32* %d, align 4
  %add195 = add i32 %228, %227
  store i32 %add195, i32* %d, align 4
  %229 = load i32, i32* %a, align 4
  %230 = load i32, i32* %b, align 4
  %231 = load i32, i32* %d, align 4
  %232 = load i32, i32* %a, align 4
  %xor196 = xor i32 %231, %232
  %and197 = and i32 %230, %xor196
  %xor198 = xor i32 %229, %and197
  %233 = load i8*, i8** %ptr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %233, i64 44
  %234 = bitcast i8* %arrayidx199 to i32*
  %235 = load i32, i32* %234, align 4
  %add200 = add i32 %xor198, %235
  %add201 = add i32 %add200, 643717713
  %236 = load i32, i32* %c, align 4
  %add202 = add i32 %236, %add201
  store i32 %add202, i32* %c, align 4
  %237 = load i32, i32* %c, align 4
  %shl203 = shl i32 %237, 14
  %238 = load i32, i32* %c, align 4
  %shr204 = lshr i32 %238, 18
  %or205 = or i32 %shl203, %shr204
  store i32 %or205, i32* %c, align 4
  %239 = load i32, i32* %d, align 4
  %240 = load i32, i32* %c, align 4
  %add206 = add i32 %240, %239
  store i32 %add206, i32* %c, align 4
  %241 = load i32, i32* %d, align 4
  %242 = load i32, i32* %a, align 4
  %243 = load i32, i32* %c, align 4
  %244 = load i32, i32* %d, align 4
  %xor207 = xor i32 %243, %244
  %and208 = and i32 %242, %xor207
  %xor209 = xor i32 %241, %and208
  %245 = load i8*, i8** %ptr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %245, i64 0
  %246 = bitcast i8* %arrayidx210 to i32*
  %247 = load i32, i32* %246, align 4
  %add211 = add i32 %xor209, %247
  %add212 = add i32 %add211, -373897302
  %248 = load i32, i32* %b, align 4
  %add213 = add i32 %248, %add212
  store i32 %add213, i32* %b, align 4
  %249 = load i32, i32* %b, align 4
  %shl214 = shl i32 %249, 20
  %250 = load i32, i32* %b, align 4
  %shr215 = lshr i32 %250, 12
  %or216 = or i32 %shl214, %shr215
  store i32 %or216, i32* %b, align 4
  %251 = load i32, i32* %c, align 4
  %252 = load i32, i32* %b, align 4
  %add217 = add i32 %252, %251
  store i32 %add217, i32* %b, align 4
  %253 = load i32, i32* %c, align 4
  %254 = load i32, i32* %d, align 4
  %255 = load i32, i32* %b, align 4
  %256 = load i32, i32* %c, align 4
  %xor218 = xor i32 %255, %256
  %and219 = and i32 %254, %xor218
  %xor220 = xor i32 %253, %and219
  %257 = load i8*, i8** %ptr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %257, i64 20
  %258 = bitcast i8* %arrayidx221 to i32*
  %259 = load i32, i32* %258, align 4
  %add222 = add i32 %xor220, %259
  %add223 = add i32 %add222, -701558691
  %260 = load i32, i32* %a, align 4
  %add224 = add i32 %260, %add223
  store i32 %add224, i32* %a, align 4
  %261 = load i32, i32* %a, align 4
  %shl225 = shl i32 %261, 5
  %262 = load i32, i32* %a, align 4
  %shr226 = lshr i32 %262, 27
  %or227 = or i32 %shl225, %shr226
  store i32 %or227, i32* %a, align 4
  %263 = load i32, i32* %b, align 4
  %264 = load i32, i32* %a, align 4
  %add228 = add i32 %264, %263
  store i32 %add228, i32* %a, align 4
  %265 = load i32, i32* %b, align 4
  %266 = load i32, i32* %c, align 4
  %267 = load i32, i32* %a, align 4
  %268 = load i32, i32* %b, align 4
  %xor229 = xor i32 %267, %268
  %and230 = and i32 %266, %xor229
  %xor231 = xor i32 %265, %and230
  %269 = load i8*, i8** %ptr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %269, i64 40
  %270 = bitcast i8* %arrayidx232 to i32*
  %271 = load i32, i32* %270, align 4
  %add233 = add i32 %xor231, %271
  %add234 = add i32 %add233, 38016083
  %272 = load i32, i32* %d, align 4
  %add235 = add i32 %272, %add234
  store i32 %add235, i32* %d, align 4
  %273 = load i32, i32* %d, align 4
  %shl236 = shl i32 %273, 9
  %274 = load i32, i32* %d, align 4
  %shr237 = lshr i32 %274, 23
  %or238 = or i32 %shl236, %shr237
  store i32 %or238, i32* %d, align 4
  %275 = load i32, i32* %a, align 4
  %276 = load i32, i32* %d, align 4
  %add239 = add i32 %276, %275
  store i32 %add239, i32* %d, align 4
  %277 = load i32, i32* %a, align 4
  %278 = load i32, i32* %b, align 4
  %279 = load i32, i32* %d, align 4
  %280 = load i32, i32* %a, align 4
  %xor240 = xor i32 %279, %280
  %and241 = and i32 %278, %xor240
  %xor242 = xor i32 %277, %and241
  %281 = load i8*, i8** %ptr, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %281, i64 60
  %282 = bitcast i8* %arrayidx243 to i32*
  %283 = load i32, i32* %282, align 4
  %add244 = add i32 %xor242, %283
  %add245 = add i32 %add244, -660478335
  %284 = load i32, i32* %c, align 4
  %add246 = add i32 %284, %add245
  store i32 %add246, i32* %c, align 4
  %285 = load i32, i32* %c, align 4
  %shl247 = shl i32 %285, 14
  %286 = load i32, i32* %c, align 4
  %shr248 = lshr i32 %286, 18
  %or249 = or i32 %shl247, %shr248
  store i32 %or249, i32* %c, align 4
  %287 = load i32, i32* %d, align 4
  %288 = load i32, i32* %c, align 4
  %add250 = add i32 %288, %287
  store i32 %add250, i32* %c, align 4
  %289 = load i32, i32* %d, align 4
  %290 = load i32, i32* %a, align 4
  %291 = load i32, i32* %c, align 4
  %292 = load i32, i32* %d, align 4
  %xor251 = xor i32 %291, %292
  %and252 = and i32 %290, %xor251
  %xor253 = xor i32 %289, %and252
  %293 = load i8*, i8** %ptr, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %293, i64 16
  %294 = bitcast i8* %arrayidx254 to i32*
  %295 = load i32, i32* %294, align 4
  %add255 = add i32 %xor253, %295
  %add256 = add i32 %add255, -405537848
  %296 = load i32, i32* %b, align 4
  %add257 = add i32 %296, %add256
  store i32 %add257, i32* %b, align 4
  %297 = load i32, i32* %b, align 4
  %shl258 = shl i32 %297, 20
  %298 = load i32, i32* %b, align 4
  %shr259 = lshr i32 %298, 12
  %or260 = or i32 %shl258, %shr259
  store i32 %or260, i32* %b, align 4
  %299 = load i32, i32* %c, align 4
  %300 = load i32, i32* %b, align 4
  %add261 = add i32 %300, %299
  store i32 %add261, i32* %b, align 4
  %301 = load i32, i32* %c, align 4
  %302 = load i32, i32* %d, align 4
  %303 = load i32, i32* %b, align 4
  %304 = load i32, i32* %c, align 4
  %xor262 = xor i32 %303, %304
  %and263 = and i32 %302, %xor262
  %xor264 = xor i32 %301, %and263
  %305 = load i8*, i8** %ptr, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %305, i64 36
  %306 = bitcast i8* %arrayidx265 to i32*
  %307 = load i32, i32* %306, align 4
  %add266 = add i32 %xor264, %307
  %add267 = add i32 %add266, 568446438
  %308 = load i32, i32* %a, align 4
  %add268 = add i32 %308, %add267
  store i32 %add268, i32* %a, align 4
  %309 = load i32, i32* %a, align 4
  %shl269 = shl i32 %309, 5
  %310 = load i32, i32* %a, align 4
  %shr270 = lshr i32 %310, 27
  %or271 = or i32 %shl269, %shr270
  store i32 %or271, i32* %a, align 4
  %311 = load i32, i32* %b, align 4
  %312 = load i32, i32* %a, align 4
  %add272 = add i32 %312, %311
  store i32 %add272, i32* %a, align 4
  %313 = load i32, i32* %b, align 4
  %314 = load i32, i32* %c, align 4
  %315 = load i32, i32* %a, align 4
  %316 = load i32, i32* %b, align 4
  %xor273 = xor i32 %315, %316
  %and274 = and i32 %314, %xor273
  %xor275 = xor i32 %313, %and274
  %317 = load i8*, i8** %ptr, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %317, i64 56
  %318 = bitcast i8* %arrayidx276 to i32*
  %319 = load i32, i32* %318, align 4
  %add277 = add i32 %xor275, %319
  %add278 = add i32 %add277, -1019803690
  %320 = load i32, i32* %d, align 4
  %add279 = add i32 %320, %add278
  store i32 %add279, i32* %d, align 4
  %321 = load i32, i32* %d, align 4
  %shl280 = shl i32 %321, 9
  %322 = load i32, i32* %d, align 4
  %shr281 = lshr i32 %322, 23
  %or282 = or i32 %shl280, %shr281
  store i32 %or282, i32* %d, align 4
  %323 = load i32, i32* %a, align 4
  %324 = load i32, i32* %d, align 4
  %add283 = add i32 %324, %323
  store i32 %add283, i32* %d, align 4
  %325 = load i32, i32* %a, align 4
  %326 = load i32, i32* %b, align 4
  %327 = load i32, i32* %d, align 4
  %328 = load i32, i32* %a, align 4
  %xor284 = xor i32 %327, %328
  %and285 = and i32 %326, %xor284
  %xor286 = xor i32 %325, %and285
  %329 = load i8*, i8** %ptr, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %329, i64 12
  %330 = bitcast i8* %arrayidx287 to i32*
  %331 = load i32, i32* %330, align 4
  %add288 = add i32 %xor286, %331
  %add289 = add i32 %add288, -187363961
  %332 = load i32, i32* %c, align 4
  %add290 = add i32 %332, %add289
  store i32 %add290, i32* %c, align 4
  %333 = load i32, i32* %c, align 4
  %shl291 = shl i32 %333, 14
  %334 = load i32, i32* %c, align 4
  %shr292 = lshr i32 %334, 18
  %or293 = or i32 %shl291, %shr292
  store i32 %or293, i32* %c, align 4
  %335 = load i32, i32* %d, align 4
  %336 = load i32, i32* %c, align 4
  %add294 = add i32 %336, %335
  store i32 %add294, i32* %c, align 4
  %337 = load i32, i32* %d, align 4
  %338 = load i32, i32* %a, align 4
  %339 = load i32, i32* %c, align 4
  %340 = load i32, i32* %d, align 4
  %xor295 = xor i32 %339, %340
  %and296 = and i32 %338, %xor295
  %xor297 = xor i32 %337, %and296
  %341 = load i8*, i8** %ptr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %341, i64 32
  %342 = bitcast i8* %arrayidx298 to i32*
  %343 = load i32, i32* %342, align 4
  %add299 = add i32 %xor297, %343
  %add300 = add i32 %add299, 1163531501
  %344 = load i32, i32* %b, align 4
  %add301 = add i32 %344, %add300
  store i32 %add301, i32* %b, align 4
  %345 = load i32, i32* %b, align 4
  %shl302 = shl i32 %345, 20
  %346 = load i32, i32* %b, align 4
  %shr303 = lshr i32 %346, 12
  %or304 = or i32 %shl302, %shr303
  store i32 %or304, i32* %b, align 4
  %347 = load i32, i32* %c, align 4
  %348 = load i32, i32* %b, align 4
  %add305 = add i32 %348, %347
  store i32 %add305, i32* %b, align 4
  %349 = load i32, i32* %c, align 4
  %350 = load i32, i32* %d, align 4
  %351 = load i32, i32* %b, align 4
  %352 = load i32, i32* %c, align 4
  %xor306 = xor i32 %351, %352
  %and307 = and i32 %350, %xor306
  %xor308 = xor i32 %349, %and307
  %353 = load i8*, i8** %ptr, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %353, i64 52
  %354 = bitcast i8* %arrayidx309 to i32*
  %355 = load i32, i32* %354, align 4
  %add310 = add i32 %xor308, %355
  %add311 = add i32 %add310, -1444681467
  %356 = load i32, i32* %a, align 4
  %add312 = add i32 %356, %add311
  store i32 %add312, i32* %a, align 4
  %357 = load i32, i32* %a, align 4
  %shl313 = shl i32 %357, 5
  %358 = load i32, i32* %a, align 4
  %shr314 = lshr i32 %358, 27
  %or315 = or i32 %shl313, %shr314
  store i32 %or315, i32* %a, align 4
  %359 = load i32, i32* %b, align 4
  %360 = load i32, i32* %a, align 4
  %add316 = add i32 %360, %359
  store i32 %add316, i32* %a, align 4
  %361 = load i32, i32* %b, align 4
  %362 = load i32, i32* %c, align 4
  %363 = load i32, i32* %a, align 4
  %364 = load i32, i32* %b, align 4
  %xor317 = xor i32 %363, %364
  %and318 = and i32 %362, %xor317
  %xor319 = xor i32 %361, %and318
  %365 = load i8*, i8** %ptr, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %365, i64 8
  %366 = bitcast i8* %arrayidx320 to i32*
  %367 = load i32, i32* %366, align 4
  %add321 = add i32 %xor319, %367
  %add322 = add i32 %add321, -51403784
  %368 = load i32, i32* %d, align 4
  %add323 = add i32 %368, %add322
  store i32 %add323, i32* %d, align 4
  %369 = load i32, i32* %d, align 4
  %shl324 = shl i32 %369, 9
  %370 = load i32, i32* %d, align 4
  %shr325 = lshr i32 %370, 23
  %or326 = or i32 %shl324, %shr325
  store i32 %or326, i32* %d, align 4
  %371 = load i32, i32* %a, align 4
  %372 = load i32, i32* %d, align 4
  %add327 = add i32 %372, %371
  store i32 %add327, i32* %d, align 4
  %373 = load i32, i32* %a, align 4
  %374 = load i32, i32* %b, align 4
  %375 = load i32, i32* %d, align 4
  %376 = load i32, i32* %a, align 4
  %xor328 = xor i32 %375, %376
  %and329 = and i32 %374, %xor328
  %xor330 = xor i32 %373, %and329
  %377 = load i8*, i8** %ptr, align 8
  %arrayidx331 = getelementptr inbounds i8, i8* %377, i64 28
  %378 = bitcast i8* %arrayidx331 to i32*
  %379 = load i32, i32* %378, align 4
  %add332 = add i32 %xor330, %379
  %add333 = add i32 %add332, 1735328473
  %380 = load i32, i32* %c, align 4
  %add334 = add i32 %380, %add333
  store i32 %add334, i32* %c, align 4
  %381 = load i32, i32* %c, align 4
  %shl335 = shl i32 %381, 14
  %382 = load i32, i32* %c, align 4
  %shr336 = lshr i32 %382, 18
  %or337 = or i32 %shl335, %shr336
  store i32 %or337, i32* %c, align 4
  %383 = load i32, i32* %d, align 4
  %384 = load i32, i32* %c, align 4
  %add338 = add i32 %384, %383
  store i32 %add338, i32* %c, align 4
  %385 = load i32, i32* %d, align 4
  %386 = load i32, i32* %a, align 4
  %387 = load i32, i32* %c, align 4
  %388 = load i32, i32* %d, align 4
  %xor339 = xor i32 %387, %388
  %and340 = and i32 %386, %xor339
  %xor341 = xor i32 %385, %and340
  %389 = load i8*, i8** %ptr, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %389, i64 48
  %390 = bitcast i8* %arrayidx342 to i32*
  %391 = load i32, i32* %390, align 4
  %add343 = add i32 %xor341, %391
  %add344 = add i32 %add343, -1926607734
  %392 = load i32, i32* %b, align 4
  %add345 = add i32 %392, %add344
  store i32 %add345, i32* %b, align 4
  %393 = load i32, i32* %b, align 4
  %shl346 = shl i32 %393, 20
  %394 = load i32, i32* %b, align 4
  %shr347 = lshr i32 %394, 12
  %or348 = or i32 %shl346, %shr347
  store i32 %or348, i32* %b, align 4
  %395 = load i32, i32* %c, align 4
  %396 = load i32, i32* %b, align 4
  %add349 = add i32 %396, %395
  store i32 %add349, i32* %b, align 4
  %397 = load i32, i32* %b, align 4
  %398 = load i32, i32* %c, align 4
  %xor350 = xor i32 %397, %398
  %399 = load i32, i32* %d, align 4
  %xor351 = xor i32 %xor350, %399
  %400 = load i8*, i8** %ptr, align 8
  %arrayidx352 = getelementptr inbounds i8, i8* %400, i64 20
  %401 = bitcast i8* %arrayidx352 to i32*
  %402 = load i32, i32* %401, align 4
  %add353 = add i32 %xor351, %402
  %add354 = add i32 %add353, -378558
  %403 = load i32, i32* %a, align 4
  %add355 = add i32 %403, %add354
  store i32 %add355, i32* %a, align 4
  %404 = load i32, i32* %a, align 4
  %shl356 = shl i32 %404, 4
  %405 = load i32, i32* %a, align 4
  %shr357 = lshr i32 %405, 28
  %or358 = or i32 %shl356, %shr357
  store i32 %or358, i32* %a, align 4
  %406 = load i32, i32* %b, align 4
  %407 = load i32, i32* %a, align 4
  %add359 = add i32 %407, %406
  store i32 %add359, i32* %a, align 4
  %408 = load i32, i32* %a, align 4
  %409 = load i32, i32* %b, align 4
  %xor360 = xor i32 %408, %409
  %410 = load i32, i32* %c, align 4
  %xor361 = xor i32 %xor360, %410
  %411 = load i8*, i8** %ptr, align 8
  %arrayidx362 = getelementptr inbounds i8, i8* %411, i64 32
  %412 = bitcast i8* %arrayidx362 to i32*
  %413 = load i32, i32* %412, align 4
  %add363 = add i32 %xor361, %413
  %add364 = add i32 %add363, -2022574463
  %414 = load i32, i32* %d, align 4
  %add365 = add i32 %414, %add364
  store i32 %add365, i32* %d, align 4
  %415 = load i32, i32* %d, align 4
  %shl366 = shl i32 %415, 11
  %416 = load i32, i32* %d, align 4
  %shr367 = lshr i32 %416, 21
  %or368 = or i32 %shl366, %shr367
  store i32 %or368, i32* %d, align 4
  %417 = load i32, i32* %a, align 4
  %418 = load i32, i32* %d, align 4
  %add369 = add i32 %418, %417
  store i32 %add369, i32* %d, align 4
  %419 = load i32, i32* %d, align 4
  %420 = load i32, i32* %a, align 4
  %xor370 = xor i32 %419, %420
  %421 = load i32, i32* %b, align 4
  %xor371 = xor i32 %xor370, %421
  %422 = load i8*, i8** %ptr, align 8
  %arrayidx372 = getelementptr inbounds i8, i8* %422, i64 44
  %423 = bitcast i8* %arrayidx372 to i32*
  %424 = load i32, i32* %423, align 4
  %add373 = add i32 %xor371, %424
  %add374 = add i32 %add373, 1839030562
  %425 = load i32, i32* %c, align 4
  %add375 = add i32 %425, %add374
  store i32 %add375, i32* %c, align 4
  %426 = load i32, i32* %c, align 4
  %shl376 = shl i32 %426, 16
  %427 = load i32, i32* %c, align 4
  %shr377 = lshr i32 %427, 16
  %or378 = or i32 %shl376, %shr377
  store i32 %or378, i32* %c, align 4
  %428 = load i32, i32* %d, align 4
  %429 = load i32, i32* %c, align 4
  %add379 = add i32 %429, %428
  store i32 %add379, i32* %c, align 4
  %430 = load i32, i32* %c, align 4
  %431 = load i32, i32* %d, align 4
  %xor380 = xor i32 %430, %431
  %432 = load i32, i32* %a, align 4
  %xor381 = xor i32 %xor380, %432
  %433 = load i8*, i8** %ptr, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %433, i64 56
  %434 = bitcast i8* %arrayidx382 to i32*
  %435 = load i32, i32* %434, align 4
  %add383 = add i32 %xor381, %435
  %add384 = add i32 %add383, -35309556
  %436 = load i32, i32* %b, align 4
  %add385 = add i32 %436, %add384
  store i32 %add385, i32* %b, align 4
  %437 = load i32, i32* %b, align 4
  %shl386 = shl i32 %437, 23
  %438 = load i32, i32* %b, align 4
  %shr387 = lshr i32 %438, 9
  %or388 = or i32 %shl386, %shr387
  store i32 %or388, i32* %b, align 4
  %439 = load i32, i32* %c, align 4
  %440 = load i32, i32* %b, align 4
  %add389 = add i32 %440, %439
  store i32 %add389, i32* %b, align 4
  %441 = load i32, i32* %b, align 4
  %442 = load i32, i32* %c, align 4
  %xor390 = xor i32 %441, %442
  %443 = load i32, i32* %d, align 4
  %xor391 = xor i32 %xor390, %443
  %444 = load i8*, i8** %ptr, align 8
  %arrayidx392 = getelementptr inbounds i8, i8* %444, i64 4
  %445 = bitcast i8* %arrayidx392 to i32*
  %446 = load i32, i32* %445, align 4
  %add393 = add i32 %xor391, %446
  %add394 = add i32 %add393, -1530992060
  %447 = load i32, i32* %a, align 4
  %add395 = add i32 %447, %add394
  store i32 %add395, i32* %a, align 4
  %448 = load i32, i32* %a, align 4
  %shl396 = shl i32 %448, 4
  %449 = load i32, i32* %a, align 4
  %shr397 = lshr i32 %449, 28
  %or398 = or i32 %shl396, %shr397
  store i32 %or398, i32* %a, align 4
  %450 = load i32, i32* %b, align 4
  %451 = load i32, i32* %a, align 4
  %add399 = add i32 %451, %450
  store i32 %add399, i32* %a, align 4
  %452 = load i32, i32* %a, align 4
  %453 = load i32, i32* %b, align 4
  %xor400 = xor i32 %452, %453
  %454 = load i32, i32* %c, align 4
  %xor401 = xor i32 %xor400, %454
  %455 = load i8*, i8** %ptr, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %455, i64 16
  %456 = bitcast i8* %arrayidx402 to i32*
  %457 = load i32, i32* %456, align 4
  %add403 = add i32 %xor401, %457
  %add404 = add i32 %add403, 1272893353
  %458 = load i32, i32* %d, align 4
  %add405 = add i32 %458, %add404
  store i32 %add405, i32* %d, align 4
  %459 = load i32, i32* %d, align 4
  %shl406 = shl i32 %459, 11
  %460 = load i32, i32* %d, align 4
  %shr407 = lshr i32 %460, 21
  %or408 = or i32 %shl406, %shr407
  store i32 %or408, i32* %d, align 4
  %461 = load i32, i32* %a, align 4
  %462 = load i32, i32* %d, align 4
  %add409 = add i32 %462, %461
  store i32 %add409, i32* %d, align 4
  %463 = load i32, i32* %d, align 4
  %464 = load i32, i32* %a, align 4
  %xor410 = xor i32 %463, %464
  %465 = load i32, i32* %b, align 4
  %xor411 = xor i32 %xor410, %465
  %466 = load i8*, i8** %ptr, align 8
  %arrayidx412 = getelementptr inbounds i8, i8* %466, i64 28
  %467 = bitcast i8* %arrayidx412 to i32*
  %468 = load i32, i32* %467, align 4
  %add413 = add i32 %xor411, %468
  %add414 = add i32 %add413, -155497632
  %469 = load i32, i32* %c, align 4
  %add415 = add i32 %469, %add414
  store i32 %add415, i32* %c, align 4
  %470 = load i32, i32* %c, align 4
  %shl416 = shl i32 %470, 16
  %471 = load i32, i32* %c, align 4
  %shr417 = lshr i32 %471, 16
  %or418 = or i32 %shl416, %shr417
  store i32 %or418, i32* %c, align 4
  %472 = load i32, i32* %d, align 4
  %473 = load i32, i32* %c, align 4
  %add419 = add i32 %473, %472
  store i32 %add419, i32* %c, align 4
  %474 = load i32, i32* %c, align 4
  %475 = load i32, i32* %d, align 4
  %xor420 = xor i32 %474, %475
  %476 = load i32, i32* %a, align 4
  %xor421 = xor i32 %xor420, %476
  %477 = load i8*, i8** %ptr, align 8
  %arrayidx422 = getelementptr inbounds i8, i8* %477, i64 40
  %478 = bitcast i8* %arrayidx422 to i32*
  %479 = load i32, i32* %478, align 4
  %add423 = add i32 %xor421, %479
  %add424 = add i32 %add423, -1094730640
  %480 = load i32, i32* %b, align 4
  %add425 = add i32 %480, %add424
  store i32 %add425, i32* %b, align 4
  %481 = load i32, i32* %b, align 4
  %shl426 = shl i32 %481, 23
  %482 = load i32, i32* %b, align 4
  %shr427 = lshr i32 %482, 9
  %or428 = or i32 %shl426, %shr427
  store i32 %or428, i32* %b, align 4
  %483 = load i32, i32* %c, align 4
  %484 = load i32, i32* %b, align 4
  %add429 = add i32 %484, %483
  store i32 %add429, i32* %b, align 4
  %485 = load i32, i32* %b, align 4
  %486 = load i32, i32* %c, align 4
  %xor430 = xor i32 %485, %486
  %487 = load i32, i32* %d, align 4
  %xor431 = xor i32 %xor430, %487
  %488 = load i8*, i8** %ptr, align 8
  %arrayidx432 = getelementptr inbounds i8, i8* %488, i64 52
  %489 = bitcast i8* %arrayidx432 to i32*
  %490 = load i32, i32* %489, align 4
  %add433 = add i32 %xor431, %490
  %add434 = add i32 %add433, 681279174
  %491 = load i32, i32* %a, align 4
  %add435 = add i32 %491, %add434
  store i32 %add435, i32* %a, align 4
  %492 = load i32, i32* %a, align 4
  %shl436 = shl i32 %492, 4
  %493 = load i32, i32* %a, align 4
  %shr437 = lshr i32 %493, 28
  %or438 = or i32 %shl436, %shr437
  store i32 %or438, i32* %a, align 4
  %494 = load i32, i32* %b, align 4
  %495 = load i32, i32* %a, align 4
  %add439 = add i32 %495, %494
  store i32 %add439, i32* %a, align 4
  %496 = load i32, i32* %a, align 4
  %497 = load i32, i32* %b, align 4
  %xor440 = xor i32 %496, %497
  %498 = load i32, i32* %c, align 4
  %xor441 = xor i32 %xor440, %498
  %499 = load i8*, i8** %ptr, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %499, i64 0
  %500 = bitcast i8* %arrayidx442 to i32*
  %501 = load i32, i32* %500, align 4
  %add443 = add i32 %xor441, %501
  %add444 = add i32 %add443, -358537222
  %502 = load i32, i32* %d, align 4
  %add445 = add i32 %502, %add444
  store i32 %add445, i32* %d, align 4
  %503 = load i32, i32* %d, align 4
  %shl446 = shl i32 %503, 11
  %504 = load i32, i32* %d, align 4
  %shr447 = lshr i32 %504, 21
  %or448 = or i32 %shl446, %shr447
  store i32 %or448, i32* %d, align 4
  %505 = load i32, i32* %a, align 4
  %506 = load i32, i32* %d, align 4
  %add449 = add i32 %506, %505
  store i32 %add449, i32* %d, align 4
  %507 = load i32, i32* %d, align 4
  %508 = load i32, i32* %a, align 4
  %xor450 = xor i32 %507, %508
  %509 = load i32, i32* %b, align 4
  %xor451 = xor i32 %xor450, %509
  %510 = load i8*, i8** %ptr, align 8
  %arrayidx452 = getelementptr inbounds i8, i8* %510, i64 12
  %511 = bitcast i8* %arrayidx452 to i32*
  %512 = load i32, i32* %511, align 4
  %add453 = add i32 %xor451, %512
  %add454 = add i32 %add453, -722521979
  %513 = load i32, i32* %c, align 4
  %add455 = add i32 %513, %add454
  store i32 %add455, i32* %c, align 4
  %514 = load i32, i32* %c, align 4
  %shl456 = shl i32 %514, 16
  %515 = load i32, i32* %c, align 4
  %shr457 = lshr i32 %515, 16
  %or458 = or i32 %shl456, %shr457
  store i32 %or458, i32* %c, align 4
  %516 = load i32, i32* %d, align 4
  %517 = load i32, i32* %c, align 4
  %add459 = add i32 %517, %516
  store i32 %add459, i32* %c, align 4
  %518 = load i32, i32* %c, align 4
  %519 = load i32, i32* %d, align 4
  %xor460 = xor i32 %518, %519
  %520 = load i32, i32* %a, align 4
  %xor461 = xor i32 %xor460, %520
  %521 = load i8*, i8** %ptr, align 8
  %arrayidx462 = getelementptr inbounds i8, i8* %521, i64 24
  %522 = bitcast i8* %arrayidx462 to i32*
  %523 = load i32, i32* %522, align 4
  %add463 = add i32 %xor461, %523
  %add464 = add i32 %add463, 76029189
  %524 = load i32, i32* %b, align 4
  %add465 = add i32 %524, %add464
  store i32 %add465, i32* %b, align 4
  %525 = load i32, i32* %b, align 4
  %shl466 = shl i32 %525, 23
  %526 = load i32, i32* %b, align 4
  %shr467 = lshr i32 %526, 9
  %or468 = or i32 %shl466, %shr467
  store i32 %or468, i32* %b, align 4
  %527 = load i32, i32* %c, align 4
  %528 = load i32, i32* %b, align 4
  %add469 = add i32 %528, %527
  store i32 %add469, i32* %b, align 4
  %529 = load i32, i32* %b, align 4
  %530 = load i32, i32* %c, align 4
  %xor470 = xor i32 %529, %530
  %531 = load i32, i32* %d, align 4
  %xor471 = xor i32 %xor470, %531
  %532 = load i8*, i8** %ptr, align 8
  %arrayidx472 = getelementptr inbounds i8, i8* %532, i64 36
  %533 = bitcast i8* %arrayidx472 to i32*
  %534 = load i32, i32* %533, align 4
  %add473 = add i32 %xor471, %534
  %add474 = add i32 %add473, -640364487
  %535 = load i32, i32* %a, align 4
  %add475 = add i32 %535, %add474
  store i32 %add475, i32* %a, align 4
  %536 = load i32, i32* %a, align 4
  %shl476 = shl i32 %536, 4
  %537 = load i32, i32* %a, align 4
  %shr477 = lshr i32 %537, 28
  %or478 = or i32 %shl476, %shr477
  store i32 %or478, i32* %a, align 4
  %538 = load i32, i32* %b, align 4
  %539 = load i32, i32* %a, align 4
  %add479 = add i32 %539, %538
  store i32 %add479, i32* %a, align 4
  %540 = load i32, i32* %a, align 4
  %541 = load i32, i32* %b, align 4
  %xor480 = xor i32 %540, %541
  %542 = load i32, i32* %c, align 4
  %xor481 = xor i32 %xor480, %542
  %543 = load i8*, i8** %ptr, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %543, i64 48
  %544 = bitcast i8* %arrayidx482 to i32*
  %545 = load i32, i32* %544, align 4
  %add483 = add i32 %xor481, %545
  %add484 = add i32 %add483, -421815835
  %546 = load i32, i32* %d, align 4
  %add485 = add i32 %546, %add484
  store i32 %add485, i32* %d, align 4
  %547 = load i32, i32* %d, align 4
  %shl486 = shl i32 %547, 11
  %548 = load i32, i32* %d, align 4
  %shr487 = lshr i32 %548, 21
  %or488 = or i32 %shl486, %shr487
  store i32 %or488, i32* %d, align 4
  %549 = load i32, i32* %a, align 4
  %550 = load i32, i32* %d, align 4
  %add489 = add i32 %550, %549
  store i32 %add489, i32* %d, align 4
  %551 = load i32, i32* %d, align 4
  %552 = load i32, i32* %a, align 4
  %xor490 = xor i32 %551, %552
  %553 = load i32, i32* %b, align 4
  %xor491 = xor i32 %xor490, %553
  %554 = load i8*, i8** %ptr, align 8
  %arrayidx492 = getelementptr inbounds i8, i8* %554, i64 60
  %555 = bitcast i8* %arrayidx492 to i32*
  %556 = load i32, i32* %555, align 4
  %add493 = add i32 %xor491, %556
  %add494 = add i32 %add493, 530742520
  %557 = load i32, i32* %c, align 4
  %add495 = add i32 %557, %add494
  store i32 %add495, i32* %c, align 4
  %558 = load i32, i32* %c, align 4
  %shl496 = shl i32 %558, 16
  %559 = load i32, i32* %c, align 4
  %shr497 = lshr i32 %559, 16
  %or498 = or i32 %shl496, %shr497
  store i32 %or498, i32* %c, align 4
  %560 = load i32, i32* %d, align 4
  %561 = load i32, i32* %c, align 4
  %add499 = add i32 %561, %560
  store i32 %add499, i32* %c, align 4
  %562 = load i32, i32* %c, align 4
  %563 = load i32, i32* %d, align 4
  %xor500 = xor i32 %562, %563
  %564 = load i32, i32* %a, align 4
  %xor501 = xor i32 %xor500, %564
  %565 = load i8*, i8** %ptr, align 8
  %arrayidx502 = getelementptr inbounds i8, i8* %565, i64 8
  %566 = bitcast i8* %arrayidx502 to i32*
  %567 = load i32, i32* %566, align 4
  %add503 = add i32 %xor501, %567
  %add504 = add i32 %add503, -995338651
  %568 = load i32, i32* %b, align 4
  %add505 = add i32 %568, %add504
  store i32 %add505, i32* %b, align 4
  %569 = load i32, i32* %b, align 4
  %shl506 = shl i32 %569, 23
  %570 = load i32, i32* %b, align 4
  %shr507 = lshr i32 %570, 9
  %or508 = or i32 %shl506, %shr507
  store i32 %or508, i32* %b, align 4
  %571 = load i32, i32* %c, align 4
  %572 = load i32, i32* %b, align 4
  %add509 = add i32 %572, %571
  store i32 %add509, i32* %b, align 4
  %573 = load i32, i32* %c, align 4
  %574 = load i32, i32* %b, align 4
  %575 = load i32, i32* %d, align 4
  %neg = xor i32 %575, -1
  %or510 = or i32 %574, %neg
  %xor511 = xor i32 %573, %or510
  %576 = load i8*, i8** %ptr, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %576, i64 0
  %577 = bitcast i8* %arrayidx512 to i32*
  %578 = load i32, i32* %577, align 4
  %add513 = add i32 %xor511, %578
  %add514 = add i32 %add513, -198630844
  %579 = load i32, i32* %a, align 4
  %add515 = add i32 %579, %add514
  store i32 %add515, i32* %a, align 4
  %580 = load i32, i32* %a, align 4
  %shl516 = shl i32 %580, 6
  %581 = load i32, i32* %a, align 4
  %shr517 = lshr i32 %581, 26
  %or518 = or i32 %shl516, %shr517
  store i32 %or518, i32* %a, align 4
  %582 = load i32, i32* %b, align 4
  %583 = load i32, i32* %a, align 4
  %add519 = add i32 %583, %582
  store i32 %add519, i32* %a, align 4
  %584 = load i32, i32* %b, align 4
  %585 = load i32, i32* %a, align 4
  %586 = load i32, i32* %c, align 4
  %neg520 = xor i32 %586, -1
  %or521 = or i32 %585, %neg520
  %xor522 = xor i32 %584, %or521
  %587 = load i8*, i8** %ptr, align 8
  %arrayidx523 = getelementptr inbounds i8, i8* %587, i64 28
  %588 = bitcast i8* %arrayidx523 to i32*
  %589 = load i32, i32* %588, align 4
  %add524 = add i32 %xor522, %589
  %add525 = add i32 %add524, 1126891415
  %590 = load i32, i32* %d, align 4
  %add526 = add i32 %590, %add525
  store i32 %add526, i32* %d, align 4
  %591 = load i32, i32* %d, align 4
  %shl527 = shl i32 %591, 10
  %592 = load i32, i32* %d, align 4
  %shr528 = lshr i32 %592, 22
  %or529 = or i32 %shl527, %shr528
  store i32 %or529, i32* %d, align 4
  %593 = load i32, i32* %a, align 4
  %594 = load i32, i32* %d, align 4
  %add530 = add i32 %594, %593
  store i32 %add530, i32* %d, align 4
  %595 = load i32, i32* %a, align 4
  %596 = load i32, i32* %d, align 4
  %597 = load i32, i32* %b, align 4
  %neg531 = xor i32 %597, -1
  %or532 = or i32 %596, %neg531
  %xor533 = xor i32 %595, %or532
  %598 = load i8*, i8** %ptr, align 8
  %arrayidx534 = getelementptr inbounds i8, i8* %598, i64 56
  %599 = bitcast i8* %arrayidx534 to i32*
  %600 = load i32, i32* %599, align 4
  %add535 = add i32 %xor533, %600
  %add536 = add i32 %add535, -1416354905
  %601 = load i32, i32* %c, align 4
  %add537 = add i32 %601, %add536
  store i32 %add537, i32* %c, align 4
  %602 = load i32, i32* %c, align 4
  %shl538 = shl i32 %602, 15
  %603 = load i32, i32* %c, align 4
  %shr539 = lshr i32 %603, 17
  %or540 = or i32 %shl538, %shr539
  store i32 %or540, i32* %c, align 4
  %604 = load i32, i32* %d, align 4
  %605 = load i32, i32* %c, align 4
  %add541 = add i32 %605, %604
  store i32 %add541, i32* %c, align 4
  %606 = load i32, i32* %d, align 4
  %607 = load i32, i32* %c, align 4
  %608 = load i32, i32* %a, align 4
  %neg542 = xor i32 %608, -1
  %or543 = or i32 %607, %neg542
  %xor544 = xor i32 %606, %or543
  %609 = load i8*, i8** %ptr, align 8
  %arrayidx545 = getelementptr inbounds i8, i8* %609, i64 20
  %610 = bitcast i8* %arrayidx545 to i32*
  %611 = load i32, i32* %610, align 4
  %add546 = add i32 %xor544, %611
  %add547 = add i32 %add546, -57434055
  %612 = load i32, i32* %b, align 4
  %add548 = add i32 %612, %add547
  store i32 %add548, i32* %b, align 4
  %613 = load i32, i32* %b, align 4
  %shl549 = shl i32 %613, 21
  %614 = load i32, i32* %b, align 4
  %shr550 = lshr i32 %614, 11
  %or551 = or i32 %shl549, %shr550
  store i32 %or551, i32* %b, align 4
  %615 = load i32, i32* %c, align 4
  %616 = load i32, i32* %b, align 4
  %add552 = add i32 %616, %615
  store i32 %add552, i32* %b, align 4
  %617 = load i32, i32* %c, align 4
  %618 = load i32, i32* %b, align 4
  %619 = load i32, i32* %d, align 4
  %neg553 = xor i32 %619, -1
  %or554 = or i32 %618, %neg553
  %xor555 = xor i32 %617, %or554
  %620 = load i8*, i8** %ptr, align 8
  %arrayidx556 = getelementptr inbounds i8, i8* %620, i64 48
  %621 = bitcast i8* %arrayidx556 to i32*
  %622 = load i32, i32* %621, align 4
  %add557 = add i32 %xor555, %622
  %add558 = add i32 %add557, 1700485571
  %623 = load i32, i32* %a, align 4
  %add559 = add i32 %623, %add558
  store i32 %add559, i32* %a, align 4
  %624 = load i32, i32* %a, align 4
  %shl560 = shl i32 %624, 6
  %625 = load i32, i32* %a, align 4
  %shr561 = lshr i32 %625, 26
  %or562 = or i32 %shl560, %shr561
  store i32 %or562, i32* %a, align 4
  %626 = load i32, i32* %b, align 4
  %627 = load i32, i32* %a, align 4
  %add563 = add i32 %627, %626
  store i32 %add563, i32* %a, align 4
  %628 = load i32, i32* %b, align 4
  %629 = load i32, i32* %a, align 4
  %630 = load i32, i32* %c, align 4
  %neg564 = xor i32 %630, -1
  %or565 = or i32 %629, %neg564
  %xor566 = xor i32 %628, %or565
  %631 = load i8*, i8** %ptr, align 8
  %arrayidx567 = getelementptr inbounds i8, i8* %631, i64 12
  %632 = bitcast i8* %arrayidx567 to i32*
  %633 = load i32, i32* %632, align 4
  %add568 = add i32 %xor566, %633
  %add569 = add i32 %add568, -1894986606
  %634 = load i32, i32* %d, align 4
  %add570 = add i32 %634, %add569
  store i32 %add570, i32* %d, align 4
  %635 = load i32, i32* %d, align 4
  %shl571 = shl i32 %635, 10
  %636 = load i32, i32* %d, align 4
  %shr572 = lshr i32 %636, 22
  %or573 = or i32 %shl571, %shr572
  store i32 %or573, i32* %d, align 4
  %637 = load i32, i32* %a, align 4
  %638 = load i32, i32* %d, align 4
  %add574 = add i32 %638, %637
  store i32 %add574, i32* %d, align 4
  %639 = load i32, i32* %a, align 4
  %640 = load i32, i32* %d, align 4
  %641 = load i32, i32* %b, align 4
  %neg575 = xor i32 %641, -1
  %or576 = or i32 %640, %neg575
  %xor577 = xor i32 %639, %or576
  %642 = load i8*, i8** %ptr, align 8
  %arrayidx578 = getelementptr inbounds i8, i8* %642, i64 40
  %643 = bitcast i8* %arrayidx578 to i32*
  %644 = load i32, i32* %643, align 4
  %add579 = add i32 %xor577, %644
  %add580 = add i32 %add579, -1051523
  %645 = load i32, i32* %c, align 4
  %add581 = add i32 %645, %add580
  store i32 %add581, i32* %c, align 4
  %646 = load i32, i32* %c, align 4
  %shl582 = shl i32 %646, 15
  %647 = load i32, i32* %c, align 4
  %shr583 = lshr i32 %647, 17
  %or584 = or i32 %shl582, %shr583
  store i32 %or584, i32* %c, align 4
  %648 = load i32, i32* %d, align 4
  %649 = load i32, i32* %c, align 4
  %add585 = add i32 %649, %648
  store i32 %add585, i32* %c, align 4
  %650 = load i32, i32* %d, align 4
  %651 = load i32, i32* %c, align 4
  %652 = load i32, i32* %a, align 4
  %neg586 = xor i32 %652, -1
  %or587 = or i32 %651, %neg586
  %xor588 = xor i32 %650, %or587
  %653 = load i8*, i8** %ptr, align 8
  %arrayidx589 = getelementptr inbounds i8, i8* %653, i64 4
  %654 = bitcast i8* %arrayidx589 to i32*
  %655 = load i32, i32* %654, align 4
  %add590 = add i32 %xor588, %655
  %add591 = add i32 %add590, -2054922799
  %656 = load i32, i32* %b, align 4
  %add592 = add i32 %656, %add591
  store i32 %add592, i32* %b, align 4
  %657 = load i32, i32* %b, align 4
  %shl593 = shl i32 %657, 21
  %658 = load i32, i32* %b, align 4
  %shr594 = lshr i32 %658, 11
  %or595 = or i32 %shl593, %shr594
  store i32 %or595, i32* %b, align 4
  %659 = load i32, i32* %c, align 4
  %660 = load i32, i32* %b, align 4
  %add596 = add i32 %660, %659
  store i32 %add596, i32* %b, align 4
  %661 = load i32, i32* %c, align 4
  %662 = load i32, i32* %b, align 4
  %663 = load i32, i32* %d, align 4
  %neg597 = xor i32 %663, -1
  %or598 = or i32 %662, %neg597
  %xor599 = xor i32 %661, %or598
  %664 = load i8*, i8** %ptr, align 8
  %arrayidx600 = getelementptr inbounds i8, i8* %664, i64 32
  %665 = bitcast i8* %arrayidx600 to i32*
  %666 = load i32, i32* %665, align 4
  %add601 = add i32 %xor599, %666
  %add602 = add i32 %add601, 1873313359
  %667 = load i32, i32* %a, align 4
  %add603 = add i32 %667, %add602
  store i32 %add603, i32* %a, align 4
  %668 = load i32, i32* %a, align 4
  %shl604 = shl i32 %668, 6
  %669 = load i32, i32* %a, align 4
  %shr605 = lshr i32 %669, 26
  %or606 = or i32 %shl604, %shr605
  store i32 %or606, i32* %a, align 4
  %670 = load i32, i32* %b, align 4
  %671 = load i32, i32* %a, align 4
  %add607 = add i32 %671, %670
  store i32 %add607, i32* %a, align 4
  %672 = load i32, i32* %b, align 4
  %673 = load i32, i32* %a, align 4
  %674 = load i32, i32* %c, align 4
  %neg608 = xor i32 %674, -1
  %or609 = or i32 %673, %neg608
  %xor610 = xor i32 %672, %or609
  %675 = load i8*, i8** %ptr, align 8
  %arrayidx611 = getelementptr inbounds i8, i8* %675, i64 60
  %676 = bitcast i8* %arrayidx611 to i32*
  %677 = load i32, i32* %676, align 4
  %add612 = add i32 %xor610, %677
  %add613 = add i32 %add612, -30611744
  %678 = load i32, i32* %d, align 4
  %add614 = add i32 %678, %add613
  store i32 %add614, i32* %d, align 4
  %679 = load i32, i32* %d, align 4
  %shl615 = shl i32 %679, 10
  %680 = load i32, i32* %d, align 4
  %shr616 = lshr i32 %680, 22
  %or617 = or i32 %shl615, %shr616
  store i32 %or617, i32* %d, align 4
  %681 = load i32, i32* %a, align 4
  %682 = load i32, i32* %d, align 4
  %add618 = add i32 %682, %681
  store i32 %add618, i32* %d, align 4
  %683 = load i32, i32* %a, align 4
  %684 = load i32, i32* %d, align 4
  %685 = load i32, i32* %b, align 4
  %neg619 = xor i32 %685, -1
  %or620 = or i32 %684, %neg619
  %xor621 = xor i32 %683, %or620
  %686 = load i8*, i8** %ptr, align 8
  %arrayidx622 = getelementptr inbounds i8, i8* %686, i64 24
  %687 = bitcast i8* %arrayidx622 to i32*
  %688 = load i32, i32* %687, align 4
  %add623 = add i32 %xor621, %688
  %add624 = add i32 %add623, -1560198380
  %689 = load i32, i32* %c, align 4
  %add625 = add i32 %689, %add624
  store i32 %add625, i32* %c, align 4
  %690 = load i32, i32* %c, align 4
  %shl626 = shl i32 %690, 15
  %691 = load i32, i32* %c, align 4
  %shr627 = lshr i32 %691, 17
  %or628 = or i32 %shl626, %shr627
  store i32 %or628, i32* %c, align 4
  %692 = load i32, i32* %d, align 4
  %693 = load i32, i32* %c, align 4
  %add629 = add i32 %693, %692
  store i32 %add629, i32* %c, align 4
  %694 = load i32, i32* %d, align 4
  %695 = load i32, i32* %c, align 4
  %696 = load i32, i32* %a, align 4
  %neg630 = xor i32 %696, -1
  %or631 = or i32 %695, %neg630
  %xor632 = xor i32 %694, %or631
  %697 = load i8*, i8** %ptr, align 8
  %arrayidx633 = getelementptr inbounds i8, i8* %697, i64 52
  %698 = bitcast i8* %arrayidx633 to i32*
  %699 = load i32, i32* %698, align 4
  %add634 = add i32 %xor632, %699
  %add635 = add i32 %add634, 1309151649
  %700 = load i32, i32* %b, align 4
  %add636 = add i32 %700, %add635
  store i32 %add636, i32* %b, align 4
  %701 = load i32, i32* %b, align 4
  %shl637 = shl i32 %701, 21
  %702 = load i32, i32* %b, align 4
  %shr638 = lshr i32 %702, 11
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %b, align 4
  %703 = load i32, i32* %c, align 4
  %704 = load i32, i32* %b, align 4
  %add640 = add i32 %704, %703
  store i32 %add640, i32* %b, align 4
  %705 = load i32, i32* %c, align 4
  %706 = load i32, i32* %b, align 4
  %707 = load i32, i32* %d, align 4
  %neg641 = xor i32 %707, -1
  %or642 = or i32 %706, %neg641
  %xor643 = xor i32 %705, %or642
  %708 = load i8*, i8** %ptr, align 8
  %arrayidx644 = getelementptr inbounds i8, i8* %708, i64 16
  %709 = bitcast i8* %arrayidx644 to i32*
  %710 = load i32, i32* %709, align 4
  %add645 = add i32 %xor643, %710
  %add646 = add i32 %add645, -145523070
  %711 = load i32, i32* %a, align 4
  %add647 = add i32 %711, %add646
  store i32 %add647, i32* %a, align 4
  %712 = load i32, i32* %a, align 4
  %shl648 = shl i32 %712, 6
  %713 = load i32, i32* %a, align 4
  %shr649 = lshr i32 %713, 26
  %or650 = or i32 %shl648, %shr649
  store i32 %or650, i32* %a, align 4
  %714 = load i32, i32* %b, align 4
  %715 = load i32, i32* %a, align 4
  %add651 = add i32 %715, %714
  store i32 %add651, i32* %a, align 4
  %716 = load i32, i32* %b, align 4
  %717 = load i32, i32* %a, align 4
  %718 = load i32, i32* %c, align 4
  %neg652 = xor i32 %718, -1
  %or653 = or i32 %717, %neg652
  %xor654 = xor i32 %716, %or653
  %719 = load i8*, i8** %ptr, align 8
  %arrayidx655 = getelementptr inbounds i8, i8* %719, i64 44
  %720 = bitcast i8* %arrayidx655 to i32*
  %721 = load i32, i32* %720, align 4
  %add656 = add i32 %xor654, %721
  %add657 = add i32 %add656, -1120210379
  %722 = load i32, i32* %d, align 4
  %add658 = add i32 %722, %add657
  store i32 %add658, i32* %d, align 4
  %723 = load i32, i32* %d, align 4
  %shl659 = shl i32 %723, 10
  %724 = load i32, i32* %d, align 4
  %shr660 = lshr i32 %724, 22
  %or661 = or i32 %shl659, %shr660
  store i32 %or661, i32* %d, align 4
  %725 = load i32, i32* %a, align 4
  %726 = load i32, i32* %d, align 4
  %add662 = add i32 %726, %725
  store i32 %add662, i32* %d, align 4
  %727 = load i32, i32* %a, align 4
  %728 = load i32, i32* %d, align 4
  %729 = load i32, i32* %b, align 4
  %neg663 = xor i32 %729, -1
  %or664 = or i32 %728, %neg663
  %xor665 = xor i32 %727, %or664
  %730 = load i8*, i8** %ptr, align 8
  %arrayidx666 = getelementptr inbounds i8, i8* %730, i64 8
  %731 = bitcast i8* %arrayidx666 to i32*
  %732 = load i32, i32* %731, align 4
  %add667 = add i32 %xor665, %732
  %add668 = add i32 %add667, 718787259
  %733 = load i32, i32* %c, align 4
  %add669 = add i32 %733, %add668
  store i32 %add669, i32* %c, align 4
  %734 = load i32, i32* %c, align 4
  %shl670 = shl i32 %734, 15
  %735 = load i32, i32* %c, align 4
  %shr671 = lshr i32 %735, 17
  %or672 = or i32 %shl670, %shr671
  store i32 %or672, i32* %c, align 4
  %736 = load i32, i32* %d, align 4
  %737 = load i32, i32* %c, align 4
  %add673 = add i32 %737, %736
  store i32 %add673, i32* %c, align 4
  %738 = load i32, i32* %d, align 4
  %739 = load i32, i32* %c, align 4
  %740 = load i32, i32* %a, align 4
  %neg674 = xor i32 %740, -1
  %or675 = or i32 %739, %neg674
  %xor676 = xor i32 %738, %or675
  %741 = load i8*, i8** %ptr, align 8
  %arrayidx677 = getelementptr inbounds i8, i8* %741, i64 36
  %742 = bitcast i8* %arrayidx677 to i32*
  %743 = load i32, i32* %742, align 4
  %add678 = add i32 %xor676, %743
  %add679 = add i32 %add678, -343485551
  %744 = load i32, i32* %b, align 4
  %add680 = add i32 %744, %add679
  store i32 %add680, i32* %b, align 4
  %745 = load i32, i32* %b, align 4
  %shl681 = shl i32 %745, 21
  %746 = load i32, i32* %b, align 4
  %shr682 = lshr i32 %746, 11
  %or683 = or i32 %shl681, %shr682
  store i32 %or683, i32* %b, align 4
  %747 = load i32, i32* %c, align 4
  %748 = load i32, i32* %b, align 4
  %add684 = add i32 %748, %747
  store i32 %add684, i32* %b, align 4
  %749 = load i32, i32* %saved_a, align 4
  %750 = load i32, i32* %a, align 4
  %add685 = add i32 %750, %749
  store i32 %add685, i32* %a, align 4
  %751 = load i32, i32* %saved_b, align 4
  %752 = load i32, i32* %b, align 4
  %add686 = add i32 %752, %751
  store i32 %add686, i32* %b, align 4
  %753 = load i32, i32* %saved_c, align 4
  %754 = load i32, i32* %c, align 4
  %add687 = add i32 %754, %753
  store i32 %add687, i32* %c, align 4
  %755 = load i32, i32* %saved_d, align 4
  %756 = load i32, i32* %d, align 4
  %add688 = add i32 %756, %755
  store i32 %add688, i32* %d, align 4
  %757 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %757, i64 64
  store i8* %add.ptr, i8** %ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %758 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %758, 64
  store i64 %sub, i64* %size.addr, align 8
  %tobool = icmp ne i64 %sub, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %759 = load i32, i32* %a, align 4
  %760 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a689 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %760, i32 0, i32 2
  store i32 %759, i32* %a689, align 4
  %761 = load i32, i32* %b, align 4
  %762 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b690 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %762, i32 0, i32 3
  store i32 %761, i32* %b690, align 4
  %763 = load i32, i32* %c, align 4
  %764 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c691 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %764, i32 0, i32 4
  store i32 %763, i32* %c691, align 4
  %765 = load i32, i32* %d, align 4
  %766 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d692 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %766, i32 0, i32 5
  store i32 %765, i32* %d692, align 4
  %767 = load i8*, i8** %ptr, align 8
  ret i8* %767
}

; Function Attrs: nounwind uwtable
define void @cli_md5_final(i8* %result, %struct.cli_md5_ctx* %ctx) #0 {
entry:
  %result.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_md5_ctx*, align 8
  %used = alloca i64, align 8
  %free = alloca i64, align 8
  store i8* %result, i8** %result.addr, align 8
  store %struct.cli_md5_ctx* %ctx, %struct.cli_md5_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %0, i32 0, i32 0
  %1 = load i32, i32* %lo, align 4
  %and = and i32 %1, 63
  %conv = zext i32 %and to i64
  store i64 %conv, i64* %used, align 8
  %2 = load i64, i64* %used, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %used, align 8
  %3 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %3, i32 0, i32 6
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i64 %2
  store i8 -128, i8* %arrayidx, align 1
  %4 = load i64, i64* %used, align 8
  %sub = sub i64 64, %4
  store i64 %sub, i64* %free, align 8
  %5 = load i64, i64* %free, align 8
  %cmp = icmp ult i64 %5, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %used, align 8
  %7 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer2 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %7, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer2, i32 0, i64 %6
  %8 = load i64, i64* %free, align 8
  call void @llvm.memset.p0i8.i64(i8* %arrayidx3, i8 0, i64 %8, i32 1, i1 false)
  %9 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %10 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer4 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %10, i32 0, i32 6
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer4, i32 0, i32 0
  %call = call i8* @body(%struct.cli_md5_ctx* %9, i8* %arraydecay, i64 64)
  store i64 0, i64* %used, align 8
  store i64 64, i64* %free, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %used, align 8
  %12 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %12, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer5, i32 0, i64 %11
  %13 = load i64, i64* %free, align 8
  %sub7 = sub i64 %13, 8
  call void @llvm.memset.p0i8.i64(i8* %arrayidx6, i8 0, i64 %sub7, i32 1, i1 false)
  %14 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo8 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %14, i32 0, i32 0
  %15 = load i32, i32* %lo8, align 4
  %shl = shl i32 %15, 3
  store i32 %shl, i32* %lo8, align 4
  %16 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo9 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %16, i32 0, i32 0
  %17 = load i32, i32* %lo9, align 4
  %conv10 = trunc i32 %17 to i8
  %18 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer11 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %18, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer11, i32 0, i64 56
  store i8 %conv10, i8* %arrayidx12, align 1
  %19 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo13 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %19, i32 0, i32 0
  %20 = load i32, i32* %lo13, align 4
  %shr = lshr i32 %20, 8
  %conv14 = trunc i32 %shr to i8
  %21 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer15 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %21, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer15, i32 0, i64 57
  store i8 %conv14, i8* %arrayidx16, align 1
  %22 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo17 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %22, i32 0, i32 0
  %23 = load i32, i32* %lo17, align 4
  %shr18 = lshr i32 %23, 16
  %conv19 = trunc i32 %shr18 to i8
  %24 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer20 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %24, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer20, i32 0, i64 58
  store i8 %conv19, i8* %arrayidx21, align 1
  %25 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %lo22 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %25, i32 0, i32 0
  %26 = load i32, i32* %lo22, align 4
  %shr23 = lshr i32 %26, 24
  %conv24 = trunc i32 %shr23 to i8
  %27 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer25 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %27, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer25, i32 0, i64 59
  store i8 %conv24, i8* %arrayidx26, align 1
  %28 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %28, i32 0, i32 1
  %29 = load i32, i32* %hi, align 4
  %conv27 = trunc i32 %29 to i8
  %30 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer28 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %30, i32 0, i32 6
  %arrayidx29 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer28, i32 0, i64 60
  store i8 %conv27, i8* %arrayidx29, align 1
  %31 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi30 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %31, i32 0, i32 1
  %32 = load i32, i32* %hi30, align 4
  %shr31 = lshr i32 %32, 8
  %conv32 = trunc i32 %shr31 to i8
  %33 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer33 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %33, i32 0, i32 6
  %arrayidx34 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer33, i32 0, i64 61
  store i8 %conv32, i8* %arrayidx34, align 1
  %34 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi35 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %34, i32 0, i32 1
  %35 = load i32, i32* %hi35, align 4
  %shr36 = lshr i32 %35, 16
  %conv37 = trunc i32 %shr36 to i8
  %36 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer38 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %36, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer38, i32 0, i64 62
  store i8 %conv37, i8* %arrayidx39, align 1
  %37 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %hi40 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %37, i32 0, i32 1
  %38 = load i32, i32* %hi40, align 4
  %shr41 = lshr i32 %38, 24
  %conv42 = trunc i32 %shr41 to i8
  %39 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer43 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %39, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer43, i32 0, i64 63
  store i8 %conv42, i8* %arrayidx44, align 1
  %40 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %41 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %buffer45 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %41, i32 0, i32 6
  %arraydecay46 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer45, i32 0, i32 0
  %call47 = call i8* @body(%struct.cli_md5_ctx* %40, i8* %arraydecay46, i64 64)
  %42 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %42, i32 0, i32 2
  %43 = load i32, i32* %a, align 4
  %conv48 = trunc i32 %43 to i8
  %44 = load i8*, i8** %result.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %conv48, i8* %arrayidx49, align 1
  %45 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a50 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %45, i32 0, i32 2
  %46 = load i32, i32* %a50, align 4
  %shr51 = lshr i32 %46, 8
  %conv52 = trunc i32 %shr51 to i8
  %47 = load i8*, i8** %result.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %conv52, i8* %arrayidx53, align 1
  %48 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a54 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %48, i32 0, i32 2
  %49 = load i32, i32* %a54, align 4
  %shr55 = lshr i32 %49, 16
  %conv56 = trunc i32 %shr55 to i8
  %50 = load i8*, i8** %result.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %conv56, i8* %arrayidx57, align 1
  %51 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %a58 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %51, i32 0, i32 2
  %52 = load i32, i32* %a58, align 4
  %shr59 = lshr i32 %52, 24
  %conv60 = trunc i32 %shr59 to i8
  %53 = load i8*, i8** %result.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 3
  store i8 %conv60, i8* %arrayidx61, align 1
  %54 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %54, i32 0, i32 3
  %55 = load i32, i32* %b, align 4
  %conv62 = trunc i32 %55 to i8
  %56 = load i8*, i8** %result.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %56, i64 4
  store i8 %conv62, i8* %arrayidx63, align 1
  %57 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b64 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %57, i32 0, i32 3
  %58 = load i32, i32* %b64, align 4
  %shr65 = lshr i32 %58, 8
  %conv66 = trunc i32 %shr65 to i8
  %59 = load i8*, i8** %result.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %59, i64 5
  store i8 %conv66, i8* %arrayidx67, align 1
  %60 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b68 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %60, i32 0, i32 3
  %61 = load i32, i32* %b68, align 4
  %shr69 = lshr i32 %61, 16
  %conv70 = trunc i32 %shr69 to i8
  %62 = load i8*, i8** %result.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %62, i64 6
  store i8 %conv70, i8* %arrayidx71, align 1
  %63 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %b72 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %63, i32 0, i32 3
  %64 = load i32, i32* %b72, align 4
  %shr73 = lshr i32 %64, 24
  %conv74 = trunc i32 %shr73 to i8
  %65 = load i8*, i8** %result.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 7
  store i8 %conv74, i8* %arrayidx75, align 1
  %66 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %66, i32 0, i32 4
  %67 = load i32, i32* %c, align 4
  %conv76 = trunc i32 %67 to i8
  %68 = load i8*, i8** %result.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %68, i64 8
  store i8 %conv76, i8* %arrayidx77, align 1
  %69 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c78 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %69, i32 0, i32 4
  %70 = load i32, i32* %c78, align 4
  %shr79 = lshr i32 %70, 8
  %conv80 = trunc i32 %shr79 to i8
  %71 = load i8*, i8** %result.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %71, i64 9
  store i8 %conv80, i8* %arrayidx81, align 1
  %72 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c82 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %72, i32 0, i32 4
  %73 = load i32, i32* %c82, align 4
  %shr83 = lshr i32 %73, 16
  %conv84 = trunc i32 %shr83 to i8
  %74 = load i8*, i8** %result.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %74, i64 10
  store i8 %conv84, i8* %arrayidx85, align 1
  %75 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %c86 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %75, i32 0, i32 4
  %76 = load i32, i32* %c86, align 4
  %shr87 = lshr i32 %76, 24
  %conv88 = trunc i32 %shr87 to i8
  %77 = load i8*, i8** %result.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %77, i64 11
  store i8 %conv88, i8* %arrayidx89, align 1
  %78 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %78, i32 0, i32 5
  %79 = load i32, i32* %d, align 4
  %conv90 = trunc i32 %79 to i8
  %80 = load i8*, i8** %result.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %80, i64 12
  store i8 %conv90, i8* %arrayidx91, align 1
  %81 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d92 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %81, i32 0, i32 5
  %82 = load i32, i32* %d92, align 4
  %shr93 = lshr i32 %82, 8
  %conv94 = trunc i32 %shr93 to i8
  %83 = load i8*, i8** %result.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %83, i64 13
  store i8 %conv94, i8* %arrayidx95, align 1
  %84 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d96 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %84, i32 0, i32 5
  %85 = load i32, i32* %d96, align 4
  %shr97 = lshr i32 %85, 16
  %conv98 = trunc i32 %shr97 to i8
  %86 = load i8*, i8** %result.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %86, i64 14
  store i8 %conv98, i8* %arrayidx99, align 1
  %87 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %d100 = getelementptr inbounds %struct.cli_md5_ctx, %struct.cli_md5_ctx* %87, i32 0, i32 5
  %88 = load i32, i32* %d100, align 4
  %shr101 = lshr i32 %88, 24
  %conv102 = trunc i32 %shr101 to i8
  %89 = load i8*, i8** %result.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %89, i64 15
  store i8 %conv102, i8* %arrayidx103, align 1
  %90 = load %struct.cli_md5_ctx*, %struct.cli_md5_ctx** %ctx.addr, align 8
  %91 = bitcast %struct.cli_md5_ctx* %90 to i8*
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 152, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
