	.text
	.file	"repaint.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4613937818241073152     # double 3
.LCPI0_1:
	.quad	4621819117588971520     # double 10
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4636737291354636288     # double 100
.LCPI0_5:
	.quad	4636033603912859648     # double 90
.LCPI0_7:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_8:
	.quad	4643176031446892544     # double 255
.LCPI0_9:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI0_10:
	.quad	4562254508917369340     # double 0.001
.LCPI0_11:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI0_12:
	.quad	-4611686018427387904    # double -2
.LCPI0_13:
	.quad	4638707616191610880     # double 128
.LCPI0_14:
	.quad	4604930618986332160     # double 0.75
.LCPI0_15:
	.quad	4611686018427387904     # double 2
.LCPI0_16:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_4:
	.long	3212836864              # float -1
.LCPI0_6:
	.long	1097859072              # float 15
	.text
	.globl	repaint
	.align	16, 0x90
	.type	repaint,@function
repaint:                                # @repaint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-296(%rbp), %r8
	leaq	-280(%rbp), %r9
	leaq	-264(%rbp), %r10
	movl	$3, %ecx
	movl	%ecx, %r11d
	leaq	-135(%rbp), %rbx
	leaq	-88(%rbp), %r14
	leaq	-72(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	movq	%rbx, -728(%rbp)        # 8-byte Spill
	movq	%r14, -736(%rbp)        # 8-byte Spill
	movl	%eax, -740(%rbp)        # 4-byte Spill
	movq	%r11, -752(%rbp)        # 8-byte Spill
	movq	%r8, -760(%rbp)         # 8-byte Spill
	movq	%r9, -768(%rbp)         # 8-byte Spill
	movq	%r10, -776(%rbp)        # 8-byte Spill
	callq	memset
	movq	-736(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-740(%rbp), %esi        # 4-byte Reload
	movq	-720(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-740(%rbp), %esi        # 4-byte Reload
	movq	-752(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	$0, -168(%rbp)
	movq	-776(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-740(%rbp), %esi        # 4-byte Reload
	movq	-720(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-768(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-740(%rbp), %esi        # 4-byte Reload
	movq	-720(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-760(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-740(%rbp), %esi        # 4-byte Reload
	movq	-720(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	$0, -304(%rbp)
	movq	$0, -312(%rbp)
	movl	pcvals+3392, %eax
	movl	%eax, -320(%rbp)
	movl	pcvals+5072, %eax
	movl	%eax, -324(%rbp)
	cmpl	$0, repaint.running
	je	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_386
.LBB0_2:                                # %if.end
	movabsq	$runningvals, %rax
	movabsq	$pcvals, %rcx
	movl	$5088, %edx             # imm = 0x13E0
                                        # kill: RDX<def> EDX<kill>
	movl	repaint.running, %esi
	addl	$1, %esi
	movl	%esi, repaint.running
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpl	$0, img_has_alpha
	je	.LBB0_7
# BB#3:                                 # %if.then.38
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB0_5
# BB#4:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	4(%rax), %ecx
	je	.LBB0_6
.LBB0_5:                                # %if.then.42
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB0_386
.LBB0_6:                                # %if.end.43
	jmp	.LBB0_7
.LBB0_7:                                # %if.end.44
	movl	runningvals, %eax
	imull	runningvals+3408, %eax
	movl	%eax, -124(%rbp)
	movsd	runningvals+8, %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	runningvals+16, %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	runningvals+48, %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	cmpl	$1, runningvals+540
	jne	.LBB0_9
# BB#8:                                 # %if.then.46
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)
.LBB0_9:                                # %if.end.47
	movsd	runningvals+56, %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movslq	-124(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -144(%rbp)
	movslq	-124(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -176(%rbp)
	cmpl	$0, -320(%rbp)
	je	.LBB0_11
# BB#10:                                # %if.then.53
	movslq	-124(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -152(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else
	movq	$0, -152(%rbp)
.LBB0_12:                               # %if.end.57
	movq	-144(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-144(%rbp), %rdi
	callq	brush_get_selected
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movq	-144(%rbp), %rdi
	movq	-144(%rbp), %rax
	movl	(%rax), %esi
	movq	-144(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movsd	runningvals+3352, %xmm2 # xmm2 = mem[0],zero
	movsd	%xmm1, -784(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movl	%esi, -788(%rbp)        # 4-byte Spill
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	callq	pow
	movsd	-784(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movl	-788(%rbp), %esi        # 4-byte Reload
	callq	resize
	movsd	runningvals+3424, %xmm0 # xmm0 = mem[0],zero
	movq	-144(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	cmpl	4(%rax), %edx
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
	jle	.LBB0_14
# BB#13:                                # %cond.true
	movq	-144(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -812(%rbp)        # 4-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false
	movq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -812(%rbp)        # 4-byte Spill
.LBB0_15:                               # %cond.end
	movl	-812(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-808(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -200(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_16
	jp	.LBB0_16
	jmp	.LBB0_17
.LBB0_16:                               # %if.then.82
	movl	$1, %eax
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movq	-144(%rbp), %rdi
	divsd	-240(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ppm_apply_gamma
.LBB0_17:                               # %if.end.86
	movq	-144(%rbp), %rdi
	movq	-144(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-144(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize
	leaq	-135(%rbp), %r9
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movq	-144(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	imull	(%rax), %edx
	movq	-144(%rbp), %rax
	movl	4(%rax), %esi
	movq	-144(%rbp), %rax
	imull	4(%rax), %esi
	addl	%esi, %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%r9, -832(%rbp)         # 8-byte Spill
	callq	sqrt
	movsd	-824(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -108(%rbp)
	movq	-144(%rbp), %rdi
	movl	-108(%rbp), %edx
	movq	-144(%rbp), %rax
	subl	(%rax), %edx
	movl	-108(%rbp), %esi
	movq	-144(%rbp), %rax
	subl	(%rax), %esi
	movl	-108(%rbp), %ecx
	movq	-144(%rbp), %rax
	subl	4(%rax), %ecx
	movl	-108(%rbp), %r8d
	movq	-144(%rbp), %rax
	subl	4(%rax), %r8d
	movl	%esi, -836(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-836(%rbp), %edx        # 4-byte Reload
	movq	-832(%rbp), %r9         # 8-byte Reload
	callq	ppm_pad
	movl	$1, -108(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-144(%rbp), %rdi
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rsi
	callq	ppm_copy
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_18
.LBB0_21:                               # %for.end
	movl	$0, -108(%rbp)
.LBB0_22:                               # %for.cond.132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	movl	-108(%rbp), %eax
	cmpl	runningvals+3408, %eax
	jge	.LBB0_32
# BB#23:                                # %for.body.135
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, runningvals+3408
	jle	.LBB0_25
# BB#24:                                # %if.then.139
                                        #   in Loop: Header=BB0_22 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm1
	cvtsi2sdl	runningvals+3408, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -336(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.144
                                        #   in Loop: Header=BB0_22 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)
.LBB0_26:                               # %if.end.145
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$0, -112(%rbp)
.LBB0_27:                               # %for.cond.146
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	cmpl	runningvals, %eax
	jge	.LBB0_30
# BB#28:                                # %for.body.149
                                        #   in Loop: Header=BB0_27 Depth=2
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	imull	runningvals, %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movslq	-104(%rbp), %rdx
	shlq	$4, %rdx
	addq	-144(%rbp), %rdx
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm1
	mulsd	-224(%rbp), %xmm1
	cvtsi2sdl	runningvals, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	%rdx, %rdi
	callq	free_rotate
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movslq	-104(%rbp), %rdx
	shlq	$4, %rdx
	addq	-144(%rbp), %rdx
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	runningvals+3416, %xmm1
	subsd	-336(%rbp), %xmm0
	mulsd	runningvals+3424, %xmm0
	addsd	%xmm0, %xmm1
	divsd	runningvals+3424, %xmm1
	movq	%rdx, %rdi
	movaps	%xmm1, %xmm0
	callq	rescale
	movl	$1, %esi
	movslq	-104(%rbp), %rdx
	shlq	$4, %rdx
	addq	-144(%rbp), %rdx
	movq	%rdx, %rdi
	callq	autocrop
# BB#29:                                # %for.inc.168
                                        #   in Loop: Header=BB0_27 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_27
.LBB0_30:                               # %for.end.170
                                        #   in Loop: Header=BB0_22 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %for.inc.171
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_22
.LBB0_32:                               # %for.end.173
	movl	$0, -108(%rbp)
.LBB0_33:                               # %for.cond.174
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_38
# BB#34:                                # %for.body.177
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$0, runningvals+3388
	jne	.LBB0_36
# BB#35:                                # %if.then.179
                                        #   in Loop: Header=BB0_33 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	prepare_brush
.LBB0_36:                               # %if.end.182
                                        #   in Loop: Header=BB0_33 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	sum_brush
	movslq	-108(%rbp), %rax
	movq	-176(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
# BB#37:                                # %for.inc.188
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_33
.LBB0_38:                               # %for.end.190
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -108(%rbp)
.LBB0_39:                               # %for.cond.192
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_46
# BB#40:                                # %for.body.195
                                        #   in Loop: Header=BB0_39 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB0_42
# BB#41:                                # %if.then.201
                                        #   in Loop: Header=BB0_39 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -128(%rbp)
.LBB0_42:                               # %if.end.205
                                        #   in Loop: Header=BB0_39 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-132(%rbp), %ecx
	jle	.LBB0_44
# BB#43:                                # %if.then.211
                                        #   in Loop: Header=BB0_39 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -132(%rbp)
.LBB0_44:                               # %if.end.215
                                        #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_45
.LBB0_45:                               # %for.inc.216
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_39
.LBB0_46:                               # %for.end.218
	movl	$0, -108(%rbp)
.LBB0_47:                               # %for.cond.219
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_53
# BB#48:                                # %for.body.222
                                        #   in Loop: Header=BB0_47 Depth=1
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-347(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-128(%rbp), %eax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	-144(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -340(%rbp)
	movl	-132(%rbp), %eax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	-144(%rbp), %rcx
	subl	4(%rcx), %eax
	movl	%eax, -344(%rbp)
	cmpl	$0, -340(%rbp)
	jne	.LBB0_50
# BB#49:                                # %lor.lhs.false.235
                                        #   in Loop: Header=BB0_47 Depth=1
	cmpl	$0, -344(%rbp)
	je	.LBB0_51
.LBB0_50:                               # %if.then.237
                                        #   in Loop: Header=BB0_47 Depth=1
	leaq	-347(%rbp), %r9
	movl	$2, %eax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	-144(%rbp), %rcx
	movl	-340(%rbp), %edx
	movl	%eax, -840(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-840(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-340(%rbp), %edi
	movl	-340(%rbp), %r8d
	movl	%eax, -844(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	subl	%eax, %edi
	movl	-344(%rbp), %eax
	cltd
	idivl	%esi
	movl	-344(%rbp), %r8d
	movl	-344(%rbp), %r10d
	movl	%eax, -848(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%esi
	subl	%eax, %r8d
	movl	%edi, -852(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-844(%rbp), %esi        # 4-byte Reload
	movl	-852(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edx
	movl	-848(%rbp), %ecx        # 4-byte Reload
	callq	ppm_pad
.LBB0_51:                               # %if.end.247
                                        #   in Loop: Header=BB0_47 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %for.inc.248
                                        #   in Loop: Header=BB0_47 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_47
.LBB0_53:                               # %for.end.250
	cmpl	$0, -320(%rbp)
	je	.LBB0_63
# BB#54:                                # %if.then.252
	movl	$0, -108(%rbp)
.LBB0_55:                               # %for.cond.253
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_62
# BB#56:                                # %for.body.256
                                        #   in Loop: Header=BB0_55 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-152(%rbp), %rax
	movq	$0, 8(%rax)
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	-152(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	ppm_copy
	xorps	%xmm0, %xmm0
	movl	$1, %edx
	xorl	%ecx, %ecx
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-152(%rbp), %rax
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	ppm_apply_gamma
	leaq	-135(%rbp), %r9
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-152(%rbp), %rax
	movl	-324(%rbp), %ecx
	shll	$1, %ecx
	movl	-324(%rbp), %edx
	shll	$1, %edx
	movl	-324(%rbp), %esi
	shll	$1, %esi
	movl	-324(%rbp), %r8d
	shll	$1, %r8d
	movq	%rax, %rdi
	movl	%esi, -856(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-856(%rbp), %ecx        # 4-byte Reload
	callq	ppm_pad
	movl	$0, -112(%rbp)
.LBB0_57:                               # %for.cond.273
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jge	.LBB0_60
# BB#58:                                # %for.body.276
                                        #   in Loop: Header=BB0_57 Depth=2
	movl	$2, %eax
	movslq	-108(%rbp), %rcx
	shlq	$4, %rcx
	addq	-152(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
# BB#59:                                # %for.inc.279
                                        #   in Loop: Header=BB0_57 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB0_57
.LBB0_60:                               # %for.end.281
                                        #   in Loop: Header=BB0_55 Depth=1
	jmp	.LBB0_61
.LBB0_61:                               # %for.inc.282
                                        #   in Loop: Header=BB0_55 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_55
.LBB0_62:                               # %for.end.284
	jmp	.LBB0_63
.LBB0_63:                               # %if.end.285
	cmpl	$0, runningvals+536
	je	.LBB0_67
# BB#64:                                # %if.then.287
	movq	-32(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
	cmpl	$0, img_has_alpha
	je	.LBB0_66
# BB#65:                                # %if.then.289
	movq	-40(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
.LBB0_66:                               # %if.end.290
	jmp	.LBB0_67
.LBB0_67:                               # %if.end.291
	cmpl	$0, img_has_alpha
	je	.LBB0_72
# BB#68:                                # %if.then.293
	cmpl	$3, runningvals+64
	jne	.LBB0_70
# BB#69:                                # %if.then.296
	leaq	-88(%rbp), %rdi
	movw	.Lrepaint.tmpcol, %ax
	movw	%ax, -350(%rbp)
	movb	.Lrepaint.tmpcol+2, %cl
	movb	%cl, -348(%rbp)
	movq	-40(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %edx
	callq	ppm_new
	leaq	-88(%rbp), %rdi
	leaq	-350(%rbp), %rsi
	callq	fill
	jmp	.LBB0_71
.LBB0_70:                               # %if.else.301
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	ppm_copy
.LBB0_71:                               # %if.end.302
	jmp	.LBB0_72
.LBB0_72:                               # %if.end.303
	cmpl	$0, runningvals+64
	jne	.LBB0_74
# BB#73:                                # %if.then.306
	leaq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movabsq	$runningvals, %rax
	addq	$504, %rax              # imm = 0x1F8
	leaq	-353(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rdi, %r8
	addq	$2, %r8
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-864(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gimp_rgb_get_uchar
	leaq	-72(%rbp), %rdi
	leaq	-353(%rbp), %rsi
	callq	fill
	jmp	.LBB0_99
.LBB0_74:                               # %if.else.315
	cmpl	$1, runningvals+64
	jne	.LBB0_76
# BB#75:                                # %if.then.318
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	ppm_copy
	jmp	.LBB0_98
.LBB0_76:                               # %if.else.319
	leaq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movabsq	$runningvals, %rax
	addq	$304, %rax              # imm = 0x130
	leaq	-264(%rbp), %rsi
	movq	%rax, %rdi
	callq	ppm_load
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	runningvals+88, %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_77
	jp	.LBB0_77
	jmp	.LBB0_78
.LBB0_77:                               # %if.then.326
	leaq	-264(%rbp), %rdi
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	runningvals+88, %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	cvtsi2sdl	-264(%rbp), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	-260(%rbp), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize
.LBB0_78:                               # %if.end.336
	cmpl	$0, runningvals+96
	je	.LBB0_80
# BB#79:                                # %if.then.338
	leaq	-264(%rbp), %rdi
	movss	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ppm_apply_gamma
.LBB0_80:                               # %if.end.339
	cmpl	$0, runningvals+536
	je	.LBB0_82
# BB#81:                                # %cond.true.341
	movl	-264(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB0_83
.LBB0_82:                               # %cond.false.344
	xorl	%eax, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB0_83
.LBB0_83:                               # %cond.end.345
	movl	-868(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)
	cmpl	$0, runningvals+536
	je	.LBB0_85
# BB#84:                                # %cond.true.348
	movl	-260(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB0_86
.LBB0_85:                               # %cond.false.351
	xorl	%eax, %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB0_86
.LBB0_86:                               # %cond.end.352
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)
	movl	$0, -48(%rbp)
.LBB0_87:                               # %for.cond.354
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_97
# BB#88:                                # %for.body.358
                                        #   in Loop: Header=BB0_87 Depth=1
	movl	-48(%rbp), %eax
	addl	-364(%rbp), %eax
	cltd
	idivl	-260(%rbp)
	movl	%edx, -372(%rbp)
	movl	$0, -44(%rbp)
.LBB0_89:                               # %for.cond.363
                                        #   Parent Loop BB0_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB0_95
# BB#90:                                # %for.body.367
                                        #   in Loop: Header=BB0_89 Depth=2
	movl	-44(%rbp), %eax
	addl	-360(%rbp), %eax
	cltd
	idivl	-264(%rbp)
	movl	%edx, -376(%rbp)
	movl	-72(%rbp), %edx
	subl	-44(%rbp), %edx
	movl	-264(%rbp), %ecx
	subl	-376(%rbp), %ecx
	cmpl	%ecx, %edx
	jge	.LBB0_92
# BB#91:                                # %cond.true.378
                                        #   in Loop: Header=BB0_89 Depth=2
	movl	-72(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
	jmp	.LBB0_93
.LBB0_92:                               # %cond.false.381
                                        #   in Loop: Header=BB0_89 Depth=2
	movl	-264(%rbp), %eax
	subl	-376(%rbp), %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB0_93:                               # %cond.end.384
                                        #   in Loop: Header=BB0_89 Depth=2
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -368(%rbp)
	movl	-48(%rbp), %eax
	imull	-72(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -44(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	addq	-64(%rbp), %rdx
	movl	-372(%rbp), %eax
	imull	-264(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -376(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	addq	-256(%rbp), %rsi
	imull	$3, -368(%rbp), %eax
	movslq	%eax, %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-888(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#94:                                # %for.inc.404
                                        #   in Loop: Header=BB0_89 Depth=2
	movl	-368(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_89
.LBB0_95:                               # %for.end.406
                                        #   in Loop: Header=BB0_87 Depth=1
	jmp	.LBB0_96
.LBB0_96:                               # %for.inc.407
                                        #   in Loop: Header=BB0_87 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_87
.LBB0_97:                               # %for.end.409
	jmp	.LBB0_98
.LBB0_98:                               # %if.end.410
	jmp	.LBB0_99
.LBB0_99:                               # %if.end.411
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%edx, %ecx
	sarl	%ecx
	movl	%ecx, -180(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%edx, %ecx
	sarl	%ecx
	movl	%ecx, -184(%rbp)
	movl	-180(%rbp), %edx
	imull	%edx, %edx
	imull	%ecx, %ecx
	addl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -188(%rbp)
	movl	runningvals+24(%rip), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$7, %rsi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movq	%rsi, -904(%rbp)        # 8-byte Spill
	ja	.LBB0_149
# BB#387:                               # %if.end.411
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_100:                              # %sw.bb
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_101:                              # %for.cond.424
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_103 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB0_108
# BB#102:                               # %for.body.428
                                        #   in Loop: Header=BB0_101 Depth=1
	movl	-48(%rbp), %eax
	imull	-280(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -392(%rbp)
	movl	$0, -44(%rbp)
.LBB0_103:                              # %for.cond.443
                                        #   Parent Loop BB0_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB0_106
# BB#104:                               # %for.body.447
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$3, %eax
	imull	$3, -44(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-392(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	$3, -44(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-392(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	imull	$3, -44(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdx
	movq	-392(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -908(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-908(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-384(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
# BB#105:                               # %for.inc.469
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_103
.LBB0_106:                              # %for.end.471
                                        #   in Loop: Header=BB0_101 Depth=1
	jmp	.LBB0_107
.LBB0_107:                              # %for.inc.472
                                        #   in Loop: Header=BB0_101 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_101
.LBB0_108:                              # %for.end.474
	jmp	.LBB0_149
.LBB0_109:                              # %sw.bb.475
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_110:                              # %for.cond.478
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB0_117
# BB#111:                               # %for.body.482
                                        #   in Loop: Header=BB0_110 Depth=1
	movl	-48(%rbp), %eax
	imull	-280(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movl	-184(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	-184(%rbp), %edx
	subl	-48(%rbp), %edx
	imull	%edx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -408(%rbp)
	movl	$0, -44(%rbp)
.LBB0_112:                              # %for.cond.496
                                        #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB0_115
# BB#113:                               # %for.body.500
                                        #   in Loop: Header=BB0_112 Depth=2
	movl	-180(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%ecx, %eax
	imull	%eax, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-400(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
# BB#114:                               # %for.inc.514
                                        #   in Loop: Header=BB0_112 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_112
.LBB0_115:                              # %for.end.516
                                        #   in Loop: Header=BB0_110 Depth=1
	jmp	.LBB0_116
.LBB0_116:                              # %for.inc.517
                                        #   in Loop: Header=BB0_110 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_110
.LBB0_117:                              # %for.end.519
	jmp	.LBB0_149
.LBB0_118:                              # %sw.bb.520
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_119:                              # %for.cond.523
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB0_126
# BB#120:                               # %for.body.527
                                        #   in Loop: Header=BB0_119 Depth=1
	movl	-48(%rbp), %eax
	imull	-280(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movl	$0, -44(%rbp)
.LBB0_121:                              # %for.cond.536
                                        #   Parent Loop BB0_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB0_124
# BB#122:                               # %for.body.540
                                        #   in Loop: Header=BB0_121 Depth=2
	movl	-184(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-180(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	atan2
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-416(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
# BB#123:                               # %for.inc.553
                                        #   in Loop: Header=BB0_121 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_121
.LBB0_124:                              # %for.end.555
                                        #   in Loop: Header=BB0_119 Depth=1
	jmp	.LBB0_125
.LBB0_125:                              # %for.inc.556
                                        #   in Loop: Header=BB0_119 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_119
.LBB0_126:                              # %for.end.558
	jmp	.LBB0_149
.LBB0_127:                              # %sw.bb.559
	leaq	-280(%rbp), %rdi
	movl	$6, %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -912(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-912(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$5, %eax
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %r8d
	movl	%eax, -916(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	addl	$5, %eax
	movl	-916(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	ppm_new
	leaq	-280(%rbp), %rdi
	movss	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero,zero,zero
	callq	mkgrayplasma
	leaq	-280(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	leaq	-280(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %edx
	callq	resize
	leaq	-280(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	cmpl	$0, runningvals+536
	je	.LBB0_129
# BB#128:                               # %if.then.569
	leaq	-280(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
.LBB0_129:                              # %if.end.570
	jmp	.LBB0_149
.LBB0_130:                              # %sw.bb.571
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_131:                              # %for.cond.574
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_133 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB0_138
# BB#132:                               # %for.body.578
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-48(%rbp), %eax
	imull	-280(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -432(%rbp)
	movl	$0, -44(%rbp)
.LBB0_133:                              # %for.cond.595
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB0_136
# BB#134:                               # %for.body.599
                                        #   in Loop: Header=BB0_133 Depth=2
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	addq	-432(%rbp), %rcx
	movq	%rcx, %rdi
	callq	get_hue
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdi
	movb	%dl, (%rdi,%rcx)
# BB#135:                               # %for.inc.608
                                        #   in Loop: Header=BB0_133 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_133
.LBB0_136:                              # %for.end.610
                                        #   in Loop: Header=BB0_131 Depth=1
	jmp	.LBB0_137
.LBB0_137:                              # %for.inc.611
                                        #   in Loop: Header=BB0_131 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_131
.LBB0_138:                              # %for.end.613
	jmp	.LBB0_149
.LBB0_139:                              # %sw.bb.614
	leaq	-280(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-435(%rbp), %rcx
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-928(%rbp), %rdi        # 8-byte Reload
	callq	ppm_new
	leaq	-280(%rbp), %rdi
	leaq	-435(%rbp), %rsi
	callq	fill
	jmp	.LBB0_149
.LBB0_140:                              # %sw.bb.620
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	-128(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movl	-132(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_141:                              # %for.cond.627
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_143 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB0_148
# BB#142:                               # %for.body.631
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-48(%rbp), %eax
	imull	-280(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-272(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-276(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -456(%rbp)
	movl	$0, -44(%rbp)
.LBB0_143:                              # %for.cond.645
                                        #   Parent Loop BB0_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB0_146
# BB#144:                               # %for.body.649
                                        #   in Loop: Header=BB0_143 Depth=2
	movl	$1, %edi
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-280(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-456(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_direction
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	get_pixel_value
	movb	%al, %cl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-448(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#145:                               # %for.inc.661
                                        #   in Loop: Header=BB0_143 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_143
.LBB0_146:                              # %for.end.663
                                        #   in Loop: Header=BB0_141 Depth=1
	jmp	.LBB0_147
.LBB0_147:                              # %for.inc.664
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_141
.LBB0_148:                              # %for.end.666
	leaq	-280(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
.LBB0_149:                              # %sw.epilog
	cmpl	$0, runningvals+3432
	jne	.LBB0_159
# BB#150:                               # %if.then.669
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_151:                              # %for.cond.672
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_153 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB0_158
# BB#152:                               # %for.body.676
                                        #   in Loop: Header=BB0_151 Depth=1
	movl	-48(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-288(%rbp), %rcx
	movq	%rcx, -464(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -472(%rbp)
	movl	$0, -44(%rbp)
.LBB0_153:                              # %for.cond.693
                                        #   Parent Loop BB0_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB0_156
# BB#154:                               # %for.body.697
                                        #   in Loop: Header=BB0_153 Depth=2
	movl	$3, %eax
	imull	$3, -44(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-472(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	$3, -44(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	-472(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	imull	$3, -44(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdx
	movq	-472(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	movl	%eax, -932(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-932(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-464(%rbp), %r9
	movb	%r8b, (%r9,%rsi)
# BB#155:                               # %for.inc.719
                                        #   in Loop: Header=BB0_153 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_153
.LBB0_156:                              # %for.end.721
                                        #   in Loop: Header=BB0_151 Depth=1
	jmp	.LBB0_157
.LBB0_157:                              # %for.inc.722
                                        #   in Loop: Header=BB0_151 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_151
.LBB0_158:                              # %for.end.724
	jmp	.LBB0_211
.LBB0_159:                              # %if.else.725
	cmpl	$1, runningvals+3432
	jne	.LBB0_169
# BB#160:                               # %if.then.728
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_161:                              # %for.cond.731
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_163 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB0_168
# BB#162:                               # %for.body.735
                                        #   in Loop: Header=BB0_161 Depth=1
	movl	-48(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-288(%rbp), %rcx
	movq	%rcx, -480(%rbp)
	movl	-184(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	-184(%rbp), %edx
	subl	-48(%rbp), %edx
	imull	%edx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -488(%rbp)
	movl	$0, -44(%rbp)
.LBB0_163:                              # %for.cond.750
                                        #   Parent Loop BB0_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB0_166
# BB#164:                               # %for.body.754
                                        #   in Loop: Header=BB0_163 Depth=2
	movl	-180(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%ecx, %eax
	imull	%eax, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-488(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-480(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
# BB#165:                               # %for.inc.768
                                        #   in Loop: Header=BB0_163 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_163
.LBB0_166:                              # %for.end.770
                                        #   in Loop: Header=BB0_161 Depth=1
	jmp	.LBB0_167
.LBB0_167:                              # %for.inc.771
                                        #   in Loop: Header=BB0_161 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_161
.LBB0_168:                              # %for.end.773
	jmp	.LBB0_210
.LBB0_169:                              # %if.else.774
	cmpl	$3, runningvals+3432
	jne	.LBB0_179
# BB#170:                               # %if.then.777
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_171:                              # %for.cond.780
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_173 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB0_178
# BB#172:                               # %for.body.784
                                        #   in Loop: Header=BB0_171 Depth=1
	movl	-48(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-288(%rbp), %rcx
	movq	%rcx, -496(%rbp)
	movl	$0, -44(%rbp)
.LBB0_173:                              # %for.cond.793
                                        #   Parent Loop BB0_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB0_176
# BB#174:                               # %for.body.797
                                        #   in Loop: Header=BB0_173 Depth=2
	movl	-184(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-180(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	atan2
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-496(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
# BB#175:                               # %for.inc.810
                                        #   in Loop: Header=BB0_173 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_173
.LBB0_176:                              # %for.end.812
                                        #   in Loop: Header=BB0_171 Depth=1
	jmp	.LBB0_177
.LBB0_177:                              # %for.inc.813
                                        #   in Loop: Header=BB0_171 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_171
.LBB0_178:                              # %for.end.815
	jmp	.LBB0_209
.LBB0_179:                              # %if.else.816
	cmpl	$4, runningvals+3432
	jne	.LBB0_183
# BB#180:                               # %if.then.819
	leaq	-296(%rbp), %rdi
	movl	$6, %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -936(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-936(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$5, %eax
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %r8d
	movl	%eax, -940(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	addl	$5, %eax
	movl	-940(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	ppm_new
	leaq	-296(%rbp), %rdi
	movss	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero,zero,zero
	callq	mkgrayplasma
	leaq	-296(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	leaq	-296(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %edx
	callq	resize
	leaq	-296(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	blur
	cmpl	$0, runningvals+536
	je	.LBB0_182
# BB#181:                               # %if.then.829
	leaq	-296(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
.LBB0_182:                              # %if.end.830
	jmp	.LBB0_208
.LBB0_183:                              # %if.else.831
	cmpl	$5, runningvals+3432
	jne	.LBB0_193
# BB#184:                               # %if.then.834
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_185:                              # %for.cond.837
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_187 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB0_192
# BB#186:                               # %for.body.841
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	-48(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-288(%rbp), %rcx
	movq	%rcx, -504(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -512(%rbp)
	movl	$0, -44(%rbp)
.LBB0_187:                              # %for.cond.858
                                        #   Parent Loop BB0_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB0_190
# BB#188:                               # %for.body.862
                                        #   in Loop: Header=BB0_187 Depth=2
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	addq	-512(%rbp), %rcx
	movq	%rcx, %rdi
	callq	get_hue
	movb	%al, %dl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rdi
	movb	%dl, (%rdi,%rcx)
# BB#189:                               # %for.inc.871
                                        #   in Loop: Header=BB0_187 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_187
.LBB0_190:                              # %for.end.873
                                        #   in Loop: Header=BB0_185 Depth=1
	jmp	.LBB0_191
.LBB0_191:                              # %for.inc.874
                                        #   in Loop: Header=BB0_185 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_185
.LBB0_192:                              # %for.end.876
	jmp	.LBB0_207
.LBB0_193:                              # %if.else.877
	cmpl	$6, runningvals+3432
	jne	.LBB0_195
# BB#194:                               # %if.then.880
	leaq	-296(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-515(%rbp), %rcx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-952(%rbp), %rdi        # 8-byte Reload
	callq	ppm_new
	leaq	-296(%rbp), %rdi
	leaq	-515(%rbp), %rsi
	callq	fill
	jmp	.LBB0_206
.LBB0_195:                              # %if.else.886
	cmpl	$7, runningvals+3432
	jne	.LBB0_205
# BB#196:                               # %if.then.889
	leaq	-296(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	-128(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movl	-132(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB0_197:                              # %for.cond.896
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_199 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB0_204
# BB#198:                               # %for.body.900
                                        #   in Loop: Header=BB0_197 Depth=1
	movl	-48(%rbp), %eax
	imull	-296(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-288(%rbp), %rcx
	movq	%rcx, -528(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-292(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -536(%rbp)
	movl	$0, -44(%rbp)
.LBB0_199:                              # %for.cond.915
                                        #   Parent Loop BB0_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB0_202
# BB#200:                               # %for.body.919
                                        #   in Loop: Header=BB0_199 Depth=2
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-296(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_siz_from_pcvals
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-528(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#201:                               # %for.inc.931
                                        #   in Loop: Header=BB0_199 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_199
.LBB0_202:                              # %for.end.933
                                        #   in Loop: Header=BB0_197 Depth=1
	jmp	.LBB0_203
.LBB0_203:                              # %for.inc.934
                                        #   in Loop: Header=BB0_197 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_197
.LBB0_204:                              # %for.end.936
	leaq	-296(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	edgepad
.LBB0_205:                              # %if.end.937
	jmp	.LBB0_206
.LBB0_206:                              # %if.end.938
	jmp	.LBB0_207
.LBB0_207:                              # %if.end.939
	jmp	.LBB0_208
.LBB0_208:                              # %if.end.940
	jmp	.LBB0_209
.LBB0_209:                              # %if.end.941
	jmp	.LBB0_210
.LBB0_210:                              # %if.end.942
	jmp	.LBB0_211
.LBB0_211:                              # %if.end.943
	cmpl	$0, runningvals+540
	jne	.LBB0_213
# BB#212:                               # %if.then.946
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	-128(%rbp), %ecx
	imull	-132(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -108(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_216
.LBB0_213:                              # %if.else.955
	cmpl	$1, runningvals+540
	jne	.LBB0_215
# BB#214:                               # %if.then.958
	cvtsi2sdl	-72(%rbp), %xmm0
	mulsd	-232(%rbp), %xmm0
	cvtsi2sdl	-128(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-232(%rbp), %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	imull	%ecx, %eax
	movl	%eax, -108(%rbp)
.LBB0_215:                              # %if.end.972
	jmp	.LBB0_216
.LBB0_216:                              # %if.end.973
	cmpl	$1, -108(%rbp)
	jge	.LBB0_218
# BB#217:                               # %if.then.976
	movl	$1, -108(%rbp)
.LBB0_218:                              # %if.end.977
	movl	$30, %eax
	movl	-108(%rbp), %ecx
	movl	%ecx, -244(%rbp)
	movl	-244(%rbp), %ecx
	movl	%eax, -956(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-956(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -316(%rbp)
	cmpl	$10, -316(%rbp)
	jge	.LBB0_220
# BB#219:                               # %if.then.981
	movl	$10, -316(%rbp)
.LBB0_220:                              # %if.end.982
	cmpl	$1, runningvals+540
	jne	.LBB0_232
# BB#221:                               # %if.then.985
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-108(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -304(%rbp)
	movslq	-108(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -312(%rbp)
	movl	$0, -540(%rbp)
.LBB0_222:                              # %for.cond.992
                                        # =>This Inner Loop Header: Depth=1
	movl	-540(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB0_227
# BB#223:                               # %for.body.995
                                        #   in Loop: Header=BB0_222 Depth=1
	movsd	.LCPI0_16, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	mulsd	-232(%rbp), %xmm1
	cvtsi2sdl	-128(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -544(%rbp)
	cmpl	$1, -544(%rbp)
	jge	.LBB0_225
# BB#224:                               # %if.then.1006
                                        #   in Loop: Header=BB0_222 Depth=1
	movl	$1, -544(%rbp)
.LBB0_225:                              # %if.end.1007
                                        #   in Loop: Header=BB0_222 Depth=1
	movl	$2, %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -960(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-960(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movl	-540(%rbp), %eax
	cltd
	idivl	-544(%rbp)
	imull	-128(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	-232(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movslq	-540(%rbp), %rsi
	movq	-304(%rbp), %rdi
	movl	%edx, (%rdi,%rsi,4)
	movl	-132(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movl	-540(%rbp), %eax
	cltd
	idivl	-544(%rbp)
	imull	-132(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	-232(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-540(%rbp), %rsi
	movq	-312(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#226:                               # %for.inc.1028
                                        #   in Loop: Header=BB0_222 Depth=1
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_222
.LBB0_227:                              # %for.end.1030
	movl	$0, -540(%rbp)
.LBB0_228:                              # %for.cond.1031
                                        # =>This Inner Loop Header: Depth=1
	movl	-540(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB0_231
# BB#229:                               # %for.body.1034
                                        #   in Loop: Header=BB0_228 Depth=1
	xorl	%esi, %esi
	movq	random_generator, %rdi
	movl	-108(%rbp), %edx
	callq	g_rand_int_range
	movl	%eax, -548(%rbp)
	movslq	-540(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, -552(%rbp)
	movslq	-548(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movl	(%rdi,%rcx,4), %eax
	movslq	-540(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
	movl	-552(%rbp), %eax
	movslq	-548(%rbp), %rcx
	movq	-304(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
	movslq	-540(%rbp), %rcx
	movq	-312(%rbp), %rdi
	movl	(%rdi,%rcx,4), %eax
	movl	%eax, -552(%rbp)
	movslq	-548(%rbp), %rcx
	movq	-312(%rbp), %rdi
	movl	(%rdi,%rcx,4), %eax
	movslq	-540(%rbp), %rcx
	movq	-312(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
	movl	-552(%rbp), %eax
	movslq	-548(%rbp), %rcx
	movq	-312(%rbp), %rdi
	movl	%eax, (%rdi,%rcx,4)
# BB#230:                               # %for.inc.1056
                                        #   in Loop: Header=BB0_228 Depth=1
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB0_228
.LBB0_231:                              # %for.end.1058
	jmp	.LBB0_232
.LBB0_232:                              # %if.end.1059
	jmp	.LBB0_233
.LBB0_233:                              # %for.cond.1060
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_238 Depth 2
                                        #     Child Loop BB0_286 Depth 2
                                        #       Child Loop BB0_288 Depth 3
	cmpl	$0, -108(%rbp)
	je	.LBB0_341
# BB#234:                               # %for.body.1062
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-108(%rbp), %eax
	cltd
	idivl	-316(%rbp)
	cmpl	$0, %edx
	jne	.LBB0_242
# BB#235:                               # %if.then.1068
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, runningvals+100
	je	.LBB0_237
# BB#236:                               # %if.then.1070
                                        #   in Loop: Header=BB0_233 Depth=1
	movsd	.LCPI0_11, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm1
	cvtsi2sdl	-244(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	callq	gimp_progress_update
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB0_241
.LBB0_237:                              # %if.else.1077
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$40, %eax
	movl	%eax, %esi
	movabsq	$.L.str.1, %rdx
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	leaq	-608(%rbp), %rdi
	cvtsi2sdl	-108(%rbp), %xmm2
	cvtsi2sdl	-244(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movb	$1, %al
	callq	g_snprintf
	leaq	-608(%rbp), %rdi
	movl	%eax, -968(%rbp)        # 4-byte Spill
	callq	preview_set_button_label
.LBB0_238:                              # %while.cond
                                        #   Parent Loop BB0_233 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB0_240
# BB#239:                               # %while.body
                                        #   in Loop: Header=BB0_238 Depth=2
	callq	gtk_main_iteration
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB0_238
.LBB0_240:                              # %while.end
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_241
.LBB0_241:                              # %if.end.1090
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_242
.LBB0_242:                              # %if.end.1091
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, runningvals+540
	jne	.LBB0_244
# BB#243:                               # %if.then.1094
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movq	random_generator, %rdi
	movl	-128(%rbp), %ecx
	movl	%eax, -976(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-976(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-72(%rbp), %esi
	movl	-128(%rbp), %r8d
	movl	%eax, -980(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	subl	%eax, %esi
	movl	-980(%rbp), %eax        # 4-byte Reload
	movl	%esi, -984(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-984(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, %edx
	callq	g_rand_int_range
	movl	$2, %ecx
	movl	%eax, -52(%rbp)
	movq	random_generator, %rdi
	movl	-132(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-68(%rbp), %esi
	movl	-132(%rbp), %r8d
	movl	%eax, -988(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	subl	%eax, %esi
	movl	-988(%rbp), %eax        # 4-byte Reload
	movl	%esi, -992(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-992(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	callq	g_rand_int_range
	movl	%eax, -56(%rbp)
	jmp	.LBB0_247
.LBB0_244:                              # %if.else.1105
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$1, runningvals+540
	jne	.LBB0_246
# BB#245:                               # %if.then.1108
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-108(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-304(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-108(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-312(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -56(%rbp)
.LBB0_246:                              # %if.end.1115
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_247
.LBB0_247:                              # %if.end.1116
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, runningvals+3348
	je	.LBB0_249
# BB#248:                               # %if.then.1118
                                        #   in Loop: Header=BB0_233 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_14, %xmm1        # xmm1 = mem[0],zero
	movq	random_generator, %rdi
	callq	g_rand_double_range
	movl	$2, %eax
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -616(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	subsd	-616(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movl	-72(%rbp), %ecx
	movl	%eax, -996(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-996(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	mulsd	-616(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	subsd	-616(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	mulsd	-616(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
.LBB0_249:                              # %if.end.1139
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1000(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB0_253
# BB#250:                               # %lor.lhs.false.1143
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-56(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1004(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB0_253
# BB#251:                               # %lor.lhs.false.1147
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1008(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-32(%rbp), %rdi
	cmpl	(%rdi), %ecx
	jge	.LBB0_253
# BB#252:                               # %lor.lhs.false.1153
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-56(%rbp), %ecx
	movl	-132(%rbp), %edx
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1012(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-32(%rbp), %rdi
	cmpl	4(%rdi), %ecx
	jl	.LBB0_254
.LBB0_253:                              # %if.then.1159
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_340
.LBB0_254:                              # %if.end.1160
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, img_has_alpha
	je	.LBB0_258
# BB#255:                               # %if.then.1162
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -52(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	cmpl	$128, %eax
	jle	.LBB0_257
# BB#256:                               # %if.then.1174
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_340
.LBB0_257:                              # %if.end.1175
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_258
.LBB0_258:                              # %if.end.1176
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	runningvals+24(%rip), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -1016(%rbp)       # 4-byte Spill
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	jb	.LBB0_260
	jmp	.LBB0_388
.LBB0_388:                              # %if.end.1176
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1016(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	je	.LBB0_259
	jmp	.LBB0_389
.LBB0_389:                              # %if.end.1176
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1016(%rbp), %eax       # 4-byte Reload
	addl	$-3, %eax
	subl	$3, %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jb	.LBB0_260
	jmp	.LBB0_390
.LBB0_390:                              # %if.end.1176
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1016(%rbp), %eax       # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -1032(%rbp)       # 4-byte Spill
	je	.LBB0_261
	jmp	.LBB0_391
.LBB0_391:                              # %if.end.1176
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1016(%rbp), %eax       # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	je	.LBB0_260
	jmp	.LBB0_262
.LBB0_259:                              # %sw.bb.1177
                                        #   in Loop: Header=BB0_233 Depth=1
	xorl	%esi, %esi
	movq	random_generator, %rdi
	movl	runningvals, %edx
	callq	g_rand_int_range
	movl	%eax, -116(%rbp)
	jmp	.LBB0_263
.LBB0_260:                              # %sw.bb.1179
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	runningvals, %ecx
	movl	-56(%rbp), %edx
	imull	-280(%rbp), %edx
	imull	$3, %edx, %edx
	imull	$3, -52(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	movq	-272(%rbp), %r8
	movzbl	(%r8,%rdi), %edx
	imull	%edx, %ecx
	movl	%eax, -1040(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1040(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -116(%rbp)
	jmp	.LBB0_263
.LBB0_261:                              # %sw.bb.1191
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_263
.LBB0_262:                              # %sw.default
                                        #   in Loop: Header=BB0_233 Depth=1
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -116(%rbp)
.LBB0_263:                              # %sw.epilog.1192
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	runningvals+3432(%rip), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
	jb	.LBB0_265
	jmp	.LBB0_392
.LBB0_392:                              # %sw.epilog.1192
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	je	.LBB0_264
	jmp	.LBB0_393
.LBB0_393:                              # %sw.epilog.1192
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	addl	$-3, %eax
	subl	$3, %eax
	movl	%eax, -1056(%rbp)       # 4-byte Spill
	jb	.LBB0_265
	jmp	.LBB0_394
.LBB0_394:                              # %sw.epilog.1192
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	je	.LBB0_266
	jmp	.LBB0_395
.LBB0_395:                              # %sw.epilog.1192
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	je	.LBB0_265
	jmp	.LBB0_267
.LBB0_264:                              # %sw.bb.1193
                                        #   in Loop: Header=BB0_233 Depth=1
	xorl	%esi, %esi
	movq	random_generator, %rdi
	movl	runningvals+3408, %edx
	callq	g_rand_int_range
	movl	%eax, -120(%rbp)
	jmp	.LBB0_268
.LBB0_265:                              # %sw.bb.1195
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	runningvals+3408, %ecx
	movl	-56(%rbp), %edx
	imull	-296(%rbp), %edx
	imull	$3, %edx, %edx
	imull	$3, -52(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	movq	-288(%rbp), %r8
	movzbl	(%r8,%rdi), %edx
	imull	%edx, %ecx
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1068(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -120(%rbp)
	jmp	.LBB0_268
.LBB0_266:                              # %sw.bb.1207
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_268
.LBB0_267:                              # %sw.default.1208
                                        #   in Loop: Header=BB0_233 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -120(%rbp)
.LBB0_268:                              # %sw.epilog.1209
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$6, runningvals+24
	jne	.LBB0_273
# BB#269:                               # %if.then.1212
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$6, runningvals+3432
	jne	.LBB0_271
# BB#270:                               # %if.then.1215
                                        #   in Loop: Header=BB0_233 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	movl	%edx, -1076(%rbp)       # 4-byte Spill
	cltd
	movl	-1076(%rbp), %r9d       # 4-byte Reload
	idivl	%r9d
	subl	%eax, %r8d
	movl	-56(%rbp), %eax
	movl	-132(%rbp), %r10d
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r9d
	movl	-1080(%rbp), %r10d      # 4-byte Reload
	subl	%eax, %r10d
	movq	-144(%rbp), %r11
	movl	-124(%rbp), %r9d
	movq	-176(%rbp), %rbx
	movl	%r8d, %edx
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	movl	%r10d, %ecx
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	choose_best_brush
	movl	%eax, -556(%rbp)
	jmp	.LBB0_272
.LBB0_271:                              # %if.else.1221
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movl	-120(%rbp), %edx
	imull	runningvals, %edx
	movl	%edx, -620(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -1092(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-1092(%rbp), %r8d       # 4-byte Reload
	subl	%eax, %r8d
	movl	-56(%rbp), %eax
	movl	-132(%rbp), %r9d
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	movl	-1096(%rbp), %ecx       # 4-byte Reload
	subl	%eax, %ecx
	movq	-144(%rbp), %r10
	movl	-620(%rbp), %eax
	addl	runningvals, %eax
	movq	-176(%rbp), %r11
	movl	-620(%rbp), %r9d
	movl	%r8d, %edx
	movq	%r10, %r8
	movl	%r9d, -1100(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movq	%r11, (%rsp)
	movl	-1100(%rbp), %eax       # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	choose_best_brush
	movl	%eax, -556(%rbp)
.LBB0_272:                              # %if.end.1230
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_277
.LBB0_273:                              # %if.else.1231
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$6, runningvals+3432
	jne	.LBB0_275
# BB#274:                               # %if.then.1234
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1104(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	subl	%eax, %ecx
	movl	-56(%rbp), %eax
	movl	-132(%rbp), %r9d
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	movl	-1108(%rbp), %r9d       # 4-byte Reload
	subl	%eax, %r9d
	movq	-144(%rbp), %r8
	movl	-124(%rbp), %eax
	movq	-176(%rbp), %r10
	movl	-116(%rbp), %r11d
	movl	runningvals, %ebx
	movl	%ecx, %edx
	movl	%r9d, %ecx
	movl	%eax, %r9d
	movq	%r10, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	choose_best_brush
	movl	%eax, -556(%rbp)
	jmp	.LBB0_276
.LBB0_275:                              # %if.else.1240
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-120(%rbp), %eax
	imull	runningvals, %eax
	addl	-116(%rbp), %eax
	movl	%eax, -556(%rbp)
.LBB0_276:                              # %if.end.1243
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_277
.LBB0_277:                              # %if.end.1244
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, -556(%rbp)
	jge	.LBB0_279
# BB#278:                               # %if.then.1247
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$0, -556(%rbp)
	jmp	.LBB0_282
.LBB0_279:                              # %if.else.1248
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-556(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.LBB0_281
# BB#280:                               # %if.then.1251
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -556(%rbp)
.LBB0_281:                              # %if.end.1253
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_282
.LBB0_282:                              # %if.end.1254
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1112(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	-52(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -52(%rbp)
	movl	-132(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -56(%rbp)
	movslq	-556(%rbp), %rdi
	shlq	$4, %rdi
	addq	-144(%rbp), %rdi
	movq	%rdi, -160(%rbp)
	cmpl	$0, -320(%rbp)
	je	.LBB0_284
# BB#283:                               # %if.then.1262
                                        #   in Loop: Header=BB0_233 Depth=1
	movslq	-556(%rbp), %rax
	shlq	$4, %rax
	addq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB0_284:                              # %if.end.1265
                                        #   in Loop: Header=BB0_233 Depth=1
	movslq	-556(%rbp), %rax
	movq	-176(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)
	cmpl	$0, runningvals+5076
	jne	.LBB0_296
# BB#285:                               # %if.then.1270
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -48(%rbp)
.LBB0_286:                              # %for.cond.1271
                                        #   Parent Loop BB0_233 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_288 Depth 3
	movl	-48(%rbp), %eax
	movq	-160(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_295
# BB#287:                               # %for.body.1275
                                        #   in Loop: Header=BB0_286 Depth=2
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -632(%rbp)
	movl	$0, -44(%rbp)
.LBB0_288:                              # %for.cond.1284
                                        #   Parent Loop BB0_233 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	movq	-160(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_293
# BB#289:                               # %for.body.1288
                                        #   in Loop: Header=BB0_288 Depth=3
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -636(%rbp)
	movl	-48(%rbp), %eax
	movq	-160(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -44(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, %eax
	je	.LBB0_291
# BB#290:                               # %if.then.1303
                                        #   in Loop: Header=BB0_288 Depth=3
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -648(%rbp)
	movl	-636(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-632(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-648(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -92(%rbp)
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-632(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-648(%rbp), %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -96(%rbp)
	movl	-636(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-632(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-648(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -100(%rbp)
.LBB0_291:                              # %if.end.1333
                                        #   in Loop: Header=BB0_288 Depth=3
	jmp	.LBB0_292
.LBB0_292:                              # %for.inc.1334
                                        #   in Loop: Header=BB0_288 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_288
.LBB0_293:                              # %for.end.1336
                                        #   in Loop: Header=BB0_286 Depth=2
	jmp	.LBB0_294
.LBB0_294:                              # %for.inc.1337
                                        #   in Loop: Header=BB0_286 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_286
.LBB0_295:                              # %for.end.1339
                                        #   in Loop: Header=BB0_233 Depth=1
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	divsd	-568(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	divsd	-568(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	divsd	-568(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_300
.LBB0_296:                              # %if.else.1352
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$1, runningvals+5076
	jne	.LBB0_298
# BB#297:                               # %if.then.1355
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %eax
	movl	-56(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movl	4(%rdx), %esi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1116(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	-52(%rbp), %eax
	movq	-160(%rbp), %rdi
	movl	(%rdi), %ecx
	movl	%eax, -1120(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-1120(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rdi
	imull	(%rdi), %eax
	imull	$3, %eax, %eax
	imull	$3, -44(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %r8
	addq	8(%r8), %rdi
	movq	%rdi, -656(%rbp)
	movq	-656(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, -92(%rbp)
	movq	-656(%rbp), %rdi
	movzbl	1(%rdi), %eax
	movl	%eax, -96(%rbp)
	movq	-656(%rbp), %rdi
	movzbl	2(%rdi), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_299
.LBB0_298:                              # %if.else.1377
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
.LBB0_299:                              # %if.end.1378
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_300
.LBB0_300:                              # %if.end.1379
                                        #   in Loop: Header=BB0_233 Depth=1
	xorps	%xmm0, %xmm0
	movsd	runningvals+5080, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_320
# BB#301:                               # %if.then.1382
                                        #   in Loop: Header=BB0_233 Depth=1
	movsd	.LCPI0_15, %xmm0        # xmm0 = mem[0],zero
	movsd	runningvals+5080, %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, -664(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm1
	movq	random_generator, %rdi
	movsd	-664(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	divsd	%xmm0, %xmm2
	movsd	-664(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1128(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	movsd	-1128(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB0_303
# BB#302:                               # %cond.true.1394
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB0_307
.LBB0_303:                              # %cond.false.1395
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$255, -92(%rbp)
	jle	.LBB0_305
# BB#304:                               # %cond.true.1398
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$255, %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB0_306
.LBB0_305:                              # %cond.false.1399
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
.LBB0_306:                              # %cond.end.1400
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1136(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1132(%rbp)       # 4-byte Spill
.LBB0_307:                              # %cond.end.1402
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movsd	.LCPI0_15, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm1
	movq	random_generator, %rdi
	movsd	-664(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm2
	divsd	%xmm0, %xmm2
	movsd	-664(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1144(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	movsd	-1144(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jge	.LBB0_309
# BB#308:                               # %cond.true.1413
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	jmp	.LBB0_313
.LBB0_309:                              # %cond.false.1414
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$255, -96(%rbp)
	jle	.LBB0_311
# BB#310:                               # %cond.true.1417
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$255, %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	jmp	.LBB0_312
.LBB0_311:                              # %cond.false.1418
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
.LBB0_312:                              # %cond.end.1419
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1152(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1148(%rbp)       # 4-byte Spill
.LBB0_313:                              # %cond.end.1421
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	movsd	.LCPI0_15, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm1
	movq	random_generator, %rdi
	movsd	-664(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm2
	divsd	%xmm0, %xmm2
	movsd	-664(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -1160(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	g_rand_double_range
	movsd	-1160(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jge	.LBB0_315
# BB#314:                               # %cond.true.1432
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	jmp	.LBB0_319
.LBB0_315:                              # %cond.false.1433
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$255, -100(%rbp)
	jle	.LBB0_317
# BB#316:                               # %cond.true.1436
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$255, %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	jmp	.LBB0_318
.LBB0_317:                              # %cond.false.1437
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
.LBB0_318:                              # %cond.end.1438
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1168(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1164(%rbp)       # 4-byte Spill
.LBB0_319:                              # %cond.end.1440
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-1164(%rbp), %eax       # 4-byte Reload
	movl	%eax, -100(%rbp)
.LBB0_320:                              # %if.end.1442
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-92(%rbp), %eax
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
	cmpl	$0, runningvals+3376
	je	.LBB0_339
# BB#321:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, runningvals+536
	je	.LBB0_339
# BB#322:                               # %if.then.1445
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-72(%rbp), %eax
	movl	-128(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movl	-68(%rbp), %eax
	movl	-132(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -672(%rbp)
	movl	$0, -676(%rbp)
	movl	$0, -680(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB0_324
# BB#323:                               # %if.then.1458
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %eax
	addl	-668(%rbp), %eax
	movl	-56(%rbp), %r9d
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r8d, -1172(%rbp)       # 4-byte Spill
	movl	%eax, %r8d
	movl	-1172(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
	movl	$-1, -676(%rbp)
	jmp	.LBB0_327
.LBB0_324:                              # %if.else.1460
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-668(%rbp), %eax
	jle	.LBB0_326
# BB#325:                               # %if.then.1463
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %eax
	subl	-668(%rbp), %eax
	movl	-56(%rbp), %r9d
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r8d, -1176(%rbp)       # 4-byte Spill
	movl	%eax, %r8d
	movl	-1176(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
	movl	$1, -676(%rbp)
.LBB0_326:                              # %if.end.1465
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_327
.LBB0_327:                              # %if.end.1466
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB0_329
# BB#328:                               # %if.then.1469
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %eax
	addl	-672(%rbp), %eax
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r9d, -1180(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movl	-1180(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
	movl	$1, -680(%rbp)
	jmp	.LBB0_332
.LBB0_329:                              # %if.else.1471
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-672(%rbp), %eax
	jle	.LBB0_331
# BB#330:                               # %if.then.1474
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %eax
	subl	-672(%rbp), %eax
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r9d, -1184(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movl	-1184(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
	movl	$-1, -680(%rbp)
.LBB0_331:                              # %if.end.1476
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_332
.LBB0_332:                              # %if.end.1477
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, -680(%rbp)
	je	.LBB0_338
# BB#333:                               # %if.then.1479
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, -676(%rbp)
	jge	.LBB0_335
# BB#334:                               # %if.then.1482
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %eax
	addl	-668(%rbp), %eax
	movl	-56(%rbp), %r8d
	movl	-680(%rbp), %r9d
	imull	-672(%rbp), %r9d
	addl	%r9d, %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r8d, -1188(%rbp)       # 4-byte Spill
	movl	%eax, %r8d
	movl	-1188(%rbp), %eax       # 4-byte Reload
	movl	%r9d, -1192(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movl	-1192(%rbp), %ebx       # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
.LBB0_335:                              # %if.end.1486
                                        #   in Loop: Header=BB0_233 Depth=1
	cmpl	$0, -676(%rbp)
	jle	.LBB0_337
# BB#336:                               # %if.then.1489
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	-72(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-52(%rbp), %eax
	subl	-668(%rbp), %eax
	movl	-56(%rbp), %r8d
	movl	-680(%rbp), %r9d
	imull	-672(%rbp), %r9d
	addl	%r9d, %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	%r8d, -1196(%rbp)       # 4-byte Spill
	movl	%eax, %r8d
	movl	-1196(%rbp), %eax       # 4-byte Reload
	movl	%r9d, -1200(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movl	-1200(%rbp), %ebx       # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	apply_brush
.LBB0_337:                              # %if.end.1493
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_338
.LBB0_338:                              # %if.end.1494
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_339
.LBB0_339:                              # %if.end.1495
                                        #   in Loop: Header=BB0_233 Depth=1
	jmp	.LBB0_340
.LBB0_340:                              # %for.inc.1496
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_233
.LBB0_341:                              # %for.end.1497
	movl	$0, -108(%rbp)
.LBB0_342:                              # %for.cond.1498
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_345
# BB#343:                               # %for.body.1501
                                        #   in Loop: Header=BB0_342 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$4, %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	ppm_kill
# BB#344:                               # %for.inc.1504
                                        #   in Loop: Header=BB0_342 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_342
.LBB0_345:                              # %for.end.1506
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpl	$0, runningvals+536
	je	.LBB0_349
# BB#346:                               # %if.then.1508
	leaq	-72(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-72(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	-132(%rbp), %ecx
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1204(%rbp), %r8d       # 4-byte Reload
	callq	crop
	cmpl	$0, img_has_alpha
	je	.LBB0_348
# BB#347:                               # %if.then.1514
	leaq	-88(%rbp), %rdi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-88(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	-132(%rbp), %ecx
	movl	%ecx, -1208(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1208(%rbp), %r8d       # 4-byte Reload
	callq	crop
.LBB0_348:                              # %if.end.1519
	jmp	.LBB0_349
.LBB0_349:                              # %if.end.1520
	movq	-32(%rbp), %rdi
	callq	ppm_kill
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	cmpl	$0, img_has_alpha
	je	.LBB0_351
# BB#350:                               # %if.then.1528
	movq	-40(%rbp), %rdi
	callq	ppm_kill
	movl	-88(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, 8(%rcx)
.LBB0_351:                              # %if.end.1535
	movsd	.LCPI0_10, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movsd	runningvals+80, %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -208(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_382
# BB#352:                               # %if.then.1539
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	runningvals+88, %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB0_354
# BB#353:                               # %if.then.1544
	movq	-264(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -256(%rbp)
	jmp	.LBB0_357
.LBB0_354:                              # %if.else.1546
	movabsq	$runningvals, %rax
	addq	$304, %rax              # imm = 0x130
	leaq	-72(%rbp), %rsi
	movq	$0, -64(%rbp)
	movq	%rax, %rdi
	callq	ppm_load
	leaq	-72(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-200(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize
	cmpl	$0, runningvals+96
	je	.LBB0_356
# BB#355:                               # %if.then.1557
	leaq	-72(%rbp), %rdi
	movss	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ppm_apply_gamma
.LBB0_356:                              # %if.end.1558
	jmp	.LBB0_357
.LBB0_357:                              # %if.end.1559
	movl	$0, -44(%rbp)
.LBB0_358:                              # %for.cond.1560
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_360 Depth 2
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_381
# BB#359:                               # %for.body.1564
                                        #   in Loop: Header=BB0_358 Depth=1
	movl	-44(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movl	%edx, -700(%rbp)
	movl	$0, -48(%rbp)
.LBB0_360:                              # %for.cond.1573
                                        #   Parent Loop BB0_358 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_379
# BB#361:                               # %for.body.1577
                                        #   in Loop: Header=BB0_360 Depth=2
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -44(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -708(%rbp)
	movl	-48(%rbp), %eax
	cltd
	idivl	-68(%rbp)
	movl	%edx, -704(%rbp)
	cmpl	$0, runningvals+3380
	je	.LBB0_363
# BB#362:                               # %if.then.1588
                                        #   in Loop: Header=BB0_360 Depth=2
	movl	-704(%rbp), %eax
	imull	-72(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -700(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	subl	$128, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-208(%rbp), %xmm0
	movsd	%xmm0, -688(%rbp)
	jmp	.LBB0_364
.LBB0_363:                              # %if.else.1601
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	.LCPI0_12, %xmm0        # xmm0 = mem[0],zero
	movl	-704(%rbp), %eax
	imull	-72(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -700(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	-704(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-68(%rbp)
	imull	-72(%rbp), %edx
	imull	$3, %edx, %ecx
	movl	-700(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	-72(%rbp)
	imull	$3, %edx, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-64(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	-1212(%rbp), %edx       # 4-byte Reload
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-208(%rbp), %xmm1
	movsd	%xmm1, -688(%rbp)
.LBB0_364:                              # %if.end.1630
                                        #   in Loop: Header=BB0_360 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-688(%rbp), %xmm0
	jb	.LBB0_371
# BB#365:                               # %if.then.1633
                                        #   in Loop: Header=BB0_360 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_13, %xmm2        # xmm2 = mem[0],zero
	movsd	-688(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm1, -696(%rbp)
	ucomisd	-696(%rbp), %xmm0
	jbe	.LBB0_367
# BB#366:                               # %if.then.1638
                                        #   in Loop: Header=BB0_360 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -696(%rbp)
	jmp	.LBB0_370
.LBB0_367:                              # %if.else.1639
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-696(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_369
# BB#368:                               # %if.then.1642
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)
.LBB0_369:                              # %if.end.1643
                                        #   in Loop: Header=BB0_360 Depth=2
	jmp	.LBB0_370
.LBB0_370:                              # %if.end.1644
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	-696(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-708(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-696(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-708(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-696(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-708(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movzbl	(%rdi,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rdi,%rcx)
	jmp	.LBB0_377
.LBB0_371:                              # %if.else.1666
                                        #   in Loop: Header=BB0_360 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_13, %xmm1        # xmm1 = mem[0],zero
	movsd	-688(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -696(%rbp)
	ucomisd	-696(%rbp), %xmm0
	jbe	.LBB0_373
# BB#372:                               # %if.then.1670
                                        #   in Loop: Header=BB0_360 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -696(%rbp)
	jmp	.LBB0_376
.LBB0_373:                              # %if.else.1671
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-696(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_375
# BB#374:                               # %if.then.1674
                                        #   in Loop: Header=BB0_360 Depth=2
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)
.LBB0_375:                              # %if.end.1675
                                        #   in Loop: Header=BB0_360 Depth=2
	jmp	.LBB0_376
.LBB0_376:                              # %if.end.1676
                                        #   in Loop: Header=BB0_360 Depth=2
	movslq	-708(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-696(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LCPI0_8(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movl	-708(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-696(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movl	-708(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-696(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movl	-708(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	%sil, (%rcx,%rax)
.LBB0_377:                              # %if.end.1722
                                        #   in Loop: Header=BB0_360 Depth=2
	jmp	.LBB0_378
.LBB0_378:                              # %for.inc.1723
                                        #   in Loop: Header=BB0_360 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_360
.LBB0_379:                              # %for.end.1725
                                        #   in Loop: Header=BB0_358 Depth=1
	jmp	.LBB0_380
.LBB0_380:                              # %for.inc.1726
                                        #   in Loop: Header=BB0_358 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_358
.LBB0_381:                              # %for.end.1728
	leaq	-72(%rbp), %rdi
	callq	ppm_kill
.LBB0_382:                              # %if.end.1729
	leaq	-264(%rbp), %rdi
	callq	ppm_kill
	leaq	-280(%rbp), %rdi
	callq	ppm_kill
	leaq	-296(%rbp), %rdi
	callq	ppm_kill
	cmpl	$0, runningvals+100
	je	.LBB0_384
# BB#383:                               # %if.then.1731
	movsd	.LCPI0_11, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	jmp	.LBB0_385
.LBB0_384:                              # %if.else.1733
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	preview_set_button_label
.LBB0_385:                              # %if.end.1735
	movl	$0, repaint.running
.LBB0_386:                              # %return
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	repaint, .Lfunc_end0-repaint
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_100
	.quad	.LBB0_109
	.quad	.LBB0_149
	.quad	.LBB0_118
	.quad	.LBB0_127
	.quad	.LBB0_130
	.quad	.LBB0_139
	.quad	.LBB0_140

	.text
	.align	16, 0x90
	.type	prepare_brush,@function
prepare_brush:                          # @prepare_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB1_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -12(%rbp)
.LBB1_3:                                # %for.cond.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	$0, (%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_8:                                # %for.end.10
	movl	$1, -16(%rbp)
.LBB1_9:                                # %for.cond.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB1_18
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, -12(%rbp)
.LBB1_11:                               # %for.cond.15
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_16
# BB#12:                                # %for.body.18
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	imull	-20(%rbp), %ecx
	movl	-12(%rbp), %edi
	subl	$1, %edi
	imull	$3, %edi, %edi
	addl	%edi, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB1_14
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	$0, -24(%rbp)
.LBB1_14:                               # %if.end
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	$3, -12(%rbp), %edx
	addl	%edx, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#15:                                # %for.inc.44
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_11
.LBB1_16:                               # %for.end.46
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_17
.LBB1_17:                               # %for.inc.47
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_9
.LBB1_18:                               # %for.end.49
	popq	%rbp
	retq
.Lfunc_end1:
	.size	prepare_brush, .Lfunc_end1-prepare_brush
	.cfi_endproc

	.align	16, 0x90
	.type	sum_brush,@function
sum_brush:                              # @sum_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	$3, (%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sum_brush, .Lfunc_end2-sum_brush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4616189618054758400     # double 4
.LCPI3_1:
	.quad	4611686018427387904     # double 2
.LCPI3_2:
	.quad	4618441417868443648     # double 6
.LCPI3_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_hue,@function
get_hue:                                # @get_hue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	(%rdi), %eax
	movq	-16(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_22
.LBB3_3:                                # %if.end
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB3_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB3_6:                                # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB3_8
# BB#7:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB3_8:                                # %if.end.29
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB3_10
# BB#9:                                 # %cond.true.36
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false.39
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB3_11:                               # %cond.end.42
	movl	-56(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_13
# BB#12:                                # %if.then.50
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB3_13:                               # %if.end.53
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_15
	jp	.LBB3_15
# BB#14:                                # %if.then.59
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB3_19
.LBB3_15:                               # %if.else
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_17
	jp	.LBB3_17
# BB#16:                                # %if.then.71
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	subsd	%xmm2, %xmm1
	divsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB3_18
.LBB3_17:                               # %if.else.79
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	subsd	%xmm2, %xmm1
	divsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
.LBB3_18:                               # %if.end.88
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.89
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB3_21
# BB#20:                                # %if.then.92
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB3_21:                               # %if.end.94
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -4(%rbp)
.LBB3_22:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_hue, .Lfunc_end3-get_hue
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4645040803167600640     # double 360
.LCPI4_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_pixel_value,@function
get_pixel_value:                        # @get_pixel_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB4_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB4_1
.LBB4_3:                                # %while.end
	jmp	.LBB4_4
.LBB4_4:                                # %while.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_6
# BB#5:                                 # %while.body.3
                                        #   in Loop: Header=BB4_4 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB4_4
.LBB4_6:                                # %while.end.4
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	get_pixel_value, .Lfunc_end4-get_pixel_value
	.cfi_endproc

	.align	16, 0x90
	.type	get_siz_from_pcvals,@function
get_siz_from_pcvals:                    # @get_siz_from_pcvals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$pcvals, %rax
	addq	$3448, %rax             # imm = 0xD78
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	pcvals+5048, %edi
	movsd	pcvals+5056, %xmm2      # xmm2 = mem[0],zero
	movl	pcvals+5064, %edx
	movq	%rax, %rsi
	callq	getsiz_proto
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_siz_from_pcvals, .Lfunc_end5-get_siz_from_pcvals
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	choose_best_brush,@function
choose_best_brush:                      # @choose_best_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	%r11, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movl	%eax, -64(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	$-1, -116(%rbp)
	movq	$0, -144(%rbp)
	movslq	-60(%rbp), %rsi
	movq	%rsi, -136(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
                                        #     Child Loop BB6_13 Depth 2
                                        #       Child Loop BB6_15 Depth 3
	movq	-136(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_36
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-136(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$0, -124(%rbp)
.LBB6_3:                                # %for.cond.4
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	movl	-124(%rbp), %eax
	movq	-152(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB6_12
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	$0, -120(%rbp)
.LBB6_5:                                # %for.cond.9
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-120(%rbp), %eax
	movq	-152(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB6_10
# BB#6:                                 # %for.body.13
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-28(%rbp), %eax
	addl	-120(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -164(%rbp)
	movl	-124(%rbp), %eax
	movq	-152(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -120(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, %eax
	je	.LBB6_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB6_5 Depth=3
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-128(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -176(%rbp)
	movl	-164(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-176(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-176(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-164(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-176(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB6_8:                                # %if.end
                                        #   in Loop: Header=BB6_5 Depth=3
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB6_5
.LBB6_10:                               # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc.46
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB6_3
.LBB6_12:                               # %for.end.48
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-96(%rbp), %xmm2
	divsd	-80(%rbp), %xmm2
	movsd	%xmm2, -96(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	divsd	-80(%rbp), %xmm2
	movsd	%xmm2, -104(%rbp)
	mulsd	-112(%rbp), %xmm1
	divsd	-80(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	$0, -124(%rbp)
.LBB6_13:                               # %for.cond.55
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_15 Depth 3
	movl	-124(%rbp), %eax
	movq	-152(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB6_24
# BB#14:                                # %for.body.59
                                        #   in Loop: Header=BB6_13 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movl	$0, -120(%rbp)
.LBB6_15:                               # %for.cond.68
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-120(%rbp), %eax
	movq	-152(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB6_22
# BB#16:                                # %for.body.72
                                        #   in Loop: Header=BB6_15 Depth=3
	movl	-28(%rbp), %eax
	addl	-120(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -188(%rbp)
	movl	-124(%rbp), %eax
	movq	-152(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -120(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, %eax
	je	.LBB6_20
# BB#17:                                # %if.then.87
                                        #   in Loop: Header=BB6_15 Depth=3
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-128(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	movl	-188(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	cvtsi2sdl	%eax, %xmm0
	mulsd	-200(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	cvtsi2sdl	%eax, %xmm0
	mulsd	-200(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-188(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	-112(%rbp), %xmm0
	cvttsd2si	%xmm0, %edi
	callq	abs
	cvtsi2sdl	%eax, %xmm0
	mulsd	-200(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, img_has_alpha
	je	.LBB6_19
# BB#18:                                # %if.then.122
                                        #   in Loop: Header=BB6_15 Depth=3
	movl	-32(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	movl	-28(%rbp), %edx
	addl	-120(%rbp), %edx
	imull	$3, %edx, %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-200(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB6_19:                               # %if.end.137
                                        #   in Loop: Header=BB6_15 Depth=3
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.138
                                        #   in Loop: Header=BB6_15 Depth=3
	jmp	.LBB6_21
.LBB6_21:                               # %for.inc.139
                                        #   in Loop: Header=BB6_15 Depth=3
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB6_15
.LBB6_22:                               # %for.end.141
                                        #   in Loop: Header=BB6_13 Depth=2
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc.142
                                        #   in Loop: Header=BB6_13 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB6_13
.LBB6_24:                               # %for.end.144
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	cmpl	$-1, -116(%rbp)
	je	.LBB6_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_29
.LBB6_26:                               # %if.then.150
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB6_28
# BB#27:                                # %if.then.152
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-144(%rbp), %rdi
	callq	g_list_free
.LBB6_28:                               # %if.end.153
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	$0, -144(%rbp)
.LBB6_29:                               # %if.end.154
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB6_31
# BB#30:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -116(%rbp)
	jge	.LBB6_32
.LBB6_31:                               # %if.then.160
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-144(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_list_append
	movq	%rax, -144(%rbp)
.LBB6_32:                               # %if.end.163
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	runningvals+3440, %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_34
# BB#33:                                # %if.then.166
	jmp	.LBB6_36
.LBB6_34:                               # %if.end.167
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_35
.LBB6_35:                               # %for.inc.168
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-64(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB6_1
.LBB6_36:                               # %for.end.171
	cmpq	$0, -144(%rbp)
	jne	.LBB6_38
# BB#37:                                # %if.then.173
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB6_39
.LBB6_38:                               # %if.end.174
	movq	random_generator, %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_list_length
	xorl	%esi, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	g_rand_int_range
	movslq	%eax, %rdi
	movq	%rdi, -136(%rbp)
	movq	-144(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movl	%ecx, %eax
	movl	%eax, %esi
	callq	g_list_nth
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	%edx, -116(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_list_free
	movl	-116(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB6_39:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	choose_best_brush, .Lfunc_end6-choose_best_brush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	-4580196005407883264    # double -255
.LCPI7_3:
	.quad	4562254508917369340     # double 0.001
.LCPI7_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	apply_brush,@function
apply_brush:                            # @apply_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r11d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
	subsd	runningvals+72, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	runningvals+32, %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movl	pcvals+5068, %eax
	movl	%eax, -132(%rbp)
	movl	pcvals+5072, %eax
	movl	%eax, -136(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -88(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -72(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpl	$0, img_has_alpha
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB7_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_26
# BB#3:                                 # %if.then.11
	movl	-36(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -140(%rbp)
	movl	-40(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -144(%rbp)
	movl	$0, -112(%rbp)
.LBB7_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	movl	-112(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_25
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	$0, -160(%rbp)
	movl	-144(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB7_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_24
.LBB7_7:                                # %if.end.23
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-144(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB7_9
# BB#8:                                 # %if.then.27
	jmp	.LBB7_25
.LBB7_9:                                # %if.end.28
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-64(%rbp), %rax
	movl	-144(%rbp), %ecx
	addl	-112(%rbp), %ecx
	imull	-72(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	cmpl	$0, img_has_alpha
	je	.LBB7_11
# BB#10:                                # %if.then.35
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	-80(%rbp), %rax
	movl	-144(%rbp), %ecx
	addl	-112(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
.LBB7_11:                               # %if.end.43
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$0, -108(%rbp)
.LBB7_12:                               # %for.cond.44
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_23
# BB#13:                                # %for.body.47
                                        #   in Loop: Header=BB7_12 Depth=2
	movl	-140(%rbp), %eax
	addl	-108(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -164(%rbp)
	movl	-140(%rbp), %eax
	addl	-108(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB7_15
# BB#14:                                # %if.then.53
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_22
.LBB7_15:                               # %if.end.54
                                        #   in Loop: Header=BB7_12 Depth=2
	movl	-140(%rbp), %eax
	addl	-108(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB7_17
# BB#16:                                # %if.then.58
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_23
.LBB7_17:                               # %if.end.59
                                        #   in Loop: Header=BB7_12 Depth=2
	xorps	%xmm0, %xmm0
	movl	-112(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	imull	%edx, %eax
	movl	%eax, %esi
	leal	(%rsi,%rsi,2), %eax
	movl	-108(%rbp), %edx
	movl	%edx, %esi
	leal	(%rsi,%rsi,2), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	leal	2(%rsi,%rdi), %eax
	movslq	%eax, %rsi
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_19
	jp	.LBB7_19
# BB#18:                                # %if.then.68
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_22
.LBB7_19:                               # %if.end.69
                                        #   in Loop: Header=BB7_12 Depth=2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	runningvals+3400(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-164(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-164(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-164(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rdi
	movzbl	(%rdi,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rdi,%rcx)
	cmpl	$0, img_has_alpha
	je	.LBB7_21
# BB#20:                                # %if.then.93
                                        #   in Loop: Header=BB7_12 Depth=2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-164(%rbp), %rax
	movq	%rax, %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	%sil, %dil
	movb	%dil, (%rdx,%rcx)
.LBB7_21:                               # %if.end.99
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_22
.LBB7_22:                               # %for.inc
                                        #   in Loop: Header=BB7_12 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_12
.LBB7_23:                               # %for.end
                                        #   in Loop: Header=BB7_4 Depth=1
	jmp	.LBB7_24
.LBB7_24:                               # %for.inc.100
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_4
.LBB7_25:                               # %for.end.102
	jmp	.LBB7_26
.LBB7_26:                               # %if.end.103
	movl	$0, -112(%rbp)
.LBB7_27:                               # %for.cond.104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_44
# BB#28:                                # %for.body.108
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-112(%rbp), %ecx
	imull	-72(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -184(%rbp)
	cmpl	$0, img_has_alpha
	je	.LBB7_30
# BB#29:                                # %if.then.121
                                        #   in Loop: Header=BB7_27 Depth=1
	movq	-80(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-112(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
.LBB7_30:                               # %if.end.129
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	$0, -108(%rbp)
.LBB7_31:                               # %for.cond.130
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_42
# BB#32:                                # %for.body.134
                                        #   in Loop: Header=BB7_31 Depth=2
	xorps	%xmm0, %xmm0
	movl	-36(%rbp), %eax
	movl	-108(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	%eax, -188(%rbp)
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %ecx
	imull	%ecx, %eax
	movl	%eax, %esi
	leal	(%rsi,%rsi,2), %eax
	movl	-108(%rbp), %ecx
	movl	%ecx, %esi
	leal	(%rsi,%rsi,2), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_34
	jp	.LBB7_34
# BB#33:                                # %if.then.149
                                        #   in Loop: Header=BB7_31 Depth=2
	jmp	.LBB7_41
.LBB7_34:                               # %if.end.150
                                        #   in Loop: Header=BB7_31 Depth=2
	cmpl	$0, runningvals+3388
	je	.LBB7_38
# BB#35:                                # %if.then.152
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	imull	%edx, %eax
	movl	%eax, %esi
	leal	(%rsi,%rsi,2), %eax
	movl	-108(%rbp), %edx
	movl	%edx, %esi
	leal	(%rsi,%rsi,2), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	leal	2(%rsi,%rdi), %eax
	movslq	%eax, %rsi
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rsi), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-188(%rbp), %rcx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rsi,%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-188(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rsi,%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-188(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	%rcx, %rsi
	movq	-176(%rbp), %rdi
	movzbl	(%rdi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rdi,%rsi)
	cmpl	$0, img_has_alpha
	je	.LBB7_37
# BB#36:                                # %if.then.185
                                        #   in Loop: Header=BB7_31 Depth=2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	movl	-108(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rsi
	movq	-184(%rbp), %rdi
	movzbl	(%rdi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, (%rdi,%rsi)
.LBB7_37:                               # %if.end.193
                                        #   in Loop: Header=BB7_31 Depth=2
	jmp	.LBB7_38
.LBB7_38:                               # %if.end.194
                                        #   in Loop: Header=BB7_31 Depth=2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-188(%rbp), %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-188(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-188(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rdi
	movzbl	(%rdi,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rdi,%rcx)
	cmpl	$0, img_has_alpha
	je	.LBB7_40
# BB#39:                                # %if.then.217
                                        #   in Loop: Header=BB7_31 Depth=2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-188(%rbp), %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	%sil, %dil
	movb	%dil, (%rdx,%rcx)
.LBB7_40:                               # %if.end.223
                                        #   in Loop: Header=BB7_31 Depth=2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movslq	-188(%rbp), %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	cvtsi2sdl	-48(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-188(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	cvtsi2sdl	-52(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-188(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rdi
	movzbl	(%rdi,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movb	%sil, (%rdi,%rcx)
.LBB7_41:                               # %for.inc.249
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_31
.LBB7_42:                               # %for.end.251
                                        #   in Loop: Header=BB7_27 Depth=1
	jmp	.LBB7_43
.LBB7_43:                               # %for.inc.252
                                        #   in Loop: Header=BB7_27 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_27
.LBB7_44:                               # %for.end.254
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_58
# BB#45:                                # %if.then.257
	movl	$1, -112(%rbp)
.LBB7_46:                               # %for.cond.258
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_48 Depth 2
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_57
# BB#47:                                # %for.body.262
                                        #   in Loop: Header=BB7_46 Depth=1
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-112(%rbp), %ecx
	imull	-72(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	$1, -108(%rbp)
.LBB7_48:                               # %for.cond.272
                                        #   Parent Loop BB7_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_55
# BB#49:                                # %for.body.276
                                        #   in Loop: Header=BB7_48 Depth=2
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	-108(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -204(%rbp)
	movl	-112(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -108(%rbp), %edx
	addl	%edx, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB7_51
# BB#50:                                # %if.then.295
                                        #   in Loop: Header=BB7_48 Depth=2
	jmp	.LBB7_54
.LBB7_51:                               # %if.end.296
                                        #   in Loop: Header=BB7_48 Depth=2
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_53
# BB#52:                                # %if.then.299
                                        #   in Loop: Header=BB7_48 Depth=2
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB7_53:                               # %if.end.300
                                        #   in Loop: Header=BB7_48 Depth=2
	movslq	-204(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movl	-204(%rbp), %edx
	incl	%edx
	movslq	%edx, %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
	movl	-204(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movl	-204(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-200(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
.LBB7_54:                               # %for.inc.343
                                        #   in Loop: Header=BB7_48 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_48
.LBB7_55:                               # %for.end.345
                                        #   in Loop: Header=BB7_46 Depth=1
	jmp	.LBB7_56
.LBB7_56:                               # %for.inc.346
                                        #   in Loop: Header=BB7_46 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_46
.LBB7_57:                               # %for.end.348
	jmp	.LBB7_58
.LBB7_58:                               # %if.end.349
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	apply_brush, .Lfunc_end7-apply_brush
	.cfi_endproc

	.type	repaint.running,@object # @repaint.running
	.local	repaint.running
	.comm	repaint.running,4,4
	.type	runningvals,@object     # @runningvals
	.local	runningvals
	.comm	runningvals,5088,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Huh? Image size != alpha size?\n"
	.size	.L.str, 32

	.type	.Lrepaint.tmpcol,@object # @repaint.tmpcol
	.section	.rodata,"a",@progbits
.Lrepaint.tmpcol:
	.zero	3,255
	.size	.Lrepaint.tmpcol, 3

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%.1f %%"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Internal error; Unknown orientationtype\n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Internal error; Unknown size_type\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Update"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"What!? No brushes?!\n"
	.size	.L.str.5, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
