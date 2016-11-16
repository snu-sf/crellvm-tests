; ModuleID = './app/composite/gimp-composite-mmx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }

@rgba8_alpha_mask_64 = constant [2 x i32] [i32 -16777216, i32 -16777216], align 4
@rgba8_b1_64 = constant [2 x i32] [i32 16843009, i32 16843009], align 4
@rgba8_b255_64 = constant [2 x i32] [i32 -1, i32 -1], align 4
@rgba8_w1_64 = constant [2 x i32] [i32 65537, i32 65537], align 4
@rgba8_w2_64 = constant [2 x i32] [i32 131074, i32 131074], align 4
@rgba8_w128_64 = constant [2 x i32] [i32 8388736, i32 8388736], align 4
@rgba8_w256_64 = constant [2 x i32] [i32 16777472, i32 16777472], align 4
@rgba8_w255_64 = constant [2 x i32] [i32 16711935, i32 16711935], align 4
@va8_alpha_mask_64 = constant [2 x i32] [i32 -16711936, i32 -16711936], align 4
@va8_b255_64 = constant [2 x i32] [i32 -1, i32 -1], align 4
@va8_w1_64 = constant [2 x i32] [i32 65537, i32 65537], align 4
@va8_w255_64 = constant [2 x i32] [i32 16711935, i32 16711935], align 4
@va8_w128_64 = constant [2 x i32] [i32 8388736, i32 8388736], align 4

; Function Attrs: nounwind uwtable
define void @gimp_composite_addition_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movq    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !2
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_darken_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq    $1, %mm2\0A\09movq    $2, %mm3\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09movq    %mm2, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !5
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09movd    %mm2, $0\0A", "=*m,*m,*m,~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_difference_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movq    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !9
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !11
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq       $0,%mm0\0Apxor    %mm6,%mm6\0Amovq       $1,%mm7\0A", "*m,*m,~{mm0},~{mm7},~{mm6},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1,%mm2\0A\09movq         $2,%mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09movq      %mm4,%mm1\0A\09movq      %mm2, %mm4\0A\09punpckhbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09packuswb  %mm4,%mm1\0A\09movq      %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand      %mm0,%mm2\0A\09por       %mm2,%mm1\0A\09movq      %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !13
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5, %mm4\0A\09paddw     %mm7, %mm4\0A\09movq      %mm4, %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm1, %mm4\0A\09movq      %mm0, %mm1; pandn     %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0, %mm0\0Apxor    %mm6, %mm6\0Amovq    $1, %mm7\0A", "*m,*m,~{mm0},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq    $1, %mm2\0A\09movq    $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09paddw     %mm5, %mm4\0A\09psubw     %mm7, %mm4\0A\09movq      %mm2, %mm1\0A\09punpckhbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09paddw     %mm5, %mm1\0A\09psubw     %mm7, %mm1\0A\09packuswb  %mm1, %mm4\0A\09\09movq %mm2, %mm5;psubusb %mm3, %mm5;psubb %mm5, %mm2\0A\0A\09pand      %mm0, %mm2\0A\09movq      %mm0, %mm1\0A\09pandn     %mm4, %mm1\0A\09por       %mm2, %mm1\0A\09movq      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !17
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09paddw     %mm5, %mm4\0A\09psubw     %mm7, %mm4\0A\09movq      %mm4, %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm1, %mm4\0A\09movq      %mm0, %mm1; pandn     %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_lighten_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09\09movq %mm3, %mm5;psubusb %mm4, %mm5;paddb %mm5, %mm4\0A\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm3, %mm4;psubusb %mm2, %mm4;psubb %mm4, %mm3\0A\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movq    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !21
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09\09movq %mm3, %mm5;psubusb %mm4, %mm5;paddb %mm5, %mm4\0A\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm3, %mm4;psubusb %mm2, %mm4;psubb %mm4, %mm3\0A\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !23
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_multiply_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0\0Amovq    $1,%mm7\0Apxor    %mm6,%mm6\0A", "*m,*m,~{mm6},~{mm7},~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq        $1, %mm2\0A\09movq        $2, %mm3\0A\09movq      %mm2, %mm1\0A\09punpcklbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09pmullw    %mm1,    %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5,    %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5,    %mm1; \09psrlw     $$8,        %mm1\0A\09movq      %mm2, %mm4\0A\09punpckhbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09pmullw    %mm4,    %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5,    %mm4; \09psrlw     $$8,        %mm4; \09paddw     %mm5,    %mm4; \09psrlw     $$8,        %mm4\0A\09packuswb  %mm4, %mm1\0A\09movq      %mm0, %mm4\0A\09pandn     %mm1, %mm4\0A\09movq      %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movq      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !25
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd     $1, %mm2\0A\09movd     $2, %mm3\0A\09movq      %mm2, %mm1\0A\09punpcklbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm0, %mm4\0A\09pandn     %mm1, %mm4\0A\09movq      %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !27
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_scale_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels1, align 8
  store i64 %7, i64* %n_pixels, align 8
  %8 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %scale = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %8, i32 0, i32 10
  %scale2 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %scale, i32 0, i32 0
  call void asm sideeffect "pxor    %mm0,%mm0\0A\09movl     $0,%eax\0A\09movl  %eax,%ebx\0A\09shl     $$16,%ebx\0A\09orl   %ebx,%eax\0A\09movd  %eax,%mm5\0A\09movd  %eax,%mm3\0A\09psllq   $$32,%mm5\0A\09por   %mm5,%mm3\0A\09movq     $1,%mm7\0A", "*m,*m,~{eax},~{ebx},~{mm0},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* %scale2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %9, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64*, i64** %d, align 8
  %11 = load i64*, i64** %a, align 8
  call void asm sideeffect "movq           $1,%mm2\0A\09movq      %mm2,%mm1\0A\09punpcklbw %mm0,%mm1\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\0A\09movq      %mm2,%mm4\0A\09punpckhbw %mm0,%mm4\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm4, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm4; \09psrlw     $$8,        %mm4; \09paddw     %mm5, %mm4; \09psrlw     $$8,        %mm4\0A\0A\09packuswb  %mm4,%mm1\0A\09movq      %mm1,$0\0A", "=*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %10, i64* %11) #1, !srcloc !29
  %12 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %13 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %14, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %15, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load i64*, i64** %d, align 8
  %17 = load i64*, i64** %a, align 8
  call void asm sideeffect "movd           $1,%mm2\0A\09movq      %mm2,%mm1\0A\09punpcklbw %mm0,%mm1\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\0A\09packuswb  %mm0,%mm1\0A\09movd      %mm1,$0\0A", "=*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %16, i64* %17) #1, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !31
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_screen_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "pxor    %mm6,%mm6\0Amovq       $0,%mm0\0Amovq       $1,%mm7\0A", "*m,*m,~{mm0},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1,%mm2\0A\09movq         $2,%mm3\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpcklbw %mm6,%mm4\0A\09punpcklbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09paddw     %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpckhbw %mm6,%mm4\0A\09punpckhbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09paddw     %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09packuswb  %mm4,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09\09movq %mm3, %mm4;psubusb %mm2, %mm4;psubb %mm4, %mm3\0A\0A\09pand      %mm0,%mm3\0A\09por       %mm3,%mm1\0A\09movq      %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !33
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd         $1,%mm2\0A\09movd         $2,%mm3\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpcklbw %mm6,%mm4\0A\09punpcklbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09paddw     %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpckhbw %mm6,%mm4\0A\09punpckhbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09paddw     %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09packuswb  %mm4,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09\09movq %mm3, %mm4;psubusb %mm2, %mm4;psubb %mm4, %mm3\0A\0A\09pand      %mm0,%mm3\0A\09por       %mm3,%mm1\0A\09movd      %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !34
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !35
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_subtract_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1,%mm2\0A\09movq       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movq    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !37
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %n_pixels, align 8
  %cmp4 = icmp ugt i64 %19, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load i64*, i64** %d, align 8
  %21 = load i64*, i64** %a, align 8
  %22 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $1,%mm2\0A\09movd       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movd    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !39
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_swap_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 0
  %1 = load i8*, i8** %A, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %a, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 1
  %4 = load i8*, i8** %B, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %b, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 4
  %7 = load i64, i64* %n_pixels1, align 8
  store i64 %7, i64* %n_pixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %8, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64*, i64** %a, align 8
  %10 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $0,%mm2\0A\09movq       $1,%mm3\0A\09movq    %mm3,$0\0A\09movq    %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm2},~{mm3},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64* %10, i64* %9, i64* %10) #1, !srcloc !40
  %11 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %12 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %13, 2
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i64, i64* %n_pixels, align 8
  %cmp3 = icmp ugt i64 %14, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %15 = load i64*, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movd       $0,%mm2\0A\09movd       $1,%mm3\0A\09movd    %mm3,$0\0A\09movd    %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm2},~{mm3},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64* %16, i64* %15, i64* %16) #1, !srcloc !41
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_addition_va8_va8_va8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %a32 = alloca i64*, align 8
  %b32 = alloca i64*, align 8
  %d32 = alloca i64*, align 8
  %a16 = alloca i16*, align 8
  %b16 = alloca i16*, align 8
  %d16 = alloca i16*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @va8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movq    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !44
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64*, i64** %a, align 8
  store i64* %19, i64** %a32, align 8
  %20 = load i64*, i64** %b, align 8
  store i64* %20, i64** %b32, align 8
  %21 = load i64*, i64** %d, align 8
  store i64* %21, i64** %d32, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %22 = load i64, i64* %n_pixels, align 8
  %cmp5 = icmp uge i64 %22, 2
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %23 = load i64*, i64** %d32, align 8
  %24 = load i64*, i64** %a32, align 8
  %25 = load i64*, i64** %b32, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %23, i64* %24, i64* %25) #1, !srcloc !45
  %26 = load i64*, i64** %a32, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %incdec.ptr7, i64** %a32, align 8
  %27 = load i64*, i64** %b32, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %incdec.ptr8, i64** %b32, align 8
  %28 = load i64*, i64** %d32, align 8
  %incdec.ptr9 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %incdec.ptr9, i64** %d32, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %29 = load i64, i64* %n_pixels, align 8
  %sub11 = sub i64 %29, 2
  store i64 %sub11, i64* %n_pixels, align 8
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  %30 = load i64*, i64** %a32, align 8
  %31 = bitcast i64* %30 to i16*
  store i16* %31, i16** %a16, align 8
  %32 = load i64*, i64** %b32, align 8
  %33 = bitcast i64* %32 to i16*
  store i16* %33, i16** %b16, align 8
  %34 = load i64*, i64** %d32, align 8
  %35 = bitcast i64* %34 to i16*
  store i16* %35, i16** %d16, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %for.end.12
  %36 = load i64, i64* %n_pixels, align 8
  %cmp14 = icmp uge i64 %36, 1
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.13
  %37 = load i16*, i16** %d16, align 8
  %38 = load i16*, i16** %a16, align 8
  %39 = load i16*, i16** %b16, align 8
  call void asm sideeffect "  movw    $1, %ax ; movd    %eax, %mm2\0A\09movw    $2, %ax ; movd    %eax, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, %eax\0A\09movw    %ax, $0\0A", "=*m,*m,*m,~{eax},~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i16* %37, i16* %38, i16* %39) #1, !srcloc !46
  %40 = load i16*, i16** %a16, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr16, i16** %a16, align 8
  %41 = load i16*, i16** %b16, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr17, i16** %b16, align 8
  %42 = load i16*, i16** %d16, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr18, i16** %d16, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %43 = load i64, i64* %n_pixels, align 8
  %sub20 = sub i64 %43, 1
  store i64 %sub20, i64* %n_pixels, align 8
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !47
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_subtract_va8_va8_va8_mmx(%struct.GimpCompositeContext* %_op) #0 {
entry:
  %_op.addr = alloca %struct.GimpCompositeContext*, align 8
  %d = alloca i64*, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  %a32 = alloca i64*, align 8
  %b32 = alloca i64*, align 8
  %d32 = alloca i64*, align 8
  %a16 = alloca i16*, align 8
  %b16 = alloca i16*, align 8
  %d16 = alloca i16*, align 8
  %n_pixels = alloca i64, align 8
  store %struct.GimpCompositeContext* %_op, %struct.GimpCompositeContext** %_op.addr, align 8
  %0 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %D = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %0, i32 0, i32 2
  %1 = load i8*, i8** %D, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %d, align 8
  %3 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %A = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %3, i32 0, i32 0
  %4 = load i8*, i8** %A, align 8
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %a, align 8
  %6 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %B = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %6, i32 0, i32 1
  %7 = load i8*, i8** %B, align 8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %b, align 8
  %9 = load %struct.GimpCompositeContext*, %struct.GimpCompositeContext** %_op.addr, align 8
  %n_pixels1 = getelementptr inbounds %struct.GimpCompositeContext, %struct.GimpCompositeContext* %9, i32 0, i32 4
  %10 = load i64, i64* %n_pixels1, align 8
  store i64 %10, i64* %n_pixels, align 8
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @va8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09psubusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movq    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !49
  %15 = load i64*, i64** %a, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %incdec.ptr, i64** %a, align 8
  %16 = load i64*, i64** %b, align 8
  %incdec.ptr2 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr2, i64** %b, align 8
  %17 = load i64*, i64** %d, align 8
  %incdec.ptr3 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr3, i64** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %n_pixels, align 8
  %sub = sub i64 %18, 4
  store i64 %sub, i64* %n_pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64*, i64** %a, align 8
  store i64* %19, i64** %a32, align 8
  %20 = load i64*, i64** %b, align 8
  store i64* %20, i64** %b32, align 8
  %21 = load i64*, i64** %d, align 8
  store i64* %21, i64** %d32, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %22 = load i64, i64* %n_pixels, align 8
  %cmp5 = icmp uge i64 %22, 2
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.4
  %23 = load i64*, i64** %d32, align 8
  %24 = load i64*, i64** %a32, align 8
  %25 = load i64*, i64** %b32, align 8
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq    %mm2, %mm4\0A\09psubusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %23, i64* %24, i64* %25) #1, !srcloc !50
  %26 = load i64*, i64** %a32, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %incdec.ptr7, i64** %a32, align 8
  %27 = load i64*, i64** %b32, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %incdec.ptr8, i64** %b32, align 8
  %28 = load i64*, i64** %d32, align 8
  %incdec.ptr9 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %incdec.ptr9, i64** %d32, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %29 = load i64, i64* %n_pixels, align 8
  %sub11 = sub i64 %29, 2
  store i64 %sub11, i64* %n_pixels, align 8
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  %30 = load i64*, i64** %a32, align 8
  %31 = bitcast i64* %30 to i16*
  store i16* %31, i16** %a16, align 8
  %32 = load i64*, i64** %b32, align 8
  %33 = bitcast i64* %32 to i16*
  store i16* %33, i16** %b16, align 8
  %34 = load i64*, i64** %d32, align 8
  %35 = bitcast i64* %34 to i16*
  store i16* %35, i16** %d16, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %for.end.12
  %36 = load i64, i64* %n_pixels, align 8
  %cmp14 = icmp uge i64 %36, 1
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.13
  %37 = load i16*, i16** %d16, align 8
  %38 = load i16*, i16** %a16, align 8
  %39 = load i16*, i16** %b16, align 8
  call void asm sideeffect "  movw    $1, %ax ; movd    %eax, %mm2\0A\09movw    $2, %ax ; movd    %eax, %mm3\0A\09movq    %mm2, %mm4\0A\09psubusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09\09movq %mm2, %mm4;psubusb %mm3, %mm4;psubb %mm4, %mm2\0A\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, %eax\0A\09movw    %ax, $0\0A", "=*m,*m,*m,~{eax},~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i16* %37, i16* %38, i16* %39) #1, !srcloc !51
  %40 = load i16*, i16** %a16, align 8
  %incdec.ptr16 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %incdec.ptr16, i16** %a16, align 8
  %41 = load i16*, i16** %b16, align 8
  %incdec.ptr17 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr17, i16** %b16, align 8
  %42 = load i16*, i16** %d16, align 8
  %incdec.ptr18 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr18, i16** %d16, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %43 = load i64, i64* %n_pixels, align 8
  %sub20 = sub i64 %43, 1
  store i64 %sub20, i64* %n_pixels, align 8
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !52
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 395964}
!2 = !{i32 396139, i32 396187, i32 396234, i32 396281, i32 396328, i32 396375, i32 396422, i32 396533, i32 396558, i32 396605, i32 396652}
!3 = !{i32 396897, i32 396942, i32 396986, i32 397033, i32 397080, i32 397127, i32 397174, i32 397285, i32 397310, i32 397357, i32 397404}
!4 = !{i32 397576}
!5 = !{i32 397895, i32 397940, i32 397984, i32 398095, i32 398120}
!6 = !{i32 398357, i32 398402, i32 398446, i32 398557, i32 398582}
!7 = !{i32 398738}
!8 = !{i32 398984}
!9 = !{i32 399111, i32 399159, i32 399206, i32 399253, i32 399300, i32 399347, i32 399394, i32 399441, i32 399488, i32 399535, i32 399646, i32 399671, i32 399718, i32 399765}
!10 = !{i32 400002, i32 400050, i32 400097, i32 400144, i32 400191, i32 400238, i32 400285, i32 400332, i32 400379, i32 400426, i32 400537, i32 400562, i32 400609, i32 400656}
!11 = !{i32 400820}
!12 = !{i32 401097, i32 401138, i32 401178}
!13 = !{i32 401395, i32 401444, i32 401492, i32 401529, i32 401586, i32 401623, i32 401680, i32 401728, i32 401776, i32 401825, i32 401862, i32 401919, i32 401956, i32 402014, i32 402062, i32 402111, i32 402159, i32 402208, i32 402256, i32 402305, i32 402416, i32 402441, i32 402490, i32 402538}
!14 = !{i32 402776, i32 402821, i32 402866, i32 402903, i32 402960, i32 402997, i32 403055, i32 403104, i32 403153, i32 403203, i32 403253, i32 403303, i32 403377, i32 403488, i32 403513, i32 403563, i32 403612}
!15 = !{i32 403778}
!16 = !{i32 404025, i32 404064, i32 404105}
!17 = !{i32 404320, i32 404365, i32 404410, i32 404447, i32 404504, i32 404541, i32 404598, i32 404647, i32 404697, i32 404734, i32 404791, i32 404828, i32 404885, i32 404934, i32 404984, i32 405034, i32 405145, i32 405170, i32 405220, i32 405269, i32 405318, i32 405367}
!18 = !{i32 405606, i32 405651, i32 405696, i32 405733, i32 405790, i32 405827, i32 405885, i32 405934, i32 405983, i32 406032, i32 406082, i32 406132, i32 406206, i32 406317, i32 406342, i32 406392, i32 406441}
!19 = !{i32 406607}
!20 = !{i32 406850}
!21 = !{i32 406977, i32 407025, i32 407072, i32 407119, i32 407230, i32 407255, i32 407302, i32 407349, i32 407460, i32 407485, i32 407532, i32 407579}
!22 = !{i32 407824, i32 407872, i32 407919, i32 407966, i32 408077, i32 408103, i32 408150, i32 408198, i32 408309, i32 408335, i32 408382, i32 408429}
!23 = !{i32 408601}
!24 = !{i32 408862, i32 408900, i32 408937}
!25 = !{i32 409154, i32 409203, i32 409252, i32 409289, i32 409346, i32 409383, i32 409440, i32 409692, i32 409729, i32 409786, i32 409823, i32 409880, i32 410132, i32 410182, i32 410231, i32 410280, i32 410329, i32 410440, i32 410465, i32 410514, i32 410564}
!26 = !{i32 410809, i32 410855, i32 410901, i32 410938, i32 410995, i32 411032, i32 411089, i32 411332, i32 411382, i32 411431, i32 411480, i32 411529, i32 411640, i32 411665, i32 411714, i32 411764}
!27 = !{i32 411934}
!28 = !{i32 412171, i32 412212, i32 412252, i32 412292, i32 412332, i32 412372, i32 412412, i32 412452, i32 412492, i32 412532}
!29 = !{i32 412769, i32 412818, i32 412866, i32 412914, i32 412963, i32 413190, i32 413216, i32 413264, i32 413312, i32 413361, i32 413588, i32 413614, i32 413663}
!30 = !{i32 413904, i32 413953, i32 414001, i32 414049, i32 414098, i32 414325, i32 414351, i32 414399}
!31 = !{i32 414576}
!32 = !{i32 414818, i32 414859, i32 414899}
!33 = !{i32 415116, i32 415165, i32 415214, i32 415262, i32 415310, i32 415358, i32 415407, i32 415455, i32 415503, i32 415551, i32 415599, i32 415647, i32 415695, i32 415743, i32 415792, i32 415840, i32 415888, i32 415936, i32 415985, i32 416033, i32 416081, i32 416129, i32 416177, i32 416225, i32 416273, i32 416321, i32 416370, i32 416419, i32 416467, i32 416516, i32 416564, i32 416613, i32 416724, i32 416749, i32 416798, i32 416847}
!34 = !{i32 417091, i32 417140, i32 417189, i32 417237, i32 417285, i32 417333, i32 417382, i32 417430, i32 417478, i32 417526, i32 417574, i32 417622, i32 417670, i32 417718, i32 417767, i32 417815, i32 417863, i32 417911, i32 417960, i32 418008, i32 418056, i32 418104, i32 418152, i32 418200, i32 418248, i32 418296, i32 418345, i32 418394, i32 418442, i32 418491, i32 418539, i32 418588, i32 418699, i32 418724, i32 418773, i32 418822}
!35 = !{i32 419005}
!36 = !{i32 419250}
!37 = !{i32 419377, i32 419424, i32 419471, i32 419517, i32 419564, i32 419610, i32 419657, i32 419768, i32 419794, i32 419840, i32 419886}
!38 = !{i32 420130, i32 420177, i32 420224, i32 420270, i32 420317, i32 420363, i32 420410, i32 420521, i32 420547, i32 420593, i32 420639}
!39 = !{i32 420820}
!40 = !{i32 421076, i32 421123, i32 421169, i32 421212}
!41 = !{i32 421413, i32 421460, i32 421506, i32 421549}
!42 = !{i32 421688}
!43 = !{i32 422018}
!44 = !{i32 422191, i32 422239, i32 422286, i32 422333, i32 422380, i32 422427, i32 422474, i32 422585, i32 422610, i32 422657, i32 422704}
!45 = !{i32 423035, i32 423080, i32 423124, i32 423171, i32 423218, i32 423265, i32 423312, i32 423423, i32 423448, i32 423495, i32 423542}
!46 = !{i32 423891, i32 423958, i32 424024, i32 424071, i32 424118, i32 424165, i32 424212, i32 424323, i32 424348, i32 424395, i32 424442, i32 424489}
!47 = !{i32 424714}
!48 = !{i32 425042}
!49 = !{i32 425215, i32 425263, i32 425310, i32 425357, i32 425404, i32 425451, i32 425498, i32 425609, i32 425634, i32 425681, i32 425728}
!50 = !{i32 426059, i32 426104, i32 426148, i32 426195, i32 426242, i32 426289, i32 426336, i32 426447, i32 426472, i32 426519, i32 426566}
!51 = !{i32 426915, i32 426982, i32 427048, i32 427095, i32 427142, i32 427189, i32 427236, i32 427347, i32 427372, i32 427419, i32 427466, i32 427513}
!52 = !{i32 427738}
