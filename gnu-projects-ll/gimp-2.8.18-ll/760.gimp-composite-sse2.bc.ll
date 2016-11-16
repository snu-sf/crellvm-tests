; ModuleID = './app/composite/gimp-composite-sse2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }
%struct.uint128 = type { [2 x i64] }

@rgba8_alpha_mask_128 = internal constant [4 x i32] [i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216], align 16
@rgba8_alpha_mask_64 = internal constant [2 x i32] [i32 -16777216, i32 -16777216], align 4
@rgba8_w128_64 = internal constant [2 x i32] [i32 8388736, i32 8388736], align 4
@rgba8_w128_128 = internal constant [4 x i32] [i32 8388736, i32 8388736, i32 8388736, i32 8388736], align 16

; Function Attrs: nounwind uwtable
define void @gimp_composite_addition_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "  movdqu    $0,%xmm0\0A\09movq      $1,%mm0", "*m,*m,~{xmm0},~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_alpha_mask_128, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu      $1,%xmm2\0A\09movdqu      $2,%xmm3\0A\09movdqu  %xmm2,%xmm4\0A\09paddusb %xmm3,%xmm4\0A\09movdqu  %xmm0,%xmm1\0A\09pandn   %xmm4,%xmm1\0A\09pminub  %xmm3,%xmm2\0A\09pand    %xmm0,%xmm2\0A\09por     %xmm2,%xmm1\0A\09movdqu  %xmm1,$0\0A", "=*m,*m,*m,~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !2
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1,%mm2\0A\09movq       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09paddusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movntq  %mm1,$0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !3
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1,%mm2\0A\09movd       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09paddusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movd    %mm1,$0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_darken_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu          $1,%xmm2\0A\09movdqu          $2,%xmm3\0A\09pminub      %xmm3,%xmm2\0A\09movdqu      %xmm2,$0\0A", "=*m,*m,*m,~{xmm2},~{xmm3},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !6
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq   $1,%mm2\0A\09movq   $2,%mm3\0A\09pminub %mm3,%mm2\0A\09movntq %mm2,$0\0A", "=*m,*m,*m,~{mm2},~{mm3},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !7
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09pminub  %mm3, %mm2\0A\09movd    %mm2, $0\0A", "=*m,*m,*m,~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_difference_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "  movq   $0,%mm0\0A\09movdqu $1,%xmm0", "*m,*m,~{mm0},~{xmm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_alpha_mask_128, i32 0, i32 0)) #1, !srcloc !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu        $1,%xmm2\0A\09movdqu        $2,%xmm3\0A\09movdqu    %xmm2,%xmm4\0A\09movdqu    %xmm3,%xmm5\0A\09psubusb   %xmm3,%xmm4\0A\09psubusb   %xmm2,%xmm5\0A\09paddb     %xmm5,%xmm4\0A\09movdqu    %xmm0,%xmm1\0A\09pandn     %xmm4,%xmm1\0A\09pminub    %xmm3,%xmm2\0A\09pand      %xmm0,%xmm2\0A\09por       %xmm2,%xmm1\0A\09movdqu    %xmm1,$0\0A", "=*m,*m,*m,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !11
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movntq  %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !12
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "  movq       $0,%mm0\0A\09pxor    %mm6,%mm6\0A\09movq       $1,%mm7\0A\09movdqu     $2,%xmm0\0A\09pxor   %xmm6,%xmm6\0A\09movdqu     $3,%xmm7\0A", "*m,*m,*m,*m,~{mm0},~{mm6},~{mm7},~{xmm0},~{xmm6},~{xmm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_alpha_mask_128, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_w128_128, i32 0, i32 0)) #1, !srcloc !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu       $1,%xmm2\0A\09movdqu       $2,%xmm3\0A\09movdqu     %xmm2, %xmm4; \09punpcklbw %xmm6, %xmm4\0A\09movdqu     %xmm3, %xmm5; \09punpcklbw %xmm6, %xmm5\0A\09psubw     %xmm5,%xmm4\0A\09paddw     %xmm7,%xmm4\0A\09movdqu    %xmm4,%xmm1\0A\09movdqu     %xmm2, %xmm4; \09punpckhbw %xmm6, %xmm4\0A\09movdqu     %xmm3, %xmm5; \09punpckhbw %xmm6, %xmm5\0A\09psubw     %xmm5,%xmm4\0A\09paddw     %xmm7,%xmm4\0A\09packuswb  %xmm4,%xmm1\0A\09movdqu    %xmm1,%xmm4\0A\09movdqu    %xmm0,%xmm1\0A\09pandn     %xmm4,%xmm1\0A\09pminub    %xmm3,%xmm2\0A\09pand      %xmm0,%xmm2\0A\09por       %xmm2,%xmm1\0A\09movdqu    %xmm1,$0\0A", "=*m,*m,*m,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !16
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1,%mm2\0A\09movq         $2,%mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09movq      %mm4,%mm1\0A\09movq      %mm2, %mm4\0A\09punpckhbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09packuswb  %mm4,%mm1\0A\09movq      %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09pminub    %mm3,%mm2\0A\09pand      %mm0,%mm2\0A\09por       %mm2,%mm1\0A\09movntq    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !17
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd         $1, %mm2\0A\09movd         $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5, %mm4\0A\09paddw     %mm7, %mm4\0A\09movq      %mm4, %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm1, %mm4\0A\09movq      %mm0, %mm1\0A\09pandn     %mm4, %mm1\0A\09pminub    %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_lighten_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "  movdqu    $0,%xmm0\0A\09movq      $1,%mm0", "*m,*m,~{xmm0},~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_alpha_mask_128, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu      $1, %xmm2\0A\09movdqu      $2, %xmm3\0A\09movdqu  %xmm2, %xmm4\0A\09pmaxub  %xmm3, %xmm4\0A\09movdqu  %xmm0, %xmm1\0A\09pandn   %xmm4, %xmm1\0A\09pminub  %xmm2, %xmm3\0A\09pand    %xmm0, %xmm3\0A\09por     %xmm3, %xmm1\0A\09movdqu  %xmm1, $0\0A", "=*m,*m,*m,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !21
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09pmaxub  %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm2, %mm3\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movntq  %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !22
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09pmaxub  %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm2, %mm3\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_subtract_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %D = alloca %struct.uint128*, align 8
  %A = alloca %struct.uint128*, align 8
  %B = alloca %struct.uint128*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D1, align 8
  %2 = bitcast i8* %1 to %struct.uint128*
  store %struct.uint128* %2, %struct.uint128** %D, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A2, align 8
  %5 = bitcast i8* %4 to %struct.uint128*
  store %struct.uint128* %5, %struct.uint128** %A, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B3 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B3, align 8
  %8 = bitcast i8* %7 to %struct.uint128*
  store %struct.uint128* %8, %struct.uint128** %B, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels4, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "  movq    $0,%mm0\0A\09movdqu  $1,%xmm0\0A", "*m,*m,~{mm0},~{xmm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rgba8_alpha_mask_128, i32 0, i32 0)) #1, !srcloc !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.uint128*, %struct.uint128** %D, align 8
  %13 = load %struct.uint128*, %struct.uint128** %A, align 8
  %14 = load %struct.uint128*, %struct.uint128** %B, align 8
  call void asm sideeffect "  movdqu       $1,%xmm2\0A\09movdqu       $2,%xmm3\0A\09movdqu   %xmm2,%xmm4\0A\09psubusb  %xmm3,%xmm4\0A\09movdqu   %xmm0,%xmm1\0A\09pandn    %xmm4,%xmm1\0A\09pminub   %xmm3,%xmm2\0A\09pand     %xmm0,%xmm2\0A\09por      %xmm2,%xmm1\0A\09movdqu   %xmm1,$0\0A", "=*m,*m,*m,~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{dirflag},~{fpsr},~{flags}"(%struct.uint128* %12, %struct.uint128* %13, %struct.uint128* %14) #1, !srcloc !26
  %15 = load %struct.uint128*, %struct.uint128** %A, align 8
  %incdec.ptr = getelementptr inbounds %struct.uint128, %struct.uint128* %15, i32 1
  store %struct.uint128* %incdec.ptr, %struct.uint128** %A, align 8
  %16 = load %struct.uint128*, %struct.uint128** %B, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.uint128, %struct.uint128* %16, i32 1
  store %struct.uint128* %incdec.ptr5, %struct.uint128** %B, align 8
  %17 = load %struct.uint128*, %struct.uint128** %D, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.uint128, %struct.uint128* %17, i32 1
  store %struct.uint128* %incdec.ptr6, %struct.uint128** %D, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.uint128*, %struct.uint128** %A, align 8
  %20 = bitcast %struct.uint128* %19 to i64*
  store i64* %20, i64** %a, align 8
  %21 = load %struct.uint128*, %struct.uint128** %B, align 8
  %22 = bitcast %struct.uint128* %21 to i64*
  store i64* %22, i64** %b, align 8
  %23 = load %struct.uint128*, %struct.uint128** %D, align 8
  %24 = bitcast %struct.uint128* %23 to i64*
  store i64* %24, i64** %d, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.13, %for.end
  %25 = load i64, i64* %n_pixels, align 8
  %cmp8 = icmp uge i64 %25, 2
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.7
  %26 = load i64*, i64** %d, align 8
  %27 = load i64*, i64** %a, align 8
  %28 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1,%mm2\0A\09movq       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movntq  %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %26, i64* %27, i64* %28) #1, !srcloc !27
  %29 = load i64*, i64** %a, align 8
  %incdec.ptr10 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr10, i64** %a, align 8
  %30 = load i64*, i64** %b, align 8
  %incdec.ptr11 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %incdec.ptr11, i64** %b, align 8
  %31 = load i64*, i64** %d, align 8
  %incdec.ptr12 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %incdec.ptr12, i64** %d, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %32 = load i64, i64* %n_pixels, align 8
  %sub14 = sub i64 %32, 2
  store i64 %sub14, i64* %n_pixels, align 8
  br label %for.cond.7

for.end.15:                                       ; preds = %for.cond.7
  %33 = load i64, i64* %n_pixels, align 8
  %cmp16 = icmp ugt i64 %33, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.15
  %34 = load i64*, i64** %d, align 8
  %35 = load i64*, i64** %a, align 8
  %36 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1,%mm2\0A\09movd       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movd    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %34, i64* %35, i64* %36) #1, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.15
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_swap_rgba8_rgba8_rgba8_sse2(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %op = alloca %struct.GimpCompositeContext, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %1 = bitcast %struct.GimpCompositeContext* %op to i8*
  %2 = bitcast %struct.GimpCompositeContext* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 96, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %n_pixels = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %3 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %3, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  call void asm sideeffect "  movdqu      $0,%xmm0\0A", "*m,~{xmm0},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx) #1, !srcloc !30
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %5 = load i8*, i8** %B, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 0
  call void asm sideeffect "  movdqu      $0,%xmm1\0A", "*m,~{xmm1},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx1) #1, !srcloc !31
  %A2 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %6 = load i8*, i8** %A2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  call void asm sideeffect "  movdqu      $0,%xmm2\0A", "*m,~{xmm2},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx3) #1, !srcloc !32
  %B4 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %7 = load i8*, i8** %B4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  call void asm sideeffect "  movdqu      $0,%xmm3\0A", "*m,~{xmm3},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx5) #1, !srcloc !33
  %A6 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %8 = load i8*, i8** %A6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 2
  call void asm sideeffect "  movdqu      $0,%xmm4\0A", "*m,~{xmm4},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx7) #1, !srcloc !34
  %B8 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %9 = load i8*, i8** %B8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 2
  call void asm sideeffect "  movdqu      $0,%xmm5\0A", "*m,~{xmm5},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx9) #1, !srcloc !35
  %A10 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %10 = load i8*, i8** %A10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 3
  call void asm sideeffect "  movdqu      $0,%xmm6\0A", "*m,~{xmm6},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx11) #1, !srcloc !36
  %B12 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %11 = load i8*, i8** %B12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 3
  call void asm sideeffect "  movdqu      $0,%xmm7\0A", "*m,~{xmm7},~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx13) #1, !srcloc !37
  %A14 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %12 = load i8*, i8** %A14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 0
  call void asm sideeffect "\09movdqu      %xmm0,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx15) #1, !srcloc !38
  %B16 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %13 = load i8*, i8** %B16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 0
  call void asm sideeffect "\09movdqu      %xmm1,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx17) #1, !srcloc !39
  %A18 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %14 = load i8*, i8** %A18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 1
  call void asm sideeffect "\09movdqu      %xmm2,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx19) #1, !srcloc !40
  %B20 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %15 = load i8*, i8** %B20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 1
  call void asm sideeffect "\09movdqu      %xmm3,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx21) #1, !srcloc !41
  %A22 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %16 = load i8*, i8** %A22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 2
  call void asm sideeffect "\09movdqu      %xmm4,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx23) #1, !srcloc !42
  %B24 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %17 = load i8*, i8** %B24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 2
  call void asm sideeffect "\09movdqu      %xmm5,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx25) #1, !srcloc !43
  %A26 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %18 = load i8*, i8** %A26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 3
  call void asm sideeffect "\09movdqu      %xmm6,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx27) #1, !srcloc !44
  %B28 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %19 = load i8*, i8** %B28, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %19, i64 3
  call void asm sideeffect "\09movdqu      %xmm7,$0\0A", "=*m,~{dirflag},~{fpsr},~{flags}"(i8* %arrayidx29) #1, !srcloc !45
  %A30 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %20 = load i8*, i8** %A30, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 64
  store i8* %add.ptr, i8** %A30, align 8
  %B31 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %21 = load i8*, i8** %B31, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %21, i64 64
  store i8* %add.ptr32, i8** %B31, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %n_pixels33 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %22 = load i64, i64* %n_pixels33, align 8
  %sub = sub i64 %22, 16
  store i64 %sub, i64* %n_pixels33, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.44, %for.end
  %n_pixels35 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %23 = load i64, i64* %n_pixels35, align 8
  %cmp36 = icmp uge i64 %23, 4
  br i1 %cmp36, label %for.body.37, label %for.end.47

for.body.37:                                      ; preds = %for.cond.34
  %A38 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %24 = load i8*, i8** %A38, align 8
  %B39 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %25 = load i8*, i8** %B39, align 8
  call void asm sideeffect "  movdqu      $0,%xmm2\0A\09movdqu      $1,%xmm3\0A\09movdqu  %xmm3,$0\0A\09movdqu  %xmm2,$1\0A", "=*m,=*m,*m,*m,~{xmm2},~{xmm3},~{dirflag},~{fpsr},~{flags}"(i8* %24, i8* %25, i8* %24, i8* %25) #1, !srcloc !46
  %A40 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %26 = load i8*, i8** %A40, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %26, i64 16
  store i8* %add.ptr41, i8** %A40, align 8
  %B42 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %27 = load i8*, i8** %B42, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %27, i64 16
  store i8* %add.ptr43, i8** %B42, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.37
  %n_pixels45 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %28 = load i64, i64* %n_pixels45, align 8
  %sub46 = sub i64 %28, 4
  store i64 %sub46, i64* %n_pixels45, align 8
  br label %for.cond.34

for.end.47:                                       ; preds = %for.cond.34
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.58, %for.end.47
  %n_pixels49 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %29 = load i64, i64* %n_pixels49, align 8
  %cmp50 = icmp uge i64 %29, 2
  br i1 %cmp50, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.48
  %A52 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %30 = load i8*, i8** %A52, align 8
  %B53 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %31 = load i8*, i8** %B53, align 8
  call void asm sideeffect "  movq      $0,%mm2\0A\09movq      $1,%mm3\0A\09movq   %mm3,$0\0A\09movntq %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm2},~{mm3},~{dirflag},~{fpsr},~{flags}"(i8* %30, i8* %31, i8* %30, i8* %31) #1, !srcloc !47
  %A54 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %32 = load i8*, i8** %A54, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %32, i64 8
  store i8* %add.ptr55, i8** %A54, align 8
  %B56 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %33 = load i8*, i8** %B56, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %33, i64 8
  store i8* %add.ptr57, i8** %B56, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.51
  %n_pixels59 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %34 = load i64, i64* %n_pixels59, align 8
  %sub60 = sub i64 %34, 2
  store i64 %sub60, i64* %n_pixels59, align 8
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  %n_pixels62 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 4
  %35 = load i64, i64* %n_pixels62, align 8
  %tobool = icmp ne i64 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.61
  %A63 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 0
  %36 = load i8*, i8** %A63, align 8
  %B64 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %op, i32 0, i32 1
  %37 = load i8*, i8** %B64, align 8
  call void asm sideeffect "  movd      $0,%mm2\0A\09movd      $1,%mm3\0A\09movd   %mm3,$0\0A\09movd   %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i8* %36, i8* %37, i8* %36, i8* %37) #1, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.61
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !49
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 395676, i32 395719}
!2 = !{i32 395935, i32 395984, i32 396032, i32 396080, i32 396129, i32 396177, i32 396225, i32 396273, i32 396321, i32 396369}
!3 = !{i32 396726, i32 396773, i32 396819, i32 396865, i32 396911, i32 396957, i32 397003, i32 397049, i32 397095, i32 397141}
!4 = !{i32 397409, i32 397456, i32 397502, i32 397548, i32 397594, i32 397640, i32 397686, i32 397732, i32 397778, i32 397824}
!5 = !{i32 398019}
!6 = !{i32 398356, i32 398409, i32 398461, i32 398513}
!7 = !{i32 398820, i32 398863, i32 398905, i32 398950}
!8 = !{i32 399169, i32 399217, i32 399264, i32 399311}
!9 = !{i32 399467}
!10 = !{i32 399759, i32 399798}
!11 = !{i32 400012, i32 400063, i32 400113, i32 400163, i32 400213, i32 400263, i32 400313, i32 400363, i32 400413, i32 400463, i32 400513, i32 400563, i32 400613}
!12 = !{i32 400945, i32 400993, i32 401040, i32 401087, i32 401134, i32 401181, i32 401228, i32 401275, i32 401322, i32 401369, i32 401416, i32 401463, i32 401510}
!13 = !{i32 401755, i32 401803, i32 401850, i32 401897, i32 401944, i32 401991, i32 402038, i32 402085, i32 402132, i32 402179, i32 402226, i32 402273, i32 402320}
!14 = !{i32 402492}
!15 = !{i32 402788, i32 402831, i32 402873, i32 402915, i32 402958, i32 403001}
!16 = !{i32 403300, i32 403350, i32 403399, i32 403498, i32 403597, i32 403647, i32 403697, i32 403748, i32 403847, i32 403947, i32 403997, i32 404048, i32 404098, i32 404149, i32 404199, i32 404250, i32 404300, i32 404351, i32 404401}
!17 = !{i32 404733, i32 404782, i32 404830, i32 404867, i32 404924, i32 404961, i32 405018, i32 405066, i32 405114, i32 405163, i32 405200, i32 405257, i32 405294, i32 405352, i32 405400, i32 405449, i32 405497, i32 405546, i32 405594, i32 405643, i32 405691, i32 405740, i32 405788}
!18 = !{i32 406034, i32 406084, i32 406133, i32 406170, i32 406227, i32 406264, i32 406321, i32 406370, i32 406419, i32 406468, i32 406517, i32 406566, i32 406615, i32 406664, i32 406713, i32 406762, i32 406811}
!19 = !{i32 406985}
!20 = !{i32 407274, i32 407317}
!21 = !{i32 407534, i32 407584, i32 407633, i32 407682, i32 407731, i32 407780, i32 407829, i32 407878, i32 407927, i32 407976}
!22 = !{i32 408298, i32 408346, i32 408393, i32 408440, i32 408487, i32 408534, i32 408581, i32 408628, i32 408675, i32 408722}
!23 = !{i32 408959, i32 409007, i32 409054, i32 409101, i32 409148, i32 409195, i32 409242, i32 409289, i32 409336, i32 409383}
!24 = !{i32 409547}
!25 = !{i32 409837, i32 409877}
!26 = !{i32 410094, i32 410144, i32 410193, i32 410242, i32 410292, i32 410341, i32 410390, i32 410439, i32 410488, i32 410537}
!27 = !{i32 410859, i32 410906, i32 410952, i32 410998, i32 411044, i32 411090, i32 411136, i32 411182, i32 411228, i32 411274}
!28 = !{i32 411510, i32 411557, i32 411603, i32 411649, i32 411695, i32 411741, i32 411787, i32 411833, i32 411879, i32 411925}
!29 = !{i32 412088}
!30 = !{i32 412290}
!31 = !{i32 412367}
!32 = !{i32 412444}
!33 = !{i32 412521}
!34 = !{i32 412598}
!35 = !{i32 412675}
!36 = !{i32 412752}
!37 = !{i32 412829}
!38 = !{i32 412907}
!39 = !{i32 412974}
!40 = !{i32 413041}
!41 = !{i32 413108}
!42 = !{i32 413175}
!43 = !{i32 413242}
!44 = !{i32 413309}
!45 = !{i32 413376}
!46 = !{i32 413537, i32 413586, i32 413634, i32 413678}
!47 = !{i32 413927, i32 413973, i32 414018, i32 414060}
!48 = !{i32 414277, i32 414323, i32 414368, i32 414410}
!49 = !{i32 414554}
