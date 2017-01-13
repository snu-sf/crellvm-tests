; ModuleID = './SingleSource.Regression.C/25.uint64_to_float.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.float_bits = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error detected @ 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09Expected result: %a (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09Observed result: %a (0x%08x)\0A\00", align 1
@main.roundingModes = internal constant [4 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"to nearest\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"towards zero\00", align 1
@main.modeNames = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [55 x i8] c"Testing uint64_t --> float conversions in round %s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Finished Testing.\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @floatundisf(i64 %a) #0 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca i64, align 8
  %N = alloca i32, align 4
  %sd = alloca i32, align 4
  %e = alloca i32, align 4
  %fb = alloca %union.float_bits, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 64, i32* %N, align 4
  %1 = load i64, i64* %a.addr, align 8
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %sub = sub i32 64, %cast
  store i32 %sub, i32* %sd, align 4
  %3 = load i32, i32* %sd, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %e, align 4
  %4 = load i32, i32* %sd, align 4
  %cmp2 = icmp sgt i32 %4, 24
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %sd, align 4
  switch i32 %5, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then.3
  %6 = load i64, i64* %a.addr, align 8
  %shl = shl i64 %6, 1
  store i64 %shl, i64* %a.addr, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then.3
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.3
  %7 = load i64, i64* %a.addr, align 8
  %8 = load i32, i32* %sd, align 4
  %sub5 = sub nsw i32 %8, 26
  %sh_prom = zext i32 %sub5 to i64
  %shr = lshr i64 %7, %sh_prom
  %9 = load i64, i64* %a.addr, align 8
  %10 = load i32, i32* %sd, align 4
  %sub6 = sub i32 90, %10
  %sh_prom7 = zext i32 %sub6 to i64
  %shr8 = lshr i64 -1, %sh_prom7
  %and = and i64 %9, %shr8
  %cmp9 = icmp ne i64 %and, 0
  %conv = zext i1 %cmp9 to i32
  %conv10 = sext i32 %conv to i64
  %or = or i64 %shr, %conv10
  store i64 %or, i64* %a.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  %11 = load i64, i64* %a.addr, align 8
  %and11 = and i64 %11, 4
  %cmp12 = icmp ne i64 %and11, 0
  %conv13 = zext i1 %cmp12 to i32
  %conv14 = sext i32 %conv13 to i64
  %12 = load i64, i64* %a.addr, align 8
  %or15 = or i64 %12, %conv14
  store i64 %or15, i64* %a.addr, align 8
  %13 = load i64, i64* %a.addr, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %a.addr, align 8
  %14 = load i64, i64* %a.addr, align 8
  %shr16 = lshr i64 %14, 2
  store i64 %shr16, i64* %a.addr, align 8
  %15 = load i64, i64* %a.addr, align 8
  %and17 = and i64 %15, 16777216
  %tobool = icmp ne i64 %and17, 0
  br i1 %tobool, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %sw.epilog
  %16 = load i64, i64* %a.addr, align 8
  %shr19 = lshr i64 %16, 1
  store i64 %shr19, i64* %a.addr, align 8
  %17 = load i32, i32* %e, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %e, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %sw.epilog
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %sd, align 4
  %sub22 = sub nsw i32 24, %18
  %19 = load i64, i64* %a.addr, align 8
  %sh_prom23 = zext i32 %sub22 to i64
  %shl24 = shl i64 %19, %sh_prom23
  store i64 %shl24, i64* %a.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.21
  %20 = load i32, i32* %e, align 4
  %add = add nsw i32 %20, 127
  %shl26 = shl i32 %add, 23
  %21 = load i64, i64* %a.addr, align 8
  %conv27 = trunc i64 %21 to i32
  %and28 = and i32 %conv27, 8388607
  %or29 = or i32 %shl26, %and28
  %u = bitcast %union.float_bits* %fb to i32*
  store i32 %or29, i32* %u, align 4
  %f = bitcast %union.float_bits* %fb to float*
  %22 = load float, float* %f, align 4
  store float %22, float* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %23 = load float, float* %retval
  ret float %23
}

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: nounwind uwtable
define void @test(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %expected = alloca %union.float_bits, align 4
  %observed = alloca %union.float_bits, align 4
  store i64 %x, i64* %x.addr, align 8
  %f = bitcast %union.float_bits* %expected to float*
  %0 = load i64, i64* %x.addr, align 8
  %call = call float @floatundisf(i64 %0)
  store float %call, float* %f, align 4
  %f1 = bitcast %union.float_bits* %observed to float*
  %1 = load i64, i64* %x.addr, align 8
  %conv = uitofp i64 %1 to float
  store float %conv, float* %f1, align 4
  %u = bitcast %union.float_bits* %expected to i32*
  %2 = load i32, i32* %u, align 4
  %u2 = bitcast %union.float_bits* %observed to i32*
  %3 = load i32, i32* %u2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %x.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i64 %4)
  %f5 = bitcast %union.float_bits* %expected to float*
  %5 = load float, float* %f5, align 4
  %conv6 = fpext float %5 to double
  %u7 = bitcast %union.float_bits* %expected to i32*
  %6 = load i32, i32* %u7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), double %conv6, i32 %6)
  %f9 = bitcast %union.float_bits* %observed to float*
  %7 = load float, float* %f9, align 4
  %conv10 = fpext float %7 to double
  %u11 = bitcast %union.float_bits* %observed to i32*
  %8 = load i32, i32* %u11, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), double %conv10, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %one = alloca i64, align 8
  %mone = alloca i64, align 8
  %modeNames = alloca [4 x i8*], align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 1, i64* %one, align 8
  store i64 -1, i64* %mone, align 8
  %0 = bitcast [4 x i8*]* %modeNames to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i8*]* @main.modeNames to i8*), i64 32, i32 16, i1 false)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.284, %entry
  %1 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end.286

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @main.roundingModes, i32 0, i64 0), align 4
  %call = call i32 @fesetround(i32 %2) #3
  %3 = load i32, i32* %m, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %modeNames, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), i8* %4)
  call void @test(i64 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.281, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 64
  br i1 %cmp3, label %for.body.4, label %for.end.283

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 1, %sh_prom
  call void @test(i64 %shl)
  %7 = load i32, i32* %i, align 4
  %sh_prom5 = zext i32 %7 to i64
  %shl6 = shl i64 -1, %sh_prom5
  call void @test(i64 %shl6)
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.278, %for.body.4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body.9, label %for.end.280

for.body.9:                                       ; preds = %for.cond.7
  %10 = load i32, i32* %i, align 4
  %sh_prom10 = zext i32 %10 to i64
  %shl11 = shl i64 1, %sh_prom10
  %11 = load i32, i32* %j, align 4
  %sh_prom12 = zext i32 %11 to i64
  %shl13 = shl i64 1, %sh_prom12
  %add = add i64 %shl11, %shl13
  call void @test(i64 %add)
  %12 = load i32, i32* %i, align 4
  %sh_prom14 = zext i32 %12 to i64
  %shl15 = shl i64 1, %sh_prom14
  %13 = load i32, i32* %j, align 4
  %sh_prom16 = zext i32 %13 to i64
  %shl17 = shl i64 -1, %sh_prom16
  %add18 = add i64 %shl15, %shl17
  call void @test(i64 %add18)
  %14 = load i32, i32* %i, align 4
  %sh_prom19 = zext i32 %14 to i64
  %shl20 = shl i64 -1, %sh_prom19
  %15 = load i32, i32* %j, align 4
  %sh_prom21 = zext i32 %15 to i64
  %shl22 = shl i64 1, %sh_prom21
  %add23 = add i64 %shl20, %shl22
  call void @test(i64 %add23)
  %16 = load i32, i32* %i, align 4
  %sh_prom24 = zext i32 %16 to i64
  %shl25 = shl i64 -1, %sh_prom24
  %17 = load i32, i32* %j, align 4
  %sh_prom26 = zext i32 %17 to i64
  %shl27 = shl i64 -1, %sh_prom26
  %add28 = add i64 %shl25, %shl27
  call void @test(i64 %add28)
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.275, %for.body.9
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %18, %19
  br i1 %cmp30, label %for.body.31, label %for.end.277

for.body.31:                                      ; preds = %for.cond.29
  %20 = load i32, i32* %i, align 4
  %sh_prom32 = zext i32 %20 to i64
  %shl33 = shl i64 1, %sh_prom32
  %21 = load i32, i32* %j, align 4
  %sh_prom34 = zext i32 %21 to i64
  %shl35 = shl i64 1, %sh_prom34
  %add36 = add i64 %shl33, %shl35
  %22 = load i32, i32* %k, align 4
  %sh_prom37 = zext i32 %22 to i64
  %shl38 = shl i64 1, %sh_prom37
  %add39 = add i64 %add36, %shl38
  call void @test(i64 %add39)
  %23 = load i32, i32* %i, align 4
  %sh_prom40 = zext i32 %23 to i64
  %shl41 = shl i64 1, %sh_prom40
  %24 = load i32, i32* %j, align 4
  %sh_prom42 = zext i32 %24 to i64
  %shl43 = shl i64 1, %sh_prom42
  %add44 = add i64 %shl41, %shl43
  %25 = load i32, i32* %k, align 4
  %sh_prom45 = zext i32 %25 to i64
  %shl46 = shl i64 -1, %sh_prom45
  %add47 = add i64 %add44, %shl46
  call void @test(i64 %add47)
  %26 = load i32, i32* %i, align 4
  %sh_prom48 = zext i32 %26 to i64
  %shl49 = shl i64 1, %sh_prom48
  %27 = load i32, i32* %j, align 4
  %sh_prom50 = zext i32 %27 to i64
  %shl51 = shl i64 -1, %sh_prom50
  %add52 = add i64 %shl49, %shl51
  %28 = load i32, i32* %k, align 4
  %sh_prom53 = zext i32 %28 to i64
  %shl54 = shl i64 1, %sh_prom53
  %add55 = add i64 %add52, %shl54
  call void @test(i64 %add55)
  %29 = load i32, i32* %i, align 4
  %sh_prom56 = zext i32 %29 to i64
  %shl57 = shl i64 1, %sh_prom56
  %30 = load i32, i32* %j, align 4
  %sh_prom58 = zext i32 %30 to i64
  %shl59 = shl i64 -1, %sh_prom58
  %add60 = add i64 %shl57, %shl59
  %31 = load i32, i32* %k, align 4
  %sh_prom61 = zext i32 %31 to i64
  %shl62 = shl i64 -1, %sh_prom61
  %add63 = add i64 %add60, %shl62
  call void @test(i64 %add63)
  %32 = load i32, i32* %i, align 4
  %sh_prom64 = zext i32 %32 to i64
  %shl65 = shl i64 -1, %sh_prom64
  %33 = load i32, i32* %j, align 4
  %sh_prom66 = zext i32 %33 to i64
  %shl67 = shl i64 1, %sh_prom66
  %add68 = add i64 %shl65, %shl67
  %34 = load i32, i32* %k, align 4
  %sh_prom69 = zext i32 %34 to i64
  %shl70 = shl i64 1, %sh_prom69
  %add71 = add i64 %add68, %shl70
  call void @test(i64 %add71)
  %35 = load i32, i32* %i, align 4
  %sh_prom72 = zext i32 %35 to i64
  %shl73 = shl i64 -1, %sh_prom72
  %36 = load i32, i32* %j, align 4
  %sh_prom74 = zext i32 %36 to i64
  %shl75 = shl i64 1, %sh_prom74
  %add76 = add i64 %shl73, %shl75
  %37 = load i32, i32* %k, align 4
  %sh_prom77 = zext i32 %37 to i64
  %shl78 = shl i64 -1, %sh_prom77
  %add79 = add i64 %add76, %shl78
  call void @test(i64 %add79)
  %38 = load i32, i32* %i, align 4
  %sh_prom80 = zext i32 %38 to i64
  %shl81 = shl i64 -1, %sh_prom80
  %39 = load i32, i32* %j, align 4
  %sh_prom82 = zext i32 %39 to i64
  %shl83 = shl i64 -1, %sh_prom82
  %add84 = add i64 %shl81, %shl83
  %40 = load i32, i32* %k, align 4
  %sh_prom85 = zext i32 %40 to i64
  %shl86 = shl i64 1, %sh_prom85
  %add87 = add i64 %add84, %shl86
  call void @test(i64 %add87)
  %41 = load i32, i32* %i, align 4
  %sh_prom88 = zext i32 %41 to i64
  %shl89 = shl i64 -1, %sh_prom88
  %42 = load i32, i32* %j, align 4
  %sh_prom90 = zext i32 %42 to i64
  %shl91 = shl i64 -1, %sh_prom90
  %add92 = add i64 %shl89, %shl91
  %43 = load i32, i32* %k, align 4
  %sh_prom93 = zext i32 %43 to i64
  %shl94 = shl i64 -1, %sh_prom93
  %add95 = add i64 %add92, %shl94
  call void @test(i64 %add95)
  store i32 0, i32* %l, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc, %for.body.31
  %44 = load i32, i32* %l, align 4
  %45 = load i32, i32* %k, align 4
  %cmp97 = icmp slt i32 %44, %45
  br i1 %cmp97, label %for.body.98, label %for.end

for.body.98:                                      ; preds = %for.cond.96
  %46 = load i32, i32* %i, align 4
  %sh_prom99 = zext i32 %46 to i64
  %shl100 = shl i64 1, %sh_prom99
  %47 = load i32, i32* %j, align 4
  %sh_prom101 = zext i32 %47 to i64
  %shl102 = shl i64 1, %sh_prom101
  %add103 = add i64 %shl100, %shl102
  %48 = load i32, i32* %k, align 4
  %sh_prom104 = zext i32 %48 to i64
  %shl105 = shl i64 1, %sh_prom104
  %add106 = add i64 %add103, %shl105
  %49 = load i32, i32* %l, align 4
  %sh_prom107 = zext i32 %49 to i64
  %shl108 = shl i64 1, %sh_prom107
  %add109 = add i64 %add106, %shl108
  call void @test(i64 %add109)
  %50 = load i32, i32* %i, align 4
  %sh_prom110 = zext i32 %50 to i64
  %shl111 = shl i64 1, %sh_prom110
  %51 = load i32, i32* %j, align 4
  %sh_prom112 = zext i32 %51 to i64
  %shl113 = shl i64 1, %sh_prom112
  %add114 = add i64 %shl111, %shl113
  %52 = load i32, i32* %k, align 4
  %sh_prom115 = zext i32 %52 to i64
  %shl116 = shl i64 1, %sh_prom115
  %add117 = add i64 %add114, %shl116
  %53 = load i32, i32* %l, align 4
  %sh_prom118 = zext i32 %53 to i64
  %shl119 = shl i64 -1, %sh_prom118
  %add120 = add i64 %add117, %shl119
  call void @test(i64 %add120)
  %54 = load i32, i32* %i, align 4
  %sh_prom121 = zext i32 %54 to i64
  %shl122 = shl i64 1, %sh_prom121
  %55 = load i32, i32* %j, align 4
  %sh_prom123 = zext i32 %55 to i64
  %shl124 = shl i64 1, %sh_prom123
  %add125 = add i64 %shl122, %shl124
  %56 = load i32, i32* %k, align 4
  %sh_prom126 = zext i32 %56 to i64
  %shl127 = shl i64 -1, %sh_prom126
  %add128 = add i64 %add125, %shl127
  %57 = load i32, i32* %l, align 4
  %sh_prom129 = zext i32 %57 to i64
  %shl130 = shl i64 1, %sh_prom129
  %add131 = add i64 %add128, %shl130
  call void @test(i64 %add131)
  %58 = load i32, i32* %i, align 4
  %sh_prom132 = zext i32 %58 to i64
  %shl133 = shl i64 1, %sh_prom132
  %59 = load i32, i32* %j, align 4
  %sh_prom134 = zext i32 %59 to i64
  %shl135 = shl i64 1, %sh_prom134
  %add136 = add i64 %shl133, %shl135
  %60 = load i32, i32* %k, align 4
  %sh_prom137 = zext i32 %60 to i64
  %shl138 = shl i64 -1, %sh_prom137
  %add139 = add i64 %add136, %shl138
  %61 = load i32, i32* %l, align 4
  %sh_prom140 = zext i32 %61 to i64
  %shl141 = shl i64 -1, %sh_prom140
  %add142 = add i64 %add139, %shl141
  call void @test(i64 %add142)
  %62 = load i32, i32* %i, align 4
  %sh_prom143 = zext i32 %62 to i64
  %shl144 = shl i64 1, %sh_prom143
  %63 = load i32, i32* %j, align 4
  %sh_prom145 = zext i32 %63 to i64
  %shl146 = shl i64 -1, %sh_prom145
  %add147 = add i64 %shl144, %shl146
  %64 = load i32, i32* %k, align 4
  %sh_prom148 = zext i32 %64 to i64
  %shl149 = shl i64 1, %sh_prom148
  %add150 = add i64 %add147, %shl149
  %65 = load i32, i32* %l, align 4
  %sh_prom151 = zext i32 %65 to i64
  %shl152 = shl i64 1, %sh_prom151
  %add153 = add i64 %add150, %shl152
  call void @test(i64 %add153)
  %66 = load i32, i32* %i, align 4
  %sh_prom154 = zext i32 %66 to i64
  %shl155 = shl i64 1, %sh_prom154
  %67 = load i32, i32* %j, align 4
  %sh_prom156 = zext i32 %67 to i64
  %shl157 = shl i64 -1, %sh_prom156
  %add158 = add i64 %shl155, %shl157
  %68 = load i32, i32* %k, align 4
  %sh_prom159 = zext i32 %68 to i64
  %shl160 = shl i64 1, %sh_prom159
  %add161 = add i64 %add158, %shl160
  %69 = load i32, i32* %l, align 4
  %sh_prom162 = zext i32 %69 to i64
  %shl163 = shl i64 -1, %sh_prom162
  %add164 = add i64 %add161, %shl163
  call void @test(i64 %add164)
  %70 = load i32, i32* %i, align 4
  %sh_prom165 = zext i32 %70 to i64
  %shl166 = shl i64 1, %sh_prom165
  %71 = load i32, i32* %j, align 4
  %sh_prom167 = zext i32 %71 to i64
  %shl168 = shl i64 -1, %sh_prom167
  %add169 = add i64 %shl166, %shl168
  %72 = load i32, i32* %k, align 4
  %sh_prom170 = zext i32 %72 to i64
  %shl171 = shl i64 -1, %sh_prom170
  %add172 = add i64 %add169, %shl171
  %73 = load i32, i32* %l, align 4
  %sh_prom173 = zext i32 %73 to i64
  %shl174 = shl i64 1, %sh_prom173
  %add175 = add i64 %add172, %shl174
  call void @test(i64 %add175)
  %74 = load i32, i32* %i, align 4
  %sh_prom176 = zext i32 %74 to i64
  %shl177 = shl i64 1, %sh_prom176
  %75 = load i32, i32* %j, align 4
  %sh_prom178 = zext i32 %75 to i64
  %shl179 = shl i64 -1, %sh_prom178
  %add180 = add i64 %shl177, %shl179
  %76 = load i32, i32* %k, align 4
  %sh_prom181 = zext i32 %76 to i64
  %shl182 = shl i64 -1, %sh_prom181
  %add183 = add i64 %add180, %shl182
  %77 = load i32, i32* %l, align 4
  %sh_prom184 = zext i32 %77 to i64
  %shl185 = shl i64 -1, %sh_prom184
  %add186 = add i64 %add183, %shl185
  call void @test(i64 %add186)
  %78 = load i32, i32* %i, align 4
  %sh_prom187 = zext i32 %78 to i64
  %shl188 = shl i64 -1, %sh_prom187
  %79 = load i32, i32* %j, align 4
  %sh_prom189 = zext i32 %79 to i64
  %shl190 = shl i64 1, %sh_prom189
  %add191 = add i64 %shl188, %shl190
  %80 = load i32, i32* %k, align 4
  %sh_prom192 = zext i32 %80 to i64
  %shl193 = shl i64 1, %sh_prom192
  %add194 = add i64 %add191, %shl193
  %81 = load i32, i32* %l, align 4
  %sh_prom195 = zext i32 %81 to i64
  %shl196 = shl i64 1, %sh_prom195
  %add197 = add i64 %add194, %shl196
  call void @test(i64 %add197)
  %82 = load i32, i32* %i, align 4
  %sh_prom198 = zext i32 %82 to i64
  %shl199 = shl i64 -1, %sh_prom198
  %83 = load i32, i32* %j, align 4
  %sh_prom200 = zext i32 %83 to i64
  %shl201 = shl i64 1, %sh_prom200
  %add202 = add i64 %shl199, %shl201
  %84 = load i32, i32* %k, align 4
  %sh_prom203 = zext i32 %84 to i64
  %shl204 = shl i64 1, %sh_prom203
  %add205 = add i64 %add202, %shl204
  %85 = load i32, i32* %l, align 4
  %sh_prom206 = zext i32 %85 to i64
  %shl207 = shl i64 -1, %sh_prom206
  %add208 = add i64 %add205, %shl207
  call void @test(i64 %add208)
  %86 = load i32, i32* %i, align 4
  %sh_prom209 = zext i32 %86 to i64
  %shl210 = shl i64 -1, %sh_prom209
  %87 = load i32, i32* %j, align 4
  %sh_prom211 = zext i32 %87 to i64
  %shl212 = shl i64 1, %sh_prom211
  %add213 = add i64 %shl210, %shl212
  %88 = load i32, i32* %k, align 4
  %sh_prom214 = zext i32 %88 to i64
  %shl215 = shl i64 -1, %sh_prom214
  %add216 = add i64 %add213, %shl215
  %89 = load i32, i32* %l, align 4
  %sh_prom217 = zext i32 %89 to i64
  %shl218 = shl i64 1, %sh_prom217
  %add219 = add i64 %add216, %shl218
  call void @test(i64 %add219)
  %90 = load i32, i32* %i, align 4
  %sh_prom220 = zext i32 %90 to i64
  %shl221 = shl i64 -1, %sh_prom220
  %91 = load i32, i32* %j, align 4
  %sh_prom222 = zext i32 %91 to i64
  %shl223 = shl i64 1, %sh_prom222
  %add224 = add i64 %shl221, %shl223
  %92 = load i32, i32* %k, align 4
  %sh_prom225 = zext i32 %92 to i64
  %shl226 = shl i64 -1, %sh_prom225
  %add227 = add i64 %add224, %shl226
  %93 = load i32, i32* %l, align 4
  %sh_prom228 = zext i32 %93 to i64
  %shl229 = shl i64 -1, %sh_prom228
  %add230 = add i64 %add227, %shl229
  call void @test(i64 %add230)
  %94 = load i32, i32* %i, align 4
  %sh_prom231 = zext i32 %94 to i64
  %shl232 = shl i64 -1, %sh_prom231
  %95 = load i32, i32* %j, align 4
  %sh_prom233 = zext i32 %95 to i64
  %shl234 = shl i64 -1, %sh_prom233
  %add235 = add i64 %shl232, %shl234
  %96 = load i32, i32* %k, align 4
  %sh_prom236 = zext i32 %96 to i64
  %shl237 = shl i64 1, %sh_prom236
  %add238 = add i64 %add235, %shl237
  %97 = load i32, i32* %l, align 4
  %sh_prom239 = zext i32 %97 to i64
  %shl240 = shl i64 1, %sh_prom239
  %add241 = add i64 %add238, %shl240
  call void @test(i64 %add241)
  %98 = load i32, i32* %i, align 4
  %sh_prom242 = zext i32 %98 to i64
  %shl243 = shl i64 -1, %sh_prom242
  %99 = load i32, i32* %j, align 4
  %sh_prom244 = zext i32 %99 to i64
  %shl245 = shl i64 -1, %sh_prom244
  %add246 = add i64 %shl243, %shl245
  %100 = load i32, i32* %k, align 4
  %sh_prom247 = zext i32 %100 to i64
  %shl248 = shl i64 1, %sh_prom247
  %add249 = add i64 %add246, %shl248
  %101 = load i32, i32* %l, align 4
  %sh_prom250 = zext i32 %101 to i64
  %shl251 = shl i64 -1, %sh_prom250
  %add252 = add i64 %add249, %shl251
  call void @test(i64 %add252)
  %102 = load i32, i32* %i, align 4
  %sh_prom253 = zext i32 %102 to i64
  %shl254 = shl i64 -1, %sh_prom253
  %103 = load i32, i32* %j, align 4
  %sh_prom255 = zext i32 %103 to i64
  %shl256 = shl i64 -1, %sh_prom255
  %add257 = add i64 %shl254, %shl256
  %104 = load i32, i32* %k, align 4
  %sh_prom258 = zext i32 %104 to i64
  %shl259 = shl i64 -1, %sh_prom258
  %add260 = add i64 %add257, %shl259
  %105 = load i32, i32* %l, align 4
  %sh_prom261 = zext i32 %105 to i64
  %shl262 = shl i64 1, %sh_prom261
  %add263 = add i64 %add260, %shl262
  call void @test(i64 %add263)
  %106 = load i32, i32* %i, align 4
  %sh_prom264 = zext i32 %106 to i64
  %shl265 = shl i64 -1, %sh_prom264
  %107 = load i32, i32* %j, align 4
  %sh_prom266 = zext i32 %107 to i64
  %shl267 = shl i64 -1, %sh_prom266
  %add268 = add i64 %shl265, %shl267
  %108 = load i32, i32* %k, align 4
  %sh_prom269 = zext i32 %108 to i64
  %shl270 = shl i64 -1, %sh_prom269
  %add271 = add i64 %add268, %shl270
  %109 = load i32, i32* %l, align 4
  %sh_prom272 = zext i32 %109 to i64
  %shl273 = shl i64 -1, %sh_prom272
  %add274 = add i64 %add271, %shl273
  call void @test(i64 %add274)
  br label %for.inc

for.inc:                                          ; preds = %for.body.98
  %110 = load i32, i32* %l, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.96

for.end:                                          ; preds = %for.cond.96
  br label %for.inc.275

for.inc.275:                                      ; preds = %for.end
  %111 = load i32, i32* %k, align 4
  %inc276 = add nsw i32 %111, 1
  store i32 %inc276, i32* %k, align 4
  br label %for.cond.29

for.end.277:                                      ; preds = %for.cond.29
  br label %for.inc.278

for.inc.278:                                      ; preds = %for.end.277
  %112 = load i32, i32* %j, align 4
  %inc279 = add nsw i32 %112, 1
  store i32 %inc279, i32* %j, align 4
  br label %for.cond.7

for.end.280:                                      ; preds = %for.cond.7
  br label %for.inc.281

for.inc.281:                                      ; preds = %for.end.280
  %113 = load i32, i32* %i, align 4
  %inc282 = add nsw i32 %113, 1
  store i32 %inc282, i32* %i, align 4
  br label %for.cond.2

for.end.283:                                      ; preds = %for.cond.2
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.end.283
  %114 = load i32, i32* %m, align 4
  %inc285 = add nsw i32 %114, 1
  store i32 %inc285, i32* %m, align 4
  br label %for.cond

for.end.286:                                      ; preds = %for.cond
  %call287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @fesetround(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
