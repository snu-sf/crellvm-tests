; ModuleID = './MultiSource.Benchmarks.VersaBench/45.ecbdes.des_enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@des_SPtrans = external constant [8 x [64 x i64]], align 16

; Function Attrs: nounwind uwtable
define void @des_encrypt(i64* %data, %struct.des_ks_struct* %ks, i32 %encrypt) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %ks.addr = alloca %struct.des_ks_struct*, align 8
  %encrypt.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  %u = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca i64*, align 8
  %tt = alloca i64, align 8
  %tt400 = alloca i64, align 8
  store i64* %data, i64** %data.addr, align 8
  store %struct.des_ks_struct* %ks, %struct.des_ks_struct** %ks.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %r, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %l, align 8
  %4 = load i64, i64* %l, align 8
  %shr = lshr i64 %4, 4
  %5 = load i64, i64* %r, align 8
  %xor = xor i64 %shr, %5
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %tt, align 8
  %6 = load i64, i64* %tt, align 8
  %7 = load i64, i64* %r, align 8
  %xor2 = xor i64 %7, %6
  store i64 %xor2, i64* %r, align 8
  %8 = load i64, i64* %tt, align 8
  %shl = shl i64 %8, 4
  %9 = load i64, i64* %l, align 8
  %xor3 = xor i64 %9, %shl
  store i64 %xor3, i64* %l, align 8
  %10 = load i64, i64* %r, align 8
  %shr4 = lshr i64 %10, 16
  %11 = load i64, i64* %l, align 8
  %xor5 = xor i64 %shr4, %11
  %and6 = and i64 %xor5, 65535
  store i64 %and6, i64* %tt, align 8
  %12 = load i64, i64* %tt, align 8
  %13 = load i64, i64* %l, align 8
  %xor7 = xor i64 %13, %12
  store i64 %xor7, i64* %l, align 8
  %14 = load i64, i64* %tt, align 8
  %shl8 = shl i64 %14, 16
  %15 = load i64, i64* %r, align 8
  %xor9 = xor i64 %15, %shl8
  store i64 %xor9, i64* %r, align 8
  %16 = load i64, i64* %l, align 8
  %shr10 = lshr i64 %16, 2
  %17 = load i64, i64* %r, align 8
  %xor11 = xor i64 %shr10, %17
  %and12 = and i64 %xor11, 858993459
  store i64 %and12, i64* %tt, align 8
  %18 = load i64, i64* %tt, align 8
  %19 = load i64, i64* %r, align 8
  %xor13 = xor i64 %19, %18
  store i64 %xor13, i64* %r, align 8
  %20 = load i64, i64* %tt, align 8
  %shl14 = shl i64 %20, 2
  %21 = load i64, i64* %l, align 8
  %xor15 = xor i64 %21, %shl14
  store i64 %xor15, i64* %l, align 8
  %22 = load i64, i64* %r, align 8
  %shr16 = lshr i64 %22, 8
  %23 = load i64, i64* %l, align 8
  %xor17 = xor i64 %shr16, %23
  %and18 = and i64 %xor17, 16711935
  store i64 %and18, i64* %tt, align 8
  %24 = load i64, i64* %tt, align 8
  %25 = load i64, i64* %l, align 8
  %xor19 = xor i64 %25, %24
  store i64 %xor19, i64* %l, align 8
  %26 = load i64, i64* %tt, align 8
  %shl20 = shl i64 %26, 8
  %27 = load i64, i64* %r, align 8
  %xor21 = xor i64 %27, %shl20
  store i64 %xor21, i64* %r, align 8
  %28 = load i64, i64* %l, align 8
  %shr22 = lshr i64 %28, 1
  %29 = load i64, i64* %r, align 8
  %xor23 = xor i64 %shr22, %29
  %and24 = and i64 %xor23, 1431655765
  store i64 %and24, i64* %tt, align 8
  %30 = load i64, i64* %tt, align 8
  %31 = load i64, i64* %r, align 8
  %xor25 = xor i64 %31, %30
  store i64 %xor25, i64* %r, align 8
  %32 = load i64, i64* %tt, align 8
  %shl26 = shl i64 %32, 1
  %33 = load i64, i64* %l, align 8
  %xor27 = xor i64 %33, %shl26
  store i64 %xor27, i64* %l, align 8
  %34 = load i64, i64* %r, align 8
  %shr28 = lshr i64 %34, 29
  %35 = load i64, i64* %r, align 8
  %shl29 = shl i64 %35, 3
  %add = add i64 %shr28, %shl29
  %and30 = and i64 %add, 4294967295
  store i64 %and30, i64* %r, align 8
  %36 = load i64, i64* %l, align 8
  %shr31 = lshr i64 %36, 29
  %37 = load i64, i64* %l, align 8
  %shl32 = shl i64 %37, 3
  %add33 = add i64 %shr31, %shl32
  %and34 = and i64 %add33, 4294967295
  store i64 %and34, i64* %l, align 8
  %38 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks.addr, align 8
  %39 = bitcast %struct.des_ks_struct* %38 to i64*
  store i64* %39, i64** %s, align 8
  %40 = load i32, i32* %encrypt.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %41 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %41, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i64, i64* %r, align 8
  %43 = load i32, i32* %i, align 4
  %add35 = add nsw i32 %43, 0
  %idxprom = sext i32 %add35 to i64
  %44 = load i64*, i64** %s, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %44, i64 %idxprom
  %45 = load i64, i64* %arrayidx36, align 8
  %xor37 = xor i64 %42, %45
  store i64 %xor37, i64* %u, align 8
  %46 = load i64, i64* %r, align 8
  %47 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %47, 0
  %add39 = add nsw i32 %add38, 1
  %idxprom40 = sext i32 %add39 to i64
  %48 = load i64*, i64** %s, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %48, i64 %idxprom40
  %49 = load i64, i64* %arrayidx41, align 8
  %xor42 = xor i64 %46, %49
  store i64 %xor42, i64* %t, align 8
  %50 = load i64, i64* %t, align 8
  %shr43 = lshr i64 %50, 4
  %51 = load i64, i64* %t, align 8
  %shl44 = shl i64 %51, 28
  %add45 = add i64 %shr43, %shl44
  store i64 %add45, i64* %t, align 8
  %52 = load i64, i64* %u, align 8
  %shr46 = lshr i64 %52, 2
  %and47 = and i64 %shr46, 63
  %arrayidx48 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and47
  %53 = load i64, i64* %arrayidx48, align 8
  %54 = load i64, i64* %u, align 8
  %shr49 = lshr i64 %54, 10
  %and50 = and i64 %shr49, 63
  %arrayidx51 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and50
  %55 = load i64, i64* %arrayidx51, align 8
  %xor52 = xor i64 %53, %55
  %56 = load i64, i64* %u, align 8
  %shr53 = lshr i64 %56, 18
  %and54 = and i64 %shr53, 63
  %arrayidx55 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and54
  %57 = load i64, i64* %arrayidx55, align 8
  %xor56 = xor i64 %xor52, %57
  %58 = load i64, i64* %u, align 8
  %shr57 = lshr i64 %58, 26
  %and58 = and i64 %shr57, 63
  %arrayidx59 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and58
  %59 = load i64, i64* %arrayidx59, align 8
  %xor60 = xor i64 %xor56, %59
  %60 = load i64, i64* %t, align 8
  %shr61 = lshr i64 %60, 2
  %and62 = and i64 %shr61, 63
  %arrayidx63 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and62
  %61 = load i64, i64* %arrayidx63, align 8
  %xor64 = xor i64 %xor60, %61
  %62 = load i64, i64* %t, align 8
  %shr65 = lshr i64 %62, 10
  %and66 = and i64 %shr65, 63
  %arrayidx67 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and66
  %63 = load i64, i64* %arrayidx67, align 8
  %xor68 = xor i64 %xor64, %63
  %64 = load i64, i64* %t, align 8
  %shr69 = lshr i64 %64, 18
  %and70 = and i64 %shr69, 63
  %arrayidx71 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and70
  %65 = load i64, i64* %arrayidx71, align 8
  %xor72 = xor i64 %xor68, %65
  %66 = load i64, i64* %t, align 8
  %shr73 = lshr i64 %66, 26
  %and74 = and i64 %shr73, 63
  %arrayidx75 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and74
  %67 = load i64, i64* %arrayidx75, align 8
  %xor76 = xor i64 %xor72, %67
  %68 = load i64, i64* %l, align 8
  %xor77 = xor i64 %68, %xor76
  store i64 %xor77, i64* %l, align 8
  %69 = load i64, i64* %l, align 8
  %70 = load i32, i32* %i, align 4
  %add78 = add nsw i32 %70, 2
  %idxprom79 = sext i32 %add78 to i64
  %71 = load i64*, i64** %s, align 8
  %arrayidx80 = getelementptr inbounds i64, i64* %71, i64 %idxprom79
  %72 = load i64, i64* %arrayidx80, align 8
  %xor81 = xor i64 %69, %72
  store i64 %xor81, i64* %u, align 8
  %73 = load i64, i64* %l, align 8
  %74 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %74, 2
  %add83 = add nsw i32 %add82, 1
  %idxprom84 = sext i32 %add83 to i64
  %75 = load i64*, i64** %s, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %75, i64 %idxprom84
  %76 = load i64, i64* %arrayidx85, align 8
  %xor86 = xor i64 %73, %76
  store i64 %xor86, i64* %t, align 8
  %77 = load i64, i64* %t, align 8
  %shr87 = lshr i64 %77, 4
  %78 = load i64, i64* %t, align 8
  %shl88 = shl i64 %78, 28
  %add89 = add i64 %shr87, %shl88
  store i64 %add89, i64* %t, align 8
  %79 = load i64, i64* %u, align 8
  %shr90 = lshr i64 %79, 2
  %and91 = and i64 %shr90, 63
  %arrayidx92 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and91
  %80 = load i64, i64* %arrayidx92, align 8
  %81 = load i64, i64* %u, align 8
  %shr93 = lshr i64 %81, 10
  %and94 = and i64 %shr93, 63
  %arrayidx95 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and94
  %82 = load i64, i64* %arrayidx95, align 8
  %xor96 = xor i64 %80, %82
  %83 = load i64, i64* %u, align 8
  %shr97 = lshr i64 %83, 18
  %and98 = and i64 %shr97, 63
  %arrayidx99 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and98
  %84 = load i64, i64* %arrayidx99, align 8
  %xor100 = xor i64 %xor96, %84
  %85 = load i64, i64* %u, align 8
  %shr101 = lshr i64 %85, 26
  %and102 = and i64 %shr101, 63
  %arrayidx103 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and102
  %86 = load i64, i64* %arrayidx103, align 8
  %xor104 = xor i64 %xor100, %86
  %87 = load i64, i64* %t, align 8
  %shr105 = lshr i64 %87, 2
  %and106 = and i64 %shr105, 63
  %arrayidx107 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and106
  %88 = load i64, i64* %arrayidx107, align 8
  %xor108 = xor i64 %xor104, %88
  %89 = load i64, i64* %t, align 8
  %shr109 = lshr i64 %89, 10
  %and110 = and i64 %shr109, 63
  %arrayidx111 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and110
  %90 = load i64, i64* %arrayidx111, align 8
  %xor112 = xor i64 %xor108, %90
  %91 = load i64, i64* %t, align 8
  %shr113 = lshr i64 %91, 18
  %and114 = and i64 %shr113, 63
  %arrayidx115 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and114
  %92 = load i64, i64* %arrayidx115, align 8
  %xor116 = xor i64 %xor112, %92
  %93 = load i64, i64* %t, align 8
  %shr117 = lshr i64 %93, 26
  %and118 = and i64 %shr117, 63
  %arrayidx119 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and118
  %94 = load i64, i64* %arrayidx119, align 8
  %xor120 = xor i64 %xor116, %94
  %95 = load i64, i64* %r, align 8
  %xor121 = xor i64 %95, %xor120
  store i64 %xor121, i64* %r, align 8
  %96 = load i64, i64* %r, align 8
  %97 = load i32, i32* %i, align 4
  %add122 = add nsw i32 %97, 4
  %idxprom123 = sext i32 %add122 to i64
  %98 = load i64*, i64** %s, align 8
  %arrayidx124 = getelementptr inbounds i64, i64* %98, i64 %idxprom123
  %99 = load i64, i64* %arrayidx124, align 8
  %xor125 = xor i64 %96, %99
  store i64 %xor125, i64* %u, align 8
  %100 = load i64, i64* %r, align 8
  %101 = load i32, i32* %i, align 4
  %add126 = add nsw i32 %101, 4
  %add127 = add nsw i32 %add126, 1
  %idxprom128 = sext i32 %add127 to i64
  %102 = load i64*, i64** %s, align 8
  %arrayidx129 = getelementptr inbounds i64, i64* %102, i64 %idxprom128
  %103 = load i64, i64* %arrayidx129, align 8
  %xor130 = xor i64 %100, %103
  store i64 %xor130, i64* %t, align 8
  %104 = load i64, i64* %t, align 8
  %shr131 = lshr i64 %104, 4
  %105 = load i64, i64* %t, align 8
  %shl132 = shl i64 %105, 28
  %add133 = add i64 %shr131, %shl132
  store i64 %add133, i64* %t, align 8
  %106 = load i64, i64* %u, align 8
  %shr134 = lshr i64 %106, 2
  %and135 = and i64 %shr134, 63
  %arrayidx136 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and135
  %107 = load i64, i64* %arrayidx136, align 8
  %108 = load i64, i64* %u, align 8
  %shr137 = lshr i64 %108, 10
  %and138 = and i64 %shr137, 63
  %arrayidx139 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and138
  %109 = load i64, i64* %arrayidx139, align 8
  %xor140 = xor i64 %107, %109
  %110 = load i64, i64* %u, align 8
  %shr141 = lshr i64 %110, 18
  %and142 = and i64 %shr141, 63
  %arrayidx143 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and142
  %111 = load i64, i64* %arrayidx143, align 8
  %xor144 = xor i64 %xor140, %111
  %112 = load i64, i64* %u, align 8
  %shr145 = lshr i64 %112, 26
  %and146 = and i64 %shr145, 63
  %arrayidx147 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and146
  %113 = load i64, i64* %arrayidx147, align 8
  %xor148 = xor i64 %xor144, %113
  %114 = load i64, i64* %t, align 8
  %shr149 = lshr i64 %114, 2
  %and150 = and i64 %shr149, 63
  %arrayidx151 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and150
  %115 = load i64, i64* %arrayidx151, align 8
  %xor152 = xor i64 %xor148, %115
  %116 = load i64, i64* %t, align 8
  %shr153 = lshr i64 %116, 10
  %and154 = and i64 %shr153, 63
  %arrayidx155 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and154
  %117 = load i64, i64* %arrayidx155, align 8
  %xor156 = xor i64 %xor152, %117
  %118 = load i64, i64* %t, align 8
  %shr157 = lshr i64 %118, 18
  %and158 = and i64 %shr157, 63
  %arrayidx159 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and158
  %119 = load i64, i64* %arrayidx159, align 8
  %xor160 = xor i64 %xor156, %119
  %120 = load i64, i64* %t, align 8
  %shr161 = lshr i64 %120, 26
  %and162 = and i64 %shr161, 63
  %arrayidx163 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and162
  %121 = load i64, i64* %arrayidx163, align 8
  %xor164 = xor i64 %xor160, %121
  %122 = load i64, i64* %l, align 8
  %xor165 = xor i64 %122, %xor164
  store i64 %xor165, i64* %l, align 8
  %123 = load i64, i64* %l, align 8
  %124 = load i32, i32* %i, align 4
  %add166 = add nsw i32 %124, 6
  %idxprom167 = sext i32 %add166 to i64
  %125 = load i64*, i64** %s, align 8
  %arrayidx168 = getelementptr inbounds i64, i64* %125, i64 %idxprom167
  %126 = load i64, i64* %arrayidx168, align 8
  %xor169 = xor i64 %123, %126
  store i64 %xor169, i64* %u, align 8
  %127 = load i64, i64* %l, align 8
  %128 = load i32, i32* %i, align 4
  %add170 = add nsw i32 %128, 6
  %add171 = add nsw i32 %add170, 1
  %idxprom172 = sext i32 %add171 to i64
  %129 = load i64*, i64** %s, align 8
  %arrayidx173 = getelementptr inbounds i64, i64* %129, i64 %idxprom172
  %130 = load i64, i64* %arrayidx173, align 8
  %xor174 = xor i64 %127, %130
  store i64 %xor174, i64* %t, align 8
  %131 = load i64, i64* %t, align 8
  %shr175 = lshr i64 %131, 4
  %132 = load i64, i64* %t, align 8
  %shl176 = shl i64 %132, 28
  %add177 = add i64 %shr175, %shl176
  store i64 %add177, i64* %t, align 8
  %133 = load i64, i64* %u, align 8
  %shr178 = lshr i64 %133, 2
  %and179 = and i64 %shr178, 63
  %arrayidx180 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and179
  %134 = load i64, i64* %arrayidx180, align 8
  %135 = load i64, i64* %u, align 8
  %shr181 = lshr i64 %135, 10
  %and182 = and i64 %shr181, 63
  %arrayidx183 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and182
  %136 = load i64, i64* %arrayidx183, align 8
  %xor184 = xor i64 %134, %136
  %137 = load i64, i64* %u, align 8
  %shr185 = lshr i64 %137, 18
  %and186 = and i64 %shr185, 63
  %arrayidx187 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and186
  %138 = load i64, i64* %arrayidx187, align 8
  %xor188 = xor i64 %xor184, %138
  %139 = load i64, i64* %u, align 8
  %shr189 = lshr i64 %139, 26
  %and190 = and i64 %shr189, 63
  %arrayidx191 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and190
  %140 = load i64, i64* %arrayidx191, align 8
  %xor192 = xor i64 %xor188, %140
  %141 = load i64, i64* %t, align 8
  %shr193 = lshr i64 %141, 2
  %and194 = and i64 %shr193, 63
  %arrayidx195 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and194
  %142 = load i64, i64* %arrayidx195, align 8
  %xor196 = xor i64 %xor192, %142
  %143 = load i64, i64* %t, align 8
  %shr197 = lshr i64 %143, 10
  %and198 = and i64 %shr197, 63
  %arrayidx199 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and198
  %144 = load i64, i64* %arrayidx199, align 8
  %xor200 = xor i64 %xor196, %144
  %145 = load i64, i64* %t, align 8
  %shr201 = lshr i64 %145, 18
  %and202 = and i64 %shr201, 63
  %arrayidx203 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and202
  %146 = load i64, i64* %arrayidx203, align 8
  %xor204 = xor i64 %xor200, %146
  %147 = load i64, i64* %t, align 8
  %shr205 = lshr i64 %147, 26
  %and206 = and i64 %shr205, 63
  %arrayidx207 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and206
  %148 = load i64, i64* %arrayidx207, align 8
  %xor208 = xor i64 %xor204, %148
  %149 = load i64, i64* %r, align 8
  %xor209 = xor i64 %149, %xor208
  store i64 %xor209, i64* %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %150 = load i32, i32* %i, align 4
  %add210 = add nsw i32 %150, 8
  store i32 %add210, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 30, i32* %i, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.389, %if.else
  %151 = load i32, i32* %i, align 4
  %cmp212 = icmp sgt i32 %151, 0
  br i1 %cmp212, label %for.body.213, label %for.end.391

for.body.213:                                     ; preds = %for.cond.211
  %152 = load i64, i64* %r, align 8
  %153 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %153, 0
  %idxprom214 = sext i32 %sub to i64
  %154 = load i64*, i64** %s, align 8
  %arrayidx215 = getelementptr inbounds i64, i64* %154, i64 %idxprom214
  %155 = load i64, i64* %arrayidx215, align 8
  %xor216 = xor i64 %152, %155
  store i64 %xor216, i64* %u, align 8
  %156 = load i64, i64* %r, align 8
  %157 = load i32, i32* %i, align 4
  %sub217 = sub nsw i32 %157, 0
  %add218 = add nsw i32 %sub217, 1
  %idxprom219 = sext i32 %add218 to i64
  %158 = load i64*, i64** %s, align 8
  %arrayidx220 = getelementptr inbounds i64, i64* %158, i64 %idxprom219
  %159 = load i64, i64* %arrayidx220, align 8
  %xor221 = xor i64 %156, %159
  store i64 %xor221, i64* %t, align 8
  %160 = load i64, i64* %t, align 8
  %shr222 = lshr i64 %160, 4
  %161 = load i64, i64* %t, align 8
  %shl223 = shl i64 %161, 28
  %add224 = add i64 %shr222, %shl223
  store i64 %add224, i64* %t, align 8
  %162 = load i64, i64* %u, align 8
  %shr225 = lshr i64 %162, 2
  %and226 = and i64 %shr225, 63
  %arrayidx227 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and226
  %163 = load i64, i64* %arrayidx227, align 8
  %164 = load i64, i64* %u, align 8
  %shr228 = lshr i64 %164, 10
  %and229 = and i64 %shr228, 63
  %arrayidx230 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and229
  %165 = load i64, i64* %arrayidx230, align 8
  %xor231 = xor i64 %163, %165
  %166 = load i64, i64* %u, align 8
  %shr232 = lshr i64 %166, 18
  %and233 = and i64 %shr232, 63
  %arrayidx234 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and233
  %167 = load i64, i64* %arrayidx234, align 8
  %xor235 = xor i64 %xor231, %167
  %168 = load i64, i64* %u, align 8
  %shr236 = lshr i64 %168, 26
  %and237 = and i64 %shr236, 63
  %arrayidx238 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and237
  %169 = load i64, i64* %arrayidx238, align 8
  %xor239 = xor i64 %xor235, %169
  %170 = load i64, i64* %t, align 8
  %shr240 = lshr i64 %170, 2
  %and241 = and i64 %shr240, 63
  %arrayidx242 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and241
  %171 = load i64, i64* %arrayidx242, align 8
  %xor243 = xor i64 %xor239, %171
  %172 = load i64, i64* %t, align 8
  %shr244 = lshr i64 %172, 10
  %and245 = and i64 %shr244, 63
  %arrayidx246 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and245
  %173 = load i64, i64* %arrayidx246, align 8
  %xor247 = xor i64 %xor243, %173
  %174 = load i64, i64* %t, align 8
  %shr248 = lshr i64 %174, 18
  %and249 = and i64 %shr248, 63
  %arrayidx250 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and249
  %175 = load i64, i64* %arrayidx250, align 8
  %xor251 = xor i64 %xor247, %175
  %176 = load i64, i64* %t, align 8
  %shr252 = lshr i64 %176, 26
  %and253 = and i64 %shr252, 63
  %arrayidx254 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and253
  %177 = load i64, i64* %arrayidx254, align 8
  %xor255 = xor i64 %xor251, %177
  %178 = load i64, i64* %l, align 8
  %xor256 = xor i64 %178, %xor255
  store i64 %xor256, i64* %l, align 8
  %179 = load i64, i64* %l, align 8
  %180 = load i32, i32* %i, align 4
  %sub257 = sub nsw i32 %180, 2
  %idxprom258 = sext i32 %sub257 to i64
  %181 = load i64*, i64** %s, align 8
  %arrayidx259 = getelementptr inbounds i64, i64* %181, i64 %idxprom258
  %182 = load i64, i64* %arrayidx259, align 8
  %xor260 = xor i64 %179, %182
  store i64 %xor260, i64* %u, align 8
  %183 = load i64, i64* %l, align 8
  %184 = load i32, i32* %i, align 4
  %sub261 = sub nsw i32 %184, 2
  %add262 = add nsw i32 %sub261, 1
  %idxprom263 = sext i32 %add262 to i64
  %185 = load i64*, i64** %s, align 8
  %arrayidx264 = getelementptr inbounds i64, i64* %185, i64 %idxprom263
  %186 = load i64, i64* %arrayidx264, align 8
  %xor265 = xor i64 %183, %186
  store i64 %xor265, i64* %t, align 8
  %187 = load i64, i64* %t, align 8
  %shr266 = lshr i64 %187, 4
  %188 = load i64, i64* %t, align 8
  %shl267 = shl i64 %188, 28
  %add268 = add i64 %shr266, %shl267
  store i64 %add268, i64* %t, align 8
  %189 = load i64, i64* %u, align 8
  %shr269 = lshr i64 %189, 2
  %and270 = and i64 %shr269, 63
  %arrayidx271 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and270
  %190 = load i64, i64* %arrayidx271, align 8
  %191 = load i64, i64* %u, align 8
  %shr272 = lshr i64 %191, 10
  %and273 = and i64 %shr272, 63
  %arrayidx274 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and273
  %192 = load i64, i64* %arrayidx274, align 8
  %xor275 = xor i64 %190, %192
  %193 = load i64, i64* %u, align 8
  %shr276 = lshr i64 %193, 18
  %and277 = and i64 %shr276, 63
  %arrayidx278 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and277
  %194 = load i64, i64* %arrayidx278, align 8
  %xor279 = xor i64 %xor275, %194
  %195 = load i64, i64* %u, align 8
  %shr280 = lshr i64 %195, 26
  %and281 = and i64 %shr280, 63
  %arrayidx282 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and281
  %196 = load i64, i64* %arrayidx282, align 8
  %xor283 = xor i64 %xor279, %196
  %197 = load i64, i64* %t, align 8
  %shr284 = lshr i64 %197, 2
  %and285 = and i64 %shr284, 63
  %arrayidx286 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and285
  %198 = load i64, i64* %arrayidx286, align 8
  %xor287 = xor i64 %xor283, %198
  %199 = load i64, i64* %t, align 8
  %shr288 = lshr i64 %199, 10
  %and289 = and i64 %shr288, 63
  %arrayidx290 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and289
  %200 = load i64, i64* %arrayidx290, align 8
  %xor291 = xor i64 %xor287, %200
  %201 = load i64, i64* %t, align 8
  %shr292 = lshr i64 %201, 18
  %and293 = and i64 %shr292, 63
  %arrayidx294 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and293
  %202 = load i64, i64* %arrayidx294, align 8
  %xor295 = xor i64 %xor291, %202
  %203 = load i64, i64* %t, align 8
  %shr296 = lshr i64 %203, 26
  %and297 = and i64 %shr296, 63
  %arrayidx298 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and297
  %204 = load i64, i64* %arrayidx298, align 8
  %xor299 = xor i64 %xor295, %204
  %205 = load i64, i64* %r, align 8
  %xor300 = xor i64 %205, %xor299
  store i64 %xor300, i64* %r, align 8
  %206 = load i64, i64* %r, align 8
  %207 = load i32, i32* %i, align 4
  %sub301 = sub nsw i32 %207, 4
  %idxprom302 = sext i32 %sub301 to i64
  %208 = load i64*, i64** %s, align 8
  %arrayidx303 = getelementptr inbounds i64, i64* %208, i64 %idxprom302
  %209 = load i64, i64* %arrayidx303, align 8
  %xor304 = xor i64 %206, %209
  store i64 %xor304, i64* %u, align 8
  %210 = load i64, i64* %r, align 8
  %211 = load i32, i32* %i, align 4
  %sub305 = sub nsw i32 %211, 4
  %add306 = add nsw i32 %sub305, 1
  %idxprom307 = sext i32 %add306 to i64
  %212 = load i64*, i64** %s, align 8
  %arrayidx308 = getelementptr inbounds i64, i64* %212, i64 %idxprom307
  %213 = load i64, i64* %arrayidx308, align 8
  %xor309 = xor i64 %210, %213
  store i64 %xor309, i64* %t, align 8
  %214 = load i64, i64* %t, align 8
  %shr310 = lshr i64 %214, 4
  %215 = load i64, i64* %t, align 8
  %shl311 = shl i64 %215, 28
  %add312 = add i64 %shr310, %shl311
  store i64 %add312, i64* %t, align 8
  %216 = load i64, i64* %u, align 8
  %shr313 = lshr i64 %216, 2
  %and314 = and i64 %shr313, 63
  %arrayidx315 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and314
  %217 = load i64, i64* %arrayidx315, align 8
  %218 = load i64, i64* %u, align 8
  %shr316 = lshr i64 %218, 10
  %and317 = and i64 %shr316, 63
  %arrayidx318 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and317
  %219 = load i64, i64* %arrayidx318, align 8
  %xor319 = xor i64 %217, %219
  %220 = load i64, i64* %u, align 8
  %shr320 = lshr i64 %220, 18
  %and321 = and i64 %shr320, 63
  %arrayidx322 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and321
  %221 = load i64, i64* %arrayidx322, align 8
  %xor323 = xor i64 %xor319, %221
  %222 = load i64, i64* %u, align 8
  %shr324 = lshr i64 %222, 26
  %and325 = and i64 %shr324, 63
  %arrayidx326 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and325
  %223 = load i64, i64* %arrayidx326, align 8
  %xor327 = xor i64 %xor323, %223
  %224 = load i64, i64* %t, align 8
  %shr328 = lshr i64 %224, 2
  %and329 = and i64 %shr328, 63
  %arrayidx330 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and329
  %225 = load i64, i64* %arrayidx330, align 8
  %xor331 = xor i64 %xor327, %225
  %226 = load i64, i64* %t, align 8
  %shr332 = lshr i64 %226, 10
  %and333 = and i64 %shr332, 63
  %arrayidx334 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and333
  %227 = load i64, i64* %arrayidx334, align 8
  %xor335 = xor i64 %xor331, %227
  %228 = load i64, i64* %t, align 8
  %shr336 = lshr i64 %228, 18
  %and337 = and i64 %shr336, 63
  %arrayidx338 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and337
  %229 = load i64, i64* %arrayidx338, align 8
  %xor339 = xor i64 %xor335, %229
  %230 = load i64, i64* %t, align 8
  %shr340 = lshr i64 %230, 26
  %and341 = and i64 %shr340, 63
  %arrayidx342 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and341
  %231 = load i64, i64* %arrayidx342, align 8
  %xor343 = xor i64 %xor339, %231
  %232 = load i64, i64* %l, align 8
  %xor344 = xor i64 %232, %xor343
  store i64 %xor344, i64* %l, align 8
  %233 = load i64, i64* %l, align 8
  %234 = load i32, i32* %i, align 4
  %sub345 = sub nsw i32 %234, 6
  %idxprom346 = sext i32 %sub345 to i64
  %235 = load i64*, i64** %s, align 8
  %arrayidx347 = getelementptr inbounds i64, i64* %235, i64 %idxprom346
  %236 = load i64, i64* %arrayidx347, align 8
  %xor348 = xor i64 %233, %236
  store i64 %xor348, i64* %u, align 8
  %237 = load i64, i64* %l, align 8
  %238 = load i32, i32* %i, align 4
  %sub349 = sub nsw i32 %238, 6
  %add350 = add nsw i32 %sub349, 1
  %idxprom351 = sext i32 %add350 to i64
  %239 = load i64*, i64** %s, align 8
  %arrayidx352 = getelementptr inbounds i64, i64* %239, i64 %idxprom351
  %240 = load i64, i64* %arrayidx352, align 8
  %xor353 = xor i64 %237, %240
  store i64 %xor353, i64* %t, align 8
  %241 = load i64, i64* %t, align 8
  %shr354 = lshr i64 %241, 4
  %242 = load i64, i64* %t, align 8
  %shl355 = shl i64 %242, 28
  %add356 = add i64 %shr354, %shl355
  store i64 %add356, i64* %t, align 8
  %243 = load i64, i64* %u, align 8
  %shr357 = lshr i64 %243, 2
  %and358 = and i64 %shr357, 63
  %arrayidx359 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and358
  %244 = load i64, i64* %arrayidx359, align 8
  %245 = load i64, i64* %u, align 8
  %shr360 = lshr i64 %245, 10
  %and361 = and i64 %shr360, 63
  %arrayidx362 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and361
  %246 = load i64, i64* %arrayidx362, align 8
  %xor363 = xor i64 %244, %246
  %247 = load i64, i64* %u, align 8
  %shr364 = lshr i64 %247, 18
  %and365 = and i64 %shr364, 63
  %arrayidx366 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and365
  %248 = load i64, i64* %arrayidx366, align 8
  %xor367 = xor i64 %xor363, %248
  %249 = load i64, i64* %u, align 8
  %shr368 = lshr i64 %249, 26
  %and369 = and i64 %shr368, 63
  %arrayidx370 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and369
  %250 = load i64, i64* %arrayidx370, align 8
  %xor371 = xor i64 %xor367, %250
  %251 = load i64, i64* %t, align 8
  %shr372 = lshr i64 %251, 2
  %and373 = and i64 %shr372, 63
  %arrayidx374 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and373
  %252 = load i64, i64* %arrayidx374, align 8
  %xor375 = xor i64 %xor371, %252
  %253 = load i64, i64* %t, align 8
  %shr376 = lshr i64 %253, 10
  %and377 = and i64 %shr376, 63
  %arrayidx378 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and377
  %254 = load i64, i64* %arrayidx378, align 8
  %xor379 = xor i64 %xor375, %254
  %255 = load i64, i64* %t, align 8
  %shr380 = lshr i64 %255, 18
  %and381 = and i64 %shr380, 63
  %arrayidx382 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and381
  %256 = load i64, i64* %arrayidx382, align 8
  %xor383 = xor i64 %xor379, %256
  %257 = load i64, i64* %t, align 8
  %shr384 = lshr i64 %257, 26
  %and385 = and i64 %shr384, 63
  %arrayidx386 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and385
  %258 = load i64, i64* %arrayidx386, align 8
  %xor387 = xor i64 %xor383, %258
  %259 = load i64, i64* %r, align 8
  %xor388 = xor i64 %259, %xor387
  store i64 %xor388, i64* %r, align 8
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.213
  %260 = load i32, i32* %i, align 4
  %sub390 = sub nsw i32 %260, 8
  store i32 %sub390, i32* %i, align 4
  br label %for.cond.211

for.end.391:                                      ; preds = %for.cond.211
  br label %if.end

if.end:                                           ; preds = %for.end.391, %for.end
  %261 = load i64, i64* %l, align 8
  %shr392 = lshr i64 %261, 3
  %262 = load i64, i64* %l, align 8
  %shl393 = shl i64 %262, 29
  %add394 = add i64 %shr392, %shl393
  %and395 = and i64 %add394, 4294967295
  store i64 %and395, i64* %l, align 8
  %263 = load i64, i64* %r, align 8
  %shr396 = lshr i64 %263, 3
  %264 = load i64, i64* %r, align 8
  %shl397 = shl i64 %264, 29
  %add398 = add i64 %shr396, %shl397
  %and399 = and i64 %add398, 4294967295
  store i64 %and399, i64* %r, align 8
  %265 = load i64, i64* %r, align 8
  %shr401 = lshr i64 %265, 1
  %266 = load i64, i64* %l, align 8
  %xor402 = xor i64 %shr401, %266
  %and403 = and i64 %xor402, 1431655765
  store i64 %and403, i64* %tt400, align 8
  %267 = load i64, i64* %tt400, align 8
  %268 = load i64, i64* %l, align 8
  %xor404 = xor i64 %268, %267
  store i64 %xor404, i64* %l, align 8
  %269 = load i64, i64* %tt400, align 8
  %shl405 = shl i64 %269, 1
  %270 = load i64, i64* %r, align 8
  %xor406 = xor i64 %270, %shl405
  store i64 %xor406, i64* %r, align 8
  %271 = load i64, i64* %l, align 8
  %shr407 = lshr i64 %271, 8
  %272 = load i64, i64* %r, align 8
  %xor408 = xor i64 %shr407, %272
  %and409 = and i64 %xor408, 16711935
  store i64 %and409, i64* %tt400, align 8
  %273 = load i64, i64* %tt400, align 8
  %274 = load i64, i64* %r, align 8
  %xor410 = xor i64 %274, %273
  store i64 %xor410, i64* %r, align 8
  %275 = load i64, i64* %tt400, align 8
  %shl411 = shl i64 %275, 8
  %276 = load i64, i64* %l, align 8
  %xor412 = xor i64 %276, %shl411
  store i64 %xor412, i64* %l, align 8
  %277 = load i64, i64* %r, align 8
  %shr413 = lshr i64 %277, 2
  %278 = load i64, i64* %l, align 8
  %xor414 = xor i64 %shr413, %278
  %and415 = and i64 %xor414, 858993459
  store i64 %and415, i64* %tt400, align 8
  %279 = load i64, i64* %tt400, align 8
  %280 = load i64, i64* %l, align 8
  %xor416 = xor i64 %280, %279
  store i64 %xor416, i64* %l, align 8
  %281 = load i64, i64* %tt400, align 8
  %shl417 = shl i64 %281, 2
  %282 = load i64, i64* %r, align 8
  %xor418 = xor i64 %282, %shl417
  store i64 %xor418, i64* %r, align 8
  %283 = load i64, i64* %l, align 8
  %shr419 = lshr i64 %283, 16
  %284 = load i64, i64* %r, align 8
  %xor420 = xor i64 %shr419, %284
  %and421 = and i64 %xor420, 65535
  store i64 %and421, i64* %tt400, align 8
  %285 = load i64, i64* %tt400, align 8
  %286 = load i64, i64* %r, align 8
  %xor422 = xor i64 %286, %285
  store i64 %xor422, i64* %r, align 8
  %287 = load i64, i64* %tt400, align 8
  %shl423 = shl i64 %287, 16
  %288 = load i64, i64* %l, align 8
  %xor424 = xor i64 %288, %shl423
  store i64 %xor424, i64* %l, align 8
  %289 = load i64, i64* %r, align 8
  %shr425 = lshr i64 %289, 4
  %290 = load i64, i64* %l, align 8
  %xor426 = xor i64 %shr425, %290
  %and427 = and i64 %xor426, 252645135
  store i64 %and427, i64* %tt400, align 8
  %291 = load i64, i64* %tt400, align 8
  %292 = load i64, i64* %l, align 8
  %xor428 = xor i64 %292, %291
  store i64 %xor428, i64* %l, align 8
  %293 = load i64, i64* %tt400, align 8
  %shl429 = shl i64 %293, 4
  %294 = load i64, i64* %r, align 8
  %xor430 = xor i64 %294, %shl429
  store i64 %xor430, i64* %r, align 8
  %295 = load i64, i64* %l, align 8
  %296 = load i64*, i64** %data.addr, align 8
  %arrayidx431 = getelementptr inbounds i64, i64* %296, i64 0
  store i64 %295, i64* %arrayidx431, align 8
  %297 = load i64, i64* %r, align 8
  %298 = load i64*, i64** %data.addr, align 8
  %arrayidx432 = getelementptr inbounds i64, i64* %298, i64 1
  store i64 %297, i64* %arrayidx432, align 8
  store i64 0, i64* %u, align 8
  store i64 0, i64* %t, align 8
  store i64 0, i64* %r, align 8
  store i64 0, i64* %l, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @des_encrypt2(i64* %data, %struct.des_ks_struct* %ks, i32 %encrypt) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %ks.addr = alloca %struct.des_ks_struct*, align 8
  %encrypt.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %t = alloca i64, align 8
  %u = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca i64*, align 8
  store i64* %data, i64** %data.addr, align 8
  store %struct.des_ks_struct* %ks, %struct.des_ks_struct** %ks.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %r, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %l, align 8
  %4 = load i64, i64* %r, align 8
  %shr = lshr i64 %4, 29
  %5 = load i64, i64* %r, align 8
  %shl = shl i64 %5, 3
  %add = add i64 %shr, %shl
  %and = and i64 %add, 4294967295
  store i64 %and, i64* %r, align 8
  %6 = load i64, i64* %l, align 8
  %shr2 = lshr i64 %6, 29
  %7 = load i64, i64* %l, align 8
  %shl3 = shl i64 %7, 3
  %add4 = add i64 %shr2, %shl3
  %and5 = and i64 %add4, 4294967295
  store i64 %and5, i64* %l, align 8
  %8 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks.addr, align 8
  %9 = bitcast %struct.des_ks_struct* %8 to i64*
  store i64* %9, i64** %s, align 8
  %10 = load i32, i32* %encrypt.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %r, align 8
  %13 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %13, 0
  %idxprom = sext i32 %add6 to i64
  %14 = load i64*, i64** %s, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 %idxprom
  %15 = load i64, i64* %arrayidx7, align 8
  %xor = xor i64 %12, %15
  store i64 %xor, i64* %u, align 8
  %16 = load i64, i64* %r, align 8
  %17 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %17, 0
  %add9 = add nsw i32 %add8, 1
  %idxprom10 = sext i32 %add9 to i64
  %18 = load i64*, i64** %s, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %18, i64 %idxprom10
  %19 = load i64, i64* %arrayidx11, align 8
  %xor12 = xor i64 %16, %19
  store i64 %xor12, i64* %t, align 8
  %20 = load i64, i64* %t, align 8
  %shr13 = lshr i64 %20, 4
  %21 = load i64, i64* %t, align 8
  %shl14 = shl i64 %21, 28
  %add15 = add i64 %shr13, %shl14
  store i64 %add15, i64* %t, align 8
  %22 = load i64, i64* %u, align 8
  %shr16 = lshr i64 %22, 2
  %and17 = and i64 %shr16, 63
  %arrayidx18 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and17
  %23 = load i64, i64* %arrayidx18, align 8
  %24 = load i64, i64* %u, align 8
  %shr19 = lshr i64 %24, 10
  %and20 = and i64 %shr19, 63
  %arrayidx21 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and20
  %25 = load i64, i64* %arrayidx21, align 8
  %xor22 = xor i64 %23, %25
  %26 = load i64, i64* %u, align 8
  %shr23 = lshr i64 %26, 18
  %and24 = and i64 %shr23, 63
  %arrayidx25 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and24
  %27 = load i64, i64* %arrayidx25, align 8
  %xor26 = xor i64 %xor22, %27
  %28 = load i64, i64* %u, align 8
  %shr27 = lshr i64 %28, 26
  %and28 = and i64 %shr27, 63
  %arrayidx29 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and28
  %29 = load i64, i64* %arrayidx29, align 8
  %xor30 = xor i64 %xor26, %29
  %30 = load i64, i64* %t, align 8
  %shr31 = lshr i64 %30, 2
  %and32 = and i64 %shr31, 63
  %arrayidx33 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and32
  %31 = load i64, i64* %arrayidx33, align 8
  %xor34 = xor i64 %xor30, %31
  %32 = load i64, i64* %t, align 8
  %shr35 = lshr i64 %32, 10
  %and36 = and i64 %shr35, 63
  %arrayidx37 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and36
  %33 = load i64, i64* %arrayidx37, align 8
  %xor38 = xor i64 %xor34, %33
  %34 = load i64, i64* %t, align 8
  %shr39 = lshr i64 %34, 18
  %and40 = and i64 %shr39, 63
  %arrayidx41 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and40
  %35 = load i64, i64* %arrayidx41, align 8
  %xor42 = xor i64 %xor38, %35
  %36 = load i64, i64* %t, align 8
  %shr43 = lshr i64 %36, 26
  %and44 = and i64 %shr43, 63
  %arrayidx45 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and44
  %37 = load i64, i64* %arrayidx45, align 8
  %xor46 = xor i64 %xor42, %37
  %38 = load i64, i64* %l, align 8
  %xor47 = xor i64 %38, %xor46
  store i64 %xor47, i64* %l, align 8
  %39 = load i64, i64* %l, align 8
  %40 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %40, 2
  %idxprom49 = sext i32 %add48 to i64
  %41 = load i64*, i64** %s, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %41, i64 %idxprom49
  %42 = load i64, i64* %arrayidx50, align 8
  %xor51 = xor i64 %39, %42
  store i64 %xor51, i64* %u, align 8
  %43 = load i64, i64* %l, align 8
  %44 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %44, 2
  %add53 = add nsw i32 %add52, 1
  %idxprom54 = sext i32 %add53 to i64
  %45 = load i64*, i64** %s, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %45, i64 %idxprom54
  %46 = load i64, i64* %arrayidx55, align 8
  %xor56 = xor i64 %43, %46
  store i64 %xor56, i64* %t, align 8
  %47 = load i64, i64* %t, align 8
  %shr57 = lshr i64 %47, 4
  %48 = load i64, i64* %t, align 8
  %shl58 = shl i64 %48, 28
  %add59 = add i64 %shr57, %shl58
  store i64 %add59, i64* %t, align 8
  %49 = load i64, i64* %u, align 8
  %shr60 = lshr i64 %49, 2
  %and61 = and i64 %shr60, 63
  %arrayidx62 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and61
  %50 = load i64, i64* %arrayidx62, align 8
  %51 = load i64, i64* %u, align 8
  %shr63 = lshr i64 %51, 10
  %and64 = and i64 %shr63, 63
  %arrayidx65 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and64
  %52 = load i64, i64* %arrayidx65, align 8
  %xor66 = xor i64 %50, %52
  %53 = load i64, i64* %u, align 8
  %shr67 = lshr i64 %53, 18
  %and68 = and i64 %shr67, 63
  %arrayidx69 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and68
  %54 = load i64, i64* %arrayidx69, align 8
  %xor70 = xor i64 %xor66, %54
  %55 = load i64, i64* %u, align 8
  %shr71 = lshr i64 %55, 26
  %and72 = and i64 %shr71, 63
  %arrayidx73 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and72
  %56 = load i64, i64* %arrayidx73, align 8
  %xor74 = xor i64 %xor70, %56
  %57 = load i64, i64* %t, align 8
  %shr75 = lshr i64 %57, 2
  %and76 = and i64 %shr75, 63
  %arrayidx77 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and76
  %58 = load i64, i64* %arrayidx77, align 8
  %xor78 = xor i64 %xor74, %58
  %59 = load i64, i64* %t, align 8
  %shr79 = lshr i64 %59, 10
  %and80 = and i64 %shr79, 63
  %arrayidx81 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and80
  %60 = load i64, i64* %arrayidx81, align 8
  %xor82 = xor i64 %xor78, %60
  %61 = load i64, i64* %t, align 8
  %shr83 = lshr i64 %61, 18
  %and84 = and i64 %shr83, 63
  %arrayidx85 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and84
  %62 = load i64, i64* %arrayidx85, align 8
  %xor86 = xor i64 %xor82, %62
  %63 = load i64, i64* %t, align 8
  %shr87 = lshr i64 %63, 26
  %and88 = and i64 %shr87, 63
  %arrayidx89 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and88
  %64 = load i64, i64* %arrayidx89, align 8
  %xor90 = xor i64 %xor86, %64
  %65 = load i64, i64* %r, align 8
  %xor91 = xor i64 %65, %xor90
  store i64 %xor91, i64* %r, align 8
  %66 = load i64, i64* %r, align 8
  %67 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %67, 4
  %idxprom93 = sext i32 %add92 to i64
  %68 = load i64*, i64** %s, align 8
  %arrayidx94 = getelementptr inbounds i64, i64* %68, i64 %idxprom93
  %69 = load i64, i64* %arrayidx94, align 8
  %xor95 = xor i64 %66, %69
  store i64 %xor95, i64* %u, align 8
  %70 = load i64, i64* %r, align 8
  %71 = load i32, i32* %i, align 4
  %add96 = add nsw i32 %71, 4
  %add97 = add nsw i32 %add96, 1
  %idxprom98 = sext i32 %add97 to i64
  %72 = load i64*, i64** %s, align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %72, i64 %idxprom98
  %73 = load i64, i64* %arrayidx99, align 8
  %xor100 = xor i64 %70, %73
  store i64 %xor100, i64* %t, align 8
  %74 = load i64, i64* %t, align 8
  %shr101 = lshr i64 %74, 4
  %75 = load i64, i64* %t, align 8
  %shl102 = shl i64 %75, 28
  %add103 = add i64 %shr101, %shl102
  store i64 %add103, i64* %t, align 8
  %76 = load i64, i64* %u, align 8
  %shr104 = lshr i64 %76, 2
  %and105 = and i64 %shr104, 63
  %arrayidx106 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and105
  %77 = load i64, i64* %arrayidx106, align 8
  %78 = load i64, i64* %u, align 8
  %shr107 = lshr i64 %78, 10
  %and108 = and i64 %shr107, 63
  %arrayidx109 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and108
  %79 = load i64, i64* %arrayidx109, align 8
  %xor110 = xor i64 %77, %79
  %80 = load i64, i64* %u, align 8
  %shr111 = lshr i64 %80, 18
  %and112 = and i64 %shr111, 63
  %arrayidx113 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and112
  %81 = load i64, i64* %arrayidx113, align 8
  %xor114 = xor i64 %xor110, %81
  %82 = load i64, i64* %u, align 8
  %shr115 = lshr i64 %82, 26
  %and116 = and i64 %shr115, 63
  %arrayidx117 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and116
  %83 = load i64, i64* %arrayidx117, align 8
  %xor118 = xor i64 %xor114, %83
  %84 = load i64, i64* %t, align 8
  %shr119 = lshr i64 %84, 2
  %and120 = and i64 %shr119, 63
  %arrayidx121 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and120
  %85 = load i64, i64* %arrayidx121, align 8
  %xor122 = xor i64 %xor118, %85
  %86 = load i64, i64* %t, align 8
  %shr123 = lshr i64 %86, 10
  %and124 = and i64 %shr123, 63
  %arrayidx125 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and124
  %87 = load i64, i64* %arrayidx125, align 8
  %xor126 = xor i64 %xor122, %87
  %88 = load i64, i64* %t, align 8
  %shr127 = lshr i64 %88, 18
  %and128 = and i64 %shr127, 63
  %arrayidx129 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and128
  %89 = load i64, i64* %arrayidx129, align 8
  %xor130 = xor i64 %xor126, %89
  %90 = load i64, i64* %t, align 8
  %shr131 = lshr i64 %90, 26
  %and132 = and i64 %shr131, 63
  %arrayidx133 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and132
  %91 = load i64, i64* %arrayidx133, align 8
  %xor134 = xor i64 %xor130, %91
  %92 = load i64, i64* %l, align 8
  %xor135 = xor i64 %92, %xor134
  store i64 %xor135, i64* %l, align 8
  %93 = load i64, i64* %l, align 8
  %94 = load i32, i32* %i, align 4
  %add136 = add nsw i32 %94, 6
  %idxprom137 = sext i32 %add136 to i64
  %95 = load i64*, i64** %s, align 8
  %arrayidx138 = getelementptr inbounds i64, i64* %95, i64 %idxprom137
  %96 = load i64, i64* %arrayidx138, align 8
  %xor139 = xor i64 %93, %96
  store i64 %xor139, i64* %u, align 8
  %97 = load i64, i64* %l, align 8
  %98 = load i32, i32* %i, align 4
  %add140 = add nsw i32 %98, 6
  %add141 = add nsw i32 %add140, 1
  %idxprom142 = sext i32 %add141 to i64
  %99 = load i64*, i64** %s, align 8
  %arrayidx143 = getelementptr inbounds i64, i64* %99, i64 %idxprom142
  %100 = load i64, i64* %arrayidx143, align 8
  %xor144 = xor i64 %97, %100
  store i64 %xor144, i64* %t, align 8
  %101 = load i64, i64* %t, align 8
  %shr145 = lshr i64 %101, 4
  %102 = load i64, i64* %t, align 8
  %shl146 = shl i64 %102, 28
  %add147 = add i64 %shr145, %shl146
  store i64 %add147, i64* %t, align 8
  %103 = load i64, i64* %u, align 8
  %shr148 = lshr i64 %103, 2
  %and149 = and i64 %shr148, 63
  %arrayidx150 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and149
  %104 = load i64, i64* %arrayidx150, align 8
  %105 = load i64, i64* %u, align 8
  %shr151 = lshr i64 %105, 10
  %and152 = and i64 %shr151, 63
  %arrayidx153 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and152
  %106 = load i64, i64* %arrayidx153, align 8
  %xor154 = xor i64 %104, %106
  %107 = load i64, i64* %u, align 8
  %shr155 = lshr i64 %107, 18
  %and156 = and i64 %shr155, 63
  %arrayidx157 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and156
  %108 = load i64, i64* %arrayidx157, align 8
  %xor158 = xor i64 %xor154, %108
  %109 = load i64, i64* %u, align 8
  %shr159 = lshr i64 %109, 26
  %and160 = and i64 %shr159, 63
  %arrayidx161 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and160
  %110 = load i64, i64* %arrayidx161, align 8
  %xor162 = xor i64 %xor158, %110
  %111 = load i64, i64* %t, align 8
  %shr163 = lshr i64 %111, 2
  %and164 = and i64 %shr163, 63
  %arrayidx165 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and164
  %112 = load i64, i64* %arrayidx165, align 8
  %xor166 = xor i64 %xor162, %112
  %113 = load i64, i64* %t, align 8
  %shr167 = lshr i64 %113, 10
  %and168 = and i64 %shr167, 63
  %arrayidx169 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and168
  %114 = load i64, i64* %arrayidx169, align 8
  %xor170 = xor i64 %xor166, %114
  %115 = load i64, i64* %t, align 8
  %shr171 = lshr i64 %115, 18
  %and172 = and i64 %shr171, 63
  %arrayidx173 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and172
  %116 = load i64, i64* %arrayidx173, align 8
  %xor174 = xor i64 %xor170, %116
  %117 = load i64, i64* %t, align 8
  %shr175 = lshr i64 %117, 26
  %and176 = and i64 %shr175, 63
  %arrayidx177 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and176
  %118 = load i64, i64* %arrayidx177, align 8
  %xor178 = xor i64 %xor174, %118
  %119 = load i64, i64* %r, align 8
  %xor179 = xor i64 %119, %xor178
  store i64 %xor179, i64* %r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %120 = load i32, i32* %i, align 4
  %add180 = add nsw i32 %120, 8
  store i32 %add180, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 30, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.359, %if.else
  %121 = load i32, i32* %i, align 4
  %cmp182 = icmp sgt i32 %121, 0
  br i1 %cmp182, label %for.body.183, label %for.end.361

for.body.183:                                     ; preds = %for.cond.181
  %122 = load i64, i64* %r, align 8
  %123 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %123, 0
  %idxprom184 = sext i32 %sub to i64
  %124 = load i64*, i64** %s, align 8
  %arrayidx185 = getelementptr inbounds i64, i64* %124, i64 %idxprom184
  %125 = load i64, i64* %arrayidx185, align 8
  %xor186 = xor i64 %122, %125
  store i64 %xor186, i64* %u, align 8
  %126 = load i64, i64* %r, align 8
  %127 = load i32, i32* %i, align 4
  %sub187 = sub nsw i32 %127, 0
  %add188 = add nsw i32 %sub187, 1
  %idxprom189 = sext i32 %add188 to i64
  %128 = load i64*, i64** %s, align 8
  %arrayidx190 = getelementptr inbounds i64, i64* %128, i64 %idxprom189
  %129 = load i64, i64* %arrayidx190, align 8
  %xor191 = xor i64 %126, %129
  store i64 %xor191, i64* %t, align 8
  %130 = load i64, i64* %t, align 8
  %shr192 = lshr i64 %130, 4
  %131 = load i64, i64* %t, align 8
  %shl193 = shl i64 %131, 28
  %add194 = add i64 %shr192, %shl193
  store i64 %add194, i64* %t, align 8
  %132 = load i64, i64* %u, align 8
  %shr195 = lshr i64 %132, 2
  %and196 = and i64 %shr195, 63
  %arrayidx197 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and196
  %133 = load i64, i64* %arrayidx197, align 8
  %134 = load i64, i64* %u, align 8
  %shr198 = lshr i64 %134, 10
  %and199 = and i64 %shr198, 63
  %arrayidx200 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and199
  %135 = load i64, i64* %arrayidx200, align 8
  %xor201 = xor i64 %133, %135
  %136 = load i64, i64* %u, align 8
  %shr202 = lshr i64 %136, 18
  %and203 = and i64 %shr202, 63
  %arrayidx204 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and203
  %137 = load i64, i64* %arrayidx204, align 8
  %xor205 = xor i64 %xor201, %137
  %138 = load i64, i64* %u, align 8
  %shr206 = lshr i64 %138, 26
  %and207 = and i64 %shr206, 63
  %arrayidx208 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and207
  %139 = load i64, i64* %arrayidx208, align 8
  %xor209 = xor i64 %xor205, %139
  %140 = load i64, i64* %t, align 8
  %shr210 = lshr i64 %140, 2
  %and211 = and i64 %shr210, 63
  %arrayidx212 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and211
  %141 = load i64, i64* %arrayidx212, align 8
  %xor213 = xor i64 %xor209, %141
  %142 = load i64, i64* %t, align 8
  %shr214 = lshr i64 %142, 10
  %and215 = and i64 %shr214, 63
  %arrayidx216 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and215
  %143 = load i64, i64* %arrayidx216, align 8
  %xor217 = xor i64 %xor213, %143
  %144 = load i64, i64* %t, align 8
  %shr218 = lshr i64 %144, 18
  %and219 = and i64 %shr218, 63
  %arrayidx220 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and219
  %145 = load i64, i64* %arrayidx220, align 8
  %xor221 = xor i64 %xor217, %145
  %146 = load i64, i64* %t, align 8
  %shr222 = lshr i64 %146, 26
  %and223 = and i64 %shr222, 63
  %arrayidx224 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and223
  %147 = load i64, i64* %arrayidx224, align 8
  %xor225 = xor i64 %xor221, %147
  %148 = load i64, i64* %l, align 8
  %xor226 = xor i64 %148, %xor225
  store i64 %xor226, i64* %l, align 8
  %149 = load i64, i64* %l, align 8
  %150 = load i32, i32* %i, align 4
  %sub227 = sub nsw i32 %150, 2
  %idxprom228 = sext i32 %sub227 to i64
  %151 = load i64*, i64** %s, align 8
  %arrayidx229 = getelementptr inbounds i64, i64* %151, i64 %idxprom228
  %152 = load i64, i64* %arrayidx229, align 8
  %xor230 = xor i64 %149, %152
  store i64 %xor230, i64* %u, align 8
  %153 = load i64, i64* %l, align 8
  %154 = load i32, i32* %i, align 4
  %sub231 = sub nsw i32 %154, 2
  %add232 = add nsw i32 %sub231, 1
  %idxprom233 = sext i32 %add232 to i64
  %155 = load i64*, i64** %s, align 8
  %arrayidx234 = getelementptr inbounds i64, i64* %155, i64 %idxprom233
  %156 = load i64, i64* %arrayidx234, align 8
  %xor235 = xor i64 %153, %156
  store i64 %xor235, i64* %t, align 8
  %157 = load i64, i64* %t, align 8
  %shr236 = lshr i64 %157, 4
  %158 = load i64, i64* %t, align 8
  %shl237 = shl i64 %158, 28
  %add238 = add i64 %shr236, %shl237
  store i64 %add238, i64* %t, align 8
  %159 = load i64, i64* %u, align 8
  %shr239 = lshr i64 %159, 2
  %and240 = and i64 %shr239, 63
  %arrayidx241 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and240
  %160 = load i64, i64* %arrayidx241, align 8
  %161 = load i64, i64* %u, align 8
  %shr242 = lshr i64 %161, 10
  %and243 = and i64 %shr242, 63
  %arrayidx244 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and243
  %162 = load i64, i64* %arrayidx244, align 8
  %xor245 = xor i64 %160, %162
  %163 = load i64, i64* %u, align 8
  %shr246 = lshr i64 %163, 18
  %and247 = and i64 %shr246, 63
  %arrayidx248 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and247
  %164 = load i64, i64* %arrayidx248, align 8
  %xor249 = xor i64 %xor245, %164
  %165 = load i64, i64* %u, align 8
  %shr250 = lshr i64 %165, 26
  %and251 = and i64 %shr250, 63
  %arrayidx252 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and251
  %166 = load i64, i64* %arrayidx252, align 8
  %xor253 = xor i64 %xor249, %166
  %167 = load i64, i64* %t, align 8
  %shr254 = lshr i64 %167, 2
  %and255 = and i64 %shr254, 63
  %arrayidx256 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and255
  %168 = load i64, i64* %arrayidx256, align 8
  %xor257 = xor i64 %xor253, %168
  %169 = load i64, i64* %t, align 8
  %shr258 = lshr i64 %169, 10
  %and259 = and i64 %shr258, 63
  %arrayidx260 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and259
  %170 = load i64, i64* %arrayidx260, align 8
  %xor261 = xor i64 %xor257, %170
  %171 = load i64, i64* %t, align 8
  %shr262 = lshr i64 %171, 18
  %and263 = and i64 %shr262, 63
  %arrayidx264 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and263
  %172 = load i64, i64* %arrayidx264, align 8
  %xor265 = xor i64 %xor261, %172
  %173 = load i64, i64* %t, align 8
  %shr266 = lshr i64 %173, 26
  %and267 = and i64 %shr266, 63
  %arrayidx268 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and267
  %174 = load i64, i64* %arrayidx268, align 8
  %xor269 = xor i64 %xor265, %174
  %175 = load i64, i64* %r, align 8
  %xor270 = xor i64 %175, %xor269
  store i64 %xor270, i64* %r, align 8
  %176 = load i64, i64* %r, align 8
  %177 = load i32, i32* %i, align 4
  %sub271 = sub nsw i32 %177, 4
  %idxprom272 = sext i32 %sub271 to i64
  %178 = load i64*, i64** %s, align 8
  %arrayidx273 = getelementptr inbounds i64, i64* %178, i64 %idxprom272
  %179 = load i64, i64* %arrayidx273, align 8
  %xor274 = xor i64 %176, %179
  store i64 %xor274, i64* %u, align 8
  %180 = load i64, i64* %r, align 8
  %181 = load i32, i32* %i, align 4
  %sub275 = sub nsw i32 %181, 4
  %add276 = add nsw i32 %sub275, 1
  %idxprom277 = sext i32 %add276 to i64
  %182 = load i64*, i64** %s, align 8
  %arrayidx278 = getelementptr inbounds i64, i64* %182, i64 %idxprom277
  %183 = load i64, i64* %arrayidx278, align 8
  %xor279 = xor i64 %180, %183
  store i64 %xor279, i64* %t, align 8
  %184 = load i64, i64* %t, align 8
  %shr280 = lshr i64 %184, 4
  %185 = load i64, i64* %t, align 8
  %shl281 = shl i64 %185, 28
  %add282 = add i64 %shr280, %shl281
  store i64 %add282, i64* %t, align 8
  %186 = load i64, i64* %u, align 8
  %shr283 = lshr i64 %186, 2
  %and284 = and i64 %shr283, 63
  %arrayidx285 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and284
  %187 = load i64, i64* %arrayidx285, align 8
  %188 = load i64, i64* %u, align 8
  %shr286 = lshr i64 %188, 10
  %and287 = and i64 %shr286, 63
  %arrayidx288 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and287
  %189 = load i64, i64* %arrayidx288, align 8
  %xor289 = xor i64 %187, %189
  %190 = load i64, i64* %u, align 8
  %shr290 = lshr i64 %190, 18
  %and291 = and i64 %shr290, 63
  %arrayidx292 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and291
  %191 = load i64, i64* %arrayidx292, align 8
  %xor293 = xor i64 %xor289, %191
  %192 = load i64, i64* %u, align 8
  %shr294 = lshr i64 %192, 26
  %and295 = and i64 %shr294, 63
  %arrayidx296 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and295
  %193 = load i64, i64* %arrayidx296, align 8
  %xor297 = xor i64 %xor293, %193
  %194 = load i64, i64* %t, align 8
  %shr298 = lshr i64 %194, 2
  %and299 = and i64 %shr298, 63
  %arrayidx300 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and299
  %195 = load i64, i64* %arrayidx300, align 8
  %xor301 = xor i64 %xor297, %195
  %196 = load i64, i64* %t, align 8
  %shr302 = lshr i64 %196, 10
  %and303 = and i64 %shr302, 63
  %arrayidx304 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and303
  %197 = load i64, i64* %arrayidx304, align 8
  %xor305 = xor i64 %xor301, %197
  %198 = load i64, i64* %t, align 8
  %shr306 = lshr i64 %198, 18
  %and307 = and i64 %shr306, 63
  %arrayidx308 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and307
  %199 = load i64, i64* %arrayidx308, align 8
  %xor309 = xor i64 %xor305, %199
  %200 = load i64, i64* %t, align 8
  %shr310 = lshr i64 %200, 26
  %and311 = and i64 %shr310, 63
  %arrayidx312 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and311
  %201 = load i64, i64* %arrayidx312, align 8
  %xor313 = xor i64 %xor309, %201
  %202 = load i64, i64* %l, align 8
  %xor314 = xor i64 %202, %xor313
  store i64 %xor314, i64* %l, align 8
  %203 = load i64, i64* %l, align 8
  %204 = load i32, i32* %i, align 4
  %sub315 = sub nsw i32 %204, 6
  %idxprom316 = sext i32 %sub315 to i64
  %205 = load i64*, i64** %s, align 8
  %arrayidx317 = getelementptr inbounds i64, i64* %205, i64 %idxprom316
  %206 = load i64, i64* %arrayidx317, align 8
  %xor318 = xor i64 %203, %206
  store i64 %xor318, i64* %u, align 8
  %207 = load i64, i64* %l, align 8
  %208 = load i32, i32* %i, align 4
  %sub319 = sub nsw i32 %208, 6
  %add320 = add nsw i32 %sub319, 1
  %idxprom321 = sext i32 %add320 to i64
  %209 = load i64*, i64** %s, align 8
  %arrayidx322 = getelementptr inbounds i64, i64* %209, i64 %idxprom321
  %210 = load i64, i64* %arrayidx322, align 8
  %xor323 = xor i64 %207, %210
  store i64 %xor323, i64* %t, align 8
  %211 = load i64, i64* %t, align 8
  %shr324 = lshr i64 %211, 4
  %212 = load i64, i64* %t, align 8
  %shl325 = shl i64 %212, 28
  %add326 = add i64 %shr324, %shl325
  store i64 %add326, i64* %t, align 8
  %213 = load i64, i64* %u, align 8
  %shr327 = lshr i64 %213, 2
  %and328 = and i64 %shr327, 63
  %arrayidx329 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 0), i32 0, i64 %and328
  %214 = load i64, i64* %arrayidx329, align 8
  %215 = load i64, i64* %u, align 8
  %shr330 = lshr i64 %215, 10
  %and331 = and i64 %shr330, 63
  %arrayidx332 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 2), i32 0, i64 %and331
  %216 = load i64, i64* %arrayidx332, align 8
  %xor333 = xor i64 %214, %216
  %217 = load i64, i64* %u, align 8
  %shr334 = lshr i64 %217, 18
  %and335 = and i64 %shr334, 63
  %arrayidx336 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 4), i32 0, i64 %and335
  %218 = load i64, i64* %arrayidx336, align 8
  %xor337 = xor i64 %xor333, %218
  %219 = load i64, i64* %u, align 8
  %shr338 = lshr i64 %219, 26
  %and339 = and i64 %shr338, 63
  %arrayidx340 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 6), i32 0, i64 %and339
  %220 = load i64, i64* %arrayidx340, align 8
  %xor341 = xor i64 %xor337, %220
  %221 = load i64, i64* %t, align 8
  %shr342 = lshr i64 %221, 2
  %and343 = and i64 %shr342, 63
  %arrayidx344 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 1), i32 0, i64 %and343
  %222 = load i64, i64* %arrayidx344, align 8
  %xor345 = xor i64 %xor341, %222
  %223 = load i64, i64* %t, align 8
  %shr346 = lshr i64 %223, 10
  %and347 = and i64 %shr346, 63
  %arrayidx348 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 3), i32 0, i64 %and347
  %224 = load i64, i64* %arrayidx348, align 8
  %xor349 = xor i64 %xor345, %224
  %225 = load i64, i64* %t, align 8
  %shr350 = lshr i64 %225, 18
  %and351 = and i64 %shr350, 63
  %arrayidx352 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 5), i32 0, i64 %and351
  %226 = load i64, i64* %arrayidx352, align 8
  %xor353 = xor i64 %xor349, %226
  %227 = load i64, i64* %t, align 8
  %shr354 = lshr i64 %227, 26
  %and355 = and i64 %shr354, 63
  %arrayidx356 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i32 0, i64 7), i32 0, i64 %and355
  %228 = load i64, i64* %arrayidx356, align 8
  %xor357 = xor i64 %xor353, %228
  %229 = load i64, i64* %r, align 8
  %xor358 = xor i64 %229, %xor357
  store i64 %xor358, i64* %r, align 8
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.body.183
  %230 = load i32, i32* %i, align 4
  %sub360 = sub nsw i32 %230, 8
  store i32 %sub360, i32* %i, align 4
  br label %for.cond.181

for.end.361:                                      ; preds = %for.cond.181
  br label %if.end

if.end:                                           ; preds = %for.end.361, %for.end
  %231 = load i64, i64* %l, align 8
  %shr362 = lshr i64 %231, 3
  %232 = load i64, i64* %l, align 8
  %shl363 = shl i64 %232, 29
  %add364 = add i64 %shr362, %shl363
  %and365 = and i64 %add364, 4294967295
  %233 = load i64*, i64** %data.addr, align 8
  %arrayidx366 = getelementptr inbounds i64, i64* %233, i64 0
  store i64 %and365, i64* %arrayidx366, align 8
  %234 = load i64, i64* %r, align 8
  %shr367 = lshr i64 %234, 3
  %235 = load i64, i64* %r, align 8
  %shl368 = shl i64 %235, 29
  %add369 = add i64 %shr367, %shl368
  %and370 = and i64 %add369, 4294967295
  %236 = load i64*, i64** %data.addr, align 8
  %arrayidx371 = getelementptr inbounds i64, i64* %236, i64 1
  store i64 %and370, i64* %arrayidx371, align 8
  store i64 0, i64* %u, align 8
  store i64 0, i64* %t, align 8
  store i64 0, i64* %r, align 8
  store i64 0, i64* %l, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @des_encrypt3(i64* %data, %struct.des_ks_struct* %ks1, %struct.des_ks_struct* %ks2, %struct.des_ks_struct* %ks3) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %ks1.addr = alloca %struct.des_ks_struct*, align 8
  %ks2.addr = alloca %struct.des_ks_struct*, align 8
  %ks3.addr = alloca %struct.des_ks_struct*, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %tt = alloca i64, align 8
  %tt32 = alloca i64, align 8
  store i64* %data, i64** %data.addr, align 8
  store %struct.des_ks_struct* %ks1, %struct.des_ks_struct** %ks1.addr, align 8
  store %struct.des_ks_struct* %ks2, %struct.des_ks_struct** %ks2.addr, align 8
  store %struct.des_ks_struct* %ks3, %struct.des_ks_struct** %ks3.addr, align 8
  %0 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %l, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %r, align 8
  %4 = load i64, i64* %r, align 8
  %shr = lshr i64 %4, 4
  %5 = load i64, i64* %l, align 8
  %xor = xor i64 %shr, %5
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %tt, align 8
  %6 = load i64, i64* %tt, align 8
  %7 = load i64, i64* %l, align 8
  %xor2 = xor i64 %7, %6
  store i64 %xor2, i64* %l, align 8
  %8 = load i64, i64* %tt, align 8
  %shl = shl i64 %8, 4
  %9 = load i64, i64* %r, align 8
  %xor3 = xor i64 %9, %shl
  store i64 %xor3, i64* %r, align 8
  %10 = load i64, i64* %l, align 8
  %shr4 = lshr i64 %10, 16
  %11 = load i64, i64* %r, align 8
  %xor5 = xor i64 %shr4, %11
  %and6 = and i64 %xor5, 65535
  store i64 %and6, i64* %tt, align 8
  %12 = load i64, i64* %tt, align 8
  %13 = load i64, i64* %r, align 8
  %xor7 = xor i64 %13, %12
  store i64 %xor7, i64* %r, align 8
  %14 = load i64, i64* %tt, align 8
  %shl8 = shl i64 %14, 16
  %15 = load i64, i64* %l, align 8
  %xor9 = xor i64 %15, %shl8
  store i64 %xor9, i64* %l, align 8
  %16 = load i64, i64* %r, align 8
  %shr10 = lshr i64 %16, 2
  %17 = load i64, i64* %l, align 8
  %xor11 = xor i64 %shr10, %17
  %and12 = and i64 %xor11, 858993459
  store i64 %and12, i64* %tt, align 8
  %18 = load i64, i64* %tt, align 8
  %19 = load i64, i64* %l, align 8
  %xor13 = xor i64 %19, %18
  store i64 %xor13, i64* %l, align 8
  %20 = load i64, i64* %tt, align 8
  %shl14 = shl i64 %20, 2
  %21 = load i64, i64* %r, align 8
  %xor15 = xor i64 %21, %shl14
  store i64 %xor15, i64* %r, align 8
  %22 = load i64, i64* %l, align 8
  %shr16 = lshr i64 %22, 8
  %23 = load i64, i64* %r, align 8
  %xor17 = xor i64 %shr16, %23
  %and18 = and i64 %xor17, 16711935
  store i64 %and18, i64* %tt, align 8
  %24 = load i64, i64* %tt, align 8
  %25 = load i64, i64* %r, align 8
  %xor19 = xor i64 %25, %24
  store i64 %xor19, i64* %r, align 8
  %26 = load i64, i64* %tt, align 8
  %shl20 = shl i64 %26, 8
  %27 = load i64, i64* %l, align 8
  %xor21 = xor i64 %27, %shl20
  store i64 %xor21, i64* %l, align 8
  %28 = load i64, i64* %r, align 8
  %shr22 = lshr i64 %28, 1
  %29 = load i64, i64* %l, align 8
  %xor23 = xor i64 %shr22, %29
  %and24 = and i64 %xor23, 1431655765
  store i64 %and24, i64* %tt, align 8
  %30 = load i64, i64* %tt, align 8
  %31 = load i64, i64* %l, align 8
  %xor25 = xor i64 %31, %30
  store i64 %xor25, i64* %l, align 8
  %32 = load i64, i64* %tt, align 8
  %shl26 = shl i64 %32, 1
  %33 = load i64, i64* %r, align 8
  %xor27 = xor i64 %33, %shl26
  store i64 %xor27, i64* %r, align 8
  %34 = load i64, i64* %l, align 8
  %35 = load i64*, i64** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %arrayidx28, align 8
  %36 = load i64, i64* %r, align 8
  %37 = load i64*, i64** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %36, i64* %arrayidx29, align 8
  %38 = load i64*, i64** %data.addr, align 8
  %39 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks1.addr, align 8
  call void @des_encrypt2(i64* %38, %struct.des_ks_struct* %39, i32 1)
  %40 = load i64*, i64** %data.addr, align 8
  %41 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks2.addr, align 8
  call void @des_encrypt2(i64* %40, %struct.des_ks_struct* %41, i32 0)
  %42 = load i64*, i64** %data.addr, align 8
  %43 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks3.addr, align 8
  call void @des_encrypt2(i64* %42, %struct.des_ks_struct* %43, i32 1)
  %44 = load i64*, i64** %data.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %44, i64 0
  %45 = load i64, i64* %arrayidx30, align 8
  store i64 %45, i64* %l, align 8
  %46 = load i64*, i64** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %46, i64 1
  %47 = load i64, i64* %arrayidx31, align 8
  store i64 %47, i64* %r, align 8
  %48 = load i64, i64* %r, align 8
  %shr33 = lshr i64 %48, 1
  %49 = load i64, i64* %l, align 8
  %xor34 = xor i64 %shr33, %49
  %and35 = and i64 %xor34, 1431655765
  store i64 %and35, i64* %tt32, align 8
  %50 = load i64, i64* %tt32, align 8
  %51 = load i64, i64* %l, align 8
  %xor36 = xor i64 %51, %50
  store i64 %xor36, i64* %l, align 8
  %52 = load i64, i64* %tt32, align 8
  %shl37 = shl i64 %52, 1
  %53 = load i64, i64* %r, align 8
  %xor38 = xor i64 %53, %shl37
  store i64 %xor38, i64* %r, align 8
  %54 = load i64, i64* %l, align 8
  %shr39 = lshr i64 %54, 8
  %55 = load i64, i64* %r, align 8
  %xor40 = xor i64 %shr39, %55
  %and41 = and i64 %xor40, 16711935
  store i64 %and41, i64* %tt32, align 8
  %56 = load i64, i64* %tt32, align 8
  %57 = load i64, i64* %r, align 8
  %xor42 = xor i64 %57, %56
  store i64 %xor42, i64* %r, align 8
  %58 = load i64, i64* %tt32, align 8
  %shl43 = shl i64 %58, 8
  %59 = load i64, i64* %l, align 8
  %xor44 = xor i64 %59, %shl43
  store i64 %xor44, i64* %l, align 8
  %60 = load i64, i64* %r, align 8
  %shr45 = lshr i64 %60, 2
  %61 = load i64, i64* %l, align 8
  %xor46 = xor i64 %shr45, %61
  %and47 = and i64 %xor46, 858993459
  store i64 %and47, i64* %tt32, align 8
  %62 = load i64, i64* %tt32, align 8
  %63 = load i64, i64* %l, align 8
  %xor48 = xor i64 %63, %62
  store i64 %xor48, i64* %l, align 8
  %64 = load i64, i64* %tt32, align 8
  %shl49 = shl i64 %64, 2
  %65 = load i64, i64* %r, align 8
  %xor50 = xor i64 %65, %shl49
  store i64 %xor50, i64* %r, align 8
  %66 = load i64, i64* %l, align 8
  %shr51 = lshr i64 %66, 16
  %67 = load i64, i64* %r, align 8
  %xor52 = xor i64 %shr51, %67
  %and53 = and i64 %xor52, 65535
  store i64 %and53, i64* %tt32, align 8
  %68 = load i64, i64* %tt32, align 8
  %69 = load i64, i64* %r, align 8
  %xor54 = xor i64 %69, %68
  store i64 %xor54, i64* %r, align 8
  %70 = load i64, i64* %tt32, align 8
  %shl55 = shl i64 %70, 16
  %71 = load i64, i64* %l, align 8
  %xor56 = xor i64 %71, %shl55
  store i64 %xor56, i64* %l, align 8
  %72 = load i64, i64* %r, align 8
  %shr57 = lshr i64 %72, 4
  %73 = load i64, i64* %l, align 8
  %xor58 = xor i64 %shr57, %73
  %and59 = and i64 %xor58, 252645135
  store i64 %and59, i64* %tt32, align 8
  %74 = load i64, i64* %tt32, align 8
  %75 = load i64, i64* %l, align 8
  %xor60 = xor i64 %75, %74
  store i64 %xor60, i64* %l, align 8
  %76 = load i64, i64* %tt32, align 8
  %shl61 = shl i64 %76, 4
  %77 = load i64, i64* %r, align 8
  %xor62 = xor i64 %77, %shl61
  store i64 %xor62, i64* %r, align 8
  %78 = load i64, i64* %l, align 8
  %79 = load i64*, i64** %data.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %78, i64* %arrayidx63, align 8
  %80 = load i64, i64* %r, align 8
  %81 = load i64*, i64** %data.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 %80, i64* %arrayidx64, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @des_decrypt3(i64* %data, %struct.des_ks_struct* %ks1, %struct.des_ks_struct* %ks2, %struct.des_ks_struct* %ks3) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %ks1.addr = alloca %struct.des_ks_struct*, align 8
  %ks2.addr = alloca %struct.des_ks_struct*, align 8
  %ks3.addr = alloca %struct.des_ks_struct*, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %tt = alloca i64, align 8
  %tt32 = alloca i64, align 8
  store i64* %data, i64** %data.addr, align 8
  store %struct.des_ks_struct* %ks1, %struct.des_ks_struct** %ks1.addr, align 8
  store %struct.des_ks_struct* %ks2, %struct.des_ks_struct** %ks2.addr, align 8
  store %struct.des_ks_struct* %ks3, %struct.des_ks_struct** %ks3.addr, align 8
  %0 = load i64*, i64** %data.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %l, align 8
  %2 = load i64*, i64** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %r, align 8
  %4 = load i64, i64* %r, align 8
  %shr = lshr i64 %4, 4
  %5 = load i64, i64* %l, align 8
  %xor = xor i64 %shr, %5
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %tt, align 8
  %6 = load i64, i64* %tt, align 8
  %7 = load i64, i64* %l, align 8
  %xor2 = xor i64 %7, %6
  store i64 %xor2, i64* %l, align 8
  %8 = load i64, i64* %tt, align 8
  %shl = shl i64 %8, 4
  %9 = load i64, i64* %r, align 8
  %xor3 = xor i64 %9, %shl
  store i64 %xor3, i64* %r, align 8
  %10 = load i64, i64* %l, align 8
  %shr4 = lshr i64 %10, 16
  %11 = load i64, i64* %r, align 8
  %xor5 = xor i64 %shr4, %11
  %and6 = and i64 %xor5, 65535
  store i64 %and6, i64* %tt, align 8
  %12 = load i64, i64* %tt, align 8
  %13 = load i64, i64* %r, align 8
  %xor7 = xor i64 %13, %12
  store i64 %xor7, i64* %r, align 8
  %14 = load i64, i64* %tt, align 8
  %shl8 = shl i64 %14, 16
  %15 = load i64, i64* %l, align 8
  %xor9 = xor i64 %15, %shl8
  store i64 %xor9, i64* %l, align 8
  %16 = load i64, i64* %r, align 8
  %shr10 = lshr i64 %16, 2
  %17 = load i64, i64* %l, align 8
  %xor11 = xor i64 %shr10, %17
  %and12 = and i64 %xor11, 858993459
  store i64 %and12, i64* %tt, align 8
  %18 = load i64, i64* %tt, align 8
  %19 = load i64, i64* %l, align 8
  %xor13 = xor i64 %19, %18
  store i64 %xor13, i64* %l, align 8
  %20 = load i64, i64* %tt, align 8
  %shl14 = shl i64 %20, 2
  %21 = load i64, i64* %r, align 8
  %xor15 = xor i64 %21, %shl14
  store i64 %xor15, i64* %r, align 8
  %22 = load i64, i64* %l, align 8
  %shr16 = lshr i64 %22, 8
  %23 = load i64, i64* %r, align 8
  %xor17 = xor i64 %shr16, %23
  %and18 = and i64 %xor17, 16711935
  store i64 %and18, i64* %tt, align 8
  %24 = load i64, i64* %tt, align 8
  %25 = load i64, i64* %r, align 8
  %xor19 = xor i64 %25, %24
  store i64 %xor19, i64* %r, align 8
  %26 = load i64, i64* %tt, align 8
  %shl20 = shl i64 %26, 8
  %27 = load i64, i64* %l, align 8
  %xor21 = xor i64 %27, %shl20
  store i64 %xor21, i64* %l, align 8
  %28 = load i64, i64* %r, align 8
  %shr22 = lshr i64 %28, 1
  %29 = load i64, i64* %l, align 8
  %xor23 = xor i64 %shr22, %29
  %and24 = and i64 %xor23, 1431655765
  store i64 %and24, i64* %tt, align 8
  %30 = load i64, i64* %tt, align 8
  %31 = load i64, i64* %l, align 8
  %xor25 = xor i64 %31, %30
  store i64 %xor25, i64* %l, align 8
  %32 = load i64, i64* %tt, align 8
  %shl26 = shl i64 %32, 1
  %33 = load i64, i64* %r, align 8
  %xor27 = xor i64 %33, %shl26
  store i64 %xor27, i64* %r, align 8
  %34 = load i64, i64* %l, align 8
  %35 = load i64*, i64** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %arrayidx28, align 8
  %36 = load i64, i64* %r, align 8
  %37 = load i64*, i64** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %36, i64* %arrayidx29, align 8
  %38 = load i64*, i64** %data.addr, align 8
  %39 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks3.addr, align 8
  call void @des_encrypt2(i64* %38, %struct.des_ks_struct* %39, i32 0)
  %40 = load i64*, i64** %data.addr, align 8
  %41 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks2.addr, align 8
  call void @des_encrypt2(i64* %40, %struct.des_ks_struct* %41, i32 1)
  %42 = load i64*, i64** %data.addr, align 8
  %43 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks1.addr, align 8
  call void @des_encrypt2(i64* %42, %struct.des_ks_struct* %43, i32 0)
  %44 = load i64*, i64** %data.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %44, i64 0
  %45 = load i64, i64* %arrayidx30, align 8
  store i64 %45, i64* %l, align 8
  %46 = load i64*, i64** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %46, i64 1
  %47 = load i64, i64* %arrayidx31, align 8
  store i64 %47, i64* %r, align 8
  %48 = load i64, i64* %r, align 8
  %shr33 = lshr i64 %48, 1
  %49 = load i64, i64* %l, align 8
  %xor34 = xor i64 %shr33, %49
  %and35 = and i64 %xor34, 1431655765
  store i64 %and35, i64* %tt32, align 8
  %50 = load i64, i64* %tt32, align 8
  %51 = load i64, i64* %l, align 8
  %xor36 = xor i64 %51, %50
  store i64 %xor36, i64* %l, align 8
  %52 = load i64, i64* %tt32, align 8
  %shl37 = shl i64 %52, 1
  %53 = load i64, i64* %r, align 8
  %xor38 = xor i64 %53, %shl37
  store i64 %xor38, i64* %r, align 8
  %54 = load i64, i64* %l, align 8
  %shr39 = lshr i64 %54, 8
  %55 = load i64, i64* %r, align 8
  %xor40 = xor i64 %shr39, %55
  %and41 = and i64 %xor40, 16711935
  store i64 %and41, i64* %tt32, align 8
  %56 = load i64, i64* %tt32, align 8
  %57 = load i64, i64* %r, align 8
  %xor42 = xor i64 %57, %56
  store i64 %xor42, i64* %r, align 8
  %58 = load i64, i64* %tt32, align 8
  %shl43 = shl i64 %58, 8
  %59 = load i64, i64* %l, align 8
  %xor44 = xor i64 %59, %shl43
  store i64 %xor44, i64* %l, align 8
  %60 = load i64, i64* %r, align 8
  %shr45 = lshr i64 %60, 2
  %61 = load i64, i64* %l, align 8
  %xor46 = xor i64 %shr45, %61
  %and47 = and i64 %xor46, 858993459
  store i64 %and47, i64* %tt32, align 8
  %62 = load i64, i64* %tt32, align 8
  %63 = load i64, i64* %l, align 8
  %xor48 = xor i64 %63, %62
  store i64 %xor48, i64* %l, align 8
  %64 = load i64, i64* %tt32, align 8
  %shl49 = shl i64 %64, 2
  %65 = load i64, i64* %r, align 8
  %xor50 = xor i64 %65, %shl49
  store i64 %xor50, i64* %r, align 8
  %66 = load i64, i64* %l, align 8
  %shr51 = lshr i64 %66, 16
  %67 = load i64, i64* %r, align 8
  %xor52 = xor i64 %shr51, %67
  %and53 = and i64 %xor52, 65535
  store i64 %and53, i64* %tt32, align 8
  %68 = load i64, i64* %tt32, align 8
  %69 = load i64, i64* %r, align 8
  %xor54 = xor i64 %69, %68
  store i64 %xor54, i64* %r, align 8
  %70 = load i64, i64* %tt32, align 8
  %shl55 = shl i64 %70, 16
  %71 = load i64, i64* %l, align 8
  %xor56 = xor i64 %71, %shl55
  store i64 %xor56, i64* %l, align 8
  %72 = load i64, i64* %r, align 8
  %shr57 = lshr i64 %72, 4
  %73 = load i64, i64* %l, align 8
  %xor58 = xor i64 %shr57, %73
  %and59 = and i64 %xor58, 252645135
  store i64 %and59, i64* %tt32, align 8
  %74 = load i64, i64* %tt32, align 8
  %75 = load i64, i64* %l, align 8
  %xor60 = xor i64 %75, %74
  store i64 %xor60, i64* %l, align 8
  %76 = load i64, i64* %tt32, align 8
  %shl61 = shl i64 %76, 4
  %77 = load i64, i64* %r, align 8
  %xor62 = xor i64 %77, %shl61
  store i64 %xor62, i64* %r, align 8
  %78 = load i64, i64* %l, align 8
  %79 = load i64*, i64** %data.addr, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %78, i64* %arrayidx63, align 8
  %80 = load i64, i64* %r, align 8
  %81 = load i64*, i64** %data.addr, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 %80, i64* %arrayidx64, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
