; ModuleID = './app/composite/gimp-composite-sse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }

@rgba8_alpha_mask_64 = external constant [2 x i32], align 4
@rgba8_w128_64 = external constant [2 x i32], align 4

; Function Attrs: nounwind uwtable
define void @gimp_composite_addition_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movntq  %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !2
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
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09movq    %mm2, %mm4\0A\09paddusb %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm0},~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_darken_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq   $1,%mm2\0A\09movq   $2,%mm3\0A\09pminub %mm3, %mm2\0A\09movntq  %mm2,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !5
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
  call void asm sideeffect "  movd    $1, %mm2\0A\09movd    $2, %mm3\0A\09pminub %mm3, %mm2\0A\09movd    %mm2, $0\0A", "=*m,*m,*m,~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !7
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_difference_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movntq  %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !9
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
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09movq    %mm3, %mm5\0A\09psubusb %mm3, %mm4\0A\09psubusb %mm2, %mm5\0A\09paddb   %mm5, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm3, %mm2\0A\09pand    %mm0, %mm2\0A\09por     %mm2, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !11
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq       $0,%mm0\0A\09pxor    %mm6,%mm6\0A\09movq       $1,%mm7\0A", "*m,*m,~{mm0},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1,%mm2\0A\09movq         $2,%mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09movq      %mm4,%mm1\0A\09movq      %mm2, %mm4\0A\09punpckhbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09psubw     %mm5,%mm4\0A\09paddw     %mm7,%mm4\0A\09packuswb  %mm4,%mm1\0A\09movq      %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09pminub    %mm3,%mm2\0A\09pand      %mm0,%mm2\0A\09por       %mm2,%mm1\0A\09movntq    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !13
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
  call void asm sideeffect "  movd         $1, %mm2\0A\09movd         $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09psubw     %mm5, %mm4\0A\09paddw     %mm7, %mm4\0A\09movq      %mm4, %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm1, %mm4\0A\09movq      %mm0, %mm1\0A\09pandn     %mm4, %mm1\0A\09pminub    %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_grain_merge_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq         $1, %mm2\0A\09movq         $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09paddw     %mm5, %mm4\0A\09psubw     %mm7, %mm4\0A\09movq      %mm2, %mm1\0A\09punpckhbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09paddw     %mm5, %mm1\0A\09psubw     %mm7, %mm1\0A\09packuswb  %mm1, %mm4\0A\09pminub %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09movq      %mm0, %mm1\0A\09pandn     %mm4, %mm1\0A\09por       %mm2, %mm1\0A\09movntq    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !17
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
  call void asm sideeffect "  movd         $1, %mm2\0A\09movd         $2, %mm3\0A\09movq      %mm2, %mm4\0A\09punpcklbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09paddw     %mm5, %mm4\0A\09psubw     %mm7, %mm4\0A\09movq      %mm4, %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm1, %mm4\0A\09movq      %mm0, %mm1\0A\09pandn     %mm4, %mm1\0A\09pminub    %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22, i64* %20) #1, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_lighten_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq       $1, %mm2\0A\09movq       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09pmaxub  %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm2, %mm3\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movntq  %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !21
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
  call void asm sideeffect "  movd       $1, %mm2\0A\09movd       $2, %mm3\0A\09movq    %mm2, %mm4\0A\09pmaxub  %mm3, %mm4\0A\09movq    %mm0, %mm1\0A\09pandn   %mm4, %mm1\0A\09pminub  %mm2, %mm3\0A\09pand    %mm0, %mm3\0A\09por     %mm3, %mm1\0A\09movd    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !23
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_multiply_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !24
  call void asm sideeffect "movq    $0,%mm7", "*m,~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !25
  call void asm sideeffect "pxor    %mm6,%mm6", "~{mm6},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1, %mm2\0A\09movq         $2, %mm3\0A\09movq      %mm2, %mm1\0A\09punpcklbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09pmullw    %mm1,    %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5,    %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5,    %mm1; \09psrlw     $$8,        %mm1\0A\09movq      %mm2, %mm4\0A\09punpckhbw %mm6, %mm4\0A\09movq      %mm3, %mm5\0A\09punpckhbw %mm6, %mm5\0A\09pmullw    %mm4,    %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5,    %mm4; \09psrlw     $$8,        %mm4; \09paddw     %mm5,    %mm4; \09psrlw     $$8,        %mm4\0A\09packuswb  %mm4, %mm1\0A\09movq      %mm0, %mm4\0A\09pandn     %mm1, %mm4\0A\09movq      %mm4, %mm1\0A\09pminub %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movntq    %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !27
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
  call void asm sideeffect "  movd         $1, %mm2\0A\09movd         $2, %mm3\0A\09movq      %mm2, %mm1\0A\09punpcklbw %mm6, %mm1\0A\09movq      %mm3, %mm5\0A\09punpcklbw %mm6, %mm5\0A\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\09packuswb  %mm6, %mm1\0A\09movq      %mm0, %mm4\0A\09pandn     %mm1, %mm4\0A\09movq      %mm4, %mm1\0A\09pminub %mm3, %mm2\0A\09pand      %mm0, %mm2\0A\09por       %mm2, %mm1\0A\09movd      %mm1, $0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_scale_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "pxor    %mm0,%mm0\0A\09movl     $0,%eax\0A\09movl  %eax,%ebx\0A\09shl     $$16,%ebx\0A\09orl   %ebx,%eax\0A\09movd  %eax,%mm5\0A\09movd  %eax,%mm3\0A\09psllq   $$32,%mm5\0A\09por   %mm5,%mm3\0A\09movq     $1,%mm7\0A", "*m,*m,~{eax},~{ebx},~{mm0},~{mm3},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* %scale2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %9, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64*, i64** %d, align 8
  %11 = load i64*, i64** %a, align 8
  call void asm sideeffect "movq           $1,%mm2\0A\09movq      %mm2,%mm1\0A\09punpcklbw %mm0,%mm1\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\0A\09movq      %mm2,%mm4\0A\09punpckhbw %mm0,%mm4\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm4, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm4; \09psrlw     $$8,        %mm4; \09paddw     %mm5, %mm4; \09psrlw     $$8,        %mm4\0A\0A\09packuswb  %mm4,%mm1\0A\09movntq    %mm1,$0\0A", "=*m,*m,~{mm1},~{mm2},~{mm4},~{mm5},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %10, i64* %11) #1, !srcloc !31
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
  call void asm sideeffect "  movd         $1,%mm2\0A\09movq      %mm2,%mm1\0A\09punpcklbw %mm0,%mm1\0A\09movq      %mm3,%mm5\0A\09\09pmullw    %mm1, %mm5; \09paddw     %mm7, %mm5; \09movq      %mm5, %mm1; \09psrlw     $$8,        %mm1; \09paddw     %mm5, %mm1; \09psrlw     $$8,        %mm1\0A\0A\09packuswb  %mm0,%mm1\0A\09movd      %mm1,$0\0A", "=*m,*m,~{mm1},~{mm2},~{mm4},~{mm5},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i64* %16, i64* %17) #1, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !33
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_screen_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "pxor    %mm6,%mm6\0Amovq       $0,%mm0\0Amovq       $1,%mm7\0A", "*m,*m,~{mm0},~{mm6},~{mm7},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_w128_64, i32 0, i32 0)) #1, !srcloc !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq         $1,%mm2\0A\09movq         $2,%mm3\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpcklbw %mm6,%mm4\0A\09punpcklbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09paddw     %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpckhbw %mm6,%mm4\0A\09punpckhbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09paddw     %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09packuswb  %mm4,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09pminub %mm2, %mm3\0A\09pand      %mm0,%mm3\0A\09por       %mm3,%mm1\0A\09movq      %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !35
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
  call void asm sideeffect "  movd         $1,%mm2\0A\09movd         $2,%mm3\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpcklbw %mm6,%mm4\0A\09punpcklbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09paddw     %mm5,%mm1\0A\09psrlw       $$ 8,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm2,%mm4\0A\09pcmpeqb   %mm5,%mm5\0A\09psubb     %mm3,%mm5\0A\09punpckhbw %mm6,%mm4\0A\09punpckhbw %mm6,%mm5\0A\09pmullw    %mm4,%mm5\0A\09paddw     %mm7,%mm5\0A\09movq      %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09paddw     %mm5,%mm4\0A\09psrlw       $$ 8,%mm4\0A\09packuswb  %mm4,%mm1\0A\09pcmpeqb   %mm4,%mm4\0A\09psubb     %mm1,%mm4\0A\09movq      %mm0,%mm1\0A\09pandn     %mm4,%mm1\0A\09pminub %mm2, %mm3\0A\09pand      %mm0,%mm3\0A\09por       %mm3,%mm1\0A\09movd      %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{mm5},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !37
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_subtract_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "movq    $0,%mm0", "*m,~{mm0},~{dirflag},~{fpsr},~{flags}"(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rgba8_alpha_mask_64, i32 0, i32 0)) #1, !srcloc !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %n_pixels, align 8
  %cmp = icmp uge i64 %11, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64*, i64** %d, align 8
  %13 = load i64*, i64** %a, align 8
  %14 = load i64*, i64** %b, align 8
  call void asm sideeffect "  movq       $1,%mm2\0A\09movq       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movq    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %12, i64* %13, i64* %14) #1, !srcloc !39
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
  call void asm sideeffect "  movd       $1,%mm2\0A\09movd       $2,%mm3\0A\09movq    %mm2,%mm4\0A\09psubusb %mm3,%mm4\0A\09movq    %mm0,%mm1\0A\09pandn   %mm4,%mm1\0A\09pminub  %mm3,%mm2\0A\09pand    %mm0,%mm2\0A\09por     %mm2,%mm1\0A\09movd    %mm1,$0\0A", "=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %20, i64* %21, i64* %22) #1, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !41
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_composite_swap_rgba8_rgba8_rgba8_sse(%struct.GimpCompositeContext* %_op) #0 {
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
  call void asm sideeffect "  movq       $0,%mm2\0A\09movq       $1,%mm3\0A\09movq    %mm3,$0\0A\09movq    %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64* %10, i64* %9, i64* %10) #1, !srcloc !42
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
  call void asm sideeffect "  movd       $0,%mm2\0A\09movd       $1,%mm3\0A\09movd    %mm3,$0\0A\09movd    %mm2,$1\0A", "=*m,=*m,*m,*m,~{mm1},~{mm2},~{mm3},~{mm4},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64* %16, i64* %15, i64* %16) #1, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void asm sideeffect "emms", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !44
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 408616}
!2 = !{i32 408791, i32 408839, i32 408886, i32 408933, i32 408980, i32 409027, i32 409074, i32 409138, i32 409185, i32 409232}
!3 = !{i32 409477, i32 409522, i32 409566, i32 409613, i32 409660, i32 409707, i32 409754, i32 409818, i32 409865, i32 409912}
!4 = !{i32 410084}
!5 = !{i32 410403, i32 410446, i32 410488, i32 410552}
!6 = !{i32 410788, i32 410833, i32 410877, i32 410941}
!7 = !{i32 411097}
!8 = !{i32 411343}
!9 = !{i32 411470, i32 411518, i32 411565, i32 411612, i32 411659, i32 411706, i32 411753, i32 411800, i32 411847, i32 411894, i32 411941, i32 411988, i32 412035}
!10 = !{i32 412280, i32 412328, i32 412375, i32 412422, i32 412469, i32 412516, i32 412563, i32 412610, i32 412657, i32 412704, i32 412751, i32 412798, i32 412845}
!11 = !{i32 413017}
!12 = !{i32 413268, i32 413311, i32 413353}
!13 = !{i32 413573, i32 413622, i32 413670, i32 413707, i32 413764, i32 413801, i32 413858, i32 413906, i32 413954, i32 414003, i32 414040, i32 414097, i32 414134, i32 414192, i32 414240, i32 414289, i32 414337, i32 414386, i32 414434, i32 414483, i32 414531, i32 414580, i32 414628}
!14 = !{i32 414866, i32 414916, i32 414966, i32 415003, i32 415060, i32 415097, i32 415155, i32 415204, i32 415253, i32 415303, i32 415353, i32 415403, i32 415452, i32 415502, i32 415551, i32 415601, i32 415650}
!15 = !{i32 415816}
!16 = !{i32 416063, i32 416102, i32 416143}
!17 = !{i32 416358, i32 416408, i32 416458, i32 416495, i32 416552, i32 416589, i32 416646, i32 416695, i32 416745, i32 416782, i32 416839, i32 416876, i32 416933, i32 416982, i32 417032, i32 417082, i32 417146, i32 417196, i32 417245, i32 417294, i32 417343}
!18 = !{i32 417582, i32 417632, i32 417682, i32 417719, i32 417776, i32 417813, i32 417871, i32 417920, i32 417969, i32 418018, i32 418068, i32 418118, i32 418167, i32 418217, i32 418266, i32 418316, i32 418365}
!19 = !{i32 418531}
!20 = !{i32 418774}
!21 = !{i32 418901, i32 418949, i32 418996, i32 419043, i32 419090, i32 419137, i32 419184, i32 419231, i32 419278, i32 419325}
!22 = !{i32 419570, i32 419618, i32 419665, i32 419712, i32 419759, i32 419806, i32 419853, i32 419900, i32 419947, i32 419994}
!23 = !{i32 420166}
!24 = !{i32 420410}
!25 = !{i32 420487}
!26 = !{i32 420558}
!27 = !{i32 420661, i32 420711, i32 420761, i32 420798, i32 420855, i32 420892, i32 420949, i32 421201, i32 421238, i32 421295, i32 421332, i32 421389, i32 421641, i32 421691, i32 421740, i32 421789, i32 421838, i32 421902, i32 421951, i32 422001}
!28 = !{i32 422248, i32 422298, i32 422348, i32 422385, i32 422442, i32 422479, i32 422536, i32 422779, i32 422829, i32 422878, i32 422927, i32 422976, i32 423040, i32 423089, i32 423139}
!29 = !{i32 423313}
!30 = !{i32 423550, i32 423591, i32 423631, i32 423671, i32 423711, i32 423751, i32 423791, i32 423831, i32 423871, i32 423911}
!31 = !{i32 424156, i32 424205, i32 424253, i32 424301, i32 424350, i32 424577, i32 424603, i32 424651, i32 424699, i32 424748, i32 424975, i32 425001, i32 425050}
!32 = !{i32 425275, i32 425324, i32 425372, i32 425420, i32 425469, i32 425696, i32 425722, i32 425770}
!33 = !{i32 425941}
!34 = !{i32 426183, i32 426224, i32 426264}
!35 = !{i32 426482, i32 426531, i32 426580, i32 426628, i32 426676, i32 426724, i32 426773, i32 426821, i32 426869, i32 426917, i32 426965, i32 427013, i32 427061, i32 427109, i32 427158, i32 427206, i32 427254, i32 427302, i32 427351, i32 427399, i32 427447, i32 427495, i32 427543, i32 427591, i32 427639, i32 427687, i32 427736, i32 427785, i32 427833, i32 427882, i32 427930, i32 427979, i32 428043, i32 428092, i32 428141}
!36 = !{i32 428387, i32 428436, i32 428485, i32 428533, i32 428581, i32 428629, i32 428678, i32 428726, i32 428774, i32 428822, i32 428870, i32 428918, i32 428966, i32 429014, i32 429063, i32 429111, i32 429159, i32 429207, i32 429256, i32 429304, i32 429352, i32 429400, i32 429448, i32 429496, i32 429544, i32 429592, i32 429641, i32 429690, i32 429738, i32 429787, i32 429835, i32 429884, i32 429948, i32 429997, i32 430046}
!37 = !{i32 430219}
!38 = !{i32 430464}
!39 = !{i32 430591, i32 430638, i32 430684, i32 430730, i32 430776, i32 430822, i32 430868, i32 430914, i32 430960, i32 431006}
!40 = !{i32 431242, i32 431289, i32 431335, i32 431381, i32 431427, i32 431473, i32 431519, i32 431565, i32 431611, i32 431657}
!41 = !{i32 431820}
!42 = !{i32 432076, i32 432123, i32 432169, i32 432212}
!43 = !{i32 432429, i32 432476, i32 432522, i32 432565}
!44 = !{i32 432720}
