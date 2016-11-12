	.text
	.file	"gxp1fill.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_1:
	.quad	0                       # double 0
	.text
	.globl	gx_dc_pattern_fill_rectangle
	.align	16, 0x90
	.type	gx_dc_pattern_fill_rectangle,@function
gx_dc_pattern_fill_rectangle:           # @gx_dc_pattern_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp6:
	.cfi_def_cfa_offset 368
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, 92(%rsp)          # 4-byte Spill
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	movq	376(%rsp), %r13
	movq	8(%rbp), %rbx
	movq	%r13, 304(%rsp)
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB0_31
# BB#1:                                 # %if.end
	testq	%r13, %r13
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	leaq	304(%rsp), %rdi
	leaq	256(%rsp), %rsi
	movq	%r14, %rdx
	callq	gx_set_rop_no_source
.LBB0_3:                                # %if.end.3
	movq	648(%rbp), %r15
	movq	%rbp, 152(%rsp)
	movl	$-1, %eax
	cmpl	$0, 848(%r14)
	je	.LBB0_5
# BB#4:                                 # %if.then.i
	movl	100(%r14), %eax
.LBB0_5:                                # %if.end.i
	movl	%eax, 224(%rsp)
	testq	%r15, %r15
	je	.LBB0_6
# BB#7:                                 # %if.end.7.i
	movq	24(%r14), %rdi
	movl	$st_device_mask_clip, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, 192(%rsp)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB0_31
# BB#8:                                 # %tile_fill_init.exit
	movq	$0, 48(%rax)
	movq	%rax, 200(%rsp)
	addq	$144, %r15
	movq	%r15, 208(%rsp)
	movl	632(%rbp), %ecx
	movl	%ecx, 216(%rsp)
	movl	636(%rbp), %ecx
	movl	%ecx, 220(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	tile_clip_initialize
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB0_9
	jmp	.LBB0_31
.LBB0_6:                                # %tile_fill_init.exit.thread71
	movq	$0, 192(%rsp)
	movq	%r14, 200(%rsp)
	movq	352(%rbp), %rax
	movq	%rax, 216(%rsp)
.LBB0_9:                                # %if.end.6
	movl	368(%rsp), %r15d
	leaq	96(%rbx), %r12
	movq	200(%rbx), %rax
	cmpb	$0, 208(%rbx)
	je	.LBB0_25
# BB#10:                                # %if.end.6
	testq	%rax, %rax
	jne	.LBB0_25
# BB#11:                                # %if.then.9
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	216(%rsp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_12
# BB#13:                                # %land.rhs
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
	jmp	.LBB0_14
.LBB0_25:                               # %if.else.137
	movl	%r15d, 176(%rsp)
	movq	%r13, 184(%rsp)
	movq	%r14, 240(%rsp)
	testq	%rax, %rax
	je	.LBB0_26
# BB#27:                                # %if.else.146
	movl	$0, 10192(%rax)
	movl	$0, 10196(%rax)
	movl	$-1, 10200(%rax)
	movq	$0, 10208(%rax)
	movl	$1, 10224(%rax)
	movq	%r14, 240(%rsp)
	movupd	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movapd	%xmm0, 96(%rsp)
	movl	832(%rax), %ecx
	movl	%ecx, 108(%rsp)
	movl	836(%rax), %eax
	movl	%eax, 112(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$tile_pattern_clist, 8(%rsp)
	jmp	.LBB0_28
.LBB0_12:
	xorl	%ecx, %ecx
.LBB0_14:                               # %land.end
	movzbl	%cl, %edi
	subl	%eax, %edi
	movzwl	128(%rbx), %esi
	callq	imod
	movl	%eax, %r14d
	movss	60(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	220(%rsp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_15
# BB#16:                                # %land.rhs.67
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
	jmp	.LBB0_17
.LBB0_15:
	xorl	%ecx, %ecx
.LBB0_17:                               # %land.end.89
	movzbl	%cl, %edi
	subl	%eax, %edi
	movzwl	130(%rbx), %esi
	callq	imod
	movl	%eax, %ebx
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_19
# BB#18:                                # %if.then.98
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	tile_clip_set_phase
.LBB0_19:                               # %if.end.100
	testq	%r13, %r13
	jne	.LBB0_22
# BB#20:                                # %if.end.100
	movl	%r15d, %eax
	andl	$563, %eax              # imm = 0x233
	cmpl	$48, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.106
	movq	200(%rsp), %rdi
	movl	%ebx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, (%rsp)
	movq	%r12, %rsi
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	*1416(%rdi)
	jmp	.LBB0_29
.LBB0_22:                               # %if.else
	movq	304(%rsp), %rax
	movl	40(%rax), %ebp
	movq	200(%rsp), %rdi
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movl	12(%rax), %ecx
	movq	16(%rax), %r8
	movl	44(%rax), %r10d
	addq	$24, %rax
	xorl	%r9d, %r9d
	testl	%ebp, %ebp
	je	.LBB0_23
# BB#24:                                # %if.else.117
	testl	%r10d, %r10d
	cmovneq	%rax, %r9
	movl	%ebp, 72(%rsp)
	movl	%r15d, 64(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%r14d, 48(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r12, (%rsp)
	movq	$0, 8(%rsp)
	callq	*1696(%rdi)
	jmp	.LBB0_29
.LBB0_26:                               # %if.then.143
	movq	%r12, (%rsp)
	movq	$tile_colored_fill, 8(%rsp)
.LBB0_28:                               # %if.end.159
	leaq	152(%rsp), %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	movl	84(%rsp), %edx          # 4-byte Reload
	movl	88(%rsp), %ecx          # 4-byte Reload
	movl	92(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	tile_by_steps
	jmp	.LBB0_29
.LBB0_23:                               # %if.then.111
	testl	%r10d, %r10d
	cmovneq	%rax, %r9
	movl	%r15d, 64(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%r14d, 48(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r12, (%rsp)
	movq	$0, 8(%rsp)
	callq	*1424(%rdi)
.LBB0_29:                               # %if.end.159
	movl	%eax, %r12d
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_31
# BB#30:                                # %if.then.163
	callq	tile_clip_free
	movq	$0, 192(%rsp)
.LBB0_31:                               # %cleanup
	movl	%r12d, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_dc_pattern_fill_rectangle, .Lfunc_end0-gx_dc_pattern_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	tile_fill_init,@function
tile_fill_init:                         # @tile_fill_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	648(%rbp), %r13
	movq	%rbp, (%rbx)
	movl	$-1, %eax
	cmpl	$0, 848(%r14)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	100(%r14), %eax
.LBB1_2:                                # %if.end
	movl	%eax, 72(%rbx)
	testq	%r13, %r13
	je	.LBB1_3
# BB#5:                                 # %if.end.7
	movq	24(%r14), %rdi
	movl	$st_device_mask_clip, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, 40(%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB1_4
# BB#6:                                 # %if.end.12
	movq	$0, 48(%rax)
	movq	%rax, 48(%rbx)
	leaq	144(%r13), %rsi
	movq	%rsi, 56(%rbx)
	movl	632(%rbp), %ecx
	movl	%ecx, 64(%rbx)
	movl	636(%rbp), %edx
	movl	%edx, 68(%rbx)
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	je	.LBB1_7
# BB#8:                                 # %land.lhs.true
	cmpb	$0, 208(%r13)
	movl	$0, %r8d
	je	.LBB1_16
# BB#9:                                 # %if.then.26
	movss	56(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_10
# BB#11:                                # %land.rhs
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
	jmp	.LBB1_12
.LBB1_3:                                # %if.then.5
	movq	$0, 40(%rbx)
	movq	%r14, 48(%rbx)
	movq	352(%rbp), %rax
	movq	%rax, 64(%rbx)
	xorl	%ecx, %ecx
.LBB1_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:
	xorl	%r8d, %r8d
	jmp	.LBB1_16
.LBB1_10:
	xorl	%ecx, %ecx
.LBB1_12:                               # %land.end
	movzbl	%cl, %edi
	subl	%eax, %edi
	movzwl	176(%r13), %esi
	callq	imod
	movl	%eax, %r15d
	movss	60(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	68(%rbx), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_13
# BB#14:                                # %land.rhs.86
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
	jmp	.LBB1_15
.LBB1_13:
	xorl	%ecx, %ecx
.LBB1_15:                               # %land.end.108
	movzbl	%cl, %edi
	subl	%eax, %edi
	movzwl	178(%r13), %esi
	callq	imod
	movl	%eax, %r8d
	movq	40(%rbx), %rax
	movq	56(%rbx), %rsi
.LBB1_16:                               # %if.end.116
	movq	%rax, %rdi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	tile_clip_initialize    # TAILCALL
.Lfunc_end1:
	.size	tile_fill_init, .Lfunc_end1-tile_fill_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	-4706042843746669171    # double -1.000000e-06
	.quad	-4706042843746669171    # double -1.000000e-06
.LCPI2_1:
	.quad	4517329193108106637     # double 1.000000e-06
	.quad	4517329193108106637     # double 1.000000e-06
	.text
	.align	16, 0x90
	.type	tile_by_steps,@function
tile_by_steps:                          # @tile_by_steps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 224
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movl	%esi, 56(%rsp)          # 4-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	%esi, 8(%rdi)
	movl	%ecx, 16(%rdi)
	addl	%esi, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	movl	%edx, 12(%rdi)
	movl	%r8d, 20(%rdi)
	addl	%edx, %r8d
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	movq	56(%rbp), %rax
	movq	%rax, 160(%rsp)
	movups	40(%rbp), %xmm0
	movaps	%xmm0, 144(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	64(%rdi), %xmm0
	movss	160(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 160(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	68(%rdi), %xmm0
	movss	164(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 164(%rsp)
	movupd	80(%rbp), %xmm1
	movupd	64(%rbp), %xmm0
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)         # 16-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	movsd	%xmm0, 112(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 120(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 128(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, 136(%rsp)
	leaq	112(%rsp), %rdi
	leaq	144(%rsp), %rsi
	leaq	80(%rsp), %rdx
	callq	gs_bbox_transform_inverse
	movupd	64(%rbp), %xmm1
	xorpd	%xmm2, %xmm2
	maxpd	%xmm2, %xmm1
	movapd	80(%rsp), %xmm4
	movapd	96(%rsp), %xmm0
	subpd	%xmm1, %xmm4
	addpd	.LCPI2_0(%rip), %xmm4
	movupd	80(%rbp), %xmm1
	minpd	%xmm2, %xmm1
	subpd	%xmm1, %xmm0
	cmpb	$0, 208(%rbp)
	je	.LBB2_1
# BB#2:                                 # %entry
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	jmp	.LBB2_3
.LBB2_1:
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	subpd	%xmm1, %xmm4
.LBB2_3:                                # %entry
	addpd	.LCPI2_1(%rip), %xmm0
	jne	.LBB2_5
# BB#4:
	addpd	%xmm1, %xmm0
.LBB2_5:                                # %entry
	cvttsd2si	%xmm4, %ecx
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.LBB2_6
# BB#7:                                 # %land.rhs
	cvtsi2ssl	%ecx, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movapd	%xmm4, %xmm3
	cmpneqsd	%xmm2, %xmm3
	movd	%xmm3, %rax
	andl	$1, %eax
	jmp	.LBB2_8
.LBB2_6:
	xorl	%eax, %eax
.LBB2_8:                                # %land.end
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	cvttsd2si	%xmm4, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	xorl	%ebp, %ebp
	ucomisd	%xmm4, %xmm1
	movl	$0, %r14d
	jbe	.LBB2_10
# BB#9:                                 # %land.rhs.109
	movl	4(%rsp), %eax           # 4-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm4
	movd	%xmm4, %r14
	andl	$1, %r14d
.LBB2_10:                               # %land.end.115
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, (%rsp)            # 4-byte Spill
	movapd	32(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	ceil
	cmpl	%ebx, 8(%rsp)           # 4-byte Folded Reload
	jge	.LBB2_21
# BB#11:                                # %for.cond.127.preheader.lr.ph
	movq	224(%rsp), %r10
	movzbl	%r14b, %eax
	subl	%eax, 4(%rsp)           # 4-byte Folded Spill
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	xorps	%xmm3, %xmm3
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB2_12:                               # %for.cond.127.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
	cmpl	%r8d, 4(%rsp)           # 4-byte Folded Reload
	jge	.LBB2_20
# BB#13:                                # %for.body.130.lr.ph
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	cvtsi2ssl	%eax, %xmm4
	movss	%xmm4, 28(%rsp)         # 4-byte Spill
	movl	4(%rsp), %edi           # 4-byte Reload
	.align	16, 0x90
.LBB2_14:                               # %for.body.130
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	144(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	cvtsi2ssl	%edi, %xmm0
	movss	152(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	addss	160(%rsp), %xmm2
	cvttss2si	%xmm2, %ebp
	ucomiss	%xmm2, %xmm3
	seta	%al
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	ucomiss	%xmm1, %xmm2
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	andb	%al, %dl
	movzbl	%dl, %eax
	subl	%eax, %ebp
	movss	148(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	mulss	156(%rsp), %xmm0
	addss	%xmm1, %xmm0
	addss	164(%rsp), %xmm0
	cvttss2si	%xmm0, %r14d
	ucomiss	%xmm0, %xmm3
	seta	%al
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r14d, %xmm1
	ucomiss	%xmm1, %xmm0
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	andb	%al, %dl
	movzbl	%dl, %eax
	subl	%eax, %r14d
	movl	12(%r10), %eax
	movl	16(%r10), %ecx
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	%edx, %r13d
	subl	%ebp, %r13d
	cmovgl	%edx, %ebp
	cmovlel	%r9d, %r13d
	subl	%r13d, %eax
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ebx
	subl	%r14d, %ebx
	cmovgl	%edx, %r14d
	cmovlel	%r9d, %ebx
	subl	%ebx, %ecx
	leal	(%rax,%rbp), %edx
	movl	64(%rsp), %esi          # 4-byte Reload
	movl	%esi, %r15d
	subl	%ebp, %r15d
	cmpl	%esi, %edx
	cmovlel	%eax, %r15d
	leal	(%rcx,%r14), %eax
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	%edx, %r12d
	subl	%r14d, %r12d
	cmpl	%edx, %eax
	cmovlel	%ecx, %r12d
	testl	%r15d, %r15d
	jle	.LBB2_19
# BB#15:                                # %for.body.130
                                        #   in Loop: Header=BB2_14 Depth=2
	testl	%r12d, %r12d
	jle	.LBB2_19
# BB#16:                                # %if.then.260
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	40(%rdi), %rax
	cmpq	%rax, 48(%rdi)
	jne	.LBB2_18
# BB#17:                                # %if.then.263
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	%r13d, %edi
	subl	%ebp, %edi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %rax
	movzwl	32(%rax), %esi
	callq	imod
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%ebx, %edi
	subl	%r14d, %edi
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %rax
	movzwl	34(%rax), %esi
	callq	imod
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	12(%rsp), %esi          # 4-byte Reload
	movl	%eax, %edx
	callq	tile_clip_set_phase
	movq	72(%rsp), %rdi          # 8-byte Reload
.LBB2_18:                               # %if.end.272
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	%r13d, 96(%rdi)
	movl	%ebx, 100(%rdi)
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r12d, %r8d
	callq	*232(%rsp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	224(%rsp), %rdi
	movq	%rdi, %r10
	movl	24(%rsp), %r8d          # 4-byte Reload
	xorps	%xmm3, %xmm3
	movl	$0, %r9d
	movss	28(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movl	32(%rsp), %edi          # 4-byte Reload
	js	.LBB2_21
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=2
	incl	%edi
	cmpl	%r8d, %edi
	jl	.LBB2_14
.LBB2_20:                               # %for.inc.286
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	incl	%eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	xorl	%ebp, %ebp
	cmpl	(%rsp), %eax            # 4-byte Folded Reload
	jl	.LBB2_12
.LBB2_21:                               # %cleanup.289
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_by_steps, .Lfunc_end2-tile_by_steps
	.cfi_endproc

	.align	16, 0x90
	.type	tile_colored_fill,@function
tile_colored_fill:                      # @tile_colored_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 304
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r11d
	movl	%edx, %r10d
	movl	%esi, %r9d
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	8(%rax), %rbp
	movl	24(%rbx), %esi
	movq	32(%rbx), %rax
	movq	%rax, 240(%rsp)
	movq	88(%rbx), %rdx
	movl	96(%rbx), %edi
	movl	100(%rbx), %r13d
	movq	96(%rbp), %r14
	cmpl	%r11d, 16(%rbx)
	jne	.LBB3_1
# BB#2:                                 # %land.rhs
	cmpl	%r15d, 20(%rbx)
	sete	%r12b
	jmp	.LBB3_3
.LBB3_1:
	xorl	%r12d, %r12d
.LBB3_3:                                # %land.end
	movl	%esi, %ecx
	andl	$563, %ecx              # imm = 0x233
	cmpl	$48, %ecx
	jne	.LBB3_13
# BB#4:                                 # %land.end
	testq	%rax, %rax
	jne	.LBB3_13
# BB#5:                                 # %land.lhs.true.9
	movl	%edi, %eax
	cmpq	$0, 1672(%rdx)
	je	.LBB3_10
# BB#6:                                 # %land.lhs.true.11
	cmpl	$0, 72(%rbx)
	jle	.LBB3_10
# BB#7:                                 # %if.then
	movq	48(%rbx), %rdi
	movq	1672(%rdi), %rbx
	movl	104(%rbp), %ecx
	imull	%ecx, %r13d
	movslq	%r13d, %rdx
	addq	%rdx, %r14
	xorl	%r8d, %r8d
	testb	%r12b, %r12b
	je	.LBB3_9
# BB#8:                                 # %cond.true
	movq	120(%rbp), %r8
.LBB3_9:                                # %cond.end
	movzwl	130(%rbp), %edx
	movl	%edx, 24(%rsp)
	jmp	.LBB3_12
.LBB3_13:                               # %if.else.40
	movl	%r15d, 124(%rsp)        # 4-byte Spill
	movl	%r11d, 128(%rsp)        # 4-byte Spill
	testq	%rax, %rax
	jne	.LBB3_15
# BB#14:                                # %if.then.43
	movl	%edi, 132(%rsp)         # 4-byte Spill
	leaq	240(%rsp), %rdi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	leaq	144(%rsp), %rsi
	movl	%r9d, 140(%rsp)         # 4-byte Spill
	movl	%r10d, %r15d
	callq	gx_set_rop_no_source
	movl	136(%rsp), %esi         # 4-byte Reload
	movl	132(%rsp), %edi         # 4-byte Reload
	movl	%r15d, %r10d
	movl	140(%rsp), %r9d         # 4-byte Reload
.LBB3_15:                               # %if.end
	movq	240(%rsp), %r15
	xorl	%r8d, %r8d
	testb	%r12b, %r12b
	je	.LBB3_17
# BB#16:                                # %cond.true.45
	movq	16(%r15), %r8
.LBB3_17:                               # %cond.end.48
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movq	%r14, 192(%rsp)
	movl	104(%rbp), %eax
	movl	%eax, 200(%rsp)
	movl	108(%rbp), %eax
	movw	%ax, 224(%rsp)
	movzwl	%ax, %ecx
	movl	%ecx, 204(%rsp)
	movl	112(%rbp), %ecx
	movw	%cx, 226(%rsp)
	movzwl	%cx, %ecx
	movl	%ecx, 208(%rsp)
	movq	120(%rbp), %rcx
	movq	%rcx, 216(%rsp)
	movl	$0, 228(%rsp)
	movl	72(%rbx), %ecx
	testl	%ecx, %ecx
	movl	$1, %edx
	cmovgl	%ecx, %edx
	movl	%edx, 232(%rsp)
	movq	48(%rbx), %rsi
	movq	(%r15), %r14
	movl	8(%rbx), %ecx
	movl	12(%rbx), %edx
	movl	12(%r15), %ebp
	movl	8(%r15), %r12d
	cmpl	$0, 40(%r15)
	je	.LBB3_18
# BB#22:                                # %if.else.103
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	1696(%rsi), %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%r10d, %esi
	movl	%r10d, 132(%rsp)        # 4-byte Spill
	subl	%edx, %esi
	imull	%ebp, %esi
	movl	%ebp, 108(%rsp)         # 4-byte Spill
	addq	%rsi, %r14
	addl	%r9d, %r12d
	subl	%ecx, %r12d
	cmpl	$0, 44(%r15)
	je	.LBB3_24
# BB#23:
	addq	$24, %r15
	jmp	.LBB3_25
.LBB3_10:                               # %if.then.24
	movq	48(%rbx), %rdi
	movq	1224(%rdi), %rbx
	movl	104(%rbp), %ecx
	imull	%ecx, %r13d
	movslq	%r13d, %rdx
	addq	%rdx, %r14
	xorl	%r8d, %r8d
	testb	%r12b, %r12b
	je	.LBB3_12
# BB#11:                                # %cond.true.34
	movq	120(%rbp), %r8
.LBB3_12:                               # %cond.end.37
	movl	%r15d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	*%rbx
	jmp	.LBB3_27
.LBB3_18:                               # %if.then.80
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	1424(%rsi), %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%r10d, %esi
	movl	%r10d, 132(%rsp)        # 4-byte Spill
	subl	%edx, %esi
	imull	%ebp, %esi
	movl	%ebp, 108(%rsp)         # 4-byte Spill
	addq	%rsi, %r14
	addl	%r9d, %r12d
	subl	%ecx, %r12d
	cmpl	$0, 44(%r15)
	je	.LBB3_20
# BB#19:
	addq	$24, %r15
	jmp	.LBB3_21
.LBB3_24:                               # %select.mid86
	xorl	%r15d, %r15d
.LBB3_25:                               # %select.end85
	subl	%r9d, %edi
	movzwl	%ax, %esi
	movl	%r9d, 140(%rsp)         # 4-byte Spill
	callq	imod
	movl	%eax, %ebx
	movl	132(%rsp), %ebp         # 4-byte Reload
	subl	%ebp, %r13d
	movzwl	226(%rsp), %esi
	movl	%r13d, %edi
	callq	imod
	movq	240(%rsp), %rcx
	movl	40(%rcx), %ecx
	movl	%ecx, 72(%rsp)
	jmp	.LBB3_26
.LBB3_20:                               # %select.mid
	xorl	%r15d, %r15d
.LBB3_21:                               # %select.end
	subl	%r9d, %edi
	movzwl	%ax, %esi
	movl	%r9d, 140(%rsp)         # 4-byte Spill
	callq	imod
	movl	%eax, %ebx
	movl	132(%rsp), %ebp         # 4-byte Reload
	subl	%ebp, %r13d
	movzwl	226(%rsp), %esi
	movl	%r13d, %edi
	callq	imod
.LBB3_26:                               # %if.end.137
	movl	136(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 64(%rsp)
	movl	%eax, 56(%rsp)
	movl	%ebx, 48(%rsp)
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	128(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movl	%r12d, %edx
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r9
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB3_27:                               # %if.end.139
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_colored_fill, .Lfunc_end3-tile_colored_fill
	.cfi_endproc

	.align	16, 0x90
	.type	tile_pattern_clist,@function
tile_pattern_clist:                     # @tile_pattern_clist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 80
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movq	(%rbp), %rax
	movq	88(%rbp), %r14
	movq	8(%rax), %rax
	movq	200(%rax), %rbx
	movq	$0, 10232(%rbx)
	movq	10088(%rbx), %rdi
	movq	10096(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*64(%rax)
	movq	10096(%rbx), %rax
	movq	5984(%rbx), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*64(%rax)
	cmpq	$0, 10160(%rbx)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	clist_read_icctable
.LBB4_2:                                # %if.end
	leaq	1888(%rbx), %r13
	cmpq	$0, 10168(%rbx)
	jne	.LBB4_4
# BB#3:                                 # %if.then.8
	movq	24(%rbx), %rax
	movq	208(%rax), %rdi
	callq	gsicc_cache_new
	movq	%rax, 10168(%rbx)
.LBB4_4:                                # %do.end
	movl	96(%rbp), %eax
	movl	100(%rbp), %ecx
	subl	%r12d, %eax
	subl	%r15d, %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	clist_playback_file_bands
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_pattern_clist, .Lfunc_end4-tile_pattern_clist
	.cfi_endproc

	.globl	gx_dc_pure_masked_fill_rect
	.align	16, 0x90
	.type	gx_dc_pure_masked_fill_rect,@function
gx_dc_pure_masked_fill_rect:            # @gx_dc_pure_masked_fill_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 192
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	movq	648(%rbp), %rbx
	leaq	32(%rsp), %rdi
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	tile_fill_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_7
# BB#1:                                 # %if.end
	movq	200(%rsp), %rax
	movl	192(%rsp), %ecx
	movq	80(%rsp), %r9
	cmpq	%r15, %r9
	je	.LBB5_3
# BB#2:                                 # %lor.lhs.false
	cmpb	$0, 208(%rbx)
	je	.LBB5_4
.LBB5_3:                                # %if.then.2
	movq	%rax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	*gx_dc_type_data_pure+40(%rip)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	%ecx, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	gx_dc_type_data_pure+40(%rip), %rax
	movq	%rax, 112(%rsp)
	leaq	144(%rbx), %rax
	movq	%rax, (%rsp)
	movq	$tile_masked_fill, 8(%rsp)
	leaq	32(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	tile_by_steps
.LBB5_5:                                # %if.end.8
	movl	%eax, %r14d
	movq	72(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_7
# BB#6:                                 # %if.then.11
	callq	tile_clip_free
	movq	$0, 72(%rsp)
.LBB5_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_dc_pure_masked_fill_rect, .Lfunc_end5-gx_dc_pure_masked_fill_rect
	.cfi_endproc

	.align	16, 0x90
	.type	tile_masked_fill,@function
tile_masked_fill:                       # @tile_masked_fill
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 80
	movq	%rdi, %r11
	movq	32(%r11), %rdi
	testq	%rdi, %rdi
	je	.LBB6_1
# BB#3:                                 # %if.else
	movl	%edx, %eax
	subl	12(%r11), %eax
	movl	12(%rdi), %r9d
	imull	%r9d, %eax
	addq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movl	8(%rdi), %eax
	addl	%esi, %eax
	subl	8(%r11), %eax
	movl	%eax, 32(%rsp)
	movl	%r9d, 36(%rsp)
	xorl	%r9d, %r9d
	cmpl	%ecx, 16(%r11)
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true
	xorl	%r9d, %r9d
	cmpl	%r8d, 20(%r11)
	jne	.LBB6_6
# BB#5:                                 # %cond.true
	movq	16(%rdi), %r9
.LBB6_6:                                # %return
	movq	%r9, 40(%rsp)
	movq	24(%rdi), %rax
	movq	%rax, 48(%rsp)
	movq	32(%rdi), %rax
	movq	%rax, 56(%rsp)
	movl	40(%rdi), %eax
	movl	%eax, 64(%rsp)
	movl	44(%rdi), %eax
	movl	%eax, 68(%rsp)
	movq	(%r11), %rdi
	movq	48(%r11), %r9
	movl	24(%r11), %r10d
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%r10d, (%rsp)
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movq	(%r11), %rdi
	movq	48(%r11), %r9
	movl	24(%r11), %r10d
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
.LBB6_2:                                # %if.then
	callq	*80(%r11)
	addq	$72, %rsp
	retq
.Lfunc_end6:
	.size	tile_masked_fill, .Lfunc_end6-tile_masked_fill
	.cfi_endproc

	.globl	gx_dc_devn_masked_fill_rect
	.align	16, 0x90
	.type	gx_dc_devn_masked_fill_rect,@function
gx_dc_devn_masked_fill_rect:            # @gx_dc_devn_masked_fill_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$792, %rsp              # imm = 0x318
.Ltmp85:
	.cfi_def_cfa_offset 848
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	648(%rbx), %r14
	leaq	688(%rsp), %rdi
	movl	$1, %ecx
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	tile_fill_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_10
# BB#1:                                 # %if.end
	movq	856(%rsp), %rax
	movl	848(%rsp), %ecx
	movq	736(%rsp), %rbp
	cmpq	%r15, %rbp
	je	.LBB7_4
# BB#2:                                 # %lor.lhs.false
	cmpb	$0, 208(%r14)
	je	.LBB7_7
# BB#3:                                 # %if.then.2.thread
	movq	%rax, %r15
	leaq	32(%rsp), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rsi
	callq	memcpy
	jmp	.LBB7_6
.LBB7_4:                                # %if.then.2
	movq	%rax, %r15
	leaq	32(%rsp), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rsi
	callq	memcpy
	testq	%r14, %r14
	jne	.LBB7_6
# BB#5:                                 # %vector.body
	movq	$gx_dc_type_data_devn, 32(%rsp)
	movups	8(%rbx), %xmm0
	movups	%xmm0, 40(%rsp)
	movups	24(%rbx), %xmm0
	movups	%xmm0, 56(%rsp)
	movups	40(%rbx), %xmm0
	movups	%xmm0, 72(%rsp)
	movups	56(%rbx), %xmm0
	movups	%xmm0, 88(%rsp)
	movups	72(%rbx), %xmm0
	movups	%xmm0, 104(%rsp)
	movups	88(%rbx), %xmm0
	movups	%xmm0, 120(%rsp)
	movups	104(%rbx), %xmm0
	movups	%xmm0, 136(%rsp)
	movups	120(%rbx), %xmm0
	movups	%xmm0, 152(%rsp)
.LBB7_6:                                # %if.end.13
	movq	%r15, 8(%rsp)
	movl	848(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	32(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%rbp, %r9
	callq	*gx_dc_type_data_devn+40(%rip)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else
	movl	%ecx, 712(%rsp)
	movq	%rax, 720(%rsp)
	movq	gx_dc_type_data_devn+40(%rip), %rax
	movq	%rax, 768(%rsp)
	leaq	144(%r14), %rax
	movq	%rax, (%rsp)
	movq	$tile_masked_fill, 8(%rsp)
	leaq	688(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%r14, %r9
	callq	tile_by_steps
.LBB7_8:                                # %if.end.19
	movl	%eax, %ebp
	movq	728(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_10
# BB#9:                                 # %if.then.22
	callq	tile_clip_free
	movq	$0, 728(%rsp)
.LBB7_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_dc_devn_masked_fill_rect, .Lfunc_end7-gx_dc_devn_masked_fill_rect
	.cfi_endproc

	.globl	gx_dc_binary_masked_fill_rect
	.align	16, 0x90
	.type	gx_dc_binary_masked_fill_rect,@function
gx_dc_binary_masked_fill_rect:          # @gx_dc_binary_masked_fill_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 192
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	movq	648(%rbp), %rbx
	leaq	32(%rsp), %rdi
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	tile_fill_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_7
# BB#1:                                 # %if.end
	movq	200(%rsp), %rax
	movl	192(%rsp), %ecx
	movq	80(%rsp), %r9
	cmpq	%r15, %r9
	je	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	cmpb	$0, 208(%rbx)
	je	.LBB8_4
.LBB8_3:                                # %if.then.2
	movq	%rax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	*gx_dc_type_data_ht_binary+40(%rip)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movl	%ecx, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	gx_dc_type_data_ht_binary+40(%rip), %rax
	movq	%rax, 112(%rsp)
	leaq	144(%rbx), %rax
	movq	%rax, (%rsp)
	movq	$tile_masked_fill, 8(%rsp)
	leaq	32(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	tile_by_steps
.LBB8_5:                                # %if.end.8
	movl	%eax, %r14d
	movq	72(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_7
# BB#6:                                 # %if.then.11
	callq	tile_clip_free
	movq	$0, 72(%rsp)
.LBB8_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_dc_binary_masked_fill_rect, .Lfunc_end8-gx_dc_binary_masked_fill_rect
	.cfi_endproc

	.globl	gx_dc_colored_masked_fill_rect
	.align	16, 0x90
	.type	gx_dc_colored_masked_fill_rect,@function
gx_dc_colored_masked_fill_rect:         # @gx_dc_colored_masked_fill_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 192
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	movq	648(%rbp), %rbx
	leaq	32(%rsp), %rdi
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	tile_fill_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB9_7
# BB#1:                                 # %if.end
	movq	200(%rsp), %rax
	movl	192(%rsp), %ecx
	movq	80(%rsp), %r9
	cmpq	%r15, %r9
	je	.LBB9_3
# BB#2:                                 # %lor.lhs.false
	cmpb	$0, 208(%rbx)
	je	.LBB9_4
.LBB9_3:                                # %if.then.2
	movq	%rax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	*gx_dc_type_data_ht_colored+40(%rip)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movl	%ecx, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	gx_dc_type_data_ht_colored+40(%rip), %rax
	movq	%rax, 112(%rsp)
	leaq	144(%rbx), %rax
	movq	%rax, (%rsp)
	movq	$tile_masked_fill, 8(%rsp)
	leaq	32(%rsp), %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	tile_by_steps
.LBB9_5:                                # %if.end.8
	movl	%eax, %r14d
	movq	72(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_7
# BB#6:                                 # %if.then.11
	callq	tile_clip_free
	movq	$0, 72(%rsp)
.LBB9_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_dc_colored_masked_fill_rect, .Lfunc_end9-gx_dc_colored_masked_fill_rect
	.cfi_endproc

	.globl	tile_rect_trans_simple
	.align	16, 0x90
	.type	tile_rect_trans_simple,@function
tile_rect_trans_simple:                 # @tile_rect_trans_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 176
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r14d
	movq	184(%rsp), %r13
	movq	176(%rsp), %rax
	movq	192(%rax), %rcx
	movslq	64(%rcx), %rbx
	movl	68(%rcx), %r11d
	movq	88(%r13), %rax
	cmpl	%edi, (%rax)
	jle	.LBB10_2
# BB#1:                                 # %if.then
	movl	%edi, (%rax)
.LBB10_2:                               # %if.end
	cmpl	%esi, 4(%rax)
	jle	.LBB10_4
# BB#3:                                 # %if.then.8
	movl	%esi, 4(%rax)
.LBB10_4:                               # %if.end.12
	cmpl	%r14d, 8(%rax)
	jge	.LBB10_6
# BB#5:                                 # %if.then.16
	movl	%r14d, 8(%rax)
.LBB10_6:                               # %if.end.20
	cmpl	%r12d, 12(%rax)
	jge	.LBB10_8
# BB#7:                                 # %if.then.25
	movl	%r12d, 12(%rax)
.LBB10_8:                               # %if.end.29
	subl	%edi, %r14d
	jle	.LBB10_28
# BB#9:                                 # %if.end.29
	subl	%esi, %r12d
	movl	%r12d, 100(%rsp)        # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB10_28
# BB#10:                                # %if.end.45
	movl	%esi, %eax
	subl	36(%r13), %eax
	movslq	32(%r13), %rdx
	movslq	%edi, %rbp
	subq	%rdx, %rbp
	movl	48(%r13), %r10d
	imull	%r10d, %eax
	cltq
	addq	8(%r13), %rax
	addq	%rbp, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	addl	%edi, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ebx
	movq	%rbx, %rdi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movl	%edx, %r15d
	addl	%esi, %r9d
	movl	%r9d, %eax
	cltd
	idivl	%r11d
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leal	(%r15,%r14), %eax
	cmpl	%edi, %eax
	movl	%edi, %r9d
	cmovlel	%eax, %r9d
	subl	%r15d, %r9d
	movl	32(%rcx), %r11d
	movl	40(%rcx), %r8d
	cmpl	%r11d, %r15d
	cmovll	%r11d, %r15d
	cmpl	%r8d, %eax
	cmovgl	%r8d, %eax
	movl	%r14d, %ebp
	subl	%r9d, %ebp
	cvtsi2ssl	%ebp, %xmm0
	cvtsi2ssl	%edi, %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	seta	112(%rsp)               # 1-byte Folded Spill
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	ucomiss	%xmm1, %xmm0
	setp	%bpl
	setne	%bl
	orb	%bpl, %bl
	andb	112(%rsp), %bl          # 1-byte Folded Reload
	movzbl	%bl, %ebp
	subl	%ebp, %esi
	movl	%esi, 76(%rsp)          # 4-byte Spill
	imull	%edi, %esi
	movl	%r14d, %ebx
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	%r11d, %r14d
	subl	%r14d, %ebx
	subl	%r9d, %ebx
	subl	%esi, %ebx
	cmpl	%r8d, %ebx
	cmovgl	%r8d, %ebx
	movl	56(%r13), %ebp
	testl	%ebp, %ebp
	movq	176(%rsp), %r11
	jle	.LBB10_24
# BB#11:                                # %for.body.lr.ph
	movq	8(%rcx), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	subl	%r15d, %eax
	xorl	%esi, %esi
	subl	%r14d, %ebx
	cmovsl	%esi, %ebx
	subl	%r14d, %r8d
	subl	%r14d, %r15d
	testl	%eax, %eax
	cmovsl	%esi, %eax
	movslq	%r15d, %rbp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	%r9d, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%r8d, %r14
	movq	88(%rsp), %r15          # 8-byte Reload
	jmp	.LBB10_12
	.align	16, 0x90
.LBB10_23:                              # %for.inc.210.for.body_crit_edge
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	192(%r11), %rcx
.LBB10_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
                                        #       Child Loop BB10_18 Depth 3
	testl	%r12d, %r12d
	movq	%rdx, %rdi
	jle	.LBB10_13
# BB#14:                                # %for.body.162.lr.ph
                                        #   in Loop: Header=BB10_12 Depth=1
	movslq	52(%rcx), %rax
	movslq	%esi, %rdx
	movl	%esi, 36(%rsp)          # 4-byte Spill
	imulq	%rdx, %rax
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movslq	52(%r13), %rax
	imulq	%rdx, %rax
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	xorl	%ebx, %ebx
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_29:                              # %for.inc.204.for.body.162_crit_edge
                                        #   in Loop: Header=BB10_15 Depth=2
	movslq	%r10d, %rax
	addq	%rax, %rbp
	movq	192(%r11), %rcx
.LBB10_15:                              # %for.body.162
                                        #   Parent Loop BB10_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_18 Depth 3
	leal	(%rbx,%rdi), %eax
	cltd
	idivl	68(%rcx)
	cmpl	44(%rcx), %edx
	jge	.LBB10_20
# BB#16:                                # %if.end.174
                                        #   in Loop: Header=BB10_15 Depth=2
	movslq	36(%rcx), %rsi
	movslq	%edx, %rax
	subq	%rsi, %rax
	testl	%eax, %eax
	js	.LBB10_20
# BB#17:                                # %if.end.183
                                        #   in Loop: Header=BB10_15 Depth=2
	movslq	48(%rcx), %rcx
	imulq	%rax, %rcx
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %r12
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%r12,%rax), %rsi
	movq	%rbp, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %r13
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movl	76(%rsp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	jle	.LBB10_19
	.align	16, 0x90
.LBB10_18:                              # %for.body.197
                                        #   Parent Loop BB10_12 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r15, %r13
	decl	%ebp
	jne	.LBB10_18
.LBB10_19:                              # %for.end
                                        #   in Loop: Header=BB10_15 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	184(%rsp), %r13
	movl	48(%r13), %r10d
	movl	100(%rsp), %r12d        # 4-byte Reload
	movq	176(%rsp), %r11
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
.LBB10_20:                              # %for.inc.204
                                        #   in Loop: Header=BB10_15 Depth=2
	incl	%ebx
	cmpl	%r12d, %ebx
	jne	.LBB10_29
# BB#21:                                #   in Loop: Header=BB10_12 Depth=1
	movq	%rdi, %rdx
	movl	36(%rsp), %esi          # 4-byte Reload
	jmp	.LBB10_22
	.align	16, 0x90
.LBB10_13:                              #   in Loop: Header=BB10_12 Depth=1
	movq	%rdi, %rdx
.LBB10_22:                              # %for.inc.210
                                        #   in Loop: Header=BB10_12 Depth=1
	incl	%esi
	movl	56(%r13), %ebp
	cmpl	%ebp, %esi
	jl	.LBB10_23
.LBB10_24:                              # %for.end.212
	cmpl	$0, 60(%r13)
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	je	.LBB10_28
# BB#25:                                # %for.end.212
	testl	%r12d, %r12d
	jle	.LBB10_28
# BB#26:                                # %for.body.222.lr.ph
	movslq	52(%r13), %rax
	movslq	%ebp, %rcx
	imulq	%rax, %rcx
	addq	%rcx, %rbx
	movslq	%edx, %rbp
	.align	16, 0x90
.LBB10_27:                              # %for.body.222
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memset
	movslq	48(%r13), %rax
	addq	%rax, %rbx
	decl	%r12d
	jne	.LBB10_27
.LBB10_28:                              # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_rect_trans_simple, .Lfunc_end10-tile_rect_trans_simple
	.cfi_endproc

	.globl	tile_rect_trans_blend
	.align	16, 0x90
	.type	tile_rect_trans_blend,@function
tile_rect_trans_blend:                  # @tile_rect_trans_blend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp134:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp135:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp137:
	.cfi_def_cfa_offset 288
.Ltmp138:
	.cfi_offset %rbx, -56
.Ltmp139:
	.cfi_offset %r12, -48
.Ltmp140:
	.cfi_offset %r13, -40
.Ltmp141:
	.cfi_offset %r14, -32
.Ltmp142:
	.cfi_offset %r15, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	296(%rsp), %r13
	movq	288(%rsp), %r12
	movq	192(%r12), %rbp
	movl	56(%rbp), %r15d
	movl	64(%rbp), %r10d
	movl	68(%rbp), %ecx
	movq	88(%r13), %rax
	cmpl	%edi, (%rax)
	jle	.LBB11_2
# BB#1:                                 # %if.then
	movl	%edi, (%rax)
.LBB11_2:                               # %if.end
	cmpl	%esi, 4(%rax)
	jle	.LBB11_4
# BB#3:                                 # %if.then.9
	movl	%esi, 4(%rax)
.LBB11_4:                               # %if.end.13
	cmpl	%edx, 8(%rax)
	jge	.LBB11_6
# BB#5:                                 # %if.then.17
	movl	%edx, 8(%rax)
.LBB11_6:                               # %if.end.21
	cmpl	%ebx, 12(%rax)
	jge	.LBB11_8
# BB#7:                                 # %if.then.26
	movl	%ebx, 12(%rax)
.LBB11_8:                               # %if.end.30
	subl	%edi, %edx
	testl	%edx, %edx
	jle	.LBB11_36
# BB#9:                                 # %if.end.30
	subl	%esi, %ebx
	testl	%ebx, %ebx
	jle	.LBB11_36
# BB#10:                                # %if.end.46
	movslq	36(%r13), %rax
	movslq	%esi, %r14
	subq	%rax, %r14
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movslq	32(%r13), %r11
	movslq	%edi, %rax
	subq	%r11, %rax
	movl	%edx, %r11d
	movslq	48(%r13), %rdx
	imulq	%r14, %rdx
	addq	8(%r13), %rdx
	addq	%rax, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addl	%esi, %r9d
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	movq	%r12, %r9
	jle	.LBB11_32
# BB#11:                                # %for.body.lr.ph
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	8(%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addl	%edi, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%r10d
	movl	%edx, %r8d
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%r15d, %eax
	andl	$1, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	jmp	.LBB11_12
	.align	16, 0x90
.LBB11_31:                              # %for.inc.138.for.body_crit_edge
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	192(%r9), %rbp
	movl	68(%rbp), %ecx
.LBB11_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_16 Depth 2
                                        #       Child Loop BB11_20 Depth 3
                                        #       Child Loop BB11_26 Depth 3
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rdx,%rax), %eax
	cltd
	idivl	%ecx
	cmpl	44(%rbp), %edx
	jge	.LBB11_30
# BB#13:                                # %if.end.60
                                        #   in Loop: Header=BB11_12 Depth=1
	movslq	36(%rbp), %rcx
	movslq	%edx, %rax
	subq	%rcx, %rax
	testl	%eax, %eax
	js	.LBB11_30
# BB#14:                                # %if.end.68
                                        #   in Loop: Header=BB11_12 Depth=1
	testl	%r11d, %r11d
	jle	.LBB11_30
# BB#15:                                #   in Loop: Header=BB11_12 Depth=1
	movslq	48(%rbp), %rcx
	imulq	%rax, %rcx
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	48(%r13), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB11_16
	.align	16, 0x90
.LBB11_29:                              # %cleanup.for.body.80_crit_edge
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	192(%r9), %rbp
.LBB11_16:                              # %for.body.80
                                        #   Parent Loop BB11_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_20 Depth 3
                                        #       Child Loop BB11_26 Depth 3
	leal	(%r12,%r8), %eax
	cltd
	idivl	64(%rbp)
	cmpl	40(%rbp), %edx
	jge	.LBB11_28
# BB#17:                                # %if.end.91
                                        #   in Loop: Header=BB11_16 Depth=2
	movslq	32(%rbp), %rcx
	movslq	%edx, %rax
	subq	%rcx, %rax
	testl	%eax, %eax
	js	.LBB11_28
# BB#18:                                # %if.end.99
                                        #   in Loop: Header=BB11_16 Depth=2
	testl	%r15d, %r15d
	jle	.LBB11_27
# BB#19:                                # %for.body.106.lr.ph
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r12), %r14
	movl	52(%r13), %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_20:                              # %for.body.106
                                        #   Parent Loop BB11_12 Depth=1
                                        #     Parent Loop BB11_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edx, %rdx
	movb	(%r14,%rdx), %bl
	movb	%bl, 80(%rsp,%rsi)
	movslq	52(%rbp), %rdi
	movslq	%esi, %rbx
	imulq	%rdi, %rbx
	movb	(%rax,%rbx), %bl
	movb	%bl, 160(%rsp,%rsi)
	incq	%rsi
	addl	%ecx, %edx
	cmpl	%esi, %r15d
	jne	.LBB11_20
# BB#21:                                # %for.end
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	56(%rbp), %edx
	decl	%edx
	movl	84(%rbp), %ecx
	movq	72(%rbp), %r8
	leaq	80(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	art_pdf_composite_pixel_alpha_8
	testl	%r15d, %r15d
	movl	52(%rsp), %r11d         # 4-byte Reload
	movq	288(%rsp), %r9
	movq	40(%rsp), %r8           # 8-byte Reload
	jle	.LBB11_28
# BB#22:                                # %for.body.125.preheader
                                        #   in Loop: Header=BB11_16 Depth=2
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	je	.LBB11_24
# BB#23:                                # %for.body.125.prol
                                        #   in Loop: Header=BB11_16 Depth=2
	movb	80(%rsp), %al
	movb	%al, (%r14)
	movl	$1, %eax
.LBB11_24:                              # %for.body.125.preheader.split
                                        #   in Loop: Header=BB11_16 Depth=2
	cmpl	$1, %r15d
	je	.LBB11_28
# BB#25:                                # %for.body.125.preheader.split.split
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	%r15d, %ecx
	subl	%eax, %ecx
	leaq	81(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_26:                              # %for.body.125
                                        #   Parent Loop BB11_12 Depth=1
                                        #     Parent Loop BB11_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rdx,%rsi), %bl
	movslq	52(%r13), %rdi
	leaq	(%rax,%rsi), %rbp
	movslq	%ebp, %rbp
	imulq	%rbp, %rdi
	movb	%bl, (%r14,%rdi)
	movb	(%rdx,%rsi), %bl
	movslq	52(%r13), %rdi
	incl	%ebp
	movslq	%ebp, %rbp
	imulq	%rdi, %rbp
	movb	%bl, (%r14,%rbp)
	addq	$2, %rsi
	cmpl	%esi, %ecx
	jne	.LBB11_26
	jmp	.LBB11_28
.LBB11_27:                              # %cleanup.critedge
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	56(%rbp), %edx
	decl	%edx
	movl	84(%rbp), %ecx
	movq	%r8, %r14
	movq	72(%rbp), %r8
	leaq	80(%rsp), %rdi
	leaq	160(%rsp), %rsi
	movl	%r11d, %ebx
	callq	art_pdf_composite_pixel_alpha_8
	movq	%r14, %r8
	movl	%ebx, %r11d
	movq	288(%rsp), %r9
	.align	16, 0x90
.LBB11_28:                              # %cleanup
                                        #   in Loop: Header=BB11_16 Depth=2
	incq	%r12
	cmpl	%r11d, %r12d
	jne	.LBB11_29
	.align	16, 0x90
.LBB11_30:                              # %for.inc.138
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	incl	%edx
	movl	28(%rsp), %ebx          # 4-byte Reload
	cmpl	%ebx, %edx
	jne	.LBB11_31
.LBB11_32:                              # %for.end.140
	testl	%ebx, %ebx
	setle	%al
	cmpl	$0, 60(%r13)
	movq	16(%rsp), %rbp          # 8-byte Reload
	je	.LBB11_36
# BB#33:                                # %for.end.140
	testb	%al, %al
	jne	.LBB11_36
# BB#34:                                # %for.body.149.lr.ph
	movslq	52(%r13), %rax
	movslq	56(%r13), %rcx
	imulq	%rax, %rcx
	addq	%rcx, %rbp
	movslq	%r11d, %r14
	.align	16, 0x90
.LBB11_35:                              # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	memset
	movslq	48(%r13), %rax
	addq	%rax, %rbp
	decl	%ebx
	jne	.LBB11_35
.LBB11_36:                              # %cleanup.157
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tile_rect_trans_blend, .Lfunc_end11-tile_rect_trans_blend
	.cfi_endproc

	.globl	gx_dc_pat_trans_fill_rectangle
	.align	16, 0x90
	.type	gx_dc_pat_trans_fill_rectangle,@function
gx_dc_pat_trans_fill_rectangle:         # @gx_dc_pat_trans_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp148:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp150:
	.cfi_def_cfa_offset 144
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%r9, %r10
	movl	%r8d, %r12d
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %r13d
	movq	%rdi, %r15
	movq	152(%rsp), %rcx
	movq	8(%r15), %rbx
	movq	%rcx, 80(%rsp)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB12_4
# BB#1:                                 # %if.end
	testq	%rcx, %rcx
	jne	.LBB12_3
# BB#2:                                 # %if.then.2
	leaq	80(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r10, %rdx
	movq	%r10, 24(%rsp)          # 8-byte Spill
	callq	gx_set_rop_no_source
	movq	24(%rsp), %r10          # 8-byte Reload
.LBB12_3:                               # %if.end.3
	addl	%r13d, %ebp
	addl	%r14d, %r12d
	movq	192(%rbx), %rax
	movq	24(%rax), %r9
	movl	352(%r15), %eax
	movl	356(%r15), %ecx
	shlq	$32, %rcx
	orq	%rcx, %rax
	movq	%r15, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%rax, (%rsp)
	movl	%r13d, %edi
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movq	%rbx, %r8
	callq	gx_trans_pattern_fill_rect
.LBB12_4:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_dc_pat_trans_fill_rectangle, .Lfunc_end12-gx_dc_pat_trans_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_1:
	.quad	-4706042843746669171    # double -1.000000e-06
	.quad	-4706042843746669171    # double -1.000000e-06
.LCPI13_2:
	.quad	4517329193108106637     # double 1.000000e-06
	.quad	4517329193108106637     # double 1.000000e-06
	.text
	.globl	gx_trans_pattern_fill_rect
	.align	16, 0x90
	.type	gx_trans_pattern_fill_rect,@function
gx_trans_pattern_fill_rect:             # @gx_trans_pattern_fill_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp163:
	.cfi_def_cfa_offset 384
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r8, %r12
	xorl	%r8d, %r8d
	testq	%r12, %r12
	je	.LBB13_44
# BB#1:                                 # %do.body.2
	movq	392(%rsp), %r15
	movl	%edx, %ebp
	subl	%edi, %ebp
	movl	%ecx, %eax
	subl	%esi, %eax
	movl	%esi, %ebx
	orl	%edi, %ebx
	jns	.LBB13_3
# BB#2:                                 # %if.then.4
	xorl	%ebx, %ebx
	testl	%edi, %edi
	cmovsl	%edx, %ebp
	cmovsl	%ebx, %edi
	testl	%esi, %esi
	cmovsl	%ecx, %eax
	cmovsl	%ebx, %esi
.LBB13_3:                               # %do.body.13
	movl	832(%r15), %edx
	movl	836(%r15), %ecx
	subl	%edi, %edx
	cmpl	%edx, %ebp
	cmovlel	%ebp, %edx
	subl	%esi, %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	js	.LBB13_44
# BB#4:                                 # %if.end.36
	movq	384(%rsp), %r13
	movq	%r13, %rbp
	shrq	$32, %rbp
	addl	%edi, %edx
	addl	%esi, %ecx
	cmpb	$0, 208(%r12)
	movq	200(%r12), %r14
	je	.LBB13_12
# BB#5:                                 # %land.lhs.true
	testq	%r14, %r14
	jne	.LBB13_34
# BB#6:                                 # %if.then.45
	movss	56(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%r13d, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	movl	%edx, %r13d
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_7
# BB#8:                                 # %land.rhs
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edi, %ebx
	movl	%esi, %r15d
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
	jmp	.LBB13_9
.LBB13_12:                              # %if.else
	testq	%r14, %r14
	je	.LBB13_13
.LBB13_34:                              # %if.else.133
	movq	400(%rsp), %rbx
	movq	648(%rbx), %r8
	movq	%rbx, 168(%rsp)
	movl	$-1, %eax
	cmpl	$0, 848(%r15)
	je	.LBB13_36
# BB#35:                                # %if.then.i.88
	movl	100(%r15), %eax
.LBB13_36:                              # %if.end.i.90
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movl	%esi, 56(%rsp)          # 4-byte Spill
	movl	%eax, 240(%rsp)
	testq	%r8, %r8
	je	.LBB13_37
# BB#38:                                # %if.end.7.i
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movq	24(%r15), %rdi
	movl	$st_device_mask_clip, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, 208(%rsp)
	movl	$-25, %r8d
	testq	%rax, %rax
	je	.LBB13_40
# BB#39:                                # %if.end.12.i
	movq	$0, 48(%rax)
	movq	%rax, 216(%rsp)
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	$144, %rsi
	movq	%rsi, 224(%rsp)
	movl	632(%rbx), %ecx
	movl	%ecx, 232(%rsp)
	movl	636(%rbx), %ecx
	movl	%ecx, 236(%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	tile_clip_initialize
	movl	%eax, %r8d
	jmp	.LBB13_40
.LBB13_37:                              # %if.then.5.i
	movq	$0, 208(%rsp)
	movq	%r15, 216(%rsp)
	movq	352(%rbx), %rax
	movq	%rax, 232(%rsp)
	xorl	%r8d, %r8d
.LBB13_40:                              # %tile_fill_init.exit
	movl	%r13d, 232(%rsp)
	movl	%ebp, 236(%rsp)
	movl	$0, 10192(%r14)
	movl	$0, 10196(%r14)
	movl	$-1, 10200(%r14)
	movq	$0, 10208(%r14)
	movl	$1, 10224(%r14)
	movq	%r15, 256(%rsp)
	movq	%rbx, 168(%rsp)
	movupd	96(%r12), %xmm0
	movups	112(%r12), %xmm1
	movupd	128(%r12), %xmm2
	movapd	%xmm2, 144(%rsp)
	movaps	%xmm1, 128(%rsp)
	movapd	%xmm0, 112(%rsp)
	movl	832(%r14), %eax
	movl	%eax, 124(%rsp)
	movl	836(%r14), %eax
	movl	%eax, 128(%rsp)
	testl	%r8d, %r8d
	js	.LBB13_44
# BB#41:                                # %if.end.156
	leaq	112(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$tile_pattern_clist, 8(%rsp)
	leaq	168(%rsp), %rdi
	movl	64(%rsp), %esi          # 4-byte Reload
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	68(%rsp), %r8d          # 4-byte Reload
	movq	%r12, %r9
	callq	tile_by_steps
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB13_44
# BB#42:                                # %land.lhs.true.159
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_44
# BB#43:                                # %if.then.163
	movl	%r8d, %ebx
	callq	tile_clip_free
	movl	%ebx, %r8d
	movq	$0, 208(%rsp)
	jmp	.LBB13_44
.LBB13_13:                              # %if.then.129
	movq	192(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	56(%r12), %rax
	movq	%rax, 320(%rsp)
	movups	40(%r12), %xmm0
	movaps	%xmm0, 304(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r13d, %xmm0
	movss	320(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 320(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	324(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 324(%rsp)
	movupd	80(%r12), %xmm1
	movupd	64(%r12), %xmm0
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 96(%rsp)         # 16-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movsd	%xmm0, 112(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	movl	%esi, %r13d
	movsd	%xmm0, 120(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movsd	%xmm0, 128(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%ecx, %r15d
	movsd	%xmm0, 136(%rsp)
	leaq	112(%rsp), %rdi
	leaq	304(%rsp), %rsi
	leaq	272(%rsp), %rdx
	callq	gs_bbox_transform_inverse
	movupd	64(%r12), %xmm1
	xorpd	%xmm2, %xmm2
	maxpd	%xmm2, %xmm1
	movapd	272(%rsp), %xmm4
	movapd	288(%rsp), %xmm0
	subpd	%xmm1, %xmm4
	addpd	.LCPI13_1(%rip), %xmm4
	movupd	80(%r12), %xmm1
	minpd	%xmm2, %xmm1
	subpd	%xmm1, %xmm0
	cmpb	$0, 208(%r12)
	je	.LBB13_14
# BB#15:                                # %if.then.129
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	jmp	.LBB13_16
.LBB13_7:
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edi, %ebx
	movl	%esi, %r15d
	xorl	%ecx, %ecx
.LBB13_9:                               # %land.end
	movzbl	%cl, %edi
	subl	%eax, %edi
	movq	192(%r12), %rax
	movl	64(%rax), %esi
	callq	imod
	movl	%eax, %r14d
	movss	60(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebp, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$0, %ecx
	jbe	.LBB13_11
# BB#10:                                # %land.rhs.99
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	andl	$1, %ecx
.LBB13_11:                              # %land.end.119
	movzbl	%cl, %edi
	subl	%eax, %edi
	movq	192(%r12), %rax
	movl	68(%rax), %esi
	callq	imod
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%r12, (%rsp)
	movl	%ebx, %edi
	movl	%r15d, %esi
	movl	%r13d, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%r14d, %r8d
	movl	%eax, %r9d
	callq	tile_rect_trans_simple
	xorl	%r8d, %r8d
	jmp	.LBB13_44
.LBB13_14:
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	subpd	%xmm1, %xmm4
.LBB13_16:                              # %if.then.129
	addpd	.LCPI13_2(%rip), %xmm0
	jne	.LBB13_18
# BB#17:
	addpd	%xmm1, %xmm0
.LBB13_18:                              # %if.then.129
	cvttsd2si	%xmm4, %r14d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.LBB13_19
# BB#20:                                # %land.rhs.i
	cvtsi2ssl	%r14d, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movapd	%xmm4, %xmm3
	cmpneqsd	%xmm2, %xmm3
	movd	%xmm3, %rax
	andl	$1, %eax
	jmp	.LBB13_21
.LBB13_19:
	xorl	%eax, %eax
.LBB13_21:                              # %land.end.i
	movzbl	%al, %eax
	subl	%eax, %r14d
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	cvttsd2si	%xmm4, %eax
	ucomisd	%xmm4, %xmm1
	jbe	.LBB13_22
# BB#23:                                # %land.rhs.109.i
	movq	%r12, 40(%rsp)          # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	%eax, 28(%rsp)          # 4-byte Spill
	cvtss2sd	%xmm1, %xmm1
	cmpneqsd	%xmm1, %xmm4
	movd	%xmm4, %rbx
	andl	$1, %ebx
	jmp	.LBB13_24
.LBB13_22:
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB13_24:                              # %land.end.115.i
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	ceil
	cmpl	%ebp, %r14d
	movl	%r13d, %r8d
	movl	%r8d, 56(%rsp)          # 4-byte Spill
	movl	64(%rsp), %r9d          # 4-byte Reload
	movl	%r15d, %esi
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movl	60(%rsp), %ebp          # 4-byte Reload
	jge	.LBB13_33
# BB#25:                                # %for.cond.127.preheader.lr.ph.i
	movzbl	%bl, %eax
	subl	%eax, 28(%rsp)          # 4-byte Folded Spill
	cvttsd2si	%xmm0, %r10d
	movl	%r10d, 36(%rsp)         # 4-byte Spill
	xorps	%xmm3, %xmm3
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB13_26:                              # %for.cond.127.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_28 Depth 2
	movl	%r14d, 32(%rsp)         # 4-byte Spill
	cmpl	%r10d, 28(%rsp)         # 4-byte Folded Reload
	jge	.LBB13_32
# BB#27:                                # %for.body.130.lr.ph.i
                                        #   in Loop: Header=BB13_26 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	cvtsi2ssl	%eax, %xmm4
	movss	%xmm4, 52(%rsp)         # 4-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB13_28:                              # %for.body.130.i
                                        #   Parent Loop BB13_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movss	304(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	cvtsi2ssl	%eax, %xmm0
	movss	312(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	addss	320(%rsp), %xmm2
	cvttss2si	%xmm2, %r13d
	ucomiss	%xmm2, %xmm3
	seta	%al
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r13d, %xmm1
	ucomiss	%xmm1, %xmm2
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	andb	%al, %dl
	movzbl	%dl, %eax
	subl	%eax, %r13d
	movss	308(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	mulss	316(%rsp), %xmm0
	addss	%xmm1, %xmm0
	addss	324(%rsp), %xmm0
	cvttss2si	%xmm0, %r14d
	ucomiss	%xmm0, %xmm3
	seta	%al
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r14d, %xmm1
	ucomiss	%xmm1, %xmm0
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	andb	%al, %dl
	movzbl	%dl, %eax
	subl	%eax, %r14d
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	64(%rcx), %eax
	movl	68(%rcx), %ecx
	movl	%r9d, %edi
	subl	%r13d, %edi
	cmovgel	%r9d, %r13d
	cmovlel	%r11d, %edi
	subl	%edi, %eax
	movl	%r8d, %r12d
	subl	%r14d, %r12d
	cmovgel	%r8d, %r14d
	cmovlel	%r11d, %r12d
	subl	%r12d, %ecx
	leal	(%rax,%r13), %edx
	movl	%ebp, %r15d
	subl	%r13d, %r15d
	cmpl	%ebp, %edx
	cmovlel	%eax, %r15d
	leal	(%rcx,%r14), %eax
	movl	%esi, %ebx
	subl	%r14d, %ebx
	cmpl	%esi, %eax
	cmovlel	%ecx, %ebx
	testl	%r15d, %r15d
	jle	.LBB13_31
# BB#29:                                # %for.body.130.i
                                        #   in Loop: Header=BB13_28 Depth=2
	testl	%ebx, %ebx
	jle	.LBB13_31
# BB#30:                                # %if.then.257.i
                                        #   in Loop: Header=BB13_28 Depth=2
	subl	%r13d, %edi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	192(%rbp), %rax
	movl	64(%rax), %esi
	callq	imod
	movl	%eax, 84(%rsp)          # 4-byte Spill
	subl	%r14d, %r12d
	movq	192(%rbp), %rax
	movl	68(%rax), %esi
	movl	%r12d, %edi
	callq	imod
	movq	192(%rbp), %r10
	addl	%r13d, %r15d
	addl	%r14d, %ebx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	%rbp, (%rsp)
	movl	%r13d, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	84(%rsp), %r8d          # 4-byte Reload
	movl	%eax, %r9d
	callq	*96(%r10)
	movss	52(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	xorl	%r11d, %r11d
	xorps	%xmm3, %xmm3
	movl	36(%rsp), %r10d         # 4-byte Reload
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	68(%rsp), %esi          # 4-byte Reload
	movl	64(%rsp), %r9d          # 4-byte Reload
	movl	56(%rsp), %r8d          # 4-byte Reload
.LBB13_31:                              # %if.end.271.i
                                        #   in Loop: Header=BB13_28 Depth=2
	movl	96(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	%eax, %r10d
	jne	.LBB13_28
.LBB13_32:                              # %for.inc.272.i
                                        #   in Loop: Header=BB13_26 Depth=1
	movl	32(%rsp), %r14d         # 4-byte Reload
	incl	%r14d
	cmpl	24(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB13_26
.LBB13_33:                              # %tile_by_steps_trans.exit
	xorl	%r8d, %r8d
.LBB13_44:                              # %cleanup
	movl	%r8d, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_trans_pattern_fill_rect, .Lfunc_end13-gx_trans_pattern_fill_rect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tile_fill_init(cdev)"
	.size	.L.str, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
