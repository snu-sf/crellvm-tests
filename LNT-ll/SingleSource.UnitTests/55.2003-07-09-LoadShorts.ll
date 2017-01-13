; ModuleID = './SingleSource.UnitTests/55.2003-07-09-LoadShorts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ShortsSet_struct = type { i32, i32, i16, i16, i8, i8 }

@.str = private unnamed_addr constant [42 x i8] c"   ui = %u (0x%x)\09\09UL-ui = %lld (0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ui*ui = %u (0x%x)\09  UL/ui = %lld (0x%llx)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"    i = %d (0x%x)\09L-i = %lld (0x%llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" i* i = %d (0x%x)\09L/ i = %lld (0x%llx)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"us    = %u (0x%x)\09\09UL-us = %lld (0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"us*us = %u (0x%x)\09  UL/us = %lld (0x%llx)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" s    = %d (0x%x)\09L-s = %lld (0x%llx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" s* s = %d (0x%x)\09L/ s = %lld (0x%llx)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ub    = %u (0x%x)\09\09UL-ub = %lld (0x%llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"ub*ub = %u (0x%x)\09\09UL/ub = %lld (0x%llx)\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" b    = %d (0x%x)\09\09L-b = %lld (0x%llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c" b* b = %d (0x%x)\09\09\09L/b = %lld (0x%llx)\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @getL() #0 {
entry:
  ret i64 -5787213826675591005
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %UL = alloca i64, align 8
  %L = alloca i64, align 8
  %S = alloca %struct.ShortsSet_struct*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @getL()
  store i64 %call, i64* %UL, align 8
  %0 = load i64, i64* %UL, align 8
  store i64 %0, i64* %L, align 8
  %call1 = call noalias i8* @malloc(i64 16) #3
  %1 = bitcast i8* %call1 to %struct.ShortsSet_struct*
  store %struct.ShortsSet_struct* %1, %struct.ShortsSet_struct** %S, align 8
  %2 = load i64, i64* %UL, align 8
  %conv = trunc i64 %2 to i32
  %3 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %3, i32 0, i32 0
  store i32 %conv, i32* %ui, align 4
  %4 = load i64, i64* %UL, align 8
  %conv2 = trunc i64 %4 to i32
  %5 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %5, i32 0, i32 1
  store i32 %conv2, i32* %i, align 4
  %6 = load i64, i64* %UL, align 8
  %conv3 = trunc i64 %6 to i16
  %7 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %7, i32 0, i32 2
  store i16 %conv3, i16* %us, align 2
  %8 = load i64, i64* %UL, align 8
  %conv4 = trunc i64 %8 to i16
  %9 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %9, i32 0, i32 3
  store i16 %conv4, i16* %s, align 2
  %10 = load i64, i64* %UL, align 8
  %conv5 = trunc i64 %10 to i8
  %11 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %11, i32 0, i32 4
  store i8 %conv5, i8* %ub, align 1
  %12 = load i64, i64* %UL, align 8
  %conv6 = trunc i64 %12 to i8
  %13 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %13, i32 0, i32 5
  store i8 %conv6, i8* %b, align 1
  %14 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui7 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %14, i32 0, i32 0
  %15 = load i32, i32* %ui7, align 4
  %16 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui8 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %16, i32 0, i32 0
  %17 = load i32, i32* %ui8, align 4
  %18 = load i64, i64* %UL, align 8
  %19 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui9 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %19, i32 0, i32 0
  %20 = load i32, i32* %ui9, align 4
  %conv10 = zext i32 %20 to i64
  %sub = sub i64 %18, %conv10
  %21 = load i64, i64* %UL, align 8
  %22 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui11 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %ui11, align 4
  %conv12 = zext i32 %23 to i64
  %sub13 = sub i64 %21, %conv12
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %17, i64 %sub, i64 %sub13)
  %24 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui15 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %24, i32 0, i32 0
  %25 = load i32, i32* %ui15, align 4
  %26 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui16 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %ui16, align 4
  %mul = mul i32 %25, %27
  %28 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui17 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %28, i32 0, i32 0
  %29 = load i32, i32* %ui17, align 4
  %30 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui18 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %ui18, align 4
  %mul19 = mul i32 %29, %31
  %32 = load i64, i64* %UL, align 8
  %33 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui20 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %33, i32 0, i32 0
  %34 = load i32, i32* %ui20, align 4
  %conv21 = zext i32 %34 to i64
  %div = udiv i64 %32, %conv21
  %35 = load i64, i64* %UL, align 8
  %36 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ui22 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %36, i32 0, i32 0
  %37 = load i32, i32* %ui22, align 4
  %conv23 = zext i32 %37 to i64
  %div24 = udiv i64 %35, %conv23
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %mul, i32 %mul19, i64 %div, i64 %div24)
  %38 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i26 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %38, i32 0, i32 1
  %39 = load i32, i32* %i26, align 4
  %40 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i27 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %40, i32 0, i32 1
  %41 = load i32, i32* %i27, align 4
  %42 = load i64, i64* %L, align 8
  %43 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i28 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %43, i32 0, i32 1
  %44 = load i32, i32* %i28, align 4
  %conv29 = sext i32 %44 to i64
  %sub30 = sub nsw i64 %42, %conv29
  %45 = load i64, i64* %L, align 8
  %46 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i31 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %46, i32 0, i32 1
  %47 = load i32, i32* %i31, align 4
  %conv32 = sext i32 %47 to i64
  %sub33 = sub nsw i64 %45, %conv32
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %39, i32 %41, i64 %sub30, i64 %sub33)
  %48 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i35 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %48, i32 0, i32 1
  %49 = load i32, i32* %i35, align 4
  %50 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i36 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %50, i32 0, i32 1
  %51 = load i32, i32* %i36, align 4
  %mul37 = mul nsw i32 %49, %51
  %52 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i38 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %i38, align 4
  %54 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i39 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %54, i32 0, i32 1
  %55 = load i32, i32* %i39, align 4
  %mul40 = mul nsw i32 %53, %55
  %56 = load i64, i64* %L, align 8
  %57 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i41 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %i41, align 4
  %conv42 = sext i32 %58 to i64
  %div43 = sdiv i64 %56, %conv42
  %59 = load i64, i64* %L, align 8
  %60 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %i44 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %60, i32 0, i32 1
  %61 = load i32, i32* %i44, align 4
  %conv45 = sext i32 %61 to i64
  %div46 = sdiv i64 %59, %conv45
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %mul37, i32 %mul40, i64 %div43, i64 %div46)
  %62 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us48 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %62, i32 0, i32 2
  %63 = load i16, i16* %us48, align 2
  %conv49 = zext i16 %63 to i32
  %64 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us50 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %64, i32 0, i32 2
  %65 = load i16, i16* %us50, align 2
  %conv51 = zext i16 %65 to i32
  %66 = load i64, i64* %UL, align 8
  %67 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us52 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %67, i32 0, i32 2
  %68 = load i16, i16* %us52, align 2
  %conv53 = zext i16 %68 to i64
  %sub54 = sub i64 %66, %conv53
  %69 = load i64, i64* %UL, align 8
  %70 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us55 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %70, i32 0, i32 2
  %71 = load i16, i16* %us55, align 2
  %conv56 = zext i16 %71 to i64
  %sub57 = sub i64 %69, %conv56
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %conv49, i32 %conv51, i64 %sub54, i64 %sub57)
  %72 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us59 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %72, i32 0, i32 2
  %73 = load i16, i16* %us59, align 2
  %conv60 = zext i16 %73 to i32
  %74 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us61 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %74, i32 0, i32 2
  %75 = load i16, i16* %us61, align 2
  %conv62 = zext i16 %75 to i32
  %mul63 = mul nsw i32 %conv60, %conv62
  %76 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us64 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %76, i32 0, i32 2
  %77 = load i16, i16* %us64, align 2
  %conv65 = zext i16 %77 to i32
  %78 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us66 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %78, i32 0, i32 2
  %79 = load i16, i16* %us66, align 2
  %conv67 = zext i16 %79 to i32
  %mul68 = mul nsw i32 %conv65, %conv67
  %80 = load i64, i64* %UL, align 8
  %81 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us69 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %81, i32 0, i32 2
  %82 = load i16, i16* %us69, align 2
  %conv70 = zext i16 %82 to i64
  %div71 = udiv i64 %80, %conv70
  %83 = load i64, i64* %UL, align 8
  %84 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %us72 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %84, i32 0, i32 2
  %85 = load i16, i16* %us72, align 2
  %conv73 = zext i16 %85 to i64
  %div74 = udiv i64 %83, %conv73
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 %mul63, i32 %mul68, i64 %div71, i64 %div74)
  %86 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s76 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %86, i32 0, i32 3
  %87 = load i16, i16* %s76, align 2
  %conv77 = sext i16 %87 to i32
  %88 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s78 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %88, i32 0, i32 3
  %89 = load i16, i16* %s78, align 2
  %conv79 = sext i16 %89 to i32
  %90 = load i64, i64* %L, align 8
  %91 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s80 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %91, i32 0, i32 3
  %92 = load i16, i16* %s80, align 2
  %conv81 = sext i16 %92 to i64
  %sub82 = sub nsw i64 %90, %conv81
  %93 = load i64, i64* %L, align 8
  %94 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s83 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %94, i32 0, i32 3
  %95 = load i16, i16* %s83, align 2
  %conv84 = sext i16 %95 to i64
  %sub85 = sub nsw i64 %93, %conv84
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %conv77, i32 %conv79, i64 %sub82, i64 %sub85)
  %96 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s87 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %96, i32 0, i32 3
  %97 = load i16, i16* %s87, align 2
  %conv88 = sext i16 %97 to i32
  %98 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s89 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %98, i32 0, i32 3
  %99 = load i16, i16* %s89, align 2
  %conv90 = sext i16 %99 to i32
  %mul91 = mul nsw i32 %conv88, %conv90
  %100 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s92 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %100, i32 0, i32 3
  %101 = load i16, i16* %s92, align 2
  %conv93 = sext i16 %101 to i32
  %102 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s94 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %102, i32 0, i32 3
  %103 = load i16, i16* %s94, align 2
  %conv95 = sext i16 %103 to i32
  %mul96 = mul nsw i32 %conv93, %conv95
  %104 = load i64, i64* %L, align 8
  %105 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s97 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %105, i32 0, i32 3
  %106 = load i16, i16* %s97, align 2
  %conv98 = sext i16 %106 to i64
  %div99 = sdiv i64 %104, %conv98
  %107 = load i64, i64* %L, align 8
  %108 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %s100 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %108, i32 0, i32 3
  %109 = load i16, i16* %s100, align 2
  %conv101 = sext i16 %109 to i64
  %div102 = sdiv i64 %107, %conv101
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 %mul91, i32 %mul96, i64 %div99, i64 %div102)
  %110 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub104 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %110, i32 0, i32 4
  %111 = load i8, i8* %ub104, align 1
  %conv105 = zext i8 %111 to i32
  %112 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub106 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %112, i32 0, i32 4
  %113 = load i8, i8* %ub106, align 1
  %conv107 = zext i8 %113 to i32
  %114 = load i64, i64* %UL, align 8
  %115 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub108 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %115, i32 0, i32 4
  %116 = load i8, i8* %ub108, align 1
  %conv109 = zext i8 %116 to i64
  %sub110 = sub i64 %114, %conv109
  %117 = load i64, i64* %UL, align 8
  %118 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub111 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %118, i32 0, i32 4
  %119 = load i8, i8* %ub111, align 1
  %conv112 = zext i8 %119 to i64
  %sub113 = sub i64 %117, %conv112
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %conv105, i32 %conv107, i64 %sub110, i64 %sub113)
  %120 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub115 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %120, i32 0, i32 4
  %121 = load i8, i8* %ub115, align 1
  %conv116 = zext i8 %121 to i32
  %122 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub117 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %122, i32 0, i32 4
  %123 = load i8, i8* %ub117, align 1
  %conv118 = zext i8 %123 to i32
  %mul119 = mul nsw i32 %conv116, %conv118
  %124 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub120 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %124, i32 0, i32 4
  %125 = load i8, i8* %ub120, align 1
  %conv121 = zext i8 %125 to i32
  %126 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub122 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %126, i32 0, i32 4
  %127 = load i8, i8* %ub122, align 1
  %conv123 = zext i8 %127 to i32
  %mul124 = mul nsw i32 %conv121, %conv123
  %128 = load i64, i64* %UL, align 8
  %129 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub125 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %129, i32 0, i32 4
  %130 = load i8, i8* %ub125, align 1
  %conv126 = zext i8 %130 to i64
  %div127 = udiv i64 %128, %conv126
  %131 = load i64, i64* %UL, align 8
  %132 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %ub128 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %132, i32 0, i32 4
  %133 = load i8, i8* %ub128, align 1
  %conv129 = zext i8 %133 to i64
  %div130 = udiv i64 %131, %conv129
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i32 %mul119, i32 %mul124, i64 %div127, i64 %div130)
  %134 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b132 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %134, i32 0, i32 5
  %135 = load i8, i8* %b132, align 1
  %conv133 = sext i8 %135 to i32
  %136 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b134 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %136, i32 0, i32 5
  %137 = load i8, i8* %b134, align 1
  %conv135 = sext i8 %137 to i32
  %138 = load i64, i64* %L, align 8
  %139 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b136 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %139, i32 0, i32 5
  %140 = load i8, i8* %b136, align 1
  %conv137 = sext i8 %140 to i64
  %sub138 = sub nsw i64 %138, %conv137
  %141 = load i64, i64* %L, align 8
  %142 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b139 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %142, i32 0, i32 5
  %143 = load i8, i8* %b139, align 1
  %conv140 = sext i8 %143 to i64
  %sub141 = sub nsw i64 %141, %conv140
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %conv133, i32 %conv135, i64 %sub138, i64 %sub141)
  %144 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b143 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %144, i32 0, i32 5
  %145 = load i8, i8* %b143, align 1
  %conv144 = sext i8 %145 to i32
  %146 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b145 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %146, i32 0, i32 5
  %147 = load i8, i8* %b145, align 1
  %conv146 = sext i8 %147 to i32
  %mul147 = mul nsw i32 %conv144, %conv146
  %148 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b148 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %148, i32 0, i32 5
  %149 = load i8, i8* %b148, align 1
  %conv149 = sext i8 %149 to i32
  %150 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b150 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %150, i32 0, i32 5
  %151 = load i8, i8* %b150, align 1
  %conv151 = sext i8 %151 to i32
  %mul152 = mul nsw i32 %conv149, %conv151
  %152 = load i64, i64* %L, align 8
  %153 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b153 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %153, i32 0, i32 5
  %154 = load i8, i8* %b153, align 1
  %conv154 = sext i8 %154 to i64
  %div155 = sdiv i64 %152, %conv154
  %155 = load i64, i64* %L, align 8
  %156 = load %struct.ShortsSet_struct*, %struct.ShortsSet_struct** %S, align 8
  %b156 = getelementptr inbounds %struct.ShortsSet_struct, %struct.ShortsSet_struct* %156, i32 0, i32 5
  %157 = load i8, i8* %b156, align 1
  %conv157 = sext i8 %157 to i64
  %div158 = sdiv i64 %155, %conv157
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 %mul147, i32 %mul152, i64 %div155, i64 %div158)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
