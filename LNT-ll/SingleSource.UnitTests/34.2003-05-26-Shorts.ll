; ModuleID = './SingleSource.UnitTests/34.2003-05-26-Shorts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"uiprod = %u (0x%x)\09  uidiv = %u (0x%x)\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"usprod = %u (0x%x)\09  usdiv = %u (0x%x)\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"ubprod = %u (0x%x)\09  ubdiv = %u (0x%x)\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c" iprod = %u (0x%x)\09   idiv = %u (0x%x)\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c" sprod = %u (0x%x)\09   sdiv = %u (0x%x)\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" bprod = %u (0x%x)\09   bdiv = %u (0x%x)\0A\0A\00", align 1

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
  %ui = alloca i32, align 4
  %i = alloca i32, align 4
  %us = alloca i16, align 2
  %s = alloca i16, align 2
  %ub = alloca i8, align 1
  %b = alloca i8, align 1
  %uiprod = alloca i32, align 4
  %usprod = alloca i16, align 2
  %ubprod = alloca i8, align 1
  %iprod = alloca i32, align 4
  %sprod = alloca i16, align 2
  %bprod = alloca i8, align 1
  %uidiv = alloca i32, align 4
  %usdiv = alloca i16, align 2
  %ubdiv = alloca i8, align 1
  %idiv = alloca i32, align 4
  %sdiv = alloca i16, align 2
  %bdiv = alloca i8, align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @getL()
  store i64 %call, i64* %UL, align 8
  %0 = load i64, i64* %UL, align 8
  store i64 %0, i64* %L, align 8
  %1 = load i64, i64* %UL, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %ui, align 4
  %2 = load i64, i64* %UL, align 8
  %conv1 = trunc i64 %2 to i32
  store i32 %conv1, i32* %i, align 4
  %3 = load i64, i64* %UL, align 8
  %conv2 = trunc i64 %3 to i16
  store i16 %conv2, i16* %us, align 2
  %4 = load i64, i64* %UL, align 8
  %conv3 = trunc i64 %4 to i16
  store i16 %conv3, i16* %s, align 2
  %5 = load i64, i64* %UL, align 8
  %conv4 = trunc i64 %5 to i8
  store i8 %conv4, i8* %ub, align 1
  %6 = load i64, i64* %UL, align 8
  %conv5 = trunc i64 %6 to i8
  store i8 %conv5, i8* %b, align 1
  %7 = load i32, i32* %ui, align 4
  %8 = load i32, i32* %ui, align 4
  %9 = load i64, i64* %UL, align 8
  %10 = load i32, i32* %ui, align 4
  %conv6 = zext i32 %10 to i64
  %sub = sub i64 %9, %conv6
  %11 = load i64, i64* %UL, align 8
  %12 = load i32, i32* %ui, align 4
  %conv7 = zext i32 %12 to i64
  %sub8 = sub i64 %11, %conv7
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %8, i64 %sub, i64 %sub8)
  %13 = load i32, i32* %ui, align 4
  %14 = load i32, i32* %ui, align 4
  %mul = mul i32 %13, %14
  %15 = load i32, i32* %ui, align 4
  %16 = load i32, i32* %ui, align 4
  %mul10 = mul i32 %15, %16
  %17 = load i64, i64* %UL, align 8
  %18 = load i32, i32* %ui, align 4
  %conv11 = zext i32 %18 to i64
  %div = udiv i64 %17, %conv11
  %19 = load i64, i64* %UL, align 8
  %20 = load i32, i32* %ui, align 4
  %conv12 = zext i32 %20 to i64
  %div13 = udiv i64 %19, %conv12
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i32 %mul, i32 %mul10, i64 %div, i64 %div13)
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i64, i64* %L, align 8
  %24 = load i32, i32* %i, align 4
  %conv15 = sext i32 %24 to i64
  %sub16 = sub nsw i64 %23, %conv15
  %25 = load i64, i64* %L, align 8
  %26 = load i32, i32* %i, align 4
  %conv17 = sext i32 %26 to i64
  %sub18 = sub nsw i64 %25, %conv17
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %21, i32 %22, i64 %sub16, i64 %sub18)
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %27, %28
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 %29, %30
  %31 = load i64, i64* %L, align 8
  %32 = load i32, i32* %i, align 4
  %conv22 = sext i32 %32 to i64
  %div23 = sdiv i64 %31, %conv22
  %33 = load i64, i64* %L, align 8
  %34 = load i32, i32* %i, align 4
  %conv24 = sext i32 %34 to i64
  %div25 = sdiv i64 %33, %conv24
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %mul20, i32 %mul21, i64 %div23, i64 %div25)
  %35 = load i16, i16* %us, align 2
  %conv27 = zext i16 %35 to i32
  %36 = load i16, i16* %us, align 2
  %conv28 = zext i16 %36 to i32
  %37 = load i64, i64* %UL, align 8
  %38 = load i16, i16* %us, align 2
  %conv29 = zext i16 %38 to i64
  %sub30 = sub i64 %37, %conv29
  %39 = load i64, i64* %UL, align 8
  %40 = load i16, i16* %us, align 2
  %conv31 = zext i16 %40 to i64
  %sub32 = sub i64 %39, %conv31
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %conv27, i32 %conv28, i64 %sub30, i64 %sub32)
  %41 = load i16, i16* %us, align 2
  %conv34 = zext i16 %41 to i32
  %42 = load i16, i16* %us, align 2
  %conv35 = zext i16 %42 to i32
  %mul36 = mul nsw i32 %conv34, %conv35
  %43 = load i16, i16* %us, align 2
  %conv37 = zext i16 %43 to i32
  %44 = load i16, i16* %us, align 2
  %conv38 = zext i16 %44 to i32
  %mul39 = mul nsw i32 %conv37, %conv38
  %45 = load i64, i64* %UL, align 8
  %46 = load i16, i16* %us, align 2
  %conv40 = zext i16 %46 to i64
  %div41 = udiv i64 %45, %conv40
  %47 = load i64, i64* %UL, align 8
  %48 = load i16, i16* %us, align 2
  %conv42 = zext i16 %48 to i64
  %div43 = udiv i64 %47, %conv42
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 %mul36, i32 %mul39, i64 %div41, i64 %div43)
  %49 = load i16, i16* %s, align 2
  %conv45 = sext i16 %49 to i32
  %50 = load i16, i16* %s, align 2
  %conv46 = sext i16 %50 to i32
  %51 = load i64, i64* %L, align 8
  %52 = load i16, i16* %s, align 2
  %conv47 = sext i16 %52 to i64
  %sub48 = sub nsw i64 %51, %conv47
  %53 = load i64, i64* %L, align 8
  %54 = load i16, i16* %s, align 2
  %conv49 = sext i16 %54 to i64
  %sub50 = sub nsw i64 %53, %conv49
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %conv45, i32 %conv46, i64 %sub48, i64 %sub50)
  %55 = load i16, i16* %s, align 2
  %conv52 = sext i16 %55 to i32
  %56 = load i16, i16* %s, align 2
  %conv53 = sext i16 %56 to i32
  %mul54 = mul nsw i32 %conv52, %conv53
  %57 = load i16, i16* %s, align 2
  %conv55 = sext i16 %57 to i32
  %58 = load i16, i16* %s, align 2
  %conv56 = sext i16 %58 to i32
  %mul57 = mul nsw i32 %conv55, %conv56
  %59 = load i64, i64* %L, align 8
  %60 = load i16, i16* %s, align 2
  %conv58 = sext i16 %60 to i64
  %div59 = sdiv i64 %59, %conv58
  %61 = load i64, i64* %L, align 8
  %62 = load i16, i16* %s, align 2
  %conv60 = sext i16 %62 to i64
  %div61 = sdiv i64 %61, %conv60
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 %mul54, i32 %mul57, i64 %div59, i64 %div61)
  %63 = load i8, i8* %ub, align 1
  %conv63 = zext i8 %63 to i32
  %64 = load i8, i8* %ub, align 1
  %conv64 = zext i8 %64 to i32
  %65 = load i64, i64* %UL, align 8
  %66 = load i8, i8* %ub, align 1
  %conv65 = zext i8 %66 to i64
  %sub66 = sub i64 %65, %conv65
  %67 = load i64, i64* %UL, align 8
  %68 = load i8, i8* %ub, align 1
  %conv67 = zext i8 %68 to i64
  %sub68 = sub i64 %67, %conv67
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %conv63, i32 %conv64, i64 %sub66, i64 %sub68)
  %69 = load i8, i8* %ub, align 1
  %conv70 = zext i8 %69 to i32
  %70 = load i8, i8* %ub, align 1
  %conv71 = zext i8 %70 to i32
  %mul72 = mul nsw i32 %conv70, %conv71
  %71 = load i8, i8* %ub, align 1
  %conv73 = zext i8 %71 to i32
  %72 = load i8, i8* %ub, align 1
  %conv74 = zext i8 %72 to i32
  %mul75 = mul nsw i32 %conv73, %conv74
  %73 = load i64, i64* %UL, align 8
  %74 = load i8, i8* %ub, align 1
  %conv76 = zext i8 %74 to i64
  %div77 = udiv i64 %73, %conv76
  %75 = load i64, i64* %UL, align 8
  %76 = load i8, i8* %ub, align 1
  %conv78 = zext i8 %76 to i64
  %div79 = udiv i64 %75, %conv78
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i32 %mul72, i32 %mul75, i64 %div77, i64 %div79)
  %77 = load i8, i8* %b, align 1
  %conv81 = sext i8 %77 to i32
  %78 = load i8, i8* %b, align 1
  %conv82 = sext i8 %78 to i32
  %79 = load i64, i64* %L, align 8
  %80 = load i8, i8* %b, align 1
  %conv83 = sext i8 %80 to i64
  %sub84 = sub nsw i64 %79, %conv83
  %81 = load i64, i64* %L, align 8
  %82 = load i8, i8* %b, align 1
  %conv85 = sext i8 %82 to i64
  %sub86 = sub nsw i64 %81, %conv85
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %conv81, i32 %conv82, i64 %sub84, i64 %sub86)
  %83 = load i8, i8* %b, align 1
  %conv88 = sext i8 %83 to i32
  %84 = load i8, i8* %b, align 1
  %conv89 = sext i8 %84 to i32
  %mul90 = mul nsw i32 %conv88, %conv89
  %85 = load i8, i8* %b, align 1
  %conv91 = sext i8 %85 to i32
  %86 = load i8, i8* %b, align 1
  %conv92 = sext i8 %86 to i32
  %mul93 = mul nsw i32 %conv91, %conv92
  %87 = load i64, i64* %L, align 8
  %88 = load i8, i8* %b, align 1
  %conv94 = sext i8 %88 to i64
  %div95 = sdiv i64 %87, %conv94
  %89 = load i64, i64* %L, align 8
  %90 = load i8, i8* %b, align 1
  %conv96 = sext i8 %90 to i64
  %div97 = sdiv i64 %89, %conv96
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 %mul90, i32 %mul93, i64 %div95, i64 %div97)
  %91 = load i32, i32* %ui, align 4
  %add = add i32 %91, 1
  %92 = load i32, i32* %ui, align 4
  %add99 = add i32 %92, 1
  %mul100 = mul i32 %add, %add99
  %93 = load i32, i32* %ui, align 4
  %shl = shl i32 %93, 2
  %sub101 = sub i32 %mul100, %shl
  %sub102 = sub i32 %sub101, 1
  store i32 %sub102, i32* %uiprod, align 4
  %94 = load i16, i16* %us, align 2
  %conv103 = zext i16 %94 to i32
  %add104 = add i32 %conv103, 1
  %95 = load i16, i16* %us, align 2
  %conv105 = zext i16 %95 to i32
  %add106 = add i32 %conv105, 1
  %mul107 = mul i32 %add104, %add106
  %96 = load i16, i16* %us, align 2
  %conv108 = zext i16 %96 to i32
  %shl109 = shl i32 %conv108, 2
  %conv110 = trunc i32 %shl109 to i16
  %conv111 = zext i16 %conv110 to i32
  %sub112 = sub i32 %mul107, %conv111
  %sub113 = sub i32 %sub112, 1
  %conv114 = trunc i32 %sub113 to i16
  store i16 %conv114, i16* %usprod, align 2
  %97 = load i8, i8* %ub, align 1
  %conv115 = zext i8 %97 to i32
  %add116 = add i32 %conv115, 1
  %98 = load i8, i8* %ub, align 1
  %conv117 = zext i8 %98 to i32
  %add118 = add i32 %conv117, 1
  %mul119 = mul i32 %add116, %add118
  %99 = load i8, i8* %ub, align 1
  %conv120 = zext i8 %99 to i32
  %shl121 = shl i32 %conv120, 2
  %conv122 = trunc i32 %shl121 to i8
  %conv123 = zext i8 %conv122 to i32
  %sub124 = sub i32 %mul119, %conv123
  %sub125 = sub i32 %sub124, 1
  %conv126 = trunc i32 %sub125 to i8
  store i8 %conv126, i8* %ubprod, align 1
  %100 = load i32, i32* %i, align 4
  %add127 = add nsw i32 %100, 1
  %101 = load i32, i32* %i, align 4
  %add128 = add nsw i32 %101, 1
  %mul129 = mul nsw i32 %add127, %add128
  %102 = load i32, i32* %i, align 4
  %shl130 = shl i32 %102, 2
  %sub131 = sub nsw i32 %mul129, %shl130
  %sub132 = sub nsw i32 %sub131, 1
  store i32 %sub132, i32* %iprod, align 4
  %103 = load i16, i16* %s, align 2
  %conv133 = sext i16 %103 to i32
  %add134 = add nsw i32 %conv133, 1
  %104 = load i16, i16* %s, align 2
  %conv135 = sext i16 %104 to i32
  %add136 = add nsw i32 %conv135, 1
  %mul137 = mul nsw i32 %add134, %add136
  %105 = load i16, i16* %s, align 2
  %conv138 = sext i16 %105 to i32
  %shl139 = shl i32 %conv138, 2
  %conv140 = trunc i32 %shl139 to i16
  %conv141 = sext i16 %conv140 to i32
  %sub142 = sub nsw i32 %mul137, %conv141
  %sub143 = sub nsw i32 %sub142, 1
  %conv144 = trunc i32 %sub143 to i16
  store i16 %conv144, i16* %sprod, align 2
  %106 = load i8, i8* %b, align 1
  %conv145 = sext i8 %106 to i32
  %add146 = add nsw i32 %conv145, 1
  %107 = load i8, i8* %b, align 1
  %conv147 = sext i8 %107 to i32
  %add148 = add nsw i32 %conv147, 1
  %mul149 = mul nsw i32 %add146, %add148
  %108 = load i8, i8* %b, align 1
  %conv150 = sext i8 %108 to i32
  %shl151 = shl i32 %conv150, 2
  %conv152 = trunc i32 %shl151 to i8
  %conv153 = sext i8 %conv152 to i32
  %sub154 = sub nsw i32 %mul149, %conv153
  %sub155 = sub nsw i32 %sub154, 1
  %conv156 = trunc i32 %sub155 to i8
  store i8 %conv156, i8* %bprod, align 1
  %109 = load i64, i64* %UL, align 8
  %110 = load i32, i32* %ui, align 4
  %conv157 = zext i32 %110 to i64
  %div158 = udiv i64 %109, %conv157
  %conv159 = trunc i64 %div158 to i32
  %111 = load i64, i64* %UL, align 8
  %112 = load i32, i32* %ui, align 4
  %conv160 = zext i32 %112 to i64
  %div161 = udiv i64 %111, %conv160
  %conv162 = trunc i64 %div161 to i32
  %mul163 = mul i32 %conv159, %conv162
  store i32 %mul163, i32* %uidiv, align 4
  %113 = load i64, i64* %UL, align 8
  %114 = load i16, i16* %us, align 2
  %conv164 = zext i16 %114 to i64
  %div165 = udiv i64 %113, %conv164
  %conv166 = trunc i64 %div165 to i16
  %conv167 = zext i16 %conv166 to i32
  %115 = load i64, i64* %UL, align 8
  %116 = load i16, i16* %us, align 2
  %conv168 = zext i16 %116 to i64
  %div169 = udiv i64 %115, %conv168
  %conv170 = trunc i64 %div169 to i16
  %conv171 = zext i16 %conv170 to i32
  %mul172 = mul nsw i32 %conv167, %conv171
  %conv173 = trunc i32 %mul172 to i16
  store i16 %conv173, i16* %usdiv, align 2
  %117 = load i64, i64* %UL, align 8
  %118 = load i8, i8* %ub, align 1
  %conv174 = zext i8 %118 to i64
  %div175 = udiv i64 %117, %conv174
  %conv176 = trunc i64 %div175 to i8
  %conv177 = zext i8 %conv176 to i32
  %119 = load i64, i64* %UL, align 8
  %120 = load i8, i8* %ub, align 1
  %conv178 = zext i8 %120 to i64
  %div179 = udiv i64 %119, %conv178
  %conv180 = trunc i64 %div179 to i8
  %conv181 = zext i8 %conv180 to i32
  %mul182 = mul nsw i32 %conv177, %conv181
  %conv183 = trunc i32 %mul182 to i8
  store i8 %conv183, i8* %ubdiv, align 1
  %121 = load i64, i64* %L, align 8
  %122 = load i32, i32* %i, align 4
  %conv184 = sext i32 %122 to i64
  %div185 = sdiv i64 %121, %conv184
  %conv186 = trunc i64 %div185 to i32
  %123 = load i64, i64* %L, align 8
  %124 = load i32, i32* %i, align 4
  %conv187 = sext i32 %124 to i64
  %div188 = sdiv i64 %123, %conv187
  %conv189 = trunc i64 %div188 to i32
  %mul190 = mul nsw i32 %conv186, %conv189
  store i32 %mul190, i32* %idiv, align 4
  %125 = load i64, i64* %L, align 8
  %126 = load i16, i16* %s, align 2
  %conv191 = sext i16 %126 to i64
  %div192 = sdiv i64 %125, %conv191
  %conv193 = trunc i64 %div192 to i16
  %conv194 = sext i16 %conv193 to i32
  %127 = load i64, i64* %L, align 8
  %128 = load i16, i16* %s, align 2
  %conv195 = sext i16 %128 to i64
  %div196 = sdiv i64 %127, %conv195
  %conv197 = trunc i64 %div196 to i16
  %conv198 = sext i16 %conv197 to i32
  %mul199 = mul nsw i32 %conv194, %conv198
  %conv200 = trunc i32 %mul199 to i16
  store i16 %conv200, i16* %sdiv, align 2
  %129 = load i64, i64* %L, align 8
  %130 = load i8, i8* %b, align 1
  %conv201 = sext i8 %130 to i64
  %div202 = sdiv i64 %129, %conv201
  %conv203 = trunc i64 %div202 to i8
  %conv204 = sext i8 %conv203 to i32
  %131 = load i64, i64* %L, align 8
  %132 = load i8, i8* %b, align 1
  %conv205 = sext i8 %132 to i64
  %div206 = sdiv i64 %131, %conv205
  %conv207 = trunc i64 %div206 to i8
  %conv208 = sext i8 %conv207 to i32
  %mul209 = mul nsw i32 %conv204, %conv208
  %conv210 = trunc i32 %mul209 to i8
  store i8 %conv210, i8* %bdiv, align 1
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %133 = load i32, i32* %uiprod, align 4
  %134 = load i32, i32* %uiprod, align 4
  %135 = load i32, i32* %uidiv, align 4
  %136 = load i32, i32* %uidiv, align 4
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i32 %133, i32 %134, i32 %135, i32 %136)
  %137 = load i16, i16* %usprod, align 2
  %conv213 = zext i16 %137 to i32
  %138 = load i16, i16* %usprod, align 2
  %conv214 = zext i16 %138 to i32
  %139 = load i16, i16* %usdiv, align 2
  %conv215 = zext i16 %139 to i32
  %140 = load i16, i16* %usdiv, align 2
  %conv216 = zext i16 %140 to i32
  %call217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %conv213, i32 %conv214, i32 %conv215, i32 %conv216)
  %141 = load i8, i8* %ubprod, align 1
  %conv218 = zext i8 %141 to i32
  %142 = load i8, i8* %ubprod, align 1
  %conv219 = zext i8 %142 to i32
  %143 = load i8, i8* %ubdiv, align 1
  %conv220 = zext i8 %143 to i32
  %144 = load i8, i8* %ubdiv, align 1
  %conv221 = zext i8 %144 to i32
  %call222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i32 %conv218, i32 %conv219, i32 %conv220, i32 %conv221)
  %145 = load i32, i32* %iprod, align 4
  %146 = load i32, i32* %iprod, align 4
  %147 = load i32, i32* %idiv, align 4
  %148 = load i32, i32* %idiv, align 4
  %call223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i32 %145, i32 %146, i32 %147, i32 %148)
  %149 = load i16, i16* %sprod, align 2
  %conv224 = sext i16 %149 to i32
  %150 = load i16, i16* %sprod, align 2
  %conv225 = sext i16 %150 to i32
  %151 = load i16, i16* %sdiv, align 2
  %conv226 = sext i16 %151 to i32
  %152 = load i16, i16* %sdiv, align 2
  %conv227 = sext i16 %152 to i32
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i32 %conv224, i32 %conv225, i32 %conv226, i32 %conv227)
  %153 = load i8, i8* %bprod, align 1
  %conv229 = sext i8 %153 to i32
  %154 = load i8, i8* %bprod, align 1
  %conv230 = sext i8 %154 to i32
  %155 = load i8, i8* %bdiv, align 1
  %conv231 = sext i8 %155 to i32
  %156 = load i8, i8* %bdiv, align 1
  %conv232 = sext i8 %156 to i32
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0), i32 %conv229, i32 %conv230, i32 %conv231, i32 %conv232)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
