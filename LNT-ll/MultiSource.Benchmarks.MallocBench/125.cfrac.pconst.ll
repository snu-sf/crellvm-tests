; ModuleID = './MultiSource.Benchmarks.MallocBench/125.cfrac.pconst.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pzeroConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] zeroinitializer }, align 2
@pzero = global %struct.precisionType* @pzeroConst, align 8
@poneConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] [i16 1] }, align 2
@pone = global %struct.precisionType* @poneConst, align 8
@ptwoConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 0, [1 x i16] [i16 2] }, align 2
@ptwo = global %struct.precisionType* @ptwoConst, align 8
@p_oneConst = internal global %struct.precisionType { i16 1, i16 1, i16 1, i8 1, [1 x i16] [i16 1] }, align 2
@p_one = global %struct.precisionType* @p_oneConst, align 8

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
