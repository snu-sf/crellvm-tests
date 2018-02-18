; ModuleID = './MultiSource.Benchmarks.MiBench/101.consumer-jpeg.jfdctfst.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_ifast(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %tmp0 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %z1 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %z3 = alloca i32, align 4
  %z4 = alloca i32, align 4
  %z5 = alloca i32, align 4
  %z11 = alloca i32, align 4
  %z13 = alloca i32, align 4
  %dataptr = alloca i32*, align 8
  %ctr = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  store i32* %0, i32** %dataptr, align 8
  store i32 7, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %ctr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %dataptr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %dataptr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 7
  %5 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %tmp0, align 4
  %6 = load i32*, i32** %dataptr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %dataptr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 7
  %9 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %tmp7, align 4
  %10 = load i32*, i32** %dataptr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx4, align 4
  %12 = load i32*, i32** %dataptr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 6
  %13 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %11, %13
  store i32 %add6, i32* %tmp1, align 4
  %14 = load i32*, i32** %dataptr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 1
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32*, i32** %dataptr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 6
  %17 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %15, %17
  store i32 %sub9, i32* %tmp6, align 4
  %18 = load i32*, i32** %dataptr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx10, align 4
  %20 = load i32*, i32** %dataptr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 5
  %21 = load i32, i32* %arrayidx11, align 4
  %add12 = add nsw i32 %19, %21
  store i32 %add12, i32* %tmp2, align 4
  %22 = load i32*, i32** %dataptr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 2
  %23 = load i32, i32* %arrayidx13, align 4
  %24 = load i32*, i32** %dataptr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 5
  %25 = load i32, i32* %arrayidx14, align 4
  %sub15 = sub nsw i32 %23, %25
  store i32 %sub15, i32* %tmp5, align 4
  %26 = load i32*, i32** %dataptr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 3
  %27 = load i32, i32* %arrayidx16, align 4
  %28 = load i32*, i32** %dataptr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %28, i64 4
  %29 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %27, %29
  store i32 %add18, i32* %tmp3, align 4
  %30 = load i32*, i32** %dataptr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 3
  %31 = load i32, i32* %arrayidx19, align 4
  %32 = load i32*, i32** %dataptr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %32, i64 4
  %33 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %31, %33
  store i32 %sub21, i32* %tmp4, align 4
  %34 = load i32, i32* %tmp0, align 4
  %35 = load i32, i32* %tmp3, align 4
  %add22 = add nsw i32 %34, %35
  store i32 %add22, i32* %tmp10, align 4
  %36 = load i32, i32* %tmp0, align 4
  %37 = load i32, i32* %tmp3, align 4
  %sub23 = sub nsw i32 %36, %37
  store i32 %sub23, i32* %tmp13, align 4
  %38 = load i32, i32* %tmp1, align 4
  %39 = load i32, i32* %tmp2, align 4
  %add24 = add nsw i32 %38, %39
  store i32 %add24, i32* %tmp11, align 4
  %40 = load i32, i32* %tmp1, align 4
  %41 = load i32, i32* %tmp2, align 4
  %sub25 = sub nsw i32 %40, %41
  store i32 %sub25, i32* %tmp12, align 4
  %42 = load i32, i32* %tmp10, align 4
  %43 = load i32, i32* %tmp11, align 4
  %add26 = add nsw i32 %42, %43
  %44 = load i32*, i32** %dataptr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %add26, i32* %arrayidx27, align 4
  %45 = load i32, i32* %tmp10, align 4
  %46 = load i32, i32* %tmp11, align 4
  %sub28 = sub nsw i32 %45, %46
  %47 = load i32*, i32** %dataptr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %sub28, i32* %arrayidx29, align 4
  %48 = load i32, i32* %tmp12, align 4
  %49 = load i32, i32* %tmp13, align 4
  %add30 = add nsw i32 %48, %49
  %conv = sext i32 %add30 to i64
  %mul = mul nsw i64 %conv, 181
  %shr = ashr i64 %mul, 8
  %conv31 = trunc i64 %shr to i32
  store i32 %conv31, i32* %z1, align 4
  %50 = load i32, i32* %tmp13, align 4
  %51 = load i32, i32* %z1, align 4
  %add32 = add nsw i32 %50, %51
  %52 = load i32*, i32** %dataptr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %add32, i32* %arrayidx33, align 4
  %53 = load i32, i32* %tmp13, align 4
  %54 = load i32, i32* %z1, align 4
  %sub34 = sub nsw i32 %53, %54
  %55 = load i32*, i32** %dataptr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 %sub34, i32* %arrayidx35, align 4
  %56 = load i32, i32* %tmp4, align 4
  %57 = load i32, i32* %tmp5, align 4
  %add36 = add nsw i32 %56, %57
  store i32 %add36, i32* %tmp10, align 4
  %58 = load i32, i32* %tmp5, align 4
  %59 = load i32, i32* %tmp6, align 4
  %add37 = add nsw i32 %58, %59
  store i32 %add37, i32* %tmp11, align 4
  %60 = load i32, i32* %tmp6, align 4
  %61 = load i32, i32* %tmp7, align 4
  %add38 = add nsw i32 %60, %61
  store i32 %add38, i32* %tmp12, align 4
  %62 = load i32, i32* %tmp10, align 4
  %63 = load i32, i32* %tmp12, align 4
  %sub39 = sub nsw i32 %62, %63
  %conv40 = sext i32 %sub39 to i64
  %mul41 = mul nsw i64 %conv40, 98
  %shr42 = ashr i64 %mul41, 8
  %conv43 = trunc i64 %shr42 to i32
  store i32 %conv43, i32* %z5, align 4
  %64 = load i32, i32* %tmp10, align 4
  %conv44 = sext i32 %64 to i64
  %mul45 = mul nsw i64 %conv44, 139
  %shr46 = ashr i64 %mul45, 8
  %conv47 = trunc i64 %shr46 to i32
  %65 = load i32, i32* %z5, align 4
  %add48 = add nsw i32 %conv47, %65
  store i32 %add48, i32* %z2, align 4
  %66 = load i32, i32* %tmp12, align 4
  %conv49 = sext i32 %66 to i64
  %mul50 = mul nsw i64 %conv49, 334
  %shr51 = ashr i64 %mul50, 8
  %conv52 = trunc i64 %shr51 to i32
  %67 = load i32, i32* %z5, align 4
  %add53 = add nsw i32 %conv52, %67
  store i32 %add53, i32* %z4, align 4
  %68 = load i32, i32* %tmp11, align 4
  %conv54 = sext i32 %68 to i64
  %mul55 = mul nsw i64 %conv54, 181
  %shr56 = ashr i64 %mul55, 8
  %conv57 = trunc i64 %shr56 to i32
  store i32 %conv57, i32* %z3, align 4
  %69 = load i32, i32* %tmp7, align 4
  %70 = load i32, i32* %z3, align 4
  %add58 = add nsw i32 %69, %70
  store i32 %add58, i32* %z11, align 4
  %71 = load i32, i32* %tmp7, align 4
  %72 = load i32, i32* %z3, align 4
  %sub59 = sub nsw i32 %71, %72
  store i32 %sub59, i32* %z13, align 4
  %73 = load i32, i32* %z13, align 4
  %74 = load i32, i32* %z2, align 4
  %add60 = add nsw i32 %73, %74
  %75 = load i32*, i32** %dataptr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %75, i64 5
  store i32 %add60, i32* %arrayidx61, align 4
  %76 = load i32, i32* %z13, align 4
  %77 = load i32, i32* %z2, align 4
  %sub62 = sub nsw i32 %76, %77
  %78 = load i32*, i32** %dataptr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %sub62, i32* %arrayidx63, align 4
  %79 = load i32, i32* %z11, align 4
  %80 = load i32, i32* %z4, align 4
  %add64 = add nsw i32 %79, %80
  %81 = load i32*, i32** %dataptr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %add64, i32* %arrayidx65, align 4
  %82 = load i32, i32* %z11, align 4
  %83 = load i32, i32* %z4, align 4
  %sub66 = sub nsw i32 %82, %83
  %84 = load i32*, i32** %dataptr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %sub66, i32* %arrayidx67, align 4
  %85 = load i32*, i32** %dataptr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %85, i64 8
  store i32* %add.ptr, i32** %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load i32*, i32** %data.addr, align 8
  store i32* %87, i32** %dataptr, align 8
  store i32 7, i32* %ctr, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.145, %for.end
  %88 = load i32, i32* %ctr, align 4
  %cmp69 = icmp sge i32 %88, 0
  br i1 %cmp69, label %for.body.71, label %for.end.147

for.body.71:                                      ; preds = %for.cond.68
  %89 = load i32*, i32** %dataptr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %89, i64 0
  %90 = load i32, i32* %arrayidx72, align 4
  %91 = load i32*, i32** %dataptr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %91, i64 56
  %92 = load i32, i32* %arrayidx73, align 4
  %add74 = add nsw i32 %90, %92
  store i32 %add74, i32* %tmp0, align 4
  %93 = load i32*, i32** %dataptr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %93, i64 0
  %94 = load i32, i32* %arrayidx75, align 4
  %95 = load i32*, i32** %dataptr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %95, i64 56
  %96 = load i32, i32* %arrayidx76, align 4
  %sub77 = sub nsw i32 %94, %96
  store i32 %sub77, i32* %tmp7, align 4
  %97 = load i32*, i32** %dataptr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %97, i64 8
  %98 = load i32, i32* %arrayidx78, align 4
  %99 = load i32*, i32** %dataptr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %99, i64 48
  %100 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %98, %100
  store i32 %add80, i32* %tmp1, align 4
  %101 = load i32*, i32** %dataptr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %101, i64 8
  %102 = load i32, i32* %arrayidx81, align 4
  %103 = load i32*, i32** %dataptr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %103, i64 48
  %104 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %102, %104
  store i32 %sub83, i32* %tmp6, align 4
  %105 = load i32*, i32** %dataptr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %105, i64 16
  %106 = load i32, i32* %arrayidx84, align 4
  %107 = load i32*, i32** %dataptr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %107, i64 40
  %108 = load i32, i32* %arrayidx85, align 4
  %add86 = add nsw i32 %106, %108
  store i32 %add86, i32* %tmp2, align 4
  %109 = load i32*, i32** %dataptr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %109, i64 16
  %110 = load i32, i32* %arrayidx87, align 4
  %111 = load i32*, i32** %dataptr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %111, i64 40
  %112 = load i32, i32* %arrayidx88, align 4
  %sub89 = sub nsw i32 %110, %112
  store i32 %sub89, i32* %tmp5, align 4
  %113 = load i32*, i32** %dataptr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %113, i64 24
  %114 = load i32, i32* %arrayidx90, align 4
  %115 = load i32*, i32** %dataptr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %115, i64 32
  %116 = load i32, i32* %arrayidx91, align 4
  %add92 = add nsw i32 %114, %116
  store i32 %add92, i32* %tmp3, align 4
  %117 = load i32*, i32** %dataptr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %117, i64 24
  %118 = load i32, i32* %arrayidx93, align 4
  %119 = load i32*, i32** %dataptr, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %119, i64 32
  %120 = load i32, i32* %arrayidx94, align 4
  %sub95 = sub nsw i32 %118, %120
  store i32 %sub95, i32* %tmp4, align 4
  %121 = load i32, i32* %tmp0, align 4
  %122 = load i32, i32* %tmp3, align 4
  %add96 = add nsw i32 %121, %122
  store i32 %add96, i32* %tmp10, align 4
  %123 = load i32, i32* %tmp0, align 4
  %124 = load i32, i32* %tmp3, align 4
  %sub97 = sub nsw i32 %123, %124
  store i32 %sub97, i32* %tmp13, align 4
  %125 = load i32, i32* %tmp1, align 4
  %126 = load i32, i32* %tmp2, align 4
  %add98 = add nsw i32 %125, %126
  store i32 %add98, i32* %tmp11, align 4
  %127 = load i32, i32* %tmp1, align 4
  %128 = load i32, i32* %tmp2, align 4
  %sub99 = sub nsw i32 %127, %128
  store i32 %sub99, i32* %tmp12, align 4
  %129 = load i32, i32* %tmp10, align 4
  %130 = load i32, i32* %tmp11, align 4
  %add100 = add nsw i32 %129, %130
  %131 = load i32*, i32** %dataptr, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %add100, i32* %arrayidx101, align 4
  %132 = load i32, i32* %tmp10, align 4
  %133 = load i32, i32* %tmp11, align 4
  %sub102 = sub nsw i32 %132, %133
  %134 = load i32*, i32** %dataptr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %134, i64 32
  store i32 %sub102, i32* %arrayidx103, align 4
  %135 = load i32, i32* %tmp12, align 4
  %136 = load i32, i32* %tmp13, align 4
  %add104 = add nsw i32 %135, %136
  %conv105 = sext i32 %add104 to i64
  %mul106 = mul nsw i64 %conv105, 181
  %shr107 = ashr i64 %mul106, 8
  %conv108 = trunc i64 %shr107 to i32
  store i32 %conv108, i32* %z1, align 4
  %137 = load i32, i32* %tmp13, align 4
  %138 = load i32, i32* %z1, align 4
  %add109 = add nsw i32 %137, %138
  %139 = load i32*, i32** %dataptr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %139, i64 16
  store i32 %add109, i32* %arrayidx110, align 4
  %140 = load i32, i32* %tmp13, align 4
  %141 = load i32, i32* %z1, align 4
  %sub111 = sub nsw i32 %140, %141
  %142 = load i32*, i32** %dataptr, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %142, i64 48
  store i32 %sub111, i32* %arrayidx112, align 4
  %143 = load i32, i32* %tmp4, align 4
  %144 = load i32, i32* %tmp5, align 4
  %add113 = add nsw i32 %143, %144
  store i32 %add113, i32* %tmp10, align 4
  %145 = load i32, i32* %tmp5, align 4
  %146 = load i32, i32* %tmp6, align 4
  %add114 = add nsw i32 %145, %146
  store i32 %add114, i32* %tmp11, align 4
  %147 = load i32, i32* %tmp6, align 4
  %148 = load i32, i32* %tmp7, align 4
  %add115 = add nsw i32 %147, %148
  store i32 %add115, i32* %tmp12, align 4
  %149 = load i32, i32* %tmp10, align 4
  %150 = load i32, i32* %tmp12, align 4
  %sub116 = sub nsw i32 %149, %150
  %conv117 = sext i32 %sub116 to i64
  %mul118 = mul nsw i64 %conv117, 98
  %shr119 = ashr i64 %mul118, 8
  %conv120 = trunc i64 %shr119 to i32
  store i32 %conv120, i32* %z5, align 4
  %151 = load i32, i32* %tmp10, align 4
  %conv121 = sext i32 %151 to i64
  %mul122 = mul nsw i64 %conv121, 139
  %shr123 = ashr i64 %mul122, 8
  %conv124 = trunc i64 %shr123 to i32
  %152 = load i32, i32* %z5, align 4
  %add125 = add nsw i32 %conv124, %152
  store i32 %add125, i32* %z2, align 4
  %153 = load i32, i32* %tmp12, align 4
  %conv126 = sext i32 %153 to i64
  %mul127 = mul nsw i64 %conv126, 334
  %shr128 = ashr i64 %mul127, 8
  %conv129 = trunc i64 %shr128 to i32
  %154 = load i32, i32* %z5, align 4
  %add130 = add nsw i32 %conv129, %154
  store i32 %add130, i32* %z4, align 4
  %155 = load i32, i32* %tmp11, align 4
  %conv131 = sext i32 %155 to i64
  %mul132 = mul nsw i64 %conv131, 181
  %shr133 = ashr i64 %mul132, 8
  %conv134 = trunc i64 %shr133 to i32
  store i32 %conv134, i32* %z3, align 4
  %156 = load i32, i32* %tmp7, align 4
  %157 = load i32, i32* %z3, align 4
  %add135 = add nsw i32 %156, %157
  store i32 %add135, i32* %z11, align 4
  %158 = load i32, i32* %tmp7, align 4
  %159 = load i32, i32* %z3, align 4
  %sub136 = sub nsw i32 %158, %159
  store i32 %sub136, i32* %z13, align 4
  %160 = load i32, i32* %z13, align 4
  %161 = load i32, i32* %z2, align 4
  %add137 = add nsw i32 %160, %161
  %162 = load i32*, i32** %dataptr, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %162, i64 40
  store i32 %add137, i32* %arrayidx138, align 4
  %163 = load i32, i32* %z13, align 4
  %164 = load i32, i32* %z2, align 4
  %sub139 = sub nsw i32 %163, %164
  %165 = load i32*, i32** %dataptr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %165, i64 24
  store i32 %sub139, i32* %arrayidx140, align 4
  %166 = load i32, i32* %z11, align 4
  %167 = load i32, i32* %z4, align 4
  %add141 = add nsw i32 %166, %167
  %168 = load i32*, i32** %dataptr, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %168, i64 8
  store i32 %add141, i32* %arrayidx142, align 4
  %169 = load i32, i32* %z11, align 4
  %170 = load i32, i32* %z4, align 4
  %sub143 = sub nsw i32 %169, %170
  %171 = load i32*, i32** %dataptr, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %171, i64 56
  store i32 %sub143, i32* %arrayidx144, align 4
  %172 = load i32*, i32** %dataptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %incdec.ptr, i32** %dataptr, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.71
  %173 = load i32, i32* %ctr, align 4
  %dec146 = add nsw i32 %173, -1
  store i32 %dec146, i32* %ctr, align 4
  br label %for.cond.68

for.end.147:                                      ; preds = %for.cond.68
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}