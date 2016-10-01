; ModuleID = './SingleSource.UnitTests.Vector/6.build2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define <4 x float> @test0001(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %1 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %1
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0010(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %0, i32 1
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 2
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 3
  store <4 x float> %vecinit2, <4 x float>* %.compoundliteral
  %1 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %1
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0100(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, float %0, i32 2
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 3
  store <4 x float> %vecinit1, <4 x float>* %.compoundliteral
  %1 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %1
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1000(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef>, float %0, i32 3
  store <4 x float> %vecinit, <4 x float>* %.compoundliteral
  %1 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %1
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0011(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0101(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %1 = load float, float* %b.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %1, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1001(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 2
  %1 = load float, float* %b.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %1, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0110(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %0, i32 1
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 2
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 3
  store <4 x float> %vecinit2, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1010(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %0, i32 1
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 2
  %1 = load float, float* %b.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %1, i32 3
  store <4 x float> %vecinit2, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1100(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, float %0, i32 2
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 3
  store <4 x float> %vecinit1, <4 x float>* %.compoundliteral
  %2 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %2
}

; Function Attrs: nounwind uwtable
define <4 x float> @test0111(float %a, float %b, float %c) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %c.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %3 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %3
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1011(float %a, float %b, float %c) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.000000e+00, i32 2
  %2 = load float, float* %c.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %2, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %3 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %3
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1101(float %a, float %b, float %c) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %1 = load float, float* %b.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %1, i32 2
  %2 = load float, float* %c.addr, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %2, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %3 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %3
}

; Function Attrs: nounwind uwtable
define <4 x float> @test1110(float %a, float %b, float %c) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %0, i32 1
  %1 = load float, float* %b.addr, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 2
  %2 = load float, float* %c.addr, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 3
  store <4 x float> %vecinit2, <4 x float>* %.compoundliteral
  %3 = load <4 x float>, <4 x float>* %.compoundliteral
  ret <4 x float> %3
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca <4 x float>, align 16
  %y = alloca <4 x float>, align 16
  %z = alloca <4 x float>, align 16
  %.compoundliteral = alloca <4 x float>, align 16
  %.compoundliteral1 = alloca <4 x float>, align 16
  %.compoundliteral2 = alloca <4 x float>, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store <4 x float> zeroinitializer, <4 x float>* %x, align 16
  store <4 x float> zeroinitializer, <4 x float>* %y, align 16
  store <4 x float> zeroinitializer, <4 x float>* %z, align 16
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store <4 x float> zeroinitializer, <4 x float>* %.compoundliteral
  %1 = load <4 x float>, <4 x float>* %.compoundliteral
  store <4 x float> %1, <4 x float>* %x, align 16
  store <4 x float> zeroinitializer, <4 x float>* %.compoundliteral1
  %2 = load <4 x float>, <4 x float>* %.compoundliteral1
  store <4 x float> %2, <4 x float>* %y, align 16
  store <4 x float> zeroinitializer, <4 x float>* %.compoundliteral2
  %3 = load <4 x float>, <4 x float>* %.compoundliteral2
  store <4 x float> %3, <4 x float>* %z, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, 2000000
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %call = call <4 x float> @test0001(float 1.000000e+00)
  %5 = load <4 x float>, <4 x float>* %x, align 16
  %add = fadd <4 x float> %5, %call
  store <4 x float> %add, <4 x float>* %x, align 16
  %call6 = call <4 x float> @test0010(float 1.000000e+00)
  %6 = load <4 x float>, <4 x float>* %x, align 16
  %add7 = fadd <4 x float> %6, %call6
  store <4 x float> %add7, <4 x float>* %x, align 16
  %call8 = call <4 x float> @test0100(float 1.000000e+00)
  %7 = load <4 x float>, <4 x float>* %x, align 16
  %add9 = fadd <4 x float> %7, %call8
  store <4 x float> %add9, <4 x float>* %x, align 16
  %call10 = call <4 x float> @test1000(float 1.000000e+00)
  %8 = load <4 x float>, <4 x float>* %x, align 16
  %add11 = fadd <4 x float> %8, %call10
  store <4 x float> %add11, <4 x float>* %x, align 16
  %call12 = call <4 x float> @test0011(float 1.000000e+00, float 2.000000e+00)
  %9 = load <4 x float>, <4 x float>* %y, align 16
  %add13 = fadd <4 x float> %9, %call12
  store <4 x float> %add13, <4 x float>* %y, align 16
  %call14 = call <4 x float> @test0101(float 1.000000e+00, float 2.000000e+00)
  %10 = load <4 x float>, <4 x float>* %y, align 16
  %add15 = fadd <4 x float> %10, %call14
  store <4 x float> %add15, <4 x float>* %y, align 16
  %call16 = call <4 x float> @test1001(float 1.000000e+00, float 2.000000e+00)
  %11 = load <4 x float>, <4 x float>* %y, align 16
  %add17 = fadd <4 x float> %11, %call16
  store <4 x float> %add17, <4 x float>* %y, align 16
  %call18 = call <4 x float> @test0110(float 1.000000e+00, float 2.000000e+00)
  %12 = load <4 x float>, <4 x float>* %y, align 16
  %add19 = fadd <4 x float> %12, %call18
  store <4 x float> %add19, <4 x float>* %y, align 16
  %call20 = call <4 x float> @test1010(float 1.000000e+00, float 2.000000e+00)
  %13 = load <4 x float>, <4 x float>* %y, align 16
  %add21 = fadd <4 x float> %13, %call20
  store <4 x float> %add21, <4 x float>* %y, align 16
  %call22 = call <4 x float> @test1100(float 1.000000e+00, float 2.000000e+00)
  %14 = load <4 x float>, <4 x float>* %y, align 16
  %add23 = fadd <4 x float> %14, %call22
  store <4 x float> %add23, <4 x float>* %y, align 16
  %call24 = call <4 x float> @test0111(float 2.000000e+00, float 3.000000e+00, float 1.000000e+00)
  %15 = load <4 x float>, <4 x float>* %z, align 16
  %add25 = fadd <4 x float> %15, %call24
  store <4 x float> %add25, <4 x float>* %z, align 16
  %call26 = call <4 x float> @test1011(float 1.000000e+00, float 1.000000e+00, float 2.000000e+00)
  %16 = load <4 x float>, <4 x float>* %z, align 16
  %add27 = fadd <4 x float> %16, %call26
  store <4 x float> %add27, <4 x float>* %z, align 16
  %call28 = call <4 x float> @test1101(float 3.000000e+00, float 2.000000e+00, float 4.000000e+00)
  %17 = load <4 x float>, <4 x float>* %z, align 16
  %add29 = fadd <4 x float> %17, %call28
  store <4 x float> %add29, <4 x float>* %z, align 16
  %call30 = call <4 x float> @test1110(float 4.000000e+00, float 6.000000e+00, float 1.000000e+00)
  %18 = load <4 x float>, <4 x float>* %z, align 16
  %add31 = fadd <4 x float> %18, %call30
  store <4 x float> %add31, <4 x float>* %z, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %21 = bitcast <4 x float>* %x to %union.FV*
  call void @printFV(%union.FV* %21)
  %22 = bitcast <4 x float>* %y to %union.FV*
  call void @printFV(%union.FV* %22)
  %23 = bitcast <4 x float>* %z to %union.FV*
  call void @printFV(%union.FV* %23)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @printFV(%union.FV* %F) #0 {
entry:
  %F.addr = alloca %union.FV*, align 8
  store %union.FV* %F, %union.FV** %F.addr, align 8
  %0 = load %union.FV*, %union.FV** %F.addr, align 8
  %A = bitcast %union.FV* %0 to [4 x float]*
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %A, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4
  %conv = fpext float %1 to double
  %2 = load %union.FV*, %union.FV** %F.addr, align 8
  %A1 = bitcast %union.FV* %2 to [4 x float]*
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %A1, i32 0, i64 1
  %3 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %3 to double
  %4 = load %union.FV*, %union.FV** %F.addr, align 8
  %A4 = bitcast %union.FV* %4 to [4 x float]*
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %A4, i32 0, i64 2
  %5 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %5 to double
  %6 = load %union.FV*, %union.FV** %F.addr, align 8
  %A7 = bitcast %union.FV* %6 to [4 x float]*
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %A7, i32 0, i64 3
  %7 = load float, float* %arrayidx8, align 4
  %conv9 = fpext float %7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %conv, double %conv3, double %conv6, double %conv9)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
