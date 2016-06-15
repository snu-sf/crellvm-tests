; ModuleID = 'decompress.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external global [512 x i32], align 16

; Function Attrs: nounwind uwtable
define i32 @BZ2_decompress(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca %struct.bz_stream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca i32*, align 8
  %gBase = alloca i32*, align 8
  %gPerm = alloca i32*, align 8
  %v = alloca i32, align 4
  %v69 = alloca i32, align 4
  %v125 = alloca i32, align 4
  %v181 = alloca i32, align 4
  %v279 = alloca i32, align 4
  %v340 = alloca i32, align 4
  %v396 = alloca i32, align 4
  %v452 = alloca i32, align 4
  %v508 = alloca i32, align 4
  %v564 = alloca i32, align 4
  %v627 = alloca i32, align 4
  %v683 = alloca i32, align 4
  %v739 = alloca i32, align 4
  %v795 = alloca i32, align 4
  %v851 = alloca i32, align 4
  %v902 = alloca i32, align 4
  %v958 = alloca i32, align 4
  %v1014 = alloca i32, align 4
  %v1085 = alloca i32, align 4
  %v1168 = alloca i32, align 4
  %v1242 = alloca i32, align 4
  %v1299 = alloca i32, align 4
  %v1359 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1421 = alloca i8, align 1
  %v1472 = alloca i32, align 4
  %v1537 = alloca i32, align 4
  %v1595 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1797 = alloca i32, align 4
  %v1864 = alloca i32, align 4
  %v1992 = alloca i32, align 4
  %v2059 = alloca i32, align 4
  %ii2180 = alloca i32, align 4
  %jj2182 = alloca i32, align 4
  %kk2184 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2418 = alloca i32, align 4
  %v2485 = alloca i32, align 4
  %tmp2711 = alloca i32, align 4
  %v2951 = alloca i32, align 4
  %v3009 = alloca i32, align 4
  %v3067 = alloca i32, align 4
  %v3125 = alloca i32, align 4
  %v3183 = alloca i32, align 4
  %v3241 = alloca i32, align 4
  %v3299 = alloca i32, align 4
  %v3357 = alloca i32, align 4
  %v3415 = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 0
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm1, align 8
  store %struct.bz_stream* %1, %struct.bz_stream** %strm, align 8
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 40
  store i32 0, i32* %save_i, align 4
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 41
  store i32 0, i32* %save_j, align 4
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 42
  store i32 0, i32* %save_t, align 4
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 43
  store i32 0, i32* %save_alphaSize, align 4
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 44
  store i32 0, i32* %save_nGroups, align 4
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 45
  store i32 0, i32* %save_nSelectors, align 4
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 46
  store i32 0, i32* %save_EOB, align 4
  %11 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo = getelementptr inbounds %struct.DState, %struct.DState* %11, i32 0, i32 47
  store i32 0, i32* %save_groupNo, align 4
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 48
  store i32 0, i32* %save_groupPos, align 4
  %13 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym = getelementptr inbounds %struct.DState, %struct.DState* %13, i32 0, i32 49
  store i32 0, i32* %save_nextSym, align 4
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 50
  store i32 0, i32* %save_nblockMAX, align 4
  %15 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %15, i32 0, i32 51
  store i32 0, i32* %save_nblock, align 4
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 52
  store i32 0, i32* %save_es, align 4
  %17 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 53
  store i32 0, i32* %save_N, align 4
  %18 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 54
  store i32 0, i32* %save_curr, align 4
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 55
  store i32 0, i32* %save_zt, align 4
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 56
  store i32 0, i32* %save_zn, align 4
  %21 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 57
  store i32 0, i32* %save_zvec, align 4
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 58
  store i32 0, i32* %save_zj, align 4
  %23 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 59
  store i32 0, i32* %save_gSel, align 4
  %24 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 60
  store i32 0, i32* %save_gMinlen, align 4
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 61
  store i32* null, i32** %save_gLimit, align 8
  %26 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 62
  store i32* null, i32** %save_gBase, align 8
  %27 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 63
  store i32* null, i32** %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i2 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 40
  %29 = load i32, i32* %save_i2, align 4
  store i32 %29, i32* %i, align 4
  %30 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j3 = getelementptr inbounds %struct.DState, %struct.DState* %30, i32 0, i32 41
  %31 = load i32, i32* %save_j3, align 4
  store i32 %31, i32* %j, align 4
  %32 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 42
  %33 = load i32, i32* %save_t4, align 4
  store i32 %33, i32* %t, align 4
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize5 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 43
  %35 = load i32, i32* %save_alphaSize5, align 4
  store i32 %35, i32* %alphaSize, align 4
  %36 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 44
  %37 = load i32, i32* %save_nGroups6, align 4
  store i32 %37, i32* %nGroups, align 4
  %38 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors7 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 45
  %39 = load i32, i32* %save_nSelectors7, align 4
  store i32 %39, i32* %nSelectors, align 4
  %40 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB8 = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 46
  %41 = load i32, i32* %save_EOB8, align 4
  store i32 %41, i32* %EOB, align 4
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo9 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 47
  %43 = load i32, i32* %save_groupNo9, align 4
  store i32 %43, i32* %groupNo, align 4
  %44 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 48
  %45 = load i32, i32* %save_groupPos10, align 4
  store i32 %45, i32* %groupPos, align 4
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym11 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 49
  %47 = load i32, i32* %save_nextSym11, align 4
  store i32 %47, i32* %nextSym, align 4
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 50
  %49 = load i32, i32* %save_nblockMAX12, align 4
  store i32 %49, i32* %nblockMAX, align 4
  %50 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock13 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 51
  %51 = load i32, i32* %save_nblock13, align 4
  store i32 %51, i32* %nblock, align 4
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es14 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 52
  %53 = load i32, i32* %save_es14, align 4
  store i32 %53, i32* %es, align 4
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N15 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 53
  %55 = load i32, i32* %save_N15, align 4
  store i32 %55, i32* %N, align 4
  %56 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr16 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 54
  %57 = load i32, i32* %save_curr16, align 4
  store i32 %57, i32* %curr, align 4
  %58 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt17 = getelementptr inbounds %struct.DState, %struct.DState* %58, i32 0, i32 55
  %59 = load i32, i32* %save_zt17, align 4
  store i32 %59, i32* %zt, align 4
  %60 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn18 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 56
  %61 = load i32, i32* %save_zn18, align 4
  store i32 %61, i32* %zn, align 4
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec19 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 57
  %63 = load i32, i32* %save_zvec19, align 4
  store i32 %63, i32* %zvec, align 4
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj20 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 58
  %65 = load i32, i32* %save_zj20, align 4
  store i32 %65, i32* %zj, align 4
  %66 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel21 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 59
  %67 = load i32, i32* %save_gSel21, align 4
  store i32 %67, i32* %gSel, align 4
  %68 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 60
  %69 = load i32, i32* %save_gMinlen22, align 4
  store i32 %69, i32* %gMinlen, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit23 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 61
  %71 = load i32*, i32** %save_gLimit23, align 8
  store i32* %71, i32** %gLimit, align 8
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase24 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 62
  %73 = load i32*, i32** %save_gBase24, align 8
  store i32* %73, i32** %gBase, align 8
  %74 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm25 = getelementptr inbounds %struct.DState, %struct.DState* %74, i32 0, i32 63
  %75 = load i32*, i32** %save_gPerm25, align 8
  store i32* %75, i32** %gPerm, align 8
  store i32 0, i32* %retVal, align 4
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state26 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 1
  %77 = load i32, i32* %state26, align 4
  switch i32 %77, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.62
    i32 12, label %sw.bb.118
    i32 13, label %sw.bb.174
    i32 14, label %sw.bb.272
    i32 15, label %sw.bb.333
    i32 16, label %sw.bb.389
    i32 17, label %sw.bb.445
    i32 18, label %sw.bb.501
    i32 19, label %sw.bb.557
    i32 20, label %sw.bb.620
    i32 21, label %sw.bb.676
    i32 22, label %sw.bb.732
    i32 23, label %sw.bb.788
    i32 24, label %sw.bb.844
    i32 25, label %sw.bb.895
    i32 26, label %sw.bb.951
    i32 27, label %sw.bb.1007
    i32 28, label %sw.bb.1078
    i32 29, label %sw.bb.1161
    i32 30, label %sw.bb.1235
    i32 31, label %sw.bb.1292
    i32 32, label %sw.bb.1351
    i32 33, label %sw.bb.1463
    i32 34, label %sw.bb.1528
    i32 35, label %sw.bb.1586
    i32 36, label %sw.bb.1788
    i32 37, label %sw.bb.1855
    i32 38, label %sw.bb.1983
    i32 39, label %sw.bb.2050
    i32 40, label %sw.bb.2409
    i32 41, label %sw.bb.2476
    i32 42, label %sw.bb.2942
    i32 43, label %sw.bb.3000
    i32 44, label %sw.bb.3058
    i32 45, label %sw.bb.3116
    i32 46, label %sw.bb.3174
    i32 47, label %sw.bb.3232
    i32 48, label %sw.bb.3290
    i32 49, label %sw.bb.3348
    i32 50, label %sw.bb.3406
  ]

sw.bb:                                            ; preds = %if.end
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state27 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 1
  store i32 10, i32* %state27, align 4
  br label %while.body

while.body:                                       ; preds = %sw.bb, %if.end.56
  %79 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 8
  %80 = load i32, i32* %bsLive, align 4
  %cmp28 = icmp sge i32 %80, 8
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %while.body
  %81 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %81, i32 0, i32 7
  %82 = load i32, i32* %bsBuff, align 4
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive30 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 8
  %84 = load i32, i32* %bsLive30, align 4
  %sub = sub nsw i32 %84, 8
  %shr = lshr i32 %82, %sub
  %and = and i32 %shr, 255
  store i32 %and, i32* %v, align 4
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive31 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 8
  %86 = load i32, i32* %bsLive31, align 4
  %sub32 = sub nsw i32 %86, 8
  store i32 %sub32, i32* %bsLive31, align 4
  %87 = load i32, i32* %v, align 4
  %conv = trunc i32 %87 to i8
  store i8 %conv, i8* %uc, align 1
  br label %while.end

if.end.33:                                        ; preds = %while.body
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm34 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 0
  %89 = load %struct.bz_stream*, %struct.bz_stream** %strm34, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 1
  %90 = load i32, i32* %avail_in, align 4
  %cmp35 = icmp eq i32 %90, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.38:                                        ; preds = %if.end.33
  %91 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff39 = getelementptr inbounds %struct.DState, %struct.DState* %91, i32 0, i32 7
  %92 = load i32, i32* %bsBuff39, align 4
  %shl = shl i32 %92, 8
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm40 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 0
  %94 = load %struct.bz_stream*, %struct.bz_stream** %strm40, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %94, i32 0, i32 0
  %95 = load i8*, i8** %next_in, align 8
  %96 = load i8, i8* %95, align 1
  %conv41 = zext i8 %96 to i32
  %or = or i32 %shl, %conv41
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff42 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 7
  store i32 %or, i32* %bsBuff42, align 4
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive43 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 8
  %99 = load i32, i32* %bsLive43, align 4
  %add = add nsw i32 %99, 8
  store i32 %add, i32* %bsLive43, align 4
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm44 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 0
  %101 = load %struct.bz_stream*, %struct.bz_stream** %strm44, align 8
  %next_in45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %101, i32 0, i32 0
  %102 = load i8*, i8** %next_in45, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr, i8** %next_in45, align 8
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm46 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 0
  %104 = load %struct.bz_stream*, %struct.bz_stream** %strm46, align 8
  %avail_in47 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %104, i32 0, i32 1
  %105 = load i32, i32* %avail_in47, align 4
  %dec = add i32 %105, -1
  store i32 %dec, i32* %avail_in47, align 4
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm48 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 0
  %107 = load %struct.bz_stream*, %struct.bz_stream** %strm48, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 2
  %108 = load i32, i32* %total_in_lo32, align 4
  %inc = add i32 %108, 1
  store i32 %inc, i32* %total_in_lo32, align 4
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm49 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 0
  %110 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8
  %total_in_lo3250 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %110, i32 0, i32 2
  %111 = load i32, i32* %total_in_lo3250, align 4
  %cmp51 = icmp eq i32 %111, 0
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.38
  %112 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm54 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 0
  %113 = load %struct.bz_stream*, %struct.bz_stream** %strm54, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 3
  %114 = load i32, i32* %total_in_hi32, align 4
  %inc55 = add i32 %114, 1
  store i32 %inc55, i32* %total_in_hi32, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.38
  br label %while.body

while.end:                                        ; preds = %if.then.29
  %115 = load i8, i8* %uc, align 1
  %conv57 = zext i8 %115 to i32
  %cmp58 = icmp ne i32 %conv57, 66
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %while.end
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end.61:                                        ; preds = %while.end
  br label %sw.bb.62

sw.bb.62:                                         ; preds = %if.end, %if.end.61
  %116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state63 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 1
  store i32 11, i32* %state63, align 4
  br label %while.body.64

while.body.64:                                    ; preds = %sw.bb.62, %if.end.111
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive65 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 8
  %118 = load i32, i32* %bsLive65, align 4
  %cmp66 = icmp sge i32 %118, 8
  br i1 %cmp66, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %while.body.64
  %119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff70 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 7
  %120 = load i32, i32* %bsBuff70, align 4
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive71 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 8
  %122 = load i32, i32* %bsLive71, align 4
  %sub72 = sub nsw i32 %122, 8
  %shr73 = lshr i32 %120, %sub72
  %and74 = and i32 %shr73, 255
  store i32 %and74, i32* %v69, align 4
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive75 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 8
  %124 = load i32, i32* %bsLive75, align 4
  %sub76 = sub nsw i32 %124, 8
  store i32 %sub76, i32* %bsLive75, align 4
  %125 = load i32, i32* %v69, align 4
  %conv77 = trunc i32 %125 to i8
  store i8 %conv77, i8* %uc, align 1
  br label %while.end.112

if.end.78:                                        ; preds = %while.body.64
  %126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm79 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 0
  %127 = load %struct.bz_stream*, %struct.bz_stream** %strm79, align 8
  %avail_in80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %127, i32 0, i32 1
  %128 = load i32, i32* %avail_in80, align 4
  %cmp81 = icmp eq i32 %128, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.78
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.84:                                        ; preds = %if.end.78
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff85 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 7
  %130 = load i32, i32* %bsBuff85, align 4
  %shl86 = shl i32 %130, 8
  %131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm87 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %strm87, align 8
  %next_in88 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 0
  %133 = load i8*, i8** %next_in88, align 8
  %134 = load i8, i8* %133, align 1
  %conv89 = zext i8 %134 to i32
  %or90 = or i32 %shl86, %conv89
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff91 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 7
  store i32 %or90, i32* %bsBuff91, align 4
  %136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive92 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 8
  %137 = load i32, i32* %bsLive92, align 4
  %add93 = add nsw i32 %137, 8
  store i32 %add93, i32* %bsLive92, align 4
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm94 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 0
  %139 = load %struct.bz_stream*, %struct.bz_stream** %strm94, align 8
  %next_in95 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %139, i32 0, i32 0
  %140 = load i8*, i8** %next_in95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr96, i8** %next_in95, align 8
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm97 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 0
  %142 = load %struct.bz_stream*, %struct.bz_stream** %strm97, align 8
  %avail_in98 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %142, i32 0, i32 1
  %143 = load i32, i32* %avail_in98, align 4
  %dec99 = add i32 %143, -1
  store i32 %dec99, i32* %avail_in98, align 4
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm100 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 0
  %145 = load %struct.bz_stream*, %struct.bz_stream** %strm100, align 8
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %145, i32 0, i32 2
  %146 = load i32, i32* %total_in_lo32101, align 4
  %inc102 = add i32 %146, 1
  store i32 %inc102, i32* %total_in_lo32101, align 4
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm103 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 0
  %148 = load %struct.bz_stream*, %struct.bz_stream** %strm103, align 8
  %total_in_lo32104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %148, i32 0, i32 2
  %149 = load i32, i32* %total_in_lo32104, align 4
  %cmp105 = icmp eq i32 %149, 0
  br i1 %cmp105, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.end.84
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm108 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 0
  %151 = load %struct.bz_stream*, %struct.bz_stream** %strm108, align 8
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %151, i32 0, i32 3
  %152 = load i32, i32* %total_in_hi32109, align 4
  %inc110 = add i32 %152, 1
  store i32 %inc110, i32* %total_in_hi32109, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %if.end.84
  br label %while.body.64

while.end.112:                                    ; preds = %if.then.68
  %153 = load i8, i8* %uc, align 1
  %conv113 = zext i8 %153 to i32
  %cmp114 = icmp ne i32 %conv113, 90
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %while.end.112
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end.117:                                       ; preds = %while.end.112
  br label %sw.bb.118

sw.bb.118:                                        ; preds = %if.end, %if.end.117
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state119 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 1
  store i32 12, i32* %state119, align 4
  br label %while.body.120

while.body.120:                                   ; preds = %sw.bb.118, %if.end.167
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive121 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 8
  %156 = load i32, i32* %bsLive121, align 4
  %cmp122 = icmp sge i32 %156, 8
  br i1 %cmp122, label %if.then.124, label %if.end.134

if.then.124:                                      ; preds = %while.body.120
  %157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff126 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 7
  %158 = load i32, i32* %bsBuff126, align 4
  %159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive127 = getelementptr inbounds %struct.DState, %struct.DState* %159, i32 0, i32 8
  %160 = load i32, i32* %bsLive127, align 4
  %sub128 = sub nsw i32 %160, 8
  %shr129 = lshr i32 %158, %sub128
  %and130 = and i32 %shr129, 255
  store i32 %and130, i32* %v125, align 4
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive131 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 8
  %162 = load i32, i32* %bsLive131, align 4
  %sub132 = sub nsw i32 %162, 8
  store i32 %sub132, i32* %bsLive131, align 4
  %163 = load i32, i32* %v125, align 4
  %conv133 = trunc i32 %163 to i8
  store i8 %conv133, i8* %uc, align 1
  br label %while.end.168

if.end.134:                                       ; preds = %while.body.120
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm135 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 0
  %165 = load %struct.bz_stream*, %struct.bz_stream** %strm135, align 8
  %avail_in136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %165, i32 0, i32 1
  %166 = load i32, i32* %avail_in136, align 4
  %cmp137 = icmp eq i32 %166, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.134
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.140:                                       ; preds = %if.end.134
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff141 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 7
  %168 = load i32, i32* %bsBuff141, align 4
  %shl142 = shl i32 %168, 8
  %169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm143 = getelementptr inbounds %struct.DState, %struct.DState* %169, i32 0, i32 0
  %170 = load %struct.bz_stream*, %struct.bz_stream** %strm143, align 8
  %next_in144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %170, i32 0, i32 0
  %171 = load i8*, i8** %next_in144, align 8
  %172 = load i8, i8* %171, align 1
  %conv145 = zext i8 %172 to i32
  %or146 = or i32 %shl142, %conv145
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff147 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 7
  store i32 %or146, i32* %bsBuff147, align 4
  %174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive148 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 8
  %175 = load i32, i32* %bsLive148, align 4
  %add149 = add nsw i32 %175, 8
  store i32 %add149, i32* %bsLive148, align 4
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm150 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 0
  %177 = load %struct.bz_stream*, %struct.bz_stream** %strm150, align 8
  %next_in151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %177, i32 0, i32 0
  %178 = load i8*, i8** %next_in151, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr152, i8** %next_in151, align 8
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm153 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 0
  %180 = load %struct.bz_stream*, %struct.bz_stream** %strm153, align 8
  %avail_in154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 1
  %181 = load i32, i32* %avail_in154, align 4
  %dec155 = add i32 %181, -1
  store i32 %dec155, i32* %avail_in154, align 4
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm156 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 0
  %183 = load %struct.bz_stream*, %struct.bz_stream** %strm156, align 8
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %183, i32 0, i32 2
  %184 = load i32, i32* %total_in_lo32157, align 4
  %inc158 = add i32 %184, 1
  store i32 %inc158, i32* %total_in_lo32157, align 4
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm159 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 0
  %186 = load %struct.bz_stream*, %struct.bz_stream** %strm159, align 8
  %total_in_lo32160 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %186, i32 0, i32 2
  %187 = load i32, i32* %total_in_lo32160, align 4
  %cmp161 = icmp eq i32 %187, 0
  br i1 %cmp161, label %if.then.163, label %if.end.167

if.then.163:                                      ; preds = %if.end.140
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm164 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 0
  %189 = load %struct.bz_stream*, %struct.bz_stream** %strm164, align 8
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %189, i32 0, i32 3
  %190 = load i32, i32* %total_in_hi32165, align 4
  %inc166 = add i32 %190, 1
  store i32 %inc166, i32* %total_in_hi32165, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.163, %if.end.140
  br label %while.body.120

while.end.168:                                    ; preds = %if.then.124
  %191 = load i8, i8* %uc, align 1
  %conv169 = zext i8 %191 to i32
  %cmp170 = icmp ne i32 %conv169, 104
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %while.end.168
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end.173:                                       ; preds = %while.end.168
  br label %sw.bb.174

sw.bb.174:                                        ; preds = %if.end, %if.end.173
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state175 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 1
  store i32 13, i32* %state175, align 4
  br label %while.body.176

while.body.176:                                   ; preds = %sw.bb.174, %if.end.222
  %193 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive177 = getelementptr inbounds %struct.DState, %struct.DState* %193, i32 0, i32 8
  %194 = load i32, i32* %bsLive177, align 4
  %cmp178 = icmp sge i32 %194, 8
  br i1 %cmp178, label %if.then.180, label %if.end.189

if.then.180:                                      ; preds = %while.body.176
  %195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff182 = getelementptr inbounds %struct.DState, %struct.DState* %195, i32 0, i32 7
  %196 = load i32, i32* %bsBuff182, align 4
  %197 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive183 = getelementptr inbounds %struct.DState, %struct.DState* %197, i32 0, i32 8
  %198 = load i32, i32* %bsLive183, align 4
  %sub184 = sub nsw i32 %198, 8
  %shr185 = lshr i32 %196, %sub184
  %and186 = and i32 %shr185, 255
  store i32 %and186, i32* %v181, align 4
  %199 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive187 = getelementptr inbounds %struct.DState, %struct.DState* %199, i32 0, i32 8
  %200 = load i32, i32* %bsLive187, align 4
  %sub188 = sub nsw i32 %200, 8
  store i32 %sub188, i32* %bsLive187, align 4
  %201 = load i32, i32* %v181, align 4
  %202 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 9
  store i32 %201, i32* %blockSize100k, align 4
  br label %while.end.223

if.end.189:                                       ; preds = %while.body.176
  %203 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm190 = getelementptr inbounds %struct.DState, %struct.DState* %203, i32 0, i32 0
  %204 = load %struct.bz_stream*, %struct.bz_stream** %strm190, align 8
  %avail_in191 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %204, i32 0, i32 1
  %205 = load i32, i32* %avail_in191, align 4
  %cmp192 = icmp eq i32 %205, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.189
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.195:                                       ; preds = %if.end.189
  %206 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff196 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 7
  %207 = load i32, i32* %bsBuff196, align 4
  %shl197 = shl i32 %207, 8
  %208 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm198 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 0
  %209 = load %struct.bz_stream*, %struct.bz_stream** %strm198, align 8
  %next_in199 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %209, i32 0, i32 0
  %210 = load i8*, i8** %next_in199, align 8
  %211 = load i8, i8* %210, align 1
  %conv200 = zext i8 %211 to i32
  %or201 = or i32 %shl197, %conv200
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff202 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 7
  store i32 %or201, i32* %bsBuff202, align 4
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive203 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 8
  %214 = load i32, i32* %bsLive203, align 4
  %add204 = add nsw i32 %214, 8
  store i32 %add204, i32* %bsLive203, align 4
  %215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm205 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 0
  %216 = load %struct.bz_stream*, %struct.bz_stream** %strm205, align 8
  %next_in206 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %216, i32 0, i32 0
  %217 = load i8*, i8** %next_in206, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr207, i8** %next_in206, align 8
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm208 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 0
  %219 = load %struct.bz_stream*, %struct.bz_stream** %strm208, align 8
  %avail_in209 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %219, i32 0, i32 1
  %220 = load i32, i32* %avail_in209, align 4
  %dec210 = add i32 %220, -1
  store i32 %dec210, i32* %avail_in209, align 4
  %221 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm211 = getelementptr inbounds %struct.DState, %struct.DState* %221, i32 0, i32 0
  %222 = load %struct.bz_stream*, %struct.bz_stream** %strm211, align 8
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %222, i32 0, i32 2
  %223 = load i32, i32* %total_in_lo32212, align 4
  %inc213 = add i32 %223, 1
  store i32 %inc213, i32* %total_in_lo32212, align 4
  %224 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm214 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 0
  %225 = load %struct.bz_stream*, %struct.bz_stream** %strm214, align 8
  %total_in_lo32215 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %225, i32 0, i32 2
  %226 = load i32, i32* %total_in_lo32215, align 4
  %cmp216 = icmp eq i32 %226, 0
  br i1 %cmp216, label %if.then.218, label %if.end.222

if.then.218:                                      ; preds = %if.end.195
  %227 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm219 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 0
  %228 = load %struct.bz_stream*, %struct.bz_stream** %strm219, align 8
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %228, i32 0, i32 3
  %229 = load i32, i32* %total_in_hi32220, align 4
  %inc221 = add i32 %229, 1
  store i32 %inc221, i32* %total_in_hi32220, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.218, %if.end.195
  br label %while.body.176

while.end.223:                                    ; preds = %if.then.180
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k224 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 9
  %231 = load i32, i32* %blockSize100k224, align 4
  %cmp225 = icmp slt i32 %231, 49
  br i1 %cmp225, label %if.then.230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.223
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k227 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 9
  %233 = load i32, i32* %blockSize100k227, align 4
  %cmp228 = icmp sgt i32 %233, 57
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %lor.lhs.false, %while.end.223
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end.231:                                       ; preds = %lor.lhs.false
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k232 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 9
  %235 = load i32, i32* %blockSize100k232, align 4
  %sub233 = sub nsw i32 %235, 48
  store i32 %sub233, i32* %blockSize100k232, align 4
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 10
  %237 = load i8, i8* %smallDecompress, align 1
  %tobool = icmp ne i8 %237, 0
  br i1 %tobool, label %if.then.234, label %if.else

if.then.234:                                      ; preds = %if.end.231
  %238 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %238, i32 0, i32 9
  %239 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %240 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %240, i32 0, i32 11
  %241 = load i8*, i8** %opaque, align 8
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k235 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 9
  %243 = load i32, i32* %blockSize100k235, align 4
  %mul = mul nsw i32 %243, 100000
  %conv236 = sext i32 %mul to i64
  %mul237 = mul i64 %conv236, 2
  %conv238 = trunc i64 %mul237 to i32
  %call = call i8* %239(i8* %241, i32 %conv238, i32 1)
  %244 = bitcast i8* %call to i16*
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 21
  store i16* %244, i16** %ll16, align 8
  %246 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc239 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %246, i32 0, i32 9
  %247 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc239, align 8
  %248 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %248, i32 0, i32 11
  %249 = load i8*, i8** %opaque240, align 8
  %250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k241 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 9
  %251 = load i32, i32* %blockSize100k241, align 4
  %mul242 = mul nsw i32 %251, 100000
  %add243 = add nsw i32 1, %mul242
  %shr244 = ashr i32 %add243, 1
  %conv245 = sext i32 %shr244 to i64
  %mul246 = mul i64 %conv245, 1
  %conv247 = trunc i64 %mul246 to i32
  %call248 = call i8* %247(i8* %249, i32 %conv247, i32 1)
  %252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %252, i32 0, i32 22
  store i8* %call248, i8** %ll4, align 8
  %253 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16249 = getelementptr inbounds %struct.DState, %struct.DState* %253, i32 0, i32 21
  %254 = load i16*, i16** %ll16249, align 8
  %cmp250 = icmp eq i16* %254, null
  br i1 %cmp250, label %if.then.256, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %if.then.234
  %255 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4253 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 22
  %256 = load i8*, i8** %ll4253, align 8
  %cmp254 = icmp eq i8* %256, null
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %lor.lhs.false.252, %if.then.234
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end.257:                                       ; preds = %lor.lhs.false.252
  br label %if.end.271

if.else:                                          ; preds = %if.end.231
  %257 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc258 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %257, i32 0, i32 9
  %258 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc258, align 8
  %259 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque259 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %259, i32 0, i32 11
  %260 = load i8*, i8** %opaque259, align 8
  %261 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k260 = getelementptr inbounds %struct.DState, %struct.DState* %261, i32 0, i32 9
  %262 = load i32, i32* %blockSize100k260, align 4
  %mul261 = mul nsw i32 %262, 100000
  %conv262 = sext i32 %mul261 to i64
  %mul263 = mul i64 %conv262, 4
  %conv264 = trunc i64 %mul263 to i32
  %call265 = call i8* %258(i8* %260, i32 %conv264, i32 1)
  %263 = bitcast i8* %call265 to i32*
  %264 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 20
  store i32* %263, i32** %tt, align 8
  %265 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt266 = getelementptr inbounds %struct.DState, %struct.DState* %265, i32 0, i32 20
  %266 = load i32*, i32** %tt266, align 8
  %cmp267 = icmp eq i32* %266, null
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.else
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end.270:                                       ; preds = %if.else
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.257
  br label %sw.bb.272

sw.bb.272:                                        ; preds = %if.end, %if.end.271
  %267 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state273 = getelementptr inbounds %struct.DState, %struct.DState* %267, i32 0, i32 1
  store i32 14, i32* %state273, align 4
  br label %while.body.274

while.body.274:                                   ; preds = %sw.bb.272, %if.end.321
  %268 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive275 = getelementptr inbounds %struct.DState, %struct.DState* %268, i32 0, i32 8
  %269 = load i32, i32* %bsLive275, align 4
  %cmp276 = icmp sge i32 %269, 8
  br i1 %cmp276, label %if.then.278, label %if.end.288

if.then.278:                                      ; preds = %while.body.274
  %270 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff280 = getelementptr inbounds %struct.DState, %struct.DState* %270, i32 0, i32 7
  %271 = load i32, i32* %bsBuff280, align 4
  %272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive281 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 8
  %273 = load i32, i32* %bsLive281, align 4
  %sub282 = sub nsw i32 %273, 8
  %shr283 = lshr i32 %271, %sub282
  %and284 = and i32 %shr283, 255
  store i32 %and284, i32* %v279, align 4
  %274 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive285 = getelementptr inbounds %struct.DState, %struct.DState* %274, i32 0, i32 8
  %275 = load i32, i32* %bsLive285, align 4
  %sub286 = sub nsw i32 %275, 8
  store i32 %sub286, i32* %bsLive285, align 4
  %276 = load i32, i32* %v279, align 4
  %conv287 = trunc i32 %276 to i8
  store i8 %conv287, i8* %uc, align 1
  br label %while.end.322

if.end.288:                                       ; preds = %while.body.274
  %277 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm289 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 0
  %278 = load %struct.bz_stream*, %struct.bz_stream** %strm289, align 8
  %avail_in290 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %278, i32 0, i32 1
  %279 = load i32, i32* %avail_in290, align 4
  %cmp291 = icmp eq i32 %279, 0
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.288
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.294:                                       ; preds = %if.end.288
  %280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff295 = getelementptr inbounds %struct.DState, %struct.DState* %280, i32 0, i32 7
  %281 = load i32, i32* %bsBuff295, align 4
  %shl296 = shl i32 %281, 8
  %282 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm297 = getelementptr inbounds %struct.DState, %struct.DState* %282, i32 0, i32 0
  %283 = load %struct.bz_stream*, %struct.bz_stream** %strm297, align 8
  %next_in298 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %283, i32 0, i32 0
  %284 = load i8*, i8** %next_in298, align 8
  %285 = load i8, i8* %284, align 1
  %conv299 = zext i8 %285 to i32
  %or300 = or i32 %shl296, %conv299
  %286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff301 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 7
  store i32 %or300, i32* %bsBuff301, align 4
  %287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive302 = getelementptr inbounds %struct.DState, %struct.DState* %287, i32 0, i32 8
  %288 = load i32, i32* %bsLive302, align 4
  %add303 = add nsw i32 %288, 8
  store i32 %add303, i32* %bsLive302, align 4
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm304 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 0
  %290 = load %struct.bz_stream*, %struct.bz_stream** %strm304, align 8
  %next_in305 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %290, i32 0, i32 0
  %291 = load i8*, i8** %next_in305, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr306, i8** %next_in305, align 8
  %292 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm307 = getelementptr inbounds %struct.DState, %struct.DState* %292, i32 0, i32 0
  %293 = load %struct.bz_stream*, %struct.bz_stream** %strm307, align 8
  %avail_in308 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %293, i32 0, i32 1
  %294 = load i32, i32* %avail_in308, align 4
  %dec309 = add i32 %294, -1
  store i32 %dec309, i32* %avail_in308, align 4
  %295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm310 = getelementptr inbounds %struct.DState, %struct.DState* %295, i32 0, i32 0
  %296 = load %struct.bz_stream*, %struct.bz_stream** %strm310, align 8
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %296, i32 0, i32 2
  %297 = load i32, i32* %total_in_lo32311, align 4
  %inc312 = add i32 %297, 1
  store i32 %inc312, i32* %total_in_lo32311, align 4
  %298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm313 = getelementptr inbounds %struct.DState, %struct.DState* %298, i32 0, i32 0
  %299 = load %struct.bz_stream*, %struct.bz_stream** %strm313, align 8
  %total_in_lo32314 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %299, i32 0, i32 2
  %300 = load i32, i32* %total_in_lo32314, align 4
  %cmp315 = icmp eq i32 %300, 0
  br i1 %cmp315, label %if.then.317, label %if.end.321

if.then.317:                                      ; preds = %if.end.294
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm318 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 0
  %302 = load %struct.bz_stream*, %struct.bz_stream** %strm318, align 8
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %302, i32 0, i32 3
  %303 = load i32, i32* %total_in_hi32319, align 4
  %inc320 = add i32 %303, 1
  store i32 %inc320, i32* %total_in_hi32319, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.317, %if.end.294
  br label %while.body.274

while.end.322:                                    ; preds = %if.then.278
  %304 = load i8, i8* %uc, align 1
  %conv323 = zext i8 %304 to i32
  %cmp324 = icmp eq i32 %conv323, 23
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %while.end.322
  br label %endhdr_2

if.end.327:                                       ; preds = %while.end.322
  %305 = load i8, i8* %uc, align 1
  %conv328 = zext i8 %305 to i32
  %cmp329 = icmp ne i32 %conv328, 49
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %if.end.327
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.332:                                       ; preds = %if.end.327
  br label %sw.bb.333

sw.bb.333:                                        ; preds = %if.end, %if.end.332
  %306 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state334 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 1
  store i32 15, i32* %state334, align 4
  br label %while.body.335

while.body.335:                                   ; preds = %sw.bb.333, %if.end.382
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive336 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 8
  %308 = load i32, i32* %bsLive336, align 4
  %cmp337 = icmp sge i32 %308, 8
  br i1 %cmp337, label %if.then.339, label %if.end.349

if.then.339:                                      ; preds = %while.body.335
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff341 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 7
  %310 = load i32, i32* %bsBuff341, align 4
  %311 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive342 = getelementptr inbounds %struct.DState, %struct.DState* %311, i32 0, i32 8
  %312 = load i32, i32* %bsLive342, align 4
  %sub343 = sub nsw i32 %312, 8
  %shr344 = lshr i32 %310, %sub343
  %and345 = and i32 %shr344, 255
  store i32 %and345, i32* %v340, align 4
  %313 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive346 = getelementptr inbounds %struct.DState, %struct.DState* %313, i32 0, i32 8
  %314 = load i32, i32* %bsLive346, align 4
  %sub347 = sub nsw i32 %314, 8
  store i32 %sub347, i32* %bsLive346, align 4
  %315 = load i32, i32* %v340, align 4
  %conv348 = trunc i32 %315 to i8
  store i8 %conv348, i8* %uc, align 1
  br label %while.end.383

if.end.349:                                       ; preds = %while.body.335
  %316 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm350 = getelementptr inbounds %struct.DState, %struct.DState* %316, i32 0, i32 0
  %317 = load %struct.bz_stream*, %struct.bz_stream** %strm350, align 8
  %avail_in351 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %317, i32 0, i32 1
  %318 = load i32, i32* %avail_in351, align 4
  %cmp352 = icmp eq i32 %318, 0
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.end.349
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.355:                                       ; preds = %if.end.349
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff356 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 7
  %320 = load i32, i32* %bsBuff356, align 4
  %shl357 = shl i32 %320, 8
  %321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm358 = getelementptr inbounds %struct.DState, %struct.DState* %321, i32 0, i32 0
  %322 = load %struct.bz_stream*, %struct.bz_stream** %strm358, align 8
  %next_in359 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %322, i32 0, i32 0
  %323 = load i8*, i8** %next_in359, align 8
  %324 = load i8, i8* %323, align 1
  %conv360 = zext i8 %324 to i32
  %or361 = or i32 %shl357, %conv360
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff362 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 7
  store i32 %or361, i32* %bsBuff362, align 4
  %326 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive363 = getelementptr inbounds %struct.DState, %struct.DState* %326, i32 0, i32 8
  %327 = load i32, i32* %bsLive363, align 4
  %add364 = add nsw i32 %327, 8
  store i32 %add364, i32* %bsLive363, align 4
  %328 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm365 = getelementptr inbounds %struct.DState, %struct.DState* %328, i32 0, i32 0
  %329 = load %struct.bz_stream*, %struct.bz_stream** %strm365, align 8
  %next_in366 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %329, i32 0, i32 0
  %330 = load i8*, i8** %next_in366, align 8
  %incdec.ptr367 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %incdec.ptr367, i8** %next_in366, align 8
  %331 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm368 = getelementptr inbounds %struct.DState, %struct.DState* %331, i32 0, i32 0
  %332 = load %struct.bz_stream*, %struct.bz_stream** %strm368, align 8
  %avail_in369 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %332, i32 0, i32 1
  %333 = load i32, i32* %avail_in369, align 4
  %dec370 = add i32 %333, -1
  store i32 %dec370, i32* %avail_in369, align 4
  %334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm371 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 0
  %335 = load %struct.bz_stream*, %struct.bz_stream** %strm371, align 8
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %335, i32 0, i32 2
  %336 = load i32, i32* %total_in_lo32372, align 4
  %inc373 = add i32 %336, 1
  store i32 %inc373, i32* %total_in_lo32372, align 4
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm374 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 0
  %338 = load %struct.bz_stream*, %struct.bz_stream** %strm374, align 8
  %total_in_lo32375 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %338, i32 0, i32 2
  %339 = load i32, i32* %total_in_lo32375, align 4
  %cmp376 = icmp eq i32 %339, 0
  br i1 %cmp376, label %if.then.378, label %if.end.382

if.then.378:                                      ; preds = %if.end.355
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm379 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 0
  %341 = load %struct.bz_stream*, %struct.bz_stream** %strm379, align 8
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %341, i32 0, i32 3
  %342 = load i32, i32* %total_in_hi32380, align 4
  %inc381 = add i32 %342, 1
  store i32 %inc381, i32* %total_in_hi32380, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.378, %if.end.355
  br label %while.body.335

while.end.383:                                    ; preds = %if.then.339
  %343 = load i8, i8* %uc, align 1
  %conv384 = zext i8 %343 to i32
  %cmp385 = icmp ne i32 %conv384, 65
  br i1 %cmp385, label %if.then.387, label %if.end.388

if.then.387:                                      ; preds = %while.end.383
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.388:                                       ; preds = %while.end.383
  br label %sw.bb.389

sw.bb.389:                                        ; preds = %if.end, %if.end.388
  %344 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state390 = getelementptr inbounds %struct.DState, %struct.DState* %344, i32 0, i32 1
  store i32 16, i32* %state390, align 4
  br label %while.body.391

while.body.391:                                   ; preds = %sw.bb.389, %if.end.438
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive392 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 8
  %346 = load i32, i32* %bsLive392, align 4
  %cmp393 = icmp sge i32 %346, 8
  br i1 %cmp393, label %if.then.395, label %if.end.405

if.then.395:                                      ; preds = %while.body.391
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff397 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 7
  %348 = load i32, i32* %bsBuff397, align 4
  %349 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive398 = getelementptr inbounds %struct.DState, %struct.DState* %349, i32 0, i32 8
  %350 = load i32, i32* %bsLive398, align 4
  %sub399 = sub nsw i32 %350, 8
  %shr400 = lshr i32 %348, %sub399
  %and401 = and i32 %shr400, 255
  store i32 %and401, i32* %v396, align 4
  %351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive402 = getelementptr inbounds %struct.DState, %struct.DState* %351, i32 0, i32 8
  %352 = load i32, i32* %bsLive402, align 4
  %sub403 = sub nsw i32 %352, 8
  store i32 %sub403, i32* %bsLive402, align 4
  %353 = load i32, i32* %v396, align 4
  %conv404 = trunc i32 %353 to i8
  store i8 %conv404, i8* %uc, align 1
  br label %while.end.439

if.end.405:                                       ; preds = %while.body.391
  %354 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm406 = getelementptr inbounds %struct.DState, %struct.DState* %354, i32 0, i32 0
  %355 = load %struct.bz_stream*, %struct.bz_stream** %strm406, align 8
  %avail_in407 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %355, i32 0, i32 1
  %356 = load i32, i32* %avail_in407, align 4
  %cmp408 = icmp eq i32 %356, 0
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.405
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.411:                                       ; preds = %if.end.405
  %357 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff412 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 7
  %358 = load i32, i32* %bsBuff412, align 4
  %shl413 = shl i32 %358, 8
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm414 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 0
  %360 = load %struct.bz_stream*, %struct.bz_stream** %strm414, align 8
  %next_in415 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %360, i32 0, i32 0
  %361 = load i8*, i8** %next_in415, align 8
  %362 = load i8, i8* %361, align 1
  %conv416 = zext i8 %362 to i32
  %or417 = or i32 %shl413, %conv416
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff418 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 7
  store i32 %or417, i32* %bsBuff418, align 4
  %364 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive419 = getelementptr inbounds %struct.DState, %struct.DState* %364, i32 0, i32 8
  %365 = load i32, i32* %bsLive419, align 4
  %add420 = add nsw i32 %365, 8
  store i32 %add420, i32* %bsLive419, align 4
  %366 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm421 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 0
  %367 = load %struct.bz_stream*, %struct.bz_stream** %strm421, align 8
  %next_in422 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %367, i32 0, i32 0
  %368 = load i8*, i8** %next_in422, align 8
  %incdec.ptr423 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %incdec.ptr423, i8** %next_in422, align 8
  %369 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm424 = getelementptr inbounds %struct.DState, %struct.DState* %369, i32 0, i32 0
  %370 = load %struct.bz_stream*, %struct.bz_stream** %strm424, align 8
  %avail_in425 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %370, i32 0, i32 1
  %371 = load i32, i32* %avail_in425, align 4
  %dec426 = add i32 %371, -1
  store i32 %dec426, i32* %avail_in425, align 4
  %372 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm427 = getelementptr inbounds %struct.DState, %struct.DState* %372, i32 0, i32 0
  %373 = load %struct.bz_stream*, %struct.bz_stream** %strm427, align 8
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %373, i32 0, i32 2
  %374 = load i32, i32* %total_in_lo32428, align 4
  %inc429 = add i32 %374, 1
  store i32 %inc429, i32* %total_in_lo32428, align 4
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm430 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 0
  %376 = load %struct.bz_stream*, %struct.bz_stream** %strm430, align 8
  %total_in_lo32431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %376, i32 0, i32 2
  %377 = load i32, i32* %total_in_lo32431, align 4
  %cmp432 = icmp eq i32 %377, 0
  br i1 %cmp432, label %if.then.434, label %if.end.438

if.then.434:                                      ; preds = %if.end.411
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm435 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 0
  %379 = load %struct.bz_stream*, %struct.bz_stream** %strm435, align 8
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %379, i32 0, i32 3
  %380 = load i32, i32* %total_in_hi32436, align 4
  %inc437 = add i32 %380, 1
  store i32 %inc437, i32* %total_in_hi32436, align 4
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.434, %if.end.411
  br label %while.body.391

while.end.439:                                    ; preds = %if.then.395
  %381 = load i8, i8* %uc, align 1
  %conv440 = zext i8 %381 to i32
  %cmp441 = icmp ne i32 %conv440, 89
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %while.end.439
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.444:                                       ; preds = %while.end.439
  br label %sw.bb.445

sw.bb.445:                                        ; preds = %if.end, %if.end.444
  %382 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state446 = getelementptr inbounds %struct.DState, %struct.DState* %382, i32 0, i32 1
  store i32 17, i32* %state446, align 4
  br label %while.body.447

while.body.447:                                   ; preds = %sw.bb.445, %if.end.494
  %383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive448 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 8
  %384 = load i32, i32* %bsLive448, align 4
  %cmp449 = icmp sge i32 %384, 8
  br i1 %cmp449, label %if.then.451, label %if.end.461

if.then.451:                                      ; preds = %while.body.447
  %385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff453 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 7
  %386 = load i32, i32* %bsBuff453, align 4
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive454 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 8
  %388 = load i32, i32* %bsLive454, align 4
  %sub455 = sub nsw i32 %388, 8
  %shr456 = lshr i32 %386, %sub455
  %and457 = and i32 %shr456, 255
  store i32 %and457, i32* %v452, align 4
  %389 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive458 = getelementptr inbounds %struct.DState, %struct.DState* %389, i32 0, i32 8
  %390 = load i32, i32* %bsLive458, align 4
  %sub459 = sub nsw i32 %390, 8
  store i32 %sub459, i32* %bsLive458, align 4
  %391 = load i32, i32* %v452, align 4
  %conv460 = trunc i32 %391 to i8
  store i8 %conv460, i8* %uc, align 1
  br label %while.end.495

if.end.461:                                       ; preds = %while.body.447
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm462 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 0
  %393 = load %struct.bz_stream*, %struct.bz_stream** %strm462, align 8
  %avail_in463 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %393, i32 0, i32 1
  %394 = load i32, i32* %avail_in463, align 4
  %cmp464 = icmp eq i32 %394, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.461
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.467:                                       ; preds = %if.end.461
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff468 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 7
  %396 = load i32, i32* %bsBuff468, align 4
  %shl469 = shl i32 %396, 8
  %397 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm470 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 0
  %398 = load %struct.bz_stream*, %struct.bz_stream** %strm470, align 8
  %next_in471 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %398, i32 0, i32 0
  %399 = load i8*, i8** %next_in471, align 8
  %400 = load i8, i8* %399, align 1
  %conv472 = zext i8 %400 to i32
  %or473 = or i32 %shl469, %conv472
  %401 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff474 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 7
  store i32 %or473, i32* %bsBuff474, align 4
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive475 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 8
  %403 = load i32, i32* %bsLive475, align 4
  %add476 = add nsw i32 %403, 8
  store i32 %add476, i32* %bsLive475, align 4
  %404 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm477 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 0
  %405 = load %struct.bz_stream*, %struct.bz_stream** %strm477, align 8
  %next_in478 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %405, i32 0, i32 0
  %406 = load i8*, i8** %next_in478, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %incdec.ptr479, i8** %next_in478, align 8
  %407 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm480 = getelementptr inbounds %struct.DState, %struct.DState* %407, i32 0, i32 0
  %408 = load %struct.bz_stream*, %struct.bz_stream** %strm480, align 8
  %avail_in481 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %408, i32 0, i32 1
  %409 = load i32, i32* %avail_in481, align 4
  %dec482 = add i32 %409, -1
  store i32 %dec482, i32* %avail_in481, align 4
  %410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm483 = getelementptr inbounds %struct.DState, %struct.DState* %410, i32 0, i32 0
  %411 = load %struct.bz_stream*, %struct.bz_stream** %strm483, align 8
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %411, i32 0, i32 2
  %412 = load i32, i32* %total_in_lo32484, align 4
  %inc485 = add i32 %412, 1
  store i32 %inc485, i32* %total_in_lo32484, align 4
  %413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm486 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 0
  %414 = load %struct.bz_stream*, %struct.bz_stream** %strm486, align 8
  %total_in_lo32487 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %414, i32 0, i32 2
  %415 = load i32, i32* %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %415, 0
  br i1 %cmp488, label %if.then.490, label %if.end.494

if.then.490:                                      ; preds = %if.end.467
  %416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm491 = getelementptr inbounds %struct.DState, %struct.DState* %416, i32 0, i32 0
  %417 = load %struct.bz_stream*, %struct.bz_stream** %strm491, align 8
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %417, i32 0, i32 3
  %418 = load i32, i32* %total_in_hi32492, align 4
  %inc493 = add i32 %418, 1
  store i32 %inc493, i32* %total_in_hi32492, align 4
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.490, %if.end.467
  br label %while.body.447

while.end.495:                                    ; preds = %if.then.451
  %419 = load i8, i8* %uc, align 1
  %conv496 = zext i8 %419 to i32
  %cmp497 = icmp ne i32 %conv496, 38
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %while.end.495
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.500:                                       ; preds = %while.end.495
  br label %sw.bb.501

sw.bb.501:                                        ; preds = %if.end, %if.end.500
  %420 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state502 = getelementptr inbounds %struct.DState, %struct.DState* %420, i32 0, i32 1
  store i32 18, i32* %state502, align 4
  br label %while.body.503

while.body.503:                                   ; preds = %sw.bb.501, %if.end.550
  %421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive504 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 8
  %422 = load i32, i32* %bsLive504, align 4
  %cmp505 = icmp sge i32 %422, 8
  br i1 %cmp505, label %if.then.507, label %if.end.517

if.then.507:                                      ; preds = %while.body.503
  %423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff509 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 7
  %424 = load i32, i32* %bsBuff509, align 4
  %425 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive510 = getelementptr inbounds %struct.DState, %struct.DState* %425, i32 0, i32 8
  %426 = load i32, i32* %bsLive510, align 4
  %sub511 = sub nsw i32 %426, 8
  %shr512 = lshr i32 %424, %sub511
  %and513 = and i32 %shr512, 255
  store i32 %and513, i32* %v508, align 4
  %427 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive514 = getelementptr inbounds %struct.DState, %struct.DState* %427, i32 0, i32 8
  %428 = load i32, i32* %bsLive514, align 4
  %sub515 = sub nsw i32 %428, 8
  store i32 %sub515, i32* %bsLive514, align 4
  %429 = load i32, i32* %v508, align 4
  %conv516 = trunc i32 %429 to i8
  store i8 %conv516, i8* %uc, align 1
  br label %while.end.551

if.end.517:                                       ; preds = %while.body.503
  %430 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm518 = getelementptr inbounds %struct.DState, %struct.DState* %430, i32 0, i32 0
  %431 = load %struct.bz_stream*, %struct.bz_stream** %strm518, align 8
  %avail_in519 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %431, i32 0, i32 1
  %432 = load i32, i32* %avail_in519, align 4
  %cmp520 = icmp eq i32 %432, 0
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %if.end.517
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.523:                                       ; preds = %if.end.517
  %433 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff524 = getelementptr inbounds %struct.DState, %struct.DState* %433, i32 0, i32 7
  %434 = load i32, i32* %bsBuff524, align 4
  %shl525 = shl i32 %434, 8
  %435 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm526 = getelementptr inbounds %struct.DState, %struct.DState* %435, i32 0, i32 0
  %436 = load %struct.bz_stream*, %struct.bz_stream** %strm526, align 8
  %next_in527 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %436, i32 0, i32 0
  %437 = load i8*, i8** %next_in527, align 8
  %438 = load i8, i8* %437, align 1
  %conv528 = zext i8 %438 to i32
  %or529 = or i32 %shl525, %conv528
  %439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff530 = getelementptr inbounds %struct.DState, %struct.DState* %439, i32 0, i32 7
  store i32 %or529, i32* %bsBuff530, align 4
  %440 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive531 = getelementptr inbounds %struct.DState, %struct.DState* %440, i32 0, i32 8
  %441 = load i32, i32* %bsLive531, align 4
  %add532 = add nsw i32 %441, 8
  store i32 %add532, i32* %bsLive531, align 4
  %442 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm533 = getelementptr inbounds %struct.DState, %struct.DState* %442, i32 0, i32 0
  %443 = load %struct.bz_stream*, %struct.bz_stream** %strm533, align 8
  %next_in534 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %443, i32 0, i32 0
  %444 = load i8*, i8** %next_in534, align 8
  %incdec.ptr535 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %incdec.ptr535, i8** %next_in534, align 8
  %445 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm536 = getelementptr inbounds %struct.DState, %struct.DState* %445, i32 0, i32 0
  %446 = load %struct.bz_stream*, %struct.bz_stream** %strm536, align 8
  %avail_in537 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %446, i32 0, i32 1
  %447 = load i32, i32* %avail_in537, align 4
  %dec538 = add i32 %447, -1
  store i32 %dec538, i32* %avail_in537, align 4
  %448 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm539 = getelementptr inbounds %struct.DState, %struct.DState* %448, i32 0, i32 0
  %449 = load %struct.bz_stream*, %struct.bz_stream** %strm539, align 8
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %449, i32 0, i32 2
  %450 = load i32, i32* %total_in_lo32540, align 4
  %inc541 = add i32 %450, 1
  store i32 %inc541, i32* %total_in_lo32540, align 4
  %451 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm542 = getelementptr inbounds %struct.DState, %struct.DState* %451, i32 0, i32 0
  %452 = load %struct.bz_stream*, %struct.bz_stream** %strm542, align 8
  %total_in_lo32543 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %452, i32 0, i32 2
  %453 = load i32, i32* %total_in_lo32543, align 4
  %cmp544 = icmp eq i32 %453, 0
  br i1 %cmp544, label %if.then.546, label %if.end.550

if.then.546:                                      ; preds = %if.end.523
  %454 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm547 = getelementptr inbounds %struct.DState, %struct.DState* %454, i32 0, i32 0
  %455 = load %struct.bz_stream*, %struct.bz_stream** %strm547, align 8
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %455, i32 0, i32 3
  %456 = load i32, i32* %total_in_hi32548, align 4
  %inc549 = add i32 %456, 1
  store i32 %inc549, i32* %total_in_hi32548, align 4
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.546, %if.end.523
  br label %while.body.503

while.end.551:                                    ; preds = %if.then.507
  %457 = load i8, i8* %uc, align 1
  %conv552 = zext i8 %457 to i32
  %cmp553 = icmp ne i32 %conv552, 83
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %while.end.551
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.556:                                       ; preds = %while.end.551
  br label %sw.bb.557

sw.bb.557:                                        ; preds = %if.end, %if.end.556
  %458 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state558 = getelementptr inbounds %struct.DState, %struct.DState* %458, i32 0, i32 1
  store i32 19, i32* %state558, align 4
  br label %while.body.559

while.body.559:                                   ; preds = %sw.bb.557, %if.end.606
  %459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive560 = getelementptr inbounds %struct.DState, %struct.DState* %459, i32 0, i32 8
  %460 = load i32, i32* %bsLive560, align 4
  %cmp561 = icmp sge i32 %460, 8
  br i1 %cmp561, label %if.then.563, label %if.end.573

if.then.563:                                      ; preds = %while.body.559
  %461 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff565 = getelementptr inbounds %struct.DState, %struct.DState* %461, i32 0, i32 7
  %462 = load i32, i32* %bsBuff565, align 4
  %463 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive566 = getelementptr inbounds %struct.DState, %struct.DState* %463, i32 0, i32 8
  %464 = load i32, i32* %bsLive566, align 4
  %sub567 = sub nsw i32 %464, 8
  %shr568 = lshr i32 %462, %sub567
  %and569 = and i32 %shr568, 255
  store i32 %and569, i32* %v564, align 4
  %465 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive570 = getelementptr inbounds %struct.DState, %struct.DState* %465, i32 0, i32 8
  %466 = load i32, i32* %bsLive570, align 4
  %sub571 = sub nsw i32 %466, 8
  store i32 %sub571, i32* %bsLive570, align 4
  %467 = load i32, i32* %v564, align 4
  %conv572 = trunc i32 %467 to i8
  store i8 %conv572, i8* %uc, align 1
  br label %while.end.607

if.end.573:                                       ; preds = %while.body.559
  %468 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm574 = getelementptr inbounds %struct.DState, %struct.DState* %468, i32 0, i32 0
  %469 = load %struct.bz_stream*, %struct.bz_stream** %strm574, align 8
  %avail_in575 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %469, i32 0, i32 1
  %470 = load i32, i32* %avail_in575, align 4
  %cmp576 = icmp eq i32 %470, 0
  br i1 %cmp576, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %if.end.573
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.579:                                       ; preds = %if.end.573
  %471 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff580 = getelementptr inbounds %struct.DState, %struct.DState* %471, i32 0, i32 7
  %472 = load i32, i32* %bsBuff580, align 4
  %shl581 = shl i32 %472, 8
  %473 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm582 = getelementptr inbounds %struct.DState, %struct.DState* %473, i32 0, i32 0
  %474 = load %struct.bz_stream*, %struct.bz_stream** %strm582, align 8
  %next_in583 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %474, i32 0, i32 0
  %475 = load i8*, i8** %next_in583, align 8
  %476 = load i8, i8* %475, align 1
  %conv584 = zext i8 %476 to i32
  %or585 = or i32 %shl581, %conv584
  %477 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff586 = getelementptr inbounds %struct.DState, %struct.DState* %477, i32 0, i32 7
  store i32 %or585, i32* %bsBuff586, align 4
  %478 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive587 = getelementptr inbounds %struct.DState, %struct.DState* %478, i32 0, i32 8
  %479 = load i32, i32* %bsLive587, align 4
  %add588 = add nsw i32 %479, 8
  store i32 %add588, i32* %bsLive587, align 4
  %480 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm589 = getelementptr inbounds %struct.DState, %struct.DState* %480, i32 0, i32 0
  %481 = load %struct.bz_stream*, %struct.bz_stream** %strm589, align 8
  %next_in590 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %481, i32 0, i32 0
  %482 = load i8*, i8** %next_in590, align 8
  %incdec.ptr591 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %incdec.ptr591, i8** %next_in590, align 8
  %483 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm592 = getelementptr inbounds %struct.DState, %struct.DState* %483, i32 0, i32 0
  %484 = load %struct.bz_stream*, %struct.bz_stream** %strm592, align 8
  %avail_in593 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %484, i32 0, i32 1
  %485 = load i32, i32* %avail_in593, align 4
  %dec594 = add i32 %485, -1
  store i32 %dec594, i32* %avail_in593, align 4
  %486 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm595 = getelementptr inbounds %struct.DState, %struct.DState* %486, i32 0, i32 0
  %487 = load %struct.bz_stream*, %struct.bz_stream** %strm595, align 8
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %487, i32 0, i32 2
  %488 = load i32, i32* %total_in_lo32596, align 4
  %inc597 = add i32 %488, 1
  store i32 %inc597, i32* %total_in_lo32596, align 4
  %489 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm598 = getelementptr inbounds %struct.DState, %struct.DState* %489, i32 0, i32 0
  %490 = load %struct.bz_stream*, %struct.bz_stream** %strm598, align 8
  %total_in_lo32599 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %490, i32 0, i32 2
  %491 = load i32, i32* %total_in_lo32599, align 4
  %cmp600 = icmp eq i32 %491, 0
  br i1 %cmp600, label %if.then.602, label %if.end.606

if.then.602:                                      ; preds = %if.end.579
  %492 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm603 = getelementptr inbounds %struct.DState, %struct.DState* %492, i32 0, i32 0
  %493 = load %struct.bz_stream*, %struct.bz_stream** %strm603, align 8
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %493, i32 0, i32 3
  %494 = load i32, i32* %total_in_hi32604, align 4
  %inc605 = add i32 %494, 1
  store i32 %inc605, i32* %total_in_hi32604, align 4
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.602, %if.end.579
  br label %while.body.559

while.end.607:                                    ; preds = %if.then.563
  %495 = load i8, i8* %uc, align 1
  %conv608 = zext i8 %495 to i32
  %cmp609 = icmp ne i32 %conv608, 89
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %while.end.607
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.612:                                       ; preds = %while.end.607
  %496 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %496, i32 0, i32 11
  %497 = load i32, i32* %currBlockNo, align 4
  %inc613 = add nsw i32 %497, 1
  store i32 %inc613, i32* %currBlockNo, align 4
  %498 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %498, i32 0, i32 12
  %499 = load i32, i32* %verbosity, align 4
  %cmp614 = icmp sge i32 %499, 2
  br i1 %cmp614, label %if.then.616, label %if.end.619

if.then.616:                                      ; preds = %if.end.612
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %501 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %currBlockNo617 = getelementptr inbounds %struct.DState, %struct.DState* %501, i32 0, i32 11
  %502 = load i32, i32* %currBlockNo617, align 4
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %500, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %502)
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.616, %if.end.612
  %503 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %503, i32 0, i32 23
  store i32 0, i32* %storedBlockCRC, align 4
  br label %sw.bb.620

sw.bb.620:                                        ; preds = %if.end, %if.end.619
  %504 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state621 = getelementptr inbounds %struct.DState, %struct.DState* %504, i32 0, i32 1
  store i32 20, i32* %state621, align 4
  br label %while.body.622

while.body.622:                                   ; preds = %sw.bb.620, %if.end.669
  %505 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive623 = getelementptr inbounds %struct.DState, %struct.DState* %505, i32 0, i32 8
  %506 = load i32, i32* %bsLive623, align 4
  %cmp624 = icmp sge i32 %506, 8
  br i1 %cmp624, label %if.then.626, label %if.end.636

if.then.626:                                      ; preds = %while.body.622
  %507 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff628 = getelementptr inbounds %struct.DState, %struct.DState* %507, i32 0, i32 7
  %508 = load i32, i32* %bsBuff628, align 4
  %509 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive629 = getelementptr inbounds %struct.DState, %struct.DState* %509, i32 0, i32 8
  %510 = load i32, i32* %bsLive629, align 4
  %sub630 = sub nsw i32 %510, 8
  %shr631 = lshr i32 %508, %sub630
  %and632 = and i32 %shr631, 255
  store i32 %and632, i32* %v627, align 4
  %511 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive633 = getelementptr inbounds %struct.DState, %struct.DState* %511, i32 0, i32 8
  %512 = load i32, i32* %bsLive633, align 4
  %sub634 = sub nsw i32 %512, 8
  store i32 %sub634, i32* %bsLive633, align 4
  %513 = load i32, i32* %v627, align 4
  %conv635 = trunc i32 %513 to i8
  store i8 %conv635, i8* %uc, align 1
  br label %while.end.670

if.end.636:                                       ; preds = %while.body.622
  %514 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm637 = getelementptr inbounds %struct.DState, %struct.DState* %514, i32 0, i32 0
  %515 = load %struct.bz_stream*, %struct.bz_stream** %strm637, align 8
  %avail_in638 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %515, i32 0, i32 1
  %516 = load i32, i32* %avail_in638, align 4
  %cmp639 = icmp eq i32 %516, 0
  br i1 %cmp639, label %if.then.641, label %if.end.642

if.then.641:                                      ; preds = %if.end.636
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.642:                                       ; preds = %if.end.636
  %517 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff643 = getelementptr inbounds %struct.DState, %struct.DState* %517, i32 0, i32 7
  %518 = load i32, i32* %bsBuff643, align 4
  %shl644 = shl i32 %518, 8
  %519 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm645 = getelementptr inbounds %struct.DState, %struct.DState* %519, i32 0, i32 0
  %520 = load %struct.bz_stream*, %struct.bz_stream** %strm645, align 8
  %next_in646 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %520, i32 0, i32 0
  %521 = load i8*, i8** %next_in646, align 8
  %522 = load i8, i8* %521, align 1
  %conv647 = zext i8 %522 to i32
  %or648 = or i32 %shl644, %conv647
  %523 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff649 = getelementptr inbounds %struct.DState, %struct.DState* %523, i32 0, i32 7
  store i32 %or648, i32* %bsBuff649, align 4
  %524 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive650 = getelementptr inbounds %struct.DState, %struct.DState* %524, i32 0, i32 8
  %525 = load i32, i32* %bsLive650, align 4
  %add651 = add nsw i32 %525, 8
  store i32 %add651, i32* %bsLive650, align 4
  %526 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm652 = getelementptr inbounds %struct.DState, %struct.DState* %526, i32 0, i32 0
  %527 = load %struct.bz_stream*, %struct.bz_stream** %strm652, align 8
  %next_in653 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %527, i32 0, i32 0
  %528 = load i8*, i8** %next_in653, align 8
  %incdec.ptr654 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %incdec.ptr654, i8** %next_in653, align 8
  %529 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm655 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 0
  %530 = load %struct.bz_stream*, %struct.bz_stream** %strm655, align 8
  %avail_in656 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %530, i32 0, i32 1
  %531 = load i32, i32* %avail_in656, align 4
  %dec657 = add i32 %531, -1
  store i32 %dec657, i32* %avail_in656, align 4
  %532 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm658 = getelementptr inbounds %struct.DState, %struct.DState* %532, i32 0, i32 0
  %533 = load %struct.bz_stream*, %struct.bz_stream** %strm658, align 8
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %533, i32 0, i32 2
  %534 = load i32, i32* %total_in_lo32659, align 4
  %inc660 = add i32 %534, 1
  store i32 %inc660, i32* %total_in_lo32659, align 4
  %535 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm661 = getelementptr inbounds %struct.DState, %struct.DState* %535, i32 0, i32 0
  %536 = load %struct.bz_stream*, %struct.bz_stream** %strm661, align 8
  %total_in_lo32662 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %536, i32 0, i32 2
  %537 = load i32, i32* %total_in_lo32662, align 4
  %cmp663 = icmp eq i32 %537, 0
  br i1 %cmp663, label %if.then.665, label %if.end.669

if.then.665:                                      ; preds = %if.end.642
  %538 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm666 = getelementptr inbounds %struct.DState, %struct.DState* %538, i32 0, i32 0
  %539 = load %struct.bz_stream*, %struct.bz_stream** %strm666, align 8
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %539, i32 0, i32 3
  %540 = load i32, i32* %total_in_hi32667, align 4
  %inc668 = add i32 %540, 1
  store i32 %inc668, i32* %total_in_hi32667, align 4
  br label %if.end.669

if.end.669:                                       ; preds = %if.then.665, %if.end.642
  br label %while.body.622

while.end.670:                                    ; preds = %if.then.626
  %541 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC671 = getelementptr inbounds %struct.DState, %struct.DState* %541, i32 0, i32 23
  %542 = load i32, i32* %storedBlockCRC671, align 4
  %shl672 = shl i32 %542, 8
  %543 = load i8, i8* %uc, align 1
  %conv673 = zext i8 %543 to i32
  %or674 = or i32 %shl672, %conv673
  %544 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC675 = getelementptr inbounds %struct.DState, %struct.DState* %544, i32 0, i32 23
  store i32 %or674, i32* %storedBlockCRC675, align 4
  br label %sw.bb.676

sw.bb.676:                                        ; preds = %if.end, %while.end.670
  %545 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state677 = getelementptr inbounds %struct.DState, %struct.DState* %545, i32 0, i32 1
  store i32 21, i32* %state677, align 4
  br label %while.body.678

while.body.678:                                   ; preds = %sw.bb.676, %if.end.725
  %546 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive679 = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 8
  %547 = load i32, i32* %bsLive679, align 4
  %cmp680 = icmp sge i32 %547, 8
  br i1 %cmp680, label %if.then.682, label %if.end.692

if.then.682:                                      ; preds = %while.body.678
  %548 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff684 = getelementptr inbounds %struct.DState, %struct.DState* %548, i32 0, i32 7
  %549 = load i32, i32* %bsBuff684, align 4
  %550 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive685 = getelementptr inbounds %struct.DState, %struct.DState* %550, i32 0, i32 8
  %551 = load i32, i32* %bsLive685, align 4
  %sub686 = sub nsw i32 %551, 8
  %shr687 = lshr i32 %549, %sub686
  %and688 = and i32 %shr687, 255
  store i32 %and688, i32* %v683, align 4
  %552 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive689 = getelementptr inbounds %struct.DState, %struct.DState* %552, i32 0, i32 8
  %553 = load i32, i32* %bsLive689, align 4
  %sub690 = sub nsw i32 %553, 8
  store i32 %sub690, i32* %bsLive689, align 4
  %554 = load i32, i32* %v683, align 4
  %conv691 = trunc i32 %554 to i8
  store i8 %conv691, i8* %uc, align 1
  br label %while.end.726

if.end.692:                                       ; preds = %while.body.678
  %555 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm693 = getelementptr inbounds %struct.DState, %struct.DState* %555, i32 0, i32 0
  %556 = load %struct.bz_stream*, %struct.bz_stream** %strm693, align 8
  %avail_in694 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %556, i32 0, i32 1
  %557 = load i32, i32* %avail_in694, align 4
  %cmp695 = icmp eq i32 %557, 0
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %if.end.692
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.698:                                       ; preds = %if.end.692
  %558 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff699 = getelementptr inbounds %struct.DState, %struct.DState* %558, i32 0, i32 7
  %559 = load i32, i32* %bsBuff699, align 4
  %shl700 = shl i32 %559, 8
  %560 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm701 = getelementptr inbounds %struct.DState, %struct.DState* %560, i32 0, i32 0
  %561 = load %struct.bz_stream*, %struct.bz_stream** %strm701, align 8
  %next_in702 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %561, i32 0, i32 0
  %562 = load i8*, i8** %next_in702, align 8
  %563 = load i8, i8* %562, align 1
  %conv703 = zext i8 %563 to i32
  %or704 = or i32 %shl700, %conv703
  %564 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff705 = getelementptr inbounds %struct.DState, %struct.DState* %564, i32 0, i32 7
  store i32 %or704, i32* %bsBuff705, align 4
  %565 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive706 = getelementptr inbounds %struct.DState, %struct.DState* %565, i32 0, i32 8
  %566 = load i32, i32* %bsLive706, align 4
  %add707 = add nsw i32 %566, 8
  store i32 %add707, i32* %bsLive706, align 4
  %567 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm708 = getelementptr inbounds %struct.DState, %struct.DState* %567, i32 0, i32 0
  %568 = load %struct.bz_stream*, %struct.bz_stream** %strm708, align 8
  %next_in709 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %568, i32 0, i32 0
  %569 = load i8*, i8** %next_in709, align 8
  %incdec.ptr710 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %incdec.ptr710, i8** %next_in709, align 8
  %570 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm711 = getelementptr inbounds %struct.DState, %struct.DState* %570, i32 0, i32 0
  %571 = load %struct.bz_stream*, %struct.bz_stream** %strm711, align 8
  %avail_in712 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %571, i32 0, i32 1
  %572 = load i32, i32* %avail_in712, align 4
  %dec713 = add i32 %572, -1
  store i32 %dec713, i32* %avail_in712, align 4
  %573 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm714 = getelementptr inbounds %struct.DState, %struct.DState* %573, i32 0, i32 0
  %574 = load %struct.bz_stream*, %struct.bz_stream** %strm714, align 8
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %574, i32 0, i32 2
  %575 = load i32, i32* %total_in_lo32715, align 4
  %inc716 = add i32 %575, 1
  store i32 %inc716, i32* %total_in_lo32715, align 4
  %576 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm717 = getelementptr inbounds %struct.DState, %struct.DState* %576, i32 0, i32 0
  %577 = load %struct.bz_stream*, %struct.bz_stream** %strm717, align 8
  %total_in_lo32718 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %577, i32 0, i32 2
  %578 = load i32, i32* %total_in_lo32718, align 4
  %cmp719 = icmp eq i32 %578, 0
  br i1 %cmp719, label %if.then.721, label %if.end.725

if.then.721:                                      ; preds = %if.end.698
  %579 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm722 = getelementptr inbounds %struct.DState, %struct.DState* %579, i32 0, i32 0
  %580 = load %struct.bz_stream*, %struct.bz_stream** %strm722, align 8
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %580, i32 0, i32 3
  %581 = load i32, i32* %total_in_hi32723, align 4
  %inc724 = add i32 %581, 1
  store i32 %inc724, i32* %total_in_hi32723, align 4
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.721, %if.end.698
  br label %while.body.678

while.end.726:                                    ; preds = %if.then.682
  %582 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC727 = getelementptr inbounds %struct.DState, %struct.DState* %582, i32 0, i32 23
  %583 = load i32, i32* %storedBlockCRC727, align 4
  %shl728 = shl i32 %583, 8
  %584 = load i8, i8* %uc, align 1
  %conv729 = zext i8 %584 to i32
  %or730 = or i32 %shl728, %conv729
  %585 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC731 = getelementptr inbounds %struct.DState, %struct.DState* %585, i32 0, i32 23
  store i32 %or730, i32* %storedBlockCRC731, align 4
  br label %sw.bb.732

sw.bb.732:                                        ; preds = %if.end, %while.end.726
  %586 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state733 = getelementptr inbounds %struct.DState, %struct.DState* %586, i32 0, i32 1
  store i32 22, i32* %state733, align 4
  br label %while.body.734

while.body.734:                                   ; preds = %sw.bb.732, %if.end.781
  %587 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive735 = getelementptr inbounds %struct.DState, %struct.DState* %587, i32 0, i32 8
  %588 = load i32, i32* %bsLive735, align 4
  %cmp736 = icmp sge i32 %588, 8
  br i1 %cmp736, label %if.then.738, label %if.end.748

if.then.738:                                      ; preds = %while.body.734
  %589 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff740 = getelementptr inbounds %struct.DState, %struct.DState* %589, i32 0, i32 7
  %590 = load i32, i32* %bsBuff740, align 4
  %591 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive741 = getelementptr inbounds %struct.DState, %struct.DState* %591, i32 0, i32 8
  %592 = load i32, i32* %bsLive741, align 4
  %sub742 = sub nsw i32 %592, 8
  %shr743 = lshr i32 %590, %sub742
  %and744 = and i32 %shr743, 255
  store i32 %and744, i32* %v739, align 4
  %593 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive745 = getelementptr inbounds %struct.DState, %struct.DState* %593, i32 0, i32 8
  %594 = load i32, i32* %bsLive745, align 4
  %sub746 = sub nsw i32 %594, 8
  store i32 %sub746, i32* %bsLive745, align 4
  %595 = load i32, i32* %v739, align 4
  %conv747 = trunc i32 %595 to i8
  store i8 %conv747, i8* %uc, align 1
  br label %while.end.782

if.end.748:                                       ; preds = %while.body.734
  %596 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm749 = getelementptr inbounds %struct.DState, %struct.DState* %596, i32 0, i32 0
  %597 = load %struct.bz_stream*, %struct.bz_stream** %strm749, align 8
  %avail_in750 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %597, i32 0, i32 1
  %598 = load i32, i32* %avail_in750, align 4
  %cmp751 = icmp eq i32 %598, 0
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %if.end.748
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.754:                                       ; preds = %if.end.748
  %599 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff755 = getelementptr inbounds %struct.DState, %struct.DState* %599, i32 0, i32 7
  %600 = load i32, i32* %bsBuff755, align 4
  %shl756 = shl i32 %600, 8
  %601 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm757 = getelementptr inbounds %struct.DState, %struct.DState* %601, i32 0, i32 0
  %602 = load %struct.bz_stream*, %struct.bz_stream** %strm757, align 8
  %next_in758 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %602, i32 0, i32 0
  %603 = load i8*, i8** %next_in758, align 8
  %604 = load i8, i8* %603, align 1
  %conv759 = zext i8 %604 to i32
  %or760 = or i32 %shl756, %conv759
  %605 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff761 = getelementptr inbounds %struct.DState, %struct.DState* %605, i32 0, i32 7
  store i32 %or760, i32* %bsBuff761, align 4
  %606 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive762 = getelementptr inbounds %struct.DState, %struct.DState* %606, i32 0, i32 8
  %607 = load i32, i32* %bsLive762, align 4
  %add763 = add nsw i32 %607, 8
  store i32 %add763, i32* %bsLive762, align 4
  %608 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm764 = getelementptr inbounds %struct.DState, %struct.DState* %608, i32 0, i32 0
  %609 = load %struct.bz_stream*, %struct.bz_stream** %strm764, align 8
  %next_in765 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %609, i32 0, i32 0
  %610 = load i8*, i8** %next_in765, align 8
  %incdec.ptr766 = getelementptr inbounds i8, i8* %610, i32 1
  store i8* %incdec.ptr766, i8** %next_in765, align 8
  %611 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm767 = getelementptr inbounds %struct.DState, %struct.DState* %611, i32 0, i32 0
  %612 = load %struct.bz_stream*, %struct.bz_stream** %strm767, align 8
  %avail_in768 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %612, i32 0, i32 1
  %613 = load i32, i32* %avail_in768, align 4
  %dec769 = add i32 %613, -1
  store i32 %dec769, i32* %avail_in768, align 4
  %614 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm770 = getelementptr inbounds %struct.DState, %struct.DState* %614, i32 0, i32 0
  %615 = load %struct.bz_stream*, %struct.bz_stream** %strm770, align 8
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %615, i32 0, i32 2
  %616 = load i32, i32* %total_in_lo32771, align 4
  %inc772 = add i32 %616, 1
  store i32 %inc772, i32* %total_in_lo32771, align 4
  %617 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm773 = getelementptr inbounds %struct.DState, %struct.DState* %617, i32 0, i32 0
  %618 = load %struct.bz_stream*, %struct.bz_stream** %strm773, align 8
  %total_in_lo32774 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %618, i32 0, i32 2
  %619 = load i32, i32* %total_in_lo32774, align 4
  %cmp775 = icmp eq i32 %619, 0
  br i1 %cmp775, label %if.then.777, label %if.end.781

if.then.777:                                      ; preds = %if.end.754
  %620 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm778 = getelementptr inbounds %struct.DState, %struct.DState* %620, i32 0, i32 0
  %621 = load %struct.bz_stream*, %struct.bz_stream** %strm778, align 8
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %621, i32 0, i32 3
  %622 = load i32, i32* %total_in_hi32779, align 4
  %inc780 = add i32 %622, 1
  store i32 %inc780, i32* %total_in_hi32779, align 4
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.777, %if.end.754
  br label %while.body.734

while.end.782:                                    ; preds = %if.then.738
  %623 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC783 = getelementptr inbounds %struct.DState, %struct.DState* %623, i32 0, i32 23
  %624 = load i32, i32* %storedBlockCRC783, align 4
  %shl784 = shl i32 %624, 8
  %625 = load i8, i8* %uc, align 1
  %conv785 = zext i8 %625 to i32
  %or786 = or i32 %shl784, %conv785
  %626 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC787 = getelementptr inbounds %struct.DState, %struct.DState* %626, i32 0, i32 23
  store i32 %or786, i32* %storedBlockCRC787, align 4
  br label %sw.bb.788

sw.bb.788:                                        ; preds = %if.end, %while.end.782
  %627 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state789 = getelementptr inbounds %struct.DState, %struct.DState* %627, i32 0, i32 1
  store i32 23, i32* %state789, align 4
  br label %while.body.790

while.body.790:                                   ; preds = %sw.bb.788, %if.end.837
  %628 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive791 = getelementptr inbounds %struct.DState, %struct.DState* %628, i32 0, i32 8
  %629 = load i32, i32* %bsLive791, align 4
  %cmp792 = icmp sge i32 %629, 8
  br i1 %cmp792, label %if.then.794, label %if.end.804

if.then.794:                                      ; preds = %while.body.790
  %630 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff796 = getelementptr inbounds %struct.DState, %struct.DState* %630, i32 0, i32 7
  %631 = load i32, i32* %bsBuff796, align 4
  %632 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive797 = getelementptr inbounds %struct.DState, %struct.DState* %632, i32 0, i32 8
  %633 = load i32, i32* %bsLive797, align 4
  %sub798 = sub nsw i32 %633, 8
  %shr799 = lshr i32 %631, %sub798
  %and800 = and i32 %shr799, 255
  store i32 %and800, i32* %v795, align 4
  %634 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive801 = getelementptr inbounds %struct.DState, %struct.DState* %634, i32 0, i32 8
  %635 = load i32, i32* %bsLive801, align 4
  %sub802 = sub nsw i32 %635, 8
  store i32 %sub802, i32* %bsLive801, align 4
  %636 = load i32, i32* %v795, align 4
  %conv803 = trunc i32 %636 to i8
  store i8 %conv803, i8* %uc, align 1
  br label %while.end.838

if.end.804:                                       ; preds = %while.body.790
  %637 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm805 = getelementptr inbounds %struct.DState, %struct.DState* %637, i32 0, i32 0
  %638 = load %struct.bz_stream*, %struct.bz_stream** %strm805, align 8
  %avail_in806 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %638, i32 0, i32 1
  %639 = load i32, i32* %avail_in806, align 4
  %cmp807 = icmp eq i32 %639, 0
  br i1 %cmp807, label %if.then.809, label %if.end.810

if.then.809:                                      ; preds = %if.end.804
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.810:                                       ; preds = %if.end.804
  %640 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff811 = getelementptr inbounds %struct.DState, %struct.DState* %640, i32 0, i32 7
  %641 = load i32, i32* %bsBuff811, align 4
  %shl812 = shl i32 %641, 8
  %642 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm813 = getelementptr inbounds %struct.DState, %struct.DState* %642, i32 0, i32 0
  %643 = load %struct.bz_stream*, %struct.bz_stream** %strm813, align 8
  %next_in814 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %643, i32 0, i32 0
  %644 = load i8*, i8** %next_in814, align 8
  %645 = load i8, i8* %644, align 1
  %conv815 = zext i8 %645 to i32
  %or816 = or i32 %shl812, %conv815
  %646 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff817 = getelementptr inbounds %struct.DState, %struct.DState* %646, i32 0, i32 7
  store i32 %or816, i32* %bsBuff817, align 4
  %647 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive818 = getelementptr inbounds %struct.DState, %struct.DState* %647, i32 0, i32 8
  %648 = load i32, i32* %bsLive818, align 4
  %add819 = add nsw i32 %648, 8
  store i32 %add819, i32* %bsLive818, align 4
  %649 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm820 = getelementptr inbounds %struct.DState, %struct.DState* %649, i32 0, i32 0
  %650 = load %struct.bz_stream*, %struct.bz_stream** %strm820, align 8
  %next_in821 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %650, i32 0, i32 0
  %651 = load i8*, i8** %next_in821, align 8
  %incdec.ptr822 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %incdec.ptr822, i8** %next_in821, align 8
  %652 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm823 = getelementptr inbounds %struct.DState, %struct.DState* %652, i32 0, i32 0
  %653 = load %struct.bz_stream*, %struct.bz_stream** %strm823, align 8
  %avail_in824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %653, i32 0, i32 1
  %654 = load i32, i32* %avail_in824, align 4
  %dec825 = add i32 %654, -1
  store i32 %dec825, i32* %avail_in824, align 4
  %655 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm826 = getelementptr inbounds %struct.DState, %struct.DState* %655, i32 0, i32 0
  %656 = load %struct.bz_stream*, %struct.bz_stream** %strm826, align 8
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %656, i32 0, i32 2
  %657 = load i32, i32* %total_in_lo32827, align 4
  %inc828 = add i32 %657, 1
  store i32 %inc828, i32* %total_in_lo32827, align 4
  %658 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm829 = getelementptr inbounds %struct.DState, %struct.DState* %658, i32 0, i32 0
  %659 = load %struct.bz_stream*, %struct.bz_stream** %strm829, align 8
  %total_in_lo32830 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %659, i32 0, i32 2
  %660 = load i32, i32* %total_in_lo32830, align 4
  %cmp831 = icmp eq i32 %660, 0
  br i1 %cmp831, label %if.then.833, label %if.end.837

if.then.833:                                      ; preds = %if.end.810
  %661 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm834 = getelementptr inbounds %struct.DState, %struct.DState* %661, i32 0, i32 0
  %662 = load %struct.bz_stream*, %struct.bz_stream** %strm834, align 8
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %662, i32 0, i32 3
  %663 = load i32, i32* %total_in_hi32835, align 4
  %inc836 = add i32 %663, 1
  store i32 %inc836, i32* %total_in_hi32835, align 4
  br label %if.end.837

if.end.837:                                       ; preds = %if.then.833, %if.end.810
  br label %while.body.790

while.end.838:                                    ; preds = %if.then.794
  %664 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC839 = getelementptr inbounds %struct.DState, %struct.DState* %664, i32 0, i32 23
  %665 = load i32, i32* %storedBlockCRC839, align 4
  %shl840 = shl i32 %665, 8
  %666 = load i8, i8* %uc, align 1
  %conv841 = zext i8 %666 to i32
  %or842 = or i32 %shl840, %conv841
  %667 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC843 = getelementptr inbounds %struct.DState, %struct.DState* %667, i32 0, i32 23
  store i32 %or842, i32* %storedBlockCRC843, align 4
  br label %sw.bb.844

sw.bb.844:                                        ; preds = %if.end, %while.end.838
  %668 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state845 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 1
  store i32 24, i32* %state845, align 4
  br label %while.body.846

while.body.846:                                   ; preds = %sw.bb.844, %if.end.893
  %669 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive847 = getelementptr inbounds %struct.DState, %struct.DState* %669, i32 0, i32 8
  %670 = load i32, i32* %bsLive847, align 4
  %cmp848 = icmp sge i32 %670, 1
  br i1 %cmp848, label %if.then.850, label %if.end.860

if.then.850:                                      ; preds = %while.body.846
  %671 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff852 = getelementptr inbounds %struct.DState, %struct.DState* %671, i32 0, i32 7
  %672 = load i32, i32* %bsBuff852, align 4
  %673 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive853 = getelementptr inbounds %struct.DState, %struct.DState* %673, i32 0, i32 8
  %674 = load i32, i32* %bsLive853, align 4
  %sub854 = sub nsw i32 %674, 1
  %shr855 = lshr i32 %672, %sub854
  %and856 = and i32 %shr855, 1
  store i32 %and856, i32* %v851, align 4
  %675 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive857 = getelementptr inbounds %struct.DState, %struct.DState* %675, i32 0, i32 8
  %676 = load i32, i32* %bsLive857, align 4
  %sub858 = sub nsw i32 %676, 1
  store i32 %sub858, i32* %bsLive857, align 4
  %677 = load i32, i32* %v851, align 4
  %conv859 = trunc i32 %677 to i8
  %678 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %678, i32 0, i32 4
  store i8 %conv859, i8* %blockRandomised, align 1
  br label %while.end.894

if.end.860:                                       ; preds = %while.body.846
  %679 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm861 = getelementptr inbounds %struct.DState, %struct.DState* %679, i32 0, i32 0
  %680 = load %struct.bz_stream*, %struct.bz_stream** %strm861, align 8
  %avail_in862 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %680, i32 0, i32 1
  %681 = load i32, i32* %avail_in862, align 4
  %cmp863 = icmp eq i32 %681, 0
  br i1 %cmp863, label %if.then.865, label %if.end.866

if.then.865:                                      ; preds = %if.end.860
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.866:                                       ; preds = %if.end.860
  %682 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff867 = getelementptr inbounds %struct.DState, %struct.DState* %682, i32 0, i32 7
  %683 = load i32, i32* %bsBuff867, align 4
  %shl868 = shl i32 %683, 8
  %684 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm869 = getelementptr inbounds %struct.DState, %struct.DState* %684, i32 0, i32 0
  %685 = load %struct.bz_stream*, %struct.bz_stream** %strm869, align 8
  %next_in870 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %685, i32 0, i32 0
  %686 = load i8*, i8** %next_in870, align 8
  %687 = load i8, i8* %686, align 1
  %conv871 = zext i8 %687 to i32
  %or872 = or i32 %shl868, %conv871
  %688 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff873 = getelementptr inbounds %struct.DState, %struct.DState* %688, i32 0, i32 7
  store i32 %or872, i32* %bsBuff873, align 4
  %689 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive874 = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 8
  %690 = load i32, i32* %bsLive874, align 4
  %add875 = add nsw i32 %690, 8
  store i32 %add875, i32* %bsLive874, align 4
  %691 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm876 = getelementptr inbounds %struct.DState, %struct.DState* %691, i32 0, i32 0
  %692 = load %struct.bz_stream*, %struct.bz_stream** %strm876, align 8
  %next_in877 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %692, i32 0, i32 0
  %693 = load i8*, i8** %next_in877, align 8
  %incdec.ptr878 = getelementptr inbounds i8, i8* %693, i32 1
  store i8* %incdec.ptr878, i8** %next_in877, align 8
  %694 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm879 = getelementptr inbounds %struct.DState, %struct.DState* %694, i32 0, i32 0
  %695 = load %struct.bz_stream*, %struct.bz_stream** %strm879, align 8
  %avail_in880 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %695, i32 0, i32 1
  %696 = load i32, i32* %avail_in880, align 4
  %dec881 = add i32 %696, -1
  store i32 %dec881, i32* %avail_in880, align 4
  %697 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm882 = getelementptr inbounds %struct.DState, %struct.DState* %697, i32 0, i32 0
  %698 = load %struct.bz_stream*, %struct.bz_stream** %strm882, align 8
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %698, i32 0, i32 2
  %699 = load i32, i32* %total_in_lo32883, align 4
  %inc884 = add i32 %699, 1
  store i32 %inc884, i32* %total_in_lo32883, align 4
  %700 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm885 = getelementptr inbounds %struct.DState, %struct.DState* %700, i32 0, i32 0
  %701 = load %struct.bz_stream*, %struct.bz_stream** %strm885, align 8
  %total_in_lo32886 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %701, i32 0, i32 2
  %702 = load i32, i32* %total_in_lo32886, align 4
  %cmp887 = icmp eq i32 %702, 0
  br i1 %cmp887, label %if.then.889, label %if.end.893

if.then.889:                                      ; preds = %if.end.866
  %703 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm890 = getelementptr inbounds %struct.DState, %struct.DState* %703, i32 0, i32 0
  %704 = load %struct.bz_stream*, %struct.bz_stream** %strm890, align 8
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %704, i32 0, i32 3
  %705 = load i32, i32* %total_in_hi32891, align 4
  %inc892 = add i32 %705, 1
  store i32 %inc892, i32* %total_in_hi32891, align 4
  br label %if.end.893

if.end.893:                                       ; preds = %if.then.889, %if.end.866
  br label %while.body.846

while.end.894:                                    ; preds = %if.then.850
  %706 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.DState, %struct.DState* %706, i32 0, i32 13
  store i32 0, i32* %origPtr, align 4
  br label %sw.bb.895

sw.bb.895:                                        ; preds = %if.end, %while.end.894
  %707 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state896 = getelementptr inbounds %struct.DState, %struct.DState* %707, i32 0, i32 1
  store i32 25, i32* %state896, align 4
  br label %while.body.897

while.body.897:                                   ; preds = %sw.bb.895, %if.end.944
  %708 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive898 = getelementptr inbounds %struct.DState, %struct.DState* %708, i32 0, i32 8
  %709 = load i32, i32* %bsLive898, align 4
  %cmp899 = icmp sge i32 %709, 8
  br i1 %cmp899, label %if.then.901, label %if.end.911

if.then.901:                                      ; preds = %while.body.897
  %710 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff903 = getelementptr inbounds %struct.DState, %struct.DState* %710, i32 0, i32 7
  %711 = load i32, i32* %bsBuff903, align 4
  %712 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive904 = getelementptr inbounds %struct.DState, %struct.DState* %712, i32 0, i32 8
  %713 = load i32, i32* %bsLive904, align 4
  %sub905 = sub nsw i32 %713, 8
  %shr906 = lshr i32 %711, %sub905
  %and907 = and i32 %shr906, 255
  store i32 %and907, i32* %v902, align 4
  %714 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive908 = getelementptr inbounds %struct.DState, %struct.DState* %714, i32 0, i32 8
  %715 = load i32, i32* %bsLive908, align 4
  %sub909 = sub nsw i32 %715, 8
  store i32 %sub909, i32* %bsLive908, align 4
  %716 = load i32, i32* %v902, align 4
  %conv910 = trunc i32 %716 to i8
  store i8 %conv910, i8* %uc, align 1
  br label %while.end.945

if.end.911:                                       ; preds = %while.body.897
  %717 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm912 = getelementptr inbounds %struct.DState, %struct.DState* %717, i32 0, i32 0
  %718 = load %struct.bz_stream*, %struct.bz_stream** %strm912, align 8
  %avail_in913 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %718, i32 0, i32 1
  %719 = load i32, i32* %avail_in913, align 4
  %cmp914 = icmp eq i32 %719, 0
  br i1 %cmp914, label %if.then.916, label %if.end.917

if.then.916:                                      ; preds = %if.end.911
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.917:                                       ; preds = %if.end.911
  %720 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff918 = getelementptr inbounds %struct.DState, %struct.DState* %720, i32 0, i32 7
  %721 = load i32, i32* %bsBuff918, align 4
  %shl919 = shl i32 %721, 8
  %722 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm920 = getelementptr inbounds %struct.DState, %struct.DState* %722, i32 0, i32 0
  %723 = load %struct.bz_stream*, %struct.bz_stream** %strm920, align 8
  %next_in921 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %723, i32 0, i32 0
  %724 = load i8*, i8** %next_in921, align 8
  %725 = load i8, i8* %724, align 1
  %conv922 = zext i8 %725 to i32
  %or923 = or i32 %shl919, %conv922
  %726 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff924 = getelementptr inbounds %struct.DState, %struct.DState* %726, i32 0, i32 7
  store i32 %or923, i32* %bsBuff924, align 4
  %727 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive925 = getelementptr inbounds %struct.DState, %struct.DState* %727, i32 0, i32 8
  %728 = load i32, i32* %bsLive925, align 4
  %add926 = add nsw i32 %728, 8
  store i32 %add926, i32* %bsLive925, align 4
  %729 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm927 = getelementptr inbounds %struct.DState, %struct.DState* %729, i32 0, i32 0
  %730 = load %struct.bz_stream*, %struct.bz_stream** %strm927, align 8
  %next_in928 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %730, i32 0, i32 0
  %731 = load i8*, i8** %next_in928, align 8
  %incdec.ptr929 = getelementptr inbounds i8, i8* %731, i32 1
  store i8* %incdec.ptr929, i8** %next_in928, align 8
  %732 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm930 = getelementptr inbounds %struct.DState, %struct.DState* %732, i32 0, i32 0
  %733 = load %struct.bz_stream*, %struct.bz_stream** %strm930, align 8
  %avail_in931 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %733, i32 0, i32 1
  %734 = load i32, i32* %avail_in931, align 4
  %dec932 = add i32 %734, -1
  store i32 %dec932, i32* %avail_in931, align 4
  %735 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm933 = getelementptr inbounds %struct.DState, %struct.DState* %735, i32 0, i32 0
  %736 = load %struct.bz_stream*, %struct.bz_stream** %strm933, align 8
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %736, i32 0, i32 2
  %737 = load i32, i32* %total_in_lo32934, align 4
  %inc935 = add i32 %737, 1
  store i32 %inc935, i32* %total_in_lo32934, align 4
  %738 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm936 = getelementptr inbounds %struct.DState, %struct.DState* %738, i32 0, i32 0
  %739 = load %struct.bz_stream*, %struct.bz_stream** %strm936, align 8
  %total_in_lo32937 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %739, i32 0, i32 2
  %740 = load i32, i32* %total_in_lo32937, align 4
  %cmp938 = icmp eq i32 %740, 0
  br i1 %cmp938, label %if.then.940, label %if.end.944

if.then.940:                                      ; preds = %if.end.917
  %741 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm941 = getelementptr inbounds %struct.DState, %struct.DState* %741, i32 0, i32 0
  %742 = load %struct.bz_stream*, %struct.bz_stream** %strm941, align 8
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %742, i32 0, i32 3
  %743 = load i32, i32* %total_in_hi32942, align 4
  %inc943 = add i32 %743, 1
  store i32 %inc943, i32* %total_in_hi32942, align 4
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.940, %if.end.917
  br label %while.body.897

while.end.945:                                    ; preds = %if.then.901
  %744 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr946 = getelementptr inbounds %struct.DState, %struct.DState* %744, i32 0, i32 13
  %745 = load i32, i32* %origPtr946, align 4
  %shl947 = shl i32 %745, 8
  %746 = load i8, i8* %uc, align 1
  %conv948 = zext i8 %746 to i32
  %or949 = or i32 %shl947, %conv948
  %747 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr950 = getelementptr inbounds %struct.DState, %struct.DState* %747, i32 0, i32 13
  store i32 %or949, i32* %origPtr950, align 4
  br label %sw.bb.951

sw.bb.951:                                        ; preds = %if.end, %while.end.945
  %748 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state952 = getelementptr inbounds %struct.DState, %struct.DState* %748, i32 0, i32 1
  store i32 26, i32* %state952, align 4
  br label %while.body.953

while.body.953:                                   ; preds = %sw.bb.951, %if.end.1000
  %749 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive954 = getelementptr inbounds %struct.DState, %struct.DState* %749, i32 0, i32 8
  %750 = load i32, i32* %bsLive954, align 4
  %cmp955 = icmp sge i32 %750, 8
  br i1 %cmp955, label %if.then.957, label %if.end.967

if.then.957:                                      ; preds = %while.body.953
  %751 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff959 = getelementptr inbounds %struct.DState, %struct.DState* %751, i32 0, i32 7
  %752 = load i32, i32* %bsBuff959, align 4
  %753 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive960 = getelementptr inbounds %struct.DState, %struct.DState* %753, i32 0, i32 8
  %754 = load i32, i32* %bsLive960, align 4
  %sub961 = sub nsw i32 %754, 8
  %shr962 = lshr i32 %752, %sub961
  %and963 = and i32 %shr962, 255
  store i32 %and963, i32* %v958, align 4
  %755 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive964 = getelementptr inbounds %struct.DState, %struct.DState* %755, i32 0, i32 8
  %756 = load i32, i32* %bsLive964, align 4
  %sub965 = sub nsw i32 %756, 8
  store i32 %sub965, i32* %bsLive964, align 4
  %757 = load i32, i32* %v958, align 4
  %conv966 = trunc i32 %757 to i8
  store i8 %conv966, i8* %uc, align 1
  br label %while.end.1001

if.end.967:                                       ; preds = %while.body.953
  %758 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm968 = getelementptr inbounds %struct.DState, %struct.DState* %758, i32 0, i32 0
  %759 = load %struct.bz_stream*, %struct.bz_stream** %strm968, align 8
  %avail_in969 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %759, i32 0, i32 1
  %760 = load i32, i32* %avail_in969, align 4
  %cmp970 = icmp eq i32 %760, 0
  br i1 %cmp970, label %if.then.972, label %if.end.973

if.then.972:                                      ; preds = %if.end.967
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.973:                                       ; preds = %if.end.967
  %761 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff974 = getelementptr inbounds %struct.DState, %struct.DState* %761, i32 0, i32 7
  %762 = load i32, i32* %bsBuff974, align 4
  %shl975 = shl i32 %762, 8
  %763 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm976 = getelementptr inbounds %struct.DState, %struct.DState* %763, i32 0, i32 0
  %764 = load %struct.bz_stream*, %struct.bz_stream** %strm976, align 8
  %next_in977 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %764, i32 0, i32 0
  %765 = load i8*, i8** %next_in977, align 8
  %766 = load i8, i8* %765, align 1
  %conv978 = zext i8 %766 to i32
  %or979 = or i32 %shl975, %conv978
  %767 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff980 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 7
  store i32 %or979, i32* %bsBuff980, align 4
  %768 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive981 = getelementptr inbounds %struct.DState, %struct.DState* %768, i32 0, i32 8
  %769 = load i32, i32* %bsLive981, align 4
  %add982 = add nsw i32 %769, 8
  store i32 %add982, i32* %bsLive981, align 4
  %770 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm983 = getelementptr inbounds %struct.DState, %struct.DState* %770, i32 0, i32 0
  %771 = load %struct.bz_stream*, %struct.bz_stream** %strm983, align 8
  %next_in984 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %771, i32 0, i32 0
  %772 = load i8*, i8** %next_in984, align 8
  %incdec.ptr985 = getelementptr inbounds i8, i8* %772, i32 1
  store i8* %incdec.ptr985, i8** %next_in984, align 8
  %773 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm986 = getelementptr inbounds %struct.DState, %struct.DState* %773, i32 0, i32 0
  %774 = load %struct.bz_stream*, %struct.bz_stream** %strm986, align 8
  %avail_in987 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %774, i32 0, i32 1
  %775 = load i32, i32* %avail_in987, align 4
  %dec988 = add i32 %775, -1
  store i32 %dec988, i32* %avail_in987, align 4
  %776 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm989 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 0
  %777 = load %struct.bz_stream*, %struct.bz_stream** %strm989, align 8
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %777, i32 0, i32 2
  %778 = load i32, i32* %total_in_lo32990, align 4
  %inc991 = add i32 %778, 1
  store i32 %inc991, i32* %total_in_lo32990, align 4
  %779 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm992 = getelementptr inbounds %struct.DState, %struct.DState* %779, i32 0, i32 0
  %780 = load %struct.bz_stream*, %struct.bz_stream** %strm992, align 8
  %total_in_lo32993 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %780, i32 0, i32 2
  %781 = load i32, i32* %total_in_lo32993, align 4
  %cmp994 = icmp eq i32 %781, 0
  br i1 %cmp994, label %if.then.996, label %if.end.1000

if.then.996:                                      ; preds = %if.end.973
  %782 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm997 = getelementptr inbounds %struct.DState, %struct.DState* %782, i32 0, i32 0
  %783 = load %struct.bz_stream*, %struct.bz_stream** %strm997, align 8
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %783, i32 0, i32 3
  %784 = load i32, i32* %total_in_hi32998, align 4
  %inc999 = add i32 %784, 1
  store i32 %inc999, i32* %total_in_hi32998, align 4
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.then.996, %if.end.973
  br label %while.body.953

while.end.1001:                                   ; preds = %if.then.957
  %785 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1002 = getelementptr inbounds %struct.DState, %struct.DState* %785, i32 0, i32 13
  %786 = load i32, i32* %origPtr1002, align 4
  %shl1003 = shl i32 %786, 8
  %787 = load i8, i8* %uc, align 1
  %conv1004 = zext i8 %787 to i32
  %or1005 = or i32 %shl1003, %conv1004
  %788 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1006 = getelementptr inbounds %struct.DState, %struct.DState* %788, i32 0, i32 13
  store i32 %or1005, i32* %origPtr1006, align 4
  br label %sw.bb.1007

sw.bb.1007:                                       ; preds = %if.end, %while.end.1001
  %789 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1008 = getelementptr inbounds %struct.DState, %struct.DState* %789, i32 0, i32 1
  store i32 27, i32* %state1008, align 4
  br label %while.body.1009

while.body.1009:                                  ; preds = %sw.bb.1007, %if.end.1056
  %790 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1010 = getelementptr inbounds %struct.DState, %struct.DState* %790, i32 0, i32 8
  %791 = load i32, i32* %bsLive1010, align 4
  %cmp1011 = icmp sge i32 %791, 8
  br i1 %cmp1011, label %if.then.1013, label %if.end.1023

if.then.1013:                                     ; preds = %while.body.1009
  %792 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1015 = getelementptr inbounds %struct.DState, %struct.DState* %792, i32 0, i32 7
  %793 = load i32, i32* %bsBuff1015, align 4
  %794 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1016 = getelementptr inbounds %struct.DState, %struct.DState* %794, i32 0, i32 8
  %795 = load i32, i32* %bsLive1016, align 4
  %sub1017 = sub nsw i32 %795, 8
  %shr1018 = lshr i32 %793, %sub1017
  %and1019 = and i32 %shr1018, 255
  store i32 %and1019, i32* %v1014, align 4
  %796 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1020 = getelementptr inbounds %struct.DState, %struct.DState* %796, i32 0, i32 8
  %797 = load i32, i32* %bsLive1020, align 4
  %sub1021 = sub nsw i32 %797, 8
  store i32 %sub1021, i32* %bsLive1020, align 4
  %798 = load i32, i32* %v1014, align 4
  %conv1022 = trunc i32 %798 to i8
  store i8 %conv1022, i8* %uc, align 1
  br label %while.end.1057

if.end.1023:                                      ; preds = %while.body.1009
  %799 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1024 = getelementptr inbounds %struct.DState, %struct.DState* %799, i32 0, i32 0
  %800 = load %struct.bz_stream*, %struct.bz_stream** %strm1024, align 8
  %avail_in1025 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %800, i32 0, i32 1
  %801 = load i32, i32* %avail_in1025, align 4
  %cmp1026 = icmp eq i32 %801, 0
  br i1 %cmp1026, label %if.then.1028, label %if.end.1029

if.then.1028:                                     ; preds = %if.end.1023
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1029:                                      ; preds = %if.end.1023
  %802 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1030 = getelementptr inbounds %struct.DState, %struct.DState* %802, i32 0, i32 7
  %803 = load i32, i32* %bsBuff1030, align 4
  %shl1031 = shl i32 %803, 8
  %804 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1032 = getelementptr inbounds %struct.DState, %struct.DState* %804, i32 0, i32 0
  %805 = load %struct.bz_stream*, %struct.bz_stream** %strm1032, align 8
  %next_in1033 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %805, i32 0, i32 0
  %806 = load i8*, i8** %next_in1033, align 8
  %807 = load i8, i8* %806, align 1
  %conv1034 = zext i8 %807 to i32
  %or1035 = or i32 %shl1031, %conv1034
  %808 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1036 = getelementptr inbounds %struct.DState, %struct.DState* %808, i32 0, i32 7
  store i32 %or1035, i32* %bsBuff1036, align 4
  %809 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1037 = getelementptr inbounds %struct.DState, %struct.DState* %809, i32 0, i32 8
  %810 = load i32, i32* %bsLive1037, align 4
  %add1038 = add nsw i32 %810, 8
  store i32 %add1038, i32* %bsLive1037, align 4
  %811 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1039 = getelementptr inbounds %struct.DState, %struct.DState* %811, i32 0, i32 0
  %812 = load %struct.bz_stream*, %struct.bz_stream** %strm1039, align 8
  %next_in1040 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %812, i32 0, i32 0
  %813 = load i8*, i8** %next_in1040, align 8
  %incdec.ptr1041 = getelementptr inbounds i8, i8* %813, i32 1
  store i8* %incdec.ptr1041, i8** %next_in1040, align 8
  %814 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1042 = getelementptr inbounds %struct.DState, %struct.DState* %814, i32 0, i32 0
  %815 = load %struct.bz_stream*, %struct.bz_stream** %strm1042, align 8
  %avail_in1043 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %815, i32 0, i32 1
  %816 = load i32, i32* %avail_in1043, align 4
  %dec1044 = add i32 %816, -1
  store i32 %dec1044, i32* %avail_in1043, align 4
  %817 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1045 = getelementptr inbounds %struct.DState, %struct.DState* %817, i32 0, i32 0
  %818 = load %struct.bz_stream*, %struct.bz_stream** %strm1045, align 8
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %818, i32 0, i32 2
  %819 = load i32, i32* %total_in_lo321046, align 4
  %inc1047 = add i32 %819, 1
  store i32 %inc1047, i32* %total_in_lo321046, align 4
  %820 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1048 = getelementptr inbounds %struct.DState, %struct.DState* %820, i32 0, i32 0
  %821 = load %struct.bz_stream*, %struct.bz_stream** %strm1048, align 8
  %total_in_lo321049 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %821, i32 0, i32 2
  %822 = load i32, i32* %total_in_lo321049, align 4
  %cmp1050 = icmp eq i32 %822, 0
  br i1 %cmp1050, label %if.then.1052, label %if.end.1056

if.then.1052:                                     ; preds = %if.end.1029
  %823 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1053 = getelementptr inbounds %struct.DState, %struct.DState* %823, i32 0, i32 0
  %824 = load %struct.bz_stream*, %struct.bz_stream** %strm1053, align 8
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %824, i32 0, i32 3
  %825 = load i32, i32* %total_in_hi321054, align 4
  %inc1055 = add i32 %825, 1
  store i32 %inc1055, i32* %total_in_hi321054, align 4
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.then.1052, %if.end.1029
  br label %while.body.1009

while.end.1057:                                   ; preds = %if.then.1013
  %826 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1058 = getelementptr inbounds %struct.DState, %struct.DState* %826, i32 0, i32 13
  %827 = load i32, i32* %origPtr1058, align 4
  %shl1059 = shl i32 %827, 8
  %828 = load i8, i8* %uc, align 1
  %conv1060 = zext i8 %828 to i32
  %or1061 = or i32 %shl1059, %conv1060
  %829 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1062 = getelementptr inbounds %struct.DState, %struct.DState* %829, i32 0, i32 13
  store i32 %or1061, i32* %origPtr1062, align 4
  %830 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1063 = getelementptr inbounds %struct.DState, %struct.DState* %830, i32 0, i32 13
  %831 = load i32, i32* %origPtr1063, align 4
  %cmp1064 = icmp slt i32 %831, 0
  br i1 %cmp1064, label %if.then.1066, label %if.end.1067

if.then.1066:                                     ; preds = %while.end.1057
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1067:                                      ; preds = %while.end.1057
  %832 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1068 = getelementptr inbounds %struct.DState, %struct.DState* %832, i32 0, i32 13
  %833 = load i32, i32* %origPtr1068, align 4
  %834 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k1069 = getelementptr inbounds %struct.DState, %struct.DState* %834, i32 0, i32 9
  %835 = load i32, i32* %blockSize100k1069, align 4
  %mul1070 = mul nsw i32 100000, %835
  %add1071 = add nsw i32 10, %mul1070
  %cmp1072 = icmp sgt i32 %833, %add1071
  br i1 %cmp1072, label %if.then.1074, label %if.end.1075

if.then.1074:                                     ; preds = %if.end.1067
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1075:                                      ; preds = %if.end.1067
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.1075
  %836 = load i32, i32* %i, align 4
  %cmp1076 = icmp slt i32 %836, 16
  br i1 %cmp1076, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb.1078

sw.bb.1078:                                       ; preds = %if.end, %for.body
  %837 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1079 = getelementptr inbounds %struct.DState, %struct.DState* %837, i32 0, i32 1
  store i32 28, i32* %state1079, align 4
  br label %while.body.1080

while.body.1080:                                  ; preds = %sw.bb.1078, %if.end.1127
  %838 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1081 = getelementptr inbounds %struct.DState, %struct.DState* %838, i32 0, i32 8
  %839 = load i32, i32* %bsLive1081, align 4
  %cmp1082 = icmp sge i32 %839, 1
  br i1 %cmp1082, label %if.then.1084, label %if.end.1094

if.then.1084:                                     ; preds = %while.body.1080
  %840 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1086 = getelementptr inbounds %struct.DState, %struct.DState* %840, i32 0, i32 7
  %841 = load i32, i32* %bsBuff1086, align 4
  %842 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1087 = getelementptr inbounds %struct.DState, %struct.DState* %842, i32 0, i32 8
  %843 = load i32, i32* %bsLive1087, align 4
  %sub1088 = sub nsw i32 %843, 1
  %shr1089 = lshr i32 %841, %sub1088
  %and1090 = and i32 %shr1089, 1
  store i32 %and1090, i32* %v1085, align 4
  %844 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1091 = getelementptr inbounds %struct.DState, %struct.DState* %844, i32 0, i32 8
  %845 = load i32, i32* %bsLive1091, align 4
  %sub1092 = sub nsw i32 %845, 1
  store i32 %sub1092, i32* %bsLive1091, align 4
  %846 = load i32, i32* %v1085, align 4
  %conv1093 = trunc i32 %846 to i8
  store i8 %conv1093, i8* %uc, align 1
  br label %while.end.1128

if.end.1094:                                      ; preds = %while.body.1080
  %847 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1095 = getelementptr inbounds %struct.DState, %struct.DState* %847, i32 0, i32 0
  %848 = load %struct.bz_stream*, %struct.bz_stream** %strm1095, align 8
  %avail_in1096 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %848, i32 0, i32 1
  %849 = load i32, i32* %avail_in1096, align 4
  %cmp1097 = icmp eq i32 %849, 0
  br i1 %cmp1097, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %if.end.1094
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1100:                                      ; preds = %if.end.1094
  %850 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1101 = getelementptr inbounds %struct.DState, %struct.DState* %850, i32 0, i32 7
  %851 = load i32, i32* %bsBuff1101, align 4
  %shl1102 = shl i32 %851, 8
  %852 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1103 = getelementptr inbounds %struct.DState, %struct.DState* %852, i32 0, i32 0
  %853 = load %struct.bz_stream*, %struct.bz_stream** %strm1103, align 8
  %next_in1104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %853, i32 0, i32 0
  %854 = load i8*, i8** %next_in1104, align 8
  %855 = load i8, i8* %854, align 1
  %conv1105 = zext i8 %855 to i32
  %or1106 = or i32 %shl1102, %conv1105
  %856 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1107 = getelementptr inbounds %struct.DState, %struct.DState* %856, i32 0, i32 7
  store i32 %or1106, i32* %bsBuff1107, align 4
  %857 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1108 = getelementptr inbounds %struct.DState, %struct.DState* %857, i32 0, i32 8
  %858 = load i32, i32* %bsLive1108, align 4
  %add1109 = add nsw i32 %858, 8
  store i32 %add1109, i32* %bsLive1108, align 4
  %859 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1110 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 0
  %860 = load %struct.bz_stream*, %struct.bz_stream** %strm1110, align 8
  %next_in1111 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %860, i32 0, i32 0
  %861 = load i8*, i8** %next_in1111, align 8
  %incdec.ptr1112 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %incdec.ptr1112, i8** %next_in1111, align 8
  %862 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1113 = getelementptr inbounds %struct.DState, %struct.DState* %862, i32 0, i32 0
  %863 = load %struct.bz_stream*, %struct.bz_stream** %strm1113, align 8
  %avail_in1114 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %863, i32 0, i32 1
  %864 = load i32, i32* %avail_in1114, align 4
  %dec1115 = add i32 %864, -1
  store i32 %dec1115, i32* %avail_in1114, align 4
  %865 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1116 = getelementptr inbounds %struct.DState, %struct.DState* %865, i32 0, i32 0
  %866 = load %struct.bz_stream*, %struct.bz_stream** %strm1116, align 8
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %866, i32 0, i32 2
  %867 = load i32, i32* %total_in_lo321117, align 4
  %inc1118 = add i32 %867, 1
  store i32 %inc1118, i32* %total_in_lo321117, align 4
  %868 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1119 = getelementptr inbounds %struct.DState, %struct.DState* %868, i32 0, i32 0
  %869 = load %struct.bz_stream*, %struct.bz_stream** %strm1119, align 8
  %total_in_lo321120 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %869, i32 0, i32 2
  %870 = load i32, i32* %total_in_lo321120, align 4
  %cmp1121 = icmp eq i32 %870, 0
  br i1 %cmp1121, label %if.then.1123, label %if.end.1127

if.then.1123:                                     ; preds = %if.end.1100
  %871 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1124 = getelementptr inbounds %struct.DState, %struct.DState* %871, i32 0, i32 0
  %872 = load %struct.bz_stream*, %struct.bz_stream** %strm1124, align 8
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %872, i32 0, i32 3
  %873 = load i32, i32* %total_in_hi321125, align 4
  %inc1126 = add i32 %873, 1
  store i32 %inc1126, i32* %total_in_hi321125, align 4
  br label %if.end.1127

if.end.1127:                                      ; preds = %if.then.1123, %if.end.1100
  br label %while.body.1080

while.end.1128:                                   ; preds = %if.then.1084
  %874 = load i8, i8* %uc, align 1
  %conv1129 = zext i8 %874 to i32
  %cmp1130 = icmp eq i32 %conv1129, 1
  br i1 %cmp1130, label %if.then.1132, label %if.else.1133

if.then.1132:                                     ; preds = %while.end.1128
  %875 = load i32, i32* %i, align 4
  %idxprom = sext i32 %875 to i64
  %876 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse16 = getelementptr inbounds %struct.DState, %struct.DState* %876, i32 0, i32 29
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %if.end.1137

if.else.1133:                                     ; preds = %while.end.1128
  %877 = load i32, i32* %i, align 4
  %idxprom1134 = sext i32 %877 to i64
  %878 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse161135 = getelementptr inbounds %struct.DState, %struct.DState* %878, i32 0, i32 29
  %arrayidx1136 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161135, i32 0, i64 %idxprom1134
  store i8 0, i8* %arrayidx1136, align 1
  br label %if.end.1137

if.end.1137:                                      ; preds = %if.else.1133, %if.then.1132
  br label %for.inc

for.inc:                                          ; preds = %if.end.1137
  %879 = load i32, i32* %i, align 4
  %inc1138 = add nsw i32 %879, 1
  store i32 %inc1138, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1139

for.cond.1139:                                    ; preds = %for.inc.1145, %for.end
  %880 = load i32, i32* %i, align 4
  %cmp1140 = icmp slt i32 %880, 256
  br i1 %cmp1140, label %for.body.1142, label %for.end.1147

for.body.1142:                                    ; preds = %for.cond.1139
  %881 = load i32, i32* %i, align 4
  %idxprom1143 = sext i32 %881 to i64
  %882 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %882, i32 0, i32 28
  %arrayidx1144 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom1143
  store i8 0, i8* %arrayidx1144, align 1
  br label %for.inc.1145

for.inc.1145:                                     ; preds = %for.body.1142
  %883 = load i32, i32* %i, align 4
  %inc1146 = add nsw i32 %883, 1
  store i32 %inc1146, i32* %i, align 4
  br label %for.cond.1139

for.end.1147:                                     ; preds = %for.cond.1139
  store i32 0, i32* %i, align 4
  br label %for.cond.1148

for.cond.1148:                                    ; preds = %for.inc.1226, %for.end.1147
  %884 = load i32, i32* %i, align 4
  %cmp1149 = icmp slt i32 %884, 16
  br i1 %cmp1149, label %for.body.1151, label %for.end.1228

for.body.1151:                                    ; preds = %for.cond.1148
  %885 = load i32, i32* %i, align 4
  %idxprom1152 = sext i32 %885 to i64
  %886 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse161153 = getelementptr inbounds %struct.DState, %struct.DState* %886, i32 0, i32 29
  %arrayidx1154 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161153, i32 0, i64 %idxprom1152
  %887 = load i8, i8* %arrayidx1154, align 1
  %tobool1155 = icmp ne i8 %887, 0
  br i1 %tobool1155, label %if.then.1156, label %if.end.1225

if.then.1156:                                     ; preds = %for.body.1151
  store i32 0, i32* %j, align 4
  br label %for.cond.1157

for.cond.1157:                                    ; preds = %for.inc.1222, %if.then.1156
  %888 = load i32, i32* %j, align 4
  %cmp1158 = icmp slt i32 %888, 16
  br i1 %cmp1158, label %for.body.1160, label %for.end.1224

for.body.1160:                                    ; preds = %for.cond.1157
  br label %sw.bb.1161

sw.bb.1161:                                       ; preds = %if.end, %for.body.1160
  %889 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1162 = getelementptr inbounds %struct.DState, %struct.DState* %889, i32 0, i32 1
  store i32 29, i32* %state1162, align 4
  br label %while.body.1163

while.body.1163:                                  ; preds = %sw.bb.1161, %if.end.1210
  %890 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1164 = getelementptr inbounds %struct.DState, %struct.DState* %890, i32 0, i32 8
  %891 = load i32, i32* %bsLive1164, align 4
  %cmp1165 = icmp sge i32 %891, 1
  br i1 %cmp1165, label %if.then.1167, label %if.end.1177

if.then.1167:                                     ; preds = %while.body.1163
  %892 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1169 = getelementptr inbounds %struct.DState, %struct.DState* %892, i32 0, i32 7
  %893 = load i32, i32* %bsBuff1169, align 4
  %894 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1170 = getelementptr inbounds %struct.DState, %struct.DState* %894, i32 0, i32 8
  %895 = load i32, i32* %bsLive1170, align 4
  %sub1171 = sub nsw i32 %895, 1
  %shr1172 = lshr i32 %893, %sub1171
  %and1173 = and i32 %shr1172, 1
  store i32 %and1173, i32* %v1168, align 4
  %896 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1174 = getelementptr inbounds %struct.DState, %struct.DState* %896, i32 0, i32 8
  %897 = load i32, i32* %bsLive1174, align 4
  %sub1175 = sub nsw i32 %897, 1
  store i32 %sub1175, i32* %bsLive1174, align 4
  %898 = load i32, i32* %v1168, align 4
  %conv1176 = trunc i32 %898 to i8
  store i8 %conv1176, i8* %uc, align 1
  br label %while.end.1211

if.end.1177:                                      ; preds = %while.body.1163
  %899 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1178 = getelementptr inbounds %struct.DState, %struct.DState* %899, i32 0, i32 0
  %900 = load %struct.bz_stream*, %struct.bz_stream** %strm1178, align 8
  %avail_in1179 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %900, i32 0, i32 1
  %901 = load i32, i32* %avail_in1179, align 4
  %cmp1180 = icmp eq i32 %901, 0
  br i1 %cmp1180, label %if.then.1182, label %if.end.1183

if.then.1182:                                     ; preds = %if.end.1177
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1183:                                      ; preds = %if.end.1177
  %902 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1184 = getelementptr inbounds %struct.DState, %struct.DState* %902, i32 0, i32 7
  %903 = load i32, i32* %bsBuff1184, align 4
  %shl1185 = shl i32 %903, 8
  %904 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1186 = getelementptr inbounds %struct.DState, %struct.DState* %904, i32 0, i32 0
  %905 = load %struct.bz_stream*, %struct.bz_stream** %strm1186, align 8
  %next_in1187 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %905, i32 0, i32 0
  %906 = load i8*, i8** %next_in1187, align 8
  %907 = load i8, i8* %906, align 1
  %conv1188 = zext i8 %907 to i32
  %or1189 = or i32 %shl1185, %conv1188
  %908 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1190 = getelementptr inbounds %struct.DState, %struct.DState* %908, i32 0, i32 7
  store i32 %or1189, i32* %bsBuff1190, align 4
  %909 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1191 = getelementptr inbounds %struct.DState, %struct.DState* %909, i32 0, i32 8
  %910 = load i32, i32* %bsLive1191, align 4
  %add1192 = add nsw i32 %910, 8
  store i32 %add1192, i32* %bsLive1191, align 4
  %911 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1193 = getelementptr inbounds %struct.DState, %struct.DState* %911, i32 0, i32 0
  %912 = load %struct.bz_stream*, %struct.bz_stream** %strm1193, align 8
  %next_in1194 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %912, i32 0, i32 0
  %913 = load i8*, i8** %next_in1194, align 8
  %incdec.ptr1195 = getelementptr inbounds i8, i8* %913, i32 1
  store i8* %incdec.ptr1195, i8** %next_in1194, align 8
  %914 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1196 = getelementptr inbounds %struct.DState, %struct.DState* %914, i32 0, i32 0
  %915 = load %struct.bz_stream*, %struct.bz_stream** %strm1196, align 8
  %avail_in1197 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %915, i32 0, i32 1
  %916 = load i32, i32* %avail_in1197, align 4
  %dec1198 = add i32 %916, -1
  store i32 %dec1198, i32* %avail_in1197, align 4
  %917 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1199 = getelementptr inbounds %struct.DState, %struct.DState* %917, i32 0, i32 0
  %918 = load %struct.bz_stream*, %struct.bz_stream** %strm1199, align 8
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %918, i32 0, i32 2
  %919 = load i32, i32* %total_in_lo321200, align 4
  %inc1201 = add i32 %919, 1
  store i32 %inc1201, i32* %total_in_lo321200, align 4
  %920 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1202 = getelementptr inbounds %struct.DState, %struct.DState* %920, i32 0, i32 0
  %921 = load %struct.bz_stream*, %struct.bz_stream** %strm1202, align 8
  %total_in_lo321203 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %921, i32 0, i32 2
  %922 = load i32, i32* %total_in_lo321203, align 4
  %cmp1204 = icmp eq i32 %922, 0
  br i1 %cmp1204, label %if.then.1206, label %if.end.1210

if.then.1206:                                     ; preds = %if.end.1183
  %923 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1207 = getelementptr inbounds %struct.DState, %struct.DState* %923, i32 0, i32 0
  %924 = load %struct.bz_stream*, %struct.bz_stream** %strm1207, align 8
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %924, i32 0, i32 3
  %925 = load i32, i32* %total_in_hi321208, align 4
  %inc1209 = add i32 %925, 1
  store i32 %inc1209, i32* %total_in_hi321208, align 4
  br label %if.end.1210

if.end.1210:                                      ; preds = %if.then.1206, %if.end.1183
  br label %while.body.1163

while.end.1211:                                   ; preds = %if.then.1167
  %926 = load i8, i8* %uc, align 1
  %conv1212 = zext i8 %926 to i32
  %cmp1213 = icmp eq i32 %conv1212, 1
  br i1 %cmp1213, label %if.then.1215, label %if.end.1221

if.then.1215:                                     ; preds = %while.end.1211
  %927 = load i32, i32* %i, align 4
  %mul1216 = mul nsw i32 %927, 16
  %928 = load i32, i32* %j, align 4
  %add1217 = add nsw i32 %mul1216, %928
  %idxprom1218 = sext i32 %add1217 to i64
  %929 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse1219 = getelementptr inbounds %struct.DState, %struct.DState* %929, i32 0, i32 28
  %arrayidx1220 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse1219, i32 0, i64 %idxprom1218
  store i8 1, i8* %arrayidx1220, align 1
  br label %if.end.1221

if.end.1221:                                      ; preds = %if.then.1215, %while.end.1211
  br label %for.inc.1222

for.inc.1222:                                     ; preds = %if.end.1221
  %930 = load i32, i32* %j, align 4
  %inc1223 = add nsw i32 %930, 1
  store i32 %inc1223, i32* %j, align 4
  br label %for.cond.1157

for.end.1224:                                     ; preds = %for.cond.1157
  br label %if.end.1225

if.end.1225:                                      ; preds = %for.end.1224, %for.body.1151
  br label %for.inc.1226

for.inc.1226:                                     ; preds = %if.end.1225
  %931 = load i32, i32* %i, align 4
  %inc1227 = add nsw i32 %931, 1
  store i32 %inc1227, i32* %i, align 4
  br label %for.cond.1148

for.end.1228:                                     ; preds = %for.cond.1148
  %932 = load %struct.DState*, %struct.DState** %s.addr, align 8
  call void @makeMaps_d(%struct.DState* %932)
  %933 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %933, i32 0, i32 27
  %934 = load i32, i32* %nInUse, align 4
  %cmp1229 = icmp eq i32 %934, 0
  br i1 %cmp1229, label %if.then.1231, label %if.end.1232

if.then.1231:                                     ; preds = %for.end.1228
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1232:                                      ; preds = %for.end.1228
  %935 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1233 = getelementptr inbounds %struct.DState, %struct.DState* %935, i32 0, i32 27
  %936 = load i32, i32* %nInUse1233, align 4
  %add1234 = add nsw i32 %936, 2
  store i32 %add1234, i32* %alphaSize, align 4
  br label %sw.bb.1235

sw.bb.1235:                                       ; preds = %if.end, %if.end.1232
  %937 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1236 = getelementptr inbounds %struct.DState, %struct.DState* %937, i32 0, i32 1
  store i32 30, i32* %state1236, align 4
  br label %while.body.1237

while.body.1237:                                  ; preds = %sw.bb.1235, %if.end.1283
  %938 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1238 = getelementptr inbounds %struct.DState, %struct.DState* %938, i32 0, i32 8
  %939 = load i32, i32* %bsLive1238, align 4
  %cmp1239 = icmp sge i32 %939, 3
  br i1 %cmp1239, label %if.then.1241, label %if.end.1250

if.then.1241:                                     ; preds = %while.body.1237
  %940 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1243 = getelementptr inbounds %struct.DState, %struct.DState* %940, i32 0, i32 7
  %941 = load i32, i32* %bsBuff1243, align 4
  %942 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1244 = getelementptr inbounds %struct.DState, %struct.DState* %942, i32 0, i32 8
  %943 = load i32, i32* %bsLive1244, align 4
  %sub1245 = sub nsw i32 %943, 3
  %shr1246 = lshr i32 %941, %sub1245
  %and1247 = and i32 %shr1246, 7
  store i32 %and1247, i32* %v1242, align 4
  %944 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1248 = getelementptr inbounds %struct.DState, %struct.DState* %944, i32 0, i32 8
  %945 = load i32, i32* %bsLive1248, align 4
  %sub1249 = sub nsw i32 %945, 3
  store i32 %sub1249, i32* %bsLive1248, align 4
  %946 = load i32, i32* %v1242, align 4
  store i32 %946, i32* %nGroups, align 4
  br label %while.end.1284

if.end.1250:                                      ; preds = %while.body.1237
  %947 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1251 = getelementptr inbounds %struct.DState, %struct.DState* %947, i32 0, i32 0
  %948 = load %struct.bz_stream*, %struct.bz_stream** %strm1251, align 8
  %avail_in1252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %948, i32 0, i32 1
  %949 = load i32, i32* %avail_in1252, align 4
  %cmp1253 = icmp eq i32 %949, 0
  br i1 %cmp1253, label %if.then.1255, label %if.end.1256

if.then.1255:                                     ; preds = %if.end.1250
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1256:                                      ; preds = %if.end.1250
  %950 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1257 = getelementptr inbounds %struct.DState, %struct.DState* %950, i32 0, i32 7
  %951 = load i32, i32* %bsBuff1257, align 4
  %shl1258 = shl i32 %951, 8
  %952 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1259 = getelementptr inbounds %struct.DState, %struct.DState* %952, i32 0, i32 0
  %953 = load %struct.bz_stream*, %struct.bz_stream** %strm1259, align 8
  %next_in1260 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %953, i32 0, i32 0
  %954 = load i8*, i8** %next_in1260, align 8
  %955 = load i8, i8* %954, align 1
  %conv1261 = zext i8 %955 to i32
  %or1262 = or i32 %shl1258, %conv1261
  %956 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1263 = getelementptr inbounds %struct.DState, %struct.DState* %956, i32 0, i32 7
  store i32 %or1262, i32* %bsBuff1263, align 4
  %957 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1264 = getelementptr inbounds %struct.DState, %struct.DState* %957, i32 0, i32 8
  %958 = load i32, i32* %bsLive1264, align 4
  %add1265 = add nsw i32 %958, 8
  store i32 %add1265, i32* %bsLive1264, align 4
  %959 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1266 = getelementptr inbounds %struct.DState, %struct.DState* %959, i32 0, i32 0
  %960 = load %struct.bz_stream*, %struct.bz_stream** %strm1266, align 8
  %next_in1267 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %960, i32 0, i32 0
  %961 = load i8*, i8** %next_in1267, align 8
  %incdec.ptr1268 = getelementptr inbounds i8, i8* %961, i32 1
  store i8* %incdec.ptr1268, i8** %next_in1267, align 8
  %962 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1269 = getelementptr inbounds %struct.DState, %struct.DState* %962, i32 0, i32 0
  %963 = load %struct.bz_stream*, %struct.bz_stream** %strm1269, align 8
  %avail_in1270 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %963, i32 0, i32 1
  %964 = load i32, i32* %avail_in1270, align 4
  %dec1271 = add i32 %964, -1
  store i32 %dec1271, i32* %avail_in1270, align 4
  %965 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1272 = getelementptr inbounds %struct.DState, %struct.DState* %965, i32 0, i32 0
  %966 = load %struct.bz_stream*, %struct.bz_stream** %strm1272, align 8
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %966, i32 0, i32 2
  %967 = load i32, i32* %total_in_lo321273, align 4
  %inc1274 = add i32 %967, 1
  store i32 %inc1274, i32* %total_in_lo321273, align 4
  %968 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1275 = getelementptr inbounds %struct.DState, %struct.DState* %968, i32 0, i32 0
  %969 = load %struct.bz_stream*, %struct.bz_stream** %strm1275, align 8
  %total_in_lo321276 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %969, i32 0, i32 2
  %970 = load i32, i32* %total_in_lo321276, align 4
  %cmp1277 = icmp eq i32 %970, 0
  br i1 %cmp1277, label %if.then.1279, label %if.end.1283

if.then.1279:                                     ; preds = %if.end.1256
  %971 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1280 = getelementptr inbounds %struct.DState, %struct.DState* %971, i32 0, i32 0
  %972 = load %struct.bz_stream*, %struct.bz_stream** %strm1280, align 8
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %972, i32 0, i32 3
  %973 = load i32, i32* %total_in_hi321281, align 4
  %inc1282 = add i32 %973, 1
  store i32 %inc1282, i32* %total_in_hi321281, align 4
  br label %if.end.1283

if.end.1283:                                      ; preds = %if.then.1279, %if.end.1256
  br label %while.body.1237

while.end.1284:                                   ; preds = %if.then.1241
  %974 = load i32, i32* %nGroups, align 4
  %cmp1285 = icmp slt i32 %974, 2
  br i1 %cmp1285, label %if.then.1290, label %lor.lhs.false.1287

lor.lhs.false.1287:                               ; preds = %while.end.1284
  %975 = load i32, i32* %nGroups, align 4
  %cmp1288 = icmp sgt i32 %975, 6
  br i1 %cmp1288, label %if.then.1290, label %if.end.1291

if.then.1290:                                     ; preds = %lor.lhs.false.1287, %while.end.1284
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1291:                                      ; preds = %lor.lhs.false.1287
  br label %sw.bb.1292

sw.bb.1292:                                       ; preds = %if.end, %if.end.1291
  %976 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1293 = getelementptr inbounds %struct.DState, %struct.DState* %976, i32 0, i32 1
  store i32 31, i32* %state1293, align 4
  br label %while.body.1294

while.body.1294:                                  ; preds = %sw.bb.1292, %if.end.1340
  %977 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1295 = getelementptr inbounds %struct.DState, %struct.DState* %977, i32 0, i32 8
  %978 = load i32, i32* %bsLive1295, align 4
  %cmp1296 = icmp sge i32 %978, 15
  br i1 %cmp1296, label %if.then.1298, label %if.end.1307

if.then.1298:                                     ; preds = %while.body.1294
  %979 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1300 = getelementptr inbounds %struct.DState, %struct.DState* %979, i32 0, i32 7
  %980 = load i32, i32* %bsBuff1300, align 4
  %981 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1301 = getelementptr inbounds %struct.DState, %struct.DState* %981, i32 0, i32 8
  %982 = load i32, i32* %bsLive1301, align 4
  %sub1302 = sub nsw i32 %982, 15
  %shr1303 = lshr i32 %980, %sub1302
  %and1304 = and i32 %shr1303, 32767
  store i32 %and1304, i32* %v1299, align 4
  %983 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1305 = getelementptr inbounds %struct.DState, %struct.DState* %983, i32 0, i32 8
  %984 = load i32, i32* %bsLive1305, align 4
  %sub1306 = sub nsw i32 %984, 15
  store i32 %sub1306, i32* %bsLive1305, align 4
  %985 = load i32, i32* %v1299, align 4
  store i32 %985, i32* %nSelectors, align 4
  br label %while.end.1341

if.end.1307:                                      ; preds = %while.body.1294
  %986 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1308 = getelementptr inbounds %struct.DState, %struct.DState* %986, i32 0, i32 0
  %987 = load %struct.bz_stream*, %struct.bz_stream** %strm1308, align 8
  %avail_in1309 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %987, i32 0, i32 1
  %988 = load i32, i32* %avail_in1309, align 4
  %cmp1310 = icmp eq i32 %988, 0
  br i1 %cmp1310, label %if.then.1312, label %if.end.1313

if.then.1312:                                     ; preds = %if.end.1307
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1313:                                      ; preds = %if.end.1307
  %989 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1314 = getelementptr inbounds %struct.DState, %struct.DState* %989, i32 0, i32 7
  %990 = load i32, i32* %bsBuff1314, align 4
  %shl1315 = shl i32 %990, 8
  %991 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1316 = getelementptr inbounds %struct.DState, %struct.DState* %991, i32 0, i32 0
  %992 = load %struct.bz_stream*, %struct.bz_stream** %strm1316, align 8
  %next_in1317 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %992, i32 0, i32 0
  %993 = load i8*, i8** %next_in1317, align 8
  %994 = load i8, i8* %993, align 1
  %conv1318 = zext i8 %994 to i32
  %or1319 = or i32 %shl1315, %conv1318
  %995 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1320 = getelementptr inbounds %struct.DState, %struct.DState* %995, i32 0, i32 7
  store i32 %or1319, i32* %bsBuff1320, align 4
  %996 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1321 = getelementptr inbounds %struct.DState, %struct.DState* %996, i32 0, i32 8
  %997 = load i32, i32* %bsLive1321, align 4
  %add1322 = add nsw i32 %997, 8
  store i32 %add1322, i32* %bsLive1321, align 4
  %998 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1323 = getelementptr inbounds %struct.DState, %struct.DState* %998, i32 0, i32 0
  %999 = load %struct.bz_stream*, %struct.bz_stream** %strm1323, align 8
  %next_in1324 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %999, i32 0, i32 0
  %1000 = load i8*, i8** %next_in1324, align 8
  %incdec.ptr1325 = getelementptr inbounds i8, i8* %1000, i32 1
  store i8* %incdec.ptr1325, i8** %next_in1324, align 8
  %1001 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1326 = getelementptr inbounds %struct.DState, %struct.DState* %1001, i32 0, i32 0
  %1002 = load %struct.bz_stream*, %struct.bz_stream** %strm1326, align 8
  %avail_in1327 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1002, i32 0, i32 1
  %1003 = load i32, i32* %avail_in1327, align 4
  %dec1328 = add i32 %1003, -1
  store i32 %dec1328, i32* %avail_in1327, align 4
  %1004 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1329 = getelementptr inbounds %struct.DState, %struct.DState* %1004, i32 0, i32 0
  %1005 = load %struct.bz_stream*, %struct.bz_stream** %strm1329, align 8
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1005, i32 0, i32 2
  %1006 = load i32, i32* %total_in_lo321330, align 4
  %inc1331 = add i32 %1006, 1
  store i32 %inc1331, i32* %total_in_lo321330, align 4
  %1007 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1332 = getelementptr inbounds %struct.DState, %struct.DState* %1007, i32 0, i32 0
  %1008 = load %struct.bz_stream*, %struct.bz_stream** %strm1332, align 8
  %total_in_lo321333 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1008, i32 0, i32 2
  %1009 = load i32, i32* %total_in_lo321333, align 4
  %cmp1334 = icmp eq i32 %1009, 0
  br i1 %cmp1334, label %if.then.1336, label %if.end.1340

if.then.1336:                                     ; preds = %if.end.1313
  %1010 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1337 = getelementptr inbounds %struct.DState, %struct.DState* %1010, i32 0, i32 0
  %1011 = load %struct.bz_stream*, %struct.bz_stream** %strm1337, align 8
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1011, i32 0, i32 3
  %1012 = load i32, i32* %total_in_hi321338, align 4
  %inc1339 = add i32 %1012, 1
  store i32 %inc1339, i32* %total_in_hi321338, align 4
  br label %if.end.1340

if.end.1340:                                      ; preds = %if.then.1336, %if.end.1313
  br label %while.body.1294

while.end.1341:                                   ; preds = %if.then.1298
  %1013 = load i32, i32* %nSelectors, align 4
  %cmp1342 = icmp slt i32 %1013, 1
  br i1 %cmp1342, label %if.then.1344, label %if.end.1345

if.then.1344:                                     ; preds = %while.end.1341
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1345:                                      ; preds = %while.end.1341
  store i32 0, i32* %i, align 4
  br label %for.cond.1346

for.cond.1346:                                    ; preds = %for.inc.1417, %if.end.1345
  %1014 = load i32, i32* %i, align 4
  %1015 = load i32, i32* %nSelectors, align 4
  %cmp1347 = icmp slt i32 %1014, %1015
  br i1 %cmp1347, label %for.body.1349, label %for.end.1419

for.body.1349:                                    ; preds = %for.cond.1346
  store i32 0, i32* %j, align 4
  br label %while.body.1350

while.body.1350:                                  ; preds = %for.body.1349, %if.end.1412
  br label %sw.bb.1351

sw.bb.1351:                                       ; preds = %if.end, %while.body.1350
  %1016 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1352 = getelementptr inbounds %struct.DState, %struct.DState* %1016, i32 0, i32 1
  store i32 32, i32* %state1352, align 4
  br label %while.body.1354

while.body.1354:                                  ; preds = %sw.bb.1351, %if.end.1401
  %1017 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1355 = getelementptr inbounds %struct.DState, %struct.DState* %1017, i32 0, i32 8
  %1018 = load i32, i32* %bsLive1355, align 4
  %cmp1356 = icmp sge i32 %1018, 1
  br i1 %cmp1356, label %if.then.1358, label %if.end.1368

if.then.1358:                                     ; preds = %while.body.1354
  %1019 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1360 = getelementptr inbounds %struct.DState, %struct.DState* %1019, i32 0, i32 7
  %1020 = load i32, i32* %bsBuff1360, align 4
  %1021 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1361 = getelementptr inbounds %struct.DState, %struct.DState* %1021, i32 0, i32 8
  %1022 = load i32, i32* %bsLive1361, align 4
  %sub1362 = sub nsw i32 %1022, 1
  %shr1363 = lshr i32 %1020, %sub1362
  %and1364 = and i32 %shr1363, 1
  store i32 %and1364, i32* %v1359, align 4
  %1023 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1365 = getelementptr inbounds %struct.DState, %struct.DState* %1023, i32 0, i32 8
  %1024 = load i32, i32* %bsLive1365, align 4
  %sub1366 = sub nsw i32 %1024, 1
  store i32 %sub1366, i32* %bsLive1365, align 4
  %1025 = load i32, i32* %v1359, align 4
  %conv1367 = trunc i32 %1025 to i8
  store i8 %conv1367, i8* %uc, align 1
  br label %while.end.1402

if.end.1368:                                      ; preds = %while.body.1354
  %1026 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1369 = getelementptr inbounds %struct.DState, %struct.DState* %1026, i32 0, i32 0
  %1027 = load %struct.bz_stream*, %struct.bz_stream** %strm1369, align 8
  %avail_in1370 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1027, i32 0, i32 1
  %1028 = load i32, i32* %avail_in1370, align 4
  %cmp1371 = icmp eq i32 %1028, 0
  br i1 %cmp1371, label %if.then.1373, label %if.end.1374

if.then.1373:                                     ; preds = %if.end.1368
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1374:                                      ; preds = %if.end.1368
  %1029 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1375 = getelementptr inbounds %struct.DState, %struct.DState* %1029, i32 0, i32 7
  %1030 = load i32, i32* %bsBuff1375, align 4
  %shl1376 = shl i32 %1030, 8
  %1031 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1377 = getelementptr inbounds %struct.DState, %struct.DState* %1031, i32 0, i32 0
  %1032 = load %struct.bz_stream*, %struct.bz_stream** %strm1377, align 8
  %next_in1378 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1032, i32 0, i32 0
  %1033 = load i8*, i8** %next_in1378, align 8
  %1034 = load i8, i8* %1033, align 1
  %conv1379 = zext i8 %1034 to i32
  %or1380 = or i32 %shl1376, %conv1379
  %1035 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1381 = getelementptr inbounds %struct.DState, %struct.DState* %1035, i32 0, i32 7
  store i32 %or1380, i32* %bsBuff1381, align 4
  %1036 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1382 = getelementptr inbounds %struct.DState, %struct.DState* %1036, i32 0, i32 8
  %1037 = load i32, i32* %bsLive1382, align 4
  %add1383 = add nsw i32 %1037, 8
  store i32 %add1383, i32* %bsLive1382, align 4
  %1038 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1384 = getelementptr inbounds %struct.DState, %struct.DState* %1038, i32 0, i32 0
  %1039 = load %struct.bz_stream*, %struct.bz_stream** %strm1384, align 8
  %next_in1385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1039, i32 0, i32 0
  %1040 = load i8*, i8** %next_in1385, align 8
  %incdec.ptr1386 = getelementptr inbounds i8, i8* %1040, i32 1
  store i8* %incdec.ptr1386, i8** %next_in1385, align 8
  %1041 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1387 = getelementptr inbounds %struct.DState, %struct.DState* %1041, i32 0, i32 0
  %1042 = load %struct.bz_stream*, %struct.bz_stream** %strm1387, align 8
  %avail_in1388 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1042, i32 0, i32 1
  %1043 = load i32, i32* %avail_in1388, align 4
  %dec1389 = add i32 %1043, -1
  store i32 %dec1389, i32* %avail_in1388, align 4
  %1044 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1390 = getelementptr inbounds %struct.DState, %struct.DState* %1044, i32 0, i32 0
  %1045 = load %struct.bz_stream*, %struct.bz_stream** %strm1390, align 8
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1045, i32 0, i32 2
  %1046 = load i32, i32* %total_in_lo321391, align 4
  %inc1392 = add i32 %1046, 1
  store i32 %inc1392, i32* %total_in_lo321391, align 4
  %1047 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1393 = getelementptr inbounds %struct.DState, %struct.DState* %1047, i32 0, i32 0
  %1048 = load %struct.bz_stream*, %struct.bz_stream** %strm1393, align 8
  %total_in_lo321394 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1048, i32 0, i32 2
  %1049 = load i32, i32* %total_in_lo321394, align 4
  %cmp1395 = icmp eq i32 %1049, 0
  br i1 %cmp1395, label %if.then.1397, label %if.end.1401

if.then.1397:                                     ; preds = %if.end.1374
  %1050 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1398 = getelementptr inbounds %struct.DState, %struct.DState* %1050, i32 0, i32 0
  %1051 = load %struct.bz_stream*, %struct.bz_stream** %strm1398, align 8
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1051, i32 0, i32 3
  %1052 = load i32, i32* %total_in_hi321399, align 4
  %inc1400 = add i32 %1052, 1
  store i32 %inc1400, i32* %total_in_hi321399, align 4
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1397, %if.end.1374
  br label %while.body.1354

while.end.1402:                                   ; preds = %if.then.1358
  %1053 = load i8, i8* %uc, align 1
  %conv1403 = zext i8 %1053 to i32
  %cmp1404 = icmp eq i32 %conv1403, 0
  br i1 %cmp1404, label %if.then.1406, label %if.end.1407

if.then.1406:                                     ; preds = %while.end.1402
  br label %while.end.1413

if.end.1407:                                      ; preds = %while.end.1402
  %1054 = load i32, i32* %j, align 4
  %inc1408 = add nsw i32 %1054, 1
  store i32 %inc1408, i32* %j, align 4
  %1055 = load i32, i32* %j, align 4
  %1056 = load i32, i32* %nGroups, align 4
  %cmp1409 = icmp sge i32 %1055, %1056
  br i1 %cmp1409, label %if.then.1411, label %if.end.1412

if.then.1411:                                     ; preds = %if.end.1407
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1412:                                      ; preds = %if.end.1407
  br label %while.body.1350

while.end.1413:                                   ; preds = %if.then.1406
  %1057 = load i32, i32* %j, align 4
  %conv1414 = trunc i32 %1057 to i8
  %1058 = load i32, i32* %i, align 4
  %idxprom1415 = sext i32 %1058 to i64
  %1059 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf = getelementptr inbounds %struct.DState, %struct.DState* %1059, i32 0, i32 34
  %arrayidx1416 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf, i32 0, i64 %idxprom1415
  store i8 %conv1414, i8* %arrayidx1416, align 1
  br label %for.inc.1417

for.inc.1417:                                     ; preds = %while.end.1413
  %1060 = load i32, i32* %i, align 4
  %inc1418 = add nsw i32 %1060, 1
  store i32 %inc1418, i32* %i, align 4
  br label %for.cond.1346

for.end.1419:                                     ; preds = %for.cond.1346
  store i8 0, i8* %v1421, align 1
  br label %for.cond.1422

for.cond.1422:                                    ; preds = %for.inc.1429, %for.end.1419
  %1061 = load i8, i8* %v1421, align 1
  %conv1423 = zext i8 %1061 to i32
  %1062 = load i32, i32* %nGroups, align 4
  %cmp1424 = icmp slt i32 %conv1423, %1062
  br i1 %cmp1424, label %for.body.1426, label %for.end.1431

for.body.1426:                                    ; preds = %for.cond.1422
  %1063 = load i8, i8* %v1421, align 1
  %1064 = load i8, i8* %v1421, align 1
  %idxprom1427 = zext i8 %1064 to i64
  %arrayidx1428 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom1427
  store i8 %1063, i8* %arrayidx1428, align 1
  br label %for.inc.1429

for.inc.1429:                                     ; preds = %for.body.1426
  %1065 = load i8, i8* %v1421, align 1
  %inc1430 = add i8 %1065, 1
  store i8 %inc1430, i8* %v1421, align 1
  br label %for.cond.1422

for.end.1431:                                     ; preds = %for.cond.1422
  store i32 0, i32* %i, align 4
  br label %for.cond.1432

for.cond.1432:                                    ; preds = %for.inc.1456, %for.end.1431
  %1066 = load i32, i32* %i, align 4
  %1067 = load i32, i32* %nSelectors, align 4
  %cmp1433 = icmp slt i32 %1066, %1067
  br i1 %cmp1433, label %for.body.1435, label %for.end.1458

for.body.1435:                                    ; preds = %for.cond.1432
  %1068 = load i32, i32* %i, align 4
  %idxprom1436 = sext i32 %1068 to i64
  %1069 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf1437 = getelementptr inbounds %struct.DState, %struct.DState* %1069, i32 0, i32 34
  %arrayidx1438 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf1437, i32 0, i64 %idxprom1436
  %1070 = load i8, i8* %arrayidx1438, align 1
  store i8 %1070, i8* %v1421, align 1
  %1071 = load i8, i8* %v1421, align 1
  %idxprom1439 = zext i8 %1071 to i64
  %arrayidx1440 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom1439
  %1072 = load i8, i8* %arrayidx1440, align 1
  store i8 %1072, i8* %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.1444, %for.body.1435
  %1073 = load i8, i8* %v1421, align 1
  %conv1441 = zext i8 %1073 to i32
  %cmp1442 = icmp sgt i32 %conv1441, 0
  br i1 %cmp1442, label %while.body.1444, label %while.end.1452

while.body.1444:                                  ; preds = %while.cond
  %1074 = load i8, i8* %v1421, align 1
  %conv1445 = zext i8 %1074 to i32
  %sub1446 = sub nsw i32 %conv1445, 1
  %idxprom1447 = sext i32 %sub1446 to i64
  %arrayidx1448 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom1447
  %1075 = load i8, i8* %arrayidx1448, align 1
  %1076 = load i8, i8* %v1421, align 1
  %idxprom1449 = zext i8 %1076 to i64
  %arrayidx1450 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom1449
  store i8 %1075, i8* %arrayidx1450, align 1
  %1077 = load i8, i8* %v1421, align 1
  %dec1451 = add i8 %1077, -1
  store i8 %dec1451, i8* %v1421, align 1
  br label %while.cond

while.end.1452:                                   ; preds = %while.cond
  %1078 = load i8, i8* %tmp, align 1
  %arrayidx1453 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 0
  store i8 %1078, i8* %arrayidx1453, align 1
  %1079 = load i8, i8* %tmp, align 1
  %1080 = load i32, i32* %i, align 4
  %idxprom1454 = sext i32 %1080 to i64
  %1081 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector = getelementptr inbounds %struct.DState, %struct.DState* %1081, i32 0, i32 33
  %arrayidx1455 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector, i32 0, i64 %idxprom1454
  store i8 %1079, i8* %arrayidx1455, align 1
  br label %for.inc.1456

for.inc.1456:                                     ; preds = %while.end.1452
  %1082 = load i32, i32* %i, align 4
  %inc1457 = add nsw i32 %1082, 1
  store i32 %inc1457, i32* %i, align 4
  br label %for.cond.1432

for.end.1458:                                     ; preds = %for.cond.1432
  store i32 0, i32* %t, align 4
  br label %for.cond.1459

for.cond.1459:                                    ; preds = %for.inc.1656, %for.end.1458
  %1083 = load i32, i32* %t, align 4
  %1084 = load i32, i32* %nGroups, align 4
  %cmp1460 = icmp slt i32 %1083, %1084
  br i1 %cmp1460, label %for.body.1462, label %for.end.1658

for.body.1462:                                    ; preds = %for.cond.1459
  br label %sw.bb.1463

sw.bb.1463:                                       ; preds = %if.end, %for.body.1462
  %1085 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1464 = getelementptr inbounds %struct.DState, %struct.DState* %1085, i32 0, i32 1
  store i32 33, i32* %state1464, align 4
  br label %while.body.1466

while.body.1466:                                  ; preds = %sw.bb.1463, %if.end.1513
  %1086 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1467 = getelementptr inbounds %struct.DState, %struct.DState* %1086, i32 0, i32 8
  %1087 = load i32, i32* %bsLive1467, align 4
  %cmp1468 = icmp sge i32 %1087, 5
  br i1 %cmp1468, label %if.then.1470, label %if.end.1480

if.then.1470:                                     ; preds = %while.body.1466
  %1088 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1473 = getelementptr inbounds %struct.DState, %struct.DState* %1088, i32 0, i32 7
  %1089 = load i32, i32* %bsBuff1473, align 4
  %1090 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1474 = getelementptr inbounds %struct.DState, %struct.DState* %1090, i32 0, i32 8
  %1091 = load i32, i32* %bsLive1474, align 4
  %sub1475 = sub nsw i32 %1091, 5
  %shr1476 = lshr i32 %1089, %sub1475
  %and1477 = and i32 %shr1476, 31
  store i32 %and1477, i32* %v1472, align 4
  %1092 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1478 = getelementptr inbounds %struct.DState, %struct.DState* %1092, i32 0, i32 8
  %1093 = load i32, i32* %bsLive1478, align 4
  %sub1479 = sub nsw i32 %1093, 5
  store i32 %sub1479, i32* %bsLive1478, align 4
  %1094 = load i32, i32* %v1472, align 4
  store i32 %1094, i32* %curr, align 4
  br label %while.end.1514

if.end.1480:                                      ; preds = %while.body.1466
  %1095 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1481 = getelementptr inbounds %struct.DState, %struct.DState* %1095, i32 0, i32 0
  %1096 = load %struct.bz_stream*, %struct.bz_stream** %strm1481, align 8
  %avail_in1482 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1096, i32 0, i32 1
  %1097 = load i32, i32* %avail_in1482, align 4
  %cmp1483 = icmp eq i32 %1097, 0
  br i1 %cmp1483, label %if.then.1485, label %if.end.1486

if.then.1485:                                     ; preds = %if.end.1480
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1486:                                      ; preds = %if.end.1480
  %1098 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1487 = getelementptr inbounds %struct.DState, %struct.DState* %1098, i32 0, i32 7
  %1099 = load i32, i32* %bsBuff1487, align 4
  %shl1488 = shl i32 %1099, 8
  %1100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1489 = getelementptr inbounds %struct.DState, %struct.DState* %1100, i32 0, i32 0
  %1101 = load %struct.bz_stream*, %struct.bz_stream** %strm1489, align 8
  %next_in1490 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1101, i32 0, i32 0
  %1102 = load i8*, i8** %next_in1490, align 8
  %1103 = load i8, i8* %1102, align 1
  %conv1491 = zext i8 %1103 to i32
  %or1492 = or i32 %shl1488, %conv1491
  %1104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1493 = getelementptr inbounds %struct.DState, %struct.DState* %1104, i32 0, i32 7
  store i32 %or1492, i32* %bsBuff1493, align 4
  %1105 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1494 = getelementptr inbounds %struct.DState, %struct.DState* %1105, i32 0, i32 8
  %1106 = load i32, i32* %bsLive1494, align 4
  %add1495 = add nsw i32 %1106, 8
  store i32 %add1495, i32* %bsLive1494, align 4
  %1107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1496 = getelementptr inbounds %struct.DState, %struct.DState* %1107, i32 0, i32 0
  %1108 = load %struct.bz_stream*, %struct.bz_stream** %strm1496, align 8
  %next_in1497 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1108, i32 0, i32 0
  %1109 = load i8*, i8** %next_in1497, align 8
  %incdec.ptr1498 = getelementptr inbounds i8, i8* %1109, i32 1
  store i8* %incdec.ptr1498, i8** %next_in1497, align 8
  %1110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1499 = getelementptr inbounds %struct.DState, %struct.DState* %1110, i32 0, i32 0
  %1111 = load %struct.bz_stream*, %struct.bz_stream** %strm1499, align 8
  %avail_in1500 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1111, i32 0, i32 1
  %1112 = load i32, i32* %avail_in1500, align 4
  %dec1501 = add i32 %1112, -1
  store i32 %dec1501, i32* %avail_in1500, align 4
  %1113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1502 = getelementptr inbounds %struct.DState, %struct.DState* %1113, i32 0, i32 0
  %1114 = load %struct.bz_stream*, %struct.bz_stream** %strm1502, align 8
  %total_in_lo321503 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1114, i32 0, i32 2
  %1115 = load i32, i32* %total_in_lo321503, align 4
  %inc1504 = add i32 %1115, 1
  store i32 %inc1504, i32* %total_in_lo321503, align 4
  %1116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1505 = getelementptr inbounds %struct.DState, %struct.DState* %1116, i32 0, i32 0
  %1117 = load %struct.bz_stream*, %struct.bz_stream** %strm1505, align 8
  %total_in_lo321506 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1117, i32 0, i32 2
  %1118 = load i32, i32* %total_in_lo321506, align 4
  %cmp1507 = icmp eq i32 %1118, 0
  br i1 %cmp1507, label %if.then.1509, label %if.end.1513

if.then.1509:                                     ; preds = %if.end.1486
  %1119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1510 = getelementptr inbounds %struct.DState, %struct.DState* %1119, i32 0, i32 0
  %1120 = load %struct.bz_stream*, %struct.bz_stream** %strm1510, align 8
  %total_in_hi321511 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1120, i32 0, i32 3
  %1121 = load i32, i32* %total_in_hi321511, align 4
  %inc1512 = add i32 %1121, 1
  store i32 %inc1512, i32* %total_in_hi321511, align 4
  br label %if.end.1513

if.end.1513:                                      ; preds = %if.then.1509, %if.end.1486
  br label %while.body.1466

while.end.1514:                                   ; preds = %if.then.1470
  store i32 0, i32* %i, align 4
  br label %for.cond.1515

for.cond.1515:                                    ; preds = %for.inc.1653, %while.end.1514
  %1122 = load i32, i32* %i, align 4
  %1123 = load i32, i32* %alphaSize, align 4
  %cmp1516 = icmp slt i32 %1122, %1123
  br i1 %cmp1516, label %for.body.1518, label %for.end.1655

for.body.1518:                                    ; preds = %for.cond.1515
  br label %while.body.1520

while.body.1520:                                  ; preds = %for.body.1518, %if.end.1646
  %1124 = load i32, i32* %curr, align 4
  %cmp1521 = icmp slt i32 %1124, 1
  br i1 %cmp1521, label %if.then.1526, label %lor.lhs.false.1523

lor.lhs.false.1523:                               ; preds = %while.body.1520
  %1125 = load i32, i32* %curr, align 4
  %cmp1524 = icmp sgt i32 %1125, 20
  br i1 %cmp1524, label %if.then.1526, label %if.end.1527

if.then.1526:                                     ; preds = %lor.lhs.false.1523, %while.body.1520
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1527:                                      ; preds = %lor.lhs.false.1523
  br label %sw.bb.1528

sw.bb.1528:                                       ; preds = %if.end, %if.end.1527
  %1126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1529 = getelementptr inbounds %struct.DState, %struct.DState* %1126, i32 0, i32 1
  store i32 34, i32* %state1529, align 4
  br label %while.body.1531

while.body.1531:                                  ; preds = %sw.bb.1528, %if.end.1579
  %1127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1532 = getelementptr inbounds %struct.DState, %struct.DState* %1127, i32 0, i32 8
  %1128 = load i32, i32* %bsLive1532, align 4
  %cmp1533 = icmp sge i32 %1128, 1
  br i1 %cmp1533, label %if.then.1535, label %if.end.1546

if.then.1535:                                     ; preds = %while.body.1531
  %1129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1538 = getelementptr inbounds %struct.DState, %struct.DState* %1129, i32 0, i32 7
  %1130 = load i32, i32* %bsBuff1538, align 4
  %1131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1539 = getelementptr inbounds %struct.DState, %struct.DState* %1131, i32 0, i32 8
  %1132 = load i32, i32* %bsLive1539, align 4
  %sub1540 = sub nsw i32 %1132, 1
  %shr1541 = lshr i32 %1130, %sub1540
  %and1542 = and i32 %shr1541, 1
  store i32 %and1542, i32* %v1537, align 4
  %1133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1543 = getelementptr inbounds %struct.DState, %struct.DState* %1133, i32 0, i32 8
  %1134 = load i32, i32* %bsLive1543, align 4
  %sub1544 = sub nsw i32 %1134, 1
  store i32 %sub1544, i32* %bsLive1543, align 4
  %1135 = load i32, i32* %v1537, align 4
  %conv1545 = trunc i32 %1135 to i8
  store i8 %conv1545, i8* %uc, align 1
  br label %while.end.1580

if.end.1546:                                      ; preds = %while.body.1531
  %1136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1547 = getelementptr inbounds %struct.DState, %struct.DState* %1136, i32 0, i32 0
  %1137 = load %struct.bz_stream*, %struct.bz_stream** %strm1547, align 8
  %avail_in1548 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1137, i32 0, i32 1
  %1138 = load i32, i32* %avail_in1548, align 4
  %cmp1549 = icmp eq i32 %1138, 0
  br i1 %cmp1549, label %if.then.1551, label %if.end.1552

if.then.1551:                                     ; preds = %if.end.1546
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1552:                                      ; preds = %if.end.1546
  %1139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1553 = getelementptr inbounds %struct.DState, %struct.DState* %1139, i32 0, i32 7
  %1140 = load i32, i32* %bsBuff1553, align 4
  %shl1554 = shl i32 %1140, 8
  %1141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1555 = getelementptr inbounds %struct.DState, %struct.DState* %1141, i32 0, i32 0
  %1142 = load %struct.bz_stream*, %struct.bz_stream** %strm1555, align 8
  %next_in1556 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1142, i32 0, i32 0
  %1143 = load i8*, i8** %next_in1556, align 8
  %1144 = load i8, i8* %1143, align 1
  %conv1557 = zext i8 %1144 to i32
  %or1558 = or i32 %shl1554, %conv1557
  %1145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1559 = getelementptr inbounds %struct.DState, %struct.DState* %1145, i32 0, i32 7
  store i32 %or1558, i32* %bsBuff1559, align 4
  %1146 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1560 = getelementptr inbounds %struct.DState, %struct.DState* %1146, i32 0, i32 8
  %1147 = load i32, i32* %bsLive1560, align 4
  %add1561 = add nsw i32 %1147, 8
  store i32 %add1561, i32* %bsLive1560, align 4
  %1148 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1562 = getelementptr inbounds %struct.DState, %struct.DState* %1148, i32 0, i32 0
  %1149 = load %struct.bz_stream*, %struct.bz_stream** %strm1562, align 8
  %next_in1563 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1149, i32 0, i32 0
  %1150 = load i8*, i8** %next_in1563, align 8
  %incdec.ptr1564 = getelementptr inbounds i8, i8* %1150, i32 1
  store i8* %incdec.ptr1564, i8** %next_in1563, align 8
  %1151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1565 = getelementptr inbounds %struct.DState, %struct.DState* %1151, i32 0, i32 0
  %1152 = load %struct.bz_stream*, %struct.bz_stream** %strm1565, align 8
  %avail_in1566 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1152, i32 0, i32 1
  %1153 = load i32, i32* %avail_in1566, align 4
  %dec1567 = add i32 %1153, -1
  store i32 %dec1567, i32* %avail_in1566, align 4
  %1154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1568 = getelementptr inbounds %struct.DState, %struct.DState* %1154, i32 0, i32 0
  %1155 = load %struct.bz_stream*, %struct.bz_stream** %strm1568, align 8
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1155, i32 0, i32 2
  %1156 = load i32, i32* %total_in_lo321569, align 4
  %inc1570 = add i32 %1156, 1
  store i32 %inc1570, i32* %total_in_lo321569, align 4
  %1157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1571 = getelementptr inbounds %struct.DState, %struct.DState* %1157, i32 0, i32 0
  %1158 = load %struct.bz_stream*, %struct.bz_stream** %strm1571, align 8
  %total_in_lo321572 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1158, i32 0, i32 2
  %1159 = load i32, i32* %total_in_lo321572, align 4
  %cmp1573 = icmp eq i32 %1159, 0
  br i1 %cmp1573, label %if.then.1575, label %if.end.1579

if.then.1575:                                     ; preds = %if.end.1552
  %1160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1576 = getelementptr inbounds %struct.DState, %struct.DState* %1160, i32 0, i32 0
  %1161 = load %struct.bz_stream*, %struct.bz_stream** %strm1576, align 8
  %total_in_hi321577 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1161, i32 0, i32 3
  %1162 = load i32, i32* %total_in_hi321577, align 4
  %inc1578 = add i32 %1162, 1
  store i32 %inc1578, i32* %total_in_hi321577, align 4
  br label %if.end.1579

if.end.1579:                                      ; preds = %if.then.1575, %if.end.1552
  br label %while.body.1531

while.end.1580:                                   ; preds = %if.then.1535
  %1163 = load i8, i8* %uc, align 1
  %conv1581 = zext i8 %1163 to i32
  %cmp1582 = icmp eq i32 %conv1581, 0
  br i1 %cmp1582, label %if.then.1584, label %if.end.1585

if.then.1584:                                     ; preds = %while.end.1580
  br label %while.end.1647

if.end.1585:                                      ; preds = %while.end.1580
  br label %sw.bb.1586

sw.bb.1586:                                       ; preds = %if.end, %if.end.1585
  %1164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1587 = getelementptr inbounds %struct.DState, %struct.DState* %1164, i32 0, i32 1
  store i32 35, i32* %state1587, align 4
  br label %while.body.1589

while.body.1589:                                  ; preds = %sw.bb.1586, %if.end.1637
  %1165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1590 = getelementptr inbounds %struct.DState, %struct.DState* %1165, i32 0, i32 8
  %1166 = load i32, i32* %bsLive1590, align 4
  %cmp1591 = icmp sge i32 %1166, 1
  br i1 %cmp1591, label %if.then.1593, label %if.end.1604

if.then.1593:                                     ; preds = %while.body.1589
  %1167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1596 = getelementptr inbounds %struct.DState, %struct.DState* %1167, i32 0, i32 7
  %1168 = load i32, i32* %bsBuff1596, align 4
  %1169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1597 = getelementptr inbounds %struct.DState, %struct.DState* %1169, i32 0, i32 8
  %1170 = load i32, i32* %bsLive1597, align 4
  %sub1598 = sub nsw i32 %1170, 1
  %shr1599 = lshr i32 %1168, %sub1598
  %and1600 = and i32 %shr1599, 1
  store i32 %and1600, i32* %v1595, align 4
  %1171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1601 = getelementptr inbounds %struct.DState, %struct.DState* %1171, i32 0, i32 8
  %1172 = load i32, i32* %bsLive1601, align 4
  %sub1602 = sub nsw i32 %1172, 1
  store i32 %sub1602, i32* %bsLive1601, align 4
  %1173 = load i32, i32* %v1595, align 4
  %conv1603 = trunc i32 %1173 to i8
  store i8 %conv1603, i8* %uc, align 1
  br label %while.end.1638

if.end.1604:                                      ; preds = %while.body.1589
  %1174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1605 = getelementptr inbounds %struct.DState, %struct.DState* %1174, i32 0, i32 0
  %1175 = load %struct.bz_stream*, %struct.bz_stream** %strm1605, align 8
  %avail_in1606 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1175, i32 0, i32 1
  %1176 = load i32, i32* %avail_in1606, align 4
  %cmp1607 = icmp eq i32 %1176, 0
  br i1 %cmp1607, label %if.then.1609, label %if.end.1610

if.then.1609:                                     ; preds = %if.end.1604
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1610:                                      ; preds = %if.end.1604
  %1177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1611 = getelementptr inbounds %struct.DState, %struct.DState* %1177, i32 0, i32 7
  %1178 = load i32, i32* %bsBuff1611, align 4
  %shl1612 = shl i32 %1178, 8
  %1179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1613 = getelementptr inbounds %struct.DState, %struct.DState* %1179, i32 0, i32 0
  %1180 = load %struct.bz_stream*, %struct.bz_stream** %strm1613, align 8
  %next_in1614 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1180, i32 0, i32 0
  %1181 = load i8*, i8** %next_in1614, align 8
  %1182 = load i8, i8* %1181, align 1
  %conv1615 = zext i8 %1182 to i32
  %or1616 = or i32 %shl1612, %conv1615
  %1183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1617 = getelementptr inbounds %struct.DState, %struct.DState* %1183, i32 0, i32 7
  store i32 %or1616, i32* %bsBuff1617, align 4
  %1184 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1618 = getelementptr inbounds %struct.DState, %struct.DState* %1184, i32 0, i32 8
  %1185 = load i32, i32* %bsLive1618, align 4
  %add1619 = add nsw i32 %1185, 8
  store i32 %add1619, i32* %bsLive1618, align 4
  %1186 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1620 = getelementptr inbounds %struct.DState, %struct.DState* %1186, i32 0, i32 0
  %1187 = load %struct.bz_stream*, %struct.bz_stream** %strm1620, align 8
  %next_in1621 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1187, i32 0, i32 0
  %1188 = load i8*, i8** %next_in1621, align 8
  %incdec.ptr1622 = getelementptr inbounds i8, i8* %1188, i32 1
  store i8* %incdec.ptr1622, i8** %next_in1621, align 8
  %1189 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1623 = getelementptr inbounds %struct.DState, %struct.DState* %1189, i32 0, i32 0
  %1190 = load %struct.bz_stream*, %struct.bz_stream** %strm1623, align 8
  %avail_in1624 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1190, i32 0, i32 1
  %1191 = load i32, i32* %avail_in1624, align 4
  %dec1625 = add i32 %1191, -1
  store i32 %dec1625, i32* %avail_in1624, align 4
  %1192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1626 = getelementptr inbounds %struct.DState, %struct.DState* %1192, i32 0, i32 0
  %1193 = load %struct.bz_stream*, %struct.bz_stream** %strm1626, align 8
  %total_in_lo321627 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1193, i32 0, i32 2
  %1194 = load i32, i32* %total_in_lo321627, align 4
  %inc1628 = add i32 %1194, 1
  store i32 %inc1628, i32* %total_in_lo321627, align 4
  %1195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1629 = getelementptr inbounds %struct.DState, %struct.DState* %1195, i32 0, i32 0
  %1196 = load %struct.bz_stream*, %struct.bz_stream** %strm1629, align 8
  %total_in_lo321630 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1196, i32 0, i32 2
  %1197 = load i32, i32* %total_in_lo321630, align 4
  %cmp1631 = icmp eq i32 %1197, 0
  br i1 %cmp1631, label %if.then.1633, label %if.end.1637

if.then.1633:                                     ; preds = %if.end.1610
  %1198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1634 = getelementptr inbounds %struct.DState, %struct.DState* %1198, i32 0, i32 0
  %1199 = load %struct.bz_stream*, %struct.bz_stream** %strm1634, align 8
  %total_in_hi321635 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1199, i32 0, i32 3
  %1200 = load i32, i32* %total_in_hi321635, align 4
  %inc1636 = add i32 %1200, 1
  store i32 %inc1636, i32* %total_in_hi321635, align 4
  br label %if.end.1637

if.end.1637:                                      ; preds = %if.then.1633, %if.end.1610
  br label %while.body.1589

while.end.1638:                                   ; preds = %if.then.1593
  %1201 = load i8, i8* %uc, align 1
  %conv1639 = zext i8 %1201 to i32
  %cmp1640 = icmp eq i32 %conv1639, 0
  br i1 %cmp1640, label %if.then.1642, label %if.else.1644

if.then.1642:                                     ; preds = %while.end.1638
  %1202 = load i32, i32* %curr, align 4
  %inc1643 = add nsw i32 %1202, 1
  store i32 %inc1643, i32* %curr, align 4
  br label %if.end.1646

if.else.1644:                                     ; preds = %while.end.1638
  %1203 = load i32, i32* %curr, align 4
  %dec1645 = add nsw i32 %1203, -1
  store i32 %dec1645, i32* %curr, align 4
  br label %if.end.1646

if.end.1646:                                      ; preds = %if.else.1644, %if.then.1642
  br label %while.body.1520

while.end.1647:                                   ; preds = %if.then.1584
  %1204 = load i32, i32* %curr, align 4
  %conv1648 = trunc i32 %1204 to i8
  %1205 = load i32, i32* %i, align 4
  %idxprom1649 = sext i32 %1205 to i64
  %1206 = load i32, i32* %t, align 4
  %idxprom1650 = sext i32 %1206 to i64
  %1207 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len = getelementptr inbounds %struct.DState, %struct.DState* %1207, i32 0, i32 35
  %arrayidx1651 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len, i32 0, i64 %idxprom1650
  %arrayidx1652 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1651, i32 0, i64 %idxprom1649
  store i8 %conv1648, i8* %arrayidx1652, align 1
  br label %for.inc.1653

for.inc.1653:                                     ; preds = %while.end.1647
  %1208 = load i32, i32* %i, align 4
  %inc1654 = add nsw i32 %1208, 1
  store i32 %inc1654, i32* %i, align 4
  br label %for.cond.1515

for.end.1655:                                     ; preds = %for.cond.1515
  br label %for.inc.1656

for.inc.1656:                                     ; preds = %for.end.1655
  %1209 = load i32, i32* %t, align 4
  %inc1657 = add nsw i32 %1209, 1
  store i32 %inc1657, i32* %t, align 4
  br label %for.cond.1459

for.end.1658:                                     ; preds = %for.cond.1459
  store i32 0, i32* %t, align 4
  br label %for.cond.1659

for.cond.1659:                                    ; preds = %for.inc.1717, %for.end.1658
  %1210 = load i32, i32* %t, align 4
  %1211 = load i32, i32* %nGroups, align 4
  %cmp1660 = icmp slt i32 %1210, %1211
  br i1 %cmp1660, label %for.body.1662, label %for.end.1719

for.body.1662:                                    ; preds = %for.cond.1659
  store i32 32, i32* %minLen, align 4
  store i32 0, i32* %maxLen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1663

for.cond.1663:                                    ; preds = %for.inc.1699, %for.body.1662
  %1212 = load i32, i32* %i, align 4
  %1213 = load i32, i32* %alphaSize, align 4
  %cmp1664 = icmp slt i32 %1212, %1213
  br i1 %cmp1664, label %for.body.1666, label %for.end.1701

for.body.1666:                                    ; preds = %for.cond.1663
  %1214 = load i32, i32* %i, align 4
  %idxprom1667 = sext i32 %1214 to i64
  %1215 = load i32, i32* %t, align 4
  %idxprom1668 = sext i32 %1215 to i64
  %1216 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1669 = getelementptr inbounds %struct.DState, %struct.DState* %1216, i32 0, i32 35
  %arrayidx1670 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1669, i32 0, i64 %idxprom1668
  %arrayidx1671 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1670, i32 0, i64 %idxprom1667
  %1217 = load i8, i8* %arrayidx1671, align 1
  %conv1672 = zext i8 %1217 to i32
  %1218 = load i32, i32* %maxLen, align 4
  %cmp1673 = icmp sgt i32 %conv1672, %1218
  br i1 %cmp1673, label %if.then.1675, label %if.end.1682

if.then.1675:                                     ; preds = %for.body.1666
  %1219 = load i32, i32* %i, align 4
  %idxprom1676 = sext i32 %1219 to i64
  %1220 = load i32, i32* %t, align 4
  %idxprom1677 = sext i32 %1220 to i64
  %1221 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1678 = getelementptr inbounds %struct.DState, %struct.DState* %1221, i32 0, i32 35
  %arrayidx1679 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1678, i32 0, i64 %idxprom1677
  %arrayidx1680 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1679, i32 0, i64 %idxprom1676
  %1222 = load i8, i8* %arrayidx1680, align 1
  %conv1681 = zext i8 %1222 to i32
  store i32 %conv1681, i32* %maxLen, align 4
  br label %if.end.1682

if.end.1682:                                      ; preds = %if.then.1675, %for.body.1666
  %1223 = load i32, i32* %i, align 4
  %idxprom1683 = sext i32 %1223 to i64
  %1224 = load i32, i32* %t, align 4
  %idxprom1684 = sext i32 %1224 to i64
  %1225 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1685 = getelementptr inbounds %struct.DState, %struct.DState* %1225, i32 0, i32 35
  %arrayidx1686 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1685, i32 0, i64 %idxprom1684
  %arrayidx1687 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1686, i32 0, i64 %idxprom1683
  %1226 = load i8, i8* %arrayidx1687, align 1
  %conv1688 = zext i8 %1226 to i32
  %1227 = load i32, i32* %minLen, align 4
  %cmp1689 = icmp slt i32 %conv1688, %1227
  br i1 %cmp1689, label %if.then.1691, label %if.end.1698

if.then.1691:                                     ; preds = %if.end.1682
  %1228 = load i32, i32* %i, align 4
  %idxprom1692 = sext i32 %1228 to i64
  %1229 = load i32, i32* %t, align 4
  %idxprom1693 = sext i32 %1229 to i64
  %1230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1694 = getelementptr inbounds %struct.DState, %struct.DState* %1230, i32 0, i32 35
  %arrayidx1695 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1694, i32 0, i64 %idxprom1693
  %arrayidx1696 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1695, i32 0, i64 %idxprom1692
  %1231 = load i8, i8* %arrayidx1696, align 1
  %conv1697 = zext i8 %1231 to i32
  store i32 %conv1697, i32* %minLen, align 4
  br label %if.end.1698

if.end.1698:                                      ; preds = %if.then.1691, %if.end.1682
  br label %for.inc.1699

for.inc.1699:                                     ; preds = %if.end.1698
  %1232 = load i32, i32* %i, align 4
  %inc1700 = add nsw i32 %1232, 1
  store i32 %inc1700, i32* %i, align 4
  br label %for.cond.1663

for.end.1701:                                     ; preds = %for.cond.1663
  %1233 = load i32, i32* %t, align 4
  %idxprom1702 = sext i32 %1233 to i64
  %1234 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit = getelementptr inbounds %struct.DState, %struct.DState* %1234, i32 0, i32 36
  %arrayidx1703 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit, i32 0, i64 %idxprom1702
  %arrayidx1704 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1703, i32 0, i64 0
  %1235 = load i32, i32* %t, align 4
  %idxprom1705 = sext i32 %1235 to i64
  %1236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base = getelementptr inbounds %struct.DState, %struct.DState* %1236, i32 0, i32 37
  %arrayidx1706 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base, i32 0, i64 %idxprom1705
  %arrayidx1707 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1706, i32 0, i64 0
  %1237 = load i32, i32* %t, align 4
  %idxprom1708 = sext i32 %1237 to i64
  %1238 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm = getelementptr inbounds %struct.DState, %struct.DState* %1238, i32 0, i32 38
  %arrayidx1709 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm, i32 0, i64 %idxprom1708
  %arrayidx1710 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1709, i32 0, i64 0
  %1239 = load i32, i32* %t, align 4
  %idxprom1711 = sext i32 %1239 to i64
  %1240 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1712 = getelementptr inbounds %struct.DState, %struct.DState* %1240, i32 0, i32 35
  %arrayidx1713 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1712, i32 0, i64 %idxprom1711
  %arrayidx1714 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1713, i32 0, i64 0
  %1241 = load i32, i32* %minLen, align 4
  %1242 = load i32, i32* %maxLen, align 4
  %1243 = load i32, i32* %alphaSize, align 4
  call void @BZ2_hbCreateDecodeTables(i32* %arrayidx1704, i32* %arrayidx1707, i32* %arrayidx1710, i8* %arrayidx1714, i32 %1241, i32 %1242, i32 %1243)
  %1244 = load i32, i32* %minLen, align 4
  %1245 = load i32, i32* %t, align 4
  %idxprom1715 = sext i32 %1245 to i64
  %1246 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens = getelementptr inbounds %struct.DState, %struct.DState* %1246, i32 0, i32 39
  %arrayidx1716 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens, i32 0, i64 %idxprom1715
  store i32 %1244, i32* %arrayidx1716, align 4
  br label %for.inc.1717

for.inc.1717:                                     ; preds = %for.end.1701
  %1247 = load i32, i32* %t, align 4
  %inc1718 = add nsw i32 %1247, 1
  store i32 %inc1718, i32* %t, align 4
  br label %for.cond.1659

for.end.1719:                                     ; preds = %for.cond.1659
  %1248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1720 = getelementptr inbounds %struct.DState, %struct.DState* %1248, i32 0, i32 27
  %1249 = load i32, i32* %nInUse1720, align 4
  %add1721 = add nsw i32 %1249, 1
  store i32 %add1721, i32* %EOB, align 4
  %1250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k1722 = getelementptr inbounds %struct.DState, %struct.DState* %1250, i32 0, i32 9
  %1251 = load i32, i32* %blockSize100k1722, align 4
  %mul1723 = mul nsw i32 100000, %1251
  store i32 %mul1723, i32* %nblockMAX, align 4
  store i32 -1, i32* %groupNo, align 4
  store i32 0, i32* %groupPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1724

for.cond.1724:                                    ; preds = %for.inc.1730, %for.end.1719
  %1252 = load i32, i32* %i, align 4
  %cmp1725 = icmp sle i32 %1252, 255
  br i1 %cmp1725, label %for.body.1727, label %for.end.1732

for.body.1727:                                    ; preds = %for.cond.1724
  %1253 = load i32, i32* %i, align 4
  %idxprom1728 = sext i32 %1253 to i64
  %1254 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab = getelementptr inbounds %struct.DState, %struct.DState* %1254, i32 0, i32 16
  %arrayidx1729 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab, i32 0, i64 %idxprom1728
  store i32 0, i32* %arrayidx1729, align 4
  br label %for.inc.1730

for.inc.1730:                                     ; preds = %for.body.1727
  %1255 = load i32, i32* %i, align 4
  %inc1731 = add nsw i32 %1255, 1
  store i32 %inc1731, i32* %i, align 4
  br label %for.cond.1724

for.end.1732:                                     ; preds = %for.cond.1724
  store i32 4095, i32* %kk, align 4
  store i32 15, i32* %ii, align 4
  br label %for.cond.1736

for.cond.1736:                                    ; preds = %for.inc.1756, %for.end.1732
  %1256 = load i32, i32* %ii, align 4
  %cmp1737 = icmp sge i32 %1256, 0
  br i1 %cmp1737, label %for.body.1739, label %for.end.1758

for.body.1739:                                    ; preds = %for.cond.1736
  store i32 15, i32* %jj, align 4
  br label %for.cond.1740

for.cond.1740:                                    ; preds = %for.inc.1750, %for.body.1739
  %1257 = load i32, i32* %jj, align 4
  %cmp1741 = icmp sge i32 %1257, 0
  br i1 %cmp1741, label %for.body.1743, label %for.end.1752

for.body.1743:                                    ; preds = %for.cond.1740
  %1258 = load i32, i32* %ii, align 4
  %mul1744 = mul nsw i32 %1258, 16
  %1259 = load i32, i32* %jj, align 4
  %add1745 = add nsw i32 %mul1744, %1259
  %conv1746 = trunc i32 %add1745 to i8
  %1260 = load i32, i32* %kk, align 4
  %idxprom1747 = sext i32 %1260 to i64
  %1261 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa = getelementptr inbounds %struct.DState, %struct.DState* %1261, i32 0, i32 31
  %arrayidx1748 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa, i32 0, i64 %idxprom1747
  store i8 %conv1746, i8* %arrayidx1748, align 1
  %1262 = load i32, i32* %kk, align 4
  %dec1749 = add nsw i32 %1262, -1
  store i32 %dec1749, i32* %kk, align 4
  br label %for.inc.1750

for.inc.1750:                                     ; preds = %for.body.1743
  %1263 = load i32, i32* %jj, align 4
  %dec1751 = add nsw i32 %1263, -1
  store i32 %dec1751, i32* %jj, align 4
  br label %for.cond.1740

for.end.1752:                                     ; preds = %for.cond.1740
  %1264 = load i32, i32* %kk, align 4
  %add1753 = add nsw i32 %1264, 1
  %1265 = load i32, i32* %ii, align 4
  %idxprom1754 = sext i32 %1265 to i64
  %1266 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase = getelementptr inbounds %struct.DState, %struct.DState* %1266, i32 0, i32 32
  %arrayidx1755 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase, i32 0, i64 %idxprom1754
  store i32 %add1753, i32* %arrayidx1755, align 4
  br label %for.inc.1756

for.inc.1756:                                     ; preds = %for.end.1752
  %1267 = load i32, i32* %ii, align 4
  %dec1757 = add nsw i32 %1267, -1
  store i32 %dec1757, i32* %ii, align 4
  br label %for.cond.1736

for.end.1758:                                     ; preds = %for.cond.1736
  store i32 0, i32* %nblock, align 4
  %1268 = load i32, i32* %groupPos, align 4
  %cmp1759 = icmp eq i32 %1268, 0
  br i1 %cmp1759, label %if.then.1761, label %if.end.1786

if.then.1761:                                     ; preds = %for.end.1758
  %1269 = load i32, i32* %groupNo, align 4
  %inc1762 = add nsw i32 %1269, 1
  store i32 %inc1762, i32* %groupNo, align 4
  %1270 = load i32, i32* %groupNo, align 4
  %1271 = load i32, i32* %nSelectors, align 4
  %cmp1763 = icmp sge i32 %1270, %1271
  br i1 %cmp1763, label %if.then.1765, label %if.end.1766

if.then.1765:                                     ; preds = %if.then.1761
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1766:                                      ; preds = %if.then.1761
  store i32 50, i32* %groupPos, align 4
  %1272 = load i32, i32* %groupNo, align 4
  %idxprom1767 = sext i32 %1272 to i64
  %1273 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1768 = getelementptr inbounds %struct.DState, %struct.DState* %1273, i32 0, i32 33
  %arrayidx1769 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1768, i32 0, i64 %idxprom1767
  %1274 = load i8, i8* %arrayidx1769, align 1
  %conv1770 = zext i8 %1274 to i32
  store i32 %conv1770, i32* %gSel, align 4
  %1275 = load i32, i32* %gSel, align 4
  %idxprom1771 = sext i32 %1275 to i64
  %1276 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1772 = getelementptr inbounds %struct.DState, %struct.DState* %1276, i32 0, i32 39
  %arrayidx1773 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1772, i32 0, i64 %idxprom1771
  %1277 = load i32, i32* %arrayidx1773, align 4
  store i32 %1277, i32* %gMinlen, align 4
  %1278 = load i32, i32* %gSel, align 4
  %idxprom1774 = sext i32 %1278 to i64
  %1279 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1775 = getelementptr inbounds %struct.DState, %struct.DState* %1279, i32 0, i32 36
  %arrayidx1776 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1775, i32 0, i64 %idxprom1774
  %arrayidx1777 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1776, i32 0, i64 0
  store i32* %arrayidx1777, i32** %gLimit, align 8
  %1280 = load i32, i32* %gSel, align 4
  %idxprom1778 = sext i32 %1280 to i64
  %1281 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1779 = getelementptr inbounds %struct.DState, %struct.DState* %1281, i32 0, i32 38
  %arrayidx1780 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1779, i32 0, i64 %idxprom1778
  %arrayidx1781 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1780, i32 0, i64 0
  store i32* %arrayidx1781, i32** %gPerm, align 8
  %1282 = load i32, i32* %gSel, align 4
  %idxprom1782 = sext i32 %1282 to i64
  %1283 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1783 = getelementptr inbounds %struct.DState, %struct.DState* %1283, i32 0, i32 37
  %arrayidx1784 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1783, i32 0, i64 %idxprom1782
  %arrayidx1785 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1784, i32 0, i64 0
  store i32* %arrayidx1785, i32** %gBase, align 8
  br label %if.end.1786

if.end.1786:                                      ; preds = %if.end.1766, %for.end.1758
  %1284 = load i32, i32* %groupPos, align 4
  %dec1787 = add nsw i32 %1284, -1
  store i32 %dec1787, i32* %groupPos, align 4
  %1285 = load i32, i32* %gMinlen, align 4
  store i32 %1285, i32* %zn, align 4
  br label %sw.bb.1788

sw.bb.1788:                                       ; preds = %if.end, %if.end.1786
  %1286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1789 = getelementptr inbounds %struct.DState, %struct.DState* %1286, i32 0, i32 1
  store i32 36, i32* %state1789, align 4
  br label %while.body.1791

while.body.1791:                                  ; preds = %sw.bb.1788, %if.end.1840
  %1287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1792 = getelementptr inbounds %struct.DState, %struct.DState* %1287, i32 0, i32 8
  %1288 = load i32, i32* %bsLive1792, align 4
  %1289 = load i32, i32* %zn, align 4
  %cmp1793 = icmp sge i32 %1288, %1289
  br i1 %cmp1793, label %if.then.1795, label %if.end.1807

if.then.1795:                                     ; preds = %while.body.1791
  %1290 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1798 = getelementptr inbounds %struct.DState, %struct.DState* %1290, i32 0, i32 7
  %1291 = load i32, i32* %bsBuff1798, align 4
  %1292 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1799 = getelementptr inbounds %struct.DState, %struct.DState* %1292, i32 0, i32 8
  %1293 = load i32, i32* %bsLive1799, align 4
  %1294 = load i32, i32* %zn, align 4
  %sub1800 = sub nsw i32 %1293, %1294
  %shr1801 = lshr i32 %1291, %sub1800
  %1295 = load i32, i32* %zn, align 4
  %shl1802 = shl i32 1, %1295
  %sub1803 = sub nsw i32 %shl1802, 1
  %and1804 = and i32 %shr1801, %sub1803
  store i32 %and1804, i32* %v1797, align 4
  %1296 = load i32, i32* %zn, align 4
  %1297 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1805 = getelementptr inbounds %struct.DState, %struct.DState* %1297, i32 0, i32 8
  %1298 = load i32, i32* %bsLive1805, align 4
  %sub1806 = sub nsw i32 %1298, %1296
  store i32 %sub1806, i32* %bsLive1805, align 4
  %1299 = load i32, i32* %v1797, align 4
  store i32 %1299, i32* %zvec, align 4
  br label %while.end.1841

if.end.1807:                                      ; preds = %while.body.1791
  %1300 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1808 = getelementptr inbounds %struct.DState, %struct.DState* %1300, i32 0, i32 0
  %1301 = load %struct.bz_stream*, %struct.bz_stream** %strm1808, align 8
  %avail_in1809 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1301, i32 0, i32 1
  %1302 = load i32, i32* %avail_in1809, align 4
  %cmp1810 = icmp eq i32 %1302, 0
  br i1 %cmp1810, label %if.then.1812, label %if.end.1813

if.then.1812:                                     ; preds = %if.end.1807
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1813:                                      ; preds = %if.end.1807
  %1303 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1814 = getelementptr inbounds %struct.DState, %struct.DState* %1303, i32 0, i32 7
  %1304 = load i32, i32* %bsBuff1814, align 4
  %shl1815 = shl i32 %1304, 8
  %1305 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1816 = getelementptr inbounds %struct.DState, %struct.DState* %1305, i32 0, i32 0
  %1306 = load %struct.bz_stream*, %struct.bz_stream** %strm1816, align 8
  %next_in1817 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1306, i32 0, i32 0
  %1307 = load i8*, i8** %next_in1817, align 8
  %1308 = load i8, i8* %1307, align 1
  %conv1818 = zext i8 %1308 to i32
  %or1819 = or i32 %shl1815, %conv1818
  %1309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1820 = getelementptr inbounds %struct.DState, %struct.DState* %1309, i32 0, i32 7
  store i32 %or1819, i32* %bsBuff1820, align 4
  %1310 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1821 = getelementptr inbounds %struct.DState, %struct.DState* %1310, i32 0, i32 8
  %1311 = load i32, i32* %bsLive1821, align 4
  %add1822 = add nsw i32 %1311, 8
  store i32 %add1822, i32* %bsLive1821, align 4
  %1312 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1823 = getelementptr inbounds %struct.DState, %struct.DState* %1312, i32 0, i32 0
  %1313 = load %struct.bz_stream*, %struct.bz_stream** %strm1823, align 8
  %next_in1824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1313, i32 0, i32 0
  %1314 = load i8*, i8** %next_in1824, align 8
  %incdec.ptr1825 = getelementptr inbounds i8, i8* %1314, i32 1
  store i8* %incdec.ptr1825, i8** %next_in1824, align 8
  %1315 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1826 = getelementptr inbounds %struct.DState, %struct.DState* %1315, i32 0, i32 0
  %1316 = load %struct.bz_stream*, %struct.bz_stream** %strm1826, align 8
  %avail_in1827 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1316, i32 0, i32 1
  %1317 = load i32, i32* %avail_in1827, align 4
  %dec1828 = add i32 %1317, -1
  store i32 %dec1828, i32* %avail_in1827, align 4
  %1318 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1829 = getelementptr inbounds %struct.DState, %struct.DState* %1318, i32 0, i32 0
  %1319 = load %struct.bz_stream*, %struct.bz_stream** %strm1829, align 8
  %total_in_lo321830 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1319, i32 0, i32 2
  %1320 = load i32, i32* %total_in_lo321830, align 4
  %inc1831 = add i32 %1320, 1
  store i32 %inc1831, i32* %total_in_lo321830, align 4
  %1321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1832 = getelementptr inbounds %struct.DState, %struct.DState* %1321, i32 0, i32 0
  %1322 = load %struct.bz_stream*, %struct.bz_stream** %strm1832, align 8
  %total_in_lo321833 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1322, i32 0, i32 2
  %1323 = load i32, i32* %total_in_lo321833, align 4
  %cmp1834 = icmp eq i32 %1323, 0
  br i1 %cmp1834, label %if.then.1836, label %if.end.1840

if.then.1836:                                     ; preds = %if.end.1813
  %1324 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1837 = getelementptr inbounds %struct.DState, %struct.DState* %1324, i32 0, i32 0
  %1325 = load %struct.bz_stream*, %struct.bz_stream** %strm1837, align 8
  %total_in_hi321838 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1325, i32 0, i32 3
  %1326 = load i32, i32* %total_in_hi321838, align 4
  %inc1839 = add i32 %1326, 1
  store i32 %inc1839, i32* %total_in_hi321838, align 4
  br label %if.end.1840

if.end.1840:                                      ; preds = %if.then.1836, %if.end.1813
  br label %while.body.1791

while.end.1841:                                   ; preds = %if.then.1795
  br label %while.body.1843

while.body.1843:                                  ; preds = %while.end.1841, %while.end.1906
  %1327 = load i32, i32* %zn, align 4
  %cmp1844 = icmp sgt i32 %1327, 20
  br i1 %cmp1844, label %if.then.1846, label %if.end.1847

if.then.1846:                                     ; preds = %while.body.1843
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1847:                                      ; preds = %while.body.1843
  %1328 = load i32, i32* %zvec, align 4
  %1329 = load i32, i32* %zn, align 4
  %idxprom1848 = sext i32 %1329 to i64
  %1330 = load i32*, i32** %gLimit, align 8
  %arrayidx1849 = getelementptr inbounds i32, i32* %1330, i64 %idxprom1848
  %1331 = load i32, i32* %arrayidx1849, align 4
  %cmp1850 = icmp sle i32 %1328, %1331
  br i1 %cmp1850, label %if.then.1852, label %if.end.1853

if.then.1852:                                     ; preds = %if.end.1847
  br label %while.end.1909

if.end.1853:                                      ; preds = %if.end.1847
  %1332 = load i32, i32* %zn, align 4
  %inc1854 = add nsw i32 %1332, 1
  store i32 %inc1854, i32* %zn, align 4
  br label %sw.bb.1855

sw.bb.1855:                                       ; preds = %if.end, %if.end.1853
  %1333 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1856 = getelementptr inbounds %struct.DState, %struct.DState* %1333, i32 0, i32 1
  store i32 37, i32* %state1856, align 4
  br label %while.body.1858

while.body.1858:                                  ; preds = %sw.bb.1855, %if.end.1905
  %1334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1859 = getelementptr inbounds %struct.DState, %struct.DState* %1334, i32 0, i32 8
  %1335 = load i32, i32* %bsLive1859, align 4
  %cmp1860 = icmp sge i32 %1335, 1
  br i1 %cmp1860, label %if.then.1862, label %if.end.1872

if.then.1862:                                     ; preds = %while.body.1858
  %1336 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1865 = getelementptr inbounds %struct.DState, %struct.DState* %1336, i32 0, i32 7
  %1337 = load i32, i32* %bsBuff1865, align 4
  %1338 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1866 = getelementptr inbounds %struct.DState, %struct.DState* %1338, i32 0, i32 8
  %1339 = load i32, i32* %bsLive1866, align 4
  %sub1867 = sub nsw i32 %1339, 1
  %shr1868 = lshr i32 %1337, %sub1867
  %and1869 = and i32 %shr1868, 1
  store i32 %and1869, i32* %v1864, align 4
  %1340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1870 = getelementptr inbounds %struct.DState, %struct.DState* %1340, i32 0, i32 8
  %1341 = load i32, i32* %bsLive1870, align 4
  %sub1871 = sub nsw i32 %1341, 1
  store i32 %sub1871, i32* %bsLive1870, align 4
  %1342 = load i32, i32* %v1864, align 4
  store i32 %1342, i32* %zj, align 4
  br label %while.end.1906

if.end.1872:                                      ; preds = %while.body.1858
  %1343 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1873 = getelementptr inbounds %struct.DState, %struct.DState* %1343, i32 0, i32 0
  %1344 = load %struct.bz_stream*, %struct.bz_stream** %strm1873, align 8
  %avail_in1874 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1344, i32 0, i32 1
  %1345 = load i32, i32* %avail_in1874, align 4
  %cmp1875 = icmp eq i32 %1345, 0
  br i1 %cmp1875, label %if.then.1877, label %if.end.1878

if.then.1877:                                     ; preds = %if.end.1872
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1878:                                      ; preds = %if.end.1872
  %1346 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1879 = getelementptr inbounds %struct.DState, %struct.DState* %1346, i32 0, i32 7
  %1347 = load i32, i32* %bsBuff1879, align 4
  %shl1880 = shl i32 %1347, 8
  %1348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1881 = getelementptr inbounds %struct.DState, %struct.DState* %1348, i32 0, i32 0
  %1349 = load %struct.bz_stream*, %struct.bz_stream** %strm1881, align 8
  %next_in1882 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1349, i32 0, i32 0
  %1350 = load i8*, i8** %next_in1882, align 8
  %1351 = load i8, i8* %1350, align 1
  %conv1883 = zext i8 %1351 to i32
  %or1884 = or i32 %shl1880, %conv1883
  %1352 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1885 = getelementptr inbounds %struct.DState, %struct.DState* %1352, i32 0, i32 7
  store i32 %or1884, i32* %bsBuff1885, align 4
  %1353 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1886 = getelementptr inbounds %struct.DState, %struct.DState* %1353, i32 0, i32 8
  %1354 = load i32, i32* %bsLive1886, align 4
  %add1887 = add nsw i32 %1354, 8
  store i32 %add1887, i32* %bsLive1886, align 4
  %1355 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1888 = getelementptr inbounds %struct.DState, %struct.DState* %1355, i32 0, i32 0
  %1356 = load %struct.bz_stream*, %struct.bz_stream** %strm1888, align 8
  %next_in1889 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1356, i32 0, i32 0
  %1357 = load i8*, i8** %next_in1889, align 8
  %incdec.ptr1890 = getelementptr inbounds i8, i8* %1357, i32 1
  store i8* %incdec.ptr1890, i8** %next_in1889, align 8
  %1358 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1891 = getelementptr inbounds %struct.DState, %struct.DState* %1358, i32 0, i32 0
  %1359 = load %struct.bz_stream*, %struct.bz_stream** %strm1891, align 8
  %avail_in1892 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1359, i32 0, i32 1
  %1360 = load i32, i32* %avail_in1892, align 4
  %dec1893 = add i32 %1360, -1
  store i32 %dec1893, i32* %avail_in1892, align 4
  %1361 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1894 = getelementptr inbounds %struct.DState, %struct.DState* %1361, i32 0, i32 0
  %1362 = load %struct.bz_stream*, %struct.bz_stream** %strm1894, align 8
  %total_in_lo321895 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1362, i32 0, i32 2
  %1363 = load i32, i32* %total_in_lo321895, align 4
  %inc1896 = add i32 %1363, 1
  store i32 %inc1896, i32* %total_in_lo321895, align 4
  %1364 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1897 = getelementptr inbounds %struct.DState, %struct.DState* %1364, i32 0, i32 0
  %1365 = load %struct.bz_stream*, %struct.bz_stream** %strm1897, align 8
  %total_in_lo321898 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1365, i32 0, i32 2
  %1366 = load i32, i32* %total_in_lo321898, align 4
  %cmp1899 = icmp eq i32 %1366, 0
  br i1 %cmp1899, label %if.then.1901, label %if.end.1905

if.then.1901:                                     ; preds = %if.end.1878
  %1367 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1902 = getelementptr inbounds %struct.DState, %struct.DState* %1367, i32 0, i32 0
  %1368 = load %struct.bz_stream*, %struct.bz_stream** %strm1902, align 8
  %total_in_hi321903 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1368, i32 0, i32 3
  %1369 = load i32, i32* %total_in_hi321903, align 4
  %inc1904 = add i32 %1369, 1
  store i32 %inc1904, i32* %total_in_hi321903, align 4
  br label %if.end.1905

if.end.1905:                                      ; preds = %if.then.1901, %if.end.1878
  br label %while.body.1858

while.end.1906:                                   ; preds = %if.then.1862
  %1370 = load i32, i32* %zvec, align 4
  %shl1907 = shl i32 %1370, 1
  %1371 = load i32, i32* %zj, align 4
  %or1908 = or i32 %shl1907, %1371
  store i32 %or1908, i32* %zvec, align 4
  br label %while.body.1843

while.end.1909:                                   ; preds = %if.then.1852
  %1372 = load i32, i32* %zvec, align 4
  %1373 = load i32, i32* %zn, align 4
  %idxprom1910 = sext i32 %1373 to i64
  %1374 = load i32*, i32** %gBase, align 8
  %arrayidx1911 = getelementptr inbounds i32, i32* %1374, i64 %idxprom1910
  %1375 = load i32, i32* %arrayidx1911, align 4
  %sub1912 = sub nsw i32 %1372, %1375
  %cmp1913 = icmp slt i32 %sub1912, 0
  br i1 %cmp1913, label %if.then.1921, label %lor.lhs.false.1915

lor.lhs.false.1915:                               ; preds = %while.end.1909
  %1376 = load i32, i32* %zvec, align 4
  %1377 = load i32, i32* %zn, align 4
  %idxprom1916 = sext i32 %1377 to i64
  %1378 = load i32*, i32** %gBase, align 8
  %arrayidx1917 = getelementptr inbounds i32, i32* %1378, i64 %idxprom1916
  %1379 = load i32, i32* %arrayidx1917, align 4
  %sub1918 = sub nsw i32 %1376, %1379
  %cmp1919 = icmp sge i32 %sub1918, 258
  br i1 %cmp1919, label %if.then.1921, label %if.end.1922

if.then.1921:                                     ; preds = %lor.lhs.false.1915, %while.end.1909
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1922:                                      ; preds = %lor.lhs.false.1915
  %1380 = load i32, i32* %zvec, align 4
  %1381 = load i32, i32* %zn, align 4
  %idxprom1923 = sext i32 %1381 to i64
  %1382 = load i32*, i32** %gBase, align 8
  %arrayidx1924 = getelementptr inbounds i32, i32* %1382, i64 %idxprom1923
  %1383 = load i32, i32* %arrayidx1924, align 4
  %sub1925 = sub nsw i32 %1380, %1383
  %idxprom1926 = sext i32 %sub1925 to i64
  %1384 = load i32*, i32** %gPerm, align 8
  %arrayidx1927 = getelementptr inbounds i32, i32* %1384, i64 %idxprom1926
  %1385 = load i32, i32* %arrayidx1927, align 4
  store i32 %1385, i32* %nextSym, align 4
  br label %while.body.1929

while.body.1929:                                  ; preds = %if.end.1922, %if.end.2173, %if.end.2543
  %1386 = load i32, i32* %nextSym, align 4
  %1387 = load i32, i32* %EOB, align 4
  %cmp1930 = icmp eq i32 %1386, %1387
  br i1 %cmp1930, label %if.then.1932, label %if.end.1933

if.then.1932:                                     ; preds = %while.body.1929
  br label %while.end.2549

if.end.1933:                                      ; preds = %while.body.1929
  %1388 = load i32, i32* %nextSym, align 4
  %cmp1934 = icmp eq i32 %1388, 0
  br i1 %cmp1934, label %if.then.1939, label %lor.lhs.false.1936

lor.lhs.false.1936:                               ; preds = %if.end.1933
  %1389 = load i32, i32* %nextSym, align 4
  %cmp1937 = icmp eq i32 %1389, 1
  br i1 %cmp1937, label %if.then.1939, label %if.else.2174

if.then.1939:                                     ; preds = %lor.lhs.false.1936, %if.end.1933
  store i32 -1, i32* %es, align 4
  store i32 1, i32* %N, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.1939
  %1390 = load i32, i32* %nextSym, align 4
  %cmp1940 = icmp eq i32 %1390, 0
  br i1 %cmp1940, label %if.then.1942, label %if.else.1945

if.then.1942:                                     ; preds = %do.body
  %1391 = load i32, i32* %es, align 4
  %1392 = load i32, i32* %N, align 4
  %mul1943 = mul nsw i32 1, %1392
  %add1944 = add nsw i32 %1391, %mul1943
  store i32 %add1944, i32* %es, align 4
  br label %if.end.1952

if.else.1945:                                     ; preds = %do.body
  %1393 = load i32, i32* %nextSym, align 4
  %cmp1946 = icmp eq i32 %1393, 1
  br i1 %cmp1946, label %if.then.1948, label %if.end.1951

if.then.1948:                                     ; preds = %if.else.1945
  %1394 = load i32, i32* %es, align 4
  %1395 = load i32, i32* %N, align 4
  %mul1949 = mul nsw i32 2, %1395
  %add1950 = add nsw i32 %1394, %mul1949
  store i32 %add1950, i32* %es, align 4
  br label %if.end.1951

if.end.1951:                                      ; preds = %if.then.1948, %if.else.1945
  br label %if.end.1952

if.end.1952:                                      ; preds = %if.end.1951, %if.then.1942
  %1396 = load i32, i32* %N, align 4
  %mul1953 = mul nsw i32 %1396, 2
  store i32 %mul1953, i32* %N, align 4
  %1397 = load i32, i32* %groupPos, align 4
  %cmp1954 = icmp eq i32 %1397, 0
  br i1 %cmp1954, label %if.then.1956, label %if.end.1981

if.then.1956:                                     ; preds = %if.end.1952
  %1398 = load i32, i32* %groupNo, align 4
  %inc1957 = add nsw i32 %1398, 1
  store i32 %inc1957, i32* %groupNo, align 4
  %1399 = load i32, i32* %groupNo, align 4
  %1400 = load i32, i32* %nSelectors, align 4
  %cmp1958 = icmp sge i32 %1399, %1400
  br i1 %cmp1958, label %if.then.1960, label %if.end.1961

if.then.1960:                                     ; preds = %if.then.1956
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1961:                                      ; preds = %if.then.1956
  store i32 50, i32* %groupPos, align 4
  %1401 = load i32, i32* %groupNo, align 4
  %idxprom1962 = sext i32 %1401 to i64
  %1402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1963 = getelementptr inbounds %struct.DState, %struct.DState* %1402, i32 0, i32 33
  %arrayidx1964 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1963, i32 0, i64 %idxprom1962
  %1403 = load i8, i8* %arrayidx1964, align 1
  %conv1965 = zext i8 %1403 to i32
  store i32 %conv1965, i32* %gSel, align 4
  %1404 = load i32, i32* %gSel, align 4
  %idxprom1966 = sext i32 %1404 to i64
  %1405 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1967 = getelementptr inbounds %struct.DState, %struct.DState* %1405, i32 0, i32 39
  %arrayidx1968 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1967, i32 0, i64 %idxprom1966
  %1406 = load i32, i32* %arrayidx1968, align 4
  store i32 %1406, i32* %gMinlen, align 4
  %1407 = load i32, i32* %gSel, align 4
  %idxprom1969 = sext i32 %1407 to i64
  %1408 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1970 = getelementptr inbounds %struct.DState, %struct.DState* %1408, i32 0, i32 36
  %arrayidx1971 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1970, i32 0, i64 %idxprom1969
  %arrayidx1972 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1971, i32 0, i64 0
  store i32* %arrayidx1972, i32** %gLimit, align 8
  %1409 = load i32, i32* %gSel, align 4
  %idxprom1973 = sext i32 %1409 to i64
  %1410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1974 = getelementptr inbounds %struct.DState, %struct.DState* %1410, i32 0, i32 38
  %arrayidx1975 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1974, i32 0, i64 %idxprom1973
  %arrayidx1976 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1975, i32 0, i64 0
  store i32* %arrayidx1976, i32** %gPerm, align 8
  %1411 = load i32, i32* %gSel, align 4
  %idxprom1977 = sext i32 %1411 to i64
  %1412 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1978 = getelementptr inbounds %struct.DState, %struct.DState* %1412, i32 0, i32 37
  %arrayidx1979 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1978, i32 0, i64 %idxprom1977
  %arrayidx1980 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1979, i32 0, i64 0
  store i32* %arrayidx1980, i32** %gBase, align 8
  br label %if.end.1981

if.end.1981:                                      ; preds = %if.end.1961, %if.end.1952
  %1413 = load i32, i32* %groupPos, align 4
  %dec1982 = add nsw i32 %1413, -1
  store i32 %dec1982, i32* %groupPos, align 4
  %1414 = load i32, i32* %gMinlen, align 4
  store i32 %1414, i32* %zn, align 4
  br label %sw.bb.1983

sw.bb.1983:                                       ; preds = %if.end, %if.end.1981
  %1415 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1984 = getelementptr inbounds %struct.DState, %struct.DState* %1415, i32 0, i32 1
  store i32 38, i32* %state1984, align 4
  br label %while.body.1986

while.body.1986:                                  ; preds = %sw.bb.1983, %if.end.2035
  %1416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1987 = getelementptr inbounds %struct.DState, %struct.DState* %1416, i32 0, i32 8
  %1417 = load i32, i32* %bsLive1987, align 4
  %1418 = load i32, i32* %zn, align 4
  %cmp1988 = icmp sge i32 %1417, %1418
  br i1 %cmp1988, label %if.then.1990, label %if.end.2002

if.then.1990:                                     ; preds = %while.body.1986
  %1419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1993 = getelementptr inbounds %struct.DState, %struct.DState* %1419, i32 0, i32 7
  %1420 = load i32, i32* %bsBuff1993, align 4
  %1421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1994 = getelementptr inbounds %struct.DState, %struct.DState* %1421, i32 0, i32 8
  %1422 = load i32, i32* %bsLive1994, align 4
  %1423 = load i32, i32* %zn, align 4
  %sub1995 = sub nsw i32 %1422, %1423
  %shr1996 = lshr i32 %1420, %sub1995
  %1424 = load i32, i32* %zn, align 4
  %shl1997 = shl i32 1, %1424
  %sub1998 = sub nsw i32 %shl1997, 1
  %and1999 = and i32 %shr1996, %sub1998
  store i32 %and1999, i32* %v1992, align 4
  %1425 = load i32, i32* %zn, align 4
  %1426 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2000 = getelementptr inbounds %struct.DState, %struct.DState* %1426, i32 0, i32 8
  %1427 = load i32, i32* %bsLive2000, align 4
  %sub2001 = sub nsw i32 %1427, %1425
  store i32 %sub2001, i32* %bsLive2000, align 4
  %1428 = load i32, i32* %v1992, align 4
  store i32 %1428, i32* %zvec, align 4
  br label %while.end.2036

if.end.2002:                                      ; preds = %while.body.1986
  %1429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2003 = getelementptr inbounds %struct.DState, %struct.DState* %1429, i32 0, i32 0
  %1430 = load %struct.bz_stream*, %struct.bz_stream** %strm2003, align 8
  %avail_in2004 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1430, i32 0, i32 1
  %1431 = load i32, i32* %avail_in2004, align 4
  %cmp2005 = icmp eq i32 %1431, 0
  br i1 %cmp2005, label %if.then.2007, label %if.end.2008

if.then.2007:                                     ; preds = %if.end.2002
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2008:                                      ; preds = %if.end.2002
  %1432 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2009 = getelementptr inbounds %struct.DState, %struct.DState* %1432, i32 0, i32 7
  %1433 = load i32, i32* %bsBuff2009, align 4
  %shl2010 = shl i32 %1433, 8
  %1434 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2011 = getelementptr inbounds %struct.DState, %struct.DState* %1434, i32 0, i32 0
  %1435 = load %struct.bz_stream*, %struct.bz_stream** %strm2011, align 8
  %next_in2012 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1435, i32 0, i32 0
  %1436 = load i8*, i8** %next_in2012, align 8
  %1437 = load i8, i8* %1436, align 1
  %conv2013 = zext i8 %1437 to i32
  %or2014 = or i32 %shl2010, %conv2013
  %1438 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2015 = getelementptr inbounds %struct.DState, %struct.DState* %1438, i32 0, i32 7
  store i32 %or2014, i32* %bsBuff2015, align 4
  %1439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2016 = getelementptr inbounds %struct.DState, %struct.DState* %1439, i32 0, i32 8
  %1440 = load i32, i32* %bsLive2016, align 4
  %add2017 = add nsw i32 %1440, 8
  store i32 %add2017, i32* %bsLive2016, align 4
  %1441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2018 = getelementptr inbounds %struct.DState, %struct.DState* %1441, i32 0, i32 0
  %1442 = load %struct.bz_stream*, %struct.bz_stream** %strm2018, align 8
  %next_in2019 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1442, i32 0, i32 0
  %1443 = load i8*, i8** %next_in2019, align 8
  %incdec.ptr2020 = getelementptr inbounds i8, i8* %1443, i32 1
  store i8* %incdec.ptr2020, i8** %next_in2019, align 8
  %1444 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2021 = getelementptr inbounds %struct.DState, %struct.DState* %1444, i32 0, i32 0
  %1445 = load %struct.bz_stream*, %struct.bz_stream** %strm2021, align 8
  %avail_in2022 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1445, i32 0, i32 1
  %1446 = load i32, i32* %avail_in2022, align 4
  %dec2023 = add i32 %1446, -1
  store i32 %dec2023, i32* %avail_in2022, align 4
  %1447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2024 = getelementptr inbounds %struct.DState, %struct.DState* %1447, i32 0, i32 0
  %1448 = load %struct.bz_stream*, %struct.bz_stream** %strm2024, align 8
  %total_in_lo322025 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1448, i32 0, i32 2
  %1449 = load i32, i32* %total_in_lo322025, align 4
  %inc2026 = add i32 %1449, 1
  store i32 %inc2026, i32* %total_in_lo322025, align 4
  %1450 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2027 = getelementptr inbounds %struct.DState, %struct.DState* %1450, i32 0, i32 0
  %1451 = load %struct.bz_stream*, %struct.bz_stream** %strm2027, align 8
  %total_in_lo322028 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1451, i32 0, i32 2
  %1452 = load i32, i32* %total_in_lo322028, align 4
  %cmp2029 = icmp eq i32 %1452, 0
  br i1 %cmp2029, label %if.then.2031, label %if.end.2035

if.then.2031:                                     ; preds = %if.end.2008
  %1453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2032 = getelementptr inbounds %struct.DState, %struct.DState* %1453, i32 0, i32 0
  %1454 = load %struct.bz_stream*, %struct.bz_stream** %strm2032, align 8
  %total_in_hi322033 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1454, i32 0, i32 3
  %1455 = load i32, i32* %total_in_hi322033, align 4
  %inc2034 = add i32 %1455, 1
  store i32 %inc2034, i32* %total_in_hi322033, align 4
  br label %if.end.2035

if.end.2035:                                      ; preds = %if.then.2031, %if.end.2008
  br label %while.body.1986

while.end.2036:                                   ; preds = %if.then.1990
  br label %while.body.2038

while.body.2038:                                  ; preds = %while.end.2036, %while.end.2101
  %1456 = load i32, i32* %zn, align 4
  %cmp2039 = icmp sgt i32 %1456, 20
  br i1 %cmp2039, label %if.then.2041, label %if.end.2042

if.then.2041:                                     ; preds = %while.body.2038
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2042:                                      ; preds = %while.body.2038
  %1457 = load i32, i32* %zvec, align 4
  %1458 = load i32, i32* %zn, align 4
  %idxprom2043 = sext i32 %1458 to i64
  %1459 = load i32*, i32** %gLimit, align 8
  %arrayidx2044 = getelementptr inbounds i32, i32* %1459, i64 %idxprom2043
  %1460 = load i32, i32* %arrayidx2044, align 4
  %cmp2045 = icmp sle i32 %1457, %1460
  br i1 %cmp2045, label %if.then.2047, label %if.end.2048

if.then.2047:                                     ; preds = %if.end.2042
  br label %while.end.2104

if.end.2048:                                      ; preds = %if.end.2042
  %1461 = load i32, i32* %zn, align 4
  %inc2049 = add nsw i32 %1461, 1
  store i32 %inc2049, i32* %zn, align 4
  br label %sw.bb.2050

sw.bb.2050:                                       ; preds = %if.end, %if.end.2048
  %1462 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2051 = getelementptr inbounds %struct.DState, %struct.DState* %1462, i32 0, i32 1
  store i32 39, i32* %state2051, align 4
  br label %while.body.2053

while.body.2053:                                  ; preds = %sw.bb.2050, %if.end.2100
  %1463 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2054 = getelementptr inbounds %struct.DState, %struct.DState* %1463, i32 0, i32 8
  %1464 = load i32, i32* %bsLive2054, align 4
  %cmp2055 = icmp sge i32 %1464, 1
  br i1 %cmp2055, label %if.then.2057, label %if.end.2067

if.then.2057:                                     ; preds = %while.body.2053
  %1465 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2060 = getelementptr inbounds %struct.DState, %struct.DState* %1465, i32 0, i32 7
  %1466 = load i32, i32* %bsBuff2060, align 4
  %1467 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2061 = getelementptr inbounds %struct.DState, %struct.DState* %1467, i32 0, i32 8
  %1468 = load i32, i32* %bsLive2061, align 4
  %sub2062 = sub nsw i32 %1468, 1
  %shr2063 = lshr i32 %1466, %sub2062
  %and2064 = and i32 %shr2063, 1
  store i32 %and2064, i32* %v2059, align 4
  %1469 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2065 = getelementptr inbounds %struct.DState, %struct.DState* %1469, i32 0, i32 8
  %1470 = load i32, i32* %bsLive2065, align 4
  %sub2066 = sub nsw i32 %1470, 1
  store i32 %sub2066, i32* %bsLive2065, align 4
  %1471 = load i32, i32* %v2059, align 4
  store i32 %1471, i32* %zj, align 4
  br label %while.end.2101

if.end.2067:                                      ; preds = %while.body.2053
  %1472 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2068 = getelementptr inbounds %struct.DState, %struct.DState* %1472, i32 0, i32 0
  %1473 = load %struct.bz_stream*, %struct.bz_stream** %strm2068, align 8
  %avail_in2069 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1473, i32 0, i32 1
  %1474 = load i32, i32* %avail_in2069, align 4
  %cmp2070 = icmp eq i32 %1474, 0
  br i1 %cmp2070, label %if.then.2072, label %if.end.2073

if.then.2072:                                     ; preds = %if.end.2067
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2073:                                      ; preds = %if.end.2067
  %1475 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2074 = getelementptr inbounds %struct.DState, %struct.DState* %1475, i32 0, i32 7
  %1476 = load i32, i32* %bsBuff2074, align 4
  %shl2075 = shl i32 %1476, 8
  %1477 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2076 = getelementptr inbounds %struct.DState, %struct.DState* %1477, i32 0, i32 0
  %1478 = load %struct.bz_stream*, %struct.bz_stream** %strm2076, align 8
  %next_in2077 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1478, i32 0, i32 0
  %1479 = load i8*, i8** %next_in2077, align 8
  %1480 = load i8, i8* %1479, align 1
  %conv2078 = zext i8 %1480 to i32
  %or2079 = or i32 %shl2075, %conv2078
  %1481 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2080 = getelementptr inbounds %struct.DState, %struct.DState* %1481, i32 0, i32 7
  store i32 %or2079, i32* %bsBuff2080, align 4
  %1482 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2081 = getelementptr inbounds %struct.DState, %struct.DState* %1482, i32 0, i32 8
  %1483 = load i32, i32* %bsLive2081, align 4
  %add2082 = add nsw i32 %1483, 8
  store i32 %add2082, i32* %bsLive2081, align 4
  %1484 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2083 = getelementptr inbounds %struct.DState, %struct.DState* %1484, i32 0, i32 0
  %1485 = load %struct.bz_stream*, %struct.bz_stream** %strm2083, align 8
  %next_in2084 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1485, i32 0, i32 0
  %1486 = load i8*, i8** %next_in2084, align 8
  %incdec.ptr2085 = getelementptr inbounds i8, i8* %1486, i32 1
  store i8* %incdec.ptr2085, i8** %next_in2084, align 8
  %1487 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2086 = getelementptr inbounds %struct.DState, %struct.DState* %1487, i32 0, i32 0
  %1488 = load %struct.bz_stream*, %struct.bz_stream** %strm2086, align 8
  %avail_in2087 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1488, i32 0, i32 1
  %1489 = load i32, i32* %avail_in2087, align 4
  %dec2088 = add i32 %1489, -1
  store i32 %dec2088, i32* %avail_in2087, align 4
  %1490 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2089 = getelementptr inbounds %struct.DState, %struct.DState* %1490, i32 0, i32 0
  %1491 = load %struct.bz_stream*, %struct.bz_stream** %strm2089, align 8
  %total_in_lo322090 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1491, i32 0, i32 2
  %1492 = load i32, i32* %total_in_lo322090, align 4
  %inc2091 = add i32 %1492, 1
  store i32 %inc2091, i32* %total_in_lo322090, align 4
  %1493 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2092 = getelementptr inbounds %struct.DState, %struct.DState* %1493, i32 0, i32 0
  %1494 = load %struct.bz_stream*, %struct.bz_stream** %strm2092, align 8
  %total_in_lo322093 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1494, i32 0, i32 2
  %1495 = load i32, i32* %total_in_lo322093, align 4
  %cmp2094 = icmp eq i32 %1495, 0
  br i1 %cmp2094, label %if.then.2096, label %if.end.2100

if.then.2096:                                     ; preds = %if.end.2073
  %1496 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2097 = getelementptr inbounds %struct.DState, %struct.DState* %1496, i32 0, i32 0
  %1497 = load %struct.bz_stream*, %struct.bz_stream** %strm2097, align 8
  %total_in_hi322098 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1497, i32 0, i32 3
  %1498 = load i32, i32* %total_in_hi322098, align 4
  %inc2099 = add i32 %1498, 1
  store i32 %inc2099, i32* %total_in_hi322098, align 4
  br label %if.end.2100

if.end.2100:                                      ; preds = %if.then.2096, %if.end.2073
  br label %while.body.2053

while.end.2101:                                   ; preds = %if.then.2057
  %1499 = load i32, i32* %zvec, align 4
  %shl2102 = shl i32 %1499, 1
  %1500 = load i32, i32* %zj, align 4
  %or2103 = or i32 %shl2102, %1500
  store i32 %or2103, i32* %zvec, align 4
  br label %while.body.2038

while.end.2104:                                   ; preds = %if.then.2047
  %1501 = load i32, i32* %zvec, align 4
  %1502 = load i32, i32* %zn, align 4
  %idxprom2105 = sext i32 %1502 to i64
  %1503 = load i32*, i32** %gBase, align 8
  %arrayidx2106 = getelementptr inbounds i32, i32* %1503, i64 %idxprom2105
  %1504 = load i32, i32* %arrayidx2106, align 4
  %sub2107 = sub nsw i32 %1501, %1504
  %cmp2108 = icmp slt i32 %sub2107, 0
  br i1 %cmp2108, label %if.then.2116, label %lor.lhs.false.2110

lor.lhs.false.2110:                               ; preds = %while.end.2104
  %1505 = load i32, i32* %zvec, align 4
  %1506 = load i32, i32* %zn, align 4
  %idxprom2111 = sext i32 %1506 to i64
  %1507 = load i32*, i32** %gBase, align 8
  %arrayidx2112 = getelementptr inbounds i32, i32* %1507, i64 %idxprom2111
  %1508 = load i32, i32* %arrayidx2112, align 4
  %sub2113 = sub nsw i32 %1505, %1508
  %cmp2114 = icmp sge i32 %sub2113, 258
  br i1 %cmp2114, label %if.then.2116, label %if.end.2117

if.then.2116:                                     ; preds = %lor.lhs.false.2110, %while.end.2104
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2117:                                      ; preds = %lor.lhs.false.2110
  %1509 = load i32, i32* %zvec, align 4
  %1510 = load i32, i32* %zn, align 4
  %idxprom2118 = sext i32 %1510 to i64
  %1511 = load i32*, i32** %gBase, align 8
  %arrayidx2119 = getelementptr inbounds i32, i32* %1511, i64 %idxprom2118
  %1512 = load i32, i32* %arrayidx2119, align 4
  %sub2120 = sub nsw i32 %1509, %1512
  %idxprom2121 = sext i32 %sub2120 to i64
  %1513 = load i32*, i32** %gPerm, align 8
  %arrayidx2122 = getelementptr inbounds i32, i32* %1513, i64 %idxprom2121
  %1514 = load i32, i32* %arrayidx2122, align 4
  store i32 %1514, i32* %nextSym, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.2117
  %1515 = load i32, i32* %nextSym, align 4
  %cmp2123 = icmp eq i32 %1515, 0
  br i1 %cmp2123, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1516 = load i32, i32* %nextSym, align 4
  %cmp2125 = icmp eq i32 %1516, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %1517 = phi i1 [ true, %do.cond ], [ %cmp2125, %lor.rhs ]
  br i1 %1517, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %1518 = load i32, i32* %es, align 4
  %inc2127 = add nsw i32 %1518, 1
  store i32 %inc2127, i32* %es, align 4
  %1519 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2128 = getelementptr inbounds %struct.DState, %struct.DState* %1519, i32 0, i32 32
  %arrayidx2129 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2128, i32 0, i64 0
  %1520 = load i32, i32* %arrayidx2129, align 4
  %idxprom2130 = sext i32 %1520 to i64
  %1521 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2131 = getelementptr inbounds %struct.DState, %struct.DState* %1521, i32 0, i32 31
  %arrayidx2132 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2131, i32 0, i64 %idxprom2130
  %1522 = load i8, i8* %arrayidx2132, align 1
  %idxprom2133 = zext i8 %1522 to i64
  %1523 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %1523, i32 0, i32 30
  %arrayidx2134 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i32 0, i64 %idxprom2133
  %1524 = load i8, i8* %arrayidx2134, align 1
  store i8 %1524, i8* %uc, align 1
  %1525 = load i32, i32* %es, align 4
  %1526 = load i8, i8* %uc, align 1
  %idxprom2135 = zext i8 %1526 to i64
  %1527 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2136 = getelementptr inbounds %struct.DState, %struct.DState* %1527, i32 0, i32 16
  %arrayidx2137 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2136, i32 0, i64 %idxprom2135
  %1528 = load i32, i32* %arrayidx2137, align 4
  %add2138 = add nsw i32 %1528, %1525
  store i32 %add2138, i32* %arrayidx2137, align 4
  %1529 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2139 = getelementptr inbounds %struct.DState, %struct.DState* %1529, i32 0, i32 10
  %1530 = load i8, i8* %smallDecompress2139, align 1
  %tobool2140 = icmp ne i8 %1530, 0
  br i1 %tobool2140, label %if.then.2141, label %if.else.2157

if.then.2141:                                     ; preds = %do.end
  br label %while.cond.2142

while.cond.2142:                                  ; preds = %if.end.2149, %if.then.2141
  %1531 = load i32, i32* %es, align 4
  %cmp2143 = icmp sgt i32 %1531, 0
  br i1 %cmp2143, label %while.body.2145, label %while.end.2156

while.body.2145:                                  ; preds = %while.cond.2142
  %1532 = load i32, i32* %nblock, align 4
  %1533 = load i32, i32* %nblockMAX, align 4
  %cmp2146 = icmp sge i32 %1532, %1533
  br i1 %cmp2146, label %if.then.2148, label %if.end.2149

if.then.2148:                                     ; preds = %while.body.2145
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2149:                                      ; preds = %while.body.2145
  %1534 = load i8, i8* %uc, align 1
  %conv2150 = zext i8 %1534 to i16
  %1535 = load i32, i32* %nblock, align 4
  %idxprom2151 = sext i32 %1535 to i64
  %1536 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162152 = getelementptr inbounds %struct.DState, %struct.DState* %1536, i32 0, i32 21
  %1537 = load i16*, i16** %ll162152, align 8
  %arrayidx2153 = getelementptr inbounds i16, i16* %1537, i64 %idxprom2151
  store i16 %conv2150, i16* %arrayidx2153, align 2
  %1538 = load i32, i32* %nblock, align 4
  %inc2154 = add nsw i32 %1538, 1
  store i32 %inc2154, i32* %nblock, align 4
  %1539 = load i32, i32* %es, align 4
  %dec2155 = add nsw i32 %1539, -1
  store i32 %dec2155, i32* %es, align 4
  br label %while.cond.2142

while.end.2156:                                   ; preds = %while.cond.2142
  br label %if.end.2173

if.else.2157:                                     ; preds = %do.end
  br label %while.cond.2158

while.cond.2158:                                  ; preds = %if.end.2165, %if.else.2157
  %1540 = load i32, i32* %es, align 4
  %cmp2159 = icmp sgt i32 %1540, 0
  br i1 %cmp2159, label %while.body.2161, label %while.end.2172

while.body.2161:                                  ; preds = %while.cond.2158
  %1541 = load i32, i32* %nblock, align 4
  %1542 = load i32, i32* %nblockMAX, align 4
  %cmp2162 = icmp sge i32 %1541, %1542
  br i1 %cmp2162, label %if.then.2164, label %if.end.2165

if.then.2164:                                     ; preds = %while.body.2161
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2165:                                      ; preds = %while.body.2161
  %1543 = load i8, i8* %uc, align 1
  %conv2166 = zext i8 %1543 to i32
  %1544 = load i32, i32* %nblock, align 4
  %idxprom2167 = sext i32 %1544 to i64
  %1545 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2168 = getelementptr inbounds %struct.DState, %struct.DState* %1545, i32 0, i32 20
  %1546 = load i32*, i32** %tt2168, align 8
  %arrayidx2169 = getelementptr inbounds i32, i32* %1546, i64 %idxprom2167
  store i32 %conv2166, i32* %arrayidx2169, align 4
  %1547 = load i32, i32* %nblock, align 4
  %inc2170 = add nsw i32 %1547, 1
  store i32 %inc2170, i32* %nblock, align 4
  %1548 = load i32, i32* %es, align 4
  %dec2171 = add nsw i32 %1548, -1
  store i32 %dec2171, i32* %es, align 4
  br label %while.cond.2158

while.end.2172:                                   ; preds = %while.cond.2158
  br label %if.end.2173

if.end.2173:                                      ; preds = %while.end.2172, %while.end.2156
  br label %while.body.1929

if.else.2174:                                     ; preds = %lor.lhs.false.1936
  %1549 = load i32, i32* %nblock, align 4
  %1550 = load i32, i32* %nblockMAX, align 4
  %cmp2175 = icmp sge i32 %1549, %1550
  br i1 %cmp2175, label %if.then.2177, label %if.end.2178

if.then.2177:                                     ; preds = %if.else.2174
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2178:                                      ; preds = %if.else.2174
  %1551 = load i32, i32* %nextSym, align 4
  %sub2189 = sub nsw i32 %1551, 1
  store i32 %sub2189, i32* %nn, align 4
  %1552 = load i32, i32* %nn, align 4
  %cmp2190 = icmp ult i32 %1552, 16
  br i1 %cmp2190, label %if.then.2192, label %if.else.2256

if.then.2192:                                     ; preds = %if.end.2178
  %1553 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2193 = getelementptr inbounds %struct.DState, %struct.DState* %1553, i32 0, i32 32
  %arrayidx2194 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2193, i32 0, i64 0
  %1554 = load i32, i32* %arrayidx2194, align 4
  store i32 %1554, i32* %pp, align 4
  %1555 = load i32, i32* %pp, align 4
  %1556 = load i32, i32* %nn, align 4
  %add2195 = add i32 %1555, %1556
  %idxprom2196 = zext i32 %add2195 to i64
  %1557 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2197 = getelementptr inbounds %struct.DState, %struct.DState* %1557, i32 0, i32 31
  %arrayidx2198 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2197, i32 0, i64 %idxprom2196
  %1558 = load i8, i8* %arrayidx2198, align 1
  store i8 %1558, i8* %uc, align 1
  br label %while.cond.2199

while.cond.2199:                                  ; preds = %while.body.2202, %if.then.2192
  %1559 = load i32, i32* %nn, align 4
  %cmp2200 = icmp ugt i32 %1559, 3
  br i1 %cmp2200, label %while.body.2202, label %while.end.2237

while.body.2202:                                  ; preds = %while.cond.2199
  %1560 = load i32, i32* %pp, align 4
  %1561 = load i32, i32* %nn, align 4
  %add2204 = add i32 %1560, %1561
  store i32 %add2204, i32* %z, align 4
  %1562 = load i32, i32* %z, align 4
  %sub2205 = sub nsw i32 %1562, 1
  %idxprom2206 = sext i32 %sub2205 to i64
  %1563 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2207 = getelementptr inbounds %struct.DState, %struct.DState* %1563, i32 0, i32 31
  %arrayidx2208 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2207, i32 0, i64 %idxprom2206
  %1564 = load i8, i8* %arrayidx2208, align 1
  %1565 = load i32, i32* %z, align 4
  %idxprom2209 = sext i32 %1565 to i64
  %1566 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2210 = getelementptr inbounds %struct.DState, %struct.DState* %1566, i32 0, i32 31
  %arrayidx2211 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2210, i32 0, i64 %idxprom2209
  store i8 %1564, i8* %arrayidx2211, align 1
  %1567 = load i32, i32* %z, align 4
  %sub2212 = sub nsw i32 %1567, 2
  %idxprom2213 = sext i32 %sub2212 to i64
  %1568 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2214 = getelementptr inbounds %struct.DState, %struct.DState* %1568, i32 0, i32 31
  %arrayidx2215 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2214, i32 0, i64 %idxprom2213
  %1569 = load i8, i8* %arrayidx2215, align 1
  %1570 = load i32, i32* %z, align 4
  %sub2216 = sub nsw i32 %1570, 1
  %idxprom2217 = sext i32 %sub2216 to i64
  %1571 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2218 = getelementptr inbounds %struct.DState, %struct.DState* %1571, i32 0, i32 31
  %arrayidx2219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2218, i32 0, i64 %idxprom2217
  store i8 %1569, i8* %arrayidx2219, align 1
  %1572 = load i32, i32* %z, align 4
  %sub2220 = sub nsw i32 %1572, 3
  %idxprom2221 = sext i32 %sub2220 to i64
  %1573 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2222 = getelementptr inbounds %struct.DState, %struct.DState* %1573, i32 0, i32 31
  %arrayidx2223 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2222, i32 0, i64 %idxprom2221
  %1574 = load i8, i8* %arrayidx2223, align 1
  %1575 = load i32, i32* %z, align 4
  %sub2224 = sub nsw i32 %1575, 2
  %idxprom2225 = sext i32 %sub2224 to i64
  %1576 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2226 = getelementptr inbounds %struct.DState, %struct.DState* %1576, i32 0, i32 31
  %arrayidx2227 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2226, i32 0, i64 %idxprom2225
  store i8 %1574, i8* %arrayidx2227, align 1
  %1577 = load i32, i32* %z, align 4
  %sub2228 = sub nsw i32 %1577, 4
  %idxprom2229 = sext i32 %sub2228 to i64
  %1578 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2230 = getelementptr inbounds %struct.DState, %struct.DState* %1578, i32 0, i32 31
  %arrayidx2231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2230, i32 0, i64 %idxprom2229
  %1579 = load i8, i8* %arrayidx2231, align 1
  %1580 = load i32, i32* %z, align 4
  %sub2232 = sub nsw i32 %1580, 3
  %idxprom2233 = sext i32 %sub2232 to i64
  %1581 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2234 = getelementptr inbounds %struct.DState, %struct.DState* %1581, i32 0, i32 31
  %arrayidx2235 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2234, i32 0, i64 %idxprom2233
  store i8 %1579, i8* %arrayidx2235, align 1
  %1582 = load i32, i32* %nn, align 4
  %sub2236 = sub i32 %1582, 4
  store i32 %sub2236, i32* %nn, align 4
  br label %while.cond.2199

while.end.2237:                                   ; preds = %while.cond.2199
  br label %while.cond.2238

while.cond.2238:                                  ; preds = %while.body.2241, %while.end.2237
  %1583 = load i32, i32* %nn, align 4
  %cmp2239 = icmp ugt i32 %1583, 0
  br i1 %cmp2239, label %while.body.2241, label %while.end.2252

while.body.2241:                                  ; preds = %while.cond.2238
  %1584 = load i32, i32* %pp, align 4
  %1585 = load i32, i32* %nn, align 4
  %add2242 = add i32 %1584, %1585
  %sub2243 = sub i32 %add2242, 1
  %idxprom2244 = zext i32 %sub2243 to i64
  %1586 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2245 = getelementptr inbounds %struct.DState, %struct.DState* %1586, i32 0, i32 31
  %arrayidx2246 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2245, i32 0, i64 %idxprom2244
  %1587 = load i8, i8* %arrayidx2246, align 1
  %1588 = load i32, i32* %pp, align 4
  %1589 = load i32, i32* %nn, align 4
  %add2247 = add i32 %1588, %1589
  %idxprom2248 = zext i32 %add2247 to i64
  %1590 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2249 = getelementptr inbounds %struct.DState, %struct.DState* %1590, i32 0, i32 31
  %arrayidx2250 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2249, i32 0, i64 %idxprom2248
  store i8 %1587, i8* %arrayidx2250, align 1
  %1591 = load i32, i32* %nn, align 4
  %dec2251 = add i32 %1591, -1
  store i32 %dec2251, i32* %nn, align 4
  br label %while.cond.2238

while.end.2252:                                   ; preds = %while.cond.2238
  %1592 = load i8, i8* %uc, align 1
  %1593 = load i32, i32* %pp, align 4
  %idxprom2253 = sext i32 %1593 to i64
  %1594 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2254 = getelementptr inbounds %struct.DState, %struct.DState* %1594, i32 0, i32 31
  %arrayidx2255 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2254, i32 0, i64 %idxprom2253
  store i8 %1592, i8* %arrayidx2255, align 1
  br label %if.end.2352

if.else.2256:                                     ; preds = %if.end.2178
  %1595 = load i32, i32* %nn, align 4
  %div = udiv i32 %1595, 16
  store i32 %div, i32* %lno, align 4
  %1596 = load i32, i32* %nn, align 4
  %rem = urem i32 %1596, 16
  store i32 %rem, i32* %off, align 4
  %1597 = load i32, i32* %lno, align 4
  %idxprom2257 = sext i32 %1597 to i64
  %1598 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2258 = getelementptr inbounds %struct.DState, %struct.DState* %1598, i32 0, i32 32
  %arrayidx2259 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2258, i32 0, i64 %idxprom2257
  %1599 = load i32, i32* %arrayidx2259, align 4
  %1600 = load i32, i32* %off, align 4
  %add2260 = add nsw i32 %1599, %1600
  store i32 %add2260, i32* %pp, align 4
  %1601 = load i32, i32* %pp, align 4
  %idxprom2261 = sext i32 %1601 to i64
  %1602 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2262 = getelementptr inbounds %struct.DState, %struct.DState* %1602, i32 0, i32 31
  %arrayidx2263 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2262, i32 0, i64 %idxprom2261
  %1603 = load i8, i8* %arrayidx2263, align 1
  store i8 %1603, i8* %uc, align 1
  br label %while.cond.2264

while.cond.2264:                                  ; preds = %while.body.2270, %if.else.2256
  %1604 = load i32, i32* %pp, align 4
  %1605 = load i32, i32* %lno, align 4
  %idxprom2265 = sext i32 %1605 to i64
  %1606 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2266 = getelementptr inbounds %struct.DState, %struct.DState* %1606, i32 0, i32 32
  %arrayidx2267 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2266, i32 0, i64 %idxprom2265
  %1607 = load i32, i32* %arrayidx2267, align 4
  %cmp2268 = icmp sgt i32 %1604, %1607
  br i1 %cmp2268, label %while.body.2270, label %while.end.2279

while.body.2270:                                  ; preds = %while.cond.2264
  %1608 = load i32, i32* %pp, align 4
  %sub2271 = sub nsw i32 %1608, 1
  %idxprom2272 = sext i32 %sub2271 to i64
  %1609 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2273 = getelementptr inbounds %struct.DState, %struct.DState* %1609, i32 0, i32 31
  %arrayidx2274 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2273, i32 0, i64 %idxprom2272
  %1610 = load i8, i8* %arrayidx2274, align 1
  %1611 = load i32, i32* %pp, align 4
  %idxprom2275 = sext i32 %1611 to i64
  %1612 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2276 = getelementptr inbounds %struct.DState, %struct.DState* %1612, i32 0, i32 31
  %arrayidx2277 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2276, i32 0, i64 %idxprom2275
  store i8 %1610, i8* %arrayidx2277, align 1
  %1613 = load i32, i32* %pp, align 4
  %dec2278 = add nsw i32 %1613, -1
  store i32 %dec2278, i32* %pp, align 4
  br label %while.cond.2264

while.end.2279:                                   ; preds = %while.cond.2264
  %1614 = load i32, i32* %lno, align 4
  %idxprom2280 = sext i32 %1614 to i64
  %1615 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2281 = getelementptr inbounds %struct.DState, %struct.DState* %1615, i32 0, i32 32
  %arrayidx2282 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2281, i32 0, i64 %idxprom2280
  %1616 = load i32, i32* %arrayidx2282, align 4
  %inc2283 = add nsw i32 %1616, 1
  store i32 %inc2283, i32* %arrayidx2282, align 4
  br label %while.cond.2284

while.cond.2284:                                  ; preds = %while.body.2287, %while.end.2279
  %1617 = load i32, i32* %lno, align 4
  %cmp2285 = icmp sgt i32 %1617, 0
  br i1 %cmp2285, label %while.body.2287, label %while.end.2308

while.body.2287:                                  ; preds = %while.cond.2284
  %1618 = load i32, i32* %lno, align 4
  %idxprom2288 = sext i32 %1618 to i64
  %1619 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2289 = getelementptr inbounds %struct.DState, %struct.DState* %1619, i32 0, i32 32
  %arrayidx2290 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2289, i32 0, i64 %idxprom2288
  %1620 = load i32, i32* %arrayidx2290, align 4
  %dec2291 = add nsw i32 %1620, -1
  store i32 %dec2291, i32* %arrayidx2290, align 4
  %1621 = load i32, i32* %lno, align 4
  %sub2292 = sub nsw i32 %1621, 1
  %idxprom2293 = sext i32 %sub2292 to i64
  %1622 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2294 = getelementptr inbounds %struct.DState, %struct.DState* %1622, i32 0, i32 32
  %arrayidx2295 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2294, i32 0, i64 %idxprom2293
  %1623 = load i32, i32* %arrayidx2295, align 4
  %add2296 = add nsw i32 %1623, 16
  %sub2297 = sub nsw i32 %add2296, 1
  %idxprom2298 = sext i32 %sub2297 to i64
  %1624 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2299 = getelementptr inbounds %struct.DState, %struct.DState* %1624, i32 0, i32 31
  %arrayidx2300 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2299, i32 0, i64 %idxprom2298
  %1625 = load i8, i8* %arrayidx2300, align 1
  %1626 = load i32, i32* %lno, align 4
  %idxprom2301 = sext i32 %1626 to i64
  %1627 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2302 = getelementptr inbounds %struct.DState, %struct.DState* %1627, i32 0, i32 32
  %arrayidx2303 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2302, i32 0, i64 %idxprom2301
  %1628 = load i32, i32* %arrayidx2303, align 4
  %idxprom2304 = sext i32 %1628 to i64
  %1629 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2305 = getelementptr inbounds %struct.DState, %struct.DState* %1629, i32 0, i32 31
  %arrayidx2306 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2305, i32 0, i64 %idxprom2304
  store i8 %1625, i8* %arrayidx2306, align 1
  %1630 = load i32, i32* %lno, align 4
  %dec2307 = add nsw i32 %1630, -1
  store i32 %dec2307, i32* %lno, align 4
  br label %while.cond.2284

while.end.2308:                                   ; preds = %while.cond.2284
  %1631 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2309 = getelementptr inbounds %struct.DState, %struct.DState* %1631, i32 0, i32 32
  %arrayidx2310 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2309, i32 0, i64 0
  %1632 = load i32, i32* %arrayidx2310, align 4
  %dec2311 = add nsw i32 %1632, -1
  store i32 %dec2311, i32* %arrayidx2310, align 4
  %1633 = load i8, i8* %uc, align 1
  %1634 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2312 = getelementptr inbounds %struct.DState, %struct.DState* %1634, i32 0, i32 32
  %arrayidx2313 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2312, i32 0, i64 0
  %1635 = load i32, i32* %arrayidx2313, align 4
  %idxprom2314 = sext i32 %1635 to i64
  %1636 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2315 = getelementptr inbounds %struct.DState, %struct.DState* %1636, i32 0, i32 31
  %arrayidx2316 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2315, i32 0, i64 %idxprom2314
  store i8 %1633, i8* %arrayidx2316, align 1
  %1637 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2317 = getelementptr inbounds %struct.DState, %struct.DState* %1637, i32 0, i32 32
  %arrayidx2318 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2317, i32 0, i64 0
  %1638 = load i32, i32* %arrayidx2318, align 4
  %cmp2319 = icmp eq i32 %1638, 0
  br i1 %cmp2319, label %if.then.2321, label %if.end.2351

if.then.2321:                                     ; preds = %while.end.2308
  store i32 4095, i32* %kk2184, align 4
  store i32 15, i32* %ii2180, align 4
  br label %for.cond.2322

for.cond.2322:                                    ; preds = %for.inc.2348, %if.then.2321
  %1639 = load i32, i32* %ii2180, align 4
  %cmp2323 = icmp sge i32 %1639, 0
  br i1 %cmp2323, label %for.body.2325, label %for.end.2350

for.body.2325:                                    ; preds = %for.cond.2322
  store i32 15, i32* %jj2182, align 4
  br label %for.cond.2326

for.cond.2326:                                    ; preds = %for.inc.2341, %for.body.2325
  %1640 = load i32, i32* %jj2182, align 4
  %cmp2327 = icmp sge i32 %1640, 0
  br i1 %cmp2327, label %for.body.2329, label %for.end.2343

for.body.2329:                                    ; preds = %for.cond.2326
  %1641 = load i32, i32* %ii2180, align 4
  %idxprom2330 = sext i32 %1641 to i64
  %1642 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2331 = getelementptr inbounds %struct.DState, %struct.DState* %1642, i32 0, i32 32
  %arrayidx2332 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2331, i32 0, i64 %idxprom2330
  %1643 = load i32, i32* %arrayidx2332, align 4
  %1644 = load i32, i32* %jj2182, align 4
  %add2333 = add nsw i32 %1643, %1644
  %idxprom2334 = sext i32 %add2333 to i64
  %1645 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2335 = getelementptr inbounds %struct.DState, %struct.DState* %1645, i32 0, i32 31
  %arrayidx2336 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2335, i32 0, i64 %idxprom2334
  %1646 = load i8, i8* %arrayidx2336, align 1
  %1647 = load i32, i32* %kk2184, align 4
  %idxprom2337 = sext i32 %1647 to i64
  %1648 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2338 = getelementptr inbounds %struct.DState, %struct.DState* %1648, i32 0, i32 31
  %arrayidx2339 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2338, i32 0, i64 %idxprom2337
  store i8 %1646, i8* %arrayidx2339, align 1
  %1649 = load i32, i32* %kk2184, align 4
  %dec2340 = add nsw i32 %1649, -1
  store i32 %dec2340, i32* %kk2184, align 4
  br label %for.inc.2341

for.inc.2341:                                     ; preds = %for.body.2329
  %1650 = load i32, i32* %jj2182, align 4
  %dec2342 = add nsw i32 %1650, -1
  store i32 %dec2342, i32* %jj2182, align 4
  br label %for.cond.2326

for.end.2343:                                     ; preds = %for.cond.2326
  %1651 = load i32, i32* %kk2184, align 4
  %add2344 = add nsw i32 %1651, 1
  %1652 = load i32, i32* %ii2180, align 4
  %idxprom2345 = sext i32 %1652 to i64
  %1653 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2346 = getelementptr inbounds %struct.DState, %struct.DState* %1653, i32 0, i32 32
  %arrayidx2347 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2346, i32 0, i64 %idxprom2345
  store i32 %add2344, i32* %arrayidx2347, align 4
  br label %for.inc.2348

for.inc.2348:                                     ; preds = %for.end.2343
  %1654 = load i32, i32* %ii2180, align 4
  %dec2349 = add nsw i32 %1654, -1
  store i32 %dec2349, i32* %ii2180, align 4
  br label %for.cond.2322

for.end.2350:                                     ; preds = %for.cond.2322
  br label %if.end.2351

if.end.2351:                                      ; preds = %for.end.2350, %while.end.2308
  br label %if.end.2352

if.end.2352:                                      ; preds = %if.end.2351, %while.end.2252
  %1655 = load i8, i8* %uc, align 1
  %idxprom2353 = zext i8 %1655 to i64
  %1656 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2354 = getelementptr inbounds %struct.DState, %struct.DState* %1656, i32 0, i32 30
  %arrayidx2355 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2354, i32 0, i64 %idxprom2353
  %1657 = load i8, i8* %arrayidx2355, align 1
  %idxprom2356 = zext i8 %1657 to i64
  %1658 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2357 = getelementptr inbounds %struct.DState, %struct.DState* %1658, i32 0, i32 16
  %arrayidx2358 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2357, i32 0, i64 %idxprom2356
  %1659 = load i32, i32* %arrayidx2358, align 4
  %inc2359 = add nsw i32 %1659, 1
  store i32 %inc2359, i32* %arrayidx2358, align 4
  %1660 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2360 = getelementptr inbounds %struct.DState, %struct.DState* %1660, i32 0, i32 10
  %1661 = load i8, i8* %smallDecompress2360, align 1
  %tobool2361 = icmp ne i8 %1661, 0
  br i1 %tobool2361, label %if.then.2362, label %if.else.2370

if.then.2362:                                     ; preds = %if.end.2352
  %1662 = load i8, i8* %uc, align 1
  %idxprom2363 = zext i8 %1662 to i64
  %1663 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2364 = getelementptr inbounds %struct.DState, %struct.DState* %1663, i32 0, i32 30
  %arrayidx2365 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2364, i32 0, i64 %idxprom2363
  %1664 = load i8, i8* %arrayidx2365, align 1
  %conv2366 = zext i8 %1664 to i16
  %1665 = load i32, i32* %nblock, align 4
  %idxprom2367 = sext i32 %1665 to i64
  %1666 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162368 = getelementptr inbounds %struct.DState, %struct.DState* %1666, i32 0, i32 21
  %1667 = load i16*, i16** %ll162368, align 8
  %arrayidx2369 = getelementptr inbounds i16, i16* %1667, i64 %idxprom2367
  store i16 %conv2366, i16* %arrayidx2369, align 2
  br label %if.end.2378

if.else.2370:                                     ; preds = %if.end.2352
  %1668 = load i8, i8* %uc, align 1
  %idxprom2371 = zext i8 %1668 to i64
  %1669 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2372 = getelementptr inbounds %struct.DState, %struct.DState* %1669, i32 0, i32 30
  %arrayidx2373 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2372, i32 0, i64 %idxprom2371
  %1670 = load i8, i8* %arrayidx2373, align 1
  %conv2374 = zext i8 %1670 to i32
  %1671 = load i32, i32* %nblock, align 4
  %idxprom2375 = sext i32 %1671 to i64
  %1672 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2376 = getelementptr inbounds %struct.DState, %struct.DState* %1672, i32 0, i32 20
  %1673 = load i32*, i32** %tt2376, align 8
  %arrayidx2377 = getelementptr inbounds i32, i32* %1673, i64 %idxprom2375
  store i32 %conv2374, i32* %arrayidx2377, align 4
  br label %if.end.2378

if.end.2378:                                      ; preds = %if.else.2370, %if.then.2362
  %1674 = load i32, i32* %nblock, align 4
  %inc2379 = add nsw i32 %1674, 1
  store i32 %inc2379, i32* %nblock, align 4
  %1675 = load i32, i32* %groupPos, align 4
  %cmp2380 = icmp eq i32 %1675, 0
  br i1 %cmp2380, label %if.then.2382, label %if.end.2407

if.then.2382:                                     ; preds = %if.end.2378
  %1676 = load i32, i32* %groupNo, align 4
  %inc2383 = add nsw i32 %1676, 1
  store i32 %inc2383, i32* %groupNo, align 4
  %1677 = load i32, i32* %groupNo, align 4
  %1678 = load i32, i32* %nSelectors, align 4
  %cmp2384 = icmp sge i32 %1677, %1678
  br i1 %cmp2384, label %if.then.2386, label %if.end.2387

if.then.2386:                                     ; preds = %if.then.2382
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2387:                                      ; preds = %if.then.2382
  store i32 50, i32* %groupPos, align 4
  %1679 = load i32, i32* %groupNo, align 4
  %idxprom2388 = sext i32 %1679 to i64
  %1680 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector2389 = getelementptr inbounds %struct.DState, %struct.DState* %1680, i32 0, i32 33
  %arrayidx2390 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector2389, i32 0, i64 %idxprom2388
  %1681 = load i8, i8* %arrayidx2390, align 1
  %conv2391 = zext i8 %1681 to i32
  store i32 %conv2391, i32* %gSel, align 4
  %1682 = load i32, i32* %gSel, align 4
  %idxprom2392 = sext i32 %1682 to i64
  %1683 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens2393 = getelementptr inbounds %struct.DState, %struct.DState* %1683, i32 0, i32 39
  %arrayidx2394 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens2393, i32 0, i64 %idxprom2392
  %1684 = load i32, i32* %arrayidx2394, align 4
  store i32 %1684, i32* %gMinlen, align 4
  %1685 = load i32, i32* %gSel, align 4
  %idxprom2395 = sext i32 %1685 to i64
  %1686 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit2396 = getelementptr inbounds %struct.DState, %struct.DState* %1686, i32 0, i32 36
  %arrayidx2397 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit2396, i32 0, i64 %idxprom2395
  %arrayidx2398 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2397, i32 0, i64 0
  store i32* %arrayidx2398, i32** %gLimit, align 8
  %1687 = load i32, i32* %gSel, align 4
  %idxprom2399 = sext i32 %1687 to i64
  %1688 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm2400 = getelementptr inbounds %struct.DState, %struct.DState* %1688, i32 0, i32 38
  %arrayidx2401 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm2400, i32 0, i64 %idxprom2399
  %arrayidx2402 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2401, i32 0, i64 0
  store i32* %arrayidx2402, i32** %gPerm, align 8
  %1689 = load i32, i32* %gSel, align 4
  %idxprom2403 = sext i32 %1689 to i64
  %1690 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base2404 = getelementptr inbounds %struct.DState, %struct.DState* %1690, i32 0, i32 37
  %arrayidx2405 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base2404, i32 0, i64 %idxprom2403
  %arrayidx2406 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2405, i32 0, i64 0
  store i32* %arrayidx2406, i32** %gBase, align 8
  br label %if.end.2407

if.end.2407:                                      ; preds = %if.end.2387, %if.end.2378
  %1691 = load i32, i32* %groupPos, align 4
  %dec2408 = add nsw i32 %1691, -1
  store i32 %dec2408, i32* %groupPos, align 4
  %1692 = load i32, i32* %gMinlen, align 4
  store i32 %1692, i32* %zn, align 4
  br label %sw.bb.2409

sw.bb.2409:                                       ; preds = %if.end, %if.end.2407
  %1693 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2410 = getelementptr inbounds %struct.DState, %struct.DState* %1693, i32 0, i32 1
  store i32 40, i32* %state2410, align 4
  br label %while.body.2412

while.body.2412:                                  ; preds = %sw.bb.2409, %if.end.2461
  %1694 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2413 = getelementptr inbounds %struct.DState, %struct.DState* %1694, i32 0, i32 8
  %1695 = load i32, i32* %bsLive2413, align 4
  %1696 = load i32, i32* %zn, align 4
  %cmp2414 = icmp sge i32 %1695, %1696
  br i1 %cmp2414, label %if.then.2416, label %if.end.2428

if.then.2416:                                     ; preds = %while.body.2412
  %1697 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2419 = getelementptr inbounds %struct.DState, %struct.DState* %1697, i32 0, i32 7
  %1698 = load i32, i32* %bsBuff2419, align 4
  %1699 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2420 = getelementptr inbounds %struct.DState, %struct.DState* %1699, i32 0, i32 8
  %1700 = load i32, i32* %bsLive2420, align 4
  %1701 = load i32, i32* %zn, align 4
  %sub2421 = sub nsw i32 %1700, %1701
  %shr2422 = lshr i32 %1698, %sub2421
  %1702 = load i32, i32* %zn, align 4
  %shl2423 = shl i32 1, %1702
  %sub2424 = sub nsw i32 %shl2423, 1
  %and2425 = and i32 %shr2422, %sub2424
  store i32 %and2425, i32* %v2418, align 4
  %1703 = load i32, i32* %zn, align 4
  %1704 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2426 = getelementptr inbounds %struct.DState, %struct.DState* %1704, i32 0, i32 8
  %1705 = load i32, i32* %bsLive2426, align 4
  %sub2427 = sub nsw i32 %1705, %1703
  store i32 %sub2427, i32* %bsLive2426, align 4
  %1706 = load i32, i32* %v2418, align 4
  store i32 %1706, i32* %zvec, align 4
  br label %while.end.2462

if.end.2428:                                      ; preds = %while.body.2412
  %1707 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2429 = getelementptr inbounds %struct.DState, %struct.DState* %1707, i32 0, i32 0
  %1708 = load %struct.bz_stream*, %struct.bz_stream** %strm2429, align 8
  %avail_in2430 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1708, i32 0, i32 1
  %1709 = load i32, i32* %avail_in2430, align 4
  %cmp2431 = icmp eq i32 %1709, 0
  br i1 %cmp2431, label %if.then.2433, label %if.end.2434

if.then.2433:                                     ; preds = %if.end.2428
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2434:                                      ; preds = %if.end.2428
  %1710 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2435 = getelementptr inbounds %struct.DState, %struct.DState* %1710, i32 0, i32 7
  %1711 = load i32, i32* %bsBuff2435, align 4
  %shl2436 = shl i32 %1711, 8
  %1712 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2437 = getelementptr inbounds %struct.DState, %struct.DState* %1712, i32 0, i32 0
  %1713 = load %struct.bz_stream*, %struct.bz_stream** %strm2437, align 8
  %next_in2438 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1713, i32 0, i32 0
  %1714 = load i8*, i8** %next_in2438, align 8
  %1715 = load i8, i8* %1714, align 1
  %conv2439 = zext i8 %1715 to i32
  %or2440 = or i32 %shl2436, %conv2439
  %1716 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2441 = getelementptr inbounds %struct.DState, %struct.DState* %1716, i32 0, i32 7
  store i32 %or2440, i32* %bsBuff2441, align 4
  %1717 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2442 = getelementptr inbounds %struct.DState, %struct.DState* %1717, i32 0, i32 8
  %1718 = load i32, i32* %bsLive2442, align 4
  %add2443 = add nsw i32 %1718, 8
  store i32 %add2443, i32* %bsLive2442, align 4
  %1719 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2444 = getelementptr inbounds %struct.DState, %struct.DState* %1719, i32 0, i32 0
  %1720 = load %struct.bz_stream*, %struct.bz_stream** %strm2444, align 8
  %next_in2445 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1720, i32 0, i32 0
  %1721 = load i8*, i8** %next_in2445, align 8
  %incdec.ptr2446 = getelementptr inbounds i8, i8* %1721, i32 1
  store i8* %incdec.ptr2446, i8** %next_in2445, align 8
  %1722 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2447 = getelementptr inbounds %struct.DState, %struct.DState* %1722, i32 0, i32 0
  %1723 = load %struct.bz_stream*, %struct.bz_stream** %strm2447, align 8
  %avail_in2448 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1723, i32 0, i32 1
  %1724 = load i32, i32* %avail_in2448, align 4
  %dec2449 = add i32 %1724, -1
  store i32 %dec2449, i32* %avail_in2448, align 4
  %1725 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2450 = getelementptr inbounds %struct.DState, %struct.DState* %1725, i32 0, i32 0
  %1726 = load %struct.bz_stream*, %struct.bz_stream** %strm2450, align 8
  %total_in_lo322451 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1726, i32 0, i32 2
  %1727 = load i32, i32* %total_in_lo322451, align 4
  %inc2452 = add i32 %1727, 1
  store i32 %inc2452, i32* %total_in_lo322451, align 4
  %1728 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2453 = getelementptr inbounds %struct.DState, %struct.DState* %1728, i32 0, i32 0
  %1729 = load %struct.bz_stream*, %struct.bz_stream** %strm2453, align 8
  %total_in_lo322454 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1729, i32 0, i32 2
  %1730 = load i32, i32* %total_in_lo322454, align 4
  %cmp2455 = icmp eq i32 %1730, 0
  br i1 %cmp2455, label %if.then.2457, label %if.end.2461

if.then.2457:                                     ; preds = %if.end.2434
  %1731 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2458 = getelementptr inbounds %struct.DState, %struct.DState* %1731, i32 0, i32 0
  %1732 = load %struct.bz_stream*, %struct.bz_stream** %strm2458, align 8
  %total_in_hi322459 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1732, i32 0, i32 3
  %1733 = load i32, i32* %total_in_hi322459, align 4
  %inc2460 = add i32 %1733, 1
  store i32 %inc2460, i32* %total_in_hi322459, align 4
  br label %if.end.2461

if.end.2461:                                      ; preds = %if.then.2457, %if.end.2434
  br label %while.body.2412

while.end.2462:                                   ; preds = %if.then.2416
  br label %while.body.2464

while.body.2464:                                  ; preds = %while.end.2462, %while.end.2527
  %1734 = load i32, i32* %zn, align 4
  %cmp2465 = icmp sgt i32 %1734, 20
  br i1 %cmp2465, label %if.then.2467, label %if.end.2468

if.then.2467:                                     ; preds = %while.body.2464
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2468:                                      ; preds = %while.body.2464
  %1735 = load i32, i32* %zvec, align 4
  %1736 = load i32, i32* %zn, align 4
  %idxprom2469 = sext i32 %1736 to i64
  %1737 = load i32*, i32** %gLimit, align 8
  %arrayidx2470 = getelementptr inbounds i32, i32* %1737, i64 %idxprom2469
  %1738 = load i32, i32* %arrayidx2470, align 4
  %cmp2471 = icmp sle i32 %1735, %1738
  br i1 %cmp2471, label %if.then.2473, label %if.end.2474

if.then.2473:                                     ; preds = %if.end.2468
  br label %while.end.2530

if.end.2474:                                      ; preds = %if.end.2468
  %1739 = load i32, i32* %zn, align 4
  %inc2475 = add nsw i32 %1739, 1
  store i32 %inc2475, i32* %zn, align 4
  br label %sw.bb.2476

sw.bb.2476:                                       ; preds = %if.end, %if.end.2474
  %1740 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2477 = getelementptr inbounds %struct.DState, %struct.DState* %1740, i32 0, i32 1
  store i32 41, i32* %state2477, align 4
  br label %while.body.2479

while.body.2479:                                  ; preds = %sw.bb.2476, %if.end.2526
  %1741 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2480 = getelementptr inbounds %struct.DState, %struct.DState* %1741, i32 0, i32 8
  %1742 = load i32, i32* %bsLive2480, align 4
  %cmp2481 = icmp sge i32 %1742, 1
  br i1 %cmp2481, label %if.then.2483, label %if.end.2493

if.then.2483:                                     ; preds = %while.body.2479
  %1743 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2486 = getelementptr inbounds %struct.DState, %struct.DState* %1743, i32 0, i32 7
  %1744 = load i32, i32* %bsBuff2486, align 4
  %1745 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2487 = getelementptr inbounds %struct.DState, %struct.DState* %1745, i32 0, i32 8
  %1746 = load i32, i32* %bsLive2487, align 4
  %sub2488 = sub nsw i32 %1746, 1
  %shr2489 = lshr i32 %1744, %sub2488
  %and2490 = and i32 %shr2489, 1
  store i32 %and2490, i32* %v2485, align 4
  %1747 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2491 = getelementptr inbounds %struct.DState, %struct.DState* %1747, i32 0, i32 8
  %1748 = load i32, i32* %bsLive2491, align 4
  %sub2492 = sub nsw i32 %1748, 1
  store i32 %sub2492, i32* %bsLive2491, align 4
  %1749 = load i32, i32* %v2485, align 4
  store i32 %1749, i32* %zj, align 4
  br label %while.end.2527

if.end.2493:                                      ; preds = %while.body.2479
  %1750 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2494 = getelementptr inbounds %struct.DState, %struct.DState* %1750, i32 0, i32 0
  %1751 = load %struct.bz_stream*, %struct.bz_stream** %strm2494, align 8
  %avail_in2495 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1751, i32 0, i32 1
  %1752 = load i32, i32* %avail_in2495, align 4
  %cmp2496 = icmp eq i32 %1752, 0
  br i1 %cmp2496, label %if.then.2498, label %if.end.2499

if.then.2498:                                     ; preds = %if.end.2493
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2499:                                      ; preds = %if.end.2493
  %1753 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2500 = getelementptr inbounds %struct.DState, %struct.DState* %1753, i32 0, i32 7
  %1754 = load i32, i32* %bsBuff2500, align 4
  %shl2501 = shl i32 %1754, 8
  %1755 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2502 = getelementptr inbounds %struct.DState, %struct.DState* %1755, i32 0, i32 0
  %1756 = load %struct.bz_stream*, %struct.bz_stream** %strm2502, align 8
  %next_in2503 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1756, i32 0, i32 0
  %1757 = load i8*, i8** %next_in2503, align 8
  %1758 = load i8, i8* %1757, align 1
  %conv2504 = zext i8 %1758 to i32
  %or2505 = or i32 %shl2501, %conv2504
  %1759 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2506 = getelementptr inbounds %struct.DState, %struct.DState* %1759, i32 0, i32 7
  store i32 %or2505, i32* %bsBuff2506, align 4
  %1760 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2507 = getelementptr inbounds %struct.DState, %struct.DState* %1760, i32 0, i32 8
  %1761 = load i32, i32* %bsLive2507, align 4
  %add2508 = add nsw i32 %1761, 8
  store i32 %add2508, i32* %bsLive2507, align 4
  %1762 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2509 = getelementptr inbounds %struct.DState, %struct.DState* %1762, i32 0, i32 0
  %1763 = load %struct.bz_stream*, %struct.bz_stream** %strm2509, align 8
  %next_in2510 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1763, i32 0, i32 0
  %1764 = load i8*, i8** %next_in2510, align 8
  %incdec.ptr2511 = getelementptr inbounds i8, i8* %1764, i32 1
  store i8* %incdec.ptr2511, i8** %next_in2510, align 8
  %1765 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2512 = getelementptr inbounds %struct.DState, %struct.DState* %1765, i32 0, i32 0
  %1766 = load %struct.bz_stream*, %struct.bz_stream** %strm2512, align 8
  %avail_in2513 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1766, i32 0, i32 1
  %1767 = load i32, i32* %avail_in2513, align 4
  %dec2514 = add i32 %1767, -1
  store i32 %dec2514, i32* %avail_in2513, align 4
  %1768 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2515 = getelementptr inbounds %struct.DState, %struct.DState* %1768, i32 0, i32 0
  %1769 = load %struct.bz_stream*, %struct.bz_stream** %strm2515, align 8
  %total_in_lo322516 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1769, i32 0, i32 2
  %1770 = load i32, i32* %total_in_lo322516, align 4
  %inc2517 = add i32 %1770, 1
  store i32 %inc2517, i32* %total_in_lo322516, align 4
  %1771 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2518 = getelementptr inbounds %struct.DState, %struct.DState* %1771, i32 0, i32 0
  %1772 = load %struct.bz_stream*, %struct.bz_stream** %strm2518, align 8
  %total_in_lo322519 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1772, i32 0, i32 2
  %1773 = load i32, i32* %total_in_lo322519, align 4
  %cmp2520 = icmp eq i32 %1773, 0
  br i1 %cmp2520, label %if.then.2522, label %if.end.2526

if.then.2522:                                     ; preds = %if.end.2499
  %1774 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2523 = getelementptr inbounds %struct.DState, %struct.DState* %1774, i32 0, i32 0
  %1775 = load %struct.bz_stream*, %struct.bz_stream** %strm2523, align 8
  %total_in_hi322524 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1775, i32 0, i32 3
  %1776 = load i32, i32* %total_in_hi322524, align 4
  %inc2525 = add i32 %1776, 1
  store i32 %inc2525, i32* %total_in_hi322524, align 4
  br label %if.end.2526

if.end.2526:                                      ; preds = %if.then.2522, %if.end.2499
  br label %while.body.2479

while.end.2527:                                   ; preds = %if.then.2483
  %1777 = load i32, i32* %zvec, align 4
  %shl2528 = shl i32 %1777, 1
  %1778 = load i32, i32* %zj, align 4
  %or2529 = or i32 %shl2528, %1778
  store i32 %or2529, i32* %zvec, align 4
  br label %while.body.2464

while.end.2530:                                   ; preds = %if.then.2473
  %1779 = load i32, i32* %zvec, align 4
  %1780 = load i32, i32* %zn, align 4
  %idxprom2531 = sext i32 %1780 to i64
  %1781 = load i32*, i32** %gBase, align 8
  %arrayidx2532 = getelementptr inbounds i32, i32* %1781, i64 %idxprom2531
  %1782 = load i32, i32* %arrayidx2532, align 4
  %sub2533 = sub nsw i32 %1779, %1782
  %cmp2534 = icmp slt i32 %sub2533, 0
  br i1 %cmp2534, label %if.then.2542, label %lor.lhs.false.2536

lor.lhs.false.2536:                               ; preds = %while.end.2530
  %1783 = load i32, i32* %zvec, align 4
  %1784 = load i32, i32* %zn, align 4
  %idxprom2537 = sext i32 %1784 to i64
  %1785 = load i32*, i32** %gBase, align 8
  %arrayidx2538 = getelementptr inbounds i32, i32* %1785, i64 %idxprom2537
  %1786 = load i32, i32* %arrayidx2538, align 4
  %sub2539 = sub nsw i32 %1783, %1786
  %cmp2540 = icmp sge i32 %sub2539, 258
  br i1 %cmp2540, label %if.then.2542, label %if.end.2543

if.then.2542:                                     ; preds = %lor.lhs.false.2536, %while.end.2530
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2543:                                      ; preds = %lor.lhs.false.2536
  %1787 = load i32, i32* %zvec, align 4
  %1788 = load i32, i32* %zn, align 4
  %idxprom2544 = sext i32 %1788 to i64
  %1789 = load i32*, i32** %gBase, align 8
  %arrayidx2545 = getelementptr inbounds i32, i32* %1789, i64 %idxprom2544
  %1790 = load i32, i32* %arrayidx2545, align 4
  %sub2546 = sub nsw i32 %1787, %1790
  %idxprom2547 = sext i32 %sub2546 to i64
  %1791 = load i32*, i32** %gPerm, align 8
  %arrayidx2548 = getelementptr inbounds i32, i32* %1791, i64 %idxprom2547
  %1792 = load i32, i32* %arrayidx2548, align 4
  store i32 %1792, i32* %nextSym, align 4
  br label %while.body.1929

while.end.2549:                                   ; preds = %if.then.1932
  %1793 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2550 = getelementptr inbounds %struct.DState, %struct.DState* %1793, i32 0, i32 13
  %1794 = load i32, i32* %origPtr2550, align 4
  %cmp2551 = icmp slt i32 %1794, 0
  br i1 %cmp2551, label %if.then.2557, label %lor.lhs.false.2553

lor.lhs.false.2553:                               ; preds = %while.end.2549
  %1795 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2554 = getelementptr inbounds %struct.DState, %struct.DState* %1795, i32 0, i32 13
  %1796 = load i32, i32* %origPtr2554, align 4
  %1797 = load i32, i32* %nblock, align 4
  %cmp2555 = icmp sge i32 %1796, %1797
  br i1 %cmp2555, label %if.then.2557, label %if.end.2558

if.then.2557:                                     ; preds = %lor.lhs.false.2553, %while.end.2549
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2558:                                      ; preds = %lor.lhs.false.2553
  %1798 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %1798, i32 0, i32 18
  %arrayidx2559 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i32 0, i64 0
  store i32 0, i32* %arrayidx2559, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.2560

for.cond.2560:                                    ; preds = %for.inc.2571, %if.end.2558
  %1799 = load i32, i32* %i, align 4
  %cmp2561 = icmp sle i32 %1799, 256
  br i1 %cmp2561, label %for.body.2563, label %for.end.2573

for.body.2563:                                    ; preds = %for.cond.2560
  %1800 = load i32, i32* %i, align 4
  %sub2564 = sub nsw i32 %1800, 1
  %idxprom2565 = sext i32 %sub2564 to i64
  %1801 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2566 = getelementptr inbounds %struct.DState, %struct.DState* %1801, i32 0, i32 16
  %arrayidx2567 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2566, i32 0, i64 %idxprom2565
  %1802 = load i32, i32* %arrayidx2567, align 4
  %1803 = load i32, i32* %i, align 4
  %idxprom2568 = sext i32 %1803 to i64
  %1804 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2569 = getelementptr inbounds %struct.DState, %struct.DState* %1804, i32 0, i32 18
  %arrayidx2570 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2569, i32 0, i64 %idxprom2568
  store i32 %1802, i32* %arrayidx2570, align 4
  br label %for.inc.2571

for.inc.2571:                                     ; preds = %for.body.2563
  %1805 = load i32, i32* %i, align 4
  %inc2572 = add nsw i32 %1805, 1
  store i32 %inc2572, i32* %i, align 4
  br label %for.cond.2560

for.end.2573:                                     ; preds = %for.cond.2560
  store i32 1, i32* %i, align 4
  br label %for.cond.2574

for.cond.2574:                                    ; preds = %for.inc.2586, %for.end.2573
  %1806 = load i32, i32* %i, align 4
  %cmp2575 = icmp sle i32 %1806, 256
  br i1 %cmp2575, label %for.body.2577, label %for.end.2588

for.body.2577:                                    ; preds = %for.cond.2574
  %1807 = load i32, i32* %i, align 4
  %sub2578 = sub nsw i32 %1807, 1
  %idxprom2579 = sext i32 %sub2578 to i64
  %1808 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2580 = getelementptr inbounds %struct.DState, %struct.DState* %1808, i32 0, i32 18
  %arrayidx2581 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2580, i32 0, i64 %idxprom2579
  %1809 = load i32, i32* %arrayidx2581, align 4
  %1810 = load i32, i32* %i, align 4
  %idxprom2582 = sext i32 %1810 to i64
  %1811 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2583 = getelementptr inbounds %struct.DState, %struct.DState* %1811, i32 0, i32 18
  %arrayidx2584 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2583, i32 0, i64 %idxprom2582
  %1812 = load i32, i32* %arrayidx2584, align 4
  %add2585 = add nsw i32 %1812, %1809
  store i32 %add2585, i32* %arrayidx2584, align 4
  br label %for.inc.2586

for.inc.2586:                                     ; preds = %for.body.2577
  %1813 = load i32, i32* %i, align 4
  %inc2587 = add nsw i32 %1813, 1
  store i32 %inc2587, i32* %i, align 4
  br label %for.cond.2574

for.end.2588:                                     ; preds = %for.cond.2574
  store i32 0, i32* %i, align 4
  br label %for.cond.2589

for.cond.2589:                                    ; preds = %for.inc.2606, %for.end.2588
  %1814 = load i32, i32* %i, align 4
  %cmp2590 = icmp sle i32 %1814, 256
  br i1 %cmp2590, label %for.body.2592, label %for.end.2608

for.body.2592:                                    ; preds = %for.cond.2589
  %1815 = load i32, i32* %i, align 4
  %idxprom2593 = sext i32 %1815 to i64
  %1816 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2594 = getelementptr inbounds %struct.DState, %struct.DState* %1816, i32 0, i32 18
  %arrayidx2595 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2594, i32 0, i64 %idxprom2593
  %1817 = load i32, i32* %arrayidx2595, align 4
  %cmp2596 = icmp slt i32 %1817, 0
  br i1 %cmp2596, label %if.then.2604, label %lor.lhs.false.2598

lor.lhs.false.2598:                               ; preds = %for.body.2592
  %1818 = load i32, i32* %i, align 4
  %idxprom2599 = sext i32 %1818 to i64
  %1819 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2600 = getelementptr inbounds %struct.DState, %struct.DState* %1819, i32 0, i32 18
  %arrayidx2601 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2600, i32 0, i64 %idxprom2599
  %1820 = load i32, i32* %arrayidx2601, align 4
  %1821 = load i32, i32* %nblock, align 4
  %cmp2602 = icmp sgt i32 %1820, %1821
  br i1 %cmp2602, label %if.then.2604, label %if.end.2605

if.then.2604:                                     ; preds = %lor.lhs.false.2598, %for.body.2592
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2605:                                      ; preds = %lor.lhs.false.2598
  br label %for.inc.2606

for.inc.2606:                                     ; preds = %if.end.2605
  %1822 = load i32, i32* %i, align 4
  %inc2607 = add nsw i32 %1822, 1
  store i32 %inc2607, i32* %i, align 4
  br label %for.cond.2589

for.end.2608:                                     ; preds = %for.cond.2589
  %1823 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %1823, i32 0, i32 3
  store i32 0, i32* %state_out_len, align 4
  %1824 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %1824, i32 0, i32 2
  store i8 0, i8* %state_out_ch, align 1
  %1825 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %1825, i32 0, i32 25
  store i32 -1, i32* %calculatedBlockCRC, align 4
  %1826 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2609 = getelementptr inbounds %struct.DState, %struct.DState* %1826, i32 0, i32 1
  store i32 2, i32* %state2609, align 4
  %1827 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %verbosity2610 = getelementptr inbounds %struct.DState, %struct.DState* %1827, i32 0, i32 12
  %1828 = load i32, i32* %verbosity2610, align 4
  %cmp2611 = icmp sge i32 %1828, 2
  br i1 %cmp2611, label %if.then.2613, label %if.end.2615

if.then.2613:                                     ; preds = %for.end.2608
  %1829 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2614 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1829, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.2615

if.end.2615:                                      ; preds = %if.then.2613, %for.end.2608
  %1830 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2616 = getelementptr inbounds %struct.DState, %struct.DState* %1830, i32 0, i32 10
  %1831 = load i8, i8* %smallDecompress2616, align 1
  %tobool2617 = icmp ne i8 %1831, 0
  br i1 %tobool2617, label %if.then.2618, label %if.else.2849

if.then.2618:                                     ; preds = %if.end.2615
  store i32 0, i32* %i, align 4
  br label %for.cond.2619

for.cond.2619:                                    ; preds = %for.inc.2628, %if.then.2618
  %1832 = load i32, i32* %i, align 4
  %cmp2620 = icmp sle i32 %1832, 256
  br i1 %cmp2620, label %for.body.2622, label %for.end.2630

for.body.2622:                                    ; preds = %for.cond.2619
  %1833 = load i32, i32* %i, align 4
  %idxprom2623 = sext i32 %1833 to i64
  %1834 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2624 = getelementptr inbounds %struct.DState, %struct.DState* %1834, i32 0, i32 18
  %arrayidx2625 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2624, i32 0, i64 %idxprom2623
  %1835 = load i32, i32* %arrayidx2625, align 4
  %1836 = load i32, i32* %i, align 4
  %idxprom2626 = sext i32 %1836 to i64
  %1837 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy = getelementptr inbounds %struct.DState, %struct.DState* %1837, i32 0, i32 19
  %arrayidx2627 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy, i32 0, i64 %idxprom2626
  store i32 %1835, i32* %arrayidx2627, align 4
  br label %for.inc.2628

for.inc.2628:                                     ; preds = %for.body.2622
  %1838 = load i32, i32* %i, align 4
  %inc2629 = add nsw i32 %1838, 1
  store i32 %inc2629, i32* %i, align 4
  br label %for.cond.2619

for.end.2630:                                     ; preds = %for.cond.2619
  store i32 0, i32* %i, align 4
  br label %for.cond.2631

for.cond.2631:                                    ; preds = %for.inc.2690, %for.end.2630
  %1839 = load i32, i32* %i, align 4
  %1840 = load i32, i32* %nblock, align 4
  %cmp2632 = icmp slt i32 %1839, %1840
  br i1 %cmp2632, label %for.body.2634, label %for.end.2692

for.body.2634:                                    ; preds = %for.cond.2631
  %1841 = load i32, i32* %i, align 4
  %idxprom2635 = sext i32 %1841 to i64
  %1842 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162636 = getelementptr inbounds %struct.DState, %struct.DState* %1842, i32 0, i32 21
  %1843 = load i16*, i16** %ll162636, align 8
  %arrayidx2637 = getelementptr inbounds i16, i16* %1843, i64 %idxprom2635
  %1844 = load i16, i16* %arrayidx2637, align 2
  %conv2638 = trunc i16 %1844 to i8
  store i8 %conv2638, i8* %uc, align 1
  %1845 = load i8, i8* %uc, align 1
  %idxprom2639 = zext i8 %1845 to i64
  %1846 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2640 = getelementptr inbounds %struct.DState, %struct.DState* %1846, i32 0, i32 19
  %arrayidx2641 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2640, i32 0, i64 %idxprom2639
  %1847 = load i32, i32* %arrayidx2641, align 4
  %and2642 = and i32 %1847, 65535
  %conv2643 = trunc i32 %and2642 to i16
  %1848 = load i32, i32* %i, align 4
  %idxprom2644 = sext i32 %1848 to i64
  %1849 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162645 = getelementptr inbounds %struct.DState, %struct.DState* %1849, i32 0, i32 21
  %1850 = load i16*, i16** %ll162645, align 8
  %arrayidx2646 = getelementptr inbounds i16, i16* %1850, i64 %idxprom2644
  store i16 %conv2643, i16* %arrayidx2646, align 2
  %1851 = load i32, i32* %i, align 4
  %and2647 = and i32 %1851, 1
  %cmp2648 = icmp eq i32 %and2647, 0
  br i1 %cmp2648, label %if.then.2650, label %if.else.2667

if.then.2650:                                     ; preds = %for.body.2634
  %1852 = load i32, i32* %i, align 4
  %shr2651 = ashr i32 %1852, 1
  %idxprom2652 = sext i32 %shr2651 to i64
  %1853 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42653 = getelementptr inbounds %struct.DState, %struct.DState* %1853, i32 0, i32 22
  %1854 = load i8*, i8** %ll42653, align 8
  %arrayidx2654 = getelementptr inbounds i8, i8* %1854, i64 %idxprom2652
  %1855 = load i8, i8* %arrayidx2654, align 1
  %conv2655 = zext i8 %1855 to i32
  %and2656 = and i32 %conv2655, 240
  %1856 = load i8, i8* %uc, align 1
  %idxprom2657 = zext i8 %1856 to i64
  %1857 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2658 = getelementptr inbounds %struct.DState, %struct.DState* %1857, i32 0, i32 19
  %arrayidx2659 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2658, i32 0, i64 %idxprom2657
  %1858 = load i32, i32* %arrayidx2659, align 4
  %shr2660 = ashr i32 %1858, 16
  %or2661 = or i32 %and2656, %shr2660
  %conv2662 = trunc i32 %or2661 to i8
  %1859 = load i32, i32* %i, align 4
  %shr2663 = ashr i32 %1859, 1
  %idxprom2664 = sext i32 %shr2663 to i64
  %1860 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42665 = getelementptr inbounds %struct.DState, %struct.DState* %1860, i32 0, i32 22
  %1861 = load i8*, i8** %ll42665, align 8
  %arrayidx2666 = getelementptr inbounds i8, i8* %1861, i64 %idxprom2664
  store i8 %conv2662, i8* %arrayidx2666, align 1
  br label %if.end.2685

if.else.2667:                                     ; preds = %for.body.2634
  %1862 = load i32, i32* %i, align 4
  %shr2668 = ashr i32 %1862, 1
  %idxprom2669 = sext i32 %shr2668 to i64
  %1863 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42670 = getelementptr inbounds %struct.DState, %struct.DState* %1863, i32 0, i32 22
  %1864 = load i8*, i8** %ll42670, align 8
  %arrayidx2671 = getelementptr inbounds i8, i8* %1864, i64 %idxprom2669
  %1865 = load i8, i8* %arrayidx2671, align 1
  %conv2672 = zext i8 %1865 to i32
  %and2673 = and i32 %conv2672, 15
  %1866 = load i8, i8* %uc, align 1
  %idxprom2674 = zext i8 %1866 to i64
  %1867 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2675 = getelementptr inbounds %struct.DState, %struct.DState* %1867, i32 0, i32 19
  %arrayidx2676 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2675, i32 0, i64 %idxprom2674
  %1868 = load i32, i32* %arrayidx2676, align 4
  %shr2677 = ashr i32 %1868, 16
  %shl2678 = shl i32 %shr2677, 4
  %or2679 = or i32 %and2673, %shl2678
  %conv2680 = trunc i32 %or2679 to i8
  %1869 = load i32, i32* %i, align 4
  %shr2681 = ashr i32 %1869, 1
  %idxprom2682 = sext i32 %shr2681 to i64
  %1870 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42683 = getelementptr inbounds %struct.DState, %struct.DState* %1870, i32 0, i32 22
  %1871 = load i8*, i8** %ll42683, align 8
  %arrayidx2684 = getelementptr inbounds i8, i8* %1871, i64 %idxprom2682
  store i8 %conv2680, i8* %arrayidx2684, align 1
  br label %if.end.2685

if.end.2685:                                      ; preds = %if.else.2667, %if.then.2650
  %1872 = load i8, i8* %uc, align 1
  %idxprom2686 = zext i8 %1872 to i64
  %1873 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2687 = getelementptr inbounds %struct.DState, %struct.DState* %1873, i32 0, i32 19
  %arrayidx2688 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2687, i32 0, i64 %idxprom2686
  %1874 = load i32, i32* %arrayidx2688, align 4
  %inc2689 = add nsw i32 %1874, 1
  store i32 %inc2689, i32* %arrayidx2688, align 4
  br label %for.inc.2690

for.inc.2690:                                     ; preds = %if.end.2685
  %1875 = load i32, i32* %i, align 4
  %inc2691 = add nsw i32 %1875, 1
  store i32 %inc2691, i32* %i, align 4
  br label %for.cond.2631

for.end.2692:                                     ; preds = %for.cond.2631
  %1876 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2693 = getelementptr inbounds %struct.DState, %struct.DState* %1876, i32 0, i32 13
  %1877 = load i32, i32* %origPtr2693, align 4
  store i32 %1877, i32* %i, align 4
  %1878 = load i32, i32* %i, align 4
  %idxprom2694 = sext i32 %1878 to i64
  %1879 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162695 = getelementptr inbounds %struct.DState, %struct.DState* %1879, i32 0, i32 21
  %1880 = load i16*, i16** %ll162695, align 8
  %arrayidx2696 = getelementptr inbounds i16, i16* %1880, i64 %idxprom2694
  %1881 = load i16, i16* %arrayidx2696, align 2
  %conv2697 = zext i16 %1881 to i32
  %1882 = load i32, i32* %i, align 4
  %shr2698 = ashr i32 %1882, 1
  %idxprom2699 = sext i32 %shr2698 to i64
  %1883 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42700 = getelementptr inbounds %struct.DState, %struct.DState* %1883, i32 0, i32 22
  %1884 = load i8*, i8** %ll42700, align 8
  %arrayidx2701 = getelementptr inbounds i8, i8* %1884, i64 %idxprom2699
  %1885 = load i8, i8* %arrayidx2701, align 1
  %conv2702 = zext i8 %1885 to i32
  %1886 = load i32, i32* %i, align 4
  %shl2703 = shl i32 %1886, 2
  %and2704 = and i32 %shl2703, 4
  %shr2705 = lshr i32 %conv2702, %and2704
  %and2706 = and i32 %shr2705, 15
  %shl2707 = shl i32 %and2706, 16
  %or2708 = or i32 %conv2697, %shl2707
  store i32 %or2708, i32* %j, align 4
  br label %do.body.2709

do.body.2709:                                     ; preds = %do.cond.2765, %for.end.2692
  %1887 = load i32, i32* %j, align 4
  %idxprom2712 = sext i32 %1887 to i64
  %1888 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162713 = getelementptr inbounds %struct.DState, %struct.DState* %1888, i32 0, i32 21
  %1889 = load i16*, i16** %ll162713, align 8
  %arrayidx2714 = getelementptr inbounds i16, i16* %1889, i64 %idxprom2712
  %1890 = load i16, i16* %arrayidx2714, align 2
  %conv2715 = zext i16 %1890 to i32
  %1891 = load i32, i32* %j, align 4
  %shr2716 = ashr i32 %1891, 1
  %idxprom2717 = sext i32 %shr2716 to i64
  %1892 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42718 = getelementptr inbounds %struct.DState, %struct.DState* %1892, i32 0, i32 22
  %1893 = load i8*, i8** %ll42718, align 8
  %arrayidx2719 = getelementptr inbounds i8, i8* %1893, i64 %idxprom2717
  %1894 = load i8, i8* %arrayidx2719, align 1
  %conv2720 = zext i8 %1894 to i32
  %1895 = load i32, i32* %j, align 4
  %shl2721 = shl i32 %1895, 2
  %and2722 = and i32 %shl2721, 4
  %shr2723 = lshr i32 %conv2720, %and2722
  %and2724 = and i32 %shr2723, 15
  %shl2725 = shl i32 %and2724, 16
  %or2726 = or i32 %conv2715, %shl2725
  store i32 %or2726, i32* %tmp2711, align 4
  %1896 = load i32, i32* %i, align 4
  %and2727 = and i32 %1896, 65535
  %conv2728 = trunc i32 %and2727 to i16
  %1897 = load i32, i32* %j, align 4
  %idxprom2729 = sext i32 %1897 to i64
  %1898 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162730 = getelementptr inbounds %struct.DState, %struct.DState* %1898, i32 0, i32 21
  %1899 = load i16*, i16** %ll162730, align 8
  %arrayidx2731 = getelementptr inbounds i16, i16* %1899, i64 %idxprom2729
  store i16 %conv2728, i16* %arrayidx2731, align 2
  %1900 = load i32, i32* %j, align 4
  %and2732 = and i32 %1900, 1
  %cmp2733 = icmp eq i32 %and2732, 0
  br i1 %cmp2733, label %if.then.2735, label %if.else.2749

if.then.2735:                                     ; preds = %do.body.2709
  %1901 = load i32, i32* %j, align 4
  %shr2736 = ashr i32 %1901, 1
  %idxprom2737 = sext i32 %shr2736 to i64
  %1902 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42738 = getelementptr inbounds %struct.DState, %struct.DState* %1902, i32 0, i32 22
  %1903 = load i8*, i8** %ll42738, align 8
  %arrayidx2739 = getelementptr inbounds i8, i8* %1903, i64 %idxprom2737
  %1904 = load i8, i8* %arrayidx2739, align 1
  %conv2740 = zext i8 %1904 to i32
  %and2741 = and i32 %conv2740, 240
  %1905 = load i32, i32* %i, align 4
  %shr2742 = ashr i32 %1905, 16
  %or2743 = or i32 %and2741, %shr2742
  %conv2744 = trunc i32 %or2743 to i8
  %1906 = load i32, i32* %j, align 4
  %shr2745 = ashr i32 %1906, 1
  %idxprom2746 = sext i32 %shr2745 to i64
  %1907 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42747 = getelementptr inbounds %struct.DState, %struct.DState* %1907, i32 0, i32 22
  %1908 = load i8*, i8** %ll42747, align 8
  %arrayidx2748 = getelementptr inbounds i8, i8* %1908, i64 %idxprom2746
  store i8 %conv2744, i8* %arrayidx2748, align 1
  br label %if.end.2764

if.else.2749:                                     ; preds = %do.body.2709
  %1909 = load i32, i32* %j, align 4
  %shr2750 = ashr i32 %1909, 1
  %idxprom2751 = sext i32 %shr2750 to i64
  %1910 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42752 = getelementptr inbounds %struct.DState, %struct.DState* %1910, i32 0, i32 22
  %1911 = load i8*, i8** %ll42752, align 8
  %arrayidx2753 = getelementptr inbounds i8, i8* %1911, i64 %idxprom2751
  %1912 = load i8, i8* %arrayidx2753, align 1
  %conv2754 = zext i8 %1912 to i32
  %and2755 = and i32 %conv2754, 15
  %1913 = load i32, i32* %i, align 4
  %shr2756 = ashr i32 %1913, 16
  %shl2757 = shl i32 %shr2756, 4
  %or2758 = or i32 %and2755, %shl2757
  %conv2759 = trunc i32 %or2758 to i8
  %1914 = load i32, i32* %j, align 4
  %shr2760 = ashr i32 %1914, 1
  %idxprom2761 = sext i32 %shr2760 to i64
  %1915 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42762 = getelementptr inbounds %struct.DState, %struct.DState* %1915, i32 0, i32 22
  %1916 = load i8*, i8** %ll42762, align 8
  %arrayidx2763 = getelementptr inbounds i8, i8* %1916, i64 %idxprom2761
  store i8 %conv2759, i8* %arrayidx2763, align 1
  br label %if.end.2764

if.end.2764:                                      ; preds = %if.else.2749, %if.then.2735
  %1917 = load i32, i32* %j, align 4
  store i32 %1917, i32* %i, align 4
  %1918 = load i32, i32* %tmp2711, align 4
  store i32 %1918, i32* %j, align 4
  br label %do.cond.2765

do.cond.2765:                                     ; preds = %if.end.2764
  %1919 = load i32, i32* %i, align 4
  %1920 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2766 = getelementptr inbounds %struct.DState, %struct.DState* %1920, i32 0, i32 13
  %1921 = load i32, i32* %origPtr2766, align 4
  %cmp2767 = icmp ne i32 %1919, %1921
  br i1 %cmp2767, label %do.body.2709, label %do.end.2769

do.end.2769:                                      ; preds = %do.cond.2765
  %1922 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2770 = getelementptr inbounds %struct.DState, %struct.DState* %1922, i32 0, i32 13
  %1923 = load i32, i32* %origPtr2770, align 4
  %1924 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %1924, i32 0, i32 14
  store i32 %1923, i32* %tPos, align 4
  %1925 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %1925, i32 0, i32 17
  store i32 0, i32* %nblock_used, align 4
  %1926 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised2771 = getelementptr inbounds %struct.DState, %struct.DState* %1926, i32 0, i32 4
  %1927 = load i8, i8* %blockRandomised2771, align 1
  %tobool2772 = icmp ne i8 %1927, 0
  br i1 %tobool2772, label %if.then.2773, label %if.else.2821

if.then.2773:                                     ; preds = %do.end.2769
  %1928 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %1928, i32 0, i32 5
  store i32 0, i32* %rNToGo, align 4
  %1929 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %1929, i32 0, i32 6
  store i32 0, i32* %rTPos, align 4
  %1930 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2774 = getelementptr inbounds %struct.DState, %struct.DState* %1930, i32 0, i32 14
  %1931 = load i32, i32* %tPos2774, align 4
  %1932 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2775 = getelementptr inbounds %struct.DState, %struct.DState* %1932, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2775, i32 0, i32 0
  %call2776 = call i32 @BZ2_indexIntoF(i32 %1931, i32* %arraydecay)
  %1933 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %1933, i32 0, i32 15
  store i32 %call2776, i32* %k0, align 4
  %1934 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2777 = getelementptr inbounds %struct.DState, %struct.DState* %1934, i32 0, i32 14
  %1935 = load i32, i32* %tPos2777, align 4
  %idxprom2778 = zext i32 %1935 to i64
  %1936 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162779 = getelementptr inbounds %struct.DState, %struct.DState* %1936, i32 0, i32 21
  %1937 = load i16*, i16** %ll162779, align 8
  %arrayidx2780 = getelementptr inbounds i16, i16* %1937, i64 %idxprom2778
  %1938 = load i16, i16* %arrayidx2780, align 2
  %conv2781 = zext i16 %1938 to i32
  %1939 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2782 = getelementptr inbounds %struct.DState, %struct.DState* %1939, i32 0, i32 14
  %1940 = load i32, i32* %tPos2782, align 4
  %shr2783 = lshr i32 %1940, 1
  %idxprom2784 = zext i32 %shr2783 to i64
  %1941 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42785 = getelementptr inbounds %struct.DState, %struct.DState* %1941, i32 0, i32 22
  %1942 = load i8*, i8** %ll42785, align 8
  %arrayidx2786 = getelementptr inbounds i8, i8* %1942, i64 %idxprom2784
  %1943 = load i8, i8* %arrayidx2786, align 1
  %conv2787 = zext i8 %1943 to i32
  %1944 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2788 = getelementptr inbounds %struct.DState, %struct.DState* %1944, i32 0, i32 14
  %1945 = load i32, i32* %tPos2788, align 4
  %shl2789 = shl i32 %1945, 2
  %and2790 = and i32 %shl2789, 4
  %shr2791 = lshr i32 %conv2787, %and2790
  %and2792 = and i32 %shr2791, 15
  %shl2793 = shl i32 %and2792, 16
  %or2794 = or i32 %conv2781, %shl2793
  %1946 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2795 = getelementptr inbounds %struct.DState, %struct.DState* %1946, i32 0, i32 14
  store i32 %or2794, i32* %tPos2795, align 4
  %1947 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2796 = getelementptr inbounds %struct.DState, %struct.DState* %1947, i32 0, i32 17
  %1948 = load i32, i32* %nblock_used2796, align 4
  %inc2797 = add nsw i32 %1948, 1
  store i32 %inc2797, i32* %nblock_used2796, align 4
  %1949 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2798 = getelementptr inbounds %struct.DState, %struct.DState* %1949, i32 0, i32 5
  %1950 = load i32, i32* %rNToGo2798, align 4
  %cmp2799 = icmp eq i32 %1950, 0
  br i1 %cmp2799, label %if.then.2801, label %if.end.2814

if.then.2801:                                     ; preds = %if.then.2773
  %1951 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2802 = getelementptr inbounds %struct.DState, %struct.DState* %1951, i32 0, i32 6
  %1952 = load i32, i32* %rTPos2802, align 4
  %idxprom2803 = sext i32 %1952 to i64
  %arrayidx2804 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom2803
  %1953 = load i32, i32* %arrayidx2804, align 4
  %1954 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2805 = getelementptr inbounds %struct.DState, %struct.DState* %1954, i32 0, i32 5
  store i32 %1953, i32* %rNToGo2805, align 4
  %1955 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2806 = getelementptr inbounds %struct.DState, %struct.DState* %1955, i32 0, i32 6
  %1956 = load i32, i32* %rTPos2806, align 4
  %inc2807 = add nsw i32 %1956, 1
  store i32 %inc2807, i32* %rTPos2806, align 4
  %1957 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2808 = getelementptr inbounds %struct.DState, %struct.DState* %1957, i32 0, i32 6
  %1958 = load i32, i32* %rTPos2808, align 4
  %cmp2809 = icmp eq i32 %1958, 512
  br i1 %cmp2809, label %if.then.2811, label %if.end.2813

if.then.2811:                                     ; preds = %if.then.2801
  %1959 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2812 = getelementptr inbounds %struct.DState, %struct.DState* %1959, i32 0, i32 6
  store i32 0, i32* %rTPos2812, align 4
  br label %if.end.2813

if.end.2813:                                      ; preds = %if.then.2811, %if.then.2801
  br label %if.end.2814

if.end.2814:                                      ; preds = %if.end.2813, %if.then.2773
  %1960 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2815 = getelementptr inbounds %struct.DState, %struct.DState* %1960, i32 0, i32 5
  %1961 = load i32, i32* %rNToGo2815, align 4
  %dec2816 = add nsw i32 %1961, -1
  store i32 %dec2816, i32* %rNToGo2815, align 4
  %1962 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2817 = getelementptr inbounds %struct.DState, %struct.DState* %1962, i32 0, i32 5
  %1963 = load i32, i32* %rNToGo2817, align 4
  %cmp2818 = icmp eq i32 %1963, 1
  %cond = select i1 %cmp2818, i32 1, i32 0
  %1964 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02820 = getelementptr inbounds %struct.DState, %struct.DState* %1964, i32 0, i32 15
  %1965 = load i32, i32* %k02820, align 4
  %xor = xor i32 %1965, %cond
  store i32 %xor, i32* %k02820, align 4
  br label %if.end.2848

if.else.2821:                                     ; preds = %do.end.2769
  %1966 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2822 = getelementptr inbounds %struct.DState, %struct.DState* %1966, i32 0, i32 14
  %1967 = load i32, i32* %tPos2822, align 4
  %1968 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2823 = getelementptr inbounds %struct.DState, %struct.DState* %1968, i32 0, i32 18
  %arraydecay2824 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2823, i32 0, i32 0
  %call2825 = call i32 @BZ2_indexIntoF(i32 %1967, i32* %arraydecay2824)
  %1969 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02826 = getelementptr inbounds %struct.DState, %struct.DState* %1969, i32 0, i32 15
  store i32 %call2825, i32* %k02826, align 4
  %1970 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2827 = getelementptr inbounds %struct.DState, %struct.DState* %1970, i32 0, i32 14
  %1971 = load i32, i32* %tPos2827, align 4
  %idxprom2828 = zext i32 %1971 to i64
  %1972 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162829 = getelementptr inbounds %struct.DState, %struct.DState* %1972, i32 0, i32 21
  %1973 = load i16*, i16** %ll162829, align 8
  %arrayidx2830 = getelementptr inbounds i16, i16* %1973, i64 %idxprom2828
  %1974 = load i16, i16* %arrayidx2830, align 2
  %conv2831 = zext i16 %1974 to i32
  %1975 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2832 = getelementptr inbounds %struct.DState, %struct.DState* %1975, i32 0, i32 14
  %1976 = load i32, i32* %tPos2832, align 4
  %shr2833 = lshr i32 %1976, 1
  %idxprom2834 = zext i32 %shr2833 to i64
  %1977 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42835 = getelementptr inbounds %struct.DState, %struct.DState* %1977, i32 0, i32 22
  %1978 = load i8*, i8** %ll42835, align 8
  %arrayidx2836 = getelementptr inbounds i8, i8* %1978, i64 %idxprom2834
  %1979 = load i8, i8* %arrayidx2836, align 1
  %conv2837 = zext i8 %1979 to i32
  %1980 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2838 = getelementptr inbounds %struct.DState, %struct.DState* %1980, i32 0, i32 14
  %1981 = load i32, i32* %tPos2838, align 4
  %shl2839 = shl i32 %1981, 2
  %and2840 = and i32 %shl2839, 4
  %shr2841 = lshr i32 %conv2837, %and2840
  %and2842 = and i32 %shr2841, 15
  %shl2843 = shl i32 %and2842, 16
  %or2844 = or i32 %conv2831, %shl2843
  %1982 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2845 = getelementptr inbounds %struct.DState, %struct.DState* %1982, i32 0, i32 14
  store i32 %or2844, i32* %tPos2845, align 4
  %1983 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2846 = getelementptr inbounds %struct.DState, %struct.DState* %1983, i32 0, i32 17
  %1984 = load i32, i32* %nblock_used2846, align 4
  %inc2847 = add nsw i32 %1984, 1
  store i32 %inc2847, i32* %nblock_used2846, align 4
  br label %if.end.2848

if.end.2848:                                      ; preds = %if.else.2821, %if.end.2814
  br label %if.end.2941

if.else.2849:                                     ; preds = %if.end.2615
  store i32 0, i32* %i, align 4
  br label %for.cond.2850

for.cond.2850:                                    ; preds = %for.inc.2871, %if.else.2849
  %1985 = load i32, i32* %i, align 4
  %1986 = load i32, i32* %nblock, align 4
  %cmp2851 = icmp slt i32 %1985, %1986
  br i1 %cmp2851, label %for.body.2853, label %for.end.2873

for.body.2853:                                    ; preds = %for.cond.2850
  %1987 = load i32, i32* %i, align 4
  %idxprom2854 = sext i32 %1987 to i64
  %1988 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2855 = getelementptr inbounds %struct.DState, %struct.DState* %1988, i32 0, i32 20
  %1989 = load i32*, i32** %tt2855, align 8
  %arrayidx2856 = getelementptr inbounds i32, i32* %1989, i64 %idxprom2854
  %1990 = load i32, i32* %arrayidx2856, align 4
  %and2857 = and i32 %1990, 255
  %conv2858 = trunc i32 %and2857 to i8
  store i8 %conv2858, i8* %uc, align 1
  %1991 = load i32, i32* %i, align 4
  %shl2859 = shl i32 %1991, 8
  %1992 = load i8, i8* %uc, align 1
  %idxprom2860 = zext i8 %1992 to i64
  %1993 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2861 = getelementptr inbounds %struct.DState, %struct.DState* %1993, i32 0, i32 18
  %arrayidx2862 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2861, i32 0, i64 %idxprom2860
  %1994 = load i32, i32* %arrayidx2862, align 4
  %idxprom2863 = sext i32 %1994 to i64
  %1995 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2864 = getelementptr inbounds %struct.DState, %struct.DState* %1995, i32 0, i32 20
  %1996 = load i32*, i32** %tt2864, align 8
  %arrayidx2865 = getelementptr inbounds i32, i32* %1996, i64 %idxprom2863
  %1997 = load i32, i32* %arrayidx2865, align 4
  %or2866 = or i32 %1997, %shl2859
  store i32 %or2866, i32* %arrayidx2865, align 4
  %1998 = load i8, i8* %uc, align 1
  %idxprom2867 = zext i8 %1998 to i64
  %1999 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2868 = getelementptr inbounds %struct.DState, %struct.DState* %1999, i32 0, i32 18
  %arrayidx2869 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2868, i32 0, i64 %idxprom2867
  %2000 = load i32, i32* %arrayidx2869, align 4
  %inc2870 = add nsw i32 %2000, 1
  store i32 %inc2870, i32* %arrayidx2869, align 4
  br label %for.inc.2871

for.inc.2871:                                     ; preds = %for.body.2853
  %2001 = load i32, i32* %i, align 4
  %inc2872 = add nsw i32 %2001, 1
  store i32 %inc2872, i32* %i, align 4
  br label %for.cond.2850

for.end.2873:                                     ; preds = %for.cond.2850
  %2002 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2874 = getelementptr inbounds %struct.DState, %struct.DState* %2002, i32 0, i32 13
  %2003 = load i32, i32* %origPtr2874, align 4
  %idxprom2875 = sext i32 %2003 to i64
  %2004 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2876 = getelementptr inbounds %struct.DState, %struct.DState* %2004, i32 0, i32 20
  %2005 = load i32*, i32** %tt2876, align 8
  %arrayidx2877 = getelementptr inbounds i32, i32* %2005, i64 %idxprom2875
  %2006 = load i32, i32* %arrayidx2877, align 4
  %shr2878 = lshr i32 %2006, 8
  %2007 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2879 = getelementptr inbounds %struct.DState, %struct.DState* %2007, i32 0, i32 14
  store i32 %shr2878, i32* %tPos2879, align 4
  %2008 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2880 = getelementptr inbounds %struct.DState, %struct.DState* %2008, i32 0, i32 17
  store i32 0, i32* %nblock_used2880, align 4
  %2009 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised2881 = getelementptr inbounds %struct.DState, %struct.DState* %2009, i32 0, i32 4
  %2010 = load i8, i8* %blockRandomised2881, align 1
  %tobool2882 = icmp ne i8 %2010, 0
  br i1 %tobool2882, label %if.then.2883, label %if.else.2925

if.then.2883:                                     ; preds = %for.end.2873
  %2011 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2884 = getelementptr inbounds %struct.DState, %struct.DState* %2011, i32 0, i32 5
  store i32 0, i32* %rNToGo2884, align 4
  %2012 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2885 = getelementptr inbounds %struct.DState, %struct.DState* %2012, i32 0, i32 6
  store i32 0, i32* %rTPos2885, align 4
  %2013 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2886 = getelementptr inbounds %struct.DState, %struct.DState* %2013, i32 0, i32 14
  %2014 = load i32, i32* %tPos2886, align 4
  %idxprom2887 = zext i32 %2014 to i64
  %2015 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2888 = getelementptr inbounds %struct.DState, %struct.DState* %2015, i32 0, i32 20
  %2016 = load i32*, i32** %tt2888, align 8
  %arrayidx2889 = getelementptr inbounds i32, i32* %2016, i64 %idxprom2887
  %2017 = load i32, i32* %arrayidx2889, align 4
  %2018 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2890 = getelementptr inbounds %struct.DState, %struct.DState* %2018, i32 0, i32 14
  store i32 %2017, i32* %tPos2890, align 4
  %2019 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2891 = getelementptr inbounds %struct.DState, %struct.DState* %2019, i32 0, i32 14
  %2020 = load i32, i32* %tPos2891, align 4
  %and2892 = and i32 %2020, 255
  %conv2893 = trunc i32 %and2892 to i8
  %conv2894 = zext i8 %conv2893 to i32
  %2021 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02895 = getelementptr inbounds %struct.DState, %struct.DState* %2021, i32 0, i32 15
  store i32 %conv2894, i32* %k02895, align 4
  %2022 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2896 = getelementptr inbounds %struct.DState, %struct.DState* %2022, i32 0, i32 14
  %2023 = load i32, i32* %tPos2896, align 4
  %shr2897 = lshr i32 %2023, 8
  store i32 %shr2897, i32* %tPos2896, align 4
  %2024 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2898 = getelementptr inbounds %struct.DState, %struct.DState* %2024, i32 0, i32 17
  %2025 = load i32, i32* %nblock_used2898, align 4
  %inc2899 = add nsw i32 %2025, 1
  store i32 %inc2899, i32* %nblock_used2898, align 4
  %2026 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2900 = getelementptr inbounds %struct.DState, %struct.DState* %2026, i32 0, i32 5
  %2027 = load i32, i32* %rNToGo2900, align 4
  %cmp2901 = icmp eq i32 %2027, 0
  br i1 %cmp2901, label %if.then.2903, label %if.end.2916

if.then.2903:                                     ; preds = %if.then.2883
  %2028 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2904 = getelementptr inbounds %struct.DState, %struct.DState* %2028, i32 0, i32 6
  %2029 = load i32, i32* %rTPos2904, align 4
  %idxprom2905 = sext i32 %2029 to i64
  %arrayidx2906 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i32 0, i64 %idxprom2905
  %2030 = load i32, i32* %arrayidx2906, align 4
  %2031 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2907 = getelementptr inbounds %struct.DState, %struct.DState* %2031, i32 0, i32 5
  store i32 %2030, i32* %rNToGo2907, align 4
  %2032 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2908 = getelementptr inbounds %struct.DState, %struct.DState* %2032, i32 0, i32 6
  %2033 = load i32, i32* %rTPos2908, align 4
  %inc2909 = add nsw i32 %2033, 1
  store i32 %inc2909, i32* %rTPos2908, align 4
  %2034 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2910 = getelementptr inbounds %struct.DState, %struct.DState* %2034, i32 0, i32 6
  %2035 = load i32, i32* %rTPos2910, align 4
  %cmp2911 = icmp eq i32 %2035, 512
  br i1 %cmp2911, label %if.then.2913, label %if.end.2915

if.then.2913:                                     ; preds = %if.then.2903
  %2036 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2914 = getelementptr inbounds %struct.DState, %struct.DState* %2036, i32 0, i32 6
  store i32 0, i32* %rTPos2914, align 4
  br label %if.end.2915

if.end.2915:                                      ; preds = %if.then.2913, %if.then.2903
  br label %if.end.2916

if.end.2916:                                      ; preds = %if.end.2915, %if.then.2883
  %2037 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2917 = getelementptr inbounds %struct.DState, %struct.DState* %2037, i32 0, i32 5
  %2038 = load i32, i32* %rNToGo2917, align 4
  %dec2918 = add nsw i32 %2038, -1
  store i32 %dec2918, i32* %rNToGo2917, align 4
  %2039 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2919 = getelementptr inbounds %struct.DState, %struct.DState* %2039, i32 0, i32 5
  %2040 = load i32, i32* %rNToGo2919, align 4
  %cmp2920 = icmp eq i32 %2040, 1
  %cond2922 = select i1 %cmp2920, i32 1, i32 0
  %2041 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02923 = getelementptr inbounds %struct.DState, %struct.DState* %2041, i32 0, i32 15
  %2042 = load i32, i32* %k02923, align 4
  %xor2924 = xor i32 %2042, %cond2922
  store i32 %xor2924, i32* %k02923, align 4
  br label %if.end.2940

if.else.2925:                                     ; preds = %for.end.2873
  %2043 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2926 = getelementptr inbounds %struct.DState, %struct.DState* %2043, i32 0, i32 14
  %2044 = load i32, i32* %tPos2926, align 4
  %idxprom2927 = zext i32 %2044 to i64
  %2045 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2928 = getelementptr inbounds %struct.DState, %struct.DState* %2045, i32 0, i32 20
  %2046 = load i32*, i32** %tt2928, align 8
  %arrayidx2929 = getelementptr inbounds i32, i32* %2046, i64 %idxprom2927
  %2047 = load i32, i32* %arrayidx2929, align 4
  %2048 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2930 = getelementptr inbounds %struct.DState, %struct.DState* %2048, i32 0, i32 14
  store i32 %2047, i32* %tPos2930, align 4
  %2049 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2931 = getelementptr inbounds %struct.DState, %struct.DState* %2049, i32 0, i32 14
  %2050 = load i32, i32* %tPos2931, align 4
  %and2932 = and i32 %2050, 255
  %conv2933 = trunc i32 %and2932 to i8
  %conv2934 = zext i8 %conv2933 to i32
  %2051 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02935 = getelementptr inbounds %struct.DState, %struct.DState* %2051, i32 0, i32 15
  store i32 %conv2934, i32* %k02935, align 4
  %2052 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2936 = getelementptr inbounds %struct.DState, %struct.DState* %2052, i32 0, i32 14
  %2053 = load i32, i32* %tPos2936, align 4
  %shr2937 = lshr i32 %2053, 8
  store i32 %shr2937, i32* %tPos2936, align 4
  %2054 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2938 = getelementptr inbounds %struct.DState, %struct.DState* %2054, i32 0, i32 17
  %2055 = load i32, i32* %nblock_used2938, align 4
  %inc2939 = add nsw i32 %2055, 1
  store i32 %inc2939, i32* %nblock_used2938, align 4
  br label %if.end.2940

if.end.2940:                                      ; preds = %if.else.2925, %if.end.2916
  br label %if.end.2941

if.end.2941:                                      ; preds = %if.end.2940, %if.end.2848
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then.326
  br label %sw.bb.2942

sw.bb.2942:                                       ; preds = %if.end, %endhdr_2
  %2056 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2943 = getelementptr inbounds %struct.DState, %struct.DState* %2056, i32 0, i32 1
  store i32 42, i32* %state2943, align 4
  br label %while.body.2945

while.body.2945:                                  ; preds = %sw.bb.2942, %if.end.2993
  %2057 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2946 = getelementptr inbounds %struct.DState, %struct.DState* %2057, i32 0, i32 8
  %2058 = load i32, i32* %bsLive2946, align 4
  %cmp2947 = icmp sge i32 %2058, 8
  br i1 %cmp2947, label %if.then.2949, label %if.end.2960

if.then.2949:                                     ; preds = %while.body.2945
  %2059 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2952 = getelementptr inbounds %struct.DState, %struct.DState* %2059, i32 0, i32 7
  %2060 = load i32, i32* %bsBuff2952, align 4
  %2061 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2953 = getelementptr inbounds %struct.DState, %struct.DState* %2061, i32 0, i32 8
  %2062 = load i32, i32* %bsLive2953, align 4
  %sub2954 = sub nsw i32 %2062, 8
  %shr2955 = lshr i32 %2060, %sub2954
  %and2956 = and i32 %shr2955, 255
  store i32 %and2956, i32* %v2951, align 4
  %2063 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2957 = getelementptr inbounds %struct.DState, %struct.DState* %2063, i32 0, i32 8
  %2064 = load i32, i32* %bsLive2957, align 4
  %sub2958 = sub nsw i32 %2064, 8
  store i32 %sub2958, i32* %bsLive2957, align 4
  %2065 = load i32, i32* %v2951, align 4
  %conv2959 = trunc i32 %2065 to i8
  store i8 %conv2959, i8* %uc, align 1
  br label %while.end.2994

if.end.2960:                                      ; preds = %while.body.2945
  %2066 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2961 = getelementptr inbounds %struct.DState, %struct.DState* %2066, i32 0, i32 0
  %2067 = load %struct.bz_stream*, %struct.bz_stream** %strm2961, align 8
  %avail_in2962 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2067, i32 0, i32 1
  %2068 = load i32, i32* %avail_in2962, align 4
  %cmp2963 = icmp eq i32 %2068, 0
  br i1 %cmp2963, label %if.then.2965, label %if.end.2966

if.then.2965:                                     ; preds = %if.end.2960
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2966:                                      ; preds = %if.end.2960
  %2069 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2967 = getelementptr inbounds %struct.DState, %struct.DState* %2069, i32 0, i32 7
  %2070 = load i32, i32* %bsBuff2967, align 4
  %shl2968 = shl i32 %2070, 8
  %2071 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2969 = getelementptr inbounds %struct.DState, %struct.DState* %2071, i32 0, i32 0
  %2072 = load %struct.bz_stream*, %struct.bz_stream** %strm2969, align 8
  %next_in2970 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2072, i32 0, i32 0
  %2073 = load i8*, i8** %next_in2970, align 8
  %2074 = load i8, i8* %2073, align 1
  %conv2971 = zext i8 %2074 to i32
  %or2972 = or i32 %shl2968, %conv2971
  %2075 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2973 = getelementptr inbounds %struct.DState, %struct.DState* %2075, i32 0, i32 7
  store i32 %or2972, i32* %bsBuff2973, align 4
  %2076 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2974 = getelementptr inbounds %struct.DState, %struct.DState* %2076, i32 0, i32 8
  %2077 = load i32, i32* %bsLive2974, align 4
  %add2975 = add nsw i32 %2077, 8
  store i32 %add2975, i32* %bsLive2974, align 4
  %2078 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2976 = getelementptr inbounds %struct.DState, %struct.DState* %2078, i32 0, i32 0
  %2079 = load %struct.bz_stream*, %struct.bz_stream** %strm2976, align 8
  %next_in2977 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2079, i32 0, i32 0
  %2080 = load i8*, i8** %next_in2977, align 8
  %incdec.ptr2978 = getelementptr inbounds i8, i8* %2080, i32 1
  store i8* %incdec.ptr2978, i8** %next_in2977, align 8
  %2081 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2979 = getelementptr inbounds %struct.DState, %struct.DState* %2081, i32 0, i32 0
  %2082 = load %struct.bz_stream*, %struct.bz_stream** %strm2979, align 8
  %avail_in2980 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2082, i32 0, i32 1
  %2083 = load i32, i32* %avail_in2980, align 4
  %dec2981 = add i32 %2083, -1
  store i32 %dec2981, i32* %avail_in2980, align 4
  %2084 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2982 = getelementptr inbounds %struct.DState, %struct.DState* %2084, i32 0, i32 0
  %2085 = load %struct.bz_stream*, %struct.bz_stream** %strm2982, align 8
  %total_in_lo322983 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2085, i32 0, i32 2
  %2086 = load i32, i32* %total_in_lo322983, align 4
  %inc2984 = add i32 %2086, 1
  store i32 %inc2984, i32* %total_in_lo322983, align 4
  %2087 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2985 = getelementptr inbounds %struct.DState, %struct.DState* %2087, i32 0, i32 0
  %2088 = load %struct.bz_stream*, %struct.bz_stream** %strm2985, align 8
  %total_in_lo322986 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2088, i32 0, i32 2
  %2089 = load i32, i32* %total_in_lo322986, align 4
  %cmp2987 = icmp eq i32 %2089, 0
  br i1 %cmp2987, label %if.then.2989, label %if.end.2993

if.then.2989:                                     ; preds = %if.end.2966
  %2090 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2990 = getelementptr inbounds %struct.DState, %struct.DState* %2090, i32 0, i32 0
  %2091 = load %struct.bz_stream*, %struct.bz_stream** %strm2990, align 8
  %total_in_hi322991 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2091, i32 0, i32 3
  %2092 = load i32, i32* %total_in_hi322991, align 4
  %inc2992 = add i32 %2092, 1
  store i32 %inc2992, i32* %total_in_hi322991, align 4
  br label %if.end.2993

if.end.2993:                                      ; preds = %if.then.2989, %if.end.2966
  br label %while.body.2945

while.end.2994:                                   ; preds = %if.then.2949
  %2093 = load i8, i8* %uc, align 1
  %conv2995 = zext i8 %2093 to i32
  %cmp2996 = icmp ne i32 %conv2995, 114
  br i1 %cmp2996, label %if.then.2998, label %if.end.2999

if.then.2998:                                     ; preds = %while.end.2994
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.2999:                                      ; preds = %while.end.2994
  br label %sw.bb.3000

sw.bb.3000:                                       ; preds = %if.end, %if.end.2999
  %2094 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3001 = getelementptr inbounds %struct.DState, %struct.DState* %2094, i32 0, i32 1
  store i32 43, i32* %state3001, align 4
  br label %while.body.3003

while.body.3003:                                  ; preds = %sw.bb.3000, %if.end.3051
  %2095 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3004 = getelementptr inbounds %struct.DState, %struct.DState* %2095, i32 0, i32 8
  %2096 = load i32, i32* %bsLive3004, align 4
  %cmp3005 = icmp sge i32 %2096, 8
  br i1 %cmp3005, label %if.then.3007, label %if.end.3018

if.then.3007:                                     ; preds = %while.body.3003
  %2097 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3010 = getelementptr inbounds %struct.DState, %struct.DState* %2097, i32 0, i32 7
  %2098 = load i32, i32* %bsBuff3010, align 4
  %2099 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3011 = getelementptr inbounds %struct.DState, %struct.DState* %2099, i32 0, i32 8
  %2100 = load i32, i32* %bsLive3011, align 4
  %sub3012 = sub nsw i32 %2100, 8
  %shr3013 = lshr i32 %2098, %sub3012
  %and3014 = and i32 %shr3013, 255
  store i32 %and3014, i32* %v3009, align 4
  %2101 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3015 = getelementptr inbounds %struct.DState, %struct.DState* %2101, i32 0, i32 8
  %2102 = load i32, i32* %bsLive3015, align 4
  %sub3016 = sub nsw i32 %2102, 8
  store i32 %sub3016, i32* %bsLive3015, align 4
  %2103 = load i32, i32* %v3009, align 4
  %conv3017 = trunc i32 %2103 to i8
  store i8 %conv3017, i8* %uc, align 1
  br label %while.end.3052

if.end.3018:                                      ; preds = %while.body.3003
  %2104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3019 = getelementptr inbounds %struct.DState, %struct.DState* %2104, i32 0, i32 0
  %2105 = load %struct.bz_stream*, %struct.bz_stream** %strm3019, align 8
  %avail_in3020 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2105, i32 0, i32 1
  %2106 = load i32, i32* %avail_in3020, align 4
  %cmp3021 = icmp eq i32 %2106, 0
  br i1 %cmp3021, label %if.then.3023, label %if.end.3024

if.then.3023:                                     ; preds = %if.end.3018
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3024:                                      ; preds = %if.end.3018
  %2107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3025 = getelementptr inbounds %struct.DState, %struct.DState* %2107, i32 0, i32 7
  %2108 = load i32, i32* %bsBuff3025, align 4
  %shl3026 = shl i32 %2108, 8
  %2109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3027 = getelementptr inbounds %struct.DState, %struct.DState* %2109, i32 0, i32 0
  %2110 = load %struct.bz_stream*, %struct.bz_stream** %strm3027, align 8
  %next_in3028 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2110, i32 0, i32 0
  %2111 = load i8*, i8** %next_in3028, align 8
  %2112 = load i8, i8* %2111, align 1
  %conv3029 = zext i8 %2112 to i32
  %or3030 = or i32 %shl3026, %conv3029
  %2113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3031 = getelementptr inbounds %struct.DState, %struct.DState* %2113, i32 0, i32 7
  store i32 %or3030, i32* %bsBuff3031, align 4
  %2114 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3032 = getelementptr inbounds %struct.DState, %struct.DState* %2114, i32 0, i32 8
  %2115 = load i32, i32* %bsLive3032, align 4
  %add3033 = add nsw i32 %2115, 8
  store i32 %add3033, i32* %bsLive3032, align 4
  %2116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3034 = getelementptr inbounds %struct.DState, %struct.DState* %2116, i32 0, i32 0
  %2117 = load %struct.bz_stream*, %struct.bz_stream** %strm3034, align 8
  %next_in3035 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2117, i32 0, i32 0
  %2118 = load i8*, i8** %next_in3035, align 8
  %incdec.ptr3036 = getelementptr inbounds i8, i8* %2118, i32 1
  store i8* %incdec.ptr3036, i8** %next_in3035, align 8
  %2119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3037 = getelementptr inbounds %struct.DState, %struct.DState* %2119, i32 0, i32 0
  %2120 = load %struct.bz_stream*, %struct.bz_stream** %strm3037, align 8
  %avail_in3038 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2120, i32 0, i32 1
  %2121 = load i32, i32* %avail_in3038, align 4
  %dec3039 = add i32 %2121, -1
  store i32 %dec3039, i32* %avail_in3038, align 4
  %2122 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3040 = getelementptr inbounds %struct.DState, %struct.DState* %2122, i32 0, i32 0
  %2123 = load %struct.bz_stream*, %struct.bz_stream** %strm3040, align 8
  %total_in_lo323041 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2123, i32 0, i32 2
  %2124 = load i32, i32* %total_in_lo323041, align 4
  %inc3042 = add i32 %2124, 1
  store i32 %inc3042, i32* %total_in_lo323041, align 4
  %2125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3043 = getelementptr inbounds %struct.DState, %struct.DState* %2125, i32 0, i32 0
  %2126 = load %struct.bz_stream*, %struct.bz_stream** %strm3043, align 8
  %total_in_lo323044 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2126, i32 0, i32 2
  %2127 = load i32, i32* %total_in_lo323044, align 4
  %cmp3045 = icmp eq i32 %2127, 0
  br i1 %cmp3045, label %if.then.3047, label %if.end.3051

if.then.3047:                                     ; preds = %if.end.3024
  %2128 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3048 = getelementptr inbounds %struct.DState, %struct.DState* %2128, i32 0, i32 0
  %2129 = load %struct.bz_stream*, %struct.bz_stream** %strm3048, align 8
  %total_in_hi323049 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2129, i32 0, i32 3
  %2130 = load i32, i32* %total_in_hi323049, align 4
  %inc3050 = add i32 %2130, 1
  store i32 %inc3050, i32* %total_in_hi323049, align 4
  br label %if.end.3051

if.end.3051:                                      ; preds = %if.then.3047, %if.end.3024
  br label %while.body.3003

while.end.3052:                                   ; preds = %if.then.3007
  %2131 = load i8, i8* %uc, align 1
  %conv3053 = zext i8 %2131 to i32
  %cmp3054 = icmp ne i32 %conv3053, 69
  br i1 %cmp3054, label %if.then.3056, label %if.end.3057

if.then.3056:                                     ; preds = %while.end.3052
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3057:                                      ; preds = %while.end.3052
  br label %sw.bb.3058

sw.bb.3058:                                       ; preds = %if.end, %if.end.3057
  %2132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3059 = getelementptr inbounds %struct.DState, %struct.DState* %2132, i32 0, i32 1
  store i32 44, i32* %state3059, align 4
  br label %while.body.3061

while.body.3061:                                  ; preds = %sw.bb.3058, %if.end.3109
  %2133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3062 = getelementptr inbounds %struct.DState, %struct.DState* %2133, i32 0, i32 8
  %2134 = load i32, i32* %bsLive3062, align 4
  %cmp3063 = icmp sge i32 %2134, 8
  br i1 %cmp3063, label %if.then.3065, label %if.end.3076

if.then.3065:                                     ; preds = %while.body.3061
  %2135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3068 = getelementptr inbounds %struct.DState, %struct.DState* %2135, i32 0, i32 7
  %2136 = load i32, i32* %bsBuff3068, align 4
  %2137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3069 = getelementptr inbounds %struct.DState, %struct.DState* %2137, i32 0, i32 8
  %2138 = load i32, i32* %bsLive3069, align 4
  %sub3070 = sub nsw i32 %2138, 8
  %shr3071 = lshr i32 %2136, %sub3070
  %and3072 = and i32 %shr3071, 255
  store i32 %and3072, i32* %v3067, align 4
  %2139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3073 = getelementptr inbounds %struct.DState, %struct.DState* %2139, i32 0, i32 8
  %2140 = load i32, i32* %bsLive3073, align 4
  %sub3074 = sub nsw i32 %2140, 8
  store i32 %sub3074, i32* %bsLive3073, align 4
  %2141 = load i32, i32* %v3067, align 4
  %conv3075 = trunc i32 %2141 to i8
  store i8 %conv3075, i8* %uc, align 1
  br label %while.end.3110

if.end.3076:                                      ; preds = %while.body.3061
  %2142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3077 = getelementptr inbounds %struct.DState, %struct.DState* %2142, i32 0, i32 0
  %2143 = load %struct.bz_stream*, %struct.bz_stream** %strm3077, align 8
  %avail_in3078 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2143, i32 0, i32 1
  %2144 = load i32, i32* %avail_in3078, align 4
  %cmp3079 = icmp eq i32 %2144, 0
  br i1 %cmp3079, label %if.then.3081, label %if.end.3082

if.then.3081:                                     ; preds = %if.end.3076
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3082:                                      ; preds = %if.end.3076
  %2145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3083 = getelementptr inbounds %struct.DState, %struct.DState* %2145, i32 0, i32 7
  %2146 = load i32, i32* %bsBuff3083, align 4
  %shl3084 = shl i32 %2146, 8
  %2147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3085 = getelementptr inbounds %struct.DState, %struct.DState* %2147, i32 0, i32 0
  %2148 = load %struct.bz_stream*, %struct.bz_stream** %strm3085, align 8
  %next_in3086 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2148, i32 0, i32 0
  %2149 = load i8*, i8** %next_in3086, align 8
  %2150 = load i8, i8* %2149, align 1
  %conv3087 = zext i8 %2150 to i32
  %or3088 = or i32 %shl3084, %conv3087
  %2151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3089 = getelementptr inbounds %struct.DState, %struct.DState* %2151, i32 0, i32 7
  store i32 %or3088, i32* %bsBuff3089, align 4
  %2152 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3090 = getelementptr inbounds %struct.DState, %struct.DState* %2152, i32 0, i32 8
  %2153 = load i32, i32* %bsLive3090, align 4
  %add3091 = add nsw i32 %2153, 8
  store i32 %add3091, i32* %bsLive3090, align 4
  %2154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3092 = getelementptr inbounds %struct.DState, %struct.DState* %2154, i32 0, i32 0
  %2155 = load %struct.bz_stream*, %struct.bz_stream** %strm3092, align 8
  %next_in3093 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2155, i32 0, i32 0
  %2156 = load i8*, i8** %next_in3093, align 8
  %incdec.ptr3094 = getelementptr inbounds i8, i8* %2156, i32 1
  store i8* %incdec.ptr3094, i8** %next_in3093, align 8
  %2157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3095 = getelementptr inbounds %struct.DState, %struct.DState* %2157, i32 0, i32 0
  %2158 = load %struct.bz_stream*, %struct.bz_stream** %strm3095, align 8
  %avail_in3096 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2158, i32 0, i32 1
  %2159 = load i32, i32* %avail_in3096, align 4
  %dec3097 = add i32 %2159, -1
  store i32 %dec3097, i32* %avail_in3096, align 4
  %2160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3098 = getelementptr inbounds %struct.DState, %struct.DState* %2160, i32 0, i32 0
  %2161 = load %struct.bz_stream*, %struct.bz_stream** %strm3098, align 8
  %total_in_lo323099 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2161, i32 0, i32 2
  %2162 = load i32, i32* %total_in_lo323099, align 4
  %inc3100 = add i32 %2162, 1
  store i32 %inc3100, i32* %total_in_lo323099, align 4
  %2163 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3101 = getelementptr inbounds %struct.DState, %struct.DState* %2163, i32 0, i32 0
  %2164 = load %struct.bz_stream*, %struct.bz_stream** %strm3101, align 8
  %total_in_lo323102 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2164, i32 0, i32 2
  %2165 = load i32, i32* %total_in_lo323102, align 4
  %cmp3103 = icmp eq i32 %2165, 0
  br i1 %cmp3103, label %if.then.3105, label %if.end.3109

if.then.3105:                                     ; preds = %if.end.3082
  %2166 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3106 = getelementptr inbounds %struct.DState, %struct.DState* %2166, i32 0, i32 0
  %2167 = load %struct.bz_stream*, %struct.bz_stream** %strm3106, align 8
  %total_in_hi323107 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2167, i32 0, i32 3
  %2168 = load i32, i32* %total_in_hi323107, align 4
  %inc3108 = add i32 %2168, 1
  store i32 %inc3108, i32* %total_in_hi323107, align 4
  br label %if.end.3109

if.end.3109:                                      ; preds = %if.then.3105, %if.end.3082
  br label %while.body.3061

while.end.3110:                                   ; preds = %if.then.3065
  %2169 = load i8, i8* %uc, align 1
  %conv3111 = zext i8 %2169 to i32
  %cmp3112 = icmp ne i32 %conv3111, 56
  br i1 %cmp3112, label %if.then.3114, label %if.end.3115

if.then.3114:                                     ; preds = %while.end.3110
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3115:                                      ; preds = %while.end.3110
  br label %sw.bb.3116

sw.bb.3116:                                       ; preds = %if.end, %if.end.3115
  %2170 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3117 = getelementptr inbounds %struct.DState, %struct.DState* %2170, i32 0, i32 1
  store i32 45, i32* %state3117, align 4
  br label %while.body.3119

while.body.3119:                                  ; preds = %sw.bb.3116, %if.end.3167
  %2171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3120 = getelementptr inbounds %struct.DState, %struct.DState* %2171, i32 0, i32 8
  %2172 = load i32, i32* %bsLive3120, align 4
  %cmp3121 = icmp sge i32 %2172, 8
  br i1 %cmp3121, label %if.then.3123, label %if.end.3134

if.then.3123:                                     ; preds = %while.body.3119
  %2173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3126 = getelementptr inbounds %struct.DState, %struct.DState* %2173, i32 0, i32 7
  %2174 = load i32, i32* %bsBuff3126, align 4
  %2175 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3127 = getelementptr inbounds %struct.DState, %struct.DState* %2175, i32 0, i32 8
  %2176 = load i32, i32* %bsLive3127, align 4
  %sub3128 = sub nsw i32 %2176, 8
  %shr3129 = lshr i32 %2174, %sub3128
  %and3130 = and i32 %shr3129, 255
  store i32 %and3130, i32* %v3125, align 4
  %2177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3131 = getelementptr inbounds %struct.DState, %struct.DState* %2177, i32 0, i32 8
  %2178 = load i32, i32* %bsLive3131, align 4
  %sub3132 = sub nsw i32 %2178, 8
  store i32 %sub3132, i32* %bsLive3131, align 4
  %2179 = load i32, i32* %v3125, align 4
  %conv3133 = trunc i32 %2179 to i8
  store i8 %conv3133, i8* %uc, align 1
  br label %while.end.3168

if.end.3134:                                      ; preds = %while.body.3119
  %2180 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3135 = getelementptr inbounds %struct.DState, %struct.DState* %2180, i32 0, i32 0
  %2181 = load %struct.bz_stream*, %struct.bz_stream** %strm3135, align 8
  %avail_in3136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2181, i32 0, i32 1
  %2182 = load i32, i32* %avail_in3136, align 4
  %cmp3137 = icmp eq i32 %2182, 0
  br i1 %cmp3137, label %if.then.3139, label %if.end.3140

if.then.3139:                                     ; preds = %if.end.3134
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3140:                                      ; preds = %if.end.3134
  %2183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3141 = getelementptr inbounds %struct.DState, %struct.DState* %2183, i32 0, i32 7
  %2184 = load i32, i32* %bsBuff3141, align 4
  %shl3142 = shl i32 %2184, 8
  %2185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3143 = getelementptr inbounds %struct.DState, %struct.DState* %2185, i32 0, i32 0
  %2186 = load %struct.bz_stream*, %struct.bz_stream** %strm3143, align 8
  %next_in3144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2186, i32 0, i32 0
  %2187 = load i8*, i8** %next_in3144, align 8
  %2188 = load i8, i8* %2187, align 1
  %conv3145 = zext i8 %2188 to i32
  %or3146 = or i32 %shl3142, %conv3145
  %2189 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3147 = getelementptr inbounds %struct.DState, %struct.DState* %2189, i32 0, i32 7
  store i32 %or3146, i32* %bsBuff3147, align 4
  %2190 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3148 = getelementptr inbounds %struct.DState, %struct.DState* %2190, i32 0, i32 8
  %2191 = load i32, i32* %bsLive3148, align 4
  %add3149 = add nsw i32 %2191, 8
  store i32 %add3149, i32* %bsLive3148, align 4
  %2192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3150 = getelementptr inbounds %struct.DState, %struct.DState* %2192, i32 0, i32 0
  %2193 = load %struct.bz_stream*, %struct.bz_stream** %strm3150, align 8
  %next_in3151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2193, i32 0, i32 0
  %2194 = load i8*, i8** %next_in3151, align 8
  %incdec.ptr3152 = getelementptr inbounds i8, i8* %2194, i32 1
  store i8* %incdec.ptr3152, i8** %next_in3151, align 8
  %2195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3153 = getelementptr inbounds %struct.DState, %struct.DState* %2195, i32 0, i32 0
  %2196 = load %struct.bz_stream*, %struct.bz_stream** %strm3153, align 8
  %avail_in3154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2196, i32 0, i32 1
  %2197 = load i32, i32* %avail_in3154, align 4
  %dec3155 = add i32 %2197, -1
  store i32 %dec3155, i32* %avail_in3154, align 4
  %2198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3156 = getelementptr inbounds %struct.DState, %struct.DState* %2198, i32 0, i32 0
  %2199 = load %struct.bz_stream*, %struct.bz_stream** %strm3156, align 8
  %total_in_lo323157 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2199, i32 0, i32 2
  %2200 = load i32, i32* %total_in_lo323157, align 4
  %inc3158 = add i32 %2200, 1
  store i32 %inc3158, i32* %total_in_lo323157, align 4
  %2201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3159 = getelementptr inbounds %struct.DState, %struct.DState* %2201, i32 0, i32 0
  %2202 = load %struct.bz_stream*, %struct.bz_stream** %strm3159, align 8
  %total_in_lo323160 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2202, i32 0, i32 2
  %2203 = load i32, i32* %total_in_lo323160, align 4
  %cmp3161 = icmp eq i32 %2203, 0
  br i1 %cmp3161, label %if.then.3163, label %if.end.3167

if.then.3163:                                     ; preds = %if.end.3140
  %2204 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3164 = getelementptr inbounds %struct.DState, %struct.DState* %2204, i32 0, i32 0
  %2205 = load %struct.bz_stream*, %struct.bz_stream** %strm3164, align 8
  %total_in_hi323165 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2205, i32 0, i32 3
  %2206 = load i32, i32* %total_in_hi323165, align 4
  %inc3166 = add i32 %2206, 1
  store i32 %inc3166, i32* %total_in_hi323165, align 4
  br label %if.end.3167

if.end.3167:                                      ; preds = %if.then.3163, %if.end.3140
  br label %while.body.3119

while.end.3168:                                   ; preds = %if.then.3123
  %2207 = load i8, i8* %uc, align 1
  %conv3169 = zext i8 %2207 to i32
  %cmp3170 = icmp ne i32 %conv3169, 80
  br i1 %cmp3170, label %if.then.3172, label %if.end.3173

if.then.3172:                                     ; preds = %while.end.3168
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3173:                                      ; preds = %while.end.3168
  br label %sw.bb.3174

sw.bb.3174:                                       ; preds = %if.end, %if.end.3173
  %2208 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3175 = getelementptr inbounds %struct.DState, %struct.DState* %2208, i32 0, i32 1
  store i32 46, i32* %state3175, align 4
  br label %while.body.3177

while.body.3177:                                  ; preds = %sw.bb.3174, %if.end.3225
  %2209 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3178 = getelementptr inbounds %struct.DState, %struct.DState* %2209, i32 0, i32 8
  %2210 = load i32, i32* %bsLive3178, align 4
  %cmp3179 = icmp sge i32 %2210, 8
  br i1 %cmp3179, label %if.then.3181, label %if.end.3192

if.then.3181:                                     ; preds = %while.body.3177
  %2211 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3184 = getelementptr inbounds %struct.DState, %struct.DState* %2211, i32 0, i32 7
  %2212 = load i32, i32* %bsBuff3184, align 4
  %2213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3185 = getelementptr inbounds %struct.DState, %struct.DState* %2213, i32 0, i32 8
  %2214 = load i32, i32* %bsLive3185, align 4
  %sub3186 = sub nsw i32 %2214, 8
  %shr3187 = lshr i32 %2212, %sub3186
  %and3188 = and i32 %shr3187, 255
  store i32 %and3188, i32* %v3183, align 4
  %2215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3189 = getelementptr inbounds %struct.DState, %struct.DState* %2215, i32 0, i32 8
  %2216 = load i32, i32* %bsLive3189, align 4
  %sub3190 = sub nsw i32 %2216, 8
  store i32 %sub3190, i32* %bsLive3189, align 4
  %2217 = load i32, i32* %v3183, align 4
  %conv3191 = trunc i32 %2217 to i8
  store i8 %conv3191, i8* %uc, align 1
  br label %while.end.3226

if.end.3192:                                      ; preds = %while.body.3177
  %2218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3193 = getelementptr inbounds %struct.DState, %struct.DState* %2218, i32 0, i32 0
  %2219 = load %struct.bz_stream*, %struct.bz_stream** %strm3193, align 8
  %avail_in3194 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2219, i32 0, i32 1
  %2220 = load i32, i32* %avail_in3194, align 4
  %cmp3195 = icmp eq i32 %2220, 0
  br i1 %cmp3195, label %if.then.3197, label %if.end.3198

if.then.3197:                                     ; preds = %if.end.3192
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3198:                                      ; preds = %if.end.3192
  %2221 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3199 = getelementptr inbounds %struct.DState, %struct.DState* %2221, i32 0, i32 7
  %2222 = load i32, i32* %bsBuff3199, align 4
  %shl3200 = shl i32 %2222, 8
  %2223 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3201 = getelementptr inbounds %struct.DState, %struct.DState* %2223, i32 0, i32 0
  %2224 = load %struct.bz_stream*, %struct.bz_stream** %strm3201, align 8
  %next_in3202 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2224, i32 0, i32 0
  %2225 = load i8*, i8** %next_in3202, align 8
  %2226 = load i8, i8* %2225, align 1
  %conv3203 = zext i8 %2226 to i32
  %or3204 = or i32 %shl3200, %conv3203
  %2227 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3205 = getelementptr inbounds %struct.DState, %struct.DState* %2227, i32 0, i32 7
  store i32 %or3204, i32* %bsBuff3205, align 4
  %2228 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3206 = getelementptr inbounds %struct.DState, %struct.DState* %2228, i32 0, i32 8
  %2229 = load i32, i32* %bsLive3206, align 4
  %add3207 = add nsw i32 %2229, 8
  store i32 %add3207, i32* %bsLive3206, align 4
  %2230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3208 = getelementptr inbounds %struct.DState, %struct.DState* %2230, i32 0, i32 0
  %2231 = load %struct.bz_stream*, %struct.bz_stream** %strm3208, align 8
  %next_in3209 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2231, i32 0, i32 0
  %2232 = load i8*, i8** %next_in3209, align 8
  %incdec.ptr3210 = getelementptr inbounds i8, i8* %2232, i32 1
  store i8* %incdec.ptr3210, i8** %next_in3209, align 8
  %2233 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3211 = getelementptr inbounds %struct.DState, %struct.DState* %2233, i32 0, i32 0
  %2234 = load %struct.bz_stream*, %struct.bz_stream** %strm3211, align 8
  %avail_in3212 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2234, i32 0, i32 1
  %2235 = load i32, i32* %avail_in3212, align 4
  %dec3213 = add i32 %2235, -1
  store i32 %dec3213, i32* %avail_in3212, align 4
  %2236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3214 = getelementptr inbounds %struct.DState, %struct.DState* %2236, i32 0, i32 0
  %2237 = load %struct.bz_stream*, %struct.bz_stream** %strm3214, align 8
  %total_in_lo323215 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2237, i32 0, i32 2
  %2238 = load i32, i32* %total_in_lo323215, align 4
  %inc3216 = add i32 %2238, 1
  store i32 %inc3216, i32* %total_in_lo323215, align 4
  %2239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3217 = getelementptr inbounds %struct.DState, %struct.DState* %2239, i32 0, i32 0
  %2240 = load %struct.bz_stream*, %struct.bz_stream** %strm3217, align 8
  %total_in_lo323218 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2240, i32 0, i32 2
  %2241 = load i32, i32* %total_in_lo323218, align 4
  %cmp3219 = icmp eq i32 %2241, 0
  br i1 %cmp3219, label %if.then.3221, label %if.end.3225

if.then.3221:                                     ; preds = %if.end.3198
  %2242 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3222 = getelementptr inbounds %struct.DState, %struct.DState* %2242, i32 0, i32 0
  %2243 = load %struct.bz_stream*, %struct.bz_stream** %strm3222, align 8
  %total_in_hi323223 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2243, i32 0, i32 3
  %2244 = load i32, i32* %total_in_hi323223, align 4
  %inc3224 = add i32 %2244, 1
  store i32 %inc3224, i32* %total_in_hi323223, align 4
  br label %if.end.3225

if.end.3225:                                      ; preds = %if.then.3221, %if.end.3198
  br label %while.body.3177

while.end.3226:                                   ; preds = %if.then.3181
  %2245 = load i8, i8* %uc, align 1
  %conv3227 = zext i8 %2245 to i32
  %cmp3228 = icmp ne i32 %conv3227, 144
  br i1 %cmp3228, label %if.then.3230, label %if.end.3231

if.then.3230:                                     ; preds = %while.end.3226
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3231:                                      ; preds = %while.end.3226
  %2246 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %2246, i32 0, i32 24
  store i32 0, i32* %storedCombinedCRC, align 4
  br label %sw.bb.3232

sw.bb.3232:                                       ; preds = %if.end, %if.end.3231
  %2247 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3233 = getelementptr inbounds %struct.DState, %struct.DState* %2247, i32 0, i32 1
  store i32 47, i32* %state3233, align 4
  br label %while.body.3235

while.body.3235:                                  ; preds = %sw.bb.3232, %if.end.3283
  %2248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3236 = getelementptr inbounds %struct.DState, %struct.DState* %2248, i32 0, i32 8
  %2249 = load i32, i32* %bsLive3236, align 4
  %cmp3237 = icmp sge i32 %2249, 8
  br i1 %cmp3237, label %if.then.3239, label %if.end.3250

if.then.3239:                                     ; preds = %while.body.3235
  %2250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3242 = getelementptr inbounds %struct.DState, %struct.DState* %2250, i32 0, i32 7
  %2251 = load i32, i32* %bsBuff3242, align 4
  %2252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3243 = getelementptr inbounds %struct.DState, %struct.DState* %2252, i32 0, i32 8
  %2253 = load i32, i32* %bsLive3243, align 4
  %sub3244 = sub nsw i32 %2253, 8
  %shr3245 = lshr i32 %2251, %sub3244
  %and3246 = and i32 %shr3245, 255
  store i32 %and3246, i32* %v3241, align 4
  %2254 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3247 = getelementptr inbounds %struct.DState, %struct.DState* %2254, i32 0, i32 8
  %2255 = load i32, i32* %bsLive3247, align 4
  %sub3248 = sub nsw i32 %2255, 8
  store i32 %sub3248, i32* %bsLive3247, align 4
  %2256 = load i32, i32* %v3241, align 4
  %conv3249 = trunc i32 %2256 to i8
  store i8 %conv3249, i8* %uc, align 1
  br label %while.end.3284

if.end.3250:                                      ; preds = %while.body.3235
  %2257 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3251 = getelementptr inbounds %struct.DState, %struct.DState* %2257, i32 0, i32 0
  %2258 = load %struct.bz_stream*, %struct.bz_stream** %strm3251, align 8
  %avail_in3252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2258, i32 0, i32 1
  %2259 = load i32, i32* %avail_in3252, align 4
  %cmp3253 = icmp eq i32 %2259, 0
  br i1 %cmp3253, label %if.then.3255, label %if.end.3256

if.then.3255:                                     ; preds = %if.end.3250
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3256:                                      ; preds = %if.end.3250
  %2260 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3257 = getelementptr inbounds %struct.DState, %struct.DState* %2260, i32 0, i32 7
  %2261 = load i32, i32* %bsBuff3257, align 4
  %shl3258 = shl i32 %2261, 8
  %2262 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3259 = getelementptr inbounds %struct.DState, %struct.DState* %2262, i32 0, i32 0
  %2263 = load %struct.bz_stream*, %struct.bz_stream** %strm3259, align 8
  %next_in3260 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2263, i32 0, i32 0
  %2264 = load i8*, i8** %next_in3260, align 8
  %2265 = load i8, i8* %2264, align 1
  %conv3261 = zext i8 %2265 to i32
  %or3262 = or i32 %shl3258, %conv3261
  %2266 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3263 = getelementptr inbounds %struct.DState, %struct.DState* %2266, i32 0, i32 7
  store i32 %or3262, i32* %bsBuff3263, align 4
  %2267 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3264 = getelementptr inbounds %struct.DState, %struct.DState* %2267, i32 0, i32 8
  %2268 = load i32, i32* %bsLive3264, align 4
  %add3265 = add nsw i32 %2268, 8
  store i32 %add3265, i32* %bsLive3264, align 4
  %2269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3266 = getelementptr inbounds %struct.DState, %struct.DState* %2269, i32 0, i32 0
  %2270 = load %struct.bz_stream*, %struct.bz_stream** %strm3266, align 8
  %next_in3267 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2270, i32 0, i32 0
  %2271 = load i8*, i8** %next_in3267, align 8
  %incdec.ptr3268 = getelementptr inbounds i8, i8* %2271, i32 1
  store i8* %incdec.ptr3268, i8** %next_in3267, align 8
  %2272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3269 = getelementptr inbounds %struct.DState, %struct.DState* %2272, i32 0, i32 0
  %2273 = load %struct.bz_stream*, %struct.bz_stream** %strm3269, align 8
  %avail_in3270 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2273, i32 0, i32 1
  %2274 = load i32, i32* %avail_in3270, align 4
  %dec3271 = add i32 %2274, -1
  store i32 %dec3271, i32* %avail_in3270, align 4
  %2275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3272 = getelementptr inbounds %struct.DState, %struct.DState* %2275, i32 0, i32 0
  %2276 = load %struct.bz_stream*, %struct.bz_stream** %strm3272, align 8
  %total_in_lo323273 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2276, i32 0, i32 2
  %2277 = load i32, i32* %total_in_lo323273, align 4
  %inc3274 = add i32 %2277, 1
  store i32 %inc3274, i32* %total_in_lo323273, align 4
  %2278 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3275 = getelementptr inbounds %struct.DState, %struct.DState* %2278, i32 0, i32 0
  %2279 = load %struct.bz_stream*, %struct.bz_stream** %strm3275, align 8
  %total_in_lo323276 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2279, i32 0, i32 2
  %2280 = load i32, i32* %total_in_lo323276, align 4
  %cmp3277 = icmp eq i32 %2280, 0
  br i1 %cmp3277, label %if.then.3279, label %if.end.3283

if.then.3279:                                     ; preds = %if.end.3256
  %2281 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3280 = getelementptr inbounds %struct.DState, %struct.DState* %2281, i32 0, i32 0
  %2282 = load %struct.bz_stream*, %struct.bz_stream** %strm3280, align 8
  %total_in_hi323281 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2282, i32 0, i32 3
  %2283 = load i32, i32* %total_in_hi323281, align 4
  %inc3282 = add i32 %2283, 1
  store i32 %inc3282, i32* %total_in_hi323281, align 4
  br label %if.end.3283

if.end.3283:                                      ; preds = %if.then.3279, %if.end.3256
  br label %while.body.3235

while.end.3284:                                   ; preds = %if.then.3239
  %2284 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3285 = getelementptr inbounds %struct.DState, %struct.DState* %2284, i32 0, i32 24
  %2285 = load i32, i32* %storedCombinedCRC3285, align 4
  %shl3286 = shl i32 %2285, 8
  %2286 = load i8, i8* %uc, align 1
  %conv3287 = zext i8 %2286 to i32
  %or3288 = or i32 %shl3286, %conv3287
  %2287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3289 = getelementptr inbounds %struct.DState, %struct.DState* %2287, i32 0, i32 24
  store i32 %or3288, i32* %storedCombinedCRC3289, align 4
  br label %sw.bb.3290

sw.bb.3290:                                       ; preds = %if.end, %while.end.3284
  %2288 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3291 = getelementptr inbounds %struct.DState, %struct.DState* %2288, i32 0, i32 1
  store i32 48, i32* %state3291, align 4
  br label %while.body.3293

while.body.3293:                                  ; preds = %sw.bb.3290, %if.end.3341
  %2289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3294 = getelementptr inbounds %struct.DState, %struct.DState* %2289, i32 0, i32 8
  %2290 = load i32, i32* %bsLive3294, align 4
  %cmp3295 = icmp sge i32 %2290, 8
  br i1 %cmp3295, label %if.then.3297, label %if.end.3308

if.then.3297:                                     ; preds = %while.body.3293
  %2291 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3300 = getelementptr inbounds %struct.DState, %struct.DState* %2291, i32 0, i32 7
  %2292 = load i32, i32* %bsBuff3300, align 4
  %2293 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3301 = getelementptr inbounds %struct.DState, %struct.DState* %2293, i32 0, i32 8
  %2294 = load i32, i32* %bsLive3301, align 4
  %sub3302 = sub nsw i32 %2294, 8
  %shr3303 = lshr i32 %2292, %sub3302
  %and3304 = and i32 %shr3303, 255
  store i32 %and3304, i32* %v3299, align 4
  %2295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3305 = getelementptr inbounds %struct.DState, %struct.DState* %2295, i32 0, i32 8
  %2296 = load i32, i32* %bsLive3305, align 4
  %sub3306 = sub nsw i32 %2296, 8
  store i32 %sub3306, i32* %bsLive3305, align 4
  %2297 = load i32, i32* %v3299, align 4
  %conv3307 = trunc i32 %2297 to i8
  store i8 %conv3307, i8* %uc, align 1
  br label %while.end.3342

if.end.3308:                                      ; preds = %while.body.3293
  %2298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3309 = getelementptr inbounds %struct.DState, %struct.DState* %2298, i32 0, i32 0
  %2299 = load %struct.bz_stream*, %struct.bz_stream** %strm3309, align 8
  %avail_in3310 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2299, i32 0, i32 1
  %2300 = load i32, i32* %avail_in3310, align 4
  %cmp3311 = icmp eq i32 %2300, 0
  br i1 %cmp3311, label %if.then.3313, label %if.end.3314

if.then.3313:                                     ; preds = %if.end.3308
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3314:                                      ; preds = %if.end.3308
  %2301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3315 = getelementptr inbounds %struct.DState, %struct.DState* %2301, i32 0, i32 7
  %2302 = load i32, i32* %bsBuff3315, align 4
  %shl3316 = shl i32 %2302, 8
  %2303 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3317 = getelementptr inbounds %struct.DState, %struct.DState* %2303, i32 0, i32 0
  %2304 = load %struct.bz_stream*, %struct.bz_stream** %strm3317, align 8
  %next_in3318 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2304, i32 0, i32 0
  %2305 = load i8*, i8** %next_in3318, align 8
  %2306 = load i8, i8* %2305, align 1
  %conv3319 = zext i8 %2306 to i32
  %or3320 = or i32 %shl3316, %conv3319
  %2307 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3321 = getelementptr inbounds %struct.DState, %struct.DState* %2307, i32 0, i32 7
  store i32 %or3320, i32* %bsBuff3321, align 4
  %2308 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3322 = getelementptr inbounds %struct.DState, %struct.DState* %2308, i32 0, i32 8
  %2309 = load i32, i32* %bsLive3322, align 4
  %add3323 = add nsw i32 %2309, 8
  store i32 %add3323, i32* %bsLive3322, align 4
  %2310 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3324 = getelementptr inbounds %struct.DState, %struct.DState* %2310, i32 0, i32 0
  %2311 = load %struct.bz_stream*, %struct.bz_stream** %strm3324, align 8
  %next_in3325 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2311, i32 0, i32 0
  %2312 = load i8*, i8** %next_in3325, align 8
  %incdec.ptr3326 = getelementptr inbounds i8, i8* %2312, i32 1
  store i8* %incdec.ptr3326, i8** %next_in3325, align 8
  %2313 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3327 = getelementptr inbounds %struct.DState, %struct.DState* %2313, i32 0, i32 0
  %2314 = load %struct.bz_stream*, %struct.bz_stream** %strm3327, align 8
  %avail_in3328 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2314, i32 0, i32 1
  %2315 = load i32, i32* %avail_in3328, align 4
  %dec3329 = add i32 %2315, -1
  store i32 %dec3329, i32* %avail_in3328, align 4
  %2316 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3330 = getelementptr inbounds %struct.DState, %struct.DState* %2316, i32 0, i32 0
  %2317 = load %struct.bz_stream*, %struct.bz_stream** %strm3330, align 8
  %total_in_lo323331 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2317, i32 0, i32 2
  %2318 = load i32, i32* %total_in_lo323331, align 4
  %inc3332 = add i32 %2318, 1
  store i32 %inc3332, i32* %total_in_lo323331, align 4
  %2319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3333 = getelementptr inbounds %struct.DState, %struct.DState* %2319, i32 0, i32 0
  %2320 = load %struct.bz_stream*, %struct.bz_stream** %strm3333, align 8
  %total_in_lo323334 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2320, i32 0, i32 2
  %2321 = load i32, i32* %total_in_lo323334, align 4
  %cmp3335 = icmp eq i32 %2321, 0
  br i1 %cmp3335, label %if.then.3337, label %if.end.3341

if.then.3337:                                     ; preds = %if.end.3314
  %2322 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3338 = getelementptr inbounds %struct.DState, %struct.DState* %2322, i32 0, i32 0
  %2323 = load %struct.bz_stream*, %struct.bz_stream** %strm3338, align 8
  %total_in_hi323339 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2323, i32 0, i32 3
  %2324 = load i32, i32* %total_in_hi323339, align 4
  %inc3340 = add i32 %2324, 1
  store i32 %inc3340, i32* %total_in_hi323339, align 4
  br label %if.end.3341

if.end.3341:                                      ; preds = %if.then.3337, %if.end.3314
  br label %while.body.3293

while.end.3342:                                   ; preds = %if.then.3297
  %2325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3343 = getelementptr inbounds %struct.DState, %struct.DState* %2325, i32 0, i32 24
  %2326 = load i32, i32* %storedCombinedCRC3343, align 4
  %shl3344 = shl i32 %2326, 8
  %2327 = load i8, i8* %uc, align 1
  %conv3345 = zext i8 %2327 to i32
  %or3346 = or i32 %shl3344, %conv3345
  %2328 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3347 = getelementptr inbounds %struct.DState, %struct.DState* %2328, i32 0, i32 24
  store i32 %or3346, i32* %storedCombinedCRC3347, align 4
  br label %sw.bb.3348

sw.bb.3348:                                       ; preds = %if.end, %while.end.3342
  %2329 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3349 = getelementptr inbounds %struct.DState, %struct.DState* %2329, i32 0, i32 1
  store i32 49, i32* %state3349, align 4
  br label %while.body.3351

while.body.3351:                                  ; preds = %sw.bb.3348, %if.end.3399
  %2330 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3352 = getelementptr inbounds %struct.DState, %struct.DState* %2330, i32 0, i32 8
  %2331 = load i32, i32* %bsLive3352, align 4
  %cmp3353 = icmp sge i32 %2331, 8
  br i1 %cmp3353, label %if.then.3355, label %if.end.3366

if.then.3355:                                     ; preds = %while.body.3351
  %2332 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3358 = getelementptr inbounds %struct.DState, %struct.DState* %2332, i32 0, i32 7
  %2333 = load i32, i32* %bsBuff3358, align 4
  %2334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3359 = getelementptr inbounds %struct.DState, %struct.DState* %2334, i32 0, i32 8
  %2335 = load i32, i32* %bsLive3359, align 4
  %sub3360 = sub nsw i32 %2335, 8
  %shr3361 = lshr i32 %2333, %sub3360
  %and3362 = and i32 %shr3361, 255
  store i32 %and3362, i32* %v3357, align 4
  %2336 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3363 = getelementptr inbounds %struct.DState, %struct.DState* %2336, i32 0, i32 8
  %2337 = load i32, i32* %bsLive3363, align 4
  %sub3364 = sub nsw i32 %2337, 8
  store i32 %sub3364, i32* %bsLive3363, align 4
  %2338 = load i32, i32* %v3357, align 4
  %conv3365 = trunc i32 %2338 to i8
  store i8 %conv3365, i8* %uc, align 1
  br label %while.end.3400

if.end.3366:                                      ; preds = %while.body.3351
  %2339 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3367 = getelementptr inbounds %struct.DState, %struct.DState* %2339, i32 0, i32 0
  %2340 = load %struct.bz_stream*, %struct.bz_stream** %strm3367, align 8
  %avail_in3368 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2340, i32 0, i32 1
  %2341 = load i32, i32* %avail_in3368, align 4
  %cmp3369 = icmp eq i32 %2341, 0
  br i1 %cmp3369, label %if.then.3371, label %if.end.3372

if.then.3371:                                     ; preds = %if.end.3366
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3372:                                      ; preds = %if.end.3366
  %2342 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3373 = getelementptr inbounds %struct.DState, %struct.DState* %2342, i32 0, i32 7
  %2343 = load i32, i32* %bsBuff3373, align 4
  %shl3374 = shl i32 %2343, 8
  %2344 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3375 = getelementptr inbounds %struct.DState, %struct.DState* %2344, i32 0, i32 0
  %2345 = load %struct.bz_stream*, %struct.bz_stream** %strm3375, align 8
  %next_in3376 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2345, i32 0, i32 0
  %2346 = load i8*, i8** %next_in3376, align 8
  %2347 = load i8, i8* %2346, align 1
  %conv3377 = zext i8 %2347 to i32
  %or3378 = or i32 %shl3374, %conv3377
  %2348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3379 = getelementptr inbounds %struct.DState, %struct.DState* %2348, i32 0, i32 7
  store i32 %or3378, i32* %bsBuff3379, align 4
  %2349 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3380 = getelementptr inbounds %struct.DState, %struct.DState* %2349, i32 0, i32 8
  %2350 = load i32, i32* %bsLive3380, align 4
  %add3381 = add nsw i32 %2350, 8
  store i32 %add3381, i32* %bsLive3380, align 4
  %2351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3382 = getelementptr inbounds %struct.DState, %struct.DState* %2351, i32 0, i32 0
  %2352 = load %struct.bz_stream*, %struct.bz_stream** %strm3382, align 8
  %next_in3383 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2352, i32 0, i32 0
  %2353 = load i8*, i8** %next_in3383, align 8
  %incdec.ptr3384 = getelementptr inbounds i8, i8* %2353, i32 1
  store i8* %incdec.ptr3384, i8** %next_in3383, align 8
  %2354 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3385 = getelementptr inbounds %struct.DState, %struct.DState* %2354, i32 0, i32 0
  %2355 = load %struct.bz_stream*, %struct.bz_stream** %strm3385, align 8
  %avail_in3386 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2355, i32 0, i32 1
  %2356 = load i32, i32* %avail_in3386, align 4
  %dec3387 = add i32 %2356, -1
  store i32 %dec3387, i32* %avail_in3386, align 4
  %2357 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3388 = getelementptr inbounds %struct.DState, %struct.DState* %2357, i32 0, i32 0
  %2358 = load %struct.bz_stream*, %struct.bz_stream** %strm3388, align 8
  %total_in_lo323389 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2358, i32 0, i32 2
  %2359 = load i32, i32* %total_in_lo323389, align 4
  %inc3390 = add i32 %2359, 1
  store i32 %inc3390, i32* %total_in_lo323389, align 4
  %2360 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3391 = getelementptr inbounds %struct.DState, %struct.DState* %2360, i32 0, i32 0
  %2361 = load %struct.bz_stream*, %struct.bz_stream** %strm3391, align 8
  %total_in_lo323392 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2361, i32 0, i32 2
  %2362 = load i32, i32* %total_in_lo323392, align 4
  %cmp3393 = icmp eq i32 %2362, 0
  br i1 %cmp3393, label %if.then.3395, label %if.end.3399

if.then.3395:                                     ; preds = %if.end.3372
  %2363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3396 = getelementptr inbounds %struct.DState, %struct.DState* %2363, i32 0, i32 0
  %2364 = load %struct.bz_stream*, %struct.bz_stream** %strm3396, align 8
  %total_in_hi323397 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2364, i32 0, i32 3
  %2365 = load i32, i32* %total_in_hi323397, align 4
  %inc3398 = add i32 %2365, 1
  store i32 %inc3398, i32* %total_in_hi323397, align 4
  br label %if.end.3399

if.end.3399:                                      ; preds = %if.then.3395, %if.end.3372
  br label %while.body.3351

while.end.3400:                                   ; preds = %if.then.3355
  %2366 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3401 = getelementptr inbounds %struct.DState, %struct.DState* %2366, i32 0, i32 24
  %2367 = load i32, i32* %storedCombinedCRC3401, align 4
  %shl3402 = shl i32 %2367, 8
  %2368 = load i8, i8* %uc, align 1
  %conv3403 = zext i8 %2368 to i32
  %or3404 = or i32 %shl3402, %conv3403
  %2369 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3405 = getelementptr inbounds %struct.DState, %struct.DState* %2369, i32 0, i32 24
  store i32 %or3404, i32* %storedCombinedCRC3405, align 4
  br label %sw.bb.3406

sw.bb.3406:                                       ; preds = %if.end, %while.end.3400
  %2370 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3407 = getelementptr inbounds %struct.DState, %struct.DState* %2370, i32 0, i32 1
  store i32 50, i32* %state3407, align 4
  br label %while.body.3409

while.body.3409:                                  ; preds = %sw.bb.3406, %if.end.3457
  %2371 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3410 = getelementptr inbounds %struct.DState, %struct.DState* %2371, i32 0, i32 8
  %2372 = load i32, i32* %bsLive3410, align 4
  %cmp3411 = icmp sge i32 %2372, 8
  br i1 %cmp3411, label %if.then.3413, label %if.end.3424

if.then.3413:                                     ; preds = %while.body.3409
  %2373 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3416 = getelementptr inbounds %struct.DState, %struct.DState* %2373, i32 0, i32 7
  %2374 = load i32, i32* %bsBuff3416, align 4
  %2375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3417 = getelementptr inbounds %struct.DState, %struct.DState* %2375, i32 0, i32 8
  %2376 = load i32, i32* %bsLive3417, align 4
  %sub3418 = sub nsw i32 %2376, 8
  %shr3419 = lshr i32 %2374, %sub3418
  %and3420 = and i32 %shr3419, 255
  store i32 %and3420, i32* %v3415, align 4
  %2377 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3421 = getelementptr inbounds %struct.DState, %struct.DState* %2377, i32 0, i32 8
  %2378 = load i32, i32* %bsLive3421, align 4
  %sub3422 = sub nsw i32 %2378, 8
  store i32 %sub3422, i32* %bsLive3421, align 4
  %2379 = load i32, i32* %v3415, align 4
  %conv3423 = trunc i32 %2379 to i8
  store i8 %conv3423, i8* %uc, align 1
  br label %while.end.3458

if.end.3424:                                      ; preds = %while.body.3409
  %2380 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3425 = getelementptr inbounds %struct.DState, %struct.DState* %2380, i32 0, i32 0
  %2381 = load %struct.bz_stream*, %struct.bz_stream** %strm3425, align 8
  %avail_in3426 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2381, i32 0, i32 1
  %2382 = load i32, i32* %avail_in3426, align 4
  %cmp3427 = icmp eq i32 %2382, 0
  br i1 %cmp3427, label %if.then.3429, label %if.end.3430

if.then.3429:                                     ; preds = %if.end.3424
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.3430:                                      ; preds = %if.end.3424
  %2383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3431 = getelementptr inbounds %struct.DState, %struct.DState* %2383, i32 0, i32 7
  %2384 = load i32, i32* %bsBuff3431, align 4
  %shl3432 = shl i32 %2384, 8
  %2385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3433 = getelementptr inbounds %struct.DState, %struct.DState* %2385, i32 0, i32 0
  %2386 = load %struct.bz_stream*, %struct.bz_stream** %strm3433, align 8
  %next_in3434 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2386, i32 0, i32 0
  %2387 = load i8*, i8** %next_in3434, align 8
  %2388 = load i8, i8* %2387, align 1
  %conv3435 = zext i8 %2388 to i32
  %or3436 = or i32 %shl3432, %conv3435
  %2389 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3437 = getelementptr inbounds %struct.DState, %struct.DState* %2389, i32 0, i32 7
  store i32 %or3436, i32* %bsBuff3437, align 4
  %2390 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3438 = getelementptr inbounds %struct.DState, %struct.DState* %2390, i32 0, i32 8
  %2391 = load i32, i32* %bsLive3438, align 4
  %add3439 = add nsw i32 %2391, 8
  store i32 %add3439, i32* %bsLive3438, align 4
  %2392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3440 = getelementptr inbounds %struct.DState, %struct.DState* %2392, i32 0, i32 0
  %2393 = load %struct.bz_stream*, %struct.bz_stream** %strm3440, align 8
  %next_in3441 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2393, i32 0, i32 0
  %2394 = load i8*, i8** %next_in3441, align 8
  %incdec.ptr3442 = getelementptr inbounds i8, i8* %2394, i32 1
  store i8* %incdec.ptr3442, i8** %next_in3441, align 8
  %2395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3443 = getelementptr inbounds %struct.DState, %struct.DState* %2395, i32 0, i32 0
  %2396 = load %struct.bz_stream*, %struct.bz_stream** %strm3443, align 8
  %avail_in3444 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2396, i32 0, i32 1
  %2397 = load i32, i32* %avail_in3444, align 4
  %dec3445 = add i32 %2397, -1
  store i32 %dec3445, i32* %avail_in3444, align 4
  %2398 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3446 = getelementptr inbounds %struct.DState, %struct.DState* %2398, i32 0, i32 0
  %2399 = load %struct.bz_stream*, %struct.bz_stream** %strm3446, align 8
  %total_in_lo323447 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2399, i32 0, i32 2
  %2400 = load i32, i32* %total_in_lo323447, align 4
  %inc3448 = add i32 %2400, 1
  store i32 %inc3448, i32* %total_in_lo323447, align 4
  %2401 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3449 = getelementptr inbounds %struct.DState, %struct.DState* %2401, i32 0, i32 0
  %2402 = load %struct.bz_stream*, %struct.bz_stream** %strm3449, align 8
  %total_in_lo323450 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2402, i32 0, i32 2
  %2403 = load i32, i32* %total_in_lo323450, align 4
  %cmp3451 = icmp eq i32 %2403, 0
  br i1 %cmp3451, label %if.then.3453, label %if.end.3457

if.then.3453:                                     ; preds = %if.end.3430
  %2404 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3454 = getelementptr inbounds %struct.DState, %struct.DState* %2404, i32 0, i32 0
  %2405 = load %struct.bz_stream*, %struct.bz_stream** %strm3454, align 8
  %total_in_hi323455 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2405, i32 0, i32 3
  %2406 = load i32, i32* %total_in_hi323455, align 4
  %inc3456 = add i32 %2406, 1
  store i32 %inc3456, i32* %total_in_hi323455, align 4
  br label %if.end.3457

if.end.3457:                                      ; preds = %if.then.3453, %if.end.3430
  br label %while.body.3409

while.end.3458:                                   ; preds = %if.then.3413
  %2407 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3459 = getelementptr inbounds %struct.DState, %struct.DState* %2407, i32 0, i32 24
  %2408 = load i32, i32* %storedCombinedCRC3459, align 4
  %shl3460 = shl i32 %2408, 8
  %2409 = load i8, i8* %uc, align 1
  %conv3461 = zext i8 %2409 to i32
  %or3462 = or i32 %shl3460, %conv3461
  %2410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3463 = getelementptr inbounds %struct.DState, %struct.DState* %2410, i32 0, i32 24
  store i32 %or3462, i32* %storedCombinedCRC3463, align 4
  %2411 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3464 = getelementptr inbounds %struct.DState, %struct.DState* %2411, i32 0, i32 1
  store i32 1, i32* %state3464, align 4
  store i32 4, i32* %retVal, align 4
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 4001)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @BZ2_bz__AssertH__fail(i32 4002)
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.epilog, %while.end.3458, %if.then.3429, %if.then.3371, %if.then.3313, %if.then.3255, %if.then.3230, %if.then.3197, %if.then.3172, %if.then.3139, %if.then.3114, %if.then.3081, %if.then.3056, %if.then.3023, %if.then.2998, %if.then.2965, %if.end.2941, %if.then.2604, %if.then.2557, %if.then.2542, %if.then.2498, %if.then.2467, %if.then.2433, %if.then.2386, %if.then.2177, %if.then.2164, %if.then.2148, %if.then.2116, %if.then.2072, %if.then.2041, %if.then.2007, %if.then.1960, %if.then.1921, %if.then.1877, %if.then.1846, %if.then.1812, %if.then.1765, %if.then.1609, %if.then.1551, %if.then.1526, %if.then.1485, %if.then.1411, %if.then.1373, %if.then.1344, %if.then.1312, %if.then.1290, %if.then.1255, %if.then.1231, %if.then.1182, %if.then.1099, %if.then.1074, %if.then.1066, %if.then.1028, %if.then.972, %if.then.916, %if.then.865, %if.then.809, %if.then.753, %if.then.697, %if.then.641, %if.then.611, %if.then.578, %if.then.555, %if.then.522, %if.then.499, %if.then.466, %if.then.443, %if.then.410, %if.then.387, %if.then.354, %if.then.331, %if.then.293, %if.then.269, %if.then.256, %if.then.230, %if.then.194, %if.then.172, %if.then.139, %if.then.116, %if.then.83, %if.then.60, %if.then.37
  %2412 = load i32, i32* %i, align 4
  %2413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i3465 = getelementptr inbounds %struct.DState, %struct.DState* %2413, i32 0, i32 40
  store i32 %2412, i32* %save_i3465, align 4
  %2414 = load i32, i32* %j, align 4
  %2415 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j3466 = getelementptr inbounds %struct.DState, %struct.DState* %2415, i32 0, i32 41
  store i32 %2414, i32* %save_j3466, align 4
  %2416 = load i32, i32* %t, align 4
  %2417 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t3467 = getelementptr inbounds %struct.DState, %struct.DState* %2417, i32 0, i32 42
  store i32 %2416, i32* %save_t3467, align 4
  %2418 = load i32, i32* %alphaSize, align 4
  %2419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize3468 = getelementptr inbounds %struct.DState, %struct.DState* %2419, i32 0, i32 43
  store i32 %2418, i32* %save_alphaSize3468, align 4
  %2420 = load i32, i32* %nGroups, align 4
  %2421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups3469 = getelementptr inbounds %struct.DState, %struct.DState* %2421, i32 0, i32 44
  store i32 %2420, i32* %save_nGroups3469, align 4
  %2422 = load i32, i32* %nSelectors, align 4
  %2423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors3470 = getelementptr inbounds %struct.DState, %struct.DState* %2423, i32 0, i32 45
  store i32 %2422, i32* %save_nSelectors3470, align 4
  %2424 = load i32, i32* %EOB, align 4
  %2425 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB3471 = getelementptr inbounds %struct.DState, %struct.DState* %2425, i32 0, i32 46
  store i32 %2424, i32* %save_EOB3471, align 4
  %2426 = load i32, i32* %groupNo, align 4
  %2427 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo3472 = getelementptr inbounds %struct.DState, %struct.DState* %2427, i32 0, i32 47
  store i32 %2426, i32* %save_groupNo3472, align 4
  %2428 = load i32, i32* %groupPos, align 4
  %2429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos3473 = getelementptr inbounds %struct.DState, %struct.DState* %2429, i32 0, i32 48
  store i32 %2428, i32* %save_groupPos3473, align 4
  %2430 = load i32, i32* %nextSym, align 4
  %2431 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym3474 = getelementptr inbounds %struct.DState, %struct.DState* %2431, i32 0, i32 49
  store i32 %2430, i32* %save_nextSym3474, align 4
  %2432 = load i32, i32* %nblockMAX, align 4
  %2433 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX3475 = getelementptr inbounds %struct.DState, %struct.DState* %2433, i32 0, i32 50
  store i32 %2432, i32* %save_nblockMAX3475, align 4
  %2434 = load i32, i32* %nblock, align 4
  %2435 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock3476 = getelementptr inbounds %struct.DState, %struct.DState* %2435, i32 0, i32 51
  store i32 %2434, i32* %save_nblock3476, align 4
  %2436 = load i32, i32* %es, align 4
  %2437 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es3477 = getelementptr inbounds %struct.DState, %struct.DState* %2437, i32 0, i32 52
  store i32 %2436, i32* %save_es3477, align 4
  %2438 = load i32, i32* %N, align 4
  %2439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N3478 = getelementptr inbounds %struct.DState, %struct.DState* %2439, i32 0, i32 53
  store i32 %2438, i32* %save_N3478, align 4
  %2440 = load i32, i32* %curr, align 4
  %2441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr3479 = getelementptr inbounds %struct.DState, %struct.DState* %2441, i32 0, i32 54
  store i32 %2440, i32* %save_curr3479, align 4
  %2442 = load i32, i32* %zt, align 4
  %2443 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt3480 = getelementptr inbounds %struct.DState, %struct.DState* %2443, i32 0, i32 55
  store i32 %2442, i32* %save_zt3480, align 4
  %2444 = load i32, i32* %zn, align 4
  %2445 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn3481 = getelementptr inbounds %struct.DState, %struct.DState* %2445, i32 0, i32 56
  store i32 %2444, i32* %save_zn3481, align 4
  %2446 = load i32, i32* %zvec, align 4
  %2447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec3482 = getelementptr inbounds %struct.DState, %struct.DState* %2447, i32 0, i32 57
  store i32 %2446, i32* %save_zvec3482, align 4
  %2448 = load i32, i32* %zj, align 4
  %2449 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj3483 = getelementptr inbounds %struct.DState, %struct.DState* %2449, i32 0, i32 58
  store i32 %2448, i32* %save_zj3483, align 4
  %2450 = load i32, i32* %gSel, align 4
  %2451 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel3484 = getelementptr inbounds %struct.DState, %struct.DState* %2451, i32 0, i32 59
  store i32 %2450, i32* %save_gSel3484, align 4
  %2452 = load i32, i32* %gMinlen, align 4
  %2453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen3485 = getelementptr inbounds %struct.DState, %struct.DState* %2453, i32 0, i32 60
  store i32 %2452, i32* %save_gMinlen3485, align 4
  %2454 = load i32*, i32** %gLimit, align 8
  %2455 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit3486 = getelementptr inbounds %struct.DState, %struct.DState* %2455, i32 0, i32 61
  store i32* %2454, i32** %save_gLimit3486, align 8
  %2456 = load i32*, i32** %gBase, align 8
  %2457 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase3487 = getelementptr inbounds %struct.DState, %struct.DState* %2457, i32 0, i32 62
  store i32* %2456, i32** %save_gBase3487, align 8
  %2458 = load i32*, i32** %gPerm, align 8
  %2459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm3488 = getelementptr inbounds %struct.DState, %struct.DState* %2459, i32 0, i32 63
  store i32* %2458, i32** %save_gPerm3488, align 8
  %2460 = load i32, i32* %retVal, align 4
  ret i32 %2460
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @makeMaps_d(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %i = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 27
  store i32 0, i32* %nInUse, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %3, i32 0, i32 28
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %conv = trunc i32 %5 to i8
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1 = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 27
  %7 = load i32, i32* %nInUse1, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 30
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i32 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse4 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 27
  %10 = load i32, i32* %nInUse4, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nInUse4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #1

declare i32 @BZ2_indexIntoF(i32, i32*) #1

declare void @BZ2_bz__AssertH__fail(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
