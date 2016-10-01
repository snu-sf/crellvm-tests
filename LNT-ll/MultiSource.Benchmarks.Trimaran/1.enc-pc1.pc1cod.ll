; ModuleID = './MultiSource.Benchmarks.Trimaran/1.enc-pc1.pc1cod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@cle = common global [32 x i8] zeroinitializer, align 16
@x1a0 = common global [16 x i16] zeroinitializer, align 16
@res = common global i16 0, align 2
@inter = common global i16 0, align 2
@i = common global i16 0, align 2
@x1a2 = common global i16 0, align 2
@dx = common global i16 0, align 2
@ax = common global i16 0, align 2
@cx = common global i16 0, align 2
@bx = common global i16 0, align 2
@tmp = common global i16 0, align 2
@si = common global i16 0, align 2
@.str = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyz012345\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"PC1 Cipher 256 bits \0AENCRYPT file IN.BIN to OUT.BIN\0A\00", align 1
@buff = common global [32 x i8] zeroinitializer, align 16
@count = common global i32 0, align 4
@c1 = common global i32 0, align 4
@c = common global i16 0, align 2
@cfc = common global i16 0, align 2
@cfd = common global i16 0, align 2
@compte = common global i16 0, align 2
@d = common global i16 0, align 2
@e = common global i16 0, align 2
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@in = common global %struct._IO_FILE* null, align 8

; Function Attrs: nounwind uwtable
define i32 @assemble() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 0), align 1
  %conv = zext i8 %0 to i32
  %mul = mul nsw i32 %conv, 256
  %1 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 1), align 1
  %conv1 = zext i8 %1 to i32
  %add = add nsw i32 %mul, %conv1
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 0), align 2
  %call = call i32 @code()
  %2 = load i16, i16* @res, align 2
  store i16 %2, i16* @inter, align 2
  %3 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 0), align 2
  %conv3 = zext i16 %3 to i32
  %4 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 2), align 1
  %conv4 = zext i8 %4 to i32
  %mul5 = mul nsw i32 %conv4, 256
  %5 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 3), align 1
  %conv6 = zext i8 %5 to i32
  %add7 = add nsw i32 %mul5, %conv6
  %xor = xor i32 %conv3, %add7
  %conv8 = trunc i32 %xor to i16
  store i16 %conv8, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 1), align 2
  %call9 = call i32 @code()
  %6 = load i16, i16* @inter, align 2
  %conv10 = zext i16 %6 to i32
  %7 = load i16, i16* @res, align 2
  %conv11 = zext i16 %7 to i32
  %xor12 = xor i32 %conv10, %conv11
  %conv13 = trunc i32 %xor12 to i16
  store i16 %conv13, i16* @inter, align 2
  %8 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 1), align 2
  %conv14 = zext i16 %8 to i32
  %9 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 4), align 1
  %conv15 = zext i8 %9 to i32
  %mul16 = mul nsw i32 %conv15, 256
  %10 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 5), align 1
  %conv17 = zext i8 %10 to i32
  %add18 = add nsw i32 %mul16, %conv17
  %xor19 = xor i32 %conv14, %add18
  %conv20 = trunc i32 %xor19 to i16
  store i16 %conv20, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 2), align 2
  %call21 = call i32 @code()
  %11 = load i16, i16* @inter, align 2
  %conv22 = zext i16 %11 to i32
  %12 = load i16, i16* @res, align 2
  %conv23 = zext i16 %12 to i32
  %xor24 = xor i32 %conv22, %conv23
  %conv25 = trunc i32 %xor24 to i16
  store i16 %conv25, i16* @inter, align 2
  %13 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 2), align 2
  %conv26 = zext i16 %13 to i32
  %14 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 6), align 1
  %conv27 = zext i8 %14 to i32
  %mul28 = mul nsw i32 %conv27, 256
  %15 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 7), align 1
  %conv29 = zext i8 %15 to i32
  %add30 = add nsw i32 %mul28, %conv29
  %xor31 = xor i32 %conv26, %add30
  %conv32 = trunc i32 %xor31 to i16
  store i16 %conv32, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 3), align 2
  %call33 = call i32 @code()
  %16 = load i16, i16* @inter, align 2
  %conv34 = zext i16 %16 to i32
  %17 = load i16, i16* @res, align 2
  %conv35 = zext i16 %17 to i32
  %xor36 = xor i32 %conv34, %conv35
  %conv37 = trunc i32 %xor36 to i16
  store i16 %conv37, i16* @inter, align 2
  %18 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 3), align 2
  %conv38 = zext i16 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 8), align 1
  %conv39 = zext i8 %19 to i32
  %mul40 = mul nsw i32 %conv39, 256
  %20 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 9), align 1
  %conv41 = zext i8 %20 to i32
  %add42 = add nsw i32 %mul40, %conv41
  %xor43 = xor i32 %conv38, %add42
  %conv44 = trunc i32 %xor43 to i16
  store i16 %conv44, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 4), align 2
  %call45 = call i32 @code()
  %21 = load i16, i16* @inter, align 2
  %conv46 = zext i16 %21 to i32
  %22 = load i16, i16* @res, align 2
  %conv47 = zext i16 %22 to i32
  %xor48 = xor i32 %conv46, %conv47
  %conv49 = trunc i32 %xor48 to i16
  store i16 %conv49, i16* @inter, align 2
  %23 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 4), align 2
  %conv50 = zext i16 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 10), align 1
  %conv51 = zext i8 %24 to i32
  %mul52 = mul nsw i32 %conv51, 256
  %25 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 11), align 1
  %conv53 = zext i8 %25 to i32
  %add54 = add nsw i32 %mul52, %conv53
  %xor55 = xor i32 %conv50, %add54
  %conv56 = trunc i32 %xor55 to i16
  store i16 %conv56, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 5), align 2
  %call57 = call i32 @code()
  %26 = load i16, i16* @inter, align 2
  %conv58 = zext i16 %26 to i32
  %27 = load i16, i16* @res, align 2
  %conv59 = zext i16 %27 to i32
  %xor60 = xor i32 %conv58, %conv59
  %conv61 = trunc i32 %xor60 to i16
  store i16 %conv61, i16* @inter, align 2
  %28 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 5), align 2
  %conv62 = zext i16 %28 to i32
  %29 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 12), align 1
  %conv63 = zext i8 %29 to i32
  %mul64 = mul nsw i32 %conv63, 256
  %30 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 13), align 1
  %conv65 = zext i8 %30 to i32
  %add66 = add nsw i32 %mul64, %conv65
  %xor67 = xor i32 %conv62, %add66
  %conv68 = trunc i32 %xor67 to i16
  store i16 %conv68, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 6), align 2
  %call69 = call i32 @code()
  %31 = load i16, i16* @inter, align 2
  %conv70 = zext i16 %31 to i32
  %32 = load i16, i16* @res, align 2
  %conv71 = zext i16 %32 to i32
  %xor72 = xor i32 %conv70, %conv71
  %conv73 = trunc i32 %xor72 to i16
  store i16 %conv73, i16* @inter, align 2
  %33 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 6), align 2
  %conv74 = zext i16 %33 to i32
  %34 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 14), align 1
  %conv75 = zext i8 %34 to i32
  %mul76 = mul nsw i32 %conv75, 256
  %35 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 15), align 1
  %conv77 = zext i8 %35 to i32
  %add78 = add nsw i32 %mul76, %conv77
  %xor79 = xor i32 %conv74, %add78
  %conv80 = trunc i32 %xor79 to i16
  store i16 %conv80, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 7), align 2
  %call81 = call i32 @code()
  %36 = load i16, i16* @inter, align 2
  %conv82 = zext i16 %36 to i32
  %37 = load i16, i16* @res, align 2
  %conv83 = zext i16 %37 to i32
  %xor84 = xor i32 %conv82, %conv83
  %conv85 = trunc i32 %xor84 to i16
  store i16 %conv85, i16* @inter, align 2
  %38 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 7), align 2
  %conv86 = zext i16 %38 to i32
  %39 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 16), align 1
  %conv87 = zext i8 %39 to i32
  %mul88 = mul nsw i32 %conv87, 256
  %40 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 17), align 1
  %conv89 = zext i8 %40 to i32
  %add90 = add nsw i32 %mul88, %conv89
  %xor91 = xor i32 %conv86, %add90
  %conv92 = trunc i32 %xor91 to i16
  store i16 %conv92, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 8), align 2
  %call93 = call i32 @code()
  %41 = load i16, i16* @inter, align 2
  %conv94 = zext i16 %41 to i32
  %42 = load i16, i16* @res, align 2
  %conv95 = zext i16 %42 to i32
  %xor96 = xor i32 %conv94, %conv95
  %conv97 = trunc i32 %xor96 to i16
  store i16 %conv97, i16* @inter, align 2
  %43 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 8), align 2
  %conv98 = zext i16 %43 to i32
  %44 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 18), align 1
  %conv99 = zext i8 %44 to i32
  %mul100 = mul nsw i32 %conv99, 256
  %45 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 19), align 1
  %conv101 = zext i8 %45 to i32
  %add102 = add nsw i32 %mul100, %conv101
  %xor103 = xor i32 %conv98, %add102
  %conv104 = trunc i32 %xor103 to i16
  store i16 %conv104, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 9), align 2
  %call105 = call i32 @code()
  %46 = load i16, i16* @inter, align 2
  %conv106 = zext i16 %46 to i32
  %47 = load i16, i16* @res, align 2
  %conv107 = zext i16 %47 to i32
  %xor108 = xor i32 %conv106, %conv107
  %conv109 = trunc i32 %xor108 to i16
  store i16 %conv109, i16* @inter, align 2
  %48 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 9), align 2
  %conv110 = zext i16 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 20), align 1
  %conv111 = zext i8 %49 to i32
  %mul112 = mul nsw i32 %conv111, 256
  %50 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 21), align 1
  %conv113 = zext i8 %50 to i32
  %add114 = add nsw i32 %mul112, %conv113
  %xor115 = xor i32 %conv110, %add114
  %conv116 = trunc i32 %xor115 to i16
  store i16 %conv116, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 10), align 2
  %call117 = call i32 @code()
  %51 = load i16, i16* @inter, align 2
  %conv118 = zext i16 %51 to i32
  %52 = load i16, i16* @res, align 2
  %conv119 = zext i16 %52 to i32
  %xor120 = xor i32 %conv118, %conv119
  %conv121 = trunc i32 %xor120 to i16
  store i16 %conv121, i16* @inter, align 2
  %53 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 10), align 2
  %conv122 = zext i16 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 22), align 1
  %conv123 = zext i8 %54 to i32
  %mul124 = mul nsw i32 %conv123, 256
  %55 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 23), align 1
  %conv125 = zext i8 %55 to i32
  %add126 = add nsw i32 %mul124, %conv125
  %xor127 = xor i32 %conv122, %add126
  %conv128 = trunc i32 %xor127 to i16
  store i16 %conv128, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 11), align 2
  %call129 = call i32 @code()
  %56 = load i16, i16* @inter, align 2
  %conv130 = zext i16 %56 to i32
  %57 = load i16, i16* @res, align 2
  %conv131 = zext i16 %57 to i32
  %xor132 = xor i32 %conv130, %conv131
  %conv133 = trunc i32 %xor132 to i16
  store i16 %conv133, i16* @inter, align 2
  %58 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 11), align 2
  %conv134 = zext i16 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 24), align 1
  %conv135 = zext i8 %59 to i32
  %mul136 = mul nsw i32 %conv135, 256
  %60 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 25), align 1
  %conv137 = zext i8 %60 to i32
  %add138 = add nsw i32 %mul136, %conv137
  %xor139 = xor i32 %conv134, %add138
  %conv140 = trunc i32 %xor139 to i16
  store i16 %conv140, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 12), align 2
  %call141 = call i32 @code()
  %61 = load i16, i16* @inter, align 2
  %conv142 = zext i16 %61 to i32
  %62 = load i16, i16* @res, align 2
  %conv143 = zext i16 %62 to i32
  %xor144 = xor i32 %conv142, %conv143
  %conv145 = trunc i32 %xor144 to i16
  store i16 %conv145, i16* @inter, align 2
  %63 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 12), align 2
  %conv146 = zext i16 %63 to i32
  %64 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 26), align 1
  %conv147 = zext i8 %64 to i32
  %mul148 = mul nsw i32 %conv147, 256
  %65 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 27), align 1
  %conv149 = zext i8 %65 to i32
  %add150 = add nsw i32 %mul148, %conv149
  %xor151 = xor i32 %conv146, %add150
  %conv152 = trunc i32 %xor151 to i16
  store i16 %conv152, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 13), align 2
  %call153 = call i32 @code()
  %66 = load i16, i16* @inter, align 2
  %conv154 = zext i16 %66 to i32
  %67 = load i16, i16* @res, align 2
  %conv155 = zext i16 %67 to i32
  %xor156 = xor i32 %conv154, %conv155
  %conv157 = trunc i32 %xor156 to i16
  store i16 %conv157, i16* @inter, align 2
  %68 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 13), align 2
  %conv158 = zext i16 %68 to i32
  %69 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 28), align 1
  %conv159 = zext i8 %69 to i32
  %mul160 = mul nsw i32 %conv159, 256
  %70 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 29), align 1
  %conv161 = zext i8 %70 to i32
  %add162 = add nsw i32 %mul160, %conv161
  %xor163 = xor i32 %conv158, %add162
  %conv164 = trunc i32 %xor163 to i16
  store i16 %conv164, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 14), align 2
  %call165 = call i32 @code()
  %71 = load i16, i16* @inter, align 2
  %conv166 = zext i16 %71 to i32
  %72 = load i16, i16* @res, align 2
  %conv167 = zext i16 %72 to i32
  %xor168 = xor i32 %conv166, %conv167
  %conv169 = trunc i32 %xor168 to i16
  store i16 %conv169, i16* @inter, align 2
  %73 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 14), align 2
  %conv170 = zext i16 %73 to i32
  %74 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 30), align 1
  %conv171 = zext i8 %74 to i32
  %mul172 = mul nsw i32 %conv171, 256
  %75 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i64 31), align 1
  %conv173 = zext i8 %75 to i32
  %add174 = add nsw i32 %mul172, %conv173
  %xor175 = xor i32 %conv170, %add174
  %conv176 = trunc i32 %xor175 to i16
  store i16 %conv176, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i32 0, i64 15), align 2
  %call177 = call i32 @code()
  %76 = load i16, i16* @inter, align 2
  %conv178 = zext i16 %76 to i32
  %77 = load i16, i16* @res, align 2
  %conv179 = zext i16 %77 to i32
  %xor180 = xor i32 %conv178, %conv179
  %conv181 = trunc i32 %xor180 to i16
  store i16 %conv181, i16* @inter, align 2
  store i16 0, i16* @i, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @code() #0 {
entry:
  %0 = load i16, i16* @x1a2, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* @i, align 2
  %conv1 = zext i16 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, i16* @dx, align 2
  %2 = load i16, i16* @i, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  store i16 %3, i16* @ax, align 2
  store i16 346, i16* @cx, align 2
  store i16 20021, i16* @bx, align 2
  %4 = load i16, i16* @ax, align 2
  store i16 %4, i16* @tmp, align 2
  %5 = load i16, i16* @si, align 2
  store i16 %5, i16* @ax, align 2
  %6 = load i16, i16* @tmp, align 2
  store i16 %6, i16* @si, align 2
  %7 = load i16, i16* @ax, align 2
  store i16 %7, i16* @tmp, align 2
  %8 = load i16, i16* @dx, align 2
  store i16 %8, i16* @ax, align 2
  %9 = load i16, i16* @tmp, align 2
  store i16 %9, i16* @dx, align 2
  %10 = load i16, i16* @ax, align 2
  %conv3 = zext i16 %10 to i32
  %cmp = icmp ne i32 %conv3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i16, i16* @ax, align 2
  %conv5 = zext i16 %11 to i32
  %12 = load i16, i16* @bx, align 2
  %conv6 = zext i16 %12 to i32
  %mul = mul nsw i32 %conv5, %conv6
  %conv7 = trunc i32 %mul to i16
  store i16 %conv7, i16* @ax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i16, i16* @ax, align 2
  store i16 %13, i16* @tmp, align 2
  %14 = load i16, i16* @cx, align 2
  store i16 %14, i16* @ax, align 2
  %15 = load i16, i16* @tmp, align 2
  store i16 %15, i16* @cx, align 2
  %16 = load i16, i16* @ax, align 2
  %conv8 = zext i16 %16 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %17 = load i16, i16* @ax, align 2
  %conv12 = zext i16 %17 to i32
  %18 = load i16, i16* @si, align 2
  %conv13 = zext i16 %18 to i32
  %mul14 = mul nsw i32 %conv12, %conv13
  %conv15 = trunc i32 %mul14 to i16
  store i16 %conv15, i16* @ax, align 2
  %19 = load i16, i16* @ax, align 2
  %conv16 = zext i16 %19 to i32
  %20 = load i16, i16* @cx, align 2
  %conv17 = zext i16 %20 to i32
  %add18 = add nsw i32 %conv16, %conv17
  %conv19 = trunc i32 %add18 to i16
  store i16 %conv19, i16* @cx, align 2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %if.end
  %21 = load i16, i16* @ax, align 2
  store i16 %21, i16* @tmp, align 2
  %22 = load i16, i16* @si, align 2
  store i16 %22, i16* @ax, align 2
  %23 = load i16, i16* @tmp, align 2
  store i16 %23, i16* @si, align 2
  %24 = load i16, i16* @ax, align 2
  %conv21 = zext i16 %24 to i32
  %25 = load i16, i16* @bx, align 2
  %conv22 = zext i16 %25 to i32
  %mul23 = mul nsw i32 %conv21, %conv22
  %conv24 = trunc i32 %mul23 to i16
  store i16 %conv24, i16* @ax, align 2
  %26 = load i16, i16* @cx, align 2
  %conv25 = zext i16 %26 to i32
  %27 = load i16, i16* @dx, align 2
  %conv26 = zext i16 %27 to i32
  %add27 = add nsw i32 %conv25, %conv26
  %conv28 = trunc i32 %add27 to i16
  store i16 %conv28, i16* @dx, align 2
  %28 = load i16, i16* @ax, align 2
  %conv29 = zext i16 %28 to i32
  %add30 = add nsw i32 %conv29, 1
  %conv31 = trunc i32 %add30 to i16
  store i16 %conv31, i16* @ax, align 2
  %29 = load i16, i16* @dx, align 2
  store i16 %29, i16* @x1a2, align 2
  %30 = load i16, i16* @ax, align 2
  %31 = load i16, i16* @i, align 2
  %idxprom32 = zext i16 %31 to i64
  %arrayidx33 = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i32 0, i64 %idxprom32
  store i16 %30, i16* %arrayidx33, align 2
  %32 = load i16, i16* @ax, align 2
  %conv34 = zext i16 %32 to i32
  %33 = load i16, i16* @dx, align 2
  %conv35 = zext i16 %33 to i32
  %xor = xor i32 %conv34, %conv35
  %conv36 = trunc i32 %xor to i16
  store i16 %conv36, i16* @res, align 2
  %34 = load i16, i16* @i, align 2
  %conv37 = zext i16 %34 to i32
  %add38 = add nsw i32 %conv37, 1
  %conv39 = trunc i32 %add38 to i16
  store i16 %conv39, i16* @i, align 2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @my_rand_r(i32* %seedp) #0 {
entry:
  %seedp.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  store i32* %seedp, i32** %seedp.addr, align 8
  %0 = load i32*, i32** %seedp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %mul = mul nsw i32 %1, 1664525
  %add = add nsw i32 %mul, 1013904223
  store i32 %add, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32*, i32** %seedp.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %x, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 32767
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %NumInput = alloca i32, align 4
  %Print = alloca i32, align 4
  %random_seed = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 20000, i32* %NumInput, align 4
  store i32 1, i32* %random_seed, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #4
  store i32 %call, i32* %NumInput, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i16 0, i16* @si, align 2
  store i16 0, i16* @x1a2, align 2
  store i16 0, i16* @i, align 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i64 32, i32 1, i1 false)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0))
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i32 0, i64 1), align 1
  %call2 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i32 0, i32 0)) #4
  %cmp3 = icmp ugt i64 %call2, 32
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 32, i32* @count, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %call5 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i32 0, i32 0)) #4
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* @count, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  store i32 0, i32* @c1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %3 = load i32, i32* @c1, align 4
  %4 = load i32, i32* @count, align 4
  %cmp7 = icmp slt i32 %3, %4
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @c1, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [32 x i8], [32 x i8]* @buff, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx9, align 1
  %7 = load i32, i32* @c1, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i32 0, i64 %idxprom10
  store i8 %6, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* @c1, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @c1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %Print, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.54, %for.end
  %9 = load i32, i32* %NumInput, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %NumInput, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call i32 @my_rand_r(i32* %random_seed)
  %conv13 = trunc i32 %call12 to i16
  store i16 %conv13, i16* @c, align 2
  %call14 = call i32 @assemble()
  %10 = load i16, i16* @inter, align 2
  %conv15 = zext i16 %10 to i32
  %shr = ashr i32 %conv15, 8
  %conv16 = trunc i32 %shr to i16
  store i16 %conv16, i16* @cfc, align 2
  %11 = load i16, i16* @inter, align 2
  %conv17 = zext i16 %11 to i32
  %and = and i32 %conv17, 255
  %conv18 = trunc i32 %and to i16
  store i16 %conv18, i16* @cfd, align 2
  store i16 0, i16* @compte, align 2
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %while.body
  %12 = load i16, i16* @compte, align 2
  %conv20 = zext i16 %12 to i32
  %cmp21 = icmp sle i32 %conv20, 31
  br i1 %cmp21, label %for.body.23, label %for.end.33

for.body.23:                                      ; preds = %for.cond.19
  %13 = load i16, i16* @compte, align 2
  %idxprom24 = zext i16 %13 to i64
  %arrayidx25 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i32 0, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %15 = load i16, i16* @c, align 2
  %conv27 = sext i16 %15 to i32
  %xor = xor i32 %conv26, %conv27
  %conv28 = trunc i32 %xor to i8
  %16 = load i16, i16* @compte, align 2
  %idxprom29 = zext i16 %16 to i64
  %arrayidx30 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i32 0, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.23
  %17 = load i16, i16* @compte, align 2
  %inc32 = add i16 %17, 1
  store i16 %inc32, i16* @compte, align 2
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  %18 = load i16, i16* @c, align 2
  %conv34 = sext i16 %18 to i32
  %19 = load i16, i16* @cfc, align 2
  %conv35 = zext i16 %19 to i32
  %20 = load i16, i16* @cfd, align 2
  %conv36 = zext i16 %20 to i32
  %xor37 = xor i32 %conv35, %conv36
  %xor38 = xor i32 %conv34, %xor37
  %conv39 = trunc i32 %xor38 to i16
  store i16 %conv39, i16* @c, align 2
  %21 = load i16, i16* @c, align 2
  %conv40 = sext i16 %21 to i32
  %shr41 = ashr i32 %conv40, 4
  %conv42 = trunc i32 %shr41 to i16
  store i16 %conv42, i16* @d, align 2
  %22 = load i16, i16* @c, align 2
  %conv43 = sext i16 %22 to i32
  %and44 = and i32 %conv43, 15
  %conv45 = trunc i32 %and44 to i16
  store i16 %conv45, i16* @e, align 2
  %23 = load i32, i32* %Print, align 4
  %inc46 = add nsw i32 %23, 1
  store i32 %inc46, i32* %Print, align 4
  %and47 = and i32 %inc46, 2047
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %for.end.33
  %24 = load i16, i16* @d, align 2
  %conv51 = sext i16 %24 to i32
  %25 = load i16, i16* @e, align 2
  %conv52 = sext i16 %25 to i32
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %conv51, i32 %conv52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %for.end.33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
